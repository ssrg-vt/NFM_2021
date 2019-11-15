	.section	.text
	.align	16
	#Procedure 0x401a59
	.globl sub_401a59
	.type sub_401a59, @function
sub_401a59:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x401a5a
	.globl sub_401a5a
	.type sub_401a5a, @function
sub_401a5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a92
	.globl sub_401a92
	.type sub_401a92, @function
sub_401a92:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ada
	.globl sub_401ada
	.type sub_401ada, @function
sub_401ada:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401afc
	.globl sub_401afc
	.type sub_401afc, @function
sub_401afc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401b0d
	.globl sub_401b0d
	.type sub_401b0d, @function
sub_401b0d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401b26
	.globl sub_401b26
	.type sub_401b26, @function
sub_401b26:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b30
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
	#Procedure 0x401b66
	.globl sub_401b66
	.type sub_401b66, @function
sub_401b66:

	nop	word ptr cs:[rax + rax]
.label_9:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401b75
	.globl sub_401b75
	.type sub_401b75, @function
sub_401b75:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b80
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_9
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_10
	test	rax, rax
	je	.label_9
.label_10:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401bb0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_21
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_23
.label_21:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_23:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_11
	cmp	r10d, 0x29
	jae	.label_20
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_22
.label_20:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_22:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_11
	cmp	r10d, 0x29
	jae	.label_18
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_19
.label_18:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_19:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_11
	cmp	r10d, 0x29
	jae	.label_16
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_17
.label_16:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_17:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_11
	cmp	r10d, 0x29
	jae	.label_14
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_15
.label_14:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_15:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_11
	cmp	r10d, 0x29
	jae	.label_12
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_13
.label_12:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_13:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_11
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_11
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_11
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_11
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_11:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x401d92
	.globl sub_401d92
	.type sub_401d92, @function
sub_401d92:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401da0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x401db1
	.globl sub_401db1
	.type sub_401db1, @function
sub_401db1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401dc0
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
	je	.label_24
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
.label_24:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401e28
	.globl sub_401e28
	.type sub_401e28, @function
sub_401e28:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e30
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x401e3a
	.globl sub_401e3a
	.type sub_401e3a, @function
sub_401e3a:

	nop	word ptr [rax + rax]
.label_25:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401e45
	.globl sub_401e45
	.type sub_401e45, @function
sub_401e45:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401e49
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
	je	.label_25
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
	.section	.text
	.align	16
	#Procedure 0x401eb0
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
	#Procedure 0x401ec8
	.globl sub_401ec8
	.type sub_401ec8, @function
sub_401ec8:

	nop	dword ptr [rax + rax]
.label_27:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_29
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_30:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_27
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_28
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x401f42

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_31
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_30
	cmp	dword ptr [rbp], 0x20
	jne	.label_30
.label_31:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_32
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_32:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x401f90

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_33
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_34
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401fb5
	.globl sub_401fb5
	.type sub_401fb5, @function
sub_401fb5:

	nop	word ptr cs:[rax + rax]
.label_35:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401fc5
	.globl sub_401fc5
	.type sub_401fc5, @function
sub_401fc5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401fcd
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
	je	.label_35
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
	#Procedure 0x402030

	.globl main
	.type main, @function
main:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_33
	call	setlocale
	mov	edi, OFFSET FLAT:label_39
	mov	esi, OFFSET FLAT:label_40
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_39
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r8, qword ptr [rip + Version]
	sub	rsp, 8
	mov	edx, OFFSET FLAT:label_41
	mov	ecx, OFFSET FLAT:label_42
	mov	r9d, 1
	mov	eax, 0
	mov	edi, ebp
	mov	rsi, rbx
	push	0
	push	OFFSET FLAT:label_43
	push	OFFSET FLAT:label_44
	push	OFFSET FLAT:label_45
	push	OFFSET FLAT:usage
	call	parse_gnu_standard_options_only
	add	rsp, 0x30
	movsxd	rax, dword ptr [rip + optind]
	sub	ebp, eax
	cmp	ebp, 1
	je	.label_38
	test	ebp, ebp
	jne	.label_36
	mov	edi, OFFSET FLAT:label_46
	mov	esi, 1
	jmp	.label_47
.label_38:
	mov	rdi, qword ptr [rbx + rax*8]
	xor	esi, esi
.label_47:
	call	uptime
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_36:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [rbx + rax*8 + 8]
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
	#Procedure 0x402128
	.globl sub_402128
	.type sub_402128, @function
sub_402128:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402130
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
	#Procedure 0x402148
	.globl sub_402148
	.type sub_402148, @function
sub_402148:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402150
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_48]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_49]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_50]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_51
	test	rdx, rdx
	je	.label_51
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_51:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4021ba
	.globl sub_4021ba
	.type sub_4021ba, @function
sub_4021ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021c0
	.globl tzalloc
	.type tzalloc, @function
tzalloc:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	xor	r15d, r15d
	test	r14, r14
	je	.label_52
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	inc	r15
.label_52:
	lea	rax, [r15 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r15, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_53
	mov	qword ptr [rbx], 0
	test	r14, r14
	setne	byte ptr [rbx + 8]
	mov	byte ptr [rbx + 9], 0
	je	.label_53
	mov	r12, rbx
	add	r12, 9
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [r12 + r15], 0
.label_53:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402240

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
	#Procedure 0x402257
	.globl sub_402257
	.type sub_402257, @function
sub_402257:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402260

	.globl uptime
	.type uptime, @function
uptime:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x2038
	mov	eax, esi
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x10], 0
	lea	rsi, [rsp + 0x28]
	lea	rdx, [rsp + 0x10]
	mov	ecx, eax
	call	read_utmp
	test	eax, eax
	jne	.label_62
	mov	r15, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x10]
	mov	edi, OFFSET FLAT:label_63
	mov	esi, OFFSET FLAT:label_64
	call	fopen
	mov	rbx, rax
	xor	r13d, r13d
	test	rbx, rbx
	je	.label_77
	lea	r14, [rsp + 0x30]
	mov	esi, 0x2000
	mov	rdi, r14
	mov	rdx, rbx
	call	fgets_unlocked
	xor	r13d, r13d
	cmp	rax, r14
	jne	.label_79
	lea	rsi, [rsp + 8]
	mov	rdi, r14
	call	c_strtod
	xor	r13d, r13d
	cmp	r14, qword ptr [rsp + 8]
	je	.label_79
	movsd	xmm1, qword ptr [rip + label_66]
	ucomisd	xmm1, xmm0
	cvttsd2si	r13, xmm0
	mov	rax, -1
	cmovbe	r13, rax
	xorpd	xmm1, xmm1
	ucomisd	xmm0, xmm1
	cmovb	r13, rax
.label_79:
	mov	rdi, rbx
	call	rpl_fclose
.label_77:
	xor	r14d, r14d
	test	r15, r15
	mov	ebx, 0
	je	.label_65
	mov	eax, r15d
	and	eax, 1
	xor	ebx, ebx
	cmp	r15, 1
	jne	.label_68
	xor	r14d, r14d
	jmp	.label_87
.label_68:
	mov	rcx, rax
	sub	rcx, r15
	xor	ebx, ebx
	xor	r14d, r14d
	nop	
.label_67:
	movzx	esi, word ptr [rbp]
	xor	edi, edi
	cmp	esi, 7
	sete	dil
	cmp	byte ptr [rbp + 0x2c], 0
	mov	edx, 0
	cmovne	rdx, rdi
	cmp	esi, 2
	jne	.label_78
	movsxd	r14, dword ptr [rbp + 0x154]
.label_78:
	add	rdx, rbx
	movzx	esi, word ptr [rbp + 0x180]
	xor	edi, edi
	cmp	esi, 7
	sete	dil
	cmp	byte ptr [rbp + 0x1ac], 0
	mov	ebx, 0
	cmovne	rbx, rdi
	cmp	esi, 2
	jne	.label_86
	movsxd	r14, dword ptr [rbp + 0x2d4]
.label_86:
	add	rbx, rdx
	add	rbp, 0x300
	add	rcx, 2
	jne	.label_67
.label_87:
	test	rax, rax
	je	.label_65
	movzx	ecx, word ptr [rbp]
	xor	edx, edx
	cmp	ecx, 7
	sete	dl
	xor	eax, eax
	cmp	byte ptr [rbp + 0x2c], 0
	cmovne	rax, rdx
	cmp	ecx, 2
	jne	.label_71
	movsxd	r14, dword ptr [rbp + 0x154]
.label_71:
	add	rbx, rax
.label_65:
	xor	edi, edi
	call	time
	mov	qword ptr [rsp + 8], rax
	test	r13, r13
	jne	.label_83
	test	r14, r14
	je	.label_85
	sub	rax, r14
	mov	r13, rax
.label_83:
	movabs	rcx, 0x1845c8a0ce512957
	mov	rax, r13
	imul	rcx
	mov	r12, rdx
	mov	rax, r12
	shr	rax, 0x3f
	sar	r12, 0xd
	add	r12, rax
	imul	rbp, r12, -0x15180
	mov	qword ptr [rsp + 0x20], r13
	add	rbp, r13
	movabs	rcx, 0x48d159e26af37c05
	mov	rax, rbp
	imul	rcx
	mov	r15, rdx
	mov	rax, r15
	shr	rax, 0x3f
	sar	r15, 0xa
	add	r15, rax
	movabs	rax, 0xe1000000000
	imul	rax, r15
	sar	rax, 0x20
	sub	rbp, rax
	movabs	rcx, 0x8888888888888889
	mov	rax, rbp
	imul	rcx
	mov	r13, rdx
	lea	rdi, [rsp + 8]
	call	localtime
	mov	r14, rax
	test	r14, r14
	je	.label_55
	mov	rax, qword ptr [rip + stdout]
	mov	qword ptr [rsp + 0x18], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rax
	mov	rdx, r14
	call	fprintftime
	jmp	.label_73
.label_55:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_75
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
.label_73:
	mov	rcx, qword ptr [rsp + 0x20]
	cmp	rcx, -1
	je	.label_81
	add	r13, rbp
	mov	rax, r13
	shr	rax, 0x3f
	shr	r13, 5
	add	r13d, eax
	xor	edi, edi
	cmp	rcx, 0x15180
	jl	.label_84
	mov	esi, OFFSET FLAT:label_56
	mov	edx, OFFSET FLAT:label_57
	mov	r8d, 5
	mov	rcx, r12
	call	dcngettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rdx, r12
	mov	ecx, r15d
	mov	r8d, r13d
	call	__printf_chk
	jmp	.label_72
.label_81:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_74
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	jmp	.label_72
.label_84:
	mov	esi, OFFSET FLAT:label_82
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	edx, r15d
	mov	ecx, r13d
	call	__printf_chk
.label_72:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_58
	mov	edx, OFFSET FLAT:label_59
	mov	r8d, 5
	mov	rcx, rbx
	call	dcngettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rdx, rbx
	call	__printf_chk
	lea	rdi, [rsp + 0x30]
	mov	esi, 3
	call	getloadavg
	mov	ebx, eax
	cmp	ebx, -1
	je	.label_61
	test	ebx, ebx
	jle	.label_76
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_80
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	movsd	xmm0, qword ptr [rsp + 0x30]
	mov	edi, 1
	mov	al, 1
	mov	rsi, rcx
	call	__printf_chk
	cmp	ebx, 1
	je	.label_61
	movsd	xmm0, qword ptr [rsp + 0x38]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_54
	mov	al, 1
	call	__printf_chk
	cmp	ebx, 3
	jl	.label_61
	movsd	xmm0, qword ptr [rsp + 0x40]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_54
	mov	al, 1
	call	__printf_chk
.label_61:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_69
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_76:
	add	rsp, 0x2038
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_69:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_76
.label_62:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_28
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_85:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_70
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026d0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_48]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_49]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_50]
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
	#Procedure 0x402724
	.globl sub_402724
	.type sub_402724, @function
sub_402724:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402730

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_88
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_28
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402760
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_89
	test	rax, rax
	je	.label_90
.label_89:
	pop	rbx
	ret	
.label_90:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40277a
	.globl sub_40277a
	.type sub_40277a, @function
sub_40277a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402780

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
	jne	.label_92
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_91
	test	cl, cl
	jne	.label_91
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_91
.label_92:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_91
	call	__errno_location
	mov	dword ptr [rax], 0
.label_91:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4027e0
	.globl tzfree
	.type tzfree, @function
tzfree:

	push	rbx
	cmp	rdi, 2
	jb	.label_93
	nop	word ptr [rax + rax]
.label_94:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_94
.label_93:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402802
	.globl sub_402802
	.type sub_402802, @function
sub_402802:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402810

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r12, rdi
	mov	rbx, qword ptr [r15 + 0x30]
	mov	r14b, 1
	test	rbx, rbx
	je	.label_99
	cmp	r15, rbx
	ja	.label_106
	lea	rax, [r15 + 0x38]
	cmp	rbx, rax
	jb	.label_99
.label_106:
	mov	ebp, OFFSET FLAT:label_33
	cmp	byte ptr [rbx], 0
	je	.label_96
	lea	rbp, [r12 + 9]
	jmp	.label_100
.label_105:
	mov	rax, qword ptr [r12]
	lea	rbp, [rax + 9]
	test	rax, rax
	cmove	rbp, rcx
	cmovne	r12, rax
.label_100:
	lea	r13, [r12 + 9]
.label_103:
	mov	rdi, rbp
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	je	.label_96
	cmp	byte ptr [rbp], 0
	jne	.label_101
	cmp	rbp, r13
	jne	.label_97
	cmp	byte ptr [r12 + 8], 0
	je	.label_98
.label_101:
	mov	rdi, rbp
	call	strlen
	lea	rcx, [rbp + rax + 1]
	cmp	byte ptr [rbp + rax + 1], 0
	mov	rbp, rcx
	jne	.label_103
	jmp	.label_105
.label_98:
	mov	rbp, r13
