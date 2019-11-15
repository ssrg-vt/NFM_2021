	.section	.text
	.align	32
	#Procedure 0x401469
	.globl sub_401469
	.type sub_401469, @function
sub_401469:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40146a
	.globl sub_40146a
	.type sub_40146a, @function
sub_40146a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4014a2
	.globl sub_4014a2
	.type sub_4014a2, @function
sub_4014a2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4014ea
	.globl sub_4014ea
	.type sub_4014ea, @function
sub_4014ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40150c
	.globl sub_40150c
	.type sub_40150c, @function
sub_40150c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40151d
	.globl sub_40151d
	.type sub_40151d, @function
sub_40151d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401536
	.globl sub_401536
	.type sub_401536, @function
sub_401536:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401540

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
	jne	.label_16
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
	je	.label_15
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_17
	mov	eax, OFFSET FLAT:label_18
	jmp	.label_11
.label_14:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_12
	mov	eax, OFFSET FLAT:label_13
.label_11:
	cmove	rax, rcx
.label_16:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4015bf
	.globl sub_4015bf
	.type sub_4015bf, @function
sub_4015bf:

	nop	dword ptr [rax]
.label_15:
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
	je	.label_14
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_9
	mov	eax, OFFSET FLAT:label_10
	jmp	.label_11
	.section	.text
	.align	32
	#Procedure 0x401600
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
	#Procedure 0x40160f
	.globl sub_40160f
	.type sub_40160f, @function
sub_40160f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401610

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40161a
	.globl sub_40161a
	.type sub_40161a, @function
sub_40161a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401620
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	32
	#Procedure 0x40162d
	.globl sub_40162d
	.type sub_40162d, @function
sub_40162d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401630
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
	#Procedure 0x401640

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_20
	cmp	byte ptr [rax], 0x43
	jne	.label_22
	cmp	byte ptr [rax + 1], 0
	je	.label_19
.label_22:
	mov	esi, OFFSET FLAT:label_21
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_20
.label_19:
	xor	ebx, ebx
.label_20:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401671
	.globl sub_401671
	.type sub_401671, @function
sub_401671:

	nop	word ptr cs:[rax + rax]
.label_24:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_23
	test	cl, cl
	jne	.label_23
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_23:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4016ab
	.globl sub_4016ab
	.type sub_4016ab, @function
sub_4016ab:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4016b5

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
	je	.label_24
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_23
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_23
	.section	.text
	.align	32
	#Procedure 0x4016f0

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
	#Procedure 0x401707
	.globl sub_401707
	.type sub_401707, @function
sub_401707:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401710

	.globl cksum
	.type cksum, @function
cksum:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10028
	mov	r14d, esi
	mov	r15, rdi
	cmp	byte ptr [r15], 0x2d
	jne	.label_29
	cmp	byte ptr [r15 + 1], 0
	je	.label_35
.label_29:
	mov	esi, OFFSET FLAT:label_37
	mov	rdi, r15
	call	fopen
	mov	r13, rax
	test	r13, r13
	jne	.label_41
	jmp	.label_42
.label_35:
	mov	r13,  qword ptr [word ptr [rip + stdin]]
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	xor	edi, edi
	xor	esi, esi
	call	xset_binary_mode
.label_41:
	mov	esi, 2
	mov	rdi, r13
	call	fadvise
	xor	ebx, ebx
	lea	r12, [rsp + 0x20]
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_47:
	mov	esi, 1
	mov	edx, 0x10000
	mov	rdi, r12
	mov	rcx, r13
	call	fread_unlocked
	test	rax, rax
	je	.label_31
	add	rbx, rax
	jb	.label_32
	mov	rcx, r12
	nop	word ptr cs:[rax + rax]
.label_49:
	mov	rdx, rbp
	shl	rdx, 8
	shr	ebp, 0x18
	movzx	esi, byte ptr [rcx]
	inc	rcx
	xor	rsi, rbp
	mov	rbp, rdx
	xor	rbp,  qword ptr [word ptr [+ (rsi * 8) + crctab]]
	dec	rax
	jne	.label_49
	mov	rdi, r13
	call	feof_unlocked
	test	eax, eax
	je	.label_47
.label_31:
	mov	rdi, r13
	call	ferror_unlocked
	test	eax, eax
	je	.label_50
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_25
	xor	eax, eax
	mov	esi, ebx
	call	error
	cmp	byte ptr [r15], 0x2d
	jne	.label_30
	cmp	byte ptr [r15 + 1], 0
	je	.label_33
