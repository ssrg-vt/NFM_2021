	.section	.text
	.align	32
	#Procedure 0x401389
	.globl sub_401389
	.type sub_401389, @function
sub_401389:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40138a
	.globl sub_40138a
	.type sub_40138a, @function
sub_40138a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4013c2
	.globl sub_4013c2
	.type sub_4013c2, @function
sub_4013c2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40140a
	.globl sub_40140a
	.type sub_40140a, @function
sub_40140a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40142c
	.globl sub_40142c
	.type sub_40142c, @function
sub_40142c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40143d
	.globl sub_40143d
	.type sub_40143d, @function
sub_40143d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401456
	.globl sub_401456
	.type sub_401456, @function
sub_401456:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401460

	.globl cl_strtod
	.type cl_strtod, @function
cl_strtod:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsp + 8]
	call	strtod
	mov	r12, qword ptr [rsp + 8]
	cmp	byte ptr [r12], 0
	je	.label_11
	movsd	qword ptr [rsp + 0x10], xmm0
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	lea	rsi, [rsp + 0x18]
	mov	rdi, rbx
	call	c_strtod
	mov	rax, qword ptr [rsp + 0x18]
	cmp	r12, rax
	jae	.label_10
	mov	qword ptr [rsp + 8], rax
	mov	r12, rax
	jmp	.label_11
.label_10:
	mov	dword ptr [r15], ebp
	movsd	xmm0, qword ptr [rsp + 0x10]
.label_11:
	test	r14, r14
	je	.label_9
	mov	qword ptr [r14], r12
.label_9:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4014d8
	.globl sub_4014d8
	.type sub_4014d8, @function
sub_4014d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4014e0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_12]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_13]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_14]
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
	#Procedure 0x40154e
	.globl sub_40154e
	.type sub_40154e, @function
sub_40154e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401550
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40155a
	.globl sub_40155a
	.type sub_40155a, @function
sub_40155a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401560

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_16
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401590
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
	#Procedure 0x4015a3
	.globl sub_4015a3
	.type sub_4015a3, @function
sub_4015a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4015b0

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
	je	.label_22
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_22:
	mov	ebp, dword ptr [rip + opterr]
	mov	dword ptr [rip + opterr],  1
	mov	eax, OFFSET FLAT:label_17
	mov	edx, OFFSET FLAT:label_18
	test	r9b, r9b
	cmovne	rdx, rax
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, -1
	je	.label_21
	mov	rcx, qword ptr [rsp + 0x100]
	cmp	eax, 0x68
	je	.label_23
	cmp	eax, 0x76
	je	.label_20
	mov	edi, dword ptr [rip + exit_failure]
	jmp	.label_19
.label_23:
	xor	edi, edi
.label_19:
	call	rcx
.label_21:
	mov	dword ptr [rip + opterr],  ebp
	add	rsp, 0xd8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_20:
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0x108]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x30
	mov	rdi, qword ptr [rip + stdout]
	lea	r8, [rsp]
	mov	rsi, rbx
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
	.section	.text
	.align	32
	#Procedure 0x4016ac
	.globl sub_4016ac
	.type sub_4016ac, @function
sub_4016ac:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4016b0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4016c1
	.globl sub_4016c1
	.type sub_4016c1, @function
sub_4016c1:

	nop	word ptr cs:[rax + rax]
.label_30:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
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
	#Procedure 0x401708
	.globl sub_401708
	.type sub_401708, @function
sub_401708:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40170a

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_30
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_35
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_36
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_38
	mov	ecx, OFFSET FLAT:label_27
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_34
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_34
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_34:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_27
	mov	ecx, OFFSET FLAT:label_28
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_28
	mov	ecx, OFFSET FLAT:label_33
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	32
	#Procedure 0x401850
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_39
	test	rax, rax
	je	.label_40
.label_39:
	pop	rbx
	ret	
.label_40:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40186a
	.globl sub_40186a
	.type sub_40186a, @function
sub_40186a:

	nop	word ptr [rax + rax]
.label_44:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_41
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_42
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_16
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_45:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x4018bc

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_46
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_44
	cmp	dword ptr [rbp], 0x20
	jne	.label_44
.label_46:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_45
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_42:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_43
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_50:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401935
	.globl sub_401935
	.type sub_401935, @function
sub_401935:

	nop	word ptr cs:[rax + rax]
.label_49:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_47
	mov	qword ptr [rsi], rbx
.label_51:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_48
	test	rax, rax
	je	.label_47