.label_97:
	mov	rdi, rbx
	call	strlen
	lea	rdx, [rax + 1]
	mov	rcx, rbp
	sub	rcx, r13
	mov	rsi, rcx
	not	rsi
	cmp	rdx, rsi
	jbe	.label_107
	call	__errno_location
	mov	dword ptr [rax], 0xc
.label_95:
	xor	r14d, r14d
	jmp	.label_99
.label_107:
	add	rcx, rdx
	cmp	rcx, 0x76
	ja	.label_104
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rbx, rdx
	call	memcpy
	mov	byte ptr [rbp + rbx], 0
	jmp	.label_96
.label_104:
	add	rax, 0x12
	and	rax, 0xfffffffffffffff8
	mov	r13, rdx
	cmp	rdx, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	test	rax, rax
	je	.label_102
	mov	qword ptr [rax], 0
	mov	word ptr [rax + 8], 1
	mov	rbp, rax
	add	rbp, 9
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r13
	mov	rbx, rax
	call	memcpy
	mov	byte ptr [rbx + r13 + 9], 0
	mov	qword ptr [r12], rbx
	mov	byte ptr [rbx + 8], 0
.label_96:
	mov	qword ptr [r15 + 0x30], rbp
.label_99:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_102:
	mov	qword ptr [r12], 0
	jmp	.label_95
	.section	.text
	.align	16
	#Procedure 0x402975
	.globl sub_402975
	.type sub_402975, @function
sub_402975:

	nop	word ptr cs:[rax + rax]
.label_110:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_108
	test	rax, rax
	je	.label_109
.label_108:
	pop	rbx
	ret	
.label_109:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402999
	.globl sub_402999
	.type sub_402999, @function
sub_402999:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4029a1
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_109
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_110
	test	rbx, rbx
	jne	.label_110
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4029d0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_48]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_49]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_50]
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
	#Procedure 0x402a25
	.globl sub_402a25
	.type sub_402a25, @function
sub_402a25:

	nop	word ptr cs:[rax + rax]
.label_111:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402a35
	.globl sub_402a35
	.type sub_402a35, @function
sub_402a35:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a40

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
	je	.label_111
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
	.align	16
	#Procedure 0x402ad0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_112
	test	rdx, rdx
	je	.label_112
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_112:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402afb
	.globl sub_402afb
	.type sub_402afb, @function
sub_402afb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b00

	.globl read_utmp
	.type read_utmp, @function
read_utmp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12d, ecx
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], rsi
	call	utmpxname
	call	setutxent
	call	getutxent
	mov	rbp, rax
	xor	r13d, r13d
	test	rbp, rbp
	mov	ebx, 0
	je	.label_116
	mov	r14d, r12d
	and	r14d, 2
	and	r12d, 1
	xor	ebx, ebx
	xor	r13d, r13d
	xor	r15d, r15d
.label_119:
	test	r14d, r14d
	jne	.label_122
	test	r12d, r12d
	je	.label_114
	nop	
.label_115:
	cmp	byte ptr [rbp + 0x2c], 0
	je	.label_114
	movzx	eax, word ptr [rbp]
	cmp	eax, 7
	jne	.label_114
	mov	edi, dword ptr [rbp + 4]
	test	edi, edi
	jle	.label_114
	xor	esi, esi
	call	kill
	test	eax, eax
	jns	.label_114
	call	__errno_location
	cmp	dword ptr [rax], 3
	jne	.label_114
	call	getutxent
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_115
	jmp	.label_116
	.section	.text
	.align	16
	#Procedure 0x402bb1
	.globl sub_402bb1
	.type sub_402bb1, @function
sub_402bb1:

	nop	word ptr cs:[rax + rax]
.label_122:
	test	r12d, r12d
	jne	.label_117
	nop	word ptr cs:[rax + rax]
.label_124:
	cmp	byte ptr [rbp + 0x2c], 0
	je	.label_121
	movzx	eax, word ptr [rbp]
	cmp	eax, 7
	je	.label_114
.label_121:
	call	getutxent
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_124
	jmp	.label_116
	.section	.text
	.align	16
	#Procedure 0x402bf1
	.globl sub_402bf1
	.type sub_402bf1, @function
sub_402bf1:

	nop	word ptr cs:[rax + rax]
.label_117:
	cmp	byte ptr [rbp + 0x2c], 0
	je	.label_113
	movzx	eax, word ptr [rbp]
	cmp	eax, 7
	jne	.label_113
	mov	edi, dword ptr [rbp + 4]
	test	edi, edi
	jle	.label_114
	xor	esi, esi
	call	kill
	test	eax, eax
	jns	.label_114
	call	__errno_location
	cmp	dword ptr [rax], 3
	jne	.label_114
.label_113:
	call	getutxent
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_117
	jmp	.label_116
	.section	.text
	.align	16
	#Procedure 0x402c3d
	.globl sub_402c3d
	.type sub_402c3d, @function
sub_402c3d:

	nop	dword ptr [rax]
.label_114:
	cmp	rbx, r15
	jne	.label_125
	test	r13, r13
	je	.label_120
	movabs	rax, 0x38e38e38e38e38
	cmp	rbx, rax
	jae	.label_118
	mov	rax, rbx
	shr	rax, 1
	lea	r15, [rbx + rax + 1]
	jmp	.label_123
.label_120:
	test	rbx, rbx
	mov	r15, rbx
	mov	eax, 1
	cmove	r15, rax
	movabs	rax, 0x55555555555556
	cmp	r15, rax
	jae	.label_126
.label_123:
	mov	rax, r15
	shl	rax, 7
	lea	rsi, [rax + rax*2]
	mov	rdi, r13
	call	xrealloc
	mov	r13, rax
.label_125:
	lea	rdi, [rbx + rbx*2]
	inc	rbx
	shl	rdi, 7
	add	rdi, r13
	mov	edx, 0x180
	mov	rsi, rbp
	call	memcpy
	call	getutxent
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_119
.label_116:
	call	endutxent
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbx
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], r13
	xor	eax, eax
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_118:
	call	xalloc_die
.label_126:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402cfa
	.globl sub_402cfa
	.type sub_402cfa, @function
sub_402cfa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d00

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_127
	test	rsi, rsi
	mov	ecx, 1
	je	.label_128
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_128
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_127:
	mov	ecx, 1
.label_128:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x402d4b
	.globl sub_402d4b
	.type sub_402d4b, @function
sub_402d4b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d50

	.globl c_strtod
	.type c_strtod, @function
c_strtod:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	cmp	qword ptr [rip + c_locale_cache],  0
	jne	.label_129
	mov	edi, 0x1fbf
	mov	esi, OFFSET FLAT:label_130
	xor	edx, edx
	call	newlocale
	mov	qword ptr [rip + c_locale_cache],  rax
.label_129:
	mov	rdx, qword ptr [rip + c_locale_cache]
	test	rdx, rdx
	je	.label_132
	mov	rdi, r14
	mov	rsi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	strtod_l
.label_132:
	test	rbx, rbx
	je	.label_131
	mov	qword ptr [rbx], r14
.label_131:
	xorps	xmm0, xmm0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x402dad
	.globl sub_402dad
	.type sub_402dad, @function
sub_402dad:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402db0

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
	je	.label_137
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_137:
	mov	ebp, dword ptr [rip + opterr]
	mov	dword ptr [rip + opterr],  1
	mov	eax, OFFSET FLAT:label_33
	mov	edx, OFFSET FLAT:label_133
	test	r9b, r9b
	cmovne	rdx, rax
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, -1
	je	.label_136
	mov	rcx, qword ptr [rsp + 0x100]
	cmp	eax, 0x68
	je	.label_138
	cmp	eax, 0x76
	je	.label_135
	mov	edi, dword ptr [rip + exit_failure]
	jmp	.label_134
.label_138:
	xor	edi, edi
.label_134:
	call	rcx
.label_136:
	mov	dword ptr [rip + opterr],  ebp
	add	rsp, 0xd8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_135:
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
	.align	16
	#Procedure 0x402eac
	.globl sub_402eac
	.type sub_402eac, @function
sub_402eac:

	nop	dword ptr [rax]
.label_140:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402eb5
	.globl sub_402eb5
	.type sub_402eb5, @function
sub_402eb5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ebf
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
	je	.label_139
	test	r14, r14
	je	.label_140
.label_139:
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
	#Procedure 0x402ef0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_48]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_49]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_50]
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
	#Procedure 0x402f5e
	.globl sub_402f5e
	.type sub_402f5e, @function
sub_402f5e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402f60
	.globl version_etc
	.type version_etc, @function
version_etc:

	sub	rsp, 0xd8
	test	al, al
	je	.label_141
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_141:
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
	#Procedure 0x402fe3
	.globl sub_402fe3
	.type sub_402fe3, @function
sub_402fe3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ff0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_48]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_49]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_50]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_142
	test	rsi, rsi
	je	.label_142
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
.label_142:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40305c
	.globl sub_40305c
	.type sub_40305c, @function
sub_40305c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403060
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
	#Procedure 0x403121
	.globl sub_403121
	.type sub_403121, @function
sub_403121:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403130
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
	#Procedure 0x403143
	.globl sub_403143
	.type sub_403143, @function
sub_403143:

	nop	word ptr cs:[rax + rax]
.label_144:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_143
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_143:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403184
	.globl sub_403184
	.type sub_403184, @function
sub_403184:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403186

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
	jne	.label_145
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_145
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_144
.label_145:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x4031c0
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
	je	.label_146
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_146:
	mov	ebp, dword ptr [rip + opterr]
	mov	dword ptr [rip + opterr],  0
	cmp	edi, 2
	jne	.label_148
	mov	edi, 2
	mov	edx, OFFSET FLAT:label_133
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, 0x68
	je	.label_147
	cmp	eax, 0x76
	jne	.label_148
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
.label_147:
	xor	edi, edi
	call	rbx
.label_148:
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
	.align	16
	#Procedure 0x4032b6
	.globl sub_4032b6
	.type sub_4032b6, @function
sub_4032b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032c0
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
	#Procedure 0x4032f3
	.globl sub_4032f3
	.type sub_4032f3, @function
sub_4032f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403300

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_149
	test	rbx, rbx
	jne	.label_149
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_149:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_151
	test	rax, rax
	je	.label_150
.label_151:
	pop	rbx
	ret	
.label_150:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403330
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_152
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_155:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_155
.label_152:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_156
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_154], OFFSET FLAT:slot0
.label_156:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_153
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_153:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4033c1
	.globl sub_4033c1
	.type sub_4033c1, @function
sub_4033c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033d0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_157
	test	rax, rax
	je	.label_158
.label_157:
	pop	rbx
	ret	
.label_158:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4033ea
	.globl sub_4033ea
	.type sub_4033ea, @function
sub_4033ea:

	nop	word ptr [rax + rax]
.label_163:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_159
	mov	eax, OFFSET FLAT:label_160
	jmp	.label_161
	.section	.text
	.align	16
	#Procedure 0x4033ff
	.globl sub_4033ff
	.type sub_4033ff, @function
sub_4033ff:

	nop	word ptr cs:[rax + rax]
.label_168:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_162
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_162
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_162
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_162
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_162
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_162
	cmp	byte ptr [rax + 7], 0
	je	.label_163
.label_162:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_164
	mov	eax, OFFSET FLAT:label_165
.label_161:
	cmove	rax, rcx
.label_169:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403452

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
	jne	.label_169
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_168
	cmp	ecx, 0x55
	jne	.label_162
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_162
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_162
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_162
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_162
	cmp	byte ptr [rax + 5], 0
	jne	.label_162
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_166
	mov	eax, OFFSET FLAT:label_167
	jmp	.label_161
	.section	.text
	.align	16
	#Procedure 0x4034c0
	.globl extract_trimmed_name
	.type extract_trimmed_name, @function
extract_trimmed_name:

	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	edi, 0x21
	call	xmalloc
	mov	rbx, rax
	lea	rsi, [r14 + 0x2c]
	mov	edx, 0x20
	mov	rdi, rbx
	call	strncpy
	mov	byte ptr [rbx + 0x20], 0
	mov	rdi, rbx
	call	strlen
	test	rax, rax
	jle	.label_170
	add	rax, rbx
	nop	dword ptr [rax]
.label_171:
	cmp	byte ptr [rax - 1], 0x20
	jne	.label_170
	mov	byte ptr [rax - 1], 0
	dec	rax
	cmp	rbx, rax
	jb	.label_171
.label_170:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x40351d
	.globl sub_40351d
	.type sub_40351d, @function
sub_40351d:

	nop	dword ptr [rax]
.label_172:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403525
	.globl sub_403525
	.type sub_403525, @function
sub_403525:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403529

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
	je	.label_173
	test	r15, r15
	je	.label_172
.label_173:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_186:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_181
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
	#Procedure 0x403598
	.globl sub_403598
	.type sub_403598, @function
sub_403598:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40359d

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_186
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_184
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_176
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_190
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_178
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_46
	mov	ecx, OFFSET FLAT:label_185
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_174
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_177
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_42
	mov	ecx, OFFSET FLAT:label_175
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_183
	mov	esi, OFFSET FLAT:label_179
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_183
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_188
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_183:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_189
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_175
	mov	ecx, OFFSET FLAT:label_41
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_180
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_41
	mov	ecx, OFFSET FLAT:label_187
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x403750

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_191
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_193
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_191
.label_193:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_191
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_192
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_192:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_191:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x4037c4
	.globl sub_4037c4
	.type sub_4037c4, @function
sub_4037c4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037d0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4037de
	.globl sub_4037de
	.type sub_4037de, @function
sub_4037de:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4037e0

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
	js	.label_194
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_197
	cmp	r12d, 0x7fffffff
	je	.label_199
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
	jne	.label_195
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_195:
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
.label_197:
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
	jbe	.label_200
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_196
.label_200:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_198
	mov	rdi, r14
	call	free
.label_198:
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
.label_196:
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
.label_194:
	call	abort