.label_30:
	mov	rdi, r13
	call	rpl_fclose
.label_33:
	xor	ebx, ebx
	jmp	.label_34
.label_50:
	cmp	byte ptr [r15], 0x2d
	jne	.label_28
	cmp	byte ptr [r15 + 1], 0
	je	.label_38
.label_28:
	mov	rdi, r13
	call	rpl_fclose
	cmp	eax, -1
	je	.label_42
.label_38:
	lea	rsi, [rsp]
	mov	rdi, rbx
	call	umaxtostr
	mov	rcx, rax
	test	rbx, rbx
	je	.label_46
	nop	
.label_48:
	mov	rdx, rbp
	shl	rdx, 8
	shr	ebp, 0x18
	xor	ebp, ebx
	movzx	eax, bpl
	xor	rdx,  qword ptr [word ptr [+ (rax * 8) + crctab]]
	shr	rbx, 8
	mov	rbp, rdx
	jne	.label_48
	jmp	.label_27
.label_42:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_25
	xor	eax, eax
	mov	esi, ebp
	call	error
	jmp	.label_34
.label_46:
	mov	rdx, rbp
.label_27:
	not	edx
	mov	edi, 1
	test	r14b, r14b
	je	.label_36
	mov	esi, OFFSET FLAT:label_40
	xor	eax, eax
	mov	r8, r15
	call	__printf_chk
	jmp	.label_45
.label_36:
	mov	esi, OFFSET FLAT:label_43
	xor	eax, eax
	call	__printf_chk
.label_45:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	ferror_unlocked
	mov	bl, 1
	test	eax, eax
	jne	.label_51
.label_34:
	mov	eax, ebx
	add	rsp, 0x10028
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_32:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_51:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_39
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_44
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401970

	.globl usage
	.type usage, @function
usage:
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	test	ebx, ebx
	jne	.label_54
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_55
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
	mov	esi, OFFSET FLAT:label_52
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_57
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_53
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebx
	call	exit
.label_54:
	mov	r14,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_56
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
	#Procedure 0x401a4f
	.globl sub_401a4f
	.type sub_401a4f, @function
sub_401a4f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401a50
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
	#Procedure 0x401a5f
	.globl sub_401a5f
	.type sub_401a5f, @function
sub_401a5f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401a60
	.globl xset_binary_mode_error
	.type xset_binary_mode_error, @function
xset_binary_mode_error:

	ret	
	.section	.text
	.align	32
	#Procedure 0x401a61
	.globl sub_401a61
	.type sub_401a61, @function
sub_401a61:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a70

	.globl xset_binary_mode
	.type xset_binary_mode, @function
xset_binary_mode:
	jmp	set_binary_mode
	.section	.text
	.align	32
	#Procedure 0x401a75
	.globl sub_401a75
	.type sub_401a75, @function
sub_401a75:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a80

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_58
	nop	
.label_71:
	mov	edi, OFFSET FLAT:label_63
	call	strcmp
	test	eax, eax
	je	.label_69
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_71
.label_69:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_63
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_61
	mov	ecx, OFFSET FLAT:label_62
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_60
	mov	esi, OFFSET FLAT:label_68
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_60
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_59
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_60:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_65
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_63
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_62
	mov	ecx, OFFSET FLAT:label_63
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_70
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_66
	mov	ecx, OFFSET FLAT:label_67
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
	#Procedure 0x401b9a
	.globl sub_401b9a
	.type sub_401b9a, @function
sub_401b9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ba0

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
	je	.label_72
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
.label_72:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401bf2
	.globl sub_401bf2
	.type sub_401bf2, @function
sub_401bf2:

	nop	word ptr cs:[rax + rax]
.label_74:
	cmp	edi, 0x7f
	je	.label_73
	xor	eax, eax
	jmp	.label_73
	.section	.text
	.align	32
	#Procedure 0x401c09
	.globl sub_401c09
	.type sub_401c09, @function
sub_401c09:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c18
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_74
.label_73:
	ret	
	.section	.text
	.align	32
	#Procedure 0x401c20

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	32
	#Procedure 0x401c29
	.globl sub_401c29
	.type sub_401c29, @function
sub_401c29:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401c30

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
	mov	rax,  qword ptr [word ptr [rip + label_75]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_76]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_77]]
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
	#Procedure 0x401c98
	.globl sub_401c98
	.type sub_401c98, @function
sub_401c98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ca0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_78
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_78:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401cc6
	.globl sub_401cc6
	.type sub_401cc6, @function
