	.section	.text
	.align	16
	#Procedure 0x4012f9
	.globl sub_4012f9
	.type sub_4012f9, @function
sub_4012f9:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x4012fa
	.globl sub_4012fa
	.type sub_4012fa, @function
sub_4012fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401332
	.globl sub_401332
	.type sub_401332, @function
sub_401332:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40137a
	.globl sub_40137a
	.type sub_40137a, @function
sub_40137a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40139c
	.globl sub_40139c
	.type sub_40139c, @function
sub_40139c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4013ad
	.globl sub_4013ad
	.type sub_4013ad, @function
sub_4013ad:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4013c6
	.globl sub_4013c6
	.type sub_4013c6, @function
sub_4013c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4013d0
	.globl version_etc
	.type version_etc, @function
version_etc:

	sub	rsp, 0xd8
	test	al, al
	je	.label_9
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_9:
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
	#Procedure 0x401453
	.globl sub_401453
	.type sub_401453, @function
sub_401453:

	nop	word ptr cs:[rax + rax]
.label_10:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	16
	#Procedure 0x40146c
	.globl sub_40146c
	.type sub_40146c, @function
sub_40146c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401479

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_10
	ret	
	.section	.text
	.align	16
	#Procedure 0x401480
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
	#Procedure 0x40148d
	.globl sub_40148d
	.type sub_40148d, @function
sub_40148d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401490

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	16
	#Procedure 0x401495
	.globl sub_401495
	.type sub_401495, @function
sub_401495:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4014a0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_12
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4014d0

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
	je	.label_13
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_15
	jmp	.label_14
.label_13:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_14
.label_15:
	mov	eax, 1
	test	bpl, bpl
	je	.label_14
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
.label_14:
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
	#Procedure 0x40154d
	.globl sub_40154d
	.type sub_40154d, @function
sub_40154d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401550
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40155a
	.globl sub_40155a
	.type sub_40155a, @function
sub_40155a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401560

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_17:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_16
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_18
	.section	.text
	.align	16
	#Procedure 0x401589
	.globl sub_401589
	.type sub_401589, @function
sub_401589:

	nop	dword ptr [rax]
.label_16:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_18:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_19
	inc	r9
	cmp	r9, 0xa
	jb	.label_17
.label_19:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x4015bf
	.globl sub_4015bf
	.type sub_4015bf, @function
sub_4015bf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4015c0

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
	#Procedure 0x4015f9
	.globl sub_4015f9
	.type sub_4015f9, @function
sub_4015f9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401600
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
	#Procedure 0x401611
	.globl sub_401611
	.type sub_401611, @function
sub_401611:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401620
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
	#Procedure 0x401634
	.globl sub_401634
	.type sub_401634, @function
sub_401634:

	nop	word ptr cs:[rax + rax]
.label_20:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x401643
	.globl sub_401643
	.type sub_401643, @function
sub_401643:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40164b
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_20
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_21:
	cmp	edi, 0x7f
	je	.label_22
	xor	eax, eax
	jmp	.label_22
	.section	.text
	.align	16
	#Procedure 0x401669
	.globl sub_401669
	.type sub_401669, @function
sub_401669:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401678
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_21
.label_22:
	ret	
	.section	.text
	.align	16
	#Procedure 0x401680
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x401688
	.globl sub_401688
	.type sub_401688, @function
sub_401688:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401690
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
	#Procedure 0x4016a9
	.globl sub_4016a9
	.type sub_4016a9, @function
sub_4016a9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4016b0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
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
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	16
	#Procedure 0x4016cd
	.globl sub_4016cd
	.type sub_4016cd, @function
sub_4016cd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4016d0
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
	#Procedure 0x4016e0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_23
	test	rsi, rsi
	mov	ecx, 1
	je	.label_24
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_24
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_23:
	mov	ecx, 1
.label_24:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x40172b
	.globl sub_40172b
	.type sub_40172b, @function
