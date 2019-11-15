	.section	.text
	.align	16
	#Procedure 0x401b79
	.globl sub_401b79
	.type sub_401b79, @function
sub_401b79:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x401b7a
	.globl sub_401b7a
	.type sub_401b7a, @function
sub_401b7a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401bb2
	.globl sub_401bb2
	.type sub_401bb2, @function
sub_401bb2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401bfa
	.globl sub_401bfa
	.type sub_401bfa, @function
sub_401bfa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c1c
	.globl sub_401c1c
	.type sub_401c1c, @function
sub_401c1c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401c2d
	.globl sub_401c2d
	.type sub_401c2d, @function
sub_401c2d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401c46
	.globl sub_401c46
	.type sub_401c46, @function
sub_401c46:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c50
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
	#Procedure 0x401c69
	.globl sub_401c69
	.type sub_401c69, @function
sub_401c69:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401c70

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
	#Procedure 0x401c95
	.globl sub_401c95
	.type sub_401c95, @function
sub_401c95:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ca0
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
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x401d14
	.globl sub_401d14
	.type sub_401d14, @function
sub_401d14:

	nop	word ptr cs:[rax + rax]
.label_18:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_17
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_17:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401d54
	.globl sub_401d54
	.type sub_401d54, @function
sub_401d54:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401d56

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
	jne	.label_19
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_19
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_18
.label_19:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x401d90

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
	#Procedure 0x401da7
	.globl sub_401da7
	.type sub_401da7, @function
sub_401da7:

	nop	word ptr [rax + rax]
.label_20:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401db5
	.globl sub_401db5
	.type sub_401db5, @function
sub_401db5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401dbb

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_21
	test	rax, rax
	je	.label_20
.label_21:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401dd0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_22:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_22
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x401df1
	.globl sub_401df1
	.type sub_401df1, @function
sub_401df1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e00

	.globl save_token
	.type save_token, @function
save_token:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdi
	mov	r15, qword ptr [rbx + 0x28]
	mov	r14, qword ptr [rbx + 0x30]
	cmp	r14, r15
	jne	.label_23
	or	byte ptr [rbx + 0x68], 2
.label_23:
	mov	rax, qword ptr [rbx + 0x48]
	lea	rcx, [rax + r14]
	not	rax
	and	rax, rcx
	mov	qword ptr [rbx + 0x30], rax
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rcx, qword ptr [rbx + 0x38]
	mov	rsi, rax
	sub	rsi, rdx
	mov	rdi, rcx
	sub	rdi, rdx
	cmp	rsi, rdi
	jbe	.label_24
	mov	qword ptr [rbx + 0x30], rcx
	mov	rax, rcx
.label_24:
	dec	r14
	mov	qword ptr [rbx + 0x28], rax
	mov	rax, qword ptr [rbx + 0x88]
	mov	rcx, qword ptr [rbx + 0x90]
	sub	rcx, rax
	cmp	rcx, 8
	jae	.label_25
	lea	rdi, [rbx + 0x70]
	mov	esi, 8
	call	_obstack_newchunk
	mov	rax, qword ptr [rbx + 0x88]
.label_25:
	sub	r14, r15
	mov	qword ptr [rax], r15
	add	qword ptr [rbx + 0x88], 8
	mov	rax, qword ptr [rbx + 0xe0]
	mov	rcx, qword ptr [rbx + 0xe8]
	sub	rcx, rax
	cmp	rcx, 8
	jae	.label_26
	lea	rdi, [rbx + 0xc8]
	mov	esi, 8
	call	_obstack_newchunk
	mov	rax, qword ptr [rbx + 0xe0]
.label_26:
	mov	qword ptr [rax], r14
	add	qword ptr [rbx + 0xe0], 8
	inc	qword ptr [rbx]
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ecf
	.globl sub_401ecf
	.type sub_401ecf, @function
sub_401ecf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401ed0
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
	#Procedure 0x401ee3
	.globl sub_401ee3
	.type sub_401ee3, @function
sub_401ee3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ef0

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
	je	.label_27
	test	r15, r15
	je	.label_28
.label_27:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_28:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401f2c
	.globl sub_401f2c
	.type sub_401f2c, @function
sub_401f2c:

	nop	dword ptr [rax]
.label_31:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_29
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401f50
	.globl sub_401f50
	.type sub_401f50, @function
sub_401f50:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f5f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_31
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_33
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_33
	mov	esi, OFFSET FLAT:label_32
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_30
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_30:
	mov	rbx, r14
.label_33:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_35:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401fe5
	.globl sub_401fe5
	.type sub_401fe5, @function
sub_401fe5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401feb
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_36
	test	rax, rax
	je	.label_35
.label_36:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402000

	.globl _obstack_memory_used
	.type _obstack_memory_used, @function
_obstack_memory_used:
	mov	rcx, qword ptr [rdi + 8]
	xor	eax, eax
	test	rcx, rcx
	je	.label_37
	xor	eax, eax
	nop	dword ptr [rax]
.label_38:
	sub	rax, rcx
	add	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_38
.label_37:
	ret	
	.section	.text
	.align	16
	#Procedure 0x402020
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
	je	.label_39
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
.label_39:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40208c
	.globl sub_40208c
	.type sub_40208c, @function
sub_40208c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402090

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
	je	.label_40
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
.label_40:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4020f8
	.globl sub_4020f8
	.type sub_4020f8, @function
sub_4020f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402100
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40210a
	.globl sub_40210a
	.type sub_40210a, @function
sub_40210a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402110

	.globl argv_iter
	.type argv_iter, @function
argv_iter:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rcx, qword ptr [rbx]
	test	rcx, rcx
	je	.label_41
	lea	rdi, [rbx + 0x10]
	lea	rsi, [rbx + 0x18]
	xor	edx, edx
	call	getdelim
	test	rax, rax
	js	.label_44
	mov	dword ptr [r14], 1
	inc	qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 0x10]
	jmp	.label_43
.label_44:
	mov	rdi, qword ptr [rbx]
	call	feof
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	eax, [rcx + rcx + 2]
	mov	dword ptr [r14], eax
	jmp	.label_42
.label_41:
	mov	rax, qword ptr [rbx + 0x28]
	cmp	qword ptr [rax], 0
	je	.label_45
	mov	dword ptr [r14], 1
	mov	rax, qword ptr [rbx + 0x28]
	lea	rcx, [rax + 8]
	mov	qword ptr [rbx + 0x28], rcx
	mov	rax, qword ptr [rax]
	jmp	.label_43
.label_45:
	mov	dword ptr [r14], 2
.label_42:
	xor	eax, eax
.label_43:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x402192
	.globl sub_402192
	.type sub_402192, @function
sub_402192:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021a0
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	push	rbx
	mov	ebx, edi
	call	wcwidth
	test	eax, eax
	jns	.label_46
	mov	edi, ebx
	call	iswcntrl
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	sete	al
.label_46:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4021be
	.globl sub_4021be
	.type sub_4021be, @function
sub_4021be:

	nop	
.label_47:
	mov	rax, qword ptr [rdi + 0x28]
	sub	rax, qword ptr [rdi + 0x20]
	sar	rax, 3
	ret	
	.section	.text
	.align	16
	#Procedure 0x4021cd
	.globl sub_4021cd
	.type sub_4021cd, @function
sub_4021cd:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021d5

	.globl argv_iter_n_args
	.type argv_iter_n_args, @function
argv_iter_n_args:
	cmp	qword ptr [rdi], 0
	je	.label_47
	mov	rax, qword ptr [rdi + 8]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4021e0
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
	#Procedure 0x4021ef
	.globl sub_4021ef
	.type sub_4021ef, @function
sub_4021ef:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4021f0

	.globl physmem_available
	.type physmem_available, @function
physmem_available:
	push	rbx
	sub	rsp, 0x70
	mov	edi, 0x56
	call	sysconf
	mov	rbx, rax
	mov	edi, 0x1e
	call	sysconf
	mov	rcx, rax
	or	rcx, rbx
	js	.label_56
	cvtsi2sd	xmm1, rax
	cvtsi2sd	xmm0, rbx
	mulsd	xmm0, xmm1
	jmp	.label_52
.label_56:
	lea	rdi, [rsp]
	call	sysinfo
	test	eax, eax
	je	.label_49
	mov	edi, 0x55
	call	sysconf
	mov	rbx, rax
	mov	edi, 0x1e
	call	sysconf
	mov	rcx, rax
	or	rcx, rbx
	js	.label_55
	cvtsi2sd	xmm1, rax
	cvtsi2sd	xmm0, rbx
.label_57:
	mulsd	xmm0, xmm1
	jmp	.label_58
.label_49:
	movq	xmm0, qword ptr [rsp + 0x28]
	movdqa	xmm1, xmmword ptr [rip + label_50]
	punpckldq	xmm0, xmm1
	movapd	xmm2, xmmword ptr [rip + label_51]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	movq	xmm0, qword ptr [rsp + 0x38]
	punpckldq	xmm0, xmm1
	subpd	xmm0, xmm2
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	addsd	xmm1, xmm3
	mov	eax, dword ptr [rsp + 0x68]
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	mulsd	xmm0, xmm1
	jmp	.label_52
.label_55:
	lea	rdi, [rsp]
	call	sysinfo
	test	eax, eax
	je	.label_48
	movsd	xmm0, qword ptr [rip + label_53]
.label_58:
	mulsd	xmm0, qword ptr [rip + label_54]
.label_52:
	add	rsp, 0x70
	pop	rbx
	ret	
.label_48:
	movq	xmm0, qword ptr [rsp + 0x20]
	punpckldq	xmm0, xmmword ptr [rip + label_50]
	subpd	xmm0, xmmword ptr [rip + label_51]
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	mov	eax, dword ptr [rsp + 0x68]
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	jmp	.label_57
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

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_59]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_60]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_61]
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
	#Procedure 0x402365
	.globl sub_402365
	.type sub_402365, @function
sub_402365:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402370

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_62
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_63
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4023a0

	.globl write_counts
	.type write_counts, @function
write_counts:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, r9
	mov	r14, r8
	mov	r12, rcx
	mov	rbp, rdx
	mov	rax, rsi
	mov	ebx, OFFSET FLAT:label_69
	cmp	byte ptr [rip + print_lines],  1
	jne	.label_70
	mov	r15d, dword ptr [rip + number_width]
	lea	rsi, [rsp]
	mov	rbx, rax
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_69
	xor	eax, eax
	mov	edx, r15d
	call	__printf_chk
	mov	rax, rbx
	mov	ebx, OFFSET FLAT:write_counts.format_sp_int