.label_48:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401969
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_49
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_50
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_51
	call	free
	xor	eax, eax
	jmp	.label_48
.label_47:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4019a0
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
	je	.label_52
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
.label_52:
	call	abort
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
	je	.label_53
	cmp	r15, -2
	jb	.label_53
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_53
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_53:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x401a96
	.globl sub_401a96
	.type sub_401a96, @function
sub_401a96:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401aa0
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
	#Procedure 0x401aaf
	.globl sub_401aaf
	.type sub_401aaf, @function
sub_401aaf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401ab0
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
	je	.label_54
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
.label_54:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401b18
	.globl sub_401b18
	.type sub_401b18, @function
sub_401b18:

	nop	dword ptr [rax + rax]
.label_61:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401b25
	.globl sub_401b25
	.type sub_401b25, @function
sub_401b25:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b2e
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_57
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_60
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_56
.label_60:
	call	xalloc_die
.label_57:
	test	rcx, rcx
	jne	.label_55
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_55:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_61
.label_56:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_58
	test	rbx, rbx
	jne	.label_58
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_58:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_59
	test	rax, rax
	je	.label_60
.label_59:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401bc0
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
	je	.label_63
	test	r14, r14
	je	.label_62
.label_63:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_62:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401bf6
	.globl sub_401bf6
	.type sub_401bf6, @function
sub_401bf6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c00

	.globl xstrtod
	.type xstrtod, @function
xstrtod:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r13, rcx
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	lea	rsi, [rsp + 8]
	mov	rdi, rbx
	call	r13
	mov	rcx, qword ptr [rsp + 8]
	cmp	rcx, rbx
	je	.label_67
	test	r15, r15
	jne	.label_64
	cmp	byte ptr [rcx], 0
	je	.label_64
	xor	eax, eax
	jmp	.label_65
.label_64:
	mov	al, 1
	xorps	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jne	.label_66
	jnp	.label_68
.label_66:
	cmp	dword ptr [r12], 0x22
	setne	al
	jmp	.label_68
.label_67:
	xor	eax, eax
.label_68:
	test	r15, r15
	je	.label_65
	mov	qword ptr [r15], rcx
.label_65:
	movsd	qword ptr [r14], xmm0
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x401c80
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_69
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_72:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_72
.label_69:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_73
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_70], OFFSET FLAT:slot0
.label_73:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_71
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_71:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d11
	.globl sub_401d11
	.type sub_401d11, @function
sub_401d11:

	nop	word ptr cs:[rax + rax]
.label_74:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x401d2c
	.globl sub_401d2c
	.type sub_401d2c, @function
sub_401d2c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d38

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_74
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_76
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_74
.label_76:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_74
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_75
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_75:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_77:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401da5
	.globl sub_401da5
	.type sub_401da5, @function
sub_401da5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401db4
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
	je	.label_77
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
.label_79:
	mov	ecx, 1
.label_78:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x401e20
	.globl sub_401e20
	.type sub_401e20, @function
sub_401e20:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e25

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_79
	test	rsi, rsi
	mov	ecx, 1
	je	.label_78
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_78
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e60

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
	je	.label_92
	mov	edx, OFFSET FLAT:label_83
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_89
.label_92:
	mov	edx, OFFSET FLAT:label_90
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_89:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_94
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
	mov	esi, OFFSET FLAT:label_91
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_95
	jmp	qword ptr [(r12 * 8) + label_96]
.label_348:
	add	rsp, 8
	jmp	.label_82
.label_95:
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
	jmp	.label_82
.label_349:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_81
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
.label_350:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_87
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
.label_351:
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
.label_352:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_98
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
.label_353:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_97
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
.label_354:
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
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_82
.label_355:
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
	jmp	.label_82
.label_357:
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
	jmp	.label_82
.label_356:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_93
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
	#Procedure 0x4021b8
	.globl sub_4021b8
	.type sub_4021b8, @function
sub_4021b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4021c0
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
	#Procedure 0x4021cf
	.globl sub_4021cf
	.type sub_4021cf, @function
sub_4021cf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4021d0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_12]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_13]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_99
	test	rdx, rdx
	je	.label_99
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_99:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40223e
	.globl sub_40223e
	.type sub_40223e, @function
sub_40223e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402240
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
	#Procedure 0x402273
	.globl sub_402273
	.type sub_402273, @function
sub_402273:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402280
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
	je	.label_101
	test	r15, r15
	je	.label_100
.label_101:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_100:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4022c2
	.globl sub_4022c2
	.type sub_4022c2, @function
sub_4022c2:

	nop	word ptr cs:[rax + rax]