sub_40172b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401730

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
	#Procedure 0x40175d
	.globl sub_40175d
	.type sub_40175d, @function
sub_40175d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401760
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
	#Procedure 0x401773
	.globl sub_401773
	.type sub_401773, @function
sub_401773:

	nop	word ptr cs:[rax + rax]
.label_27:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_26
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_29:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_27
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_12
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x4017f9

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_28
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_29
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_29
.label_28:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_30
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_30:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x401840

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_32
	cmp	byte ptr [rax], 0x43
	jne	.label_34
	cmp	byte ptr [rax + 1], 0
	je	.label_31
.label_34:
	mov	esi, OFFSET FLAT:label_33
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_32
.label_31:
	xor	ebx, ebx
.label_32:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401871
	.globl sub_401871
	.type sub_401871, @function
sub_401871:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401880
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40188a
	.globl sub_40188a
	.type sub_40188a, @function
sub_40188a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401890
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
	#Procedure 0x40189f
	.globl sub_40189f
	.type sub_40189f, @function
sub_40189f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4018a0

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
	#Procedure 0x4018d6
	.globl sub_4018d6
	.type sub_4018d6, @function
sub_4018d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018e0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x4018e9
	.globl sub_4018e9
	.type sub_4018e9, @function
sub_4018e9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4018f0

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
	mov	rax,  qword ptr [word ptr [rip + label_35]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_36]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_37]]
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
	#Procedure 0x401958
	.globl sub_401958
	.type sub_401958, @function
sub_401958:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401960

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_38
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
	mov	esi, OFFSET FLAT:label_42
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_40
	mov	esi, OFFSET FLAT:label_41
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_43
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_43:
	mov	rbx, r14
.label_40:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_38:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_39
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401a01
	.globl sub_401a01
	.type sub_401a01, @function
sub_401a01:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a10

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
.label_87:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_65
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_95]]
.label_318:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_100
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_105
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_319:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_116
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_116
	xor	r14d, r14d
.label_127:
	cmp	r14, r11
	jae	.label_125
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_125:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_127
.label_116:
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
	jmp	.label_51
.label_311:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_51
.label_314:
	mov	al, 1
.label_312:
	mov	r12b, 1
.label_315:
	test	r12b, 1
	mov	cl, 1
	je	.label_141
	mov	ecx, eax
.label_141:
	mov	al, cl
.label_313:
	test	r12b, 1
	jne	.label_144
	test	r11, r11
	je	.label_70
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_70:
	mov	r14d, 1
	jmp	.label_150
.label_144:
	xor	r14d, r14d
.label_150:
	mov	ecx, OFFSET FLAT:label_105
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_51
.label_316:
	test	r12b, 1
	jne	.label_158
	test	r11, r11
	je	.label_58
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_58:
	mov	r14d, 1
	jmp	.label_46
.label_317:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_50
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_51
.label_158:
	xor	r14d, r14d
.label_46:
	mov	eax, OFFSET FLAT:label_50
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_51:
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
	jmp	.label_63
	.section	.text
	.align	16
	#Procedure 0x401cec
	.globl sub_401cec
	.type sub_401cec, @function
sub_401cec:

	nop	dword ptr [rax]
.label_103:
	inc	rsi
.label_63:
	cmp	rbp, -1
	je	.label_104
	cmp	rsi, rbp
	jne	.label_151
	jmp	.label_110
	.section	.text
	.align	16
	#Procedure 0x401d03
	.globl sub_401d03
	.type sub_401d03, @function
sub_401d03:

	nop	word ptr cs:[rax + rax]
.label_104:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_110
.label_151:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_119
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_122
	cmp	rbp, -1
	jne	.label_122
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
.label_122:
	cmp	rbx, rbp
	jbe	.label_132
.label_119:
	xor	r8d, r8d
