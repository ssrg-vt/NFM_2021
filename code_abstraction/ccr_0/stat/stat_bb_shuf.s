	.section	.text
	.align	32
	#Procedure 0x402169
	.globl sub_402169
	.type sub_402169, @function
sub_402169:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40216a
	.globl sub_40216a
	.type sub_40216a, @function
sub_40216a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4021a2
	.globl sub_4021a2
	.type sub_4021a2, @function
sub_4021a2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4021ea
	.globl sub_4021ea
	.type sub_4021ea, @function
sub_4021ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40220c
	.globl sub_40220c
	.type sub_40220c, @function
sub_40220c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40221d
	.globl sub_40221d
	.type sub_40221d, @function
sub_40221d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402236
	.globl sub_402236
	.type sub_402236, @function
sub_402236:

	nop	word ptr cs:[rax + rax]
.label_9:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_15:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_11:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_12
	jmp	.label_10
.label_12:
	jmp	.label_13
.label_13:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_14
	.section	.text
	.align	32
	#Procedure 0x4022a6

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_14:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_11
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_9
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_15
.label_10:
	lea	r8, [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402349
	.globl sub_402349
	.type sub_402349, @function
sub_402349:

	nop	dword ptr [rax]
.label_18:
	movabs	rdi, OFFSET FLAT:label_16
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_19:
	mov	rax, qword ptr [rbp - 0x28]
	xor	edi, edi
	mov	esi, 8
	mov	qword ptr [rbp - 0x20], rax
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, rax
	call	quotearg_n_style
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
	call	quote_n
	xor	edi, edi
	mov	dword ptr [rbp - 0x3c], edi
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	r8, rax
	mov	al, 0
	call	error
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4023b8
	.globl sub_4023b8
	.type sub_4023b8, @function
sub_4023b8:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4023b9

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x18], -1
	jne	.label_18
	movabs	rdi, OFFSET FLAT:label_17
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_19
	.section	.text
	.align	32
	#Procedure 0x4023f0

	.globl free_cwd
	.type free_cwd, @function
free_cwd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	dword ptr [rdi], 0
	jl	.label_20
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax]
	call	close
	mov	dword ptr [rbp - 0xc], eax
.label_20:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40242a
	.globl sub_40242a
	.type sub_40242a, @function
sub_40242a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402430
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_21
	call	xalloc_die
.label_21:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402478
	.globl sub_402478
	.type sub_402478, @function
sub_402478:

	nop	dword ptr [rax + rax]
.label_27:
	xor	eax, eax
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 8]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x2f
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x1c], eax
.label_26:
	mov	eax, dword ptr [rbp - 0x1c]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 8]
	call	last_component
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x18], rax
.label_25:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_22
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	je	.label_24
	jmp	.label_22
.label_22:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4024ef
	.globl sub_4024ef
	.type sub_4024ef, @function
sub_4024ef:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4024f1

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 0
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_27
	xor	eax, eax
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_26
.label_24:
	jmp	.label_23
.label_23:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_25
.label_30:
	lea	rsi, [rbp - 0x90]
	mov	rdi, qword ptr [rbp - 0x10]
	call	statfs
	cmp	eax, 0
	je	.label_28
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_31
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xa8], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xb0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xa8]
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_32
.label_28:
	mov	esi, 0xffffffff
	movabs	rcx, OFFSET FLAT:print_statfs
	lea	rax, [rbp - 0x90]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	r8, rax
	call	print_it
	and	al, 1
	mov	byte ptr [rbp - 0x91], al
	mov	al, byte ptr [rbp - 0x91]
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_32:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4025e8

	.globl do_statfs
	.type do_statfs, @function
do_statfs:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_29
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_30
	movabs	rdi, OFFSET FLAT:label_33
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xa0], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0xa4], edi
	mov	esi, dword ptr [rbp - 0xa4]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_32
	.section	.text
	.align	32
	#Procedure 0x402660

	.globl quote_n
	.type quote_n, @function
quote_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdx, -1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quote_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402688
	.globl sub_402688
	.type sub_402688, @function
sub_402688:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402690

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdx, -1
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4026c2
	.globl sub_4026c2
	.type sub_4026c2, @function
sub_4026c2:

	nop	word ptr cs:[rax + rax]
.label_34:
	mov	byte ptr [rbp - 1], 0
.label_37:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4026de
	.globl sub_4026de
	.type sub_4026de, @function
sub_4026de:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026e3
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -9
	sub	eax, 5
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_35
	jmp	.label_36
.label_36:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_34
	jmp	.label_35
.label_35:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_37
	.section	.text
	.align	32
	#Procedure 0x402720

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	esi, eax
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], 1
	mov	edi, dword ptr [rbp - 4]
	call	setlocale
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_38
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_41
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_42
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_39
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_40
.label_42:
	mov	byte ptr [rbp - 5], 0
.label_40:
	jmp	.label_38
.label_38:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402793
	.globl sub_402793
	.type sub_402793, @function
sub_402793:

	nop	word ptr cs:[rax + rax]
.label_1846:
	movabs	rdi, OFFSET FLAT:label_43
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x108], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x110], rdi
	mov	rdi, rbx
	mov	qword ptr [rbp - 0x118], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x11c], eax
	jmp	.label_44
.label_1839:
	movabs	rdi, OFFSET FLAT:label_52
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_44
.label_1845:
	movabs	rdi, OFFSET FLAT:label_59
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xe8], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xf0], rdi
	mov	rdi, r11
	mov	qword ptr [rbp - 0xf8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xfc], eax
	jmp	.label_44
.label_51:
	movabs	rsi, OFFSET FLAT:label_47
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_58:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_57
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, rcx
	call	gettext
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	esi, edx
	xor	edx, edx
	mov	r8b, dl
	mov	ecx, 0x7e3
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rdx, rax
	mov	al, r8b
	call	fprintf
	mov	ecx, OFFSET FLAT:label_53
	mov	edi, ecx
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsi, rdx
	sub	rsi, 9
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x60], rdx
	mov	qword ptr [rbp - 0x68], rsi
	ja	.label_45
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_50]]
	jmp	rcx
.label_1842:
	movabs	rdi, OFFSET FLAT:label_55
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_44
.label_1838:
	jmp	.label_44
.label_1844:
	movabs	rdi, OFFSET FLAT:label_46
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc8], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xd0], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0xd8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rsp + 8], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_44
.label_1841:
	movabs	rdi, OFFSET FLAT:label_49
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x90], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_44
	.section	.text
	.align	32
	#Procedure 0x402ae5

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	rbp
	mov	rbp, rsp
	push	r14
	push	rbx
	sub	rsp, 0x180
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], r9
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_51
	movabs	rsi, OFFSET FLAT:label_48
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_58
.label_1840:
	movabs	rdi, OFFSET FLAT:label_61
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x80], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_44
.label_1847:
	movabs	rdi, OFFSET FLAT:label_60
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x128], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	r14, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x130], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x138], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x13c], eax
	jmp	.label_44
.label_45:
	movabs	rdi, OFFSET FLAT:label_56
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x148], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	r14, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x150], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x158], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x15c], eax
.label_44:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ced
	.globl sub_402ced
	.type sub_402ced, @function
sub_402ced:

	nop	
.label_1843:
	movabs	rdi, OFFSET FLAT:label_54
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xb0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rdi
	mov	rdi, rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rsp], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_44
	.section	.text
	.align	32
	#Procedure 0x402d60
	.globl setexeccon
	.type setexeccon, @function
setexeccon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402d84
	.globl sub_402d84
	.type sub_402d84, @function
sub_402d84:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d90

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_62
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_62
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_62
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_64
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_63
.label_62:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_63:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402e2c
	.globl sub_402e2c
	.type sub_402e2c, @function
sub_402e2c:

	nop	word ptr cs:[rax + rax]
.label_64:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_63
	.section	.text
	.align	32
	#Procedure 0x402e60

	.globl sub_402e60
	.type sub_402e60, @function
sub_402e60:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_65
.label_67:
	mov	byte ptr [rbp - 1], 0
.label_65:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402e77
	.globl sub_402e77
	.type sub_402e77, @function
sub_402e77:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e86
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	mov	eax, edi
	sub	edi, 0x5d
	mov	qword ptr [rbp - 0x10], rax
	mov	dword ptr [rbp - 0x14], edi
	ja	.label_67
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_66]]
	jmp	rcx
	.section	.text
	.align	32
	#Procedure 0x402eb0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], 0
	mov	dword ptr [rbp - 0x1c], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	dword ptr [rbp - 0x18], eax
	cmp	dword ptr [rbp - 0x18], 0
	jge	.label_71
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_68
.label_71:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_72
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_70
.label_72:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_70
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_70:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_69
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_69:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_68:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f7e
	.globl sub_402f7e
	.type sub_402f7e, @function
sub_402f7e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402f80

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rax
.label_83:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_82
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_82:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_76
	jmp	.label_80
.label_76:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_83
.label_80:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_85
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_85:
	movabs	rdi, OFFSET FLAT:label_75
	call	gettext
	movabs	rsi, OFFSET FLAT:label_86
	movabs	rdx, OFFSET FLAT:label_84
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	edi, 5
	xor	ecx, ecx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x28], eax
	call	setlocale
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_74
	movabs	rsi, OFFSET FLAT:label_79
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_74
	movabs	rdi, OFFSET FLAT:label_87
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_74:
	movabs	rdi, OFFSET FLAT:label_81
	call	gettext
	movabs	rsi, OFFSET FLAT:label_84
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_73
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_77
	movabs	rsi, OFFSET FLAT:label_78
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 8]
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x38]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x3c], eax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403119
	.globl sub_403119
	.type sub_403119, @function
sub_403119:

	nop	dword ptr [rax]
.label_91:
	movabs	rdi, OFFSET FLAT:label_88
	call	gettext
	xor	ecx, ecx
	movsx	edx, byte ptr [rbp - 1]
	mov	edi, ecx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x18], edx
	mov	rdx, rax
	mov	ecx, dword ptr [rbp - 0x18]
	mov	al, 0
	call	error
.label_89:
	movsx	edi, byte ptr [rbp - 1]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40315b
	.globl sub_40315b
	.type sub_40315b, @function
sub_40315b:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40315e

	.globl sub_40315e
	.type sub_40315e, @function
sub_40315e:
	mov	byte ptr [rbp - 1], 8
	jmp	.label_89
	.section	.text
	.align	32
	#Procedure 0x403167

	.globl sub_403167
	.type sub_403167, @function
sub_403167:
	mov	byte ptr [rbp - 1], 7
	jmp	.label_89
	.section	.text
	.align	32
	#Procedure 0x403170

	.globl sub_403170
	.type sub_403170, @function
sub_403170:
	mov	byte ptr [rbp - 1], 0xb
	jmp	.label_89
	.section	.text
	.align	32
	#Procedure 0x403179

	.globl sub_403179
	.type sub_403179, @function
sub_403179:
	mov	byte ptr [rbp - 1], 0xd
	jmp	.label_89
	.section	.text
	.align	32
	#Procedure 0x403182

	.globl sub_403182
	.type sub_403182, @function
sub_403182:
	mov	byte ptr [rbp - 1], 0xa
	jmp	.label_89
	.section	.text
	.align	32
	#Procedure 0x40318b

	.globl sub_40318b
	.type sub_40318b, @function
sub_40318b:
	jmp	.label_89
	.section	.text
	.align	32
	#Procedure 0x403190

	.globl sub_403190
	.type sub_403190, @function
sub_403190:
	mov	byte ptr [rbp - 1], 0x1b
	jmp	.label_89
	.section	.text
	.align	32
	#Procedure 0x403199

	.globl sub_403199
	.type sub_403199, @function
sub_403199:
	mov	byte ptr [rbp - 1], 0xc
	jmp	.label_89
	.section	.text
	.align	32
	#Procedure 0x4031a2

	.globl sub_4031a2
	.type sub_4031a2, @function
sub_4031a2:
	mov	byte ptr [rbp - 1], 9
	jmp	.label_89
	.section	.text
	.align	32
	#Procedure 0x4031ab

	.globl print_esc_char
	.type print_esc_char, @function
print_esc_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	movsx	edi, byte ptr [rbp - 1]
	add	edi, -0x22
	mov	ecx, edi
	sub	edi, 0x54
	mov	qword ptr [rbp - 0x10], rcx
	mov	dword ptr [rbp - 0x14], edi
	ja	.label_91
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_90]]
	jmp	rcx
	.section	.text
	.align	32
	#Procedure 0x4031e0
	.globl matchpathcon
	.type matchpathcon, @function
matchpathcon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	call	__errno_location
	mov	esi, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, esi
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40320b
	.globl sub_40320b
	.type sub_40320b, @function
sub_40320b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403210
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403237
	.globl sub_403237
	.type sub_403237, @function
sub_403237:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403240

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40325b
	.globl sub_40325b
	.type sub_40325b, @function
sub_40325b:

	nop	dword ptr [rax + rax]
.label_93:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40326a
	.globl sub_40326a
	.type sub_40326a, @function
sub_40326a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403274
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jb	.label_92
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_93
.label_92:
	call	xalloc_die
.label_137:
	jmp	.label_118
.label_118:
	mov	rdi, qword ptr [rbp - 0x30]
	call	getmntent
	mov	qword ptr [rbp - 0x90], rax
	cmp	rax, 0
	je	.label_140
	movabs	rsi, OFFSET FLAT:label_139
	mov	rdi, qword ptr [rbp - 0x90]
	call	hasmntopt
	mov	ecx, 0x38
	mov	edi, ecx
	cmp	rax, 0
	setne	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x99], dl
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rax]
	call	xstrdup
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rax + 8]
	call	xstrdup
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi + 8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rax + 0x10]
	call	xstrdup
	mov	dl, 1
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi + 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8b, byte ptr [rax + 0x28]
	and	r8b, 0xfb
	or	r8b, 4
	mov	byte ptr [rax + 0x28], r8b
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rax + 0x18]
	mov	ecx, OFFSET FLAT:label_121
	mov	esi, ecx
	mov	byte ptr [rbp - 0xc5], dl
	call	strcmp
	cmp	eax, 0
	mov	dl, byte ptr [rbp - 0xc5]
	mov	byte ptr [rbp - 0xc6], dl
	je	.label_107
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_119
	mov	esi, edx
	mov	byte ptr [rbp - 0xc7], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xc7]
	mov	byte ptr [rbp - 0xc6], r8b
	je	.label_107
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_130
	mov	esi, edx
	mov	byte ptr [rbp - 0xc8], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xc8]
	mov	byte ptr [rbp - 0xc6], r8b
	je	.label_107
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_100
	mov	esi, edx
	mov	byte ptr [rbp - 0xc9], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xc9]
	mov	byte ptr [rbp - 0xc6], r8b
	je	.label_107
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_134
	mov	esi, edx
	mov	byte ptr [rbp - 0xca], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xca]
	mov	byte ptr [rbp - 0xc6], r8b
	je	.label_107
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_105
	mov	esi, edx
	mov	byte ptr [rbp - 0xcb], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xcb]
	mov	byte ptr [rbp - 0xc6], r8b
	je	.label_107
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_117
	mov	esi, edx
	mov	byte ptr [rbp - 0xcc], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xcc]
	mov	byte ptr [rbp - 0xc6], r8b
	je	.label_107
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_129
	mov	esi, edx
	mov	byte ptr [rbp - 0xcd], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xcd]
	mov	byte ptr [rbp - 0xc6], r8b
	je	.label_107
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_123
	mov	esi, edx
	mov	byte ptr [rbp - 0xce], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xce]
	mov	byte ptr [rbp - 0xc6], r8b
	je	.label_107
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_113
	mov	esi, edx
	mov	byte ptr [rbp - 0xcf], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xcf]
	mov	byte ptr [rbp - 0xc6], r8b
	je	.label_107
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_95
	mov	esi, edx
	mov	byte ptr [rbp - 0xd0], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xd0]
	mov	byte ptr [rbp - 0xc6], r8b
	je	.label_107
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_116
	mov	esi, edx
	mov	byte ptr [rbp - 0xd1], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xd1]
	mov	byte ptr [rbp - 0xc6], r8b
	je	.label_107
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdx + 0x18]
	mov	eax, OFFSET FLAT:label_127
	mov	esi, eax
	mov	byte ptr [rbp - 0xd2], cl
	call	strcmp
	cmp	eax, 0
	mov	cl, byte ptr [rbp - 0xd2]
	mov	byte ptr [rbp - 0xd3], cl
	jne	.label_102
	mov	al, byte ptr [rbp - 0x99]
	xor	al, 0xff
	mov	byte ptr [rbp - 0xd3], al
.label_102:
	mov	al, byte ptr [rbp - 0xd3]
	mov	byte ptr [rbp - 0xc6], al
.label_107:
	mov	al, byte ptr [rbp - 0xc6]
	mov	esi, 0x3a
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x20]
	mov	al, cl
	mov	dil, byte ptr [rdx + 0x28]
	and	al, 1
	and	dil, 0xfe
	or	dil, al
	mov	byte ptr [rdx + 0x28], dil
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdx]
	call	strchr
	mov	r8b, 1
	cmp	rax, 0
	mov	byte ptr [rbp - 0xd4], r8b
	jne	.label_120
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_125
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x2f
	jne	.label_125
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_133
	mov	esi, edx
	mov	byte ptr [rbp - 0xd5], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xd5]
	mov	byte ptr [rbp - 0xd4], r8b
	je	.label_120
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_103
	mov	esi, edx
	mov	byte ptr [rbp - 0xd6], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xd6]
	mov	byte ptr [rbp - 0xd4], r8b
	je	.label_120
.label_125:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_111
	mov	edi, ecx
	call	strcmp
	cmp	eax, 0
	sete	dl
	mov	byte ptr [rbp - 0xd4], dl
.label_120:
	mov	al, byte ptr [rbp - 0xd4]
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x20]
	mov	al, cl
	mov	sil, byte ptr [rdx + 0x28]
	and	al, 1
	shl	al, 1
	and	sil, 0xfd
	or	sil, al
	mov	byte ptr [rdx + 0x28], sil
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rdx + 0x18]
	call	dev_from_mount_options
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x30
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_118
.label_98:
	movabs	rsi, OFFSET FLAT:label_126
	mov	rax, qword ptr [rbp - 0x40]
	movsxd	rcx, dword ptr [rbp - 0x58]
	add	rax, rcx
	mov	rdi, rax
	call	strstr
	mov	qword ptr [rbp - 0x80], rax
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_132
	jmp	.label_106
.label_132:
	movabs	rsi, OFFSET FLAT:label_135
	lea	rdx, [rbp - 0x5c]
	lea	rcx, [rbp - 0x60]
	lea	r8, [rbp - 0x64]
	lea	r9, [rbp - 0x68]
	lea	rax, [rbp - 0x71]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	qword ptr [rsp], rax
	mov	al, 0
	call	sscanf
	mov	dword ptr [rbp - 0x84], eax
	cmp	dword ptr [rbp - 0x84], 1
	je	.label_124
	cmp	dword ptr [rbp - 0x84], 5
	je	.label_124
	jmp	.label_106
.label_124:
	movsxd	rax, dword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x80]
	movsxd	rcx, dword ptr [rbp - 0x64]
	add	rax, rcx
	mov	rdi, rax
	call	unescape_tab
	mov	rax, qword ptr [rbp - 0x40]
	movsxd	rcx, dword ptr [rbp - 0x54]
	add	rax, rcx
	mov	rdi, rax
	call	unescape_tab
	mov	rax, qword ptr [rbp - 0x40]
	movsxd	rcx, dword ptr [rbp - 0x6c]
	add	rax, rcx
	mov	rdi, rax
	call	unescape_tab
	mov	edx, 0x38
	mov	edi, edx
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x80]
	movsxd	rcx, dword ptr [rbp - 0x64]
	add	rax, rcx
	mov	rdi, rax
	call	xstrdup
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x40]
	movsxd	rcx, dword ptr [rbp - 0x54]
	add	rax, rcx
	mov	rdi, rax
	call	xstrdup
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x40]
	movsxd	rcx, dword ptr [rbp - 0x6c]
	add	rax, rcx
	mov	rdi, rax
	call	xstrdup
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x80]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rax, rcx
	mov	rdi, rax
	call	xstrdup
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	sil, byte ptr [rax + 0x28]
	and	sil, 0xfb
	or	sil, 4
	mov	byte ptr [rax + 0x28], sil
	mov	edi, dword ptr [rbp - 0x4c]
	mov	esi, dword ptr [rbp - 0x50]
	call	gnu_dev_makedev
	mov	r8b, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rax + 0x18]
	mov	edx, OFFSET FLAT:label_121
	mov	esi, edx
	mov	byte ptr [rbp - 0xa9], r8b
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xa9]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_104
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_119
	mov	esi, edx
	mov	byte ptr [rbp - 0xab], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xab]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_104
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_130
	mov	esi, edx
	mov	byte ptr [rbp - 0xac], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xac]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_104
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_100
	mov	esi, edx
	mov	byte ptr [rbp - 0xad], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xad]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_104
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_134
	mov	esi, edx
	mov	byte ptr [rbp - 0xae], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xae]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_104
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_105
	mov	esi, edx
	mov	byte ptr [rbp - 0xaf], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xaf]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_104
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_117
	mov	esi, edx
	mov	byte ptr [rbp - 0xb0], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xb0]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_104
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_129
	mov	esi, edx
	mov	byte ptr [rbp - 0xb1], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xb1]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_104
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_123
	mov	esi, edx
	mov	byte ptr [rbp - 0xb2], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xb2]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_104
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_113
	mov	esi, edx
	mov	byte ptr [rbp - 0xb3], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xb3]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_104
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_95
	mov	esi, edx
	mov	byte ptr [rbp - 0xb4], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xb4]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_104
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_116
	mov	esi, edx
	mov	byte ptr [rbp - 0xb5], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xb5]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_104
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdx + 0x18]
	mov	eax, OFFSET FLAT:label_127
	mov	esi, eax
	mov	byte ptr [rbp - 0xb6], cl
	call	strcmp
	cmp	eax, 0
	mov	cl, byte ptr [rbp - 0xb6]
	mov	byte ptr [rbp - 0xb7], cl
	jne	.label_109
	mov	al, 1
	mov	byte ptr [rbp - 0xb7], al
	jmp	.label_109
.label_109:
	mov	al, byte ptr [rbp - 0xb7]
	mov	byte ptr [rbp - 0xaa], al
.label_104:
	mov	al, byte ptr [rbp - 0xaa]
	mov	esi, 0x3a
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x20]
	mov	al, cl
	mov	dil, byte ptr [rdx + 0x28]
	and	al, 1
	and	dil, 0xfe
	or	dil, al
	mov	byte ptr [rdx + 0x28], dil
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdx]
	call	strchr
	mov	r8b, 1
	cmp	rax, 0
	mov	byte ptr [rbp - 0xb8], r8b
	jne	.label_112
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_99
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x2f
	jne	.label_99
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_133
	mov	esi, edx
	mov	byte ptr [rbp - 0xb9], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xb9]
	mov	byte ptr [rbp - 0xb8], r8b
	je	.label_112
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_103
	mov	esi, edx
	mov	byte ptr [rbp - 0xba], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xba]
	mov	byte ptr [rbp - 0xb8], r8b
	je	.label_112
.label_99:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_111
	mov	edi, ecx
	call	strcmp
	cmp	eax, 0
	sete	dl
	mov	byte ptr [rbp - 0xb8], dl
.label_112:
	mov	al, byte ptr [rbp - 0xb8]
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x20]
	mov	al, cl
	mov	sil, byte ptr [rdx + 0x28]
	and	al, 1
	shl	al, 1
	and	sil, 0xfd
	or	sil, al
	mov	byte ptr [rdx + 0x28], sil
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	qword ptr [rdi], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, 0x30
	mov	qword ptr [rbp - 0x28], rdx
	jmp	.label_106
.label_140:
	mov	rdi, qword ptr [rbp - 0x30]
	call	endmntent
	cmp	eax, 0
	jne	.label_141
	jmp	.label_122
.label_141:
	jmp	.label_94
.label_94:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_96
.label_136:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	rdi, qword ptr [rbp - 0x30]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_108
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x88], ecx
	mov	rdi, qword ptr [rbp - 0x30]
	call	rpl_fclose
	mov	ecx, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0xc0], eax
	mov	dword ptr [rbp - 0xc4], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xc4]
	mov	dword ptr [rax], ecx
	jmp	.label_122
.label_97:
	jmp	.label_94
.label_108:
	mov	rdi, qword ptr [rbp - 0x30]
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_97
	jmp	.label_122
.label_128:
	movabs	rsi, OFFSET FLAT:label_114
	movabs	rax, OFFSET FLAT:label_131
	mov	qword ptr [rbp - 0x98], rax
	mov	rdi, qword ptr [rbp - 0x98]
	call	setmntent
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_137
	mov	qword ptr [rbp - 8], 0
	jmp	.label_96
.label_101:
	mov	eax, dword ptr [rbp - 0xa0]
	mov	dword ptr [rbp - 0xdc], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xdc]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
.label_96:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x100
	pop	rbp
	ret	
.label_122:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xa0], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
.label_110:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_101
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x18]
	call	free_mount_entry
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_110
	.section	.text
	.align	32
	#Procedure 0x403e45

	.globl read_file_system_list
	.type read_file_system_list, @function
read_file_system_list:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	mov	al, dil
	movabs	rsi, OFFSET FLAT:label_114
	movabs	rcx, OFFSET FLAT:label_115
	lea	rdx, [rbp - 0x18]
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x38], rcx
	mov	rdi, qword ptr [rbp - 0x38]
	call	fopen
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_128
	mov	qword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x48], 0
.label_106:
	lea	rdi, [rbp - 0x40]
	lea	rsi, [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x30]
	call	getline
	cmp	rax, -1
	je	.label_136
	movabs	rsi, OFFSET FLAT:label_138
	lea	rdx, [rbp - 0x4c]
	lea	rcx, [rbp - 0x50]
	lea	r8, [rbp - 0x6c]
	lea	r9, [rbp - 0x70]
	lea	rax, [rbp - 0x54]
	lea	rdi, [rbp - 0x58]
	lea	r10, [rbp - 0x71]
	mov	r11, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0xa8], rdi
	mov	rdi, r11
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	al, 0
	call	sscanf
	mov	dword ptr [rbp - 0x84], eax
	cmp	dword ptr [rbp - 0x84], 3
	je	.label_98
	cmp	dword ptr [rbp - 0x84], 7
	je	.label_98
	jmp	.label_106
	.section	.text
	.align	32
	#Procedure 0x403f30
	.globl fgetfilecon
	.type fgetfilecon, @function
fgetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	edi, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, edi
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403f57
	.globl sub_403f57
	.type sub_403f57, @function
sub_403f57:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f60

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	al, dl
	lea	rcx, [rbp - 0x50]
	mov	edx, 1
	movabs	r8, OFFSET FLAT:default_quoting_options
	mov	r9d, 0x38
	mov	r10d, r9d
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x11], al
	mov	rsi, rcx
	mov	rdi, rsi
	mov	rsi, r8
	mov	dword ptr [rbp - 0x54], edx
	mov	rdx, r10
	mov	qword ptr [rbp - 0x60], rcx
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	movsx	esi, byte ptr [rbp - 0x11]
	mov	edx, dword ptr [rbp - 0x54]
	call	set_char_quoting
	xor	edi, edi
	lea	rcx, [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x64], eax
	call	quotearg_n_options
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403fd5
	.globl sub_403fd5
	.type sub_403fd5, @function
sub_403fd5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403fe0

	.globl out_minus_zero
	.type out_minus_zero, @function
out_minus_zero:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdx, OFFSET FLAT:label_142
	movabs	rcx, OFFSET FLAT:label_143
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	make_format
	movsd	xmm0,  qword ptr [word ptr [rip + label_144]]
	mov	rdi, qword ptr [rbp - 8]
	mov	al, 1
	call	printf
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40402a
	.globl sub_40402a
	.type sub_40402a, @function
sub_40402a:

	nop	word ptr [rax + rax]
.label_146:
	mov	rax, qword ptr [rbp - 0x198]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1a8], rdx
.label_148:
	mov	rax, qword ptr [rbp - 0x1a8]
	lea	rcx, [rbp - 0x30]
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_145:
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	edx, dword ptr [rbp - 0x10]
	xor	eax, eax
	mov	cl, al
	mov	al, cl
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0x1b0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404089
	.globl sub_404089
	.type sub_404089, @function
sub_404089:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404094

	.globl open_safer
	.type open_safer, @function
open_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1b0
	test	al, al
	movaps	xmmword ptr [rbp - 0xf0], xmm7
	movaps	xmmword ptr [rbp - 0x100], xmm6
	movaps	xmmword ptr [rbp - 0x110], xmm5
	movaps	xmmword ptr [rbp - 0x120], xmm4
	movaps	xmmword ptr [rbp - 0x130], xmm3
	movaps	xmmword ptr [rbp - 0x140], xmm2
	movaps	xmmword ptr [rbp - 0x150], xmm1
	movaps	xmmword ptr [rbp - 0x160], xmm0
	mov	qword ptr [rbp - 0x168], rdi
	mov	qword ptr [rbp - 0x170], r9
	mov	qword ptr [rbp - 0x178], r8
	mov	qword ptr [rbp - 0x180], rcx
	mov	qword ptr [rbp - 0x188], rdx
	mov	dword ptr [rbp - 0x18c], esi
	je	.label_147
	movaps	xmm0, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0xf0]
	movaps	xmmword ptr [rbp - 0x40], xmm7
.label_147:
	mov	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rdx, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rsi, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rsi
	mov	edi, dword ptr [rbp - 0x18c]
	mov	r8, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 8], r8
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], 0
	mov	edi, dword ptr [rbp - 0xc]
	and	edi, 0x40
	cmp	edi, 0
	je	.label_145
	lea	rax, [rbp - 0x30]
	mov	rcx, rax
	lea	rdx, [rbp - 0xe0]
	mov	qword ptr [rcx + 0x10], rdx
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rcx + 8], rdx
	mov	dword ptr [rcx + 4], 0x30
	mov	dword ptr [rcx], 0x10
	mov	esi, dword ptr [rbp - 0x30]
	cmp	esi, 0x28
	mov	qword ptr [rbp - 0x198], rax
	mov	dword ptr [rbp - 0x19c], esi
	ja	.label_146
	mov	eax, dword ptr [rbp - 0x19c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x198]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1a8], rcx
	jmp	.label_148
	.section	.text
	.align	32
	#Procedure 0x404230

	.globl getfilecon
	.type getfilecon, @function
getfilecon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404258
	.globl sub_404258
	.type sub_404258, @function
sub_404258:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404260
	.globl fsetfilecon
	.type fsetfilecon, @function
fsetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	edi, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, edi
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404287
	.globl sub_404287
	.type sub_404287, @function
sub_404287:

	nop	word ptr [rax + rax]
.label_177:
	xor	edx, edx
	mov	al, byte ptr [rbp - 0x15]
	mov	cl, byte ptr [rbp - 0x16]
	and	al, 1
	and	cl, 1
	movzx	edi, al
	movzx	esi, cl
	call	default_format
	mov	edx, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	cl, byte ptr [rbp - 0x15]
	mov	r8b, byte ptr [rbp - 0x16]
	and	cl, 1
	and	r8b, 1
	movzx	edi, cl
	movzx	esi, r8b
	call	default_format
	mov	qword ptr [rbp - 0x28], rax
.label_153:
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 0x3c], eax
.label_152:
	mov	eax, dword ptr [rbp - 0x3c]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_151
	test	byte ptr [rbp - 0x15], 1
	je	.label_150
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x20]
	call	do_statfs
	and	al, 1
	movzx	edx, al
	mov	dword ptr [rbp - 0x90], edx
	jmp	.label_149
.label_151:
	mov	eax, 1
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x29]
	test	dl, 1
	cmovne	eax, ecx
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40432d
	.globl sub_40432d
	.type sub_40432d, @function
sub_40432d:

	nop	dword ptr [rax]
.label_182:
	movabs	rax, OFFSET FLAT:label_173
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_174
.label_174:
	mov	rax, qword ptr [rbp - 0x60]
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [word ptr [decimal_point]],  rax
	mov	rax,  qword ptr [word ptr [decimal_point]]
	mov	qword ptr [rbp - 0x68], rdi
	mov	rdi, rax
	call	strlen
	mov	qword ptr [word ptr [decimal_point_len]],  rax
	mov	rdi, qword ptr [rbp - 0x68]
	call	atexit
	mov	dword ptr [rbp - 0x6c], eax
