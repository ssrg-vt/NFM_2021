	.section	.text
	.align	16
	#Procedure 0x401499
	.globl sub_401499
	.type sub_401499, @function
sub_401499:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40149a
	.globl sub_40149a
	.type sub_40149a, @function
sub_40149a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4014d2
	.globl sub_4014d2
	.type sub_4014d2, @function
sub_4014d2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40151a
	.globl sub_40151a
	.type sub_40151a, @function
sub_40151a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40153c
	.globl sub_40153c
	.type sub_40153c, @function
sub_40153c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40154d
	.globl sub_40154d
	.type sub_40154d, @function
sub_40154d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401566
	.globl sub_401566
	.type sub_401566, @function
sub_401566:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401570
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rax, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	r10d, r10d
	cmp	rax, r9
	mov	ecx, 0
	jae	.label_10
	mov	rcx, rax
	not	rcx
	add	r9, rcx
	shr	r9, 4
	lea	rsi, [r9 + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ecx, ecx
	test	r9, r9
	je	.label_11
	sub	rsi, r8
	xor	ecx, ecx
	xor	r10d, r10d
	nop	
.label_17:
	cmp	qword ptr [rax], 0
	je	.label_18
	mov	rdx, rax
	nop	dword ptr [rax]
.label_9:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_9
	inc	r10
.label_18:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_12
	lea	rdx, [rax + 0x10]
	nop	word ptr [rax + rax]
.label_15:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_15
	inc	r10
.label_12:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_17
	jmp	.label_19
.label_11:
	xor	r10d, r10d
.label_19:
	test	r8, r8
	je	.label_10
	cmp	qword ptr [rax], 0
	je	.label_10
	nop	dword ptr [rax]
.label_13:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_13
	inc	r10
.label_10:
	cmp	r10, qword ptr [rdi + 0x18]
	jne	.label_14
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_16
.label_14:
	xor	eax, eax
.label_16:
	ret	
	.section	.text
	.align	16
	#Procedure 0x401630
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
	#Procedure 0x401649
	.globl sub_401649
	.type sub_401649, @function
sub_401649:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401650

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x50
	mov	r14, rdi
	mov	rax, qword ptr [r14 + 0x28]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_28
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_33
	cvtsi2ss	xmm0, rsi
	jmp	.label_38
.label_33:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_38:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1, dword ptr [rip + label_22]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0, dword ptr [rip + label_23]
	jae	.label_24
.label_28:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_21
	.section	.text
	.align	16
	#Procedure 0x4016db
	.globl sub_4016db
	.type sub_4016db, @function
sub_4016db:

	nop	dword ptr [rax + rax]
.label_35:
	add	rbx, 2
.label_21:
	cmp	rbx, -1
	je	.label_24
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_31
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_32:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_31
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_32
.label_31:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_35
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_24
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_25
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_24
	mov	qword ptr [rsp + 0x10], rbx
	shl	rbx, 4
	add	rax, rbx
	mov	qword ptr [rsp + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x18], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x28]
	movups	xmmword ptr [rsp + 0x28], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x38]
	movups	xmmword ptr [rsp + 0x38], xmm0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rsp]
	xor	edx, edx
	mov	rsi, r14
	call	transfer_entries
	test	al, al
	je	.label_40
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_25
.label_40:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_34
	.section	.text
	.align	16
	#Procedure 0x4017fe
	.globl sub_4017fe
	.type sub_4017fe, @function
sub_4017fe:

	nop	
.label_26:
	add	r12, 0x10
.label_34:
	cmp	r12, r15
	jae	.label_20
	cmp	qword ptr [r12], 0
	je	.label_26
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_29
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_27:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_39
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_36
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_30
	.section	.text
	.align	16
	#Procedure 0x40186a
	.globl sub_40186a
	.type sub_40186a, @function
sub_40186a:

	nop	word ptr [rax + rax]
.label_36:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_30:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_27
.label_29:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_26
.label_20:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_37
	mov	rdi, qword ptr [rsp]
	call	free
.label_24:
	xor	ebp, ebp
.label_25:
	mov	eax, ebp
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_39:
	call	abort
.label_37:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4018da
	.globl sub_4018da
	.type sub_4018da, @function
sub_4018da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018e0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_41]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_42]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_43]
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
	#Procedure 0x40194e
	.globl sub_40194e
	.type sub_40194e, @function
sub_40194e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401950
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
	#Procedure 0x40195f
	.globl sub_40195f
	.type sub_40195f, @function
sub_40195f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401960

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
	mov	r13d, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_75
	call	setlocale
	mov	edi, OFFSET FLAT:label_48
	mov	esi, OFFSET FLAT:label_49
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_48
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	ebx, 0xffffffff
	xor	ecx, ecx
.label_699:
	mov	r15d, ecx
	mov	ebp, ebx
	jmp	.label_58
.label_695:
	mov	ebp, 2
	nop	
.label_58:
	mov	ebx, ebp
	jmp	.label_51
	.section	.text
	.align	16
	#Procedure 0x4019c4
	.globl sub_4019c4
	.type sub_4019c4, @function
sub_4019c4:

	nop	word ptr cs:[rax + rax]
.label_697:
	mov	byte ptr [rip + verbose],  0
.label_51:
	xor	ebp, ebp
	mov	edx, OFFSET FLAT:label_69
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r13d
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x64
	jle	.label_60
	add	eax, -0x65
	cmp	eax, 0x15
	ja	.label_71
	mov	cl, 1
	jmp	qword ptr [(rax * 8) + label_46]
.label_696:
	mov	byte ptr [rip + no_newline],  1
	jmp	.label_51
.label_698:
	mov	byte ptr [rip + verbose],  1
	jmp	.label_51
.label_694:
	mov	ebp, 1
	jmp	.label_58
.label_60:
	cmp	eax, -1
	jne	.label_53
	mov	eax, dword ptr [rip + optind]
	cmp	eax, r13d
	jge	.label_62
	mov	ecx, r13d
	sub	ecx, eax
	cmp	ecx, 2
	jl	.label_65
	cmp	byte ptr [rip + no_newline],  1
	jne	.label_66
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_67
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	eax, dword ptr [rip + optind]
.label_66:
	mov	byte ptr [rip + no_newline],  0
.label_65:
	xor	r12d, r12d
	cmp	eax, r13d
	jge	.label_47
	xor	ecx, ecx
	test	r15b, r15b
	mov	edx, 0xa
	mov	dword ptr [rsp], 0
	cmovne	edx, ecx
	mov	dword ptr [rsp + 4], edx
	jne	.label_50
	mov	cl, 0xa
	mov	dword ptr [rsp], ecx
.label_50:
	xor	r12d, r12d
	cmp	ebx, -1
	jne	.label_45
	jmp	.label_54
.label_52:
	mov	esi, dword ptr [rsp + 4]
	call	__overflow
	jmp	.label_55
	.section	.text
	.align	16
	#Procedure 0x401ac1
	.globl sub_401ac1
	.type sub_401ac1, @function
sub_401ac1:

	nop	word ptr cs:[rax + rax]
.label_45:
	cdqe	
	mov	r15, qword ptr [r14 + rax*8]
	mov	rdi, r15
	mov	esi, ebx
	call	canonicalize_filename_mode
	mov	rbp, rax
	test	rbp, rbp
	je	.label_57
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rbp
	call	fputs_unlocked
	movzx	eax, byte ptr [rip + no_newline]
	test	al, al
	jne	.label_55
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_52
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	ecx, dword ptr [rsp]
	mov	byte ptr [rax], cl
.label_55:
	mov	rdi, rbp
	call	free
	jmp	.label_61
	.section	.text
	.align	16
	#Procedure 0x401b2a
	.globl sub_401b2a
	.type sub_401b2a, @function
sub_401b2a:

	nop	word ptr [rax + rax]
.label_57:
	mov	r12d, 1
	cmp	byte ptr [rip + verbose],  1
	jne	.label_61
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_59
	xor	eax, eax
	mov	esi, ebp
	call	error
	nop	dword ptr [rax + rax]
.label_61:
	mov	eax, dword ptr [rip + optind]
	inc	eax
	mov	dword ptr [rip + optind],  eax
	cmp	eax, r13d
	jl	.label_45
	jmp	.label_47
.label_68:
	mov	esi, dword ptr [rsp + 4]
	call	__overflow
	jmp	.label_56
	.section	.text
	.align	16
	#Procedure 0x401b97
	.globl sub_401b97
	.type sub_401b97, @function
sub_401b97:

	nop	word ptr [rax + rax]
.label_54:
	cdqe	
	mov	rbp, qword ptr [r14 + rax*8]
	mov	esi, 0x3f
	mov	rdi, rbp
	call	areadlink_with_size
	mov	rbx, rax
	test	rbx, rbx
	je	.label_63
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rbx
	call	fputs_unlocked
	movzx	eax, byte ptr [rip + no_newline]
	test	al, al
	jne	.label_56
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_68
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	ecx, dword ptr [rsp]
	mov	byte ptr [rax], cl
.label_56:
	mov	rdi, rbx
	call	free
	jmp	.label_44
	.section	.text
	.align	16
	#Procedure 0x401bfd
	.globl sub_401bfd
	.type sub_401bfd, @function
sub_401bfd:

	nop	dword ptr [rax]
.label_63:
	mov	r12d, 1
	cmp	byte ptr [rip + verbose],  1
	jne	.label_44
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_59
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	dword ptr [rax + rax]
.label_44:
	mov	eax, dword ptr [rip + optind]
	inc	eax
	mov	dword ptr [rip + optind],  eax
	cmp	eax, r13d
	jl	.label_54