.label_94:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_133
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_136]]
.label_385:
	test	rsi, rsi
	jne	.label_129
	jmp	.label_59
	.section	.text
	.align	16
	#Procedure 0x401d9e
	.globl sub_401d9e
	.type sub_401d9e, @function
sub_401d9e:

	nop	
.label_132:
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
	jne	.label_148
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_94
	jmp	.label_69
.label_148:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_94
.label_389:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_53
	test	rsi, rsi
	jne	.label_55
	cmp	rbp, 1
	je	.label_59
	xor	r13d, r13d
	jmp	.label_54
.label_378:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_64
	cmp	byte ptr [rsp + 7], 0
	jne	.label_66
	cmp	r12d, 2
	jne	.label_67
	mov	eax, r9d
	and	al, 1
	jne	.label_67
	cmp	r14, r11
	jae	.label_72
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_72:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_75
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_75:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_79
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_79:
	add	r14, 3
	mov	r9b, 1
.label_67:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_153
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_153:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_85
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_85
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_85
	cmp	r14, r11
	jae	.label_101
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_101:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_120
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_120:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_54
.label_379:
	mov	bl, 0x62
	jmp	.label_113
.label_380:
	mov	cl, 0x74
	jmp	.label_118
.label_381:
	mov	bl, 0x76
	jmp	.label_113
.label_382:
	mov	bl, 0x66
	jmp	.label_113
.label_383:
	mov	cl, 0x72
	jmp	.label_118
.label_386:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_123
	cmp	byte ptr [rsp + 7], 0
	jne	.label_66
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
	jae	.label_128
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_128:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_137
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_137:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_138
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_138:
	add	r14, 3
	xor	r9d, r9d
.label_123:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_54
.label_387:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_147
	cmp	r12d, 2
	jne	.label_129
	cmp	byte ptr [rsp + 7], 0
	je	.label_129
	jmp	.label_66
.label_388:
	cmp	r12d, 2
	jne	.label_156
	cmp	byte ptr [rsp + 7], 0
	jne	.label_66
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_115
.label_133:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_56
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
.label_47:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_52
	test	r8b, r8b
	je	.label_52
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_54
.label_53:
	test	rsi, rsi
	jne	.label_86
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_86
.label_59:
	mov	dl, 1
.label_384:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_66
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_54:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_97
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_98
	jmp	.label_102
	.section	.text
	.align	16
	#Procedure 0x4020e4
	.globl sub_4020e4
	.type sub_4020e4, @function
sub_4020e4:

	nop	word ptr cs:[rax + rax]
.label_97:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_102
.label_98:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_106
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_115
	jmp	.label_89
	.section	.text
	.align	16
	#Procedure 0x40212d
	.globl sub_40212d
	.type sub_40212d, @function
sub_40212d:

	nop	dword ptr [rax]
.label_102:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_89
	jmp	.label_115
.label_106:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_89
.label_64:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_103
	xor	r15d, r15d
	jmp	.label_129
.label_156:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_118
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_115
.label_118:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_66
.label_113:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_54
	nop	word ptr cs:[rax + rax]
.label_89:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_66
	cmp	r12d, 2
	jne	.label_142
	mov	eax, r9d
	and	al, 1
	jne	.label_142
	cmp	r14, r11
	jae	.label_145
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_145:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_88
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_88:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_117
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_117:
	add	r14, 3
	mov	r9b, 1
.label_142:
	cmp	r14, r11
	jae	.label_157
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_157:
	inc	r14
	jmp	.label_44
.label_56:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_48
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_48:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_130:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_73
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_77
	cmp	rbp, -2
	je	.label_81
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_83
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_68:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_135
	bt	rsi, rdx
	jb	.label_69
.label_135:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_68
.label_83:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_108
	xor	r13d, r13d
.label_108:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_130
	jmp	.label_47
.label_85:
	xor	r13d, r13d
	jmp	.label_54