.label_102:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4022d5
	.globl sub_4022d5
	.type sub_4022d5, @function
sub_4022d5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4022db

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_103
	test	rax, rax
	je	.label_102
.label_103:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4022f0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_17
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_104
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402315
	.globl sub_402315
	.type sub_402315, @function
sub_402315:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402320
	.globl version_etc
	.type version_etc, @function
version_etc:

	sub	rsp, 0xd8
	test	al, al
	je	.label_105
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_105:
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
	#Procedure 0x4023a3
	.globl sub_4023a3
	.type sub_4023a3, @function
sub_4023a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023b0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x4023b8
	.globl sub_4023b8
	.type sub_4023b8, @function
sub_4023b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023c0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_106
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_107
	test	rbx, rbx
	jne	.label_107
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_106:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4023f4
	.globl sub_4023f4
	.type sub_4023f4, @function
sub_4023f4:

	nop	dword ptr [rax + rax]
.label_107:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_108
	test	rax, rax
	je	.label_106
.label_108:
	pop	rbx
	ret	
.label_109:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_110
	test	rax, rax
	je	.label_111
.label_110:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402424

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_109
	test	rbx, rbx
	jne	.label_109
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_111:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402440

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
	#Procedure 0x402459
	.globl sub_402459
	.type sub_402459, @function
sub_402459:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402460
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_112
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_113
	test	rax, rax
	je	.label_112
.label_113:
	pop	rbx
	ret	
.label_112:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402495
	.globl sub_402495
	.type sub_402495, @function
sub_402495:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4024a0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_114
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_114
	test	byte ptr [rbx + 1], 1
	je	.label_114
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_114:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x4024d3
	.globl sub_4024d3
	.type sub_4024d3, @function
sub_4024d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4024e0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_12]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_13]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_115
	test	rdx, rdx
	je	.label_115
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_115:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40254a
	.globl sub_40254a
	.type sub_40254a, @function
sub_40254a:

	nop	word ptr [rax + rax]
.label_116:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402555
	.globl sub_402555
	.type sub_402555, @function
sub_402555:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40255d
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
	je	.label_116
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
	#Procedure 0x4025c0

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
	#Procedure 0x4025d7
	.globl sub_4025d7
	.type sub_4025d7, @function
sub_4025d7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4025e0
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
	je	.label_117
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_117:
	mov	ebp, dword ptr [rip + opterr]
	mov	dword ptr [rip + opterr],  0
	cmp	edi, 2
	jne	.label_119
	mov	edi, 2
	mov	edx, OFFSET FLAT:label_18
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, 0x68
	je	.label_118
	cmp	eax, 0x76
	jne	.label_119
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0x100]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x30
	mov	rdi, qword ptr [rip + stdout]
	lea	r8, [rsp]
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
.label_118:
	xor	edi, edi
	call	rbx
.label_119:
	mov	dword ptr [rip + opterr],  ebp
	mov	dword ptr [rip + optind],  0
	add	rsp, 0xd0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4026d6
	.globl sub_4026d6
	.type sub_4026d6, @function
sub_4026d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026e0

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
	jne	.label_125
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_121
	cmp	ecx, 0x55
	jne	.label_120
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_120
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_120
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_120
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_120
	cmp	byte ptr [rax + 5], 0
	jne	.label_120
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_129
	mov	eax, OFFSET FLAT:label_130
	jmp	.label_124
.label_121:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_120
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_120
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_120
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_120
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_120
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_120
	cmp	byte ptr [rax + 7], 0
	je	.label_126
.label_120:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_127
	mov	eax, OFFSET FLAT:label_128
.label_124:
	cmove	rax, rcx
.label_125:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_126:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_122
	mov	eax, OFFSET FLAT:label_123
	jmp	.label_124
	.section	.text
	.align	32
	#Procedure 0x4027a5
	.globl sub_4027a5
	.type sub_4027a5, @function
sub_4027a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4027b0

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
	je	.label_131
	test	r15, r15
	je	.label_132
.label_131:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_132:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4027ec
	.globl sub_4027ec
	.type sub_4027ec, @function
sub_4027ec:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4027f0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_133:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_133
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x402811
	.globl sub_402811
	.type sub_402811, @function
sub_402811:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402820
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
	#Procedure 0x402838
	.globl sub_402838
	.type sub_402838, @function
sub_402838:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402840
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
	je	.label_134
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
.label_134:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4028ac
	.globl sub_4028ac
	.type sub_4028ac, @function
sub_4028ac:

	nop	dword ptr [rax]