.label_70:
	cmp	byte ptr [rip + print_words],  1
	jne	.label_74
	mov	r15, r13
	mov	r13, r12
	mov	r12, r14
	mov	r14d, dword ptr [rip + number_width]
	lea	rsi, [rsp]
	mov	rdi, rax
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	edx, r14d
	mov	r14, r12
	mov	r12, r13
	mov	r13, r15
	call	__printf_chk
	mov	ebx, OFFSET FLAT:write_counts.format_sp_int
.label_74:
	cmp	byte ptr [rip + print_chars],  1
	jne	.label_64
	mov	r15d, dword ptr [rip + number_width]
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	edx, r15d
	call	__printf_chk
	mov	ebx, OFFSET FLAT:write_counts.format_sp_int
.label_64:
	cmp	byte ptr [rip + print_bytes],  1
	jne	.label_73
	mov	ebp, dword ptr [rip + number_width]
	lea	rsi, [rsp]
	mov	rdi, r12
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	edx, ebp
	call	__printf_chk
	mov	ebx, OFFSET FLAT:write_counts.format_sp_int
.label_73:
	cmp	byte ptr [rip + print_linelength],  1
	jne	.label_71
	mov	ebp, dword ptr [rip + number_width]
	lea	rsi, [rsp]
	mov	rdi, r14
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	edx, ebp
	call	__printf_chk
.label_71:
	test	r13, r13
	je	.label_68
	mov	esi, 0xa
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_72
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r13
	call	quotearg_n_style_colon
	mov	r13, rax
.label_72:
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_65
	xor	eax, eax
	mov	rdx, r13
	call	__printf_chk
.label_68:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_67
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_66:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_67:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_66
	.section	.text
	.align	16
	#Procedure 0x402552
	.globl sub_402552
	.type sub_402552, @function
sub_402552:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402560

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_75
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_75:
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
	#Procedure 0x4025e3
	.globl sub_4025e3
	.type sub_4025e3, @function
sub_4025e3:

	nop	word ptr cs:[rax + rax]
.label_76:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4025f5
	.globl sub_4025f5
	.type sub_4025f5, @function
sub_4025f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402603
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
	je	.label_77
	test	r15, r15
	je	.label_76
.label_77:
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
	#Procedure 0x402640

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_78:
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
	ja	.label_78
	mov	rax, rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x40268b
	.globl sub_40268b
	.type sub_40268b, @function
sub_40268b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402690

	.globl argv_iter_free
	.type argv_iter_free, @function
argv_iter_free:
	push	rbx
	mov	rbx, rdi
	cmp	qword ptr [rbx], 0
	je	.label_79
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
.label_79:
	mov	rdi, rbx
	pop	rbx
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x4026ac
	.globl sub_4026ac
	.type sub_4026ac, @function
sub_4026ac:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4026b0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x4026b8
	.globl sub_4026b8
	.type sub_4026b8, @function
sub_4026b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026c0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4026ca
	.globl sub_4026ca
	.type sub_4026ca, @function
sub_4026ca:

	nop	word ptr [rax + rax]
.label_81:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x4026dc
	.globl sub_4026dc
	.type sub_4026dc, @function
sub_4026dc:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026e8

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_81
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_80
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_81
.label_80:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_81
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_82
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_82:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402750
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x402761
	.globl sub_402761
	.type sub_402761, @function
sub_402761:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402770

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_88
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_85
	cmp	dword ptr [rbp], 0x20
	jne	.label_85
.label_88:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_84
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_83:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_87
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_84:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_85:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_86
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_83
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_63
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x402830

	.globl wc
	.type wc, @function
wc:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x4068
	mov	r14, rcx
	mov	rbp, rdx
	mov	r13, rsi
	mov	dword ptr [rsp + 4], edi
	test	r13, r13
	mov	rax, r13
	jne	.label_105
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_115
	mov	edx, 5
	call	dcgettext
.label_105:
	mov	qword ptr [rsp + 0x40], rax
	call	__ctype_get_mb_cur_max
	mov	cl, byte ptr [rip + print_bytes]
	cmp	rax, 2
	jb	.label_138
	mov	r12b, byte ptr [rip + print_chars]
	jmp	.label_126
.label_138:
	or	cl, byte ptr [rip + print_chars]
	and	cl, 1
	xor	r12d, r12d
.label_126:
	mov	bl, byte ptr [rip + print_linelength]
	or	bl, byte ptr [rip + print_words]
	test	cl, cl
	sete	al
	test	r12b, r12b
	setne	r15b
	or	r15b, al
	mov	al, byte ptr [rip + print_lines]
	test	al, al
	jne	.label_132
	test	bl, 1
	jne	.label_132
	test	r15b, r15b
	jne	.label_132
	xor	eax, eax
	jmp	.label_139
.label_132:
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 2
	mov	edi, dword ptr [rsp + 4]
	call	fdadvise
	mov	al, byte ptr [rip + print_lines]
.label_139:
	or	al, bl
	or	al, r15b
	test	al, 1
	je	.label_143
	test	r12b, r12b
	setne	al
	or	bl, al
	test	bl, 1
	mov	qword ptr [rsp + 0x38], r13
	mov	dword ptr [rsp + 0x24], r12d
	je	.label_148
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_92
	mov	qword ptr [rsp + 0x50], 0
	mov	eax, 0
	mov	qword ptr [rsp + 8], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x18], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	r14d, r14d
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_112:
	xor	ebx, ebx
	jmp	.label_109
	.section	.text
	.align	16
	#Procedure 0x402964
	.globl sub_402964
	.type sub_402964, @function
sub_402964:

	nop	word ptr cs:[rax + rax]
.label_97:
	lea	rsi, [r13 + 1]
	xor	eax, eax
	cmp	r15, 0x4000
	sete	al
	cmovne	rsi, r13
	sub	r15, rax
	lea	rdi, [rsp + 0x60]
	mov	rdx, r15
	call	memmove
	mov	rbx, r15
	jmp	.label_109
	.section	.text
	.align	16
	#Procedure 0x402999
	.globl sub_402999
	.type sub_402999, @function
sub_402999:

	nop	dword ptr [rax]
.label_137:
	mov	qword ptr [rsp + 0x50], rbp
	mov	r12b, 1
	test	r15, r15
	mov	ebx, 0
	jne	.label_97
	nop	word ptr cs:[rax + rax]
.label_109:
	lea	rsi, [rsp + rbx + 0x60]
	mov	edx, 0x4000
	sub	rdx, rbx
	mov	edi, dword ptr [rsp + 4]
	call	safe_read
	cmp	rax, -1
	je	.label_121
	mov	bpl, 1
	test	rax, rax
	je	.label_144
	add	qword ptr [rsp + 0x48], rax
	add	rbx, rax
	mov	r15, rbx
	lea	r13, [rsp + 0x60]
	jmp	.label_147
.label_133:
	movzx	ebp, byte ptr [r13]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	test	ah, 0x40
	je	.label_91
	inc	qword ptr [rsp + 0x28]
	test	ah, 0x20
	jne	.label_102
.label_113:
	mov	r14b, 1
	jmp	.label_91
.label_149:
	cmp	eax, 0x202f
	je	.label_102
	cmp	eax, 0x2060
	je	.label_102
	jmp	.label_113
	.section	.text
	.align	16
	#Procedure 0x402a46
	.globl sub_402a46
	.type sub_402a46, @function
sub_402a46:

	nop	word ptr cs:[rax + rax]
.label_147:
	test	r12b, 1
	jne	.label_114
	movzx	eax, byte ptr [r13]
	mov	rcx, rax
	shr	rcx, 5
	mov	ecx, dword ptr [(rcx * 4) + is_basic_table]
	bt	ecx, eax
	jae	.label_114
	movsx	edi, al
	mov	dword ptr [rsp + 0x14], edi
	xor	eax, eax
	mov	ebx, 1
	jmp	.label_123
	.section	.text
	.align	16
	#Procedure 0x402a7e
	.globl sub_402a7e
	.type sub_402a7e, @function
sub_402a7e:

	nop	
.label_114:
	mov	rbp, qword ptr [rsp + 0x50]
	lea	rdi, [rsp + 0x14]
	mov	rsi, r13
	mov	rdx, r15
	lea	rcx, [rsp + 0x50]
	call	rpl_mbrtowc
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_134
	cmp	rbx, -2
	je	.label_137
	lea	rdi, [rsp + 0x50]
	call	mbsinit
	test	eax, eax
	sete	r12b
	test	rbx, rbx
	je	.label_129
	mov	al, 1
	mov	edi, dword ptr [rsp + 0x14]
.label_123:
	lea	ecx, [rdi - 9]
	cmp	ecx, 0x17
	ja	.label_141
	jmp	qword ptr [(rcx * 8) + label_122]
.label_517:
	mov	rax, qword ptr [rsp + 0x28]
	mov	rcx, rax
	and	eax, 7
	neg	rax
	lea	rcx, [rcx + rax + 8]
	mov	qword ptr [rsp + 0x28], rcx
	jmp	.label_102
	.section	.text
	.align	16
	#Procedure 0x402af4
	.globl sub_402af4
	.type sub_402af4, @function
sub_402af4:

	nop	word ptr cs:[rax + rax]
.label_134:
	inc	r13
	dec	r15
	mov	r12b, 1
	jmp	.label_118
.label_129:
	mov	dword ptr [rsp + 0x14], 0
	xor	edi, edi
	mov	ebx, 1
	jmp	.label_96
.label_518:
	inc	qword ptr [rsp + 0x30]
.label_519:
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp + 0x28]
	cmp	rcx, rax
	cmova	rax, rcx
	mov	qword ptr [rsp + 8], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	jmp	.label_102
.label_141:
	test	al, al
	je	.label_133
.label_96:
	call	iswprint
	test	eax, eax
	je	.label_91
	cmp	byte ptr [rip + print_linelength],  1
	jne	.label_151
	mov	edi, dword ptr [rsp + 0x14]
	call	wcwidth
	test	eax, eax
	mov	ecx, 0
	cmovs	eax, ecx
	cdqe	
	add	qword ptr [rsp + 0x28], rax
.label_151:
	mov	edi, dword ptr [rsp + 0x14]
	call	iswspace
	test	eax, eax
	jne	.label_102
	cmp	byte ptr [rip + posixly_correct],  0
	jne	.label_113
	mov	eax, dword ptr [rsp + 0x14]
	cmp	eax, 0x202e
	jg	.label_149
	cmp	eax, 0xa0
	je	.label_102
	cmp	eax, 0x2007
	je	.label_102
	jmp	.label_113
.label_520:
	inc	qword ptr [rsp + 0x28]
	nop	dword ptr [rax + rax]
.label_102:
	and	r14b, 1
	movzx	eax, r14b
	add	qword ptr [rsp + 0x58], rax
	xor	r14d, r14d
.label_91:
	mov	rax, qword ptr [rsp + 0x18]
	add	r13, rbx
	sub	r15, rbx
	inc	rax
	mov	qword ptr [rsp + 0x18], rax