.label_86:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_54
.label_147:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_129
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_129
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_129
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_112
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_109
	cmp	byte ptr [rsp + 7], 0
	jne	.label_66
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_49
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_49:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_60
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_60:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_149
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_149:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_152
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_152:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_54
.label_129:
	xor	eax, eax
.label_55:
	xor	r13d, r13d
	jmp	.label_54
.label_52:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_45
	.section	.text
	.align	16
	#Procedure 0x402413
	.globl sub_402413
	.type sub_402413, @function
sub_402413:

	nop	word ptr cs:[rax + rax]
.label_126:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_45:
	test	r8b, r8b
	je	.label_111
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_57
	cmp	r14, r11
	jae	.label_61
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_61:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_57
	.section	.text
	.align	16
	#Procedure 0x40245c
	.globl sub_40245c
	.type sub_40245c, @function
sub_40245c:

	nop	dword ptr [rax]
.label_111:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_69
	cmp	r12d, 2
	jne	.label_74
	mov	eax, r9d
	and	al, 1
	jne	.label_74
	cmp	r14, r11
	jae	.label_76
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_76:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_78
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_78:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_84
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_84:
	add	r14, 3
	mov	r9b, 1
.label_74:
	cmp	r14, r11
	jae	.label_131
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_131:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_91
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_91:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_99
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_99:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_57:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_115
	test	r9b, 1
	je	.label_80
	mov	ebx, eax
	and	bl, 1
	jne	.label_80
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_121
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_121:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_96
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_96:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_80:
	cmp	r14, r11
	jae	.label_126
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_126
	.section	.text
	.align	16
	#Procedure 0x402563
	.globl sub_402563
	.type sub_402563, @function
sub_402563:

	nop	word ptr cs:[rax + rax]
.label_115:
	test	r9b, 1
	je	.label_92
	and	al, 1
	jne	.label_92
	cmp	r14, r11
	jae	.label_134
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_134:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_124
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_124:
	add	r14, 2
	xor	r9d, r9d
.label_92:
	mov	ebx, r15d
.label_44:
	cmp	r14, r11
	jae	.label_140
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_140:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_103
.label_77:
	xor	r13d, r13d
.label_73:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_47
.label_81:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_154
	mov	rsi, qword ptr [rsp + 0x50]
.label_155:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_114
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_155
	xor	r13d, r13d
	jmp	.label_47
.label_154:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_47
.label_114:
	xor	r13d, r13d
	jmp	.label_47
.label_112:
	xor	r13d, r13d
	jmp	.label_54
.label_109:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_54
	.section	.text
	.align	16
	#Procedure 0x402638
	.globl sub_402638
	.type sub_402638, @function
sub_402638:

	nop	dword ptr [rax + rax]
.label_110:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_62
	or	dl, al
	je	.label_69
.label_62:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_71
	or	dl, al
	jne	.label_71
	test	r10b, 1
	jne	.label_82
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_71
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_87
.label_71:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_90
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_93
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_93
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_107:
	cmp	r14, r11
	jae	.label_139
	mov	byte ptr [rcx + r14], al
.label_139:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_107
	jmp	.label_93
.label_66:
	mov	qword ptr [rsp + 0x20], rbp
.label_69:
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
.label_143:
	mov	r14, rax
.label_146:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_82:
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
	jmp	.label_143
.label_90:
	mov	rcx, qword ptr [rsp + 8]
.label_93:
	cmp	r14, r11
	jae	.label_146
	mov	byte ptr [rcx + r14], 0
	jmp	.label_146
.label_65:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4027cc
	.globl sub_4027cc
	.type sub_4027cc, @function
sub_4027cc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4027d0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	16
	#Procedure 0x4027da
	.globl sub_4027da
	.type sub_4027da, @function
sub_4027da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027e0

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
	je	.label_159
	mov	qword ptr [rax], rbx
