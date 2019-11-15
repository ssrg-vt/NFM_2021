	.section	.text
	.align	16
	#Procedure 0x401ab9
	.globl sub_401ab9
	.type sub_401ab9, @function
sub_401ab9:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x401aba
	.globl sub_401aba
	.type sub_401aba, @function
sub_401aba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401af2
	.globl sub_401af2
	.type sub_401af2, @function
sub_401af2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b3a
	.globl sub_401b3a
	.type sub_401b3a, @function
sub_401b3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b5c
	.globl sub_401b5c
	.type sub_401b5c, @function
sub_401b5c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401b6d
	.globl sub_401b6d
	.type sub_401b6d, @function
sub_401b6d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401b86
	.globl sub_401b86
	.type sub_401b86, @function
sub_401b86:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b90
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
	.align	16
	#Procedure 0x401baa
	.globl sub_401baa
	.type sub_401baa, @function
sub_401baa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401bb0
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
	.align	16
	#Procedure 0x401bcf
	.globl sub_401bcf
	.type sub_401bcf, @function
sub_401bcf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401bd0

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
	jne	.label_9
	call	abort
.label_9:
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
	.align	16
	#Procedure 0x401c34
	.globl sub_401c34
	.type sub_401c34, @function
sub_401c34:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c40
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_10
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_11
.label_10:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_11
.label_11:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401c7b
	.globl sub_401c7b
	.type sub_401c7b, @function
sub_401c7b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c80

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_12
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_13
.label_12:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_14
.label_13:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_14:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401cd8
	.globl sub_401cd8
	.type sub_401cd8, @function
sub_401cd8:

	nop	dword ptr [rax + rax]
.label_16:
	mov	byte ptr [rbp - 1], 0
.label_17:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401cee
	.globl sub_401cee
	.type sub_401cee, @function
sub_401cee:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401cfc
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_16
	jmp	.label_15
.label_15:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_17
.label_18:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_19:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401d32
	.globl sub_401d32
	.type sub_401d32, @function
sub_401d32:

	nop	word ptr [rax + rax]
.label_20:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_18
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_18
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401d64

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_20
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_20
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_19
.label_23:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_26:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_22
	movabs	rsi, OFFSET FLAT:label_21
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_22
	movabs	rsi, OFFSET FLAT:label_24
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_25
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_25:
	jmp	.label_22
.label_22:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e55
	.globl sub_401e55
	.type sub_401e55, @function
sub_401e55:

	nop	dword ptr [rax]
.label_28:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_23
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_26
	.section	.text
	.align	16
	#Procedure 0x401e8a

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_28
	movabs	rdi, OFFSET FLAT:label_27
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_32:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_29
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_31]],  rax
.label_29:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_30
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_30:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f46
	.globl sub_401f46
	.type sub_401f46, @function
sub_401f46:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f52
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_33:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_32
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_33
	.section	.text
	.align	16
	#Procedure 0x401fa0

	.globl c_locale
	.type c_locale, @function
c_locale:
	push	rbp
	mov	rbp, rsp
	mov	rax,  qword ptr [word ptr [c_locale_cache]]
	cmp	rax, 0
	jne	.label_34
	mov	edi, 0x1fbf
	movabs	rsi, OFFSET FLAT:label_35
	xor	eax, eax
	mov	edx, eax
	call	newlocale
	mov	qword ptr [word ptr [c_locale_cache]],  rax
.label_34:
	mov	rax,  qword ptr [word ptr [c_locale_cache]]
	pop	rbp
	ret	
.label_37:
	mov	byte ptr [rbp - 1], 0
.label_38:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401fee
	.globl sub_401fee
	.type sub_401fee, @function
sub_401fee:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401ff0
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
	jb	.label_36
	jmp	.label_39
.label_39:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_37
	jmp	.label_36
.label_36:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_38
	.section	.text
	.align	16
	#Procedure 0x402030

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	eax, OFFSET FLAT:label_44
	mov	esi, eax
	mov	edi, 6
	call	setlocale
	mov	edi, OFFSET FLAT:label_53
	mov	esi, edi
	mov	edi, OFFSET FLAT:label_54
	mov	ecx, edi
	mov	rdi, rsi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x20], rax
	call	bindtextdomain
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rax
	call	textdomain
	mov	edx, OFFSET FLAT:close_stdout
	mov	edi, edx
	mov	qword ptr [rbp - 0x30], rax
	call	atexit
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	r8,  qword ptr [word ptr [rip + Version]]
	mov	rcx, rsp
	mov	qword ptr [rcx + 0x20], 0
	mov	qword ptr [word ptr [rcx + 24]], OFFSET FLAT:label_45
	mov	qword ptr [word ptr [rcx + 16]], OFFSET FLAT:label_46
	mov	qword ptr [word ptr [rcx + 8]], OFFSET FLAT:label_47
	mov	qword ptr [word ptr [rcx]], OFFSET FLAT:usage
	mov	edx, OFFSET FLAT:label_48
	mov	r9d, OFFSET FLAT:label_49
	mov	ecx, r9d
	xor	r9d, r9d
	mov	r10b, r9b
	mov	r9d, 1
	mov	dword ptr [rbp - 0x34], eax
	mov	al, r10b
	call	parse_gnu_standard_options_only
	mov	edi, dword ptr [rbp - 8]
	mov	r9d,  dword ptr [dword ptr [rip + optind]]
	sub	edi, r9d
	mov	dword ptr [rbp - 0x38], edi
	je	.label_52
	jmp	.label_40
.label_40:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	je	.label_50
	jmp	.label_41
.label_52:
	movabs	rdi, OFFSET FLAT:label_43
	mov	esi, 1
	call	uptime
	jmp	.label_51
.label_50:
	xor	esi, esi
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	uptime
	jmp	.label_51
.label_51:
	xor	eax, eax
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402166
	.globl sub_402166
	.type sub_402166, @function
sub_402166:

	nop	word ptr cs:[rax + rax]
.label_41:
	movabs	rdi, OFFSET FLAT:label_42
	call	gettext
	mov	ecx,  dword ptr [dword ptr [optind]]
	add	ecx, 1
	movsxd	rdi, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx + rdi*8]
	mov	qword ptr [rbp - 0x48], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x4021c0

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
	jne	.label_55
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_59
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
.label_59:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_56
	call	xalloc_die
.label_55:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_57
	call	xalloc_die
.label_56:
	jmp	.label_58
.label_57:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_58:
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
	.align	16
	#Procedure 0x4022a7
	.globl sub_4022a7
	.type sub_4022a7, @function
sub_4022a7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022b0

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
	jne	.label_60
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_60:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_62
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_61
.label_62:
	call	abort
.label_61:
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
	.align	16
	#Procedure 0x402320

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
	.align	16
	#Procedure 0x40235f
	.globl sub_40235f
	.type sub_40235f, @function
sub_40235f:

	nop	
.label_69:
	jmp	.label_63
.label_63:
	mov	qword ptr [rbp - 8], -1
.label_65:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402377
	.globl sub_402377
	.type sub_402377, @function
sub_402377:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40237b

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_68
	mov	rdi, qword ptr [rbp - 0x18]
	call	timegm
	mov	qword ptr [rbp - 8], rax
	jmp	.label_65
.label_68:
	mov	rdi, qword ptr [rbp - 0x10]
	call	set_tz
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_63
	mov	rdi, qword ptr [rbp - 0x18]
	call	mktime
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], -1
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_66
	lea	rdi, [rbp - 0x28]
	lea	rsi, [rbp - 0x68]
	call	localtime_r
	cmp	rax, 0
	je	.label_64
	lea	rsi, [rbp - 0x68]
	mov	rdi, qword ptr [rbp - 0x18]
	call	equal_tm
	cmp	eax, 0
	je	.label_64
.label_66:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	save_abbr
	test	al, 1
	jne	.label_64
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_64:
	mov	rdi, qword ptr [rbp - 0x20]
	call	revert_tz
	test	al, 1
	jne	.label_67
	jmp	.label_69
.label_67:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_65
	.section	.text
	.align	16
	#Procedure 0x402450
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
	je	.label_70
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_71
.label_70:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_71
.label_71:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402497
	.globl sub_402497
	.type sub_402497, @function
sub_402497:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024a0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_72
	call	gettext
	movabs	rsi, OFFSET FLAT:label_74
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_73
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_49
	movabs	rdx, OFFSET FLAT:label_76
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_75
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
	.align	16
	#Procedure 0x402526
	.globl sub_402526
	.type sub_402526, @function
sub_402526:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402530

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
.label_83:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_77
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_82
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_79
.label_78:
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
	.align	16
	#Procedure 0x4025d3
	.globl sub_4025d3
	.type sub_4025d3, @function
sub_4025d3:

	nop	dword ptr [rax]
.label_82:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_79:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_77:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_81
	jmp	.label_78
.label_81:
	jmp	.label_80
.label_80:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_83
.label_86:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_84
.label_85:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_87:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40267e
	.globl sub_40267e
	.type sub_40267e, @function
sub_40267e:

	nop	word ptr cs:[rax + rax]
.label_88:
	jmp	.label_84
.label_84:
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
	jne	.label_86
	jmp	.label_85
	.section	.text
	.align	16
	#Procedure 0x4026c6

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
	jne	.label_88
	mov	dword ptr [rbp - 4], 0
	jmp	.label_87
	.section	.text
	.align	16
	#Procedure 0x402700
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
	je	.label_89
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_90
.label_89:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_90
.label_90:
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
	.align	16
	#Procedure 0x402772
	.globl sub_402772
	.type sub_402772, @function
sub_402772:

	nop	word ptr cs:[rax + rax]
.label_98:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_91
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_94
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4027bf

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
	jge	.label_98
	call	abort
.label_94:
	test	byte ptr [rbp - 0x31], 1
	je	.label_97
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_93
.label_97:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_93:
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
	je	.label_96
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_31]]
	mov	qword ptr [rax + 8], rcx
.label_96:
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
.label_91:
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
	ja	.label_92
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_95
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_95:
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
.label_92:
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
	.align	16
	#Procedure 0x4029f3
	.globl sub_4029f3
	.type sub_4029f3, @function
sub_4029f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a00

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
	.align	16
	#Procedure 0x402a72
	.globl sub_402a72
	.type sub_402a72, @function
sub_402a72:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a80

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
	.align	16
	#Procedure 0x402a9f
	.globl sub_402a9f
	.type sub_402a9f, @function
sub_402a9f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402aa0

	.globl fprintftime
	.type fprintftime, @function
fprintftime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	xor	eax, eax
	mov	r9d, 0xffffffff
	lea	r10, [rbp - 0x25]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	byte ptr [rbp - 0x25], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rbp - 0x24]
	mov	qword ptr [rbp - 0x30], rcx
	mov	ecx, eax
	mov	dword ptr [rbp - 0x34], r8d
	mov	r8d, eax
	mov	qword ptr [rsp], r10
	mov	r10, qword ptr [rbp - 0x30]
	mov	qword ptr [rsp + 8], r10
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rsp + 0x10], eax
	call	__strftime_internal
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b0c
	.globl sub_402b0c
	.type sub_402b0c, @function
sub_402b0c:

	nop	dword ptr [rax]
.label_100:
	mov	byte ptr [rbp - 1], 0
.label_101:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b1e
	.globl sub_402b1e
	.type sub_402b1e, @function
sub_402b1e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b2c
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_100
	jmp	.label_99
.label_99:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_101
	.section	.text
	.align	16
	#Procedure 0x402b50
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_102
	jmp	.label_104
.label_104:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_103
.label_102:
	mov	byte ptr [rbp - 1], 0
.label_103:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b82
	.globl sub_402b82
	.type sub_402b82, @function
sub_402b82:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b90

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
	.align	16
	#Procedure 0x402bb0

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
	.align	16
	#Procedure 0x402bcb
	.globl sub_402bcb
	.type sub_402bcb, @function
sub_402bcb:

	nop	dword ptr [rax + rax]
.label_108:
	mov	rdi, qword ptr [rbp - 0x18]
	call	tzalloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_107
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_105
.label_106:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_105:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c07
	.globl sub_402c07
	.type sub_402c07, @function
sub_402c07:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c0d

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
	je	.label_110
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 8]
	cmp	ecx, 0
	je	.label_108
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	je	.label_109
	jmp	.label_108
.label_107:
	mov	rdi, qword ptr [rbp - 0x10]
	call	change_env
	test	al, 1
	jne	.label_106
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
	jmp	.label_105
.label_110:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 8], 0
	jne	.label_108
.label_109:
	mov	rax,  qword ptr [word ptr [local_tz]]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_105
	.section	.text
	.align	16
	#Procedure 0x402cc0

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
	je	.label_111
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_35
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_114
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_112
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_113
.label_114:
	mov	byte ptr [rbp - 5], 0
.label_113:
	jmp	.label_111
.label_111:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d33
	.globl sub_402d33
	.type sub_402d33, @function
sub_402d33:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d40

	.globl tzfree
	.type tzfree, @function
tzfree:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	rdi,  qword ptr [word ptr [local_tz]]
	je	.label_115
	jmp	.label_117
.label_117:
	cmp	qword ptr [rbp - 8], 0
	je	.label_116
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_117
.label_116:
	jmp	.label_115
.label_115:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d9d
	.globl sub_402d9d
	.type sub_402d9d, @function
sub_402d9d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402da0

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
	.align	16
	#Procedure 0x402dd7
	.globl sub_402dd7
	.type sub_402dd7, @function
sub_402dd7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402de0
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
	.align	16
	#Procedure 0x402e0f
	.globl sub_402e0f
	.type sub_402e0f, @function
sub_402e0f:

	nop	
.label_142:
	movabs	rdi, OFFSET FLAT:label_121
	call	gettext
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x20bc], eax
.label_152:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_132
	movabs	rdi, OFFSET FLAT:label_136
	call	gettext
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x20c0], eax
	jmp	.label_122
.label_132:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x38]
	jge	.label_126
	mov	rdi, qword ptr [rbp - 0x38]
	call	select_plural
	movabs	rdi, OFFSET FLAT:label_134
	movabs	rsi, OFFSET FLAT:label_135
	mov	rdx, rax
	call	ngettext
	mov	rsi, qword ptr [rbp - 0x38]
	mov	edx, dword ptr [rbp - 0x3c]
	mov	ecx, dword ptr [rbp - 0x40]
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x20c4], eax
	jmp	.label_130
.label_148:
	xor	eax, eax
	mov	edi, eax
	call	time
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_144
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_140
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_141
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x209c], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x209c]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_140:
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
.label_144:
	lea	rdi, [rbp - 0x28]
	mov	eax, 0x3c
	mov	ecx, eax
	mov	eax, 0xe10
	mov	edx, eax
	mov	eax, 0x15180
	mov	esi, eax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x20a8], rdx
	cqo	
	idiv	rsi
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x30]
	imul	rsi, qword ptr [rbp - 0x38], 0x15180
	sub	rax, rsi
	cqo	
	mov	rsi, qword ptr [rbp - 0x20a8]
	idiv	rsi
	mov	r8d, eax
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rax, qword ptr [rbp - 0x30]
	imul	r9, qword ptr [rbp - 0x38], 0x15180
	sub	rax, r9
	imul	r8d, dword ptr [rbp - 0x3c], 0xe10
	movsxd	r9, r8d
	sub	rax, r9
	cqo	
	idiv	rcx
	mov	r8d, eax
	mov	dword ptr [rbp - 0x40], r8d
	call	localtime
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_142
	movabs	rdi, OFFSET FLAT:label_147
	mov	rax,  qword ptr [word ptr [stdout]]
	mov	qword ptr [rbp - 0x20b0], rax
	call	gettext
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rbp - 0x20b0]
	mov	rsi, rax
	call	fprintftime
	mov	qword ptr [rbp - 0x20b8], rax
	jmp	.label_152
.label_138:
	movsd	xmm0,  qword ptr [word ptr [rip + label_149]]
	movsd	qword ptr [rbp - 0x2090], xmm0
	jmp	.label_150
.label_150:
	movsd	xmm0, qword ptr [rbp - 0x2090]
	cvttsd2si	rax, xmm0
	mov	qword ptr [rbp - 0x30], rax
.label_151:
	jmp	.label_139
.label_139:
	mov	rdi, qword ptr [rbp - 0x70]
	call	rpl_fclose
	mov	dword ptr [rbp - 0x2094], eax
.label_156:
	jmp	.label_145