.label_118:
	test	r15, r15
	jne	.label_147
	jmp	.label_112
.label_143:
	mov	eax, dword ptr [rbp]
	test	eax, eax
	jle	.label_150
	lea	rdx, [rbp + 8]
	mov	edi, 1
	mov	esi, dword ptr [rsp + 4]
	call	__fxstat
	mov	dword ptr [rbp], eax
.label_150:
	xor	r15d, r15d
	test	eax, eax
	jne	.label_95
	movzx	eax, word ptr [rbp + 0x20]
	or	eax, 0x2000
	xor	r15d, r15d
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_95
	mov	rbx, qword ptr [rbp + 0x38]
	xor	r15d, r15d
	test	rbx, rbx
	js	.label_95
	test	r14, r14
	jns	.label_110
	xor	esi, esi
	mov	edx, 1
	mov	edi, dword ptr [rsp + 4]
	call	lseek
	mov	r14, rax
.label_110:
	xor	edx, edx
	mov	rax, rbx
	div	qword ptr [rip + page_size]
	test	rdx, rdx
	je	.label_117
	xor	r8d, r8d
	sub	rbx, r14
	cmovb	rbx, r8
	mov	bpl, 1
	mov	r15, rbx
	mov	eax, r12d
	xor	r12d, r12d
	xor	r14d, r14d
	xor	ebx, ebx
	jmp	.label_125
.label_148:
	lea	r14, [rsp + 0x60]
	xor	r15d, r15d
	xor	r13d, r13d
	xor	ebx, ebx
	jmp	.label_131
.label_107:
	add	r15, r12
	mov	rcx, rbp
	sub	rcx, r13
	mov	rax, r12
	movabs	rdx, 0x8888888888888889
	mul	rdx
	shr	rdx, 3
	cmp	rcx, rdx
	setbe	bl
	mov	r13, rbp
.label_131:
	mov	edx, 0x4000
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, r14
	call	safe_read
	mov	r12, rax
	mov	bpl, 1
	test	r12, r12
	je	.label_93
	cmp	r12, -1
	je	.label_119
	test	bl, bl
	je	.label_136
	mov	esi, 0xa
	mov	rdi, r14
	mov	rdx, r12
	call	memchr
	test	rax, rax
	mov	rbp, r13
	je	.label_107
	lea	rbx, [rsp + r12 + 0x60]
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_106:
	inc	rax
	inc	rbp
	mov	rdx, rbx
	sub	rdx, rax
	mov	esi, 0xa
	mov	rdi, rax
	call	memchr
	test	rax, rax
	jne	.label_106
	jmp	.label_107
	.section	.text
	.align	16
	#Procedure 0x402d43
	.globl sub_402d43
	.type sub_402d43, @function
sub_402d43:

	nop	word ptr cs:[rax + rax]
.label_136:
	lea	rcx, [r12 - 1]
	mov	eax, r12d
	and	eax, 7
	cmp	rcx, 7
	mov	rsi, r14
	mov	rbp, r13
	jb	.label_145
	mov	rcx, rax
	sub	rcx, r12
	mov	rdx, r14
	mov	rbp, r13
	nop	word ptr [rax + rax]
.label_127:
	xor	esi, esi
	cmp	byte ptr [rdx], 0xa
	sete	sil
	add	rsi, rbp
	xor	edi, edi
	cmp	byte ptr [rdx + 1], 0xa
	sete	dil
	add	rdi, rsi
	xor	esi, esi
	cmp	byte ptr [rdx + 2], 0xa
	sete	sil
	add	rsi, rdi
	xor	edi, edi
	cmp	byte ptr [rdx + 3], 0xa
	sete	dil
	add	rdi, rsi
	xor	esi, esi
	cmp	byte ptr [rdx + 4], 0xa
	sete	sil
	add	rsi, rdi
	xor	edi, edi
	cmp	byte ptr [rdx + 5], 0xa
	sete	dil
	add	rdi, rsi
	xor	ebx, ebx
	cmp	byte ptr [rdx + 6], 0xa
	sete	bl
	add	rbx, rdi
	xor	ebp, ebp
	cmp	byte ptr [rdx + 7], 0xa
	lea	rsi, [rdx + 8]
	sete	bpl
	add	rbp, rbx
	add	rcx, 8
	mov	rdx, rsi
	jne	.label_127
.label_145:
	test	rax, rax
	je	.label_107
	neg	rax
	nop	
.label_89:
	xor	ecx, ecx
	cmp	byte ptr [rsi], 0xa
	lea	rsi, [rsi + 1]
	sete	cl
	add	rbp, rcx
	inc	rax
	jne	.label_89
	jmp	.label_107
.label_92:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	lea	r14, [rsp + 0x60]
	xor	r15d, r15d
	xor	r12d, r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	ebx, ebx
	xor	r13d, r13d
	jmp	.label_98
	.section	.text
	.align	16
	#Procedure 0x402e39
	.globl sub_402e39
	.type sub_402e39, @function
sub_402e39:

	nop	dword ptr [rax]
.label_116:
	mov	qword ptr [rsp + 8], rcx
	mov	r15, qword ptr [rsp + 0x48]
	add	r15, qword ptr [rsp + 0x18]
	lea	r14, [rsp + 0x60]
.label_98:
	mov	edx, 0x4000
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, r14
	call	safe_read
	cmp	rax, -1
	je	.label_120
	mov	bpl, 1
	test	rax, rax
	je	.label_124
	mov	qword ptr [rsp + 0x48], r15
	mov	qword ptr [rsp + 0x18], rax
	mov	r15, rax
	mov	rcx, qword ptr [rsp + 8]
	nop	dword ptr [rax]
.label_140:
	movsx	eax, byte ptr [r14]
	movzx	ebp, al
	add	eax, -9
	cmp	eax, 0x17
	ja	.label_130
	jmp	qword ptr [(rax * 8) + label_135]
.label_531:
	mov	eax, r13d
	and	eax, 7
	neg	rax
	lea	r13, [r13 + rax + 8]
	jmp	.label_104
.label_532:
	inc	qword ptr [rsp + 0x30]
.label_533:
	cmp	r13, rcx
	cmova	rcx, r13
	xor	r13d, r13d
	jmp	.label_104
.label_130:
	mov	qword ptr [rsp + 8], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	test	ah, 0x40
	jne	.label_142
	mov	rcx, qword ptr [rsp + 8]
	jmp	.label_108
.label_534:
	inc	r13
	jmp	.label_104
.label_142:
	inc	r13
	test	ah, 0x20
	jne	.label_101
	mov	edi, ebp
	call	btowc
	cmp	byte ptr [rip + posixly_correct],  0
	je	.label_152
	mov	bl, 1
	mov	rcx, qword ptr [rsp + 8]
	jmp	.label_108
.label_152:
	cmp	eax, 0x202e
	jg	.label_100
	cmp	eax, 0xa0
	je	.label_101
	cmp	eax, 0x2007
	jmp	.label_99
.label_100:
	cmp	eax, 0x202f
	je	.label_101
	cmp	eax, 0x2060
.label_99:
	mov	rcx, qword ptr [rsp + 8]
	je	.label_104
	mov	bl, 1
	jmp	.label_108
.label_101:
	mov	rcx, qword ptr [rsp + 8]
	nop	
.label_104:
	and	bl, 1
	movzx	eax, bl
	add	r12, rax
	xor	ebx, ebx
.label_108:
	inc	r14
	dec	r15
	jne	.label_140
	jmp	.label_116
.label_93:
	xor	r12d, r12d
	xor	r14d, r14d
	mov	eax, dword ptr [rsp + 0x24]
	xor	r8d, r8d
	jmp	.label_103
.label_119:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x40]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_63
	xor	eax, eax
	mov	esi, ebx
	call	error
	xor	r8d, r8d
	xor	r12d, r12d
	xor	r14d, r14d
	xor	ebp, ebp
	mov	eax, dword ptr [rsp + 0x24]
.label_103:
	mov	rbx, r13
	mov	r9, qword ptr [rsp + 0x38]
	jmp	.label_111
.label_121:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x40]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_63
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_144:
	mov	r8, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x28]
	cmp	rax, r8
	cmova	r8, rax
	and	r14b, 1
	movzx	r14d, r14b
	add	r14, qword ptr [rsp + 0x58]
	mov	r9, qword ptr [rsp + 0x38]
	mov	eax, dword ptr [rsp + 0x24]
	mov	r15, qword ptr [rsp + 0x48]
	mov	rbx, qword ptr [rsp + 0x30]
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_111
.label_120:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x40]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_63
	xor	eax, eax
	mov	esi, r14d
	call	error
.label_124:
	mov	r8, qword ptr [rsp + 8]
	cmp	r13, r8
	cmova	r8, r13
	and	bl, 1
	movzx	r14d, bl
	add	r14, r12
	xor	r12d, r12d
	mov	r9, qword ptr [rsp + 0x38]
	mov	eax, dword ptr [rsp + 0x24]
	mov	rbx, qword ptr [rsp + 0x30]
	jmp	.label_111
.label_117:
	mov	rax, qword ptr [rbp + 0x40]
	lea	rcx, [rax + 1]
	movabs	rdx, 0x2000000000000001
	cmp	rax, rdx
	mov	edx, 0x201
	cmovae	rcx, rdx
	test	rax, rax
	cmovle	rcx, rdx
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	xor	r15d, r15d
	test	r14, r14
	js	.label_95
	sub	rbx, rdx
	mov	rbp, rbx
	sub	rbp, r14
	jle	.label_95
	mov	edx, 1
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, rbx
	call	lseek
	xor	r15d, r15d
	test	rax, rax
	cmovns	r15, rbp
.label_95:
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 2
	mov	edi, dword ptr [rsp + 4]
	call	fdadvise
	lea	rbx, [rsp + 0x60]
	jmp	.label_146
	.section	.text
	.align	16
	#Procedure 0x4030e9
	.globl sub_4030e9
	.type sub_4030e9, @function
sub_4030e9:

	nop	dword ptr [rax]
.label_94:
	add	r15, rax
.label_146:
	mov	edx, 0x4000
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, rbx
	call	safe_read
	mov	bpl, 1
	test	rax, rax
	je	.label_90
	cmp	rax, -1
	jne	.label_94
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x40]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_63
	xor	eax, eax
	mov	esi, ebx
	call	error
	xor	r8d, r8d
	mov	eax, r12d
	xor	r12d, r12d
	xor	r14d, r14d
	xor	ebx, ebx
	xor	ebp, ebp
	jmp	.label_125
.label_90:
	mov	eax, r12d
	xor	r12d, r12d
	xor	r14d, r14d
	xor	ebx, ebx
	xor	r8d, r8d
.label_125:
	mov	r9, r13