.label_156:
	movabs	rdx, OFFSET FLAT:label_154
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, -1
	je	.label_170
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x70], eax
	mov	dword ptr [rbp - 0x74], ecx
	je	.label_176
	jmp	.label_157
.label_157:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x78], eax
	je	.label_159
	jmp	.label_166
.label_166:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x4c
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_168
	jmp	.label_172
.label_172:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x80], eax
	je	.label_179
	jmp	.label_171
.label_171:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x66
	mov	dword ptr [rbp - 0x84], eax
	je	.label_163
	jmp	.label_178
.label_178:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x88], eax
	je	.label_167
	jmp	.label_181
.label_181:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x8c], eax
	jne	.label_164
	jmp	.label_162
.label_162:
	movabs	rax, OFFSET FLAT:label_77
	mov	rcx,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x20], rcx
	mov	byte ptr [byte ptr [interpret_backslash_escapes]],  1
	mov	qword ptr [word ptr [trailing_delim]],  rax
	jmp	.label_155
.label_167:
	mov	byte ptr [rbp - 0x16], 1
	jmp	.label_155
.label_155:
	jmp	.label_156
.label_159:
	xor	edi, edi
	call	usage
.label_180:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_177
	movabs	rsi, OFFSET FLAT:label_165
	mov	rdi, qword ptr [rbp - 0x20]
	call	strstr
	cmp	rax, 0
	je	.label_175
	call	getenv_quoting_style
.label_175:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_153
	.section	.text
	.align	32
	#Procedure 0x4044cd

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x15], 0
	mov	byte ptr [rbp - 0x16], 0
	mov	qword ptr [rbp - 0x20], 0
	mov	byte ptr [rbp - 0x29], 1
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_77
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_183
	movabs	rsi, OFFSET FLAT:label_184
	mov	qword ptr [rbp - 0x48], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_183
	mov	qword ptr [rbp - 0x50], rax
	call	textdomain
	mov	qword ptr [rbp - 0x58], rax
	call	localeconv
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_182
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_174
.label_170:
	mov	eax, dword ptr [rbp - 8]
	cmp	eax,  dword ptr [dword ptr [optind]]
	jne	.label_180
	movabs	rdi, OFFSET FLAT:label_158
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_168:
	mov	byte ptr [byte ptr [follow_links]],  1
	jmp	.label_155
.label_163:
	mov	byte ptr [rbp - 0x15], 1
	jmp	.label_155
.label_164:
	mov	edi, 1
	call	usage
.label_176:
	movabs	rsi, OFFSET FLAT:label_160
	movabs	rdx, OFFSET FLAT:label_86
	movabs	r8, OFFSET FLAT:label_161
	xor	eax, eax
	mov	r9d, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_150:
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	do_stat
	and	al, 1
	movzx	r8d, al
	mov	dword ptr [rbp - 0x90], r8d
.label_149:
	mov	eax, dword ptr [rbp - 0x90]
	mov	cl, byte ptr [rbp - 0x29]
	and	cl, 1
	movzx	edx, cl
	and	edx, eax
	cmp	edx, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x29], cl
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_152
.label_179:
	movabs	rax, OFFSET FLAT:label_169
	mov	rcx,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x20], rcx
	mov	byte ptr [byte ptr [interpret_backslash_escapes]],  0
	mov	qword ptr [word ptr [trailing_delim]],  rax
	jmp	.label_155
	.section	.text
	.align	32
	#Procedure 0x404690
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40469c
	.globl sub_40469c
	.type sub_40469c, @function
sub_40469c:

	nop	dword ptr [rax]
.label_195:
	jmp	.label_185
.label_185:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x20]
	call	find_mount_point
	mov	qword ptr [rbp - 0x38], rax
	cmp	rax, 0
	je	.label_189
	mov	rdi, qword ptr [rbp - 0x38]
	call	find_bind_mount
	mov	qword ptr [rbp - 0x30], rax
	mov	byte ptr [rbp - 0x39], 0
.label_189:
	jmp	.label_188
.label_188:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x60], rdi
	mov	qword ptr [rbp - 0x68], rsi
	je	.label_191
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_186
.label_196:
	mov	rdi, qword ptr [rbp - 0x48]
	call	find_bind_mount
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_195
	mov	byte ptr [rbp - 0x39], 0
	jmp	.label_188
	.section	.text
	.align	32
	#Procedure 0x404728

	.globl out_mount_point
	.type out_mount_point, @function
out_mount_point:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	movabs	rax, OFFSET FLAT:label_192
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x38], 0
	mov	byte ptr [rbp - 0x39], 1
	test	byte ptr [byte ptr [follow_links]],  1
	jne	.label_193
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	je	.label_185
.label_193:
	mov	rdi, qword ptr [rbp - 8]
	call	canonicalize_file_name
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_196
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_194
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x4c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x58], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x4c]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_188
.label_187:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x78], rax
.label_190:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x70], rax
.label_186:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, rax
	call	out_string
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	mov	cl, byte ptr [rbp - 0x39]
	and	cl, 1
	movzx	eax, cl
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404826
	.globl sub_404826
	.type sub_404826, @function
sub_404826:

	nop	
.label_191:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_187
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_190
	.section	.text
	.align	32
	#Procedure 0x404840

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, sil
	mov	rsi, -1
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rbp - 9]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40486c
	.globl sub_40486c
	.type sub_40486c, @function
sub_40486c:

	nop	dword ptr [rax]
.label_200:
	jmp	.label_197
.label_197:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	cqo	
	idiv	rcx
	add	rdx, 0x30
	mov	sil, dl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_197
	jmp	.label_198
.label_198:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4048c8
	.globl sub_4048c8
	.type sub_4048c8, @function
sub_4048c8:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048d3

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0x14
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi], 0
	cmp	qword ptr [rbp - 8], 0
	jge	.label_200
	jmp	.label_199
.label_199:
	mov	eax, 0x30
	mov	ecx, eax
	mov	eax, 0xa
	mov	edx, eax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x20]
	idiv	rsi
	sub	rcx, rdx
	mov	dil, cl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], dil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_199
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_198
	.section	.text
	.align	32
	#Procedure 0x404970

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_201
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_202
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4049af
	.globl sub_4049af
	.type sub_4049af, @function
sub_4049af:

	nop	
.label_203:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4049b6
	.globl sub_4049b6
	.type sub_4049b6, @function
sub_4049b6:

	nop	dword ptr [rax + rax]
.label_204:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	dl, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	byte ptr [rcx + rax], dl
.label_206:
	jmp	.label_207
.label_207:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_205
	.section	.text
	.align	32
	#Procedure 0x4049f5

	.globl unescape_tab
	.type unescape_tab, @function
unescape_tab:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x10], 0
.label_205:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_203
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x5c
	jne	.label_204
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 4
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_204
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x30
	jl	.label_204
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x33
	jg	.label_204
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax + 2]
	cmp	edx, 0x30
	jl	.label_204
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax + 2]
	cmp	edx, 0x37
	jg	.label_204
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax + 3]
	cmp	edx, 0x30
	jl	.label_204
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax + 3]
	cmp	edx, 0x37
	jg	.label_204
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax + 1]
	sub	edx, 0x30
	shl	edx, 6
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	esi, byte ptr [rcx + rax + 2]
	sub	esi, 0x30
	shl	esi, 3
	add	edx, esi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	esi, byte ptr [rcx + rax + 3]
	sub	esi, 0x30
	add	edx, esi
	mov	dil, dl
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	byte ptr [rcx + rax], dil
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 3
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_206
	.section	.text
	.align	32
	#Procedure 0x404b40
	.globl xsum4
	.type xsum4, @function
xsum4:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	xsum
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	xsum
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	xsum
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404b83
	.globl sub_404b83
	.type sub_404b83, @function
sub_404b83:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b90

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404bc3
	.globl sub_404bc3
	.type sub_404bc3, @function
sub_404bc3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bd0

	.globl out_string
	.type out_string, @function
out_string:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, OFFSET FLAT:label_29
	movabs	rcx, OFFSET FLAT:label_208
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, rax
	call	make_format
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x1c], eax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c20
	.globl security_check_context_raw
	.type security_check_context_raw, @function
security_check_context_raw:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c44
	.globl sub_404c44
	.type sub_404c44, @function
sub_404c44:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c50
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [file_name]],  rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c66
	.globl sub_404c66
	.type sub_404c66, @function
sub_404c66:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c70

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	push	rbp
	mov	rbp, rsp
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	dword ptr [rbp - 0x10], edx
	mov	al, byte ptr [rbp - 9]
	mov	byte ptr [rbp - 0x11], al
	cmp	qword ptr [rbp - 8], 0
	je	.label_209
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_210
.label_209:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_210
.label_210:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	edx, ecx
	shr	rdx, 5
	shl	rdx, 2
	add	rax, rdx
	mov	qword ptr [rbp - 0x20], rax
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	eax, ecx
	and	rax, 0x1f
	mov	ecx, eax
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x34], ecx
	mov	ecx, esi
	mov	esi, dword ptr [rbp - 0x34]
	shr	esi, cl
	and	esi, 1
	mov	dword ptr [rbp - 0x28], esi
	mov	esi, dword ptr [rbp - 0x10]
	and	esi, 1
	xor	esi, dword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rbp - 0x24]
	shl	esi, cl
	mov	rax, qword ptr [rbp - 0x20]
	xor	esi, dword ptr [rax]
	mov	dword ptr [rax], esi
	mov	eax, dword ptr [rbp - 0x28]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404d12
	.globl sub_404d12
	.type sub_404d12, @function
sub_404d12:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d20

	.globl sub_404d20
	.type sub_404d20, @function
sub_404d20:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x150], rdi
	mov	rdi, rax
	mov	qword ptr [rbp - 0x158], rsi
	call	file_type
	mov	rdi, qword ptr [rbp - 0x150]
	mov	rsi, qword ptr [rbp - 0x158]
	mov	rdx, rax
	call	out_string
	jmp	.label_211
	.section	.text
	.align	32
	#Procedure 0x404d5d

	.globl sub_404d5d
	.type sub_404d5d, @function
sub_404d5d:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rax + 0x20]
	mov	edx, ecx
	call	out_uint
	mov	dword ptr [rbp - 0x17c], eax
	jmp	.label_211
	.section	.text
	.align	32
	#Procedure 0x404d7e

	.globl sub_404d7e
	.type sub_404d7e, @function
sub_404d7e:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x240], rdi
	mov	rdi, rax
	mov	qword ptr [rbp - 0x248], rsi
	call	get_stat_mtime
	mov	qword ptr [rbp - 0xb8], rax
	mov	qword ptr [rbp - 0xb0], rdx
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rsi, qword ptr [rbp - 0xb0]
	call	human_time
	mov	rdi, qword ptr [rbp - 0x240]
	mov	rsi, qword ptr [rbp - 0x248]
	mov	rdx, rax
	call	out_string
	jmp	.label_211
	.section	.text
	.align	32
	#Procedure 0x404ddc

	.globl print_stat
	.type print_stat, @function
print_stat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x290
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	dword ptr [rbp - 0x20], ecx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	qword ptr [rbp - 0x38], r9
	mov	byte ptr [rbp - 0x49], 0
	mov	ecx, dword ptr [rbp - 0x1c]
	add	ecx, -0x41
	mov	esi, ecx
	sub	ecx, 0x39
	mov	qword ptr [rbp - 0xf0], rsi
	mov	dword ptr [rbp - 0xf4], ecx
	ja	.label_213
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_212]]
	jmp	rcx
.label_1743:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rax + 8]
	call	out_uint
	mov	dword ptr [rbp - 0x138], eax
	jmp	.label_211
.label_1742:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rax + 0x40]
	call	out_uint
	mov	dword ptr [rbp - 0x1c4], eax
	jmp	.label_211
.label_1741:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xfff
	mov	ecx, ecx
	mov	edx, ecx
	call	out_uint_o
	jmp	.label_211
.label_1740:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	eax, dword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x200], rdi
	mov	edi, eax
	mov	qword ptr [rbp - 0x208], rsi
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x210], rdx
	mov	rdx, r8
	call	get_birthtime
	mov	qword ptr [rbp - 0x88], rax
	mov	qword ptr [rbp - 0x80], rdx
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x80]
	call	neg_to_zero
	mov	qword ptr [rbp - 0x78], rax
	mov	qword ptr [rbp - 0x70], rdx
	mov	rcx, qword ptr [rbp - 0x78]
	mov	r8, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x200]
	mov	rsi, qword ptr [rbp - 0x208]
	mov	rdx, qword ptr [rbp - 0x210]
	call	out_epoch_sec
	jmp	.label_211
.label_213:
	mov	edi, 0x3f
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputc_unlocked
	mov	dword ptr [rbp - 0x28c], eax
.label_211:
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_218:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x290
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404f4b
	.globl sub_404f4b
	.type sub_404f4b, @function
sub_404f4b:

	nop	word ptr cs:[rax + rax]
.label_1744:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rax + 0x1c]
	mov	edx, ecx
	call	out_uint
	mov	dword ptr [rbp - 0x160], eax
	jmp	.label_211
	.section	.text
	.align	32
	#Procedure 0x404f7a

	.globl sub_404f7a
	.type sub_404f7a, @function
sub_404f7a:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	call	out_string
	jmp	.label_211
	.section	.text
	.align	32
	#Procedure 0x404f90

	.globl sub_404f90
	.type sub_404f90, @function
sub_404f90:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rax]
	call	out_uint_x
	jmp	.label_211
	.section	.text
	.align	32
	#Procedure 0x404fa9

	.globl sub_404fa9
	.type sub_404fa9, @function
sub_404fa9:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x1a0], rdi
	mov	rdi, rax
	mov	qword ptr [rbp - 0x1a8], rsi
	call	gnu_dev_major
	mov	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x1a0]
	mov	rsi, qword ptr [rbp - 0x1a8]
	call	out_uint_x
	jmp	.label_211
	.section	.text
	.align	32
	#Procedure 0x404feb

	.globl sub_404feb
	.type sub_404feb, @function
sub_404feb:
	mov	edi, dword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x38]
	call	get_birthtime
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x60], rdx
	cmp	qword ptr [rbp - 0x60], 0
	jge	.label_214
	movabs	rdx, OFFSET FLAT:label_29
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	out_string
	jmp	.label_215
	.section	.text
	.align	32
	#Procedure 0x40502a

	.globl sub_40502a
	.type sub_40502a, @function
sub_40502a:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	call	out_file_context
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	movzx	r8d, al
	or	r8d, ecx
	cmp	r8d, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x49], al
	jmp	.label_211
	.section	.text
	.align	32
	#Procedure 0x40505d

	.globl sub_40505d
	.type sub_40505d, @function
sub_40505d:
	xor	eax, eax
	mov	edi, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x100], rsi
	mov	qword ptr [rbp - 0x108], rcx
	call	get_quoting_style
	mov	rsi, qword ptr [rbp - 0x28]
	mov	edi, eax
	call	quotearg_style
	mov	rdi, qword ptr [rbp - 0x108]
	mov	rsi, qword ptr [rbp - 0x100]
	mov	rdx, rax
	call	out_string
	mov	rax, qword ptr [rbp - 0x38]
	mov	r8d, dword ptr [rax + 0x18]
	and	r8d, 0xf000
	cmp	r8d, 0xa000
	jne	.label_219
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rax + 0x30]
	call	areadlink_with_size
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	jne	.label_216
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_220
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x10c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x118], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x10c]
	mov	rdx, qword ptr [rbp - 0x118]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 1
	jmp	.label_218
	.section	.text
	.align	32
	#Procedure 0x40512c

	.globl sub_40512c
	.type sub_40512c, @function
sub_40512c:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x250], rdi
	mov	rdi, rax
	mov	qword ptr [rbp - 0x258], rdx
	mov	qword ptr [rbp - 0x260], rsi
	call	get_stat_mtime
	mov	qword ptr [rbp - 0xc8], rax
	mov	qword ptr [rbp - 0xc0], rdx
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	r8, qword ptr [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 0x250]
	mov	rsi, qword ptr [rbp - 0x260]
	mov	rdx, qword ptr [rbp - 0x258]
	call	out_epoch_sec
	jmp	.label_211
	.section	.text
	.align	32
	#Procedure 0x405194

	.globl sub_405194
	.type sub_405194, @function
sub_405194:
	movabs	rax, OFFSET FLAT:label_221
	mov	qword ptr [rbp - 0x178], rax
	jmp	.label_222
.label_222:
	mov	rax, qword ptr [rbp - 0x178]
	mov	rdi, qword ptr [rbp - 0x168]
	mov	rsi, qword ptr [rbp - 0x170]
	mov	rdx, rax
	call	out_string
	jmp	.label_211
	.section	.text
	.align	32
	#Procedure 0x4051cc

	.globl sub_4051cc
	.type sub_4051cc, @function
sub_4051cc:
	mov	rax, qword ptr [rbp - 0x38]
	mov	edi, dword ptr [rax + 0x20]
	call	getgrgid
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	qword ptr [rbp - 0x48], 0
	mov	qword ptr [rbp - 0x188], rdi
	mov	qword ptr [rbp - 0x190], rsi
	je	.label_224
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x198], rax
	jmp	.label_223
	.section	.text
	.align	32
	#Procedure 0x405210

	.globl sub_405210
	.type sub_405210, @function
sub_405210:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rax + 0x30]
	call	out_int
	mov	dword ptr [rbp - 0x1bc], eax
	jmp	.label_211
	.section	.text
	.align	32
	#Procedure 0x405230

	.globl sub_405230
	.type sub_405230, @function
sub_405230:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x268], rdi
	mov	rdi, rax
	mov	qword ptr [rbp - 0x270], rsi
	call	get_stat_ctime
	mov	qword ptr [rbp - 0xd8], rax
	mov	qword ptr [rbp - 0xd0], rdx
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rsi, qword ptr [rbp - 0xd0]
	call	human_time
	mov	rdi, qword ptr [rbp - 0x268]
	mov	rsi, qword ptr [rbp - 0x270]
	mov	rdx, rax
	call	out_string
	jmp	.label_211
.label_214:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x1f0], rdi
	mov	rdi, rax
	mov	qword ptr [rbp - 0x1f8], rsi
	mov	rsi, rcx
	call	human_time
	mov	rdi, qword ptr [rbp - 0x1f0]
	mov	rsi, qword ptr [rbp - 0x1f8]
	mov	rdx, rax
	call	out_string
.label_215:
	jmp	.label_211
	.section	.text
	.align	32
	#Procedure 0x4052d2

	.globl sub_4052d2
	.type sub_4052d2, @function
sub_4052d2:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	call	out_mount_point
	and	al, 1
	movzx	r8d, al
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	movzx	r9d, al
	or	r9d, r8d
	cmp	r9d, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x49], al
	jmp	.label_211
	.section	.text
	.align	32
	#Procedure 0x40530a

	.globl sub_40530a
	.type sub_40530a, @function
sub_40530a:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x140], rdi
	mov	rdi, rax
	mov	qword ptr [rbp - 0x148], rsi
	call	human_access
	mov	rdi, qword ptr [rbp - 0x140]
	mov	rsi, qword ptr [rbp - 0x148]
	mov	rdx, rax
	call	out_string
	jmp	.label_211
	.section	.text
	.align	32
	#Procedure 0x405347

	.globl sub_405347
	.type sub_405347, @function
sub_405347:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x228], rdi
	mov	rdi, rax
	mov	qword ptr [rbp - 0x230], rdx
	mov	qword ptr [rbp - 0x238], rsi
	call	get_stat_atime
	mov	qword ptr [rbp - 0xa8], rax
	mov	qword ptr [rbp - 0xa0], rdx
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	r8, qword ptr [rbp - 0xa0]
	mov	rdi, qword ptr [rbp - 0x228]
	mov	rsi, qword ptr [rbp - 0x238]
	mov	rdx, qword ptr [rbp - 0x230]
	call	out_epoch_sec
	jmp	.label_211
	.section	.text
	.align	32
	#Procedure 0x4053af

	.globl sub_4053af
	.type sub_4053af, @function
sub_4053af:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rax]
	call	out_uint
	mov	dword ptr [rbp - 0x134], eax
	jmp	.label_211
	.section	.text
	.align	32
	#Procedure 0x4053ce

	.globl sub_4053ce
	.type sub_4053ce, @function
sub_4053ce:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x1b0], rdi
	mov	rdi, rax
	mov	qword ptr [rbp - 0x1b8], rsi
	call	gnu_dev_minor
	mov	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x1b0]
	mov	rsi, qword ptr [rbp - 0x1b8]
	call	out_uint_x
	jmp	.label_211
	.section	.text
	.align	32
	#Procedure 0x405410

	.globl sub_405410
	.type sub_405410, @function
sub_405410:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rax + 0x10]
	call	out_uint
	mov	dword ptr [rbp - 0x15c], eax
	jmp	.label_211
	.section	.text
	.align	32
	#Procedure 0x405430

	.globl sub_405430
	.type sub_405430, @function
sub_405430:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x218], rdi
	mov	rdi, rax
	mov	qword ptr [rbp - 0x220], rsi
	call	get_stat_atime
	mov	qword ptr [rbp - 0x98], rax
	mov	qword ptr [rbp - 0x90], rdx
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0x90]
	call	human_time
	mov	rdi, qword ptr [rbp - 0x218]
	mov	rsi, qword ptr [rbp - 0x220]
	mov	rdx, rax
	call	out_string
	jmp	.label_211
	.section	.text
	.align	32
	#Procedure 0x40548e

	.globl sub_40548e
	.type sub_40548e, @function
sub_40548e:
	mov	eax, 0x200
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	out_uint
	mov	dword ptr [rbp - 0x1c0], eax
	jmp	.label_211
.label_216:
	movabs	rdi, OFFSET FLAT:label_217
	mov	al, 0
	call	printf
	xor	ecx, ecx
	mov	edi, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x11c], eax
	mov	qword ptr [rbp - 0x128], rsi
	mov	qword ptr [rbp - 0x130], rdx
	call	get_quoting_style
	mov	rsi, qword ptr [rbp - 0x58]
	mov	edi, eax
	call	quotearg_style
	mov	rdi, qword ptr [rbp - 0x130]
	mov	rsi, qword ptr [rbp - 0x128]
	mov	rdx, rax
	call	out_string
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
.label_219:
	jmp	.label_211
.label_224:
	movabs	rax, OFFSET FLAT:label_221
	mov	qword ptr [rbp - 0x198], rax
	jmp	.label_223
.label_223:
	mov	rax, qword ptr [rbp - 0x198]
	mov	rdi, qword ptr [rbp - 0x188]
	mov	rsi, qword ptr [rbp - 0x190]
	mov	rdx, rax
	call	out_string
	jmp	.label_211
	.section	.text
	.align	32
	#Procedure 0x40554a

	.globl sub_40554a
	.type sub_40554a, @function
sub_40554a:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rax + 0x18]
	mov	edx, ecx
	call	out_uint_x
	jmp	.label_211
	.section	.text
	.align	32
	#Procedure 0x405565

	.globl sub_405565
	.type sub_405565, @function
sub_405565:
	mov	rax, qword ptr [rbp - 0x38]
	mov	edi, dword ptr [rax + 0x1c]
	call	getpwuid
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	qword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x168], rdi
	mov	qword ptr [rbp - 0x170], rsi
	je	sub_405194
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x178], rax
	jmp	.label_222
	.section	.text
	.align	32
	#Procedure 0x4055a9

	.globl sub_4055a9
	.type sub_4055a9, @function
sub_4055a9:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x278], rdi
	mov	rdi, rax
	mov	qword ptr [rbp - 0x280], rdx
	mov	qword ptr [rbp - 0x288], rsi
	call	get_stat_ctime
	mov	qword ptr [rbp - 0xe8], rax
	mov	qword ptr [rbp - 0xe0], rdx
	mov	rcx, qword ptr [rbp - 0xe8]
	mov	r8, qword ptr [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x278]
	mov	rsi, qword ptr [rbp - 0x288]
	mov	rdx, qword ptr [rbp - 0x280]
	call	out_epoch_sec
	jmp	.label_211
	.section	.text
	.align	32
	#Procedure 0x405611

	.globl sub_405611
	.type sub_405611, @function
sub_405611:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0x1e0], rcx
	jmp	.label_225
.label_225:
	mov	rax, qword ptr [rbp - 0x1e0]
	mov	rdi, qword ptr [rbp - 0x1d8]
	mov	rsi, qword ptr [rbp - 0x1d0]
	mov	rdx, rax
	call	out_uint
	mov	dword ptr [rbp - 0x1e4], eax
	jmp	.label_211
	.section	.text
	.align	32
	#Procedure 0x40564c

	.globl sub_40564c
	.type sub_40564c, @function
sub_40564c:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x38]
	cmp	rcx, qword ptr [rdx + 0x38]
	mov	qword ptr [rbp - 0x1d0], rsi
	mov	qword ptr [rbp - 0x1d8], rdi
	jge	sub_405611
	movabs	rax, 0x2000000000000000
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	qword ptr [rcx + 0x38], rax
	ja	sub_405611
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x1e0], rax
	jmp	.label_225
	.section	.text
	.align	32
	#Procedure 0x4056a0

	.globl quote
	.type quote, @function
quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quote_n
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4056bf
	.globl sub_4056bf
	.type sub_4056bf, @function
sub_4056bf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4056c0

	.globl cdb_fchdir
	.type cdb_fchdir, @function
cdb_fchdir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	edi, dword ptr [rdi]
	call	fchdir
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4056dd
	.globl sub_4056dd
	.type sub_4056dd, @function
sub_4056dd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4056e0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_226
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_226:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_228
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_227
.label_228:
	call	abort
.label_227:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405750

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_229
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_229:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_230
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_230
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_230
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_231
.label_230:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_231:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4057f1
	.globl sub_4057f1
	.type sub_4057f1, @function
sub_4057f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405800

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_232
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_232
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_234
.label_232:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_233
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_233
	call	xalloc_die
.label_233:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_234:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40587a
	.globl sub_40587a
	.type sub_40587a, @function
sub_40587a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405880

	.globl equal_tm
	.type equal_tm, @function
equal_tm:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 4]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	ecx, dword ptr [rsi + 4]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	ecx, dword ptr [rsi + 8]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 0xc]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	ecx, dword ptr [rsi + 0xc]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 0x10]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	ecx, dword ptr [rsi + 0x10]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 0x14]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	ecx, dword ptr [rsi + 0x14]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, dword ptr [rsi + 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rsi + 0x20]
	mov	dword ptr [rbp - 0x14], eax
	call	isdst_differ
	and	al, 1
	movzx	ecx, al
	mov	esi, dword ptr [rbp - 0x14]
	or	esi, ecx
	cmp	esi, 0
	setne	al
	xor	al, 0xff
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40591f
	.globl sub_40591f
	.type sub_40591f, @function
sub_40591f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405920

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rax, rdi
	xor	ecx, ecx
	mov	edx, 0x38
	lea	r8, [rbp - 0x40]
	mov	dword ptr [rbp - 4], esi
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, r8
	mov	esi, ecx
	mov	qword ptr [rbp - 0x50], rax
	call	memset
	cmp	dword ptr [rbp - 4], 0xa
	jne	.label_235
	call	abort
.label_235:
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x40], eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x50]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405984
	.globl sub_405984
	.type sub_405984, @function
sub_405984:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405990

	.globl get_birthtime
	.type get_birthtime, @function
get_birthtime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 0x14], edi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdi, rdx
	call	get_stat_birthtime
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x30], rdx
	movups	xmm0, xmmword ptr [rbp - 0x38]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4059c9
	.globl sub_4059c9
	.type sub_4059c9, @function
sub_4059c9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4059d0

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rbp - 0x28]
	jne	.label_236
	mov	dword ptr [rbp - 4], 0
	jmp	.label_240
.label_238:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_237
.label_239:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_240:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405a48
	.globl sub_405a48
	.type sub_405a48, @function
sub_405a48:

	nop	word ptr cs:[rax + rax]
.label_236:
	jmp	.label_237
.label_237:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	edi, byte ptr [rax]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	mov	rdx, qword ptr [rbp - 0x28]
	movzx	edi, byte ptr [rdx]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x2a], cl
	movzx	eax, byte ptr [rbp - 0x29]
	cmp	eax, 0
	jne	.label_238
	jmp	.label_239
.label_244:
	jmp	.label_242
.label_242:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_245
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x30], rcx
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	byte ptr [rax], dl
	jmp	.label_242
	.section	.text
	.align	32
	#Procedure 0x405aca

	.globl make_format
	.type make_format, @function
make_format:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rcx
.label_248:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	rdx, qword ptr [rbp - 0x38]
	mov	byte ptr [rbp - 0x39], cl
	jae	.label_241
	movabs	rdi, OFFSET FLAT:printf_flags
	mov	rax, qword ptr [rbp - 0x30]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	setne	cl
	mov	byte ptr [rbp - 0x39], cl
.label_241:
	mov	al, byte ptr [rbp - 0x39]
	test	al, 1
	jne	.label_243
	jmp	.label_244
.label_243:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x30]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_246
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, rax
	add	rdx, 1
	mov	qword ptr [rbp - 0x28], rdx
	mov	byte ptr [rax], cl
.label_246:
	jmp	.label_247
.label_247:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_248
.label_245:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	call	strcpy
	mov	qword ptr [rbp - 0x48], rax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405ba5
	.globl sub_405ba5
	.type sub_405ba5, @function
sub_405ba5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405bb0
	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x60]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405bc2
	.globl sub_405bc2
	.type sub_405bc2, @function
sub_405bc2:

	nop	word ptr cs:[rax + rax]
.label_557:
	movabs	rax, OFFSET FLAT:label_249
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_401:
	movabs	rax, OFFSET FLAT:label_545
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_308:
	movabs	rax, OFFSET FLAT:label_601
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_349:
	movabs	rax, OFFSET FLAT:label_253
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_270:
	movabs	rax, OFFSET FLAT:label_258
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_504:
	movabs	rax, OFFSET FLAT:label_264
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_403:
	movabs	rax, OFFSET FLAT:label_271
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_324:
	movabs	rax, OFFSET FLAT:label_279
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_360:
	movabs	rax, OFFSET FLAT:label_285
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_465:
	movabs	rax, OFFSET FLAT:label_292
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_358:
	movabs	rax, OFFSET FLAT:label_300
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_531:
	movabs	rax, OFFSET FLAT:label_305
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_529:
	movabs	rax, OFFSET FLAT:label_315
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_374:
	movabs	rax, OFFSET FLAT:label_322
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_448:
	movabs	rax, OFFSET FLAT:label_328
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_453:
	movabs	rax, OFFSET FLAT:label_335
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_382:
	movabs	rax, OFFSET FLAT:label_341
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_586:
	movabs	rax, OFFSET FLAT:label_346
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_251:
	movabs	rax, OFFSET FLAT:label_129
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_354:
	movabs	rax, OFFSET FLAT:label_361
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_562:
	movabs	rax, OFFSET FLAT:label_369
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_479:
	movabs	rax, OFFSET FLAT:label_377
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_252:
	movabs	rax, OFFSET FLAT:label_385
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_584:
	movabs	rax, OFFSET FLAT:label_103
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_512:
	movabs	rax, OFFSET FLAT:label_394
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_576:
	movabs	rax, OFFSET FLAT:label_402
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_560:
	movabs	rax, OFFSET FLAT:label_407
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_372:
	movabs	rax, OFFSET FLAT:label_414
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_595:
	movabs	rax, OFFSET FLAT:label_420
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_575:
	movabs	rax, OFFSET FLAT:label_425
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_299:
	movabs	rax, OFFSET FLAT:label_433
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_593:
	movabs	rax, OFFSET FLAT:label_440
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_260:
	movabs	rax, OFFSET FLAT:label_450
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_458:
	movabs	rax, OFFSET FLAT:label_454
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_470:
	movabs	rax, OFFSET FLAT:label_460
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_489:
	movabs	rax, OFFSET FLAT:label_134
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_348:
	movabs	rax, OFFSET FLAT:label_473
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_412:
	movabs	rax, OFFSET FLAT:label_481
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_267:
	movabs	rax, OFFSET FLAT:label_487
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_446:
	movabs	rax, OFFSET FLAT:label_493
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_506:
	movabs	rax, OFFSET FLAT:label_498
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_321:
	movabs	rax, OFFSET FLAT:label_505
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_344:
	movabs	rax, OFFSET FLAT:label_514
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_534:
	movabs	rax, OFFSET FLAT:label_519
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_255:
	movabs	rax, OFFSET FLAT:label_471
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_445:
	movabs	rax, OFFSET FLAT:label_532
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_317:
	movabs	rax, OFFSET FLAT:label_538
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_426:
	movabs	rax, OFFSET FLAT:label_544
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_332:
	movabs	rax, OFFSET FLAT:label_550
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_457:
	movabs	rax, OFFSET FLAT:label_556
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_462:
	movabs	rax, OFFSET FLAT:label_561
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_274:
	movabs	rax, OFFSET FLAT:label_568
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_290:
	movabs	rax, OFFSET FLAT:label_432
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_492:
	movabs	rax, OFFSET FLAT:label_580
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_486:
	movabs	rax, OFFSET FLAT:label_113
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_451:
	movabs	rax, OFFSET FLAT:label_594
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_552:
	movabs	rdi, OFFSET FLAT:human_fstype.buf
	movabs	rsi, OFFSET FLAT:label_602
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	al, 0
	call	sprintf
	movabs	rdx, OFFSET FLAT:human_fstype.buf
	mov	qword ptr [rbp - 8], rdx
	mov	dword ptr [rbp - 0x3f4], eax