.label_199:
	call	xalloc_die
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
	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbp, rsi
	mov	r15, rdi
	test	r15, r15
	je	.label_205
	mov	qword ptr [rsp + 8], rdx
	mov	edi, OFFSET FLAT:label_203
	call	getenv
	mov	r13, rax
	test	r13, r13
	mov	bl, byte ptr [r15 + 8]
	mov	qword ptr [rsp + 0x10], rbp
	je	.label_212
	test	bl, bl
	je	.label_204
	lea	rdi, [r15 + 9]
	mov	rsi, r13
	call	strcmp
	mov	r14d, 1
	test	eax, eax
	je	.label_221
.label_204:
	mov	rdi, r13
	call	strlen
	mov	rbp, rax
	inc	rbp
	mov	r12b, 1
	jmp	.label_222
.label_205:
	mov	rdi, rbp
	mov	rsi, rdx
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	gmtime_r
.label_212:
	xor	r12d, r12d
	mov	r14d, 1
	test	bl, bl
	mov	ebp, 0
	je	.label_221
.label_222:
	lea	rax, [rbp + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	rbp, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	r14, rax
	test	r14, r14
	je	.label_214
	mov	qword ptr [r14], 0
	mov	byte ptr [r14 + 8], r12b
	mov	byte ptr [r14 + 9], 0
	test	r12b, r12b
	je	.label_217
	lea	r12, [r14 + 9]
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, rbp
	call	memcpy
	mov	byte ptr [r12 + rbp], 0
.label_217:
	test	bl, bl
	je	.label_202
	lea	rsi, [r15 + 9]
	mov	edi, OFFSET FLAT:label_203
	mov	edx, 1
	call	setenv
	jmp	.label_206
.label_202:
	mov	edi, OFFSET FLAT:label_203
	call	unsetenv
.label_206:
	test	eax, eax
	je	.label_208
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	cmp	r14, 2
	jb	.label_210
	nop	word ptr cs:[rax + rax]
.label_216:
	mov	rbx, qword ptr [r14]
	mov	rdi, r14
	call	free
	test	rbx, rbx
	mov	r14, rbx
	jne	.label_216
.label_210:
	mov	dword ptr [rbp], r15d
.label_214:
	xor	eax, eax
	jmp	.label_219
.label_208:
	call	tzset
.label_221:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rsp + 8]
	mov	rsi, rbx
	call	localtime_r
	mov	bpl, 1
	test	rax, rax
	mov	r12b, 1
	je	.label_201
	mov	rdi, r15
	mov	rsi, rbx
	call	save_abbr
	mov	r12d, eax
	xor	r12b, 1
.label_201:
	cmp	r14, 1
	je	.label_213
	call	__errno_location
	mov	r15, rax
	mov	r13d, dword ptr [r15]
	cmp	byte ptr [r14 + 8], 0
	je	.label_207
	lea	rsi, [r14 + 9]
	mov	edi, OFFSET FLAT:label_203
	mov	edx, 1
	call	setenv
	jmp	.label_218
.label_207:
	mov	edi, OFFSET FLAT:label_203
	call	unsetenv
.label_218:
	test	eax, eax
	je	.label_215
	mov	r13d, dword ptr [r15]
	xor	ebp, ebp
	jmp	.label_209
.label_215:
	call	tzset
	mov	bpl, 1
.label_209:
	cmp	r14, 2
	jb	.label_220
	nop	word ptr cs:[rax + rax]
.label_211:
	mov	rbx, qword ptr [r14]
	mov	rdi, r14
	call	free
	test	rbx, rbx
	mov	r14, rbx
	jne	.label_211
.label_220:
	mov	dword ptr [r15], r13d
	mov	rbx, qword ptr [rsp + 8]
.label_213:
	xor	eax, eax
	xor	bpl, 1
	cmovne	rbx, rax
	test	r12b, r12b
	cmovne	rbx, rax
	mov	rax, rbx
.label_219:
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
	#Procedure 0x403bbe
	.globl sub_403bbe
	.type sub_403bbe, @function
sub_403bbe:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403bc0
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
	je	.label_223
	mov	qword ptr [rax], rbx
.label_223:
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
	#Procedure 0x403cac
	.globl sub_403cac
	.type sub_403cac, @function
sub_403cac:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403cb0

	.globl fprintftime
	.type fprintftime, @function
fprintftime:
	push	rax
	mov	eax, r8d
	mov	r10, rcx
	mov	ecx, 0
	mov	r8d, 0
	mov	r9d, 0xffffffff
	push	rax
	push	r10
	call	__strftime_internal
	add	rsp, 0x10
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403cd6
	.globl sub_403cd6
	.type sub_403cd6, @function
sub_403cd6:

	nop	word ptr cs:[rax + rax]
.label_226:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403ce5
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_225
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_227
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_228
	call	free
	xor	eax, eax
	jmp	.label_224
.label_227:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403d1c
	.globl sub_403d1c
	.type sub_403d1c, @function
sub_403d1c:

	nop	word ptr cs:[rax + rax]
.label_225:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_226
	mov	qword ptr [rsi], rbx
.label_228:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_224
	test	rax, rax
	je	.label_226
.label_224:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d50
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d58
	.globl sub_403d58
	.type sub_403d58, @function
sub_403d58:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d60
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_48]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_49]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_50]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_229
	test	rdx, rdx
	je	.label_229
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_229:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403dce
	.globl sub_403dce
	.type sub_403dce, @function
sub_403dce:

	nop	
.label_748:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_230
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
	jmp	.label_231
.label_751:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_237
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
.label_231:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e67
	.globl sub_403e67
	.type sub_403e67, @function
sub_403e67:

	nop	dword ptr [rax + rax]
.label_752:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_232
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
	jmp	.label_231
.label_744:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_248
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
.label_747:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_239
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
	jmp	.label_231
.label_746:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_243
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
.label_750:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_242
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
	jmp	.label_231
.label_743:
	add	rsp, 8
	jmp	.label_231
.label_749:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_247
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
	jmp	.label_231
.label_745:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_233
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
	.section	.text
	.align	16
	#Procedure 0x404039

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
	je	.label_246
	mov	edx, OFFSET FLAT:label_240
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_244
.label_246:
	mov	edx, OFFSET FLAT:label_235
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_244:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_234
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
	mov	esi, OFFSET FLAT:label_245
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_236
	jmp	qword ptr [(r12 * 8) + label_238]
.label_236:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_241
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
	jmp	.label_231
	.section	.text
	.align	16
	#Procedure 0x404130
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_249
	call	rpl_calloc
	test	rax, rax
	je	.label_249
	pop	rcx
	ret	
.label_249:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404156
	.globl sub_404156
	.type sub_404156, @function
sub_404156:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404160

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_250
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_250
	test	byte ptr [rbx + 1], 1
	je	.label_250
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_250:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x404193
	.globl sub_404193
	.type sub_404193, @function
sub_404193:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041a0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4041a8
	.globl sub_4041a8
	.type sub_4041a8, @function
sub_4041a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041b0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4041ba
	.globl sub_4041ba
	.type sub_4041ba, @function
sub_4041ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041c0

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
	je	.label_251
	cmp	r15, -2
	jb	.label_251
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_251
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_251:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404216
	.globl sub_404216
	.type sub_404216, @function
sub_404216:

	nop	word ptr cs:[rax + rax]
.label_252:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404225
	.globl sub_404225
	.type sub_404225, @function
sub_404225:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404233
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
	je	.label_253
	test	r15, r15
	je	.label_252
.label_253:
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
	.align	16
	#Procedure 0x404270
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
	#Procedure 0x40427f
	.globl sub_40427f
	.type sub_40427f, @function
sub_40427f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404280
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_254
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_255
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_257
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_42
	mov	ecx, OFFSET FLAT:label_175
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_256
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x4042f4
	.globl sub_4042f4
	.type sub_4042f4, @function
sub_4042f4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404300
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
	#Procedure 0x40430f
	.globl sub_40430f
	.type sub_40430f, @function
sub_40430f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404310

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x4a8
	mov	r13d, r9d
	mov	dword ptr [rsp + 0x70], r8d
	mov	dword ptr [rsp + 0x74], ecx
	mov	rbx, rdx
	mov	r12, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	eax, dword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x30]
	test	rcx, rcx
	mov	edx, OFFSET FLAT:label_33
	cmovne	rdx, rcx
	mov	qword ptr [rsp + 0x60], rdx
	lea	ecx, [rax - 0xc]
	test	eax, eax
	mov	edx, 0xc
	cmovne	edx, eax
	cmp	eax, 0xc
	cmovg	edx, ecx
	mov	dword ptr [rsp + 0x6c], edx
	mov	cl, byte ptr [r12]
	test	cl, cl
	mov	eax, 0
	je	.label_396
	lea	rax, [rsp + 0x80]
	mov	rdx, -0x17
	sub	rdx, rax
	mov	qword ptr [rsp + 0x78], rdx
	xor	r11d, r11d
	mov	qword ptr [rsp + 0x28], rbx
	jmp	.label_394
.label_412:
	test	rbp, rbp
	mov	rbx, qword ptr [rsp + 8]
	je	.label_408
.label_425:
	mov	edi, 0x20
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_425
.label_408:
	movsx	edi, byte ptr [r12]
.label_344:
	mov	rsi, rbx
	call	fputc
	mov	r11, qword ptr [rsp + 0x20]
	mov	r9d, dword ptr [rsp + 0x14]
.label_345:
	add	r11, r15
	mov	r8, qword ptr [rsp + 0x30]
	jmp	.label_374
.label_416:
	mov	eax, 3
	jmp	.label_431
	.section	.text
	.align	16
	#Procedure 0x4043e3
	.globl sub_4043e3
	.type sub_4043e3, @function
sub_4043e3:

	nop	word ptr cs:[rax + rax]
.label_394:
	cmp	cl, 0x25
	jne	.label_435
	xor	eax, eax
	mov	ecx, dword ptr [rsp + 0x74]
	mov	dil, cl
	xor	r14d, r14d
.label_688:
	mov	ebx, eax
	mov	al, dil
.label_286:
	mov	dil, al
	inc	r12
	jmp	.label_261
	.section	.text
	.align	16
	#Procedure 0x404412
	.globl sub_404412
	.type sub_404412, @function
sub_404412:

	nop	word ptr cs:[rax + rax]
.label_284:
	inc	r12
	mov	r14d, edx
.label_261:
	mov	cl, byte ptr [r12]
	movsx	edx, cl
	mov	al, 1
	lea	esi, [rdx - 0x23]
	cmp	esi, 0xd
	ja	.label_272
	jmp	qword ptr [(rsi * 8) + label_279]
	.section	.text
	.align	16
	#Procedure 0x40443e
	.globl sub_40443e
	.type sub_40443e, @function
sub_40443e:

	nop	
.label_272:
	cmp	edx, 0x5f
	je	.label_284
	cmp	edx, 0x5e
	je	.label_286
.label_689:
	add	edx, -0x30
	cmp	edx, 9
	ja	.label_289
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_303:
	mov	r13d, 0x7fffffff
	cmp	eax, 0xccccccc
	jg	.label_291
	movsx	ecx, cl
	cmp	eax, 0xccccccc
	jne	.label_295
	lea	edx, [rcx - 0x30]
	cmp	edx, 7
	jg	.label_291
.label_295:
	lea	eax, [rax + rax*4]
	lea	r13d, [rcx + rax*2 - 0x30]
.label_291:
	movsx	ecx, byte ptr [r12 + 1]
	inc	r12
	mov	eax, ecx
	add	eax, -0x30
	cmp	eax, 0xa
	mov	eax, r13d
	jb	.label_303
.label_289:
	movsx	r10d, cl
	cmp	r10d, 0x4f
	je	.label_306
	cmp	r10d, 0x45
	jne	.label_308
.label_306:
	mov	cl, byte ptr [r12 + 1]
	inc	r12
	jmp	.label_312
	.section	.text
	.align	16
	#Procedure 0x4044be
	.globl sub_4044be
	.type sub_4044be, @function
sub_4044be:

	nop	
.label_435:
	test	r13d, r13d
	mov	eax, r13d
	mov	edx, 0
	cmovs	eax, edx
	movsxd	r14, eax
	cmp	r14d, 1
	mov	edx, 1
	cmovbe	r14, rdx
	mov	rdx, r11
	not	rdx
	mov	edi, 1
	cmp	r14, rdx
	jae	.label_300
	cmp	qword ptr [rsp + 8], 0
	je	.label_325
	cmp	eax, 2
	mov	qword ptr [rsp + 0x30], r8
	mov	dword ptr [rsp + 0x14], r9d
	mov	r15, r11
	jb	.label_329
	movsxd	rbp, r13d
	dec	rbp
	mov	rbx, qword ptr [rsp + 8]
	je	.label_334
	nop	word ptr cs:[rax + rax]
.label_343:
	mov	edi, 0x20
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_343
	mov	cl, byte ptr [r12]
	jmp	.label_334
.label_308:
	xor	r10d, r10d
.label_312:
	mov	qword ptr [rsp + 0x48], rdi
	movsx	esi, cl
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	cmp	esi, 0x7a
	ja	.label_258
	mov	ebp, OFFSET FLAT:label_348
	mov	dl, 0x72
	mov	r15d, 0xffffffff
	xor	eax, eax
	xor	edi, edi
	jmp	qword ptr [(rsi * 8) + label_349]