sub_401cc6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401cd0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_79
	test	rbx, rbx
	jne	.label_79
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_79:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_81
	test	rax, rax
	je	.label_80
.label_81:
	pop	rbx
	ret	
.label_80:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401d00

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_82
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_82
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_82:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x401d26
	.globl sub_401d26
	.type sub_401d26, @function
sub_401d26:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d30
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d3a
	.globl sub_401d3a
	.type sub_401d3a, @function
sub_401d3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d40

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
	je	.label_83
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_85
	jmp	.label_84
.label_83:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_84
.label_85:
	mov	eax, 1
	test	bpl, bpl
	je	.label_84
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
.label_84:
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
	#Procedure 0x401dbd
	.globl sub_401dbd
	.type sub_401dbd, @function
sub_401dbd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401dc0

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
	jne	.label_86
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_86
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_87
.label_86:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_87:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_88
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_88:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e2e
	.globl sub_401e2e
	.type sub_401e2e, @function
sub_401e2e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401e30
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
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
	#Procedure 0x401e4f
	.globl sub_401e4f
	.type sub_401e4f, @function
sub_401e4f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401e50
	.globl version_etc
	.type version_etc, @function
version_etc:

	sub	rsp, 0xd8
	test	al, al
	je	.label_89
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_89:
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
	#Procedure 0x401ed3
	.globl sub_401ed3
	.type sub_401ed3, @function
sub_401ed3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ee0

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_90:
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
	ja	.label_90
	mov	rax, rsi
	ret	
	.section	.text
	.align	32
	#Procedure 0x401f2b
	.globl sub_401f2b
	.type sub_401f2b, @function
sub_401f2b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f30
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
	#Procedure 0x401f63
	.globl sub_401f63
	.type sub_401f63, @function
sub_401f63:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f70

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_91
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_25
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
.label_92:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_94:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_95
	inc	r9
	cmp	r9, 0xa
	jb	.label_93
.label_95:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x401fcf
	.globl sub_401fcf
	.type sub_401fcf, @function
sub_401fcf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401fd0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_93:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_92
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_94
	.section	.text
	.align	32
	#Procedure 0x401ff9
	.globl sub_401ff9
	.type sub_401ff9, @function
sub_401ff9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402000

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
	#Procedure 0x402036
	.globl sub_402036
	.type sub_402036, @function
sub_402036:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402040

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_67
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_96
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402065
	.globl sub_402065
	.type sub_402065, @function
sub_402065:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402070

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
	#Procedure 0x40209d
	.globl sub_40209d
	.type sub_40209d, @function
sub_40209d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4020a0
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
	#Procedure 0x4020b3
	.globl sub_4020b3
	.type sub_4020b3, @function
sub_4020b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4020c0

	.globl set_binary_mode
	.type set_binary_mode, @function
set_binary_mode:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4020c3
	.globl sub_4020c3
	.type sub_4020c3, @function
sub_4020c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4020d0
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
	#Procedure 0x4020e9
	.globl sub_4020e9
	.type sub_4020e9, @function
sub_4020e9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4020f0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x4020fa
	.globl sub_4020fa
	.type sub_4020fa, @function
sub_4020fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402100
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_97
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_99]]
.label_97:
	xor	eax, eax
	jmp	.label_98
	.section	.text
	.align	32
	#Procedure 0x402115
	.globl sub_402115
	.type sub_402115, @function
sub_402115:

	nop	word ptr cs:[rax + rax]
.label_98:
	ret	
.label_100:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x402123
	.globl sub_402123
	.type sub_402123, @function
sub_402123:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402125
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_100
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x402140
	.globl __gl_setmode_check
	.type __gl_setmode_check, @function
__gl_setmode_check:

	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x402143
	.globl sub_402143
	.type sub_402143, @function
sub_402143:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402150

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	.section	.text
	.align	32
	#Procedure 0x402155
	.globl sub_402155
	.type sub_402155, @function
sub_402155:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402160

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_101
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_101:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40217a
	.globl sub_40217a
	.type sub_40217a, @function
sub_40217a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402180

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
	je	.label_102
	cmp	r15, -2
	jb	.label_102
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_102
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_102:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4021d6
	.globl sub_4021d6
	.type sub_4021d6, @function
sub_4021d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4021e0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4021ea
	.globl sub_4021ea
	.type sub_4021ea, @function
sub_4021ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4021f0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	32
	#Procedure 0x4021fa
	.globl sub_4021fa
	.type sub_4021fa, @function