.label_145:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 8], rcx
	cmp	rax, 0
	je	.label_148
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdx + 0x2c]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x2095], cl
	je	.label_155
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, word ptr [rcx]
	cmp	edx, 7
	mov	byte ptr [rbp - 0x2096], al
	je	.label_143
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 0x2096], cl
	jmp	.label_143
.label_143:
	mov	al, byte ptr [rbp - 0x2096]
	mov	byte ptr [rbp - 0x2095], al
.label_155:
	mov	al, byte ptr [rbp - 0x2095]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	add	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	ecx, word ptr [rdx]
	cmp	ecx, 2
	jne	.label_146
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rax, dword ptr [rax + 0x154]
	mov	qword ptr [rbp - 0x20], rax
.label_146:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x180
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_145
.label_129:
	cmp	dword ptr [rbp - 0x64], 0
	jle	.label_133
	movabs	rdi, OFFSET FLAT:label_123
	call	gettext
	movsd	xmm0, qword ptr [rbp - 0x60]
	mov	rdi, rax
	mov	al, 1
	call	printf
	mov	dword ptr [rbp - 0x20d4], eax
.label_133:
	cmp	dword ptr [rbp - 0x64], 1
	jle	.label_125
	movabs	rdi, OFFSET FLAT:label_119
	movsd	xmm0, qword ptr [rbp - 0x58]
	mov	al, 1
	call	printf
	mov	dword ptr [rbp - 0x20d8], eax
.label_125:
	cmp	dword ptr [rbp - 0x64], 2
	jle	.label_118
	movabs	rdi, OFFSET FLAT:label_119
	movsd	xmm0, qword ptr [rbp - 0x50]
	mov	al, 1
	call	printf
	mov	dword ptr [rbp - 0x20dc], eax
.label_118:
	cmp	dword ptr [rbp - 0x64], 0
	jle	.label_120
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x20e0], eax
.label_120:
	jmp	.label_124
.label_124:
	add	rsp, 0x20e0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40316e
	.globl sub_40316e
	.type sub_40316e, @function
sub_40316e:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403172

	.globl print_uptime
	.type print_uptime, @function
print_uptime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20e0
	movabs	rax, OFFSET FLAT:label_153
	movabs	rcx, OFFSET FLAT:label_154
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x30], 0
	mov	rdi, rax
	mov	rsi, rcx
	call	fopen
	mov	qword ptr [rbp - 0x70], rax
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_156
	mov	esi, 0x2000
	lea	rdi, [rbp - 0x2070]
	mov	rdx, qword ptr [rbp - 0x70]
	call	fgets_unlocked
	lea	rdx, [rbp - 0x2070]
	mov	qword ptr [rbp - 0x2078], rax
	mov	rax, qword ptr [rbp - 0x2078]
	cmp	rax, rdx
	jne	.label_139
	lea	rsi, [rbp - 0x2080]
	lea	rdi, [rbp - 0x2070]
	call	c_strtod
	lea	rsi, [rbp - 0x2070]
	movsd	qword ptr [rbp - 0x2088], xmm0
	cmp	rsi, qword ptr [rbp - 0x2080]
	je	.label_151
	xorps	xmm0, xmm0
	movsd	xmm1, qword ptr [rbp - 0x2088]
	ucomisd	xmm1, xmm0
	jb	.label_138
	movsd	xmm0,  qword ptr [word ptr [rip + label_137]]
	ucomisd	xmm0, qword ptr [rbp - 0x2088]
	jbe	.label_138
	movsd	xmm0, qword ptr [rbp - 0x2088]
	movsd	qword ptr [rbp - 0x2090], xmm0
	jmp	.label_150
.label_126:
	movabs	rdi, OFFSET FLAT:label_131
	call	gettext
	mov	esi, dword ptr [rbp - 0x3c]
	mov	edx, dword ptr [rbp - 0x40]
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x20c8], eax
.label_130:
	jmp	.label_122
.label_122:
	mov	rdi, qword ptr [rbp - 0x18]
	call	select_plural
	movabs	rdi, OFFSET FLAT:label_127
	movabs	rsi, OFFSET FLAT:label_128
	mov	rdx, rax
	call	ngettext
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	esi, 3
	lea	rdi, [rbp - 0x60]
	mov	dword ptr [rbp - 0x20cc], eax
	call	getloadavg
	mov	dword ptr [rbp - 0x64], eax
	cmp	dword ptr [rbp - 0x64], -1
	jne	.label_129
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x20d0], eax
	jmp	.label_124
.label_1123:
	movabs	rdi, OFFSET FLAT:label_157
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
	jmp	.label_159
.label_1121:
	movabs	rdi, OFFSET FLAT:label_167
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
	jmp	.label_159
.label_170:
	movabs	rsi, OFFSET FLAT:label_160
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_174:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_171
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
	mov	ecx, OFFSET FLAT:label_169
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
	ja	.label_175
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_168]]
	jmp	rcx
	.section	.text
	.align	16
	#Procedure 0x4034a8

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
	je	.label_170
	movabs	rsi, OFFSET FLAT:label_166
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_174
.label_1125:
	movabs	rdi, OFFSET FLAT:label_158
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
	jmp	.label_159
.label_1120:
	movabs	rdi, OFFSET FLAT:label_173
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
	jmp	.label_159
.label_1122:
	movabs	rdi, OFFSET FLAT:label_161
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
	jmp	.label_159
.label_175:
	movabs	rdi, OFFSET FLAT:label_165
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
.label_159:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403753
	.globl sub_403753
	.type sub_403753, @function
sub_403753:

	nop	
.label_1118:
	movabs	rdi, OFFSET FLAT:label_164
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
	jmp	.label_159
.label_1117:
	movabs	rdi, OFFSET FLAT:label_163
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
	jmp	.label_159
.label_1116:
	jmp	.label_159
.label_1124:
	movabs	rdi, OFFSET FLAT:label_162
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
	jmp	.label_159
.label_1119:
	movabs	rdi, OFFSET FLAT:label_172
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
	jmp	.label_159
.label_178:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	call	strtod_l
	movsd	qword ptr [rbp - 0x20], xmm0
	movsd	xmm0, qword ptr [rbp - 0x20]
	movsd	qword ptr [rbp - 8], xmm0
.label_176:
	movsd	xmm0, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4038eb
	.globl sub_4038eb
	.type sub_4038eb, @function
sub_4038eb:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038f9

	.globl c_strtod
	.type c_strtod, @function
c_strtod:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	call	c_locale
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_178
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_177
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
.label_177:
	xorps	xmm0, xmm0
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.label_176
	.section	.text
	.align	16
	#Procedure 0x403940

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
	.align	16
	#Procedure 0x40397c
	.globl sub_40397c
	.type sub_40397c, @function
sub_40397c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403980

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
	je	.label_179
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_179:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4039bb
	.globl sub_4039bb
	.type sub_4039bb, @function
sub_4039bb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039c0
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
	.align	16
	#Procedure 0x4039e7
	.globl sub_4039e7
	.type sub_4039e7, @function
sub_4039e7:

	nop	word ptr [rax + rax]
.label_181:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
	mov	rdi, qword ptr [rbp - 0x10]
	call	change_env
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
	test	byte ptr [rbp - 0x15], 1
	jne	.label_180
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_180:
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
.label_182:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a4c
	.globl sub_403a4c
	.type sub_403a4c, @function
sub_403a4c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a59

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rdi,  qword ptr [word ptr [local_tz]]
	jne	.label_181
	mov	byte ptr [rbp - 1], 1
	jmp	.label_182
	.section	.text
	.align	16
	#Procedure 0x403a80
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
	.align	16
	#Procedure 0x403aa5
	.globl sub_403aa5
	.type sub_403aa5, @function
sub_403aa5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ab0

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
	jne	.label_183
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_183
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_183
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_185
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_184
.label_185:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_184
.label_183:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_184:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b72
	.globl sub_403b72
	.type sub_403b72, @function
sub_403b72:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b80
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
	jb	.label_186
	jmp	.label_189
.label_189:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_186
	jmp	.label_187
.label_187:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_188
	jmp	.label_186
.label_186:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_190
.label_188:
	mov	byte ptr [rbp - 1], 0
.label_190:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403be5
	.globl sub_403be5
	.type sub_403be5, @function
sub_403be5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403bf0
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
	.align	16
	#Procedure 0x403c1a
	.globl sub_403c1a
	.type sub_403c1a, @function
sub_403c1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c20

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
	.align	16
	#Procedure 0x403c58
	.globl sub_403c58
	.type sub_403c58, @function
sub_403c58:

	nop	dword ptr [rax + rax]
.label_192:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_191
.label_191:
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
	.align	16
	#Procedure 0x403cd3
	.globl sub_403cd3
	.type sub_403cd3, @function
sub_403cd3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ce1

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
	je	.label_192
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_191
	.section	.text
	.align	16
	#Procedure 0x403d10
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
	.align	16
	#Procedure 0x403d37
	.globl sub_403d37
	.type sub_403d37, @function
sub_403d37:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d40
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
	je	.label_193
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
.label_193:
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
	.align	16
	#Procedure 0x403ea4
	.globl sub_403ea4
	.type sub_403ea4, @function
sub_403ea4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403eb0
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
	jb	.label_194
	jmp	.label_196
.label_196:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_197
	jmp	.label_194
.label_194:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_195
.label_197:
	mov	byte ptr [rbp - 1], 0
.label_195:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403efb
	.globl sub_403efb
	.type sub_403efb, @function
sub_403efb:

	nop	dword ptr [rax + rax]
.label_198:
	mov	byte ptr [rbp - 1], 0
.label_200:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f0e
	.globl sub_403f0e
	.type sub_403f0e, @function
sub_403f0e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f19
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
	jb	.label_199
	jmp	.label_201
.label_201:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_199
	jmp	.label_202
.label_202:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_198
	jmp	.label_199
.label_199:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_200
	.section	.text
	.align	16
	#Procedure 0x403f70

	.globl desirable_utmp_entry
	.type desirable_utmp_entry, @function
desirable_utmp_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdi + 0x2c]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x16], cl
	je	.label_206
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, word ptr [rcx]
	cmp	edx, 7
	mov	byte ptr [rbp - 0x17], al
	je	.label_205
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 0x17], cl
	jmp	.label_205
.label_205:
	mov	al, byte ptr [rbp - 0x17]
	mov	byte ptr [rbp - 0x16], al
.label_206:
	mov	al, byte ptr [rbp - 0x16]
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
	mov	ecx, dword ptr [rbp - 0x14]
	and	ecx, 2
	cmp	ecx, 0
	je	.label_207
	test	byte ptr [rbp - 0x15], 1
	jne	.label_207
	mov	byte ptr [rbp - 1], 0
	jmp	.label_204
.label_203:
	mov	byte ptr [rbp - 1], 1
.label_204:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
.label_207:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 1
	cmp	eax, 0
	je	.label_203
	test	byte ptr [rbp - 0x15], 1
	je	.label_203
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	eax, dword ptr [rcx + 4]
	jge	.label_203
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 4]
	call	kill
	cmp	eax, 0
	jge	.label_203
	call	__errno_location
	cmp	dword ptr [rax], 3
	jne	.label_203
	mov	byte ptr [rbp - 1], 0
	jmp	.label_204
.label_214:
	xor	edi, edi
	call	qword ptr [rbp - 0x58]
	jmp	.label_215
.label_210:
	mov	rax, qword ptr [rbp - 0x58]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	rax
.label_215:
	jmp	.label_209
.label_209:
	mov	eax, dword ptr [rbp - 0x60]
	mov	dword ptr [dword ptr [rip + opterr]],  eax
	add	rsp, 0x1d0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404085
	.globl sub_404085
	.type sub_404085, @function
sub_404085:

	nop	word ptr [rax + rax]
.label_213:
	lea	rax, [rbp - 0x80]
	mov	rcx, rax
	lea	rdx, [rbp - 0x130]
	mov	qword ptr [rcx + 0x10], rdx
	lea	rdx, [rbp + 0x18]
	mov	qword ptr [rcx + 8], rdx
	mov	dword ptr [rcx + 4], 0x30
	mov	dword ptr [rcx], 0x30
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, rax
	call	version_etc_va
	xor	edi, edi
	call	exit
	.section	.text
	.align	16
	#Procedure 0x4040d5

	.globl parse_gnu_standard_options_only
	.type parse_gnu_standard_options_only, @function
parse_gnu_standard_options_only:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x1d0
	test	al, al
	movaps	xmmword ptr [rbp - 0x140], xmm7
	movaps	xmmword ptr [rbp - 0x150], xmm6
	movaps	xmmword ptr [rbp - 0x160], xmm5
	movaps	xmmword ptr [rbp - 0x170], xmm4
	movaps	xmmword ptr [rbp - 0x180], xmm3
	movaps	xmmword ptr [rbp - 0x190], xmm2
	movaps	xmmword ptr [rbp - 0x1a0], xmm1
	movaps	xmmword ptr [rbp - 0x1b0], xmm0
	mov	dword ptr [rbp - 0x1b4], edi
	mov	dword ptr [rbp - 0x1b8], r9d
	mov	qword ptr [rbp - 0x1c0], r8
	mov	qword ptr [rbp - 0x1c8], rcx
	mov	qword ptr [rbp - 0x1d0], rdx
	mov	qword ptr [rbp - 0x1d8], rsi
	je	.label_212
	movaps	xmm0, xmmword ptr [rbp - 0x1b0]
	movaps	xmmword ptr [rbp - 0x100], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x1a0]
	movaps	xmmword ptr [rbp - 0xf0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x190]
	movaps	xmmword ptr [rbp - 0xe0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x180]
	movaps	xmmword ptr [rbp - 0xd0], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm7
.label_212:
	mov	eax, dword ptr [rbp - 0x1b8]
	mov	cl, al
	mov	rdx, qword ptr [rbp + 0x10]
	mov	rsi, qword ptr [rbp - 0x1c0]
	mov	rdi, qword ptr [rbp - 0x1c8]
	mov	r8, qword ptr [rbp - 0x1d0]
	mov	r9, qword ptr [rbp - 0x1d8]
	mov	r10d, dword ptr [rbp - 0x1b4]
	movabs	r11, OFFSET FLAT:long_options
	xor	ebx, ebx
	mov	r14d, ebx
	movabs	r15, OFFSET FLAT:label_208
	movabs	r12, OFFSET FLAT:label_44
	mov	dword ptr [rbp - 0x24], r10d
	mov	qword ptr [rbp - 0x30], r9
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x48], rsi
	and	cl, 1
	mov	byte ptr [rbp - 0x49], cl
	mov	qword ptr [rbp - 0x58], rdx
	mov	r10d,  dword ptr [dword ptr [opterr]]
	mov	dword ptr [rbp - 0x60], r10d
	mov	dword ptr [dword ptr [opterr]],  1
	mov	cl, byte ptr [rbp - 0x49]
	test	cl, 1
	cmovne	r15, r12
	mov	qword ptr [rbp - 0x68], r15
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, r11
	mov	r8, r14
	call	getopt_long
	mov	dword ptr [rbp - 0x5c], eax
	cmp	eax, -1
	je	.label_209
	mov	eax, dword ptr [rbp - 0x5c]
	mov	ecx, eax
	sub	ecx, 0x68
	mov	dword ptr [rbp - 0x1dc], eax
	mov	dword ptr [rbp - 0x1e0], ecx
	je	.label_214
	jmp	.label_211
.label_211:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_213
	jmp	.label_210
.label_218:
	mov	byte ptr [rbp - 1], 0
.label_217:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4042be
	.globl sub_4042be
	.type sub_4042be, @function
sub_4042be:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4042bf
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_218
	jmp	.label_216
.label_216:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_217
.label_221:
	jmp	.label_219
.label_219:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4042f3
	.globl sub_4042f3
	.type sub_4042f3, @function
sub_4042f3:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042f9

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
	ja	.label_221
	jmp	.label_220
.label_220:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_219
.label_224:
	mov	rdi, qword ptr [rbp - 0x10]
	call	set_tz
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_222
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	localtime_r
	xor	ecx, ecx
	mov	dl, cl
	cmp	rax, 0
	mov	byte ptr [rbp - 0x2a], dl
	je	.label_226
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	save_abbr
	mov	byte ptr [rbp - 0x2a], al
.label_226:
	mov	al, byte ptr [rbp - 0x2a]
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	mov	rdi, qword ptr [rbp - 0x28]
	call	revert_tz
	test	al, 1
	jne	.label_223
	jmp	.label_225