.label_135:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4028b6
	.globl sub_4028b6
	.type sub_4028b6, @function
sub_4028b6:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4028bb
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_135
	test	rdx, rdx
	je	.label_135
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_136:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4028e5
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_12]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_13]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_136
	test	rsi, rsi
	je	.label_136
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_138:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_137
	call	__errno_location
	mov	dword ptr [rax], 0
.label_137:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40296b

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
	jne	.label_138
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_137
	test	cl, cl
	jne	.label_137
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_137
	.section	.text
	.align	32
	#Procedure 0x4029b0
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
	#Procedure 0x4029e6
	.globl sub_4029e6
	.type sub_4029e6, @function
sub_4029e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029f0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4029fa
	.globl sub_4029fa
	.type sub_4029fa, @function
sub_4029fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a00
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_12]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_13]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_14]
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
	#Procedure 0x402a54
	.globl sub_402a54
	.type sub_402a54, @function
sub_402a54:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a60

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
.label_213:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_211
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_215]
.label_427:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_221
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_128
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_428:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_216
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_216
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_244:
	cmp	r14, r11
	jae	.label_246
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_246:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_244
.label_216:
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
	jmp	.label_156
.label_420:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_156
.label_423:
	mov	al, 1
.label_421:
	mov	r12b, 1
.label_424:
	test	r12b, 1
	mov	cl, 1
	je	.label_141
	mov	ecx, eax
.label_141:
	mov	al, cl
.label_422:
	test	r12b, 1
	jne	.label_143
	test	r11, r11
	je	.label_145
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_145:
	mov	r14d, 1
	jmp	.label_152
.label_143:
	xor	r14d, r14d
.label_152:
	mov	ecx, OFFSET FLAT:label_128
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_156
.label_425:
	test	r12b, 1
	jne	.label_169
	test	r11, r11
	je	.label_171
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_171:
	mov	r14d, 1
	jmp	.label_174
.label_426:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_127
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_156
.label_169:
	xor	r14d, r14d
.label_174:
	mov	eax, OFFSET FLAT:label_127
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_156:
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
	jmp	.label_193
	.section	.text
	.align	32
	#Procedure 0x402d4d
	.globl sub_402d4d
	.type sub_402d4d, @function
sub_402d4d:

	nop	dword ptr [rax]
.label_148:
	inc	rsi
.label_193:
	cmp	rbp, -1
	je	.label_229
	cmp	rsi, rbp
	jne	.label_230
	jmp	.label_231
	.section	.text
	.align	32
	#Procedure 0x402d63
	.globl sub_402d63
	.type sub_402d63, @function
sub_402d63:

	nop	word ptr cs:[rax + rax]
.label_229:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_235
.label_230:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_237
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_222
	cmp	rbp, -1
	jne	.label_222
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
.label_222:
	cmp	rbx, rbp
	jbe	.label_248
.label_237:
	xor	r8d, r8d
.label_144:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_250
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_254]
.label_393:
	test	rsi, rsi
	jne	.label_160
	jmp	.label_139
	.section	.text
	.align	32
	#Procedure 0x402e05
	.globl sub_402e05
	.type sub_402e05, @function
sub_402e05:

	nop	word ptr cs:[rax + rax]
.label_248:
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
	jne	.label_157
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_144
	jmp	.label_173
.label_157:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_144
.label_397:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_185
	test	rsi, rsi
	jne	.label_186
	cmp	rbp, 1
	je	.label_139
	xor	r13d, r13d
	jmp	.label_149
.label_386:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_192
	cmp	byte ptr [rsp + 6], 0
	jne	.label_172
	cmp	r12d, 2
	jne	.label_197
	mov	eax, r9d
	and	al, 1
	jne	.label_197
	cmp	r14, r11
	jae	.label_200
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_200:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_204
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_204:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_249
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_249:
	add	r14, 3
	mov	r9b, 1
.label_197:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_214
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_214:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_218
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_218
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_218
	cmp	r14, r11
	jae	.label_255
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_255:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_257
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_257:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_149
.label_387:
	mov	bl, 0x62
	jmp	.label_189
.label_388:
	mov	cl, 0x74
	jmp	.label_238
.label_389:
	mov	bl, 0x76
	jmp	.label_189
.label_390:
	mov	bl, 0x66
	jmp	.label_189
.label_391:
	mov	cl, 0x72
	jmp	.label_238
.label_394:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_242
	cmp	byte ptr [rsp + 6], 0
	jne	.label_168
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
	jae	.label_247
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_247:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_258
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_258:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_142
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_142:
	add	r14, 3
	xor	r9d, r9d