.label_700:
	cmp	r10d, 0x45
	je	.label_258
	mov	rax, qword ptr [rsp + 0x28]
	mov	r8d, dword ptr [rax + 0x14]
	mov	r9d, dword ptr [rax + 0x18]
	mov	edx, r8d
	sar	edx, 0x1f
	and	edx, 0x190
	mov	rdi, rax
	lea	eax, [r8 + rdx - 0x64]
	mov	edi, dword ptr [rdi + 0x1c]
	lea	ebp, [rdi + 0x17e]
	sub	ebp, r9d
	movsxd	rbp, ebp
	imul	rbx, rbp, -0x6db6db6d
	shr	rbx, 0x20
	add	ebx, ebp
	mov	edx, ebx
	shr	edx, 0x1f
	sar	ebx, 2
	add	ebx, edx
	lea	edx, [rbx*8]
	sub	edx, ebx
	sub	ebp, edx
	lea	r15d, [rdi + 3]
	sub	r15d, ebp
	js	.label_356
	mov	ebp, 0x16d
	test	al, 3
	jne	.label_366
	movsxd	rdx, eax
	imul	rdx, rdx, 0x51eb851f
	mov	rbp, rdx
	sar	rbp, 0x25
	mov	rbx, r11
	mov	r11, rdx
	shr	r11, 0x3f
	add	ebp, r11d
	imul	ebp, ebp, 0x64
	mov	dword ptr [rsp + 0x14], ebp
	sar	rdx, 0x27
	add	edx, r11d
	mov	r11, rbx
	imul	ebp, edx, 0x190
	xor	edx, edx
	cmp	eax, ebp
	sete	dl
	add	edx, 0x16d
	cmp	eax, dword ptr [rsp + 0x14]
	mov	ebp, 0x16e
	cmove	ebp, edx
.label_366:
	sub	edi, ebp
	lea	edx, [rdi + 0x17e]
	sub	edx, r9d
	movsxd	rdx, edx
	imul	rbp, rdx, -0x6db6db6d
	shr	rbp, 0x20
	add	ebp, edx
	mov	ebx, ebp
	shr	ebx, 0x1f
	sar	ebp, 2
	add	ebp, ebx
	lea	ebx, [rbp*8]
	sub	ebx, ebp
	sub	edx, ebx
	add	edi, 3
	sub	edi, edx
	cmovns	r15d, edi
	shr	edi, 0x1f
	xor	edi, 1
	jmp	.label_379
.label_329:
	mov	rbx, qword ptr [rsp + 8]
.label_334:
	movsx	edi, cl
	mov	rsi, rbx
	call	fputc
	mov	r11, r15
	mov	r8, qword ptr [rsp + 0x30]
	mov	r9d, dword ptr [rsp + 0x14]
.label_325:
	add	r11, r14
	xor	edi, edi
.label_300:
	test	edi, edi
	mov	eax, 4
	cmove	edi, eax
.label_424:
	or	edi, 4
	cmp	edi, 4
	mov	eax, 0
	je	.label_374
	jmp	.label_396
.label_714:
	test	bl, bl
	je	.label_341
	mov	al, 1
	mov	qword ptr [rsp + 0x48], rax
.label_341:
	cmp	r10d, 0x45
	jne	.label_398
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_258
.label_692:
	dec	r12
	jmp	.label_258
.label_693:
	test	r10d, r10d
	jne	.label_258
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 0x30], r8
	xor	eax, eax
	test	r13d, r13d
	cmovns	eax, r13d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	r15d, 1
	cmova	r15, rcx
	mov	rcx, r11
	not	rcx
	cmp	r15, rcx
	jae	.label_283
	cmp	qword ptr [rsp + 8], 0
	mov	r9d, dword ptr [rsp + 0x14]
	je	.label_345
	mov	qword ptr [rsp + 0x20], r11
	cmp	eax, 2
	mov	rbx, qword ptr [rsp + 8]
	jb	.label_408
	movsxd	rbp, r13d
	dec	rbp
	cmp	r14d, 0x30
	je	.label_410
	cmp	r14d, 0x2b
	jne	.label_412
.label_410:
	test	rbp, rbp
	mov	rbx, qword ptr [rsp + 8]
	je	.label_408
.label_417:
	mov	edi, 0x30
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_417
	jmp	.label_408
.label_694:
	mov	edx, 1
	jmp	.label_418
	.section	.text
	.align	16
	#Procedure 0x40478e
	.globl sub_40478e
	.type sub_40478e, @function
sub_40478e:

	nop	
.label_420:
	inc	rdx
.label_418:
	movzx	ebx, byte ptr [r12 + rdx]
	cmp	bl, 0x3a
	je	.label_420
	cmp	bl, 0x7a
	jne	.label_258
	add	r12, rdx
	mov	qword ptr [rsp + 0x18], rdx
.label_731:
	mov	rbx, qword ptr [rsp + 0x28]
	cmp	dword ptr [rbx + 0x20], 0
	js	.label_374
	mov	rdx, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 0x20], r11
	mov	eax, dword ptr [rbx + 0x28]
	mov	sil, 1
	test	eax, eax
	js	.label_427
	test	eax, eax
	je	.label_430
	xor	esi, esi
	jmp	.label_427
.label_695:
	test	r10d, r10d
	jne	.label_258
	test	bl, bl
	je	.label_434
	mov	al, 1
	mov	qword ptr [rsp + 0x48], rax
.label_434:
	xor	eax, eax
	mov	dl, 0x41
	jmp	.label_267
.label_696:
	cmp	r10d, 0x45
	je	.label_258
	test	bl, bl
	je	.label_262
	mov	al, 1
	mov	qword ptr [rsp + 0x48], rax
.label_262:
	xor	eax, eax
	mov	dl, 0x42
	jmp	.label_267
.label_697:
	cmp	r10d, 0x45
	jne	.label_313
	xor	eax, eax
	mov	dl, 0x43
	jmp	.label_267
.label_698:
	test	r10d, r10d
	jne	.label_258
	mov	ebp, OFFSET FLAT:label_281
	mov	r15d, 0xffffffff
	jmp	.label_282
.label_699:
	test	r10d, r10d
	jne	.label_258
	test	r14d, r14d
	jne	.label_290
	test	r13d, r13d
	jns	.label_290
	mov	ebp, OFFSET FLAT:label_292
	mov	r14d, 0x2b
	mov	r15d, 4
	jmp	.label_282
.label_701:
	cmp	r10d, 0x45
	je	.label_258
	mov	rbx, qword ptr [rsp + 0x28]
	mov	r8d, dword ptr [rbx + 8]
	mov	edi, 2
	jmp	.label_302
.label_702:
	mov	edi, 2
	cmp	r10d, 0x45
	je	.label_258
	mov	edx, dword ptr [rsp + 0x6c]
	mov	r8d, edx
	jmp	.label_302
.label_703:
	cmp	r10d, 0x45
	je	.label_258
	mov	rbx, qword ptr [rsp + 0x28]
	mov	r8d, dword ptr [rbx + 4]
	mov	edi, 2
	jmp	.label_302
.label_704:
	cmp	r10d, 0x45
	je	.label_258
	mov	edi, 9
	cmp	r13d, -1
	je	.label_323
	cmp	r13d, 8
	jg	.label_324
	mov	edx, 9
	sub	edx, r13d
	mov	esi, 8
	sub	esi, r13d
	and	edx, 3
	cmp	esi, 3
	mov	esi, dword ptr [rsp + 0x4e8]
	mov	r8d, esi
	jb	.label_326
	lea	esi, [r13 + rdx - 9]
	mov	edi, dword ptr [rsp + 0x4e8]
	mov	r8d, edi
	nop	word ptr cs:[rax + rax]
.label_406:
	movsxd	rdi, r8d
	imul	r8, rdi, 0x68db8bad
	mov	rdi, r8
	shr	rdi, 0x3f
	sar	r8, 0x2c
	add	r8d, edi
	add	esi, 4
	jne	.label_406
.label_326:
	test	edx, edx
	je	.label_352
	neg	edx
	nop	word ptr [rax + rax]
.label_346:
	movsxd	rsi, r8d
	imul	r8, rsi, 0x66666667
	mov	rsi, r8
	shr	rsi, 0x3f
	sar	r8, 0x22
	add	r8d, esi
	inc	edx
	jne	.label_346
	jmp	.label_352
.label_705:
	mov	dil, 1
.label_723:
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	test	bl, bl
	je	.label_355
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
.label_355:
	je	.label_359
	mov	dil, 1
.label_359:
	mov	dl, 0x70
	mov	al, dil
	jmp	.label_315
.label_706:
	cmp	r10d, 0x45
	je	.label_258
	mov	rbx, qword ptr [rsp + 0x28]
	mov	r8d, dword ptr [rbx]
	mov	edi, 2
	jmp	.label_302
.label_707:
	mov	ebp, OFFSET FLAT:label_363
.label_282:
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 0x30], r8
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0x48]
	test	al, al
	setne	cl
	xor	ebx, ebx
	xor	edi, edi
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp + 0x28]
	mov	r8d, r14d
	mov	r9d, r15d
	mov	eax, dword ptr [rsp + 0x4e8]
	push	rax
	push	qword ptr [rsp + 0x4e8]
	mov	qword ptr [rsp + 0x30], r11
	call	__strftime_internal
	mov	r11, qword ptr [rsp + 0x30]
	add	rsp, 0x10
	test	r13d, r13d
	cmovns	ebx, r13d
	movsxd	rcx, ebx
	cmp	rax, rcx
	mov	rsi, rax
	cmovb	rsi, rcx
	mov	rdx, r11
	not	rdx
	cmp	rsi, rdx
	jae	.label_283
	cmp	qword ptr [rsp + 8], 0
	mov	r9d, dword ptr [rsp + 0x14]
	je	.label_378
	mov	qword ptr [rsp + 0x40], rsi
	mov	dword ptr [rsp + 0x18], r15d
	cmp	rax, rcx
	mov	r15, qword ptr [rsp + 8]
	jae	.label_372
	movsxd	rbx, r13d
	sub	rbx, rax
	cmp	r14d, 0x30
	je	.label_384
	cmp	r14d, 0x2b
	jne	.label_386
.label_384:
	test	rbx, rbx
	mov	r15, qword ptr [rsp + 8]
	je	.label_372
	nop	word ptr cs:[rax + rax]
.label_390:
	mov	edi, 0x30
	mov	rsi, r15
	call	fputc
	dec	rbx
	jne	.label_390
	jmp	.label_372
.label_708:
	cmp	r10d, 0x45
	je	.label_258
	mov	rbx, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rbx + 0x1c]
	add	edx, 7
	sub	edx, dword ptr [rbx + 0x18]
	movsxd	r8, edx
	jmp	.label_392
.label_709:
	cmp	r10d, 0x45
	je	.label_258
	mov	rbx, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rbx + 0x18]
	mov	esi, dword ptr [rbx + 0x1c]
	lea	edi, [rdx + 6]
	movsxd	rdi, edi
	imul	rbp, rdi, -0x6db6db6d
	shr	rbp, 0x20
	lea	edx, [rbp + rdx + 6]
	mov	ebp, edx
	shr	ebp, 0x1f
	sar	edx, 2
	add	edx, ebp
	lea	ebp, [rdx*8]
	sub	ebp, edx
	sub	edi, ebp
	add	esi, 7
	sub	esi, edi
	movsxd	r8, esi
.label_392:
	imul	rdx, r8, -0x6db6db6d
	shr	rdx, 0x20
	add	r8d, edx
	mov	edx, r8d
	shr	edx, 0x1f
	sar	r8d, 2
	add	r8d, edx
	mov	edi, 2
	jmp	.label_302
.label_710:
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	cmp	r10d, 0x4f
	je	.label_258
	mov	dl, 0x58
	jmp	.label_269
.label_711:
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	cmp	r10d, 0x45
	je	.label_409
	cmp	r10d, 0x4f
	je	.label_258
	mov	rbx, qword ptr [rsp + 0x28]
	mov	r8d, dword ptr [rbx + 0x14]
	cmp	r8d, 0xfffff894
	setl	sil
	add	r8d, 0x76c
	jmp	.label_415
.label_712:
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 0x30], r8
	mov	rdi, qword ptr [rsp + 0x60]
	mov	qword ptr [rsp + 0x20], r11
	call	strlen
	mov	r15, rax
	xor	eax, eax
	test	r13d, r13d
	cmovns	eax, r13d
	cdqe	
	cmp	r15, rax
	mov	rdx, r15
	cmovb	rdx, rax
	mov	rcx, qword ptr [rsp + 0x20]
	not	rcx
	cmp	rdx, rcx
	jae	.label_283
	mov	qword ptr [rsp + 0x18], rdx
	cmp	qword ptr [rsp + 8], 0
	je	.label_297
	cmp	r15, rax
	jae	.label_271
	movsxd	rbp, r13d
	sub	rbp, r15
	cmp	r14d, 0x30
	je	.label_432
	cmp	r14d, 0x2b
	jne	.label_433
.label_432:
	test	rbp, rbp
	mov	r14, qword ptr [rsp + 8]
	je	.label_271
	nop	word ptr cs:[rax + rax]
.label_268:
	mov	edi, 0x30
	mov	rsi, r14
	call	fputc
	dec	rbp
	jne	.label_268
	jmp	.label_271
.label_713:
	test	r10d, r10d
	jne	.label_258
	test	bl, bl
	je	.label_276
	mov	al, 1
	mov	qword ptr [rsp + 0x48], rax
.label_276:
	xor	eax, eax
	mov	dl, 0x61
	jmp	.label_267
.label_715:
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	cmp	r10d, 0x4f
	je	.label_258
	mov	dl, 0x63
	jmp	.label_269
.label_716:
	cmp	r10d, 0x45
	je	.label_258
	mov	rbx, qword ptr [rsp + 0x28]
	mov	r8d, dword ptr [rbx + 0xc]
	mov	edi, 2
	jmp	.label_302
.label_717:
	cmp	r10d, 0x45
	je	.label_258
	mov	rbx, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rbx + 0xc]
	jmp	.label_301
.label_718:
	cmp	r10d, 0x45
	je	.label_258
	mov	rbx, qword ptr [rsp + 0x28]
	mov	r8d, dword ptr [rbx + 0x1c]
	cmp	r8d, -1
	setl	sil
	inc	r8d
	mov	eax, 3
	jmp	.label_305
.label_719:
	cmp	r10d, 0x45
	je	.label_258
	mov	rbx, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rbx + 8]
	jmp	.label_301
.label_720:
	cmp	r10d, 0x45
	mov	edx, dword ptr [rsp + 0x6c]
	je	.label_258
.label_301:
	test	r14d, r14d
	mov	esi, 0x5f
	cmove	r14d, esi
	mov	edi, 2
	mov	r8d, edx
	jmp	.label_302