.label_223:
	test	byte ptr [rbp - 0x29], 1
	je	.label_225
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_227
.label_225:
	jmp	.label_222
.label_222:
	mov	qword ptr [rbp - 8], 0
.label_227:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4043c2
	.globl sub_4043c2
	.type sub_4043c2, @function
sub_4043c2:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043cb
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
	jne	.label_224
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	gmtime_r
	mov	qword ptr [rbp - 8], rax
	jmp	.label_227
	.section	.text
	.align	16
	#Procedure 0x404400
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
	.align	16
	#Procedure 0x404437
	.globl sub_404437
	.type sub_404437, @function
sub_404437:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404440

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
	.align	16
	#Procedure 0x404473
	.globl sub_404473
	.type sub_404473, @function
sub_404473:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404480
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_228
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_228:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4044aa
	.globl sub_4044aa
	.type sub_4044aa, @function
sub_4044aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044b0

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
	.align	16
	#Procedure 0x4044d8
	.globl sub_4044d8
	.type sub_4044d8, @function
sub_4044d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044e0

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
	.align	16
	#Procedure 0x40457f
	.globl sub_40457f
	.type sub_40457f, @function
sub_40457f:

	nop	
.label_232:
	call	tzset
	mov	byte ptr [rbp - 1], 1
.label_231:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404597

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
	je	.label_230
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_229
.label_230:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_229
.label_229:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	setenv_TZ
	cmp	eax, 0
	je	.label_232
	mov	byte ptr [rbp - 1], 0
	jmp	.label_231
	.section	.text
	.align	16
	#Procedure 0x4045f0
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
	.align	16
	#Procedure 0x40462a
	.globl sub_40462a
	.type sub_40462a, @function
sub_40462a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404630
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
	.align	16
	#Procedure 0x404658
	.globl sub_404658
	.type sub_404658, @function
sub_404658:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404660
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
	.align	16
	#Procedure 0x404696
	.globl sub_404696
	.type sub_404696, @function
sub_404696:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046a0
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
	.align	16
	#Procedure 0x4046cd
	.globl sub_4046cd
	.type sub_4046cd, @function
sub_4046cd:

	nop	dword ptr [rax]
.label_234:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_235:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4046db
	.globl sub_4046db
	.type sub_4046db, @function
sub_4046db:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046e4
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_234
	jmp	.label_233
.label_233:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_235
.label_1062:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_394
	test	byte ptr [rbp - 0x7b], 1
	je	.label_396
	jmp	.label_250
.label_296:
	jmp	.label_401
.label_401:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_403
	jmp	.label_246
.label_435:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_405
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_236
.label_1064:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_261
	test	byte ptr [rbp - 0x7b], 1
	je	.label_414
	jmp	.label_250
.label_1056:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_238
.label_298:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_419
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
	jmp	.label_415
.label_324:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_390:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_241
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_241
	test	byte ptr [rbp - 0x7b], 1
	je	.label_247
	jmp	.label_250
.label_411:
	jmp	.label_252
.label_252:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_253
	test	byte ptr [rbp - 0x82], 1
	jne	.label_253
	jmp	.label_258
.label_258:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_339
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_339:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_372
.label_372:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_272
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_272:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_253:
	jmp	.label_434
.label_434:
	jmp	.label_282
.label_282:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_283
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_283:
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
	jmp	.label_288
.label_374:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_296
.label_379:
	jmp	.label_246
.label_262:
	jmp	.label_256
.label_256:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_358
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_358:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_304
.label_312:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_314:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_310
	jmp	.label_259
.label_310:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_241
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_241
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_241
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_324
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_324
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_390
.label_416:
	jmp	.label_242
.label_1208:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_337
	movabs	rdi, OFFSET FLAT:label_255
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_342
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_337:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_321
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_366:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_349
	jmp	.label_353
.label_353:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_354
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_354:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_363
.label_363:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_366
.label_1055:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_238
.label_414:
	jmp	.label_242
.label_261:
	test	byte ptr [rbp - 0x79], 1
	je	.label_375
	test	byte ptr [rbp - 0x7b], 1
	je	.label_375
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_375
	jmp	.label_242
	.section	.text
	.align	16
	#Procedure 0x404ab1

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
.label_263:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_264
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_412]]
	jmp	rcx
.label_396:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_410
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_410
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_410:
	jmp	.label_421
.label_421:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_423
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_423:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_426
.label_426:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_430
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_430:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_409
.label_409:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_436
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_436:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_394:
	jmp	.label_246
.label_295:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_249
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_249:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_265
.label_265:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_270
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_270:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_274
.label_274:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_277
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_277:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_406
.label_406:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_286
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_286:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_278
.label_418:
	jmp	.label_239
.label_239:
	test	byte ptr [rbp - 0x79], 1
	je	.label_294
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_297
.label_294:
	jmp	.label_246
.label_1206:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_1205:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_301
	jmp	.label_302
.label_302:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_303
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_303:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_301
.label_301:
	movabs	rax, OFFSET FLAT:label_311
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_240
.label_237:
	jmp	.label_297
.label_297:
	jmp	.label_317
.label_317:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_318
	jmp	.label_250
.label_349:
	jmp	.label_321
.label_321:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_240
.label_433:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_328
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_328
	jmp	.label_332
.label_332:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_333
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_333:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_338
.label_338:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_427
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_427:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_267
.label_267:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_287
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_287:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_328:
	jmp	.label_404
.label_404:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_360
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_360:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_365
.label_365:
	jmp	.label_369
.label_369:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_370
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_370:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_334
.label_334:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_383
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_383:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_391
.label_1207:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_240
.label_244:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_254
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_254
	test	byte ptr [rbp - 0x7d], 1
	je	.label_254
	test	byte ptr [rbp - 0x7e], 1
	je	.label_397
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
	jmp	.label_304
.label_419:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_420
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_420:
	jmp	.label_413
.label_413:
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
	jne	.label_435
	jmp	.label_236
.label_1059:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_238
.label_1201:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_240
.label_307:
	jmp	.label_246
.label_364:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_248
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_248
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_248
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_266
	jmp	.label_273
.label_273:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_266
	jmp	.label_279
.label_279:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_266
	jmp	.label_284
.label_284:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_266
	jmp	.label_289
.label_289:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_291
	jmp	.label_266
.label_266:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_295
	jmp	.label_250
.label_247:
	mov	byte ptr [rbp - 0x81], 1
.label_241:
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
	ja	.label_298
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_308]]
	jmp	rcx
.label_351:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_243
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_243
	mov	qword ptr [rbp - 0xb8], 1
.label_439:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_316
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
	jb	.label_319
	jmp	.label_329
.label_329:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_319
	jmp	.label_292
.label_292:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_319
	jmp	.label_432
.label_432:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_367
	jmp	.label_319
.label_319:
	jmp	.label_250
.label_245:
	jmp	.label_343
.label_343:
	jmp	.label_246
.label_1052:
	test	byte ptr [rbp - 0x79], 1
	je	.label_344
	jmp	.label_345
.label_345:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_347
	jmp	.label_250
.label_355:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_352
	jmp	.label_250
.label_1063:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_355
	jmp	.label_325
.label_325:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_364
	jmp	.label_368
.label_368:
	jmp	.label_346
.label_346:
	jmp	.label_246
.label_1065:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_374
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_296
	jmp	.label_379
.label_1203:
	mov	byte ptr [rbp - 0x79], 1
.label_1202:
	mov	byte ptr [rbp - 0x7b], 1
.label_1204:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_382
	mov	byte ptr [rbp - 0x79], 1
.label_382:
	jmp	.label_384
.label_384:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_385
	jmp	.label_387
.label_387:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_389
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_389:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_385
.label_385:
	movabs	rax, OFFSET FLAT:label_342
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_240
.label_428:
	test	byte ptr [rbp - 0x81], 1
	je	.label_395
	jmp	.label_399
.label_399:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_400
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_400:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_395:
	jmp	.label_391
.label_391:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_411
	jmp	.label_416
.label_375:
	jmp	.label_238
.label_238:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_418
	test	byte ptr [rbp - 0x7b], 1
	je	.label_418
	jmp	.label_250
.label_1054:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_239
.label_377:
	jmp	.label_236
.label_352:
	jmp	.label_346
.label_422:
	jmp	.label_246
.label_246:
	test	byte ptr [rbp - 0x79], 1
	je	.label_425
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_371
.label_425:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_429
.label_371:
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
	jne	.label_237
.label_429:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_237
	jmp	.label_242
.label_344:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_245
	jmp	.label_251
.label_257:
	jmp	.label_306
.label_306:
	jmp	.label_254
.label_254:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_256
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_256
	jmp	.label_260
.label_260:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_262
	jmp	.label_268
.label_268:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_269
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_269:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_275
.label_275:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_260
.label_250:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_281
	test	byte ptr [rbp - 0x79], 1
	je	.label_281
	mov	dword ptr [rbp - 0x34], 4
.label_281:
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
.label_304:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405521
	.globl sub_405521
	.type sub_405521, @function
sub_405521:

	nop	dword ptr [rax + rax]
.label_403:
	jmp	.label_393
.label_393:
	mov	byte ptr [rbp - 0x83], 1
.label_1060:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_307
	test	byte ptr [rbp - 0x7b], 1
	je	.label_307
	jmp	.label_250
.label_240:
	mov	qword ptr [rbp - 0x58], 0
.label_438:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_312
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_314
.label_264:
	call	abort
.label_347:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_322
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_322
	jmp	.label_326
.label_326:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_327
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_327:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_376
.label_376:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_335
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_335:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_340
.label_340:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_341
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_341:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_322:
	jmp	.label_348
.label_348:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_350
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_350:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_357
.label_357:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_362
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_362
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_362
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_362
	jmp	.label_380
.label_380:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_381
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_381:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_386
.label_386:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_388
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_388:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_362
.label_362:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_343
.label_1061:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_246
.label_316:
	jmp	.label_243
.label_243:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_392
	mov	byte ptr [rbp - 0x91], 0
.label_392:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_402
.label_402:
	jmp	.label_407
.label_407:
	jmp	.label_408
.label_408:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_413
.label_236:
	jmp	.label_415
.label_415:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_417
	test	byte ptr [rbp - 0x79], 1
	je	.label_422
	test	byte ptr [rbp - 0x91], 1
	jne	.label_422
.label_417:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_288:
	test	byte ptr [rbp - 0x79], 1
	je	.label_428
	test	byte ptr [rbp - 0x91], 1
	jne	.label_428
	jmp	.label_431
.label_431:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_433
	jmp	.label_250
.label_367:
	jmp	.label_361
.label_361:
	jmp	.label_437
.label_437:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_439
.label_1057:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_239
.label_259:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_244
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_244
	test	byte ptr [rbp - 0x7b], 1
	je	.label_244
	jmp	.label_250
.label_397:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_257
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_257
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_263
.label_318:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_271
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_271
	jmp	.label_398
.label_398:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_276
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_276:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_280
.label_280:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_285
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_285:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_290
.label_290:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_293
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_293:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_271:
	jmp	.label_299
.label_299:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_300
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_300:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_305
.label_305:
	jmp	.label_242
.label_242:
	jmp	.label_309
.label_309:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_424
	test	byte ptr [rbp - 0x82], 1
	jne	.label_424
	jmp	.label_313
.label_313:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_315
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_315:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_320
.label_320:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_323
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_323:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_424:
	jmp	.label_359
.label_359:
	jmp	.label_330
.label_330:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_331
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_331:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_336
	mov	byte ptr [rbp - 0x7e], 0
.label_336:
	jmp	.label_251
.label_251:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_438
.label_1053:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_239
.label_291:
	jmp	.label_278
.label_278:
	jmp	.label_248
.label_248:
	jmp	.label_346
.label_1058:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_239
.label_405:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_351
	mov	byte ptr [rbp - 0x91], 0
.label_378:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_356
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_356:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_373
	jmp	.label_377
.label_373:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_378
.label_441:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405ab6
	.globl sub_405ab6
	.type sub_405ab6, @function
sub_405ab6:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405ab8

	.globl fwrite_uppcase
	.type fwrite_uppcase, @function
fwrite_uppcase:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_440:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	cmp	rax, 0
	jbe	.label_441
	mov	rax, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rax]
	call	toupper
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	fputc
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 1
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_440
	.section	.text
	.align	16
	#Procedure 0x405b10

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
	.align	16
	#Procedure 0x405bbd
	.globl sub_405bbd
	.type sub_405bbd, @function
sub_405bbd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405bc0

	.globl fwrite_lowcase
	.type fwrite_lowcase, @function
fwrite_lowcase:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_443:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	cmp	rax, 0
	jbe	.label_442
	mov	rax, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rax]
	call	tolower
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	fputc
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 1
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_443
.label_442:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405c1e
	.globl sub_405c1e
	.type sub_405c1e, @function
sub_405c1e:

	nop	
.label_445:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405c2a
	.globl sub_405c2a
	.type sub_405c2a, @function
sub_405c2a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c34
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
	jb	.label_444
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_445
.label_444:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405c80

	.globl setenv_TZ
	.type setenv_TZ, @function
setenv_TZ:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_446
	movabs	rdi, OFFSET FLAT:label_447
	mov	edx, 1
	mov	rsi, qword ptr [rbp - 8]
	call	setenv
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_448
.label_446:
	movabs	rdi, OFFSET FLAT:label_447
	call	unsetenv
	mov	dword ptr [rbp - 0xc], eax
.label_448:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405cd2
	.globl sub_405cd2
	.type sub_405cd2, @function
sub_405cd2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ce0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_449
	jmp	.label_455
.label_455:
	movabs	rdi, OFFSET FLAT:label_457
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_450
.label_449:
	movabs	rdi, OFFSET FLAT:label_453
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_454
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_452
	mov	dword ptr [rbp - 0x1c], eax
	call	gettext
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_451
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_43
	movabs	rdx, OFFSET FLAT:label_459
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_458
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_456
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_48
	mov	dword ptr [rbp - 0x2c], eax
	call	emit_ancillary_info
.label_450:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x405e1a
	.globl sub_405e1a
	.type sub_405e1a, @function
sub_405e1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e20

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
.label_462:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_461
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_461:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_468
	jmp	.label_471
.label_468:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_462
.label_471:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_463
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_463:
	movabs	rdi, OFFSET FLAT:label_467
	call	gettext
	movabs	rsi, OFFSET FLAT:label_49
	movabs	rdx, OFFSET FLAT:label_76
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
	je	.label_464
	movabs	rsi, OFFSET FLAT:label_470
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_464
	movabs	rdi, OFFSET FLAT:label_465
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_464:
	movabs	rdi, OFFSET FLAT:label_460
	call	gettext
	movabs	rsi, OFFSET FLAT:label_76
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_466
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_44
	movabs	rsi, OFFSET FLAT:label_469
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
	.align	16
	#Procedure 0x405fb9
	.globl sub_405fb9
	.type sub_405fb9, @function
sub_405fb9:

	nop	dword ptr [rax]
.label_472:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405fdb
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
	jae	.label_472
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406010

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_477
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_473
.label_477:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_473
.label_473:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0x77
	jae	.label_475
	mov	eax, 0x77
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_476
.label_475:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
.label_476:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff8
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_478
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
	je	.label_474
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 9
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	extend_abbrs
.label_474:
	jmp	.label_478
.label_478:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406106
	.globl sub_406106
	.type sub_406106, @function
sub_406106:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406110

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
	jne	.label_479
	movabs	rax, OFFSET FLAT:label_44
	mov	qword ptr [rbp - 8], rax
.label_479:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_480
	movabs	rax, OFFSET FLAT:label_481
	mov	qword ptr [rbp - 8], rax
.label_480:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406167
	.globl sub_406167
	.type sub_406167, @function
sub_406167:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406170

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
	jne	.label_482
	cmp	qword ptr [rbp - 8], 0
	je	.label_482
	call	xalloc_die
.label_482:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4061ae
	.globl sub_4061ae
	.type sub_4061ae, @function
sub_4061ae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4061b0

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
	.align	16
	#Procedure 0x406225
	.globl sub_406225
	.type sub_406225, @function
sub_406225:

	nop	word ptr cs:[rax + rax]
.label_485:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_483
.label_483:
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
	je	.label_484
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_484:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406353
	.globl sub_406353
	.type sub_406353, @function
sub_406353:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40635f

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
	je	.label_485
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_483
	.section	.text
	.align	16
	#Procedure 0x406390

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
	jne	.label_486
	test	byte ptr [rbp - 0x13], 1
	je	.label_487
	test	byte ptr [rbp - 0x11], 1
	jne	.label_486
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_487
.label_486:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_488
	call	__errno_location
	mov	dword ptr [rax], 0