.label_159:
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
	#Procedure 0x4028cc
	.globl sub_4028cc
	.type sub_4028cc, @function
sub_4028cc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4028d0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	16
	#Procedure 0x4028da
	.globl sub_4028da
	.type sub_4028da, @function
sub_4028da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028e0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_160
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_163:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_163
.label_160:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_164
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_161]], OFFSET FLAT:slot0
.label_164:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_162
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_162:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402971
	.globl sub_402971
	.type sub_402971, @function
sub_402971:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402980
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
	#Procedure 0x4029a7
	.globl sub_4029a7
	.type sub_4029a7, @function
sub_4029a7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4029b0

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
	#Procedure 0x4029e7
	.globl sub_4029e7
	.type sub_4029e7, @function
sub_4029e7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4029f0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_165
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_167
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_165
.label_167:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_165
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_166
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_166:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_165:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x402a67
	.globl sub_402a67
	.type sub_402a67, @function
sub_402a67:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a70

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
	jne	.label_168
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_168
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_169
.label_168:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_169:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_170
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_170:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ade
	.globl sub_402ade
	.type sub_402ade, @function
sub_402ade:

	nop	
.label_171:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402ae6
	.globl sub_402ae6
	.type sub_402ae6, @function
sub_402ae6:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402aeb

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_171
	test	rdx, rdx
	je	.label_171
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b10

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x402b1a
	.globl sub_402b1a
	.type sub_402b1a, @function
sub_402b1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b20
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
	#Procedure 0x402b30

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x402b39
	.globl sub_402b39
	.type sub_402b39, @function
sub_402b39:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402b40

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x402b4a
	.globl sub_402b4a
	.type sub_402b4a, @function
sub_402b4a:

	nop	word ptr [rax + rax]
.label_173:
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b51
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_172
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_174]]
.label_172:
	xor	eax, eax
	jmp	.label_173
	.section	.text
	.align	16
	#Procedure 0x402b66
	.globl sub_402b66
	.type sub_402b66, @function
sub_402b66:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b70
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b7a
	.globl sub_402b7a
	.type sub_402b7a, @function
sub_402b7a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b80

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
	je	.label_175
	cmp	r15, -2
	jb	.label_175
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_175
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_175:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402bd6
	.globl sub_402bd6
	.type sub_402bd6, @function
sub_402bd6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402be0

	.globl parse_gnu_standard_options_only
	.type parse_gnu_standard_options_only, @function
parse_gnu_standard_options_only:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xd8
	mov	r14, r8
	mov	r15, rcx
	mov	rbx, rdx
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
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  1
	mov	eax, OFFSET FLAT:label_179
	mov	edx, OFFSET FLAT:label_180
	test	r9b, r9b
	cmovne	rdx, rax
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, -1
	je	.label_182
	mov	rcx, qword ptr [rsp + 0x100]
	cmp	eax, 0x68
	je	.label_177
	cmp	eax, 0x76
	je	.label_178
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	jmp	.label_181
.label_178:
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0x108]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x30
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	r8, [rsp]
	mov	rsi, rbx
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
	.section	.text
	.align	16
	#Procedure 0x402cc4
	.globl sub_402cc4
	.type sub_402cc4, @function
sub_402cc4:

	nop	dword ptr [rax]
.label_177:
	xor	edi, edi
.label_181:
	call	rcx
.label_182:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	add	rsp, 0xd8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ce0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ce8
	.globl sub_402ce8
	.type sub_402ce8, @function
sub_402ce8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402cf0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_183:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_183
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x402d11
	.globl sub_402d11
	.type sub_402d11, @function
sub_402d11:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d20
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_184
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_184:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402d43
	.globl sub_402d43
	.type sub_402d43, @function
sub_402d43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d50

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_185
	test	rax, rax
	je	.label_186
.label_185:
	pop	rbx
	ret	
.label_186:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402d6a
	.globl sub_402d6a
	.type sub_402d6a, @function