.label_47:
	mov	eax, r12d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_53:
	cmp	eax, 0xffffff7d
	je	.label_70
	cmp	eax, 0xffffff7e
	jne	.label_71
	xor	edi, edi
	call	usage
.label_70:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_72
	mov	edx, OFFSET FLAT:label_73
	mov	r8d, OFFSET FLAT:label_74
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_71:
	mov	edi, 1
	call	usage
.label_62:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
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
	#Procedure 0x401ce3
	.globl sub_401ce3
	.type sub_401ce3, @function
sub_401ce3:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401cf0

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
	je	.label_76
	cmp	r15, -2
	jb	.label_76
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_76
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_76:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401d46
	.globl sub_401d46
	.type sub_401d46, @function
sub_401d46:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d50
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_41]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_42]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_43]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_77
	test	rsi, rsi
	je	.label_77
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
.label_77:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401dbc
	.globl sub_401dbc
	.type sub_401dbc, @function
sub_401dbc:

	nop	dword ptr [rax]
.label_79:
	mov	ecx, 1
.label_78:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x401dd0
	.globl sub_401dd0
	.type sub_401dd0, @function
sub_401dd0:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401dd5

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
	.align	16
	#Procedure 0x401e10

	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_80
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_81
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	test	eax, eax
	sete	al
	add	rsp, 8
	ret	
.label_80:
	xor	eax, eax
	ret	
.label_81:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e40
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e45
	.globl sub_401e45
	.type sub_401e45, @function
sub_401e45:

	nop	word ptr cs:[rax + rax]
.label_85:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401e55
	.globl sub_401e55
	.type sub_401e55, @function
sub_401e55:

	nop	word ptr cs:[rax + rax]
.label_86:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rcx + rax + 0x10]
	nop	word ptr cs:[rax + rax]
.label_83:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_82
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_83
.label_82:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_84:
	test	rdx, rdx
	je	.label_86
	mov	rax, qword ptr [rdx]
	jmp	.label_82
	.section	.text
	.align	16
	#Procedure 0x401ea0
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_85
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_87:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_84
	test	rdx, rdx
	jne	.label_87
	jmp	.label_86
.label_88:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401ee5
	.globl sub_401ee5
	.type sub_401ee5, @function
sub_401ee5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ef3

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_88
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f00
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
	#Procedure 0x401f18
	.globl sub_401f18
	.type sub_401f18, @function
sub_401f18:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f20

	.globl areadlink_with_size
	.type areadlink_with_size, @function
areadlink_with_size:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdi
	cmp	rsi, 0x401
	lea	rax, [rsi + 1]
	mov	r12d, 0x401
	cmovb	r12, rax
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	mov	qword ptr [rsp], rax
	test	rbx, rbx
	je	.label_91
	xor	eax, eax
	mov	qword ptr [rsp], rax
	nop	word ptr cs:[rax + rax]
.label_93:
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r12
	call	readlink
	mov	r13, rax
	test	r13, r13
	jns	.label_97
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	jne	.label_90
.label_97:
	cmp	r13, r12
	jb	.label_92
	mov	rdi, rbx
	call	free
	mov	rax, r12
	shr	rax, 0x3e
	jne	.label_94
	add	r12, r12
	jmp	.label_95
	.section	.text
	.align	16
	#Procedure 0x401fb3
	.globl sub_401fb3
	.type sub_401fb3, @function
sub_401fb3:

	nop	word ptr cs:[rax + rax]
.label_94:
	movabs	rax, 0x7fffffffffffffff
	cmp	r12, rax
	mov	r12, rax
	jae	.label_89
.label_95:
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_93
	jmp	.label_91
.label_92:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp], rbx
	jmp	.label_91
.label_89:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_96
.label_90:
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
.label_96:
	xor	eax, eax
	mov	qword ptr [rsp], rax
.label_91:
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
	#Procedure 0x402021
	.globl sub_402021
	.type sub_402021, @function
sub_402021:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402030
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
	#Procedure 0x402066
	.globl sub_402066
	.type sub_402066, @function
sub_402066:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402070

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rsi
	lea	rdx, [rsp + 8]
	call	hash_insert_if_absent
	mov	ecx, eax
	xor	eax, eax
	cmp	ecx, -1
	je	.label_98
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_98:
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40209c
	.globl sub_40209c
	.type sub_40209c, @function
sub_40209c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4020a0
	.globl hash_delete
	.type hash_delete, @function
hash_delete:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rdi, r14
	call	qword ptr [r15 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r15 + 0x10]
	jae	.label_111
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_103
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_119
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_121
	mov	r14, qword ptr [r13]
.label_119:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_117
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_100
.label_121:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_103
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_116:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_112
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_115
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_116
	jmp	.label_103
.label_117:
	mov	qword ptr [r13], 0
	jmp	.label_100
.label_112:
	mov	rcx, rax
	jmp	.label_123
.label_115:
	mov	r14, qword ptr [rcx]
.label_123:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_100:
	xor	r12d, r12d
	test	r14, r14
	je	.label_103
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_101
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_120
	cvtsi2ss	xmm1, rax
	jmp	.label_113
.label_120:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_113:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_118
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	jmp	.label_122
.label_118:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_122:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_101
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_104
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3, dword ptr [rip + label_107]
	jbe	.label_108
	movss	xmm4, dword ptr [rip + label_109]
	ucomiss	xmm4, xmm3
	jbe	.label_108
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_108
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4, dword ptr [rip + label_114]
	jbe	.label_108
	movss	xmm4, dword ptr [rip + label_107]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_108
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_110]
	ucomiss	xmm5, xmm3
	jb	.label_108
	ucomiss	xmm3, xmm4
	ja	.label_99
.label_108:
	mov	qword ptr [r15 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_99
.label_104:
	mov	eax, OFFSET FLAT:default_tuning
.label_99:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_101
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_105
	mulss	xmm0, dword ptr [rax + 8]
.label_105:
	movss	xmm1, dword ptr [rip + label_22]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	test	al, al
	jne	.label_101
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_106
	nop	word ptr cs:[rax + rax]
.label_102:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_102
.label_106:
	mov	qword ptr [r15 + 0x48], 0
.label_101:
	mov	r12, r14
.label_103:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_111:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402333
	.globl sub_402333
	.type sub_402333, @function
sub_402333:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402340
	.globl triple_compare
	.type triple_compare, @function
triple_compare:

	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_124
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_125
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	same_name
	add	rsp, 8
	ret	
.label_125:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x402368
	.globl sub_402368
	.type sub_402368, @function
sub_402368:

	nop	dword ptr [rax + rax]
.label_124:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x402370

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_130
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_130
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_128
	.section	.text
	.align	16
	#Procedure 0x40238f
	.globl sub_40238f
	.type sub_40238f, @function
sub_40238f:

	nop	
.label_126:
	add	r15, 0x10
.label_128:
	cmp	r15, rax
	jae	.label_130
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_126
	test	r15, r15
	je	.label_126
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_134
.label_136:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_134:
	test	rbx, rbx
	jne	.label_136
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_126
.label_130:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_133
	.section	.text
	.align	16
	#Procedure 0x4023cf
	.globl sub_4023cf
	.type sub_4023cf, @function
sub_4023cf:

	nop	
.label_127:
	add	r15, 0x10
.label_133:
	cmp	r15, rax
	jae	.label_131
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_127
	nop	word ptr cs:[rax + rax]
.label_135:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_135
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_127
.label_131:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_129
.label_132:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_132
.label_129:
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x402436
	.globl sub_402436
	.type sub_402436, @function
sub_402436:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402440
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	.section	.text
	.align	16
	#Procedure 0x402445
	.globl sub_402445
	.type sub_402445, @function
sub_402445:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402450

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_137
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_137
	test	byte ptr [rbx + 1], 1
	je	.label_137
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_137:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x402483
	.globl sub_402483
	.type sub_402483, @function
sub_402483:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402490

	.globl seen_file
	.type seen_file, @function
seen_file:
	test	rdi, rdi
	je	.label_138
	sub	rsp, 0x18
	mov	qword ptr [rsp], rsi
	mov	rax, qword ptr [rdx + 8]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rdx]
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsp]
	call	hash_lookup
	test	rax, rax
	setne	al
	add	rsp, 0x18
	ret	
.label_138:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4024c5
	.globl sub_4024c5
	.type sub_4024c5, @function
sub_4024c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024d0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x4024d8
	.globl sub_4024d8
	.type sub_4024d8, @function
sub_4024d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024e0
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
	je	.label_139
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
.label_139:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402548
	.globl sub_402548
	.type sub_402548, @function
sub_402548:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402550
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_41]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_42]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_43]
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
	#Procedure 0x4025bf
	.globl sub_4025bf
	.type sub_4025bf, @function
sub_4025bf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4025c0

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	rol	rdi, 0x3d
	xor	edx, edx
	mov	rax, rdi
	div	rsi
	mov	rax, rdx
	ret	
.label_140:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4025d5
	.globl sub_4025d5
	.type sub_4025d5, @function
sub_4025d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4025df
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
	je	.label_141
	test	r14, r14
	je	.label_140
.label_141:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_142:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402615
	.globl sub_402615
	.type sub_402615, @function
sub_402615:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402623

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
	je	.label_143
	test	r15, r15
	je	.label_142
.label_143:
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
	#Procedure 0x402660
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
	je	.label_144
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
.label_144:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4026c8
	.globl sub_4026c8
	.type sub_4026c8, @function