.label_111:
	movzx	eax, al
	movzx	ecx, byte ptr [rip + print_chars]
	cmp	eax, ecx
	cmovb	r12, r15
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r12
	mov	rcx, r15
	mov	r13, r8
	call	write_counts
	add	qword ptr [rip + total_lines],  rbx
	add	qword ptr [rip + total_words],  r14
	add	qword ptr [rip + total_chars],  r12
	add	qword ptr [rip + total_bytes],  r15
	cmp	r13, qword ptr [rip + max_line_length]
	jbe	.label_128
	mov	qword ptr [rip + max_line_length],  r13
.label_128:
	mov	eax, ebp
	add	rsp, 0x4068
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4031c4
	.globl sub_4031c4
	.type sub_4031c4, @function
sub_4031c4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4031d0

	.globl argv_iter_init_argv
	.type argv_iter_init_argv, @function
argv_iter_init_argv:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x30
	call	malloc
	xor	ecx, ecx
	test	rax, rax
	je	.label_153
	mov	qword ptr [rax], 0
	mov	qword ptr [rax + 0x20], rbx
	mov	qword ptr [rax + 0x28], rbx
	mov	rcx, rax
.label_153:
	mov	rax, rcx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4031fc
	.globl sub_4031fc
	.type sub_4031fc, @function
sub_4031fc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403200

	.globl print_and_abort
	.type print_and_abort, @function
print_and_abort:
	push	rbx
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_62
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_154
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, dword ptr [rip + exit_failure]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x40323b
	.globl sub_40323b
	.type sub_40323b, @function
sub_40323b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403240
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
	je	.label_156
	test	r14, r14
	je	.label_155
.label_156:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_155:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403276
	.globl sub_403276
	.type sub_403276, @function
sub_403276:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403280
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
	#Procedure 0x403298
	.globl sub_403298
	.type sub_403298, @function
sub_403298:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032a0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_157
	test	rdx, rdx
	je	.label_157
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_157:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4032cb
	.globl sub_4032cb
	.type sub_4032cb, @function
sub_4032cb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032d0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4032d8
	.globl sub_4032d8
	.type sub_4032d8, @function
sub_4032d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032e0
	.globl is_basic
	.type is_basic, @function
is_basic:

	mov	eax, edi
	shr	eax, 3
	and	eax, 0x1c
	mov	eax, dword ptr [rax + is_basic_table]
	bt	eax, edi
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4032f5
	.globl sub_4032f5
	.type sub_4032f5, @function
sub_4032f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403300

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
.label_159:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_158
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_159
	cmp	rbx, 0x7ff00001
	jb	.label_158
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_159
.label_158:
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403353
	.globl sub_403353
	.type sub_403353, @function
sub_403353:

	nop	word ptr cs:[rax + rax]
.label_160:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403365
	.globl sub_403365
	.type sub_403365, @function
sub_403365:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40336f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_160
	call	rpl_calloc
	test	rax, rax
	je	.label_160
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403390

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	.section	.text
	.align	16
	#Procedure 0x403395
	.globl sub_403395
	.type sub_403395, @function
sub_403395:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033a0
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
	#Procedure 0x4033d6
	.globl sub_4033d6
	.type sub_4033d6, @function
sub_4033d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033e0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_59]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_60]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_61]
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
	#Procedure 0x40344e
	.globl sub_40344e
	.type sub_40344e, @function
sub_40344e:

	nop	
.label_163:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403455

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_162
	test	rbx, rbx
	jne	.label_162
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_162:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_161
	test	rax, rax
	je	.label_163
.label_161:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403480

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_164
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_166
.label_164:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_166:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_167
	cmp	r10d, 0x29
	jae	.label_176
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_165
.label_176:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_165:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_167
	cmp	r10d, 0x29
	jae	.label_174
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_175
.label_174:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_175:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_167
	cmp	r10d, 0x29
	jae	.label_172
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_173
.label_172:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_173:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_167
	cmp	r10d, 0x29
	jae	.label_170
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_171
.label_170:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_171:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_167
	cmp	r10d, 0x29
	jae	.label_168
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_169
.label_168:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_169:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_167
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_167
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_167
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_167
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_167:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x403662
	.globl sub_403662
	.type sub_403662, @function
sub_403662:

	nop	word ptr cs:[rax + rax]
.label_177:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403675
	.globl sub_403675
	.type sub_403675, @function
sub_403675:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40367d
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
	je	.label_177
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
	.section	.text
	.align	16
	#Procedure 0x4036e0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1d8
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_9
	call	setlocale
	mov	edi, OFFSET FLAT:label_222
	mov	esi, OFFSET FLAT:label_223
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_222
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	call	getpagesize
	cdqe	
	mov	qword ptr [rip + page_size],  rax
	mov	rdi, qword ptr [rip + stdout]
	xor	r13d, r13d
	xor	esi, esi
	mov	edx, 1
	xor	ecx, ecx
	call	setvbuf
	mov	edi, OFFSET FLAT:label_233
	call	getenv
	test	rax, rax
	setne	byte ptr [rip + posixly_correct]
	mov	byte ptr [rip + print_bytes],  0
	mov	byte ptr [rip + print_chars],  0
	mov	byte ptr [rip + print_words],  0
	mov	byte ptr [rip + print_lines],  0
	mov	byte ptr [rip + print_linelength],  0
	mov	qword ptr [rip + max_line_length],  0
	mov	qword ptr [rip + total_bytes],  0
	mov	qword ptr [rip + total_chars],  0
	mov	qword ptr [rip + total_words],  0
	mov	qword ptr [rip + total_lines],  0
	jmp	.label_179
.label_576:
	mov	byte ptr [rip + print_linelength],  1
	nop	dword ptr [rax]
.label_179:
	mov	edx, OFFSET FLAT:label_253
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, 0x4b
	jle	.label_255
	add	eax, -0x4c
	cmp	eax, 0x34
	ja	.label_224
	jmp	qword ptr [(rax * 8) + label_259]
.label_577:
	mov	byte ptr [rip + print_bytes],  1
	jmp	.label_179
.label_580:
	mov	byte ptr [rip + print_words],  1
	jmp	.label_179
.label_581:
	mov	r13, qword ptr [rip + optarg]
	jmp	.label_179
.label_578:
	mov	byte ptr [rip + print_lines],  1
	jmp	.label_179
.label_579:
	mov	byte ptr [rip + print_chars],  1
	jmp	.label_179
.label_255:
	cmp	eax, -1
	jne	.label_187
	mov	al, byte ptr [rip + print_lines]
	test	al, al
	jne	.label_189
	mov	al, byte ptr [rip + print_words]
	test	al, al
	jne	.label_189
	mov	al, byte ptr [rip + print_chars]
	test	al, al
	jne	.label_189
	mov	al, byte ptr [rip + print_bytes]
	test	al, al
	jne	.label_189
	mov	al, byte ptr [rip + print_linelength]
	test	al, al
	jne	.label_189
	mov	byte ptr [rip + print_bytes],  1
	mov	byte ptr [rip + print_words],  1
	mov	byte ptr [rip + print_lines],  1
.label_189:
	movsxd	rax, dword ptr [rip + optind]
	test	r13, r13
	je	.label_199
	cmp	eax, ebp
	jl	.label_204
	cmp	byte ptr [r13], 0x2d
	jne	.label_205
	cmp	byte ptr [r13 + 1], 0
	je	.label_206
.label_205:
	mov	esi, OFFSET FLAT:label_209
	mov	rdi, r13
	call	fopen
	mov	rbx, rax
	test	rbx, rbx
	je	.label_212
.label_251:
	mov	rdi, rbx
	call	fileno
	lea	rdx, [rsp + 0x28]
	mov	edi, 1
	mov	esi, eax
	call	__fxstat
	test	eax, eax
	jne	.label_202
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x40]
	cmp	eax, 0x8000
	jne	.label_202
	mov	rax, qword ptr [rsp + 0x58]
	cvtsi2sd	xmm0, rax
	movsd	qword ptr [rsp + 8], xmm0
	call	physmem_available
	movapd	xmm1, xmm0
	mulsd	xmm1, qword ptr [rip + label_218]
	movsd	xmm0, qword ptr [rip + label_219]
	ucomisd	xmm1, xmm0
	ja	.label_220
	call	physmem_available
	mulsd	xmm0, qword ptr [rip + label_218]
.label_220:
	ucomisd	xmm0, qword ptr [rsp + 8]
	jae	.label_230
.label_202:
	mov	rdi, rbx
	call	argv_iter_init_stream
	mov	r15, rax
	xor	edx, edx
	xor	r14d, r14d
	xor	ebx, ebx
	jmp	.label_217
.label_199:
	sub	ebp, eax
	lea	rax, [rbx + rax*8]
	mov	r14d, OFFSET FLAT:main.stdin_only
	cmovg	r14, rax
	movsxd	rax, ebp
	mov	ebx, 1
	cmovg	rbx, rax
	mov	rdi, r14
	call	argv_iter_init_argv
	mov	r15, rax
	xor	edx, edx
.label_217:
	test	r15, r15
	je	.label_240
	test	rbx, rbx
	mov	eax, 1
	cmovne	rax, rbx
	movabs	rcx, 0xd79435e50d7944
	cmp	rax, rcx
	jae	.label_240
	mov	qword ptr [rsp + 0x20], rdx
	imul	rdi, rax, 0x98
	call	xmalloc
	mov	qword ptr [rsp + 8], rax
	test	rbx, rbx
	mov	qword ptr [rsp + 0x10], rbx
	je	.label_244
	cmp	rbx, 1
	jne	.label_248
	movzx	eax, byte ptr [rip + print_lines]
	movzx	ecx, byte ptr [rip + print_words]
	add	ecx, eax
	movzx	eax, byte ptr [rip + print_chars]
	add	eax, ecx
	movzx	ecx, byte ptr [rip + print_bytes]
	add	ecx, eax
	movzx	eax, byte ptr [rip + print_linelength]
	add	eax, ecx
	cmp	eax, 1
	jne	.label_248
.label_244:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 1
	jmp	.label_257
.label_248:
	mov	rax, qword ptr [rsp + 8]
	lea	rbp, [rax + 8]
	nop	word ptr cs:[rax + rax]
.label_193:
	mov	rsi, qword ptr [r14]
	test	rsi, rsi
	je	.label_181
	cmp	byte ptr [rsi], 0x2d
	jne	.label_183
	cmp	byte ptr [rsi + 1], 0
	je	.label_181
.label_183:
	mov	edi, 1
	mov	rdx, rbp
	call	__xstat
	jmp	.label_188
	.section	.text
	.align	16
	#Procedure 0x403a32
	.globl sub_403a32
	.type sub_403a32, @function
sub_403a32:

	nop	word ptr cs:[rax + rax]
.label_181:
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rbp
	call	__fxstat