sub_402d6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d70
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d7a
	.globl sub_402d7a
	.type sub_402d7a, @function
sub_402d7a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d80
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_187
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_187
.label_188:
	ret	
.label_187:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_188
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x402da6
	.globl sub_402da6
	.type sub_402da6, @function
sub_402da6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402db0

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
	je	.label_205
	mov	edx, OFFSET FLAT:label_195
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_202
.label_205:
	mov	edx, OFFSET FLAT:label_203
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_202:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_207
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
	mov	esi, OFFSET FLAT:label_204
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_190
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_191]]
.label_357:
	add	rsp, 8
	jmp	.label_189
.label_190:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_199
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
	jmp	.label_189
.label_358:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_200
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
	mov	esi, OFFSET FLAT:label_198
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
	mov	esi, OFFSET FLAT:label_196
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
	mov	esi, OFFSET FLAT:label_193
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
	jmp	.label_189
.label_362:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_192
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
	jmp	.label_189
.label_363:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_194
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
	jmp	.label_189
.label_364:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_197
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
	jmp	.label_189
.label_366:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_201
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
	jmp	.label_189
.label_365:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_206
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
.label_189:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403108
	.globl sub_403108
	.type sub_403108, @function
sub_403108:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403110

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_216
	nop	
.label_215:
	mov	edi, OFFSET FLAT:label_208
	call	strcmp
	test	eax, eax
	je	.label_213
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_215
.label_213:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_208
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_218
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_211
	mov	ecx, OFFSET FLAT:label_212
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_209
	mov	esi, OFFSET FLAT:label_210
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_209
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_209:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_219
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_208
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_212
	mov	ecx, OFFSET FLAT:label_208
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_214
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_220
	mov	ecx, OFFSET FLAT:label_179
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
	#Procedure 0x40322a
	.globl sub_40322a
	.type sub_40322a, @function
sub_40322a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403230

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
	#Procedure 0x403247
	.globl sub_403247
	.type sub_403247, @function
sub_403247:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403250
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
	#Procedure 0x403283
	.globl sub_403283
	.type sub_403283, @function
sub_403283:

	nop	word ptr cs:[rax + rax]
.label_221:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x403293
	.globl sub_403293
	.type sub_403293, @function
sub_403293:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403295
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_221
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_228:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_231
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdx, qword ptr [rbx + rax*8 + 8]
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	rbp, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdx, qword ptr [rbx + rax*8]
	mov	edi, 1
	mov	esi, 4
	call	quotearg_n_style
	mov	rbx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r15
	mov	rcx, rbp
	mov	r8, rbx
	call	error