.label_488:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_489
.label_487:
	mov	dword ptr [rbp - 4], 0
.label_489:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406439
	.globl sub_406439
	.type sub_406439, @function
sub_406439:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406440
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
	je	.label_490
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_491
.label_490:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_491
.label_491:
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
	.align	16
	#Procedure 0x406505
	.globl sub_406505
	.type sub_406505, @function
sub_406505:

	nop	word ptr cs:[rax + rax]
.label_677:
	mov	eax, 0xffffff9c
	mov	ecx, 0x12c
	mov	rdx, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rdx + 0x14]
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	dword ptr [rdx + 0x14], 0
	cmovl	eax, ecx
	add	esi, eax
	mov	dword ptr [rbp - 0x7ac], esi
	mov	dword ptr [rbp - 0x7b0], 0
	mov	rdx, qword ptr [rbp - 0x30]
	mov	edi, dword ptr [rdx + 0x1c]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rdx + 0x18]
	call	iso_week_days
	mov	dword ptr [rbp - 0x7b4], eax
	cmp	dword ptr [rbp - 0x7b4], 0
	jge	.label_794
	xor	eax, eax
	mov	cl, al
	mov	eax, 4
	mov	dword ptr [rbp - 0x7b0], 0xffffffff
	mov	rdx, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rdx + 0x1c]
	mov	edi, dword ptr [rbp - 0x7ac]
	sub	edi, 1
	mov	dword ptr [rbp - 0x9e8], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0x9e8]
	idiv	edi
	cmp	edx, 0
	mov	dword ptr [rbp - 0x9ec], esi
	mov	byte ptr [rbp - 0x9ed], cl
	jne	.label_800
	mov	al, 1
	mov	ecx, 0x64
	mov	edx, dword ptr [rbp - 0x7ac]
	sub	edx, 1
	mov	byte ptr [rbp - 0x9ee], al
	mov	eax, edx
	cdq	
	idiv	ecx
	cmp	edx, 0
	mov	sil, byte ptr [rbp - 0x9ee]
	mov	byte ptr [rbp - 0x9ef], sil
	jne	.label_813
	mov	eax, 0x190
	mov	ecx, dword ptr [rbp - 0x7ac]
	sub	ecx, 1
	mov	dword ptr [rbp - 0x9f4], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x9f4]
	idiv	ecx
	cmp	edx, 0
	sete	sil
	mov	byte ptr [rbp - 0x9ef], sil
.label_813:
	mov	al, byte ptr [rbp - 0x9ef]
	mov	byte ptr [rbp - 0x9ed], al
.label_800:
	mov	al, byte ptr [rbp - 0x9ed]
	and	al, 1
	movzx	ecx, al
	add	ecx, 0x16d
	mov	edx, dword ptr [rbp - 0x9ec]
	add	edx, ecx
	mov	rsi, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rsi + 0x18]
	mov	edi, edx
	call	iso_week_days
	mov	dword ptr [rbp - 0x7b4], eax
	jmp	.label_841
.label_588:
	imul	eax, dword ptr [rbp - 0x3c], 0xa
	mov	dword ptr [rbp - 0x3c], eax
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	eax, byte ptr [rcx]
	sub	eax, 0x30
	add	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x3c], eax
.label_622:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	jbe	.label_850
	jmp	.label_603
.label_603:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x874], ecx
	mov	dword ptr [rbp - 0x878], edx
	je	.label_874
	jmp	.label_869
.label_869:
	mov	eax, dword ptr [rbp - 0x874]
	sub	eax, 0x4f
	mov	dword ptr [rbp - 0x87c], eax
	jne	.label_870
	jmp	.label_874
.label_874:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x88], rcx
	movsx	edx, byte ptr [rax]
	mov	dword ptr [rbp - 0x90], edx
	jmp	.label_876
.label_527:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_889
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_694
	mov	rax, qword ptr [rbp - 0x780]
	cmp	rax, qword ptr [rbp - 0x788]
	jae	.label_694
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x780]
	mov	qword ptr [rbp - 0x798], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_895
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_901
.label_895:
	jmp	.label_905
.label_905:
	mov	qword ptr [rbp - 0x7a0], 0
.label_917:
	mov	rax, qword ptr [rbp - 0x7a0]
	cmp	rax, qword ptr [rbp - 0x798]
	jae	.label_555
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x9d4], eax
	mov	rax, qword ptr [rbp - 0x7a0]
	add	rax, 1
	mov	qword ptr [rbp - 0x7a0], rax
	jmp	.label_917
.label_1151:
	movabs	rax, OFFSET FLAT:label_922
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_579
.label_1141:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_927
	jmp	.label_512
.label_1160:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_934
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_934:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_942
	jmp	.label_512
.label_619:
	jmp	.label_894
.label_894:
	jmp	.label_867
.label_579:
	mov	dword ptr [rbp - 0xfc], 0xffffffff
.label_627:
	xor	eax, eax
	mov	edi, eax
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rbp - 0xe2]
	mov	r8d, dword ptr [rbp - 0x8c]
	mov	r9d, dword ptr [rbp - 0xfc]
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	eax, dword ptr [rbp - 0x54]
	and	cl, 1
	movzx	ecx, cl
	mov	qword ptr [rsp], r10
	mov	qword ptr [rsp + 8], r11
	mov	dword ptr [rsp + 0x10], eax
	call	__strftime_internal
	mov	qword ptr [rbp - 0x168], rax
	mov	rax, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 0x170], rax
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_510
	xor	eax, eax
	mov	dword ptr [rbp - 0x8b0], eax
	jmp	.label_518
.label_853:
	mov	rax, qword ptr [rbp - 0x780]
	mov	qword ptr [rbp - 0x9d0], rax
.label_862:
	mov	rax, qword ptr [rbp - 0x9d0]
	mov	qword ptr [rbp - 0x790], rax
	mov	rax, qword ptr [rbp - 0x790]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_527
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_535
.label_920:
	jmp	.label_540
.label_540:
	mov	eax, 0xfffff894
	mov	dword ptr [rbp - 0x94], 4
	mov	rcx, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rcx + 0x14]
	sub	eax, dword ptr [rbp - 0x7b0]
	cmp	edx, eax
	setl	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x9d], sil
	mov	rcx, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rcx + 0x14]
	add	eax, 0x76c
	add	eax, dword ptr [rbp - 0x7b0]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_492
.label_1095:
	jmp	.label_561
.label_561:
	jmp	.label_563
.label_563:
	mov	dword ptr [rbp - 0x94], 9
	mov	dword ptr [rbp - 0xa4], 0x14
	imul	eax, dword ptr [rbp - 0x7f8], 0x2710
	imul	ecx, dword ptr [rbp - 0x7fc], 0x64
	add	eax, ecx
	add	eax, dword ptr [rbp - 0x800]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_566
.label_756:
	movabs	rax, OFFSET FLAT:label_578
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_579
.label_494:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x8d4], eax
.label_539:
	mov	eax, dword ptr [rbp - 0x8d4]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x5c8], rcx
	mov	rcx, qword ptr [rbp - 0x5c0]
	cmp	rcx, qword ptr [rbp - 0x5c8]
	jae	.label_587
	mov	rax, qword ptr [rbp - 0x5c8]
	mov	qword ptr [rbp - 0x8e0], rax
	jmp	.label_597
.label_589:
	jmp	.label_608
.label_608:
	jmp	.label_601
.label_601:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_603
	mov	dword ptr [rbp - 0x3c], 0
.label_850:
	cmp	dword ptr [rbp - 0x3c], 0xccccccc
	jg	.label_613
	cmp	dword ptr [rbp - 0x3c], 0xccccccc
	jne	.label_588
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 7
	jle	.label_588
.label_613:
	mov	dword ptr [rbp - 0x3c], 0x7fffffff
	jmp	.label_622
.label_724:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_624
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_629
	mov	rax, qword ptr [rbp - 0x638]
	cmp	rax, qword ptr [rbp - 0x640]
	jae	.label_629
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x638]
	mov	qword ptr [rbp - 0x650], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_636
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_642
.label_636:
	jmp	.label_646
.label_646:
	mov	qword ptr [rbp - 0x658], 0
.label_656:
	mov	rax, qword ptr [rbp - 0x658]
	cmp	rax, qword ptr [rbp - 0x650]
	jae	.label_856
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x93c], eax
	mov	rax, qword ptr [rbp - 0x658]
	add	rax, 1
	mov	qword ptr [rbp - 0x658], rax
	jmp	.label_656
.label_915:
	jmp	.label_660
.label_660:
	jmp	.label_662
.label_935:
	jmp	.label_664
.label_664:
	jmp	.label_662
.label_662:
	jmp	.label_799
.label_799:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	al, byte ptr [rbp - 0xe2]
	mov	r8d, dword ptr [rbp - 0x8c]
	mov	r9d, dword ptr [rbp - 0xfc]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r10, qword ptr [rbp - 0x50]
	mov	r11d, dword ptr [rbp - 0x54]
	and	al, 1
	movzx	ebx, al
	mov	qword ptr [rbp - 0x8c8], rcx
	mov	ecx, ebx
	mov	r14, qword ptr [rbp - 0x8c8]
	mov	qword ptr [rsp], r14
	mov	qword ptr [rsp + 8], r10
	mov	dword ptr [rsp + 0x10], r11d
	call	__strftime_internal
	mov	qword ptr [rbp - 0x8d0], rax
.label_893:
	mov	rax, qword ptr [rbp - 0x180]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_592
.label_1175:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_691
	jmp	.label_512
.label_533:
	mov	rax, qword ptr [rbp - 0x638]
	mov	qword ptr [rbp - 0x938], rax
.label_541:
	mov	rax, qword ptr [rbp - 0x938]
	mov	qword ptr [rbp - 0x648], rax
	mov	rax, qword ptr [rbp - 0x648]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_724
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_535
.label_599:
	jmp	.label_705
.label_705:
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 2
	mov	rcx, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rcx + 0x1c]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rcx + 0x18]
	sub	esi, 1
	add	esi, 7
	mov	dword ptr [rbp - 0xa24], eax
	mov	eax, esi
	mov	dword ptr [rbp - 0xa28], edx
	cdq	
	mov	esi, dword ptr [rbp - 0xa24]
	idiv	esi
	mov	edi, dword ptr [rbp - 0xa28]
	sub	edi, edx
	add	edi, 7
	mov	eax, edi
	cdq	
	idiv	esi
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_524
.label_838:
	jmp	.label_718
.label_718:
	jmp	.label_596
.label_596:
	jmp	.label_721
.label_721:
	movsx	edi, byte ptr [rbp - 0xb1]
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x95c], eax
.label_776:
	mov	rax, qword ptr [rbp - 0x678]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_728
.label_728:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_521
	jmp	.label_735
.label_735:
	mov	qword ptr [rbp - 0x698], 0
.label_748:
	mov	rax, qword ptr [rbp - 0x698]
	movsxd	rcx, dword ptr [rbp - 0x624]
	cmp	rax, rcx
	jae	.label_739
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x960], eax
	mov	rax, qword ptr [rbp - 0x698]
	add	rax, 1
	mov	qword ptr [rbp - 0x698], rax
	jmp	.label_748
.label_546:
	jmp	.label_754
.label_754:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_524
.label_1158:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_762
	mov	byte ptr [rbp - 0xe2], 0
	mov	byte ptr [rbp - 0xe1], 1
.label_762:
	jmp	.label_767
.label_767:
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x7c8], rax
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_769
	xor	eax, eax
	mov	dword ptr [rbp - 0xa34], eax
	jmp	.label_777
.label_768:
	mov	eax, 0x64
	mov	rcx, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rcx + 0x14]
	mov	dword ptr [rbp - 0xa2c], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0xa2c]
	idiv	esi
	mov	dword ptr [rbp - 0x7c0], edx
	cmp	dword ptr [rbp - 0x7c0], 0
	jge	.label_786
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	jge	.label_846
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x7c0]
	mov	dword ptr [rbp - 0xa30], eax
	jmp	.label_784
.label_493:
	mov	eax, 1
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	rsi, qword ptr [rbp - 0x6d0]
	mov	rcx, qword ptr [rbp - 0x80]
	call	fwrite
	mov	qword ptr [rbp - 0x998], rax
.label_502:
	jmp	.label_711
.label_711:
	jmp	.label_797
.label_797:
	jmp	.label_500
.label_500:
	mov	rax, qword ptr [rbp - 0x6e0]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_592
.label_614:
	jmp	.label_805
.label_805:
	mov	qword ptr [rbp - 0x6c8], 0
.label_812:
	mov	rax, qword ptr [rbp - 0x6c8]
	cmp	rax, qword ptr [rbp - 0x6b8]
	jae	.label_806
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x978], eax
	mov	rax, qword ptr [rbp - 0x6c8]
	add	rax, 1
	mov	qword ptr [rbp - 0x6c8], rax
	jmp	.label_812
.label_763:
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_728
	jmp	.label_817
.label_817:
	mov	qword ptr [rbp - 0x668], 1
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_686
	xor	eax, eax
	mov	dword ptr [rbp - 0x948], eax
	jmp	.label_822
.label_708:
	jmp	.label_826
.label_826:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_524
.label_785:
	jmp	.label_766
.label_766:
	mov	qword ptr [rbp - 0x690], 0
.label_844:
	mov	rax, qword ptr [rbp - 0x690]
	cmp	rax, qword ptr [rbp - 0x680]
	jae	.label_838
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x958], eax
	mov	rax, qword ptr [rbp - 0x690]
	add	rax, 1
	mov	qword ptr [rbp - 0x690], rax
	jmp	.label_844
.label_758:
	jmp	.label_852
.label_852:
	jmp	.label_854
.label_632:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_855
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_855:
	jmp	.label_552
.label_791:
	jmp	.label_564
.label_564:
	jmp	.label_602
.label_602:
	jmp	.label_933
.label_933:
	jmp	.label_943
.label_943:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_701
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x7c8]
	call	fwrite_lowcase
	jmp	.label_605
.label_1157:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_875
	jmp	.label_552
.label_861:
	jmp	.label_882
.label_882:
	mov	dword ptr [rbp - 0x94], 2
	mov	eax, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_704
.label_1093:
	jmp	.label_623
.label_623:
	mov	dword ptr [rbp - 0x94], 5
	mov	dword ptr [rbp - 0xa4], 0
	imul	eax, dword ptr [rbp - 0x7f8], 0x64
	add	eax, dword ptr [rbp - 0x7fc]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_566
.label_911:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_795
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_697
	mov	rax, qword ptr [rbp - 0x5c0]
	cmp	rax, qword ptr [rbp - 0x5c8]
	jae	.label_697
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rbp - 0x5d8], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_907
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_916
.label_907:
	jmp	.label_919
.label_919:
	mov	qword ptr [rbp - 0x5e0], 0
.label_848:
	mov	rax, qword ptr [rbp - 0x5e0]
	cmp	rax, qword ptr [rbp - 0x5d8]
	jae	.label_808
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x8e4], eax
	mov	rax, qword ptr [rbp - 0x5e0]
	add	rax, 1
	mov	qword ptr [rbp - 0x5e0], rax
	jmp	.label_848
.label_1172:
	lea	rax, [rbp - 0x768]
	mov	ecx, 0x38
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x9c0], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x9c0]
	call	mktime_z
	lea	rdx, [rbp - 0xe0]
	mov	qword ptr [rbp - 0x770], rax
	add	rdx, 0x17
	mov	qword ptr [rbp - 0xc0], rdx
	cmp	qword ptr [rbp - 0x770], 0
	setl	r8b
	and	r8b, 1
	mov	byte ptr [rbp - 0x9d], r8b
.label_713:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x770]
	cqo	
	idiv	rcx
	mov	esi, edx
	mov	dword ptr [rbp - 0x774], esi
	mov	rdx, qword ptr [rbp - 0x770]
	mov	rax, rdx
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x770], rax
	test	byte ptr [rbp - 0x9d], 1
	je	.label_505
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x774]
	mov	dword ptr [rbp - 0x9c4], eax
	jmp	.label_668
.label_858:
	jmp	.label_530
.label_530:
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 2
	mov	rcx, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rcx + 0x1c]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	edx, dword ptr [rcx + 0x18]
	add	edx, 7
	mov	dword ptr [rbp - 0x9e4], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x9e4]
	idiv	esi
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_524
.label_906:
	jmp	.label_595