.label_250:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x400
	pop	rbp
	ret	
.label_284:
	movabs	rax, OFFSET FLAT:label_272
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_567:
	movabs	rax, OFFSET FLAT:label_280
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_540:
	movabs	rax, OFFSET FLAT:label_286
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_524:
	movabs	rax, OFFSET FLAT:label_293
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_289:
	movabs	rax, OFFSET FLAT:label_301
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_523:
	movabs	rax, OFFSET FLAT:label_305
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_549:
	movabs	rax, OFFSET FLAT:label_316
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_337:
	movabs	rax, OFFSET FLAT:label_323
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_263:
	movabs	rax, OFFSET FLAT:label_329
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_500:
	movabs	rax, OFFSET FLAT:label_336
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_480:
	movabs	rax, OFFSET FLAT:label_342
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_436:
	movabs	rax, OFFSET FLAT:label_121
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_476:
	movabs	rax, OFFSET FLAT:label_353
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_281:
	movabs	rax, OFFSET FLAT:label_362
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_541:
	movabs	rax, OFFSET FLAT:label_370
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_570:
	movabs	rax, OFFSET FLAT:label_378
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_515:
	movabs	rax, OFFSET FLAT:label_386
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_535:
	movabs	rax, OFFSET FLAT:label_391
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_553:
	movabs	rax, OFFSET FLAT:label_397
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_340:
	movabs	rax, OFFSET FLAT:label_363
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_302:
	movabs	rax, OFFSET FLAT:label_305
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_326:
	movabs	rax, OFFSET FLAT:label_415
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
	.section	.text
	.align	32
	#Procedure 0x4061e5

	.globl human_fstype
	.type human_fstype, @function
human_fstype:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x400
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rdi]
	mov	rax, rdi
	sub	rax, 0x2f
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x28], rax
	je	.label_421
	jmp	.label_435
.label_435:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x187
	mov	qword ptr [rbp - 0x30], rax
	je	.label_436
	jmp	.label_443
.label_443:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x7c0
	mov	qword ptr [rbp - 0x38], rax
	je	.label_446
	jmp	.label_387
.label_387:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x1373
	mov	qword ptr [rbp - 0x40], rax
	je	.label_486
	jmp	.label_461
.label_461:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x137d
	mov	qword ptr [rbp - 0x48], rax
	je	.label_445
	jmp	.label_466
.label_466:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x137f
	mov	qword ptr [rbp - 0x50], rax
	je	.label_468
	jmp	.label_477
.label_477:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x138f
	mov	qword ptr [rbp - 0x58], rax
	je	.label_480
	jmp	.label_587
.label_587:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x1cd1
	mov	qword ptr [rbp - 0x60], rax
	je	.label_489
	jmp	.label_495
.label_495:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x2468
	mov	qword ptr [rbp - 0x68], rax
	je	.label_496
	jmp	.label_502
.label_502:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x2478
	mov	qword ptr [rbp - 0x70], rax
	je	.label_504
	jmp	.label_513
.label_513:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x3434
	mov	qword ptr [rbp - 0x78], rax
	je	.label_515
	jmp	.label_521
.label_521:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x4000
	mov	qword ptr [rbp - 0x80], rax
	je	.label_523
	jmp	.label_528
.label_528:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x4004
	mov	qword ptr [rbp - 0x88], rax
	je	.label_531
	jmp	.label_539
.label_539:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x4006
	mov	qword ptr [rbp - 0x90], rax
	je	.label_541
	jmp	.label_546
.label_546:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x4244
	mov	qword ptr [rbp - 0x98], rax
	je	.label_549
	jmp	.label_483
.label_483:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x482b
	mov	qword ptr [rbp - 0xa0], rax
	je	.label_558
	jmp	.label_564
.label_564:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x4858
	mov	qword ptr [rbp - 0xa8], rax
	je	.label_567
	jmp	.label_574
.label_574:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x4d44
	mov	qword ptr [rbp - 0xb0], rax
	je	.label_576
	jmp	.label_582
.label_582:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x4d5a
	mov	qword ptr [rbp - 0xb8], rax
	je	.label_586
	jmp	.label_592
.label_592:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x517b
	mov	qword ptr [rbp - 0xc0], rax
	je	.label_595
	jmp	.label_604
.label_604:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x564c
	mov	qword ptr [rbp - 0xc8], rax
	je	.label_252
	jmp	.label_257
.label_257:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x5df5
	mov	qword ptr [rbp - 0xd0], rax
	je	.label_259
	jmp	.label_266
.label_266:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x6969
	mov	qword ptr [rbp - 0xd8], rax
	je	.label_268
	jmp	.label_277
.label_277:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x7275
	mov	qword ptr [rbp - 0xe0], rax
	je	.label_281
	jmp	.label_288
.label_288:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x72b6
	mov	qword ptr [rbp - 0xe8], rax
	je	.label_290
	jmp	.label_298
.label_298:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x9660
	mov	qword ptr [rbp - 0xf0], rax
	je	.label_302
	jmp	.label_307
.label_307:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x9fa0
	mov	qword ptr [rbp - 0xf8], rax
	je	.label_311
	jmp	.label_320
.label_320:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x9fa1
	mov	qword ptr [rbp - 0x100], rax
	je	.label_313
	jmp	.label_330
.label_330:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x9fa2
	mov	qword ptr [rbp - 0x108], rax
	je	.label_332
	jmp	.label_419
.label_419:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0xadf5
	mov	qword ptr [rbp - 0x110], rax
	je	.label_427
	jmp	.label_347
.label_347:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0xadff
	mov	qword ptr [rbp - 0x118], rax
	je	.label_349
	jmp	.label_357
.label_357:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0xef51
	mov	qword ptr [rbp - 0x120], rax
	je	.label_360
	jmp	.label_371
.label_371:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0xef53
	mov	qword ptr [rbp - 0x128], rax
	je	.label_374
	jmp	.label_381
.label_381:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0xf15f
	mov	qword ptr [rbp - 0x130], rax
	je	.label_384
	jmp	.label_355
.label_355:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x11954
	mov	qword ptr [rbp - 0x138], rax
	je	.label_393
	jmp	.label_398
.label_398:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x27e0eb
	mov	qword ptr [rbp - 0x140], rax
	je	.label_401
	jmp	.label_472
.label_472:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, OFFSET FLAT:(label_408+3)
	mov	qword ptr [rbp - 0x148], rax
	je	.label_409
	jmp	.label_416
.label_416:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0xc0ffee
	mov	qword ptr [rbp - 0x150], rax
	je	.label_418
	jmp	.label_507
.label_507:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0xc36400
	mov	qword ptr [rbp - 0x158], rax
	je	.label_426
	jmp	.label_437
.label_437:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x1021994
	mov	qword ptr [rbp - 0x160], rax
	je	.label_303
	jmp	.label_449
.label_449:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x1021997
	mov	qword ptr [rbp - 0x168], rax
	je	.label_451
	jmp	.label_456
.label_456:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x1161970
	mov	qword ptr [rbp - 0x170], rax
	je	.label_458
	jmp	.label_463
.label_463:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x12fd16d
	mov	qword ptr [rbp - 0x178], rax
	je	.label_465
	jmp	.label_474
.label_474:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x12ff7b4
	mov	qword ptr [rbp - 0x180], rax
	je	.label_476
	jmp	.label_485
.label_485:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x12ff7b5
	mov	qword ptr [rbp - 0x188], rax
	je	.label_488
	jmp	.label_352
.label_352:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x12ff7b6
	mov	qword ptr [rbp - 0x190], rax
	je	.label_295
	jmp	.label_503
.label_503:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x12ff7b7
	mov	qword ptr [rbp - 0x198], rax
	je	.label_506
	jmp	.label_516
.label_516:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x13111a8
	mov	qword ptr [rbp - 0x1a0], rax
	je	.label_517
	jmp	.label_525
.label_525:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x7655821
	mov	qword ptr [rbp - 0x1a8], rax
	je	.label_526
	jmp	.label_533
.label_533:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x9041934
	mov	qword ptr [rbp - 0x1b0], rax
	je	.label_535
	jmp	.label_542
.label_542:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0xbad1dea
	mov	qword ptr [rbp - 0x1b8], rax
	je	.label_543
	jmp	.label_551
.label_551:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0xbd00bd0
	mov	qword ptr [rbp - 0x1c0], rax
	je	.label_553
	jmp	.label_559
.label_559:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x11307854
	mov	qword ptr [rbp - 0x1c8], rax
	je	.label_560
	jmp	.label_569
.label_569:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x13661366
	mov	qword ptr [rbp - 0x1d0], rax
	je	.label_570
	jmp	.label_577
.label_577:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x15013346
	mov	qword ptr [rbp - 0x1d8], rax
	je	.label_579
	jmp	.label_588
.label_588:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x19800202
	mov	qword ptr [rbp - 0x1e0], rax
	je	.label_589
	jmp	.label_597
.label_597:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x19830326
	mov	qword ptr [rbp - 0x1e8], rax
	je	.label_600
	jmp	.label_254
.label_254:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x1badface
	mov	qword ptr [rbp - 0x1f0], rax
	je	.label_255
	jmp	.label_261
.label_261:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x24051905
	mov	qword ptr [rbp - 0x1f8], rax
	je	.label_263
	jmp	.label_530
.label_530:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x28cd3d45
	mov	qword ptr [rbp - 0x200], rax
	je	.label_273
	jmp	.label_282
.label_282:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x2bad1dea
	mov	qword ptr [rbp - 0x208], rax
	je	.label_284
	jmp	.label_508
.label_508:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x2fc12fc1
	mov	qword ptr [rbp - 0x210], rax
	je	.label_294
	jmp	.label_304
.label_304:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x3153464a
	mov	qword ptr [rbp - 0x218], rax
	je	.label_573
	jmp	.label_314
.label_314:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x42465331
	mov	qword ptr [rbp - 0x220], rax
	je	.label_317
	jmp	.label_325
.label_325:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x42494e4d
	mov	qword ptr [rbp - 0x228], rax
	je	.label_326
	jmp	.label_334
.label_334:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x43415d53
	mov	qword ptr [rbp - 0x230], rax
	je	.label_337
	jmp	.label_343
.label_343:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x453dcd28
	mov	qword ptr [rbp - 0x238], rax
	je	.label_344
	jmp	.label_501
.label_501:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x45584653
	mov	qword ptr [rbp - 0x240], rax
	je	.label_354
	jmp	.label_364
.label_364:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x47504653
	mov	qword ptr [rbp - 0x248], rax
	je	.label_365
	jmp	.label_376
.label_376:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x50495045
	mov	qword ptr [rbp - 0x250], rax
	je	.label_270
	jmp	.label_388
.label_388:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x52654973
	mov	qword ptr [rbp - 0x258], rax
	je	.label_389
	jmp	.label_395
.label_395:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x5346314d
	mov	qword ptr [rbp - 0x260], rax
	je	.label_396
	jmp	.label_404
.label_404:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x5346414f
	mov	qword ptr [rbp - 0x268], rax
	je	.label_405
	jmp	.label_411
.label_411:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x53464846
	mov	qword ptr [rbp - 0x270], rax
	je	.label_413
	jmp	.label_554
.label_554:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x5346544e
	mov	qword ptr [rbp - 0x278], rax
	je	.label_562
	jmp	.label_428
.label_428:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x534f434b
	mov	qword ptr [rbp - 0x280], rax
	je	.label_431
	jmp	.label_441
.label_441:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x54190100
	mov	qword ptr [rbp - 0x288], rax
	je	.label_442
	jmp	.label_452
.label_452:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x565a4653
	mov	qword ptr [rbp - 0x290], rax
	je	.label_453
	jmp	.label_434
.label_434:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x58295829
	mov	qword ptr [rbp - 0x298], rax
	je	.label_462
	jmp	.label_467
.label_467:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x58465342
	mov	qword ptr [rbp - 0x2a0], rax
	je	.label_470
	jmp	.label_548
.label_548:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x5a3c69f0
	mov	qword ptr [rbp - 0x2a8], rax
	je	.label_482
	jmp	.label_490
.label_490:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x5dca2df5
	mov	qword ptr [rbp - 0x2b0], rax
	je	.label_492
	jmp	.label_497
.label_497:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x61636673
	mov	qword ptr [rbp - 0x2b8], rax
	je	.label_500
	jmp	.label_373
.label_373:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x6165676c
	mov	qword ptr [rbp - 0x2c0], rax
	je	.label_510
	jmp	.label_518
.label_518:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x61756673
	mov	qword ptr [rbp - 0x2c8], rax
	je	.label_520
	jmp	.label_527
.label_527:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x62646576
	mov	qword ptr [rbp - 0x2d0], rax
	je	.label_529
	jmp	.label_536
.label_536:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x62656570
	mov	qword ptr [rbp - 0x2d8], rax
	je	.label_540
	jmp	.label_599
.label_599:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x62656572
	mov	qword ptr [rbp - 0x2e0], rax
	je	.label_547
	jmp	.label_555
.label_555:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x63677270
	mov	qword ptr [rbp - 0x2e8], rax
	je	.label_557
	jmp	.label_563
.label_563:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x64626720
	mov	qword ptr [rbp - 0x2f0], rax
	je	.label_565
	jmp	.label_571
.label_571:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x64646178
	mov	qword ptr [rbp - 0x2f8], rax
	je	.label_575
	jmp	.label_581
.label_581:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x65735543
	mov	qword ptr [rbp - 0x300], rax
	je	.label_583
	jmp	.label_591
.label_591:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x65735546
	mov	qword ptr [rbp - 0x308], rax
	je	.label_593
	jmp	.label_603
.label_603:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x67596969
	mov	qword ptr [rbp - 0x310], rax
	je	.label_251
	jmp	.label_379
.label_379:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x68191122
	mov	qword ptr [rbp - 0x318], rax
	je	.label_309
	jmp	.label_265
.label_265:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x6b414653
	mov	qword ptr [rbp - 0x320], rax
	je	.label_267
	jmp	.label_275
.label_275:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x6e667364
	mov	qword ptr [rbp - 0x328], rax
	je	.label_278
	jmp	.label_287
.label_287:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x6e736673
	mov	qword ptr [rbp - 0x330], rax
	je	.label_289
	jmp	.label_296
.label_296:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x73636673
	mov	qword ptr [rbp - 0x338], rax
	je	.label_299
	jmp	.label_306
.label_306:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x73717368
	mov	qword ptr [rbp - 0x340], rax
	je	.label_308
	jmp	.label_318
.label_318:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x73727279
	mov	qword ptr [rbp - 0x348], rax
	je	.label_321
	jmp	.label_351
.label_351:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x73757245
	mov	qword ptr [rbp - 0x350], rax
	je	.label_331
	jmp	.label_338
.label_338:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x7461636f
	mov	qword ptr [rbp - 0x358], rax
	je	.label_340
	jmp	.label_572
.label_572:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x74726163
	mov	qword ptr [rbp - 0x360], rax
	je	.label_348
	jmp	.label_356
.label_356:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x794c7630
	mov	qword ptr [rbp - 0x368], rax
	je	.label_358
	jmp	.label_368
.label_368:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x7c7c6673
	mov	qword ptr [rbp - 0x370], rax
	je	.label_372
	jmp	.label_380
.label_380:
	mov	eax, 0x858458f6
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x378], rdx
	je	.label_382
	jmp	.label_392
.label_392:
	mov	eax, 0x9123683e
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x380], rdx
	je	.label_367
	jmp	.label_400
.label_400:
	mov	eax, 0x958458f6
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x388], rdx
	je	.label_403
	jmp	.label_410
.label_410:
	mov	eax, 0xa501fcf5
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x390], rdx
	je	.label_412
	jmp	.label_422
.label_422:
	mov	eax, 0xaad7aaea
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x398], rdx
	je	.label_423
	jmp	.label_430
.label_430:
	mov	eax, 0xabba1974
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3a0], rdx
	je	.label_274
	jmp	.label_444
.label_444:
	mov	eax, 0xbacbacbc
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3a8], rdx
	je	.label_448
	jmp	.label_455
.label_455:
	mov	eax, 0xbeefdead
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3b0], rdx
	je	.label_457
	jmp	.label_464
.label_464:
	mov	eax, 0xc97e8168
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3b8], rdx
	je	.label_260
	jmp	.label_475
.label_475:
	mov	eax, 0xcafe4a11
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3c0], rdx
	je	.label_479
	jmp	.label_596
.label_596:
	mov	eax, 0xde5e81e4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3c8], rdx
	je	.label_491
	jmp	.label_310
.label_310:
	mov	eax, 0xf2f52010
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3d0], rdx
	je	.label_324
	jmp	.label_509
.label_509:
	mov	eax, 0xf97cff8c
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3d8], rdx
	je	.label_512
	jmp	.label_522
.label_522:
	mov	eax, 0xf995e849
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3e0], rdx
	je	.label_524
	jmp	.label_511
.label_511:
	mov	eax, 0xfe534d42
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3e8], rdx
	je	.label_534
	jmp	.label_359
.label_359:
	mov	eax, 0xff534d42
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3f0], rdx
	je	.label_584
	jmp	.label_552
.label_583:
	movabs	rax, OFFSET FLAT:label_105
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_365:
	movabs	rax, OFFSET FLAT:label_494
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_367:
	movabs	rax, OFFSET FLAT:label_566
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_547:
	movabs	rax, OFFSET FLAT:label_123
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_573:
	movabs	rax, OFFSET FLAT:label_578
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_510:
	movabs	rax, OFFSET FLAT:label_585
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_313:
	movabs	rax, OFFSET FLAT:label_590
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_278:
	movabs	rax, OFFSET FLAT:label_598
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_565:
	movabs	rax, OFFSET FLAT:label_100
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_468:
	movabs	rax, OFFSET FLAT:label_256
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_543:
	movabs	rax, OFFSET FLAT:label_262
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_389:
	movabs	rax, OFFSET FLAT:label_269
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_309:
	movabs	rax, OFFSET FLAT:label_276
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_418:
	movabs	rax, OFFSET FLAT:label_283
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_295:
	movabs	rax, OFFSET FLAT:label_291
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_413:
	movabs	rax, OFFSET FLAT:label_297
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_311:
	movabs	rax, OFFSET FLAT:label_119
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_421:
	movabs	rax, OFFSET FLAT:label_312
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_491:
	movabs	rax, OFFSET FLAT:label_319
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_427:
	movabs	rax, OFFSET FLAT:label_327
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_409:
	movabs	rax, OFFSET FLAT:label_333
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_431:
	movabs	rax, OFFSET FLAT:label_339
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_496:
	movabs	rax, OFFSET FLAT:label_345
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_558:
	movabs	rax, OFFSET FLAT:label_350
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_384:
	movabs	rax, OFFSET FLAT:label_537
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_396:
	movabs	rax, OFFSET FLAT:label_366
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_259:
	movabs	rax, OFFSET FLAT:label_375
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_423:
	movabs	rax, OFFSET FLAT:label_383
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_273:
	movabs	rax, OFFSET FLAT:label_390
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_303:
	movabs	rax, OFFSET FLAT:label_439
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_482:
	movabs	rax, OFFSET FLAT:label_399
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_294:
	movabs	rax, OFFSET FLAT:label_406
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_520:
	movabs	rax, OFFSET FLAT:label_499
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_405:
	movabs	rax, OFFSET FLAT:label_417
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_442:
	movabs	rax, OFFSET FLAT:label_424
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_331:
	movabs	rax, OFFSET FLAT:label_429
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_268:
	movabs	rax, OFFSET FLAT:label_438
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_579:
	movabs	rax, OFFSET FLAT:label_447
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_589:
	movabs	rax, OFFSET FLAT:label_117
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_488:
	movabs	rax, OFFSET FLAT:label_459
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_393:
	movabs	rax, OFFSET FLAT:label_424
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_600:
	movabs	rax, OFFSET FLAT:label_469
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_526:
	movabs	rax, OFFSET FLAT:label_478
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_517:
	movabs	rax, OFFSET FLAT:label_484
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
	.section	.text
	.align	32
	#Procedure 0x4072b0

	.globl dev_from_mount_options
	.type dev_from_mount_options, @function
dev_from_mount_options:
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4072c1
	.globl sub_4072c1
	.type sub_4072c1, @function
sub_4072c1:

	nop	word ptr cs:[rax + rax]
.label_610:
	jmp	.label_605
.label_605:
	mov	qword ptr [rbp - 8], -1
.label_608:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4072e7
	.globl sub_4072e7
	.type sub_4072e7, @function
sub_4072e7:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4072eb

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_609
	mov	rdi, qword ptr [rbp - 0x18]
	call	timegm
	mov	qword ptr [rbp - 8], rax
	jmp	.label_608
.label_609:
	mov	rdi, qword ptr [rbp - 0x10]
	call	set_tz
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_605
	mov	rdi, qword ptr [rbp - 0x18]
	call	mktime
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], -1
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_611
	lea	rdi, [rbp - 0x28]
	lea	rsi, [rbp - 0x68]
	call	localtime_r
	cmp	rax, 0
	je	.label_606
	lea	rsi, [rbp - 0x68]
	mov	rdi, qword ptr [rbp - 0x18]
	call	equal_tm
	cmp	eax, 0
	je	.label_606
.label_611:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	save_abbr
	test	al, 1
	jne	.label_606
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_606:
	mov	rdi, qword ptr [rbp - 0x20]
	call	revert_tz
	test	al, 1
	jne	.label_607
	jmp	.label_610
.label_607:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_608
	.section	.text
	.align	32
	#Procedure 0x4073c0
	.globl string_to_security_class
	.type string_to_security_class, @function
string_to_security_class:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	xor	ecx, ecx
	mov	dx, cx
	mov	dword ptr [rax], 0x5f
	movzx	eax, dx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4073e5
	.globl sub_4073e5
	.type sub_4073e5, @function
sub_4073e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4073f0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_custom
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40741f
	.globl sub_40741f
	.type sub_40741f, @function
sub_40741f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x407420

	.globl cdb_init
	.type cdb_init, @function
cdb_init:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi], 0xffffff9c
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407434
	.globl sub_407434
	.type sub_407434, @function
sub_407434:

	nop	word ptr cs:[rax + rax]
.label_612:
	call	tzset
	mov	byte ptr [rbp - 1], 1
.label_615:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
.label_613:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_614
.label_614:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	setenv_TZ
	cmp	eax, 0
	je	.label_612
	mov	byte ptr [rbp - 1], 0
	jmp	.label_615
	.section	.text
	.align	32
	#Procedure 0x407482

	.globl change_env
	.type change_env, @function
change_env:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdi + 8]
	cmp	eax, 0
	je	.label_613
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_614
.label_616:
	mov	rax,  qword ptr [word ptr [find_bind_mount.mount_list]]
	mov	qword ptr [rbp - 0xb0], rax
.label_625:
	cmp	qword ptr [rbp - 0xb0], 0
	je	.label_621
	mov	rax, qword ptr [rbp - 0xb0]
	mov	cl, byte ptr [rax + 0x28]
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_619
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_619
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rdi, qword ptr [rax + 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	strcmp
	cmp	eax, 0
	jne	.label_619
	lea	rsi, [rbp - 0x140]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rdi, qword ptr [rax]
	call	stat
	cmp	eax, 0
	jne	.label_618
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x138]
	jne	.label_618
	mov	rax, qword ptr [rbp - 0xa8]
	cmp	rax, qword ptr [rbp - 0x140]
	jne	.label_618
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_621
	.section	.text
	.align	32
	#Procedure 0x407573

	.globl find_bind_mount
	.type find_bind_mount, @function
find_bind_mount:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x150
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], 0
	test	byte ptr [byte ptr [find_bind_mount.tried_mount_list]],  1
	jne	.label_622
	xor	edi, edi
	call	read_file_system_list
	mov	qword ptr [word ptr [find_bind_mount.mount_list]],  rax
	cmp	rax, 0
	jne	.label_620
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_624
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x144], esi
	call	gettext
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_202
	mov	esi, dword ptr [rbp - 0x144]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_620:
	mov	byte ptr [byte ptr [find_bind_mount.tried_mount_list]],  1
.label_622:
	lea	rsi, [rbp - 0xa8]
	mov	rdi, qword ptr [rbp - 0x10]
	call	stat
	cmp	eax, 0
	je	.label_616
	mov	qword ptr [rbp - 8], 0
	jmp	.label_617
.label_621:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
.label_617:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x150
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40762c
	.globl sub_40762c
	.type sub_40762c, @function
sub_40762c:

	nop	dword ptr [rax]
.label_618:
	jmp	.label_619
.label_619:
	jmp	.label_623
.label_623:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_625
	.section	.text
	.align	32
	#Procedure 0x407650

	.globl xsum
	.type xsum, @function
xsum:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rsi, qword ptr [rbp - 8]
	jb	.label_626
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_627
.label_626:
	mov	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_627
.label_627:
	mov	rax, qword ptr [rbp - 0x20]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407699
	.globl sub_407699
	.type sub_407699, @function
sub_407699:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4076a0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	push	rbp
	mov	rbp, rsp
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	byte ptr [byte ptr [ignore_EPIPE]],  al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4076ba
	.globl sub_4076ba
	.type sub_4076ba, @function
sub_4076ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4076c0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_628
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_628:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4076ea
	.globl sub_4076ea
	.type sub_4076ea, @function
sub_4076ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4076f0

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], edi
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 0x30], rax
	cmp	dword ptr [rbp - 4], 0
	jge	.label_629
	call	abort
.label_629:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_635
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_636
	call	xalloc_die
.label_632:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_633:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	movsxd	rdx, ecx
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rdx
	call	xrealloc
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [word ptr [slotvec]],  rax
	test	byte ptr [rbp - 0x31], 1
	je	.label_631
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_634]]
	mov	qword ptr [rax + 8], rcx
.label_631:
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x30]
	movsxd	rcx,  dword ptr [dword ptr [nslots]]
	shl	rcx, 4
	add	rax, rcx
	mov	edx, dword ptr [rbp - 4]
	add	edx, 1
	sub	edx,  dword ptr [dword ptr [nslots]]
	movsxd	rcx, edx
	shl	rcx, 4
	mov	rdi, rax
	mov	rdx, rcx
	call	memset
	mov	esi, dword ptr [rbp - 4]
	add	esi, 1
	mov	dword ptr [dword ptr [nslots]],  esi
.label_635:
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	or	ecx, 1
	mov	dword ptr [rbp - 0x4c], ecx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x58]
	ja	.label_637
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_630
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_630:
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	movsxd	rdi, dword ptr [rbp - 4]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rdi + 8], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x68], rax
.label_637:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x6c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40794c
	.globl sub_40794c
	.type sub_40794c, @function
sub_40794c:

	nop	word ptr cs:[rax + rax]
.label_636:
	test	byte ptr [rbp - 0x31], 1
	je	.label_632
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_633
	.section	.text
	.align	32
	#Procedure 0x407970

	.globl getenv_quoting_style
	.type getenv_quoting_style, @function
getenv_quoting_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdi, OFFSET FLAT:label_641
	call	getenv
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	je	.label_639
	movabs	rsi, OFFSET FLAT:quoting_style_args
	movabs	rax, OFFSET FLAT:quoting_style_vals
	mov	ecx, 4
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, rax
	call	argmatch
	xor	r8d, r8d
	mov	r9d, eax
	mov	dword ptr [rbp - 0xc], r9d
	cmp	r8d, dword ptr [rbp - 0xc]
	jg	.label_643
	xor	eax, eax
	mov	edi, eax
	movsxd	rcx, dword ptr [rbp - 0xc]
	mov	esi,  dword ptr [dword ptr [+ (rcx * 4) + quoting_style_vals]]
	call	set_quoting_style
	jmp	.label_638
.label_639:
	xor	eax, eax
	mov	edi, eax
	mov	esi, 4
	call	set_quoting_style
.label_642:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4079fc
	.globl sub_4079fc
	.type sub_4079fc, @function
sub_4079fc:

	nop	dword ptr [rax]
.label_643:
	xor	eax, eax
	mov	edi, eax
	mov	esi, 4
	call	set_quoting_style
	movabs	rdi, OFFSET FLAT:label_640
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	call	quote
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_638:
	jmp	.label_642
	.section	.text
	.align	32
	#Procedure 0x407a40

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	dir_len
	mov	cl, 1
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0x29], cl
	je	.label_644
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	jmp	.label_644
.label_644:
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	edx, al
	mov	esi, edx
	add	rcx, rsi
	add	rcx, 1
	mov	rdi, rcx
	call	malloc
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_646
	mov	qword ptr [rbp - 8], 0
	jmp	.label_645
.label_646:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcpy
	test	byte ptr [rbp - 0x19], 1
	je	.label_647
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0x2e
.label_647:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_645:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407b06
	.globl sub_407b06
	.type sub_407b06, @function
sub_407b06:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b10

	.globl xstrdup
	.type xstrdup, @function
xstrdup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rax
	call	strlen
	add	rax, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	call	xmemdup
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407b46
	.globl sub_407b46
	.type sub_407b46, @function
sub_407b46:

	nop	word ptr cs:[rax + rax]
.label_653:
	test	byte ptr [rbp - 0x41], 1
	je	.label_648
	mov	qword ptr [rbp - 8], -2
	jmp	.label_649
.label_648:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_649:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407b79
	.globl sub_407b79
	.type sub_407b79, @function
sub_407b79:

	nop	word ptr cs:[rax + rax]
.label_654:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_655
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x40]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	imul	rdx, qword ptr [rbp - 0x30]
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdi, rax
	mov	rsi, rcx
	call	memcmp
	cmp	eax, 0
	je	.label_650
.label_655:
	mov	byte ptr [rbp - 0x41], 1
.label_650:
	jmp	.label_656
.label_656:
	jmp	.label_658
.label_658:
	jmp	.label_657
.label_657:
	jmp	.label_659
.label_659:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_651
.label_652:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_654
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_656
	.section	.text
	.align	32
	#Procedure 0x407c0a

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x40], -1
	mov	byte ptr [rbp - 0x41], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x30], 0
.label_651:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_653
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	call	strncmp
	cmp	eax, 0
	jne	.label_657
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_652
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_649
	.section	.text
	.align	32
	#Procedure 0x407ca0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_660
	call	gettext
	movabs	rsi, OFFSET FLAT:label_662
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_661
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_86
	movabs	rdx, OFFSET FLAT:label_84
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_663
	mov	dword ptr [rbp - 8], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407d26
	.globl sub_407d26
	.type sub_407d26, @function
sub_407d26:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407d30
	.globl getfscreatecon
	.type getfscreatecon, @function
getfscreatecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407d54
	.globl sub_407d54
	.type sub_407d54, @function
sub_407d54:

	nop	word ptr cs:[rax + rax]
.label_676:
	movabs	rdi, OFFSET FLAT:label_664
	movabs	rsi, OFFSET FLAT:label_665
	mov	edx, 0xa3
	movabs	rcx, OFFSET FLAT:label_666
	call	__assert_fail
.label_674:
	mov	eax, 0x1000
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	ja	.label_671
	jmp	.label_680