sub_4026c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026d0
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
	je	.label_145
	mov	qword ptr [rax], rbx
.label_145:
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
	#Procedure 0x4027bc
	.globl sub_4027bc
	.type sub_4027bc, @function
sub_4027bc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4027c0

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r14, rdi
	mov	r13, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	cmp	r13, rax
	jae	.label_146
	test	dl, dl
	je	.label_159
	nop	dword ptr [rax]
.label_147:
	cmp	qword ptr [r13], 0
	je	.label_162
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	je	.label_166
	mov	rsi, qword ptr [r14 + 0x10]
	nop	dword ptr [rax + rax]
.label_161:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_152
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_160
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_154
	.section	.text
	.align	16
	#Procedure 0x40284a
	.globl sub_40284a
	.type sub_40284a, @function
sub_40284a:

	nop	word ptr [rax + rax]
.label_160:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_154:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_161
	mov	rax, qword ptr [r15 + 8]
.label_166:
	mov	qword ptr [r13 + 8], 0
.label_162:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_147
	jmp	.label_146
	.section	.text
	.align	16
	#Procedure 0x402894
	.globl sub_402894
	.type sub_402894, @function
sub_402894:

	nop	word ptr cs:[rax + rax]
.label_159:
	mov	r12, qword ptr [r13]
	test	r12, r12
	je	.label_158
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	mov	rsi, qword ptr [r14 + 0x10]
	je	.label_153
	nop	word ptr [rax + rax]
.label_164:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_152
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_156
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_151
	.section	.text
	.align	16
	#Procedure 0x4028fa
	.globl sub_4028fa
	.type sub_4028fa, @function
sub_4028fa:

	nop	word ptr [rax + rax]
.label_156:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_151:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_164
	mov	r12, qword ptr [r13]
.label_153:
	mov	qword ptr [r13 + 8], 0
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r14 + 0x10]
	jae	.label_165
	mov	rbp, qword ptr [r14]
	shl	rbx, 4
	cmp	qword ptr [rbp + rbx], 0
	je	.label_149
	mov	rax, qword ptr [r14 + 0x48]
	test	rax, rax
	je	.label_155
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 0x48], rcx
	jmp	.label_157
	.section	.text
	.align	16
	#Procedure 0x402968
	.globl sub_402968
	.type sub_402968, @function
sub_402968:

	nop	dword ptr [rax + rax]
.label_149:
	add	rbp, rbx
	mov	qword ptr [rbp], r12
	inc	qword ptr [r14 + 0x18]
	jmp	.label_163
.label_155:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_150
.label_157:
	mov	qword ptr [rax], r12
	mov	rcx, qword ptr [rbp + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp + rbx + 8], rax
.label_163:
	mov	qword ptr [r13], 0
	dec	qword ptr [r15 + 0x18]
	mov	rax, qword ptr [r15 + 8]
.label_158:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_159
.label_146:
	mov	al, 1
.label_148:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_150:
	xor	eax, eax
	jmp	.label_148
.label_152:
	call	abort
.label_165:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4029d9
	.globl sub_4029d9
	.type sub_4029d9, @function
sub_4029d9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4029e0

	.globl canonicalize_filename_mode
	.type canonicalize_filename_mode, @function
canonicalize_filename_mode:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xf8
	mov	r14d, esi
	mov	r12, rdi
	mov	ebx, r14d
	and	ebx, 3
	lea	eax, [r14 + 3]
	test	eax, ebx
	jne	.label_169
	test	r12, r12
	je	.label_169
	mov	al, byte ptr [r12]
	cmp	al, 0x2f
	je	.label_170
	test	al, al
	jne	.label_173
	call	__errno_location
	mov	dword ptr [rax], 2
	jmp	.label_176
.label_169:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_176:
	xor	ebp, ebp
.label_194:
	mov	rax, rbp
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_170:
	mov	edi, 0x1000
	call	xmalloc
	mov	rdi, rax
	mov	byte ptr [rdi], 0x2f
	lea	r8, [rdi + 0x1000]
	lea	rbp, [rdi + 1]
	jmp	.label_193
.label_173:
	call	xgetcwd
	xor	ebp, ebp
	test	rax, rax
	je	.label_194
	xor	esi, esi
	mov	rbp, rax
	mov	rdi, rbp
	call	__rawmemchr
	mov	rdi, rbp
	mov	r8, rax
	mov	rbp, r8
	sub	rbp, rdi
	cmp	rbp, 0xfff
	jg	.label_206
	mov	esi, 0x1000
	call	xrealloc
	mov	rdi, rax
	add	rbp, rdi
	mov	r8, rdi
	add	r8, 0x1000
	jmp	.label_193
.label_206:
	mov	rbp, r8
.label_193:
	mov	al, byte ptr [r12]
	xor	r15d, r15d
	test	al, al
	je	.label_232
	mov	ecx, r14d
	and	ecx, 4
	mov	dword ptr [rsp + 0x50], ecx
	mov	ecx, r14d
	and	ecx, 7
	mov	dword ptr [rsp + 0x54], ecx
	xor	ecx, ecx
	mov	dword ptr [rsp + 0x2c], ebx
	cmp	ebx, 2
	setne	cl
	lea	ecx, [rcx + rcx*8 + 4]
	mov	dword ptr [rsp + 0x4c], ecx
	xor	r15d, r15d
	and	r14b, 3
	mov	qword ptr [rsp + 0x60], r14
	mov	qword ptr [rsp + 0x30], r12
	mov	r14, r12
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x18], rcx
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x38], rcx
.label_209:
	mov	qword ptr [rsp + 0x10], r15
	mov	r13, r14
.label_190:
	lea	rcx, [rdi + 1]
	mov	r12, rbp
.label_195:
	cmp	r12, rcx
	jbe	.label_192
	mov	edx, eax
	nop	word ptr cs:[rax + rax]
.label_210:
	cmp	dl, 0x2f
	mov	r14, r13
	lea	rsi, [r13 + 1]
	jne	.label_178
	nop	dword ptr [rax]
.label_188:
	movzx	edx, byte ptr [rsi]
	inc	rsi
	cmp	dl, 0x2f
	je	.label_188
	lea	r14, [rsi - 1]
.label_178:
	mov	eax, edx
	mov	r13, r14
	jmp	.label_231
	.section	.text
	.align	16
	#Procedure 0x402b56
	.globl sub_402b56
	.type sub_402b56, @function
sub_402b56:

	nop	word ptr cs:[rax + rax]
.label_199:
	movzx	eax, byte ptr [r13 + 1]
	inc	r13
.label_231:
	cmp	al, 0x2f
	je	.label_198
	test	al, al
	jne	.label_199
.label_198:
	mov	r15, r13
	sub	r15, r14
	cmp	r15, 1
	jne	.label_202
	cmp	byte ptr [r14], 0x2e
	jne	.label_191
	mov	dl, byte ptr [r13]
	test	dl, dl
	jne	.label_210
	jmp	.label_182
.label_202:
	test	r15, r15
	je	.label_182
	cmp	r15, 2
	jne	.label_214
	cmp	dl, 0x2e
	jne	.label_184
	cmp	byte ptr [rsi], 0x2e
	jne	.label_184
	dec	r12
	mov	rdx, r12
	nop	
.label_224:
	mov	r12, rdx
	cmp	r12, rdi
	jbe	.label_218
	lea	rdx, [r12 - 1]
	cmp	byte ptr [r12 - 1], 0x2f
	jne	.label_224
.label_218:
	test	al, al
	jne	.label_195
	jmp	.label_182
.label_192:
	cmp	al, 0x2f
	mov	edx, eax
	mov	r14, r13
	lea	rcx, [r13 + 1]
	jne	.label_233
	nop	
.label_236:
	movzx	edx, byte ptr [rcx]
	inc	rcx
	cmp	dl, 0x2f
	je	.label_236
	lea	r14, [rcx - 1]
.label_233:
	mov	eax, edx
	mov	r13, r14
	jmp	.label_237
	.section	.text
	.align	16
	#Procedure 0x402c06
	.globl sub_402c06
	.type sub_402c06, @function
sub_402c06:

	nop	word ptr cs:[rax + rax]
.label_177:
	movzx	eax, byte ptr [r13 + 1]
	inc	r13
.label_237:
	test	al, al
	je	.label_175
	cmp	al, 0x2f
	jne	.label_177
.label_175:
	mov	r15, r13
	sub	r15, r14
	cmp	r15, 1
	je	.label_219
	cmp	r15, 2
	jne	.label_181
	cmp	dl, 0x2e
	jne	.label_184
	cmp	byte ptr [rcx], 0x2e
	je	.label_187
	jmp	.label_184
.label_219:
	cmp	dl, 0x2e
	jne	.label_191
.label_187:
	test	al, al
	jne	.label_192
	jmp	.label_182
.label_191:
	mov	r15d, 1
.label_214:
	cmp	byte ptr [r12 - 1], 0x2f
	je	.label_196
	mov	byte ptr [r12], 0x2f
	inc	r12
.label_196:
	lea	rax, [r12 + r15]
	cmp	rax, r8
	jae	.label_200
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 8], rdi
	jmp	.label_204
.label_200:
	sub	r12, rdi
	sub	r8, rdi
	lea	rbp, [r15 + 1]
	cmp	r15, 0xfff
	mov	eax, 0x1000
	cmovle	rbp, rax
	add	rbp, r8
	mov	rsi, rbp
	call	xrealloc
	add	rbp, rax
	mov	qword ptr [rsp + 8], rax
	add	r12, rax
	mov	qword ptr [rsp + 0x20], rbp