.label_242:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_149
.label_395:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_154
	cmp	r12d, 2
	jne	.label_160
	cmp	byte ptr [rsp + 6], 0
	je	.label_160
	jmp	.label_168
.label_396:
	cmp	r12d, 2
	jne	.label_170
	cmp	byte ptr [rsp + 6], 0
	jne	.label_168
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_182
.label_250:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_179
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
.label_180:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_196
	test	r8b, r8b
	je	.label_196
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_149
.label_185:
	test	rsi, rsi
	jne	.label_188
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_188
.label_139:
	mov	dl, 1
.label_392:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_168
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_149:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_224
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_253
	jmp	.label_228
	.section	.text
	.align	32
	#Procedure 0x403154
	.globl sub_403154
	.type sub_403154, @function
sub_403154:

	nop	word ptr cs:[rax + rax]
.label_224:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_228
.label_253:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_232
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_182
	jmp	.label_241
	.section	.text
	.align	32
	#Procedure 0x40319d
	.globl sub_40319d
	.type sub_40319d, @function
sub_40319d:

	nop	dword ptr [rax]
.label_228:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_241
	jmp	.label_182
.label_232:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_241
.label_192:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_148
	xor	r15d, r15d
	jmp	.label_160
.label_170:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_238
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_182
.label_238:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_168
.label_189:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_149
	nop	word ptr cs:[rax + rax]
.label_241:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_172
	cmp	r12d, 2
	jne	.label_147
	mov	eax, r9d
	and	al, 1
	jne	.label_147
	cmp	r14, r11
	jae	.label_207
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_207:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_158
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_158:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_151
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_151:
	add	r14, 3
	mov	r9b, 1
.label_147:
	cmp	r14, r11
	jae	.label_166
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_166:
	inc	r14
	jmp	.label_176
.label_179:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_181
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_181:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_165:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_203
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_206
	cmp	rbp, -2
	je	.label_210
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_153
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_140:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_217
	bt	rsi, rdx
	jb	.label_227
.label_217:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_140
.label_153:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_167
	xor	r13d, r13d
.label_167:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_165
	jmp	.label_180
.label_218:
	xor	r13d, r13d
	jmp	.label_149
.label_188:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_149
.label_154:
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
	ja	.label_252
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_243
	cmp	byte ptr [rsp + 6], 0
	jne	.label_150
	cmp	r14, r11
	jae	.label_162
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_162:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_194
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_194:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_155
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_155:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_240
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_240:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_149
.label_160:
	xor	eax, eax
.label_186:
	xor	r13d, r13d
	jmp	.label_149
.label_196:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_178
	.section	.text
	.align	32
	#Procedure 0x403482
	.globl sub_403482
	.type sub_403482, @function
sub_403482:

	nop	word ptr cs:[rax + rax]
.label_245:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_178:
	test	r8b, r8b
	je	.label_187
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_175
	cmp	r14, r11
	jae	.label_190
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_190:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_175
	.section	.text
	.align	32
	#Procedure 0x4034cc
	.globl sub_4034cc
	.type sub_4034cc, @function
sub_4034cc:

	nop	dword ptr [rax]
.label_187:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_173
	cmp	r12d, 2
	jne	.label_202
	mov	eax, r9d
	and	al, 1
	jne	.label_202
	cmp	r14, r11
	jae	.label_205
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_205:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_208
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_208:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_212
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_212:
	add	r14, 3
	mov	r9b, 1
.label_202:
	cmp	r14, r11
	jae	.label_198
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_198:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_234
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_234:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_226
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_226:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_175:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_182
	test	r9b, 1
	je	.label_146
	mov	ebx, eax
	and	bl, 1
	jne	.label_146
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_239
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_239:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_177
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_177:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_146:
	cmp	r14, r11
	jae	.label_245
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_245
	.section	.text
	.align	32
	#Procedure 0x4035d3
	.globl sub_4035d3
	.type sub_4035d3, @function
sub_4035d3:

	nop	word ptr cs:[rax + rax]
.label_182:
	test	r9b, 1
	je	.label_225
	and	al, 1
	jne	.label_225
	cmp	r14, r11
	jae	.label_256
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_256:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_251
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_251:
	add	r14, 2
	xor	r9d, r9d
.label_225:
	mov	ebx, r15d
.label_176:
	cmp	r14, r11
	jae	.label_183
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_183:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_148
.label_206:
	xor	r13d, r13d