sub_4021fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402200
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
	je	.label_103
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_103:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  0
	cmp	edi, 2
	jne	.label_104
	mov	edx, OFFSET FLAT:label_105
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, 0x68
	je	.label_106
	cmp	eax, 0x76
	jne	.label_104
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
.label_106:
	xor	edi, edi
	call	rbx
.label_104:
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
	.align	32
	#Procedure 0x4022f1
	.globl sub_4022f1
	.type sub_4022f1, @function
sub_4022f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402300
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
	#Procedure 0x402316
	.globl sub_402316
	.type sub_402316, @function
sub_402316:

	nop	word ptr cs:[rax + rax]
.label_109:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_107
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402340
	.globl sub_402340
	.type sub_402340, @function
sub_402340:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40234f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_109
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_111
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_112
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_111
	mov	esi, OFFSET FLAT:label_110
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_108
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_108:
	mov	rbx, r14
.label_111:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x4023d0
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
	#Procedure 0x4023e3
	.globl sub_4023e3
	.type sub_4023e3, @function
sub_4023e3:

	nop	word ptr cs:[rax + rax]
.label_113:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4023f6
	.globl sub_4023f6
	.type sub_4023f6, @function
sub_4023f6:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023fb

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_113
	test	rdx, rdx
	je	.label_113
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402420
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_114
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_114:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40243e
	.globl sub_40243e
	.type sub_40243e, @function
sub_40243e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402440
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
	#Procedure 0x4024b2
	.globl sub_4024b2
	.type sub_4024b2, @function
sub_4024b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4024c0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15d, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_67
	call	setlocale
	mov	edi, OFFSET FLAT:label_116
	mov	esi, OFFSET FLAT:label_117
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_116
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	xor	esi, esi
	mov	edx, 1
	xor	ecx, ecx
	call	setvbuf
	mov	r8,  qword ptr [word ptr [rip + Version]]
	sub	rsp, 8
	mov	edx, OFFSET FLAT:label_63
	mov	ecx, OFFSET FLAT:label_116
	mov	r9d, 1
	mov	eax, 0
	mov	edi, r15d
	mov	rsi, r14
	push	0
	push	OFFSET FLAT:label_123
	push	OFFSET FLAT:usage
	call	parse_gnu_standard_options_only
	add	rsp, 0x20
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  0
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, r15d
	jne	.label_119
	mov	edi, OFFSET FLAT:label_118
	xor	esi, esi
	call	cksum
	mov	ebx, eax
	jmp	.label_121
.label_122:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_118
	xor	eax, eax
	call	error
	nop	
.label_119:
	mov	bl, 1
	cmp	eax, r15d
	jge	.label_121
	lea	rbp, [r14 + rax*8]
	sub	r15d, eax
	mov	bl, 1
	nop	word ptr [rax + rax]
.label_120:
	mov	rdi, qword ptr [rbp]
	mov	esi, 1
	call	cksum
	and	bl, al
	add	rbp, 8
	dec	r15d
	jne	.label_120
.label_121:
	cmp	byte ptr [byte ptr [rip + have_read_stdin]],  1
	jne	.label_115
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fclose
	cmp	eax, -1
	je	.label_122
.label_115:
	not	bl
	and	bl, 1
	movzx	eax, bl
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4025f0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4025fa
	.globl sub_4025fa
	.type sub_4025fa, @function
sub_4025fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402600
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
	#Procedure 0x402610

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x402619
	.globl sub_402619
	.type sub_402619, @function
sub_402619:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402620
	.globl quote
	.type quote, @function
quote:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x40262a
	.globl sub_40262a
	.type sub_40262a, @function
sub_40262a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402630

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40263a
	.globl sub_40263a
	.type sub_40263a, @function
sub_40263a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402640
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_124
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_124:
	push	rax
	call	xalloc_die
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

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_125
	test	rax, rax
	je	.label_126
.label_125:
	pop	rbx
	ret	
.label_126:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40268a
	.globl sub_40268a
	.type sub_40268a, @function
sub_40268a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402690

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
	je	.label_130
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_130:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  1
	mov	eax, OFFSET FLAT:label_67
	mov	edx, OFFSET FLAT:label_105
	test	r9b, r9b
	cmovne	rdx, rax
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, -1
	je	.label_129
	mov	rcx, qword ptr [rsp + 0x100]
	cmp	eax, 0x68
	je	.label_131
	cmp	eax, 0x76
	je	.label_128
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	jmp	.label_127
.label_128:
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
	.align	32
	#Procedure 0x402774
	.globl sub_402774
	.type sub_402774, @function