.label_204:
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	lea	rbp, [r12 + r15]
	mov	byte ptr [r12 + r15], 0
	cmp	dword ptr [rsp + 0x54], 6
	jne	.label_221
	mov	dword ptr [rsp + 0x80], 0
	xor	eax, eax
	jmp	.label_228
.label_221:
	cmp	dword ptr [rsp + 0x50], 0
	lea	rdx, [rsp + 0x68]
	mov	edi, 1
	jne	.label_234
	mov	rsi, qword ptr [rsp + 8]
	call	__lxstat
	jmp	.label_212
.label_234:
	mov	rsi, qword ptr [rsp + 8]
	call	__xstat
.label_212:
	test	eax, eax
	je	.label_171
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rax, qword ptr [rsp + 0x60]
	cmp	al, 1
	je	.label_174
	test	al, al
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x20]
	lea	rdx, [rsp + 0x68]
	je	.label_211
	mov	dword ptr [rsp + 0x80], 0
	xor	eax, eax
	jmp	.label_185
.label_171:
	mov	eax, dword ptr [rsp + 0x80]
.label_228:
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x20]
	lea	rdx, [rsp + 0x68]
.label_185:
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_197
	mov	qword ptr [rsp + 0x40], rbp
	mov	dword ptr [rsp + 0x28], ebx
	mov	rax, qword ptr [rsp + 0x38]
	test	rax, rax
	jne	.label_201
	mov	edi, 7
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash
	mov	ecx, OFFSET FLAT:triple_compare_ino_str
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	lea	rdx, [rsp + 0x68]
	test	rax, rax
	je	.label_216
.label_201:
	mov	rbx, rax
	mov	rdi, rbx
	mov	r14, qword ptr [rsp + 0x30]
	mov	rsi, r14
	mov	rbp, rdx
	call	seen_file
	test	al, al
	mov	qword ptr [rsp + 0x38], rbx
	je	.label_220
	cmp	dword ptr [rsp + 0x2c], 2
	mov	ebx, dword ptr [rsp + 0x28]
	mov	eax, 0x28
	cmovne	ebx, eax
	mov	eax, dword ptr [rsp + 0x4c]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_225
.label_220:
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, rbp
	call	record_file
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rdi, qword ptr [rsp + 8]
	call	areadlink_with_size
	test	rax, rax
	jne	.label_205
	call	__errno_location
	cmp	dword ptr [rsp + 0x2c], 2
	mov	ebx, dword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x40]
	jne	.label_167
	cmp	dword ptr [rax], 0xc
	je	.label_167
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x20]
	jmp	.label_230
.label_174:
	mov	rax, r13
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x20]
	nop	dword ptr [rax + rax]
.label_189:
	movzx	ecx, byte ptr [rax]
	inc	rax
	cmp	cl, 0x2f
	je	.label_189
	xor	eax, eax
	test	cl, cl
	setne	al
	cmp	ebx, 2
	lea	eax, [rax + rax*8 + 4]
	mov	ecx, 0xd
	cmovne	eax, ecx
.label_225:
	and	al, 0xf
	cmp	al, 4
	jne	.label_213
.label_230:
	mov	al, byte ptr [r13]
	test	al, al
	jne	.label_190
	jmp	.label_235
.label_184:
	mov	r15d, 2
	jmp	.label_214
.label_181:
	test	r15, r15
	jne	.label_214
	jmp	.label_182
.label_197:
	movzx	eax, ax
	cmp	eax, 0x4000
	je	.label_217
	cmp	dword ptr [rsp + 0x2c], 2
	je	.label_217
	mov	cl, byte ptr [r13]
	mov	eax, 0x14
	test	cl, cl
	jne	.label_222
.label_217:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, rax
	mov	r14, r13
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_229
.label_205:
	mov	qword ptr [rsp + 0x58], rax
	mov	rdi, rax
	call	strlen
	mov	r14, rax
	mov	rdi, r13
	call	strlen
	mov	rdx, rax
	lea	rcx, [r14 + rdx + 1]
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	mov	ebx, dword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	qword ptr [rsp + 0x30], r14
	je	.label_168
	cmp	rcx, rax
	jbe	.label_180
	mov	rdi, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rsi, rcx
	mov	r14, rdx
	call	xrealloc
	jmp	.label_186
.label_168:
	cmp	rcx, 0x1000
	mov	eax, 0x1000
	cmovbe	rcx, rax
	mov	qword ptr [rsp + 0x18], rcx
	mov	rdi, rcx
	mov	r14, rdx
	call	xmalloc
.label_186:
	mov	rdx, r14
	mov	r14, rax
	jmp	.label_226
.label_180:
	mov	qword ptr [rsp + 0x18], rax
	mov	r14, qword ptr [rsp + 0x10]
.label_226:
	mov	rdi, qword ptr [rsp + 0x30]
	add	rdi, r14
	inc	rdx
	mov	rsi, r13
	call	memmove
	mov	rdi, r14
	mov	r13, qword ptr [rsp + 0x58]
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x30]
	call	memcpy
	mov	rdi, r13
	mov	rcx, qword ptr [rsp + 8]
	lea	rax, [rcx + 1]
	cmp	byte ptr [rdi], 0x2f
	jne	.label_227
	mov	byte ptr [rcx], 0x2f
	mov	rbp, rax
	jmp	.label_183
.label_227:
	cmp	rbp, rax
	jbe	.label_183
	lea	rax, [r12 + r15 - 1]
.label_223:
	mov	rbp, rax
	cmp	rbp, rcx
	jbe	.label_183
	lea	rax, [rbp - 1]
	cmp	byte ptr [rbp - 1], 0x2f
	jne	.label_223
.label_183:
	call	free
	mov	rdi, qword ptr [rsp + 8]
	mov	r15, r14
	mov	qword ptr [rsp + 0x30], r14
	mov	r8, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x18]
.label_229:
	mov	al, byte ptr [r14]
	test	al, al
	mov	qword ptr [rsp + 0x18], rcx
	jne	.label_209
	jmp	.label_203
.label_182:
	mov	rbp, r12
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_203
.label_232:
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
.label_203:
	lea	rax, [rdi + 1]
	cmp	rbp, rax
	jbe	.label_172
	lea	rax, [rbp - 1]
	cmp	byte ptr [rbp - 1], 0x2f
	cmove	rbp, rax
.label_172:
	mov	byte ptr [rbp], 0
	lea	rax, [rbp + 1]
	cmp	r8, rax
	je	.label_179
	mov	esi, 1
	sub	rsi, rdi
	add	rsi, rbp
	call	xrealloc
	mov	rbp, rax
	jmp	.label_208
.label_179:
	mov	rbp, rdi
.label_208:
	mov	rdi, r15
	call	free
	mov	rdi, qword ptr [rsp + 0x38]
	test	rdi, rdi
	je	.label_194
	call	hash_free
	jmp	.label_194
.label_235:
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_203
.label_167:
	mov	ebx, dword ptr [rax]
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_207
.label_213:
	cmp	al, 0xd
	jne	.label_194
	jmp	.label_207
.label_211:
	mov	eax, ebx
.label_222:
	mov	ebx, eax
.label_207:
	mov	ebp, ebx
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [rsp + 0x38]
	test	rdi, rdi
	je	.label_215
	call	hash_free
.label_215:
	call	__errno_location
	mov	dword ptr [rax], ebp
	jmp	.label_176
.label_216:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4030bd
	.globl sub_4030bd
	.type sub_4030bd, @function
sub_4030bd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4030c0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4030d1
	.globl sub_4030d1
	.type sub_4030d1, @function
sub_4030d1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030e0

	.globl triple_free
	.type triple_free, @function
triple_free:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x4030f5
	.globl sub_4030f5
	.type sub_4030f5, @function
sub_4030f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403100

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_238
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_240
.label_238:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_240:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_241
	cmp	r10d, 0x29
	jae	.label_250
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_239
.label_250:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_239:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_241
	cmp	r10d, 0x29
	jae	.label_248
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_249
.label_248:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_249:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_241
	cmp	r10d, 0x29
	jae	.label_246
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_247
.label_246:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_247:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_241
	cmp	r10d, 0x29
	jae	.label_244
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_245
.label_244:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_245:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_241
	cmp	r10d, 0x29
	jae	.label_242
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_243
.label_242:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_243:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_241
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_241
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_241
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_241
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_241:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x4032e2
	.globl sub_4032e2
	.type sub_4032e2, @function
sub_4032e2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032f0

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
	jne	.label_252
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_259
	cmp	ecx, 0x55
	jne	.label_251
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_251
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_251
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_251
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_251
	cmp	byte ptr [rax + 5], 0
	jne	.label_251
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_256
	mov	eax, OFFSET FLAT:label_257
	jmp	.label_258
.label_259:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_251
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_251
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_251
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_251
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_251
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_251
	cmp	byte ptr [rax + 7], 0
	je	.label_253
.label_251:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_254
	mov	eax, OFFSET FLAT:label_255
.label_258:
	cmove	rax, rcx
.label_252:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_253:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_260
	mov	eax, OFFSET FLAT:label_261
	jmp	.label_258
	.section	.text
	.align	16
	#Procedure 0x4033b5
	.globl sub_4033b5
	.type sub_4033b5, @function
sub_4033b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033c0

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	mov	cl, byte ptr [rdi]
	xor	eax, eax
	test	cl, cl
	je	.label_262
	inc	rdi
	xor	eax, eax
	nop	dword ptr [rax]