.label_721:
	cmp	r10d, 0x45
	je	.label_258
	mov	rbx, qword ptr [rsp + 0x28]
	mov	r8d, dword ptr [rbx + 0x10]
	cmp	r8d, -1
	setl	sil
	inc	r8d
	mov	eax, 2
.label_305:
	mov	qword ptr [rsp + 0x18], rax
	xor	r9d, r9d
	xor	edx, edx
	jmp	.label_332
.label_722:
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 0x30], r8
	xor	eax, eax
	test	r13d, r13d
	cmovns	eax, r13d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	r15d, 1
	cmova	r15, rcx
	mov	rcx, r11
	not	rcx
	cmp	r15, rcx
	jae	.label_283
	cmp	qword ptr [rsp + 8], 0
	mov	r9d, dword ptr [rsp + 0x14]
	je	.label_345
	mov	qword ptr [rsp + 0x20], r11
	cmp	eax, 2
	mov	rbx, qword ptr [rsp + 8]
	jb	.label_347
	movsxd	rbp, r13d
	dec	rbp
	cmp	r14d, 0x30
	je	.label_314
	cmp	r14d, 0x2b
	jne	.label_365
.label_314:
	test	rbp, rbp
	mov	rbx, qword ptr [rsp + 8]
	je	.label_347
	nop	dword ptr [rax]
.label_360:
	mov	edi, 0x30
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_360
	jmp	.label_347
.label_724:
	mov	rbx, qword ptr [rsp + 0x28]
	imul	r8d, dword ptr [rbx + 0x10], 0xb
	sar	r8d, 5
	inc	r8d
	mov	eax, 1
	mov	qword ptr [rsp + 0x18], rax
	xor	r9d, r9d
	xor	edx, edx
	xor	esi, esi
	jmp	.label_332
.label_725:
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 0x30], r8
	mov	rbx, r11
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0xd0], rax
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 0x10]
	movups	xmm2, xmmword ptr [rcx + 0x20]
	movaps	xmmword ptr [rsp + 0xc0], xmm2
	movaps	xmmword ptr [rsp + 0xb0], xmm1
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	lea	rsi, [rsp + 0xa0]
	mov	rdi, qword ptr [rsp + 0x4e0]
	call	mktime_z
	mov	rcx, rax
	mov	rsi, rcx
	shr	rsi, 0x3f
	lea	r15, [rsp + 0x97]
	je	.label_377
	nop	dword ptr [rax + rax]
.label_364:
	movabs	rdx, 0x6666666666666667
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	mov	ebp, ecx
	sub	ebp, edi
	add	rdx, rax
	mov	al, 0x30
	sub	al, bpl
	mov	byte ptr [r15 - 1], al
	dec	r15
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_364
	jmp	.label_388
	.section	.text
	.align	16
	#Procedure 0x404e95
	.globl sub_404e95
	.type sub_404e95, @function
sub_404e95:

	nop	word ptr cs:[rax + rax]
.label_377:
	movabs	rdx, 0x6666666666666667
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	mov	ebp, ecx
	sub	ebp, edi
	add	rdx, rax
	add	bpl, 0x30
	mov	byte ptr [r15 - 1], bpl
	dec	r15
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_377
.label_388:
	mov	edi, 1
	xor	edx, edx
	mov	r11, rbx
	mov	rbp, qword ptr [rsp + 0x30]
	mov	ebx, dword ptr [rsp + 0x14]
	jmp	.label_400
.label_726:
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 0x30], r8
	xor	eax, eax
	test	r13d, r13d
	cmovns	eax, r13d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	r15d, 1
	cmova	r15, rcx
	mov	rcx, r11
	not	rcx
	cmp	r15, rcx
	jae	.label_283
	cmp	qword ptr [rsp + 8], 0
	mov	r9d, dword ptr [rsp + 0x14]
	je	.label_345
	mov	qword ptr [rsp + 0x20], r11
	cmp	eax, 2
	mov	rbx, qword ptr [rsp + 8]
	jb	.label_401
	movsxd	rbp, r13d
	dec	rbp
	cmp	r14d, 0x30
	je	.label_411
	cmp	r14d, 0x2b
	jne	.label_413
.label_411:
	test	rbp, rbp
	mov	rbx, qword ptr [rsp + 8]
	je	.label_401
	nop	word ptr cs:[rax + rax]
.label_419:
	mov	edi, 0x30
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_419
	jmp	.label_401
.label_727:
	mov	rbx, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rbx + 0x18]
	lea	esi, [rdx + 6]
	movsxd	r8, esi
	imul	rsi, r8, -0x6db6db6d
	shr	rsi, 0x20
	lea	edx, [rsi + rdx + 6]
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 2
	add	edx, esi
	lea	esi, [rdx*8]
	sub	esi, edx
	sub	r8d, esi
	inc	r8d
	mov	edi, 1
	jmp	.label_302
.label_728:
	cmp	r10d, 0x45
	je	.label_258
	mov	rbx, qword ptr [rsp + 0x28]
	mov	r8d, dword ptr [rbx + 0x18]
	mov	edi, 1
	jmp	.label_302
.label_729:
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	cmp	r10d, 0x4f
	je	.label_258
	mov	dl, 0x78
	jmp	.label_269
.label_730:
	cmp	r10d, 0x45
	jne	.label_263
	xor	eax, eax
	mov	dl, 0x79
	jmp	.label_267
.label_398:
	xor	eax, eax
	mov	edx, ecx
.label_267:
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x18], rcx
	jmp	.label_315
.label_356:
	mov	qword ptr [rsp + 0x20], r11
	dec	eax
	mov	r11d, 0x16d
	test	al, 3
	jne	.label_273
	movsxd	rdx, eax
	imul	rdx, rdx, 0x51eb851f
	mov	rbp, rdx
	sar	rbp, 0x25
	mov	rbx, rdx
	shr	rbx, 0x3f
	add	ebp, ebx
	imul	r11d, ebp, 0x64
	sar	rdx, 0x27
	add	edx, ebx
	imul	edx, edx, 0x190
	xor	ebp, ebp
	cmp	eax, edx
	sete	bpl
	add	ebp, 0x16d
	cmp	eax, r11d
	mov	r11d, 0x16e
	cmove	r11d, ebp
.label_273:
	lea	edx, [r11 + rdi + 0x17e]
	sub	edx, r9d
	movsxd	rdx, edx
	imul	rbp, rdx, -0x6db6db6d
	shr	rbp, 0x20
	add	ebp, edx
	mov	ebx, ebp
	shr	ebx, 0x1f
	sar	ebp, 2
	add	ebp, ebx
	lea	ebx, [rbp*8]
	sub	ebx, ebp
	sub	edx, ebx
	lea	r15d, [r11 + rdi + 3]
	sub	r15d, edx
	mov	edi, 0xffffffff
	mov	r11, qword ptr [rsp + 0x20]
.label_379:
	cmp	esi, 0x47
	je	.label_316
	cmp	esi, 0x67
	jne	.label_318
	movsxd	rdx, r8d
	imul	rdx, rdx, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	edx, edx, 0x64
	mov	esi, r8d
	sub	esi, edx
	add	esi, edi
	mov	rax, r8
	movsxd	r8, esi
	imul	rdx, r8, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	edx, edx, 0x64
	sub	r8d, edx
	jns	.label_321
	mov	edx, 0xfffff894
	sub	edx, edi
	mov	esi, r8d
	neg	esi
	add	r8d, 0x64
	cmp	eax, edx
	cmovl	r8d, esi
.label_321:
	xor	esi, esi
	jmp	.label_340
.label_313:
	mov	rax, qword ptr [rsp + 0x28]
	movsxd	rdx, dword ptr [rax + 0x14]
	cmp	rdx, -0x76c
	setl	sil
	setg	bl
	imul	r8, rdx, 0x51eb851f
	mov	rdi, r8
	shr	rdi, 0x3f
	sar	r8, 0x25
	add	r8d, edi
	imul	edi, r8d, 0x64
	cmp	edx, edi
	sets	dl
	and	dl, bl
	movzx	edx, dl
	sub	r8d, edx
	add	r8d, 0x13
.label_340:
	mov	eax, 2
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_350
.label_263:
	mov	rbx, qword ptr [rsp + 0x28]
	movsxd	rdx, dword ptr [rbx + 0x14]
	imul	rsi, rdx, 0x51eb851f
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x25
	add	esi, edi
	imul	esi, esi, 0x64
	mov	r8d, edx
	mov	eax, 2
	sub	r8d, esi
	js	.label_354
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_362
.label_316:
	mov	edx, 0xfffff894
	sub	edx, edi
	cmp	r8d, edx
	setl	sil
	lea	r8d, [rdi + r8 + 0x76c]
.label_415:
	mov	eax, 4
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_350
.label_318:
	movsxd	rdx, r15d
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	add	edx, esi
	mov	esi, edx
	sar	esi, 2
	shr	edx, 0x1f
	lea	r8d, [rsi + rdx + 1]
	mov	edi, 2
	jmp	.label_302
.label_409:
	mov	dl, 0x59
.label_269:
	xor	eax, eax
	jmp	.label_315
.label_386:
	test	rbx, rbx
	mov	r15, qword ptr [rsp + 8]
	je	.label_372
	nop	dword ptr [rax]
.label_331:
	mov	edi, 0x20
	mov	rsi, r15
	call	fputc
	dec	rbx
	jne	.label_331
.label_372:
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0x48]
	test	al, al
	setne	cl
	mov	rdi, r15
	mov	rsi, rbp
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rdx, rbx
	mov	r8d, r14d
	mov	r9d, dword ptr [rsp + 0x18]
	mov	eax, dword ptr [rsp + 0x4e8]
	push	rax
	push	qword ptr [rsp + 0x4e8]
	call	__strftime_internal
	add	rsp, 0x10
	mov	r11, qword ptr [rsp + 0x20]
	mov	r9d, dword ptr [rsp + 0x14]
	mov	rsi, qword ptr [rsp + 0x40]
.label_378:
	add	r11, rsi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	.label_374
.label_430:
	mov	rsi, qword ptr [rsp + 0x60]
	cmp	byte ptr [rsi], 0x2d
	sete	sil
.label_427:
	mov	r11, rdx
	cmp	r11, 3
	ja	.label_389
	movsxd	rdi, eax
	imul	rbp, rdi, -0x77777777
	shr	rbp, 0x20
	add	ebp, eax
	mov	ebx, ebp
	shr	ebx, 0x1f
	sar	ebp, 5
	add	ebp, ebx
	imul	r8, rdi, -0x6e5d4c3b
	shr	r8, 0x20
	add	r8d, eax
	mov	edi, r8d
	shr	edi, 0x1f
	sar	r8d, 0xb
	add	r8d, edi
	movsxd	rdi, ebp
	imul	rbp, rdi, -0x77777777
	shr	rbp, 0x20
	add	ebp, edi
	mov	ebx, ebp
	shr	ebx, 0x1f
	sar	ebp, 5
	add	ebp, ebx
	imul	ebp, ebp, 0x3c
	imul	ebx, edi, 0x3c
	sub	edi, ebp
	sub	eax, ebx
	jmp	qword ptr [(r11 * 8) + label_391]
.label_613:
	imul	r8d, r8d, 0x64
	add	r8d, edi
	mov	eax, 5
.label_431:
	mov	qword ptr [rsp + 0x18], rax
	xor	r9d, r9d
	jmp	.label_405
.label_290:
	xor	eax, eax
	mov	r15d, r13d
	add	r15d, -6
	cmovs	r15d, eax
	mov	ebp, OFFSET FLAT:label_292
	jmp	.label_282
.label_323:
	mov	edx, dword ptr [rsp + 0x4e8]
	mov	r8d, edx
	mov	r13d, 9
	jmp	.label_302
.label_354:
	mov	qword ptr [rsp + 0x18], rax
	mov	esi, r8d
	neg	esi
	add	r8d, 0x64
	cmp	edx, 0xfffff894
	cmovl	r8d, esi
.label_362:
	xor	esi, esi
.label_350:
	test	r14d, r14d
	cmove	r14d, dword ptr [rsp + 0x70]
	xor	r9d, r9d
	cmp	r14d, 0x2b
	mov	edx, 0
	jne	.label_332
	mov	rbp, qword ptr [rsp + 0x18]
	cmp	ebp, 2
	mov	edx, 0x63
	mov	edi, 0x270f
	cmove	edi, edx
	cmp	edi, r8d
	setb	bl
	cmp	ebp, r13d
	setl	dl
	or	dl, bl
	jmp	.label_332
.label_389:
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	mov	edi, 0x18
	jmp	.label_421
.label_616:
	test	eax, eax
	je	.label_426
.label_615:
	imul	r8d, r8d, 0x2710
	imul	edi, edi, 0x64
	add	r8d, eax
	add	r8d, edi
	mov	eax, 9
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 0x14
	jmp	.label_405
.label_324:
	mov	edx, dword ptr [rsp + 0x4e8]
	mov	r8d, edx
.label_352:
	mov	edi, r13d
.label_302:
	mov	esi, r8d
	shr	esi, 0x1f
	xor	r9d, r9d
	xor	edx, edx
	mov	eax, edi
	mov	qword ptr [rsp + 0x18], rax
.label_332:
	cmp	r10d, 0x4f
	jne	.label_260
	test	sil, sil
	jne	.label_260
	xor	eax, eax
	mov	edx, ecx
.label_315:
	mov	dword ptr [rsp + 0x40], eax
	mov	qword ptr [rsp + 0x30], r8
	mov	rbp, qword ptr [rsp + 0x18]
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 0x20], r11
	mov	word ptr [rsp + 0x5b], 0x2520
	test	r10d, r10d
	lea	rcx, [rsp + 0x5d]
	je	.label_266
	mov	byte ptr [rsp + 0x5d], r10b
	lea	rcx, [rsp + 0x5e]