.label_203:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_180
.label_210:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_164
	mov	rsi, qword ptr [rsp + 0x58]
.label_184:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_201
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_184
	xor	r13d, r13d
	jmp	.label_180
.label_164:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_180
.label_201:
	xor	r13d, r13d
	jmp	.label_180
.label_252:
	xor	r13d, r13d
	jmp	.label_149
.label_243:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_149
	.section	.text
	.align	32
	#Procedure 0x4036a8
	.globl sub_4036a8
	.type sub_4036a8, @function
sub_4036a8:

	nop	dword ptr [rax + rax]
.label_231:
	mov	rcx, rsi
.label_235:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_191
	or	al, dl
	je	.label_195
.label_191:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_199
	or	al, dl
	jne	.label_199
	test	r10b, 1
	jne	.label_209
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_199
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_213
.label_199:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_220
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_223
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_223
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_233:
	cmp	r14, r11
	jae	.label_161
	mov	byte ptr [rcx + r14], al
.label_161:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_233
	jmp	.label_223
.label_172:
	mov	qword ptr [rsp + 0x20], rbp
.label_173:
	mov	rdx, rdi
	jmp	.label_236
.label_168:
	mov	qword ptr [rsp + 0x20], rbp
.label_227:
	mov	rdx, rdi
	mov	eax, 2
.label_219:
	mov	qword ptr [rsp + 0x38], rax
.label_236:
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
.label_159:
	mov	r14, rax
.label_163:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_195:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_236
.label_209:
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
	jmp	.label_159
.label_220:
	mov	rcx, qword ptr [rsp + 8]
.label_223:
	cmp	r14, r11
	jae	.label_163
	mov	byte ptr [rcx + r14], 0
	jmp	.label_163
.label_150:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_219
.label_211:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403867
	.globl sub_403867
	.type sub_403867, @function
sub_403867:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403870
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_12]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_13]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_259
	test	rsi, rsi
	je	.label_259
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
.label_259:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4038dc
	.globl sub_4038dc
	.type sub_4038dc, @function
sub_4038dc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4038e0

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
	mov	r14, rsi
	mov	r12d, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_17
	call	setlocale
	mov	edi, OFFSET FLAT:label_264
	mov	esi, OFFSET FLAT:label_265
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_264
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r8, qword ptr [rip + Version]
	mov	edx, OFFSET FLAT:label_28
	mov	ecx, OFFSET FLAT:label_38
	mov	r9d, 1
	mov	eax, 0
	mov	edi, r12d
	mov	rsi, r14
	push	0
	push	OFFSET FLAT:label_276
	push	OFFSET FLAT:label_277
	push	OFFSET FLAT:usage
	call	parse_gnu_standard_options_only
	add	rsp, 0x20
	cmp	r12d, 1
	je	.label_272
	movsxd	rax, dword ptr [rip + optind]
	xorpd	xmm0, xmm0
	cmp	eax, r12d
	jge	.label_282
	lea	rbp, [r14 + rax*8]
	sub	r12d, eax
	mov	r13b, 1
	lea	r14, [rsp + 0x10]
	lea	r15, [rsp]
	xorpd	xmm0, xmm0
	nop	
.label_281:
	movsd	qword ptr [rsp + 8], xmm0
	mov	rdi, qword ptr [rbp]
	mov	ecx, OFFSET FLAT:cl_strtod
	mov	rsi, r14
	mov	rdx, r15
	call	xstrtod
	test	al, al
	jne	.label_283
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	jne	.label_260
.label_283:
	movsd	xmm0, qword ptr [rsp]
	ucomisd	xmm0, qword ptr [label_279]
	jb	.label_260
	mov	rcx, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rcx]
	test	eax, eax
	je	.label_268
	cmp	byte ptr [rcx + 1], 0
	jne	.label_260
.label_268:
	lea	ecx, [rax - 0x64]
	cmp	ecx, 0xf
	ja	.label_284
	movsd	xmm1, qword ptr [rip + label_278]
	jmp	qword ptr [(rcx * 8) + label_280]
.label_439:
	movsd	xmm1, qword ptr [rip + label_261]
	jmp	.label_262
.label_284:
	test	eax, eax
	movsd	xmm1, qword ptr [rip + label_278]
	je	.label_262
	nop	word ptr [rax + rax]
.label_260:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_267
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rbp]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	movsd	xmm1, qword ptr [rsp]
	jmp	.label_273
.label_440:
	movsd	xmm1, qword ptr [rip + label_274]
	jmp	.label_262