.label_263:
	movsx	rcx, cl
	rol	rax, 9
	add	rax, rcx
	movzx	ecx, byte ptr [rdi]
	inc	rdi
	test	cl, cl
	jne	.label_263
.label_262:
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4033ee
	.globl sub_4033ee
	.type sub_4033ee, @function
sub_4033ee:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4033f0
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
	#Procedure 0x4034b1
	.globl sub_4034b1
	.type sub_4034b1, @function
sub_4034b1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034c0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_41]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_42]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_43]
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
	#Procedure 0x403514
	.globl sub_403514
	.type sub_403514, @function
sub_403514:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403520
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40352a
	.globl sub_40352a
	.type sub_40352a, @function
sub_40352a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403530
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_264
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_265:
	mov	rcx, rdx
	shl	rcx, 5
	sub	rcx, rdx
	movzx	eax, al
	add	rax, rcx
	xor	edx, edx
	div	rsi
	movzx	eax, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_265
.label_264:
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403563
	.globl sub_403563
	.type sub_403563, @function
sub_403563:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403570

	.globl triple_hash
	.type triple_hash, @function
triple_hash:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	hash_pjw
	xor	rax, qword ptr [rbx + 8]
	xor	edx, edx
	div	r14
	mov	rax, rdx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x403596
	.globl sub_403596
	.type sub_403596, @function
sub_403596:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4035a0

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4035a7
	.globl sub_4035a7
	.type sub_4035a7, @function
sub_4035a7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4035b0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_268
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_270
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_267
	call	free
	xor	eax, eax
	jmp	.label_269
.label_270:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4035e7
	.globl sub_4035e7
	.type sub_4035e7, @function
sub_4035e7:

	nop	word ptr cs:[rax + rax]
.label_266:
	call	xalloc_die
.label_268:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_266
	mov	qword ptr [rsi], rbx
.label_267:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_269
	test	rax, rax
	je	.label_266
.label_269:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403620
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	rcx, qword ptr [rdi + 0x20]
	mov	r12, qword ptr [rdi + 0x10]
	mov	r14, qword ptr [rdi + 0x18]
	mov	rax, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	ebx, ebx
	cmp	rax, rdi
	jae	.label_271
	mov	rdx, rax
	not	rdx
	add	rdi, rdx
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ebx, ebx
	test	rdi, rdi
	je	.label_274
	sub	rsi, r8
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_282:
	cmp	qword ptr [rax], 0
	je	.label_280
	xor	edi, edi
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_284:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_284
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_280:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_281
	lea	rdx, [rax + 0x10]
	xor	edi, edi
.label_285:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_285
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_281:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_282
.label_274:
	test	r8, r8
	je	.label_271
	cmp	qword ptr [rax], 0
	je	.label_271
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_272:
	mov	rax, qword ptr [rax + 8]
	inc	rdx
	test	rax, rax
	jne	.label_272
	cmp	rdx, rbx
	cmova	rbx, rdx
.label_271:
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_273
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_283
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2, xmmword ptr [rip + label_276]
	punpckldq	xmm1, xmm2
	movapd	xmm3, xmmword ptr [rip + label_277]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_278]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_279
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_275
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
	.section	.text
	.align	16
	#Procedure 0x40378f
	.globl sub_40378f
	.type sub_40378f, @function
sub_40378f:

	nop	
.label_290:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403795
	.globl sub_403795
	.type sub_403795, @function
sub_403795:

	nop	dword ptr [rax + rax]
.label_288:
	mov	r15, qword ptr [rbx]
.label_287:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4037af

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_290
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_287
	add	rbx, rax
	je	.label_287
	cmp	rsi, r12
	je	.label_289
	xor	r15d, r15d
	nop	
.label_286:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_288
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_287
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_286
.label_289:
	mov	r15, r12
	jmp	.label_287
	.section	.text
	.align	16
	#Procedure 0x403810

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_291
	test	rax, rax
	je	.label_292
.label_291:
	pop	rbx
	ret	
.label_292:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40382a
	.globl sub_40382a
	.type sub_40382a, @function
sub_40382a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403830

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_294
	cmp	byte ptr [rax], 0x43
	jne	.label_296
	cmp	byte ptr [rax + 1], 0
	je	.label_293
.label_296:
	mov	esi, OFFSET FLAT:label_295
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_294
.label_293:
	xor	ebx, ebx
.label_294:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403861
	.globl sub_403861
	.type sub_403861, @function
sub_403861:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403870
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax, dword ptr [rip + label_297]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0, xmmword ptr [rip + default_tuning]
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	16
	#Procedure 0x403884
	.globl sub_403884
	.type sub_403884, @function
sub_403884:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403890

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_299:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_298
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_299
.label_298:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4038b6
	.globl sub_4038b6
	.type sub_4038b6, @function
sub_4038b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038c0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_300
	test	rax, rax
	je	.label_301
.label_300:
	pop	rbx
	ret	
.label_301:
	call	xalloc_die
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
	je	.label_302
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
.label_302:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40394c
	.globl sub_40394c
	.type sub_40394c, @function
sub_40394c:

	nop	dword ptr [rax]
.label_303:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403955
	.globl sub_403955
	.type sub_403955, @function
sub_403955:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403960
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_303
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_304
	test	rax, rax
	je	.label_303
.label_304:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403990
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403998
	.globl sub_403998
	.type sub_403998, @function
sub_403998:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039a0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_41]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_42]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_43]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_305
	test	rdx, rdx
	je	.label_305
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_305:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403a0a
	.globl sub_403a0a
	.type sub_403a0a, @function
sub_403a0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a10

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
	#Procedure 0x403a27
	.globl sub_403a27
	.type sub_403a27, @function
sub_403a27:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a30

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_306
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_59
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403a60
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
	#Procedure 0x403a6f
	.globl sub_403a6f
	.type sub_403a6f, @function
sub_403a6f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403a70

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	xor	r15d, r15d
	cmp	byte ptr [r14], 0x2f
	sete	r15b
	call	last_component
	inc	rax
	sub	rax, r14
	nop	word ptr cs:[rax + rax]
.label_310:
	mov	rbx, rax
	lea	r12, [rbx - 1]
	cmp	r15, r12
	jae	.label_307
	lea	rax, [rbx - 1]
	cmp	byte ptr [r14 + rbx - 2], 0x2f
	je	.label_310
.label_307:
	xor	edi, edi
	cmp	rbx, 1
	sete	dil
	add	rdi, rbx
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_309
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r12
	call	memcpy
	cmp	rbx, 1
	jne	.label_308
	mov	byte ptr [r15], 0x2e
	mov	r12d, 1
.label_308:
	mov	byte ptr [r15 + r12], 0
	mov	rax, r15
.label_309:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b06
	.globl sub_403b06
	.type sub_403b06, @function
sub_403b06:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b10

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r8
	mov	rbx, rsi
	mov	r12, rdi
	test	rdx, rdx
	mov	r13d, OFFSET FLAT:raw_hasher
	cmovne	r13, rdx
	test	rcx, rcx
	mov	ebp, OFFSET FLAT:raw_comparator
	cmovne	rbp, rcx
	mov	edi, 0x50
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_312
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_314
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0, dword ptr [rip + label_107]
	jbe	.label_311
	movss	xmm1, dword ptr [rip + label_109]
	ucomiss	xmm1, xmm0
	jbe	.label_311
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1, dword ptr [rip + label_114]
	jbe	.label_311
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_311
	addss	xmm1, dword ptr [rip + label_107]
	ucomiss	xmm0, xmm1
	jbe	.label_311
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2, dword ptr [rip + label_110]
	ucomiss	xmm2, xmm0
	jb	.label_311
	ucomiss	xmm0, xmm1
	jbe	.label_311
.label_314:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_320
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_318
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_319
.label_318:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_319:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1, dword ptr [rip + label_22]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0, dword ptr [rip + label_23]
	jae	.label_311
.label_320:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_313
	.section	.text
	.align	16
	#Procedure 0x403c5e
	.globl sub_403c5e
	.type sub_403c5e, @function
sub_403c5e:

	nop	
.label_315:
	add	rbx, 2
.label_313:
	cmp	rbx, -1
	je	.label_311
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_317
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_316:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_317
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_316
.label_317:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_315
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_311
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_311
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_311
	shl	rbx, 4
	add	rax, rbx
	mov	qword ptr [r15 + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	mov	qword ptr [r15 + 0x30], r13
	mov	qword ptr [r15 + 0x38], rbp
	mov	qword ptr [r15 + 0x40], r14
	mov	qword ptr [r15 + 0x48], 0
	mov	rax, r15
	jmp	.label_312
.label_311:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_312:
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
	#Procedure 0x403d28
	.globl sub_403d28
	.type sub_403d28, @function
sub_403d28:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d30
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
.label_322:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_321
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_322
.label_321:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d6b
	.globl sub_403d6b
	.type sub_403d6b, @function
sub_403d6b:

	nop	dword ptr [rax + rax]
.label_323:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403d75
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_41]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_42]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_43]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_323
	test	rsi, rsi
	je	.label_323
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
	#Procedure 0x403de0
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
	#Procedure 0x403df8
	.globl sub_403df8
	.type sub_403df8, @function
sub_403df8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e00
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_324:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_324
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x403e21
	.globl sub_403e21
	.type sub_403e21, @function
sub_403e21:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e30

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
	je	.label_341
	mov	edx, OFFSET FLAT:label_331
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_338
.label_341:
	mov	edx, OFFSET FLAT:label_339
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_338:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_343
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
	mov	esi, OFFSET FLAT:label_340
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_326
	jmp	qword ptr [(r12 * 8) + label_327]