.label_188:
	mov	dword ptr [rbp - 8], eax
	add	rbp, 0x98
	add	r14, 8
	dec	rbx
	jne	.label_193
.label_257:
	mov	edi, 1
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_192
	mov	rax, qword ptr [rsp + 8]
	mov	ebp, dword ptr [rax]
	test	ebp, ebp
	jg	.label_192
	mov	rax, qword ptr [rsp + 8]
	lea	rax, [rax + 0x20]
	mov	esi, 1
	xor	ecx, ecx
	mov	edx, 0xf000
	mov	rdi, qword ptr [rsp + 0x10]
	jmp	.label_200
	.section	.text
	.align	16
	#Procedure 0x403a9e
	.globl sub_403a9e
	.type sub_403a9e, @function
sub_403a9e:

	nop	
.label_215:
	mov	ebp, dword ptr [rax + 0x78]
	add	rax, 0x98
.label_200:
	test	ebp, ebp
	jne	.label_210
	mov	ebp, dword ptr [rax]
	and	ebp, edx
	cmp	ebp, 0x8000
	jne	.label_211
	add	rcx, qword ptr [rax + 0x18]
	jmp	.label_210
.label_211:
	mov	esi, 7
	nop	word ptr cs:[rax + rax]
.label_210:
	dec	rdi
	jne	.label_215
	mov	edi, 1
	cmp	rcx, 0xa
	jb	.label_214
	mov	edi, 1
	movabs	rbp, 0xcccccccccccccccd
	nop	
.label_216:
	inc	edi
	mov	rax, rcx
	mul	rbp
	shr	rdx, 3
	cmp	rcx, 0x63
	mov	rcx, rdx
	ja	.label_216
.label_214:
	cmp	edi, esi
	cmovl	edi, esi
.label_192:
	mov	dword ptr [rip + number_width],  edi
	lea	rsi, [rsp + 0x28]
	mov	rdi, r15
	call	argv_iter
	mov	rbx, rax
	mov	r14b, 1
	test	rbx, rbx
	mov	qword ptr [rsp + 0x18], r15
	mov	rbp, qword ptr [rsp + 0x10]
	je	.label_225
	mov	r14b, 1
	xor	r12d, r12d
	jmp	.label_231
.label_250:
	xor	eax, eax
	jmp	.label_232
.label_203:
	mov	byte ptr [rip + have_read_stdin],  1
	xor	edi, edi
	mov	rcx, -1
	mov	rsi, rbx
	mov	rdx, rbp
	call	wc
	mov	bpl, al
	jmp	.label_191
.label_252:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_236
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
	mov	rbp, qword ptr [rsp + 0x10]
	call	error
	mov	al, 1
	jmp	.label_249
	.section	.text
	.align	16
	#Procedure 0x403ba3
	.globl sub_403ba3
	.type sub_403ba3, @function
sub_403ba3:

	nop	word ptr cs:[rax + rax]
.label_231:
	test	r13, r13
	je	.label_246
	cmp	byte ptr [r13], 0x2d
	jne	.label_246
	cmp	byte ptr [r13 + 1], 0
	jne	.label_246
	movzx	ecx, byte ptr [rbx]
	cmp	cl, 0x2d
	jne	.label_250
	cmp	byte ptr [rbx + 1], 0
	je	.label_252
	nop	word ptr cs:[rax + rax]
.label_246:
	xor	eax, eax
.label_249:
	movzx	ecx, byte ptr [rbx]
.label_232:
	test	cl, cl
	je	.label_254
	test	al, al
	je	.label_256
	xor	r14d, r14d
	jmp	.label_195
	.section	.text
	.align	16
	#Procedure 0x403bf9
	.globl sub_403bf9
	.type sub_403bf9, @function
sub_403bf9:

	nop	dword ptr [rax]
.label_254:
	test	r13, r13
	je	.label_178
	mov	rdi, r15
	call	argv_iter_n_args
	mov	r15, rax
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r13
	call	quotearg_n_style_colon
	mov	rbp, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_184
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_190
	xor	eax, eax
	mov	rcx, rbp
	mov	rbp, qword ptr [rsp + 0x10]
	mov	r8, r15
	mov	r15, qword ptr [rsp + 0x18]
	mov	r9, rbx
	call	error
	jmp	.label_195
	.section	.text
	.align	16
	#Procedure 0x403c65
	.globl sub_403c65
	.type sub_403c65, @function
sub_403c65:

	nop	word ptr cs:[rax + rax]
.label_256:
	test	rbp, rbp
	mov	rax, r12
	cmove	rax, rbp
	imul	rbp, rax, 0x98
	add	rbp, qword ptr [rsp + 8]
	cmp	cl, 0x2d
	jne	.label_196
	cmp	byte ptr [rbx + 1], 0
	je	.label_203
.label_196:
	xor	esi, esi
	xor	eax, eax
	mov	rdi, rbx
	call	open
	mov	r15d, eax
	cmp	r15d, -1
	je	.label_208
	xor	ecx, ecx
	mov	edi, r15d
	mov	rsi, rbx
	mov	rdx, rbp
	call	wc
	mov	bpl, al
	mov	edi, r15d
	call	close
	test	eax, eax
	je	.label_207
.label_208:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_63
	xor	eax, eax
	mov	esi, r15d
	call	error
.label_207:
	mov	r15, qword ptr [rsp + 0x18]
.label_191:
	and	r14b, bpl
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_195
.label_178:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_184
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_63
	xor	eax, eax
	call	error
	nop	dword ptr [rax]
.label_195:
	test	rbp, rbp
	jne	.label_229
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 1
.label_229:
	inc	r12
	mov	rdi, r15
	lea	rsi, [rsp + 0x28]
	call	argv_iter
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_231
.label_225:
	mov	eax, dword ptr [rsp + 0x28]
	cmp	eax, 2
	je	.label_234
	cmp	eax, 4
	jne	.label_235
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_241
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r13
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_245
.label_234:
	test	r13, r13
	jne	.label_245
	test	r14b, r14b
	mov	rbx, qword ptr [rsp + 0x20]
	je	.label_247
	mov	rdi, r15
	call	argv_iter_n_args
	test	rax, rax
	jne	.label_247
	mov	byte ptr [rip + have_read_stdin],  1
	xor	edi, edi
	xor	esi, esi
	mov	rcx, -1
	mov	rdx, qword ptr [rsp + 8]
	call	wc
	and	al, r14b
	mov	r14b, al
	jmp	.label_247
.label_245:
	mov	rbx, qword ptr [rsp + 0x20]
.label_247:
	test	bl, bl
	je	.label_258
	lea	rdi, [rsp + 0xb8]
	call	readtokens0_free
.label_258:
	mov	rdi, r15
	call	argv_iter_n_args
	cmp	rax, 2
	jb	.label_180
	mov	rbx, qword ptr [rip + total_lines]
	mov	rbp, qword ptr [rip + total_words]
	mov	r15, qword ptr [rip + total_chars]
	mov	r12, qword ptr [rip + total_bytes]
	mov	r13, qword ptr [rip + max_line_length]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
	mov	edx, 5
	call	dcgettext
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r15
	mov	r15, qword ptr [rsp + 0x18]
	mov	rcx, r12
	mov	r8, r13
	mov	r9, rax
	call	write_counts
.label_180:
	mov	rdi, r15
	call	argv_iter_free
	mov	rdi, qword ptr [rsp + 8]
	call	free
	cmp	byte ptr [rip + have_read_stdin],  1
	jne	.label_198
	xor	edi, edi
	call	close
	test	eax, eax
	jne	.label_201
.label_198:
	not	r14b
	and	r14b, 1
	movzx	eax, r14b
	add	rsp, 0x1d8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_206:
	mov	rbx, qword ptr [rip + stdin]
	jmp	.label_251
.label_230:
	lea	rbp, [rsp + 0xb8]
	mov	rdi, rbp
	call	readtokens0_init
	mov	rdi, rbx
	mov	rsi, rbp
	call	readtokens0
	test	al, al
	je	.label_213
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_213
	mov	rbx, qword ptr [rsp + 0xb8]
	mov	r14, qword ptr [rsp + 0xc0]
	mov	rdi, r14
	call	argv_iter_init_argv
	mov	r15, rax
	mov	dl, 1
	jmp	.label_217
.label_187:
	cmp	eax, 0xffffff7d
	je	.label_221
	cmp	eax, 0xffffff7e
	jne	.label_224
	xor	edi, edi
	call	usage
.label_221:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_226
	mov	edx, OFFSET FLAT:label_15
	mov	r8d, OFFSET FLAT:label_227
	mov	r9d, OFFSET FLAT:label_228
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_224:
	mov	edi, 1
	call	usage
.label_240:
	call	xalloc_die
.label_235:
	cmp	eax, 3
	jne	.label_197
	call	xalloc_die
.label_204:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_242
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rsi, qword ptr [rbx + rax*8]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_185
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_154
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, 1
	call	usage
.label_212:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_243
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_201:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_186
	xor	eax, eax
	call	error
.label_197:
	mov	edi, OFFSET FLAT:label_237
	mov	esi, OFFSET FLAT:label_238
	mov	edx, 0x33f
	mov	ecx, OFFSET FLAT:label_239
	call	__assert_fail
.label_213:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_194
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	dword ptr [rax + rax]
.label_261:
	mov	ecx, 1
.label_260:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x4040a0
	.globl sub_4040a0
	.type sub_4040a0, @function
sub_4040a0:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040a5

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_261
	test	rsi, rsi
	mov	ecx, 1
	je	.label_260
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_260
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4040e0
	.globl mb_copy
	.type mb_copy, @function
mb_copy:

	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [rbx]
	lea	rax, [rbx + 0x18]
	cmp	rsi, rax
	jne	.label_262
	lea	r15, [r14 + 0x18]
	mov	rdx, qword ptr [rbx + 8]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_262:
	mov	qword ptr [r14], rsi
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [r14 + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	test	al, al
	mov	byte ptr [r14 + 0x10], al
	je	.label_263
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x14], eax
.label_263:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40412f
	.globl sub_40412f
	.type sub_40412f, @function
sub_40412f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404130

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_265
	cmp	byte ptr [rax], 0x43
	jne	.label_267
	cmp	byte ptr [rax + 1], 0
	je	.label_264
.label_267:
	mov	esi, OFFSET FLAT:label_266
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_265
.label_264:
	xor	ebx, ebx
.label_265:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404161
	.globl sub_404161
	.type sub_404161, @function
sub_404161:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404170
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
	#Procedure 0x404189
	.globl sub_404189
	.type sub_404189, @function
sub_404189:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404190

	.globl readtokens0
	.type readtokens0, @function
readtokens0:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	call	fgetc
	mov	ebp, eax
	cmp	ebp, -1
	je	.label_274
	lea	r12, [rbx + 0x30]
	lea	r15, [rbx + 0x18]
	nop	word ptr cs:[rax + rax]