.label_232:
	mov	esi, OFFSET FLAT:label_227
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
	.section	.text
	.align	16
	#Procedure 0x403346

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_179
	call	setlocale
	mov	edi, OFFSET FLAT:label_229
	mov	esi, OFFSET FLAT:label_230
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_229
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r8,  qword ptr [word ptr [rip + Version]]
	sub	rsp, 8
	mov	edx, OFFSET FLAT:label_208
	mov	ecx, OFFSET FLAT:label_211
	mov	r9d, 1
	mov	eax, 0
	mov	edi, ebp
	mov	rsi, rbx
	push	0
	push	OFFSET FLAT:label_224
	push	OFFSET FLAT:usage
	call	parse_gnu_standard_options_only
	add	rsp, 0x20
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	ecx, [rax + 2]
	cmp	ecx, ebp
	jg	.label_225
	jl	.label_226
	mov	rdi, qword ptr [rbx + rax*8]
	mov	rsi, qword ptr [rbx + rax*8 + 8]
	call	link
	test	eax, eax
	jne	.label_228
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_225:
	xor	edi, edi
	cmp	eax, ebp
	jge	.label_232
	mov	esi, OFFSET FLAT:label_223
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [rbx + rax*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	edi, 1
	call	usage
.label_226:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_222
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [rbx + rax*8 + 0x10]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x403480

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
	je	.label_235
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_233
	jmp	.label_234
.label_235:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_234
.label_233:
	mov	eax, 1
	test	bpl, bpl
	je	.label_234
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
.label_234:
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
	#Procedure 0x403508
	.globl sub_403508
	.type sub_403508, @function
sub_403508:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403510

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
	je	.label_236
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_238
	jmp	.label_237
.label_236:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_237
.label_238:
	mov	eax, 1
	test	bpl, bpl
	je	.label_237
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
.label_237:
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
	#Procedure 0x403589
	.globl sub_403589
	.type sub_403589, @function
sub_403589:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403590

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
	je	.label_241
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_240
	jmp	.label_239
.label_241:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_239
.label_240:
	mov	eax, 1
	test	bpl, bpl
	je	.label_239
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
.label_239:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4035f3
	.globl sub_4035f3
	.type sub_4035f3, @function
sub_4035f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403600

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
	je	.label_244
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_242
	jmp	.label_243
.label_244:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_243
.label_242:
	mov	eax, 1
	test	bpl, bpl
	je	.label_243
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_243:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40365f
	.globl sub_40365f
	.type sub_40365f, @function
sub_40365f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403660

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
	je	.label_245
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_247
	jmp	.label_246
.label_245:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_246
.label_247:
	mov	eax, 1
	test	bpl, bpl
	je	.label_246
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_246:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4036a9
	.globl sub_4036a9
	.type sub_4036a9, @function
sub_4036a9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4036b0

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
	je	.label_250
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_249
	jmp	.label_248
.label_250:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_248
.label_249:
	mov	eax, 1
	test	bpl, bpl
	je	.label_248
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_248:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4036f5
	.globl sub_4036f5
	.type sub_4036f5, @function
sub_4036f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403700

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_252
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_253
	jmp	.label_251
.label_252:
	mov	eax, 1
	test	cl, cl
	je	.label_251
.label_253:
	xor	eax, eax
.label_251:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40372f
	.globl sub_40372f
	.type sub_40372f, @function
sub_40372f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403730
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
	#Procedure 0x403746
	.globl sub_403746
	.type sub_403746, @function
sub_403746:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403750
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
	#Procedure 0x403763
	.globl sub_403763
	.type sub_403763, @function
sub_403763:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403770

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40377a
	.globl sub_40377a
	.type sub_40377a, @function
sub_40377a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403780
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
	#Procedure 0x40378d
	.globl sub_40378d
	.type sub_40378d, @function
sub_40378d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403790
	.globl parse_long_options
	.type parse_long_options, @function
parse_long_options:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0xd0
	mov	rbx, r9
	mov	r14, r8
	mov	r15, rcx
	mov	r12, rdx
	test	al, al
	je	.label_254
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_254:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  0
	cmp	edi, 2
	jne	.label_255
	mov	edx, OFFSET FLAT:label_180
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, 0x68
	je	.label_256
	cmp	eax, 0x76
	jne	.label_255
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0x100]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x30
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	r8, [rsp]
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
.label_256:
	xor	edi, edi
	call	rbx
.label_255:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	mov	dword ptr [dword ptr [rip + optind]],  0
	add	rsp, 0xd0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403881
	.globl sub_403881
	.type sub_403881, @function
sub_403881:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403890
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
	#Procedure 0x40389f
	.globl sub_40389f
	.type sub_40389f, @function
sub_40389f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4038a0
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
	#Procedure 0x403912
	.globl sub_403912
	.type sub_403912, @function
sub_403912:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403920

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
	mov	rcx,  qword ptr [word ptr [rip + label_35]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_36]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_37]]
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
	#Procedure 0x40398d
	.globl sub_40398d
	.type sub_40398d, @function
sub_40398d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403990

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x40399d
	.globl sub_40399d
	.type sub_40399d, @function