.label_625:
	add	rsp, 8
	jmp	.label_325
.label_326:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_334
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
	jmp	.label_325
.label_626:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_336
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
.label_627:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_335
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
.label_628:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_332
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
.label_629:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_329
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
	jmp	.label_325
.label_630:
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
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_325
.label_631:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_330
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
	jmp	.label_325
.label_632:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_333
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
	jmp	.label_325
.label_634:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_337
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
	jmp	.label_325
.label_633:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_342
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
.label_325:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404188
	.globl sub_404188
	.type sub_404188, @function
sub_404188:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404190

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
	jmp	.label_389
	.section	.text
	.align	16
	#Procedure 0x40423f
	.globl sub_40423f
	.type sub_40423f, @function
sub_40423f:

	nop	
.label_387:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_367
	or	al, dl
	jne	.label_367
	test	dil, 1
	jne	.label_383
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_367
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_389
	jmp	.label_367
.label_685:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_396
	test	rbp, rbp
	je	.label_428
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_428:
	mov	r14d, 1
	jmp	.label_401
.label_686:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_254
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_402
.label_396:
	xor	r14d, r14d
.label_401:
	mov	eax, OFFSET FLAT:label_254
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_415
	.section	.text
	.align	16
	#Procedure 0x40430f
	.globl sub_40430f
	.type sub_40430f, @function
sub_40430f:

	nop	
.label_389:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_425
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_405]
.label_687:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_435
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_255
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_688:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_420
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_420
	xor	r14d, r14d
	nop	
.label_453:
	cmp	r14, rbp
	jae	.label_459
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_459:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_453
.label_420:
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
	jmp	.label_402
.label_680:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_402
.label_683:
	mov	al, 1
.label_681:
	mov	r12b, 1
.label_684:
	test	r12b, 1
	mov	cl, 1
	je	.label_345
	mov	ecx, eax
.label_345:
	mov	al, cl
.label_682:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_348
	test	rbp, rbp
	je	.label_355
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_355:
	mov	r14d, 1
	jmp	.label_359
.label_348:
	xor	r14d, r14d
.label_359:
	mov	ecx, OFFSET FLAT:label_255
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_415:
	mov	sil, r12b
.label_402:
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
	jmp	.label_373
	.section	.text
	.align	16
	#Procedure 0x4044d1
	.globl sub_4044d1
	.type sub_4044d1, @function
sub_4044d1:

	nop	word ptr cs:[rax + rax]
.label_375:
	inc	r12
.label_373:
	cmp	r11, -1
	je	.label_410
	cmp	r12, r11
	jne	.label_412
	jmp	.label_414
	.section	.text
	.align	16
	#Procedure 0x4044f3
	.globl sub_4044f3
	.type sub_4044f3, @function
sub_4044f3:

	nop	word ptr cs:[rax + rax]
.label_410:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_419
.label_412:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_426
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_393
	cmp	r11, -1
	jne	.label_393
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_393:
	cmp	rbx, r11
	jbe	.label_438
.label_426:
	xor	esi, esi
.label_365:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_439
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_444]
.label_663:
	test	r12, r12
	jne	.label_399
	jmp	.label_344
	.section	.text
	.align	16
	#Procedure 0x404586
	.globl sub_404586
	.type sub_404586, @function
sub_404586:

	nop	word ptr cs:[rax + rax]
.label_438:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_452
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_365
	jmp	.label_356
.label_452:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_365
.label_667:
	xor	eax, eax
	cmp	r11, -1
	je	.label_464
	test	r12, r12
	jne	.label_468
	cmp	r11, 1
	je	.label_344
	xor	r13d, r13d
	jmp	.label_366
.label_656:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_350
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_356
	cmp	r8d, 2
	jne	.label_363
	mov	eax, r9d
	and	al, 1
	jne	.label_363
	cmp	r14, rbp
	jae	.label_364
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_364:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_368
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_368:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_377
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_377:
	add	r14, 3
	mov	r9b, 1
.label_363:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_382
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_382:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_384
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_384
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_384
	cmp	r14, rbp
	jae	.label_358
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_358:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_385
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_385:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_366
.label_657:
	mov	bl, 0x62
	jmp	.label_411
.label_658:
	mov	cl, 0x74
	jmp	.label_403
.label_659:
	mov	bl, 0x76
	jmp	.label_411
.label_660:
	mov	bl, 0x66
	jmp	.label_411
.label_661:
	mov	cl, 0x72
	jmp	.label_403
.label_664:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_422
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_372
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
	jae	.label_431
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_431:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_441
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_441:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_446
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_446:
	add	r14, 3
	xor	r9d, r9d
.label_422:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_366
.label_665:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_450
	cmp	r8d, 2
	jne	.label_399
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_399
	jmp	.label_372
.label_666:
	cmp	r8d, 2
	jne	.label_457
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_372
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_460
.label_439:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_461
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_347
.label_464:
	test	r12, r12
	jne	.label_360
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_360
.label_344:
	mov	dl, 1
.label_662:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_372
	xor	eax, eax
	mov	r13b, dl
.label_366:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_374
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_378
	jmp	.label_379
	.section	.text
	.align	16
	#Procedure 0x404864
	.globl sub_404864
	.type sub_404864, @function
sub_404864:

	nop	word ptr cs:[rax + rax]
.label_374:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_379
.label_378:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_404
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_391
	.section	.text
	.align	16
	#Procedure 0x40489d
	.globl sub_40489d
	.type sub_40489d, @function
sub_40489d:

	nop	dword ptr [rax]
.label_379:
	test	sil, sil
.label_391:
	mov	ebx, r15d
	je	.label_395
	jmp	.label_398
.label_404:
	mov	ebx, r15d
	jmp	.label_398
.label_350:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_375
	xor	r15d, r15d
	jmp	.label_399
.label_457:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_403
	xor	eax, eax
	mov	r15b, 0x5c
.label_460:
	xor	r13d, r13d
	jmp	.label_395
.label_403:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_372
.label_411:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_366
	nop	
.label_398:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_356
	cmp	r8d, 2
	jne	.label_423
	mov	eax, r9d
	and	al, 1
	jne	.label_423
	cmp	r14, rbp
	jae	.label_429
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_429:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_432
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_432:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_434
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_434:
	add	r14, 3
	mov	r9b, 1
.label_423:
	cmp	r14, rbp
	jae	.label_465
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_465:
	inc	r14
	jmp	.label_370
.label_461:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_445
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_445:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_449
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_427:
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
	je	.label_458
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_466
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_361
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_353
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_381:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_409
	bt	rsi, rdx
	jb	.label_372
.label_409:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_381
.label_353:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_380
	xor	r13d, r13d
.label_380:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_427
	jmp	.label_392
.label_384:
	xor	r13d, r13d
	jmp	.label_366
.label_360:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_366
.label_450:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_399
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_399
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_399
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_407
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_447
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_462
	cmp	r14, rbp
	jae	.label_421
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_421:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_406
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_406:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_390
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_390:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_424
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_424:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_447:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_366
.label_399:
	xor	eax, eax
.label_468:
	xor	r13d, r13d
	jmp	.label_366
.label_449:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_463:
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
	je	.label_352
	cmp	rbp, -1
	je	.label_456
	cmp	rbp, -2
	je	.label_458
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_418
	xor	r13d, r13d
.label_418:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_463
	jmp	.label_392
.label_458:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_351
	lea	rax, [r10 + r12]
.label_386:
	cmp	byte ptr [rax + rsi], 0
	je	.label_351
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_386
.label_351:
	mov	qword ptr [rsp + 0x40], rsi
.label_466:
	xor	r13d, r13d
	jmp	.label_361
.label_456:
	xor	r13d, r13d
.label_352:
	mov	r10, qword ptr [rsp + 0x28]
.label_361:
	mov	r12, qword ptr [rsp + 0x40]
.label_392:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_347:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_371
	test	al, al
	je	.label_371
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_366
.label_371:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_388
	.section	.text
	.align	16
	#Procedure 0x404c97
	.globl sub_404c97
	.type sub_404c97, @function
sub_404c97:

	nop	word ptr [rax + rax]
.label_467:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_388:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_397
	test	sil, 1
	je	.label_362
	cmp	r14, rbp
	jae	.label_400
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_400:
	inc	r14
	xor	esi, esi
	jmp	.label_362
	.section	.text
	.align	16
	#Procedure 0x404cd5
	.globl sub_404cd5
	.type sub_404cd5, @function
sub_404cd5:

	nop	word ptr cs:[rax + rax]
.label_397:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_356
	cmp	r8d, 2
	jne	.label_413
	mov	eax, r9d
	and	al, 1
	jne	.label_413
	cmp	r14, rbp
	jae	.label_417
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_417:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_376
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_376:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_440
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_440:
	add	r14, 3
	mov	r9b, 1
.label_413:
	cmp	r14, rbp
	jae	.label_433
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_433:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_448
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_448:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_442
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_442:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_362:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_395
	test	r9b, 1
	je	.label_408
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_455
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_357
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_357:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_394
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_394:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_408
	.section	.text
	.align	16
	#Procedure 0x404de6
	.globl sub_404de6
	.type sub_404de6, @function
sub_404de6:

	nop	word ptr cs:[rax + rax]
.label_455:
	mov	rbx, rcx
.label_408:
	cmp	r14, rbp
	jae	.label_467
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_467
	.section	.text
	.align	16
	#Procedure 0x404e0e
	.globl sub_404e0e
	.type sub_404e0e, @function
sub_404e0e:

	nop	
