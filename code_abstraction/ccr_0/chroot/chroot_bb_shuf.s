	.section	.text
	.align	32
	#Procedure 0x401909
	.globl sub_401909
	.type sub_401909, @function
sub_401909:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40190a
	.globl sub_40190a
	.type sub_40190a, @function
sub_40190a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401942
	.globl sub_401942
	.type sub_401942, @function
sub_401942:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40198a
	.globl sub_40198a
	.type sub_40198a, @function
sub_40198a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019ac
	.globl sub_4019ac
	.type sub_4019ac, @function
sub_4019ac:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4019bd
	.globl sub_4019bd
	.type sub_4019bd, @function
sub_4019bd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4019d6
	.globl sub_4019d6
	.type sub_4019d6, @function
sub_4019d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019e0

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
	#Procedure 0x401a08
	.globl sub_401a08
	.type sub_401a08, @function
sub_401a08:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a10

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
	jne	.label_10
	movabs	rax, OFFSET FLAT:label_9
	mov	qword ptr [rbp - 8], rax
.label_10:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_11
	movabs	rax, OFFSET FLAT:label_12
	mov	qword ptr [rbp - 8], rax
.label_11:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401a67
	.globl sub_401a67
	.type sub_401a67, @function
sub_401a67:

	nop	word ptr [rax + rax]
.label_13:
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
	#Procedure 0x401a9a
	.globl sub_401a9a
	.type sub_401a9a, @function
sub_401a9a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401aa6

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
	jne	.label_13
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401ae0

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
	#Procedure 0x401b55
	.globl sub_401b55
	.type sub_401b55, @function
sub_401b55:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b60

	.globl is_root
	.type is_root, @function
is_root:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	canonicalize_file_name
	xor	ecx, ecx
	mov	dl, cl
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x12], dl
	je	.label_14
	mov	rsi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_15
	mov	edi, eax
	call	strcmp
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0x12], cl
.label_14:
	mov	al, byte ptr [rbp - 0x12]
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401bc3
	.globl sub_401bc3
	.type sub_401bc3, @function
sub_401bc3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401bd0

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
	#Procedure 0x401bf0
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
	#Procedure 0x401c9d
	.globl sub_401c9d
	.type sub_401c9d, @function
sub_401c9d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401ca0

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
	#Procedure 0x401cde
	.globl sub_401cde
	.type sub_401cde, @function
sub_401cde:

	nop	
.label_20:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_16
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_19:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_17:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d10
	.globl sub_401d10
	.type sub_401d10, @function
sub_401d10:

	nop	
	nop	dword ptr [rax + rax]
.label_18:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_17
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x401d3b

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_18
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_22
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_18
.label_22:
	movabs	rdi, OFFSET FLAT:label_21
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_20
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_23
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_19
	.section	.text
	.align	32
	#Procedure 0x401dd0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_24
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_24:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401dfa
	.globl sub_401dfa
	.type sub_401dfa, @function
sub_401dfa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e00

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
	#Procedure 0x401e37
	.globl sub_401e37
	.type sub_401e37, @function
sub_401e37:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e40
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
	#Procedure 0x401e6d
	.globl sub_401e6d
	.type sub_401e6d, @function
sub_401e6d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401e70
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
	#Procedure 0x401eaa
	.globl sub_401eaa
	.type sub_401eaa, @function
sub_401eaa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401eb0

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
	#Procedure 0x401eef
	.globl sub_401eef
	.type sub_401eef, @function
sub_401eef:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401ef0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_25
	jmp	.label_27
.label_27:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_26
.label_25:
	mov	byte ptr [rbp - 1], 0
.label_26:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401f22
	.globl sub_401f22
	.type sub_401f22, @function
sub_401f22:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f30

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
	#Procedure 0x401f66
	.globl sub_401f66
	.type sub_401f66, @function
sub_401f66:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f70

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
	je	.label_28
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_28:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401fab
	.globl sub_401fab
	.type sub_401fab, @function
sub_401fab:

	nop	dword ptr [rax + rax]
.label_30:
	mov	byte ptr [rbp - 1], 0
.label_32:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401fbe
	.globl sub_401fbe
	.type sub_401fbe, @function
sub_401fbe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401fc0
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
	jb	.label_29
	jmp	.label_31
.label_31:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_30
	jmp	.label_29
.label_29:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_32
	.section	.text
	.align	32
	#Procedure 0x402000

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
	je	.label_33
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_34
.label_33:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_34
.label_34:
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
	#Procedure 0x4020a2
	.globl sub_4020a2
	.type sub_4020a2, @function
sub_4020a2:

	nop	word ptr cs:[rax + rax]
.label_36:
	jmp	.label_35
.label_35:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4020c3
	.globl sub_4020c3
	.type sub_4020c3, @function
sub_4020c3:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4020c9

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
	ja	.label_36
	jmp	.label_37
.label_37:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_35
	.section	.text
	.align	32
	#Procedure 0x402100

	.globl xgetgroups
	.type xgetgroups, @function
xgetgroups:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x18]
	call	mgetgroups
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], -1
	jne	.label_38
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_38
	call	xalloc_die
.label_38:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40214c
	.globl sub_40214c
	.type sub_40214c, @function
sub_40214c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402150

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_39
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_16
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40218f
	.globl sub_40218f
	.type sub_40218f, @function
sub_40218f:

	nop	
.label_42:
	mov	byte ptr [rbp - 1], 0
.label_41:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40219e
	.globl sub_40219e
	.type sub_40219e, @function
sub_40219e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40219f
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_42
	jmp	.label_40
.label_40:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_41
	.section	.text
	.align	32
	#Procedure 0x4021c0

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
	jne	.label_43
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_43:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_44
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_44
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_44
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_45
.label_44:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_45:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402261
	.globl sub_402261
	.type sub_402261, @function
sub_402261:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402270
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
	jb	.label_46
	jmp	.label_49
.label_49:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_46
	jmp	.label_47
.label_47:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_48
	jmp	.label_46
.label_46:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_50
.label_48:
	mov	byte ptr [rbp - 1], 0
.label_50:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4022d5
	.globl sub_4022d5
	.type sub_4022d5, @function
sub_4022d5:

	nop	word ptr cs:[rax + rax]
.label_52:
	mov	byte ptr [rbp - 1], 0
.label_53:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4022ee
	.globl sub_4022ee
	.type sub_4022ee, @function
sub_4022ee:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4022fc
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_52
	jmp	.label_51
.label_51:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_53
.label_62:
	jmp	.label_60
.label_60:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
.label_63:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402334
	.globl sub_402334
	.type sub_402334, @function
sub_402334:

	nop	word ptr cs:[rax + rax]
.label_70:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_65
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	call	getugroups
	mov	dword ptr [rbp - 0x64], eax
	jmp	.label_58
.label_78:
	cmp	dword ptr [rbp - 0x24], 0
	je	.label_75
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_76
	cmp	dword ptr [rbp - 0x14], -1
	je	.label_76
.label_75:
	mov	eax, dword ptr [rbp - 0x24]
	add	eax, 1
	mov	dword ptr [rbp - 0x24], eax
.label_76:
	xor	eax, eax
	mov	edi, eax
	movsxd	rsi, dword ptr [rbp - 0x24]
	call	realloc_groupbuf
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_70
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_63
.label_55:
	mov	rax, qword ptr [rbp - 0x50]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, rax
	add	rdx, 4
	mov	qword ptr [rbp - 0x30], rdx
	mov	dword ptr [rax + 4], ecx
.label_59:
	jmp	.label_56
.label_56:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 4
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_61
.label_68:
	jmp	.label_67
.label_67:
	lea	rcx, [rbp - 0x24]
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x30]
	call	getgrouplist
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	jge	.label_66
	mov	eax, dword ptr [rbp - 0x3c]
	cmp	eax, dword ptr [rbp - 0x24]
	jne	.label_66
	mov	eax, dword ptr [rbp - 0x24]
	shl	eax, 1
	mov	dword ptr [rbp - 0x24], eax
.label_66:
	mov	rdi, qword ptr [rbp - 0x30]
	movsxd	rsi, dword ptr [rbp - 0x24]
	call	realloc_groupbuf
	mov	qword ptr [rbp - 0x38], rax
	cmp	rax, 0
	jne	.label_74
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x40], ecx
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x5c], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_63
.label_77:
	xor	edi, edi
	xor	eax, eax
	mov	esi, eax
	call	getgroups
	mov	dword ptr [rbp - 0x60], eax