.label_685:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	rdi, rax
	call	find_non_slash
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_679
.label_667:
	movabs	rdi, OFFSET FLAT:label_690
	movabs	rsi, OFFSET FLAT:label_665
	mov	edx, 0x7e
	movabs	rcx, OFFSET FLAT:label_666
	call	__assert_fail
.label_680:
	movabs	rsi, OFFSET FLAT:label_684
	mov	rdi, qword ptr [rbp - 0x10]
	call	strspn
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 2
	jne	.label_692
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 3
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	add	rdx, 3
	sub	rcx, rdx
	mov	esi, 0x2f
	mov	rdi, rax
	mov	rdx, rcx
	call	memchr
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_686
	call	__errno_location
	mov	dword ptr [rax], 0x24
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_677
.label_678:
	lea	rdi, [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x10]
	call	cdb_advance_fd
	mov	dword ptr [rbp - 0x4c], eax
	mov	rsi, qword ptr [rbp - 0x58]
	mov	byte ptr [rsi], 0x2f
	cmp	dword ptr [rbp - 0x4c], 0
	je	.label_685
	jmp	.label_689
.label_691:
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	cmp	rax, 0x1000
	jge	.label_697
	jmp	.label_678
.label_692:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_673
	lea	rdi, [rbp - 0x30]
	movabs	rsi, OFFSET FLAT:label_684
	call	cdb_advance_fd
	cmp	eax, 0
	je	.label_688
	jmp	.label_689
	.section	.text
	.align	32
	#Procedure 0x407ec3

	.globl chdir_long
	.type chdir_long, @function
chdir_long:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	chdir
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_693
	call	__errno_location
	cmp	dword ptr [rax], 0x24
	je	.label_696
.label_693:
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_677
.label_686:
	lea	rdi, [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x48]
	mov	byte ptr [rax], 0
	mov	rsi, qword ptr [rbp - 0x10]
	call	cdb_advance_fd
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	byte ptr [rsi], 0x2f
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_675
	jmp	.label_689
.label_697:
	movabs	rdi, OFFSET FLAT:label_669
	movabs	rsi, OFFSET FLAT:label_665
	mov	edx, 0xb3
	movabs	rcx, OFFSET FLAT:label_666
	call	__assert_fail
.label_696:
	lea	rdi, [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x68], rdi
	mov	rdi, rax
	call	strlen
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x68]
	call	cdb_init
	xor	ecx, ecx
	mov	eax, ecx
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_667
	jmp	.label_674
.label_698:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x28]
	ja	.label_676
	jmp	.label_683
.label_689:
	call	__errno_location
	lea	rdi, [rbp - 0x30]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x5c], ecx
	call	cdb_free
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 0x6c], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 4], 0xffffffff
.label_677:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407fd9
	.globl sub_407fd9
	.type sub_407fd9, @function
sub_407fd9:

	nop	dword ptr [rax]
.label_671:
	movabs	rdi, OFFSET FLAT:label_694
	movabs	rsi, OFFSET FLAT:label_665
	mov	edx, 0x7f
	movabs	rcx, OFFSET FLAT:label_666
	call	__assert_fail
.label_681:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_670
	lea	rdi, [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x10]
	call	cdb_advance_fd
	cmp	eax, 0
	je	.label_682
	jmp	.label_689
.label_695:
	movabs	rdi, OFFSET FLAT:label_687
	movabs	rsi, OFFSET FLAT:label_665
	mov	edx, 0xa2
	movabs	rcx, OFFSET FLAT:label_666
	call	__assert_fail
.label_688:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_673:
	jmp	.label_668
.label_668:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	je	.label_695
	jmp	.label_698
.label_682:
	jmp	.label_670
.label_670:
	lea	rdi, [rbp - 0x30]
	call	cdb_fchdir
	cmp	eax, 0
	je	.label_672
	jmp	.label_689
.label_683:
	jmp	.label_679
.label_679:
	mov	eax, 0x1000
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	sub	rdx, rsi
	cmp	rcx, rdx
	jg	.label_681
	mov	esi, 0x2f
	mov	eax, 0x1000
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	memrchr
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	jne	.label_691
	call	__errno_location
	mov	dword ptr [rax], 0x24
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_677
.label_675:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	rdi, rax
	call	find_non_slash
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_668
.label_672:
	lea	rdi, [rbp - 0x30]
	call	cdb_free
	mov	dword ptr [rbp - 4], 0
	jmp	.label_677
	.section	.text
	.align	32
	#Procedure 0x408120
	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x70]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408132
	.globl sub_408132
	.type sub_408132, @function
sub_408132:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408140
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_699
	jmp	.label_701
.label_701:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_700
.label_699:
	mov	byte ptr [rbp - 1], 0
.label_700:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408172
	.globl sub_408172
	.type sub_408172, @function
sub_408172:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408180
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edx, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4081a8
	.globl sub_4081a8
	.type sub_4081a8, @function
sub_4081a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4081b0

	.globl version_etc
	.type version_etc, @function
version_etc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1a0
	test	al, al
	movaps	xmmword ptr [rbp - 0x100], xmm7
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	qword ptr [rbp - 0x178], rdi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	qword ptr [rbp - 0x1a0], rsi
	je	.label_702
	movaps	xmm0, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm7
.label_702:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rsi, qword ptr [rbp - 0x198]
	mov	rdi, qword ptr [rbp - 0x1a0]
	mov	r8, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 8], r8
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdx, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rbp - 0x38], rdx
	mov	dword ptr [rbp - 0x3c], 0x30
	mov	dword ptr [rbp - 0x40], 0x20
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	r8, [rbp - 0x40]
	call	version_etc_va
	add	rsp, 0x1a0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408314
	.globl sub_408314
	.type sub_408314, @function
sub_408314:

	nop	word ptr cs:[rax + rax]
.label_703:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40832a
	.globl sub_40832a
	.type sub_40832a, @function
sub_40832a:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40832c

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_703
	cmp	qword ptr [rbp - 8], 0
	je	.label_703
	call	xalloc_die
.label_705:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_704
.label_704:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40837e
	.globl sub_40837e
	.type sub_40837e, @function
sub_40837e:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408387

	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	esi, dword ptr [rbp - 0xc]
	cmp	qword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0x10], esi
	je	.label_705
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_704
	.section	.text
	.align	32
	#Procedure 0x4083b0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_style_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4083dd
	.globl sub_4083dd
	.type sub_4083dd, @function
sub_4083dd:

	nop	dword ptr [rax]
.label_707:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_706
.label_706:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4083fb
	.globl sub_4083fb
	.type sub_4083fb, @function
sub_4083fb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408400

	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_707
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_706
	.section	.text
	.align	32
	#Procedure 0x408420

	.globl timetostr
	.type timetostr, @function
timetostr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	imaxtostr
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408443
	.globl sub_408443
	.type sub_408443, @function
sub_408443:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408450
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x10], rax
	call	memset
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408481
	.globl sub_408481
	.type sub_408481, @function
sub_408481:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408490
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_708
	jmp	.label_710
.label_710:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_709
.label_708:
	mov	byte ptr [rbp - 1], 0
.label_709:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4084c2
	.globl sub_4084c2
	.type sub_4084c2, @function
sub_4084c2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4084d0

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	cmp	eax,  dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]]
	jg	.label_713
	mov	esi, 0x406
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	xor	edx, edx
	mov	dword ptr [rbp - 0xc], eax
	cmp	edx, dword ptr [rbp - 0xc]
	jle	.label_712
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_714
.label_712:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_716
.label_714:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	jl	.label_719
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_719:
	jmp	.label_716
.label_716:
	jmp	.label_715
.label_713:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
.label_715:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_717
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_717
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x10], eax
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_711
	mov	esi, 2
	mov	edi, dword ptr [rbp - 0xc]
	mov	eax, dword ptr [rbp - 0x10]
	or	eax, 1
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_718
.label_711:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
	mov	edi, dword ptr [rbp - 0xc]
	call	close
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x18], eax
	mov	dword ptr [rbp - 0x1c], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0xc], 0xffffffff
.label_718:
	jmp	.label_717
.label_717:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4085f5
	.globl sub_4085f5
	.type sub_4085f5, @function
sub_4085f5:

	nop	word ptr cs:[rax + rax]
.label_721:
	mov	rdi, qword ptr [rbp - 0x10]
	call	cdb_free
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rdi], eax
	mov	dword ptr [rbp - 4], 0
.label_720:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408622
	.globl sub_408622
	.type sub_408622, @function
sub_408622:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408631

	.globl cdb_advance_fd
	.type cdb_advance_fd, @function
cdb_advance_fd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	edx, 0x10900
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	al, 0
	call	openat
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_721
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_720
	.section	.text
	.align	32
	#Procedure 0x408670

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	mdir_name
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_722
	call	xalloc_die
.label_722:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4086a3
	.globl sub_4086a3
	.type sub_4086a3, @function
sub_4086a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4086b0

	.globl tzfree
	.type tzfree, @function
tzfree:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	rdi,  qword ptr [word ptr [local_tz]]
	je	.label_723
	jmp	.label_725
.label_725:
	cmp	qword ptr [rbp - 8], 0
	je	.label_724
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_725
.label_724:
	jmp	.label_723
.label_723:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40870d
	.globl sub_40870d
	.type sub_40870d, @function
sub_40870d:

	nop	dword ptr [rax]
.label_728:
	jmp	.label_726
.label_726:
	mov	qword ptr [rbp - 8], 0
.label_730:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408727
	.globl sub_408727
	.type sub_408727, @function
sub_408727:

	nop	word ptr [rax + rax]
.label_731:
	mov	rdi, qword ptr [rbp - 0x10]
	call	set_tz
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_726
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	localtime_r
	xor	ecx, ecx
	mov	dl, cl
	cmp	rax, 0
	mov	byte ptr [rbp - 0x2a], dl
	je	.label_729
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	save_abbr
	mov	byte ptr [rbp - 0x2a], al
.label_729:
	mov	al, byte ptr [rbp - 0x2a]
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	mov	rdi, qword ptr [rbp - 0x28]
	call	revert_tz
	test	al, 1
	jne	.label_727
	jmp	.label_728
.label_727:
	test	byte ptr [rbp - 0x29], 1
	je	.label_728
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_730
	.section	.text
	.align	32
	#Procedure 0x4087ab

	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_731
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	gmtime_r
	mov	qword ptr [rbp - 8], rax
	jmp	.label_730
	.section	.text
	.align	32
	#Procedure 0x4087e0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_732
	jmp	.label_734
.label_734:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_732
	jmp	.label_733
.label_733:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_735
	jmp	.label_732
.label_732:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_736
.label_735:
	mov	byte ptr [rbp - 1], 0
.label_736:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408845
	.globl sub_408845
	.type sub_408845, @function
sub_408845:

	nop	word ptr cs:[rax + rax]
.label_738:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_739:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40885b
	.globl sub_40885b
	.type sub_40885b, @function
sub_40885b:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408864

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_738
	jmp	.label_737
.label_737:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_739
.label_757:
	movabs	rdi, OFFSET FLAT:label_749
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_753
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:label_746
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_756
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_747
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_758
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_748
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_740
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_750
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_741
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_751
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_743
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_752
	mov	dword ptr [rbp - 0x44], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:fmt_terse_regular
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_754
	mov	dword ptr [rbp - 0x48], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:fmt_terse_fs
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_755
	mov	dword ptr [rbp - 0x4c], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_160
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_160
	mov	dword ptr [rbp - 0x50], eax
	call	emit_ancillary_info
.label_742:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x408ab8
	.globl sub_408ab8
	.type sub_408ab8, @function
sub_408ab8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408abd

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_757
	jmp	.label_744
.label_744:
	movabs	rdi, OFFSET FLAT:label_745
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_742
.label_762:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_759
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_634]],  rax
.label_759:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_761
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_761:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408b96
	.globl sub_408b96
	.type sub_408b96, @function
sub_408b96:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ba2
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_760:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_762
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_760
.label_770:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0xc000
	jne	.label_767
	mov	byte ptr [rbp - 1], 0x73
	jmp	.label_763
.label_769:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x6000
	jne	.label_766
	mov	byte ptr [rbp - 1], 0x62
	jmp	.label_763
.label_768:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_765
	mov	byte ptr [rbp - 1], 0x6c
	jmp	.label_763
	.section	.text
	.align	32
	#Procedure 0x408c44

	.globl ftypelet
	.type ftypelet, @function
ftypelet:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	edi, dword ptr [rbp - 8]
	and	edi, 0xf000
	cmp	edi, 0x8000
	jne	.label_764
	mov	byte ptr [rbp - 1], 0x2d
	jmp	.label_763
.label_764:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_769
	mov	byte ptr [rbp - 1], 0x64
	jmp	.label_763
.label_767:
	mov	byte ptr [rbp - 1], 0x3f
.label_763:
	movsx	eax, byte ptr [rbp - 1]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408c8f
	.globl sub_408c8f
	.type sub_408c8f, @function
sub_408c8f:

	nop	word ptr [rax + rax]
.label_765:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x1000
	jne	.label_770
	mov	byte ptr [rbp - 1], 0x70
	jmp	.label_763
.label_766:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x2000
	jne	.label_768
	mov	byte ptr [rbp - 1], 0x63
	jmp	.label_763
	.section	.text
	.align	32
	#Procedure 0x408cd0

	.globl neg_to_zero
	.type neg_to_zero, @function
neg_to_zero:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	rcx, qword ptr [rbp - 0x18]
	jg	.label_771
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_772
.label_771:
	xor	esi, esi
	mov	eax, 0x10
	mov	edx, eax
	lea	rcx, [rbp - 0x30]
	mov	rdi, rcx
	call	memset
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rcx
.label_772:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408d36
	.globl sub_408d36
	.type sub_408d36, @function
sub_408d36:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408d40

	.globl out_uint_o
	.type out_uint_o, @function
out_uint_o:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, OFFSET FLAT:label_773
	movabs	rcx, OFFSET FLAT:label_774
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, rax
	call	make_format
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x1c], eax
	add	rsp, 0x20
	pop	rbp
	ret	
.label_776:
	mov	qword ptr [rbp - 8], 0
.label_775:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408da2
	.globl sub_408da2
	.type sub_408da2, @function
sub_408da2:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408da9
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], 0
.label_779:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_776
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x30]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_778
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_775
.label_778:
	jmp	.label_777
.label_777:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_779
	.section	.text
	.align	32
	#Procedure 0x408e30
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_780
	jmp	.label_781
.label_781:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_782
.label_780:
	mov	byte ptr [rbp - 1], 0
.label_782:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408e5f
	.globl sub_408e5f
	.type sub_408e5f, @function
sub_408e5f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x408e60
	.globl security_check_context
	.type security_check_context, @function
security_check_context:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408e84
	.globl sub_408e84
	.type sub_408e84, @function
sub_408e84:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408e90

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	call	xmalloc
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x18], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408ec7
	.globl sub_408ec7
	.type sub_408ec7, @function
sub_408ec7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ed0
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408ee0

	.globl human_access
	.type human_access, @function
human_access:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rsi, OFFSET FLAT:human_access.modebuf
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	filemodestring
	movabs	rax, OFFSET FLAT:human_access.modebuf
	mov	byte ptr [byte ptr [label_783]],  0
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408f17
	.globl sub_408f17
	.type sub_408f17, @function
sub_408f17:

	nop	word ptr [rax + rax]
.label_785:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_784
.label_784:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, 0x38
	mov	esi, ecx
	mov	rdi, rax
	call	xmemdup
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x24], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408f64
	.globl sub_408f64
	.type sub_408f64, @function
sub_408f64:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408f72
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], ecx
	cmp	qword ptr [rbp - 8], 0
	je	.label_785
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_784
	.section	.text
	.align	32
	#Procedure 0x408fa0

	.globl nstrftime
	.type nstrftime, @function
nstrftime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	xor	eax, eax
	mov	r10d, 0xffffffff
	lea	r11, [rbp - 0x2d]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	dword ptr [rbp - 0x2c], r9d
	mov	byte ptr [rbp - 0x2d], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9d, dword ptr [rbp - 0x2c]
	mov	qword ptr [rbp - 0x38], r8
	mov	r8d, eax
	mov	dword ptr [rbp - 0x3c], r9d
	mov	r9d, eax
	mov	dword ptr [rsp], 0xffffffff
	mov	qword ptr [rsp + 8], r11
	mov	r11, qword ptr [rbp - 0x38]
	mov	qword ptr [rsp + 0x10], r11
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rsp + 0x18], eax
	mov	dword ptr [rbp - 0x40], r10d
	call	__strftime_internal
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409021
	.globl sub_409021
	.type sub_409021, @function
sub_409021:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409030

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_786
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409060
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_787
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_787:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0x10], ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 4], ecx
	mov	eax, dword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40909d
	.globl sub_40909d
	.type sub_40909d, @function
sub_40909d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4090a0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 1
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	x2nrealloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4090ca
	.globl sub_4090ca
	.type sub_4090ca, @function
sub_4090ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4090d0
	.globl quotearg
	.type quotearg, @function
quotearg:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quotearg_n
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4090ef
	.globl sub_4090ef
	.type sub_4090ef, @function
sub_4090ef:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4090f0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	esi, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	quotearg_char
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409110

	.globl out_uint_x
	.type out_uint_x, @function
out_uint_x:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, OFFSET FLAT:label_773
	movabs	rcx, OFFSET FLAT:label_788
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, rax
	call	make_format
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x1c], eax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409160
	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rax, [rbp - 0x80]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rax, [rbp - 0x48]
	mov	esi, 0x3a
	mov	edx, 1
	mov	ecx, 0x38
	mov	edi, ecx
	lea	r8, [rbp - 0x80]
	mov	r9, rax
	mov	qword ptr [rbp - 0x88], rdi
	mov	rdi, r9
	mov	dword ptr [rbp - 0x8c], esi
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x90], edx
	mov	rdx, r8
	mov	qword ptr [rbp - 0x98], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x98]
	mov	esi, dword ptr [rbp - 0x8c]
	mov	edx, dword ptr [rbp - 0x90]
	call	set_char_quoting
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x9c], eax
	call	quotearg_n_options
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40920d
	.globl sub_40920d
	.type sub_40920d, @function
sub_40920d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409210
	.globl setfscreatecon
	.type setfscreatecon, @function
setfscreatecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409234
	.globl sub_409234
	.type sub_409234, @function
sub_409234:

	nop	word ptr cs:[rax + rax]
.label_790:
	mov	byte ptr [rbp - 1], 0
.label_791:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40924e
	.globl sub_40924e
	.type sub_40924e, @function
sub_40924e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40925c
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_790
	jmp	.label_789
.label_789:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_791
	.section	.text
	.align	32
	#Procedure 0x409280

	.globl free_mount_entry
	.type free_mount_entry, @function
free_mount_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x10]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	al, byte ptr [rdi + 0x28]
	shr	al, 2
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	je	.label_792
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x18]
	call	free
.label_792:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4092e9
	.globl sub_4092e9
	.type sub_4092e9, @function
sub_4092e9:

	nop	dword ptr [rax]
.label_794:
	mov	byte ptr [rbp - 1], 0
.label_795:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4092fe
	.globl sub_4092fe
	.type sub_4092fe, @function
sub_4092fe:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40930c
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_794
	jmp	.label_793
.label_793:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_795
	.section	.text
	.align	32
	#Procedure 0x409330
	.globl lsetfilecon
	.type lsetfilecon, @function
lsetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409358
	.globl sub_409358
	.type sub_409358, @function
sub_409358:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409360

	.globl strmode
	.type strmode, @function
strmode:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	call	ftypelet
	mov	edi, 0x2d
	mov	ecx, 0x77
	mov	edx, 0x72
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi], al
	mov	r8d, dword ptr [rbp - 4]
	and	r8d, 0x100
	cmp	r8d, 0
	mov	r8d, edi
	cmovne	r8d, edx
	mov	al, r8b
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi + 1], al
	mov	edx, dword ptr [rbp - 4]
	and	edx, 0x80
	cmp	edx, 0
	cmovne	edi, ecx
	mov	al, dil
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi + 2], al
	mov	ecx, dword ptr [rbp - 4]
	and	ecx, 0x800
	cmp	ecx, 0
	je	.label_799
	mov	eax, 0x53
	mov	ecx, 0x73
	mov	edx, dword ptr [rbp - 4]
	and	edx, 0x40
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_798
.label_799:
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 4]
	and	edx, 0x40
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x14], eax
.label_798:
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, 0x2d
	mov	edx, 0x77
	mov	esi, 0x72
	mov	dil, al
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 3], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 0x20
	cmp	eax, 0
	mov	eax, ecx
	cmovne	eax, esi
	mov	dil, al
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 4], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 0x10
	cmp	eax, 0
	cmovne	ecx, edx
	mov	dil, cl
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 5], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 0x400
	cmp	eax, 0
	je	.label_801
	mov	eax, 0x53
	mov	ecx, 0x73
	mov	edx, dword ptr [rbp - 4]
	and	edx, 8
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x18], eax
	jmp	.label_800
.label_797:
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 4]
	and	edx, 1
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x1c], eax
.label_796:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 9], cl
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 0xa], 0x20
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 0xb], 0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4094c5
	.globl sub_4094c5
	.type sub_4094c5, @function
sub_4094c5:

	nop	word ptr [rax + rax]
.label_801:
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 4]
	and	edx, 8
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x18], eax
.label_800:
	mov	eax, dword ptr [rbp - 0x18]
	mov	ecx, 0x2d
	mov	edx, 0x77
	mov	esi, 0x72
	mov	dil, al
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 6], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 4
	cmp	eax, 0
	mov	eax, ecx
	cmovne	eax, esi
	mov	dil, al
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 7], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 2
	cmp	eax, 0
	cmovne	ecx, edx
	mov	dil, cl
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 8], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 0x200
	cmp	eax, 0
	je	.label_797
	mov	eax, 0x54
	mov	ecx, 0x74
	mov	edx, dword ptr [rbp - 4]
	and	edx, 1
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_796
	.section	.text
	.align	32
	#Procedure 0x409560

	.globl xstrcat
	.type xstrcat, @function
xstrcat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	lea	rax, [rbp - 0x40]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x48], 0
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rsi + 0x10]
	mov	qword ptr [rax + 0x10], rdi
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rax], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x50], rax
.label_808:
	cmp	qword ptr [rbp - 0x50], 0
	jbe	.label_804
	lea	rax, [rbp - 0x40]
	mov	ecx, dword ptr [rbp - 0x40]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x78], rax
	mov	dword ptr [rbp - 0x7c], ecx
	ja	.label_805
	mov	eax, dword ptr [rbp - 0x7c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x78]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_810
.label_805:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x88], rdx
.label_810:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x60], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x90], rdi
	mov	rdi, rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rsi, rax
	call	xsum
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, -1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_808
.label_804:
	lea	rax, [rbp - 0x40]
	cmp	qword ptr [rbp - 0x48], -1
	mov	qword ptr [rbp - 0x98], rax
	je	.label_811
	cmp	qword ptr [rbp - 0x48], 0x7fffffff
	jbe	.label_803
.label_811:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	mov	qword ptr [rbp - 8], 0
	jmp	.label_807
.label_812:
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_807:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409695
	.globl sub_409695
	.type sub_409695, @function
sub_409695:

	nop	dword ptr [rax + rax]
.label_803:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x50], rax
.label_809:
	cmp	qword ptr [rbp - 0x50], 0
	jbe	.label_812
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0xa0], rax
	mov	dword ptr [rbp - 0xa4], ecx
	ja	.label_802
	mov	eax, dword ptr [rbp - 0xa4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0xa0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xb0], rcx
	jmp	.label_806
.label_802:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xb0], rdx
.label_806:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 0x68]
	call	strlen
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x70]
	call	memcpy
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, -1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_809
.label_815:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_813
.label_813:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, 1
	xor	esi, esi
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], edi
	mov	rax, qword ptr [rbp - 0x30]
	mov	edi, dword ptr [rax + 4]
	cmp	qword ptr [rbp - 0x20], 0
	cmovne	ecx, esi
	or	edi, ecx
	mov	dword ptr [rbp - 0x38], edi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [r8]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	r10, qword ptr [rbp - 0x30]
	add	r10, 8
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x28]
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rbx, qword ptr [rbx + 0x30]
	mov	rdi, rdx
	mov	rsi, rdx
	mov	rdx, rax
	mov	qword ptr [rsp], r10
	mov	qword ptr [rsp + 8], r11
	mov	qword ptr [rsp + 0x10], rbx
	call	quotearg_buffer_restyled
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	r8d, dword ptr [rbp - 0x34]
	mov	qword ptr [rbp - 0x58], rax
	mov	dword ptr [rbp - 0x5c], r8d
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x5c]
	mov	dword ptr [rax], r8d
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_814
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_814:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409893
	.globl sub_409893
	.type sub_409893, @function
sub_409893:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40989f

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_815
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_813
.label_829:
	mov	byte ptr [rbp - 0x9e], 1
	jmp	.label_902
.label_1936:
	lea	rax, [rbp - 0x6b8]
	mov	ecx, 0x38
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x878], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x878]
	call	mktime_z
	lea	rdx, [rbp - 0xe0]
	mov	qword ptr [rbp - 0x6c0], rax
	add	rdx, 0x17
	mov	qword ptr [rbp - 0xc0], rdx
	cmp	qword ptr [rbp - 0x6c0], 0
	setl	r8b
	and	r8b, 1
	mov	byte ptr [rbp - 0x9d], r8b
.label_1137:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x6c0]
	cqo	
	idiv	rcx
	mov	esi, edx
	mov	dword ptr [rbp - 0x6c4], esi
	mov	rdx, qword ptr [rbp - 0x6c0]
	mov	rax, rdx
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x6c0], rax
	test	byte ptr [rbp - 0x9d], 1
	je	.label_929
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x6c4]
	mov	dword ptr [rbp - 0x87c], eax
	jmp	.label_818
.label_1750:
	cmp	dword ptr [rbp - 0x730], 0
	je	.label_935
	jmp	.label_960
.label_900:
	jmp	.label_962
.label_962:
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 2
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x1c]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	edx, dword ptr [rcx + 0x18]
	add	edx, 7
	mov	dword ptr [rbp - 0x890], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x890]
	idiv	esi
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_867
.label_957:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x868], eax
.label_964:
	mov	eax, dword ptr [rbp - 0x868]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x670], rcx
	mov	rcx, qword ptr [rbp - 0x668]
	cmp	rcx, qword ptr [rbp - 0x670]
	jae	.label_989
	mov	rax, qword ptr [rbp - 0x670]
	mov	qword ptr [rbp - 0x870], rax
	jmp	.label_999
.label_1908:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_1004
	jmp	.label_845
.label_1036:
	mov	byte ptr [rbp - 0xe2], 1
	jmp	.label_844
.label_1907:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_1014
	jmp	.label_845
.label_1901:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, -1
	mov	qword ptr [rbp - 0x88], rax
.label_984:
	jmp	.label_845
.label_845:
	mov	dword ptr [rbp - 0x734], 1
.label_1117:
	mov	eax, 1
	sub	eax, dword ptr [rbp - 0x734]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x88]
	movsx	eax, byte ptr [rdx + rcx]
	cmp	eax, 0x25
	je	.label_1031
	jmp	.label_1083
.label_1083:
	mov	eax, dword ptr [rbp - 0x734]
	add	eax, 1
	mov	dword ptr [rbp - 0x734], eax
	jmp	.label_1117
.label_1909:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_824
	jmp	.label_845
.label_1055:
	jmp	.label_821
.label_887:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x658]
	call	memset
	mov	rdx, qword ptr [rbp - 0x658]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_898:
	jmp	.label_822
.label_822:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_884
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x640]
	call	memcpy_lowcase
	mov	qword ptr [rbp - 0x858], rax
	jmp	.label_907
.label_966:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1082
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_924
	mov	rax, qword ptr [rbp - 0x108]
	cmp	rax, qword ptr [rbp - 0x110]
	jae	.label_924
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x120], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1093
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1101
.label_1093:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x120]
	call	memset
	mov	rdx, qword ptr [rbp - 0x120]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1113
.label_1059:
	mov	rax, qword ptr [rbp - 0x620]
	mov	qword ptr [rbp - 0x840], rax
.label_1007:
	mov	rax, qword ptr [rbp - 0x840]
	mov	qword ptr [rbp - 0x630], rax
	mov	rax, qword ptr [rbp - 0x630]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1075
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_846
.label_906:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1141
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1096
	mov	rax, qword ptr [rbp - 0x600]
	cmp	rax, qword ptr [rbp - 0x608]
	jae	.label_1096
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x600]
	mov	qword ptr [rbp - 0x618], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_820
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1033
.label_820:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x618]
	call	memset
	mov	rdx, qword ptr [rbp - 0x618]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_848
.label_840:
	jmp	.label_857
.label_857:
	mov	dword ptr [rbp - 0x94], 4
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	rax, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rax + 0x14]
	add	edx, 0x76c
	mov	dword ptr [rbp - 0x9c], edx
	jmp	.label_830
.label_832:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_882
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0x80]
	sub	eax, dword ptr [rbp - 0x734]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x740]
	mov	rsi, rcx
	call	memcpy_uppcase
	mov	qword ptr [rbp - 0x930], rax
	jmp	.label_897
.label_1069:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1077
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_860
	mov	rax, qword ptr [rbp - 0x128]
	cmp	rax, qword ptr [rbp - 0x130]
	jae	.label_860
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x140], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_913
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_965
.label_913:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x140]
	call	memset
	mov	rdx, qword ptr [rbp - 0x140]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_933
.label_1158:
	cmp	dword ptr [rbp - 0x68], 0
	jne	.label_1155
	mov	dword ptr [rbp - 0x68], 0xc
.label_1155:
	jmp	.label_1156
.label_1156:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x88], rax
.label_1050:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_949
	mov	dword ptr [rbp - 0x8c], 0
	mov	dword ptr [rbp - 0x94], 0
	mov	byte ptr [rbp - 0xe1], 0
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	mov	byte ptr [rbp - 0xe2], al
	mov	byte ptr [rbp - 0xf1], 0
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x25
	je	.label_958
	jmp	.label_983
.label_983:
	mov	qword ptr [rbp - 0x108], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_985
	xor	eax, eax
	mov	dword ptr [rbp - 0x75c], eax
	jmp	.label_990
.label_958:
	jmp	.label_844
.label_844:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, rax
	inc	rcx
	mov	qword ptr [rbp - 0x88], rcx
	movsx	edx, byte ptr [rax + 1]
	mov	esi, edx
	sub	esi, 0x23
	mov	dword ptr [rbp - 0x76c], edx
	mov	dword ptr [rbp - 0x770], esi
	je	.label_997
	jmp	.label_1008
.label_1008:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x2b
	mov	dword ptr [rbp - 0x774], eax
	je	.label_1011
	jmp	.label_1020
.label_1020:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x778], eax
	je	.label_1011
	jmp	.label_1027
.label_1027:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x77c], eax
	je	.label_1011
	jmp	.label_1032
.label_1032:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x780], eax
	je	.label_1036
	jmp	.label_1043
.label_1043:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x5f
	mov	dword ptr [rbp - 0x784], eax
	jne	.label_1045
	jmp	.label_1011
.label_1011:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0x8c], ecx
	jmp	.label_844
.label_1051:
	mov	eax, 0xfffff894
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x14]
	sub	eax, dword ptr [rbp - 0x6f0]
	cmp	edx, eax
	jge	.label_1056
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x6fc]
	mov	dword ptr [rbp - 0x8c8], eax
	jmp	.label_1064
.label_1079:
	jmp	.label_1067
.label_1067:
	mov	dword ptr [rbp - 0x94], 1
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_867
.label_1939:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1079
	jmp	.label_845
.label_1098:
	jmp	.label_1086
.label_1086:
	mov	dword ptr [rbp - 0x94], 2
	mov	eax, dword ptr [rbp - 0x68]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_867
.label_1143:
	jmp	.label_1092
.label_1092:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_1021
.label_1081:
	jmp	.label_1102
.label_1102:
	mov	dword ptr [rbp - 0x94], 3
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x1c], -1
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	rax, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rax + 0x1c]
	add	edx, 1
	mov	dword ptr [rbp - 0x9c], edx
	jmp	.label_823
.label_858:
	xor	eax, eax
	mov	ecx, 0x2b
	mov	dl, byte ptr [rbp - 0x9e]
	test	dl, 1
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x804], eax
.label_865:
	mov	eax, dword ptr [rbp - 0x804]
	mov	cl, al
	mov	byte ptr [rbp - 0xb1], cl
	cmp	dword ptr [rbp - 0x8c], 0x2d
	jne	.label_1129
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_968
	jmp	.label_1142