sub_40399d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4039a0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	16
	#Procedure 0x4039a7
	.globl sub_4039a7
	.type sub_4039a7, @function
sub_4039a7:

	nop	word ptr [rax + rax]
.label_257:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4039b5
	.globl sub_4039b5
	.type sub_4039b5, @function
sub_4039b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039c3

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
	je	.label_257
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
	#Procedure 0x403a10

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_179
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_258
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a35
	.globl sub_403a35
	.type sub_403a35, @function
sub_403a35:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a40

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_259
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_259
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_259:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x403a66
	.globl sub_403a66
	.type sub_403a66, @function
sub_403a66:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a70

	.globl usage
	.type usage, @function
usage:
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	test	ebx, ebx
	jne	.label_263
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_265
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_260
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_261
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_262
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebx
	call	exit
.label_263:
	mov	r14,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_264
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
	.align	16
	#Procedure 0x403b4f
	.globl sub_403b4f
	.type sub_403b4f, @function
sub_403b4f:

	nop	
.label_266:
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
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_266
	call	rpl_calloc
	test	rax, rax
	je	.label_266
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b80
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_267
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_267:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b9e
	.globl sub_403b9e
	.type sub_403b9e, @function
sub_403b9e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403ba0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x403bae
	.globl sub_403bae
	.type sub_403bae, @function
sub_403bae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403bb0

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
	#Procedure 0x403d6d
	.globl sub_403d6d
	.type sub_403d6d, @function
sub_403d6d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403d70
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
	#Procedure 0x403db9
	.globl sub_403db9
	.type sub_403db9, @function
sub_403db9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403dc0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x403dca
	.globl sub_403dca
	.type sub_403dca, @function
sub_403dca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403dd0
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x403dda
	.globl sub_403dda
	.type sub_403dda, @function
sub_403dda:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403de0

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
	jne	.label_280
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
	je	.label_279
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_281
	mov	eax, OFFSET FLAT:label_282
	jmp	.label_277
.label_279:
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
	je	.label_278
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_275
	mov	eax, OFFSET FLAT:label_276
	jmp	.label_277
.label_278:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_50
	mov	eax, OFFSET FLAT:label_105
.label_277:
	cmove	rax, rcx
.label_280:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e9d
	.globl sub_403e9d
	.type sub_403e9d, @function
sub_403e9d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403ea0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_283
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_283:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403ec6
	.globl sub_403ec6
	.type sub_403ec6, @function
sub_403ec6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ed0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_284
	test	rbx, rbx
	jne	.label_284
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_284:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_286
	test	rax, rax
	je	.label_285
.label_286:
	pop	rbx
	ret	
.label_285:
	call	xalloc_die
.label_288:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_287
	test	cl, cl
	jne	.label_287
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_287:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f2b
	.globl sub_403f2b
	.type sub_403f2b, @function
sub_403f2b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f35

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
	je	.label_288
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_287
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_287
	.section	.text
	.align	16
	#Procedure 0x403f70
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
	#Procedure 0x403f7f
	.globl sub_403f7f
	.type sub_403f7f, @function
sub_403f7f:

	nop	
.label_293:
	call	xalloc_die
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
	jb	.label_289
.label_292:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
	.section	.text
	.align	16
	#Procedure 0x403fc7

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
	jbe	.label_293
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_292
.label_289:
	call	xalloc_die
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
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_294
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_295
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_297
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_211
	mov	ecx, OFFSET FLAT:label_212
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_296
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x404074
	.globl sub_404074
	.type sub_404074, @function
sub_404074:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040e5
	.globl sub_4040e5
	.type sub_4040e5, @function
sub_4040e5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040f2
	.globl sub_4040f2
	.type sub_4040f2, @function
sub_4040f2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404116
	.globl sub_404116
	.type sub_404116, @function
sub_404116:

	nop	word ptr cs:[rax + rax]