.label_69:
	mov	eax, dword ptr [rbp - 0x60]
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	jge	.label_78
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_71
	xor	eax, eax
	mov	edi, eax
	mov	eax, 1
	mov	esi, eax
	call	realloc_groupbuf
	mov	qword ptr [rbp - 0x30], rax
	cmp	rax, 0
	je	.label_71
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x14]
	mov	rax, qword ptr [rbp - 0x30]
	mov	dword ptr [rax], edx
	cmp	dword ptr [rbp - 0x14], -1
	setne	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 4], edx
	jmp	.label_63
.label_71:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_63
.label_72:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_77
	xor	edi, edi
	xor	eax, eax
	mov	esi, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	call	getugroups
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_69
	.section	.text
	.align	32
	#Procedure 0x402517

	.globl mgetgroups
	.type mgetgroups, @function
mgetgroups:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_72
	xor	eax, eax
	mov	edi, eax
	mov	dword ptr [rbp - 0x24], 0xa
	movsxd	rsi, dword ptr [rbp - 0x24]
	call	realloc_groupbuf
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_68
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_63
.label_74:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x30], rcx
	cmp	eax, dword ptr [rbp - 0x28]
	jg	.label_73
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_63
.label_65:
	mov	eax, dword ptr [rbp - 0x24]
	cmp	dword ptr [rbp - 0x14], -1
	setne	cl
	and	cl, 1
	movzx	edx, cl
	sub	eax, edx
	mov	rsi, qword ptr [rbp - 0x30]
	cmp	dword ptr [rbp - 0x14], -1
	setne	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rdi, edx
	shl	rdi, 2
	add	rsi, rdi
	mov	edi, eax
	call	getgroups
	mov	dword ptr [rbp - 0x64], eax
.label_58:
	mov	eax, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	jge	.label_54
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x44], ecx
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x68], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x68]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_63
.label_54:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_57
	cmp	dword ptr [rbp - 0x14], -1
	je	.label_57
	mov	eax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	dword ptr [rcx], eax
	mov	eax, dword ptr [rbp - 0x28]
	add	eax, 1
	mov	dword ptr [rbp - 0x28], eax
.label_57:
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx], rcx
	cmp	eax, dword ptr [rbp - 0x28]
	jge	.label_60
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x48], ecx
	mov	rax, qword ptr [rbp - 0x30]
	movsxd	rdx, dword ptr [rbp - 0x28]
	shl	rdx, 2
	add	rax, rdx
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 4
	mov	qword ptr [rbp - 0x50], rax
.label_61:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x58]
	jae	.label_62
	mov	rax, qword ptr [rbp - 0x50]
	mov	ecx, dword ptr [rax]
	cmp	ecx, dword ptr [rbp - 0x48]
	je	.label_64
	mov	rax, qword ptr [rbp - 0x50]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	cmp	ecx, dword ptr [rax]
	jne	.label_55
.label_64:
	mov	eax, dword ptr [rbp - 0x28]
	add	eax, -1
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_59
.label_73:
	jmp	.label_67
.label_81:
	cmp	dword ptr [rbp - 0x4c], 0
	jne	.label_84
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_84
	test	byte ptr [rbp - 0x19], 1
	je	.label_87
	movabs	rdi, OFFSET FLAT:label_90
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x80], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_87:
	mov	dword ptr [rbp - 0x4c], 0xffffffff
.label_84:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jne	.label_79
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
.label_79:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	eax, dword ptr [rbp - 0x4c]
	add	rsp, 0x80
	pop	rbp
	ret	
.label_95:
	jmp	.label_81
	.section	.text
	.align	32
	#Procedure 0x402740

	.globl parse_additional_groups
	.type parse_additional_groups, @function
parse_additional_groups:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	al, cl
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x38], 0
	mov	rdi, qword ptr [rbp - 8]
	call	xstrdup
	movabs	rsi, OFFSET FLAT:label_86
	mov	qword ptr [rbp - 0x40], rax
	mov	dword ptr [rbp - 0x4c], 0
	mov	rdi, qword ptr [rbp - 0x40]
	call	strtok
	mov	qword ptr [rbp - 0x48], rax
.label_92:
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_81
	xor	eax, eax
	mov	esi, eax
	mov	edx, 0xa
	lea	rcx, [rbp - 0x60]
	movabs	r8, OFFSET FLAT:label_9
	mov	rdi, qword ptr [rbp - 0x48]
	call	xstrtoul
	cmp	eax, 0
	jne	.label_88
	mov	eax, 0xffffffff
	mov	ecx, eax
	cmp	qword ptr [rbp - 0x60], rcx
	ja	.label_88
	jmp	.label_80
.label_80:
	mov	rax, qword ptr [rbp - 0x48]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x68], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x68]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	je	.label_83
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_80
.label_88:
	mov	rdi, qword ptr [rbp - 0x48]
	call	getgrnam
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_94
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x10]
	mov	eax, ecx
	mov	qword ptr [rbp - 0x60], rax
.label_94:
	jmp	.label_91
.label_91:
	cmp	qword ptr [rbp - 0x58], 0
	jne	.label_93
	mov	dword ptr [rbp - 0x4c], 0xffffffff
	test	byte ptr [rbp - 0x19], 1
	je	.label_95
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_96
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x6c], esi
	call	gettext
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x78], rax
	call	quote
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x6c]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_82
.label_83:
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2b
	je	.label_85
	mov	rdi, qword ptr [rbp - 0x48]
	call	getgrnam
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_89
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x10]
	mov	eax, ecx
	mov	qword ptr [rbp - 0x60], rax
.label_89:
	jmp	.label_85
.label_85:
	mov	eax, 1
	mov	ecx, eax
	mov	qword ptr [rbp - 0x58], rcx
	jmp	.label_91
.label_93:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_97
	lea	rsi, [rbp - 0x30]
	mov	eax, 4
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdi, rcx
	call	x2nrealloc
	mov	qword ptr [rbp - 0x28], rax
.label_97:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdx, rax
	add	rdx, 1
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	dword ptr [rdx + rax*4], ecx
.label_82:
	xor	eax, eax
	mov	edi, eax
	movabs	rsi, OFFSET FLAT:label_86
	call	strtok
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_92
	.section	.text
	.align	32
	#Procedure 0x402960
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_98
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_99
.label_98:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_99
.label_99:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40299b
	.globl sub_40299b
	.type sub_40299b, @function
sub_40299b:

	nop	dword ptr [rax + rax]
.label_101:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_102:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4029ab
	.globl sub_4029ab
	.type sub_4029ab, @function
sub_4029ab:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029b4

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_101
	jmp	.label_100
.label_100:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_102
	.section	.text
	.align	32
	#Procedure 0x4029e0

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
.label_103:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a07
	.globl sub_402a07
	.type sub_402a07, @function
sub_402a07:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a0f
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
	jae	.label_103
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402a40
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
	#Procedure 0x402a67
	.globl sub_402a67
	.type sub_402a67, @function
sub_402a67:

	nop	word ptr [rax + rax]
.label_104:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_105:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a8c
	.globl sub_402a8c
	.type sub_402a8c, @function
sub_402a8c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a9a

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
	jne	.label_104
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_104
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_104
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_106
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_105
.label_106:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_105
	.section	.text
	.align	32
	#Procedure 0x402b40

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
	#Procedure 0x402b73
	.globl sub_402b73
	.type sub_402b73, @function
sub_402b73:

	nop	word ptr cs:[rax + rax]
.label_109:
	mov	byte ptr [rbp - 1], 0
.label_107:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b8e
	.globl sub_402b8e
	.type sub_402b8e, @function
sub_402b8e:

	nop	word ptr cs:[rax + rax]
.label_746:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_107
	.section	.text
	.align	32
	#Procedure 0x402ba6
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
	ja	.label_109
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_108]]
	jmp	rcx
	.section	.text
	.align	32
	#Procedure 0x402bd0

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
	#Procedure 0x402c03
	.globl sub_402c03
	.type sub_402c03, @function
sub_402c03:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c10
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
	je	.label_110
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_111
.label_110:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_111
.label_111:
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
	#Procedure 0x402cd5
	.globl sub_402cd5
	.type sub_402cd5, @function
sub_402cd5:

	nop	word ptr cs:[rax + rax]
.label_113:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_112:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402cfe
	.globl sub_402cfe
	.type sub_402cfe, @function
sub_402cfe:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d06

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_114
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_113
.label_114:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_112
.label_116:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402d4a
	.globl sub_402d4a
	.type sub_402d4a, @function