.label_1142:
	mov	qword ptr [rbp - 0x5b8], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1124
	xor	eax, eax
	mov	dword ptr [rbp - 0x808], eax
	jmp	.label_1152
.label_1119:
	jmp	.label_819
.label_819:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x10], -1
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	rax, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rax + 0x10]
	add	edx, 1
	mov	dword ptr [rbp - 0x9c], edx
	jmp	.label_823
.label_1031:
	jmp	.label_843
.label_843:
	movsxd	rax, dword ptr [rbp - 0x734]
	mov	qword ptr [rbp - 0x740], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_963
	xor	eax, eax
	mov	dword ptr [rbp - 0x914], eax
	jmp	.label_855
.label_1033:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x618]
	call	memset
	mov	rdx, qword ptr [rbp - 0x618]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_848:
	jmp	.label_1096
.label_1096:
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x600]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
.label_1141:
	mov	rax, qword ptr [rbp - 0x610]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_953
.label_953:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1144
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	movsxd	rdx, dword ptr [rbp - 0x5d4]
	call	memset
	mov	esi, dword ptr [rbp - 0x5d4]
	mov	rdx, qword ptr [rbp - 0x80]
	movsxd	rdi, esi
	add	rdx, rdi
	mov	qword ptr [rbp - 0x80], rdx
.label_1144:
	movsxd	rax, dword ptr [rbp - 0x5d4]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	dword ptr [rbp - 0x4c], 0
.label_944:
	jmp	.label_879
.label_1101:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x120]
	call	memset
	mov	rdx, qword ptr [rbp - 0x120]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1113:
	jmp	.label_924
.label_924:
	mov	rax, qword ptr [rbp - 0x88]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], cl
	mov	rax, qword ptr [rbp - 0x108]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_1082:
	mov	rax, qword ptr [rbp - 0x118]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_939
.label_1129:
	lea	rax, [rbp - 0xe0]
	movsxd	rcx, dword ptr [rbp - 0x94]
	add	rax, 0x17
	mov	rdx, qword ptr [rbp - 0xc0]
	sub	rax, rdx
	sub	rcx, rax
	cmp	byte ptr [rbp - 0xb1], 0
	setne	sil
	xor	sil, 0xff
	xor	sil, 0xff
	and	sil, 1
	movzx	edi, sil
	movsxd	rax, edi
	sub	rcx, rax
	mov	edi, ecx
	mov	dword ptr [rbp - 0x5d4], edi
	cmp	dword ptr [rbp - 0x5d4], 0
	jle	.label_876
	cmp	dword ptr [rbp - 0x8c], 0x5f
	jne	.label_1039
	movsxd	rax, dword ptr [rbp - 0x5d4]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1114
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_846
.label_997:
	mov	byte ptr [rbp - 0xf1], 1
	jmp	.label_844
.label_1118:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x834], eax
.label_1105:
	mov	eax, dword ptr [rbp - 0x834]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x628], rcx
	mov	rcx, qword ptr [rbp - 0x620]
	cmp	rcx, qword ptr [rbp - 0x628]
	jae	.label_1059
	mov	rax, qword ptr [rbp - 0x628]
	mov	qword ptr [rbp - 0x840], rax
	jmp	.label_1007
.label_824:
	mov	eax, 0xffffff9c
	mov	ecx, 0x12c
	mov	rdx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rdx + 0x14]
	mov	rdx, qword ptr [rbp - 0x40]
	cmp	dword ptr [rdx + 0x14], 0
	cmovl	eax, ecx
	add	esi, eax
	mov	dword ptr [rbp - 0x6ec], esi
	mov	dword ptr [rbp - 0x6f0], 0
	mov	rdx, qword ptr [rbp - 0x40]
	mov	edi, dword ptr [rdx + 0x1c]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rdx + 0x18]
	call	iso_week_days
	mov	dword ptr [rbp - 0x6f4], eax
	cmp	dword ptr [rbp - 0x6f4], 0
	jge	.label_1073
	xor	eax, eax
	mov	cl, al
	mov	eax, 4
	mov	dword ptr [rbp - 0x6f0], 0xffffffff
	mov	rdx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rdx + 0x1c]
	mov	edi, dword ptr [rbp - 0x6ec]
	sub	edi, 1
	mov	dword ptr [rbp - 0x894], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0x894]
	idiv	edi
	cmp	edx, 0
	mov	dword ptr [rbp - 0x898], esi
	mov	byte ptr [rbp - 0x899], cl
	jne	.label_1042
	mov	al, 1
	mov	ecx, 0x64
	mov	edx, dword ptr [rbp - 0x6ec]
	sub	edx, 1
	mov	byte ptr [rbp - 0x89a], al
	mov	eax, edx
	cdq	
	idiv	ecx
	cmp	edx, 0
	mov	sil, byte ptr [rbp - 0x89a]
	mov	byte ptr [rbp - 0x89b], sil
	jne	.label_1061
	mov	eax, 0x190
	mov	ecx, dword ptr [rbp - 0x6ec]
	sub	ecx, 1
	mov	dword ptr [rbp - 0x8a0], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x8a0]
	idiv	ecx
	cmp	edx, 0
	sete	sil
	mov	byte ptr [rbp - 0x89b], sil
.label_1061:
	mov	al, byte ptr [rbp - 0x89b]
	mov	byte ptr [rbp - 0x899], al
.label_1042:
	mov	al, byte ptr [rbp - 0x899]
	and	al, 1
	movzx	ecx, al
	add	ecx, 0x16d
	mov	edx, dword ptr [rbp - 0x898]
	add	edx, ecx
	mov	rsi, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rsi + 0x18]
	mov	edi, edx
	call	iso_week_days
	mov	dword ptr [rbp - 0x6f4], eax
	jmp	.label_881
.label_1904:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_1107
	jmp	.label_845
.label_892:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x640]
	call	memcpy
.label_1150:
	jmp	.label_907
.label_907:
	mov	rax, qword ptr [rbp - 0x640]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_1018:
	mov	rax, qword ptr [rbp - 0x650]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_880
.label_1913:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1053
	jmp	.label_845
.label_1942:
	mov	qword ptr [rbp - 0xf0], 0
.label_1126:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x20], 0
	jge	.label_1146
	jmp	.label_880
.label_1001:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1151
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_817
	mov	rax, qword ptr [rbp - 0x708]
	cmp	rax, qword ptr [rbp - 0x710]
	jae	.label_817
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x708]
	mov	qword ptr [rbp - 0x720], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_970
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_940
.label_970:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x720]
	call	memset
	mov	rdx, qword ptr [rbp - 0x720]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_862
.label_1903:
	mov	qword ptr [rbp - 0xf0], 1
.label_1147:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x3a
	jne	.label_872
	jmp	.label_883
.label_883:
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, 1
	mov	qword ptr [rbp - 0xf0], rax
	jmp	.label_1147
.label_851:
	jmp	.label_821
.label_1915:
	movabs	rax, OFFSET FLAT:label_893
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_894
.label_1918:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_900
	jmp	.label_845
.label_1046:
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rbp - 0x7c0], rax
.label_1066:
	mov	rax, qword ptr [rbp - 0x7c0]
	mov	qword ptr [rbp - 0x160], rax
	mov	rax, qword ptr [rbp - 0x160]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_916
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_846
.label_894:
	mov	dword ptr [rbp - 0xfc], 0xffffffff
.label_1154:
	xor	eax, eax
	mov	edi, eax
	mov	rsi, -1
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	r8b, byte ptr [rbp - 0xe2]
	mov	r9d, dword ptr [rbp - 0x8c]
	mov	eax, dword ptr [rbp - 0xfc]
	mov	r10, qword ptr [rbp - 0x58]
	mov	r11, qword ptr [rbp - 0x60]
	mov	ebx, dword ptr [rbp - 0x64]
	and	r8b, 1
	movzx	r8d, r8b
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	mov	dword ptr [rsp + 0x18], ebx
	call	__strftime_internal
	mov	qword ptr [rbp - 0x148], rax
	mov	rax, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x150], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_952
	xor	eax, eax
	mov	dword ptr [rbp - 0x7b4], eax
	jmp	.label_992
.label_1902:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_967
	jmp	.label_845
.label_816:
	mov	rax, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x7b0], rax
.label_834:
	mov	rax, qword ptr [rbp - 0x7b0]
	mov	qword ptr [rbp - 0x138], rax
	mov	rax, qword ptr [rbp - 0x138]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1069
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_846
.label_888:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x844], eax
.label_937:
	mov	eax, dword ptr [rbp - 0x844]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x648], rcx
	mov	rcx, qword ptr [rbp - 0x640]
	cmp	rcx, qword ptr [rbp - 0x648]
	jae	.label_1000
	mov	rax, qword ptr [rbp - 0x648]
	mov	qword ptr [rbp - 0x850], rax
	jmp	.label_930
.label_1917:
	movabs	rax, OFFSET FLAT:label_1019
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_894
.label_1906:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1024
	jmp	.label_821
.label_878:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5a8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5a8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_903:
	jmp	.label_871
.label_871:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_1044
	lea	rax, [rbp - 0x580]
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x590]
	mov	rsi, rax
	call	memcpy_lowcase
	mov	qword ptr [rbp - 0x7e8], rax
	jmp	.label_918
.label_993:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1058
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_831
	mov	rax, qword ptr [rbp - 0x740]
	cmp	rax, qword ptr [rbp - 0x748]
	jae	.label_831
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x740]
	mov	qword ptr [rbp - 0x758], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1068
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1080
.label_1068:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x758]
	call	memset
	mov	rdx, qword ptr [rbp - 0x758]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1103
.label_876:
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_991
	jmp	.label_838
.label_838:
	mov	qword ptr [rbp - 0x620], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1118
	xor	eax, eax
	mov	dword ptr [rbp - 0x834], eax
	jmp	.label_1105
.label_904:
	mov	eax, 0x64
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x14]
	mov	dword ptr [rbp - 0x8d8], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x8d8]
	idiv	esi
	mov	dword ptr [rbp - 0x700], edx
	cmp	dword ptr [rbp - 0x700], 0
	jge	.label_1112
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	jge	.label_1125
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x700]
	mov	dword ptr [rbp - 0x8dc], eax
	jmp	.label_1133
.label_1749:
	jmp	.label_960
.label_960:
	jmp	.label_1140
.label_1140:
	mov	dword ptr [rbp - 0x94], 9
	mov	dword ptr [rbp - 0xa4], 0x14
	imul	eax, dword ptr [rbp - 0x728], 0x2710
	imul	ecx, dword ptr [rbp - 0x72c], 0x64
	add	eax, ecx
	add	eax, dword ptr [rbp - 0x730]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_829
.label_1030:
	mov	rax, qword ptr [rbp - 0x5e0]
	mov	qword ptr [rbp - 0x820], rax
.label_1104:
	mov	rax, qword ptr [rbp - 0x820]
	mov	qword ptr [rbp - 0x5f0], rax
	mov	rax, qword ptr [rbp - 0x5f0]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_835
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_846
.label_1919:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_854
	jmp	.label_845
.label_853:
	jmp	.label_864
.label_864:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_867
.label_1065:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5f8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5f8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_896:
	jmp	.label_837
.label_837:
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x5e0]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
.label_1074:
	mov	rax, qword ptr [rbp - 0x5f0]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_946
.label_946:
	jmp	.label_944
.label_1941:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_904
	jmp	.label_821
.label_979:
	lea	rax, [rbp - 0x580]
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x590]
	mov	rsi, rax
	call	memcpy
.label_994:
	jmp	.label_918
.label_918:
	mov	rax, qword ptr [rbp - 0x590]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_868:
	mov	rax, qword ptr [rbp - 0x5a0]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_922
.label_922:
	jmp	.label_880
.label_1070:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_1110
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x708]
	call	memcpy_uppcase
	mov	qword ptr [rbp - 0x8f8], rax
	jmp	.label_869
.label_1063:
	jmp	.label_821
.label_1057:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x8e0], eax
.label_931:
	mov	eax, dword ptr [rbp - 0x8e0]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x710], rcx
	mov	rcx, qword ptr [rbp - 0x708]
	cmp	rcx, qword ptr [rbp - 0x710]
	jae	.label_1003
	mov	rax, qword ptr [rbp - 0x710]
	mov	qword ptr [rbp - 0x8e8], rax
	jmp	.label_1071
.label_1910:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_971
	jmp	.label_845
.label_1044:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_979
	lea	rax, [rbp - 0x580]
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x590]
	mov	rsi, rax
	call	memcpy_uppcase
	mov	qword ptr [rbp - 0x7f0], rax
	jmp	.label_994
.label_1087:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x7d4], eax
.label_1094:
	mov	eax, dword ptr [rbp - 0x7d4]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x598], rcx
	mov	rcx, qword ptr [rbp - 0x590]
	cmp	rcx, qword ptr [rbp - 0x598]
	jae	.label_998
	mov	rax, qword ptr [rbp - 0x598]
	mov	qword ptr [rbp - 0x7e0], rax
	jmp	.label_1009
.label_1099:
	mov	dword ptr [rbp - 0x90], 0
.label_1108:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0xf8], ecx
	mov	ecx, dword ptr [rbp - 0xf8]
	mov	eax, ecx
	mov	rdx, rax
	sub	rdx, 0x7a
	mov	qword ptr [rbp - 0x798], rax
	mov	qword ptr [rbp - 0x7a0], rdx
	ja	.label_984
	mov	rax, qword ptr [rbp - 0x798]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1035]]
	jmp	rcx
.label_949:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1041
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1041
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], 0
.label_1041:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x20], rax
.label_846:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x938
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aac9
	.globl sub_40aac9
	.type sub_40aac9, @function
sub_40aac9:

	nop	
.label_1925:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_1055
	jmp	.label_845
.label_1938:
	jmp	.label_1060
.label_1060:
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 1
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x18]
	sub	edx, 1
	add	edx, 7
	mov	dword ptr [rbp - 0x88c], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x88c]
	idiv	esi
	add	edx, 1
	mov	dword ptr [rbp - 0x98], edx
	jmp	.label_867
.label_1928:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1081
	jmp	.label_845
.label_1125:
	mov	eax, dword ptr [rbp - 0x700]
	add	eax, 0x64
	mov	dword ptr [rbp - 0x8dc], eax
.label_1133:
	mov	eax, dword ptr [rbp - 0x8dc]
	mov	dword ptr [rbp - 0x700], eax
.label_1112:
	jmp	.label_1127
.label_1127:
	mov	dword ptr [rbp - 0x94], 2
	mov	byte ptr [rbp - 0x9d], 0
	mov	eax, dword ptr [rbp - 0x700]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_830
.label_989:
	mov	rax, qword ptr [rbp - 0x668]
	mov	qword ptr [rbp - 0x870], rax
.label_999:
	mov	rax, qword ptr [rbp - 0x870]
	mov	qword ptr [rbp - 0x678], rax
	mov	rax, qword ptr [rbp - 0x678]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_908
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_846
.label_1124:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x808], eax
.label_1152:
	mov	eax, dword ptr [rbp - 0x808]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x5c0], rcx
	mov	rcx, qword ptr [rbp - 0x5b8]
	cmp	rcx, qword ptr [rbp - 0x5c0]
	jae	.label_1023
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rbp - 0x810], rax
	jmp	.label_942
.label_1107:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_1149
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_1149:
	jmp	.label_821
.label_981:
	jmp	.label_826
.label_826:
	mov	dword ptr [rbp - 0x94], 3
	mov	dword ptr [rbp - 0xa4], 0
	mov	eax, dword ptr [rbp - 0x728]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_829
.label_1926:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_841
	jmp	.label_845
.label_929:
	mov	eax, dword ptr [rbp - 0x6c4]
	mov	dword ptr [rbp - 0x87c], eax
.label_818:
	mov	eax, dword ptr [rbp - 0x87c]
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [rbp - 0xc0], rsi
	mov	byte ptr [rdx - 1], cl
	cmp	qword ptr [rbp - 0x6c0], 0
	jne	.label_1137
	mov	dword ptr [rbp - 0x94], 1
	mov	byte ptr [rbp - 0x9e], 0
	jmp	.label_873
.label_965:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x140]
	call	memset
	mov	rdx, qword ptr [rbp - 0x140]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_933:
	jmp	.label_860
.label_860:
	mov	rax, qword ptr [rbp - 0x88]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], cl
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_1077:
	mov	rax, qword ptr [rbp - 0x138]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_880
.label_941:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_910
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_910:
	jmp	.label_821
.label_971:
	jmp	.label_917
.label_917:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_867
.label_1929:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_928
	jmp	.label_845
.label_1916:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_934
	jmp	.label_845
.label_1923:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_941
	jmp	.label_845
.label_1006:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5d0]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5d0]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_926:
	jmp	.label_959
.label_959:
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x5b8]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
.label_1091:
	mov	rax, qword ptr [rbp - 0x5c8]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_968
.label_968:
	jmp	.label_977
.label_935:
	cmp	dword ptr [rbp - 0x72c], 0
	je	.label_981
	jmp	.label_986
.label_969:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1091
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_959
	mov	rax, qword ptr [rbp - 0x5b8]
	cmp	rax, qword ptr [rbp - 0x5c0]
	jae	.label_959
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x5b8]
	mov	qword ptr [rbp - 0x5d0], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_849
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1006
.label_849:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5d0]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5d0]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_926
.label_821:
	lea	rax, [rbp - 0x16d]
	mov	qword ptr [rbp - 0x178], rax
	mov	rax, qword ptr [rbp - 0x178]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x178], rcx
	mov	byte ptr [rax], 0x20
	mov	rax, qword ptr [rbp - 0x178]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x178], rcx
	mov	byte ptr [rax], 0x25
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_1026
	mov	eax, dword ptr [rbp - 0x90]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x178]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x178], rsi
	mov	byte ptr [rdx], cl
.label_1026:
	mov	eax, 0x400
	mov	esi, eax
	lea	rdx, [rbp - 0x16d]
	lea	rdi, [rbp - 0x580]
	mov	eax, dword ptr [rbp - 0xf8]
	mov	cl, al
	mov	r8, qword ptr [rbp - 0x178]
	mov	r9, r8
	add	r9, 1
	mov	qword ptr [rbp - 0x178], r9
	mov	byte ptr [r8], cl
	mov	r8, qword ptr [rbp - 0x178]
	mov	byte ptr [r8], 0
	mov	rcx, qword ptr [rbp - 0x40]
	call	strftime
	mov	qword ptr [rbp - 0x588], rax
	cmp	qword ptr [rbp - 0x588], 0
	je	.label_922
	jmp	.label_1085
.label_1085:
	mov	rax, qword ptr [rbp - 0x588]
	sub	rax, 1
	mov	qword ptr [rbp - 0x590], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1087
	xor	eax, eax
	mov	dword ptr [rbp - 0x7d4], eax
	jmp	.label_1094
.label_886:
	lea	rax, [rbp - 0xe0]
	add	rax, 0x17
	mov	qword ptr [rbp - 0xc0], rax
	test	byte ptr [rbp - 0x9d], 1
	je	.label_1095
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x9c], eax
.label_1095:
	jmp	.label_919
.label_919:
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 1
	cmp	eax, 0
	je	.label_1123
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0xc0], rcx
	mov	byte ptr [rax - 1], 0x3a
.label_1123:
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0xa4]
	sar	ecx, 1
	mov	dword ptr [rbp - 0xa4], ecx
	mov	ecx, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x7fc], eax
	mov	eax, ecx
	xor	edx, edx
	mov	ecx, dword ptr [rbp - 0x7fc]
	div	ecx
	add	edx, 0x30
	mov	sil, dl
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	r8, rdi
	add	r8, -1
	mov	qword ptr [rbp - 0xc0], r8
	mov	byte ptr [rdi - 1], sil
	mov	edx, dword ptr [rbp - 0x9c]
	mov	eax, edx
	xor	edx, edx
	div	ecx
	mov	dword ptr [rbp - 0x9c], eax
	mov	al, 1
	cmp	dword ptr [rbp - 0x9c], 0
	mov	byte ptr [rbp - 0x7fd], al
	jne	.label_890
	cmp	dword ptr [rbp - 0xa4], 0
	setne	al
	mov	byte ptr [rbp - 0x7fd], al
.label_890:
	mov	al, byte ptr [rbp - 0x7fd]
	test	al, 1
	jne	.label_919
	jmp	.label_873
.label_873:
	mov	eax, dword ptr [rbp - 0x94]
	cmp	eax, dword ptr [rbp - 0x4c]
	jge	.label_847
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x94], eax
.label_847:
	test	byte ptr [rbp - 0x9d], 1
	je	.label_858
	mov	eax, 0x2d
	mov	dword ptr [rbp - 0x804], eax
	jmp	.label_865
.label_1905:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_870
	jmp	.label_845
.label_1934:
	jmp	.label_877
.label_877:
	mov	dword ptr [rbp - 0x94], 1
	mov	byte ptr [rbp - 0x9d], 0
	mov	rax, qword ptr [rbp - 0x40]
	imul	ecx, dword ptr [rax + 0x10], 0xb
	sar	ecx, 5
	add	ecx, 1
	mov	dword ptr [rbp - 0x9c], ecx
	jmp	.label_823
.label_841:
	jmp	.label_891
.label_891:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_867
.label_1139:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x168]
	call	memset
	mov	rdx, qword ptr [rbp - 0x168]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_976:
	jmp	.label_911
.label_911:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	sil, byte ptr [rbp - 0xe2]
	mov	r9d, dword ptr [rbp - 0x8c]
	mov	r8d, dword ptr [rbp - 0xfc]
	mov	r10, qword ptr [rbp - 0x58]
	mov	r11, qword ptr [rbp - 0x60]
	mov	ebx, dword ptr [rbp - 0x64]
	and	sil, 1
	mov	byte ptr [rbp - 0x7c1], sil
	mov	rsi, rax
	mov	r14b, byte ptr [rbp - 0x7c1]
	movzx	r15d, r14b
	mov	dword ptr [rbp - 0x7c8], r8d
	mov	r8d, r15d
	mov	r15d, dword ptr [rbp - 0x7c8]
	mov	dword ptr [rsp], r15d
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	mov	dword ptr [rsp + 0x18], ebx
	call	__strftime_internal
	mov	rcx, qword ptr [rbp - 0x150]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
	mov	qword ptr [rbp - 0x7d0], rax
.label_1115:
	mov	rax, qword ptr [rbp - 0x160]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_880
.label_938:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x638]
	call	memset
	mov	rdx, qword ptr [rbp - 0x638]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_948:
	jmp	.label_982
.label_982:
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x620]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
.label_947:
	mov	rax, qword ptr [rbp - 0x630]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_991
.label_991:
	jmp	.label_879
.label_879:
	jmp	.label_977
.label_977:
	jmp	.label_852
.label_852:
	lea	rax, [rbp - 0xe0]
	add	rax, 0x17
	mov	rcx, qword ptr [rbp - 0xc0]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x640], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_888
	xor	eax, eax
	mov	dword ptr [rbp - 0x844], eax
	jmp	.label_937
.label_928:
	jmp	.label_978
.label_978:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_1021
.label_952:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x7b4], eax
.label_992:
	mov	eax, dword ptr [rbp - 0x7b4]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x158], rcx
	mov	rcx, qword ptr [rbp - 0x150]
	cmp	rcx, qword ptr [rbp - 0x158]
	jae	.label_1046
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rbp - 0x7c0], rax
	jmp	.label_1066
.label_1005:
	jmp	.label_1049
.label_1049:
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 2
	mov	ecx, dword ptr [rbp - 0x6f4]
	mov	dword ptr [rbp - 0x8cc], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x8cc]
	idiv	ecx
	add	eax, 1
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_867
.label_1920:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_1062
	jmp	.label_845
	.section	.text
	.align	32
	#Procedure 0x40b2f2

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x938
	mov	al, r8b
	mov	r8d, dword ptr [rbp + 0x28]
	mov	r10, qword ptr [rbp + 0x20]
	mov	r11, qword ptr [rbp + 0x18]
	mov	ebx, dword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x38], rdx
	mov	qword ptr [rbp - 0x40], rcx
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	dword ptr [rbp - 0x48], r9d
	mov	dword ptr [rbp - 0x4c], ebx
	mov	qword ptr [rbp - 0x58], r11
	mov	qword ptr [rbp - 0x60], r10
	mov	dword ptr [rbp - 0x64], r8d
	mov	rcx, qword ptr [rbp - 0x40]
	mov	r8d, dword ptr [rcx + 8]
	mov	dword ptr [rbp - 0x68], r8d
	mov	qword ptr [rbp - 0x78], 0
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x80], rcx
	mov	qword ptr [rbp - 0x70], 0
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rbp - 0x70], rcx
	cmp	qword ptr [rbp - 0x70], 0
	jne	.label_1157
	movabs	rax, OFFSET FLAT:label_77
	mov	qword ptr [rbp - 0x70], rax
.label_1157:
	cmp	dword ptr [rbp - 0x68], 0xc
	jle	.label_1158
	mov	eax, dword ptr [rbp - 0x68]
	sub	eax, 0xc
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1156
.label_1931:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1119
	jmp	.label_845
.label_1015:
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_953
	jmp	.label_1130
.label_1130:
	mov	qword ptr [rbp - 0x600], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1037
	xor	eax, eax
	mov	dword ptr [rbp - 0x824], eax
	jmp	.label_1072
.label_1927:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1143
	jmp	.label_845
.label_1080:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x758]
	call	memset
	mov	rdx, qword ptr [rbp - 0x758]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1103:
	jmp	.label_831
.label_831:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_832
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0x80]
	sub	eax, dword ptr [rbp - 0x734]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x740]
	mov	rsi, rcx
	call	memcpy_lowcase
	mov	qword ptr [rbp - 0x928], rax
	jmp	.label_850
.label_1021:
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_856
	mov	dword ptr [rbp - 0x8c], 0x5f
.label_856:
	jmp	.label_867
.label_867:
	cmp	dword ptr [rbp - 0x98], 0
	setl	al
	and	al, 1
	mov	byte ptr [rbp - 0x9d], al
	mov	ecx, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x9c], ecx
.label_823:
	mov	byte ptr [rbp - 0x9e], 0
.label_972:
	mov	dword ptr [rbp - 0xa4], 0
.label_902:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_886
	test	byte ptr [rbp - 0x9d], 1
	jne	.label_886
	jmp	.label_821
.label_830:
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_895
	mov	eax, dword ptr [rbp - 0x48]
	mov	dword ptr [rbp - 0x8c], eax
.label_895:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x8c], 0x2b
	mov	byte ptr [rbp - 0x7f6], cl
	jne	.label_901
	mov	al, 1
	mov	ecx, 0x270f
	mov	edx, 0x63
	cmp	dword ptr [rbp - 0x94], 2
	cmove	ecx, edx
	cmp	ecx, dword ptr [rbp - 0x9c]
	mov	byte ptr [rbp - 0x7f7], al
	jb	.label_909
	mov	eax, dword ptr [rbp - 0x94]
	cmp	eax, dword ptr [rbp - 0x4c]
	setl	cl
	mov	byte ptr [rbp - 0x7f7], cl
.label_909:
	mov	al, byte ptr [rbp - 0x7f7]
	mov	byte ptr [rbp - 0x7f6], al
.label_901:
	mov	al, byte ptr [rbp - 0x7f6]
	and	al, 1
	mov	byte ptr [rbp - 0x9e], al
	jmp	.label_972
.label_1056:
	mov	eax, dword ptr [rbp - 0x6fc]
	add	eax, 0x64
	mov	dword ptr [rbp - 0x8c8], eax
.label_1064:
	mov	eax, dword ptr [rbp - 0x8c8]
	mov	dword ptr [rbp - 0x8c4], eax
.label_1022:
	mov	eax, dword ptr [rbp - 0x8c4]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_830
.label_987:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x65c], eax
.label_956:
	cmp	dword ptr [rbp - 0x65c], 9
	jge	.label_950
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x864], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x864]
	idiv	ecx
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x65c]
	add	eax, 1
	mov	dword ptr [rbp - 0x65c], eax
	jmp	.label_956
.label_1024:
	xor	eax, eax
	mov	cl, al
	mov	eax, 0x64
	mov	rdx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rdx + 0x14]
	mov	dword ptr [rbp - 0x7f4], eax
	mov	eax, esi
	cdq	
	mov	esi, dword ptr [rbp - 0x7f4]
	idiv	esi
	add	eax, 0x13
	mov	dword ptr [rbp - 0x5ac], eax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rdi + 0x14]
	cdq	
	idiv	esi
	cmp	edx, 0
	mov	byte ptr [rbp - 0x7f5], cl
	jge	.label_975
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x5ac]
	setl	cl
	mov	byte ptr [rbp - 0x7f5], cl
.label_975:
	mov	al, byte ptr [rbp - 0x7f5]
	and	al, 1
	movzx	ecx, al
	mov	edx, dword ptr [rbp - 0x5ac]
	sub	edx, ecx
	mov	dword ptr [rbp - 0x5ac], edx
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	edx, dword ptr [rbp - 0x5ac]
	mov	dword ptr [rbp - 0x9c], edx
	jmp	.label_830
.label_882:
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0x80]
	sub	eax, dword ptr [rbp - 0x734]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x740]
	mov	rsi, rcx
	call	memcpy
.label_897:
	jmp	.label_850
.label_850:
	mov	rax, qword ptr [rbp - 0x740]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_1058:
	mov	rax, qword ptr [rbp - 0x750]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_880
.label_880:
	jmp	.label_939
.label_939:
	mov	dword ptr [rbp - 0x4c], 0xffffffff
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_1050
.label_940:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x720]
	call	memset
	mov	rdx, qword ptr [rbp - 0x720]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_862:
	jmp	.label_817
.label_817:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_1070
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x708]
	call	memcpy_lowcase
	mov	qword ptr [rbp - 0x8f0], rax
	jmp	.label_961
.label_884:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_892
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x640]
	call	memcpy_uppcase
	mov	qword ptr [rbp - 0x860], rax
	jmp	.label_1150
.label_932:
	jmp	.label_845
.label_1912:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_853
	jmp	.label_845
.label_1122:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x880], eax
.label_1128:
	mov	eax, dword ptr [rbp - 0x880]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x6d8], rcx
	mov	rcx, qword ptr [rbp - 0x6d0]
	cmp	rcx, qword ptr [rbp - 0x6d8]
	jae	.label_1109
	mov	rax, qword ptr [rbp - 0x6d8]
	mov	qword ptr [rbp - 0x888], rax
	jmp	.label_1121
.label_1017:
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_1126
.label_1062:
	jmp	.label_821
.label_912:
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, 6
	mov	dword ptr [rbp - 0xfc], eax
	cmp	dword ptr [rbp - 0xfc], 0
	jge	.label_1136
	mov	dword ptr [rbp - 0xfc], 0
.label_1136:
	jmp	.label_914
.label_914:
	movabs	rax, OFFSET FLAT:label_1153
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1154
.label_998:
	mov	rax, qword ptr [rbp - 0x590]
	mov	qword ptr [rbp - 0x7e0], rax
.label_1009:
	mov	rax, qword ptr [rbp - 0x7e0]
	mov	qword ptr [rbp - 0x5a0], rax
	mov	rax, qword ptr [rbp - 0x5a0]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_833
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_846
.label_1940:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_851
	jmp	.label_845
.label_1930:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_861
	jmp	.label_845
.label_833:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_868
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_871
	mov	rax, qword ptr [rbp - 0x590]
	cmp	rax, qword ptr [rbp - 0x598]
	jae	.label_871
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x590]
	mov	qword ptr [rbp - 0x5a8], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_885
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_878
.label_885:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5a8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5a8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_903
.label_1004:
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_912
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_912
	mov	dword ptr [rbp - 0x8c], 0x2b
	mov	dword ptr [rbp - 0xfc], 4
	jmp	.label_914
.label_985:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x75c], eax
.label_990:
	mov	eax, dword ptr [rbp - 0x75c]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x110], rcx
	mov	rcx, qword ptr [rbp - 0x108]
	cmp	rcx, qword ptr [rbp - 0x110]
	jae	.label_923
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x768], rax
	jmp	.label_936
.label_870:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_943
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_943:
	jmp	.label_821