sub_402774:

	nop	dword ptr [rax]
.label_131:
	xor	edi, edi
.label_127:
	call	rcx
.label_129:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	add	rsp, 0xd8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402790

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
	#Procedure 0x4027d9
	.globl sub_4027d9
	.type sub_4027d9, @function
sub_4027d9:

	nop	dword ptr [rax]
.label_132:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	32
	#Procedure 0x4027ec
	.globl sub_4027ec
	.type sub_4027ec, @function
sub_4027ec:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4027f9

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_132
	ret	
.label_133:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402805
	.globl sub_402805
	.type sub_402805, @function
sub_402805:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40280f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_133
	call	rpl_calloc
	test	rax, rax
	je	.label_133
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402830
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
	#Procedure 0x402857
	.globl sub_402857
	.type sub_402857, @function
sub_402857:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402860
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
	#Procedure 0x40286d
	.globl sub_40286d
	.type sub_40286d, @function
sub_40286d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402870
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x402878
	.globl sub_402878
	.type sub_402878, @function
sub_402878:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402880
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_134
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_136:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_136
.label_134:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_137
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_138]], OFFSET FLAT:slot0
.label_137:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_135
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_135:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402911
	.globl sub_402911
	.type sub_402911, @function
sub_402911:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402920

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_142
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_139
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_139
.label_142:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_143
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_140:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_141
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_143:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_139:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_39
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_140
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_25
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x4029e0

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
	je	.label_156
	mov	edx, OFFSET FLAT:label_147
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_153
.label_156:
	mov	edx, OFFSET FLAT:label_154
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_153:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_158
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
	mov	esi, OFFSET FLAT:label_155
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_159
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_160]]
.label_333:
	add	rsp, 8
	jmp	.label_146
.label_159:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_150
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
	jmp	.label_146
.label_334:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_145
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
.label_335:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_151
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
.label_336:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_148
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
.label_337:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_162
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
	jmp	.label_146
.label_338:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_161
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
	jmp	.label_146
.label_339:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_144
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
	jmp	.label_146
.label_340:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_149
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
	jmp	.label_146
.label_342:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_152
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
	jmp	.label_146
.label_341:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_157
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
.label_146:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402d38
	.globl sub_402d38
	.type sub_402d38, @function
sub_402d38:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d40

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
.label_270:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_271
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_275]]
.label_376:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_170
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_13
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_377:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_184
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_184
	xor	r14d, r14d
.label_202:
	cmp	r14, r11
	jae	.label_197
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_197:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_202
.label_184:
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
	jmp	.label_205
.label_369:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_205
.label_372:
	mov	al, 1
.label_370:
	mov	r12b, 1
.label_373:
	test	r12b, 1
	mov	cl, 1
	je	.label_217
	mov	ecx, eax
.label_217:
	mov	al, cl
.label_371:
	test	r12b, 1
	jne	.label_220
	test	r11, r11
	je	.label_223
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_223:
	mov	r14d, 1
	jmp	.label_229
.label_220:
	xor	r14d, r14d
.label_229:
	mov	ecx, OFFSET FLAT:label_13
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_205
.label_374:
	test	r12b, 1
	jne	.label_236
	test	r11, r11
	je	.label_237
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_237:
	mov	r14d, 1
	jmp	.label_240
.label_375:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_12
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_205
.label_236:
	xor	r14d, r14d
.label_240:
	mov	eax, OFFSET FLAT:label_12
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_205:
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
	jmp	.label_249
	.section	.text
	.align	32
	#Procedure 0x40301c
	.globl sub_40301c
	.type sub_40301c, @function
sub_40301c:

	nop	dword ptr [rax]
.label_195:
	inc	rsi
.label_249:
	cmp	rbp, -1
	je	.label_175
	cmp	rsi, rbp
	jne	.label_177
	jmp	.label_179
	.section	.text
	.align	32
	#Procedure 0x403033
	.globl sub_403033
	.type sub_403033, @function
sub_403033:

	nop	word ptr cs:[rax + rax]
.label_175:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_179
.label_177:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_187
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
	jbe	.label_204
.label_187:
	xor	r8d, r8d
.label_200:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_206
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_210]]
.label_391:
	test	rsi, rsi
	jne	.label_166
	jmp	.label_213
	.section	.text
	.align	32
	#Procedure 0x4030ce
	.globl sub_4030ce
	.type sub_4030ce, @function
sub_4030ce:

	nop	
.label_204:
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
	jne	.label_226
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_200
	jmp	.label_169