.label_595:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, rax
	inc	rcx
	mov	qword ptr [rbp - 0x88], rcx
	movsx	edx, byte ptr [rax + 1]
	mov	esi, edx
	sub	esi, 0x23
	mov	dword ptr [rbp - 0x858], edx
	mov	dword ptr [rbp - 0x85c], esi
	je	.label_545
	jmp	.label_556
.label_556:
	mov	eax, dword ptr [rbp - 0x858]
	sub	eax, 0x2b
	mov	dword ptr [rbp - 0x860], eax
	je	.label_559
	jmp	.label_568
.label_568:
	mov	eax, dword ptr [rbp - 0x858]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x864], eax
	je	.label_559
	jmp	.label_576
.label_576:
	mov	eax, dword ptr [rbp - 0x858]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x868], eax
	je	.label_559
	jmp	.label_580
.label_580:
	mov	eax, dword ptr [rbp - 0x858]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x86c], eax
	je	.label_582
	jmp	.label_586
.label_586:
	mov	eax, dword ptr [rbp - 0x858]
	sub	eax, 0x5f
	mov	dword ptr [rbp - 0x870], eax
	jne	.label_589
	jmp	.label_559
.label_559:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0x8c], ecx
	jmp	.label_595
.label_1168:
	jmp	.label_598
.label_598:
	mov	qword ptr [rbp - 0x708], 1
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_600
	xor	eax, eax
	mov	dword ptr [rbp - 0x9a0], eax
	jmp	.label_607
.label_1162:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_611
	jmp	.label_512
.label_691:
	jmp	.label_615
.label_615:
	mov	dword ptr [rbp - 0x94], 1
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_524
.label_820:
	xor	eax, eax
	mov	ecx, 0x2b
	mov	dl, byte ptr [rbp - 0x9e]
	test	dl, 1
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x90c], eax
.label_824:
	mov	eax, dword ptr [rbp - 0x90c]
	mov	cl, al
	mov	byte ptr [rbp - 0xb1], cl
	cmp	dword ptr [rbp - 0x8c], 0x2d
	jne	.label_630
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_562
	jmp	.label_638
.label_638:
	mov	qword ptr [rbp - 0x5f8], 1
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_639
	xor	eax, eax
	mov	dword ptr [rbp - 0x910], eax
	jmp	.label_643
.label_937:
	mov	eax, 0xfffff894
	mov	rcx, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rcx + 0x14]
	sub	eax, dword ptr [rbp - 0x7b0]
	cmp	edx, eax
	jge	.label_647
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x7bc]
	mov	dword ptr [rbp - 0xa1c], eax
	jmp	.label_652
.label_752:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_897
	lea	rax, [rbp - 0x5b0]
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x5c0]
	mov	rsi, rax
	call	fwrite_uppcase
	jmp	.label_665
.label_590:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x7f4], edx
	cmp	dword ptr [rbp - 0x7f4], 0
	mov	byte ptr [rbp - 0xa51], al
	jl	.label_667
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x7f4], 0
	mov	byte ptr [rbp - 0xa52], cl
	jne	.label_675
	mov	rax, qword ptr [rbp - 0x70]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	sete	dl
	mov	byte ptr [rbp - 0xa52], dl
.label_675:
	mov	al, byte ptr [rbp - 0xa52]
	mov	byte ptr [rbp - 0xa51], al
.label_667:
	mov	al, byte ptr [rbp - 0xa51]
	and	al, 1
	mov	byte ptr [rbp - 0x9d], al
	movsxd	rcx, dword ptr [rbp - 0x7f4]
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
	mov	dword ptr [rbp - 0x7f8], edx
	movsxd	rcx, dword ptr [rbp - 0x7f4]
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
	mov	dword ptr [rbp - 0x7fc], esi
	movsxd	rcx, dword ptr [rbp - 0x7f4]
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
	mov	dword ptr [rbp - 0x800], edx
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	r8, rcx
	sub	r8, 3
	mov	qword ptr [rbp - 0xa60], rcx
	mov	qword ptr [rbp - 0xa68], r8
	ja	.label_684
	mov	rax, qword ptr [rbp - 0xa60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_727]]
	jmp	rcx
.label_1139:
	mov	qword ptr [rbp - 0xf0], 1
.label_741:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x3a
	jne	.label_733
	jmp	.label_740
.label_740:
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, 1
	mov	qword ptr [rbp - 0xf0], rax
	jmp	.label_741
	.section	.text
	.align	16
	#Procedure 0x407451

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	push	rbp
	mov	rbp, rsp
	push	r14
	push	rbx
	sub	rsp, 0xaa0
	mov	al, cl
	mov	ecx, dword ptr [rbp + 0x20]
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x30], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	mov	dword ptr [rbp - 0x38], r8d
	mov	dword ptr [rbp - 0x3c], r9d
	mov	qword ptr [rbp - 0x48], r11
	mov	qword ptr [rbp - 0x50], r10
	mov	dword ptr [rbp - 0x54], ecx
	mov	qword ptr [rbp - 0x60], -1
	mov	rdx, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rdx + 8]
	mov	dword ptr [rbp - 0x64], ecx
	mov	qword ptr [rbp - 0x78], 0
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x80], rdx
	mov	qword ptr [rbp - 0x70], 0
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx + 0x30]
	mov	qword ptr [rbp - 0x70], rdx
	cmp	qword ptr [rbp - 0x70], 0
	jne	.label_950
	movabs	rax, OFFSET FLAT:label_44
	mov	qword ptr [rbp - 0x70], rax
.label_950:
	cmp	dword ptr [rbp - 0x64], 0xc
	jle	.label_953
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0xc
	mov	dword ptr [rbp - 0x64], eax
	jmp	.label_952
.label_779:
	jmp	.label_552
.label_1176:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_779
	jmp	.label_512
.label_897:
	mov	eax, 1
	mov	edx, eax
	lea	rcx, [rbp - 0x5b0]
	add	rcx, 1
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x8f0], rdi
	mov	rdi, rcx
	mov	rcx, qword ptr [rbp - 0x8f0]
	call	fwrite
	mov	qword ptr [rbp - 0x8f8], rax
.label_665:
	jmp	.label_707
.label_707:
	jmp	.label_793
.label_793:
	jmp	.label_795
.label_795:
	mov	rax, qword ptr [rbp - 0x5d0]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_796
.label_796:
	jmp	.label_592
.label_581:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_804
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_634
	mov	rax, qword ptr [rbp - 0x108]
	cmp	rax, qword ptr [rbp - 0x110]
	jae	.label_634
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x120], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_810
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_814
.label_810:
	jmp	.label_815
.label_815:
	mov	qword ptr [rbp - 0x128], 0
.label_825:
	mov	rax, qword ptr [rbp - 0x128]
	cmp	rax, qword ptr [rbp - 0x120]
	jae	.label_818
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x84c], eax
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, 1
	mov	qword ptr [rbp - 0x128], rax
	jmp	.label_825
.label_814:
	jmp	.label_832
.label_832:
	mov	qword ptr [rbp - 0x130], 0
.label_843:
	mov	rax, qword ptr [rbp - 0x130]
	cmp	rax, qword ptr [rbp - 0x120]
	jae	.label_836
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x850], eax
	mov	rax, qword ptr [rbp - 0x130]
	add	rax, 1
	mov	qword ptr [rbp - 0x130], rax
	jmp	.label_843
.label_828:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x9c8], eax
.label_835:
	mov	eax, dword ptr [rbp - 0x9c8]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x788], rcx
	mov	rcx, qword ptr [rbp - 0x780]
	cmp	rcx, qword ptr [rbp - 0x788]
	jae	.label_853
	mov	rax, qword ptr [rbp - 0x788]
	mov	qword ptr [rbp - 0x9d0], rax
	jmp	.label_862
.label_657:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0xa6c], eax
.label_939:
	mov	eax, dword ptr [rbp - 0xa6c]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x818], rcx
	mov	rcx, qword ptr [rbp - 0x810]
	cmp	rcx, qword ptr [rbp - 0x818]
	jae	.label_498
	mov	rax, qword ptr [rbp - 0x818]
	mov	qword ptr [rbp - 0xa78], rax
	jmp	.label_877
.label_651:
	cmp	dword ptr [rbp - 0x7fc], 0
	je	.label_886
	jmp	.label_837
.label_522:
	mov	rax, qword ptr [rbp - 0x6d0]
	mov	qword ptr [rbp - 0x988], rax
.label_710:
	mov	rax, qword ptr [rbp - 0x988]
	mov	qword ptr [rbp - 0x6e0], rax
	mov	rax, qword ptr [rbp - 0x6e0]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_890
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_535
.label_916:
	jmp	.label_898
.label_898:
	mov	qword ptr [rbp - 0x5e8], 0
.label_913:
	mov	rax, qword ptr [rbp - 0x5e8]
	cmp	rax, qword ptr [rbp - 0x5d8]
	jae	.label_904
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x8e8], eax
	mov	rax, qword ptr [rbp - 0x5e8]
	add	rax, 1
	mov	qword ptr [rbp - 0x5e8], rax
	jmp	.label_913
.label_903:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x18], rax
.label_535:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0xaa0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4077a0
	.globl sub_4077a0
	.type sub_4077a0, @function
sub_4077a0:

	nop	
.label_1140:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_925
	jmp	.label_512
.label_637:
	xor	eax, eax
	mov	dword ptr [rbp - 0x92c], eax
	jmp	.label_819
.label_819:
	mov	eax, dword ptr [rbp - 0x92c]
	mov	dword ptr [rbp - 0x3c], eax
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_809
	jmp	.label_938
.label_938:
	mov	qword ptr [rbp - 0x638], 1
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_940
	xor	eax, eax
	mov	dword ptr [rbp - 0x930], eax
	jmp	.label_947
.label_716:
	jmp	.label_949
.label_949:
	mov	dword ptr [rbp - 0x94], 4
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rax + 0x14]
	add	edx, 0x76c
	mov	dword ptr [rbp - 0x9c], edx
	jmp	.label_492
.label_733:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x7a
	je	.label_506
	jmp	.label_512
.label_1156:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_514
	jmp	.label_512
.label_887:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x980], eax
.label_892:
	mov	eax, dword ptr [rbp - 0x980]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x6d8], rcx
	mov	rcx, qword ptr [rbp - 0x6d0]
	cmp	rcx, qword ptr [rbp - 0x6d8]
	jae	.label_522
	mov	rax, qword ptr [rbp - 0x6d8]
	mov	qword ptr [rbp - 0x988], rax
	jmp	.label_710
.label_616:
	jmp	.label_536
.label_536:
	jmp	.label_538
.label_538:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x94], eax
	mov	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_524
.label_790:
	jmp	.label_742
.label_742:
	mov	qword ptr [rbp - 0x7f0], 0
.label_676:
	mov	rax, qword ptr [rbp - 0x7f0]
	cmp	rax, qword ptr [rbp - 0x7e0]
	jae	.label_791
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0xa48], eax
	mov	rax, qword ptr [rbp - 0x7f0]
	add	rax, 1
	mov	qword ptr [rbp - 0x7f0], rax
	jmp	.label_676
.label_881:
	jmp	.label_570
.label_570:
	jmp	.label_548
.label_548:
	jmp	.label_573
.label_573:
	mov	edi, 0xa
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x9b4], eax
.label_680:
	mov	rax, qword ptr [rbp - 0x718]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_592
.label_566:
	mov	byte ptr [rbp - 0x9e], 1
	jmp	.label_584
.label_1178:
	mov	qword ptr [rbp - 0xf0], 0
.label_537:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 0x20], 0
	jge	.label_590
	jmp	.label_592
.label_792:
	jmp	.label_594
.label_594:
	jmp	.label_596
.label_516:
	mov	eax, 1
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x7c8]
	mov	rcx, qword ptr [rbp - 0x80]
	call	fwrite
	mov	qword ptr [rbp - 0xa50], rax
.label_528:
	jmp	.label_605
.label_605:
	jmp	.label_606
.label_606:
	jmp	.label_609
.label_609:
	mov	rax, qword ptr [rbp - 0x7d8]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_592
.label_712:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x6fc], eax
.label_618:
	cmp	dword ptr [rbp - 0x6fc], 9
	jge	.label_616
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x99c], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x99c]
	idiv	ecx
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x6fc]
	add	eax, 1
	mov	dword ptr [rbp - 0x6fc], eax
	jmp	.label_618
.label_836:
	jmp	.label_631
.label_631:
	jmp	.label_633
.label_633:
	jmp	.label_634
.label_634:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	edi, byte ptr [rax]
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x854], eax
.label_804:
	mov	rax, qword ptr [rbp - 0x118]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_730
.label_1150:
	mov	byte ptr [rbp - 0xe1], 1
	mov	dword ptr [rbp - 0xf8], 0x70
.label_1169:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_650
	mov	byte ptr [rbp - 0xe2], 0
	mov	byte ptr [rbp - 0xe1], 1
.label_650:
	jmp	.label_552
.label_1161:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_945
	jmp	.label_512
.label_642:
	jmp	.label_658
.label_658:
	mov	qword ptr [rbp - 0x660], 0
.label_671:
	mov	rax, qword ptr [rbp - 0x660]
	cmp	rax, qword ptr [rbp - 0x650]
	jae	.label_661
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x940], eax
	mov	rax, qword ptr [rbp - 0x660]
	add	rax, 1
	mov	qword ptr [rbp - 0x660], rax
	jmp	.label_671
.label_1145:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_677
	jmp	.label_512
.label_1138:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_679
	jmp	.label_512
.label_1153:
	movabs	rax, OFFSET FLAT:label_645
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_579
.label_1170:
	jmp	.label_687
.label_687:
	mov	dword ptr [rbp - 0x94], 1
	mov	byte ptr [rbp - 0x9d], 0
	mov	rax, qword ptr [rbp - 0x30]
	imul	ecx, dword ptr [rax + 0x10], 0xb
	sar	ecx, 5
	add	ecx, 1
	mov	dword ptr [rbp - 0x9c], ecx
	jmp	.label_688
.label_904:
	jmp	.label_695
.label_695:
	jmp	.label_526
.label_526:
	jmp	.label_697
.label_697:
	jmp	.label_698
.label_698:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_752
	lea	rax, [rbp - 0x5b0]
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x5c0]
	mov	rsi, rax
	call	fwrite_lowcase
	jmp	.label_707
.label_1152:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_708
	jmp	.label_512
.label_504:
	mov	eax, 1
	mov	edx, eax
	mov	eax, 1
	sub	eax, dword ptr [rbp - 0x804]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x810]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0xa88], rdi
	mov	rdi, rcx
	mov	rcx, qword ptr [rbp - 0xa88]
	call	fwrite
	mov	qword ptr [rbp - 0xa90], rax
.label_517:
	jmp	.label_722
.label_722:
	jmp	.label_926
.label_926:
	jmp	.label_663
.label_663:
	mov	rax, qword ptr [rbp - 0x820]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_592
.label_592:
	jmp	.label_730
.label_730:
	mov	dword ptr [rbp - 0x3c], 0xffffffff
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_731
.label_925:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_738
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_738:
	jmp	.label_552
.label_558:
	jmp	.label_746
.label_746:
	jmp	.label_747
.label_747:
	jmp	.label_749
.label_749:
	jmp	.label_750
.label_750:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_751
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0x80]
	sub	eax, dword ptr [rbp - 0x804]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x810]
	mov	rsi, rcx
	call	fwrite_lowcase
	jmp	.label_722
.label_1174:
	jmp	.label_764
.label_764:
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 1
	mov	rcx, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rcx + 0x18]
	sub	edx, 1
	add	edx, 7
	mov	dword ptr [rbp - 0x9e0], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x9e0]
	idiv	esi
	add	edx, 1
	mov	dword ptr [rbp - 0x98], edx
	jmp	.label_524
.label_702:
	jmp	.label_775
.label_775:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_524
.label_647:
	mov	eax, dword ptr [rbp - 0x7bc]
	add	eax, 0x64
	mov	dword ptr [rbp - 0xa1c], eax
.label_652:
	mov	eax, dword ptr [rbp - 0xa1c]
	mov	dword ptr [rbp - 0xa18], eax
.label_499:
	mov	eax, dword ptr [rbp - 0xa18]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_492
.label_587:
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rbp - 0x8e0], rax
.label_597:
	mov	rax, qword ptr [rbp - 0x8e0]
	mov	qword ptr [rbp - 0x5d0], rax
	mov	rax, qword ptr [rbp - 0x5d0]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_911
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_535
.label_661:
	jmp	.label_803