sub_402d4a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d54
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
	jb	.label_115
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_116
.label_115:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402da0

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
	je	.label_117
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_119
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_120
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_118
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_121
.label_120:
	mov	byte ptr [rbp - 5], 0
.label_121:
	jmp	.label_117
.label_117:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402e13
	.globl sub_402e13
	.type sub_402e13, @function
sub_402e13:

	nop	word ptr cs:[rax + rax]
.label_126:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_122
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_124]],  rax
.label_122:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_123
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_123:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ea6
	.globl sub_402ea6
	.type sub_402ea6, @function
sub_402ea6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402eb2
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_125:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_126
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_125
.label_171:
	jmp	.label_161
.label_170:
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsxd	rdx, eax
	shl	rdx, 3
	add	rcx, rdx
	mov	qword ptr [rbp - 0x10], rcx
.label_189:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_167
	lea	rsi, [rbp - 0x38]
	lea	rdx, [rbp - 0x3c]
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x120], rcx
	mov	r8, qword ptr [rbp - 0x120]
	call	parse_user_spec
	mov	qword ptr [rbp - 0x90], rax
	cmp	qword ptr [rbp - 0x90], 0
	je	.label_185
	mov	edi, dword ptr [rbp - 0x38]
	call	uid_unset
	test	al, 1
	jne	.label_183
	jmp	.label_185
.label_183:
	mov	edi, dword ptr [rbp - 0x3c]
	call	gid_unset
	test	al, 1
	jne	.label_188
	jmp	.label_185
.label_188:
	call	__errno_location
	mov	edi, 0x7d
	movabs	rdx, OFFSET FLAT:label_16
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	al, 0
	call	error
.label_150:
	test	byte ptr [rbp - 0x61], 1
	jne	.label_192
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_141
	lea	rsi, [rbp - 0x38]
	lea	rdx, [rbp - 0x3c]
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x100], rcx
	mov	r8, qword ptr [rbp - 0x100]
	call	parse_user_spec
	mov	qword ptr [rbp - 0x70], rax
.label_141:
	mov	edi, dword ptr [rbp - 0x38]
	call	uid_unset
	test	al, 1
	jne	.label_130
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_140
	mov	edi, dword ptr [rbp - 0x3c]
	call	gid_unset
	test	al, 1
	jne	.label_140
	jmp	.label_130
.label_140:
	mov	edi, dword ptr [rbp - 0x38]
	call	getpwuid
	mov	qword ptr [rbp - 0x78], rax
	cmp	rax, 0
	je	.label_131
	mov	edi, dword ptr [rbp - 0x3c]
	call	gid_unset
	test	al, 1
	jne	.label_133
	jmp	.label_191
.label_133:
	mov	rax, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rax + 0x14]
	mov	dword ptr [rbp - 0x3c], ecx
.label_191:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
.label_131:
	jmp	.label_130
.label_130:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_138
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_138
	lea	rsi, [rbp - 0x48]
	lea	rdx, [rbp - 0x50]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x30]
	call	parse_additional_groups
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_143
.label_200:
	jmp	.label_145
.label_145:
	jmp	.label_149
.label_149:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0xa0], rax
	mov	qword ptr [rbp - 0xa8], 0
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_151
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_151
	lea	rax, [rbp - 0xa8]
	lea	rcx, [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x30]
	cmp	qword ptr [rbp - 0x50], 0
	setne	dl
	xor	dl, 0xff
	and	dl, 1
	movzx	esi, dl
	lea	r8, [rbp - 0xa8]
	lea	rdx, [rbp - 0x50]
	mov	dword ptr [rbp - 0x128], esi
	mov	rsi, r8
	mov	r9d, dword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x130], rcx
	mov	ecx, r9d
	mov	qword ptr [rbp - 0x138], rax
	call	parse_additional_groups
	cmp	eax, 0
	je	.label_168
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_171
	mov	dword ptr [rbp - 4], 0x7d
	jmp	.label_173
.label_138:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_176
	mov	edi, dword ptr [rbp - 0x3c]
	call	gid_unset
	test	al, 1
	jne	.label_176
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_176
	lea	rdx, [rbp - 0x48]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	esi, dword ptr [rbp - 0x3c]
	call	xgetgroups
	xor	esi, esi
	mov	dword ptr [rbp - 0x80], eax
	cmp	esi, dword ptr [rbp - 0x80]
	jge	.label_187
	movsxd	rax, dword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x50], rax
.label_187:
	jmp	.label_176
.label_176:
	jmp	.label_143
.label_143:
	jmp	.label_192
.label_192:
	mov	rdi, qword ptr [rbp - 0x60]
	call	chroot
	cmp	eax, 0
	je	.label_194
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_135
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x104], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x110], rax
	call	quotearg_style
	mov	edi, 0x7d
	mov	esi, dword ptr [rbp - 0x104]
	mov	rdx, qword ptr [rbp - 0x110]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_178:
	mov	byte ptr [rbp - 0x31], 1
	jmp	.label_164
.label_151:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_128
	mov	edi, dword ptr [rbp - 0x3c]
	call	gid_unset
	test	al, 1
	jne	.label_128
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_128
	lea	rdx, [rbp - 0xa8]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	esi, dword ptr [rbp - 0x3c]
	call	xgetgroups
	mov	dword ptr [rbp - 0xac], eax
	cmp	dword ptr [rbp - 0xac], 0
	jg	.label_134
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_201
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_139
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x13c], esi
	call	gettext
	mov	edi, 0x7d
	mov	esi, dword ptr [rbp - 0x13c]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_132:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x10]
	call	execvp
	mov	dword ptr [rbp - 0x14c], eax
	call	__errno_location
	mov	ecx, 0x7e
	mov	edx, 0x7f
	cmp	dword ptr [rax], 2
	cmove	ecx, edx
	mov	dword ptr [rbp - 0xb0], ecx
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_156
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x150], esi
	call	gettext
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x158], rax
	call	quote
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x150]
	mov	rdx, qword ptr [rbp - 0x158]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	esi, dword ptr [rbp - 0xb0]
	mov	dword ptr [rbp - 4], esi
.label_173:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x160
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40331e
	.globl sub_40331e
	.type sub_40331e, @function
sub_40331e:

	nop	word ptr cs:[rax + rax]
.label_157:
	mov	eax, dword ptr [rbp - 8]
	mov	ecx,  dword ptr [dword ptr [optind]]
	add	ecx, 1
	cmp	eax, ecx
	jne	.label_170
	movabs	rdi, OFFSET FLAT:label_175
	call	getenv
	mov	qword ptr [rbp - 0x88], rax
	cmp	qword ptr [rbp - 0x88], 0
	jne	.label_177
	movabs	rdi, OFFSET FLAT:label_180
	call	bad_cast
	mov	qword ptr [rbp - 0x88], rax
.label_177:
	movabs	rdi, OFFSET FLAT:label_186
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	call	bad_cast
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], 0
	jmp	.label_189
.label_185:
	jmp	.label_167
.label_167:
	mov	edi, dword ptr [rbp - 0x38]
	call	uid_unset
	test	al, 1
	jne	.label_149
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_196
	mov	edi, dword ptr [rbp - 0x3c]
	call	gid_unset
	test	al, 1
	jne	.label_196
	jmp	.label_149
.label_196:
	mov	edi, dword ptr [rbp - 0x38]
	call	getpwuid
	mov	qword ptr [rbp - 0x98], rax
	cmp	rax, 0
	je	.label_199
	mov	edi, dword ptr [rbp - 0x3c]
	call	gid_unset
	test	al, 1
	jne	.label_127
	jmp	.label_129
.label_127:
	mov	rax, qword ptr [rbp - 0x98]
	mov	ecx, dword ptr [rax + 0x14]
	mov	dword ptr [rbp - 0x3c], ecx
.label_129:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_145
.label_136:
	mov	edi, dword ptr [rbp - 0x38]
	call	uid_unset
	test	al, 1
	jne	.label_132
	mov	edi, dword ptr [rbp - 0x38]
	call	setuid
	cmp	eax, 0
	je	.label_132
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_137
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x148], esi
	call	gettext
	mov	edi, 0x7d
	mov	esi, dword ptr [rbp - 0x148]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_193:
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x60], rax
	mov	rdi, qword ptr [rbp - 0x60]
	call	is_root
	and	al, 1
	mov	byte ptr [rbp - 0x61], al
	test	byte ptr [rbp - 0x61], 1
	jne	.label_150
	test	byte ptr [rbp - 0x31], 1
	je	.label_150
	movabs	rdi, OFFSET FLAT:label_154
	call	gettext
	mov	edi, 4
	movabs	rsi, OFFSET FLAT:label_15
	mov	qword ptr [rbp - 0xf0], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0xf4], edi
	mov	esi, dword ptr [rbp - 0xf4]
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 0x7d
	call	usage