.label_441:
	movsd	xmm1, qword ptr [rip + label_271]
.label_262:
	mulsd	xmm1, xmm0
	movsd	qword ptr [rsp], xmm1
.label_273:
	movsd	xmm0, qword ptr [rsp + 8]
	addsd	xmm0, xmm1
	add	rbp, 8
	dec	r12d
	jne	.label_281
	test	r13b, 1
	je	.label_263
.label_282:
	call	xnanosleep
	test	eax, eax
	jne	.label_266
	xor	eax, eax
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_272:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_275
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_263:
	mov	edi, 1
	call	usage
.label_266:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_269
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	
	nop	word ptr cs:[rax + rax]
.label_286:
	test	rbx, rbx
	je	.label_270
	mov	qword ptr [rbx], r14
.label_270:
	xorps	xmm0, xmm0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b23
	.globl sub_403b23
	.type sub_403b23, @function
sub_403b23:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403b26

	.globl c_strtod
	.type c_strtod, @function
c_strtod:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	cmp	qword ptr [rip + c_locale_cache],  0
	jne	.label_287
	mov	edi, 0x1fbf
	mov	esi, OFFSET FLAT:label_285
	xor	edx, edx
	call	newlocale
	mov	qword ptr [rip + c_locale_cache],  rax
.label_287:
	mov	rdx, qword ptr [rip + c_locale_cache]
	test	rdx, rdx
	je	.label_286
	mov	rdi, r14
	mov	rsi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	strtod_l
	.section	.text
	.align	32
	#Procedure 0x403b70
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_288
	call	rpl_calloc
	test	rax, rax
	je	.label_288
	pop	rcx
	ret	
.label_288:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403b96
	.globl sub_403b96
	.type sub_403b96, @function
sub_403b96:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ba0
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
	#Procedure 0x403bb8
	.globl sub_403bb8
	.type sub_403bb8, @function
sub_403bb8:

	nop	dword ptr [rax + rax]
.label_290:
	inc	rcx
	mov	rax, rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403bc7
	.globl sub_403bc7
	.type sub_403bc7, @function
sub_403bc7:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403bca

	.globl dtotimespec
	.type dtotimespec, @function
dtotimespec:
	movabs	rcx, 0x7fffffffffffffff
	xor	edx, edx
	ucomisd	xmm0, qword ptr [rip + label_289]
	jbe	.label_290
	mov	edx, 0x3b9ac9ff
	movsd	xmm1, qword ptr [rip + label_291]
	ucomisd	xmm1, xmm0
	jbe	.label_292
	cvttsd2si	rsi, xmm0
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, rsi
	subsd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_293]
	cvttsd2si	rax, xmm0
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, rax
	xor	ecx, ecx
	ucomisd	xmm0, xmm1
	seta	cl
	add	rcx, rax
	movabs	rdx, 0x112e0be826d694b3
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rdx, 0x3f
	sar	rax, 0x1a
	add	rax, rdx
	imul	rdi, rax, 0x3b9aca00
	mov	rdx, rcx
	sub	rdx, rdi
	add	rdx, 0x3b9aca00
	sub	rcx, rdi
	cmovns	rdx, rcx
	add	rax, rsi
	sar	rcx, 0x3f
	add	rcx, rax
.label_292:
	mov	rax, rcx
	ret	
.label_299:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_297
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403c90
	.globl sub_403c90
	.type sub_403c90, @function
sub_403c90:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c9f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_299
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_294
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_296
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_294
	mov	esi, OFFSET FLAT:label_295
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_298
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_298:
	mov	rbx, r14
.label_294:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d20
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x403d2e
	.globl sub_403d2e
	.type sub_403d2e, @function
sub_403d2e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403d30

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
	js	.label_303
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_306
	cmp	r12d, 0x7fffffff
	je	.label_301
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
	jne	.label_304
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_304:
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
.label_306:
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
	jbe	.label_302
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_305
.label_302:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_300
	mov	rdi, r14
	call	free
.label_300:
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
.label_305:
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
.label_303:
	call	abort
.label_301:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403eed
	.globl sub_403eed
	.type sub_403eed, @function
sub_403eed:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403ef0
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
	#Procedure 0x403f09
	.globl sub_403f09
	.type sub_403f09, @function
sub_403f09:

	nop	dword ptr [rax]
.label_310:
	mov	rbx, qword ptr [rdi]
	lea	r14, [rsp]
	nop	word ptr cs:[rax + rax]