.label_266:
	mov	byte ptr [rcx], dl
	mov	byte ptr [rcx + 1], 0
	lea	rdi, [rsp + 0xa0]
	lea	rdx, [rsp + 0x5b]
	mov	esi, 0x400
	mov	rcx, qword ptr [rsp + 0x28]
	call	strftime
	test	rax, rax
	je	.label_294
	lea	rsi, [rax - 1]
	xor	ecx, ecx
	test	r13d, r13d
	cmovns	ecx, r13d
	movsxd	rdx, ecx
	cmp	rsi, rdx
	mov	r15, rsi
	cmovb	r15, rdx
	mov	rcx, qword ptr [rsp + 0x20]
	not	rcx
	cmp	r15, rcx
	jae	.label_283
	cmp	qword ptr [rsp + 8], 0
	je	.label_307
	mov	qword ptr [rsp + 0x50], rax
	mov	qword ptr [rsp + 0x38], rsi
	cmp	rsi, rdx
	setae	al
	test	ebp, ebp
	jne	.label_309
	test	al, al
	jne	.label_309
	movsxd	rbx, r13d
	sub	rbx, qword ptr [rsp + 0x38]
	cmp	r14d, 0x30
	je	.label_317
	cmp	r14d, 0x2b
	jne	.label_322
.label_317:
	test	rbx, rbx
	mov	rbp, qword ptr [rsp + 8]
	je	.label_309
.label_328:
	mov	edi, 0x30
	mov	rsi, rbp
	call	fputc
	dec	rbx
	jne	.label_328
	jmp	.label_309
.label_260:
	mov	eax, r8d
	neg	eax
	test	sil, sil
	cmove	eax, r8d
	lea	r15, [rsp + 0x97]
	nop	dword ptr [rax + rax]
.label_339:
	test	r9b, 1
	je	.label_336
	mov	byte ptr [r15 - 1], 0x3a
	dec	r15
.label_336:
	sar	r9d, 1
	mov	ecx, eax
	mov	ebp, 0xcccccccd
	imul	rbp, rcx
	shr	rbp, 0x23
	lea	ecx, [rbp + rbp]
	lea	ecx, [rcx + rcx*4]
	mov	edi, eax
	sub	edi, ecx
	or	edi, 0x30
	mov	byte ptr [r15 - 1], dil
	dec	r15
	cmp	eax, 9
	mov	eax, ebp
	ja	.label_339
	test	r9d, r9d
	mov	eax, ebp
	jne	.label_339
	xor	ebx, ebx
	mov	rdi, qword ptr [rsp + 0x18]
.label_400:
	cmp	edi, r13d
	cmovl	edi, r13d
	test	dl, dl
	je	.label_298
	mov	dl, 0x2b
.label_298:
	test	sil, sil
	mov	sil, 0x2d
	jne	.label_351
	mov	esi, edx
.label_351:
	cmp	r14d, 0x2d
	mov	qword ptr [rsp + 0x30], rbp
	mov	dword ptr [rsp + 0x14], ebx
	jne	.label_353
	test	sil, sil
	je	.label_358
	xor	eax, eax
	test	r13d, r13d
	cmovns	eax, r13d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	edx, 1
	cmova	rdx, rcx
	mov	rcx, r11
	not	rcx
	cmp	rdx, rcx
	jae	.label_283
	cmp	qword ptr [rsp + 8], 0
	je	.label_380
	mov	qword ptr [rsp + 0x38], rdx
	mov	byte ptr [rsp + 0x40], sil
	mov	qword ptr [rsp + 0x20], r11
	cmp	eax, 2
	setb	al
	mov	qword ptr [rsp + 0x18], rdi
	test	edi, edi
	mov	rbx, qword ptr [rsp + 8]
	jne	.label_368
	test	al, al
	jne	.label_368
	movsxd	rbp, r13d
	jmp	.label_369
	.section	.text
	.align	16
	#Procedure 0x4055fc
	.globl sub_4055fc
	.type sub_4055fc, @function
sub_4055fc:

	nop	dword ptr [rax]
.label_371:
	mov	edi, 0x20
	mov	rsi, rbx
	call	fputc
.label_369:
	dec	rbp
	jne	.label_371
.label_368:
	movzx	edi, byte ptr [rsp + 0x40]
	mov	rsi, rbx
	jmp	.label_319
.label_294:
	mov	r11, qword ptr [rsp + 0x20]
	mov	r9d, dword ptr [rsp + 0x14]
	mov	r8, qword ptr [rsp + 0x30]
	jmp	.label_374
.label_353:
	movsxd	rax, edi
	mov	rcx, r15
	lea	rdx, [rsp + 0x97]
	sub	rcx, rdx
	mov	edx, esi
	neg	dl
	sbb	rdx, rdx
	add	rdx, rcx
	add	rdx, rax
	test	edx, edx
	jle	.label_376
	cmp	r14d, 0x5f
	jne	.label_373
	movsxd	rcx, edx
	mov	rax, r11
	not	rax
	cmp	rcx, rax
	jae	.label_283
	mov	qword ptr [rsp + 0x50], r13
	mov	qword ptr [rsp + 0x38], rdx
	mov	byte ptr [rsp + 0x40], sil
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [rsp + 0x20], r11
	mov	rbx, qword ptr [rsp + 8]
	test	rbx, rbx
	je	.label_296
	test	rcx, rcx
	je	.label_296
	xor	ebp, ebp
	nop	
.label_270:
	mov	edi, 0x20
	mov	rsi, rbx
	mov	r13, rcx
	call	fputc
	mov	rcx, r13
	inc	rbp
	cmp	rbp, rcx
	jb	.label_270
.label_296:
	mov	r11, qword ptr [rsp + 0x20]
	add	r11, rcx
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r13, qword ptr [rsp + 0x50]
	sub	r13d, ecx
	cmovle	r13d, eax
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_395
	test	r13d, r13d
	cmovns	eax, r13d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	edx, 1
	cmova	rdx, rcx
	mov	rcx, r11
	not	rcx
	cmp	rdx, rcx
	mov	rdi, qword ptr [rsp + 0x18]
	jae	.label_283
	cmp	qword ptr [rsp + 8], 0
	je	.label_380
	mov	qword ptr [rsp + 0x50], rdx
	mov	qword ptr [rsp + 0x20], r11
	cmp	eax, 2
	setb	al
	test	edi, edi
	mov	rbp, qword ptr [rsp + 8]
	jne	.label_278
	test	al, al
	jne	.label_278
	movsxd	rax, r13d
	dec	rax
	je	.label_278
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x38], rax
	nop	word ptr cs:[rax + rax]
.label_414:
	mov	edi, 0x20
	mov	rsi, rbp
	call	fputc
	mov	rax, qword ptr [rsp + 0x38]
	inc	rbx
	cmp	rbx, rax
	jb	.label_414
.label_278:
	movzx	edi, byte ptr [rsp + 0x40]
	mov	rsi, rbp
	call	fputc
	mov	r11, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x50]
	jmp	.label_380
.label_376:
	test	sil, sil
	je	.label_358
	xor	eax, eax
	test	r13d, r13d
	cmovns	eax, r13d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	edx, 1
	cmova	rdx, rcx
	mov	rcx, r11
	not	rcx
	cmp	rdx, rcx
	jae	.label_283
	cmp	qword ptr [rsp + 8], 0
	je	.label_380
	mov	qword ptr [rsp + 0x38], rdx
	mov	byte ptr [rsp + 0x40], sil
	mov	qword ptr [rsp + 0x20], r11
	cmp	eax, 2
	setb	al
	mov	qword ptr [rsp + 0x18], rdi
	test	edi, edi
	mov	rbp, qword ptr [rsp + 8]
	jne	.label_275
	test	al, al
	jne	.label_275
	movsxd	rbx, r13d
	dec	rbx
	cmp	r14d, 0x30
	je	.label_436
	cmp	r14d, 0x2b
	jne	.label_259
.label_436:
	test	rbx, rbx
	mov	rbp, qword ptr [rsp + 8]
	je	.label_275
	nop	word ptr [rax + rax]
.label_264:
	mov	edi, 0x30
	mov	rsi, rbp
	call	fputc
	dec	rbx
	jne	.label_264
	jmp	.label_275
.label_373:
	mov	rcx, r11
	not	rcx
	cmp	rax, rcx
	jae	.label_283
	test	sil, sil
	je	.label_287
	xor	eax, eax
	test	r13d, r13d
	cmovns	eax, r13d
	movsxd	rbp, eax
	cmp	ebp, 1
	mov	ebx, 1
	cmova	rbx, rbp
	cmp	rbx, rcx
	jae	.label_283
	cmp	qword ptr [rsp + 8], 0
	je	.label_422
	mov	qword ptr [rsp + 0x50], rbx
	mov	qword ptr [rsp + 0x38], rdx
	mov	byte ptr [rsp + 0x40], sil
	mov	qword ptr [rsp + 0x20], r11
	cmp	eax, 2
	setb	al
	mov	qword ptr [rsp + 0x18], rdi
	test	edi, edi
	mov	rbp, qword ptr [rsp + 8]
	jne	.label_299
	test	al, al
	jne	.label_299
	movsxd	rbx, r13d
	dec	rbx
	cmp	r14d, 0x30
	je	.label_311
	cmp	r14d, 0x2b
	jne	.label_293
.label_311:
	test	rbx, rbx
	mov	rbp, qword ptr [rsp + 8]
	je	.label_299
	nop	word ptr cs:[rax + rax]
.label_327:
	mov	edi, 0x30
	mov	rsi, rbp
	call	fputc
	dec	rbx
	jne	.label_327
	jmp	.label_299
.label_322:
	test	rbx, rbx
	mov	rbp, qword ptr [rsp + 8]
	je	.label_309
	nop	word ptr cs:[rax + rax]
.label_335:
	mov	edi, 0x20
	mov	rsi, rbp
	call	fputc
	dec	rbx
	jne	.label_335
.label_309:
	mov	eax, dword ptr [rsp + 0x40]
	test	al, 1
	jne	.label_337
	mov	rax, qword ptr [rsp + 0x48]
	test	al, 1
	jne	.label_338
	mov	edx, 1
	lea	rdi, [rsp + 0xa1]
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 8]
	call	fwrite
	jmp	.label_307
.label_337:
	cmp	qword ptr [rsp + 0x38], 0
	mov	r13, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x50]
	je	.label_307
	mov	ebx, 1
	sub	rbx, rax
	lea	rbp, [rsp + 0xa1]
	nop	word ptr [rax + rax]
.label_397:
	movzx	r14d, byte ptr [rbp]
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	edi, dword ptr [rax + r14*4]
	mov	rsi, r13
	call	fputc
	inc	rbp
	inc	rbx
	jne	.label_397
	jmp	.label_307
.label_338:
	cmp	qword ptr [rsp + 0x38], 0
	mov	r13, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x50]
	je	.label_307
	mov	ebx, 1
	sub	rbx, rax
	lea	rbp, [rsp + 0xa1]
	nop	word ptr cs:[rax + rax]
.label_367:
	movzx	r14d, byte ptr [rbp]
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	edi, dword ptr [rax + r14*4]
	mov	rsi, r13
	call	fputc
	inc	rbp
	inc	rbx
	jne	.label_367
.label_307:
	mov	r11, qword ptr [rsp + 0x20]
	add	r11, r15
	jmp	.label_333
.label_395:
	mov	rdi, qword ptr [rsp + 0x18]
	jmp	.label_358
.label_433:
	test	rbp, rbp
	mov	r14, qword ptr [rsp + 8]
	je	.label_271
	nop	word ptr cs:[rax + rax]
.label_428:
	mov	edi, 0x20
	mov	rsi, r14
	call	fputc
	dec	rbp
	jne	.label_428
.label_271:
	test	bl, bl
	je	.label_375
	test	r15, r15
	mov	r14, qword ptr [rsp + 8]
	je	.label_297
	mov	rbp, qword ptr [rsp + 0x60]
	nop	dword ptr [rax]
.label_385:
	movzx	ebx, byte ptr [rbp]
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	edi, dword ptr [rax + rbx*4]
	mov	rsi, r14
	call	fputc
	inc	rbp
	dec	r15
	jne	.label_385
	jmp	.label_297
.label_375:
	mov	rax, qword ptr [rsp + 0x48]
	test	al, al
	je	.label_387
	test	r15, r15
	mov	r14, qword ptr [rsp + 8]
	je	.label_297
	mov	rbp, qword ptr [rsp + 0x60]
	nop	word ptr cs:[rax + rax]
.label_393:
	movzx	ebx, byte ptr [rbp]
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	edi, dword ptr [rax + rbx*4]
	mov	rsi, r14
	call	fputc
	inc	rbp
	dec	r15
	jne	.label_393
	jmp	.label_297
.label_365:
	test	rbp, rbp
	mov	rbx, qword ptr [rsp + 8]
	je	.label_347
	nop	
.label_399:
	mov	edi, 0x20
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_399
.label_347:
	mov	edi, 0xa
	jmp	.label_344
.label_413:
	test	rbp, rbp
	mov	rbx, qword ptr [rsp + 8]
	je	.label_401
	nop	word ptr cs:[rax + rax]
.label_404:
	mov	edi, 0x20
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_404
.label_401:
	mov	edi, 9
	jmp	.label_344
.label_259:
	test	rbx, rbx
	mov	rbp, qword ptr [rsp + 8]
	je	.label_275
.label_383:
	mov	edi, 0x20
	mov	rsi, rbp
	call	fputc
	dec	rbx
	jne	.label_383
.label_275:
	movzx	edi, byte ptr [rsp + 0x40]
	mov	rsi, rbp
.label_319:
	call	fputc
	mov	r11, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x38]
.label_380:
	add	r11, rdx
	jmp	.label_358
.label_387:
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 0x60]
	mov	rsi, r15
	jmp	.label_423
.label_426:
	test	edi, edi
	je	.label_416
.label_614:
	imul	r8d, r8d, 0x64
	add	r8d, edi
	mov	eax, 6
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 4
.label_405:
	mov	edi, 0x4b
.label_421:
	mov	r11, qword ptr [rsp + 0x20]
	mov	ebx, edi
	and	bl, 0x7f
	cmp	bl, 0x18
	je	.label_258
	mov	dl, 1
	cmp	bl, 0x4b
	je	.label_332
	jmp	.label_424