.label_1073:
	xor	eax, eax
	mov	cl, al
	mov	eax, 4
	mov	rdx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rdx + 0x1c]
	mov	edi, dword ptr [rbp - 0x6ec]
	mov	dword ptr [rbp - 0x8a4], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0x8a4]
	idiv	edi
	cmp	edx, 0
	mov	dword ptr [rbp - 0x8a8], esi
	mov	byte ptr [rbp - 0x8a9], cl
	jne	.label_925
	mov	al, 1
	mov	ecx, 0x64
	mov	edx, dword ptr [rbp - 0x6ec]
	mov	byte ptr [rbp - 0x8aa], al
	mov	eax, edx
	cdq	
	idiv	ecx
	cmp	edx, 0
	mov	sil, byte ptr [rbp - 0x8aa]
	mov	byte ptr [rbp - 0x8ab], sil
	jne	.label_974
	mov	eax, 0x190
	mov	ecx, dword ptr [rbp - 0x6ec]
	mov	dword ptr [rbp - 0x8b0], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x8b0]
	idiv	ecx
	cmp	edx, 0
	sete	sil
	mov	byte ptr [rbp - 0x8ab], sil
.label_974:
	mov	al, byte ptr [rbp - 0x8ab]
	mov	byte ptr [rbp - 0x8a9], al
.label_925:
	mov	al, byte ptr [rbp - 0x8a9]
	and	al, 1
	movzx	ecx, al
	add	ecx, 0x16d
	mov	edx, dword ptr [rbp - 0x8a8]
	sub	edx, ecx
	mov	rsi, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rsi + 0x18]
	mov	edi, edx
	call	iso_week_days
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x6f8], eax
	cmp	ecx, dword ptr [rbp - 0x6f8]
	jg	.label_988
	mov	dword ptr [rbp - 0x6f0], 1
	mov	eax, dword ptr [rbp - 0x6f8]
	mov	dword ptr [rbp - 0x6f4], eax
.label_988:
	jmp	.label_881
.label_881:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x47
	mov	dword ptr [rbp - 0x8b4], ecx
	mov	dword ptr [rbp - 0x8b8], edx
	je	.label_1034
	jmp	.label_1134
.label_1134:
	mov	eax, dword ptr [rbp - 0x8b4]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x8bc], eax
	jne	.label_1005
	jmp	.label_859
.label_859:
	mov	eax, 0x64
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x14]
	mov	dword ptr [rbp - 0x8c0], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x8c0]
	idiv	esi
	add	edx, dword ptr [rbp - 0x6f0]
	mov	eax, edx
	cdq	
	idiv	esi
	mov	dword ptr [rbp - 0x6fc], edx
	xor	eax, eax
	mov	dword ptr [rbp - 0x94], 2
	mov	byte ptr [rbp - 0x9d], 0
	cmp	eax, dword ptr [rbp - 0x6fc]
	jg	.label_1051
	mov	eax, dword ptr [rbp - 0x6fc]
	mov	dword ptr [rbp - 0x8c4], eax
	jmp	.label_1022
.label_963:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x914], eax
.label_855:
	mov	eax, dword ptr [rbp - 0x914]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x748], rcx
	mov	rcx, qword ptr [rbp - 0x740]
	cmp	rcx, qword ptr [rbp - 0x748]
	jae	.label_1084
	mov	rax, qword ptr [rbp - 0x748]
	mov	qword ptr [rbp - 0x920], rax
	jmp	.label_1132
.label_1911:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1098
	jmp	.label_845
.label_1023:
	mov	rax, qword ptr [rbp - 0x5b8]
	mov	qword ptr [rbp - 0x810], rax
.label_942:
	mov	rax, qword ptr [rbp - 0x810]
	mov	qword ptr [rbp - 0x5c8], rax
	mov	rax, qword ptr [rbp - 0x5c8]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_969
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_846
.label_1748:
	jmp	.label_986
.label_986:
	jmp	.label_1016
.label_1016:
	mov	dword ptr [rbp - 0x94], 6
	mov	dword ptr [rbp - 0xa4], 4
	imul	eax, dword ptr [rbp - 0x728], 0x64
	add	eax, dword ptr [rbp - 0x72c]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_829
.label_1921:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1145
	jmp	.label_821
.label_1029:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x7a4], eax
.label_1076:
	mov	eax, dword ptr [rbp - 0x7a4]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x130], rcx
	mov	rcx, qword ptr [rbp - 0x128]
	cmp	rcx, qword ptr [rbp - 0x130]
	jae	.label_816
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rbp - 0x7b0], rax
	jmp	.label_834
.label_1145:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_840
	jmp	.label_845
.label_1109:
	mov	rax, qword ptr [rbp - 0x6d0]
	mov	qword ptr [rbp - 0x888], rax
.label_1121:
	mov	rax, qword ptr [rbp - 0x888]
	mov	qword ptr [rbp - 0x6e0], rax
	mov	rax, qword ptr [rbp - 0x6e0]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1002
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_846
.label_1002:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1135
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_866
	mov	rax, qword ptr [rbp - 0x6d0]
	cmp	rax, qword ptr [rbp - 0x6d8]
	jae	.label_866
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x6d0]
	mov	qword ptr [rbp - 0x6e8], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_889
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_899
.label_889:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x6e8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x6e8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_973
.label_1075:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_947
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_982
	mov	rax, qword ptr [rbp - 0x620]
	cmp	rax, qword ptr [rbp - 0x628]
	jae	.label_982
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x620]
	mov	qword ptr [rbp - 0x638], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_927
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_938
.label_927:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x638]
	call	memset
	mov	rdx, qword ptr [rbp - 0x638]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_948
.label_1932:
	jmp	.label_954
.label_954:
	mov	qword ptr [rbp - 0x668], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_957
	xor	eax, eax
	mov	dword ptr [rbp - 0x868], eax
	jmp	.label_964
.label_1747:
	jmp	.label_996
.label_996:
	mov	dword ptr [rbp - 0x94], 5
	mov	dword ptr [rbp - 0xa4], 0
	imul	eax, dword ptr [rbp - 0x728], 0x64
	add	eax, dword ptr [rbp - 0x72c]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_829
.label_1053:
	mov	eax, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x98], eax
	cmp	dword ptr [rbp - 0x4c], -1
	jne	.label_987
	mov	dword ptr [rbp - 0x4c], 9
	jmp	.label_995
.label_1003:
	mov	rax, qword ptr [rbp - 0x708]
	mov	qword ptr [rbp - 0x8e8], rax
.label_1071:
	mov	rax, qword ptr [rbp - 0x8e8]
	mov	qword ptr [rbp - 0x718], rax
	mov	rax, qword ptr [rbp - 0x718]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1001
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_846
.label_872:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x7a
	je	.label_1017
	jmp	.label_845
.label_828:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x818], eax
.label_836:
	mov	eax, dword ptr [rbp - 0x818]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x5e8], rcx
	mov	rcx, qword ptr [rbp - 0x5e0]
	cmp	rcx, qword ptr [rbp - 0x5e8]
	jae	.label_1030
	mov	rax, qword ptr [rbp - 0x5e8]
	mov	qword ptr [rbp - 0x820], rax
	jmp	.label_1104
.label_1922:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_1048
	mov	byte ptr [rbp - 0xe2], 0
	mov	byte ptr [rbp - 0xe1], 1
.label_1048:
	jmp	.label_1052
.label_1052:
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x708], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1057
	xor	eax, eax
	mov	dword ptr [rbp - 0x8e0], eax
	jmp	.label_931
.label_945:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x680]
	call	memset
	mov	rdx, qword ptr [rbp - 0x680]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_955:
	jmp	.label_921
.label_921:
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], 0xa
	mov	rax, qword ptr [rbp - 0x668]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_920:
	mov	rax, qword ptr [rbp - 0x678]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_880
.label_950:
	jmp	.label_995
.label_995:
	jmp	.label_1090
.label_1090:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x94], eax
	mov	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_867
.label_1924:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_1100
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_1100:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1063
	jmp	.label_845
.label_916:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1115
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_911
	mov	rax, qword ptr [rbp - 0x150]
	cmp	rax, qword ptr [rbp - 0x158]
	jae	.label_911
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rbp - 0x168], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1131
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1139
.label_1131:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x168]
	call	memset
	mov	rdx, qword ptr [rbp - 0x168]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_976
.label_1034:
	jmp	.label_827
.label_827:
	mov	eax, 0xfffff894
	mov	dword ptr [rbp - 0x94], 4
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x14]
	sub	eax, dword ptr [rbp - 0x6f0]
	cmp	edx, eax
	setl	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x9d], sil
	mov	rcx, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rcx + 0x14]
	add	eax, 0x76c
	add	eax, dword ptr [rbp - 0x6f0]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_830
.label_980:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1018
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_822
	mov	rax, qword ptr [rbp - 0x640]
	cmp	rax, qword ptr [rbp - 0x648]
	jae	.label_822
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x640]
	mov	qword ptr [rbp - 0x658], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_874
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_887
.label_874:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x658]
	call	memset
	mov	rdx, qword ptr [rbp - 0x658]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_898
.label_1025:
	mov	rax, qword ptr [rbp - 0x600]
	mov	qword ptr [rbp - 0x830], rax
.label_1038:
	mov	rax, qword ptr [rbp - 0x830]
	mov	qword ptr [rbp - 0x610], rax
	mov	rax, qword ptr [rbp - 0x610]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_906
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_846
.label_908:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_920
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_921
	mov	rax, qword ptr [rbp - 0x668]
	cmp	rax, qword ptr [rbp - 0x670]
	jae	.label_921
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x668]
	mov	qword ptr [rbp - 0x680], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1138
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_945
.label_1138:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x680]
	call	memset
	mov	rdx, qword ptr [rbp - 0x680]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_955
.label_923:
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x768], rax
.label_936:
	mov	rax, qword ptr [rbp - 0x768]
	mov	qword ptr [rbp - 0x118], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_966
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_846
.label_1084:
	mov	rax, qword ptr [rbp - 0x740]
	mov	qword ptr [rbp - 0x920], rax
.label_1132:
	mov	rax, qword ptr [rbp - 0x920]
	mov	qword ptr [rbp - 0x750], rax
	mov	rax, qword ptr [rbp - 0x750]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_993
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_846
.label_1914:
	mov	byte ptr [rbp - 0xe1], 1
	mov	dword ptr [rbp - 0xf8], 0x70
.label_1933:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_1013
	mov	byte ptr [rbp - 0xe2], 0
	mov	byte ptr [rbp - 0xe1], 1
.label_1013:
	jmp	.label_821
.label_1935:
	jmp	.label_821
.label_1037:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x824], eax
.label_1072:
	mov	eax, dword ptr [rbp - 0x824]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x608], rcx
	mov	rcx, qword ptr [rbp - 0x600]
	cmp	rcx, qword ptr [rbp - 0x608]
	jae	.label_1025
	mov	rax, qword ptr [rbp - 0x608]
	mov	qword ptr [rbp - 0x830], rax
	jmp	.label_1038
.label_835:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1074
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_837
	mov	rax, qword ptr [rbp - 0x5e0]
	cmp	rax, qword ptr [rbp - 0x5e8]
	jae	.label_837
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x5e0]
	mov	qword ptr [rbp - 0x5f8], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1054
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1065
.label_1054:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5f8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5f8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_896
.label_934:
	jmp	.label_1111
.label_1111:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_867
.label_1110:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x708]
	call	memcpy
.label_869:
	jmp	.label_961
.label_961:
	mov	rax, qword ptr [rbp - 0x708]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_1151:
	mov	rax, qword ptr [rbp - 0x718]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_880
.label_861:
	jmp	.label_1106
.label_1106:
	mov	dword ptr [rbp - 0x94], 2
	mov	eax, dword ptr [rbp - 0x68]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1021
.label_1014:
	movabs	rax, OFFSET FLAT:label_1116
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_894
.label_1000:
	mov	rax, qword ptr [rbp - 0x640]
	mov	qword ptr [rbp - 0x850], rax
.label_930:
	mov	rax, qword ptr [rbp - 0x850]
	mov	qword ptr [rbp - 0x650], rax
	mov	rax, qword ptr [rbp - 0x650]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_980
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_846
.label_1148:
	xor	eax, eax
	mov	dword ptr [rbp - 0x814], eax
	jmp	.label_1088
.label_1088:
	mov	eax, dword ptr [rbp - 0x814]
	mov	dword ptr [rbp - 0x4c], eax
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_946
	jmp	.label_825
.label_825:
	mov	qword ptr [rbp - 0x5e0], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_828
	xor	eax, eax
	mov	dword ptr [rbp - 0x818], eax
	jmp	.label_836
.label_1045:
	jmp	.label_839
.label_839:
	jmp	.label_842
.label_842:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_951
	mov	dword ptr [rbp - 0x4c], 0
.label_1078:
	cmp	dword ptr [rbp - 0x4c], 0xccccccc
	jg	.label_1012
	cmp	dword ptr [rbp - 0x4c], 0xccccccc
	jne	.label_863
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 7
	jle	.label_863
.label_1012:
	mov	dword ptr [rbp - 0x4c], 0x7fffffff
	jmp	.label_875
.label_899:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x6e8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x6e8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_973:
	jmp	.label_866
.label_866:
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], 9
	mov	rax, qword ptr [rbp - 0x6d0]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_1135:
	mov	rax, qword ptr [rbp - 0x6e0]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_880
.label_1146:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x724], edx
	cmp	dword ptr [rbp - 0x724], 0
	mov	byte ptr [rbp - 0x8f9], al
	jl	.label_905
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x724], 0
	mov	byte ptr [rbp - 0x8fa], cl
	jne	.label_915
	mov	rax, qword ptr [rbp - 0x70]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	sete	dl
	mov	byte ptr [rbp - 0x8fa], dl
.label_915:
	mov	al, byte ptr [rbp - 0x8fa]
	mov	byte ptr [rbp - 0x8f9], al
.label_905:
	mov	al, byte ptr [rbp - 0x8f9]
	and	al, 1
	mov	byte ptr [rbp - 0x9d], al
	movsxd	rcx, dword ptr [rbp - 0x724]
	mov	edx, ecx
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	esi, ecx
	add	esi, edx
	mov	edx, esi
	shr	edx, 0x1f
	sar	esi, 5
	add	esi, edx
	movsxd	rcx, esi
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	edx, ecx
	add	edx, esi
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 5
	add	edx, esi
	mov	dword ptr [rbp - 0x728], edx
	movsxd	rcx, dword ptr [rbp - 0x724]
	mov	edx, ecx
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	esi, ecx
	add	esi, edx
	mov	edx, esi
	shr	edx, 0x1f
	sar	esi, 5
	add	esi, edx
	movsxd	rcx, esi
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	edx, ecx
	add	edx, esi
	mov	edi, edx
	shr	edi, 0x1f
	sar	edx, 5
	add	edx, edi
	imul	edx, edx, 0x3c
	sub	esi, edx
	mov	dword ptr [rbp - 0x72c], esi
	movsxd	rcx, dword ptr [rbp - 0x724]
	mov	edx, ecx
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	esi, ecx
	add	esi, edx
	mov	edi, esi
	shr	edi, 0x1f
	sar	esi, 5
	add	esi, edi
	imul	esi, esi, 0x3c
	sub	edx, esi
	mov	dword ptr [rbp - 0x730], edx
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	r8, rcx
	sub	r8, 3
	mov	qword ptr [rbp - 0x908], rcx
	mov	qword ptr [rbp - 0x910], r8
	ja	.label_932
	mov	rax, qword ptr [rbp - 0x908]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1010]]
	jmp	rcx
.label_1039:
	movsxd	rax, dword ptr [rbp - 0x94]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1015
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_846
.label_967:
	jmp	.label_1028
.label_1028:
	mov	qword ptr [rbp - 0x128], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1029
	xor	eax, eax
	mov	dword ptr [rbp - 0x7a4], eax
	jmp	.label_1076
.label_1114:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1040
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	movsxd	rdx, dword ptr [rbp - 0x5d4]
	call	memset
	mov	esi, dword ptr [rbp - 0x5d4]
	mov	rdx, qword ptr [rbp - 0x80]
	movsxd	rdi, esi
	add	rdx, rdi
	mov	qword ptr [rbp - 0x80], rdx
.label_1040:
	movsxd	rax, dword ptr [rbp - 0x5d4]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	ecx, dword ptr [rbp - 0x4c]
	cmp	ecx, dword ptr [rbp - 0x5d4]
	jle	.label_1148
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, dword ptr [rbp - 0x5d4]
	mov	dword ptr [rbp - 0x814], eax
	jmp	.label_1088
.label_863:
	imul	eax, dword ptr [rbp - 0x4c], 0xa
	mov	dword ptr [rbp - 0x4c], eax
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	eax, byte ptr [rcx]
	sub	eax, 0x30
	add	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
.label_875:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	jbe	.label_1078
	jmp	.label_951
.label_951:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x788], ecx
	mov	dword ptr [rbp - 0x78c], edx
	je	.label_1089
	jmp	.label_1097
.label_1097:
	mov	eax, dword ptr [rbp - 0x788]
	sub	eax, 0x4f
	mov	dword ptr [rbp - 0x790], eax
	jne	.label_1099
	jmp	.label_1089
.label_1089:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x88], rcx
	movsx	edx, byte ptr [rax]
	mov	dword ptr [rbp - 0x90], edx
	jmp	.label_1108
.label_1937:
	jmp	.label_1120
.label_1120:
	mov	qword ptr [rbp - 0x6d0], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1122
	xor	eax, eax
	mov	dword ptr [rbp - 0x880], eax
	jmp	.label_1128
.label_854:
	jmp	.label_1047
.label_1047:
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 2
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x1c]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rcx + 0x18]
	sub	esi, 1
	add	esi, 7
	mov	dword ptr [rbp - 0x8d0], eax
	mov	eax, esi
	mov	dword ptr [rbp - 0x8d4], edx
	cdq	
	mov	esi, dword ptr [rbp - 0x8d0]
	idiv	esi
	mov	edi, dword ptr [rbp - 0x8d4]
	sub	edi, edx
	add	edi, 7
	mov	eax, edi
	cdq	
	idiv	esi
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_867
.label_1171:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x230], rax
	mov	dword ptr [rbp - 0x234], ecx
	ja	.label_1169
	mov	eax, dword ptr [rbp - 0x234]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x230]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x240], rcx
	jmp	.label_1187
.label_1189:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_1166:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1165
.label_1178:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1c8], rax
	mov	dword ptr [rbp - 0x1cc], ecx
	ja	.label_1167
	mov	eax, dword ptr [rbp - 0x1cc]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1d8], rcx
	jmp	.label_1185
	.section	.text
	.align	32
	#Procedure 0x40c8e0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x240
	test	al, al
	movaps	xmmword ptr [rbp - 0x100], xmm7
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	dword ptr [rbp - 0x174], edi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	dword ptr [rbp - 0x19c], esi
	je	.label_1184
	movaps	xmm0, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm7
.label_1184:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0xd8], rdx
	mov	rsi, qword ptr [rbp - 0x198]
	mov	qword ptr [rbp - 0xe0], rsi
	mov	edi, dword ptr [rbp - 0x19c]
	mov	r8d, dword ptr [rbp - 0x174]
	mov	dword ptr [rbp - 4], r8d
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 0x24], 0xffffffff
	lea	r9, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x10], r9
	lea	r9, [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], r9
	mov	dword ptr [rbp - 0x1c], 0x30
	mov	dword ptr [rbp - 0x20], 0x10
	mov	edi, dword ptr [rbp - 8]
	test	edi, edi
	mov	dword ptr [rbp - 0x1a0], edi
	je	.label_1174
	jmp	.label_1177
.label_1177:
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_1178
	jmp	.label_1163
.label_1173:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x228], rdx
.label_1181:
	mov	rax, qword ptr [rbp - 0x228]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x30]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1179
.label_1169:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x240], rdx
.label_1187:
	mov	rax, qword ptr [rbp - 0x240]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
.label_1179:
	jmp	.label_1165
.label_1165:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x240
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40caee
	.globl sub_40caee
	.type sub_40caee, @function
sub_40caee:

	nop	dword ptr [rax + rax]
.label_1167:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_1185:
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x2c]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1165
.label_1164:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	dword ptr [rbp - 0x21c], ecx
	ja	.label_1173
	mov	eax, dword ptr [rbp - 0x21c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x218]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x228], rcx
	jmp	.label_1181
.label_1163:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	mov	dword ptr [rbp - 0x1dc], eax
	je	.label_1164
	jmp	.label_1159
.label_1159:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	mov	dword ptr [rbp - 0x1e0], eax
	je	.label_1161
	jmp	.label_1168
.label_1168:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_1164
	jmp	.label_1175
.label_1175:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	mov	dword ptr [rbp - 0x1e8], eax
	je	.label_1161
	jmp	.label_1182
.label_1182:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	mov	dword ptr [rbp - 0x1ec], eax
	je	.label_1164
	jmp	.label_1186
.label_1186:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	je	.label_1164
	jmp	.label_1160
.label_1160:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_1161
	jmp	.label_1170
.label_1170:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_1164
	jmp	.label_1176
.label_1176:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xb
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_1161
	jmp	.label_1183
.label_1183:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	dword ptr [rbp - 0x200], eax
	je	.label_1164
	jmp	.label_1188
.label_1188:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_1161
	jmp	.label_1162
.label_1162:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x402
	mov	dword ptr [rbp - 0x208], eax
	je	.label_1164
	jmp	.label_1172
.label_1172:
	mov	eax, dword ptr [rbp - 0x1dc]
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_1164
	jmp	.label_1180
.label_1180:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	jne	.label_1171
	jmp	.label_1161
.label_1161:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1179
.label_1174:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_1189
	mov	eax, dword ptr [rbp - 0x1b4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1c0], rcx
	jmp	.label_1166
.label_1190:
	call	xgetcwd
	mov	qword ptr [rbp - 0xc0], rax
.label_1197:
	call	__errno_location
	lea	rdi, [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x184], ecx
	call	restore_cwd
	cmp	eax, 0
	je	.label_1202
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_1207
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1e4], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x1e4]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_1210:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	jne	.label_1194
	mov	eax, 0x90
	mov	edx, eax
	lea	rcx, [rbp - 0xb8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rcx
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x10]
	call	chdir
	cmp	eax, 0
	jge	.label_1203
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_1191
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x18c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x198], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x18c]
	mov	rdx, qword ptr [rbp - 0x198]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1193
.label_1201:
	jmp	.label_1198
.label_1198:
	jmp	.label_1199
.label_1199:
	movabs	rdi, OFFSET FLAT:label_1196
	lea	rsi, [rbp - 0x180]
	call	stat
	cmp	eax, 0
	jge	.label_1192
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_1205
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1c4], esi
	call	gettext
	mov	edi, 4
	movabs	rsi, OFFSET FLAT:label_1196
	mov	qword ptr [rbp - 0x1d0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x1c4]
	mov	rdx, qword ptr [rbp - 0x1d0]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_1197
.label_1200:
	movabs	rdi, OFFSET FLAT:label_173
	lea	rsi, [rbp - 0xb8]
	call	stat
	cmp	eax, 0
	jge	.label_1201
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_1195
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1b4], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x1c0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x1b4]
	mov	rdx, qword ptr [rbp - 0x1c0]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_1197
.label_1203:
	jmp	.label_1198
.label_1202:
	lea	rdi, [rbp - 0x28]
	call	free_cwd
	mov	eax, dword ptr [rbp - 0x184]
	mov	dword ptr [rbp - 0x1e8], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x1e8]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 8], rax
.label_1193:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cf62
	.globl sub_40cf62
	.type sub_40cf62, @function
sub_40cf62:

	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_1206:
	movabs	rdi, OFFSET FLAT:label_1196
	call	chdir
	cmp	eax, 0
	jge	.label_1208
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_1191
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1d4], esi
	call	gettext
	mov	edi, 4
	movabs	rsi, OFFSET FLAT:label_1196
	mov	qword ptr [rbp - 0x1e0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x1d4]
	mov	rdx, qword ptr [rbp - 0x1e0]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_1197
.label_1192:
	mov	rax, qword ptr [rbp - 0x180]
	cmp	rax, qword ptr [rbp - 0xb8]
	jne	.label_1204
	mov	rax, qword ptr [rbp - 0x178]
	cmp	rax, qword ptr [rbp - 0xb0]
	jne	.label_1206
.label_1204:
	jmp	.label_1190
.label_1208:
	mov	eax, 0x90
	mov	edx, eax
	lea	rcx, [rbp - 0x180]
	lea	rsi, [rbp - 0xb8]
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	jmp	.label_1199
	.section	.text
	.align	32
	#Procedure 0x40d02c

	.globl find_mount_point
	.type find_mount_point, @function
find_mount_point:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1f0
	lea	rax, [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0xc0], 0
	mov	rdi, rax
	call	save_cwd
	cmp	eax, 0
	je	.label_1210
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_1209
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x188], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x188]
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1193
.label_1194:
	mov	rdi, qword ptr [rbp - 0x10]
	call	dir_name
	mov	qword ptr [rbp - 0xc8], rax
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xd8], rax
	mov	rdi, rax
	call	strlen
	mov	rdi, rax
	inc	rdi
	mov	qword ptr [rbp - 0xe0], rdi
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	mov	rdi, rsp
	sub	rdi, rax
	mov	rsp, rdi
	mov	qword ptr [rbp - 0xe8], rdi
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rsi, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x1a0], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x1a0]
	mov	qword ptr [rbp - 0xf0], rax
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0xd0], rdx
	mov	rdi, qword ptr [rbp - 0xc8]
	call	free
	mov	rdi, qword ptr [rbp - 0xd0]
	call	chdir
	cmp	eax, 0
	jge	.label_1200
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_1191
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1a4], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x1b0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x1a4]
	mov	rdx, qword ptr [rbp - 0x1b0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1193
	.section	.text
	.align	32
	#Procedure 0x40d1a0

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	esi, eax
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0xc], eax
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d1cb
	.globl sub_40d1cb
	.type sub_40d1cb, @function
sub_40d1cb:

	nop	dword ptr [rax + rax]
.label_1212:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	call	chdir_long
	mov	dword ptr [rbp - 4], eax
.label_1211:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d1e9
	.globl sub_40d1e9
	.type sub_40d1e9, @function
sub_40d1e9:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d1f3

	.globl restore_cwd
	.type restore_cwd, @function
restore_cwd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	eax, dword ptr [rdi]
	jg	.label_1212
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax]
	call	fchdir
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1211
	.section	.text
	.align	32
	#Procedure 0x40d220

	.globl save_cwd
	.type save_cwd, @function
save_cwd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, OFFSET FLAT:label_173
	mov	esi, 0x80000
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], 0
	mov	rdi, rax
	mov	al, 0
	call	open_safer
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rdi], eax
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rdi], 0
	jge	.label_1213
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, rcx
	mov	rsi, rcx
	call	getcwd
	mov	edx, 0xffffffff
	xor	r8d, r8d
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	cmovne	edx, r8d
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1214
.label_1213:
	mov	dword ptr [rbp - 4], 0
.label_1214:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d2a8
	.globl sub_40d2a8
	.type sub_40d2a8, @function
sub_40d2a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d2b0

	.globl out_uint
	.type out_uint, @function
out_uint:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, OFFSET FLAT:label_1215
	movabs	rcx, OFFSET FLAT:label_1216
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, rax
	call	make_format
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	al, 0
	call	printf
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d2fd
	.globl sub_40d2fd
	.type sub_40d2fd, @function
sub_40d2fd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d300
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1217
	call	xalloc_die
.label_1217:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
.label_1218:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
.label_1220:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff8
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1222
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax], 0
	cmp	qword ptr [rbp - 8], 0
	setne	cl
	xor	cl, 0xff
	xor	cl, 0xff
	and	cl, 1
	movzx	edx, cl
	mov	cl, dl
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 8], cl
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 9], 0
	cmp	qword ptr [rbp - 8], 0
	je	.label_1221
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 9
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	extend_abbrs
.label_1221:
	jmp	.label_1222
.label_1222:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d3e9
	.globl sub_40d3e9
	.type sub_40d3e9, @function
sub_40d3e9:

	nop	word ptr cs:[rax + rax]
.label_1223:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_1219
.label_1219:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0x77
	jae	.label_1218
	mov	eax, 0x77
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_1220
	.section	.text
	.align	32
	#Procedure 0x40d423

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_1223
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1219
	.section	.text
	.align	32
	#Procedure 0x40d450

	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x68]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d46a
	.globl sub_40d46a
	.type sub_40d46a, @function
sub_40d46a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d470

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	r8, -1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d4a8
	.globl sub_40d4a8
	.type sub_40d4a8, @function
sub_40d4a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d4b0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1224
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_1225
.label_1224:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1226
.label_1225:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_1226:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d508
	.globl sub_40d508
	.type sub_40d508, @function
sub_40d508:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d510
	.globl security_compute_create
	.type security_compute_create, @function
security_compute_create:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	ax, dx
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	word ptr [rbp - 0x12], ax
	mov	qword ptr [rbp - 0x20], rcx
	call	__errno_location
	mov	edx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, edx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d543
	.globl sub_40d543
	.type sub_40d543, @function
sub_40d543:

	nop	word ptr cs:[rax + rax]
.label_1227:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_1228:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d55e
	.globl sub_40d55e
	.type sub_40d55e, @function
sub_40d55e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d569
	.globl xmax
	.type xmax, @function
xmax:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	cmp	rsi, qword ptr [rbp - 0x10]
	jb	.label_1227
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1228
.label_1230:
	mov	rdi, qword ptr [rbp - 0x18]
	call	tzalloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1231
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1229
.label_1232:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1229:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d5c7
	.globl sub_40d5c7
	.type sub_40d5c7, @function
sub_40d5c7:

	nop	word ptr [rax + rax]
.label_1234:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 8], 0
	jne	.label_1230
.label_1233:
	mov	rax,  qword ptr [word ptr [local_tz]]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1229
.label_1231:
	mov	rdi, qword ptr [rbp - 0x10]
	call	change_env
	test	al, 1
	jne	.label_1232
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
	mov	rdi, qword ptr [rbp - 0x20]
	call	tzfree
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x28], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x28]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1229
	.section	.text
	.align	32
	#Procedure 0x40d62d

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	call	getenv_TZ
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1234
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 8]
	cmp	ecx, 0
	je	.label_1230
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	je	.label_1233
	jmp	.label_1230
.label_1236:
	jmp	.label_1235
.label_1235:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x30], rax
	mov	byte ptr [rbp - 1], 1
.label_1238:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d6a3
	.globl sub_40d6a3
	.type sub_40d6a3, @function
sub_40d6a3:

	nop	dword ptr [rax + rax]
.label_1247:
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x28], rax
.label_1246:
	jmp	.label_1236
.label_1240:
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	add	rax, 1
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	byte ptr [rax], 0
	jne	.label_1239
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1239
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x28], rax
.label_1239:
	jmp	.label_1237
	.section	.text
	.align	32
	#Procedure 0x40d70d

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:label_77
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1241
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_1244
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x38
	cmp	rax, rcx
	jae	.label_1244
.label_1241:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1238
.label_1242:
	mov	rdi, qword ptr [rbp - 0x20]
	call	tzalloc
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], rax
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1247
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1238
.label_1244:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax], 0
	je	.label_1235
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x28], rax
.label_1237:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	call	strcmp
	cmp	eax, 0
	je	.label_1236
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1240
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 9
	cmp	rax, rcx
	jne	.label_1245
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 8]
	cmp	ecx, 0
	jne	.label_1240
.label_1245:
	mov	rax, -1
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x10]
	add	rdi, 9
	sub	rax, rdi
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1243
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1238
.label_1243:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	cmp	rax, 0x77
	jae	.label_1242
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x30]
	call	extend_abbrs
	jmp	.label_1246
.label_1260:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x1000
	jne	.label_1250
	movabs	rdi, OFFSET FLAT:label_1270
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1249
.label_1271:
	movabs	rdi, OFFSET FLAT:label_1265
	call	gettext
	mov	qword ptr [rbp - 8], rax
.label_1249:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d8ce
	.globl sub_40d8ce
	.type sub_40d8ce, @function
sub_40d8ce:

	nop	word ptr [rax + rax]