.label_395:
	test	r9b, 1
	je	.label_349
	and	al, 1
	jne	.label_349
	cmp	r14, rbp
	jae	.label_354
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_354:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_416
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_416:
	add	r14, 2
	xor	r9d, r9d
.label_349:
	mov	ebx, r15d
.label_370:
	cmp	r14, rbp
	jae	.label_369
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_369:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_375
.label_407:
	xor	r13d, r13d
	jmp	.label_366
	.section	.text
	.align	16
	#Procedure 0x404e71
	.globl sub_404e71
	.type sub_404e71, @function
sub_404e71:

	nop	word ptr cs:[rax + rax]
.label_414:
	mov	rcx, r12
.label_419:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_387
	or	al, dl
	jne	.label_387
	mov	r11, rcx
	jmp	.label_356
.label_372:
	mov	eax, 2
.label_454:
	mov	qword ptr [rsp + 0x38], rax
.label_356:
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
.label_443:
	mov	r14, rax
.label_451:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_367:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_430
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_346
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_346
	inc	rdx
	nop	dword ptr [rax + rax]
.label_437:
	cmp	r14, rbp
	jae	.label_436
	mov	byte ptr [rcx + r14], al
.label_436:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_437
	jmp	.label_346
.label_383:
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
	jmp	.label_443
.label_430:
	mov	rcx, qword ptr [rsp + 0x10]
.label_346:
	cmp	r14, rbp
	jae	.label_451
	mov	byte ptr [rcx + r14], 0
	jmp	.label_451
.label_462:
	mov	eax, 5
	jmp	.label_454
.label_425:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404fc0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	r9, r8
	jae	.label_469
	xor	eax, eax
.label_471:
	cmp	qword ptr [r9], 0
	je	.label_470
	test	r9, r9
	je	.label_470
	mov	r8, r9
	nop	
.label_472:
	cmp	rax, rdx
	jae	.label_469
	mov	rcx, qword ptr [r8]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r8, qword ptr [r8 + 8]
	test	r8, r8
	jne	.label_472
	mov	r8, qword ptr [rdi + 8]
.label_470:
	add	r9, 0x10
	cmp	r9, r8
	jb	.label_471
.label_469:
	ret	
	.section	.text
	.align	16
	#Procedure 0x405006
	.globl sub_405006
	.type sub_405006, @function
sub_405006:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405010
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_473
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_475:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_475
.label_473:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_476
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_477], OFFSET FLAT:slot0
.label_476:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_474
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_474:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4050a1
	.globl sub_4050a1
	.type sub_4050a1, @function
sub_4050a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050b0

	.globl same_name
	.type same_name, @function
same_name:
	mov	rax, rsi
	mov	rcx, rdi
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	rsi, rcx
	mov	rcx, rax
	jmp	same_nameat
	.section	.text
	.align	16
	#Procedure 0x4050c8
	.globl sub_4050c8
	.type sub_4050c8, @function
sub_4050c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050d0

	.globl same_nameat
	.type same_nameat, @function
same_nameat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x138
	mov	r15, rcx
	mov	dword ptr [rsp + 0xc], edx
	mov	r13, rsi
	mov	r12d, edi
	mov	rdi, r13
	call	last_component
	mov	rbx, rax
	mov	rdi, r15
	call	last_component
	mov	rbp, rax
	mov	rdi, rbx
	call	base_len
	mov	r14, rax
	mov	rdi, rbp
	call	base_len
	cmp	r14, rax
	jne	.label_479
	mov	qword ptr [rsp + 0x10], r15
	mov	dword ptr [rsp + 8], r12d
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_482
.label_479:
	xor	ebp, ebp
.label_480:
	mov	eax, ebp
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_482:
	mov	rdi, r13
	call	dir_name
	mov	rbp, rax
	lea	rcx, [rsp + 0xa8]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 8]
	mov	rdx, rbp
	call	__fxstatat
	test	eax, eax
	je	.label_484
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_59
	xor	eax, eax
	mov	rcx, rbp
	call	error
.label_484:
	mov	rdi, rbp
	call	free
	mov	rdi, qword ptr [rsp + 0x10]
	call	dir_name
	mov	rbx, rax
	lea	rcx, [rsp + 0x18]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, rbx
	call	__fxstatat
	test	eax, eax
	je	.label_478
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_59
	xor	eax, eax
	mov	rcx, rbx
	call	error
.label_478:
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_481
	mov	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [rsp + 0x18]
	sete	bpl
	jmp	.label_483
.label_481:
	xor	ebp, ebp
.label_483:
	mov	rdi, rbx
	call	free
	jmp	.label_480
	.section	.text
	.align	16
	#Procedure 0x405218
	.globl sub_405218
	.type sub_405218, @function
sub_405218:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405220
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40522a
	.globl sub_40522a
	.type sub_40522a, @function
sub_40522a:

	nop	word ptr [rax + rax]
.label_485:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405236
	.globl sub_405236
	.type sub_405236, @function
sub_405236:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40523e
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_488
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_486
	.section	.text
	.align	16
	#Procedure 0x405250
	.globl sub_405250
	.type sub_405250, @function
sub_405250:

	nop	word ptr cs:[rax + rax]
.label_487:
	add	rcx, 0x10
.label_486:
	cmp	rcx, rdx
	jae	.label_485
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_487
.label_488:
	ret	
	.section	.text
	.align	16
	#Procedure 0x405270
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
	#Procedure 0x4052e5
	.globl sub_4052e5
	.type sub_4052e5, @function
sub_4052e5:

	nop	word ptr cs:[rax + rax]
.label_489:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4052f6
	.globl sub_4052f6
	.type sub_4052f6, @function
sub_4052f6:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052fb
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_489
	test	rdx, rdx
	je	.label_489
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405320

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
	mov	eax, OFFSET FLAT:label_490
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405345
	.globl sub_405345
	.type sub_405345, @function
sub_405345:

	nop	word ptr cs:[rax + rax]
.label_492:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_493
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_494:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_491
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_492
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_59
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x4053c2

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_495
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_494
	cmp	dword ptr [rbp], 0x20
	jne	.label_494
.label_495:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_496
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_496:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x405410
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40541e
	.globl sub_40541e
	.type sub_40541e, @function
sub_40541e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405420

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
	js	.label_497
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_500
	cmp	r12d, 0x7fffffff
	je	.label_502
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
	jne	.label_498
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_498:
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
.label_500:
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
	jbe	.label_503
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_499
.label_503:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_501
	mov	rdi, r14
	call	free
.label_501:
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
.label_499:
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
.label_497:
	call	abort
.label_502:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4055dd
	.globl sub_4055dd
	.type sub_4055dd, @function
sub_4055dd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4055e0
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
	#Procedure 0x405613
	.globl sub_405613
	.type sub_405613, @function
sub_405613:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405620
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	.section	.text
	.align	16
	#Procedure 0x405625
	.globl sub_405625
	.type sub_405625, @function
sub_405625:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405630
	.globl triple_hash_no_name
	.type triple_hash_no_name, @function
triple_hash_no_name:

	mov	rax, qword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40563d
	.globl sub_40563d
	.type sub_40563d, @function
sub_40563d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405640

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
	jne	.label_504
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_504
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_505
.label_504:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_505:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_506
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_506:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4056ae
	.globl sub_4056ae
	.type sub_4056ae, @function
sub_4056ae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4056b0

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r14, rsi
	mov	r13, rdi
	test	r14, r14
	je	.label_525
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_525
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_508
	cmp	rsi, r14
	je	.label_535
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_520
	mov	rax, qword ptr [r12]
.label_507:
	test	rax, rax
	jne	.label_513
	jmp	.label_508
.label_535:
	mov	rax, r14
.label_513:
	xor	ebp, ebp
	test	r15, r15
	je	.label_516
	mov	qword ptr [r15], rax
	jmp	.label_516
.label_520:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_508
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr [rax + rax]
.label_532:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_527
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_530
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_532
.label_508:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_533
	cvtsi2ss	xmm1, rax
	jmp	.label_537
.label_533:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_537:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_514
	cvtsi2ss	xmm0, rcx
	jmp	.label_522
.label_514:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_522:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_511
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_529
	ucomiss	xmm2, dword ptr [rip + label_107]
	jbe	.label_510
	movss	xmm3, dword ptr [rip + label_109]
	ucomiss	xmm3, xmm2
	jbe	.label_510
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3, dword ptr [rip + label_114]
	jbe	.label_510
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_510
	addss	xmm3, dword ptr [rip + label_107]
	ucomiss	xmm2, xmm3
	jbe	.label_510
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_110]
	ucomiss	xmm5, xmm4
	jb	.label_510
	ucomiss	xmm4, xmm3
	ja	.label_521