.label_277:
	mov	rax, qword ptr [rbx + 0x30]
	cmp	qword ptr [rbx + 0x38], rax
	jne	.label_268
	mov	esi, 1
	mov	rdi, r15
	call	_obstack_newchunk
	mov	rax, qword ptr [r12]
.label_268:
	lea	rcx, [rax + 1]
	mov	qword ptr [r12], rcx
	mov	byte ptr [rax], bpl
	test	ebp, ebp
	jne	.label_278
	mov	rdi, rbx
	call	save_token
.label_278:
	mov	rdi, r14
	call	fgetc
	mov	ebp, eax
	cmp	ebp, -1
	jne	.label_277
	jmp	.label_269
.label_274:
	lea	r15, [rbx + 0x18]
	lea	r12, [rbx + 0x30]
.label_269:
	mov	rax, qword ptr [rbx + 0x30]
	cmp	rax, qword ptr [rbx + 0x28]
	je	.label_270
	cmp	qword ptr [rbx + 0x38], rax
	jne	.label_272
	mov	esi, 1
	mov	rdi, r15
	call	_obstack_newchunk
	mov	rax, qword ptr [r12]
.label_272:
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x30], rcx
	mov	byte ptr [rax], 0
	mov	rdi, rbx
	call	save_token
.label_270:
	mov	rax, qword ptr [rbx + 0x88]
	mov	rcx, qword ptr [rbx + 0x90]
	sub	rcx, rax
	cmp	rcx, 8
	jae	.label_279
	lea	rdi, [rbx + 0x70]
	mov	esi, 8
	call	_obstack_newchunk
	mov	rax, qword ptr [rbx + 0x88]
.label_279:
	mov	qword ptr [rax], 0
	mov	rdx, qword ptr [rbx + 0x88]
	add	rdx, 8
	mov	qword ptr [rbx + 0x88], rdx
	mov	rax, qword ptr [rbx + 0x80]
	cmp	rdx, rax
	jne	.label_275
	or	byte ptr [rbx + 0xc0], 2
.label_275:
	mov	rcx, qword ptr [rbx + 0xa0]
	add	rdx, rcx
	not	rcx
	and	rcx, rdx
	mov	qword ptr [rbx + 0x88], rcx
	mov	rsi, qword ptr [rbx + 0x78]
	mov	rbp, qword ptr [rbx + 0x90]
	mov	rdi, rcx
	sub	rdi, rsi
	mov	rdx, rbp
	sub	rdx, rsi
	cmp	rdi, rdx
	jbe	.label_273
	mov	qword ptr [rbx + 0x88], rbp
	mov	rcx, rbp
.label_273:
	mov	qword ptr [rbx + 0x80], rcx
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rbx + 0xd8]
	mov	rdx, qword ptr [rbx + 0xe0]
	cmp	rdx, rax
	jne	.label_271
	or	byte ptr [rbx + 0x118], 2
.label_271:
	mov	rcx, qword ptr [rbx + 0xf8]
	add	rdx, rcx
	not	rcx
	and	rcx, rdx
	mov	qword ptr [rbx + 0xe0], rcx
	mov	rsi, qword ptr [rbx + 0xd0]
	mov	rbp, qword ptr [rbx + 0xe8]
	mov	rdi, rcx
	sub	rdi, rsi
	mov	rdx, rbp
	sub	rdx, rsi
	cmp	rdi, rdx
	jbe	.label_276
	mov	qword ptr [rbx + 0xe0], rbp
	mov	rcx, rbp
.label_276:
	mov	qword ptr [rbx + 0xd8], rcx
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, r14
	call	ferror
	test	eax, eax
	sete	al
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40435a
	.globl sub_40435a
	.type sub_40435a, @function
sub_40435a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
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
	.align	16
	#Procedure 0x404378
	.globl sub_404378
	.type sub_404378, @function
sub_404378:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404380

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
	je	.label_280
	cmp	r15, -2
	jb	.label_280
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_280
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_280:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4043d6
	.globl sub_4043d6
	.type sub_4043d6, @function
sub_4043d6:

	nop	word ptr cs:[rax + rax]
.label_281:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4043e5
	.globl sub_4043e5
	.type sub_4043e5, @function
sub_4043e5:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4043e9
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_59]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_60]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_61]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_281
	test	rsi, rsi
	je	.label_281
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
.label_287:
	test	rcx, rcx
	jne	.label_285
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_285:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_284
.label_286:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_282
	test	rbx, rbx
	jne	.label_282
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40449c
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_287
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_283
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_286
.label_284:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4044ce
	.globl sub_4044ce
	.type sub_4044ce, @function
sub_4044ce:

	nop	word ptr [rax + rax]
.label_282:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_288
	test	rax, rax
	je	.label_283
.label_288:
	pop	rbx
	ret	
.label_283:
	call	xalloc_die
.label_289:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4044f5
	.globl sub_4044f5
	.type sub_4044f5, @function
sub_4044f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404500

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
	je	.label_289
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
	#Procedure 0x404590

	.globl readtokens0_init
	.type readtokens0_init, @function
readtokens0_init:
	push	rbx
	mov	rbx, rdi
	lea	rdi, [rbx + 0x18]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
	xor	esi, esi
	xor	edx, edx
	mov	ecx, OFFSET FLAT:malloc
	mov	r8d, OFFSET FLAT:free
	call	_obstack_begin
	lea	rdi, [rbx + 0x70]
	xor	esi, esi
	xor	edx, edx
	mov	ecx, OFFSET FLAT:malloc
	mov	r8d, OFFSET FLAT:free
	call	_obstack_begin
	add	rbx, 0xc8
	xor	esi, esi
	xor	edx, edx
	mov	ecx, OFFSET FLAT:malloc
	mov	r8d, OFFSET FLAT:free
	mov	rdi, rbx
	pop	rbx
	jmp	_obstack_begin
	.section	.text
	.align	16
	#Procedure 0x4045f1
	.globl sub_4045f1
	.type sub_4045f1, @function
sub_4045f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404600
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
	#Procedure 0x40460f
	.globl sub_40460f
	.type sub_40460f, @function
sub_40460f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404610
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_59]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_60]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_61]
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
	#Procedure 0x404664
	.globl sub_404664
	.type sub_404664, @function
sub_404664:

	nop	word ptr cs:[rax + rax]
.label_290:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404675
	.globl sub_404675
	.type sub_404675, @function
sub_404675:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40467b
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_59]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_60]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_61]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_290
	test	rdx, rdx
	je	.label_290
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_292:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4046e5
	.globl sub_4046e5
	.type sub_4046e5, @function
sub_4046e5:

	nop	dword ptr [rax + rax]
.label_293:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_291
	test	rax, rax
	je	.label_292
.label_291:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404701
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_292
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_293
	test	rbx, rbx
	jne	.label_293
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404730
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_59]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_60]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_61]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_294
	test	rdx, rdx
	je	.label_294
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_294:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40479e
	.globl sub_40479e
	.type sub_40479e, @function
sub_40479e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4047a0
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
	#Procedure 0x404815
	.globl sub_404815
	.type sub_404815, @function
sub_404815:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404820

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
	je	.label_307
	mov	edx, OFFSET FLAT:label_298
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_304
.label_307:
	mov	edx, OFFSET FLAT:label_305
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_304:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_309
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
	mov	esi, OFFSET FLAT:label_306
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_310
	jmp	qword ptr [(r12 * 8) + label_311]
.label_600:
	add	rsp, 8
	jmp	.label_297
.label_310:
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
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_297
.label_601:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_296
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
.label_602:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_302
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
.label_603:
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
.label_604:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_313
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
	jmp	.label_297
.label_605:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_312
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
	jmp	.label_297
.label_606:
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
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_297
.label_607:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_300
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
	jmp	.label_297
.label_609:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_303
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
	jmp	.label_297
.label_608:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_308
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
.label_297:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404b78
	.globl sub_404b78
	.type sub_404b78, @function
sub_404b78:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b80
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
	#Procedure 0x404c41
	.globl sub_404c41
	.type sub_404c41, @function
sub_404c41:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c50

	.globl argv_iter_init_stream
	.type argv_iter_init_stream, @function
argv_iter_init_stream:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x30
	call	malloc
	xor	ecx, ecx
	test	rax, rax
	je	.label_314
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 0x18], xmm0
	movups	xmmword ptr [rax + 8], xmm0
	mov	rcx, rax
.label_314:
	mov	rax, rcx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c7b
	.globl sub_404c7b
	.type sub_404c7b, @function
sub_404c7b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c80
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
	je	.label_315
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
.label_315:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404ce1
	.globl sub_404ce1
	.type sub_404ce1, @function
sub_404ce1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404cf0

	.globl _obstack_begin_1
	.type _obstack_begin_1, @function
_obstack_begin_1:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdi
	mov	qword ptr [rbx + 0x38], rcx
	mov	qword ptr [rbx + 0x40], r8
	mov	qword ptr [rbx + 0x48], r9
	or	byte ptr [rbx + 0x50], 1
	test	rdx, rdx
	mov	r14d, 0x10
	cmovne	r14, rdx
	test	rsi, rsi
	mov	eax, 0xfe0
	cmovne	rax, rsi
	mov	qword ptr [rbx], rax
	lea	r15, [r14 - 1]
	mov	qword ptr [rbx + 0x30], r15
	mov	rdi, r9
	mov	rsi, rax
	call	rcx
	mov	qword ptr [rbx + 8], rax
	test	rax, rax
	je	.label_316
	lea	rcx, [rax + r15 + 0x10]
	neg	r14
	and	r14, rcx
	mov	qword ptr [rbx + 0x10], r14
	mov	qword ptr [rbx + 0x18], r14
	mov	rcx, qword ptr [rbx]
	add	rcx, rax
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x20], rcx
	mov	qword ptr [rax + 8], 0
	and	byte ptr [rbx + 0x50], 0xf9
	mov	eax, 1
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_316:
	call	qword ptr [rip + obstack_alloc_failed_handler]
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d80
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x404d8e
	.globl sub_404d8e
	.type sub_404d8e, @function
sub_404d8e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404d90

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
	js	.label_320
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_323
	cmp	r12d, 0x7fffffff
	je	.label_318
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
	jne	.label_321
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_321:
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
.label_323:
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
	jbe	.label_319
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_322
.label_319:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_317
	mov	rdi, r14
	call	free
.label_317:
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
.label_322:
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
.label_320:
	call	abort
.label_318:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404f4d
	.globl sub_404f4d
	.type sub_404f4d, @function
sub_404f4d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404f50

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_324
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_324
	test	byte ptr [rbx + 1], 1
	je	.label_324
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_324:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x404f83
	.globl sub_404f83
	.type sub_404f83, @function