.label_1255:
	movabs	rdi, OFFSET FLAT:label_1248
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
.label_1269:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1249
.label_1268:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	jne	.label_1266
	movabs	rdi, OFFSET FLAT:label_1252
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1249
.label_1259:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x2000
	jne	.label_1260
	movabs	rdi, OFFSET FLAT:label_1253
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1249
.label_1261:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_1254
	movabs	rdi, OFFSET FLAT:label_1264
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1249
.label_1266:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_1251
	movabs	rdi, OFFSET FLAT:label_1267
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1249
.label_1250:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xc000
	jne	.label_1271
	movabs	rdi, OFFSET FLAT:label_1256
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1249
.label_1263:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_1261
	movabs	rdi, OFFSET FLAT:label_1272
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1249
.label_1251:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_1263
	movabs	rdi, OFFSET FLAT:label_1257
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1249
.label_1254:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x6000
	jne	.label_1259
	movabs	rdi, OFFSET FLAT:label_1258
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1249
	.section	.text
	.align	32
	#Procedure 0x40da76

	.globl file_type
	.type file_type, @function
file_type:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdi + 0x18]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_1268
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x30], 0
	jne	.label_1255
	movabs	rdi, OFFSET FLAT:label_1262
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1269
.label_1277:
	jmp	.label_1274
.label_1276:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_1275
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40dae6

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1276
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1273
	mov	eax, 0x80
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	setne	sil
	xor	sil, 0xff
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_1273:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1277
	call	xalloc_die
.label_1275:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_1274:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dba7
	.globl sub_40dba7
	.type sub_40dba7, @function
sub_40dba7:

	nop	word ptr [rax + rax]
.label_1281:
	test	byte ptr [rbp - 0x19], 1
	je	.label_1278
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
	mov	byte ptr [rbp - 0x19], 0
.label_1278:
	jmp	.label_1280
.label_1280:
	jmp	.label_1283
.label_1283:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1279
.label_1285:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_1279:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_1282
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_1281
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_1280
.label_1282:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dc15
	.globl sub_40dc15
	.type sub_40dc15, @function
sub_40dc15:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dc1b

	.globl last_component
	.type last_component, @function
last_component:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	byte ptr [rbp - 0x19], 0
.label_1284:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_1285
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1284
.label_1290:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x60], rax
.label_1286:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1292
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_1296
.label_1294:
	jmp	.label_1297
.label_1297:
	jmp	.label_1295
.label_1292:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x68], rax
.label_1296:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x38], rax
.label_1295:
	mov	rdi, qword ptr [rbp - 0x38]
	call	malloc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_1293
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1288
.label_1291:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_1298
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1288
.label_1289:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1288
.label_1288:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dd07
	.globl sub_40dd07
	.type sub_40dd07, @function
sub_40dd07:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dd16

	.globl areadlink_with_size
	.type areadlink_with_size, @function
areadlink_with_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0x400
	mov	qword ptr [rbp - 0x28], 0x2000
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rbp - 0x28]
	jae	.label_1290
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1286
.label_1287:
	movabs	rax, 0x7fffffffffffffff
	cmp	qword ptr [rbp - 0x38], rax
	jae	.label_1289
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1294
.label_1298:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	movabs	rdi, 0x3fffffffffffffff
	cmp	qword ptr [rbp - 0x38], rdi
	ja	.label_1287
	mov	rax, qword ptr [rbp - 0x38]
	shl	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1297
.label_1293:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x38]
	call	readlink
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x40], 0
	jge	.label_1291
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_1291
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], ecx
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	ecx, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x6c], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1288
	.section	.text
	.align	32
	#Procedure 0x40de10

	.globl do_stat
	.type do_stat, @function
do_stat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	xor	eax, eax
	mov	ecx, 0xffffffff
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	r8d, OFFSET FLAT:label_29
	mov	esi, r8d
	mov	dword ptr [rbp - 0xc0], eax
	mov	dword ptr [rbp - 0xc4], ecx
	call	strcmp
	cmp	eax, 0
	mov	eax, dword ptr [rbp - 0xc4]
	mov	ecx, dword ptr [rbp - 0xc0]
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x24], eax
	cmp	ecx, dword ptr [rbp - 0x24]
	jg	.label_1300
	lea	rsi, [rbp - 0xb8]
	mov	edi, dword ptr [rbp - 0x24]
	call	fstat
	cmp	eax, 0
	je	.label_1307
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_1304
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc8], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xc8]
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1305
.label_1299:
	lea	rsi, [rbp - 0xb8]
	mov	rdi, qword ptr [rbp - 0x10]
	call	lstat
	mov	dword ptr [rbp - 0xcc], eax
.label_1303:
	mov	eax, dword ptr [rbp - 0xcc]
	cmp	eax, 0
	je	.label_1301
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_1205
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xd0], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xd8], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xd0]
	mov	rdx, qword ptr [rbp - 0xd8]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1305
.label_1307:
	jmp	.label_1306
.label_1301:
	jmp	.label_1306
.label_1306:
	mov	eax, dword ptr [rbp - 0xa0]
	and	eax, 0xf000
	cmp	eax, 0x6000
	je	.label_1308
	mov	eax, dword ptr [rbp - 0xa0]
	and	eax, 0xf000
	cmp	eax, 0x2000
	jne	.label_1302
.label_1308:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
.label_1302:
	movabs	rcx, OFFSET FLAT:print_stat
	lea	rax, [rbp - 0xb8]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x24]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	r8, rax
	call	print_it
	and	al, 1
	mov	byte ptr [rbp - 0xb9], al
	mov	al, byte ptr [rbp - 0xb9]
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_1305:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dfb9
	.globl sub_40dfb9
	.type sub_40dfb9, @function
sub_40dfb9:

	nop	word ptr cs:[rax + rax]
.label_1300:
	test	byte ptr [byte ptr [follow_links]],  1
	je	.label_1299
	lea	rsi, [rbp - 0xb8]
	mov	rdi, qword ptr [rbp - 0x10]
	call	stat
	mov	dword ptr [rbp - 0xcc], eax
	jmp	.label_1303
.label_1313:
	lea	rdi, [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	vasprintf
	cmp	eax, 0
	jge	.label_1309
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_1311
	call	xalloc_die
.label_1314:
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x25
	je	.label_1316
	jmp	.label_1313
.label_1309:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1312:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e044
	.globl sub_40e044
	.type sub_40e044, @function
sub_40e044:

	nop	word ptr cs:[rax + rax]
.label_1316:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x73
	je	.label_1315
	jmp	.label_1313
.label_1311:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1312
	.section	.text
	.align	32
	#Procedure 0x40e07d

	.globl xvasprintf
	.type xvasprintf, @function
xvasprintf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x28], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rsi
.label_1310:
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1314
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	call	xstrcat
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1312
.label_1315:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1310
	.section	.text
	.align	32
	#Procedure 0x40e0e0

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_style
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e105
	.globl sub_40e105
	.type sub_40e105, @function
sub_40e105:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e110

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x48]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e14e
	.globl sub_40e14e
	.type sub_40e14e, @function
sub_40e14e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40e150

	.globl lgetfilecon
	.type lgetfilecon, @function
lgetfilecon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e178
	.globl sub_40e178
	.type sub_40e178, @function
sub_40e178:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e180
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	edi, eax
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e1b7
	.globl sub_40e1b7
	.type sub_40e1b7, @function
sub_40e1b7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e1c0

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_1317
	cmp	dword ptr [rbp - 4], 2
	jg	.label_1317
	mov	edi, dword ptr [rbp - 4]
	call	dup_safer
	mov	dword ptr [rbp - 8], eax
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], edi
	mov	edi, dword ptr [rbp - 4]
	call	close
	mov	edi, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	mov	dword ptr [rbp - 0x14], edi
	call	__errno_location
	mov	edi, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], edi
	mov	edi, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], edi
.label_1317:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e21f
	.globl sub_40e21f
	.type sub_40e21f, @function
sub_40e21f:

	nop	
.label_1332:
	mov	eax, 9
	mov	dword ptr [rbp - 0xd0], eax
	jmp	.label_1318
.label_1318:
	mov	eax, dword ptr [rbp - 0xd0]
	mov	dword ptr [rbp - 0x94], eax
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, dword ptr [rbp - 0x94]
	mov	dword ptr [rbp - 0x98], eax
	cmp	dword ptr [rbp - 0x88], 0
	jge	.label_1321
	xor	eax, eax
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_1322
.label_1334:
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 0x7c]
	cqo	
	idiv	rcx
	mov	esi, eax
	mov	dword ptr [rbp - 0x84], esi
	mov	byte ptr [rbp - 0x89], 0
	cmp	qword ptr [rbp - 0x10], 0
	jge	.label_1329
	cmp	qword ptr [rbp - 8], 0
	je	.label_1329
	mov	eax, 0x3b9aca00
	cdq	
	idiv	dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x90], eax
	mov	eax, dword ptr [rbp - 0x90]
	sub	eax, dword ptr [rbp - 0x84]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rsi, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0xc8], eax
	mov	rax, rcx
	cqo	
	idiv	rsi
	cmp	rdx, 0
	setne	dil
	and	dil, 1
	movzx	r8d, dil
	mov	r9d, dword ptr [rbp - 0xc8]
	sub	r9d, r8d
	mov	dword ptr [rbp - 0x84], r9d
	cmp	dword ptr [rbp - 0x84], 0
	setne	dil
	and	dil, 1
	movzx	r8d, dil
	movsxd	rcx, r8d
	add	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rcx
	cmp	qword ptr [rbp - 0x10], 0
	sete	dil
	and	dil, 1
	mov	byte ptr [rbp - 0x89], dil
.label_1329:
	test	byte ptr [rbp - 0x89], 1
	je	.label_1333
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x38]
	call	out_minus_zero
	mov	dword ptr [rbp - 0xcc], eax
	jmp	.label_1343
.label_1320:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0xe0], rcx
	jmp	.label_1319
.label_1319:
	mov	rax, qword ptr [rbp - 0xe0]
	movabs	rdi, OFFSET FLAT:label_1323
	xor	ecx, ecx
	mov	edx, eax
	mov	dword ptr [rbp - 0xa0], edx
	mov	rsi,  qword ptr [word ptr [decimal_point]]
	mov	edx, dword ptr [rbp - 0x94]
	mov	r8d, dword ptr [rbp - 0x84]
	mov	r9d, dword ptr [rbp - 0xa0]
	mov	r10d, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0xe4], ecx
	mov	ecx, r8d
	mov	r8d, r9d
	mov	r9d, r10d
	mov	dword ptr [rsp], 0
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0xe8], eax
.label_1344:
	add	rsp, 0xf0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e3ba
	.globl sub_40e3ba
	.type sub_40e3ba, @function
sub_40e3ba:

	nop	word ptr [rax + rax]
.label_1350:
	mov	eax, 0x7fffffff
	mov	ecx, eax
	mov	qword ptr [rbp - 0xb0], rcx
	jmp	.label_1324
.label_1324:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	ecx, 1
	mov	edx, eax
	mov	dword ptr [rbp - 0x3c], edx
	cmp	ecx, dword ptr [rbp - 0x3c]
	jge	.label_1326
	mov	rax, qword ptr [rbp - 0x58]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x30
	sete	dl
	and	dl, 1
	movzx	ecx, dl
	mov	rax, qword ptr [rbp - 0x58]
	movsxd	rsi, ecx
	add	rax, rsi
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x18]
	sub	rax, rsi
	mov	qword ptr [rbp - 0x38], rax
	mov	rax,  qword ptr [word ptr [decimal_point_len]]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	cmp	rax, rsi
	jae	.label_1339
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax,  qword ptr [word ptr [decimal_point_len]]
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_1331
.label_1347:
	mov	eax, 0x7fffffff
	mov	ecx, eax
	mov	qword ptr [rbp - 0xa8], rcx
	jmp	.label_1348
.label_1348:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x40], ecx
	jmp	.label_1352
.label_1336:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rax, rcx
	test	byte ptr [rbp - 0x41], 1
	mov	qword ptr [rbp - 0xc0], rax
	je	.label_1340
	xor	eax, eax
	mov	dword ptr [rbp - 0xc4], eax
	jmp	.label_1346
.label_1351:
	mov	dword ptr [rbp - 0x40], 9
.label_1352:
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_1327
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax - 1]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_1327
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	byte ptr [rax], 0
.label_1349:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, -1
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	movsx	ecx, byte ptr [rax - 1]
	sub	ecx, 0x30
	cmp	ecx, 9
	jbe	.label_1349
	xor	eax, eax
	mov	esi, eax
	mov	edx, 0xa
	mov	rdi, qword ptr [rbp - 0x58]
	call	strtol
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], 0x7fffffff
	jg	.label_1350
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1324
.label_1333:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x10]
	call	out_int
	mov	dword ptr [rbp - 0xcc], eax
.label_1343:
	mov	eax, dword ptr [rbp - 0xcc]
	mov	dword ptr [rbp - 0x88], eax
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_1344
	cmp	dword ptr [rbp - 0x40], 9
	jge	.label_1332
	mov	eax, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0xd0], eax
	jmp	.label_1318
.label_1341:
	mov	rax, qword ptr [rbp - 0x78]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdx, rax
	add	rdx, 1
	mov	qword ptr [rbp - 0x70], rdx
	mov	byte ptr [rax], cl
.label_1325:
	jmp	.label_1337
.label_1337:
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1342
.label_1339:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0xb8], rcx
	jmp	.label_1331
.label_1331:
	mov	rax, qword ptr [rbp - 0xb8]
	mov	ecx, 1
	mov	edx, eax
	mov	dword ptr [rbp - 0x64], edx
	cmp	ecx, dword ptr [rbp - 0x64]
	jge	.label_1335
	mov	eax, 1
	mov	ecx, dword ptr [rbp - 0x64]
	sub	ecx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x68], ecx
	cmp	eax, dword ptr [rbp - 0x68]
	jge	.label_1345
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x78], rax
.label_1342:
	mov	rax, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rbp - 0x58]
	jae	.label_1336
	mov	rax, qword ptr [rbp - 0x78]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_1341
	mov	byte ptr [rbp - 0x41], 1
	jmp	.label_1325
.label_1340:
	movabs	rsi, OFFSET FLAT:label_1328
	mov	rdi, qword ptr [rbp - 0x70]
	mov	edx, dword ptr [rbp - 0x68]
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0xc4], eax
.label_1346:
	mov	eax, dword ptr [rbp - 0xc4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0xc0]
	add	rdx, rcx
	mov	qword ptr [rbp - 0x38], rdx
.label_1345:
	jmp	.label_1335
.label_1335:
	jmp	.label_1326
.label_1326:
	jmp	.label_1327
.label_1327:
	jmp	.label_1330
.label_1330:
	mov	dword ptr [rbp - 0x7c], 1
	mov	eax, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x80], eax
.label_1338:
	cmp	dword ptr [rbp - 0x80], 9
	jge	.label_1334
	imul	eax, dword ptr [rbp - 0x7c], 0xa
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, 1
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1338
	.section	.text
	.align	32
	#Procedure 0x40e67e

	.globl out_epoch_sec
	.type out_epoch_sec, @function
out_epoch_sec:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xf0
	mov	qword ptr [rbp - 0x10], rcx
	mov	qword ptr [rbp - 8], r8
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	esi, 0x2e
	call	memchr
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rax
	mov	dword ptr [rbp - 0x3c], 0
	mov	dword ptr [rbp - 0x40], 0
	mov	byte ptr [rbp - 0x41], 0
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1330
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x30]
	movsx	edx, byte ptr [rax + 1]
	sub	edx, 0x30
	cmp	edx, 9
	ja	.label_1351
	xor	eax, eax
	mov	esi, eax
	mov	edx, 0xa
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, 1
	mov	rdi, rcx
	call	strtol
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0x7fffffff
	jg	.label_1347
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xa8], rax
	jmp	.label_1348
.label_1321:
	mov	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0xd4], eax
.label_1322:
	mov	eax, dword ptr [rbp - 0xd4]
	mov	dword ptr [rbp - 0x9c], eax
	mov	eax, dword ptr [rbp - 0x9c]
	cmp	eax, dword ptr [rbp - 0x3c]
	jge	.label_1320
	mov	rax,  qword ptr [word ptr [decimal_point_len]]
	mov	ecx, dword ptr [rbp - 0x3c]
	sub	ecx, dword ptr [rbp - 0x9c]
	movsxd	rdx, ecx
	cmp	rax, rdx
	jae	.label_1320
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, dword ptr [rbp - 0x9c]
	movsxd	rcx, eax
	sub	rcx,  qword ptr [word ptr [decimal_point_len]]
	movsxd	rdx, dword ptr [rbp - 0x94]
	sub	rcx, rdx
	mov	qword ptr [rbp - 0xe0], rcx
	jmp	.label_1319
	.section	.text
	.align	32
	#Procedure 0x40e7b0

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	__fpending
	cmp	rax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x11], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	ferror_unlocked
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x12], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x13], cl
	test	byte ptr [rbp - 0x12], 1
	jne	.label_1353
	test	byte ptr [rbp - 0x13], 1
	je	.label_1354
	test	byte ptr [rbp - 0x11], 1
	jne	.label_1353
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_1354
.label_1353:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_1355
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1355:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1356
.label_1354:
	mov	dword ptr [rbp - 4], 0
.label_1356:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e859
	.globl sub_40e859
	.type sub_40e859, @function
sub_40e859:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e860
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1357
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1358
.label_1357:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1358
.label_1358:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x40], rax
	mov	r8d, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x4c], r8d
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x4c]
	mov	dword ptr [rax], r8d
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e925
	.globl sub_40e925
	.type sub_40e925, @function
sub_40e925:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e930

	.globl cdb_free
	.type cdb_free, @function
cdb_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	eax, dword ptr [rdi]
	jg	.label_1359
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax]
	call	close
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 9], cl
	test	byte ptr [rbp - 9], 1
	jne	.label_1363
	jmp	.label_1362
.label_1362:
	jmp	.label_1359
.label_1359:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e97b
	.globl sub_40e97b
	.type sub_40e97b, @function
sub_40e97b:

	nop	word ptr cs:[rax + rax]
.label_1363:
	movabs	rdi, OFFSET FLAT:label_1360
	movabs	rsi, OFFSET FLAT:label_665
	mov	edx, 0x40
	movabs	rcx, OFFSET FLAT:label_1361
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x40e9b0

	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x28], -1
	mov	qword ptr [rbp - 0x20], -1
	movups	xmm0, xmmword ptr [rbp - 0x28]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e9da
	.globl sub_40e9da
	.type sub_40e9da, @function
sub_40e9da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e9e0

	.globl sub_40e9e0
	.type sub_40e9e0, @function
sub_40e9e0:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rax + 0x10]
	call	out_int
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_1364
	.section	.text
	.align	32
	#Procedure 0x40ea00

	.globl print_statfs
	.type print_statfs, @function
print_statfs:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	dword ptr [rbp - 0x18], ecx
	mov	qword ptr [rbp - 0x20], r8
	mov	qword ptr [rbp - 0x28], r9
	mov	qword ptr [rbp - 0x30], r9
	mov	byte ptr [rbp - 0x31], 0
	mov	ecx, dword ptr [rbp - 0x14]
	add	ecx, -0x53
	mov	esi, ecx
	sub	ecx, 0x21
	mov	qword ptr [rbp - 0x68], rsi
	mov	dword ptr [rbp - 0x6c], ecx
	ja	.label_1365
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1366]]
	jmp	rcx
.label_1365:
	mov	edi, 0x3f
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputc_unlocked
	mov	dword ptr [rbp - 0xb0], eax
.label_1364:
	mov	al, byte ptr [rbp - 0x31]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ea78
	.globl sub_40ea78
	.type sub_40ea78, @function
sub_40ea78:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ea7d

	.globl sub_40ea7d
	.type sub_40ea7d, @function
sub_40ea7d:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x38
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x48], 0
	mov	dword ptr [rbp - 0x4c], 2
	mov	dword ptr [rbp - 0x50], 0
.label_1368:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x4c]
	mov	byte ptr [rbp - 0x6d], cl
	jge	.label_1369
	movsxd	rax, dword ptr [rbp - 0x50]
	shl	rax, 2
	cmp	rax, 8
	setb	cl
	mov	byte ptr [rbp - 0x6d], cl
.label_1369:
	mov	al, byte ptr [rbp - 0x6d]
	test	al, 1
	jne	.label_1367
	jmp	.label_1370
.label_1367:
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, 1
	sub	eax, dword ptr [rbp - 0x50]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rdx + rcx*4]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x58]
	mov	eax, dword ptr [rbp - 0x50]
	shl	eax, 3
	movsxd	rdx, eax
	shl	rdx, 2
	mov	qword ptr [rbp - 0x78], rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x78]
	shl	rdx, cl
	or	rdx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rdx
	mov	eax, dword ptr [rbp - 0x50]
	add	eax, 1
	mov	dword ptr [rbp - 0x50], eax
	jmp	.label_1368
	.section	.text
	.align	32
	#Procedure 0x40eb22

	.globl sub_40eb22
	.type sub_40eb22, @function
sub_40eb22:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rax + 8]
	call	out_uint
	mov	dword ptr [rbp - 0xa0], eax
	jmp	.label_1364
	.section	.text
	.align	32
	#Procedure 0x40eb42

	.globl sub_40eb42
	.type sub_40eb42, @function
sub_40eb42:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rax + 0x30]
	call	out_int
	mov	dword ptr [rbp - 0xac], eax
	jmp	.label_1364
	.section	.text
	.align	32
	#Procedure 0x40eb62

	.globl sub_40eb62
	.type sub_40eb62, @function
sub_40eb62:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_1371
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x60], rax
.label_1371:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x60]
	call	out_uint
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_1364
	.section	.text
	.align	32
	#Procedure 0x40eba1

	.globl sub_40eba1
	.type sub_40eba1, @function
sub_40eba1:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	call	out_string
	jmp	.label_1364
	.section	.text
	.align	32
	#Procedure 0x40ebb7

	.globl sub_40ebb7
	.type sub_40ebb7, @function
sub_40ebb7:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rax + 0x40]
	call	out_uint
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1364
	.section	.text
	.align	32
	#Procedure 0x40ebd4

	.globl sub_40ebd4
	.type sub_40ebd4, @function
sub_40ebd4:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x88], rdi
	mov	rdi, rax
	mov	qword ptr [rbp - 0x90], rsi
	call	human_fstype
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rdx, rax
	call	out_string
	jmp	.label_1364
.label_1370:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x48]
	call	out_uint_x
	jmp	.label_1364
	.section	.text
	.align	32
	#Procedure 0x40ec27

	.globl sub_40ec27
	.type sub_40ec27, @function
sub_40ec27:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rax + 0x18]
	call	out_int
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1364
	.section	.text
	.align	32
	#Procedure 0x40ec47

	.globl sub_40ec47
	.type sub_40ec47, @function
sub_40ec47:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rax]
	call	out_uint_x
	jmp	.label_1364
	.section	.text
	.align	32
	#Procedure 0x40ec60

	.globl sub_40ec60
	.type sub_40ec60, @function
sub_40ec60:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rax + 0x28]
	call	out_uint
	mov	dword ptr [rbp - 0xa8], eax
	jmp	.label_1364
	.section	.text
	.align	32
	#Procedure 0x40ec80

	.globl sub_40ec80
	.type sub_40ec80, @function
sub_40ec80:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rax + 0x20]
	call	out_int
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1364
	.section	.text
	.align	32
	#Procedure 0x40eca0

	.globl out_int
	.type out_int, @function
out_int:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, OFFSET FLAT:label_142
	movabs	rcx, OFFSET FLAT:label_1372
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, rax
	call	make_format
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	al, 0
	call	printf
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40eced
	.globl sub_40eced
	.type sub_40eced, @function
sub_40eced:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ecf0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	push	rbp
	mov	rbp, rsp
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x40ecfe
	.globl sub_40ecfe
	.type sub_40ecfe, @function
sub_40ecfe:

	pop	rbp
	ret	
.label_1376:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_1373
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
.label_1378:
	jmp	.label_1380
.label_1380:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1377
.label_1379:
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x50], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ed6c

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:label_1375
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, rax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	qword ptr [rbp - 0x20], 0
	mov	dword ptr [rbp - 0x2c], eax
.label_1377:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1379
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1374
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rcx, qword ptr [rbp - 0x20]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	je	.label_1376
.label_1374:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_1381
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	imul	rdx, qword ptr [rbp - 0x20]
	add	rcx, rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1378
	.section	.text
	.align	32
	#Procedure 0x40ee50

	.globl setenv_TZ
	.type setenv_TZ, @function
setenv_TZ:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_1382
	movabs	rdi, OFFSET FLAT:label_1383
	mov	edx, 1
	mov	rsi, qword ptr [rbp - 8]
	call	setenv
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1384
.label_1382:
	movabs	rdi, OFFSET FLAT:label_1383
	call	unsetenv
	mov	dword ptr [rbp - 0xc], eax
.label_1384:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40eea2
	.globl sub_40eea2
	.type sub_40eea2, @function
sub_40eea2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40eeb0

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	call	gettext
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_1390
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1387
.label_1393:
	movabs	rsi, OFFSET FLAT:label_1389
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1394
	movabs	rax, OFFSET FLAT:label_1385
	movabs	rcx, OFFSET FLAT:label_1386
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1387
.label_1394:
	movabs	rax, OFFSET FLAT:label_1391
	movabs	rcx, OFFSET FLAT:label_1392
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_1387:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ef58
	.globl sub_40ef58
	.type sub_40ef58, @function
sub_40ef58:

	nop	dword ptr [rax + rax]
.label_1390:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_1388
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1393
	movabs	rax, OFFSET FLAT:label_1395
	movabs	rcx, OFFSET FLAT:label_1396
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1387
	.section	.text
	.align	32
	#Procedure 0x40efb0
	.globl matchpathcon_init_prefix
	.type matchpathcon_init_prefix, @function
matchpathcon_init_prefix:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40efd8
	.globl sub_40efd8
	.type sub_40efd8, @function
sub_40efd8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40efe0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:quote_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f013
	.globl sub_40f013
	.type sub_40f013, @function
sub_40f013:

	nop	word ptr cs:[rax + rax]
.label_1402:
	lea	rsi, [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x18]
	call	lgetfilecon
	mov	dword ptr [rbp - 0x28], eax
.label_1403:
	mov	eax, dword ptr [rbp - 0x28]
	cmp	eax, 0
	jge	.label_1398
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_1397
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x2c]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	qword ptr [rbp - 0x20], 0
	mov	byte ptr [rbp - 0x21], 1
.label_1398:
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x10]
	mov	ecx, OFFSET FLAT:label_208
	mov	esi, ecx
	mov	rdi, rax
	call	strcpy
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x48], rdi
	je	.label_1400
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1399
	.section	.text
	.align	32
	#Procedure 0x40f0c1

	.globl out_file_context
	.type out_file_context, @function
out_file_context:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rbp - 0x21], 0
	test	byte ptr [byte ptr [follow_links]],  1
	je	.label_1402
	lea	rsi, [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x18]
	call	getfilecon
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_1403
.label_1400:
	movabs	rax, OFFSET FLAT:label_192
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1399
.label_1399:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rax
	mov	al, 0
	call	printf
	cmp	qword ptr [rbp - 0x20], 0
	mov	dword ptr [rbp - 0x54], eax
	je	.label_1401
	mov	rdi, qword ptr [rbp - 0x20]
	call	freecon
.label_1401:
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f146
	.globl sub_40f146
	.type sub_40f146, @function
sub_40f146:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f150
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1404
	jmp	.label_1406
.label_1406:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1405
.label_1404:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1405:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f187
	.globl sub_40f187
	.type sub_40f187, @function
sub_40f187:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f190
	.globl base_len
	.type base_len, @function
base_len:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	mov	qword ptr [rbp - 0x10], rax
.label_1409:
	xor	eax, eax
	mov	cl, al
	mov	eax, 1
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x19], cl
	jae	.label_1407
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	mov	byte ptr [rbp - 0x19], sil
.label_1407:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_1408
	jmp	.label_1411
.label_1408:
	jmp	.label_1410
.label_1410:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1409
.label_1411:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f214
	.globl sub_40f214
	.type sub_40f214, @function
sub_40f214:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f220

	.globl find_non_slash
	.type find_non_slash, @function
find_non_slash:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rsi, OFFSET FLAT:label_684
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	strspn
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f251
	.globl sub_40f251
	.type sub_40f251, @function
sub_40f251:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f260

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x58]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f27a
	.globl sub_40f27a
	.type sub_40f27a, @function
sub_40f27a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f280

	.globl memcpy_lowcase
	.type memcpy_lowcase, @function
memcpy_lowcase:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_1413:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	cmp	rax, 0
	jbe	.label_1412
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rcx + rax]
	call	tolower
	mov	dl, al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + rcx], dl
	jmp	.label_1413
.label_1412:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f2da
	.globl sub_40f2da
	.type sub_40f2da, @function
sub_40f2da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f2e0
	.globl xsum3
	.type xsum3, @function
xsum3:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	xsum
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	xsum
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f313
	.globl sub_40f313
	.type sub_40f313, @function
sub_40f313:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f320

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi]
	and	eax, 0x100
	cmp	eax, 0
	je	.label_1414
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_1414:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f35b
	.globl sub_40f35b
	.type sub_40f35b, @function
sub_40f35b:

	nop	dword ptr [rax + rax]
.label_1416:
	jmp	.label_1415
.label_1415:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f373
	.globl sub_40f373
	.type sub_40f373, @function
sub_40f373:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f379

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	add	edi, 0xffffd828
	sub	edi, 0xb
	mov	dword ptr [rbp - 8], edi
	ja	.label_1416
	jmp	.label_1417
.label_1417:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1415
	.section	.text
	.align	32
	#Procedure 0x40f3b0
	.globl getcon
	.type getcon, @function
getcon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f3d4
	.globl sub_40f3d4
	.type sub_40f3d4, @function
sub_40f3d4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f3e0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_1420:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1418
	jmp	.label_1419
.label_1419:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1420
.label_1418:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f450

	.globl extend_abbrs
	.type extend_abbrs, @function
extend_abbrs:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + rdx], 0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f487
	.globl sub_40f487
	.type sub_40f487, @function
sub_40f487:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f490
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_1421
	jmp	.label_1424
.label_1424:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1421
	jmp	.label_1422
.label_1422:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1423
	jmp	.label_1421
.label_1421:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1425
.label_1423:
	mov	byte ptr [rbp - 1], 0
.label_1425:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f4f5
	.globl sub_40f4f5
	.type sub_40f4f5, @function
sub_40f4f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f500

	.globl xasprintf
	.type xasprintf, @function
xasprintf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x190
	test	al, al
	movaps	xmmword ptr [rbp - 0xf0], xmm7
	movaps	xmmword ptr [rbp - 0x100], xmm6
	movaps	xmmword ptr [rbp - 0x110], xmm5
	movaps	xmmword ptr [rbp - 0x120], xmm4
	movaps	xmmword ptr [rbp - 0x130], xmm3
	movaps	xmmword ptr [rbp - 0x140], xmm2
	movaps	xmmword ptr [rbp - 0x150], xmm1
	movaps	xmmword ptr [rbp - 0x160], xmm0
	mov	qword ptr [rbp - 0x168], rdi
	mov	qword ptr [rbp - 0x170], r9
	mov	qword ptr [rbp - 0x178], r8
	mov	qword ptr [rbp - 0x180], rcx
	mov	qword ptr [rbp - 0x188], rdx
	mov	qword ptr [rbp - 0x190], rsi
	je	.label_1426
	movaps	xmm0, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0xf0]
	movaps	xmmword ptr [rbp - 0x40], xmm7
.label_1426:
	mov	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rdx, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rsi, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rsi
	mov	rdi, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0xd8], rdi
	mov	r8, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 8], r8
	lea	r8, [rbp - 0xe0]
	mov	qword ptr [rbp - 0x10], r8
	lea	r8, [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], r8
	mov	dword ptr [rbp - 0x1c], 0x30
	mov	dword ptr [rbp - 0x20], 8
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rbp - 0x20]
	call	xvasprintf
	mov	qword ptr [rbp - 0x28], rax
	add	rsp, 0x190
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f662
	.globl sub_40f662
	.type sub_40f662, @function
sub_40f662:

	nop	word ptr cs:[rax + rax]
.label_1428:
	mov	byte ptr [rbp - 1], 0
.label_1430:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f67e
	.globl sub_40f67e
	.type sub_40f67e, @function
sub_40f67e:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f686
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	sub	edi, 0x20
	mov	dword ptr [rbp - 0xc], eax
	mov	dword ptr [rbp - 0x10], edi
	jb	.label_1427
	jmp	.label_1429