.label_803:
	jmp	.label_532
.label_532:
	jmp	.label_629
.label_629:
	movsx	edi, byte ptr [rbp - 0xb1]
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x944], eax
.label_624:
	mov	rax, qword ptr [rbp - 0x648]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_809
.label_809:
	jmp	.label_811
.label_842:
	mov	rax, qword ptr [rbp - 0x5f8]
	mov	qword ptr [rbp - 0x918], rax
.label_851:
	mov	rax, qword ptr [rbp - 0x918]
	mov	qword ptr [rbp - 0x608], rax
	mov	rax, qword ptr [rbp - 0x608]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_941
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_535
.label_927:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_821
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_821:
	jmp	.label_552
.label_840:
	jmp	.label_829
.label_829:
	jmp	.label_747
.label_611:
	jmp	.label_833
.label_833:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_524
.label_639:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x910], eax
.label_643:
	mov	eax, dword ptr [rbp - 0x910]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x600], rcx
	mov	rcx, qword ptr [rbp - 0x5f8]
	cmp	rcx, qword ptr [rbp - 0x600]
	jae	.label_842
	mov	rax, qword ptr [rbp - 0x600]
	mov	qword ptr [rbp - 0x918], rax
	jmp	.label_851
.label_1142:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_879
	jmp	.label_552
.label_1165:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_902
	jmp	.label_512
.label_794:
	xor	eax, eax
	mov	cl, al
	mov	eax, 4
	mov	rdx, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rdx + 0x1c]
	mov	edi, dword ptr [rbp - 0x7ac]
	mov	dword ptr [rbp - 0x9f8], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0x9f8]
	idiv	edi
	cmp	edx, 0
	mov	dword ptr [rbp - 0x9fc], esi
	mov	byte ptr [rbp - 0x9fd], cl
	jne	.label_865
	mov	al, 1
	mov	ecx, 0x64
	mov	edx, dword ptr [rbp - 0x7ac]
	mov	byte ptr [rbp - 0x9fe], al
	mov	eax, edx
	cdq	
	idiv	ecx
	cmp	edx, 0
	mov	sil, byte ptr [rbp - 0x9fe]
	mov	byte ptr [rbp - 0x9ff], sil
	jne	.label_880
	mov	eax, 0x190
	mov	ecx, dword ptr [rbp - 0x7ac]
	mov	dword ptr [rbp - 0xa04], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0xa04]
	idiv	ecx
	cmp	edx, 0
	sete	sil
	mov	byte ptr [rbp - 0x9ff], sil
.label_880:
	mov	al, byte ptr [rbp - 0x9ff]
	mov	byte ptr [rbp - 0x9fd], al
.label_865:
	mov	al, byte ptr [rbp - 0x9fd]
	and	al, 1
	movzx	ecx, al
	add	ecx, 0x16d
	mov	edx, dword ptr [rbp - 0x9fc]
	sub	edx, ecx
	mov	rsi, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rsi + 0x18]
	mov	edi, edx
	call	iso_week_days
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x7b8], eax
	cmp	ecx, dword ptr [rbp - 0x7b8]
	jg	.label_910
	mov	dword ptr [rbp - 0x7b0], 1
	mov	eax, dword ptr [rbp - 0x7b8]
	mov	dword ptr [rbp - 0x7b4], eax
.label_910:
	jmp	.label_841
.label_841:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x47
	mov	dword ptr [rbp - 0xa08], ecx
	mov	dword ptr [rbp - 0xa0c], edx
	je	.label_920
	jmp	.label_929
.label_929:
	mov	eax, dword ptr [rbp - 0xa08]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0xa10], eax
	jne	.label_931
	jmp	.label_936
.label_936:
	mov	eax, 0x64
	mov	rcx, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rcx + 0x14]
	mov	dword ptr [rbp - 0xa14], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0xa14]
	idiv	esi
	add	edx, dword ptr [rbp - 0x7b0]
	mov	eax, edx
	cdq	
	idiv	esi
	mov	dword ptr [rbp - 0x7bc], edx
	xor	eax, eax
	mov	dword ptr [rbp - 0x94], 2
	mov	byte ptr [rbp - 0x9d], 0
	cmp	eax, dword ptr [rbp - 0x7bc]
	jg	.label_937
	mov	eax, dword ptr [rbp - 0x7bc]
	mov	dword ptr [rbp - 0xa18], eax
	jmp	.label_499
.label_751:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_504
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0x80]
	sub	eax, dword ptr [rbp - 0x804]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x810]
	mov	rsi, rcx
	call	fwrite_uppcase
	jmp	.label_517
.label_739:
	jmp	.label_520
.label_520:
	jmp	.label_521
.label_521:
	movsxd	rax, dword ptr [rbp - 0x624]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	dword ptr [rbp - 0x3c], 0
.label_811:
	jmp	.label_567
.label_940:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x930], eax
.label_947:
	mov	eax, dword ptr [rbp - 0x930]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x640], rcx
	mov	rcx, qword ptr [rbp - 0x638]
	cmp	rcx, qword ptr [rbp - 0x640]
	jae	.label_533
	mov	rax, qword ptr [rbp - 0x640]
	mov	qword ptr [rbp - 0x938], rax
	jmp	.label_541
.label_1148:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_546
	jmp	.label_512
.label_709:
	jmp	.label_550
.label_550:
	jmp	.label_551
.label_551:
	jmp	.label_553
.label_553:
	movsx	edi, byte ptr [rbp - 0xb1]
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x924], eax
.label_783:
	mov	rax, qword ptr [rbp - 0x608]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_562
.label_562:
	jmp	.label_569
.label_555:
	jmp	.label_873
.label_873:
	jmp	.label_572
.label_704:
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_574
	mov	dword ptr [rbp - 0x8c], 0x5f
.label_574:
	jmp	.label_524
.label_524:
	cmp	dword ptr [rbp - 0x98], 0
	setl	al
	and	al, 1
	mov	byte ptr [rbp - 0x9d], al
	mov	ecx, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x9c], ecx
.label_688:
	mov	byte ptr [rbp - 0x9e], 0
.label_788:
	mov	dword ptr [rbp - 0xa4], 0
.label_584:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_591
	test	byte ptr [rbp - 0x9d], 1
	jne	.label_591
	jmp	.label_552
.label_924:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x83c], eax
.label_928:
	mov	eax, dword ptr [rbp - 0x83c]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x110], rcx
	mov	rcx, qword ptr [rbp - 0x108]
	cmp	rcx, qword ptr [rbp - 0x110]
	jae	.label_761
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x848], rax
	jmp	.label_612
.label_543:
	jmp	.label_681
.label_681:
	jmp	.label_602
.label_723:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 6
	mov	dword ptr [rbp - 0xfc], eax
	cmp	dword ptr [rbp - 0xfc], 0
	jge	.label_617
	mov	dword ptr [rbp - 0xfc], 0
.label_617:
	jmp	.label_625
.label_625:
	movabs	rax, OFFSET FLAT:label_626
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_627
.label_1159:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_632
	jmp	.label_512
.label_582:
	mov	byte ptr [rbp - 0xe2], 1
	jmp	.label_595
.label_769:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0xa34], eax
.label_777:
	mov	eax, dword ptr [rbp - 0xa34]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x7d0], rcx
	mov	rcx, qword ptr [rbp - 0x7c8]
	cmp	rcx, qword ptr [rbp - 0x7d0]
	jae	.label_640
	mov	rax, qword ptr [rbp - 0x7d0]
	mov	qword ptr [rbp - 0xa40], rax
	jmp	.label_649
.label_640:
	mov	rax, qword ptr [rbp - 0x7c8]
	mov	qword ptr [rbp - 0xa40], rax
.label_649:
	mov	rax, qword ptr [rbp - 0xa40]
	mov	qword ptr [rbp - 0x7d8], rax
	mov	rax, qword ptr [rbp - 0x7d8]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_655
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_535
.label_846:
	mov	eax, dword ptr [rbp - 0x7c0]
	add	eax, 0x64
	mov	dword ptr [rbp - 0xa30], eax
.label_784:
	mov	eax, dword ptr [rbp - 0xa30]
	mov	dword ptr [rbp - 0x7c0], eax
.label_786:
	jmp	.label_673
.label_673:
	mov	dword ptr [rbp - 0x94], 2
	mov	byte ptr [rbp - 0x9d], 0
	mov	eax, dword ptr [rbp - 0x7c0]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_492
.label_534:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_680
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_573
	mov	rax, qword ptr [rbp - 0x708]
	cmp	rax, qword ptr [rbp - 0x710]
	jae	.label_573
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x708]
	mov	qword ptr [rbp - 0x720], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_689
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_714
.label_689:
	jmp	.label_696
.label_696:
	mov	qword ptr [rbp - 0x728], 0
.label_830:
	mov	rax, qword ptr [rbp - 0x728]
	cmp	rax, qword ptr [rbp - 0x720]
	jae	.label_700
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x9ac], eax
	mov	rax, qword ptr [rbp - 0x728]
	add	rax, 1
	mov	qword ptr [rbp - 0x728], rax
	jmp	.label_830
.label_519:
	mov	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x98], eax
	cmp	dword ptr [rbp - 0x3c], -1
	jne	.label_712
	mov	dword ptr [rbp - 0x3c], 9
	jmp	.label_536
.label_875:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_716
	jmp	.label_512
.label_610:
	mov	rax, qword ptr [rbp - 0x668]
	mov	qword ptr [rbp - 0x950], rax
.label_690:
	mov	rax, qword ptr [rbp - 0x950]
	mov	qword ptr [rbp - 0x678], rax
	mov	rax, qword ptr [rbp - 0x678]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_720
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_535
.label_648:
	jmp	.label_732
.label_732:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 0x10], -1
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rax + 0x10]
	add	edx, 1
	mov	dword ptr [rbp - 0x9c], edx
	jmp	.label_688
.label_886:
	jmp	.label_745
.label_745:
	mov	dword ptr [rbp - 0x94], 3
	mov	dword ptr [rbp - 0xa4], 0
	mov	eax, dword ptr [rbp - 0x7f8]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_566
.label_514:
	jmp	.label_552
.label_1143:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_756
	jmp	.label_512
.label_685:
	jmp	.label_759
.label_759:
	jmp	.label_760
.label_641:
	movsxd	rax, dword ptr [rbp - 0x94]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_763
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_535
.label_1177:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_768
	jmp	.label_552
.label_1144:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_772
	jmp	.label_512
.label_720:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_776
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_721
	mov	rax, qword ptr [rbp - 0x668]
	cmp	rax, qword ptr [rbp - 0x670]
	jae	.label_721
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x668]
	mov	qword ptr [rbp - 0x680], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_781
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_785
.label_781:
	jmp	.label_787
.label_787:
	mov	qword ptr [rbp - 0x688], 0
.label_802:
	mov	rax, qword ptr [rbp - 0x688]
	cmp	rax, qword ptr [rbp - 0x680]
	jae	.label_792
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x954], eax
	mov	rax, qword ptr [rbp - 0x688]
	add	rax, 1
	mov	qword ptr [rbp - 0x688], rax
	jmp	.label_802
.label_879:
	xor	eax, eax
	mov	cl, al
	mov	eax, 0x64
	mov	rdx, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rdx + 0x14]
	mov	dword ptr [rbp - 0x8fc], eax
	mov	eax, esi
	cdq	
	mov	esi, dword ptr [rbp - 0x8fc]
	idiv	esi
	add	eax, 0x13
	mov	dword ptr [rbp - 0x5ec], eax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rdi + 0x14]
	cdq	
	idiv	esi
	cmp	edx, 0
	mov	byte ptr [rbp - 0x8fd], cl
	jge	.label_726
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x5ec]
	setl	cl
	mov	byte ptr [rbp - 0x8fd], cl
.label_726:
	mov	al, byte ptr [rbp - 0x8fd]
	and	al, 1
	movzx	ecx, al
	mov	edx, dword ptr [rbp - 0x5ec]
	sub	edx, ecx
	mov	dword ptr [rbp - 0x5ec], edx
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	edx, dword ptr [rbp - 0x5ec]
	mov	dword ptr [rbp - 0x9c], edx
	jmp	.label_492
.label_1094:
	jmp	.label_837
.label_837:
	jmp	.label_839
.label_839:
	mov	dword ptr [rbp - 0x94], 6
	mov	dword ptr [rbp - 0xa4], 4
	imul	eax, dword ptr [rbp - 0x7f8], 0x64
	add	eax, dword ptr [rbp - 0x7fc]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_566
.label_515:
	jmp	.label_849
.label_849:
	mov	dword ptr [rbp - 0x94], 2
	mov	eax, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_524
.label_1154:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_858
	jmp	.label_512
.label_1166:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_861
	jmp	.label_512
.label_806:
	jmp	.label_866
.label_866:
	jmp	.label_867
.label_867:
	jmp	.label_577
.label_577:
	movsx	edi, byte ptr [rbp - 0xb1]
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x97c], eax
.label_593:
	mov	rax, qword ptr [rbp - 0x6b0]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_503
.label_503:
	jmp	.label_567
.label_567:
	jmp	.label_569
.label_569:
	jmp	.label_883
.label_883:
	lea	rax, [rbp - 0xe0]
	add	rax, 0x17
	mov	rcx, qword ptr [rbp - 0xc0]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x6d0], rax
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_887
	xor	eax, eax
	mov	dword ptr [rbp - 0x980], eax
	jmp	.label_892
.label_1137:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, -1
	mov	qword ptr [rbp - 0x88], rax
.label_743:
	jmp	.label_512
.label_512:
	mov	dword ptr [rbp - 0x804], 1
.label_909:
	mov	eax, 1
	sub	eax, dword ptr [rbp - 0x804]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x88]
	movsx	eax, byte ptr [rdx + rcx]
	cmp	eax, 0x25
	je	.label_899
	jmp	.label_908
.label_908:
	mov	eax, dword ptr [rbp - 0x804]
	add	eax, 1
	mov	dword ptr [rbp - 0x804], eax
	jmp	.label_909
.label_498:
	mov	rax, qword ptr [rbp - 0x810]
	mov	qword ptr [rbp - 0xa78], rax
.label_877:
	mov	rax, qword ptr [rbp - 0xa78]
	mov	qword ptr [rbp - 0x820], rax
	mov	rax, qword ptr [rbp - 0x820]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_918
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_535
.label_736:
	jmp	.label_930
.label_930:
	mov	qword ptr [rbp - 0x198], 0
.label_946:
	mov	rax, qword ptr [rbp - 0x198]
	cmp	rax, qword ptr [rbp - 0x188]
	jae	.label_935
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x8c0], eax
	mov	rax, qword ptr [rbp - 0x198]
	add	rax, 1
	mov	qword ptr [rbp - 0x198], rax
	jmp	.label_946
.label_888:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_493
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x6d0]
	call	fwrite_uppcase
	jmp	.label_502
.label_621:
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_503
	jmp	.label_507
.label_507:
	mov	qword ptr [rbp - 0x6a0], 1
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_508
	xor	eax, eax
	mov	dword ptr [rbp - 0x964], eax
	jmp	.label_513
.label_701:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_516
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x7c8]
	call	fwrite_uppcase
	jmp	.label_528
.label_552:
	lea	rax, [rbp - 0x19d]
	mov	qword ptr [rbp - 0x1a8], rax
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x1a8], rcx
	mov	byte ptr [rax], 0x20
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x1a8], rcx
	mov	byte ptr [rax], 0x25
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_531
	mov	eax, dword ptr [rbp - 0x90]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x1a8]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x1a8], rsi
	mov	byte ptr [rdx], cl
.label_531:
	mov	eax, 0x400
	mov	esi, eax
	lea	rdx, [rbp - 0x19d]
	lea	rdi, [rbp - 0x5b0]
	mov	eax, dword ptr [rbp - 0xf8]
	mov	cl, al
	mov	r8, qword ptr [rbp - 0x1a8]
	mov	r9, r8
	add	r9, 1
	mov	qword ptr [rbp - 0x1a8], r9
	mov	byte ptr [r8], cl
	mov	r8, qword ptr [rbp - 0x1a8]
	mov	byte ptr [r8], 0
	mov	rcx, qword ptr [rbp - 0x30]
	call	strftime
	mov	qword ptr [rbp - 0x5b8], rax
	cmp	qword ptr [rbp - 0x5b8], 0
	je	.label_796
	jmp	.label_583