.label_162:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_164
.label_201:
	jmp	.label_152
.label_168:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xa0], rax
.label_161:
	jmp	.label_169
.label_134:
	movsxd	rax, dword ptr [rbp - 0xac]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xa0], rax
.label_152:
	jmp	.label_128
.label_128:
	jmp	.label_169
.label_169:
	mov	edi, dword ptr [rbp - 0x38]
	call	uid_unset
	test	al, 1
	jne	.label_179
	jmp	.label_181
.label_179:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_184
.label_181:
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0xa0]
	call	setgroups
	cmp	eax, 0
	je	.label_184
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_190
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x140], esi
	call	gettext
	mov	edi, 0x7d
	mov	esi, dword ptr [rbp - 0x140]
	mov	rdx, rax
	mov	al, 0
	call	error
	.section	.text
	.align	32
	#Procedure 0x4035c3

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x160
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x30], 0
	mov	byte ptr [rbp - 0x31], 0
	mov	dword ptr [rbp - 0x38], 0xffffffff
	mov	dword ptr [rbp - 0x3c], 0xffffffff
	mov	qword ptr [rbp - 0x48], 0
	mov	qword ptr [rbp - 0x50], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_9
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_203
	movabs	rsi, OFFSET FLAT:label_204
	mov	qword ptr [rbp - 0xb8], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_203
	mov	qword ptr [rbp - 0xc0], rax
	call	textdomain
	mov	edi, 0x7d
	mov	qword ptr [rbp - 0xc8], rax
	call	initialize_exit_failure
	movabs	rdi, OFFSET FLAT:close_stdout
	call	atexit
	mov	dword ptr [rbp - 0xcc], eax
.label_174:
	movabs	rdx, OFFSET FLAT:label_144
	movabs	rcx, OFFSET FLAT:long_opts
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, -1
	je	.label_153
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0xd0], eax
	mov	dword ptr [rbp - 0xd4], ecx
	je	.label_155
	jmp	.label_158
.label_158:
	mov	eax, dword ptr [rbp - 0xd0]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0xd8], eax
	je	.label_159
	jmp	.label_160
.label_160:
	mov	eax, dword ptr [rbp - 0xd0]
	sub	eax, 0x100
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_162
	jmp	.label_165
.label_165:
	mov	eax, dword ptr [rbp - 0xd0]
	sub	eax, 0x101
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_166
	jmp	.label_172
.label_172:
	mov	eax, dword ptr [rbp - 0xd0]
	sub	eax, 0x102
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_178
	jmp	.label_197
.label_166:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strlen
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_182
	mov	rax, qword ptr [rbp - 0x58]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x3a
	jne	.label_182
	mov	rax, qword ptr [rbp - 0x58]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	byte ptr [rcx + rax], 0
.label_182:
	jmp	.label_164
.label_153:
	mov	eax, dword ptr [rbp - 8]
	cmp	eax,  dword ptr [dword ptr [optind]]
	jg	.label_193
	movabs	rdi, OFFSET FLAT:label_195
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 0x7d
	call	usage
.label_199:
	mov	edi, dword ptr [rbp - 0x3c]
	call	gid_unset
	test	al, 1
	jne	.label_198
	jmp	.label_200
.label_198:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_202
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x124], esi
	call	gettext
	mov	edi, 0x7d
	mov	ecx, dword ptr [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0x124]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_184:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	free
	mov	edi, dword ptr [rbp - 0x3c]
	call	gid_unset
	test	al, 1
	jne	.label_136
	mov	edi, dword ptr [rbp - 0x3c]
	call	setgid
	cmp	eax, 0
	je	.label_136
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_142
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x144], esi
	call	gettext
	mov	edi, 0x7d
	mov	esi, dword ptr [rbp - 0x144]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_159:
	xor	edi, edi
	call	usage
.label_155:
	movabs	rsi, OFFSET FLAT:label_146
	movabs	rdx, OFFSET FLAT:label_147
	movabs	r8, OFFSET FLAT:label_148
	xor	eax, eax
	mov	r9d, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_194:
	test	byte ptr [rbp - 0x31], 1
	jne	.label_157
	movabs	rdi, OFFSET FLAT:label_15
	call	chdir
	cmp	eax, 0
	je	.label_157
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_163
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x114], esi
	call	gettext
	mov	edi, 0x7d
	mov	esi, dword ptr [rbp - 0x114]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_197:
	mov	edi, 0x7d
	call	usage
.label_164:
	jmp	.label_174
.label_216:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_217
	mov	dword ptr [rbp - 0x20], 0xffffffff
.label_217:
	jmp	.label_219
.label_219:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x38], ecx
	call	endgrent
	mov	ecx, dword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x3c], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	dword ptr [rax], ecx
	mov	eax, dword ptr [rbp - 0x20]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403982
	.globl sub_403982
	.type sub_403982, @function
sub_403982:

	nop	word ptr cs:[rax + rax]
.label_205:
	mov	dword ptr [rbp - 0x34], 0
.label_210:
	mov	eax, dword ptr [rbp - 0x34]
	cmp	eax, dword ptr [rbp - 0x20]
	jge	.label_206
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_215
	movsxd	rax, dword ptr [rbp - 0x34]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rcx + rax*4]
	mov	rax, qword ptr [rbp - 0x30]
	cmp	edx, dword ptr [rax + 0x10]
	jne	.label_215
	jmp	.label_206
.label_213:
	jmp	.label_209
.label_218:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x28], rax
.label_221:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	je	.label_213
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	je	.label_205
	jmp	.label_211
.label_215:
	jmp	.label_207
.label_207:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_210
.label_214:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 0x10]
	movsxd	rax, dword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rdx + rax*4], ecx
.label_212:
	cmp	dword ptr [rbp - 0x20], 0x7fffffff
	jne	.label_220
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_219
.label_206:
	mov	eax, dword ptr [rbp - 0x34]
	cmp	eax, dword ptr [rbp - 0x20]
	jne	.label_208
	cmp	dword ptr [rbp - 4], 0
	je	.label_212
	mov	eax, dword ptr [rbp - 0x20]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_214
	jmp	.label_219
.label_220:
	mov	eax, dword ptr [rbp - 0x20]
	add	eax, 1
	mov	dword ptr [rbp - 0x20], eax
.label_208:
	jmp	.label_211
.label_211:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 8
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_221
	.section	.text
	.align	32
	#Procedure 0x403a8f

	.globl getugroups
	.type getugroups, @function
getugroups:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	mov	dword ptr [rbp - 0x20], 0
	cmp	dword ptr [rbp - 0x1c], -1
	je	.label_223
	cmp	dword ptr [rbp - 4], 0
	je	.label_222
	mov	eax, dword ptr [rbp - 0x1c]
	movsxd	rcx, dword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rdx + rcx*4], eax
.label_222:
	mov	eax, dword ptr [rbp - 0x20]
	add	eax, 1
	mov	dword ptr [rbp - 0x20], eax
.label_223:
	call	setgrent
.label_209:
	call	__errno_location
	mov	dword ptr [rax], 0
	call	getgrent
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_218
	jmp	.label_216
	.section	.text
	.align	32
	#Procedure 0x403b00
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_224
	call	gettext
	movabs	rsi, OFFSET FLAT:label_226
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_225
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_147
	movabs	rdx, OFFSET FLAT:label_228
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_227
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
	#Procedure 0x403b86
	.globl sub_403b86
	.type sub_403b86, @function
sub_403b86:

	nop	
	nop	dword ptr [rax + rax]
.label_231:
	mov	dword ptr [rbp - 4], 0
.label_230:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ba0
	.globl sub_403ba0
	.type sub_403ba0, @function
sub_403ba0:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403ba7

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
	jne	.label_229
	test	byte ptr [rbp - 0x13], 1
	je	.label_231
	test	byte ptr [rbp - 0x11], 1
	jne	.label_229
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_231
.label_229:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_232
	call	__errno_location
	mov	dword ptr [rax], 0
.label_232:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_230
.label_269:
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x10]
	mov	dword ptr [rbp - 0x64], ecx
	cmp	qword ptr [rbp - 0x58], 0
	jne	.label_254
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_254
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x14]
	mov	dword ptr [rbp - 0x68], ecx
	mov	edi, dword ptr [rbp - 0x68]
	call	getgrgid
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_267
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xd0], rax
	jmp	.label_233