sub_404f83:

	nop	word ptr cs:[rax + rax]
.label_325:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404f92
	.globl sub_404f92
	.type sub_404f92, @function
sub_404f92:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404f95
	.globl fadvise
	.type fadvise, @function
fadvise:

	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_325
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_327:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_326
	call	__errno_location
	mov	dword ptr [rax], 0
.label_326:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404fcb

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
	jne	.label_327
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_326
	test	cl, cl
	jne	.label_326
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_326
	.section	.text
	.align	16
	#Procedure 0x405010

	.globl readtokens0_free
	.type readtokens0_free, @function
readtokens0_free:
	push	rbx
	mov	rbx, rdi
	lea	rdi, [rbx + 0x18]
	xor	esi, esi
	call	_obstack_free
	lea	rdi, [rbx + 0x70]
	xor	esi, esi
	call	_obstack_free
	add	rbx, 0xc8
	xor	esi, esi
	mov	rdi, rbx
	pop	rbx
	jmp	_obstack_free
	.section	.text
	.align	16
	#Procedure 0x40503c
	.globl sub_40503c
	.type sub_40503c, @function
sub_40503c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405040

	.globl _obstack_free
	.type _obstack_free, @function
_obstack_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	mov	rsi, qword ptr [r15 + 8]
	test	rsi, rsi
	je	.label_328
	nop	word ptr cs:[rax + rax]
.label_331:
	cmp	rsi, r14
	jae	.label_329
	cmp	qword ptr [rsi], r14
	jae	.label_330
.label_329:
	mov	rbx, qword ptr [rsi + 8]
	test	byte ptr [r15 + 0x50], 1
	jne	.label_334
	mov	rdi, rsi
	call	qword ptr [r15 + 0x40]
	jmp	.label_333
	.section	.text
	.align	16
	#Procedure 0x40507e
	.globl sub_40507e
	.type sub_40507e, @function
sub_40507e:

	nop	
.label_330:
	mov	qword ptr [r15 + 0x18], r14
	mov	qword ptr [r15 + 0x10], r14
	mov	rax, qword ptr [rsi]
	mov	qword ptr [r15 + 0x20], rax
	mov	qword ptr [r15 + 8], rsi
.label_332:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x405099
	.globl sub_405099
	.type sub_405099, @function
sub_405099:

	nop	dword ptr [rax + rax]
.label_334:
	mov	rdi, qword ptr [r15 + 0x48]
	call	qword ptr [r15 + 0x40]
.label_333:
	or	byte ptr [r15 + 0x50], 2
	test	rbx, rbx
	mov	rsi, rbx
	jne	.label_331
.label_328:
	test	r14, r14
	je	.label_332
	call	abort
.label_338:
	mov	rcx, qword ptr [rcx + 8]
.label_335:
	test	rcx, rcx
	je	.label_336
	cmp	rcx, rsi
	jae	.label_338
	mov	eax, 1
	cmp	qword ptr [rcx], rsi
	jb	.label_338
	jmp	.label_337
.label_336:
	xor	eax, eax
.label_337:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4050dd
	.globl sub_4050dd
	.type sub_4050dd, @function
sub_4050dd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4050e0

	.globl _obstack_allocated_p
	.type _obstack_allocated_p, @function
_obstack_allocated_p:
	mov	rcx, qword ptr [rdi + 8]
	jmp	.label_335
	.section	.text
	.align	16
	#Procedure 0x4050e6
	.globl sub_4050e6
	.type sub_4050e6, @function
sub_4050e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050f0
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
	#Procedure 0x405123
	.globl sub_405123
	.type sub_405123, @function
sub_405123:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405130
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_339
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_341:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_341
.label_339:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_343
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_342], OFFSET FLAT:slot0
.label_343:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_340
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_340:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4051c1
	.globl sub_4051c1
	.type sub_4051c1, @function
sub_4051c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051d0

	.globl _obstack_begin
	.type _obstack_begin, @function
_obstack_begin:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	qword ptr [r14 + 0x38], rcx
	mov	qword ptr [r14 + 0x40], r8
	and	byte ptr [r14 + 0x50], 0xfe
	test	rdx, rdx
	mov	ebx, 0x10
	cmovne	rbx, rdx
	test	rsi, rsi
	mov	edi, 0xfe0
	cmovne	rdi, rsi
	mov	qword ptr [r14], rdi
	lea	r15, [rbx - 1]
	mov	qword ptr [r14 + 0x30], r15
	call	rcx
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_344
	lea	rcx, [rax + r15 + 0x10]
	neg	rbx
	and	rbx, rcx
	mov	qword ptr [r14 + 0x10], rbx
	mov	qword ptr [r14 + 0x18], rbx
	mov	rcx, qword ptr [r14]
	add	rcx, rax
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x20], rcx
	mov	qword ptr [rax + 8], 0
	and	byte ptr [r14 + 0x50], 0xf9
	mov	eax, 1
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_344:
	call	qword ptr [rip + obstack_alloc_failed_handler]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405260
	.globl physmem_total
	.type physmem_total, @function
physmem_total:

	push	rbx
	sub	rsp, 0x70
	mov	edi, 0x55
	call	sysconf
	mov	rbx, rax
	mov	edi, 0x1e
	call	sysconf
	mov	rcx, rax
	or	rcx, rbx
	js	.label_346
	cvtsi2sd	xmm1, rax
	cvtsi2sd	xmm0, rbx
.label_345:
	mulsd	xmm0, xmm1
	jmp	.label_348
.label_346:
	lea	rdi, [rsp]
	call	sysinfo
	test	eax, eax
	je	.label_347
	movsd	xmm0, qword ptr [rip + label_53]
.label_348:
	add	rsp, 0x70
	pop	rbx
	ret	
.label_347:
	movq	xmm0, qword ptr [rsp + 0x20]
	punpckldq	xmm0, xmmword ptr [rip + label_50]
	subpd	xmm0, xmmword ptr [rip + label_51]
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	mov	eax, dword ptr [rsp + 0x68]
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	jmp	.label_345
	.section	.text
	.align	16
	#Procedure 0x4052dc
	.globl sub_4052dc
	.type sub_4052dc, @function
sub_4052dc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4052e0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_354
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_357
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
	mov	esi, OFFSET FLAT:label_356
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_353
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_359
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_361
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_358
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_363
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_352
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
	je	.label_350
	mov	esi, OFFSET FLAT:label_351
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_350
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_362
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_350:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_360
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_16
	mov	ecx, OFFSET FLAT:label_226
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_364
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_226
	mov	ecx, OFFSET FLAT:label_349
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_354:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_355
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
	#Procedure 0x4054de
	.globl sub_4054de
	.type sub_4054de, @function
sub_4054de:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4054e0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_365
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_366
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_369
	call	free
	xor	eax, eax
	jmp	.label_367
.label_368:
	call	xalloc_die
.label_365:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_368
	mov	qword ptr [rsi], rbx
.label_369:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_367
	test	rax, rax
	je	.label_368
.label_367:
	pop	rbx
	ret	
.label_366:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405544
	.globl sub_405544
	.type sub_405544, @function
sub_405544:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405550
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_59]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_60]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_61]
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
	#Procedure 0x4055bf
	.globl sub_4055bf
	.type sub_4055bf, @function
sub_4055bf:

	nop	
.label_370:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4055c5
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_59]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_60]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_61]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_370
	test	rsi, rsi
	je	.label_370
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x405630

	.globl _obstack_newchunk
	.type _obstack_newchunk, @function
_obstack_newchunk:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdi
	mov	rcx, qword ptr [r12]
	mov	r14, qword ptr [r12 + 0x18]
	sub	r14, qword ptr [r12 + 0x10]
	lea	rdx, [r14 + rsi]
	add	rdx, qword ptr [r12 + 0x30]
	setb	al
	mov	rbx, r14
	shr	rbx, 3
	add	rbx, 0x64
	add	rbx, rdx
	cmovb	rbx, rdx
	cmp	rbx, rcx
	cmovb	rbx, rcx
	add	rsi, r14
	jb	.label_372
	test	al, al
	jne	.label_372
	mov	r15, qword ptr [r12 + 8]
	test	byte ptr [r12 + 0x50], 1
	jne	.label_371
	mov	rdi, rbx
	call	qword ptr [r12 + 0x38]
	jmp	.label_375
.label_371:
	mov	rdi, qword ptr [r12 + 0x48]
	mov	rsi, rbx
	call	qword ptr [r12 + 0x38]
.label_375:
	mov	r13, rax
	test	r13, r13
	je	.label_372
	mov	qword ptr [r12 + 8], r13
	mov	qword ptr [r13 + 8], r15
	add	rbx, r13
	mov	qword ptr [r12 + 0x20], rbx
	mov	qword ptr [r13], rbx
	mov	rsi, qword ptr [r12 + 0x10]
	mov	rbp, qword ptr [r12 + 0x30]
	lea	rbx, [rbp + r13 + 0x10]
	mov	qword ptr [rsp + 8], r15
	mov	r15, rbp
	not	r15
	and	rbx, r15
	mov	rdi, rbx
	mov	qword ptr [rsp + 0x10], rsi
	mov	rdx, r14
	call	memcpy
	test	byte ptr [r12 + 0x50], 2
	jne	.label_374
	mov	rax, qword ptr [rsp + 8]
	lea	rax, [rbp + rax + 0x10]
	and	rax, r15
	cmp	qword ptr [rsp + 0x10], rax
	jne	.label_374
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, rax
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [r13 + 8], rax
	test	byte ptr [r12 + 0x50], 1
	mov	rsi, rcx
	jne	.label_373
	mov	rdi, rsi
	call	qword ptr [r12 + 0x40]
	jmp	.label_374
.label_372:
	call	qword ptr [rip + obstack_alloc_failed_handler]
	nop	word ptr [rax + rax]
.label_373:
	mov	rdi, qword ptr [r12 + 0x48]
	call	qword ptr [r12 + 0x40]
.label_374:
	mov	qword ptr [r12 + 0x10], rbx
	add	r14, rbx
	mov	qword ptr [r12 + 0x18], r14
	and	byte ptr [r12 + 0x50], 0xfd
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
	#Procedure 0x405770
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
	je	.label_376
	mov	qword ptr [rax], rbx
.label_376:
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
	#Procedure 0x40585c
	.globl sub_40585c
	.type sub_40585c, @function
sub_40585c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405860
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_377
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_378
	test	rax, rax
	je	.label_377
.label_378:
	pop	rbx
	ret	
.label_377:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405895
	.globl sub_405895
	.type sub_405895, @function
sub_405895:

	nop	word ptr cs:[rax + rax]
.label_383:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_379
	mov	eax, OFFSET FLAT:label_380
	jmp	.label_381
	.section	.text
	.align	16
	#Procedure 0x4058af
	.globl sub_4058af
	.type sub_4058af, @function