.label_226:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_200
.label_395:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_244
	test	rsi, rsi
	jne	.label_246
	cmp	rbp, 1
	je	.label_213
	xor	r13d, r13d
	jmp	.label_180
.label_384:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_252
	cmp	byte ptr [rsp + 7], 0
	jne	.label_199
	cmp	r12d, 2
	jne	.label_255
	mov	eax, r9d
	and	al, 1
	jne	.label_255
	cmp	r14, r11
	jae	.label_256
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_256:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_259
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_259:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_264
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_264:
	add	r14, 3
	mov	r9b, 1
.label_255:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_269
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_269:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_164
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_164
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_164
	cmp	r14, r11
	jae	.label_171
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_171:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_245
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_245:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_180
.label_385:
	mov	bl, 0x62
	jmp	.label_182
.label_386:
	mov	cl, 0x74
	jmp	.label_186
.label_387:
	mov	bl, 0x76
	jmp	.label_182
.label_388:
	mov	bl, 0x66
	jmp	.label_182
.label_389:
	mov	cl, 0x72
	jmp	.label_186
.label_392:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_194
	cmp	byte ptr [rsp + 7], 0
	jne	.label_199
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
	jae	.label_203
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_203:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_211
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_211:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_214
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_214:
	add	r14, 3
	xor	r9d, r9d
.label_194:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_180
.label_393:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_224
	cmp	r12d, 2
	jne	.label_166
	cmp	byte ptr [rsp + 7], 0
	je	.label_166
	jmp	.label_199
.label_394:
	cmp	r12d, 2
	jne	.label_233
	cmp	byte ptr [rsp + 7], 0
	jne	.label_199
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_183
.label_206:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_243
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
.label_193:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_254
	test	r8b, r8b
	je	.label_254
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_180
.label_244:
	test	rsi, rsi
	jne	.label_221
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_221
.label_213:
	mov	dl, 1
.label_390:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_199
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_180:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_163
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_167
	jmp	.label_172
	.section	.text
	.align	32
	#Procedure 0x403414
	.globl sub_403414
	.type sub_403414, @function
sub_403414:

	nop	word ptr cs:[rax + rax]
.label_163:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_172
.label_167:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_176
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_183
	jmp	.label_192
	.section	.text
	.align	32
	#Procedure 0x40345d
	.globl sub_40345d
	.type sub_40345d, @function
sub_40345d:

	nop	dword ptr [rax]
.label_172:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_192
	jmp	.label_183
.label_176:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_192
.label_252:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_195
	xor	r15d, r15d
	jmp	.label_166
.label_233:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_186
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_183
.label_186:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_199
.label_182:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_180
	nop	word ptr cs:[rax + rax]
.label_192:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_199
	cmp	r12d, 2
	jne	.label_218
	mov	eax, r9d
	and	al, 1
	jne	.label_218
	cmp	r14, r11
	jae	.label_222
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_222:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_207
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_207:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_231
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_231:
	add	r14, 3
	mov	r9b, 1
.label_218:
	cmp	r14, r11
	jae	.label_235
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_235:
	inc	r14
	jmp	.label_250
.label_243:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_241
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_241:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_257:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_258
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_261
	cmp	rbp, -2
	je	.label_265
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_267
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_253:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_262
	bt	rsi, rdx
	jb	.label_169
.label_262:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_253
.label_267:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_178
	xor	r13d, r13d
.label_178:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_257
	jmp	.label_193
.label_164:
	xor	r13d, r13d
	jmp	.label_180
.label_221:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_180
.label_224:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_166
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_166
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_166
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_208
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_173
	cmp	byte ptr [rsp + 7], 0
	jne	.label_199
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_215
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_215:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_181
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_181:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_227
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_227:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_230
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_230:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_180
.label_166:
	xor	eax, eax
.label_246:
	xor	r13d, r13d
	jmp	.label_180
.label_254:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_239
	.section	.text
	.align	32
	#Procedure 0x403743
	.globl sub_403743
	.type sub_403743, @function
sub_403743:

	nop	word ptr cs:[rax + rax]
.label_201:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_239:
	test	r8b, r8b
	je	.label_247
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_248
	cmp	r14, r11
	jae	.label_274
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_274:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_248
	.section	.text
	.align	32
	#Procedure 0x40378c
	.globl sub_40378c
	.type sub_40378c, @function
sub_40378c:

	nop	dword ptr [rax]