.label_583:
	mov	rax, qword ptr [rbp - 0x5b8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x5c0], rax
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_494
	xor	eax, eax
	mov	dword ptr [rbp - 0x8d4], eax
	jmp	.label_539
.label_682:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_593
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_577
	mov	rax, qword ptr [rbp - 0x6a0]
	cmp	rax, qword ptr [rbp - 0x6a8]
	jae	.label_577
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x6a0]
	mov	qword ptr [rbp - 0x6b8], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_604
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_614
.label_604:
	jmp	.label_683
.label_683:
	mov	qword ptr [rbp - 0x6c0], 0
.label_628:
	mov	rax, qword ptr [rbp - 0x6c0]
	cmp	rax, qword ptr [rbp - 0x6b8]
	jae	.label_619
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x974], eax
	mov	rax, qword ptr [rbp - 0x6c0]
	add	rax, 1
	mov	qword ptr [rbp - 0x6c0], rax
	jmp	.label_628
.label_501:
	jmp	.label_635
.label_635:
	jmp	.label_495
.label_495:
	movsxd	rax, dword ptr [rbp - 0x624]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	ecx, dword ptr [rbp - 0x3c]
	cmp	ecx, dword ptr [rbp - 0x624]
	jle	.label_637
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, dword ptr [rbp - 0x624]
	mov	dword ptr [rbp - 0x92c], eax
	jmp	.label_819
.label_1167:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_648
	jmp	.label_512
.label_1096:
	cmp	dword ptr [rbp - 0x800], 0
	je	.label_651
	jmp	.label_561
.label_899:
	jmp	.label_654
.label_654:
	movsxd	rax, dword ptr [rbp - 0x804]
	mov	qword ptr [rbp - 0x810], rax
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_657
	xor	eax, eax
	mov	dword ptr [rbp - 0xa6c], eax
	jmp	.label_939
.label_890:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_500
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_669
	mov	rax, qword ptr [rbp - 0x6d0]
	cmp	rax, qword ptr [rbp - 0x6d8]
	jae	.label_669
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x6d0]
	mov	qword ptr [rbp - 0x6e8], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_674
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_620
.label_674:
	jmp	.label_914
.label_914:
	mov	qword ptr [rbp - 0x6f0], 0
.label_692:
	mov	rax, qword ptr [rbp - 0x6f0]
	cmp	rax, qword ptr [rbp - 0x6e8]
	jae	.label_685
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x98c], eax
	mov	rax, qword ptr [rbp - 0x6f0]
	add	rax, 1
	mov	qword ptr [rbp - 0x6f0], rax
	jmp	.label_692
.label_545:
	mov	byte ptr [rbp - 0xf1], 1
	jmp	.label_595
.label_1164:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_699
	jmp	.label_512
.label_1146:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_702
	jmp	.label_512
.label_857:
	jmp	.label_706
.label_706:
	mov	qword ptr [rbp - 0x620], 0
.label_715:
	mov	rax, qword ptr [rbp - 0x620]
	cmp	rax, qword ptr [rbp - 0x610]
	jae	.label_709
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x920], eax
	mov	rax, qword ptr [rbp - 0x620]
	add	rax, 1
	mov	qword ptr [rbp - 0x620], rax
	jmp	.label_715
.label_942:
	jmp	.label_552
.label_679:
	jmp	.label_896
.label_896:
	mov	qword ptr [rbp - 0x138], 1
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_719
	xor	eax, eax
	mov	dword ptr [rbp - 0x894], eax
	jmp	.label_725
.label_719:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x894], eax
.label_725:
	mov	eax, dword ptr [rbp - 0x894]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x140], rcx
	mov	rcx, qword ptr [rbp - 0x138]
	cmp	rcx, qword ptr [rbp - 0x140]
	jae	.label_729
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x8a0], rax
	jmp	.label_737
.label_870:
	mov	dword ptr [rbp - 0x90], 0
.label_876:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0xf8], ecx
	mov	ecx, dword ptr [rbp - 0xf8]
	mov	eax, ecx
	mov	rdx, rax
	sub	rdx, 0x7a
	mov	qword ptr [rbp - 0x888], rax
	mov	qword ptr [rbp - 0x890], rdx
	ja	.label_743
	mov	rax, qword ptr [rbp - 0x888]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_757]]
	jmp	rcx
.label_753:
	jmp	.label_801
.label_801:
	mov	qword ptr [rbp - 0x160], 0
.label_770:
	mov	rax, qword ptr [rbp - 0x160]
	cmp	rax, qword ptr [rbp - 0x150]
	jae	.label_717
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x8a8], eax
	mov	rax, qword ptr [rbp - 0x160]
	add	rax, 1
	mov	qword ptr [rbp - 0x160], rax
	jmp	.label_770
.label_591:
	lea	rax, [rbp - 0xe0]
	add	rax, 0x17
	mov	qword ptr [rbp - 0xc0], rax
	test	byte ptr [rbp - 0x9d], 1
	je	.label_774
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x9c], eax
.label_774:
	jmp	.label_780
.label_780:
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 1
	cmp	eax, 0
	je	.label_782
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0xc0], rcx
	mov	byte ptr [rax - 1], 0x3a
.label_782:
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0xa4]
	sar	ecx, 1
	mov	dword ptr [rbp - 0xa4], ecx
	mov	ecx, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x904], eax
	mov	eax, ecx
	xor	edx, edx
	mov	ecx, dword ptr [rbp - 0x904]
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
	mov	byte ptr [rbp - 0x905], al
	jne	.label_789
	cmp	dword ptr [rbp - 0xa4], 0
	setne	al
	mov	byte ptr [rbp - 0x905], al
.label_789:
	mov	al, byte ptr [rbp - 0x905]
	test	al, 1
	jne	.label_780
	jmp	.label_672
.label_672:
	mov	eax, dword ptr [rbp - 0x94]
	cmp	eax, dword ptr [rbp - 0x3c]
	jge	.label_816
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x94], eax
.label_816:
	test	byte ptr [rbp - 0x9d], 1
	je	.label_820
	mov	eax, 0x2d
	mov	dword ptr [rbp - 0x90c], eax
	jmp	.label_824
.label_1173:
	jmp	.label_827
.label_827:
	mov	qword ptr [rbp - 0x780], 1
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_828
	xor	eax, eax
	mov	dword ptr [rbp - 0x9c8], eax
	jmp	.label_835
.label_941:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_783
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_553
	mov	rax, qword ptr [rbp - 0x5f8]
	cmp	rax, qword ptr [rbp - 0x600]
	jae	.label_553
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x5f8]
	mov	qword ptr [rbp - 0x610], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_847
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_857
.label_847:
	jmp	.label_859
.label_859:
	mov	qword ptr [rbp - 0x618], 0
.label_871:
	mov	rax, qword ptr [rbp - 0x618]
	cmp	rax, qword ptr [rbp - 0x610]
	jae	.label_863
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x91c], eax
	mov	rax, qword ptr [rbp - 0x618]
	add	rax, 1
	mov	qword ptr [rbp - 0x618], rax
	jmp	.label_871
.label_620:
	jmp	.label_878
.label_878:
	mov	qword ptr [rbp - 0x6f8], 0
.label_891:
	mov	rax, qword ptr [rbp - 0x6f8]
	cmp	rax, qword ptr [rbp - 0x6e8]
	jae	.label_885
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x990], eax
	mov	rax, qword ptr [rbp - 0x6f8]
	add	rax, 1
	mov	qword ptr [rbp - 0x6f8], rax
	jmp	.label_891
.label_953:
	cmp	dword ptr [rbp - 0x64], 0
	jne	.label_951
	mov	dword ptr [rbp - 0x64], 0xc
.label_951:
	jmp	.label_952
.label_952:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x88], rax
.label_731:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_903
	mov	dword ptr [rbp - 0x8c], 0
	mov	dword ptr [rbp - 0x94], 0
	mov	byte ptr [rbp - 0xe1], 0
	mov	al, byte ptr [rbp - 0x31]
	and	al, 1
	mov	byte ptr [rbp - 0xe2], al
	mov	byte ptr [rbp - 0xf1], 0
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x25
	je	.label_906
	jmp	.label_921
.label_921:
	mov	qword ptr [rbp - 0x108], 1
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_924
	xor	eax, eax
	mov	dword ptr [rbp - 0x83c], eax
	jmp	.label_928
.label_714:
	jmp	.label_932
.label_932:
	mov	qword ptr [rbp - 0x730], 0
.label_948:
	mov	rax, qword ptr [rbp - 0x730]
	cmp	rax, qword ptr [rbp - 0x720]
	jae	.label_881
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x9b0], eax
	mov	rax, qword ptr [rbp - 0x730]
	add	rax, 1
	mov	qword ptr [rbp - 0x730], rax
	jmp	.label_948
.label_644:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_495
	jmp	.label_497
.label_497:
	mov	qword ptr [rbp - 0x630], 0
.label_511:
	mov	rax, qword ptr [rbp - 0x630]
	movsxd	rcx, dword ptr [rbp - 0x624]
	cmp	rax, rcx
	jae	.label_501
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x928], eax
	mov	rax, qword ptr [rbp - 0x630]
	add	rax, 1
	mov	qword ptr [rbp - 0x630], rax
	jmp	.label_511
.label_1149:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_519
	jmp	.label_512
.label_808:
	jmp	.label_525
.label_525:
	jmp	.label_526
.label_856:
	jmp	.label_529
.label_529:
	jmp	.label_532
.label_860:
	mov	rax, qword ptr [rbp - 0x708]
	mov	qword ptr [rbp - 0x9a8], rax
.label_868:
	mov	rax, qword ptr [rbp - 0x9a8]
	mov	qword ptr [rbp - 0x718], rax
	mov	rax, qword ptr [rbp - 0x718]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_534
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_535
.label_901:
	jmp	.label_547
.label_547:
	mov	qword ptr [rbp - 0x7a8], 0
.label_560:
	mov	rax, qword ptr [rbp - 0x7a8]
	cmp	rax, qword ptr [rbp - 0x798]
	jae	.label_549
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x9d8], eax
	mov	rax, qword ptr [rbp - 0x7a8]
	add	rax, 1
	mov	qword ptr [rbp - 0x7a8], rax
	jmp	.label_560
.label_670:
	mov	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0x8b8], rax
.label_678:
	mov	rax, qword ptr [rbp - 0x8b8]
	mov	qword ptr [rbp - 0x180], rax
	mov	rax, qword ptr [rbp - 0x180]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_575
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_535
.label_717:
	jmp	.label_585
.label_585:
	jmp	.label_854
.label_854:
	jmp	.label_565
.label_565:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	edi, byte ptr [rax]
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x8ac], eax
.label_734:
	mov	rax, qword ptr [rbp - 0x148]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_592
.label_1155:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_599
	jmp	.label_512
.label_686:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x948], eax
.label_822:
	mov	eax, dword ptr [rbp - 0x948]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x670], rcx
	mov	rcx, qword ptr [rbp - 0x668]
	cmp	rcx, qword ptr [rbp - 0x670]
	jae	.label_610
	mov	rax, qword ptr [rbp - 0x670]
	mov	qword ptr [rbp - 0x950], rax
	jmp	.label_690
.label_630:
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
	mov	dword ptr [rbp - 0x624], edi
	cmp	dword ptr [rbp - 0x624], 0
	jle	.label_621
	cmp	dword ptr [rbp - 0x8c], 0x5f
	jne	.label_641
	movsxd	rax, dword ptr [rbp - 0x624]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_644
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_535
.label_508:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x964], eax
.label_513:
	mov	eax, dword ptr [rbp - 0x964]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x6a8], rcx
	mov	rcx, qword ptr [rbp - 0x6a0]
	cmp	rcx, qword ptr [rbp - 0x6a8]
	jae	.label_653
	mov	rax, qword ptr [rbp - 0x6a8]
	mov	qword ptr [rbp - 0x970], rax
	jmp	.label_659
.label_818:
	jmp	.label_666
.label_666:
	jmp	.label_633
.label_510:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x8b0], eax
.label_518:
	mov	eax, dword ptr [rbp - 0x8b0]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x178], rcx
	mov	rcx, qword ptr [rbp - 0x170]
	cmp	rcx, qword ptr [rbp - 0x178]
	jae	.label_670
	mov	rax, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x8b8], rax
	jmp	.label_678
.label_653:
	mov	rax, qword ptr [rbp - 0x6a0]
	mov	qword ptr [rbp - 0x970], rax
.label_659:
	mov	rax, qword ptr [rbp - 0x970]
	mov	qword ptr [rbp - 0x6b0], rax
	mov	rax, qword ptr [rbp - 0x6b0]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_682
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_535
.label_549:
	jmp	.label_693
.label_693:
	jmp	.label_572
.label_572:
	jmp	.label_694
.label_694:
	mov	edi, 9
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x9dc], eax
.label_889:
	mov	rax, qword ptr [rbp - 0x790]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_592
.label_864:
	jmp	.label_703
.label_703:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_704
.label_1171:
	jmp	.label_552
.label_505:
	mov	eax, dword ptr [rbp - 0x774]
	mov	dword ptr [rbp - 0x9c4], eax
.label_668:
	mov	eax, dword ptr [rbp - 0x9c4]
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [rbp - 0xc0], rsi
	mov	byte ptr [rdx - 1], cl
	cmp	qword ptr [rbp - 0x770], 0
	jne	.label_713
	mov	dword ptr [rbp - 0x94], 1
	mov	byte ptr [rbp - 0x9e], 0
	jmp	.label_672
.label_772:
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_723
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_723
	mov	dword ptr [rbp - 0x8c], 0x2b
	mov	dword ptr [rbp - 0xfc], 4
	jmp	.label_625
.label_798:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_734
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_565
	mov	rax, qword ptr [rbp - 0x138]
	cmp	rax, qword ptr [rbp - 0x140]
	jae	.label_565
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0x150], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_744
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_753
.label_744:
	jmp	.label_755
.label_755:
	mov	qword ptr [rbp - 0x158], 0
.label_765:
	mov	rax, qword ptr [rbp - 0x158]
	cmp	rax, qword ptr [rbp - 0x150]
	jae	.label_758
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x8a4], eax
	mov	rax, qword ptr [rbp - 0x158]
	add	rax, 1
	mov	qword ptr [rbp - 0x158], rax
	jmp	.label_765
.label_492:
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_771
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x8c], eax
.label_771:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x8c], 0x2b
	mov	byte ptr [rbp - 0x8fe], cl
	jne	.label_773
	mov	al, 1
	mov	ecx, 0x270f
	mov	edx, 0x63
	cmp	dword ptr [rbp - 0x94], 2
	cmove	ecx, edx
	cmp	ecx, dword ptr [rbp - 0x9c]
	mov	byte ptr [rbp - 0x8ff], al
	jb	.label_778
	mov	eax, dword ptr [rbp - 0x94]
	cmp	eax, dword ptr [rbp - 0x3c]
	setl	cl
	mov	byte ptr [rbp - 0x8ff], cl
.label_778:
	mov	al, byte ptr [rbp - 0x8ff]
	mov	byte ptr [rbp - 0x8fe], al
.label_773:
	mov	al, byte ptr [rbp - 0x8fe]
	and	al, 1
	mov	byte ptr [rbp - 0x9e], al
	jmp	.label_788
.label_729:
	mov	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0x8a0], rax
.label_737:
	mov	rax, qword ptr [rbp - 0x8a0]
	mov	qword ptr [rbp - 0x148], rax
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_798
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_535
.label_699:
	jmp	.label_807
.label_807:
	mov	dword ptr [rbp - 0x94], 3
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 0x1c], -1
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rax + 0x1c]
	add	edx, 1
	mov	dword ptr [rbp - 0x9c], edx
	jmp	.label_688
.label_918:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_663
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_749
	mov	rax, qword ptr [rbp - 0x810]
	cmp	rax, qword ptr [rbp - 0x818]
	jae	.label_749
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x810]
	mov	qword ptr [rbp - 0x828], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_823
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_831
.label_823:
	jmp	.label_834
.label_834:
	mov	qword ptr [rbp - 0x830], 0
.label_845:
	mov	rax, qword ptr [rbp - 0x830]
	cmp	rax, qword ptr [rbp - 0x828]
	jae	.label_840
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0xa7c], eax
	mov	rax, qword ptr [rbp - 0x830]
	add	rax, 1
	mov	qword ptr [rbp - 0x830], rax
	jmp	.label_845
.label_1163:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_864
	jmp	.label_512