.label_258:
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 0x30], r8
	xor	ebp, ebp
	xor	ebx, ebx
	movabs	rax, 0x100000000
	nop	dword ptr [rax]
.label_429:
	mov	r15, rbp
	add	rbx, rax
	lea	rbp, [r15 - 1]
	cmp	byte ptr [r12 + r15], 0x25
	jne	.label_429
	mov	rax, rbp
	neg	rax
	test	r13d, r13d
	mov	ecx, r13d
	mov	edx, 0
	cmovs	ecx, edx
	cmp	eax, ecx
	mov	edx, ecx
	cmova	edx, eax
	movsxd	rsi, edx
	mov	rdx, r11
	not	rdx
	cmp	rsi, rdx
	mov	rdx, qword ptr [rsp + 0x18]
	jae	.label_283
	mov	qword ptr [rsp + 0x40], rsi
	mov	qword ptr [rsp + 0x20], r11
	cmp	qword ptr [rsp + 8], 0
	je	.label_265
	sar	rbx, 0x20
	test	edx, edx
	jne	.label_277
	cmp	eax, ecx
	jae	.label_277
	movsxd	r13, r13d
	mov	rax, r13
	sub	rax, rbx
	cmp	r14d, 0x30
	je	.label_280
	cmp	r14d, 0x2b
	jne	.label_361
.label_280:
	test	rax, rax
	mov	r14, qword ptr [rsp + 8]
	je	.label_277
	mov	eax, 1
	sub	eax, r15d
	cdqe	
	sub	r13, rax
	nop	word ptr cs:[rax + rax]
.label_403:
	mov	edi, 0x30
	mov	rsi, r14
	call	fputc
	dec	r13
	jne	.label_403
	jmp	.label_277
.label_361:
	test	rax, rax
	mov	r14, qword ptr [rsp + 8]
	je	.label_277
	mov	eax, 1
	sub	eax, r15d
	cdqe	
	sub	r13, rax
	nop	dword ptr [rax + rax]
.label_310:
	mov	edi, 0x20
	mov	rsi, r14
	call	fputc
	dec	r13
	jne	.label_310
.label_277:
	lea	rbp, [r12 + rbp + 1]
	mov	rax, qword ptr [rsp + 0x48]
	test	al, 1
	jne	.label_274
	mov	edx, 1
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rcx, qword ptr [rsp + 8]
	call	fwrite
	jmp	.label_265
.label_274:
	mov	eax, 1
	sub	eax, r15d
	movsxd	rbx, eax
	neg	rbx
	mov	r15, qword ptr [rsp + 8]
	nop	word ptr [rax + rax]
.label_330:
	movzx	r14d, byte ptr [rbp]
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	edi, dword ptr [rax + r14*4]
	mov	rsi, r15
	call	fputc
	inc	rbp
	inc	rbx
	jne	.label_330
.label_265:
	mov	r11, qword ptr [rsp + 0x20]
	add	r11, qword ptr [rsp + 0x40]
	jmp	.label_333
.label_293:
	test	rbx, rbx
	mov	rbp, qword ptr [rsp + 8]
	je	.label_299
.label_342:
	mov	edi, 0x20
	mov	rsi, rbp
	call	fputc
	dec	rbx
	jne	.label_342
.label_299:
	movzx	edi, byte ptr [rsp + 0x40]
	mov	rsi, rbp
	call	fputc
	mov	r11, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rbx, qword ptr [rsp + 0x50]
.label_422:
	add	r11, rbx
.label_287:
	mov	r13, qword ptr [rsp + 8]
	test	r13, r13
	movsxd	rbx, edx
	je	.label_285
	xor	eax, eax
	test	rbx, rbx
	je	.label_304
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [rsp + 0x20], r11
	xor	ebp, ebp
.label_357:
	mov	edi, 0x30
	mov	rsi, r13
	call	fputc
	inc	rbp
	cmp	rbp, rbx
	jb	.label_357
	mov	rax, rbx
	mov	r11, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x18]
	jmp	.label_304
.label_285:
	mov	rax, rbx
.label_304:
	add	r11, rax
	xor	r13d, r13d
.label_358:
	lea	rbx, [rsp + 0x97]
	sub	rbx, r15
	xor	eax, eax
	test	r13d, r13d
	cmovns	eax, r13d
	cdqe	
	cmp	rbx, rax
	mov	rdx, rbx
	cmovb	rdx, rax
	mov	rcx, r11
	not	rcx
	cmp	rdx, rcx
	jae	.label_283
	mov	qword ptr [rsp + 0x18], rdx
	mov	qword ptr [rsp + 0x20], r11
	cmp	qword ptr [rsp + 8], 0
	je	.label_297
	cmp	rbx, rax
	setae	al
	test	edi, edi
	jne	.label_320
	test	al, al
	jne	.label_320
	movsxd	rbp, r13d
	sub	rbp, rbx
	cmp	r14d, 0x30
	je	.label_370
	cmp	r14d, 0x2b
	jne	.label_288
.label_370:
	test	rbp, rbp
	mov	r14, qword ptr [rsp + 8]
	je	.label_320
	nop	dword ptr [rax]
.label_402:
	mov	edi, 0x30
	mov	rsi, r14
	call	fputc
	dec	rbp
	jne	.label_402
	jmp	.label_320
.label_288:
	test	rbp, rbp
	mov	r14, qword ptr [rsp + 8]
	je	.label_320
	nop	
.label_381:
	mov	edi, 0x20
	mov	rsi, r14
	call	fputc
	dec	rbp
	jne	.label_381
.label_320:
	mov	rax, qword ptr [rsp + 0x48]
	test	al, al
	je	.label_382
	test	rbx, rbx
	mov	r14, qword ptr [rsp + 8]
	je	.label_297
	mov	rax, qword ptr [rsp + 0x78]
	lea	rbx, [rax + r15]
	nop	
.label_407:
	movzx	ebp, byte ptr [r15]
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	edi, dword ptr [rax + rbp*4]
	mov	rsi, r14
	call	fputc
	inc	r15
	inc	rbx
	jne	.label_407
	jmp	.label_297
.label_382:
	mov	edx, 1
	mov	rdi, r15
	mov	rsi, rbx
.label_423:
	mov	rcx, qword ptr [rsp + 8]
	call	fwrite
.label_297:
	mov	r11, qword ptr [rsp + 0x20]
	add	r11, qword ptr [rsp + 0x18]
.label_333:
	mov	r8, qword ptr [rsp + 0x30]
	mov	r9d, dword ptr [rsp + 0x14]
.label_374:
	mov	cl, byte ptr [r12 + 1]
	inc	r12
	mov	r13d, 0xffffffff
	test	cl, cl
	mov	rax, r11
	jne	.label_394
	jmp	.label_396
.label_283:
	xor	eax, eax
.label_396:
	add	rsp, 0x4a8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405ee9
	.globl sub_405ee9
	.type sub_405ee9, @function
sub_405ee9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405ef0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_48]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_49]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_50]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_437
	test	rsi, rsi
	je	.label_437
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_437:
	call	abort
.label_438:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405f65
	.globl sub_405f65
	.type sub_405f65, @function
sub_405f65:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f74
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
	je	.label_438
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
	.align	16
	#Procedure 0x405fd0

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	rbp, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_453
	mov	edi, OFFSET FLAT:label_203
	call	getenv
	mov	r13, rax
	test	r13, r13
	mov	r12b, byte ptr [rbx + 8]
	mov	qword ptr [rsp + 8], rbp
	je	.label_459
	test	r12b, r12b
	je	.label_440
	lea	rdi, [rbx + 9]
	mov	rsi, r13
	call	strcmp
	mov	r15d, 1
	test	eax, eax
	je	.label_452
.label_440:
	mov	rdi, r13
	call	strlen
	mov	rbp, rax
	inc	rbp
	mov	r14b, 1
	jmp	.label_439
.label_453:
	mov	rdi, rbp
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	timegm
.label_459:
	xor	r14d, r14d
	mov	r15d, 1
	test	r12b, r12b
	mov	ebp, 0
	je	.label_452
.label_439:
	lea	rax, [rbp + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	rbp, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	r15, rax
	mov	rax, -1
	test	r15, r15
	je	.label_447
	mov	qword ptr [r15], 0
	mov	byte ptr [r15 + 8], r14b
	mov	byte ptr [r15 + 9], 0
	test	r14b, r14b
	je	.label_443
	lea	r14, [r15 + 9]
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbp
	call	memcpy
	mov	byte ptr [r14 + rbp], 0
.label_443:
	test	r12b, r12b
	je	.label_450
	lea	rsi, [rbx + 9]
	mov	edi, OFFSET FLAT:label_203
	mov	edx, 1
	call	setenv
	jmp	.label_454
.label_450:
	mov	edi, OFFSET FLAT:label_203
	call	unsetenv
.label_454:
	test	eax, eax
	je	.label_455
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r15, 2
	jb	.label_457
	nop	word ptr cs:[rax + rax]
.label_441:
	mov	rbx, qword ptr [r15]
	mov	rdi, r15
	call	free
	test	rbx, rbx
	mov	r15, rbx
	jne	.label_441
.label_457:
	mov	dword ptr [rbp], r14d
	jmp	.label_442
.label_455:
	call	tzset
.label_452:
	mov	rbp, qword ptr [rsp + 8]
	mov	rdi, rbp
	call	mktime
	mov	qword ptr [rsp], rax
	cmp	rax, -1
	jne	.label_444
	lea	rdi, [rsp]
	lea	rsi, [rsp + 0x10]
	call	localtime_r
	test	rax, rax
	je	.label_448
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x18]
	xor	rax, qword ptr [rbp]
	xor	rcx, qword ptr [rbp + 8]
	mov	edx, ecx
	or	edx, eax
	shr	rax, 0x20
	or	edx, eax
	shr	rcx, 0x20
	mov	rax, qword ptr [rsp + 0x20]
	xor	rax, qword ptr [rbp + 0x10]
	mov	esi, eax
	or	esi, ecx
	or	esi, edx
	shr	rax, 0x20
	or	eax, esi
	mov	edi, dword ptr [rbp + 0x20]
	mov	edx, dword ptr [rsp + 0x30]
	test	edi, edi
	sete	sil
	test	edx, edx
	sete	cl
	xor	cl, sil
	or	edx, edi
	setns	dl
	and	dl, cl
	movzx	ecx, dl
	or	ecx, eax
	jne	.label_448
.label_444:
	mov	rdi, rbx
	mov	rsi, rbp
	call	save_abbr
	test	al, al
	jne	.label_448
	mov	qword ptr [rsp], -1
.label_448:
	cmp	r15, 1
	je	.label_449
	call	__errno_location
	mov	r14, rax
	mov	r12d, dword ptr [r14]
	cmp	byte ptr [r15 + 8], 0
	je	.label_451
	lea	rsi, [r15 + 9]
	mov	edi, OFFSET FLAT:label_203
	mov	edx, 1
	call	setenv
	jmp	.label_456
.label_451:
	mov	edi, OFFSET FLAT:label_203
	call	unsetenv
.label_456:
	test	eax, eax
	je	.label_458
	mov	r12d, dword ptr [r14]
	xor	ebp, ebp
	jmp	.label_460
.label_458:
	call	tzset
	mov	bpl, 1
.label_460:
	cmp	r15, 2
	jb	.label_445
	nop	word ptr [rax + rax]
.label_446:
	mov	rbx, qword ptr [r15]
	mov	rdi, r15
	call	free
	test	rbx, rbx
	mov	r15, rbx
	jne	.label_446
.label_445:
	mov	dword ptr [r14], r12d
	test	bpl, bpl
	je	.label_442
.label_449:
	mov	rax, qword ptr [rsp]
	jmp	.label_447
.label_442:
	mov	rax, -1
.label_447:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406247
	.globl sub_406247
	.type sub_406247, @function
sub_406247:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406250
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_461:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_461
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x406271
	.globl sub_406271
	.type sub_406271, @function
sub_406271:

	nop	word ptr cs:[rax + rax]
.label_466:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_462
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4062a0
	.globl sub_4062a0
	.type sub_4062a0, @function
sub_4062a0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4062af

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_466
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_464
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_467
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_464
	mov	esi, OFFSET FLAT:label_465
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_463
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_463:
	mov	rbx, r14
.label_464:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x406330
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
	#Procedure 0x406349
	.globl sub_406349
	.type sub_406349, @function
sub_406349:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406350

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
	#Procedure 0x406369
	.globl sub_406369
	.type sub_406369, @function
sub_406369:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406370

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_469
	cmp	byte ptr [rax], 0x43
	jne	.label_471
	cmp	byte ptr [rax + 1], 0
	je	.label_468
.label_471:
	mov	esi, OFFSET FLAT:label_470
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_469
.label_468:
	xor	ebx, ebx
.label_469:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4063a1
	.globl sub_4063a1
	.type sub_4063a1, @function
sub_4063a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4063b0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_48]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_49]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_50]
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
	#Procedure 0x40641f
	.globl sub_40641f
	.type sub_40641f, @function
sub_40641f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406420

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	ebx, r9d
	mov	r15d, r8d
	mov	qword ptr [rsp + 0x48], rcx
	mov	qword ptr [rsp + 0x28], rdx
	mov	r13, rsi
	mov	qword ptr [rsp + 0x10], rdi
	mov	rax, qword ptr [rsp + 0x110]
	mov	qword ptr [rsp + 0x78], rax
	mov	rax, qword ptr [rsp + 0x108]
	mov	qword ptr [rsp + 0x80], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0xb8], rax
	mov	r12d, ebx
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x9c], eax
	mov	dword ptr [rsp + 0x20], ebx
	and	ebx, 4
	mov	dword ptr [rsp + 0x98], ebx
	mov	dil, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x50], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa8], rcx
	jmp	.label_502
	.section	.text
	.align	16
	#Procedure 0x4064cf
	.globl sub_4064cf
	.type sub_4064cf, @function