sub_4058af:

	nop	word ptr cs:[rax + rax]
.label_386:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_382
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_382
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_382
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_382
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_382
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_382
	cmp	byte ptr [rax + 7], 0
	je	.label_383
.label_382:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_384
	mov	eax, OFFSET FLAT:label_385
.label_381:
	cmove	rax, rcx
.label_387:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405902

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
	jne	.label_387
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_386
	cmp	ecx, 0x55
	jne	.label_382
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_382
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_382
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_382
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_382
	cmp	byte ptr [rax + 5], 0
	jne	.label_382
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_388
	mov	eax, OFFSET FLAT:label_389
	jmp	.label_381
	.section	.text
	.align	16
	#Procedure 0x405970

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
.label_401:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_399
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_405]
.label_653:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_411
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_385
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_654:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_426
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_426
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_439:
	cmp	r14, r11
	jae	.label_437
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_437:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_439
.label_426:
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
	jmp	.label_429
.label_646:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_429
.label_649:
	mov	al, 1
.label_647:
	mov	r12b, 1
.label_650:
	test	r12b, 1
	mov	cl, 1
	je	.label_457
	mov	ecx, eax
.label_457:
	mov	al, cl
.label_648:
	test	r12b, 1
	jne	.label_459
	test	r11, r11
	je	.label_461
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_461:
	mov	r14d, 1
	jmp	.label_463
.label_459:
	xor	r14d, r14d
.label_463:
	mov	ecx, OFFSET FLAT:label_385
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_429
.label_651:
	test	r12b, 1
	jne	.label_474
	test	r11, r11
	je	.label_477
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_477:
	mov	r14d, 1
	jmp	.label_479
.label_652:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_384
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_429
.label_474:
	xor	r14d, r14d
.label_479:
	mov	eax, OFFSET FLAT:label_384
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_429:
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
	jmp	.label_497
	.section	.text
	.align	16
	#Procedure 0x405c5d
	.globl sub_405c5d
	.type sub_405c5d, @function
sub_405c5d:

	nop	dword ptr [rax]
.label_442:
	inc	rsi
.label_497:
	cmp	rbp, -1
	je	.label_418
	cmp	rsi, rbp
	jne	.label_420
	jmp	.label_421
	.section	.text
	.align	16
	#Procedure 0x405c73
	.globl sub_405c73
	.type sub_405c73, @function
sub_405c73:

	nop	word ptr cs:[rax + rax]
.label_418:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_427
.label_420:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_476
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_434
	cmp	rbp, -1
	jne	.label_434
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
.label_434:
	cmp	rbx, rbp
	jbe	.label_462
.label_476:
	xor	r8d, r8d
.label_470:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_448
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_450]
.label_545:
	test	rsi, rsi
	jne	.label_444
	jmp	.label_456
	.section	.text
	.align	16
	#Procedure 0x405d15
	.globl sub_405d15
	.type sub_405d15, @function
sub_405d15:

	nop	word ptr cs:[rax + rax]
.label_462:
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
	jne	.label_467
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_470
	jmp	.label_465
.label_467:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_470
.label_549:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_487
	test	rsi, rsi
	jne	.label_488
	cmp	rbp, 1
	je	.label_456
	xor	r13d, r13d
	jmp	.label_397
.label_538:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_494
	cmp	byte ptr [rsp + 6], 0
	jne	.label_441
	cmp	r12d, 2
	jne	.label_500
	mov	eax, r9d
	and	al, 1
	jne	.label_500
	cmp	r14, r11
	jae	.label_503
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_503:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_505
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_505:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_406
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_406:
	add	r14, 3
	mov	r9b, 1
.label_500:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_446
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_446:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_407
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_407
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_407
	cmp	r14, r11
	jae	.label_496
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_496:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_400
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_400:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_397
.label_539:
	mov	bl, 0x62
	jmp	.label_431
.label_540:
	mov	cl, 0x74
	jmp	.label_396
.label_541:
	mov	bl, 0x76
	jmp	.label_431
.label_542:
	mov	bl, 0x66
	jmp	.label_431
.label_543:
	mov	cl, 0x72
	jmp	.label_396
.label_546:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_438
	cmp	byte ptr [rsp + 6], 0
	jne	.label_408
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
	jae	.label_445
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_445:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_455
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_455:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_458
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_458:
	add	r14, 3
	xor	r9d, r9d
.label_438:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_397
.label_547:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_464
	cmp	r12d, 2
	jne	.label_444
	cmp	byte ptr [rsp + 6], 0
	je	.label_444
	jmp	.label_408
.label_548:
	cmp	r12d, 2
	jne	.label_475
	cmp	byte ptr [rsp + 6], 0
	jne	.label_408
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_433
.label_448:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_485
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
.label_436:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_392
	test	r8b, r8b
	je	.label_392
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_397
.label_487:
	test	rsi, rsi
	jne	.label_432
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_432
.label_456:
	mov	dl, 1
.label_544:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_408
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_397:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_413
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_414
	jmp	.label_417
	.section	.text
	.align	16
	#Procedure 0x406064
	.globl sub_406064
	.type sub_406064, @function
sub_406064:

	nop	word ptr cs:[rax + rax]
.label_413:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_417
.label_414:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_424
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_433
	jmp	.label_402
	.section	.text
	.align	16
	#Procedure 0x4060ad
	.globl sub_4060ad
	.type sub_4060ad, @function
sub_4060ad:

	nop	dword ptr [rax]
.label_417:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_402
	jmp	.label_433
.label_424:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_402
.label_494:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_442
	xor	r15d, r15d
	jmp	.label_444
.label_475:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_396
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_433
.label_396:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_408
.label_431:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_397
	nop	word ptr cs:[rax + rax]
.label_402:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_441
	cmp	r12d, 2
	jne	.label_454
	mov	eax, r9d
	and	al, 1
	jne	.label_454
	cmp	r14, r11
	jae	.label_471
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_471:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_468
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_468:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_481
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_481:
	add	r14, 3
	mov	r9b, 1
.label_454:
	cmp	r14, r11
	jae	.label_478
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_478:
	inc	r14
	jmp	.label_482
.label_485:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_486
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_486:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_423:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_504
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_507
	cmp	rbp, -2
	je	.label_395
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_495
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_419:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_502
	bt	rsi, rdx
	jb	.label_416
.label_502:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_419
.label_495:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_501
	xor	r13d, r13d
.label_501:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_423
	jmp	.label_436
.label_407:
	xor	r13d, r13d
	jmp	.label_397
.label_432:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_397
.label_464:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_444
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_444
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_444
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_449
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_508
	cmp	byte ptr [rsp + 6], 0
	jne	.label_428
	cmp	r14, r11
	jae	.label_491
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_491:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_440
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_440:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_466
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_466:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_452
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_452:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_397
.label_444:
	xor	eax, eax
.label_488:
	xor	r13d, r13d
	jmp	.label_397
.label_392:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_484
	.section	.text
	.align	16
	#Procedure 0x406392
	.globl sub_406392
	.type sub_406392, @function
sub_406392:

	nop	word ptr cs:[rax + rax]
.label_403:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_484:
	test	r8b, r8b
	je	.label_489
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_490
	cmp	r14, r11
	jae	.label_492
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_492:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_490
	.section	.text
	.align	16
	#Procedure 0x4063dc
	.globl sub_4063dc
	.type sub_4063dc, @function
sub_4063dc:

	nop	dword ptr [rax]
.label_489:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_465
	cmp	r12d, 2
	jne	.label_483
	mov	eax, r9d
	and	al, 1
	jne	.label_483
	cmp	r14, r11
	jae	.label_506
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_506:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_390
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_390:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_398
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_398:
	add	r14, 3
	mov	r9b, 1
.label_483:
	cmp	r14, r11
	jae	.label_460
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_460:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_443
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_443:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_415
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_415:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_490:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_433
	test	r9b, 1
	je	.label_404
	mov	ebx, eax
	and	bl, 1
	jne	.label_404
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_435
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_435:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_498
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_498:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_404:
	cmp	r14, r11
	jae	.label_403
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_403
	.section	.text
	.align	16
	#Procedure 0x4064e3
	.globl sub_4064e3
	.type sub_4064e3, @function
sub_4064e3:

	nop	word ptr cs:[rax + rax]
.label_433:
	test	r9b, 1
	je	.label_451
	and	al, 1
	jne	.label_451
	cmp	r14, r11
	jae	.label_453
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_453:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_410
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_410:
	add	r14, 2
	xor	r9d, r9d
.label_451:
	mov	ebx, r15d
.label_482:
	cmp	r14, r11
	jae	.label_447
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_447:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_442
.label_507:
	xor	r13d, r13d
.label_504:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_436
.label_395:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_473
	mov	rsi, qword ptr [rsp + 0x58]
.label_480:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_509
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_480
	xor	r13d, r13d
	jmp	.label_436
.label_473:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_436
.label_509:
	xor	r13d, r13d
	jmp	.label_436
.label_449:
	xor	r13d, r13d
	jmp	.label_397
.label_508:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_397
	.section	.text
	.align	16
	#Procedure 0x4065b8
	.globl sub_4065b8
	.type sub_4065b8, @function
sub_4065b8:

	nop	dword ptr [rax + rax]
.label_421:
	mov	rcx, rsi
.label_427:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_493
	or	al, dl
	je	.label_499
.label_493:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_391
	or	al, dl
	jne	.label_391
	test	r10b, 1
	jne	.label_394
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_391
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_401
.label_391:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_409
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_393
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_393
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_425:
	cmp	r14, r11
	jae	.label_422
	mov	byte ptr [rcx + r14], al
.label_422:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_425
	jmp	.label_393
.label_441:
	mov	qword ptr [rsp + 0x20], rbp
.label_465:
	mov	rdx, rdi
	jmp	.label_430
.label_408:
	mov	qword ptr [rsp + 0x20], rbp
.label_416:
	mov	rdx, rdi
	mov	eax, 2
.label_412:
	mov	qword ptr [rsp + 0x38], rax
.label_430:
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
.label_469:
	mov	r14, rax
.label_472:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_499:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_430
.label_394:
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
	jmp	.label_469
.label_409:
	mov	rcx, qword ptr [rsp + 8]
.label_393:
	cmp	r14, r11
	jae	.label_472
	mov	byte ptr [rcx + r14], 0
	jmp	.label_472
.label_428:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_412
.label_399:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406777
	.globl sub_406777
	.type sub_406777, @function
sub_406777:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067e5
	.globl sub_4067e5
	.type sub_4067e5, @function
sub_4067e5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067f2
	.globl sub_4067f2
	.type sub_4067f2, @function
sub_4067f2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406816
	.globl sub_406816
	.type sub_406816, @function
sub_406816:

	nop	word ptr cs:[rax + rax]