.label_309:
	mov	qword ptr [rsp + 8], rcx
	cmp	rbx, 0x1fa401
	jl	.label_308
	mov	qword ptr [rsp], 0x1fa400
	mov	rdi, r14
	mov	rsi, r15
	call	nanosleep
	add	rbx, -0x1fa400
	test	eax, eax
	mov	ecx, 0
	je	.label_309
	test	r15, r15
	je	.label_307
	add	qword ptr [r15], rbx
	jmp	.label_307
	.section	.text
	.align	32
	#Procedure 0x403f60

	.globl rpl_nanosleep
	.type rpl_nanosleep, @function
rpl_nanosleep:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r15, rsi
	mov	rcx, qword ptr [rdi + 8]
	cmp	rcx, 0x3b9aca00
	jb	.label_310
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 0xffffffff
	jmp	.label_307
.label_308:
	mov	qword ptr [rsp], rbx
	lea	rdi, [rsp]
	mov	rsi, r15
	call	nanosleep
.label_307:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403fa5
	.globl sub_403fa5
	.type sub_403fa5, @function
sub_403fa5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403fb0

	.globl xnanosleep
	.type xnanosleep, @function
xnanosleep:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	call	dtotimespec
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], rdx
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	ebx, ebx
	lea	rdi, [rsp]
	xor	esi, esi
	call	rpl_nanosleep
	test	eax, eax
	je	.label_311
	lea	r15, [rsp]
	nop	dword ptr [rax + rax]
.label_312:
	mov	eax, dword ptr [r14]
	mov	ebx, 0xffffffff
	or	eax, 4
	cmp	eax, 4
	jne	.label_311
	mov	dword ptr [r14], 0
	xor	ebx, ebx
	xor	esi, esi
	mov	rdi, r15
	call	rpl_nanosleep
	test	eax, eax
	jne	.label_312
.label_311:
	mov	eax, ebx
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x404023
	.globl sub_404023
	.type sub_404023, @function
sub_404023:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404030
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_313
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_314
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_316
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_38
	mov	ecx, OFFSET FLAT:label_27
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_315
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x4040a4
	.globl sub_4040a4
	.type sub_4040a4, @function
sub_4040a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040b0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_327
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_329
.label_327:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_329:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_317
	cmp	r10d, 0x29
	jae	.label_326
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_328
.label_326:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_328:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_317
	cmp	r10d, 0x29
	jae	.label_324
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_325
.label_324:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_325:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_317
	cmp	r10d, 0x29
	jae	.label_322
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_323
.label_322:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_323:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_317
	cmp	r10d, 0x29
	jae	.label_320
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_321
.label_320:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_321:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_317
	cmp	r10d, 0x29
	jae	.label_318
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_319
.label_318:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_319:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_317
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_317
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_317
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_317
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_317:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x404292
	.globl sub_404292
	.type sub_404292, @function
sub_404292:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042a0
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
	#Procedure 0x404315
	.globl sub_404315
	.type sub_404315, @function
sub_404315:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404320
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
	je	.label_330
	mov	qword ptr [rax], rbx
.label_330:
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
	#Procedure 0x40440c
	.globl sub_40440c
	.type sub_40440c, @function
sub_40440c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404410

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_12]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_13]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_14]
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
	#Procedure 0x404465
	.globl sub_404465
	.type sub_404465, @function
sub_404465:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404470

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_332
	cmp	byte ptr [rax], 0x43
	jne	.label_334
	cmp	byte ptr [rax + 1], 0
	je	.label_331
.label_334:
	mov	esi, OFFSET FLAT:label_333
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_332
.label_331:
	xor	ebx, ebx
.label_332:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4044a1
	.globl sub_4044a1
	.type sub_4044a1, @function
sub_4044a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044b0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4044b8
	.globl sub_4044b8
	.type sub_4044b8, @function
sub_4044b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044c0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_12]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_13]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_14]
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
	#Procedure 0x40452f
	.globl sub_40452f
	.type sub_40452f, @function
sub_40452f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404530

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
	jne	.label_335
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_335
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_336
.label_335:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_336:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_337
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_337:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40459e
	.globl sub_40459e
	.type sub_40459e, @function
sub_40459e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4045a0
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
	#Procedure 0x404661
	.globl sub_404661
	.type sub_404661, @function
sub_404661:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4046d5
	.globl sub_4046d5
	.type sub_4046d5, @function
sub_4046d5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4046e2
	.globl sub_4046e2
	.type sub_4046e2, @function
sub_4046e2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404706
	.globl sub_404706
	.type sub_404706, @function
sub_404706:

	nop	word ptr cs:[rax + rax]