.label_267:
	lea	rsi, [rbp - 0xa0]
	mov	eax, dword ptr [rbp - 0x68]
	mov	edi, eax
	call	umaxtostr
	mov	qword ptr [rbp - 0xd0], rax
.label_233:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rdi, rax
	call	xstrdup
	mov	qword ptr [rbp - 0x60], rax
	call	endgrent
.label_254:
	jmp	.label_255
.label_255:
	call	endpwent
.label_237:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_258
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_258
	mov	rax, qword ptr [rbp - 0x58]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2b
	jne	.label_262
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0xd8], rcx
	jmp	.label_268
	.section	.text
	.align	32
	#Procedure 0x403d04

	.globl parse_with_separator
	.type parse_with_separator, @function
parse_with_separator:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	qword ptr [rbp - 0x60], 0
	mov	rcx, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rcx]
	mov	dword ptr [rbp - 0x64], eax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_235
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xac], ecx
	jmp	.label_234
.label_253:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x70], rax
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_259
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	rsi, rax
	call	xmemdup
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	byte ptr [rsi + rax], 0
.label_259:
	jmp	.label_241
.label_241:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_244
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	jne	.label_247
.label_244:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0xb8], rcx
	jmp	.label_251
.label_264:
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x10]
	mov	dword ptr [rbp - 0x68], ecx
.label_263:
	call	endgrent
	mov	rdi, qword ptr [rbp - 0x58]
	call	xstrdup
	mov	qword ptr [rbp - 0x60], rax
.label_258:
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_242
	mov	eax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx], eax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_265
	mov	eax, dword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	dword ptr [rcx], eax
.label_265:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_236
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rbp - 0x50], 0
.label_236:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_248
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rbp - 0x60], 0
.label_248:
	jmp	.label_242
.label_242:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_260
	mov	rdi, qword ptr [rbp - 0x38]
	call	gettext
	mov	qword ptr [rbp - 0xe0], rax
	jmp	.label_243
.label_247:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
.label_251:
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_237
	mov	rax, qword ptr [rbp - 0x50]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2b
	jne	.label_245
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0xc0], rcx
	jmp	.label_250
.label_260:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0xe0], rcx
	jmp	.label_243
.label_243:
	mov	rax, qword ptr [rbp - 0xe0]
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403edf
	.globl sub_403edf
	.type sub_403edf, @function
sub_403edf:

	nop	word ptr cs:[rax + rax]
.label_245:
	mov	rdi, qword ptr [rbp - 0x50]
	call	getpwnam
	mov	qword ptr [rbp - 0xc0], rax
.label_250:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_269
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0xc1], cl
	je	.label_240
	cmp	qword ptr [rbp - 0x58], 0
	sete	al
	mov	byte ptr [rbp - 0xc1], al
.label_240:
	mov	al, byte ptr [rbp - 0xc1]
	and	al, 1
	mov	byte ptr [rbp - 0x71], al
	test	byte ptr [rbp - 0x71], 1
	je	.label_252
	mov	rax,  qword ptr [word ptr [parse_with_separator.E_bad_spec]]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_239
.label_246:
	mov	rax,  qword ptr [word ptr [parse_with_separator.E_invalid_group]]
	mov	qword ptr [rbp - 0x38], rax
.label_249:
	jmp	.label_263
.label_235:
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0xac], eax
	jmp	.label_234
.label_234:
	mov	eax, dword ptr [rbp - 0xac]
	mov	dword ptr [rbp - 0x68], eax
	mov	qword ptr [rbp - 0x38], 0
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_261
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
.label_261:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_257
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
.label_257:
	mov	qword ptr [rbp - 0x50], 0
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_253
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	je	.label_256
	mov	rdi, qword ptr [rbp - 8]
	call	xstrdup
	mov	qword ptr [rbp - 0x50], rax
.label_256:
	jmp	.label_241
.label_252:
	xor	eax, eax
	mov	esi, eax
	mov	edx, 0xa
	lea	rcx, [rbp - 0x80]
	movabs	r8, OFFSET FLAT:label_9
	mov	rdi, qword ptr [rbp - 0x50]
	call	xstrtoul
	cmp	eax, 0
	jne	.label_238
	mov	eax, 0xffffffff
	mov	ecx, eax
	cmp	qword ptr [rbp - 0x80], rcx
	ja	.label_238
	mov	rax, qword ptr [rbp - 0x80]
	mov	ecx, eax
	cmp	ecx, -1
	je	.label_238
	mov	rax, qword ptr [rbp - 0x80]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x64], ecx
	jmp	.label_266
.label_238:
	mov	rax,  qword ptr [word ptr [parse_with_separator.E_invalid_user]]
	mov	qword ptr [rbp - 0x38], rax
.label_266:
	jmp	.label_239
.label_239:
	jmp	.label_255
.label_262:
	mov	rdi, qword ptr [rbp - 0x58]
	call	getgrnam
	mov	qword ptr [rbp - 0xd8], rax
.label_268:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_264
	xor	eax, eax
	mov	esi, eax
	mov	edx, 0xa
	lea	rcx, [rbp - 0xa8]
	movabs	r8, OFFSET FLAT:label_9
	mov	rdi, qword ptr [rbp - 0x58]
	call	xstrtoul
	cmp	eax, 0
	jne	.label_246
	mov	eax, 0xffffffff
	mov	ecx, eax
	cmp	qword ptr [rbp - 0xa8], rcx
	ja	.label_246
	mov	rax, qword ptr [rbp - 0xa8]
	mov	ecx, eax
	cmp	ecx, -1
	je	.label_246
	mov	rax, qword ptr [rbp - 0xa8]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x68], ecx
	jmp	.label_249
	.section	.text
	.align	32
	#Procedure 0x4040e0

	.globl realloc_groupbuf
	.type realloc_groupbuf, @function
realloc_groupbuf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x1fffffffffffffff
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_270
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_271
.label_270:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 2
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 8], rax
.label_271:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404141
	.globl sub_404141
	.type sub_404141, @function
sub_404141:

	nop	word ptr cs:[rax + rax]
.label_287:
	movabs	rdi, OFFSET FLAT:label_272
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
.label_274:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40420b
	.globl sub_40420b
	.type sub_40420b, @function
sub_40420b:

	nop	
.label_702:
	movabs	rdi, OFFSET FLAT:label_273
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
	jmp	.label_274
.label_701:
	movabs	rdi, OFFSET FLAT:label_282
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
	jmp	.label_274
.label_703:
	movabs	rdi, OFFSET FLAT:label_278
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
	jmp	.label_274
.label_700:
	movabs	rdi, OFFSET FLAT:label_285
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
	jmp	.label_274
.label_696:
	jmp	.label_274
.label_699:
	movabs	rdi, OFFSET FLAT:label_290
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
	jmp	.label_274
.label_704:
	movabs	rdi, OFFSET FLAT:label_279
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
	jmp	.label_274
.label_280:
	movabs	rsi, OFFSET FLAT:label_289
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_286:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_281
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
	mov	ecx, OFFSET FLAT:label_277
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
	ja	.label_287
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_276]]
	jmp	rcx
	.section	.text
	.align	32
	#Procedure 0x40458f

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
	je	.label_280
	movabs	rsi, OFFSET FLAT:label_275
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_286
.label_697:
	movabs	rdi, OFFSET FLAT:label_288
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
	jmp	.label_274
.label_698:
	movabs	rdi, OFFSET FLAT:label_284
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
	jmp	.label_274
.label_705:
	movabs	rdi, OFFSET FLAT:label_283
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
	jmp	.label_274
	.section	.text
	.align	32
	#Procedure 0x404710

	.globl initialize_exit_failure
	.type initialize_exit_failure, @function
initialize_exit_failure:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 1
	je	.label_291
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [dword ptr [exit_failure]],  eax
.label_291:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40472d
	.globl sub_40472d
	.type sub_40472d, @function
sub_40472d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404730
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_292
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_292:
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
	#Procedure 0x40476d
	.globl sub_40476d
	.type sub_40476d, @function
sub_40476d:

	nop	dword ptr [rax]
.label_296:
	jmp	.label_293
.label_293:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
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
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_293
	jmp	.label_294
.label_294:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4047c8
	.globl sub_4047c8
	.type sub_4047c8, @function
sub_4047c8:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047d1

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
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
	jae	.label_296
	jmp	.label_295