.label_600:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x9a0], eax
.label_607:
	mov	eax, dword ptr [rbp - 0x9a0]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x710], rcx
	mov	rcx, qword ptr [rbp - 0x708]
	cmp	rcx, qword ptr [rbp - 0x710]
	jae	.label_860
	mov	rax, qword ptr [rbp - 0x710]
	mov	qword ptr [rbp - 0x9a8], rax
	jmp	.label_868
.label_863:
	jmp	.label_872
.label_872:
	jmp	.label_551
.label_700:
	jmp	.label_542
.label_542:
	jmp	.label_548
.label_885:
	jmp	.label_557
.label_557:
	jmp	.label_760
.label_760:
	jmp	.label_669
.label_669:
	jmp	.label_884
.label_884:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_888
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x6d0]
	call	fwrite_lowcase
	jmp	.label_711
.label_575:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_893
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_799
	mov	rax, qword ptr [rbp - 0x170]
	cmp	rax, qword ptr [rbp - 0x178]
	jae	.label_799
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0x188], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_900
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_736
.label_900:
	jmp	.label_912
.label_912:
	mov	qword ptr [rbp - 0x190], 0
.label_923:
	mov	rax, qword ptr [rbp - 0x190]
	cmp	rax, qword ptr [rbp - 0x188]
	jae	.label_915
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x8bc], eax
	mov	rax, qword ptr [rbp - 0x190]
	add	rax, 1
	mov	qword ptr [rbp - 0x190], rax
	jmp	.label_923
.label_655:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_609
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_933
	mov	rax, qword ptr [rbp - 0x7c8]
	cmp	rax, qword ptr [rbp - 0x7d0]
	jae	.label_933
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x7c8]
	mov	qword ptr [rbp - 0x7e0], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_944
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_790
.label_944:
	jmp	.label_496
.label_496:
	mov	qword ptr [rbp - 0x7e8], 0
.label_509:
	mov	rax, qword ptr [rbp - 0x7e8]
	cmp	rax, qword ptr [rbp - 0x7e0]
	jae	.label_543
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0xa44], eax
	mov	rax, qword ptr [rbp - 0x7e8]
	add	rax, 1
	mov	qword ptr [rbp - 0x7e8], rax
	jmp	.label_509
.label_1147:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_515
	jmp	.label_512
.label_684:
	jmp	.label_512
.label_931:
	jmp	.label_523
.label_523:
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 2
	mov	ecx, dword ptr [rbp - 0x7b4]
	mov	dword ptr [rbp - 0xa20], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0xa20]
	idiv	ecx
	add	eax, 1
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_524
.label_506:
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_537
.label_902:
	jmp	.label_544
.label_544:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_704
.label_945:
	jmp	.label_552
.label_831:
	jmp	.label_554
.label_554:
	mov	qword ptr [rbp - 0x838], 0
.label_571:
	mov	rax, qword ptr [rbp - 0x838]
	cmp	rax, qword ptr [rbp - 0x828]
	jae	.label_558
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0xa80], eax
	mov	rax, qword ptr [rbp - 0x838]
	add	rax, 1
	mov	qword ptr [rbp - 0x838], rax
	jmp	.label_571
.label_761:
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x848], rax
.label_612:
	mov	rax, qword ptr [rbp - 0x848]
	mov	qword ptr [rbp - 0x118], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_581
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_535
.label_955:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_956:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409992
	.globl sub_409992
	.type sub_409992, @function
sub_409992:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4099a1

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
	jne	.label_954
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_954:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_955
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_955
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_955
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_956
	.section	.text
	.align	16
	#Procedure 0x409a30
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
	.align	16
	#Procedure 0x409a46
	.globl sub_409a46
	.type sub_409a46, @function
sub_409a46:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409a50

	.globl uptime
	.type uptime, @function
uptime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rax, [rbp - 0x18]
	lea	rdx, [rbp - 0x20]
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x20], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rsi, rax
	call	read_utmp
	cmp	eax, 0
	je	.label_958
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x24], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_957
	mov	esi, dword ptr [rbp - 0x24]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_958:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	print_uptime
	add	rsp, 0x30
	pop	rbp
	ret	
.label_959:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409ad6
	.globl sub_409ad6
	.type sub_409ad6, @function
sub_409ad6:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409adf

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_962
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_965
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_962
.label_965:
	movabs	rdi, OFFSET FLAT:label_964
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_960
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_963
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_961
.label_962:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_959
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_960:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_957
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_961:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_967:
	mov	byte ptr [rbp - 1], 0
.label_968:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409bce
	.globl sub_409bce
	.type sub_409bce, @function
sub_409bce:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409bdc
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_967
	jmp	.label_966
.label_966:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_968
	.section	.text
	.align	16
	#Procedure 0x409c00

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
	.align	16
	#Procedure 0x409c2c
	.globl sub_409c2c
	.type sub_409c2c, @function
sub_409c2c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409c30

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
	.align	16
	#Procedure 0x409c62
	.globl sub_409c62
	.type sub_409c62, @function
sub_409c62:

	nop	word ptr cs:[rax + rax]
.label_970:
	mov	byte ptr [rbp - 1], 0
.label_971:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409c7e
	.globl sub_409c7e
	.type sub_409c7e, @function
sub_409c7e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409c8c
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_970
	jmp	.label_969
.label_969:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_971
.label_980:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax], 0
	je	.label_976
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x28], rax
.label_973:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	call	strcmp
	cmp	eax, 0
	je	.label_972
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_974
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 9
	cmp	rax, rcx
	jne	.label_984
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 8]
	cmp	ecx, 0
	jne	.label_974
.label_984:
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
	jae	.label_981
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	byte ptr [rbp - 1], 0
	jmp	.label_977
	.section	.text
	.align	16
	#Procedure 0x409d6a

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:label_44
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_982
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_980
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x38
	cmp	rax, rcx
	jae	.label_980
.label_982:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_977
.label_979:
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x28], rax
.label_978:
	jmp	.label_972
.label_981:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	cmp	rax, 0x77
	jae	.label_983
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x30]
	call	extend_abbrs
	jmp	.label_978
.label_983:
	mov	rdi, qword ptr [rbp - 0x20]
	call	tzalloc
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], rax
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_979
	mov	byte ptr [rbp - 1], 0
	jmp	.label_977
.label_974:
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	add	rax, 1
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	byte ptr [rax], 0
	jne	.label_975
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_975
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x28], rax
.label_975:
	jmp	.label_973
.label_972:
	jmp	.label_976
.label_976:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x30], rax
	mov	byte ptr [rbp - 1], 1
.label_977:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409eab
	.globl sub_409eab
	.type sub_409eab, @function
sub_409eab:

	nop	dword ptr [rax + rax]
.label_989:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_987
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_986
.label_987:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_986
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_986:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_985
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_985:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_988:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409f3d
	.globl sub_409f3d
	.type sub_409f3d, @function
sub_409f3d:

	nop	
	.section	.text
	.align	16
	#Procedure 0x409f3f

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
	jge	.label_989
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_988
	.section	.text
	.align	16
	#Procedure 0x409f80

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
	.align	16
	#Procedure 0x409fbe
	.globl sub_409fbe
	.type sub_409fbe, @function
sub_409fbe:

	nop	
.label_996:
	xor	edi, edi
	call	qword ptr [rbp - 0x30]
	jmp	.label_991
	.section	.text
	.align	16
	#Procedure 0x409fca
	.globl parse_long_options
	.type parse_long_options, @function
parse_long_options:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1c0
	test	al, al
	movaps	xmmword ptr [rbp - 0x110], xmm7
	movaps	xmmword ptr [rbp - 0x120], xmm6
	movaps	xmmword ptr [rbp - 0x130], xmm5
	movaps	xmmword ptr [rbp - 0x140], xmm4
	movaps	xmmword ptr [rbp - 0x150], xmm3
	movaps	xmmword ptr [rbp - 0x160], xmm2
	movaps	xmmword ptr [rbp - 0x170], xmm1
	movaps	xmmword ptr [rbp - 0x180], xmm0
	mov	dword ptr [rbp - 0x184], edi
	mov	qword ptr [rbp - 0x190], r9
	mov	qword ptr [rbp - 0x198], r8
	mov	qword ptr [rbp - 0x1a0], rcx
	mov	qword ptr [rbp - 0x1a8], rdx
	mov	qword ptr [rbp - 0x1b0], rsi
	je	.label_992
	movaps	xmm0, xmmword ptr [rbp - 0x180]
	movaps	xmmword ptr [rbp - 0xd0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm7
.label_992:
	mov	rax, qword ptr [rbp - 0x190]
	mov	rcx, qword ptr [rbp - 0x198]
	mov	rdx, qword ptr [rbp - 0x1a0]
	mov	rsi, qword ptr [rbp - 0x1a8]
	mov	rdi, qword ptr [rbp - 0x1b0]
	mov	r8d, dword ptr [rbp - 0x184]
	mov	dword ptr [rbp - 4], r8d
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	r8d,  dword ptr [dword ptr [opterr]]
	mov	dword ptr [rbp - 0x38], r8d
	mov	dword ptr [dword ptr [opterr]],  0
	cmp	dword ptr [rbp - 4], 2
	jne	.label_990
	movabs	rdx, OFFSET FLAT:label_208
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x34], eax
	cmp	eax, -1
	je	.label_990
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 0x68
	mov	dword ptr [rbp - 0x1b4], eax
	mov	dword ptr [rbp - 0x1b8], ecx
	je	.label_996
	jmp	.label_994
.label_994:
	mov	eax, dword ptr [rbp - 0x1b4]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x1bc], eax
	je	.label_995
	jmp	.label_993
.label_995:
	lea	rax, [rbp - 0x50]
	mov	rcx, rax
	lea	rdx, [rbp - 0x100]
	mov	qword ptr [rcx + 0x10], rdx
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rcx + 8], rdx
	mov	dword ptr [rcx + 4], 0x30
	mov	dword ptr [rcx], 0x30
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, rax
	call	version_etc_va
	xor	edi, edi
	call	exit
.label_993:
	jmp	.label_991
.label_991:
	jmp	.label_990
.label_990:
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [dword ptr [rip + opterr]],  eax
	mov	dword ptr [dword ptr [rip + optind]],  0
	add	rsp, 0x1c0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a1e2
	.globl sub_40a1e2
	.type sub_40a1e2, @function
sub_40a1e2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a1f0
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
.label_999:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_997
	jmp	.label_998
.label_998:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_999
.label_997:
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
	.align	16
	#Procedure 0x40a260

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
	je	.label_1000
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 4]
	mov	byte ptr [rbp - 9], cl
	jg	.label_1000
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 8]
	setle	cl
	mov	byte ptr [rbp - 9], cl
.label_1000:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
.label_1002:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1003:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a2cb
	.globl sub_40a2cb
	.type sub_40a2cb, @function
sub_40a2cb:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a2d4

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1002
	jmp	.label_1001
.label_1001:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1003
	.section	.text
	.align	16
	#Procedure 0x40a300

	.globl read_utmp
	.type read_utmp, @function
read_utmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x38], 0
	mov	rdi, qword ptr [rbp - 8]
	call	utmpxname
	mov	dword ptr [rbp - 0x44], eax
	call	setutxent
.label_1004:
	call	getutxent
	mov	qword ptr [rbp - 0x40], rax
	cmp	rax, 0
	je	.label_1005
	mov	rdi, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rbp - 0x1c]
	call	desirable_utmp_entry
	test	al, 1
	jne	.label_1008
	jmp	.label_1006
.label_1008:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_1007
	lea	rsi, [rbp - 0x30]
	mov	eax, 0x180
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, rcx
	call	x2nrealloc
	mov	qword ptr [rbp - 0x38], rax
.label_1007:
	mov	eax, 0x180
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, rcx
	add	rsi, 1
	mov	qword ptr [rbp - 0x28], rsi
	imul	rcx, rcx, 0x180
	add	rcx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, rcx
	call	memcpy
.label_1006:
	jmp	.label_1004
.label_1005:
	call	endutxent
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx], rcx
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a3ea
	.globl sub_40a3ea
	.type sub_40a3ea, @function
sub_40a3ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a3f0

	.globl getenv_TZ
	.type getenv_TZ, @function
getenv_TZ:
	push	rbp
	mov	rbp, rsp
	movabs	rdi, OFFSET FLAT:label_447
	call	getenv
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a405
	.globl sub_40a405
	.type sub_40a405, @function
sub_40a405:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a410
	.globl extract_trimmed_name
	.type extract_trimmed_name, @function
extract_trimmed_name:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	eax, 0x21
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rcx
	call	xmalloc
	mov	edx, 0x20
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x2c
	mov	rsi, rax
	call	strncpy
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + 0x20], 0
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x28], rcx
	call	strlen
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
.label_1010:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x29], cl
	jae	.label_1009
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x20
	sete	dl
	mov	byte ptr [rbp - 0x29], dl
.label_1009:
	mov	al, byte ptr [rbp - 0x29]
	test	al, 1
	jne	.label_1011
	jmp	.label_1012
.label_1011:
	jmp	.label_1013
.label_1013:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax - 1], 0
	jmp	.label_1010
.label_1012:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a4cd
	.globl sub_40a4cd
	.type sub_40a4cd, @function
sub_40a4cd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a4d0

	.globl sub_40a4d0
	.type sub_40a4d0, @function
sub_40a4d0:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1014
.label_1016:
	mov	byte ptr [rbp - 1], 0
.label_1014:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a4e7
	.globl sub_40a4e7
	.type sub_40a4e7, @function
sub_40a4e7:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a4f6
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
	ja	.label_1016
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1015]]
	jmp	rcx
	.section	.text
	.align	16
	#Procedure 0x40a520

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
	.align	16
	#Procedure 0x40a553
	.globl sub_40a553
	.type sub_40a553, @function
sub_40a553:

	nop	word ptr cs:[rax + rax]
.label_1025:
	movabs	rsi, OFFSET FLAT:label_1017
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1018
	movabs	rax, OFFSET FLAT:label_1019
	movabs	rcx, OFFSET FLAT:label_1020
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1021
	.section	.text
	.align	16
	#Procedure 0x40a5a7

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
	je	.label_1026
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1021
.label_1026:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_1024
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1025
	movabs	rax, OFFSET FLAT:label_1022
	movabs	rcx, OFFSET FLAT:label_1023
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1021
.label_1018:
	movabs	rax, OFFSET FLAT:label_342
	movabs	rcx, OFFSET FLAT:label_311
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_1021:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a658
	.globl sub_40a658
	.type sub_40a658, @function
sub_40a658:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a660

	.globl select_plural
	.type select_plural, @function
select_plural:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], -1
	ja	.label_1027
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1028
.label_1027:
	mov	eax, 0xf4240
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	add	rdx, 0xf4240
	mov	qword ptr [rbp - 0x10], rdx
.label_1028:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a6a1
	.globl sub_40a6a1
	.type sub_40a6a1, @function
sub_40a6a1:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a6b0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1029
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_1029:
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
	.align	16
	#Procedure 0x40a6ed
	.globl sub_40a6ed
	.type sub_40a6ed, @function
sub_40a6ed:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a6f0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_1030
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_957
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40a72f
	.globl sub_40a72f
	.type sub_40a72f, @function
sub_40a72f:

	nop	
.label_1032:
	mov	byte ptr [rbp - 1], 0
.label_1034:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a73e
	.globl sub_40a73e
	.type sub_40a73e, @function
sub_40a73e:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a746
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
	jb	.label_1031
	jmp	.label_1033
.label_1033:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1032
	jmp	.label_1031
.label_1031:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1034
	.section	.text
	.align	16
	#Procedure 0x40a780
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
	.align	16
	#Procedure 0x40a7b1
	.globl sub_40a7b1
	.type sub_40a7b1, @function
sub_40a7b1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a7c0

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
	.align	16
	#Procedure 0x40a7f7
	.globl sub_40a7f7
	.type sub_40a7f7, @function
sub_40a7f7:

	nop	word ptr [rax + rax]
.label_1035:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a817
	.globl sub_40a817
	.type sub_40a817, @function
sub_40a817:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a81f
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
	jae	.label_1035
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40a8b5
	.globl sub_40a8b5
	.type sub_40a8b5, @function
sub_40a8b5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a8c2
	.globl sub_40a8c2
	.type sub_40a8c2, @function
sub_40a8c2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a8e6
	.globl sub_40a8e6
	.type sub_40a8e6, @function
sub_40a8e6:

	nop	word ptr cs:[rax + rax]