.label_510:
	mov	qword ptr [r13 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2, dword ptr [rip + label_523]
	jmp	.label_521
.label_529:
	mov	eax, OFFSET FLAT:default_tuning
.label_521:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_511
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_531
	mulss	xmm0, xmm2
.label_531:
	mov	ebp, 0xffffffff
	ucomiss	xmm0, dword ptr [rip + label_23]
	jae	.label_516
	movss	xmm1, dword ptr [rip + label_22]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r13
	call	hash_rehash
	test	al, al
	je	.label_516
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_525
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_511
	cmp	rsi, r14
	mov	rax, r14
	je	.label_528
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_534
	mov	rax, qword ptr [r12]
.label_528:
	test	rax, rax
	jne	.label_536
.label_511:
	cmp	qword ptr [r12], 0
	je	.label_509
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_512
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_515
.label_509:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0, xmmword ptr [rip + label_518]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_519
.label_512:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_516
.label_515:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_519:
	mov	ebp, 1
.label_516:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_527:
	mov	rax, r14
	jmp	.label_507
.label_530:
	mov	rax, qword ptr [rbp]
	jmp	.label_507
.label_534:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_511
	lea	rbp, [rbx + rbp + 8]
.label_526:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_517
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_524
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_526
	jmp	.label_511
.label_517:
	mov	rax, r14
	jmp	.label_528
.label_524:
	mov	rax, qword ptr [rbp]
	jmp	.label_528
.label_525:
	call	abort
.label_536:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4059e1
	.globl sub_4059e1
	.type sub_4059e1, @function
sub_4059e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4059f0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_541
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_539
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_538
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_539
	mov	esi, OFFSET FLAT:label_543
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_540
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_540:
	mov	rbx, r14
.label_539:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_541:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_542
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405a91
	.globl sub_405a91
	.type sub_405a91, @function
sub_405a91:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405aa0
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdi
	jae	.label_544
	mov	rax, rcx
	not	rax
	add	rdi, rax
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	eax, eax
	test	rdi, rdi
	je	.label_548
	sub	rsi, r8
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_549:
	cmp	qword ptr [rcx], 0
	je	.label_550
	xor	edi, edi
	mov	rdx, rcx
	nop	dword ptr [rax + rax]
.label_547:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_547
	cmp	rdi, rax
	cmova	rax, rdi
.label_550:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_546
	lea	rdx, [rcx + 0x10]
	xor	edi, edi
.label_551:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_551
	cmp	rdi, rax
	cmova	rax, rdi
.label_546:
	add	rcx, 0x20
	add	rsi, -2
	jne	.label_549
.label_548:
	test	r8, r8
	je	.label_544
	cmp	qword ptr [rcx], 0
	je	.label_544
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_545:
	mov	rcx, qword ptr [rcx + 8]
	inc	rdx
	test	rcx, rcx
	jne	.label_545
	cmp	rdx, rax
	cmova	rax, rdx
.label_544:
	ret	
	.section	.text
	.align	16
	#Procedure 0x405b54
	.globl sub_405b54
	.type sub_405b54, @function
sub_405b54:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b60

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
	jne	.label_553
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_552
	test	cl, cl
	jne	.label_552
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_552
.label_553:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_552
	call	__errno_location
	mov	dword ptr [rax], 0
.label_552:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405bc0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_554
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_554:
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
	#Procedure 0x405c43
	.globl sub_405c43
	.type sub_405c43, @function
sub_405c43:

	nop	word ptr cs:[rax + rax]
.label_555:
	call	xalloc_die
.label_556:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_557
	test	rax, rax
	je	.label_555
.label_557:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405c69

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_556
	test	rbx, rbx
	jne	.label_556
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405c80
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
	je	.label_558
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
.label_558:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405ce1
	.globl sub_405ce1
	.type sub_405ce1, @function
sub_405ce1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405cf0
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_561
	.section	.text
	.align	16
	#Procedure 0x405d01
	.globl sub_405d01
	.type sub_405d01, @function
sub_405d01:

	nop	word ptr cs:[rax + rax]
.label_564:
	add	r14, 0x10
.label_561:
	cmp	r14, rax
	jae	.label_563
	cmp	qword ptr [r14], 0
	je	.label_564
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_565
	nop	word ptr cs:[rax + rax]
.label_560:
	test	cl, 1
	je	.label_559
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_559:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_560
.label_565:
	test	cl, cl
	je	.label_562
	mov	rdi, qword ptr [r14]
	call	rax
.label_562:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_564
.label_563:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x405d97
	.globl sub_405d97
	.type sub_405d97, @function
sub_405d97:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405da0
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
	#Procedure 0x405db3
	.globl sub_405db3
	.type sub_405db3, @function
sub_405db3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405dc0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_566:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	dl, 0x2f
	je	.label_566
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_569
	.section	.text
	.align	16
	#Procedure 0x405de3
	.globl sub_405de3
	.type sub_405de3, @function
sub_405de3:

	nop	word ptr cs:[rax + rax]
.label_568:
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x405df4
	.globl sub_405df4
	.type sub_405df4, @function
sub_405df4:

	nop	dword ptr [rax]
.label_567:
	movzx	edx, byte ptr [rax + 1]
	inc	rax
	mov	sil, cl
.label_569:
	mov	cl, 1
	cmp	dl, 0x2f
	je	.label_567
	test	dl, dl
	je	.label_568
	mov	ecx, esi
	and	cl, 1
	je	.label_570
	xor	esi, esi
.label_570:
	test	cl, cl
	cmovne	rdi, rax
	mov	ecx, esi
	jmp	.label_567
	.section	.text
	.align	16
	#Procedure 0x405e20
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	r13, qword ptr [r12]
	mov	rax, qword ptr [r12 + 8]
	xor	ebx, ebx
	cmp	r13, rax
	jae	.label_571
	xor	ebx, ebx
.label_575:
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_573
	test	r13, r13
	je	.label_573
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_571
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_572:
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_574
	inc	rbx
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_572
	jmp	.label_571
	.section	.text
	.align	16
	#Procedure 0x405e8c
	.globl sub_405e8c
	.type sub_405e8c, @function
sub_405e8c:

	nop	dword ptr [rax]
.label_574:
	mov	rax, qword ptr [r12 + 8]
	inc	rbx
.label_573:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_575
.label_571:
	mov	rax, rbx
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
	#Procedure 0x405eb3
	.globl sub_405eb3
	.type sub_405eb3, @function
sub_405eb3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ec0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_41]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_42]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_43]
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
	#Procedure 0x405f15
	.globl sub_405f15
	.type sub_405f15, @function
sub_405f15:

	nop	word ptr cs:[rax + rax]
.label_577:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405f25
	.globl sub_405f25
	.type sub_405f25, @function
sub_405f25:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f2f

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	push	rbx
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_576
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_577
.label_576:
	mov	rax, rbx
	pop	rbx
	ret	
.label_578:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_581
	test	rax, rax
	je	.label_582
.label_581:
	pop	rbx
	ret	
.label_579:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405f69
	.globl sub_405f69
	.type sub_405f69, @function
sub_405f69:

	nop	word ptr [rax + rax]
.label_584:
	test	rcx, rcx
	jne	.label_580
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_580:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_579
.label_583:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_578
	test	rbx, rbx
	jne	.label_578
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_582:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405fc3
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_584
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_582
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_583
	.section	.text
	.align	16
	#Procedure 0x405ff0

	.globl record_file
	.type record_file, @function
record_file:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	test	r14, r14
	je	.label_585
	mov	edi, 0x18
	call	xmalloc
	mov	rbx, rax
	mov	rdi, r12
	call	xstrdup
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [r15]
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, r14
	mov	rsi, rbx
	call	hash_insert
	test	rax, rax
	je	.label_586
	cmp	rax, rbx
	je	.label_585
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	triple_free
.label_585:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_586:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406066
	.globl sub_406066
	.type sub_406066, @function
sub_406066:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406070
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_587
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_588
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_590
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_73
	mov	ecx, OFFSET FLAT:label_591
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_589
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x4060e4
	.globl sub_4060e4
	.type sub_4060e4, @function
sub_4060e4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060f0
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
	#Procedure 0x406109
	.globl sub_406109
	.type sub_406109, @function
sub_406109:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406110

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
	je	.label_592
	test	r15, r15
	je	.label_593
.label_592:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_593:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40614c
	.globl sub_40614c
	.type sub_40614c, @function
sub_40614c:

	nop	dword ptr [rax]
.label_594:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406155
	.globl sub_406155
	.type sub_406155, @function
sub_406155:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406160

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
	je	.label_594
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
	#Procedure 0x4061f0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_595
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_597
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_595
.label_597:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_595
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_596
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_596:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_595:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x406264
	.globl sub_406264
	.type sub_406264, @function
sub_406264:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406270

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_607
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_606
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_605
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_612
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_604
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_599
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_608
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_609
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_73
	mov	ecx, OFFSET FLAT:label_591
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_601
	mov	esi, OFFSET FLAT:label_598
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_601
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_602
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_601:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_610
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_591
	mov	ecx, OFFSET FLAT:label_72
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_603
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_72
	mov	ecx, OFFSET FLAT:label_611
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_607:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_600
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
	#Procedure 0x40644b
	.globl sub_40644b
	.type sub_40644b, @function
sub_40644b:

	nop	dword ptr [rax + rax]
.label_613:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406455
	.globl sub_406455
	.type sub_406455, @function
sub_406455:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406457
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_41]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_42]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_43]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_613
	test	rdx, rdx
	je	.label_613
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_615:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4064c5
	.globl sub_4064c5
	.type sub_4064c5, @function
sub_4064c5:

	nop	dword ptr [rax + rax]
.label_616:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_614
	test	rax, rax
	je	.label_615
.label_614:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4064e1
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_615
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_616
	test	rbx, rbx
	jne	.label_616
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406510
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_617
	call	rpl_calloc
	test	rax, rax
	je	.label_617
	pop	rcx
	ret	
.label_617:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406536
	.globl sub_406536
	.type sub_406536, @function
sub_406536:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4065a5
	.globl sub_4065a5
	.type sub_4065a5, @function
sub_4065a5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4065b2
	.globl sub_4065b2
	.type sub_4065b2, @function
sub_4065b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4065d6
	.globl sub_4065d6
	.type sub_4065d6, @function
sub_4065d6:

	nop	word ptr cs:[rax + rax]