.label_1429:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1428
	jmp	.label_1427
.label_1427:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1430
	.section	.text
	.align	32
	#Procedure 0x40f6c0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	esi, esi
	mov	edx, 3
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	mov	al, 0
	call	rpl_fcntl
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f6e2
	.globl sub_40f6e2
	.type sub_40f6e2, @function
sub_40f6e2:

	nop	word ptr cs:[rax + rax]
.label_1432:
	mov	byte ptr [rbp - 1], 0
.label_1434:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f6fe
	.globl sub_40f6fe
	.type sub_40f6fe, @function
sub_40f6fe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40f700
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_1431
	jmp	.label_1433
.label_1433:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_1432
	jmp	.label_1431
.label_1431:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1434
.label_1562:
	jmp	.label_1616
.label_1616:
	jmp	.label_1555
.label_1555:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_1628
.label_1508:
	jmp	.label_1471
.label_1471:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1613
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_1486
.label_1449:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1502
	test	byte ptr [rbp - 0x79], 1
	je	.label_1502
	mov	dword ptr [rbp - 0x34], 4
.label_1502:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rbp - 0x34]
	mov	r9d, dword ptr [rbp - 0x38]
	and	r9d, 0xfffffffd
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x148], rcx
	mov	rcx, r8
	mov	r8d, eax
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x10], rax
.label_1469:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f7f3
	.globl sub_40f7f3
	.type sub_40f7f3, @function
sub_40f7f3:

	nop	dword ptr [rax + rax]
.label_1442:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_1453:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_1436
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_1436
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1447
	jmp	.label_1449
.label_1566:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1450
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_1450:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1465
.label_1465:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1467
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1467:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1636
.label_1636:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1477
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1477:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1484
.label_1484:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1491
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_1491:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1457
.label_1765:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_1500
.label_1510:
	test	byte ptr [rbp - 0x81], 1
	je	.label_1501
	jmp	.label_1596
.label_1596:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1505
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1505:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_1501:
	jmp	.label_1439
.label_1439:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_1517
	jmp	.label_1525
.label_1455:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_1459
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1459
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_1459
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_1536
	jmp	.label_1546
.label_1546:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_1536
	jmp	.label_1550
.label_1550:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_1536
	jmp	.label_1516
.label_1516:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_1536
	jmp	.label_1558
.label_1558:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_1561
	jmp	.label_1536
.label_1536:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1566
	jmp	.label_1449
.label_1772:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1569
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1572
	jmp	.label_1449
.label_1774:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1574
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1576
	jmp	.label_1449
.label_1773:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_1578
	jmp	.label_1584
.label_1584:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_1455
	jmp	.label_1589
.label_1835:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_1834:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1592
	jmp	.label_1595
.label_1595:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1597
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1597:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1592
.label_1592:
	movabs	rax, OFFSET FLAT:label_1392
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_1483
.label_1832:
	mov	byte ptr [rbp - 0x79], 1
.label_1831:
	mov	byte ptr [rbp - 0x7b], 1
.label_1833:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1609
	mov	byte ptr [rbp - 0x79], 1
.label_1609:
	jmp	.label_1600
.label_1600:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1617
	jmp	.label_1454
.label_1454:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1614
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1614:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1617
.label_1617:
	movabs	rax, OFFSET FLAT:label_1391
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_1483
.label_1768:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_1471
.label_1492:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_1494:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_1630
	jmp	.label_1633
.label_1630:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_1436
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_1436
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_1436
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_1442
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_1442
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_1453
.label_1561:
	jmp	.label_1457
.label_1457:
	jmp	.label_1459
.label_1459:
	jmp	.label_1461
.label_1447:
	mov	byte ptr [rbp - 0x81], 1
.label_1436:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x7f], dl
	movzx	esi, byte ptr [rbp - 0x7f]
	mov	eax, esi
	mov	rcx, rax
	sub	rcx, 0x7e
	mov	qword ptr [rbp - 0xf0], rax
	mov	qword ptr [rbp - 0xf8], rcx
	ja	.label_1464
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1635]]
	jmp	rcx
.label_1577:
	jmp	.label_1538
.label_1538:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1483
.label_1514:
	jmp	.label_1506
.label_1483:
	mov	qword ptr [rbp - 0x58], 0
.label_1568:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1492
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_1494
.label_1836:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_1483
.label_1589:
	jmp	.label_1461
.label_1461:
	jmp	.label_1435
.label_1463:
	jmp	.label_1500
.label_1500:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1508
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1508
	jmp	.label_1449
.label_1517:
	jmp	.label_1512
.label_1512:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_1513
	test	byte ptr [rbp - 0x82], 1
	jne	.label_1513
	jmp	.label_1521
.label_1521:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1523
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1523:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1529
.label_1529:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1446
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1446:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1513:
	jmp	.label_1542
.label_1542:
	jmp	.label_1543
.label_1543:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1544
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_1544:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 1]
	mov	byte ptr [rbp - 0x7f], dl
	jmp	.label_1549
	.section	.text
	.align	32
	#Procedure 0x40fe17

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x158
	mov	rax, qword ptr [rbp + 0x20]
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], r8d
	mov	dword ptr [rbp - 0x38], r9d
	mov	qword ptr [rbp - 0x40], r11
	mov	qword ptr [rbp - 0x48], r10
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x70], 0
	mov	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0x79], 0
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	sete	bl
	and	bl, 1
	mov	byte ptr [rbp - 0x7a], bl
	mov	r8d, dword ptr [rbp - 0x38]
	and	r8d, 2
	cmp	r8d, 0
	setne	bl
	and	bl, 1
	mov	byte ptr [rbp - 0x7b], bl
	mov	byte ptr [rbp - 0x7c], 0
	mov	byte ptr [rbp - 0x7d], 0
	mov	byte ptr [rbp - 0x7e], 1
.label_1629:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_1581
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1587]]
	jmp	rcx
.label_1581:
	call	abort
.label_1518:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1593
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1593
	jmp	.label_1599
.label_1599:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1552
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1552:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1603
.label_1603:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1604
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1604:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1610
.label_1610:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1612
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1612:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1593:
	jmp	.label_1615
.label_1615:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1618
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1618:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1622
.label_1622:
	jmp	.label_1624
.label_1624:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1626
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_1626:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1632
.label_1632:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1634
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
.label_1852:
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_1634:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_1439
.label_1473:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1445
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1445
	test	byte ptr [rbp - 0x7d], 1
	je	.label_1445
	test	byte ptr [rbp - 0x7e], 1
	je	.label_1452
	mov	r8d, 5
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x40]
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1469
.label_1764:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_1471
.label_1613:
	jmp	.label_1435
.label_1578:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1474
	jmp	.label_1449
.label_1775:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1476
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_1479
	jmp	.label_1485
.label_1444:
	jmp	.label_1486
.label_1486:
	jmp	.label_1488
.label_1488:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1490
	jmp	.label_1449
.label_1586:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_1540
	mov	byte ptr [rbp - 0x91], 0
.label_1443:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_1498
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_1498:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_1511
	jmp	.label_1514
.label_1511:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1443
.label_1479:
	jmp	.label_1524
.label_1524:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_1526
	jmp	.label_1435
.label_1540:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1468
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1468
	mov	qword ptr [rbp - 0xb8], 1
.label_1628:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_1533
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0xb8]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	add	esi, -0x5b
	sub	esi, 2
	mov	dword ptr [rbp - 0x130], edx
	mov	dword ptr [rbp - 0x134], esi
	jb	.label_1541
	jmp	.label_1551
.label_1551:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_1541
	jmp	.label_1554
.label_1554:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_1541
	jmp	.label_1559
.label_1559:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_1562
	jmp	.label_1541
.label_1541:
	jmp	.label_1449
.label_1525:
	jmp	.label_1458
.label_1837:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_1567
	movabs	rdi, OFFSET FLAT:label_1570
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_1391
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_1567:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1538
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_1591:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_1577
	jmp	.label_1579
.label_1579:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1582
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_1582:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1588
.label_1588:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1591
.label_1531:
	jmp	.label_1522
.label_1522:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1598
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_1598:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1469
.label_1571:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1607
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_1607:
	jmp	.label_1480
.label_1480:
	lea	rdi, [rbp - 0xa4]
	lea	rcx, [rbp - 0xa0]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x58]
	add	rsi, qword ptr [rbp - 0x90]
	sub	rdx, rsi
	mov	rsi, rax
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0xb0], rax
	cmp	qword ptr [rbp - 0xb0], 0
	jne	.label_1621
	jmp	.label_1506
.label_1452:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1625
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_1625
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_1629
.label_1830:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_1483
.label_1766:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_1500
.label_1572:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1631
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_1631
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_1631:
	jmp	.label_1440
.label_1440:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1470
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1470:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1507
.label_1507:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1448
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1448:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1456
.label_1456:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1462
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1462:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1569:
	jmp	.label_1435
.label_1633:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_1473
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1473
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1473
	jmp	.label_1449
.label_1490:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1478
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1478
	jmp	.label_1487
.label_1487:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1489
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1489:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1548
.label_1548:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1499
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1499:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1504
.label_1504:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1509
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1509:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1478:
	jmp	.label_1519
.label_1519:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1520
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1520:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1528
.label_1528:
	jmp	.label_1458
.label_1458:
	jmp	.label_1530
.label_1530:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_1532
	test	byte ptr [rbp - 0x82], 1
	jne	.label_1532
	jmp	.label_1605
.label_1605:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1539
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1539:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1590
.label_1590:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1611
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1611:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1532:
	jmp	.label_1451
.label_1451:
	jmp	.label_1460
.label_1460:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1466
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_1466:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_1563
	mov	byte ptr [rbp - 0x7e], 0
.label_1563:
	jmp	.label_1547
.label_1547:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_1568
.label_1767:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_1471
.label_1560:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1573
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1573
	jmp	.label_1575
.label_1575:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1497
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1497:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1580
.label_1580:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1585
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1585:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1496
.label_1496:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1594
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1594:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1573:
	jmp	.label_1601
.label_1601:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1602
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1602:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1606
.label_1606:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_1608
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1608
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_1608
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_1608
	jmp	.label_1619
.label_1619:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1620
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_1620:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1623
.label_1623:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1627
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_1627:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1608
.label_1608:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_1553
.label_1576:
	jmp	.label_1458
.label_1771:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_1435
.label_1503:
	jmp	.label_1435
.label_1435:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1437
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1438
.label_1437:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1441
.label_1438:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1441
	movzx	eax, byte ptr [rbp - 0x7f]
	mov	ecx, eax
	shr	rcx, 5
	mov	rdx, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rdx + rcx*4]
	movzx	esi, byte ptr [rbp - 0x7f]
	mov	ecx, esi
	and	rcx, 0x1f
	mov	esi, ecx
	mov	ecx, esi
	shr	eax, cl
	and	eax, 1
	cmp	eax, 0
	jne	.label_1444
.label_1441:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_1444
	jmp	.label_1458
.label_1574:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1463
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1463
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_1463
	jmp	.label_1458
.label_1533:
	jmp	.label_1468
.label_1468:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_1472
	mov	byte ptr [rbp - 0x91], 0
.label_1472:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1475
.label_1475:
	jmp	.label_1481
.label_1481:
	jmp	.label_1482
.label_1482:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_1480
.label_1506:
	jmp	.label_1493
.label_1493:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_1495
	test	byte ptr [rbp - 0x79], 1
	je	.label_1503
	test	byte ptr [rbp - 0x91], 1
	jne	.label_1503
.label_1495:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_1549:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1510
	test	byte ptr [rbp - 0x91], 1
	jne	.label_1510
	jmp	.label_1515
.label_1515:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1518
	jmp	.label_1449
.label_1769:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_1500
.label_1474:
	jmp	.label_1461
.label_1625:
	jmp	.label_1527
.label_1527:
	jmp	.label_1445
.label_1445:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_1522
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1522
	jmp	.label_1534
.label_1534:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_1531
	jmp	.label_1535
.label_1535:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1537
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_1537:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1545
.label_1545:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1534
.label_1476:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_1479
.label_1485:
	jmp	.label_1435
.label_1763:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_1471
.label_1583:
	jmp	.label_1553
.label_1553:
	jmp	.label_1435
.label_1565:
	jmp	.label_1435
.label_1762:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1556
	jmp	.label_1557
.label_1557:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1560
	jmp	.label_1449
.label_1526:
	jmp	.label_1564
.label_1564:
	mov	byte ptr [rbp - 0x83], 1
.label_1770:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1565
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1565
	jmp	.label_1449
.label_1464:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_1571
	mov	qword ptr [rbp - 0x90], 1
	movzx	eax, byte ptr [rbp - 0x7f]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x128], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x128]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	cmp	edx, 0
	setne	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x91], sil
	jmp	.label_1493
.label_1556:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_1583
	jmp	.label_1547
.label_1621:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_1586
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_1506
.label_1637:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410aea
	.globl sub_410aea
	.type sub_410aea, @function
sub_410aea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410af0

	.globl memcpy_uppcase
	.type memcpy_uppcase, @function
memcpy_uppcase:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_1638:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	cmp	rax, 0
	jbe	.label_1637
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rcx + rax]
	call	toupper
	mov	dl, al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + rcx], dl
	jmp	.label_1638
	.section	.text
	.align	32
	#Procedure 0x410b40

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rdi,  qword ptr [word ptr [local_tz]]
	jne	.label_1639
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1641
.label_1639:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
	mov	rdi, qword ptr [rbp - 0x10]
	call	change_env
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
	test	byte ptr [rbp - 0x15], 1
	jne	.label_1640
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_1640:
	mov	rdi, qword ptr [rbp - 0x10]
	call	tzfree
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x1c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rax], ecx
	mov	dl, byte ptr [rbp - 0x15]
	and	dl, 1
	mov	byte ptr [rbp - 1], dl
.label_1641:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410bc3
	.globl sub_410bc3
	.type sub_410bc3, @function
sub_410bc3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410bd0

	.globl freecon
	.type freecon, @function
freecon:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410bda
	.globl sub_410bda
	.type sub_410bda, @function
sub_410bda:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410be0
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quote_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410c07
	.globl sub_410c07
	.type sub_410c07, @function
sub_410c07:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410c10
	.globl setfilecon
	.type setfilecon, @function
setfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410c38
	.globl sub_410c38
	.type sub_410c38, @function
sub_410c38:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410c40

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rax, [rbp - 0x60]
	movabs	r9, OFFSET FLAT:default_quoting_options
	mov	r10d, 0x38
	mov	r11d, r10d
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, rax
	mov	rdi, rcx
	mov	rsi, r9
	mov	rdx, r11
	mov	qword ptr [rbp - 0x68], rax
	call	memcpy
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x68]
	call	set_custom_quoting
	lea	rcx, [rbp - 0x60]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	quotearg_n_options
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410cb2
	.globl sub_410cb2
	.type sub_410cb2, @function
sub_410cb2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410cc0

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	movzx	eax, byte ptr [rbp - 1]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410cd0

	.globl isdst_differ
	.type isdst_differ, @function
isdst_differ:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	cl, al
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	cmp	dword ptr [rbp - 4], 0
	setne	dl
	xor	dl, 0xff
	and	dl, 1
	movzx	eax, dl
	cmp	dword ptr [rbp - 8], 0
	setne	dl
	xor	dl, 0xff
	and	dl, 1
	movzx	esi, dl
	cmp	eax, esi
	mov	byte ptr [rbp - 9], cl
	je	.label_1642
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 4]
	mov	byte ptr [rbp - 9], cl
	jg	.label_1642
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 8]
	setle	cl
	mov	byte ptr [rbp - 9], cl
.label_1642:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410d30

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edi, 0xe
	call	rpl_nl_langinfo
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1643
	movabs	rax, OFFSET FLAT:label_77
	mov	qword ptr [rbp - 8], rax
.label_1643:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1644
	movabs	rax, OFFSET FLAT:label_1645
	mov	qword ptr [rbp - 8], rax
.label_1644:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410d87
	.globl sub_410d87
	.type sub_410d87, @function
sub_410d87:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410d90

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1650
	movabs	rdi, OFFSET FLAT:label_1647
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_1646:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_1653:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_1649
	movabs	rsi, OFFSET FLAT:label_1648
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_1649
	movabs	rsi, OFFSET FLAT:label_1651
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_1652
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_1652:
	jmp	.label_1649
.label_1649:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410e7b
	.globl sub_410e7b
	.type sub_410e7b, @function
sub_410e7b:

	nop	dword ptr [rax]
.label_1650:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1646
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1653
	.section	.text
	.align	32
	#Procedure 0x410eb0

	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x48]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410eca
	.globl sub_410eca
	.type sub_410eca, @function
sub_410eca:

	nop	word ptr [rax + rax]
.label_1655:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	call	argmatch_invalid
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	call	argmatch_valid
	call	qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], -1
.label_1654:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410f07
	.globl sub_410f07
	.type sub_410f07, @function
sub_410f07:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410f0f
	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	call	argmatch
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jl	.label_1655
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1654
	.section	.text
	.align	32
	#Procedure 0x410f60

	.globl iso_week_days
	.type iso_week_days, @function
iso_week_days:
	push	rbp
	mov	rbp, rsp
	mov	eax, 7
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 0xc], 0x17a
	mov	esi, dword ptr [rbp - 4]
	mov	edi, dword ptr [rbp - 4]
	sub	edi, dword ptr [rbp - 8]
	add	edi, 4
	add	edi, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0x10]
	idiv	edi
	sub	esi, edx
	add	esi, 4
	sub	esi, 1
	mov	eax, esi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410f9c
	.globl sub_410f9c
	.type sub_410f9c, @function
sub_410f9c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x410fa0

	.globl print_it
	.type print_it, @function
print_it:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	byte ptr [rbp - 0x29], 0
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	add	rax, 2
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x38]
	call	xmalloc
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x48], rax
.label_1684:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	byte ptr [rax], 0
	je	.label_1689
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x25
	mov	dword ptr [rbp - 0x6c], ecx
	mov	dword ptr [rbp - 0x70], edx
	je	.label_1692
	jmp	.label_1661
.label_1661:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x5c
	mov	dword ptr [rbp - 0x74], eax
	je	.label_1664
	jmp	.label_1669
.label_1664:
	test	byte ptr [byte ptr [interpret_backslash_escapes]],  1
	jne	.label_1670
	mov	edi, 0x5c
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1676
.label_1662:
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax + 1]
	sub	ecx, 0x30
	mov	dword ptr [rbp - 0xb8], ecx
.label_1658:
	mov	eax, dword ptr [rbp - 0xb8]
	mov	dword ptr [rbp - 0xb4], eax
.label_1693:
	mov	eax, dword ptr [rbp - 0xb4]
	mov	dword ptr [rbp - 0x68], eax
	mov	rcx, qword ptr [rbp - 0x48]
	add	rcx, 1
	mov	qword ptr [rbp - 0x48], rcx
	mov	rcx, qword ptr [rbp - 0x48]
	movsx	edi, byte ptr [rcx + 1]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0xc0], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xc0]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x1000
	cmp	edi, 0
	je	.label_1667
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	ecx, dword ptr [rbp - 0x68]
	shl	ecx, 4
	mov	rax, qword ptr [rbp - 0x48]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0x61
	mov	dword ptr [rbp - 0xc4], ecx
	jl	.label_1660
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x66
	jg	.label_1660
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x61
	add	ecx, 0xa
	mov	dword ptr [rbp - 0xc8], ecx
	jmp	.label_1690
.label_1692:
	movabs	rsi, OFFSET FLAT:printf_flags
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	rdi, rax
	call	strspn
	movabs	rsi, OFFSET FLAT:digits
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	mov	rdi, qword ptr [rbp - 0x58]
	call	strspn
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_1680
	movabs	rsi, OFFSET FLAT:digits
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	rdi, rax
	call	strspn
	add	rax, 1
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rax
.label_1680:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x48]
	inc	rcx
	sub	rax, rcx
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x58]
	movsx	edx, byte ptr [rax]
	mov	dword ptr [rbp - 0x5c], edx
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x50]
	inc	rax
	mov	rdx, rax
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x48], rcx
	mov	r8d, dword ptr [rbp - 0x5c]
	test	r8d, r8d
	mov	qword ptr [rbp - 0x80], rax
	mov	dword ptr [rbp - 0x84], r8d
	je	.label_1675
	jmp	.label_1686
.label_1686:
	mov	eax, dword ptr [rbp - 0x84]
	sub	eax, 0x25
	mov	dword ptr [rbp - 0x88], eax
	je	.label_1687
	jmp	.label_1691
.label_1670:
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x48]
	add	rcx, 1
	mov	qword ptr [rbp - 0x48], rcx
	mov	rcx, qword ptr [rbp - 0x48]
	movsx	edx, byte ptr [rcx]
	cmp	eax, edx
	jg	.label_1665
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x37
	jg	.label_1665
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	mov	dword ptr [rbp - 0x60], ecx
	mov	dword ptr [rbp - 0x64], 1
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
.label_1672:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x64], 3
	mov	byte ptr [rbp - 0x9d], cl
	jge	.label_1681
	xor	eax, eax
	mov	cl, al
	mov	eax, 0x30
	mov	rdx, qword ptr [rbp - 0x48]
	movsx	esi, byte ptr [rdx]
	cmp	eax, esi
	mov	byte ptr [rbp - 0x9e], cl
	jg	.label_1677
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x37
	setle	dl
	mov	byte ptr [rbp - 0x9e], dl
.label_1677:
	mov	al, byte ptr [rbp - 0x9e]
	mov	byte ptr [rbp - 0x9d], al
.label_1681:
	mov	al, byte ptr [rbp - 0x9d]
	test	al, 1
	jne	.label_1666
	jmp	.label_1671
.label_1666:
	mov	eax, dword ptr [rbp - 0x60]
	shl	eax, 3
	mov	rcx, qword ptr [rbp - 0x48]
	movsx	edx, byte ptr [rcx]
	sub	edx, 0x30
	add	eax, edx
	mov	dword ptr [rbp - 0x60], eax
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
	mov	rcx, qword ptr [rbp - 0x48]
	add	rcx, 1
	mov	qword ptr [rbp - 0x48], rcx
	jmp	.label_1672
.label_1679:
	mov	rax, qword ptr [rbp - 0x48]
	movsx	edi, byte ptr [rax]
	call	print_esc_char
.label_1656:
	jmp	.label_1657
.label_1657:
	jmp	.label_1688
.label_1688:
	jmp	.label_1676
.label_1691:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	add	rcx, 1
	mov	edx, dword ptr [rbp - 0x5c]
	mov	esi, dword ptr [rbp - 0xc]
	mov	r8, qword ptr [rbp - 0x18]
	mov	r9, qword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x98], esi
	mov	rsi, rcx
	mov	ecx, dword ptr [rbp - 0x98]
	call	rax
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	movzx	edx, al
	or	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
.label_1673:
	jmp	.label_1676
.label_1674:
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1679
	movabs	rdi, OFFSET FLAT:label_1685
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 0x5c
	call	putchar_unlocked
	mov	rdx, qword ptr [rbp - 0x48]
	add	rdx, -1
	mov	qword ptr [rbp - 0x48], rdx
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_1656
.label_1671:
	mov	edi, dword ptr [rbp - 0x60]
	call	putchar_unlocked
	mov	rcx, qword ptr [rbp - 0x48]
	add	rcx, -1
	mov	qword ptr [rbp - 0x48], rcx
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_1688
.label_1675:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, -1
	mov	qword ptr [rbp - 0x48], rax
.label_1687:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x50]
	jae	.label_1678
	movabs	rdi, OFFSET FLAT:label_1683
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	byte ptr [rdx + rax + 1], cl
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	byte ptr [rdx + rax + 2], 0
	call	gettext
	mov	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x90], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_1678:
	mov	edi, 0x25
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_1673
.label_1665:
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x78
	jne	.label_1674
	mov	rax, qword ptr [rbp - 0x48]
	movsx	edi, byte ptr [rax + 1]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0xb0], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xb0]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x1000
	cmp	edi, 0
	je	.label_1674
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x61
	jl	.label_1659
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x66
	jg	.label_1659
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax + 1]
	sub	ecx, 0x61
	add	ecx, 0xa
	mov	dword ptr [rbp - 0xb4], ecx
	jmp	.label_1693
.label_1663:
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	mov	dword ptr [rbp - 0xcc], ecx
.label_1668:
	mov	eax, dword ptr [rbp - 0xcc]
	mov	dword ptr [rbp - 0xc8], eax
.label_1690:
	mov	eax, dword ptr [rbp - 0xc8]
	mov	ecx, dword ptr [rbp - 0xc4]
	add	ecx, eax
	mov	dword ptr [rbp - 0x68], ecx
.label_1667:
	mov	edi, dword ptr [rbp - 0x68]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0xd0], eax
	jmp	.label_1657
.label_1659:
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x41
	jl	.label_1662
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x46
	jg	.label_1662
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax + 1]
	sub	ecx, 0x41
	add	ecx, 0xa
	mov	dword ptr [rbp - 0xb8], ecx
	jmp	.label_1658
.label_1669:
	mov	rax, qword ptr [rbp - 0x48]
	movsx	edi, byte ptr [rax]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0xd8], eax
.label_1676:
	jmp	.label_1682
.label_1682:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1684
.label_1689:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	rdi,  qword ptr [word ptr [trailing_delim]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	cl, byte ptr [rbp - 0x29]
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xdc], eax
	mov	eax, edx
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41159e
	.globl sub_41159e
	.type sub_41159e, @function
sub_41159e:

	nop	word ptr cs:[rax + rax]
.label_1660:
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x41
	jl	.label_1663
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x46
	jg	.label_1663
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x41
	add	ecx, 0xa
	mov	dword ptr [rbp - 0xcc], ecx
	jmp	.label_1668
	.section	.text
	.align	32
	#Procedure 0x4115e0

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, rcx
	mov	rsi, rcx
	call	getcwd
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1694
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_1694
	call	xalloc_die
.label_1694:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411623
	.globl sub_411623
	.type sub_411623, @function
sub_411623:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411630
	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x50]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411642
	.globl sub_411642
	.type sub_411642, @function
sub_411642:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411650

	.globl getenv_TZ
	.type getenv_TZ, @function
getenv_TZ:
	push	rbp
	mov	rbp, rsp
	movabs	rdi, OFFSET FLAT:label_1383
	call	getenv
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411665
	.globl sub_411665
	.type sub_411665, @function
sub_411665:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411670

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x50]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rcx, [rbp - 0x50]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4116af
	.globl sub_4116af
	.type sub_4116af, @function
sub_4116af:

	nop	
.label_1707:
	test	byte ptr [rbp - 2], 1
	je	.label_1704
	movabs	rdi, OFFSET FLAT:fmt_terse_regular
	call	xstrdup
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1697
	.section	.text
	.align	32
	#Procedure 0x4116d2

	.globl default_format
	.type default_format, @function
default_format:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, dl
	mov	cl, sil
	mov	r8b, dil
	and	r8b, 1
	mov	byte ptr [rbp - 1], r8b
	and	cl, 1
	mov	byte ptr [rbp - 2], cl
	and	al, 1
	mov	byte ptr [rbp - 3], al
	test	byte ptr [rbp - 1], 1
	je	.label_1707
	test	byte ptr [rbp - 2], 1
	je	.label_1709
	movabs	rdi, OFFSET FLAT:fmt_terse_fs
	call	xstrdup
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1708
.label_1698:
	movabs	rdi, OFFSET FLAT:label_1701
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rsi
	call	gettext
	movabs	rdi, OFFSET FLAT:label_1695
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, rax
	mov	al, 0
	call	xasprintf
	mov	qword ptr [rbp - 0x10], rax
.label_1699:
	mov	rdi, qword ptr [rbp - 0x18]
	call	free
	movabs	rdi, OFFSET FLAT:label_1700
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rsi
	call	gettext
	movabs	rdi, OFFSET FLAT:label_1695
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, rax
	mov	al, 0
	call	xasprintf
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x18]
	call	free
	movabs	rdi, OFFSET FLAT:label_1696
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rsi
	call	gettext
	movabs	rdi, OFFSET FLAT:label_1695
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, rax
	mov	al, 0
	call	xasprintf
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x18]
	call	free
.label_1697:
	jmp	.label_1702
.label_1702:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4117f4
	.globl sub_4117f4
	.type sub_4117f4, @function
sub_4117f4:

	nop	dword ptr [rax]
.label_1704:
	movabs	rdi, OFFSET FLAT:label_1705
	call	gettext
	mov	rdi, rax
	call	xstrdup
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
	test	byte ptr [rbp - 3], 1
	je	.label_1698
	movabs	rdi, OFFSET FLAT:label_1703
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	call	gettext
	movabs	rdi, OFFSET FLAT:label_1695
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, rax
	mov	al, 0
	call	xasprintf
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1699
.label_1709:
	movabs	rdi, OFFSET FLAT:label_1706
	call	gettext
	mov	rdi, rax
	call	xstrdup
	mov	qword ptr [rbp - 0x10], rax
.label_1708:
	jmp	.label_1702
.label_1711:
	mov	byte ptr [rbp - 1], 0
.label_1712:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41188e
	.globl sub_41188e
	.type sub_41188e, @function
sub_41188e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41189c
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1711
	jmp	.label_1710
.label_1710:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1712
.label_1718:
	jmp	.label_1713
.label_1713:
	jmp	.label_1714
.label_1714:
	jmp	.label_1716
.label_1716:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4118d5
	.globl sub_4118d5
	.type sub_4118d5, @function
sub_4118d5:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4118d7

	.globl filemodestring
	.type filemodestring, @function
filemodestring:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, dword ptr [rsi + 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	call	strmode
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, dword ptr [rsi + 0x18]
	mov	rsi, qword ptr [rbp - 8]
	sub	edi, dword ptr [rsi + 0x18]
	cmp	edi, 0
	je	.label_1715
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], 0x46
	jmp	.label_1716
.label_1715:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 8]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_1717
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], 0x51
	jmp	.label_1714
.label_1717:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 8]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_1718
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], 0x53
	jmp	.label_1713
	.section	.text
	.align	32
	#Procedure 0x411960
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_alloc_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41199a
	.globl sub_41199a
	.type sub_41199a, @function
sub_41199a:

	nop	word ptr [rax + rax]
.label_1722:
	lea	rsi, [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x10]
	call	timetostr
	movabs	rdi, OFFSET FLAT:human_time.str
	movabs	rsi, OFFSET FLAT:label_1719
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	rdx, rax
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x7c], eax
.label_1721:
	movabs	rax, OFFSET FLAT:human_time.str
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4119e4
	.globl sub_4119e4
	.type sub_4119e4, @function
sub_4119e4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4119ee

	.globl human_time
	.type human_time, @function
human_time:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	cmp	qword ptr [word ptr [human_time.tz]],  0
	jne	.label_1723
	movabs	rdi, OFFSET FLAT:label_1383
	call	getenv
	mov	rdi, rax
	call	tzalloc
	mov	qword ptr [word ptr [human_time.tz]],  rax
.label_1723:
	lea	rdx, [rbp - 0x48]
	lea	rsi, [rbp - 0x10]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x4c], ecx
	mov	rdi,  qword ptr [word ptr [human_time.tz]]
	call	localtime_rz
	cmp	rax, 0
	je	.label_1722
	movabs	rdi, OFFSET FLAT:human_time.str
	mov	eax, 0x3d
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:label_1720
	lea	rcx, [rbp - 0x48]
	mov	r8,  qword ptr [word ptr [human_time.tz]]
	mov	r9d, dword ptr [rbp - 0x4c]
	call	nstrftime
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1721
.label_1726:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_1730
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_1724:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_202
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_1725:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x411adc

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_1726
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_1728
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_1726
.label_1728:
	movabs	rdi, OFFSET FLAT:label_1727
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_1724
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_1729
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_1725
.label_1730:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411b77
	.globl sub_411b77
	.type sub_411b77, @function
sub_411b77:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411be5
	.globl sub_411be5
	.type sub_411be5, @function
sub_411be5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411bf2
	.globl sub_411bf2
	.type sub_411bf2, @function
sub_411bf2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411c16
	.globl sub_411c16
	.type sub_411c16, @function
sub_411c16:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411c29
	.globl sub_411c29
	.type sub_411c29, @function
sub_411c29:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411c30

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x411c40

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	.section	.text
	.align	32
	#Procedure 0x411c4f
	.globl sub_411c4f
	.type sub_411c4f, @function
sub_411c4f:

	nop	