.label_295:
	mov	eax, 0x30
	mov	ecx, eax
	mov	eax, 0xa
	mov	edx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	esi, esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	edx, esi
	mov	rdi, qword ptr [rbp - 0x20]
	div	rdi
	sub	rcx, rdx
	mov	r8b, cl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], r8b
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_295
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_294
	.section	.text
	.align	32
	#Procedure 0x404870
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
	#Procedure 0x40489a
	.globl sub_40489a
	.type sub_40489a, @function
sub_40489a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048a0

	.globl gid_unset
	.type gid_unset, @function
gid_unset:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], -1
	sete	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4048b5
	.globl sub_4048b5
	.type sub_4048b5, @function
sub_4048b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048c0

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
	#Procedure 0x404932
	.globl sub_404932
	.type sub_404932, @function
sub_404932:

	nop	word ptr cs:[rax + rax]
.label_298:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_297
.label_297:
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
	#Procedure 0x404984
	.globl sub_404984
	.type sub_404984, @function
sub_404984:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404992
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
	je	.label_298
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_297
	.section	.text
	.align	32
	#Procedure 0x4049c0
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
	#Procedure 0x4049da
	.globl sub_4049da
	.type sub_4049da, @function
sub_4049da:

	nop	word ptr [rax + rax]
.label_299:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4049fb
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
	jae	.label_299
	call	xalloc_die
.label_300:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_304
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_302
.label_304:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_302
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_302:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_301
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_301:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_303:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404abd
	.globl sub_404abd
	.type sub_404abd, @function
sub_404abd:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404abf

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
	jge	.label_300
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_303
.label_307:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_305
.label_305:
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
	je	.label_306
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_306:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c23
	.globl sub_404c23
	.type sub_404c23, @function
sub_404c23:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c2f

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
	je	.label_307
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_305
	.section	.text
	.align	32
	#Procedure 0x404c60
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
	#Procedure 0x404c97
	.globl sub_404c97
	.type sub_404c97, @function
sub_404c97:

	nop	word ptr [rax + rax]
.label_308:
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
	#Procedure 0x404cbe

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
	jne	.label_310
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_310:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_309
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_308
.label_309:
	call	abort
.label_313:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_311:
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
	#Procedure 0x404d4a
	.globl sub_404d4a
	.type sub_404d4a, @function
sub_404d4a:

	nop	word ptr [rax + rax]
.label_315:
	jmp	.label_311
.label_314:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_313
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404d79

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
	jne	.label_314
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_312
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
.label_312:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_315
	call	xalloc_die
.label_316:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e0a
	.globl sub_404e0a
	.type sub_404e0a, @function
sub_404e0a:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404e0c

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
	jne	.label_316
	cmp	qword ptr [rbp - 8], 0
	je	.label_316
	call	xalloc_die
.label_318:
	mov	byte ptr [rbp - 1], 0
.label_319:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e4e
	.globl sub_404e4e
	.type sub_404e4e, @function
sub_404e4e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e5c
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_318
	jmp	.label_317
.label_317:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_319
.label_326:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_327:
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
	je	.label_325
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_124]]
	mov	qword ptr [rax + 8], rcx
.label_325:
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
.label_320:
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
	ja	.label_322
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_324
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_324:
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
.label_322:
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
	#Procedure 0x40505e
	.globl sub_40505e
	.type sub_40505e, @function
sub_40505e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40506b

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
	jge	.label_321
	call	abort
.label_323:
	test	byte ptr [rbp - 0x31], 1
	je	.label_326
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_327
.label_321:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_320
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_323
	call	xalloc_die
.label_328:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405109
	.globl sub_405109
	.type sub_405109, @function
sub_405109:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40510c

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	dword ptr [rbp - 0x14], 0
.label_329:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_328
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_329
	.section	.text
	.align	32
	#Procedure 0x405150

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
	#Procedure 0x40516f
	.globl sub_40516f
	.type sub_40516f, @function
sub_40516f:

	nop	
.label_364:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_403
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_403:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_414
.label_414:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_418
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_418:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_425
.label_425:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_431
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_431:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_434
.label_434:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_439
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_439:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_352
.label_780:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_445
	test	byte ptr [rbp - 0x7b], 1
	je	.label_450
	jmp	.label_357
.label_762:
	mov	byte ptr [rbp - 0x79], 1
.label_761:
	mov	byte ptr [rbp - 0x7b], 1
.label_763:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_444
	mov	byte ptr [rbp - 0x79], 1
.label_444:
	jmp	.label_457
.label_457:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_468
	jmp	.label_427
.label_427:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_463
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_463:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_468
.label_468:
	movabs	rax, OFFSET FLAT:label_472
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_408
.label_357:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_479
	test	byte ptr [rbp - 0x79], 1
	je	.label_479
	mov	dword ptr [rbp - 0x34], 4
.label_479:
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
.label_341:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405345
	.globl sub_405345
	.type sub_405345, @function
sub_405345:

	nop	dword ptr [rax + rax]
.label_412:
	jmp	.label_500
.label_500:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_502
	jmp	.label_334
.label_771:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_344
.label_519:
	jmp	.label_334
.label_767:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_510
	movabs	rdi, OFFSET FLAT:label_513
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_472
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_510:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_520
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_367:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_524
	jmp	.label_528
.label_528:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_533
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_533:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_529
.label_529:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_367
.label_371:
	jmp	.label_332
.label_332:
	jmp	.label_334
	.section	.text
	.align	32
	#Procedure 0x405412

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
.label_451:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_365
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_374]]
	jmp	rcx
.label_461:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_379
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_379
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_379:
	jmp	.label_383
.label_383:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_384
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_384:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_388
.label_388:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_391
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_391:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_396
.label_396:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_399
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_399:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_460:
	jmp	.label_334
.label_760:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_408
.label_781:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_410
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_412
	jmp	.label_416
.label_450:
	jmp	.label_402
.label_408:
	mov	qword ptr [rbp - 0x58], 0
.label_523:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_419
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_422
.label_774:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_373
.label_769:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_373
.label_433:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_436
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_436
	test	byte ptr [rbp - 0x7d], 1
	je	.label_436
	test	byte ptr [rbp - 0x7e], 1
	je	.label_441
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
	jmp	.label_341
.label_778:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_460
	test	byte ptr [rbp - 0x7b], 1
	je	.label_461
	jmp	.label_357
.label_331:
	jmp	.label_402
.label_531:
	jmp	.label_512
.label_512:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_518
	test	byte ptr [rbp - 0x82], 1
	jne	.label_518
	jmp	.label_471
.label_471:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_473
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_473:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_480
.label_480:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_483
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_483:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_518:
	jmp	.label_486
.label_486:
	jmp	.label_490
.label_490:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_459
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_459:
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
	jmp	.label_495
.label_443:
	jmp	.label_506
.label_506:
	jmp	.label_436
.label_436:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_333
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_333
	jmp	.label_377
.label_377:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_515
	jmp	.label_516
.label_516:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_517
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_517:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_522
.label_522:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_377
.label_766:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_408
.label_524:
	jmp	.label_520
.label_520:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_408
.label_385:
	jmp	.label_330
.label_330:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_337
	mov	byte ptr [rbp - 0x91], 0
.label_337:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_339
.label_339:
	jmp	.label_401
.label_401:
	jmp	.label_407
.label_407:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_349
.label_386:
	jmp	.label_350
.label_350:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_351
	test	byte ptr [rbp - 0x79], 1
	je	.label_361
	test	byte ptr [rbp - 0x91], 1
	jne	.label_361
.label_351:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_495:
	test	byte ptr [rbp - 0x79], 1
	je	.label_370
	test	byte ptr [rbp - 0x91], 1
	jne	.label_370
	jmp	.label_375
.label_375:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_376
	jmp	.label_357
.label_456:
	jmp	.label_334
.label_359:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_380
	jmp	.label_357
.label_405:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_330
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_330
	mov	qword ptr [rbp - 0xb8], 1
.label_438:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_385
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
	jb	.label_390
	jmp	.label_400
.label_400:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_390
	jmp	.label_406
.label_406:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_390
	jmp	.label_411
.label_411:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_475
	jmp	.label_390
.label_390:
	jmp	.label_357
.label_772:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_344
.label_361:
	jmp	.label_334
.label_334:
	test	byte ptr [rbp - 0x79], 1
	je	.label_421
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_394
.label_421:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_429
.label_394:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_429
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
	jne	.label_346
.label_429:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_346
	jmp	.label_402
.label_428:
	jmp	.label_386