.label_247:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_169
	cmp	r12d, 2
	jne	.label_238
	mov	eax, r9d
	and	al, 1
	jne	.label_238
	cmp	r14, r11
	jae	.label_260
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_260:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_263
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_263:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_268
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_268:
	add	r14, 3
	mov	r9b, 1
.label_238:
	cmp	r14, r11
	jae	.label_234
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_234:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_273
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_273:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_168
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_168:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_248:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_183
	test	r9b, 1
	je	.label_185
	mov	ebx, eax
	and	bl, 1
	jne	.label_185
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_189
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_189:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_242
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_242:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_185:
	cmp	r14, r11
	jae	.label_201
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_201
	.section	.text
	.align	32
	#Procedure 0x403893
	.globl sub_403893
	.type sub_403893, @function
sub_403893:

	nop	word ptr cs:[rax + rax]
.label_183:
	test	r9b, 1
	je	.label_266
	and	al, 1
	jne	.label_266
	cmp	r14, r11
	jae	.label_209
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_209:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_191
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_191:
	add	r14, 2
	xor	r9d, r9d
.label_266:
	mov	ebx, r15d
.label_250:
	cmp	r14, r11
	jae	.label_216
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_216:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_195
.label_261:
	xor	r13d, r13d
.label_258:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_193
.label_265:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_232
	mov	rsi, qword ptr [rsp + 0x50]
.label_188:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_212
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_188
	xor	r13d, r13d
	jmp	.label_193
.label_232:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_193
.label_212:
	xor	r13d, r13d
	jmp	.label_193
.label_208:
	xor	r13d, r13d
	jmp	.label_180
.label_173:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_180
	.section	.text
	.align	32
	#Procedure 0x403968
	.globl sub_403968
	.type sub_403968, @function
sub_403968:

	nop	dword ptr [rax + rax]
.label_179:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_251
	or	dl, al
	je	.label_169
.label_251:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_196
	or	dl, al
	jne	.label_196
	test	r10b, 1
	jne	.label_198
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_196
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_270
.label_196:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_272
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_165
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_165
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_228:
	cmp	r14, r11
	jae	.label_174
	mov	byte ptr [rcx + r14], al
.label_174:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_228
	jmp	.label_165
.label_199:
	mov	qword ptr [rsp + 0x20], rbp
.label_169:
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
.label_219:
	mov	r14, rax
.label_225:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_198:
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
	jmp	.label_219
.label_272:
	mov	rcx, qword ptr [rsp + 8]
.label_165:
	cmp	r14, r11
	jae	.label_225
	mov	byte ptr [rcx + r14], 0
	jmp	.label_225
.label_271:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403afc
	.globl sub_403afc
	.type sub_403afc, @function
sub_403afc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403b00
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b0a
	.globl sub_403b0a
	.type sub_403b0a, @function
sub_403b0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b10

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
	je	.label_278
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_276
	jmp	.label_277
.label_278:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_277
.label_276:
	mov	eax, 1
	test	bpl, bpl
	je	.label_277
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
.label_277:
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
	#Procedure 0x403b98
	.globl sub_403b98
	.type sub_403b98, @function
sub_403b98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ba0

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
	je	.label_279
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_281
	jmp	.label_280
.label_279:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_280
.label_281:
	mov	eax, 1
	test	bpl, bpl
	je	.label_280
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
.label_280:
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
	#Procedure 0x403c19
	.globl sub_403c19
	.type sub_403c19, @function
sub_403c19:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403c20

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
	je	.label_284
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_283
	jmp	.label_282
.label_284:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_282
.label_283:
	mov	eax, 1
	test	bpl, bpl
	je	.label_282
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
.label_282:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403c83
	.globl sub_403c83
	.type sub_403c83, @function
sub_403c83:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c90

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
	je	.label_287
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_285
	jmp	.label_286
.label_287:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_286
.label_285:
	mov	eax, 1
	test	bpl, bpl
	je	.label_286
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_286:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403cef
	.globl sub_403cef
	.type sub_403cef, @function
sub_403cef:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403cf0

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
	je	.label_288
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_290
	jmp	.label_289
.label_288:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_289
.label_290:
	mov	eax, 1
	test	bpl, bpl
	je	.label_289
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_289:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d39
	.globl sub_403d39
	.type sub_403d39, @function
sub_403d39:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403d40

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
	je	.label_293
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_292
	jmp	.label_291
.label_293:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_291
.label_292:
	mov	eax, 1
	test	bpl, bpl
	je	.label_291
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_291:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d85
	.globl sub_403d85
	.type sub_403d85, @function
sub_403d85:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d90

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_295
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_296
	jmp	.label_294