sub_4064cf:

	nop	
.label_545:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_529
	or	al, dl
	jne	.label_529
	test	dil, 1
	jne	.label_542
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_529
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_502
	jmp	.label_529
.label_770:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_550
	test	rbp, rbp
	je	.label_566
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_566:
	mov	r14d, 1
	jmp	.label_554
.label_771:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_164
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_495
.label_550:
	xor	r14d, r14d
.label_554:
	mov	eax, OFFSET FLAT:label_164
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_562
	.section	.text
	.align	16
	#Procedure 0x40659f
	.globl sub_40659f
	.type sub_40659f, @function
sub_40659f:

	nop	
.label_502:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_572
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_578]
.label_772:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_584
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_165
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_773:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_473
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_473
	xor	r14d, r14d
	nop	
.label_485:
	cmp	r14, rbp
	jae	.label_481
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_481:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_485
.label_473:
	mov	rbx, qword ptr [rsp + 0x78]
	mov	rdi, rbx
	call	strlen
	mov	qword ptr [rsp + 0x50], rax
	mov	r8d, r15d
	mov	qword ptr [rsp + 0x58], rbx
	mov	r13b, 1
	mov	sil, r12b
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r9d, dword ptr [rsp + 0x60]
	jmp	.label_495
.label_765:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_495
.label_768:
	mov	al, 1
.label_766:
	mov	r12b, 1
.label_769:
	test	r12b, 1
	mov	cl, 1
	je	.label_511
	mov	ecx, eax
.label_511:
	mov	al, cl
.label_767:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_512
	test	rbp, rbp
	je	.label_518
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_518:
	mov	r14d, 1
	jmp	.label_492
.label_512:
	xor	r14d, r14d
.label_492:
	mov	ecx, OFFSET FLAT:label_165
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_562:
	mov	sil, r12b
.label_495:
	cmp	qword ptr [rsp + 0x100], 0
	setne	r12b
	cmp	r8d, 2
	setne	r15b
	sete	al
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x33]
	mov	ebx, r15d
	mov	byte ptr [rsp + 0x1f], cl
	and	bl, cl
	cmp	qword ptr [rsp + 0x50], 0
	setne	cl
	mov	edx, ecx
	mov	byte ptr [rsp + 0x36], bl
	and	dl, bl
	mov	byte ptr [rsp + 0x37], dl
	mov	ebx, esi
	and	bl, 1
	sete	dl
	and	al, bl
	mov	byte ptr [rsp + 0x31], al
	mov	byte ptr [rsp + 0xf], bl
	and	r12b, bl
	mov	byte ptr [rsp + 0x35], r12b
	or	dl, r15b
	mov	byte ptr [rsp + 0x27], dl
	mov	byte ptr [rsp + 0x34], r13b
	mov	qword ptr [rsp + 0xc0], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x32], r13b
	xor	r12d, r12d
	mov	qword ptr [rsp + 0x38], r8
	jmp	.label_533
	.section	.text
	.align	16
	#Procedure 0x406761
	.globl sub_406761
	.type sub_406761, @function
sub_406761:

	nop	word ptr cs:[rax + rax]
.label_535:
	inc	r12
.label_533:
	cmp	r11, -1
	je	.label_558
	cmp	r12, r11
	jne	.label_559
	jmp	.label_561
	.section	.text
	.align	16
	#Procedure 0x406783
	.globl sub_406783
	.type sub_406783, @function
sub_406783:

	nop	word ptr cs:[rax + rax]
.label_558:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_526
.label_559:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_573
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_544
	cmp	r11, -1
	jne	.label_544
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_544:
	cmp	rbx, r11
	jbe	.label_588
.label_573:
	xor	esi, esi
.label_487:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_591
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_594]
.label_630:
	test	r12, r12
	jne	.label_474
	jmp	.label_475
	.section	.text
	.align	16
	#Procedure 0x406816
	.globl sub_406816
	.type sub_406816, @function
sub_406816:

	nop	word ptr cs:[rax + rax]
.label_588:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_484
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_487
	jmp	.label_498
.label_484:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_487
.label_634:
	xor	eax, eax
	cmp	r11, -1
	je	.label_505
	test	r12, r12
	jne	.label_509
	cmp	r11, 1
	je	.label_475
	xor	r13d, r13d
	jmp	.label_476
.label_623:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_514
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_498
	cmp	r8d, 2
	jne	.label_522
	mov	eax, r9d
	and	al, 1
	jne	.label_522
	cmp	r14, rbp
	jae	.label_527
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_527:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_530
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_530:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_537
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_537:
	add	r14, 3
	mov	r9b, 1
.label_522:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_540
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_540:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_500
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_500
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_500
	cmp	r14, rbp
	jae	.label_563
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_563:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_589
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_589:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_476
.label_624:
	mov	bl, 0x62
	jmp	.label_519
.label_625:
	mov	cl, 0x74
	jmp	.label_555
.label_626:
	mov	bl, 0x76
	jmp	.label_519
.label_627:
	mov	bl, 0x66
	jmp	.label_519
.label_628:
	mov	cl, 0x72
	jmp	.label_555
.label_631:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_569
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_493
	test	rbp, rbp
	sete	al
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, rbp
	mov	qword ptr [rsp + 0x68], rdx
	mov	eax, 0
	cmove	rbp, rax
	cmp	r14, rbp
	jae	.label_579
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_579:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_592
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_592:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_596
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_596:
	add	r14, 3
	xor	r9d, r9d
.label_569:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_476
.label_632:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_478
	cmp	r8d, 2
	jne	.label_474
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_474
	jmp	.label_493
.label_633:
	cmp	r8d, 2
	jne	.label_489
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_493
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_497
.label_591:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_501
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_571
.label_505:
	test	r12, r12
	jne	.label_523
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_523
.label_475:
	mov	dl, 1
.label_629:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_493
	xor	eax, eax
	mov	r13b, dl
.label_476:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_534
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_557
	jmp	.label_539
	.section	.text
	.align	16
	#Procedure 0x406af4
	.globl sub_406af4
	.type sub_406af4, @function
sub_406af4:

	nop	word ptr cs:[rax + rax]
.label_534:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_539
.label_557:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_543
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_549
	.section	.text
	.align	16
	#Procedure 0x406b2d
	.globl sub_406b2d
	.type sub_406b2d, @function
sub_406b2d:

	nop	dword ptr [rax]
.label_539:
	test	sil, sil
.label_549:
	mov	ebx, r15d
	je	.label_477
	jmp	.label_552
.label_543:
	mov	ebx, r15d
	jmp	.label_552
.label_514:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_535
	xor	r15d, r15d
	jmp	.label_474
.label_489:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_555
	xor	eax, eax
	mov	r15b, 0x5c
.label_497:
	xor	r13d, r13d
	jmp	.label_477
.label_555:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_493
.label_519:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_476
	nop	
.label_552:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_498
	cmp	r8d, 2
	jne	.label_570
	mov	eax, r9d
	and	al, 1
	jne	.label_570
	cmp	r14, rbp
	jae	.label_576
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_576:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_580
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_580:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_521
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_521:
	add	r14, 3
	mov	r9b, 1
.label_570:
	cmp	r14, rbp
	jae	.label_590
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_590:
	inc	r14
	jmp	.label_575
.label_501:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_595
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_595:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_510
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_503:
	mov	rax, r12
	mov	qword ptr [rsp + 0x40], rax
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rax, [r12 + rcx]
	mov	r12, rcx
	lea	rsi, [r10 + rax]
	mov	rdx, r11
	sub	rdx, rax
	lea	rdi, [rsp + 0x64]
	mov	rcx, rbp
	call	rpl_mbrtowc
	mov	rbx, rax
	cmp	rbx, -2
	je	.label_490
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_506
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_546
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_516
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_472:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_548
	bt	rsi, rdx
	jb	.label_493
.label_548:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_472
.label_516:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_583
	xor	r13d, r13d
.label_583:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_503
	jmp	.label_508
.label_500:
	xor	r13d, r13d
	jmp	.label_476
.label_523:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_476
.label_478:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_474
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_474
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_474
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_556
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_532
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_565
	cmp	r14, rbp
	jae	.label_567
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_567:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_528
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_528:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_536
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_536:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_541
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_541:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_532:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_476
.label_474:
	xor	eax, eax
.label_509:
	xor	r13d, r13d
	jmp	.label_476
.label_510:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_504:
	mov	rax, r12
	mov	qword ptr [rsp + 0x40], rax
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rax, [r12 + rcx]
	mov	r12, rcx
	lea	rsi, [r10 + rax]
	mov	rdx, r11
	sub	rdx, rax
	lea	rdi, [rsp + 0x64]
	mov	rcx, rbx
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_524
	cmp	rbp, -1
	je	.label_574
	cmp	rbp, -2
	je	.label_490
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_496
	xor	r13d, r13d
.label_496:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_504
	jmp	.label_508
.label_490:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_515
	lea	rax, [r10 + r12]
.label_553:
	cmp	byte ptr [rax + rsi], 0
	je	.label_515
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_553
.label_515:
	mov	qword ptr [rsp + 0x40], rsi
.label_506:
	xor	r13d, r13d
	jmp	.label_546
.label_574:
	xor	r13d, r13d
.label_524:
	mov	r10, qword ptr [rsp + 0x28]
.label_546:
	mov	r12, qword ptr [rsp + 0x40]
.label_508:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_571:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_479
	test	al, al
	je	.label_479
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_476
.label_479:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_547
	.section	.text
	.align	16
	#Procedure 0x406f27
	.globl sub_406f27
	.type sub_406f27, @function
sub_406f27:

	nop	word ptr [rax + rax]
.label_507:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_547:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_551
	test	sil, 1
	je	.label_488
	cmp	r14, rbp
	jae	.label_582
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_582:
	inc	r14
	xor	esi, esi
	jmp	.label_488
	.section	.text
	.align	16
	#Procedure 0x406f65
	.globl sub_406f65
	.type sub_406f65, @function
sub_406f65:

	nop	word ptr cs:[rax + rax]
.label_551:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_498
	cmp	r8d, 2
	jne	.label_560
	mov	eax, r9d
	and	al, 1
	jne	.label_560
	cmp	r14, rbp
	jae	.label_564
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_564:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_568
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_568:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_520
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_520:
	add	r14, 3
	mov	r9b, 1
.label_560:
	cmp	r14, rbp
	jae	.label_581
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_581:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_586
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_586:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_593
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_593:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_488:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_477
	test	r9b, 1
	je	.label_499
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_538
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_483
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_483:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_491
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_491:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_499
	.section	.text
	.align	16
	#Procedure 0x407076
	.globl sub_407076
	.type sub_407076, @function
sub_407076:

	nop	word ptr cs:[rax + rax]
.label_538:
	mov	rbx, rcx
.label_499:
	cmp	r14, rbp
	jae	.label_507
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_507
	.section	.text
	.align	16
	#Procedure 0x40709e
	.globl sub_40709e
	.type sub_40709e, @function
sub_40709e:

	nop	
.label_477:
	test	r9b, 1
	je	.label_513
	and	al, 1
	jne	.label_513
	cmp	r14, rbp
	jae	.label_517
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_517:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_494
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_494:
	add	r14, 2
	xor	r9d, r9d
.label_513:
	mov	ebx, r15d
.label_575:
	cmp	r14, rbp
	jae	.label_531
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_531:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_535
.label_556:
	xor	r13d, r13d
	jmp	.label_476
	.section	.text
	.align	16
	#Procedure 0x407101
	.globl sub_407101
	.type sub_407101, @function
sub_407101:

	nop	word ptr cs:[rax + rax]
.label_561:
	mov	rcx, r12
.label_526:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_545
	or	al, dl
	jne	.label_545
	mov	r11, rcx
	jmp	.label_498
.label_493:
	mov	eax, 2
.label_486:
	mov	qword ptr [rsp + 0x38], rax
.label_498:
	mov	r9d, dword ptr [rsp + 0x20]
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x38]
	cmove	r8d, eax
	cmp	eax, 2
	cmovne	r8d, eax
	and	r9d, 0xfffffffd
	sub	rsp, 8
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbp
	mov	rdx, r10
	mov	rcx, r11
	push	qword ptr [rsp + 0x80]
	push	qword ptr [rsp + 0x90]
	push	0
	call	quotearg_buffer_restyled
	add	rsp, 0x20
.label_525:
	mov	r14, rax
.label_480:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_529:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_577
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_482
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_482
	inc	rdx
	nop	dword ptr [rax + rax]
.label_587:
	cmp	r14, rbp
	jae	.label_585
	mov	byte ptr [rcx + r14], al
.label_585:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_587
	jmp	.label_482
.label_542:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	r9d, dword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x80]
	push	qword ptr [rsp + 0x90]
	push	qword ptr [rsp + 0x118]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_525
.label_577:
	mov	rcx, qword ptr [rsp + 0x10]
.label_482:
	cmp	r14, rbp
	jae	.label_480
	mov	byte ptr [rcx + r14], 0
	jmp	.label_480
.label_565:
	mov	eax, 5
	jmp	.label_486
.label_572:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407250
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
	#Procedure 0x4072c5
	.globl sub_4072c5
	.type sub_4072c5, @function
sub_4072c5:

	nop	word ptr cs:[rax + rax]
.label_597:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4072d5
	.globl sub_4072d5
	.type sub_4072d5, @function
sub_4072d5:

	nop	word ptr [rax + rax]
.label_603:
	test	rcx, rcx
	jne	.label_601
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_601:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_597
.label_602:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_598
	test	rbx, rbx
	jne	.label_598
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_598:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_599
	test	rax, rax
	je	.label_600
.label_599:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40733e
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_603
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_600
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_602
.label_600:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4073d5
	.globl sub_4073d5
	.type sub_4073d5, @function
sub_4073d5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4073e2
	.globl sub_4073e2
	.type sub_4073e2, @function
sub_4073e2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407406
	.globl sub_407406
	.type sub_407406, @function
sub_407406:

	nop	word ptr cs:[rax + rax]