.label_441:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_443
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_443
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_451
.label_502:
	jmp	.label_454
.label_454:
	mov	byte ptr [rbp - 0x83], 1
.label_776:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_456
	test	byte ptr [rbp - 0x7b], 1
	je	.label_456
	jmp	.label_357
.label_765:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_764:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_464
	jmp	.label_466
.label_466:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_467
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_467:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_464
.label_464:
	movabs	rax, OFFSET FLAT:label_478
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_408
.label_410:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_412
.label_416:
	jmp	.label_334
.label_475:
	jmp	.label_424
.label_424:
	jmp	.label_485
.label_485:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_438
.label_376:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_492
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_492
	jmp	.label_496
.label_496:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_497
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_497:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_503
.label_503:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_508
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_508:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_514
.label_514:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_487
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_487:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_492:
	jmp	.label_525
.label_525:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_527
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_527:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_488
.label_488:
	jmp	.label_530
.label_530:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_532
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_532:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_338
.label_338:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_340
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_340:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_347
.label_493:
	jmp	.label_352
.label_352:
	jmp	.label_353
.label_353:
	jmp	.label_332
.label_365:
	call	abort
.label_346:
	jmp	.label_356
.label_356:
	jmp	.label_358
.label_358:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_360
	jmp	.label_357
.label_372:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_368
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_368:
	jmp	.label_349
.label_349:
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
	jne	.label_387
	jmp	.label_386
.label_397:
	jmp	.label_344
.label_344:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_395
	test	byte ptr [rbp - 0x7b], 1
	je	.label_395
	jmp	.label_357
.label_445:
	test	byte ptr [rbp - 0x79], 1
	je	.label_397
	test	byte ptr [rbp - 0x7b], 1
	je	.label_397
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_397
	jmp	.label_402
.label_501:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_404
	jmp	.label_336
.label_507:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_389
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_389
	jmp	.label_413
.label_413:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_415
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_415:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_420
.label_420:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_426
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_426:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_432
.label_432:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_435
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_435:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_389:
	jmp	.label_392
.label_392:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_442
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_442:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_449
.label_449:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_437
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_437
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_437
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_437
	jmp	.label_469
.label_469:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_470
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_470:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_476
.label_476:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_481
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_481:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_437
.label_437:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_369
.label_355:
	mov	byte ptr [rbp - 0x81], 1
.label_345:
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
	ja	.label_489
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_498]]
	jmp	rcx
.label_768:
	test	byte ptr [rbp - 0x79], 1
	je	.label_501
	jmp	.label_504
.label_504:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_507
	jmp	.label_357
.label_387:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_509
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_386
.label_775:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_344
.label_395:
	jmp	.label_373
.label_373:
	test	byte ptr [rbp - 0x79], 1
	je	.label_519
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_356
.label_370:
	test	byte ptr [rbp - 0x81], 1
	je	.label_521
	jmp	.label_448
.label_448:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_526
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_526:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_521:
	jmp	.label_347
.label_347:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_531
	jmp	.label_331
.label_515:
	jmp	.label_333
.label_333:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_335
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_335:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_341
.label_393:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_381:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_345
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_345
	test	byte ptr [rbp - 0x7b], 1
	je	.label_355
	jmp	.label_357
.label_779:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_359
	jmp	.label_363
.label_363:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_366
	jmp	.label_371
.label_773:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_373
.label_419:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_422:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_378
	jmp	.label_382
.label_378:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_345
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_345
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_345
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_393
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_393
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_381
.label_509:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_405
	mov	byte ptr [rbp - 0x91], 0
.label_430:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_409
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_409:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_423
	jmp	.label_428
.label_423:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_430
.label_380:
	jmp	.label_332
.label_382:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_433
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_433
	test	byte ptr [rbp - 0x7b], 1
	je	.label_433
	jmp	.label_357
.label_360:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_440
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_440
	jmp	.label_446
.label_446:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_447
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_447:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_453
.label_453:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_458
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_458:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_462
.label_462:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_465
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_465:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_440:
	jmp	.label_474
.label_474:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_477
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_477:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_482
.label_482:
	jmp	.label_402
.label_402:
	jmp	.label_417
.label_417:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_484
	test	byte ptr [rbp - 0x82], 1
	jne	.label_484
	jmp	.label_452
.label_452:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_491
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_491:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_494
.label_494:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_499
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_499:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_484:
	jmp	.label_354
.label_354:
	jmp	.label_362
.label_362:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_511
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_511:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_398
	mov	byte ptr [rbp - 0x7e], 0
.label_398:
	jmp	.label_336
.label_336:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_523
.label_770:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_373
.label_777:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_334
.label_366:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_353
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_353
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_353
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_343
	jmp	.label_342
.label_342:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_343
	jmp	.label_348
.label_348:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_343
	jmp	.label_505
.label_505:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_343
	jmp	.label_455
.label_455:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_493
	jmp	.label_343
.label_343:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_364
	jmp	.label_357
.label_404:
	jmp	.label_369
.label_369:
	jmp	.label_334
.label_489:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_372
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
	jmp	.label_350
.label_535:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_534
.label_534:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40652e
	.globl sub_40652e
	.type sub_40652e, @function
sub_40652e:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406537
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
	je	.label_535
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_534
	.section	.text
	.align	32
	#Procedure 0x406560

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
	#Procedure 0x406592
	.globl sub_406592
	.type sub_406592, @function
sub_406592:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4065a0

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
	#Procedure 0x4065bb
	.globl sub_4065bb
	.type sub_4065bb, @function
sub_4065bb:

	nop	dword ptr [rax + rax]
.label_540:
	movabs	rax, OFFSET FLAT:label_472
	movabs	rcx, OFFSET FLAT:label_478
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_539:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4065ea
	.globl sub_4065ea
	.type sub_4065ea, @function
sub_4065ea:

	nop	dword ptr [rax + rax]
.label_542:
	movabs	rsi, OFFSET FLAT:label_536
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_540
	movabs	rax, OFFSET FLAT:label_537
	movabs	rcx, OFFSET FLAT:label_538
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_539
.label_541:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_545
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_542
	movabs	rax, OFFSET FLAT:label_543
	movabs	rcx, OFFSET FLAT:label_544
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_539
	.section	.text
	.align	32
	#Procedure 0x406689

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
	je	.label_541
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_539
.label_550:
	movabs	rdi, OFFSET FLAT:label_546
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_555
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_549
	mov	dword ptr [rbp - 0x1c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_556
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_551
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	edi, 4
	movabs	rsi, OFFSET FLAT:label_15
	mov	qword ptr [rbp - 0x30], rax
	call	quotearg_style
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_548
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_557
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_547
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_146
	mov	dword ptr [rbp - 0x40], eax
	call	emit_ancillary_info
.label_552:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x406807
	.globl sub_406807
	.type sub_406807, @function
sub_406807:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40680d

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_550
	jmp	.label_553
.label_553:
	movabs	rdi, OFFSET FLAT:label_554
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_552
	.section	.text
	.align	32
	#Procedure 0x406860
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
	#Procedure 0x406876
	.globl sub_406876
	.type sub_406876, @function
sub_406876:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406880

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_558
	movabs	rdi, OFFSET FLAT:label_564
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_559:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_563:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_562
	movabs	rsi, OFFSET FLAT:label_565
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_562
	movabs	rsi, OFFSET FLAT:label_560
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_561
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_561:
	jmp	.label_562
.label_562:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40696b
	.globl sub_40696b
	.type sub_40696b, @function
sub_40696b:

	nop	dword ptr [rax]
.label_558:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_559
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_563
.label_566:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_568:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4069b2
	.globl sub_4069b2
	.type sub_4069b2, @function
sub_4069b2:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4069b8

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_567
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_567
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_568
.label_567:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_566
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_566
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x406a20
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_569
	jmp	.label_571
.label_571:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_570
.label_569:
	mov	byte ptr [rbp - 1], 0
.label_570:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a52
	.globl sub_406a52
	.type sub_406a52, @function
sub_406a52:

	nop	word ptr cs:[rax + rax]
.label_572:
	mov	byte ptr [rbp - 1], 0
.label_576:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a6e
	.globl sub_406a6e
	.type sub_406a6e, @function
sub_406a6e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a79
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
	jb	.label_573
	jmp	.label_574
.label_574:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_573
	jmp	.label_575
.label_575:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_572
	jmp	.label_573
.label_573:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_576
	.section	.text
	.align	32
	#Procedure 0x406ad0
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
	#Procedure 0x406aef
	.globl sub_406aef
	.type sub_406aef, @function
sub_406aef:

	nop	
	.section	.text
	.align	32
	#Procedure 0x406af0

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
	#Procedure 0x406b15
	.globl sub_406b15
	.type sub_406b15, @function
sub_406b15:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b20
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
	#Procedure 0x406b47
	.globl sub_406b47
	.type sub_406b47, @function
sub_406b47:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b50

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
	#Procedure 0x406b7c
	.globl sub_406b7c
	.type sub_406b7c, @function
sub_406b7c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406b80

	.globl parse_user_spec
	.type parse_user_spec, @function
parse_user_spec:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_577
	mov	esi, 0x3a
	mov	rdi, qword ptr [rbp - 8]
	call	strchr
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_580
.label_577:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x48], rcx
	jmp	.label_580