.label_295:
	mov	eax, 1
	test	cl, cl
	je	.label_294
.label_296:
	xor	eax, eax
.label_294:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403dbf
	.globl sub_403dbf
	.type sub_403dbf, @function
sub_403dbf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403dc0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x403dca
	.globl sub_403dca
	.type sub_403dca, @function
sub_403dca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403dd0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_297
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_298
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_300
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_61
	mov	ecx, OFFSET FLAT:label_62
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_299
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x403e44
	.globl sub_403e44
	.type sub_403e44, @function
sub_403e44:

	nop	word ptr cs:[rax + rax]
.label_302:
	test	rcx, rcx
	jne	.label_301
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_301:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_304
.label_305:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_304:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403e97
	.globl sub_403e97
	.type sub_403e97, @function
sub_403e97:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403e9e

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_302
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_303
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_305
.label_303:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403ed0
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
	#Procedure 0x403edd
	.globl sub_403edd
	.type sub_403edd, @function
sub_403edd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403ee0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ee8
	.globl sub_403ee8
	.type sub_403ee8, @function
sub_403ee8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ef0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x403efe
	.globl sub_403efe
	.type sub_403efe, @function
sub_403efe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403f00

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
	js	.label_306
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_309
	cmp	r12d, 0x7fffffff
	je	.label_311
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
	jne	.label_307
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_307:
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
.label_309:
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
	jbe	.label_312
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_308
.label_312:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_310
	mov	rdi, r14
	call	free
.label_310:
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
.label_308:
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
.label_306:
	call	abort
.label_311:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4040bd
	.globl sub_4040bd
	.type sub_4040bd, @function
sub_4040bd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4040c0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_313
	test	rsi, rsi
	mov	ecx, 1
	je	.label_314
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_314
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_313:
	mov	ecx, 1
.label_314:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x40410b
	.globl sub_40410b
	.type sub_40410b, @function
sub_40410b:

	nop	dword ptr [rax + rax]
.label_315:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x404113
	.globl sub_404113
	.type sub_404113, @function
sub_404113:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40411b
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_315
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x404130
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_316
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_316
.label_317:
	ret	
.label_316:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_317
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x404156
	.globl sub_404156
	.type sub_404156, @function
sub_404156:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404160

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
	#Procedure 0x404199
	.globl sub_404199
	.type sub_404199, @function
sub_404199:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4041a0
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
	#Procedure 0x4041b1
	.globl sub_4041b1
	.type sub_4041b1, @function
sub_4041b1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4041c0
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
	#Procedure 0x4041d4
	.globl sub_4041d4
	.type sub_4041d4, @function
sub_4041d4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4041e0

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
	#Procedure 0x404217
	.globl sub_404217
	.type sub_404217, @function
sub_404217:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404220
	.globl __gl_setmode
	.type __gl_setmode, @function
__gl_setmode:

	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x404223
	.globl sub_404223
	.type sub_404223, @function
sub_404223:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404230

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
	mov	rcx,  qword ptr [word ptr [rip + label_75]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_76]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_77]]
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
	#Procedure 0x40429d
	.globl sub_40429d
	.type sub_40429d, @function
sub_40429d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4042a0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x4042ad
	.globl sub_4042ad
	.type sub_4042ad, @function
sub_4042ad:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4042b0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	32
	#Procedure 0x4042b7
	.globl sub_4042b7
	.type sub_4042b7, @function
sub_4042b7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042c0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	32
	#Procedure 0x4042ca
	.globl sub_4042ca
	.type sub_4042ca, @function
sub_4042ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042d0

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
	je	.label_318
	mov	qword ptr [rax], rbx
.label_318:
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
	#Procedure 0x4043bc
	.globl sub_4043bc
	.type sub_4043bc, @function
sub_4043bc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4043c0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_320
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_319
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_320
.label_319:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_320
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_321
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_321:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_320:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x404437
	.globl sub_404437
	.type sub_404437, @function
sub_404437:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404440
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_322:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_322
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x404461
	.globl sub_404461
	.type sub_404461, @function
sub_404461:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404470

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	32
	#Procedure 0x404475
	.globl sub_404475
	.type sub_404475, @function
sub_404475:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044e5
	.globl sub_4044e5
	.type sub_4044e5, @function
sub_4044e5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044f2
	.globl sub_4044f2
	.type sub_4044f2, @function
sub_4044f2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404516
	.globl sub_404516
	.type sub_404516, @function
sub_404516:

	nop	word ptr cs:[rax + rax]