.label_580:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x28]
	call	parse_with_separator
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_578
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_578
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_578
	mov	esi, 0x2e
	mov	rdi, qword ptr [rbp - 8]
	call	strchr
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_579
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x28]
	call	parse_with_separator
	cmp	rax, 0
	jne	.label_579
	mov	qword ptr [rbp - 0x38], 0
.label_579:
	jmp	.label_578
.label_578:
	mov	rax, qword ptr [rbp - 0x38]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406c70

	.globl uid_unset
	.type uid_unset, @function
uid_unset:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], -1
	sete	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406c85
	.globl sub_406c85
	.type sub_406c85, @function
sub_406c85:

	nop	word ptr cs:[rax + rax]
.label_589:
	movabs	rdi, OFFSET FLAT:label_581
	movabs	rsi, OFFSET FLAT:label_582
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_583
	call	__assert_fail
.label_616:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_592
.label_600:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_592
.label_684:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_595
.label_685:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_595
.label_603:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_590
	mov	dword ptr [rbp - 4], 4
	jmp	.label_592
.label_689:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_595
.label_691:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_595
	.section	.text
	.align	32
	#Procedure 0x406d57

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_589
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_589
	jmp	.label_608
.label_608:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_610
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_598
.label_614:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_585:
	jmp	.label_612
.label_612:
	jmp	.label_609
.label_609:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xc0], rax
	mov	dword ptr [rbp - 0xc4], ecx
	ja	.label_616
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_621]]
	jmp	rcx
.label_595:
	mov	eax, dword ptr [rbp - 0x68]
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx]
	cmp	byte ptr [rcx], 0
	je	.label_623
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_623:
	jmp	.label_597
.label_597:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_592:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406e55
	.globl sub_406e55
	.type sub_406e55, @function
sub_406e55:

	nop	dword ptr [rax + rax]
.label_604:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_601
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_602
	mov	dword ptr [rbp - 4], 4
	jmp	.label_592
.label_686:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_595
.label_617:
	jmp	.label_586
.label_591:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_587
	jmp	.label_613
.label_613:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_587
	jmp	.label_618
.label_618:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_587
	jmp	.label_620
.label_620:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_587
	jmp	.label_584
.label_584:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_587
	jmp	.label_605
.label_605:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_587
	jmp	.label_596
.label_596:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_587
	jmp	.label_599
.label_599:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_587
	jmp	.label_611
.label_611:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_587
	jmp	.label_615
.label_615:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_587
	jmp	.label_606
.label_606:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_609
	jmp	.label_587
.label_587:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_612
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_614
	jmp	.label_619
.label_619:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_614
	jmp	.label_622
.label_622:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_585
	jmp	.label_593
.label_593:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_594
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_594:
	jmp	.label_585
.label_688:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_595
.label_692:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_595
.label_590:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoul
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_604
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_600
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_600
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_600
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_617
.label_588:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_597
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_591
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_592
.label_610:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_598
.label_598:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_607:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_603
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_607
.label_687:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_595
.label_690:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_595
.label_694:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_595
.label_695:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_595
.label_602:
	mov	dword ptr [rbp - 0x4c], 1
.label_601:
	jmp	.label_586
.label_586:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_588
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_592
.label_693:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_595
	.section	.text
	.align	32
	#Procedure 0x407240
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
	jb	.label_624
	jmp	.label_626
.label_626:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_627
	jmp	.label_624
.label_624:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_625
.label_627:
	mov	byte ptr [rbp - 1], 0
.label_625:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407288
	.globl sub_407288
	.type sub_407288, @function
sub_407288:

	nop	dword ptr [rax + rax]
.label_629:
	mov	byte ptr [rbp - 1], 0
.label_630:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40729e
	.globl sub_40729e
	.type sub_40729e, @function
sub_40729e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4072ac
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_629
	jmp	.label_628
.label_628:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_630
	.section	.text
	.align	32
	#Procedure 0x4072d0
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
	#Procedure 0x407301
	.globl sub_407301
	.type sub_407301, @function
sub_407301:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407310

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
	je	.label_631
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
.label_631:
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
	#Procedure 0x407474
	.globl sub_407474
	.type sub_407474, @function
sub_407474:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407480

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
.label_641:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_640
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_640:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_635
	jmp	.label_638
.label_635:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_641
.label_638:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_642
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_642:
	movabs	rdi, OFFSET FLAT:label_634
	call	gettext
	movabs	rsi, OFFSET FLAT:label_147
	movabs	rdx, OFFSET FLAT:label_228
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
	je	.label_633
	movabs	rsi, OFFSET FLAT:label_637
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_633
	movabs	rdi, OFFSET FLAT:label_643
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_633:
	movabs	rdi, OFFSET FLAT:label_639
	call	gettext
	movabs	rsi, OFFSET FLAT:label_228
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_632
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_9
	movabs	rsi, OFFSET FLAT:label_636
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
	#Procedure 0x407619
	.globl sub_407619
	.type sub_407619, @function
sub_407619:

	nop	dword ptr [rax]
.label_644:
	mov	byte ptr [rbp - 1], 0
.label_647:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40762e
	.globl sub_40762e
	.type sub_40762e, @function
sub_40762e:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407633
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
	jb	.label_645
	jmp	.label_646
.label_646:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_644
	jmp	.label_645
.label_645:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_647
.label_649:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_648:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40768b
	.globl sub_40768b
	.type sub_40768b, @function
sub_40768b:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40768f

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	movsxd	rdi, dword ptr [rbp - 0x14]
	xor	esi, esi
	mov	edx, esi
	div	rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdi]
	jae	.label_649
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_648
	.section	.text
	.align	32
	#Procedure 0x4076d0
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
	#Procedure 0x4076ff
	.globl sub_4076ff
	.type sub_4076ff, @function
sub_4076ff:

	nop	
.label_654:
	jmp	.label_650
.label_650:
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
	jne	.label_651
	jmp	.label_652
.label_651:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_650
.label_652:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_653:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407777
	.globl sub_407777
	.type sub_407777, @function
sub_407777:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407786

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
	jne	.label_654
	mov	dword ptr [rbp - 4], 0
	jmp	.label_653
.label_655:
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
	#Procedure 0x4077e3
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
.label_657:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_655
	jmp	.label_656
.label_656:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_657
	.section	.text
	.align	32
	#Procedure 0x407830
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_658
	jmp	.label_660
.label_660:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_659
.label_658:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_659:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407867
	.globl sub_407867
	.type sub_407867, @function
sub_407867:

	nop	word ptr [rax + rax]
.label_665:
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
	#Procedure 0x407896
	.globl sub_407896
	.type sub_407896, @function
sub_407896:

	nop	dword ptr [rax]
.label_662:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_661:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_667:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_666
	jmp	.label_665
.label_666:
	jmp	.label_664
.label_664:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_663
	.section	.text
	.align	32
	#Procedure 0x407903

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
.label_663:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_667
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_662
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_661
	.section	.text
	.align	32
	#Procedure 0x407980

	.globl bad_cast
	.type bad_cast, @function
bad_cast:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40798e
	.globl sub_40798e
	.type sub_40798e, @function
sub_40798e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x407990
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
	#Procedure 0x4079b8
	.globl sub_4079b8
	.type sub_4079b8, @function
sub_4079b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4079c0

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
	#Procedure 0x4079f8
	.globl sub_4079f8
	.type sub_4079f8, @function
sub_4079f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a65
	.globl sub_407a65
	.type sub_407a65, @function
sub_407a65:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a72
	.globl sub_407a72
	.type sub_407a72, @function
sub_407a72:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a96
	.globl sub_407a96
	.type sub_407a96, @function
sub_407a96:

	nop	word ptr cs:[rax + rax]
