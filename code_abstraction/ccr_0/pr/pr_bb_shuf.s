	.section	.text
	.align	16
	#Procedure 0x401b59
	.globl sub_401b59
	.type sub_401b59, @function
sub_401b59:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x401b5a
	.globl sub_401b5a
	.type sub_401b5a, @function
sub_401b5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b92
	.globl sub_401b92
	.type sub_401b92, @function
sub_401b92:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401bda
	.globl sub_401bda
	.type sub_401bda, @function
sub_401bda:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401bfc
	.globl sub_401bfc
	.type sub_401bfc, @function
sub_401bfc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401c0d
	.globl sub_401c0d
	.type sub_401c0d, @function
sub_401c0d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401c26
	.globl sub_401c26
	.type sub_401c26, @function
sub_401c26:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c30
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
	.align	16
	#Procedure 0x401c3c
	.globl sub_401c3c
	.type sub_401c3c, @function
sub_401c3c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401c40

	.globl bkm_scale_1
	.type bkm_scale_1, @function
bkm_scale_1:
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
	jae	.label_9
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_10
.label_9:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_10:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401c9c
	.globl sub_401c9c
	.type sub_401c9c, @function
sub_401c9c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401ca0

	.globl align_column
	.type align_column, @function
align_column:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi + 0x34]
	mov	dword ptr [dword ptr [padding_not_printed]],  eax
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	cmp	eax,  dword ptr [dword ptr [padding_not_printed]]
	jge	.label_11
	mov	eax,  dword ptr [dword ptr [padding_not_printed]]
	sub	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	edi, eax
	call	pad_across_to
	mov	dword ptr [dword ptr [padding_not_printed]],  0
.label_11:
	test	byte ptr [byte ptr [use_col_separator]],  1
	je	.label_13
	call	print_sep_string
.label_13:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x38], 1
	je	.label_12
	mov	rdi, qword ptr [rbp - 8]
	call	add_line_number
.label_12:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401d1e
	.globl sub_401d1e
	.type sub_401d1e, @function
sub_401d1e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401d20

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
	#Procedure 0x401d52
	.globl sub_401d52
	.type sub_401d52, @function
sub_401d52:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d60

	.globl getenv_TZ
	.type getenv_TZ, @function
getenv_TZ:
	push	rbp
	mov	rbp, rsp
	movabs	rdi, OFFSET FLAT:label_14
	call	getenv
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401d75
	.globl sub_401d75
	.type sub_401d75, @function
sub_401d75:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d80
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_15
	jmp	.label_17
.label_17:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_16
.label_15:
	mov	byte ptr [rbp - 1], 0
.label_16:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401db2
	.globl sub_401db2
	.type sub_401db2, @function
sub_401db2:

	nop	word ptr cs:[rax + rax]
.label_18:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401dca
	.globl sub_401dca
	.type sub_401dca, @function
sub_401dca:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401dcc

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
	jne	.label_18
	cmp	qword ptr [rbp - 8], 0
	je	.label_18
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401e00

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
	#Procedure 0x401e3e
	.globl sub_401e3e
	.type sub_401e3e, @function
sub_401e3e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401e40

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
	jne	.label_19
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_19:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_20
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_20
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_20
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_21
.label_20:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_21:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ee1
	.globl sub_401ee1
	.type sub_401ee1, @function
sub_401ee1:

	nop	word ptr cs:[rax + rax]
.label_24:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
.label_26:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff8
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_23
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
	je	.label_22
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 9
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	extend_abbrs
.label_22:
	jmp	.label_23
.label_23:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f89
	.globl sub_401f89
	.type sub_401f89, @function
sub_401f89:

	nop	word ptr cs:[rax + rax]
.label_27:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_25
.label_25:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0x77
	jae	.label_24
	mov	eax, 0x77
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_26
	.section	.text
	.align	16
	#Procedure 0x401fc3

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_27
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_25
	.section	.text
	.align	16
	#Procedure 0x401ff0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_42
	jmp	.label_31
.label_31:
	movabs	rdi, OFFSET FLAT:label_32
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_47
.label_42:
	movabs	rdi, OFFSET FLAT:label_30
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_39
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:label_33
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_44
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_34
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_45
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_36
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_46
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_38
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_49
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_28
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_29
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_37
	mov	dword ptr [rbp - 0x44], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_40
	mov	dword ptr [rbp - 0x48], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_43
	mov	dword ptr [rbp - 0x4c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_48
	mov	dword ptr [rbp - 0x50], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_41
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_35
	mov	dword ptr [rbp - 0x58], eax
	call	emit_ancillary_info
.label_47:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x4022a8
	.globl sub_4022a8
	.type sub_4022a8, @function
sub_4022a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022b0

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
	#Procedure 0x402325
	.globl sub_402325
	.type sub_402325, @function
sub_402325:

	nop	word ptr cs:[rax + rax]
.label_53:
	mov	rdi, qword ptr [rbp - 0x18]
	call	tzalloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_52
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_51
	.section	.text
	.align	16
	#Procedure 0x402355

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
	je	.label_54
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 8]
	cmp	ecx, 0
	je	.label_53
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	je	.label_55
	jmp	.label_53
.label_52:
	mov	rdi, qword ptr [rbp - 0x10]
	call	change_env
	test	al, 1
	jne	.label_50
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
	jmp	.label_51
.label_50:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_51:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4023fb
	.globl sub_4023fb
	.type sub_4023fb, @function
sub_4023fb:

	nop	word ptr [rax + rax]
.label_54:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 8], 0
	jne	.label_53
.label_55:
	mov	rax,  qword ptr [word ptr [local_tz]]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_51
.label_72:
	call	__errno_location
	mov	dword ptr [rax], 0x22
.label_60:
	jmp	.label_67
.label_67:
	jmp	.label_62
.label_62:
	jmp	.label_59
.label_65:
	cmp	qword ptr [rbp - 0x48], -0x40000000
	jge	.label_72
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_60
.label_71:
	cmp	dword ptr [rbp - 0x40], 1
	jne	.label_63
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_58
.label_63:
	cmp	dword ptr [rbp - 0x40], 3
	jne	.label_70
	call	__errno_location
	mov	dword ptr [rax], 0
.label_70:
	jmp	.label_58
.label_58:
	jmp	.label_59
.label_59:
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_66
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_64
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_61
	.section	.text
	.align	16
	#Procedure 0x4024b0

	.globl xnumtoimax
	.type xnumtoimax, @function
xnumtoimax:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x58
	mov	eax, dword ptr [rbp + 0x10]
	xor	r10d, r10d
	mov	r11d, r10d
	lea	rbx, [rbp - 0x48]
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	dword ptr [rbp - 0x3c], eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	r8, qword ptr [rbp - 0x30]
	mov	rsi, r11
	mov	rcx, rbx
	call	xstrtoimax
	mov	dword ptr [rbp - 0x40], eax
	cmp	dword ptr [rbp - 0x40], 0
	jne	.label_71
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x20]
	jl	.label_56
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x48]
	jge	.label_62
.label_56:
	mov	dword ptr [rbp - 0x40], 1
	cmp	qword ptr [rbp - 0x48], 0x3fffffff
	jle	.label_65
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_67
.label_69:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], ecx
.label_57:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x60], rcx
	call	quote
	movabs	rdx, OFFSET FLAT:label_68
	mov	edi, dword ptr [rbp - 0x50]
	mov	esi, dword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	r8, rax
	mov	al, 0
	call	error
.label_66:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x58
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40258e
	.globl sub_40258e
	.type sub_40258e, @function
sub_40258e:

	nop	dword ptr [rax]
.label_64:
	mov	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_61
.label_61:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x50], eax
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_69
	xor	eax, eax
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_57
	.section	.text
	.align	16
	#Procedure 0x4025c0

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
	#Procedure 0x4025f8
	.globl sub_4025f8
	.type sub_4025f8, @function
sub_4025f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402600

	.globl cleanup
	.type cleanup, @function
cleanup:
	push	rbp
	mov	rbp, rsp
	mov	rdi,  qword ptr [word ptr [number_buff]]
	call	free
	mov	rdi,  qword ptr [word ptr [clump_buff]]
	call	free
	mov	rdi,  qword ptr [word ptr [column_vector]]
	call	free
	mov	rdi,  qword ptr [word ptr [line_vector]]
	call	free
	mov	rdi,  qword ptr [word ptr [end_vector]]
	call	free
	mov	rdi,  qword ptr [word ptr [buff]]
	call	free
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402654
	.globl sub_402654
	.type sub_402654, @function
sub_402654:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402660
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_73
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_73:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40268a
	.globl sub_40268a
	.type sub_40268a, @function
sub_40268a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402690

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
	#Procedure 0x4026ba
	.globl sub_4026ba
	.type sub_4026ba, @function
sub_4026ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026c0
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
	.align	16
	#Procedure 0x4026d2
	.globl sub_4026d2
	.type sub_4026d2, @function
sub_4026d2:

	nop	word ptr cs:[rax + rax]
.label_78:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4026e6
	.globl sub_4026e6
	.type sub_4026e6, @function
sub_4026e6:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026ef

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_74
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_77
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_74
.label_77:
	movabs	rdi, OFFSET FLAT:label_76
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_79
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_68
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_80
.label_74:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_78
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_79:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_75
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_80:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x4027d0

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
	jae	.label_81
	call	xalloc_die
.label_81:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402818
	.globl sub_402818
	.type sub_402818, @function
sub_402818:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402820
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
	#Procedure 0x402836
	.globl sub_402836
	.type sub_402836, @function
sub_402836:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402840
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
	#Procedure 0x402867
	.globl sub_402867
	.type sub_402867, @function
sub_402867:

	nop	word ptr [rax + rax]
.label_90:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_84
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_82
	call	xalloc_die
.label_87:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_83:
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
	je	.label_86
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_88]]
	mov	qword ptr [rax + 8], rcx
.label_86:
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
.label_84:
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
	ja	.label_89
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_85
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_85:
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
.label_89:
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
	#Procedure 0x402a8d
	.globl sub_402a8d
	.type sub_402a8d, @function
sub_402a8d:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a9a

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
	jge	.label_90
	call	abort
.label_82:
	test	byte ptr [rbp - 0x31], 1
	je	.label_87
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_83
.label_91:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_92
.label_92:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b0b
	.globl sub_402b0b
	.type sub_402b0b, @function
sub_402b0b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b10
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_91
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_92
.label_99:
	cmp	dword ptr [dword ptr [spaces_not_printed]],  0
	jle	.label_97
	call	print_white_space
.label_97:
	jmp	.label_94
.label_94:
	movsx	edi, byte ptr [rbp - 1]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x10], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x4000
	cmp	edi, 0
	jne	.label_93
	movsx	eax, byte ptr [rbp - 1]
	cmp	eax, 8
	jne	.label_100
	mov	eax,  dword ptr [dword ptr [output_position]]
	add	eax, -1
	mov	dword ptr [dword ptr [output_position]],  eax
.label_100:
	jmp	.label_98
	.section	.text
	.align	16
	#Procedure 0x402b9d

	.globl print_char
	.type print_char, @function
print_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	test	byte ptr [byte ptr [tabify_output]],  1
	je	.label_96
	movsx	eax, byte ptr [rbp - 1]
	cmp	eax, 0x20
	jne	.label_99
	mov	eax,  dword ptr [dword ptr [spaces_not_printed]]
	add	eax, 1
	mov	dword ptr [dword ptr [spaces_not_printed]],  eax
	jmp	.label_95
.label_93:
	mov	eax,  dword ptr [dword ptr [output_position]]
	add	eax, 1
	mov	dword ptr [dword ptr [output_position]],  eax
.label_98:
	jmp	.label_96
.label_96:
	movsx	edi, byte ptr [rbp - 1]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x14], eax
.label_95:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c04
	.globl sub_402c04
	.type sub_402c04, @function
sub_402c04:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c10

	.globl integer_overflow
	.type integer_overflow, @function
integer_overflow:
	push	rbp
	mov	rbp, rsp
	movabs	rdi, OFFSET FLAT:label_101
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c40

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
	#Procedure 0x402c73
	.globl sub_402c73
	.type sub_402c73, @function
sub_402c73:

	nop	word ptr cs:[rax + rax]
.label_141:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x64], ecx
	mov	dword ptr [rbp - 0x68], edx
	je	.label_102
	jmp	.label_109
.label_109:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_102
	jmp	.label_112
.label_112:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x70], eax
	je	.label_102
	jmp	.label_115
.label_115:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x74], eax
	je	.label_102
	jmp	.label_118
.label_118:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x78], eax
	je	.label_102
	jmp	.label_123
.label_123:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_102
	jmp	.label_126
.label_126:
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x80], eax
	jb	.label_102
	jmp	.label_103
.label_103:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x84], eax
	je	.label_102
	jmp	.label_111
.label_111:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_102
	jmp	.label_116
.label_116:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_102
	jmp	.label_119
.label_119:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x90], eax
	jne	.label_120
	jmp	.label_102
.label_102:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_104
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0x94], ecx
	mov	dword ptr [rbp - 0x98], edx
	je	.label_108
	jmp	.label_113
.label_113:
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_108
	jmp	.label_117
.label_117:
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xa0], eax
	jne	.label_105
	jmp	.label_122
.label_122:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_125
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, 2
	mov	dword ptr [rbp - 0x54], eax
.label_125:
	jmp	.label_105
.label_135:
	movabs	rdi, OFFSET FLAT:label_130
	movabs	rsi, OFFSET FLAT:label_131
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_132
	call	__assert_fail
.label_2188:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_107
.label_2187:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_107
	.section	.text
	.align	16
	#Procedure 0x402e66

	.globl xstrtoimax
	.type xstrtoimax, @function
xstrtoimax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_135
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_135
	jmp	.label_137
.label_137:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_136
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_133
.label_139:
	mov	dword ptr [rbp - 0x4c], 1
.label_138:
	jmp	.label_128
.label_128:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_129
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_124
.label_2181:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_107
.label_2190:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_107
.label_2186:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_107
.label_127:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_124
.label_2191:
	mov	dword ptr [rbp - 0x58], 0
	jmp	.label_107
.label_134:
	jmp	.label_128
.label_2184:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_107
.label_140:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_138
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_139
	mov	dword ptr [rbp - 4], 4
	jmp	.label_124
.label_136:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_133
.label_133:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoimax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_140
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_127
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_127
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_127
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_134
.label_2183:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_107
.label_2192:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_107
.label_108:
	mov	dword ptr [rbp - 0x50], 0x3e8
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, 1
	mov	dword ptr [rbp - 0x54], eax
.label_105:
	jmp	.label_104
.label_104:
	jmp	.label_120
.label_120:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xa8], rax
	mov	dword ptr [rbp - 0xac], ecx
	ja	.label_121
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_106]]
	jmp	rcx
.label_129:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_110
	mov	dword ptr [rbp - 0x50], 0x400
	mov	dword ptr [rbp - 0x54], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_141
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_124
.label_121:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_124
.label_2185:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_107
.label_2189:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_107
.label_107:
	mov	eax, dword ptr [rbp - 0x58]
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx]
	cmp	byte ptr [rcx], 0
	je	.label_114
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_114:
	jmp	.label_110
.label_110:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_124:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403192
	.globl sub_403192
	.type sub_403192, @function
sub_403192:

	nop	dword ptr [rax + rax]
.label_2182:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_107
.label_143:
	mov	byte ptr [rbp - 1], 0
.label_144:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4031be
	.globl sub_4031be
	.type sub_4031be, @function
sub_4031be:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4031cc
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_143
	jmp	.label_142
.label_142:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_144
	.section	.text
	.align	16
	#Procedure 0x4031f0

	.globl print_white_space
	.type print_white_space, @function
print_white_space:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax,  dword ptr [dword ptr [output_position]]
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 8]
	add	eax,  dword ptr [dword ptr [spaces_not_printed]]
	mov	dword ptr [rbp - 0xc], eax
.label_148:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, 1
	mov	byte ptr [rbp - 0xd], cl
	jle	.label_147
	mov	eax, dword ptr [rbp - 8]
	mov	ecx,  dword ptr [dword ptr [chars_per_output_tab]]
	mov	edx, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x14], eax
	mov	eax, edx
	cdq	
	idiv	dword ptr [dword ptr [chars_per_output_tab]]
	sub	ecx, edx
	mov	edx, dword ptr [rbp - 0x14]
	add	edx, ecx
	mov	dword ptr [rbp - 4], edx
	cmp	edx, dword ptr [rbp - 0xc]
	setle	sil
	mov	byte ptr [rbp - 0xd], sil
.label_147:
	mov	al, byte ptr [rbp - 0xd]
	test	al, 1
	jne	.label_149
	jmp	.label_150
.label_149:
	movsx	edi,  byte ptr [byte ptr [output_tab_char]]
	call	putchar_unlocked
	mov	edi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 0x18], eax
	jmp	.label_148
.label_150:
	jmp	.label_145
.label_145:
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_146
	mov	edi, 0x20
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_145
.label_146:
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [dword ptr [output_position]],  eax
	mov	dword ptr [dword ptr [spaces_not_printed]],  0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4032c3
	.globl sub_4032c3
	.type sub_4032c3, @function
sub_4032c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032d0

	.globl parse_column_count
	.type parse_column_count, @function
parse_column_count:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, OFFSET FLAT:label_151
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rax
	call	gettext
	mov	esi, 1
	movabs	rdx, OFFSET FLAT:columns
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, rax
	call	getoptnum
	mov	byte ptr [byte ptr [explicit_columns]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40331f
	.globl sub_40331f
	.type sub_40331f, @function
sub_40331f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403320

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
	jne	.label_153
	movabs	rax, OFFSET FLAT:label_152
	mov	qword ptr [rbp - 8], rax
.label_153:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_154
	movabs	rax, OFFSET FLAT:label_155
	mov	qword ptr [rbp - 8], rax
.label_154:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403377
	.globl sub_403377
	.type sub_403377, @function
sub_403377:

	nop	word ptr [rax + rax]
.label_163:
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x3a
	jne	.label_156
	lea	rsi, [rbp - 0x20]
	mov	edx, 0xa
	lea	rcx, [rbp - 0x30]
	movabs	r8, OFFSET FLAT:label_152
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	xstrtoumax
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	je	.label_157
	movabs	rcx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rbp - 0x34]
	mov	esi, dword ptr [rbp - 8]
	mov	al, byte ptr [rbp - 9]
	mov	r8, qword ptr [rbp - 0x18]
	movsx	edx, al
	call	xstrtol_fatal
.label_161:
	jmp	.label_156
.label_156:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax], 0
	je	.label_160
	mov	byte ptr [rbp - 1], 0
	jmp	.label_158
.label_164:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	je	.label_162
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_163
.label_162:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_158
	.section	.text
	.align	16
	#Procedure 0x403425

	.globl first_last_page
	.type first_last_page, @function
first_last_page:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, sil
	lea	rsi, [rbp - 0x20]
	mov	ecx, 0xa
	lea	r8, [rbp - 0x28]
	movabs	r9, OFFSET FLAT:label_152
	mov	dword ptr [rbp - 8], edi
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x30], -1
	mov	rdi, qword ptr [rbp - 0x18]
	mov	edx, ecx
	mov	rcx, r8
	mov	r8, r9
	call	xstrtoumax
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	je	.label_164
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_164
	movabs	rcx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rbp - 0x34]
	mov	esi, dword ptr [rbp - 8]
	mov	al, byte ptr [rbp - 9]
	mov	r8, qword ptr [rbp - 0x18]
	movsx	edx, al
	call	xstrtol_fatal
.label_160:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [word ptr [first_page_number]],  rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [word ptr [last_page_number]],  rax
	mov	byte ptr [rbp - 1], 1
.label_158:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4034ca
	.globl sub_4034ca
	.type sub_4034ca, @function
sub_4034ca:

	nop	
.label_157:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x20]
	je	.label_159
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_161
.label_159:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_158
.label_170:
	cmp	dword ptr [dword ptr [columns]],  1
	jle	.label_172
	movsx	eax,  byte ptr [byte ptr [number_separator]]
	cmp	eax, 9
	jne	.label_174
	mov	eax,  dword ptr [dword ptr [number_width]]
	sub	eax,  dword ptr [dword ptr [chars_per_number]]
	mov	dword ptr [rbp - 0xc], eax
.label_168:
	mov	eax, dword ptr [rbp - 0xc]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0xc], ecx
	cmp	eax, 0
	jle	.label_167
	mov	edi, 0x20
	mov	rax, qword ptr [rbp - 8]
	call	qword ptr [rax + 0x20]
	jmp	.label_168
.label_167:
	jmp	.label_169
.label_172:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x20]
	movsx	edi,  byte ptr [byte ptr [number_separator]]
	call	rax
	movsx	edi,  byte ptr [byte ptr [number_separator]]
	cmp	edi, 9
	jne	.label_173
	mov	eax,  dword ptr [dword ptr [output_position]]
	mov	ecx,  dword ptr [dword ptr [chars_per_output_tab]]
	mov	edx,  dword ptr [dword ptr [output_position]]
	mov	dword ptr [rbp - 0x20], eax
	mov	eax, edx
	cdq	
	idiv	dword ptr [dword ptr [chars_per_output_tab]]
	sub	ecx, edx
	mov	edx, dword ptr [rbp - 0x20]
	add	edx, ecx
	mov	dword ptr [dword ptr [output_position]],  edx
.label_173:
	jmp	.label_166
.label_166:
	test	byte ptr [byte ptr [truncate_lines]],  1
	je	.label_165
	test	byte ptr [byte ptr [parallel_files]],  1
	jne	.label_165
	mov	eax,  dword ptr [dword ptr [number_width]]
	add	eax,  dword ptr [dword ptr [input_position]]
	mov	dword ptr [dword ptr [input_position]],  eax
.label_165:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4035d9
	.globl sub_4035d9
	.type sub_4035d9, @function
sub_4035d9:

	nop	word ptr cs:[rax + rax]
.label_174:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x20]
	movsx	edi,  byte ptr [byte ptr [number_separator]]
	call	rax
.label_169:
	jmp	.label_166
	.section	.text
	.align	16
	#Procedure 0x4035ff

	.globl add_line_number
	.type add_line_number, @function
add_line_number:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rsi, OFFSET FLAT:label_175
	mov	qword ptr [rbp - 8], rdi
	mov	rdi,  qword ptr [word ptr [number_buff]]
	mov	edx,  dword ptr [dword ptr [chars_per_number]]
	mov	ecx,  dword ptr [dword ptr [line_number]]
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax,  dword ptr [dword ptr [line_number]]
	add	eax, 1
	mov	dword ptr [dword ptr [line_number]],  eax
	mov	rsi,  qword ptr [word ptr [number_buff]]
	mov	eax, dword ptr [rbp - 0x1c]
	sub	eax,  dword ptr [dword ptr [chars_per_number]]
	movsxd	rdi, eax
	add	rsi, rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	eax,  dword ptr [dword ptr [chars_per_number]]
	mov	dword ptr [rbp - 0xc], eax
.label_171:
	cmp	dword ptr [rbp - 0xc], 0
	jle	.label_170
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x18], rdx
	movsx	edi, byte ptr [rcx]
	call	rax
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_171
.label_186:
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_184
	test	byte ptr [byte ptr [numbered_lines]],  1
	je	.label_184
	mov	eax, dword ptr [rbp - 8]
	add	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax,  dword ptr [dword ptr [number_width]]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_191
.label_180:
	movabs	rax, OFFSET FLAT:read_line
	movabs	rcx, OFFSET FLAT:print_char
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x18], rax
.label_183:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [byte ptr [numbered_lines]],  1
	mov	byte ptr [rbp - 0x19], cl
	je	.label_190
	mov	al, 1
	test	byte ptr [byte ptr [parallel_files]],  1
	mov	byte ptr [rbp - 0x1a], al
	je	.label_182
	cmp	dword ptr [rbp - 4], 1
	sete	al
	mov	byte ptr [rbp - 0x1a], al
.label_182:
	mov	al, byte ptr [rbp - 0x1a]
	mov	byte ptr [rbp - 0x19], al
.label_190:
	mov	al, byte ptr [rbp - 0x19]
	mov	rcx, qword ptr [rbp - 0x18]
	and	al, 1
	mov	byte ptr [rcx + 0x38], al
	mov	edx, dword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx + 0x34], edx
	test	byte ptr [byte ptr [truncate_lines]],  1
	jne	.label_188
	mov	dword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0xc], 0
	jmp	.label_189
.label_188:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 8]
	add	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	dword ptr [rbp - 0xc], eax
.label_189:
	jmp	.label_179
.label_179:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x40
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_181
.label_176:
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_185
	test	byte ptr [byte ptr [balance_columns]],  1
	je	.label_185
	movabs	rax, OFFSET FLAT:print_stored
	movabs	rcx, OFFSET FLAT:store_char
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x18], rax
	jmp	.label_192
	.section	.text
	.align	16
	#Procedure 0x4037e6

	.globl init_funcs
	.type init_funcs, @function
init_funcs:
	push	rbp
	mov	rbp, rsp
	mov	eax,  dword ptr [dword ptr [chars_per_margin]]
	mov	dword ptr [rbp - 8], eax
	test	byte ptr [byte ptr [truncate_lines]],  1
	jne	.label_186
	mov	dword ptr [rbp - 0xc], 0
	jmp	.label_177
.label_184:
	mov	eax, dword ptr [rbp - 8]
	add	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	dword ptr [rbp - 0xc], eax
.label_191:
	jmp	.label_177
.label_177:
	mov	eax, dword ptr [rbp - 8]
	add	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	dword ptr [rbp - 8], eax
	mov	rcx,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x18], rcx
	mov	dword ptr [rbp - 4], 1
.label_181:
	mov	eax, dword ptr [rbp - 4]
	cmp	eax,  dword ptr [dword ptr [columns]]
	jge	.label_176
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_180
	movabs	rax, OFFSET FLAT:print_stored
	movabs	rcx, OFFSET FLAT:store_char
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x18], rax
	jmp	.label_183
.label_185:
	movabs	rax, OFFSET FLAT:read_line
	movabs	rcx, OFFSET FLAT:print_char
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x18], rax
.label_192:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [byte ptr [numbered_lines]],  1
	mov	byte ptr [rbp - 0x1b], cl
	je	.label_187
	mov	al, 1
	test	byte ptr [byte ptr [parallel_files]],  1
	mov	byte ptr [rbp - 0x1c], al
	je	.label_178
	cmp	dword ptr [rbp - 4], 1
	sete	al
	mov	byte ptr [rbp - 0x1c], al
.label_178:
	mov	al, byte ptr [rbp - 0x1c]
	mov	byte ptr [rbp - 0x1b], al
.label_187:
	mov	al, byte ptr [rbp - 0x1b]
	mov	rcx, qword ptr [rbp - 0x18]
	and	al, 1
	mov	byte ptr [rcx + 0x38], al
	mov	edx, dword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx + 0x34], edx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4038fb
	.globl sub_4038fb
	.type sub_4038fb, @function
sub_4038fb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403900
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
	#Procedure 0x403925
	.globl sub_403925
	.type sub_403925, @function
sub_403925:

	nop	word ptr cs:[rax + rax]
.label_195:
	mov	eax, dword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403935
	.globl sub_403935
	.type sub_403935, @function
sub_403935:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403944

	.globl cols_ready_to_print
	.type cols_ready_to_print, @function
cols_ready_to_print:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 0x10], 0
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 0
.label_196:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [columns]]
	jae	.label_195
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x10], 0
	je	.label_193
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x10], 1
	je	.label_193
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_197
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x2c], 0
	jle	.label_197
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x30], 0
	jle	.label_197
.label_193:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 1
	mov	dword ptr [rbp - 0x10], eax
.label_197:
	jmp	.label_194
.label_194:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x40
	mov	qword ptr [rbp - 8], rax
	mov	ecx, dword ptr [rbp - 0xc]
	add	ecx, 1
	mov	dword ptr [rbp - 0xc], ecx
	jmp	.label_196
.label_201:
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x30], 0
.label_204:
	jmp	.label_199
.label_199:
	mov	eax, dword ptr [rbp - 4]
	add	eax, -1
	mov	dword ptr [rbp - 4], eax
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_209
.label_200:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x10], 0
	jne	.label_202
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dword ptr [rcx + 0x30], eax
	jmp	.label_205
.label_202:
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x30], 0
.label_205:
	jmp	.label_206
.label_206:
	jmp	.label_198
.label_203:
	test	byte ptr [byte ptr [balance_columns]],  1
	je	.label_200
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x2c]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x30], ecx
	jmp	.label_206
.label_210:
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	dword ptr [rbp - 4], eax
	mov	rcx,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x10], rcx
.label_209:
	cmp	dword ptr [rbp - 4], 0
	je	.label_207
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x10], 0
	jne	.label_201
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dword ptr [rcx + 0x30], eax
	jmp	.label_204
.label_207:
	jmp	.label_198
.label_198:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403aad
	.globl sub_403aad
	.type sub_403aad, @function
sub_403aad:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403aba

	.globl init_page
	.type init_page, @function
init_page:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_210
	call	store_columns
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	mov	dword ptr [rbp - 4], eax
	mov	rcx,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x10], rcx
.label_208:
	cmp	dword ptr [rbp - 4], 0
	je	.label_203
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x2c]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x30], ecx
	mov	eax, dword ptr [rbp - 4]
	add	eax, -1
	mov	dword ptr [rbp - 4], eax
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_208
	.section	.text
	.align	16
	#Procedure 0x403b20
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
	je	.label_211
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_212
.label_211:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_212
.label_212:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b67
	.globl sub_403b67
	.type sub_403b67, @function
sub_403b67:

	nop	word ptr [rax + rax]
.label_2408:
	jmp	.label_213
.label_426:
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
	jge	.label_514
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	jge	.label_391
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x700]
	mov	dword ptr [rbp - 0x8dc], eax
	jmp	.label_531
.label_523:
	jmp	.label_537
.label_537:
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
	jmp	.label_294
.label_294:
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_223
	mov	eax, dword ptr [rbp - 0x48]
	mov	dword ptr [rbp - 0x8c], eax
.label_223:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x8c], 0x2b
	mov	byte ptr [rbp - 0x7f6], cl
	jne	.label_233
	mov	al, 1
	mov	ecx, 0x270f
	mov	edx, 0x63
	cmp	dword ptr [rbp - 0x94], 2
	cmove	ecx, edx
	cmp	ecx, dword ptr [rbp - 0x9c]
	mov	byte ptr [rbp - 0x7f7], al
	jb	.label_243
	mov	eax, dword ptr [rbp - 0x94]
	cmp	eax, dword ptr [rbp - 0x4c]
	setl	cl
	mov	byte ptr [rbp - 0x7f7], cl
.label_243:
	mov	al, byte ptr [rbp - 0x7f7]
	mov	byte ptr [rbp - 0x7f6], al
.label_233:
	mov	al, byte ptr [rbp - 0x7f6]
	and	al, 1
	mov	byte ptr [rbp - 0x9e], al
	jmp	.label_275
.label_393:
	mov	rax, qword ptr [rbp - 0x6d0]
	mov	qword ptr [rbp - 0x888], rax
.label_406:
	mov	rax, qword ptr [rbp - 0x888]
	mov	qword ptr [rbp - 0x6e0], rax
	mov	rax, qword ptr [rbp - 0x6e0]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_288
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_281
.label_279:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x120]
	call	memset
	mov	rdx, qword ptr [rbp - 0x120]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_293:
	jmp	.label_250
.label_250:
	mov	rax, qword ptr [rbp - 0x88]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], cl
	mov	rax, qword ptr [rbp - 0x108]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_245:
	mov	rax, qword ptr [rbp - 0x118]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_286
.label_336:
	mov	byte ptr [rbp - 0x9e], 1
	jmp	.label_337
.label_339:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_342
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_466
	mov	rax, qword ptr [rbp - 0x5b8]
	cmp	rax, qword ptr [rbp - 0x5c0]
	jae	.label_466
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x5b8]
	mov	qword ptr [rbp - 0x5d0], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_354
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_365
.label_354:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5d0]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5d0]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_375
.label_2415:
	mov	qword ptr [rbp - 0xf0], 0
.label_428:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x20], 0
	jge	.label_384
	jmp	.label_270
.label_378:
	mov	rax, qword ptr [rbp - 0x5e0]
	mov	qword ptr [rbp - 0x820], rax
.label_501:
	mov	rax, qword ptr [rbp - 0x820]
	mov	qword ptr [rbp - 0x5f0], rax
	mov	rax, qword ptr [rbp - 0x5f0]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_396
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_281
.label_282:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_417
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_417:
	jmp	.label_213
.label_2387:
	mov	byte ptr [rbp - 0xe1], 1
	mov	dword ptr [rbp - 0xf8], 0x70
.label_2406:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_405
	mov	byte ptr [rbp - 0xe2], 0
	mov	byte ptr [rbp - 0xe1], 1
.label_405:
	jmp	.label_213
.label_2405:
	jmp	.label_442
.label_442:
	mov	qword ptr [rbp - 0x668], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_445
	xor	eax, eax
	mov	dword ptr [rbp - 0x868], eax
	jmp	.label_451
.label_502:
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
	jne	.label_457
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
	jne	.label_474
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
.label_474:
	mov	al, byte ptr [rbp - 0x8ab]
	mov	byte ptr [rbp - 0x8a9], al
.label_457:
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
	jg	.label_261
	mov	dword ptr [rbp - 0x6f0], 1
	mov	eax, dword ptr [rbp - 0x6f8]
	mov	dword ptr [rbp - 0x6f4], eax
.label_261:
	jmp	.label_237
.label_237:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x47
	mov	dword ptr [rbp - 0x8b4], ecx
	mov	dword ptr [rbp - 0x8b8], edx
	je	.label_523
	jmp	.label_427
.label_427:
	mov	eax, dword ptr [rbp - 0x8b4]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x8bc], eax
	jne	.label_534
	jmp	.label_260
.label_260:
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
	jg	.label_539
	mov	eax, dword ptr [rbp - 0x6fc]
	mov	dword ptr [rbp - 0x8c4], eax
	jmp	.label_226
.label_486:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x720]
	call	memset
	mov	rdx, qword ptr [rbp - 0x720]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_513:
	jmp	.label_347
.label_347:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_256
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x708]
	call	memcpy_lowcase
	mov	qword ptr [rbp - 0x8f0], rax
	jmp	.label_269
.label_440:
	jmp	.label_274
.label_274:
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
	jmp	.label_277
.label_2382:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_297
	jmp	.label_214
.label_445:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x868], eax
.label_451:
	mov	eax, dword ptr [rbp - 0x868]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x670], rcx
	mov	rcx, qword ptr [rbp - 0x668]
	cmp	rcx, qword ptr [rbp - 0x670]
	jae	.label_305
	mov	rax, qword ptr [rbp - 0x670]
	mov	qword ptr [rbp - 0x870], rax
	jmp	.label_317
.label_2361:
	cmp	dword ptr [rbp - 0x730], 0
	je	.label_324
	jmp	.label_327
.label_2377:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_329
	jmp	.label_214
.label_408:
	imul	eax, dword ptr [rbp - 0x4c], 0xa
	mov	dword ptr [rbp - 0x4c], eax
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	eax, byte ptr [rcx]
	sub	eax, 0x30
	add	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
.label_492:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	jbe	.label_346
	jmp	.label_309
.label_309:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x788], ecx
	mov	dword ptr [rbp - 0x78c], edx
	je	.label_359
	jmp	.label_370
.label_370:
	mov	eax, dword ptr [rbp - 0x788]
	sub	eax, 0x4f
	mov	dword ptr [rbp - 0x790], eax
	jne	.label_372
	jmp	.label_359
.label_359:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x88], rcx
	movsx	edx, byte ptr [rax]
	mov	dword ptr [rbp - 0x90], edx
	jmp	.label_379
.label_254:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x880], eax
.label_264:
	mov	eax, dword ptr [rbp - 0x880]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x6d8], rcx
	mov	rcx, qword ptr [rbp - 0x6d0]
	cmp	rcx, qword ptr [rbp - 0x6d8]
	jae	.label_393
	mov	rax, qword ptr [rbp - 0x6d8]
	mov	qword ptr [rbp - 0x888], rax
	jmp	.label_406
.label_437:
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x768], rax
.label_449:
	mov	rax, qword ptr [rbp - 0x768]
	mov	qword ptr [rbp - 0x118], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_420
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_281
.label_413:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x75c], eax
.label_419:
	mov	eax, dword ptr [rbp - 0x75c]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x110], rcx
	mov	rcx, qword ptr [rbp - 0x108]
	cmp	rcx, qword ptr [rbp - 0x110]
	jae	.label_437
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x768], rax
	jmp	.label_449
.label_444:
	mov	byte ptr [rbp - 0xe2], 1
	jmp	.label_397
.label_430:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x758]
	call	memset
	mov	rdx, qword ptr [rbp - 0x758]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_273:
	jmp	.label_227
.label_227:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_472
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0x80]
	sub	eax, dword ptr [rbp - 0x734]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x740]
	mov	rsi, rcx
	call	memcpy_lowcase
	mov	qword ptr [rbp - 0x928], rax
	jmp	.label_271
.label_429:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_478
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_216
	mov	rax, qword ptr [rbp - 0x620]
	cmp	rax, qword ptr [rbp - 0x628]
	jae	.label_216
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x620]
	mov	qword ptr [rbp - 0x638], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_499
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_251
.label_499:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x638]
	call	memset
	mov	rdx, qword ptr [rbp - 0x638]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_532
.label_481:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x824], eax
.label_545:
	mov	eax, dword ptr [rbp - 0x824]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x608], rcx
	mov	rcx, qword ptr [rbp - 0x600]
	cmp	rcx, qword ptr [rbp - 0x608]
	jae	.label_488
	mov	rax, qword ptr [rbp - 0x608]
	mov	qword ptr [rbp - 0x830], rax
	jmp	.label_459
.label_453:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_541
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_352
	mov	rax, qword ptr [rbp - 0x128]
	cmp	rax, qword ptr [rbp - 0x130]
	jae	.label_352
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x140], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_215
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_302
.label_215:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x140]
	call	memset
	mov	rdx, qword ptr [rbp - 0x140]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_244
.label_386:
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0x80]
	sub	eax, dword ptr [rbp - 0x734]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x740]
	mov	rsi, rcx
	call	memcpy
.label_410:
	jmp	.label_271
.label_271:
	mov	rax, qword ptr [rbp - 0x740]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_278:
	mov	rax, qword ptr [rbp - 0x750]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_270
.label_270:
	jmp	.label_286
.label_286:
	mov	dword ptr [rbp - 0x4c], 0xffffffff
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_290
.label_490:
	xor	eax, eax
	mov	dword ptr [rbp - 0x814], eax
	jmp	.label_299
.label_299:
	mov	eax, dword ptr [rbp - 0x814]
	mov	dword ptr [rbp - 0x4c], eax
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_303
	jmp	.label_312
.label_312:
	mov	qword ptr [rbp - 0x5e0], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_315
	xor	eax, eax
	mov	dword ptr [rbp - 0x818], eax
	jmp	.label_320
.label_255:
	jmp	.label_214
.label_2380:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_326
	jmp	.label_214
.label_500:
	mov	rax, qword ptr [rbp - 0x5b8]
	mov	qword ptr [rbp - 0x810], rax
.label_350:
	mov	rax, qword ptr [rbp - 0x810]
	mov	qword ptr [rbp - 0x5c8], rax
	mov	rax, qword ptr [rbp - 0x5c8]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_339
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_281
.label_2399:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_334
	jmp	.label_214
.label_549:
	jmp	.label_319
.label_319:
	mov	dword ptr [rbp - 0x94], 2
	mov	eax, dword ptr [rbp - 0x68]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_331
.label_554:
	cmp	dword ptr [rbp - 0x68], 0
	jne	.label_555
	mov	dword ptr [rbp - 0x68], 0xc
.label_555:
	jmp	.label_552
.label_552:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x88], rax
.label_290:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_380
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
	je	.label_477
	jmp	.label_409
.label_409:
	mov	qword ptr [rbp - 0x108], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_413
	xor	eax, eax
	mov	dword ptr [rbp - 0x75c], eax
	jmp	.label_419
.label_475:
	jmp	.label_213
.label_416:
	mov	rax, qword ptr [rbp - 0x620]
	mov	qword ptr [rbp - 0x840], rax
.label_267:
	mov	rax, qword ptr [rbp - 0x840]
	mov	qword ptr [rbp - 0x630], rax
	mov	rax, qword ptr [rbp - 0x630]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_429
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_281
.label_240:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_446
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_448
	mov	rax, qword ptr [rbp - 0x600]
	cmp	rax, qword ptr [rbp - 0x608]
	jae	.label_448
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x600]
	mov	qword ptr [rbp - 0x618], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_461
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_468
.label_461:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x618]
	call	memset
	mov	rdx, qword ptr [rbp - 0x618]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_362
.label_468:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x618]
	call	memset
	mov	rdx, qword ptr [rbp - 0x618]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_362:
	jmp	.label_448
.label_448:
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x600]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
.label_446:
	mov	rax, qword ptr [rbp - 0x610]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_238
.label_238:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_310
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	movsxd	rdx, dword ptr [rbp - 0x5d4]
	call	memset
	mov	esi, dword ptr [rbp - 0x5d4]
	mov	rdx, qword ptr [rbp - 0x80]
	movsxd	rdi, esi
	add	rdx, rdi
	mov	qword ptr [rbp - 0x80], rdx
.label_310:
	movsxd	rax, dword ptr [rbp - 0x5d4]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	dword ptr [rbp - 0x4c], 0
.label_335:
	jmp	.label_225
.label_316:
	jmp	.label_526
.label_526:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_403
.label_251:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x638]
	call	memset
	mov	rdx, qword ptr [rbp - 0x638]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_532:
	jmp	.label_216
.label_216:
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x620]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
.label_478:
	mov	rax, qword ptr [rbp - 0x630]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_246
.label_246:
	jmp	.label_225
.label_225:
	jmp	.label_456
.label_456:
	jmp	.label_231
.label_231:
	lea	rax, [rbp - 0xe0]
	add	rax, 0x17
	mov	rcx, qword ptr [rbp - 0xc0]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x640], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_234
	xor	eax, eax
	mov	dword ptr [rbp - 0x844], eax
	jmp	.label_401
.label_389:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_258
	lea	rax, [rbp - 0x580]
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x590]
	mov	rsi, rax
	call	memcpy_uppcase
	mov	qword ptr [rbp - 0x7f0], rax
	jmp	.label_276
.label_391:
	mov	eax, dword ptr [rbp - 0x700]
	add	eax, 0x64
	mov	dword ptr [rbp - 0x8dc], eax
.label_531:
	mov	eax, dword ptr [rbp - 0x8dc]
	mov	dword ptr [rbp - 0x700], eax
.label_514:
	jmp	.label_239
.label_239:
	mov	dword ptr [rbp - 0x94], 2
	mov	byte ptr [rbp - 0x9d], 0
	mov	eax, dword ptr [rbp - 0x700]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_294
.label_452:
	jmp	.label_304
.label_304:
	jmp	.label_306
.label_306:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_309
	mov	dword ptr [rbp - 0x4c], 0
.label_346:
	cmp	dword ptr [rbp - 0x4c], 0xccccccc
	jg	.label_318
	cmp	dword ptr [rbp - 0x4c], 0xccccccc
	jne	.label_408
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 7
	jle	.label_408
.label_318:
	mov	dword ptr [rbp - 0x4c], 0x7fffffff
	jmp	.label_492
.label_380:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_340
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_340
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], 0
.label_340:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x20], rax
.label_281:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x938
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404975
	.globl sub_404975
	.type sub_404975, @function
sub_404975:

	nop	
.label_2409:
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
.label_436:
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
	je	.label_385
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x6c4]
	mov	dword ptr [rbp - 0x87c], eax
	jmp	.label_411
.label_2407:
	jmp	.label_313
.label_313:
	mov	dword ptr [rbp - 0x94], 1
	mov	byte ptr [rbp - 0x9d], 0
	mov	rax, qword ptr [rbp - 0x40]
	imul	ecx, dword ptr [rax + 0x10], 0xb
	sar	ecx, 5
	add	ecx, 1
	mov	dword ptr [rbp - 0x9c], ecx
	jmp	.label_277
.label_241:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x8e0], eax
.label_252:
	mov	eax, dword ptr [rbp - 0x8e0]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x710], rcx
	mov	rcx, qword ptr [rbp - 0x708]
	cmp	rcx, qword ptr [rbp - 0x710]
	jae	.label_432
	mov	rax, qword ptr [rbp - 0x710]
	mov	qword ptr [rbp - 0x8e8], rax
	jmp	.label_447
.label_302:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x140]
	call	memset
	mov	rdx, qword ptr [rbp - 0x140]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_244:
	jmp	.label_352
.label_352:
	mov	rax, qword ptr [rbp - 0x88]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], cl
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_541:
	mov	rax, qword ptr [rbp - 0x138]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_270
.label_2390:
	movabs	rax, OFFSET FLAT:label_480
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_220
.label_297:
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
	jge	.label_502
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
	jne	.label_230
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
	jne	.label_525
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
.label_525:
	mov	al, byte ptr [rbp - 0x89b]
	mov	byte ptr [rbp - 0x899], al
.label_230:
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
	jmp	.label_237
.label_517:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x680]
	call	memset
	mov	rdx, qword ptr [rbp - 0x680]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_518:
	jmp	.label_262
.label_262:
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], 0xa
	mov	rax, qword ptr [rbp - 0x668]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_494:
	mov	rax, qword ptr [rbp - 0x678]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_270
.label_515:
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_280
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_280
	mov	dword ptr [rbp - 0x8c], 0x2b
	mov	dword ptr [rbp - 0xfc], 4
	jmp	.label_217
.label_213:
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
	je	.label_298
	mov	eax, dword ptr [rbp - 0x90]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x178]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x178], rsi
	mov	byte ptr [rdx], cl
.label_298:
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
	je	.label_300
	jmp	.label_363
.label_363:
	mov	rax, qword ptr [rbp - 0x588]
	sub	rax, 1
	mov	qword ptr [rbp - 0x590], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_366
	xor	eax, eax
	mov	dword ptr [rbp - 0x7d4], eax
	jmp	.label_373
.label_368:
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
	jle	.label_377
	cmp	dword ptr [rbp - 0x8c], 0x5f
	jne	.label_382
	movsxd	rax, dword ptr [rbp - 0x5d4]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_388
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_281
.label_2414:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_426
	jmp	.label_213
.label_377:
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_246
	jmp	.label_443
.label_443:
	mov	qword ptr [rbp - 0x620], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_435
	xor	eax, eax
	mov	dword ptr [rbp - 0x834], eax
	jmp	.label_308
.label_358:
	mov	rax, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x7b0], rax
.label_371:
	mov	rax, qword ptr [rbp - 0x7b0]
	mov	qword ptr [rbp - 0x138], rax
	mov	rax, qword ptr [rbp - 0x138]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_453
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_281
.label_311:
	jmp	.label_467
.label_467:
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
	jmp	.label_331
.label_258:
	lea	rax, [rbp - 0x580]
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x590]
	mov	rsi, rax
	call	memcpy
.label_276:
	jmp	.label_404
.label_404:
	mov	rax, qword ptr [rbp - 0x590]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_332:
	mov	rax, qword ptr [rbp - 0x5a0]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_300
.label_300:
	jmp	.label_270
.label_403:
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_512
	mov	dword ptr [rbp - 0x8c], 0x5f
.label_512:
	jmp	.label_331
.label_331:
	cmp	dword ptr [rbp - 0x98], 0
	setl	al
	and	al, 1
	mov	byte ptr [rbp - 0x9d], al
	mov	ecx, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x9c], ecx
.label_277:
	mov	byte ptr [rbp - 0x9e], 0
.label_275:
	mov	dword ptr [rbp - 0xa4], 0
.label_337:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_533
	test	byte ptr [rbp - 0x9d], 1
	jne	.label_533
	jmp	.label_213
.label_421:
	jmp	.label_540
.label_540:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_403
.label_508:
	jmp	.label_550
.label_550:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_331
.label_2395:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_224
	mov	byte ptr [rbp - 0xe2], 0
	mov	byte ptr [rbp - 0xe1], 1
.label_224:
	jmp	.label_236
.label_236:
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x708], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_241
	xor	eax, eax
	mov	dword ptr [rbp - 0x8e0], eax
	jmp	.label_252
.label_234:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x844], eax
.label_401:
	mov	eax, dword ptr [rbp - 0x844]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x648], rcx
	mov	rcx, qword ptr [rbp - 0x640]
	cmp	rcx, qword ptr [rbp - 0x648]
	jae	.label_263
	mov	rax, qword ptr [rbp - 0x648]
	mov	qword ptr [rbp - 0x850], rax
	jmp	.label_493
.label_334:
	jmp	.label_284
.label_284:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_331
.label_325:
	jmp	.label_213
.label_305:
	mov	rax, qword ptr [rbp - 0x668]
	mov	qword ptr [rbp - 0x870], rax
.label_317:
	mov	rax, qword ptr [rbp - 0x870]
	mov	qword ptr [rbp - 0x678], rax
	mov	rax, qword ptr [rbp - 0x678]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_301
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_281
.label_2400:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_421
	jmp	.label_214
.label_2393:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_325
	jmp	.label_214
.label_2359:
	jmp	.label_330
.label_330:
	jmp	.label_333
.label_333:
	mov	dword ptr [rbp - 0x94], 6
	mov	dword ptr [rbp - 0xa4], 4
	imul	eax, dword ptr [rbp - 0x728], 0x64
	add	eax, dword ptr [rbp - 0x72c]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_336
.label_2388:
	movabs	rax, OFFSET FLAT:label_219
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_220
.label_323:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x65c], eax
.label_364:
	cmp	dword ptr [rbp - 0x65c], 9
	jge	.label_361
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
	jmp	.label_364
.label_222:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_455
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_292
	mov	rax, qword ptr [rbp - 0x640]
	cmp	rax, qword ptr [rbp - 0x648]
	jae	.label_292
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x640]
	mov	qword ptr [rbp - 0x658], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_395
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_407
.label_395:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x658]
	call	memset
	mov	rdx, qword ptr [rbp - 0x658]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_414
.label_396:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_520
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_229
	mov	rax, qword ptr [rbp - 0x5e0]
	cmp	rax, qword ptr [rbp - 0x5e8]
	jae	.label_229
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x5e0]
	mov	qword ptr [rbp - 0x5f8], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_438
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_356
.label_438:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5f8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5f8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_232
.label_2374:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, -1
	mov	qword ptr [rbp - 0x88], rax
.label_516:
	jmp	.label_214
.label_214:
	mov	dword ptr [rbp - 0x734], 1
.label_483:
	mov	eax, 1
	sub	eax, dword ptr [rbp - 0x734]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x88]
	movsx	eax, byte ptr [rdx + rcx]
	cmp	eax, 0x25
	je	.label_476
	jmp	.label_422
.label_422:
	mov	eax, dword ptr [rbp - 0x734]
	add	eax, 1
	mov	dword ptr [rbp - 0x734], eax
	jmp	.label_483
.label_296:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_489
	jmp	.label_214
.label_301:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_494
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_262
	mov	rax, qword ptr [rbp - 0x668]
	cmp	rax, qword ptr [rbp - 0x670]
	jae	.label_262
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x668]
	mov	qword ptr [rbp - 0x680], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_509
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_517
.label_509:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x680]
	call	memset
	mov	rdx, qword ptr [rbp - 0x680]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_518
.label_382:
	movsxd	rax, dword ptr [rbp - 0x94]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_424
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_281
.label_326:
	movabs	rax, OFFSET FLAT:label_542
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_220
.label_2386:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_524
	jmp	.label_214
.label_356:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5f8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5f8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_232:
	jmp	.label_229
.label_229:
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x5e0]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
.label_520:
	mov	rax, qword ptr [rbp - 0x5f0]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_303
.label_303:
	jmp	.label_335
.label_360:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_423
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x640]
	call	memcpy_uppcase
	mov	qword ptr [rbp - 0x860], rax
	jmp	.label_484
.label_407:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x658]
	call	memset
	mov	rdx, qword ptr [rbp - 0x658]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_414:
	jmp	.label_292
.label_292:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_360
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x640]
	call	memcpy_lowcase
	mov	qword ptr [rbp - 0x858], rax
	jmp	.label_266
.label_546:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x708]
	call	memcpy
.label_218:
	jmp	.label_269
.label_269:
	mov	rax, qword ptr [rbp - 0x708]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_469:
	mov	rax, qword ptr [rbp - 0x718]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_270
.label_280:
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, 6
	mov	dword ptr [rbp - 0xfc], eax
	cmp	dword ptr [rbp - 0xfc], 0
	jge	.label_473
	mov	dword ptr [rbp - 0xfc], 0
.label_473:
	jmp	.label_217
.label_217:
	movabs	rax, OFFSET FLAT:label_343
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_344
.label_2403:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_248
	jmp	.label_214
.label_504:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x7a4], eax
.label_511:
	mov	eax, dword ptr [rbp - 0x7a4]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x130], rcx
	mov	rcx, qword ptr [rbp - 0x128]
	cmp	rcx, qword ptr [rbp - 0x130]
	jae	.label_358
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rbp - 0x7b0], rax
	jmp	.label_371
.label_315:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x818], eax
.label_320:
	mov	eax, dword ptr [rbp - 0x818]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x5e8], rcx
	mov	rcx, qword ptr [rbp - 0x5e0]
	cmp	rcx, qword ptr [rbp - 0x5e8]
	jae	.label_378
	mov	rax, qword ptr [rbp - 0x5e8]
	mov	qword ptr [rbp - 0x820], rax
	jmp	.label_501
.label_477:
	jmp	.label_397
.label_397:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, rax
	inc	rcx
	mov	qword ptr [rbp - 0x88], rcx
	movsx	edx, byte ptr [rax + 1]
	mov	esi, edx
	sub	esi, 0x23
	mov	dword ptr [rbp - 0x76c], edx
	mov	dword ptr [rbp - 0x770], esi
	je	.label_399
	jmp	.label_418
.label_418:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x2b
	mov	dword ptr [rbp - 0x774], eax
	je	.label_322
	jmp	.label_439
.label_439:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x778], eax
	je	.label_322
	jmp	.label_431
.label_431:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x77c], eax
	je	.label_322
	jmp	.label_441
.label_441:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x780], eax
	je	.label_444
	jmp	.label_450
.label_450:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x5f
	mov	dword ptr [rbp - 0x784], eax
	jne	.label_452
	jmp	.label_322
.label_322:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0x8c], ecx
	jmp	.label_397
.label_2397:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_465
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_465:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_475
	jmp	.label_214
.label_388:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_479
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	movsxd	rdx, dword ptr [rbp - 0x5d4]
	call	memset
	mov	esi, dword ptr [rbp - 0x5d4]
	mov	rdx, qword ptr [rbp - 0x80]
	movsxd	rdi, esi
	add	rdx, rdi
	mov	qword ptr [rbp - 0x80], rdx
.label_479:
	movsxd	rax, dword ptr [rbp - 0x5d4]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	ecx, dword ptr [rbp - 0x4c]
	cmp	ecx, dword ptr [rbp - 0x5d4]
	jle	.label_490
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, dword ptr [rbp - 0x5d4]
	mov	dword ptr [rbp - 0x814], eax
	jmp	.label_299
.label_402:
	jmp	.label_506
.label_506:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_331
.label_2381:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_515
	jmp	.label_214
.label_2392:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_311
	jmp	.label_214
.label_432:
	mov	rax, qword ptr [rbp - 0x708]
	mov	qword ptr [rbp - 0x8e8], rax
.label_447:
	mov	rax, qword ptr [rbp - 0x8e8]
	mov	qword ptr [rbp - 0x718], rax
	mov	rax, qword ptr [rbp - 0x718]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_527
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_281
.label_2412:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_460
	jmp	.label_214
.label_2389:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_547
	jmp	.label_214
.label_433:
	jmp	.label_213
.label_263:
	mov	rax, qword ptr [rbp - 0x640]
	mov	qword ptr [rbp - 0x850], rax
.label_493:
	mov	rax, qword ptr [rbp - 0x850]
	mov	qword ptr [rbp - 0x650], rax
	mov	rax, qword ptr [rbp - 0x650]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_222
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_281
.label_420:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_245
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_250
	mov	rax, qword ptr [rbp - 0x108]
	cmp	rax, qword ptr [rbp - 0x110]
	jae	.label_250
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x120], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_265
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_279
.label_265:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x120]
	call	memset
	mov	rdx, qword ptr [rbp - 0x120]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_293
	.section	.text
	.align	16
	#Procedure 0x4058c8

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
	jne	.label_553
	movabs	rax, OFFSET FLAT:label_152
	mov	qword ptr [rbp - 0x70], rax
.label_553:
	cmp	dword ptr [rbp - 0x68], 0xc
	jle	.label_554
	mov	eax, dword ptr [rbp - 0x68]
	sub	eax, 0xc
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_552
.label_425:
	mov	rax, qword ptr [rbp - 0x590]
	mov	qword ptr [rbp - 0x7e0], rax
.label_434:
	mov	rax, qword ptr [rbp - 0x7e0]
	mov	qword ptr [rbp - 0x5a0], rax
	mov	rax, qword ptr [rbp - 0x5a0]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_548
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_281
.label_357:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5a8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5a8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_369:
	jmp	.label_338
.label_338:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_389
	lea	rax, [rbp - 0x580]
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x590]
	mov	rsi, rax
	call	memcpy_lowcase
	mov	qword ptr [rbp - 0x7e8], rax
	jmp	.label_404
.label_361:
	jmp	.label_328
.label_328:
	jmp	.label_415
.label_415:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x94], eax
	mov	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_331
.label_366:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x7d4], eax
.label_373:
	mov	eax, dword ptr [rbp - 0x7d4]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x598], rcx
	mov	rcx, qword ptr [rbp - 0x590]
	cmp	rcx, qword ptr [rbp - 0x598]
	jae	.label_425
	mov	rax, qword ptr [rbp - 0x598]
	mov	qword ptr [rbp - 0x7e0], rax
	jmp	.label_434
.label_376:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x6e8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x6e8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_387:
	jmp	.label_268
.label_268:
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], 9
	mov	rax, qword ptr [rbp - 0x6d0]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_353:
	mov	rax, qword ptr [rbp - 0x6e0]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_270
.label_527:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_469
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_347
	mov	rax, qword ptr [rbp - 0x708]
	cmp	rax, qword ptr [rbp - 0x710]
	jae	.label_347
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x708]
	mov	qword ptr [rbp - 0x720], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_482
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_486
.label_482:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x720]
	call	memset
	mov	rdx, qword ptr [rbp - 0x720]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_513
.label_462:
	jmp	.label_503
.label_503:
	mov	qword ptr [rbp - 0x128], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_504
	xor	eax, eax
	mov	dword ptr [rbp - 0x7a4], eax
	jmp	.label_511
.label_372:
	mov	dword ptr [rbp - 0x90], 0
.label_379:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0xf8], ecx
	mov	ecx, dword ptr [rbp - 0xf8]
	mov	eax, ecx
	mov	rdx, rax
	sub	rdx, 0x7a
	mov	qword ptr [rbp - 0x798], rax
	mov	qword ptr [rbp - 0x7a0], rdx
	ja	.label_516
	mov	rax, qword ptr [rbp - 0x798]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_529]]
	jmp	rcx
.label_424:
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_238
	jmp	.label_471
.label_471:
	mov	qword ptr [rbp - 0x600], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_481
	xor	eax, eax
	mov	dword ptr [rbp - 0x824], eax
	jmp	.label_545
.label_2384:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_549
	jmp	.label_214
.label_536:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x7b4], eax
.label_543:
	mov	eax, dword ptr [rbp - 0x7b4]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x158], rcx
	mov	rcx, qword ptr [rbp - 0x150]
	cmp	rcx, qword ptr [rbp - 0x158]
	jae	.label_257
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rbp - 0x7c0], rax
	jmp	.label_235
.label_2360:
	jmp	.label_327
.label_327:
	jmp	.label_538
.label_538:
	mov	dword ptr [rbp - 0x94], 9
	mov	dword ptr [rbp - 0xa4], 0x14
	imul	eax, dword ptr [rbp - 0x728], 0x2710
	imul	ecx, dword ptr [rbp - 0x72c], 0x64
	add	eax, ecx
	add	eax, dword ptr [rbp - 0x730]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_336
.label_2391:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_496
	jmp	.label_214
.label_398:
	jmp	.label_283
.label_283:
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
	jmp	.label_277
.label_489:
	jmp	.label_314
.label_314:
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
	jmp	.label_294
.label_524:
	mov	eax, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x98], eax
	cmp	dword ptr [rbp - 0x4c], -1
	jne	.label_323
	mov	dword ptr [rbp - 0x4c], 9
	jmp	.label_328
.label_548:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_332
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_338
	mov	rax, qword ptr [rbp - 0x590]
	cmp	rax, qword ptr [rbp - 0x598]
	jae	.label_338
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x590]
	mov	qword ptr [rbp - 0x5a8], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_351
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_357
.label_351:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5a8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5a8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_369
.label_533:
	lea	rax, [rbp - 0xe0]
	add	rax, 0x17
	mov	qword ptr [rbp - 0xc0], rax
	test	byte ptr [rbp - 0x9d], 1
	je	.label_374
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x9c], eax
.label_374:
	jmp	.label_390
.label_390:
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 1
	cmp	eax, 0
	je	.label_521
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0xc0], rcx
	mov	byte ptr [rax - 1], 0x3a
.label_521:
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
	jne	.label_253
	cmp	dword ptr [rbp - 0xa4], 0
	setne	al
	mov	byte ptr [rbp - 0x7fd], al
.label_253:
	mov	al, byte ptr [rbp - 0x7fd]
	test	al, 1
	jne	.label_390
	jmp	.label_454
.label_454:
	mov	eax, dword ptr [rbp - 0x94]
	cmp	eax, dword ptr [rbp - 0x4c]
	jge	.label_458
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x94], eax
.label_458:
	test	byte ptr [rbp - 0x9d], 1
	je	.label_259
	mov	eax, 0x2d
	mov	dword ptr [rbp - 0x804], eax
	jmp	.label_291
.label_2411:
	jmp	.label_247
.label_247:
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
	jmp	.label_331
.label_547:
	jmp	.label_487
.label_487:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_331
.label_476:
	jmp	.label_497
.label_497:
	movsxd	rax, dword ptr [rbp - 0x734]
	mov	qword ptr [rbp - 0x740], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_498
	xor	eax, eax
	mov	dword ptr [rbp - 0x914], eax
	jmp	.label_505
.label_220:
	mov	dword ptr [rbp - 0xfc], 0xffffffff
.label_344:
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
	jge	.label_536
	xor	eax, eax
	mov	dword ptr [rbp - 0x7b4], eax
	jmp	.label_543
.label_256:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_546
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x708]
	call	memcpy_uppcase
	mov	qword ptr [rbp - 0x8f8], rax
	jmp	.label_218
.label_412:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_278
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_227
	mov	rax, qword ptr [rbp - 0x740]
	cmp	rax, qword ptr [rbp - 0x748]
	jae	.label_227
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x740]
	mov	qword ptr [rbp - 0x758], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_242
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_430
.label_242:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x758]
	call	memset
	mov	rdx, qword ptr [rbp - 0x758]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_273
.label_2378:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_282
	jmp	.label_214
.label_2398:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_287
	jmp	.label_214
.label_2394:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_296
	jmp	.label_213
.label_522:
	mov	eax, dword ptr [rbp - 0x6fc]
	add	eax, 0x64
	mov	dword ptr [rbp - 0x8c8], eax
.label_528:
	mov	eax, dword ptr [rbp - 0x8c8]
	mov	dword ptr [rbp - 0x8c4], eax
.label_226:
	mov	eax, dword ptr [rbp - 0x8c4]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_294
.label_2402:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_316
	jmp	.label_214
.label_272:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x7a
	je	.label_321
	jmp	.label_214
.label_307:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x808], eax
.label_495:
	mov	eax, dword ptr [rbp - 0x808]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x5c0], rcx
	mov	rcx, qword ptr [rbp - 0x5b8]
	cmp	rcx, qword ptr [rbp - 0x5c0]
	jae	.label_500
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rbp - 0x810], rax
	jmp	.label_350
.label_288:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_353
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_268
	mov	rax, qword ptr [rbp - 0x6d0]
	cmp	rax, qword ptr [rbp - 0x6d8]
	jae	.label_268
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x6d0]
	mov	qword ptr [rbp - 0x6e8], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_367
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_376
.label_367:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x6e8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x6e8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_387
.label_324:
	cmp	dword ptr [rbp - 0x72c], 0
	je	.label_394
	jmp	.label_330
.label_2385:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_402
	jmp	.label_214
.label_435:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x834], eax
.label_308:
	mov	eax, dword ptr [rbp - 0x834]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x628], rcx
	mov	rcx, qword ptr [rbp - 0x620]
	cmp	rcx, qword ptr [rbp - 0x628]
	jae	.label_416
	mov	rax, qword ptr [rbp - 0x628]
	mov	qword ptr [rbp - 0x840], rax
	jmp	.label_267
.label_365:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5d0]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5d0]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_375:
	jmp	.label_466
.label_466:
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x5b8]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
.label_342:
	mov	rax, qword ptr [rbp - 0x5c8]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_289
.label_289:
	jmp	.label_456
.label_257:
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rbp - 0x7c0], rax
.label_235:
	mov	rax, qword ptr [rbp - 0x7c0]
	mov	qword ptr [rbp - 0x160], rax
	mov	rax, qword ptr [rbp - 0x160]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_464
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_281
.label_381:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x168]
	call	memset
	mov	rdx, qword ptr [rbp - 0x168]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_392:
	jmp	.label_345
.label_345:
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
.label_355:
	mov	rax, qword ptr [rbp - 0x160]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_270
.label_423:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x640]
	call	memcpy
.label_484:
	jmp	.label_266
.label_266:
	mov	rax, qword ptr [rbp - 0x640]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_455:
	mov	rax, qword ptr [rbp - 0x650]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_270
.label_287:
	jmp	.label_213
.label_384:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x724], edx
	cmp	dword ptr [rbp - 0x724], 0
	mov	byte ptr [rbp - 0x8f9], al
	jl	.label_551
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x724], 0
	mov	byte ptr [rbp - 0x8fa], cl
	jne	.label_228
	mov	rax, qword ptr [rbp - 0x70]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	sete	dl
	mov	byte ptr [rbp - 0x8fa], dl
.label_228:
	mov	al, byte ptr [rbp - 0x8fa]
	mov	byte ptr [rbp - 0x8f9], al
.label_551:
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
	ja	.label_255
	mov	rax, qword ptr [rbp - 0x908]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_341]]
	jmp	rcx
.label_485:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_348
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_348:
	jmp	.label_213
.label_464:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_355
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_345
	mov	rax, qword ptr [rbp - 0x150]
	cmp	rax, qword ptr [rbp - 0x158]
	jae	.label_345
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rbp - 0x168], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_221
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_381
.label_221:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x168]
	call	memset
	mov	rdx, qword ptr [rbp - 0x168]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_392
.label_2401:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_398
	jmp	.label_214
.label_510:
	mov	rax, qword ptr [rbp - 0x740]
	mov	qword ptr [rbp - 0x920], rax
.label_463:
	mov	rax, qword ptr [rbp - 0x920]
	mov	qword ptr [rbp - 0x750], rax
	mov	rax, qword ptr [rbp - 0x750]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_412
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_281
.label_321:
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_428
.label_2413:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_433
	jmp	.label_214
.label_2404:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_440
	jmp	.label_214
.label_498:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x914], eax
.label_505:
	mov	eax, dword ptr [rbp - 0x914]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x748], rcx
	mov	rcx, qword ptr [rbp - 0x740]
	cmp	rcx, qword ptr [rbp - 0x748]
	jae	.label_510
	mov	rax, qword ptr [rbp - 0x748]
	mov	qword ptr [rbp - 0x920], rax
	jmp	.label_463
.label_399:
	mov	byte ptr [rbp - 0xf1], 1
	jmp	.label_397
.label_496:
	jmp	.label_470
.label_470:
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
	jmp	.label_331
.label_2396:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_485
	jmp	.label_214
.label_329:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_491
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_491:
	jmp	.label_213
.label_2383:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_508
	jmp	.label_214
.label_534:
	jmp	.label_507
.label_507:
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
	jmp	.label_331
.label_539:
	mov	eax, 0xfffff894
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x14]
	sub	eax, dword ptr [rbp - 0x6f0]
	cmp	edx, eax
	jge	.label_522
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x6fc]
	mov	dword ptr [rbp - 0x8c8], eax
	jmp	.label_528
.label_460:
	jmp	.label_535
.label_535:
	mov	dword ptr [rbp - 0x94], 1
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_331
.label_2358:
	jmp	.label_544
.label_544:
	mov	dword ptr [rbp - 0x94], 5
	mov	dword ptr [rbp - 0xa4], 0
	imul	eax, dword ptr [rbp - 0x728], 0x64
	add	eax, dword ptr [rbp - 0x72c]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_336
.label_472:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_386
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0x80]
	sub	eax, dword ptr [rbp - 0x734]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x740]
	mov	rsi, rcx
	call	memcpy_uppcase
	mov	qword ptr [rbp - 0x930], rax
	jmp	.label_410
.label_2410:
	jmp	.label_249
.label_249:
	mov	qword ptr [rbp - 0x6d0], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_254
	xor	eax, eax
	mov	dword ptr [rbp - 0x880], eax
	jmp	.label_264
.label_2376:
	mov	qword ptr [rbp - 0xf0], 1
.label_285:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x3a
	jne	.label_272
	jmp	.label_530
.label_530:
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, 1
	mov	qword ptr [rbp - 0xf0], rax
	jmp	.label_285
.label_519:
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
	jge	.label_295
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x5ac]
	setl	cl
	mov	byte ptr [rbp - 0x7f5], cl
.label_295:
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
	jmp	.label_294
.label_394:
	jmp	.label_349
.label_349:
	mov	dword ptr [rbp - 0x94], 3
	mov	dword ptr [rbp - 0xa4], 0
	mov	eax, dword ptr [rbp - 0x728]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_336
.label_259:
	xor	eax, eax
	mov	ecx, 0x2b
	mov	dl, byte ptr [rbp - 0x9e]
	test	dl, 1
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x804], eax
.label_291:
	mov	eax, dword ptr [rbp - 0x804]
	mov	cl, al
	mov	byte ptr [rbp - 0xb1], cl
	cmp	dword ptr [rbp - 0x8c], 0x2d
	jne	.label_368
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_289
	jmp	.label_383
.label_383:
	mov	qword ptr [rbp - 0x5b8], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_307
	xor	eax, eax
	mov	dword ptr [rbp - 0x808], eax
	jmp	.label_495
.label_2379:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_519
	jmp	.label_213
.label_248:
	jmp	.label_400
.label_400:
	mov	dword ptr [rbp - 0x94], 2
	mov	eax, dword ptr [rbp - 0x68]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_403
.label_488:
	mov	rax, qword ptr [rbp - 0x600]
	mov	qword ptr [rbp - 0x830], rax
.label_459:
	mov	rax, qword ptr [rbp - 0x830]
	mov	qword ptr [rbp - 0x610], rax
	mov	rax, qword ptr [rbp - 0x610]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_240
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_281
.label_385:
	mov	eax, dword ptr [rbp - 0x6c4]
	mov	dword ptr [rbp - 0x87c], eax
.label_411:
	mov	eax, dword ptr [rbp - 0x87c]
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [rbp - 0xc0], rsi
	mov	byte ptr [rdx - 1], cl
	cmp	qword ptr [rbp - 0x6c0], 0
	jne	.label_436
	mov	dword ptr [rbp - 0x94], 1
	mov	byte ptr [rbp - 0x9e], 0
	jmp	.label_454
.label_2375:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_462
	jmp	.label_214
	.section	.text
	.align	16
	#Procedure 0x406ac0

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
	#Procedure 0x406b32
	.globl sub_406b32
	.type sub_406b32, @function
sub_406b32:

	nop	word ptr cs:[rax + rax]
.label_560:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_556
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_557
.label_556:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_557
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_557:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_558
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_558:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_559:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406bcd
	.globl sub_406bcd
	.type sub_406bcd, @function
sub_406bcd:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406bcf

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
	jge	.label_560
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_559
	.section	.text
	.align	16
	#Procedure 0x406c10
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
	#Procedure 0x406c37
	.globl sub_406c37
	.type sub_406c37, @function
sub_406c37:

	nop	word ptr [rax + rax]
.label_562:
	mov	byte ptr [rbp - 1], 0
.label_563:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406c4e
	.globl sub_406c4e
	.type sub_406c4e, @function
sub_406c4e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c5c
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_562
	jmp	.label_561
.label_561:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_563
.label_776:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_604
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_665
	jmp	.label_564
.label_634:
	mov	al, 1
	test	al, 1
	jne	.label_620
	jmp	.label_624
.label_620:
	movsxd	rax,  dword ptr [dword ptr [col_sep_length]]
	cmp	rax, 0
	jge	.label_616
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	movsxd	rcx, eax
	cmp	rcx, 0
	jge	.label_631
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	mov	qword ptr [rbp - 0x38], rdx
	cqo	
	idiv	rsi
	mov	rsi, qword ptr [rbp - 0x38]
	cmp	rsi, rax
	jl	.label_583
	jmp	.label_649
.label_708:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_650
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	mov	dl, cl
	movsx	ecx, dl
	mov	esi,  dword ptr [dword ptr [col_sep_length]]
	mov	dl, sil
	movsx	esi, dl
	cdq	
	idiv	esi
	cmp	ecx, eax
	jl	.label_655
	jmp	.label_610
.label_615:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, 0
	jge	.label_664
	mov	al, 1
	test	al, 1
	jne	.label_582
	jmp	.label_593
.label_788:
	mov	byte ptr [byte ptr [storing_columns]],  0
.label_753:
	test	byte ptr [byte ptr [join_lines]],  1
	je	.label_676
	mov	byte ptr [byte ptr [truncate_lines]],  0
.label_676:
	test	byte ptr [byte ptr [numbered_lines]],  1
	je	.label_569
	mov	dword ptr [rbp - 0xc], 8
	mov	eax,  dword ptr [dword ptr [start_line_num]]
	mov	dword ptr [dword ptr [line_count]],  eax
	movsx	eax,  byte ptr [byte ptr [number_separator]]
	cmp	eax, 9
	jne	.label_681
	mov	eax,  dword ptr [dword ptr [chars_per_number]]
	mov	ecx, dword ptr [rbp - 0xc]
	mov	edx,  dword ptr [dword ptr [chars_per_number]]
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax, edx
	cdq	
	idiv	dword ptr [rbp - 0xc]
	sub	ecx, edx
	mov	edx, dword ptr [rbp - 0x1c]
	add	edx, ecx
	mov	dword ptr [dword ptr [number_width]],  edx
	jmp	.label_685
.label_735:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_699
	mov	al, 1
	test	al, 1
	jne	.label_573
	jmp	.label_704
.label_698:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jne	.label_706
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_572
	jmp	.label_696
.label_669:
	cmp	dword ptr [dword ptr [col_sep_length]],  -1
	jne	.label_713
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_566
	jmp	.label_637
.label_775:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	cl, al
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 0x10]
	mov	cl, dl
	movsx	edx, cl
	cmp	eax, edx
	jl	.label_614
.label_576:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	cl, al
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 0x10]
	mov	cl, dl
	movsx	edx, cl
	sub	eax, edx
	cmp	eax, -0x80
	jl	.label_614
	mov	eax, 0x7f
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	mov	dl, cl
	movsx	ecx, dl
	mov	esi, dword ptr [rbp - 0x10]
	mov	dl, sil
	movsx	esi, dl
	sub	ecx, esi
	cmp	eax, ecx
	jge	.label_727
.label_614:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	mov	dl, cl
	movsx	ecx, dl
	mov	esi, dword ptr [rbp - 0x10]
	mov	dl, sil
	movsx	esi, dl
	sub	ecx, esi
	mov	dl, cl
	movsx	ecx, dl
	mov	dword ptr [rbp - 0x14], ecx
	test	al, 1
	jne	.label_567
	jmp	.label_587
.label_770:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, 0
	jge	.label_744
	mov	al, 1
	test	al, 1
	jne	.label_585
	jmp	.label_599
.label_744:
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_752
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	cmp	eax, ecx
	jle	.label_585
	jmp	.label_599
.label_702:
	movsxd	rax, dword ptr [rbp - 0x10]
	cmp	rax, 0
	jge	.label_760
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rcx, eax
	movsxd	rdx, dword ptr [rbp - 0x10]
	sub	rcx, rdx
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rdx, eax
	cmp	rcx, rdx
	jle	.label_608
	jmp	.label_684
.label_597:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 0x10]
	add	ecx, 0x80000000
	cmp	eax, ecx
	jl	.label_602
	jmp	.label_603
.label_689:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	imul	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_565
	jmp	.label_584
.label_718:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jne	.label_776
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_665
	jmp	.label_564
.label_713:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cmp	eax, ecx
	jl	.label_566
	jmp	.label_637
.label_611:
	mov	al, 1
	test	al, 1
	jne	.label_581
	jmp	.label_658
.label_581:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_589
	jmp	.label_592
.label_589:
	mov	al, 1
	test	al, 1
	jne	.label_594
	jmp	.label_596
.label_594:
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_597
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	cmp	eax, ecx
	jl	.label_602
	jmp	.label_603
.label_711:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_606
	mov	al, 1
	test	al, 1
	jne	.label_614
	jmp	.label_576
.label_677:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rdx, eax
	movsxd	rsi, dword ptr [rbp - 0x10]
	sub	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 0x14], eax
	test	cl, 1
	jne	.label_567
	jmp	.label_587
.label_567:
	mov	dword ptr [rbp - 0x14], 0
.label_587:
	mov	eax, dword ptr [rbp - 0x14]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	mov	dword ptr [dword ptr [chars_per_column]],  eax
	cmp	dword ptr [dword ptr [chars_per_column]],  1
	jge	.label_654
	movabs	rdi, OFFSET FLAT:label_690
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_763:
	cmp	dword ptr [dword ptr [col_sep_length]],  -1
	jne	.label_646
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_641
	jmp	.label_643
.label_622:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	mov	dl, al
	movsx	eax, dl
	mov	dword ptr [rbp - 0x14], eax
	test	cl, 1
	jne	.label_567
	jmp	.label_587
.label_720:
	cmp	dword ptr [dword ptr [col_sep_length]],  -1
	jne	.label_662
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_665
	jmp	.label_564
.label_757:
	movabs	rax, 0x8000000000000000
	movsxd	rcx,  dword ptr [dword ptr [col_sep_length]]
	cqo	
	idiv	rcx
	mov	esi,  dword ptr [dword ptr [columns]]
	sub	esi, 1
	movsxd	rcx, esi
	cmp	rax, rcx
	jl	.label_583
	jmp	.label_649
.label_733:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rcx, eax
	movsxd	rdx, dword ptr [rbp - 0x10]
	cmp	rcx, rdx
	jl	.label_609
.label_601:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	movsxd	rdx, ecx
	movsxd	rsi, dword ptr [rbp - 0x10]
	sub	rdx, rsi
	cmp	rdx, rax
	jl	.label_609
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	movsxd	rdx, ecx
	movsxd	rsi, dword ptr [rbp - 0x10]
	sub	rdx, rsi
	cmp	rax, rdx
	jge	.label_691
.label_609:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	movsxd	rdx, ecx
	movsxd	rsi, dword ptr [rbp - 0x10]
	sub	rdx, rsi
	mov	ecx, edx
	mov	dword ptr [rbp - 0x14], ecx
	test	al, 1
	jne	.label_567
	jmp	.label_587
.label_650:
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [col_sep_length]]
	mov	dl, cl
	movsx	ecx, dl
	cdq	
	idiv	ecx
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	mov	sil, cl
	movsx	ecx, sil
	cmp	eax, ecx
	jl	.label_655
.label_610:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	mov	cl, al
	movsx	eax, cl
	mov	edx,  dword ptr [dword ptr [col_sep_length]]
	mov	cl, dl
	movsx	edx, cl
	imul	eax, edx
	cmp	eax, -0x80
	jl	.label_655
	mov	eax, 0x7f
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	mov	dl, cl
	movsx	ecx, dl
	mov	esi,  dword ptr [dword ptr [col_sep_length]]
	mov	dl, sil
	movsx	esi, dl
	imul	ecx, esi
	cmp	eax, ecx
	jge	.label_723
.label_655:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	mov	dl, cl
	movsx	ecx, dl
	mov	esi,  dword ptr [dword ptr [col_sep_length]]
	mov	dl, sil
	movsx	esi, dl
	imul	ecx, esi
	mov	dl, cl
	movsx	ecx, dl
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_565
	jmp	.label_584
.label_658:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_741
	jmp	.label_743
.label_741:
	mov	al, 1
	test	al, 1
	jne	.label_759
	jmp	.label_745
.label_759:
	mov	al, 1
	test	al, 1
	jne	.label_746
	jmp	.label_748
.label_746:
	movsxd	rax, dword ptr [rbp - 0x10]
	cmp	rax, 0
	jge	.label_749
	movsxd	rax, dword ptr [rbp - 0x10]
	movabs	rcx, 0x7fffffffffffffff
	add	rax, rcx
	mov	edx,  dword ptr [dword ptr [chars_per_line]]
	sub	edx, dword ptr [rbp - 8]
	movsxd	rcx, edx
	cmp	rax, rcx
	jl	.label_608
	jmp	.label_684
.label_760:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rcx, eax
	movsxd	rdx, dword ptr [rbp - 0x10]
	cmp	rcx, rdx
	jl	.label_608
.label_684:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	movsxd	rdx, ecx
	movsxd	rsi, dword ptr [rbp - 0x10]
	sub	rdx, rsi
	cmp	rdx, rax
	jl	.label_608
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	movsxd	rdx, ecx
	movsxd	rsi, dword ptr [rbp - 0x10]
	sub	rdx, rsi
	cmp	rax, rdx
	jge	.label_768
.label_608:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	movsxd	rdx, ecx
	movsxd	rsi, dword ptr [rbp - 0x10]
	sub	rdx, rsi
	mov	ecx, edx
	mov	dword ptr [rbp - 0x14], ecx
	test	al, 1
	jne	.label_567
	jmp	.label_587
.label_725:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 0x10]
	add	ecx, 0x80000000
	cmp	eax, ecx
	jl	.label_612
	jmp	.label_570
.label_682:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cmp	eax, ecx
	jl	.label_572
.label_696:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	imul	eax,  dword ptr [dword ptr [col_sep_length]]
	cmp	eax, 0x80000000
	jl	.label_572
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	cmp	eax, ecx
	jge	.label_689
.label_572:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_565
	jmp	.label_584
.label_683:
	movabs	rax, 0x8000000000000000
	movsxd	rcx,  dword ptr [dword ptr [col_sep_length]]
	cqo	
	idiv	rcx
	mov	esi,  dword ptr [dword ptr [columns]]
	sub	esi, 1
	movsxd	rcx, esi
	cmp	rax, rcx
	jl	.label_580
	jmp	.label_600
.label_624:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jge	.label_627
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_630
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_623
	jmp	.label_633
.label_568:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, 0
	jge	.label_710
	mov	al, 1
	test	al, 1
	jne	.label_647
	jmp	.label_651
.label_714:
	mov	eax,  dword ptr [dword ptr [chars_per_input_tab]]
	mov	dword ptr [rbp - 0x4c], eax
.label_773:
	mov	eax, dword ptr [rbp - 0x4c]
	movsxd	rdi, eax
	call	xmalloc
	mov	qword ptr [word ptr [clump_buff]],  rax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407552
	.globl sub_407552
	.type sub_407552, @function
sub_407552:

	nop	
.label_782:
	mov	rax,  qword ptr [word ptr [column_separator]]
	mov	qword ptr [word ptr [col_sep_string]],  rax
.label_783:
	mov	dword ptr [dword ptr [col_sep_length]],  1
	mov	byte ptr [byte ptr [use_col_separator]],  1
	jmp	.label_659
.label_670:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 0x10]
	add	ecx, 0x80000000
	cmp	eax, ecx
	jl	.label_667
	jmp	.label_674
.label_738:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	movsxd	rcx, eax
	cmp	rcx, 0
	jge	.label_675
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	mov	qword ptr [rbp - 0x30], rdx
	cqo	
	idiv	rsi
	mov	rsi, qword ptr [rbp - 0x30]
	cmp	rsi, rax
	jl	.label_580
	jmp	.label_600
.label_717:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 0x10]
	jl	.label_582
.label_593:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	cmp	eax, 0xffff8000
	jl	.label_582
	mov	eax, 0x7fff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	cmp	eax, ecx
	jge	.label_700
.label_582:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 0x14], ecx
	test	al, 1
	jne	.label_567
	jmp	.label_587
.label_662:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cmp	eax, ecx
	jl	.label_665
	jmp	.label_564
.label_638:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jge	.label_718
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_720
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_665
	jmp	.label_564
.label_772:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_728
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	mov	dx, cx
	movsx	ecx, dx
	mov	esi,  dword ptr [dword ptr [col_sep_length]]
	mov	dx, si
	movsx	esi, dx
	cdq	
	idiv	esi
	cmp	ecx, eax
	jl	.label_644
	jmp	.label_578
.label_721:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cmp	eax, ecx
	jl	.label_657
.label_661:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	imul	eax,  dword ptr [dword ptr [col_sep_length]]
	cmp	eax, -0x80
	jl	.label_657
	mov	eax, 0x7f
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	cmp	eax, ecx
	jge	.label_755
.label_657:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	mov	dl, cl
	movsx	ecx, dl
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_565
	jmp	.label_584
.label_742:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_765
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_623
	jmp	.label_633
.label_762:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cmp	eax, ecx
	jl	.label_657
	jmp	.label_661
.label_681:
	mov	eax,  dword ptr [dword ptr [chars_per_number]]
	add	eax, 1
	mov	dword ptr [dword ptr [number_width]],  eax
.label_685:
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_777
	mov	eax,  dword ptr [dword ptr [number_width]]
	mov	dword ptr [rbp - 8], eax
.label_777:
	jmp	.label_569
.label_569:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_571
	jmp	.label_575
.label_571:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_577
	jmp	.label_586
.label_577:
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_588
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_595
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	mov	dl, cl
	movsx	ecx, dl
	mov	esi,  dword ptr [dword ptr [col_sep_length]]
	mov	dl, sil
	movsx	esi, dl
	cdq	
	idiv	esi
	cmp	ecx, eax
	jl	.label_655
	jmp	.label_610
.label_767:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x14], eax
	test	cl, 1
	jne	.label_567
	jmp	.label_587
.label_575:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_621
	jmp	.label_625
.label_621:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_628
	jmp	.label_645
.label_628:
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_652
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_640
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	mov	dx, cx
	movsx	ecx, dx
	mov	esi,  dword ptr [dword ptr [col_sep_length]]
	mov	dx, si
	movsx	esi, dx
	cdq	
	idiv	esi
	cmp	ecx, eax
	jl	.label_644
	jmp	.label_578
.label_700:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	mov	dx, ax
	movsx	eax, dx
	mov	dword ptr [rbp - 0x14], eax
	test	cl, 1
	jne	.label_567
	jmp	.label_587
.label_724:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, 0
	jge	.label_663
	mov	al, 1
	test	al, 1
	jne	.label_612
	jmp	.label_570
.label_723:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	mov	dl, al
	movsx	eax, dl
	mov	esi,  dword ptr [dword ptr [col_sep_length]]
	mov	dl, sil
	movsx	esi, dl
	imul	eax, esi
	mov	dl, al
	movsx	eax, dl
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_565
	jmp	.label_584
.label_686:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cmp	eax, ecx
	jl	.label_566
.label_637:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	imul	eax,  dword ptr [dword ptr [col_sep_length]]
	cmp	eax, 0x80000000
	jl	.label_566
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	cmp	eax, ecx
	jge	.label_693
.label_566:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_565
	jmp	.label_584
.label_588:
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jne	.label_708
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_655
	jmp	.label_610
.label_699:
	mov	eax, dword ptr [rbp - 0x10]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_716
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	cx, ax
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0x10]
	mov	cx, dx
	movsx	edx, cx
	sub	eax, edx
	mov	edx,  dword ptr [dword ptr [chars_per_line]]
	sub	edx, dword ptr [rbp - 8]
	mov	cx, dx
	movsx	edx, cx
	cmp	eax, edx
	jle	.label_573
	jmp	.label_704
.label_604:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cmp	eax, ecx
	jl	.label_665
.label_564:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_665
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	movsxd	rdx, ecx
	cmp	rax, rdx
	jge	.label_739
.label_665:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	imul	rdx, rsi
	mov	ecx, edx
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_565
	jmp	.label_584
.label_750:
	mov	al, 1
	test	al, 1
	jne	.label_756
	jmp	.label_568
.label_756:
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_758
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	cmp	eax, ecx
	jl	.label_647
	jmp	.label_651
.label_626:
	mov	eax, 0xb
	mov	ecx, eax
	mov	qword ptr [rbp - 0x48], rcx
	jmp	.label_632
.label_632:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [word ptr [number_buff]],  rax
.label_618:
	mov	rdi,  qword ptr [word ptr [clump_buff]]
	call	free
	mov	eax, 8
	cmp	eax,  dword ptr [dword ptr [chars_per_input_tab]]
	jle	.label_714
	mov	eax, 8
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_773
.label_579:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 0x10]
	jl	.label_667
.label_674:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	cmp	eax, 0x80000000
	jl	.label_667
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	cmp	eax, ecx
	jge	.label_574
.label_667:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x14], ecx
	test	al, 1
	jne	.label_567
	jmp	.label_587
.label_673:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 0x10]
	add	ecx, 0x80000000
	cmp	eax, ecx
	jl	.label_585
	jmp	.label_599
.label_596:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, 0
	jge	.label_598
	mov	al, 1
	test	al, 1
	jne	.label_602
	jmp	.label_603
.label_729:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	imul	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	dx, ax
	movsx	eax, dx
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_565
	jmp	.label_584
.label_654:
	test	byte ptr [byte ptr [numbered_lines]],  1
	je	.label_618
	mov	rdi,  qword ptr [word ptr [number_buff]]
	call	free
	movsxd	rdi,  dword ptr [dword ptr [chars_per_number]]
	cmp	rdi, 0xb
	jbe	.label_626
	movsxd	rax,  dword ptr [dword ptr [chars_per_number]]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_632
.label_761:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jne	.label_636
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_641
	jmp	.label_643
.label_590:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	dx, ax
	movsx	eax, dx
	mov	esi, dword ptr [rbp - 0x10]
	mov	dx, si
	movsx	esi, dx
	sub	eax, esi
	mov	dx, ax
	movsx	eax, dx
	mov	dword ptr [rbp - 0x14], eax
	test	cl, 1
	jne	.label_567
	jmp	.label_587
.label_691:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rdx, eax
	movsxd	rsi, dword ptr [rbp - 0x10]
	sub	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 0x14], eax
	test	cl, 1
	jne	.label_567
	jmp	.label_587
.label_705:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rcx, eax
	movsxd	rdx, dword ptr [rbp - 0x10]
	movabs	rsi, 0x8000000000000000
	add	rdx, rsi
	cmp	rcx, rdx
	jl	.label_609
	jmp	.label_601
.label_619:
	cmp	dword ptr [dword ptr [col_sep_length]],  -1
	jne	.label_671
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_572
	jmp	.label_696
.label_749:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rcx, eax
	movsxd	rdx, dword ptr [rbp - 0x10]
	movabs	rsi, 0x8000000000000000
	add	rdx, rsi
	cmp	rcx, rdx
	jl	.label_608
	jmp	.label_684
.label_737:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	mov	dx, ax
	movsx	eax, dx
	mov	esi,  dword ptr [dword ptr [col_sep_length]]
	mov	dx, si
	movsx	esi, dx
	imul	eax, esi
	mov	dx, ax
	movsx	eax, dx
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_565
	jmp	.label_584
.label_758:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 0x10]
	add	ecx, 0x80000000
	cmp	eax, ecx
	jl	.label_647
	jmp	.label_651
.label_688:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jne	.label_707
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_566
	jmp	.label_637
.label_754:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rcx, eax
	cmp	rcx, 0
	jge	.label_715
	mov	al, 1
	test	al, 1
	jne	.label_609
	jmp	.label_601
.label_695:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cmp	eax, ecx
	jl	.label_641
.label_643:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	imul	eax,  dword ptr [dword ptr [col_sep_length]]
	cmp	eax, 0xffff8000
	jl	.label_641
	mov	eax, 0x7fff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	cmp	eax, ecx
	jge	.label_729
.label_641:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_565
	jmp	.label_584
.label_627:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jne	.label_742
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_623
	jmp	.label_633
.label_639:
	movsxd	rax,  dword ptr [dword ptr [col_sep_length]]
	cmp	rax, 0
	jne	.label_738
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_580
	jmp	.label_600
.label_768:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rdx, eax
	movsxd	rsi, dword ptr [rbp - 0x10]
	sub	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 0x14], eax
	test	cl, 1
	jne	.label_567
	jmp	.label_587
.label_645:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jge	.label_761
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_763
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_641
	jmp	.label_643
.label_652:
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jne	.label_772
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_644
	jmp	.label_578
.label_606:
	mov	eax, dword ptr [rbp - 0x10]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_775
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	cl, al
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 0x10]
	mov	cl, dl
	movsx	edx, cl
	sub	eax, edx
	mov	edx,  dword ptr [dword ptr [chars_per_line]]
	sub	edx, dword ptr [rbp - 8]
	mov	cl, dl
	movsx	edx, cl
	cmp	eax, edx
	jle	.label_614
	jmp	.label_576
.label_675:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [col_sep_length]]
	cqo	
	idiv	rcx
	mov	esi,  dword ptr [dword ptr [columns]]
	sub	esi, 1
	movsxd	rcx, esi
	cmp	rax, rcx
	jl	.label_580
.label_600:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	imul	rdx, rsi
	cmp	rdx, rax
	jl	.label_580
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	imul	rdx, rsi
	cmp	rax, rdx
	jge	.label_605
.label_580:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	imul	rdx, rsi
	mov	ecx, edx
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_565
	jmp	.label_584
.label_697:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jge	.label_688
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_669
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_566
	jmp	.label_637
.label_586:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jge	.label_648
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_653
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_657
	jmp	.label_661
.label_774:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 0x10]
	jl	.label_647
.label_651:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_647
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	movsxd	rdx, ecx
	cmp	rax, rdx
	jge	.label_677
.label_647:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	movsxd	rdx, ecx
	movsxd	rsi, dword ptr [rbp - 0x10]
	sub	rdx, rsi
	mov	ecx, edx
	mov	dword ptr [rbp - 0x14], ecx
	test	al, 1
	jne	.label_567
	jmp	.label_587
.label_707:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_686
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_566
	jmp	.label_637
.label_748:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rcx, eax
	cmp	rcx, 0
	jge	.label_702
	mov	al, 1
	test	al, 1
	jne	.label_608
	jmp	.label_684
.label_709:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	movsxd	rcx, eax
	cmp	rcx, 0
	jge	.label_678
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	mov	qword ptr [rbp - 0x40], rdx
	cqo	
	idiv	rsi
	mov	rsi, qword ptr [rbp - 0x40]
	cmp	rsi, rax
	jl	.label_583
	jmp	.label_649
.label_728:
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [col_sep_length]]
	mov	dx, cx
	movsx	ecx, dx
	cdq	
	idiv	ecx
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	mov	si, cx
	movsx	ecx, si
	cmp	eax, ecx
	jl	.label_644
.label_578:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	mov	cx, ax
	movsx	eax, cx
	mov	edx,  dword ptr [dword ptr [col_sep_length]]
	mov	cx, dx
	movsx	edx, cx
	imul	eax, edx
	cmp	eax, 0xffff8000
	jl	.label_644
	mov	eax, 0x7fff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	mov	dx, cx
	movsx	ecx, dx
	mov	esi,  dword ptr [dword ptr [col_sep_length]]
	mov	dx, si
	movsx	esi, dx
	imul	ecx, esi
	cmp	eax, ecx
	jge	.label_737
.label_644:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	mov	dx, cx
	movsx	ecx, dx
	mov	esi,  dword ptr [dword ptr [col_sep_length]]
	mov	dx, si
	movsx	esi, dx
	imul	ecx, esi
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_565
	jmp	.label_584
.label_656:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	movsxd	rdx, eax
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	imul	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_565
	jmp	.label_584
.label_565:
	mov	dword ptr [rbp - 0x10], 0x7fffffff
.label_584:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_764
	jmp	.label_766
.label_764:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_679
	jmp	.label_769
.label_679:
	mov	al, 1
	test	al, 1
	jne	.label_771
	jmp	.label_711
.label_771:
	mov	eax, dword ptr [rbp - 0x10]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_672
	mov	eax, dword ptr [rbp - 0x10]
	mov	cl, al
	movsx	eax, cl
	add	eax, 0x7fffffff
	mov	edx,  dword ptr [dword ptr [chars_per_line]]
	sub	edx, dword ptr [rbp - 8]
	mov	cl, dl
	movsx	edx, cl
	cmp	eax, edx
	jl	.label_614
	jmp	.label_576
.label_716:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	cx, ax
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0x10]
	mov	cx, dx
	movsx	edx, cx
	cmp	eax, edx
	jl	.label_573
.label_704:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	cx, ax
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0x10]
	mov	cx, dx
	movsx	edx, cx
	sub	eax, edx
	cmp	eax, 0xffff8000
	jl	.label_573
	mov	eax, 0x7fff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	mov	dx, cx
	movsx	ecx, dx
	mov	esi, dword ptr [rbp - 0x10]
	mov	dx, si
	movsx	esi, dx
	sub	ecx, esi
	cmp	eax, ecx
	jge	.label_590
.label_573:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	mov	dx, cx
	movsx	ecx, dx
	mov	esi, dword ptr [rbp - 0x10]
	mov	dx, si
	movsx	esi, dx
	sub	ecx, esi
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 0x14], ecx
	test	al, 1
	jne	.label_567
	jmp	.label_587
.label_732:
	mov	al, 1
	test	al, 1
	jne	.label_613
	jmp	.label_615
.label_613:
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_617
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	cmp	eax, ecx
	jl	.label_582
	jmp	.label_593
.label_692:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_629
	jmp	.label_634
.label_629:
	mov	al, 1
	test	al, 1
	jne	.label_635
	jmp	.label_638
.label_635:
	movsxd	rax,  dword ptr [dword ptr [col_sep_length]]
	cmp	rax, 0
	jge	.label_639
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	movsxd	rcx, eax
	cmp	rcx, 0
	jge	.label_642
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	mov	qword ptr [rbp - 0x28], rdx
	cqo	
	idiv	rsi
	mov	rsi, qword ptr [rbp - 0x28]
	cmp	rsi, rax
	jl	.label_580
	jmp	.label_600
.label_630:
	cmp	dword ptr [dword ptr [col_sep_length]],  -1
	jne	.label_660
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_623
	jmp	.label_633
.label_592:
	mov	al, 1
	test	al, 1
	jne	.label_666
	jmp	.label_668
.label_666:
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_670
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	cmp	eax, ecx
	jl	.label_667
	jmp	.label_674
.label_598:
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_680
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	cmp	eax, ecx
	jle	.label_602
	jmp	.label_603
.label_739:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	movsxd	rdx, eax
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	imul	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_565
	jmp	.label_584
.label_668:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, 0
	jge	.label_591
	mov	al, 1
	test	al, 1
	jne	.label_667
	jmp	.label_674
.label_648:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jne	.label_703
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_657
	jmp	.label_661
.label_755:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	imul	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	dl, al
	movsx	eax, dl
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_565
	jmp	.label_584
.label_715:
	movsxd	rax, dword ptr [rbp - 0x10]
	cmp	rax, 0
	jge	.label_733
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rcx, eax
	movsxd	rdx, dword ptr [rbp - 0x10]
	sub	rcx, rdx
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rdx, eax
	cmp	rcx, rdx
	jle	.label_609
	jmp	.label_601
.label_766:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_726
	jmp	.label_611
.label_726:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_730
	jmp	.label_732
.label_730:
	mov	al, 1
	test	al, 1
	jne	.label_734
	jmp	.label_735
.label_734:
	mov	eax, dword ptr [rbp - 0x10]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_736
	mov	eax, dword ptr [rbp - 0x10]
	mov	cx, ax
	movsx	eax, cx
	add	eax, 0x7fffffff
	mov	edx,  dword ptr [dword ptr [chars_per_line]]
	sub	edx, dword ptr [rbp - 8]
	mov	cx, dx
	movsx	edx, cx
	cmp	eax, edx
	jl	.label_573
	jmp	.label_704
.label_743:
	mov	al, 1
	test	al, 1
	jne	.label_747
	jmp	.label_750
.label_747:
	mov	al, 1
	test	al, 1
	jne	.label_751
	jmp	.label_754
.label_751:
	movsxd	rax, dword ptr [rbp - 0x10]
	cmp	rax, 0
	jge	.label_705
	movsxd	rax, dword ptr [rbp - 0x10]
	movabs	rcx, 0x7fffffffffffffff
	add	rax, rcx
	mov	edx,  dword ptr [dword ptr [chars_per_line]]
	sub	edx, dword ptr [rbp - 8]
	movsxd	rcx, edx
	cmp	rax, rcx
	jl	.label_609
	jmp	.label_601
.label_653:
	cmp	dword ptr [dword ptr [col_sep_length]],  -1
	jne	.label_762
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_657
	jmp	.label_661
.label_605:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	movsxd	rdx, eax
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	imul	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_565
	jmp	.label_584
.label_591:
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_579
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	cmp	eax, ecx
	jle	.label_667
	jmp	.label_674
.label_731:
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [col_sep_length]]
	mov	dx, cx
	movsx	ecx, dx
	cdq	
	idiv	ecx
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	mov	si, cx
	movsx	ecx, si
	cmp	eax, ecx
	jl	.label_644
	jmp	.label_578
.label_617:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 0x10]
	add	ecx, 0x80000000
	cmp	eax, ecx
	jl	.label_582
	jmp	.label_593
.label_642:
	movsxd	rax,  dword ptr [dword ptr [col_sep_length]]
	cmp	rax, -1
	jne	.label_683
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_580
	jmp	.label_600
.label_574:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x14], eax
	test	cl, 1
	jne	.label_567
	jmp	.label_587
.label_712:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 0x10]
	jl	.label_612
.label_570:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	cmp	eax, -0x80
	jl	.label_612
	mov	eax, 0x7f
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	cmp	eax, ecx
	jge	.label_622
.label_612:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	mov	dl, cl
	movsx	ecx, dl
	mov	dword ptr [rbp - 0x14], ecx
	test	al, 1
	jne	.label_567
	jmp	.label_587
.label_765:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cmp	eax, ecx
	jl	.label_623
.label_633:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_623
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	movsxd	rdx, ecx
	cmp	rax, rdx
	jge	.label_656
.label_623:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	imul	rdx, rsi
	mov	ecx, edx
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_565
	jmp	.label_584
.label_646:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cmp	eax, ecx
	jl	.label_641
	jmp	.label_643
.label_727:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	dl, al
	movsx	eax, dl
	mov	esi, dword ptr [rbp - 0x10]
	mov	dl, sil
	movsx	esi, dl
	sub	eax, esi
	mov	dl, al
	movsx	eax, dl
	mov	dword ptr [rbp - 0x14], eax
	test	cl, 1
	jne	.label_567
	jmp	.label_587
.label_625:
	mov	al, 1
	test	al, 1
	jne	.label_687
	jmp	.label_692
.label_687:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_694
	jmp	.label_697
.label_694:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jge	.label_698
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_619
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_572
	jmp	.label_696
.label_636:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_695
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_641
	jmp	.label_643
.label_703:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_721
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_657
	jmp	.label_661
.label_752:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 0x10]
	jl	.label_585
.label_599:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_585
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	movsxd	rdx, ecx
	cmp	rax, rdx
	jge	.label_740
.label_585:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	movsxd	rdx, ecx
	movsxd	rsi, dword ptr [rbp - 0x10]
	sub	rdx, rsi
	mov	ecx, edx
	mov	dword ptr [rbp - 0x14], ecx
	test	al, 1
	jne	.label_567
	jmp	.label_587
.label_663:
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_712
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	cmp	eax, ecx
	jle	.label_612
	jmp	.label_570
.label_680:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 0x10]
	jl	.label_602
.label_603:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	cmp	eax, 0x80000000
	jl	.label_602
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	cmp	eax, ecx
	jge	.label_767
.label_602:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x14], ecx
	test	al, 1
	jne	.label_567
	jmp	.label_587
.label_710:
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_774
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	cmp	eax, ecx
	jle	.label_647
	jmp	.label_651
.label_607:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	movsxd	rdx, eax
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	imul	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_565
	jmp	.label_584
.label_745:
	mov	al, 1
	test	al, 1
	jne	.label_719
	jmp	.label_770
.label_719:
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_673
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	cmp	eax, ecx
	jl	.label_585
	jmp	.label_599
.label_693:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	imul	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_565
	jmp	.label_584
.label_740:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rdx, eax
	movsxd	rsi, dword ptr [rbp - 0x10]
	sub	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 0x14], eax
	test	cl, 1
	jne	.label_567
	jmp	.label_587
.label_660:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cmp	eax, ecx
	jl	.label_623
	jmp	.label_633
	.section	.text
	.align	16
	#Procedure 0x408ce2

	.globl init_parameters
	.type init_parameters, @function
init_parameters:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], 0
	mov	edi,  dword ptr [dword ptr [lines_per_page]]
	sub	edi, 5
	sub	edi, 5
	mov	dword ptr [dword ptr [lines_per_body]],  edi
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jg	.label_785
	mov	byte ptr [byte ptr [extremities]],  0
	mov	byte ptr [byte ptr [keep_FF]],  1
.label_785:
	mov	al,  byte ptr [byte ptr [extremities]]
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	jne	.label_786
	mov	eax,  dword ptr [dword ptr [lines_per_page]]
	mov	dword ptr [dword ptr [lines_per_body]],  eax
.label_786:
	test	byte ptr [byte ptr [double_space]],  1
	je	.label_781
	mov	eax, 2
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	dword ptr [rbp - 0x18], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x18]
	idiv	ecx
	mov	dword ptr [dword ptr [lines_per_body]],  eax
.label_781:
	cmp	dword ptr [rbp - 4], 0
	jne	.label_787
	mov	byte ptr [byte ptr [parallel_files]],  0
.label_787:
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_780
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [dword ptr [columns]],  eax
.label_780:
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_784
	mov	byte ptr [byte ptr [balance_columns]],  1
.label_784:
	cmp	dword ptr [dword ptr [columns]],  1
	jle	.label_788
	test	byte ptr [byte ptr [use_col_separator]],  1
	jne	.label_778
	test	byte ptr [byte ptr [join_lines]],  1
	je	.label_782
	mov	rax,  qword ptr [word ptr [line_separator]]
	mov	qword ptr [word ptr [col_sep_string]],  rax
	jmp	.label_783
.label_672:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	cl, al
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 0x10]
	mov	cl, dl
	movsx	edx, cl
	add	edx, 0x80000000
	cmp	eax, edx
	jl	.label_614
	jmp	.label_576
.label_595:
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, -1
	jne	.label_701
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_655
	jmp	.label_610
.label_616:
	movsxd	rax,  dword ptr [dword ptr [col_sep_length]]
	cmp	rax, 0
	jne	.label_709
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_583
	jmp	.label_649
.label_664:
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_717
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	cmp	eax, ecx
	jle	.label_582
	jmp	.label_593
.label_769:
	mov	al, 1
	test	al, 1
	jne	.label_722
	jmp	.label_724
.label_722:
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_725
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	cmp	eax, ecx
	jl	.label_612
	jmp	.label_570
.label_640:
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, -1
	jne	.label_731
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_644
	jmp	.label_578
.label_778:
	test	byte ptr [byte ptr [join_lines]],  1
	jne	.label_779
	cmp	dword ptr [dword ptr [col_sep_length]],  1
	jne	.label_779
	mov	rax,  qword ptr [word ptr [col_sep_string]]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 9
	jne	.label_779
	mov	rax,  qword ptr [word ptr [column_separator]]
	mov	qword ptr [word ptr [col_sep_string]],  rax
.label_779:
	jmp	.label_659
.label_659:
	mov	byte ptr [byte ptr [truncate_lines]],  1
	mov	byte ptr [byte ptr [tabify_output]],  1
	jmp	.label_753
.label_631:
	movsxd	rax,  dword ptr [dword ptr [col_sep_length]]
	cmp	rax, -1
	jne	.label_757
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_583
	jmp	.label_649
.label_736:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	cx, ax
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0x10]
	mov	cx, dx
	movsx	edx, cx
	add	edx, 0x80000000
	cmp	eax, edx
	jl	.label_573
	jmp	.label_704
.label_706:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_682
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_572
	jmp	.label_696
.label_671:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cmp	eax, ecx
	jl	.label_572
	jmp	.label_696
.label_701:
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [col_sep_length]]
	mov	dl, cl
	movsx	ecx, dl
	cdq	
	idiv	ecx
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	mov	sil, cl
	movsx	ecx, sil
	cmp	eax, ecx
	jl	.label_655
	jmp	.label_610
.label_678:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [col_sep_length]]
	cqo	
	idiv	rcx
	mov	esi,  dword ptr [dword ptr [columns]]
	sub	esi, 1
	movsxd	rcx, esi
	cmp	rax, rcx
	jl	.label_583
.label_649:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	imul	rdx, rsi
	cmp	rdx, rax
	jl	.label_583
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	imul	rdx, rsi
	cmp	rax, rdx
	jge	.label_607
.label_583:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	imul	rdx, rsi
	mov	ecx, edx
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_565
	jmp	.label_584
.label_798:
	test	byte ptr [byte ptr [skip_count]],  1
	je	.label_797
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_800
	cmp	dword ptr [rbp - 0xc], 1
	jne	.label_790
.label_800:
	test	byte ptr [rbp - 0x1d], 1
	jne	.label_790
	mov	eax,  dword ptr [dword ptr [line_count]]
	add	eax, 1
	mov	dword ptr [dword ptr [line_count]],  eax
.label_790:
	jmp	.label_797
.label_797:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40912c
	.globl sub_40912c
	.type sub_40912c, @function
sub_40912c:

	nop	dword ptr [rax + rax]
.label_796:
	jmp	.label_802
.label_802:
	mov	rdi, qword ptr [rbp - 0x18]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_789
.label_799:
	jmp	.label_794
	.section	.text
	.align	16
	#Procedure 0x40914f

	.globl skip_read
	.type skip_read, @function
skip_read:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	byte ptr [rbp - 0x1d], 0
	mov	rdi, qword ptr [rbp - 0x18]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x10], eax
	cmp	eax, 0xc
	jne	.label_803
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x39], 1
	je	.label_803
	mov	rdi, qword ptr [rbp - 0x18]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x10], eax
	cmp	eax, 0xa
	jne	.label_806
	mov	rdi, qword ptr [rbp - 0x18]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x10], eax
.label_806:
	jmp	.label_803
.label_803:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x39], 0
	cmp	dword ptr [rbp - 0x10], 0xc
	jne	.label_804
	mov	byte ptr [rbp - 0x1d], 1
.label_804:
	test	byte ptr [byte ptr [last_line]],  1
	je	.label_805
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x39], 1
.label_805:
	jmp	.label_789
.label_789:
	cmp	dword ptr [rbp - 0x10], 0xa
	je	.label_798
	cmp	dword ptr [rbp - 0x10], 0xc
	jne	.label_801
	test	byte ptr [byte ptr [last_line]],  1
	je	.label_792
	test	byte ptr [byte ptr [parallel_files]],  1
	jne	.label_793
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	dword ptr [rbp - 0x1c], ecx
.label_795:
	cmp	dword ptr [rbp - 0x1c], 0
	je	.label_799
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax + 0x39], 0
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x40
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx, dword ptr [rbp - 0x1c]
	add	ecx, -1
	mov	dword ptr [rbp - 0x1c], ecx
	jmp	.label_795
.label_801:
	cmp	dword ptr [rbp - 0x10], -1
	jne	.label_796
	mov	rdi, qword ptr [rbp - 8]
	call	close_file
	jmp	.label_798
.label_793:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x39], 0
.label_794:
	jmp	.label_792
.label_792:
	mov	rdi, qword ptr [rbp - 0x18]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x10], eax
	cmp	eax, 0xa
	je	.label_791
	mov	edi, dword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	ungetc
	mov	dword ptr [rbp - 0x2c], eax
.label_791:
	mov	rdi, qword ptr [rbp - 8]
	call	hold_file
	jmp	.label_798
	.section	.text
	.align	16
	#Procedure 0x4092b0

	.globl xdectoimax
	.type xdectoimax, @function
xdectoimax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	eax, 0xa
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	dword ptr [rbp - 0x2c], r9d
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x28]
	mov	r10d, dword ptr [rbp - 0x2c]
	mov	esi, eax
	mov	dword ptr [rsp], r10d
	call	xnumtoimax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4092fe
	.globl sub_4092fe
	.type sub_4092fe, @function
sub_4092fe:

	nop	
	.section	.text
	.align	16
	#Procedure 0x409300
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
	.align	16
	#Procedure 0x409312
	.globl sub_409312
	.type sub_409312, @function
sub_409312:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409320
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rbp - 0x20]
	call	gettime
	movups	xmm0, xmmword ptr [rbp - 0x20]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409347
	.globl sub_409347
	.type sub_409347, @function
sub_409347:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409350

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
	#Procedure 0x409383
	.globl sub_409383
	.type sub_409383, @function
sub_409383:

	nop	word ptr cs:[rax + rax]
.label_809:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_807
.label_808:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_807:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4093d2
	.globl sub_4093d2
	.type sub_4093d2, @function
sub_4093d2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4093e0

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
	jne	.label_808
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_808
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_808
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_809
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_807
	.section	.text
	.align	16
	#Procedure 0x409460

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
	.align	16
	#Procedure 0x40947a
	.globl sub_40947a
	.type sub_40947a, @function
sub_40947a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409480

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
	je	.label_810
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 4]
	mov	byte ptr [rbp - 9], cl
	jg	.label_810
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 8]
	setle	cl
	mov	byte ptr [rbp - 9], cl
.label_810:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4094e0

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
	#Procedure 0x40957f
	.globl sub_40957f
	.type sub_40957f, @function
sub_40957f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x409580

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	je	.label_811
	mov	rdi, qword ptr [rbp - 8]
	call	fileno
	xor	ecx, ecx
	mov	edi, ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	qword ptr [rbp - 0x18], rdi
	mov	edi, eax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x18]
	call	fdadvise
.label_811:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4095c3
	.globl sub_4095c3
	.type sub_4095c3, @function
sub_4095c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4095d0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_812
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_75
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40960f
	.globl sub_40960f
	.type sub_40960f, @function
sub_40960f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x409610
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
	#Procedure 0x40964a
	.globl sub_40964a
	.type sub_40964a, @function
sub_40964a:

	nop	word ptr [rax + rax]
.label_911:
	jmp	.label_944
.label_944:
	mov	byte ptr [rbp - 0x83], 1
.label_2202:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_947
	test	byte ptr [rbp - 0x7b], 1
	je	.label_947
	jmp	.label_835
.label_924:
	test	byte ptr [rbp - 0x81], 1
	je	.label_953
	jmp	.label_955
.label_955:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_956
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_956:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_953:
	jmp	.label_882
.label_882:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_962
	jmp	.label_966
.label_2197:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_866
.label_982:
	jmp	.label_878
.label_878:
	jmp	.label_885
.label_885:
	jmp	.label_820
.label_933:
	jmp	.label_851
.label_851:
	test	byte ptr [rbp - 0x79], 1
	je	.label_969
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_971
.label_969:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_934
.label_971:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_934
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
	jne	.label_960
.label_934:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_960
	jmp	.label_905
.label_814:
	jmp	.label_851
.label_888:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_988
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_988
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_994
.label_960:
	jmp	.label_838
.label_838:
	jmp	.label_999
.label_999:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1001
	jmp	.label_835
.label_875:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_903
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_903
	mov	qword ptr [rbp - 0xb8], 1
.label_948:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_957
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
	jb	.label_819
	jmp	.label_816
.label_816:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_819
	jmp	.label_870
.label_870:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_819
	jmp	.label_902
.label_902:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_829
	jmp	.label_819
.label_819:
	jmp	.label_835
.label_840:
	mov	byte ptr [rbp - 0x81], 1
.label_831:
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
	ja	.label_836
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_847]]
	jmp	rcx
.label_914:
	jmp	.label_820
.label_820:
	jmp	.label_851
.label_1003:
	jmp	.label_853
.label_853:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_859
.label_859:
	mov	qword ptr [rbp - 0x58], 0
.label_824:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_887
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_865
.label_929:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_875
	mov	byte ptr [rbp - 0x91], 0
.label_894:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_879
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_879:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_890
	jmp	.label_892
.label_890:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_894
.label_2205:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_898
	jmp	.label_906
.label_906:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_939
	jmp	.label_914
.label_1015:
	call	abort
.label_836:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_921
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
	jmp	.label_925
.label_987:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_932
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_932:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_946
.label_946:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_951
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_951:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_980
.label_980:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_958
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_958:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_961
.label_961:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_842
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_842:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_878
.label_892:
	jmp	.label_931
.label_2439:
	mov	byte ptr [rbp - 0x79], 1
.label_2438:
	mov	byte ptr [rbp - 0x7b], 1
.label_2440:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_970
	mov	byte ptr [rbp - 0x79], 1
.label_970:
	jmp	.label_973
.label_973:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_974
	jmp	.label_978
.label_978:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_979
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_979:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_974
.label_974:
	movabs	rax, OFFSET FLAT:label_986
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_859
.label_2444:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_991
	movabs	rdi, OFFSET FLAT:label_993
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_986
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_991:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_853
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_1014:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_1003
	jmp	.label_1006
.label_1006:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1008
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_1008:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1010
.label_1010:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1014
.label_872:
	jmp	.label_813
.label_813:
	test	byte ptr [rbp - 0x79], 1
	je	.label_814
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_838
.label_2199:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_813
.label_887:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_865:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_826
	jmp	.label_832
.label_826:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_831
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_831
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_831
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_843
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_843
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_854
.label_2206:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_858
	test	byte ptr [rbp - 0x7b], 1
	je	.label_862
	jmp	.label_835
.label_2198:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_866
.label_913:
	jmp	.label_866
.label_866:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_872
	test	byte ptr [rbp - 0x7b], 1
	je	.label_872
	jmp	.label_835
.label_2204:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_877
	test	byte ptr [rbp - 0x7b], 1
	je	.label_880
	jmp	.label_835
.label_825:
	jmp	.label_820
.label_893:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_883
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_883
	test	byte ptr [rbp - 0x7d], 1
	je	.label_883
	test	byte ptr [rbp - 0x7e], 1
	je	.label_888
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
	jmp	.label_917
.label_2200:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_813
.label_910:
	jmp	.label_909
.label_909:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_911
	jmp	.label_851
.label_2207:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_915
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_910
	jmp	.label_990
.label_937:
	jmp	.label_930
.label_930:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_923
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_923:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_917
.label_996:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_929
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_931
.label_2437:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_859
.label_2194:
	test	byte ptr [rbp - 0x79], 1
	je	.label_940
	jmp	.label_942
.label_942:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_943
	jmp	.label_835
.label_829:
	jmp	.label_945
.label_945:
	jmp	.label_936
.label_936:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_948
.label_2443:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_859
.label_833:
	jmp	.label_901
.label_901:
	jmp	.label_851
.label_2195:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_813
.label_2196:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_813
.label_1001:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_959
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_959
	jmp	.label_964
.label_964:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_965
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_965:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_967
.label_967:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_897
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_897:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_972
.label_972:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_977
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_977:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_959:
	jmp	.label_984
.label_984:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_985
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_985:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_989
.label_989:
	jmp	.label_905
.label_905:
	jmp	.label_995
.label_995:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_997
	test	byte ptr [rbp - 0x82], 1
	jne	.label_997
	jmp	.label_1000
.label_1000:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1002
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1002:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1004
.label_1004:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_919
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_919:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_997:
	jmp	.label_1012
.label_1012:
	jmp	.label_1013
.label_1013:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1016
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_1016:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_817
	mov	byte ptr [rbp - 0x7e], 0
.label_817:
	jmp	.label_823
.label_823:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_824
.label_843:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_854:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_831
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_831
	test	byte ptr [rbp - 0x7b], 1
	je	.label_840
	jmp	.label_835
.label_962:
	jmp	.label_844
.label_844:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_846
	test	byte ptr [rbp - 0x82], 1
	jne	.label_846
	jmp	.label_850
.label_850:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_852
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_852:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_867
.label_867:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_863
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_863:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_846:
	jmp	.label_873
.label_873:
	jmp	.label_874
.label_874:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_876
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_876:
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
	jmp	.label_881
.label_898:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_825
	jmp	.label_835
.label_947:
	jmp	.label_851
.label_2201:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_866
.label_832:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_893
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_893
	test	byte ptr [rbp - 0x7b], 1
	je	.label_893
	jmp	.label_835
.label_957:
	jmp	.label_903
.label_903:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_907
	mov	byte ptr [rbp - 0x91], 0
.label_907:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_912
.label_912:
	jmp	.label_918
.label_918:
	jmp	.label_920
.label_920:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_992
.label_931:
	jmp	.label_925
.label_925:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_927
	test	byte ptr [rbp - 0x79], 1
	je	.label_933
	test	byte ptr [rbp - 0x91], 1
	jne	.label_933
.label_927:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_881:
	test	byte ptr [rbp - 0x79], 1
	je	.label_924
	test	byte ptr [rbp - 0x91], 1
	jne	.label_924
	jmp	.label_950
.label_950:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_952
	jmp	.label_835
.label_835:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_954
	test	byte ptr [rbp - 0x79], 1
	je	.label_954
	mov	dword ptr [rbp - 0x34], 4
.label_954:
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
.label_917:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a2f6
	.globl sub_40a2f6
	.type sub_40a2f6, @function
sub_40a2f6:

	nop	dword ptr [rax + rax]
.label_921:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_975
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_975:
	jmp	.label_992
.label_992:
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
	jne	.label_996
	jmp	.label_931
.label_940:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_833
	jmp	.label_823
.label_2442:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_2441:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1009
	jmp	.label_1005
.label_1005:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1007
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1007:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1009
.label_1009:
	movabs	rax, OFFSET FLAT:label_1011
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_859
.label_952:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_815
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_815
	jmp	.label_900
.label_900:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_822
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_822:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_828
.label_828:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_926
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_926:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_938
.label_938:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_839
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_839:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_815:
	jmp	.label_848
.label_848:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_849
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_849:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_856
.label_856:
	jmp	.label_860
.label_860:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_861
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_861:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_871
.label_871:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_868
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_868:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_882
.label_880:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_886
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_886
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_886:
	jmp	.label_895
.label_895:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_896
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_896:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_904
.label_904:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_908
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_908:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_916
.label_916:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_983
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_983:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_877:
	jmp	.label_851
.label_988:
	jmp	.label_928
.label_928:
	jmp	.label_883
.label_883:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_930
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_930
	jmp	.label_935
.label_935:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_937
	jmp	.label_941
.label_941:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_899
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_899:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_949
.label_949:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_935
.label_939:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_885
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_885
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_885
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_963
	jmp	.label_968
.label_968:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_963
	jmp	.label_922
.label_922:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_963
	jmp	.label_976
.label_976:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_963
	jmp	.label_981
.label_981:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_982
	jmp	.label_963
.label_963:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_987
	jmp	.label_835
	.section	.text
	.align	16
	#Procedure 0x40a762

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
.label_994:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_1015
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_818]]
	jmp	rcx
.label_943:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_821
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_821
	jmp	.label_827
.label_827:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_830
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_830:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_834
.label_834:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_837
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_837:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_841
.label_841:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_845
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_845:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_821:
	jmp	.label_855
.label_855:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_857
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_857:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_864
.label_864:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_869
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_869
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_869
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_869
	jmp	.label_998
.label_998:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_884
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_884:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_889
.label_889:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_891
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_891:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_869
.label_869:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_901
.label_966:
	jmp	.label_905
.label_2203:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_851
.label_915:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_910
.label_990:
	jmp	.label_851
.label_858:
	test	byte ptr [rbp - 0x79], 1
	je	.label_913
	test	byte ptr [rbp - 0x7b], 1
	je	.label_913
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_913
	jmp	.label_905
.label_862:
	jmp	.label_905
.label_1019:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x10], 3
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x30], 0
.label_1018:
	mov	eax,  dword ptr [dword ptr [files_ready_to_read]]
	add	eax, -1
	mov	dword ptr [dword ptr [files_ready_to_read]],  eax
.label_1026:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aa1d
	.globl sub_40aa1d
	.type sub_40aa1d, @function
sub_40aa1d:

	nop	word ptr cs:[rax + rax]
.label_1024:
	test	byte ptr [byte ptr [parallel_files]],  1
	jne	.label_1019
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x10], rax
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	dword ptr [rbp - 0x14], ecx
.label_1022:
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_1020
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x10], 3
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x2c], 0
	jne	.label_1017
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x30], 0
.label_1017:
	jmp	.label_1021
.label_1021:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x40
	mov	qword ptr [rbp - 0x10], rax
	mov	ecx, dword ptr [rbp - 0x14]
	add	ecx, -1
	mov	dword ptr [rbp - 0x14], ecx
	jmp	.label_1022
	.section	.text
	.align	16
	#Procedure 0x40aa99

	.globl close_file
	.type close_file, @function
close_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	dword ptr [rdi + 0x10], 3
	jne	.label_1027
	jmp	.label_1026
.label_1027:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_1023
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rax + 8]
	mov	dword ptr [rbp - 0x18], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_75
	mov	esi, dword ptr [rbp - 0x18]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_1020:
	jmp	.label_1018
.label_1023:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	fileno
	cmp	eax, 0
	je	.label_1024
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	rpl_fclose
	cmp	eax, 0
	je	.label_1024
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rax + 8]
	mov	dword ptr [rbp - 0x1c], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_75
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_1028:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1025
.label_1025:
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
	#Procedure 0x40ac01
	.globl sub_40ac01
	.type sub_40ac01, @function
sub_40ac01:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ac0c
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
	je	.label_1028
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1025
	.section	.text
	.align	16
	#Procedure 0x40ac40
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
	#Procedure 0x40ac71
	.globl sub_40ac71
	.type sub_40ac71, @function
sub_40ac71:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ac80
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
	jb	.label_1029
	jmp	.label_1031
.label_1031:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1029
	jmp	.label_1030
.label_1030:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1032
	jmp	.label_1029
.label_1029:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1033
.label_1032:
	mov	byte ptr [rbp - 1], 0
.label_1033:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ace5
	.globl sub_40ace5
	.type sub_40ace5, @function
sub_40ace5:

	nop	word ptr cs:[rax + rax]
.label_1071:
	jmp	.label_1058
.label_1045:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x64], ecx
	mov	dword ptr [rbp - 0x68], edx
	je	.label_1038
	jmp	.label_1037
.label_1037:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_1038
	jmp	.label_1042
.label_1042:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x70], eax
	je	.label_1038
	jmp	.label_1046
.label_1046:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x74], eax
	je	.label_1038
	jmp	.label_1050
.label_1050:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x78], eax
	je	.label_1038
	jmp	.label_1055
.label_1055:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_1038
	jmp	.label_1060
.label_1060:
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x80], eax
	jb	.label_1038
	jmp	.label_1036
.label_1036:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x84], eax
	je	.label_1038
	jmp	.label_1041
.label_1041:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_1038
	jmp	.label_1052
.label_1052:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_1038
	jmp	.label_1051
.label_1051:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x90], eax
	jne	.label_1054
	jmp	.label_1038
.label_1038:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_1053
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0x94], ecx
	mov	dword ptr [rbp - 0x98], edx
	je	.label_1034
	jmp	.label_1043
.label_1043:
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_1034
	jmp	.label_1061
.label_1061:
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xa0], eax
	jne	.label_1049
	jmp	.label_1040
.label_1040:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_1044
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, 2
	mov	dword ptr [rbp - 0x54], eax
.label_1044:
	jmp	.label_1049
.label_2331:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1039
.label_2335:
	mov	dword ptr [rbp - 0x58], 0
	jmp	.label_1039
.label_2325:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1039
.label_1039:
	mov	eax, dword ptr [rbp - 0x58]
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx]
	cmp	byte ptr [rcx], 0
	je	.label_1048
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_1048:
	jmp	.label_1059
.label_1059:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_1047:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40af13
	.globl sub_40af13
	.type sub_40af13, @function
sub_40af13:

	nop	dword ptr [rax + rax]
.label_2329:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1039
.label_2328:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1039
.label_1034:
	mov	dword ptr [rbp - 0x50], 0x3e8
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, 1
	mov	dword ptr [rbp - 0x54], eax
.label_1049:
	jmp	.label_1053
.label_1053:
	jmp	.label_1054
.label_1054:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xa8], rax
	mov	dword ptr [rbp - 0xac], ecx
	ja	.label_1057
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1035]]
	jmp	rcx
.label_1070:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1067
.label_1067:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtol
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_1066
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1068
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1068
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_1068
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_1071
.label_2326:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1039
.label_2334:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1039
.label_2327:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1039
.label_1066:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_1072
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_1062
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1047
	.section	.text
	.align	16
	#Procedure 0x40b097

	.globl xstrtol
	.type xstrtol, @function
xstrtol:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_1065
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_1065
	jmp	.label_1069
.label_1062:
	mov	dword ptr [rbp - 0x4c], 1
.label_1072:
	jmp	.label_1058
.label_1058:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1056
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1047
.label_1065:
	movabs	rdi, OFFSET FLAT:label_130
	movabs	rsi, OFFSET FLAT:label_1063
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_1064
	call	__assert_fail
.label_2330:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1039
.label_2332:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1039
.label_1068:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1047
.label_2336:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1039
.label_1056:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1059
	mov	dword ptr [rbp - 0x50], 0x400
	mov	dword ptr [rbp - 0x54], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_1045
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1047
.label_1069:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1070
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1067
.label_2333:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1039
.label_1057:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1047
	.section	.text
	.align	16
	#Procedure 0x40b220

	.globl setenv_TZ
	.type setenv_TZ, @function
setenv_TZ:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_1073
	movabs	rdi, OFFSET FLAT:label_14
	mov	edx, 1
	mov	rsi, qword ptr [rbp - 8]
	call	setenv
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1074
.label_1073:
	movabs	rdi, OFFSET FLAT:label_14
	call	unsetenv
	mov	dword ptr [rbp - 0xc], eax
.label_1074:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b272
	.globl sub_40b272
	.type sub_40b272, @function
sub_40b272:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b280

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
	je	.label_1075
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
.label_1075:
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
	je	.label_1094
	jmp	.label_1096
.label_1096:
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_1099
	jmp	.label_1105
.label_1098:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x228], rdx
.label_1103:
	mov	rax, qword ptr [rbp - 0x228]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x30]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1086
.label_1099:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1c8], rax
	mov	dword ptr [rbp - 0x1cc], ecx
	ja	.label_1090
	mov	eax, dword ptr [rbp - 0x1cc]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1d8], rcx
	jmp	.label_1095
.label_1081:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x240], rdx
.label_1089:
	mov	rax, qword ptr [rbp - 0x240]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
.label_1086:
	jmp	.label_1077
.label_1077:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x240
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b4d0
	.globl sub_40b4d0
	.type sub_40b4d0, @function
sub_40b4d0:

	nop	dword ptr [rax + rax]
.label_1105:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	mov	dword ptr [rbp - 0x1dc], eax
	je	.label_1078
	jmp	.label_1101
.label_1101:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	mov	dword ptr [rbp - 0x1e0], eax
	je	.label_1083
	jmp	.label_1076
.label_1076:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_1078
	jmp	.label_1080
.label_1080:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	mov	dword ptr [rbp - 0x1e8], eax
	je	.label_1083
	jmp	.label_1087
.label_1087:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	mov	dword ptr [rbp - 0x1ec], eax
	je	.label_1078
	jmp	.label_1092
.label_1092:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	je	.label_1078
	jmp	.label_1102
.label_1102:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_1083
	jmp	.label_1091
.label_1091:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_1078
	jmp	.label_1082
.label_1082:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xb
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_1083
	jmp	.label_1088
.label_1088:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	dword ptr [rbp - 0x200], eax
	je	.label_1078
	jmp	.label_1093
.label_1093:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_1083
	jmp	.label_1104
.label_1104:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x402
	mov	dword ptr [rbp - 0x208], eax
	je	.label_1078
	jmp	.label_1079
.label_1079:
	mov	eax, dword ptr [rbp - 0x1dc]
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_1078
	jmp	.label_1084
.label_1084:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	jne	.label_1085
	jmp	.label_1083
.label_1083:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1086
.label_1090:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_1095:
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x2c]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1077
.label_1085:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x230], rax
	mov	dword ptr [rbp - 0x234], ecx
	ja	.label_1081
	mov	eax, dword ptr [rbp - 0x234]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x230]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x240], rcx
	jmp	.label_1089
.label_1078:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	dword ptr [rbp - 0x21c], ecx
	ja	.label_1098
	mov	eax, dword ptr [rbp - 0x21c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x218]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x228], rcx
	jmp	.label_1103
.label_1097:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_1100:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1077
.label_1094:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_1097
	mov	eax, dword ptr [rbp - 0x1b4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1c0], rcx
	jmp	.label_1100
	.section	.text
	.align	16
	#Procedure 0x40b7a0

	.globl gnu_mbswidth
	.type gnu_mbswidth, @function
gnu_mbswidth:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rax
	call	strlen
	mov	edx, dword ptr [rbp - 0xc]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	mbsnwidth
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b7d8
	.globl sub_40b7d8
	.type sub_40b7d8, @function
sub_40b7d8:

	nop	dword ptr [rax + rax]
.label_2312:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1106
.label_1114:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1108
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_1118
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1121
.label_1131:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1121
.label_1122:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoumax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_1126
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1131
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1131
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_1131
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_1136
.label_1106:
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
	je	.label_1107
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_1107:
	jmp	.label_1108
.label_1108:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_1121:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b920
	.globl sub_40b920
	.type sub_40b920, @function
sub_40b920:

	nop	dword ptr [rax + rax]
.label_1144:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1117
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1119
.label_2314:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_1106
.label_2306:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1106
.label_1117:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1119
.label_1119:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_1128:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_1134
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_1128
	.section	.text
	.align	16
	#Procedure 0x40b9d7

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
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
	jg	.label_1145
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_1145
	jmp	.label_1144
.label_2310:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1106
.label_2307:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1106
.label_2308:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1106
.label_2313:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1106
.label_1139:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1121
.label_2315:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1106
.label_1118:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_1111
	jmp	.label_1132
.label_1132:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_1111
	jmp	.label_1140
.label_1140:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_1111
	jmp	.label_1142
.label_1142:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_1111
	jmp	.label_1110
.label_1110:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_1111
	jmp	.label_1115
.label_1115:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_1111
	jmp	.label_1120
.label_1120:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_1111
	jmp	.label_1123
.label_1123:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_1111
	jmp	.label_1124
.label_1124:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_1111
	jmp	.label_1125
.label_1125:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_1111
	jmp	.label_1129
.label_1129:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_1133
	jmp	.label_1111
.label_1111:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_1137
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_1138
	jmp	.label_1141
.label_1141:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_1138
	jmp	.label_1109
.label_1109:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_1112
	jmp	.label_1135
.label_1135:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_1116
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_1116:
	jmp	.label_1112
.label_1134:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_1122
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1121
.label_1145:
	movabs	rdi, OFFSET FLAT:label_130
	movabs	rsi, OFFSET FLAT:label_131
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_1146
	call	__assert_fail
.label_1136:
	jmp	.label_1113
.label_2309:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1106
.label_2304:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1106
.label_1138:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_1112:
	jmp	.label_1137
.label_1137:
	jmp	.label_1133
.label_1133:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xc0], rax
	mov	dword ptr [rbp - 0xc4], ecx
	ja	.label_1139
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1143]]
	jmp	rcx
.label_1130:
	mov	dword ptr [rbp - 0x4c], 1
.label_1127:
	jmp	.label_1113
.label_1113:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1114
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1121
.label_2305:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1106
.label_2311:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1106
.label_1126:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_1127
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_1130
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1121
	.section	.text
	.align	16
	#Procedure 0x40bd90

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
	je	.label_1147
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_1149
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_1150
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_1148
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1151
.label_1150:
	mov	byte ptr [rbp - 5], 0
.label_1151:
	jmp	.label_1147
.label_1147:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40be03
	.globl sub_40be03
	.type sub_40be03, @function
sub_40be03:

	nop	word ptr cs:[rax + rax]
.label_1152:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_1153:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40be22
	.globl sub_40be22
	.type sub_40be22, @function
sub_40be22:

	nop	word ptr [rax + rax]
.label_1154:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1152
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1152
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40be54

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1154
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1154
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1153
	.section	.text
	.align	16
	#Procedure 0x40be90

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
	#Procedure 0x40becc
	.globl sub_40becc
	.type sub_40becc, @function
sub_40becc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40bed0

	.globl separator_string
	.type separator_string, @function
separator_string:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 0x7fffffff
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rcx
	call	strlen
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1155
	call	integer_overflow
.label_1155:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, eax
	mov	dword ptr [dword ptr [col_sep_length]],  ecx
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [col_sep_string]],  rax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bf26
	.globl sub_40bf26
	.type sub_40bf26, @function
sub_40bf26:

	nop	word ptr cs:[rax + rax]
.label_1162:
	mov	rdi, qword ptr [rbp - 0x10]
	call	set_tz
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1160
	mov	rdi, qword ptr [rbp - 0x18]
	call	mktime
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], -1
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_1159
	lea	rdi, [rbp - 0x28]
	lea	rsi, [rbp - 0x68]
	call	localtime_r
	cmp	rax, 0
	je	.label_1158
	lea	rsi, [rbp - 0x68]
	mov	rdi, qword ptr [rbp - 0x18]
	call	equal_tm
	cmp	eax, 0
	je	.label_1158
.label_1159:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	save_abbr
	test	al, 1
	jne	.label_1158
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_1158:
	mov	rdi, qword ptr [rbp - 0x20]
	call	revert_tz
	test	al, 1
	jne	.label_1161
	jmp	.label_1157
.label_1161:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1156
.label_1157:
	jmp	.label_1160
.label_1160:
	mov	qword ptr [rbp - 8], -1
.label_1156:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bfef
	.globl sub_40bfef
	.type sub_40bfef, @function
sub_40bfef:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40bff3

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1162
	mov	rdi, qword ptr [rbp - 0x18]
	call	timegm
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1156
	.section	.text
	.align	16
	#Procedure 0x40c020

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1163
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_1164
.label_1163:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1165
.label_1164:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_1165:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c078
	.globl sub_40c078
	.type sub_40c078, @function
sub_40c078:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c080

	.globl getoptnum
	.type getoptnum, @function
getoptnum:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	eax, 0x7fffffff
	mov	r8d, eax
	movabs	r9, OFFSET FLAT:label_152
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 8]
	movsxd	rsi, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, r8
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, r9
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9d, eax
	call	xdectoimax
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	r9d, eax
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], r9d
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c0e5
	.globl sub_40c0e5
	.type sub_40c0e5, @function
sub_40c0e5:

	nop	word ptr cs:[rax + rax]
.label_1171:
	jmp	.label_1168
.label_1168:
	jmp	.label_1170
	.section	.text
	.align	16
	#Procedure 0x40c0fa

	.globl read_rest_of_line
	.type read_rest_of_line, @function
read_rest_of_line:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x18], rdi
.label_1170:
	mov	rdi, qword ptr [rbp - 0x18]
	call	getc_unlocked
	mov	dword ptr [rbp - 0xc], eax
	cmp	eax, 0xa
	je	.label_1167
	cmp	dword ptr [rbp - 0xc], 0xc
	jne	.label_1166
	mov	rdi, qword ptr [rbp - 0x18]
	call	getc_unlocked
	mov	dword ptr [rbp - 0xc], eax
	cmp	eax, 0xa
	je	.label_1172
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x18]
	call	ungetc
	mov	dword ptr [rbp - 0x1c], eax
.label_1172:
	test	byte ptr [byte ptr [keep_FF]],  1
	je	.label_1169
	mov	byte ptr [byte ptr [print_a_FF]],  1
.label_1169:
	mov	rdi, qword ptr [rbp - 8]
	call	hold_file
	jmp	.label_1167
.label_1166:
	cmp	dword ptr [rbp - 0xc], -1
	jne	.label_1171
	mov	rdi, qword ptr [rbp - 8]
	call	close_file
	jmp	.label_1167
.label_1167:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c196
	.globl sub_40c196
	.type sub_40c196, @function
sub_40c196:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c1a0

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
	#Procedure 0x40c24d
	.globl sub_40c24d
	.type sub_40c24d, @function
sub_40c24d:

	nop	dword ptr [rax]
.label_1183:
	movabs	rax, OFFSET FLAT:label_1173
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1174
	.section	.text
	.align	16
	#Procedure 0x40c263

	.globl xstrtol_error
	.type xstrtol_error, @function
xstrtol_error:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, dl
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x20], r8
	mov	dword ptr [rbp - 0x24], r9d
	mov	qword ptr [word ptr [rbp - 48]], OFFSET FLAT:label_1177
	mov	edx, dword ptr [rbp - 4]
	mov	esi, edx
	sub	esi, 1
	mov	dword ptr [rbp - 0x48], edx
	mov	dword ptr [rbp - 0x4c], esi
	je	.label_1178
	jmp	.label_1185
.label_1185:
	mov	eax, dword ptr [rbp - 0x48]
	add	eax, -2
	sub	eax, 2
	mov	dword ptr [rbp - 0x50], eax
	jb	.label_1183
	jmp	.label_1180
.label_1180:
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 4
	mov	dword ptr [rbp - 0x54], eax
	je	.label_1184
	jmp	.label_1182
.label_1182:
	call	abort
.label_1175:
	movsxd	rax, dword ptr [rbp - 8]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
.label_1176:
	mov	edi, dword ptr [rbp - 0x24]
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x58], edi
	mov	rdi, rax
	call	gettext
	xor	esi, esi
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0x40]
	mov	r9, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rbp - 0x58]
	mov	rdx, rax
	mov	al, 0
	call	error
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c319
	.globl sub_40c319
	.type sub_40c319, @function
sub_40c319:

	nop	word ptr cs:[rax + rax]
.label_1184:
	movabs	rax, OFFSET FLAT:label_1179
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1174
.label_1178:
	movabs	rax, OFFSET FLAT:label_1181
	mov	qword ptr [rbp - 0x38], rax
.label_1174:
	cmp	dword ptr [rbp - 8], 0
	jge	.label_1175
	lea	rax, [rbp - 0x42]
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x30]
	movsxd	rdi, ecx
	sub	rdx, rdi
	add	rsi, rdx
	mov	qword ptr [rbp - 0x30], rsi
	mov	r8b, byte ptr [rbp - 9]
	mov	byte ptr [rbp - 0x42], r8b
	mov	byte ptr [rbp - 0x41], 0
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1176
	.section	.text
	.align	16
	#Procedure 0x40c380
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
	#Procedure 0x40c3b6
	.globl sub_40c3b6
	.type sub_40c3b6, @function
sub_40c3b6:

	nop	word ptr cs:[rax + rax]
.label_1192:
	movabs	rdi, OFFSET FLAT:label_1186
	lea	rax, [rbp - 0x120]
	mov	qword ptr [rbp - 0x138], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [page_number]]
	mov	rdi, qword ptr [rbp - 0x138]
	mov	rsi, rax
	mov	al, 0
	call	sprintf
	xor	esi, esi
	lea	rdi, [rbp - 0x120]
	mov	ecx,  dword ptr [dword ptr [header_width_available]]
	mov	dword ptr [rbp - 0x13c], eax
	mov	dword ptr [rbp - 0x140], ecx
	call	gnu_mbswidth
	xor	ecx, ecx
	mov	esi, dword ptr [rbp - 0x140]
	sub	esi, eax
	mov	dword ptr [rbp - 0x124], esi
	cmp	ecx, dword ptr [rbp - 0x124]
	jle	.label_1188
	xor	eax, eax
	mov	dword ptr [rbp - 0x144], eax
	jmp	.label_1187
.label_1188:
	mov	eax, dword ptr [rbp - 0x124]
	mov	dword ptr [rbp - 0x144], eax
.label_1187:
	mov	eax, dword ptr [rbp - 0x144]
	movabs	rdi, OFFSET FLAT:label_1189
	movabs	rdx, OFFSET FLAT:label_152
	movabs	rcx, OFFSET FLAT:label_1190
	lea	rsi, [rbp - 0x120]
	mov	dword ptr [rbp - 0x124], eax
	mov	eax, dword ptr [rbp - 0x124]
	sar	eax, 1
	mov	dword ptr [rbp - 0x128], eax
	mov	eax, dword ptr [rbp - 0x124]
	sub	eax, dword ptr [rbp - 0x128]
	mov	dword ptr [rbp - 0x12c], eax
	mov	eax,  dword ptr [dword ptr [chars_per_margin]]
	mov	r8,  qword ptr [word ptr [date_text]]
	mov	r9d, dword ptr [rbp - 0x128]
	mov	r10,  qword ptr [word ptr [file_text]]
	mov	r11d, dword ptr [rbp - 0x12c]
	mov	qword ptr [rbp - 0x150], rsi
	mov	esi, eax
	mov	qword ptr [rbp - 0x158], rcx
	mov	rcx, r8
	mov	r8d, r9d
	mov	r9, qword ptr [rbp - 0x158]
	mov	qword ptr [rsp], r10
	mov	dword ptr [rsp + 8], r11d
	mov	r10, qword ptr [rbp - 0x158]
	mov	qword ptr [rsp + 0x10], r10
	mov	rbx, qword ptr [rbp - 0x150]
	mov	qword ptr [rsp + 0x18], rbx
	mov	al, 0
	call	printf
	mov	byte ptr [byte ptr [print_a_header]],  0
	mov	dword ptr [dword ptr [output_position]],  0
	mov	dword ptr [rbp - 0x15c], eax
	add	rsp, 0x178
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c52b
	.globl sub_40c52b
	.type sub_40c52b, @function
sub_40c52b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c539

	.globl print_header
	.type print_header, @function
print_header:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x178
	mov	dword ptr [dword ptr [output_position]],  0
	mov	edi,  dword ptr [dword ptr [chars_per_margin]]
	call	pad_across_to
	call	print_white_space
	cmp	qword ptr [word ptr [page_number]],  0
	jne	.label_1192
	movabs	rdi, OFFSET FLAT:label_1191
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
	.section	.text
	.align	16
	#Procedure 0x40c590

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
	.align	16
	#Procedure 0x40c611
	.globl sub_40c611
	.type sub_40c611, @function
sub_40c611:

	nop	word ptr cs:[rax + rax]
.label_1198:
	mov	rdi, qword ptr [rbp - 0x20]
	call	rpl_fclose
	cmp	eax, 0
	jne	.label_1193
	mov	edi, dword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fdopen
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jne	.label_1196
.label_1193:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 0x28]
	call	close
	mov	ecx, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x3c], eax
	mov	dword ptr [rbp - 0x40], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x40]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1194
	.section	.text
	.align	16
	#Procedure 0x40c67e

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fopen
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1197
	mov	rdi, qword ptr [rbp - 0x20]
	call	fileno
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x24], eax
	cmp	ecx, dword ptr [rbp - 0x24]
	jg	.label_1195
	cmp	dword ptr [rbp - 0x24], 2
	jg	.label_1195
	mov	edi, dword ptr [rbp - 0x24]
	call	dup_safer
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	jge	.label_1198
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	rdi, qword ptr [rbp - 0x20]
	call	rpl_fclose
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x34], eax
	mov	dword ptr [rbp - 0x38], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x38]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1194
.label_1196:
	jmp	.label_1195
.label_1195:
	jmp	.label_1197
.label_1197:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1194:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c72f
	.globl sub_40c72f
	.type sub_40c72f, @function
sub_40c72f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40c730
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
	.align	16
	#Procedure 0x40c740

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
	ja	.label_1199
	jmp	.label_1201
.label_1201:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1200
.label_1199:
	jmp	.label_1200
.label_1200:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c78a
	.globl sub_40c78a
	.type sub_40c78a, @function
sub_40c78a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c790

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
	#Procedure 0x40c7b8
	.globl sub_40c7b8
	.type sub_40c7b8, @function
sub_40c7b8:

	nop	dword ptr [rax + rax]
.label_1202:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c7ca
	.globl sub_40c7ca
	.type sub_40c7ca, @function
sub_40c7ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c7d0

	.globl memcpy_lowcase
	.type memcpy_lowcase, @function
memcpy_lowcase:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_1203:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	cmp	rax, 0
	jbe	.label_1202
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rcx + rax]
	call	tolower
	mov	dl, al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + rcx], dl
	jmp	.label_1203
.label_1207:
	call	tzset
	mov	byte ptr [rbp - 1], 1
.label_1206:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c837

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
	je	.label_1205
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1204
.label_1205:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_1204
.label_1204:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	setenv_TZ
	cmp	eax, 0
	je	.label_1207
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1206
	.section	.text
	.align	16
	#Procedure 0x40c890

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
	#Procedure 0x40c8ab
	.globl sub_40c8ab
	.type sub_40c8ab, @function
sub_40c8ab:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c8b0

	.globl tzfree
	.type tzfree, @function
tzfree:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	rdi,  qword ptr [word ptr [local_tz]]
	je	.label_1208
	jmp	.label_1210
.label_1210:
	cmp	qword ptr [rbp - 8], 0
	je	.label_1209
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1210
.label_1209:
	jmp	.label_1208
.label_1208:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c90d
	.globl sub_40c90d
	.type sub_40c90d, @function
sub_40c90d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c910

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
	.align	16
	#Procedure 0x40c932
	.globl sub_40c932
	.type sub_40c932, @function
sub_40c932:

	nop	word ptr cs:[rax + rax]
.label_1229:
	movabs	rsi, OFFSET FLAT:label_1211
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_1228:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_1221
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
	mov	ecx, OFFSET FLAT:label_1217
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
	ja	.label_1223
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1215]]
	jmp	rcx
.label_2295:
	movabs	rdi, OFFSET FLAT:label_1218
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
	jmp	.label_1213
.label_2296:
	movabs	rdi, OFFSET FLAT:label_1226
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
	jmp	.label_1213
.label_2289:
	movabs	rdi, OFFSET FLAT:label_1219
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
	jmp	.label_1213
.label_2293:
	movabs	rdi, OFFSET FLAT:label_1222
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
	jmp	.label_1213
.label_2297:
	movabs	rdi, OFFSET FLAT:label_1212
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
	jmp	.label_1213
	.section	.text
	.align	16
	#Procedure 0x40cc77

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
	je	.label_1229
	movabs	rsi, OFFSET FLAT:label_1227
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1228
.label_2291:
	movabs	rdi, OFFSET FLAT:label_1216
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
	jmp	.label_1213
.label_2292:
	movabs	rdi, OFFSET FLAT:label_1220
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
	jmp	.label_1213
.label_2290:
	movabs	rdi, OFFSET FLAT:label_1214
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
	jmp	.label_1213
.label_1223:
	movabs	rdi, OFFSET FLAT:label_1224
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
.label_1213:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ce6d
	.globl sub_40ce6d
	.type sub_40ce6d, @function
sub_40ce6d:

	nop	
.label_2288:
	jmp	.label_1213
.label_2294:
	movabs	rdi, OFFSET FLAT:label_1225
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
	jmp	.label_1213
	.section	.text
	.align	16
	#Procedure 0x40cf00

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_1230
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
.label_1232:
	jmp	.label_1231
	.section	.text
	.align	16
	#Procedure 0x40cf35

	.globl hold_file
	.type hold_file, @function
hold_file:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	test	byte ptr [byte ptr [parallel_files]],  1
	jne	.label_1233
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x10], rax
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	dword ptr [rbp - 0x14], ecx
.label_1234:
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_1232
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_1236
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x10], 1
	jmp	.label_1235
.label_1236:
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x10], 2
.label_1235:
	jmp	.label_1237
.label_1237:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x40
	mov	qword ptr [rbp - 0x10], rax
	mov	ecx, dword ptr [rbp - 0x14]
	add	ecx, -1
	mov	dword ptr [rbp - 0x14], ecx
	jmp	.label_1234
.label_1233:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x10], 2
.label_1231:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x30], 0
	mov	ecx,  dword ptr [dword ptr [files_ready_to_read]]
	add	ecx, -1
	mov	dword ptr [dword ptr [files_ready_to_read]],  ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cfdc
	.globl sub_40cfdc
	.type sub_40cfdc, @function
sub_40cfdc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40cfe0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1238
	jmp	.label_1240
.label_1240:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1239
.label_1238:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1239:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d017
	.globl sub_40d017
	.type sub_40d017, @function
sub_40d017:

	nop	word ptr [rax + rax]
.label_1241:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d029
	.globl sub_40d029
	.type sub_40d029, @function
sub_40d029:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d02c

	.globl bkm_scale_by_power_0
	.type bkm_scale_by_power_0, @function
bkm_scale_by_power_0:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	dword ptr [rbp - 0x14], 0
.label_1242:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_1241
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale_0
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1242
	.section	.text
	.align	16
	#Procedure 0x40d070

	.globl xstrtol_fatal
	.type xstrtol_fatal, @function
xstrtol_fatal:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dl
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x20], r8
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, byte ptr [rbp - 9]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9d,  dword ptr [dword ptr [exit_failure]]
	movsx	edx, al
	call	xstrtol_error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40d0b1
	.globl sub_40d0b1
	.type sub_40d0b1, @function
sub_40d0b1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d0c0

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
.label_1246:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_1243
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_1248
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_1247
.label_1248:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_1247:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_1243:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_1249
	jmp	.label_1244
.label_1249:
	jmp	.label_1245
.label_1245:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1246
.label_1244:
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
	#Procedure 0x40d1c9
	.globl sub_40d1c9
	.type sub_40d1c9, @function
sub_40d1c9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d1d0

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
	jne	.label_1250
	call	abort
.label_1250:
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
	#Procedure 0x40d234
	.globl sub_40d234
	.type sub_40d234, @function
sub_40d234:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d240

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_1251
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
.label_1253:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d27a
	.globl sub_40d27a
	.type sub_40d27a, @function
sub_40d27a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d284
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
	jb	.label_1252
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_1253
.label_1252:
	call	xalloc_die
.label_1260:
	cmp	dword ptr [dword ptr [spaces_not_printed]],  0
	jne	.label_1257
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x34]
	movsxd	rax, dword ptr [rbp - 0x1c]
	mov	rdx,  qword ptr [word ptr [end_vector]]
	add	ecx, dword ptr [rdx + rax*4]
	mov	dword ptr [dword ptr [output_position]],  ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x34]
	sub	ecx,  dword ptr [dword ptr [col_sep_length]]
	cmp	ecx,  dword ptr [dword ptr [chars_per_margin]]
	jne	.label_1259
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [output_position]]
	sub	ecx, eax
	mov	dword ptr [dword ptr [output_position]],  ecx
.label_1259:
	jmp	.label_1257
.label_1257:
	mov	byte ptr [rbp - 1], 1
.label_1261:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d344
	.globl sub_40d344
	.type sub_40d344, @function
sub_40d344:

	nop	dword ptr [rax]
.label_1262:
	jmp	.label_1255
.label_1255:
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	cmp	eax,  dword ptr [dword ptr [padding_not_printed]]
	jge	.label_1256
	mov	eax,  dword ptr [dword ptr [padding_not_printed]]
	sub	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	edi, eax
	call	pad_across_to
	mov	dword ptr [dword ptr [padding_not_printed]],  0
.label_1256:
	test	byte ptr [byte ptr [use_col_separator]],  1
	je	.label_1254
	call	print_sep_string
.label_1254:
	jmp	.label_1258
.label_1258:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	je	.label_1260
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	movsx	edi, byte ptr [rax]
	call	print_char
	jmp	.label_1258
.label_1265:
	mov	rax,  qword ptr [word ptr [column_vector]]
	cmp	dword ptr [rax + 0x30], 0
	jg	.label_1262
	test	byte ptr [byte ptr [extremities]],  1
	jne	.label_1266
	mov	byte ptr [byte ptr [pad_vertically]],  0
.label_1266:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1261
	.section	.text
	.align	16
	#Procedure 0x40d3f4

	.globl print_stored
	.type print_stored, @function
print_stored:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdi + 0x28]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [rdi + 0x28], ecx
	mov	dword ptr [rbp - 0x1c], eax
	movsxd	rdi, dword ptr [rbp - 0x1c]
	mov	rdx,  qword ptr [word ptr [line_vector]]
	movsxd	rdx, dword ptr [rdx + rdi*4]
	add	rdx,  qword ptr [word ptr [buff]]
	mov	qword ptr [rbp - 0x28], rdx
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, 1
	movsxd	rdx, eax
	mov	rdi,  qword ptr [word ptr [line_vector]]
	movsxd	rdx, dword ptr [rdi + rdx*4]
	add	rdx,  qword ptr [word ptr [buff]]
	mov	qword ptr [rbp - 0x30], rdx
	mov	byte ptr [byte ptr [pad_vertically]],  1
	test	byte ptr [byte ptr [print_a_header]],  1
	je	.label_1263
	call	print_header
.label_1263:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x10], 1
	jne	.label_1255
	mov	dword ptr [rbp - 0x34], 1
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x18], rax
.label_1264:
	mov	eax, dword ptr [rbp - 0x34]
	cmp	eax,  dword ptr [dword ptr [columns]]
	jg	.label_1265
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x10], 2
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_1264
	.section	.text
	.align	16
	#Procedure 0x40d4c0

	.globl getoptarg
	.type getoptarg, @function
getoptarg:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 8]
	movsx	esi, byte ptr [rcx]
	sub	esi, 0x30
	cmp	esi, 9
	jbe	.label_1267
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax], dl
.label_1267:
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	je	.label_1268
	xor	eax, eax
	mov	esi, eax
	mov	edx, 0xa
	lea	rcx, [rbp - 0x28]
	movabs	r8, OFFSET FLAT:label_152
	mov	rdi, qword ptr [rbp - 8]
	call	xstrtol
	cmp	eax, 0
	jne	.label_1270
	cmp	qword ptr [rbp - 0x28], 0
	jle	.label_1270
	mov	eax, 0x7fffffff
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x28]
	jge	.label_1269
.label_1270:
	mov	eax, 0x7fffffff
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x28]
	jge	.label_1272
	mov	eax, 0x4b
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_1271
.label_1272:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
.label_1271:
	mov	eax, dword ptr [rbp - 0x2c]
	movabs	rdi, OFFSET FLAT:label_1273
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movsx	ecx, byte ptr [rbp - 9]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
	mov	dword ptr [rbp - 0x3c], ecx
	call	quote
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	r8, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_1269:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
.label_1268:
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d5d9
	.globl sub_40d5d9
	.type sub_40d5d9, @function
sub_40d5d9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d5e0

	.globl balance
	.type balance, @function
balance:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 0x1c], 0
	mov	dword ptr [rbp - 0x14], 1
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x10], rax
.label_1275:
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax,  dword ptr [dword ptr [columns]]
	jg	.label_1274
	mov	eax, dword ptr [rbp - 4]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	mov	dword ptr [rbp - 0x18], eax
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x20], eax
	mov	eax, ecx
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, edx
	jg	.label_1276
	mov	eax, dword ptr [rbp - 0x18]
	add	eax, 1
	mov	dword ptr [rbp - 0x18], eax
.label_1276:
	mov	eax, dword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dword ptr [rcx + 0x2c], eax
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dword ptr [rcx + 0x28], eax
	mov	eax, dword ptr [rbp - 0x18]
	add	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_1275
.label_1274:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d67f
	.globl sub_40d67f
	.type sub_40d67f, @function
sub_40d67f:

	nop	
.label_1279:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x14]
	cqo	
	idiv	rcx
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	jge	.label_1277
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1278
.label_1277:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_1278:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d6d8
	.globl sub_40d6d8
	.type sub_40d6d8, @function
sub_40d6d8:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d6e5

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	push	rbp
	mov	rbp, rsp
	movabs	rax, 0x8000000000000000
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	movsxd	rcx, dword ptr [rbp - 0x14]
	cqo	
	idiv	rcx
	cmp	rdi, rax
	jge	.label_1279
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1278
.label_1281:
	mov	byte ptr [rbp - 1], 0
.label_1282:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d73e
	.globl sub_40d73e
	.type sub_40d73e, @function
sub_40d73e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d74c
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1281
	jmp	.label_1280
.label_1280:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1282
	.section	.text
	.align	16
	#Procedure 0x40d770
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
	#Procedure 0x40d798
	.globl sub_40d798
	.type sub_40d798, @function
sub_40d798:

	nop	dword ptr [rax + rax]
.label_1287:
	jmp	.label_1283
.label_1284:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_1283:
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
	#Procedure 0x40d7df
	.globl sub_40d7df
	.type sub_40d7df, @function
sub_40d7df:

	nop	word ptr [rax + rax]
.label_1285:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_1284
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40d809

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
	jne	.label_1285
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1286
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
.label_1286:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1287
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40d890

	.globl print_page
	.type print_page, @function
print_page:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	call	init_page
	call	cols_ready_to_print
	cmp	eax, 0
	jne	.label_1300
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1305
.label_1298:
	test	byte ptr [byte ptr [pad_vertically]],  1
	je	.label_1307
	mov	edi, 0xa
	call	putchar_unlocked
	mov	edi, dword ptr [rbp - 0xc]
	add	edi, -1
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x20], eax
.label_1307:
	call	cols_ready_to_print
	cmp	eax, 0
	jne	.label_1306
	test	byte ptr [byte ptr [extremities]],  1
	jne	.label_1306
	jmp	.label_1296
.label_1303:
	jmp	.label_1290
.label_1290:
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	mov	byte ptr [byte ptr [pad_vertically]],  al
	test	byte ptr [byte ptr [pad_vertically]],  1
	je	.label_1297
	test	byte ptr [byte ptr [extremities]],  1
	je	.label_1297
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 5
	mov	edi, eax
	call	pad_down
	jmp	.label_1291
.label_1292:
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_1308
	test	byte ptr [byte ptr [empty_line]],  1
	je	.label_1302
	mov	byte ptr [byte ptr [align_empty_cols]],  1
	jmp	.label_1316
.label_1317:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x10], 3
	je	.label_1320
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x10], 2
	jne	.label_1323
	test	byte ptr [byte ptr [FF_only]],  1
	je	.label_1323
.label_1320:
	mov	rdi, qword ptr [rbp - 0x18]
	call	align_column
.label_1323:
	jmp	.label_1295
.label_1295:
	jmp	.label_1288
.label_1288:
	jmp	.label_1299
.label_1300:
	test	byte ptr [byte ptr [extremities]],  1
	je	.label_1301
	mov	byte ptr [byte ptr [print_a_header]],  1
.label_1301:
	mov	byte ptr [byte ptr [pad_vertically]],  0
	mov	byte ptr [rbp - 0x19], 0
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	dword ptr [rbp - 0xc], eax
	test	byte ptr [byte ptr [double_space]],  1
	je	.label_1309
	mov	eax, dword ptr [rbp - 0xc]
	shl	eax, 1
	mov	dword ptr [rbp - 0xc], eax
.label_1309:
	jmp	.label_1318
.label_1318:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0xc], 0
	mov	byte ptr [rbp - 0x1a], cl
	jle	.label_1321
	call	cols_ready_to_print
	cmp	eax, 0
	seta	cl
	mov	byte ptr [rbp - 0x1a], cl
.label_1321:
	mov	al, byte ptr [rbp - 0x1a]
	test	al, 1
	jne	.label_1289
	jmp	.label_1296
.label_1289:
	mov	dword ptr [dword ptr [output_position]],  0
	mov	dword ptr [dword ptr [spaces_not_printed]],  0
	mov	dword ptr [dword ptr [separators_not_printed]],  0
	mov	byte ptr [byte ptr [pad_vertically]],  0
	mov	byte ptr [byte ptr [align_empty_cols]],  0
	mov	byte ptr [byte ptr [empty_line]],  1
	mov	dword ptr [rbp - 8], 1
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x18], rax
.label_1324:
	mov	eax, dword ptr [rbp - 8]
	cmp	eax,  dword ptr [dword ptr [columns]]
	jg	.label_1298
	mov	dword ptr [dword ptr [input_position]],  0
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x30], 0
	jg	.label_1325
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x10], 1
	jne	.label_1292
.label_1325:
	mov	byte ptr [byte ptr [FF_only]],  0
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x34]
	mov	dword ptr [dword ptr [padding_not_printed]],  ecx
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	call	rax
	test	al, 1
	jne	.label_1310
	mov	rdi, qword ptr [rbp - 0x18]
	call	read_rest_of_line
.label_1310:
	mov	al,  byte ptr [byte ptr [pad_vertically]]
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	edx, al
	or	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rsi, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rsi + 0x30]
	add	ecx, -1
	mov	dword ptr [rsi + 0x30], ecx
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	dword ptr [rsi + 0x30], 0
	jg	.label_1314
	call	cols_ready_to_print
	cmp	eax, 0
	jne	.label_1294
	jmp	.label_1298
.label_1293:
	call	reset_status
	mov	byte ptr [rbp - 1], 1
.label_1305:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40db38
	.globl sub_40db38
	.type sub_40db38, @function
sub_40db38:

	nop	
.label_1302:
	mov	rdi, qword ptr [rbp - 0x18]
	call	align_column
.label_1316:
	jmp	.label_1308
.label_1308:
	jmp	.label_1299
.label_1299:
	test	byte ptr [byte ptr [use_col_separator]],  1
	je	.label_1311
	mov	eax,  dword ptr [dword ptr [separators_not_printed]]
	add	eax, 1
	mov	dword ptr [dword ptr [separators_not_printed]],  eax
.label_1311:
	jmp	.label_1322
.label_1322:
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_1324
.label_1296:
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_1290
	mov	dword ptr [rbp - 8], 1
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x18], rax
.label_1315:
	mov	eax, dword ptr [rbp - 8]
	cmp	eax,  dword ptr [dword ptr [columns]]
	jg	.label_1303
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x10], 0
	jne	.label_1313
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x39], 1
.label_1313:
	jmp	.label_1312
.label_1312:
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_1315
.label_1294:
	jmp	.label_1314
.label_1314:
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_1288
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x10], 0
	je	.label_1288
	test	byte ptr [byte ptr [empty_line]],  1
	je	.label_1317
	mov	byte ptr [byte ptr [align_empty_cols]],  1
	jmp	.label_1295
.label_1306:
	test	byte ptr [byte ptr [double_space]],  1
	je	.label_1304
	test	byte ptr [rbp - 0x19], 1
	je	.label_1304
	mov	edi, 0xa
	call	putchar_unlocked
	mov	edi, dword ptr [rbp - 0xc]
	add	edi, -1
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x24], eax
.label_1304:
	jmp	.label_1318
.label_1297:
	test	byte ptr [byte ptr [keep_FF]],  1
	je	.label_1319
	test	byte ptr [byte ptr [print_a_FF]],  1
	je	.label_1319
	mov	edi, 0xc
	call	putchar_unlocked
	mov	byte ptr [byte ptr [print_a_FF]],  0
	mov	dword ptr [rbp - 0x28], eax
.label_1319:
	jmp	.label_1291
.label_1291:
	mov	rax,  qword ptr [word ptr [last_page_number]]
	mov	rcx,  qword ptr [word ptr [page_number]]
	add	rcx, 1
	mov	qword ptr [word ptr [page_number]],  rcx
	cmp	rax, rcx
	jae	.label_1293
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1305
.label_1334:
	mov	eax, 0x21
	mov	edi, eax
	call	xmalloc
	lea	rsi, [rbp - 0x130]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x140], rdi
	mov	rdi, rax
	call	timetostr
	movabs	rsi, OFFSET FLAT:label_1333
	mov	ecx, dword ptr [rbp - 0xbc]
	mov	rdi, qword ptr [rbp - 0x140]
	mov	rdx, rax
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x144], eax
.label_1335:
	mov	rdi,  qword ptr [word ptr [date_text]]
	call	free
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [date_text]],  rdi
	cmp	qword ptr [word ptr [custom_header]],  0
	je	.label_1331
	mov	rax,  qword ptr [word ptr [custom_header]]
	mov	qword ptr [rbp - 0x150], rax
	jmp	.label_1326
	.section	.text
	.align	16
	#Procedure 0x40dd54

	.globl init_header
	.type init_header, @function
init_header:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x160
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, OFFSET FLAT:label_1336
	call	strcmp
	cmp	eax, 0
	jne	.label_1338
	mov	dword ptr [rbp - 0xc], 0xffffffff
.label_1338:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_1328
	lea	rsi, [rbp - 0xa8]
	mov	edi, dword ptr [rbp - 0xc]
	call	fstat
	cmp	eax, 0
	jne	.label_1328
	lea	rdi, [rbp - 0xa8]
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0x100], rdx
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1337
.label_1331:
	cmp	dword ptr [rbp - 0xc], 0
	jge	.label_1332
	movabs	rax, OFFSET FLAT:label_152
	mov	qword ptr [rbp - 0x158], rax
	jmp	.label_1330
.label_1332:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x158], rax
.label_1330:
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rbp - 0x150], rax
.label_1326:
	mov	rax, qword ptr [rbp - 0x150]
	xor	esi, esi
	mov	qword ptr [word ptr [file_text]],  rax
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	mov	rdi,  qword ptr [word ptr [date_text]]
	mov	dword ptr [rbp - 0x15c], ecx
	call	gnu_mbswidth
	xor	esi, esi
	mov	ecx, dword ptr [rbp - 0x15c]
	sub	ecx, eax
	mov	rdi,  qword ptr [word ptr [file_text]]
	mov	dword ptr [rbp - 0x160], ecx
	call	gnu_mbswidth
	mov	ecx, dword ptr [rbp - 0x160]
	sub	ecx, eax
	mov	dword ptr [dword ptr [header_width_available]],  ecx
	add	rsp, 0x160
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40de83
	.globl sub_40de83
	.type sub_40de83, @function
sub_40de83:

	nop	word ptr cs:[rax + rax]
.label_1328:
	cmp	qword ptr [word ptr [init_header.timespec]],  0
	jne	.label_1329
	movabs	rdi, OFFSET FLAT:init_header.timespec
	call	gettime
.label_1329:
	mov	rax,  qword ptr [word ptr [init_header.timespec]]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax,  qword ptr [word ptr [label_1327]]
	mov	qword ptr [rbp - 0xb0], rax
.label_1337:
	lea	rdx, [rbp - 0xf8]
	lea	rsi, [rbp - 0xb8]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	ecx, eax
	mov	dword ptr [rbp - 0xbc], ecx
	mov	rdi,  qword ptr [word ptr [localtz]]
	call	localtime_rz
	cmp	rax, 0
	je	.label_1334
	xor	eax, eax
	mov	edi, eax
	mov	rsi, -1
	lea	rcx, [rbp - 0xf8]
	mov	rdx,  qword ptr [word ptr [date_format]]
	mov	r8,  qword ptr [word ptr [localtz]]
	mov	r9d, dword ptr [rbp - 0xbc]
	call	nstrftime
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	mov	rdi, qword ptr [rbp - 0x110]
	call	xmalloc
	lea	rcx, [rbp - 0xf8]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x110]
	mov	rdx,  qword ptr [word ptr [date_format]]
	mov	r8,  qword ptr [word ptr [localtz]]
	mov	r9d, dword ptr [rbp - 0xbc]
	call	nstrftime
	mov	qword ptr [rbp - 0x138], rax
	jmp	.label_1335
	.section	.text
	.align	16
	#Procedure 0x40df80

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
.label_1522:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1753
	jmp	.label_1755
.label_1753:
	mov	al, 1
	test	al, 1
	jne	.label_1757
	jmp	.label_1758
.label_1757:
	movsxd	rax,  dword ptr [dword ptr [columns]]
	cmp	rax, 0
	jge	.label_1709
	movsxd	rax,  dword ptr [dword ptr [lines_per_body]]
	cmp	rax, 0
	jge	.label_1765
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	mov	qword ptr [rbp - 0x18], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x18]
	idiv	rsi
	cmp	rcx, rax
	jl	.label_1355
	jmp	.label_1346
.label_1447:
	cmp	dword ptr [rbp - 4], 0
	jge	.label_1349
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	jl	.label_1354
	jmp	.label_1365
.label_1741:
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_1367
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	jl	.label_1371
	jmp	.label_1381
.label_1531:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx,  dword ptr [dword ptr [chars_per_column]]
	add	rdx, 1
	mov	eax, edx
	mov	dword ptr [rbp - 0xc], eax
	test	cl, 1
	jne	.label_1339
	jmp	.label_1393
.label_1627:
	movsxd	rax, dword ptr [rbp - 0xc]
	cmp	rax, -1
	jne	.label_1394
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1399
	jmp	.label_1403
.label_1643:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	cmp	eax, 1
	jl	.label_1405
.label_1428:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	cmp	eax, -0x80
	jl	.label_1405
	mov	eax, 0x7f
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_1412
.label_1405:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	mov	dl, cl
	movsx	ecx, dl
	mov	dword ptr [rbp - 8], ecx
	test	al, 1
	jne	.label_1339
	jmp	.label_1378
.label_1674:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	mov	dl, al
	movsx	eax, dl
	add	eax, 1
	mov	dl, al
	movsx	eax, dl
	mov	dword ptr [rbp - 8], eax
	test	cl, 1
	jne	.label_1339
	jmp	.label_1378
.label_1349:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_1354
.label_1365:
	mov	eax, dword ptr [rbp - 4]
	imul	eax, dword ptr [rbp - 0xc]
	cmp	eax, -0x80
	jl	.label_1354
	mov	eax, 0x7f
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	cmp	eax, ecx
	jge	.label_1441
.label_1354:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	mov	dl, cl
	movsx	ecx, dl
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_1339
	jmp	.label_1352
.label_1412:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dl, al
	movsx	eax, dl
	mov	dword ptr [rbp - 8], eax
	test	cl, 1
	jne	.label_1339
	jmp	.label_1378
.label_1601:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_1462
	mov	eax, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	dx, cx
	movsx	ecx, dx
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_1452
	jmp	.label_1440
.label_1500:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1472
	jmp	.label_1479
.label_1472:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	cl, al
	movsx	eax, cl
	mov	edx,  dword ptr [dword ptr [chars_per_column]]
	mov	cl, dl
	movsx	edx, cl
	add	edx, 1
	cmp	eax, edx
	jle	.label_1463
	jmp	.label_1465
.label_1475:
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	dl, cl
	movsx	ecx, dl
	cdq	
	idiv	ecx
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	sil, cl
	movsx	ecx, sil
	cmp	eax, ecx
	jl	.label_1483
	jmp	.label_1487
.label_1644:
	mov	eax, dword ptr [rbp - 0xc]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jne	.label_1503
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1421
	jmp	.label_1423
.label_1603:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1512
	jmp	.label_1515
.label_1512:
	movsxd	rax, dword ptr [rbp - 4]
	movsxd	rcx, dword ptr [rbp - 4]
	add	rcx, 1
	cmp	rax, rcx
	jle	.label_1504
	jmp	.label_1506
.label_1699:
	mov	al, 1
	test	al, 1
	jne	.label_1520
	jmp	.label_1522
.label_1520:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1750
	jmp	.label_1527
.label_1750:
	cmp	dword ptr [dword ptr [columns]],  0
	jge	.label_1530
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_1535
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	jl	.label_1391
	jmp	.label_1542
.label_1745:
	mov	al, 1
	test	al, 1
	jne	.label_1545
	jmp	.label_1546
.label_1545:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1548
	jmp	.label_1551
.label_1548:
	cmp	dword ptr [dword ptr [chars_per_column]],  0x7fffffff
	jl	.label_1453
	jmp	.label_1461
.label_1756:
	movsxd	rax,  dword ptr [dword ptr [lines_per_body]]
	cmp	rax, 0
	jge	.label_1556
	movabs	rax, 0x8000000000000000
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	mov	qword ptr [rbp - 0x20], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x20]
	idiv	rsi
	cmp	rcx, rax
	jl	.label_1355
	jmp	.label_1346
.label_1541:
	cmp	dword ptr [dword ptr [columns]],  -1
	jne	.label_1563
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1345
	jmp	.label_1387
.label_1720:
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 0xc]
	mov	dx, cx
	movsx	ecx, dx
	cdq	
	idiv	ecx
	mov	ecx, dword ptr [rbp - 4]
	mov	si, cx
	movsx	ecx, si
	cmp	eax, ecx
	jl	.label_1421
.label_1423:
	mov	eax, dword ptr [rbp - 4]
	mov	cx, ax
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0xc]
	mov	cx, dx
	movsx	edx, cx
	imul	eax, edx
	cmp	eax, 0xffff8000
	jl	.label_1421
	mov	eax, 0x7fff
	mov	ecx, dword ptr [rbp - 4]
	mov	dx, cx
	movsx	ecx, dx
	mov	esi, dword ptr [rbp - 0xc]
	mov	dx, si
	movsx	esi, dx
	imul	ecx, esi
	cmp	eax, ecx
	jge	.label_1713
.label_1421:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 4]
	mov	dx, cx
	movsx	ecx, dx
	mov	esi, dword ptr [rbp - 0xc]
	mov	dx, si
	movsx	esi, dx
	imul	ecx, esi
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_1339
	jmp	.label_1352
.label_1593:
	mov	al, 1
	test	al, 1
	jne	.label_1606
	jmp	.label_1609
.label_1606:
	mov	al, 1
	test	al, 1
	jne	.label_1611
	jmp	.label_1613
.label_1611:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1614
	jmp	.label_1620
.label_1614:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 4]
	cmp	rcx, rax
	jl	.label_1383
	jmp	.label_1388
.label_1480:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_1376
.label_1414:
	mov	eax, dword ptr [rbp - 4]
	imul	eax, dword ptr [rbp - 0xc]
	cmp	eax, 0x80000000
	jl	.label_1376
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	cmp	eax, ecx
	jge	.label_1633
.label_1376:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_1339
	jmp	.label_1352
.label_1633:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	imul	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_1339
	jmp	.label_1352
.label_1714:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1647
	jmp	.label_1651
.label_1647:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_1363
	jmp	.label_1618
.label_1449:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1686
	jmp	.label_1655
.label_1686:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_1453
	jmp	.label_1461
.label_1718:
	movsxd	rax, dword ptr [rbp - 0xc]
	cmp	rax, 0
	jne	.label_1731
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1538
	jmp	.label_1664
.label_1727:
	cmp	dword ptr [rbp - 4], 0
	jge	.label_1665
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	jl	.label_1656
	jmp	.label_1417
.label_1706:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	mov	dl, al
	movsx	eax, dl
	mov	dword ptr [rbp - 0xc], eax
	test	cl, 1
	jne	.label_1339
	jmp	.label_1393
.label_1774:
	mov	eax, 0x7ffffffe
	cmp	eax,  dword ptr [dword ptr [chars_per_column]]
	jl	.label_1569
	jmp	.label_1341
.label_1552:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 4]
	add	rdx, 1
	mov	eax, edx
	mov	dword ptr [rbp - 8], eax
	test	cl, 1
	jne	.label_1339
	jmp	.label_1378
.label_1679:
	mov	eax, 0x7ffffffe
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_1405
	jmp	.label_1428
.label_1716:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_1432
	jmp	.label_1438
.label_1459:
	mov	eax, 0x7ffffffe
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	dl, cl
	movsx	ecx, dl
	cmp	eax, ecx
	jl	.label_1463
	jmp	.label_1465
.label_1662:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0xc]
	cqo	
	idiv	rcx
	movsxd	rcx, dword ptr [rbp - 4]
	cmp	rax, rcx
	jl	.label_1538
	jmp	.label_1664
.label_1742:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_1656
	jmp	.label_1417
.label_1439:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	cmp	eax, 1
	jl	.label_1496
.label_1344:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	cmp	eax, 0x80000000
	jl	.label_1496
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_1707
.label_1496:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	mov	dword ptr [rbp - 0xc], ecx
	test	al, 1
	jne	.label_1339
	jmp	.label_1393
.label_1499:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_1416
.label_1418:
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	imul	eax,  dword ptr [dword ptr [columns]]
	cmp	eax, -0x80
	jl	.label_1416
	mov	eax, 0x7f
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	cmp	eax, ecx
	jge	.label_1721
.label_1416:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	mov	dl, cl
	movsx	ecx, dl
	mov	dword ptr [rbp - 4], ecx
	test	al, 1
	jne	.label_1339
	jmp	.label_1384
	.section	.text
	.align	16
	#Procedure 0x40e71d

	.globl init_store_cols
	.type init_store_cols, @function
init_store_cols:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1733
	jmp	.label_1737
.label_1733:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1738
	jmp	.label_1739
.label_1738:
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_1585
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_1744
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	dl, cl
	movsx	ecx, dl
	mov	esi,  dword ptr [dword ptr [columns]]
	mov	dl, sil
	movsx	esi, dl
	cdq	
	idiv	esi
	cmp	ecx, eax
	jl	.label_1483
	jmp	.label_1487
.label_1728:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	dx, ax
	movsx	eax, dx
	add	eax, 1
	mov	dx, ax
	movsx	eax, dx
	mov	dword ptr [rbp - 0xc], eax
	test	cl, 1
	jne	.label_1339
	jmp	.label_1393
.label_1665:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_1656
.label_1417:
	mov	eax, dword ptr [rbp - 4]
	imul	eax, dword ptr [rbp - 0xc]
	cmp	eax, 0xffff8000
	jl	.label_1656
	mov	eax, 0x7fff
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	cmp	eax, ecx
	jge	.label_1773
.label_1656:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_1339
	jmp	.label_1352
.label_1609:
	mov	al, 1
	test	al, 1
	jne	.label_1353
	jmp	.label_1359
.label_1353:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1362
	jmp	.label_1368
.label_1362:
	cmp	dword ptr [rbp - 4], 0x7fffffff
	jl	.label_1370
	jmp	.label_1373
.label_1648:
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_1374
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	jl	.label_1345
	jmp	.label_1387
.label_1729:
	movsxd	rax,  dword ptr [dword ptr [columns]]
	cmp	rax, 0
	jne	.label_1390
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1395
	jmp	.label_1400
.label_1765:
	movsxd	rax,  dword ptr [dword ptr [columns]]
	cmp	rax, -1
	jne	.label_1402
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1355
	jmp	.label_1346
.label_1422:
	cmp	dword ptr [rbp - 0xc], -1
	jne	.label_1742
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1656
	jmp	.label_1417
.label_1623:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rsi,  dword ptr [dword ptr [columns]]
	imul	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 4], eax
	test	cl, 1
	jne	.label_1339
	jmp	.label_1384
.label_1695:
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_1427
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	dx, cx
	movsx	ecx, dx
	mov	esi,  dword ptr [dword ptr [columns]]
	mov	dx, si
	movsx	esi, dx
	cdq	
	idiv	esi
	cmp	ecx, eax
	jl	.label_1434
	jmp	.label_1443
.label_1676:
	mov	eax, 0x7ffffffe
	cmp	eax,  dword ptr [dword ptr [chars_per_column]]
	jl	.label_1444
	jmp	.label_1448
.label_1546:
	cmp	dword ptr [dword ptr [chars_per_column]],  0
	jge	.label_1449
	mov	eax, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_1453
	jmp	.label_1461
.label_1721:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	imul	eax,  dword ptr [dword ptr [columns]]
	mov	dl, al
	movsx	eax, dl
	mov	dword ptr [rbp - 4], eax
	test	cl, 1
	jne	.label_1339
	jmp	.label_1384
.label_1379:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1470
	jmp	.label_1474
.label_1470:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1478
	jmp	.label_1764
.label_1478:
	mov	al, 1
	test	al, 1
	jne	.label_1484
	jmp	.label_1486
.label_1484:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1488
	jmp	.label_1605
.label_1488:
	mov	eax, dword ptr [rbp - 4]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0x7fffffff
	jl	.label_1424
	jmp	.label_1498
.label_1652:
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_1499
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	jl	.label_1416
	jmp	.label_1418
.label_1582:
	mov	al, 1
	test	al, 1
	jne	.label_1507
	jmp	.label_1511
.label_1507:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1514
	jmp	.label_1516
.label_1514:
	cmp	dword ptr [rbp - 4], 0x7fffffff
	jl	.label_1351
	jmp	.label_1358
.label_1578:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1518
	jmp	.label_1521
.label_1518:
	movsxd	rax,  dword ptr [dword ptr [chars_per_column]]
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	cmp	rax, rcx
	jle	.label_1366
	jmp	.label_1375
.label_1707:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	test	cl, 1
	jne	.label_1339
	jmp	.label_1393
.label_1630:
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_1540
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1376
	jmp	.label_1414
.label_1708:
	cmp	dword ptr [rbp - 4], 0
	jge	.label_1547
	mov	eax, 1
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_1502
	jmp	.label_1553
.label_1547:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1554
	jmp	.label_1537
.label_1554:
	mov	eax, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_1502
	jmp	.label_1553
.label_1712:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	dl, al
	movsx	eax, dl
	add	eax, 1
	mov	dl, al
	movsx	eax, dl
	mov	dword ptr [rbp - 0xc], eax
	test	cl, 1
	jne	.label_1339
	jmp	.label_1393
.label_1768:
	cmp	dword ptr [dword ptr [chars_per_column]],  0
	jge	.label_1565
	mov	eax, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_1569
	jmp	.label_1341
.label_1698:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	cmp	eax, 1
	jl	.label_1485
.label_1491:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	cmp	eax, 0xffff8000
	jl	.label_1485
	mov	eax, 0x7fff
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_1581
.label_1485:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 8], ecx
	test	al, 1
	jne	.label_1339
	jmp	.label_1378
.label_1530:
	cmp	dword ptr [dword ptr [columns]],  0
	jne	.label_1579
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1391
	jmp	.label_1542
.label_1663:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [columns]]
	cqo	
	idiv	rcx
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	cmp	rax, rcx
	jl	.label_1395
.label_1400:
	movabs	rax, 0x8000000000000000
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	imul	rcx, rdx
	cmp	rcx, rax
	jl	.label_1395
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	imul	rcx, rdx
	cmp	rax, rcx
	jge	.label_1623
.label_1395:
	mov	al, 1
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	imul	rcx, rdx
	mov	esi, ecx
	mov	dword ptr [rbp - 4], esi
	test	al, 1
	jne	.label_1339
	jmp	.label_1384
.label_1568:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	cmp	eax, 1
	jl	.label_1444
.label_1448:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	cmp	eax, 0x80000000
	jl	.label_1444
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_1645
.label_1444:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	mov	dword ptr [rbp - 0xc], ecx
	test	al, 1
	jne	.label_1339
	jmp	.label_1393
.label_1586:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 4]
	movsxd	rsi, dword ptr [rbp - 0xc]
	imul	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_1339
	jmp	.label_1352
.label_1755:
	mov	al, 1
	test	al, 1
	jne	.label_1659
	jmp	.label_1661
.label_1659:
	movsxd	rax,  dword ptr [dword ptr [columns]]
	cmp	rax, 0
	jge	.label_1729
	movsxd	rax,  dword ptr [dword ptr [lines_per_body]]
	cmp	rax, 0
	jge	.label_1636
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	mov	qword ptr [rbp - 0x28], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x28]
	idiv	rsi
	cmp	rcx, rax
	jl	.label_1395
	jmp	.label_1400
.label_1385:
	mov	al, 1
	test	al, 1
	jne	.label_1675
	jmp	.label_1677
.label_1675:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1678
	jmp	.label_1679
.label_1678:
	cmp	dword ptr [rbp - 4], 0x7fffffff
	jl	.label_1405
	jmp	.label_1428
.label_1563:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_1345
	jmp	.label_1387
.label_1604:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 4]
	add	rdx, 1
	mov	eax, edx
	mov	dword ptr [rbp - 8], eax
	test	cl, 1
	jne	.label_1339
	jmp	.label_1378
.label_1482:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1587
	jmp	.label_1691
.label_1587:
	mov	eax, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_1370
	jmp	.label_1373
.label_1703:
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jne	.label_1695
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1434
	jmp	.label_1443
.label_1735:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	cmp	eax, 1
	jl	.label_1569
.label_1341:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	cmp	eax, -0x80
	jl	.label_1569
	mov	eax, 0x7f
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_1706
.label_1569:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	mov	dl, cl
	movsx	ecx, dl
	mov	dword ptr [rbp - 0xc], ecx
	test	al, 1
	jne	.label_1339
	jmp	.label_1393
.label_1340:
	cmp	dword ptr [dword ptr [chars_per_column]],  0
	jge	.label_1714
	mov	eax, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_1363
	jmp	.label_1618
.label_1458:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	cx, ax
	movsx	eax, cx
	add	eax, 1
	cmp	eax, 1
	jl	.label_1452
.label_1440:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	cx, ax
	movsx	eax, cx
	add	eax, 1
	cmp	eax, 0xffff8000
	jl	.label_1452
	mov	eax, 0x7fff
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	dx, cx
	movsx	ecx, dx
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_1728
.label_1452:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	dx, cx
	movsx	ecx, dx
	add	ecx, 1
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 0xc], ecx
	test	al, 1
	jne	.label_1339
	jmp	.label_1393
.label_1725:
	cmp	dword ptr [rbp - 4], 0
	jge	.label_1410
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	jl	.label_1432
	jmp	.label_1438
.label_1394:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0xc]
	cqo	
	idiv	rcx
	movsxd	rcx, dword ptr [rbp - 4]
	cmp	rax, rcx
	jl	.label_1399
	jmp	.label_1403
.label_1348:
	mov	eax, 0x7ffffffe
	cmp	eax,  dword ptr [dword ptr [chars_per_column]]
	jl	.label_1363
	jmp	.label_1618
.label_1495:
	movsxd	rax, dword ptr [rbp - 0xc]
	cmp	rax, 0
	jne	.label_1650
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1399
	jmp	.label_1403
.label_1598:
	mov	al, 1
	test	al, 1
	jne	.label_1761
	jmp	.label_1763
.label_1761:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1766
	jmp	.label_1770
.label_1766:
	cmp	dword ptr [dword ptr [chars_per_column]],  0x7fffffff
	jl	.label_1411
	jmp	.label_1413
.label_1347:
	mov	al, 1
	test	al, 1
	jne	.label_1775
	jmp	.label_1340
.label_1775:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1342
	jmp	.label_1348
.label_1342:
	cmp	dword ptr [dword ptr [chars_per_column]],  0x7fffffff
	jl	.label_1363
	jmp	.label_1618
.label_1651:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	cmp	eax, 1
	jl	.label_1363
.label_1618:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_1363
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	movsxd	rdx, ecx
	cmp	rax, rdx
	jge	.label_1380
.label_1363:
	mov	al, 1
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	mov	edx, ecx
	mov	dword ptr [rbp - 0xc], edx
	test	al, 1
	jne	.label_1339
	jmp	.label_1393
.label_1561:
	cmp	dword ptr [rbp - 0xc], 0
	jge	.label_1401
	cmp	dword ptr [rbp - 4], 0
	jge	.label_1406
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	jl	.label_1354
	jmp	.label_1365
.label_1431:
	cmp	dword ptr [dword ptr [columns]],  0
	jne	.label_1652
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1416
	jmp	.label_1418
.label_1617:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_1354
	jmp	.label_1365
.label_1562:
	mov	eax, dword ptr [rbp - 0xc]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jne	.label_1426
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1429
	jmp	.label_1433
.label_1715:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1435
	jmp	.label_1439
.label_1435:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_1496
	jmp	.label_1344
.label_1594:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_1361
.label_1396:
	mov	eax, dword ptr [rbp - 4]
	imul	eax, dword ptr [rbp - 0xc]
	cmp	eax, 0x80000000
	jl	.label_1361
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	cmp	eax, ecx
	jge	.label_1723
.label_1361:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_1339
	jmp	.label_1352
.label_1407:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1464
	jmp	.label_1468
.label_1464:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_1411
	jmp	.label_1413
.label_1540:
	cmp	dword ptr [rbp - 4], 0
	jge	.label_1480
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	jl	.label_1376
	jmp	.label_1414
.label_1751:
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 0xc]
	mov	dl, cl
	movsx	ecx, dl
	cdq	
	idiv	ecx
	mov	ecx, dword ptr [rbp - 4]
	mov	sil, cl
	movsx	ecx, sil
	cmp	eax, ecx
	jl	.label_1429
	jmp	.label_1433
.label_1454:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_1500
	mov	eax, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	dl, cl
	movsx	ecx, dl
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_1463
	jmp	.label_1465
.label_1550:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_1513
	jmp	.label_1408
.label_1436:
	movsxd	rax,  dword ptr [dword ptr [chars_per_column]]
	add	rax, 1
	cmp	rax, 1
	jl	.label_1437
.label_1476:
	movabs	rax, 0x8000000000000000
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	cmp	rcx, rax
	jl	.label_1437
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	cmp	rax, rcx
	jge	.label_1531
.label_1437:
	mov	al, 1
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	mov	edx, ecx
	mov	dword ptr [rbp - 0xc], edx
	test	al, 1
	jne	.label_1339
	jmp	.label_1393
.label_1360:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	imul	eax,  dword ptr [dword ptr [columns]]
	mov	dx, ax
	movsx	eax, dx
	mov	dword ptr [rbp - 4], eax
	test	cl, 1
	jne	.label_1339
	jmp	.label_1384
.label_1380:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx,  dword ptr [dword ptr [chars_per_column]]
	add	rdx, 1
	mov	eax, edx
	mov	dword ptr [rbp - 0xc], eax
	test	cl, 1
	jne	.label_1339
.label_1393:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1559
	jmp	.label_1570
.label_1559:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1560
	jmp	.label_1561
.label_1560:
	mov	eax, dword ptr [rbp - 0xc]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_1562
	mov	eax, dword ptr [rbp - 4]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_1566
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 4]
	mov	dl, cl
	movsx	ecx, dl
	mov	esi, dword ptr [rbp - 0xc]
	mov	dl, sil
	movsx	esi, dl
	cdq	
	idiv	esi
	cmp	ecx, eax
	jl	.label_1429
	jmp	.label_1433
.label_1717:
	cmp	dword ptr [rbp - 0xc], -1
	jne	.label_1577
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1361
	jmp	.label_1396
.label_1645:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	test	cl, 1
	jne	.label_1339
	jmp	.label_1393
.label_1445:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1590
	jmp	.label_1592
.label_1590:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1595
	jmp	.label_1598
.label_1595:
	mov	al, 1
	test	al, 1
	jne	.label_1599
	jmp	.label_1601
.label_1599:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1369
	jmp	.label_1608
.label_1369:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0x7fffffff
	jl	.label_1452
	jmp	.label_1440
.label_1579:
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_1619
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	jl	.label_1391
	jmp	.label_1542
.label_1726:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_1497
.label_1501:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_1497
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	movsxd	rdx, ecx
	cmp	rax, rdx
	jge	.label_1639
.label_1497:
	mov	al, 1
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	imul	rcx, rdx
	mov	esi, ecx
	mov	dword ptr [rbp - 4], esi
	test	al, 1
	jne	.label_1339
	jmp	.label_1384
.label_1747:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 4]
	movsxd	rsi, dword ptr [rbp - 0xc]
	imul	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_1339
	jmp	.label_1352
.label_1339:
	call	integer_overflow
.label_1352:
	mov	rax,  qword ptr [word ptr [line_vector]]
	mov	rdi, rax
	call	free
	mov	ecx, 4
	mov	esi, ecx
	movsxd	rdi, dword ptr [rbp - 8]
	call	xnmalloc
	mov	qword ptr [word ptr [line_vector]],  rax
	mov	rax,  qword ptr [word ptr [end_vector]]
	mov	rdi, rax
	call	free
	mov	ecx, 4
	mov	esi, ecx
	movsxd	rdi, dword ptr [rbp - 4]
	call	xnmalloc
	mov	qword ptr [word ptr [end_vector]],  rax
	mov	rdi,  qword ptr [word ptr [buff]]
	call	free
	movsxd	rdi, dword ptr [rbp - 0x10]
	mov	dl,  byte ptr [byte ptr [use_col_separator]]
	and	dl, 1
	movzx	ecx, dl
	add	ecx, 1
	movsxd	rsi, ecx
	call	xnmalloc
	mov	qword ptr [word ptr [buff]],  rax
	movsxd	rax, dword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [buff_allocated]],  rax
	mov	dl,  byte ptr [byte ptr [use_col_separator]]
	and	dl, 1
	movzx	ecx, dl
	add	ecx, 1
	movsxd	rax, ecx
	imul	rax,  qword ptr [word ptr [buff_allocated]]
	mov	qword ptr [word ptr [buff_allocated]],  rax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f5d4
	.globl sub_40f5d4
	.type sub_40f5d4, @function
sub_40f5d4:

	nop	word ptr cs:[rax + rax]
.label_1636:
	movsxd	rax,  dword ptr [dword ptr [columns]]
	cmp	rax, -1
	jne	.label_1684
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1395
	jmp	.label_1400
.label_1398:
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_1622
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1513
	jmp	.label_1408
.label_1481:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1696
	jmp	.label_1698
.label_1696:
	mov	eax, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_1485
	jmp	.label_1491
.label_1489:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0xc]
	cqo	
	idiv	rcx
	movsxd	rcx, dword ptr [rbp - 4]
	cmp	rax, rcx
	jl	.label_1399
.label_1403:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	imul	rcx, rdx
	cmp	rcx, rax
	jl	.label_1399
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	imul	rcx, rdx
	cmp	rax, rcx
	jge	.label_1710
.label_1399:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	imul	rcx, rdx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x10], esi
	test	al, 1
	jne	.label_1339
	jmp	.label_1352
.label_1503:
	mov	eax, dword ptr [rbp - 4]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_1720
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 4]
	mov	dx, cx
	movsx	ecx, dx
	mov	esi, dword ptr [rbp - 0xc]
	mov	dx, si
	movsx	esi, dx
	cdq	
	idiv	esi
	cmp	ecx, eax
	jl	.label_1421
	jmp	.label_1423
.label_1419:
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_1727
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1656
	jmp	.label_1417
.label_1565:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1732
	jmp	.label_1735
.label_1732:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_1569
	jmp	.label_1341
.label_1521:
	movsxd	rax,  dword ptr [dword ptr [chars_per_column]]
	add	rax, 1
	cmp	rax, 1
	jl	.label_1366
.label_1375:
	movabs	rax, 0x8000000000000000
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	cmp	rcx, rax
	jl	.label_1366
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	cmp	rax, rcx
	jge	.label_1748
.label_1366:
	mov	al, 1
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	mov	edx, ecx
	mov	dword ptr [rbp - 0xc], edx
	test	al, 1
	jne	.label_1339
	jmp	.label_1393
.label_1758:
	cmp	dword ptr [dword ptr [columns]],  0
	jge	.label_1760
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_1762
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	jl	.label_1371
	jmp	.label_1381
.label_1556:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [columns]]
	cqo	
	idiv	rcx
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	cmp	rax, rcx
	jl	.label_1355
.label_1346:
	movabs	rax, 0x8000000000000000
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	imul	rcx, rdx
	cmp	rcx, rax
	jl	.label_1355
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	imul	rcx, rdx
	cmp	rax, rcx
	jge	.label_1372
.label_1355:
	mov	al, 1
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	imul	rcx, rdx
	mov	esi, ecx
	mov	dword ptr [rbp - 4], esi
	test	al, 1
	jne	.label_1339
	jmp	.label_1384
.label_1415:
	movsxd	rax,  dword ptr [dword ptr [chars_per_column]]
	cmp	rax, 0
	jge	.label_1578
	mov	eax, 1
	mov	ecx, eax
	movsxd	rdx,  dword ptr [dword ptr [chars_per_column]]
	add	rdx, 1
	cmp	rcx, rdx
	jle	.label_1366
	jmp	.label_1375
.label_1660:
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_1649
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1361
	jmp	.label_1396
.label_1770:
	mov	eax, 0x7ffffffe
	cmp	eax,  dword ptr [dword ptr [chars_per_column]]
	jl	.label_1411
	jmp	.label_1413
.label_1523:
	mov	eax, dword ptr [rbp - 4]
	mov	cx, ax
	movsx	eax, cx
	add	eax, 1
	cmp	eax, 1
	jl	.label_1424
.label_1498:
	mov	eax, dword ptr [rbp - 4]
	mov	cx, ax
	movsx	eax, cx
	add	eax, 1
	cmp	eax, 0xffff8000
	jl	.label_1424
	mov	eax, 0x7fff
	mov	ecx, dword ptr [rbp - 4]
	mov	dx, cx
	movsx	ecx, dx
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_1730
.label_1424:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 4]
	mov	dx, cx
	movsx	ecx, dx
	add	ecx, 1
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 8], ecx
	test	al, 1
	jne	.label_1339
	jmp	.label_1378
.label_1401:
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_1447
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1354
	jmp	.label_1365
.label_1739:
	cmp	dword ptr [dword ptr [columns]],  0
	jge	.label_1431
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_1460
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	jl	.label_1416
	jmp	.label_1418
.label_1749:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rsi,  dword ptr [dword ptr [columns]]
	imul	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 4], eax
	test	cl, 1
	jne	.label_1339
	jmp	.label_1384
.label_1669:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx,  dword ptr [dword ptr [chars_per_column]]
	add	rdx, 1
	mov	eax, edx
	mov	dword ptr [rbp - 0xc], eax
	test	cl, 1
	jne	.label_1339
	jmp	.label_1393
.label_1536:
	mov	eax, 0x7ffffffe
	cmp	eax,  dword ptr [dword ptr [chars_per_column]]
	jl	.label_1496
	jmp	.label_1344
.label_1511:
	cmp	dword ptr [rbp - 4], 0
	jge	.label_1543
	mov	eax, 1
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_1351
	jmp	.label_1358
.label_1510:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	test	cl, 1
	jne	.label_1339
	jmp	.label_1378
.label_1551:
	mov	eax, 0x7ffffffe
	cmp	eax,  dword ptr [dword ptr [chars_per_column]]
	jl	.label_1453
	jmp	.label_1461
.label_1494:
	cmp	dword ptr [dword ptr [columns]],  -1
	jne	.label_1724
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1497
	jmp	.label_1501
.label_1670:
	mov	al, 1
	test	al, 1
	jne	.label_1525
	jmp	.label_1529
.label_1525:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1532
	jmp	.label_1536
.label_1532:
	cmp	dword ptr [dword ptr [chars_per_column]],  0x7fffffff
	jl	.label_1496
	jmp	.label_1344
.label_1402:
	movabs	rax, 0x8000000000000000
	movsxd	rcx,  dword ptr [dword ptr [columns]]
	cqo	
	idiv	rcx
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	cmp	rax, rcx
	jl	.label_1355
	jmp	.label_1346
.label_1571:
	cmp	dword ptr [rbp - 0xc], -1
	jne	.label_1550
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1513
	jmp	.label_1408
.label_1605:
	mov	eax, 0x7ffffffe
	mov	ecx, dword ptr [rbp - 4]
	mov	dx, cx
	movsx	ecx, dx
	cmp	eax, ecx
	jl	.label_1424
	jmp	.label_1498
.label_1684:
	movabs	rax, 0x8000000000000000
	movsxd	rcx,  dword ptr [dword ptr [columns]]
	cqo	
	idiv	rcx
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	cmp	rax, rcx
	jl	.label_1395
	jmp	.label_1400
.label_1625:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1626
	jmp	.label_1568
.label_1626:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_1444
	jmp	.label_1448
.label_1474:
	mov	al, 1
	test	al, 1
	jne	.label_1575
	jmp	.label_1628
.label_1575:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1683
	jmp	.label_1582
.label_1683:
	mov	al, 1
	test	al, 1
	jne	.label_1584
	jmp	.label_1708
.label_1584:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1588
	jmp	.label_1589
.label_1588:
	cmp	dword ptr [rbp - 4], 0x7fffffff
	jl	.label_1502
	jmp	.label_1553
.label_1649:
	cmp	dword ptr [rbp - 4], 0
	jge	.label_1594
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	jl	.label_1361
	jmp	.label_1396
.label_1600:
	movsxd	rax, dword ptr [rbp - 4]
	cmp	rax, 0
	jge	.label_1603
	mov	eax, 1
	mov	ecx, eax
	movsxd	rdx, dword ptr [rbp - 4]
	add	rdx, 1
	cmp	rcx, rdx
	jle	.label_1504
	jmp	.label_1506
.label_1567:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1616
	jmp	.label_1621
.label_1616:
	mov	al, 1
	test	al, 1
	jne	.label_1466
	jmp	.label_1624
.label_1466:
	movsxd	rax, dword ptr [rbp - 0xc]
	cmp	rax, 0
	jge	.label_1495
	movsxd	rax, dword ptr [rbp - 4]
	cmp	rax, 0
	jge	.label_1627
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	mov	qword ptr [rbp - 0x38], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x38]
	idiv	rsi
	cmp	rcx, rax
	jl	.label_1399
	jmp	.label_1403
.label_1570:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1638
	jmp	.label_1640
.label_1638:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1641
	jmp	.label_1631
.label_1641:
	mov	eax, dword ptr [rbp - 0xc]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_1644
	mov	eax, dword ptr [rbp - 4]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_1654
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 4]
	mov	dx, cx
	movsx	ecx, dx
	mov	esi, dword ptr [rbp - 0xc]
	mov	dx, si
	movsx	esi, dx
	cdq	
	idiv	esi
	cmp	ecx, eax
	jl	.label_1421
	jmp	.label_1423
.label_1549:
	cmp	dword ptr [rbp - 0xc], -1
	jne	.label_1705
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1376
	jmp	.label_1414
.label_1573:
	mov	eax, 0x7ffffffe
	mov	ecx, dword ptr [rbp - 4]
	mov	dl, cl
	movsx	ecx, dl
	cmp	eax, ecx
	jl	.label_1397
	jmp	.label_1404
.label_1722:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_1469
.label_1473:
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	imul	eax,  dword ptr [dword ptr [columns]]
	cmp	eax, 0x80000000
	jl	.label_1469
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	cmp	eax, ecx
	jge	.label_1610
.label_1469:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	mov	dword ptr [rbp - 4], ecx
	test	al, 1
	jne	.label_1339
	jmp	.label_1384
.label_1509:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1681
	jmp	.label_1523
.label_1681:
	mov	eax, dword ptr [rbp - 4]
	mov	cx, ax
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 4]
	mov	cx, dx
	movsx	edx, cx
	add	edx, 1
	cmp	eax, edx
	jle	.label_1424
	jmp	.label_1498
.label_1527:
	cmp	dword ptr [dword ptr [columns]],  0
	jge	.label_1685
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_1689
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	jl	.label_1469
	jmp	.label_1473
.label_1737:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1697
	jmp	.label_1699
.label_1697:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1700
	jmp	.label_1701
.label_1700:
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_1703
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_1702
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	dx, cx
	movsx	ecx, dx
	mov	esi,  dword ptr [dword ptr [columns]]
	mov	dx, si
	movsx	esi, dx
	cdq	
	idiv	esi
	cmp	ecx, eax
	jl	.label_1434
	jmp	.label_1443
.label_1724:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_1497
	jmp	.label_1501
.label_1526:
	movsxd	rax,  dword ptr [dword ptr [chars_per_column]]
	cmp	rax, 0
	jge	.label_1719
	mov	eax, 1
	mov	ecx, eax
	movsxd	rdx,  dword ptr [dword ptr [chars_per_column]]
	add	rdx, 1
	cmp	rcx, rdx
	jle	.label_1437
	jmp	.label_1476
.label_1680:
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	dl, cl
	movsx	ecx, dl
	cdq	
	idiv	ecx
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	sil, cl
	movsx	ecx, sil
	cmp	eax, ecx
	jl	.label_1483
.label_1487:
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	cl, al
	movsx	eax, cl
	mov	edx,  dword ptr [dword ptr [columns]]
	mov	cl, dl
	movsx	edx, cl
	imul	eax, edx
	cmp	eax, -0x80
	jl	.label_1483
	mov	eax, 0x7f
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	dl, cl
	movsx	ecx, dl
	mov	esi,  dword ptr [dword ptr [columns]]
	mov	dl, sil
	movsx	esi, dl
	imul	ecx, esi
	cmp	eax, ecx
	jge	.label_1740
.label_1483:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	dl, cl
	movsx	ecx, dl
	mov	esi,  dword ptr [dword ptr [columns]]
	mov	dl, sil
	movsx	esi, dl
	imul	ecx, esi
	mov	dl, cl
	movsx	ecx, dl
	mov	dword ptr [rbp - 4], ecx
	test	al, 1
	jne	.label_1339
	jmp	.label_1384
.label_1621:
	mov	al, 1
	test	al, 1
	jne	.label_1754
	jmp	.label_1693
.label_1754:
	movsxd	rax, dword ptr [rbp - 0xc]
	cmp	rax, 0
	jge	.label_1718
	movsxd	rax, dword ptr [rbp - 4]
	cmp	rax, 0
	jge	.label_1759
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	mov	qword ptr [rbp - 0x48], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x48]
	idiv	rsi
	cmp	rcx, rax
	jl	.label_1538
	jmp	.label_1664
.label_1374:
	mov	eax, 0x7fffffff
	cdq	
.label_2272:
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_1345
.label_1387:
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	imul	eax,  dword ptr [dword ptr [columns]]
	cmp	eax, 0xffff8000
	jl	.label_1345
	mov	eax, 0x7fff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	cmp	eax, ecx
	jge	.label_1360
.label_1345:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 4], ecx
	test	al, 1
	jne	.label_1339
	jmp	.label_1384
.label_1372:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rsi,  dword ptr [dword ptr [columns]]
	imul	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 4], eax
	test	cl, 1
	jne	.label_1339
	jmp	.label_1384
.label_1624:
	cmp	dword ptr [rbp - 0xc], 0
	jge	.label_1398
	cmp	dword ptr [rbp - 4], 0
	jge	.label_1571
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	jl	.label_1513
	jmp	.label_1408
.label_1705:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_1376
	jmp	.label_1414
.label_1654:
	mov	eax, dword ptr [rbp - 0xc]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, -1
	jne	.label_1505
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1421
	jmp	.label_1423
.label_1762:
	cmp	dword ptr [dword ptr [columns]],  -1
	jne	.label_1425
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1371
	jmp	.label_1381
.label_1719:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1430
	jmp	.label_1436
.label_1430:
	movsxd	rax,  dword ptr [dword ptr [chars_per_column]]
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	cmp	rax, rcx
	jle	.label_1437
	jmp	.label_1476
.label_1356:
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 0xc]
	mov	dl, cl
	movsx	ecx, dl
	cdq	
	idiv	ecx
	mov	ecx, dword ptr [rbp - 4]
	mov	sil, cl
	movsx	ecx, sil
	cmp	eax, ecx
	jl	.label_1429
.label_1433:
	mov	eax, dword ptr [rbp - 4]
	mov	cl, al
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 0xc]
	mov	cl, dl
	movsx	edx, cl
	imul	eax, edx
	cmp	eax, -0x80
	jl	.label_1429
	mov	eax, 0x7f
	mov	ecx, dword ptr [rbp - 4]
	mov	dl, cl
	movsx	ecx, dl
	mov	esi, dword ptr [rbp - 0xc]
	mov	dl, sil
	movsx	esi, dl
	imul	ecx, esi
	cmp	eax, ecx
	jge	.label_1456
.label_1429:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 4]
	mov	dl, cl
	movsx	ecx, dl
	mov	esi, dword ptr [rbp - 0xc]
	mov	dl, sil
	movsx	esi, dl
	imul	ecx, esi
	mov	dl, cl
	movsx	ecx, dl
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_1339
	jmp	.label_1352
.label_1634:
	cmp	dword ptr [rbp - 4], 0
	jge	.label_1481
	mov	eax, 1
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_1485
	jmp	.label_1491
.label_1533:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1492
	jmp	.label_1629
.label_1492:
	mov	eax, dword ptr [rbp - 4]
	mov	cl, al
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 4]
	mov	cl, dl
	movsx	edx, cl
	add	edx, 1
	cmp	eax, edx
	jle	.label_1397
	jmp	.label_1404
.label_1537:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	cmp	eax, 1
	jl	.label_1502
.label_1553:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	cmp	eax, 0x80000000
	jl	.label_1502
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_1510
.label_1502:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	mov	dword ptr [rbp - 8], ecx
	test	al, 1
	jne	.label_1339
	jmp	.label_1378
.label_1505:
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 0xc]
	mov	dx, cx
	movsx	ecx, dx
	cdq	
	idiv	ecx
	mov	ecx, dword ptr [rbp - 4]
	mov	si, cx
	movsx	ecx, si
	cmp	eax, ecx
	jl	.label_1421
	jmp	.label_1423
.label_1710:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 4]
	movsxd	rsi, dword ptr [rbp - 0xc]
	imul	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_1339
	jmp	.label_1352
.label_1701:
	cmp	dword ptr [dword ptr [columns]],  0
	jge	.label_1539
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_1541
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	jl	.label_1345
	jmp	.label_1387
.label_1589:
	mov	eax, 0x7ffffffe
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_1502
	jmp	.label_1553
.label_1657:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1555
	jmp	.label_1557
.label_1555:
	mov	eax, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_1558
	jmp	.label_1471
.label_1441:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	imul	eax, dword ptr [rbp - 0xc]
	mov	dl, al
	movsx	eax, dl
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_1339
	jmp	.label_1352
.label_1640:
	mov	al, 1
	test	al, 1
	jne	.label_1564
	jmp	.label_1567
.label_1564:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1752
	jmp	.label_1572
.label_1752:
	cmp	dword ptr [rbp - 0xc], 0
	jge	.label_1660
	cmp	dword ptr [rbp - 4], 0
	jge	.label_1717
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	jl	.label_1361
	jmp	.label_1396
.label_1702:
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, -1
	jne	.label_1583
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1434
	jmp	.label_1443
.label_1628:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1591
	jmp	.label_1593
.label_1591:
	mov	al, 1
	test	al, 1
	jne	.label_1596
	jmp	.label_1597
.label_1596:
	mov	al, 1
	test	al, 1
	jne	.label_1771
	jmp	.label_1600
.label_1771:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1602
	jmp	.label_1607
.label_1602:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 4]
	cmp	rcx, rax
	jl	.label_1504
	jmp	.label_1506
.label_1406:
	cmp	dword ptr [rbp - 0xc], -1
	jne	.label_1617
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1354
	jmp	.label_1365
.label_1672:
	cmp	dword ptr [dword ptr [chars_per_column]],  0
	jge	.label_1625
	mov	eax, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_1444
	jmp	.label_1448
.label_1764:
	mov	al, 1
	test	al, 1
	jne	.label_1632
	jmp	.label_1634
.label_1632:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1635
	jmp	.label_1637
.label_1635:
	cmp	dword ptr [rbp - 4], 0x7fffffff
	jl	.label_1485
	jmp	.label_1491
.label_1535:
	cmp	dword ptr [dword ptr [columns]],  -1
	jne	.label_1612
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1391
	jmp	.label_1542
.label_1539:
	cmp	dword ptr [dword ptr [columns]],  0
	jne	.label_1648
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1345
	jmp	.label_1387
.label_1711:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	test	cl, 1
	jne	.label_1339
	jmp	.label_1378
.label_1690:
	cmp	dword ptr [rbp - 4], 0
	jge	.label_1657
	mov	eax, 1
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_1558
	jmp	.label_1471
.label_1759:
	movsxd	rax, dword ptr [rbp - 0xc]
	cmp	rax, -1
	jne	.label_1662
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1538
	jmp	.label_1664
.label_1592:
	mov	al, 1
	test	al, 1
	jne	.label_1666
	jmp	.label_1667
.label_1666:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1668
	jmp	.label_1670
.label_1668:
	mov	al, 1
	test	al, 1
	jne	.label_1671
	jmp	.label_1672
.label_1671:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1673
	jmp	.label_1676
.label_1673:
	cmp	dword ptr [dword ptr [chars_per_column]],  0x7fffffff
	jl	.label_1444
	jmp	.label_1448
.label_1359:
	cmp	dword ptr [rbp - 4], 0
	jge	.label_1482
	mov	eax, 1
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_1370
	jmp	.label_1373
.label_1389:
	mov	eax, dword ptr [rbp - 4]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_1533
	mov	eax, 1
	mov	ecx, dword ptr [rbp - 4]
	mov	dl, cl
	movsx	ecx, dl
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_1397
	jmp	.label_1404
.label_1597:
	mov	al, 1
	test	al, 1
	jne	.label_1688
	jmp	.label_1690
.label_1688:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1692
	jmp	.label_1694
.label_1692:
	cmp	dword ptr [rbp - 4], 0x7fffffff
	jl	.label_1558
	jmp	.label_1471
.label_1773:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	imul	eax, dword ptr [rbp - 0xc]
	mov	dx, ax
	movsx	eax, dx
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_1339
	jmp	.label_1352
.label_1704:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_1416
	jmp	.label_1418
.label_1479:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	cl, al
	movsx	eax, cl
	add	eax, 1
	cmp	eax, 1
	jl	.label_1463
.label_1465:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	cl, al
	movsx	eax, cl
	add	eax, 1
	cmp	eax, -0x80
	jl	.label_1463
	mov	eax, 0x7f
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	dl, cl
	movsx	ecx, dl
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_1712
.label_1463:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	dl, cl
	movsx	ecx, dl
	add	ecx, 1
	mov	dl, cl
	movsx	ecx, dl
	mov	dword ptr [rbp - 0xc], ecx
	test	al, 1
	jne	.label_1339
	jmp	.label_1393
.label_1467:
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_1722
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	jl	.label_1469
	jmp	.label_1473
.label_1610:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	imul	eax,  dword ptr [dword ptr [columns]]
	mov	dword ptr [rbp - 4], eax
	test	cl, 1
	jne	.label_1339
	jmp	.label_1384
.label_1612:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_1391
	jmp	.label_1542
.label_1760:
	cmp	dword ptr [dword ptr [columns]],  0
	jne	.label_1741
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1371
	jmp	.label_1381
.label_1490:
	cmp	dword ptr [dword ptr [columns]],  0
	jne	.label_1746
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1497
	jmp	.label_1501
.label_1566:
	mov	eax, dword ptr [rbp - 0xc]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, -1
	jne	.label_1751
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1429
	jmp	.label_1433
.label_1709:
	movsxd	rax,  dword ptr [dword ptr [columns]]
	cmp	rax, 0
	jne	.label_1756
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1355
	jmp	.label_1346
.label_1450:
	mov	al, 1
	test	al, 1
	jne	.label_1767
	jmp	.label_1768
.label_1767:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1772
	jmp	.label_1774
.label_1772:
	cmp	dword ptr [dword ptr [chars_per_column]],  0x7fffffff
	jl	.label_1569
	jmp	.label_1341
.label_1576:
	mov	al, 1
	test	al, 1
	jne	.label_1343
	jmp	.label_1347
.label_1343:
	mov	al, 1
	test	al, 1
	jne	.label_1350
	jmp	.label_1415
.label_1350:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1357
	jmp	.label_1364
.label_1357:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	cmp	rcx, rax
	jl	.label_1366
	jmp	.label_1375
.label_1613:
	movsxd	rax, dword ptr [rbp - 4]
	cmp	rax, 0
	jge	.label_1377
	mov	eax, 1
	mov	ecx, eax
	movsxd	rdx, dword ptr [rbp - 4]
	add	rdx, 1
	cmp	rcx, rdx
	jle	.label_1383
	jmp	.label_1388
.label_1619:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_1391
.label_1542:
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	imul	eax,  dword ptr [dword ptr [columns]]
	cmp	eax, 0x80000000
	jl	.label_1391
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	cmp	eax, ecx
	jge	.label_1409
.label_1391:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	mov	dword ptr [rbp - 4], ecx
	test	al, 1
	jne	.label_1339
	jmp	.label_1384
.label_1677:
	cmp	dword ptr [rbp - 4], 0
	jge	.label_1682
	mov	eax, 1
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_1405
	jmp	.label_1428
.label_1748:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx,  dword ptr [dword ptr [chars_per_column]]
	add	rdx, 1
	mov	eax, edx
	mov	dword ptr [rbp - 0xc], eax
	test	cl, 1
	jne	.label_1339
	jmp	.label_1393
.label_1577:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_1361
	jmp	.label_1396
.label_1456:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	mov	dl, al
	movsx	eax, dl
	mov	esi, dword ptr [rbp - 0xc]
	mov	dl, sil
	movsx	esi, dl
	imul	eax, esi
	mov	dl, al
	movsx	eax, dl
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_1339
	jmp	.label_1352
.label_1462:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1455
	jmp	.label_1458
.label_1455:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	cx, ax
	movsx	eax, cx
	mov	edx,  dword ptr [dword ptr [chars_per_column]]
	mov	cx, dx
	movsx	edx, cx
	add	edx, 1
	cmp	eax, edx
	jle	.label_1452
	jmp	.label_1440
.label_1694:
	mov	eax, 0x7ffffffe
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_1558
	jmp	.label_1471
.label_1744:
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, -1
	jne	.label_1475
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1483
	jmp	.label_1487
.label_1650:
	movsxd	rax, dword ptr [rbp - 4]
	cmp	rax, 0
	jge	.label_1489
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	mov	qword ptr [rbp - 0x40], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x40]
	idiv	rsi
	cmp	rcx, rax
	jl	.label_1399
	jmp	.label_1403
.label_1622:
	cmp	dword ptr [rbp - 4], 0
	jge	.label_1508
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	jl	.label_1513
	jmp	.label_1408
.label_1608:
	mov	eax, 0x7ffffffe
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	dx, cx
	movsx	ecx, dx
	cmp	eax, ecx
	jl	.label_1452
	jmp	.label_1440
.label_1667:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1517
	jmp	.label_1576
.label_1517:
	mov	al, 1
	test	al, 1
	jne	.label_1736
	jmp	.label_1745
.label_1736:
	mov	al, 1
	test	al, 1
	jne	.label_1524
	jmp	.label_1526
.label_1524:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1528
	jmp	.label_1534
.label_1528:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	cmp	rcx, rax
	jl	.label_1437
	jmp	.label_1476
.label_1658:
	movsxd	rax, dword ptr [rbp - 4]
	add	rax, 1
	cmp	rax, 1
	jl	.label_1383
.label_1388:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 4]
	add	rcx, 1
	cmp	rcx, rax
	jl	.label_1383
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 4]
	add	rcx, 1
	cmp	rax, rcx
	jge	.label_1552
.label_1383:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 4]
	add	rcx, 1
	mov	edx, ecx
	mov	dword ptr [rbp - 8], edx
	test	al, 1
	jne	.label_1339
	jmp	.label_1378
.label_1409:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	imul	eax,  dword ptr [dword ptr [columns]]
	mov	dword ptr [rbp - 4], eax
	test	cl, 1
	jne	.label_1339
	jmp	.label_1384
.label_1468:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	cmp	eax, 1
	jl	.label_1411
.label_1413:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	cmp	eax, 0xffff8000
	jl	.label_1411
	mov	eax, 0x7fff
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_1574
.label_1411:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 0xc], ecx
	test	al, 1
	jne	.label_1339
	jmp	.label_1393
.label_1364:
	movabs	rax, 0x7ffffffffffffffe
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	cmp	rax, rcx
	jl	.label_1366
	jmp	.label_1375
.label_1515:
	movsxd	rax, dword ptr [rbp - 4]
	add	rax, 1
	cmp	rax, 1
	jl	.label_1504
.label_1506:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 4]
	add	rcx, 1
	cmp	rcx, rax
	jl	.label_1504
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 4]
	add	rcx, 1
	cmp	rax, rcx
	jge	.label_1604
.label_1504:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 4]
	add	rcx, 1
	mov	edx, ecx
	mov	dword ptr [rbp - 8], edx
	test	al, 1
	jne	.label_1339
	jmp	.label_1378
.label_1713:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	mov	dx, ax
	movsx	eax, dx
	mov	esi, dword ptr [rbp - 0xc]
	mov	dx, si
	movsx	esi, dx
	imul	eax, esi
	mov	dx, ax
	movsx	eax, dx
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_1339
	jmp	.label_1352
.label_1572:
	cmp	dword ptr [rbp - 0xc], 0
	jge	.label_1630
	cmp	dword ptr [rbp - 4], 0
	jge	.label_1549
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	jl	.label_1376
	jmp	.label_1414
.label_1557:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	cmp	eax, 1
	jl	.label_1558
.label_1471:
	movabs	rax, 0x8000000000000000
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_1558
	movabs	rax, 0x7fffffffffffffff
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	movsxd	rdx, ecx
	cmp	rax, rdx
	jge	.label_1646
.label_1558:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 4]
	add	rcx, 1
	mov	edx, ecx
	mov	dword ptr [rbp - 8], edx
	test	al, 1
	jne	.label_1339
	jmp	.label_1378
.label_1377:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1653
	jmp	.label_1658
.label_1653:
	movsxd	rax, dword ptr [rbp - 4]
	movsxd	rcx, dword ptr [rbp - 4]
	add	rcx, 1
	cmp	rax, rcx
	jle	.label_1383
	jmp	.label_1388
.label_1655:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	cmp	eax, 1
	jl	.label_1453
.label_1461:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_1453
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	movsxd	rdx, ecx
	cmp	rax, rdx
	jge	.label_1669
.label_1453:
	mov	al, 1
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	mov	edx, ecx
	mov	dword ptr [rbp - 0xc], edx
	test	al, 1
	jne	.label_1339
	jmp	.label_1393
.label_1427:
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	dx, cx
	movsx	ecx, dx
	cdq	
	idiv	ecx
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	si, cx
	movsx	ecx, si
	cmp	eax, ecx
	jl	.label_1434
.label_1443:
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	cx, ax
	movsx	eax, cx
	mov	edx,  dword ptr [dword ptr [columns]]
	mov	cx, dx
	movsx	edx, cx
	imul	eax, edx
	cmp	eax, 0xffff8000
	jl	.label_1434
	mov	eax, 0x7fff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	dx, cx
	movsx	ecx, dx
	mov	esi,  dword ptr [dword ptr [columns]]
	mov	dx, si
	movsx	esi, dx
	imul	ecx, esi
	cmp	eax, ecx
	jge	.label_1687
.label_1434:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	dx, cx
	movsx	ecx, dx
	mov	esi,  dword ptr [dword ptr [columns]]
	mov	dx, si
	movsx	esi, dx
	imul	ecx, esi
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 4], ecx
	test	al, 1
	jne	.label_1339
	jmp	.label_1384
.label_1460:
	cmp	dword ptr [dword ptr [columns]],  -1
	jne	.label_1704
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1416
	jmp	.label_1418
.label_1615:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	cmp	eax, 1
	jl	.label_1351
.label_1358:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	cmp	eax, 0x80000000
	jl	.label_1351
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_1711
.label_1351:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	mov	dword ptr [rbp - 8], ecx
	test	al, 1
	jne	.label_1339
	jmp	.label_1378
.label_1583:
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	dx, cx
	movsx	ecx, dx
	cdq	
	idiv	ecx
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	si, cx
	movsx	ecx, si
	cmp	eax, ecx
	jl	.label_1434
	jmp	.label_1443
.label_1519:
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_1725
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1432
	jmp	.label_1438
.label_1731:
	movsxd	rax, dword ptr [rbp - 4]
	cmp	rax, 0
	jge	.label_1580
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	mov	qword ptr [rbp - 0x50], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x50]
	idiv	rsi
	cmp	rcx, rax
	jl	.label_1538
	jmp	.label_1664
.label_1410:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_1432
.label_1438:
	movabs	rax, 0x8000000000000000
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_1432
	movabs	rax, 0x7fffffffffffffff
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	movsxd	rdx, ecx
	cmp	rax, rdx
	jge	.label_1747
.label_1432:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	imul	rcx, rdx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x10], esi
	test	al, 1
	jne	.label_1339
	jmp	.label_1352
.label_1508:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_1513
.label_1408:
	movabs	rax, 0x8000000000000000
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_1513
	movabs	rax, 0x7fffffffffffffff
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	movsxd	rdx, ecx
	cmp	rax, rdx
	jge	.label_1769
.label_1513:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	imul	rcx, rdx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x10], esi
	test	al, 1
	jne	.label_1339
	jmp	.label_1352
.label_1516:
	mov	eax, 0x7ffffffe
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_1351
	jmp	.label_1358
.label_1639:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rsi,  dword ptr [dword ptr [columns]]
	imul	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 4], eax
	test	cl, 1
	jne	.label_1339
.label_1384:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1493
	jmp	.label_1379
.label_1493:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1382
	jmp	.label_1385
.label_1382:
	mov	al, 1
	test	al, 1
	jne	.label_1386
	jmp	.label_1389
.label_1386:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1392
	jmp	.label_1573
.label_1392:
	mov	eax, dword ptr [rbp - 4]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0x7fffffff
	jl	.label_1397
	jmp	.label_1404
.label_1763:
	cmp	dword ptr [dword ptr [chars_per_column]],  0
	jge	.label_1407
	mov	eax, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_1411
	jmp	.label_1413
.label_1368:
	mov	eax, 0x7ffffffe
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_1370
	jmp	.label_1373
.label_1631:
	cmp	dword ptr [rbp - 0xc], 0
	jge	.label_1419
	cmp	dword ptr [rbp - 4], 0
	jge	.label_1422
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	jl	.label_1656
	jmp	.label_1417
.label_1743:
	cmp	dword ptr [rbp - 0xc], -1
	jne	.label_1716
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1432
	jmp	.label_1438
.label_1544:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 4]
	add	rdx, 1
	mov	eax, edx
	mov	dword ptr [rbp - 8], eax
	test	cl, 1
	jne	.label_1339
.label_1378:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1442
	jmp	.label_1445
.label_1442:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1446
	jmp	.label_1450
.label_1446:
	mov	al, 1
	test	al, 1
	jne	.label_1451
	jmp	.label_1454
.label_1451:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1457
	jmp	.label_1459
.label_1457:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0x7fffffff
	jl	.label_1463
	jmp	.label_1465
.label_1685:
	cmp	dword ptr [dword ptr [columns]],  0
	jne	.label_1467
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1469
	jmp	.label_1473
.label_1585:
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jne	.label_1477
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1483
	jmp	.label_1487
.label_1661:
	cmp	dword ptr [dword ptr [columns]],  0
	jge	.label_1490
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_1494
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	jl	.label_1497
	jmp	.label_1501
.label_1607:
	movabs	rax, 0x7ffffffffffffffe
	movsxd	rcx, dword ptr [rbp - 4]
	cmp	rax, rcx
	jl	.label_1504
	jmp	.label_1506
.label_1486:
	mov	eax, dword ptr [rbp - 4]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_1509
	mov	eax, 1
	mov	ecx, dword ptr [rbp - 4]
	mov	dx, cx
	movsx	ecx, dx
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_1424
	jmp	.label_1498
.label_1693:
	cmp	dword ptr [rbp - 0xc], 0
	jge	.label_1519
	cmp	dword ptr [rbp - 4], 0
	jge	.label_1743
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	jl	.label_1432
	jmp	.label_1438
.label_1426:
	mov	eax, dword ptr [rbp - 4]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_1356
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 4]
	mov	dl, cl
	movsx	ecx, dl
	mov	esi, dword ptr [rbp - 0xc]
	mov	dl, sil
	movsx	esi, dl
	cdq	
	idiv	esi
	cmp	ecx, eax
	jl	.label_1429
	jmp	.label_1433
.label_1425:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_1371
	jmp	.label_1381
.label_1646:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 4]
	add	rdx, 1
	mov	eax, edx
	mov	dword ptr [rbp - 8], eax
	test	cl, 1
	jne	.label_1339
	jmp	.label_1378
.label_1740:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	dl, al
	movsx	eax, dl
	mov	esi,  dword ptr [dword ptr [columns]]
	mov	dl, sil
	movsx	esi, dl
	imul	eax, esi
	mov	dl, al
	movsx	eax, dl
	mov	dword ptr [rbp - 4], eax
	test	cl, 1
	jne	.label_1339
	jmp	.label_1384
.label_1734:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_1469
	jmp	.label_1473
.label_1580:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0xc]
	cqo	
	idiv	rcx
	movsxd	rcx, dword ptr [rbp - 4]
	cmp	rax, rcx
	jl	.label_1538
.label_1664:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	imul	rcx, rdx
	cmp	rcx, rax
	jl	.label_1538
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	imul	rcx, rdx
	cmp	rax, rcx
	jge	.label_1586
.label_1538:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	imul	rcx, rdx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x10], esi
	test	al, 1
	jne	.label_1339
	jmp	.label_1352
.label_1637:
	mov	eax, 0x7ffffffe
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_1485
	jmp	.label_1491
.label_1620:
	movabs	rax, 0x7ffffffffffffffe
	movsxd	rcx, dword ptr [rbp - 4]
	cmp	rax, rcx
	jl	.label_1383
	jmp	.label_1388
.label_1543:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1420
	jmp	.label_1615
.label_1420:
	mov	eax, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_1351
	jmp	.label_1358
.label_1691:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	cmp	eax, 1
	jl	.label_1370
.label_1373:
	movabs	rax, 0x8000000000000000
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_1370
	movabs	rax, 0x7fffffffffffffff
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	movsxd	rdx, ecx
	cmp	rax, rdx
	jge	.label_1544
.label_1370:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 4]
	add	rcx, 1
	mov	edx, ecx
	mov	dword ptr [rbp - 8], edx
	test	al, 1
	jne	.label_1339
	jmp	.label_1378
.label_1682:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1642
	jmp	.label_1643
.label_1642:
	mov	eax, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_1405
	jmp	.label_1428
.label_1730:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	mov	dx, ax
	movsx	eax, dx
	add	eax, 1
	mov	dx, ax
	movsx	eax, dx
	mov	dword ptr [rbp - 8], eax
	test	cl, 1
	jne	.label_1339
	jmp	.label_1378
.label_1723:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	imul	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_1339
	jmp	.label_1352
.label_1769:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 4]
	movsxd	rsi, dword ptr [rbp - 0xc]
	imul	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_1339
	jmp	.label_1352
.label_1390:
	movsxd	rax,  dword ptr [dword ptr [lines_per_body]]
	cmp	rax, 0
	jge	.label_1663
	movabs	rax, 0x8000000000000000
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	mov	qword ptr [rbp - 0x30], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x30]
	idiv	rsi
	cmp	rcx, rax
	jl	.label_1395
	jmp	.label_1400
.label_1534:
	movabs	rax, 0x7ffffffffffffffe
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	cmp	rax, rcx
	jl	.label_1437
	jmp	.label_1476
.label_1477:
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_1680
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	dl, cl
	movsx	ecx, dl
	mov	esi,  dword ptr [dword ptr [columns]]
	mov	dl, sil
	movsx	esi, dl
	cdq	
	idiv	esi
	cmp	ecx, eax
	jl	.label_1483
	jmp	.label_1487
.label_1687:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	dx, ax
	movsx	eax, dx
	mov	esi,  dword ptr [dword ptr [columns]]
	mov	dx, si
	movsx	esi, dx
	imul	eax, esi
	mov	dx, ax
	movsx	eax, dx
	mov	dword ptr [rbp - 4], eax
	test	cl, 1
	jne	.label_1339
	jmp	.label_1384
.label_1629:
	mov	eax, dword ptr [rbp - 4]
	mov	cl, al
	movsx	eax, cl
	add	eax, 1
	cmp	eax, 1
	jl	.label_1397
.label_1404:
	mov	eax, dword ptr [rbp - 4]
	mov	cl, al
	movsx	eax, cl
	add	eax, 1
	cmp	eax, -0x80
	jl	.label_1397
	mov	eax, 0x7f
	mov	ecx, dword ptr [rbp - 4]
	mov	dl, cl
	movsx	ecx, dl
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_1674
.label_1397:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 4]
	mov	dl, cl
	movsx	ecx, dl
	add	ecx, 1
	mov	dl, cl
	movsx	ecx, dl
	mov	dword ptr [rbp - 8], ecx
	test	al, 1
	jne	.label_1339
	jmp	.label_1378
.label_1581:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dx, ax
	movsx	eax, dx
	mov	dword ptr [rbp - 8], eax
	test	cl, 1
	jne	.label_1339
	jmp	.label_1378
.label_1529:
	cmp	dword ptr [dword ptr [chars_per_column]],  0
	jge	.label_1715
	mov	eax, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_1496
	jmp	.label_1344
.label_1574:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	mov	dx, ax
	movsx	eax, dx
	mov	dword ptr [rbp - 0xc], eax
	test	cl, 1
	jne	.label_1339
	jmp	.label_1393
.label_1746:
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_1726
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	jl	.label_1497
	jmp	.label_1501
.label_1689:
	cmp	dword ptr [dword ptr [columns]],  -1
	jne	.label_1734
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1469
	jmp	.label_1473
.label_1367:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_1371
.label_1381:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_1371
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	movsxd	rdx, ecx
	cmp	rax, rdx
	jge	.label_1749
.label_1371:
	mov	al, 1
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	imul	rcx, rdx
	mov	esi, ecx
	mov	dword ptr [rbp - 4], esi
	test	al, 1
	jne	.label_1339
	jmp	.label_1384
.label_2260:
	movabs	rdi, OFFSET FLAT:label_1834
	mov	byte ptr [rbp - 0x15], 1
	mov	byte ptr [rbp - 0x16], 1
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xa8], rax
	call	gettext
	mov	esi, 1
	lea	rdx, [rbp - 0x44]
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rcx, rax
	call	getoptnum
	test	byte ptr [byte ptr [truncate_lines]],  1
	jne	.label_1783
	mov	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [dword ptr [chars_per_line]],  eax
.label_1783:
	jmp	.label_1782
.label_2254:
	mov	byte ptr [byte ptr [numbered_lines]],  1
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_1790
	mov	esi, 0x6e
	movabs	rdx, OFFSET FLAT:number_separator
	movabs	rcx, OFFSET FLAT:chars_per_number
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	getoptarg
.label_1790:
	jmp	.label_1782
.label_2236:
	xor	edi, edi
	call	usage
.label_2251:
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_1810
	mov	esi, 0x69
	movabs	rdx, OFFSET FLAT:output_tab_char
	movabs	rcx, OFFSET FLAT:chars_per_output_tab
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	getoptarg
.label_1810:
	mov	byte ptr [byte ptr [tabify_output]],  1
	jmp	.label_1782
.label_1798:
	xor	eax, eax
	mov	ecx, 1
	mov	dl,  byte ptr [byte ptr [failed_opens]]
	test	dl, 1
	cmovne	eax, ecx
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4118d3
	.globl sub_4118d3
	.type sub_4118d3, @function
sub_4118d3:

	nop	dword ptr [rax + rax]
.label_1826:
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_1832
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x38]
	jb	.label_1836
	lea	rsi, [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x28]
	call	x2realloc
	mov	qword ptr [rbp - 0x28], rax
.label_1836:
	mov	eax, dword ptr [rbp - 0x40]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	mov	byte ptr [rsi + rdx], cl
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	byte ptr [rsi + rdx], 0
	jmp	.label_1781
.label_2257:
	mov	byte ptr [rbp - 0x15], 1
	mov	byte ptr [rbp - 0x17], 1
	test	byte ptr [byte ptr [use_col_separator]],  1
	jne	.label_1796
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_1796
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	separator_string
.label_1796:
	jmp	.label_1782
.label_2250:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [custom_header]],  rax
	jmp	.label_1782
.label_1814:
	mov	byte ptr [byte ptr [join_lines]],  1
.label_1824:
	jmp	.label_1816
.label_2240:
	mov	byte ptr [byte ptr [join_lines]],  1
	jmp	.label_1782
.label_2247:
	mov	byte ptr [byte ptr [use_cntrl_prefix]],  1
	jmp	.label_1782
.label_2244:
	movabs	rdi, OFFSET FLAT:label_1838
	mov	byte ptr [rbp - 0x16], 0
	mov	byte ptr [byte ptr [truncate_lines]],  1
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xb0], rax
	call	gettext
	mov	esi, 1
	movabs	rdx, OFFSET FLAT:chars_per_line
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rcx, rax
	call	getoptnum
	jmp	.label_1782
.label_2256:
	mov	byte ptr [byte ptr [ignore_failed_opens]],  1
	jmp	.label_1782
.label_1835:
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_1778
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x20]
	call	print_files
	jmp	.label_1787
.label_2249:
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_1788
	mov	esi, 0x65
	movabs	rdx, OFFSET FLAT:input_tab_char
	movabs	rcx, OFFSET FLAT:chars_per_input_tab
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	getoptarg
.label_1788:
	mov	byte ptr [byte ptr [untabify_input]],  1
	jmp	.label_1782
.label_1806:
	test	byte ptr [rbp - 0x15], 1
	je	.label_1805
	test	byte ptr [rbp - 0x16], 1
	je	.label_1808
	test	byte ptr [byte ptr [parallel_files]],  1
	jne	.label_1837
	test	byte ptr [byte ptr [explicit_columns]],  1
	je	.label_1814
.label_1837:
	mov	byte ptr [byte ptr [truncate_lines]],  1
	test	byte ptr [rbp - 0x17], 1
	je	.label_1818
	mov	byte ptr [byte ptr [use_col_separator]],  1
.label_1818:
	jmp	.label_1824
.label_1830:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1825
	mov	rdi, qword ptr [rbp - 0x28]
	call	parse_column_count
	mov	rdi, qword ptr [rbp - 0x28]
	call	free
.label_1825:
	cmp	qword ptr [word ptr [date_format]],  0
	jne	.label_1831
	movabs	rdi, OFFSET FLAT:label_1833
	call	getenv
	xor	ecx, ecx
	mov	dl, cl
	cmp	rax, 0
	mov	byte ptr [rbp - 0xb9], dl
	je	.label_1819
	mov	edi, 2
	call	hard_locale
	xor	al, 0xff
	mov	byte ptr [rbp - 0xb9], al
.label_1819:
	mov	al, byte ptr [rbp - 0xb9]
	movabs	rcx, OFFSET FLAT:label_1785
	movabs	rdx, OFFSET FLAT:label_1786
	test	al, 1
	cmovne	rcx, rdx
	mov	qword ptr [word ptr [date_format]],  rcx
.label_1831:
	movabs	rdi, OFFSET FLAT:label_14
	call	getenv
	mov	rdi, rax
	call	tzalloc
	mov	qword ptr [word ptr [localtz]],  rax
	cmp	qword ptr [word ptr [first_page_number]],  0
	jne	.label_1821
	mov	qword ptr [word ptr [first_page_number]],  1
.label_1821:
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_1811
	test	byte ptr [byte ptr [explicit_columns]],  1
	je	.label_1811
	movabs	rdi, OFFSET FLAT:label_1817
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_1839:
	mov	byte ptr [byte ptr [use_col_separator]],  1
.label_1789:
	jmp	.label_1784
.label_1784:
	jmp	.label_1828
.label_1828:
	jmp	.label_1816
.label_1816:
	jmp	.label_1805
.label_1805:
	jmp	.label_1813
.label_1813:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_1822
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	edx, dword ptr [rbp - 0x14]
	mov	esi, edx
	add	esi, 1
	mov	dword ptr [rbp - 0x14], esi
	mov	edx, edx
	mov	ecx, edx
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi + rcx*8], rax
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	mov	dword ptr [dword ptr [optind]],  eax
	jmp	.label_1813
.label_2239:
	mov	byte ptr [byte ptr [use_form_feed]],  1
	jmp	.label_1782
.label_2235:
	movabs	rsi, OFFSET FLAT:label_35
	movabs	rdx, OFFSET FLAT:label_1791
	movabs	r8, OFFSET FLAT:label_1792
	movabs	r9, OFFSET FLAT:label_1793
	xor	eax, eax
	mov	ecx, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	r10,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0xb8], rcx
	mov	rcx, r10
	mov	qword ptr [rsp], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_2255:
	movabs	rdi, OFFSET FLAT:label_1815
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xa0], rax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:chars_per_margin
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rcx, rax
	call	getoptnum
	jmp	.label_1782
.label_2246:
	mov	byte ptr [byte ptr [balance_columns]],  1
	jmp	.label_1782
.label_2259:
	mov	byte ptr [byte ptr [use_esc_sequence]],  1
	jmp	.label_1782
.label_1832:
	mov	qword ptr [rbp - 0x30], 0
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, 0x83
	mov	ecx, eax
	sub	eax, 0x104
	mov	qword ptr [rbp - 0x78], rcx
	mov	dword ptr [rbp - 0x7c], eax
	ja	.label_1799
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1779]]
	jmp	rcx
.label_2253:
	mov	byte ptr [byte ptr [parallel_files]],  1
	mov	byte ptr [byte ptr [storing_columns]],  0
	jmp	.label_1782
.label_2238:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [date_format]],  rax
	jmp	.label_1782
.label_2245:
	mov	byte ptr [byte ptr [print_across_flag]],  1
	mov	byte ptr [byte ptr [storing_columns]],  0
	jmp	.label_1782
.label_1802:
	jmp	.label_1803
.label_1803:
	jmp	.label_1782
.label_1811:
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_1806
	test	byte ptr [byte ptr [print_across_flag]],  1
	je	.label_1806
	movabs	rdi, OFFSET FLAT:label_1777
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_2242:
	movabs	rax, OFFSET FLAT:label_152
	mov	byte ptr [rbp - 0x17], 0
	mov	qword ptr [word ptr [col_sep_string]],  rax
	mov	dword ptr [dword ptr [col_sep_length]],  0
	mov	byte ptr [byte ptr [use_col_separator]],  1
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_1820
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	separator_string
.label_1820:
	jmp	.label_1782
.label_1822:
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_1835
	xor	edi, edi
	xor	eax, eax
	mov	esi, eax
	call	print_files
	jmp	.label_1780
.label_1827:
	jmp	.label_1787
.label_1787:
	jmp	.label_1780
.label_1780:
	call	cleanup
	test	byte ptr [byte ptr [have_read_stdin]],  1
	je	.label_1798
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_1798
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_1795
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc0], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0xc0]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_2252:
	movabs	rdi, OFFSET FLAT:label_1807
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x90], rax
	call	gettext
	mov	esi, 1
	movabs	rdx, OFFSET FLAT:lines_per_page
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rcx, rax
	call	getoptnum
	jmp	.label_1782
.label_2243:
	mov	byte ptr [byte ptr [extremities]],  0
	mov	byte ptr [byte ptr [keep_FF]],  0
	jmp	.label_1782
.label_1778:
	mov	dword ptr [rbp - 0x48], 0
.label_1797:
	mov	eax, dword ptr [rbp - 0x48]
	cmp	eax, dword ptr [rbp - 0x14]
	jae	.label_1827
	mov	edi, 1
	mov	eax, dword ptr [rbp - 0x48]
	mov	ecx, eax
	shl	rcx, 3
	add	rcx, qword ptr [rbp - 0x20]
	mov	rsi, rcx
	call	print_files
	mov	eax, dword ptr [rbp - 0x48]
	add	eax, 1
	mov	dword ptr [rbp - 0x48], eax
	jmp	.label_1797
	.section	.text
	.align	16
	#Procedure 0x411ef1

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x15], 0
	mov	byte ptr [rbp - 0x16], 0
	mov	byte ptr [rbp - 0x17], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x38], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_152
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_1840
	movabs	rsi, OFFSET FLAT:label_1841
	mov	qword ptr [rbp - 0x50], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_1840
	mov	qword ptr [rbp - 0x58], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x60], rax
	call	atexit
	mov	dword ptr [rbp - 0x14], 0
	cmp	dword ptr [rbp - 8], 1
	mov	dword ptr [rbp - 0x64], eax
	jle	.label_1842
	mov	eax, 8
	mov	esi, eax
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 1
	movsxd	rdi, eax
	call	xnmalloc
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1812
.label_2261:
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	parse_column_count
	mov	rdi, qword ptr [rbp - 0x28]
	call	free
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_1782
.label_2248:
	mov	byte ptr [byte ptr [double_space]],  1
	jmp	.label_1782
.label_1782:
	jmp	.label_1781
.label_2241:
	movabs	rdi, OFFSET FLAT:label_1776
	mov	byte ptr [byte ptr [skip_count]],  0
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x98], rax
	call	gettext
	mov	esi, 0x80000000
	movabs	rdx, OFFSET FLAT:start_line_num
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, rax
	call	getoptnum
	jmp	.label_1782
.label_2262:
	cmp	qword ptr [word ptr [optarg]],  0
	jne	.label_1800
	movabs	rdi, OFFSET FLAT:label_1804
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_1842:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x70], rcx
	jmp	.label_1812
.label_1812:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x20], rax
.label_1781:
	movabs	rdx, OFFSET FLAT:short_options
	movabs	rcx, OFFSET FLAT:long_options
	lea	r8, [rbp - 0x3c]
	mov	dword ptr [rbp - 0x3c], 0xffffffff
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x40], eax
	cmp	dword ptr [rbp - 0x40], -1
	jne	.label_1826
	jmp	.label_1830
.label_1808:
	test	byte ptr [byte ptr [use_col_separator]],  1
	jne	.label_1828
	test	byte ptr [rbp - 0x17], 1
	je	.label_1784
	test	byte ptr [byte ptr [parallel_files]],  1
	jne	.label_1801
	test	byte ptr [byte ptr [explicit_columns]],  1
	je	.label_1784
.label_1801:
	test	byte ptr [byte ptr [truncate_lines]],  1
	jne	.label_1839
	mov	byte ptr [byte ptr [join_lines]],  1
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jle	.label_1823
	mov	byte ptr [byte ptr [use_col_separator]],  1
.label_1823:
	jmp	.label_1789
.label_2237:
	cmp	qword ptr [word ptr [first_page_number]],  0
	jne	.label_1794
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2b
	jne	.label_1794
	mov	edi, 0xfffffffe
	mov	esi, 0x2b
	mov	rax,  qword ptr [word ptr [optarg]]
	add	rax, 1
	mov	rdx, rax
	call	first_last_page
	test	al, 1
	jne	.label_1809
.label_1794:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	edx, ecx
	add	edx, 1
	mov	dword ptr [rbp - 0x14], edx
	mov	ecx, ecx
	mov	esi, ecx
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi + rsi*8], rax
.label_1809:
	jmp	.label_1782
.label_1799:
	mov	edi, 1
	call	usage
.label_1800:
	xor	esi, esi
	mov	edi, dword ptr [rbp - 0x3c]
	mov	rdx,  qword ptr [word ptr [optarg]]
	call	first_last_page
	test	al, 1
	jne	.label_1802
	movabs	rdi, OFFSET FLAT:label_1829
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x88], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_2258:
	mov	byte ptr [byte ptr [extremities]],  0
	mov	byte ptr [byte ptr [keep_FF]],  1
	jmp	.label_1782
	.section	.text
	.align	16
	#Procedure 0x412210

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
	#Procedure 0x41223c
	.globl sub_41223c
	.type sub_41223c, @function
sub_41223c:

	nop	dword ptr [rax]
.label_1843:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41224a
	.globl sub_41224a
	.type sub_41224a, @function
sub_41224a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412250

	.globl memcpy_uppcase
	.type memcpy_uppcase, @function
memcpy_uppcase:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_1844:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	cmp	rax, 0
	jbe	.label_1843
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rcx + rax]
	call	toupper
	mov	dl, al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + rcx], dl
	jmp	.label_1844
.label_1846:
	movabs	rax, OFFSET FLAT:label_986
	movabs	rcx, OFFSET FLAT:label_1011
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_1849:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4122ca
	.globl sub_4122ca
	.type sub_4122ca, @function
sub_4122ca:

	nop	dword ptr [rax + rax]
.label_1851:
	movabs	rsi, OFFSET FLAT:label_1845
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1846
	movabs	rax, OFFSET FLAT:label_1847
	movabs	rcx, OFFSET FLAT:label_1848
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1849
.label_1850:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_1854
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1851
	movabs	rax, OFFSET FLAT:label_1852
	movabs	rcx, OFFSET FLAT:label_1853
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1849
	.section	.text
	.align	16
	#Procedure 0x412369

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
	je	.label_1850
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1849
	.section	.text
	.align	16
	#Procedure 0x4123a0
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
	#Procedure 0x4123bf
	.globl sub_4123bf
	.type sub_4123bf, @function
sub_4123bf:

	nop	
.label_1856:
	mov	dword ptr [dword ptr [files_ready_to_read]],  1
.label_1857:
	jmp	.label_1855
.label_1855:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4123d2
	.globl sub_4123d2
	.type sub_4123d2, @function
sub_4123d2:

	nop	
.label_1861:
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_1855
	mov	rax,  qword ptr [word ptr [column_vector]]
	cmp	dword ptr [rax + 0x10], 3
	jne	.label_1856
	mov	dword ptr [dword ptr [files_ready_to_read]],  0
	jmp	.label_1857
	.section	.text
	.align	16
	#Procedure 0x412403

	.globl reset_status
	.type reset_status, @function
reset_status:
	push	rbp
	mov	rbp, rsp
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	dword ptr [rbp - 4], eax
	mov	rcx,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x10], rcx
.label_1859:
	cmp	dword ptr [rbp - 4], 0
	je	.label_1861
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x10], 2
	jne	.label_1860
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x10], 0
	mov	ecx,  dword ptr [dword ptr [files_ready_to_read]]
	add	ecx, 1
	mov	dword ptr [dword ptr [files_ready_to_read]],  ecx
.label_1860:
	jmp	.label_1858
.label_1858:
	mov	eax, dword ptr [rbp - 4]
	add	eax, -1
	mov	dword ptr [rbp - 4], eax
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_1859
	.section	.text
	.align	16
	#Procedure 0x412470
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1862
	jmp	.label_1864
.label_1864:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1863
.label_1862:
	mov	byte ptr [rbp - 1], 0
.label_1863:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41249f
	.globl sub_41249f
	.type sub_41249f, @function
sub_41249f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4124a0

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
	jne	.label_1865
	test	byte ptr [rbp - 0x13], 1
	je	.label_1867
	test	byte ptr [rbp - 0x11], 1
	jne	.label_1865
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_1867
.label_1865:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_1868
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1868:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1866
.label_1867:
	mov	dword ptr [rbp - 4], 0
.label_1866:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412549
	.globl sub_412549
	.type sub_412549, @function
sub_412549:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x412550
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
	#Procedure 0x412587
	.globl sub_412587
	.type sub_412587, @function
sub_412587:

	nop	word ptr [rax + rax]
.label_1870:
	mov	byte ptr [rbp - 1], 0
.label_1871:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41259e
	.globl sub_41259e
	.type sub_41259e, @function
sub_41259e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4125ac
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1870
	jmp	.label_1869
.label_1869:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1871
.label_1887:
	jmp	.label_1875
.label_1875:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_1890
.label_1874:
	mov	dword ptr [rbp - 4], 1
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x20], rax
.label_1890:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	cmp	eax, dword ptr [rbp - 0x14]
	mov	byte ptr [rbp - 0x21], cl
	jg	.label_1872
	cmp	dword ptr [dword ptr [files_ready_to_read]],  0
	setne	al
	mov	byte ptr [rbp - 0x21], al
.label_1872:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_1882
	jmp	.label_1886
.label_1882:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	dword ptr [rcx + 0x28], eax
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	dword ptr [rbp - 8], eax
.label_1881:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 8], 0
	mov	byte ptr [rbp - 0x22], cl
	je	.label_1873
	cmp	dword ptr [dword ptr [files_ready_to_read]],  0
	setne	al
	mov	byte ptr [rbp - 0x22], al
.label_1873:
	mov	al, byte ptr [rbp - 0x22]
	test	al, 1
	jne	.label_1883
	jmp	.label_1887
.label_1883:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	dword ptr [rax + 0x10], 0
	jne	.label_1877
	mov	dword ptr [dword ptr [input_position]],  0
	mov	rdi, qword ptr [rbp - 0x20]
	call	read_line
	test	al, 1
	jne	.label_1876
	mov	rdi, qword ptr [rbp - 0x20]
	call	read_rest_of_line
.label_1876:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	dword ptr [rax + 0x10], 0
	je	.label_1884
	mov	eax, dword ptr [rbp - 0x10]
	cmp	eax,  dword ptr [dword ptr [buff_current]]
	je	.label_1888
.label_1884:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x2c]
	add	ecx, 1
	mov	dword ptr [rax + 0x2c], ecx
	mov	ecx, dword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0xc]
	mov	eax, edx
	mov	rsi,  qword ptr [word ptr [line_vector]]
	mov	dword ptr [rsi + rax*4], ecx
	mov	ecx,  dword ptr [dword ptr [input_position]]
	mov	edx, dword ptr [rbp - 0xc]
	mov	edi, edx
	add	edi, 1
	mov	dword ptr [rbp - 0xc], edi
	mov	edx, edx
	mov	eax, edx
	mov	rsi,  qword ptr [word ptr [end_vector]]
	mov	dword ptr [rsi + rax*4], ecx
	mov	ecx,  dword ptr [dword ptr [buff_current]]
	mov	dword ptr [rbp - 0x10], ecx
.label_1888:
	jmp	.label_1877
.label_1877:
	jmp	.label_1879
.label_1879:
	mov	eax, dword ptr [rbp - 8]
	add	eax, -1
	mov	dword ptr [rbp - 8], eax
	jmp	.label_1881
	.section	.text
	.align	16
	#Procedure 0x41272a

	.globl store_columns
	.type store_columns, @function
store_columns:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], 0
	mov	dword ptr [dword ptr [buff_current]],  0
	mov	dword ptr [rbp - 0x10], 0
	test	byte ptr [byte ptr [balance_columns]],  1
	je	.label_1885
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1880
.label_1885:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	mov	dword ptr [rbp - 0x14], eax
.label_1880:
	mov	dword ptr [rbp - 4], 1
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x20], rax
.label_1878:
	mov	eax, dword ptr [rbp - 4]
	cmp	eax, dword ptr [rbp - 0x14]
	jg	.label_1874
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 0x2c], 0
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_1878
.label_1886:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0xc]
	mov	edx, ecx
	mov	rsi,  qword ptr [word ptr [line_vector]]
	mov	dword ptr [rsi + rdx*4], eax
	test	byte ptr [byte ptr [balance_columns]],  1
	je	.label_1889
	mov	edi, dword ptr [rbp - 0xc]
	call	balance
.label_1889:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4127e8
	.globl sub_4127e8
	.type sub_4127e8, @function
sub_4127e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4127f0

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rdi,  qword ptr [word ptr [local_tz]]
	jne	.label_1891
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1893
.label_1891:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
	mov	rdi, qword ptr [rbp - 0x10]
	call	change_env
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
	test	byte ptr [rbp - 0x15], 1
	jne	.label_1892
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_1892:
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
.label_1893:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412873
	.globl sub_412873
	.type sub_412873, @function
sub_412873:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412880

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
	#Procedure 0x4128b7
	.globl sub_4128b7
	.type sub_4128b7, @function
sub_4128b7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4128c0

	.globl store_char
	.type store_char, @function
store_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	mov	edi,  dword ptr [dword ptr [buff_current]]
	mov	ecx, edi
	cmp	rcx,  qword ptr [word ptr [buff_allocated]]
	jb	.label_1894
	movabs	rsi, OFFSET FLAT:buff_allocated
	mov	rdi,  qword ptr [word ptr [buff]]
	call	x2realloc
	mov	qword ptr [word ptr [buff]],  rax
.label_1894:
	mov	al, byte ptr [rbp - 1]
	mov	ecx,  dword ptr [dword ptr [buff_current]]
	mov	edx, ecx
	add	edx, 1
	mov	dword ptr [dword ptr [buff_current]],  edx
	mov	ecx, ecx
	mov	esi, ecx
	mov	rdi,  qword ptr [word ptr [buff]]
	mov	byte ptr [rdi + rsi], al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41292f
	.globl sub_41292f
	.type sub_41292f, @function
sub_41292f:

	nop	
.label_1926:
	mov	rdi, qword ptr [rbp - 0x10]
	call	close_file
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1895
.label_1909:
	mov	rdi, qword ptr [rbp - 0x10]
	call	close_file
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1895
.label_1917:
	movabs	rax, OFFSET FLAT:store_char
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + 0x20], rax
	je	.label_1905
	mov	byte ptr [byte ptr [pad_vertically]],  1
	test	byte ptr [byte ptr [print_a_header]],  1
	je	.label_1911
	test	byte ptr [byte ptr [storing_columns]],  1
	jne	.label_1911
	call	print_header
.label_1911:
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_1914
	test	byte ptr [byte ptr [align_empty_cols]],  1
	je	.label_1914
	mov	eax,  dword ptr [dword ptr [separators_not_printed]]
	mov	dword ptr [rbp - 0x24], eax
	mov	dword ptr [dword ptr [separators_not_printed]],  0
	mov	dword ptr [rbp - 0x20], 1
	mov	rcx,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x30], rcx
.label_1928:
	mov	eax, dword ptr [rbp - 0x20]
	cmp	eax, dword ptr [rbp - 0x24]
	jg	.label_1922
	mov	rdi, qword ptr [rbp - 0x30]
	call	align_column
	mov	eax,  dword ptr [dword ptr [separators_not_printed]]
	add	eax, 1
	mov	dword ptr [dword ptr [separators_not_printed]],  eax
	mov	eax, dword ptr [rbp - 0x20]
	add	eax, 1
	mov	dword ptr [rbp - 0x20], eax
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_1928
.label_1925:
	mov	eax, dword ptr [rbp - 0x14]
	mov	cl, al
	movsx	edi, cl
	call	char_to_clump
	mov	dword ptr [rbp - 0x18], eax
.label_1927:
	test	byte ptr [byte ptr [truncate_lines]],  1
	je	.label_1917
	mov	eax,  dword ptr [dword ptr [input_position]]
	cmp	eax,  dword ptr [dword ptr [chars_per_column]]
	jle	.label_1917
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [dword ptr [input_position]],  eax
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1895
.label_1922:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x34]
	mov	dword ptr [dword ptr [padding_not_printed]],  ecx
	test	byte ptr [byte ptr [truncate_lines]],  1
	je	.label_1923
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	dword ptr [dword ptr [spaces_not_printed]],  eax
	jmp	.label_1930
.label_1910:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x18]
	mov	rdx,  qword ptr [word ptr [clump_buff]]
	call	print_clump
.label_1906:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x14], eax
	mov	ecx, eax
	sub	eax, -1
	mov	dword ptr [rbp - 0x48], ecx
	mov	dword ptr [rbp - 0x4c], eax
	je	.label_1909
	jmp	.label_1897
.label_1897:
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x50], eax
	je	.label_1898
	jmp	.label_1901
.label_1901:
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 0xc
	mov	dword ptr [rbp - 0x54], eax
	je	.label_1902
	jmp	.label_1908
.label_1895:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412afc
	.globl sub_412afc
	.type sub_412afc, @function
sub_412afc:

	nop	word ptr cs:[rax + rax]
.label_1923:
	mov	dword ptr [dword ptr [spaces_not_printed]],  0
.label_1930:
	mov	byte ptr [byte ptr [align_empty_cols]],  0
.label_1914:
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	cmp	eax,  dword ptr [dword ptr [padding_not_printed]]
	jge	.label_1903
	mov	eax,  dword ptr [dword ptr [padding_not_printed]]
	sub	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	edi, eax
	call	pad_across_to
	mov	dword ptr [dword ptr [padding_not_printed]],  0
.label_1903:
	test	byte ptr [byte ptr [use_col_separator]],  1
	je	.label_1900
	call	print_sep_string
.label_1900:
	jmp	.label_1905
.label_1905:
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x38], 1
	je	.label_1907
	mov	rdi, qword ptr [rbp - 0x10]
	call	add_line_number
.label_1907:
	mov	byte ptr [byte ptr [empty_line]],  0
	cmp	dword ptr [rbp - 0x14], 0xa
	jne	.label_1910
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1895
.label_1916:
	test	byte ptr [byte ptr [keep_FF]],  1
	je	.label_1915
	mov	byte ptr [byte ptr [print_a_FF]],  1
.label_1915:
	jmp	.label_1919
.label_1919:
	mov	rdi, qword ptr [rbp - 0x10]
	call	hold_file
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1895
	.section	.text
	.align	16
	#Procedure 0x412bc6

	.globl read_line
	.type read_line, @function
read_line:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x14], eax
	mov	eax,  dword ptr [dword ptr [input_position]]
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0xc
	jne	.label_1918
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x39], 1
	je	.label_1918
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, 0xa
	jne	.label_1913
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x14], eax
.label_1913:
	jmp	.label_1918
.label_1918:
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x39], 0
	mov	ecx, dword ptr [rbp - 0x14]
	mov	edx, ecx
	sub	edx, -1
	mov	dword ptr [rbp - 0x34], ecx
	mov	dword ptr [rbp - 0x38], edx
	je	.label_1926
	jmp	.label_1920
.label_1920:
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x3c], eax
	je	.label_1921
	jmp	.label_1924
.label_1924:
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, 0xc
	mov	dword ptr [rbp - 0x40], eax
	jne	.label_1925
	jmp	.label_1929
.label_1929:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, 0xa
	je	.label_1912
	mov	edi, dword ptr [rbp - 0x14]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax]
	call	ungetc
	mov	dword ptr [rbp - 0x44], eax
.label_1912:
	mov	byte ptr [byte ptr [FF_only]],  1
	test	byte ptr [byte ptr [print_a_header]],  1
	je	.label_1916
	test	byte ptr [byte ptr [storing_columns]],  1
	jne	.label_1916
	mov	byte ptr [byte ptr [pad_vertically]],  1
	call	print_header
	jmp	.label_1919
.label_1908:
	mov	eax,  dword ptr [dword ptr [input_position]]
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax, dword ptr [rbp - 0x14]
	mov	cl, al
	movsx	edi, cl
	call	char_to_clump
	mov	dword ptr [rbp - 0x18], eax
	test	byte ptr [byte ptr [truncate_lines]],  1
	je	.label_1896
	mov	eax,  dword ptr [dword ptr [input_position]]
	cmp	eax,  dword ptr [dword ptr [chars_per_column]]
	jle	.label_1896
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [dword ptr [input_position]],  eax
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1895
.label_1921:
	jmp	.label_1927
.label_1898:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1895
.label_1902:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, 0xa
	je	.label_1899
	mov	edi, dword ptr [rbp - 0x14]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax]
	call	ungetc
	mov	dword ptr [rbp - 0x58], eax
.label_1899:
	test	byte ptr [byte ptr [keep_FF]],  1
	je	.label_1904
	mov	byte ptr [byte ptr [print_a_FF]],  1
.label_1904:
	mov	rdi, qword ptr [rbp - 0x10]
	call	hold_file
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1895
.label_1896:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x18]
	mov	rdx,  qword ptr [word ptr [clump_buff]]
	call	print_clump
	jmp	.label_1906
	.section	.text
	.align	16
	#Procedure 0x412da0
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
	#Procedure 0x412dcd
	.globl sub_412dcd
	.type sub_412dcd, @function
sub_412dcd:

	nop	dword ptr [rax]
.label_1935:
	jmp	.label_1931
.label_1931:
	jmp	.label_1941
.label_1955:
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 2
	cmp	eax, 0
	jne	.label_1949
	mov	edi, dword ptr [rbp - 0x44]
	call	iswcntrl
	cmp	eax, 0
	jne	.label_1957
	cmp	dword ptr [rbp - 0x34], 0x7fffffff
	jne	.label_1960
	jmp	.label_1939
	.section	.text
	.align	16
	#Procedure 0x412e0c

	.globl mbsnwidth
	.type mbsnwidth, @function
mbsnwidth:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	add	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rsi
	mov	dword ptr [rbp - 0x34], 0
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_1943
	jmp	.label_1944
.label_1944:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1945
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x20
	mov	eax, ecx
	sub	ecx, 0x5e
	mov	qword ptr [rbp - 0x60], rax
	mov	dword ptr [rbp - 0x64], ecx
	ja	.label_1950
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1961]]
	jmp	rcx
.label_1932:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1934
.label_1954:
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_1947
.label_2420:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_1952
.label_1939:
	mov	dword ptr [rbp - 4], 0x7fffffff
.label_1934:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412ecf
	.globl sub_412ecf
	.type sub_412ecf, @function
sub_412ecf:

	nop	word ptr cs:[rax + rax]
.label_1937:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_1931
.label_1950:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	rdi, rcx
	call	memset
.label_1942:
	lea	rdi, [rbp - 0x44]
	lea	rcx, [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	sub	rax, rdx
	mov	rdx, rax
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], -1
	jne	.label_1951
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 1
	cmp	eax, 0
	jne	.label_1956
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_1958
.label_1951:
	cmp	qword ptr [rbp - 0x50], -2
	jne	.label_1948
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 1
	cmp	eax, 0
	jne	.label_1953
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_1958
.label_1945:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1934
.label_1948:
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_1946
	mov	qword ptr [rbp - 0x50], 1
.label_1946:
	mov	edi, dword ptr [rbp - 0x44]
	call	wcwidth
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 0
	jl	.label_1955
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 0x54]
	sub	eax, dword ptr [rbp - 0x34]
	cmp	ecx, eax
	jle	.label_1954
	jmp	.label_1939
.label_1953:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1934
.label_1938:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1934
.label_1960:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
.label_1957:
	jmp	.label_1959
.label_1959:
	jmp	.label_1947
.label_1947:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rbp - 0x40]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_1942
.label_1958:
	jmp	.label_1952
.label_1952:
	jmp	.label_1944
.label_1940:
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 2
	cmp	eax, 0
	jne	.label_1938
	movzx	eax, byte ptr [rbp - 0x55]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 2
	cmp	edx, 0
	jne	.label_1936
	cmp	dword ptr [rbp - 0x34], 0x7fffffff
	jne	.label_1933
	jmp	.label_1939
.label_1933:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
.label_1936:
	jmp	.label_1935
.label_1949:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1934
.label_1956:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1934
.label_1943:
	jmp	.label_1941
.label_1941:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1932
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x55], dl
	movzx	esi, byte ptr [rbp - 0x55]
	movsxd	rax, esi
	mov	qword ptr [rbp - 0x70], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x70]
	movzx	esi, word ptr [rax + rcx*2]
	and	esi, 0x4000
	cmp	esi, 0
	je	.label_1940
	cmp	dword ptr [rbp - 0x34], 0x7fffffff
	jne	.label_1937
	jmp	.label_1939
	.section	.text
	.align	16
	#Procedure 0x413100
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
	jb	.label_1962
	jmp	.label_1964
.label_1964:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1965
	jmp	.label_1962
.label_1962:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1963
.label_1965:
	mov	byte ptr [rbp - 1], 0
.label_1963:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41314b
	.globl sub_41314b
	.type sub_41314b, @function
sub_41314b:

	nop	dword ptr [rax + rax]
.label_1969:
	jmp	.label_1966
.label_1966:
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
	jne	.label_1966
	jmp	.label_1967
.label_1967:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4131a8
	.globl sub_4131a8
	.type sub_4131a8, @function
sub_4131a8:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4131b3

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
	jge	.label_1969
	jmp	.label_1968
.label_1968:
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
	jne	.label_1968
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_1967
.label_1971:
	jmp	.label_1970
.label_1970:
	mov	qword ptr [rbp - 8], 0
.label_1975:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413267
	.globl sub_413267
	.type sub_413267, @function
sub_413267:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413270

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
	jne	.label_1974
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	gmtime_r
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1975
.label_1974:
	mov	rdi, qword ptr [rbp - 0x10]
	call	set_tz
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1970
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	localtime_r
	xor	ecx, ecx
	mov	dl, cl
	cmp	rax, 0
	mov	byte ptr [rbp - 0x2a], dl
	je	.label_1973
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	save_abbr
	mov	byte ptr [rbp - 0x2a], al
.label_1973:
	mov	al, byte ptr [rbp - 0x2a]
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	mov	rdi, qword ptr [rbp - 0x28]
	call	revert_tz
	test	al, 1
	jne	.label_1972
	jmp	.label_1971
.label_1972:
	test	byte ptr [rbp - 0x29], 1
	je	.label_1971
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1975
	.section	.text
	.align	16
	#Procedure 0x413320

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
	je	.label_1976
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1977
.label_1976:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1977
.label_1977:
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
	#Procedure 0x4133c2
	.globl sub_4133c2
	.type sub_4133c2, @function
sub_4133c2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4133d0
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
	jae	.label_1978
	call	xalloc_die
.label_1978:
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
	#Procedure 0x413420

	.globl bkm_scale_0
	.type bkm_scale_0, @function
bkm_scale_0:
	push	rbp
	mov	rbp, rsp
	movabs	rax, 0x8000000000000000
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	movsxd	rcx, dword ptr [rbp - 0x14]
	cqo	
	idiv	rcx
	cmp	rdi, rax
	jge	.label_1979
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1980
.label_1979:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x14]
	cqo	
	idiv	rcx
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	jge	.label_1981
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1980
.label_1981:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_1980:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4134c3
	.globl sub_4134c3
	.type sub_4134c3, @function
sub_4134c3:

	nop	word ptr cs:[rax + rax]
.label_2007:
	movzx	eax, byte ptr [rbp - 2]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x30], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	cmp	edx, 0
	jne	.label_1994
	test	byte ptr [byte ptr [use_esc_sequence]],  1
	je	.label_2000
	movabs	rsi, OFFSET FLAT:label_1984
	lea	rdi, [rbp - 0x18]
	mov	dword ptr [rbp - 0x1c], 4
	mov	dword ptr [rbp - 0x20], 4
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x5c
	movzx	edx, byte ptr [rbp - 2]
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x14], 0
	mov	dword ptr [rbp - 0x34], eax
.label_2001:
	cmp	dword ptr [rbp - 0x14], 2
	jg	.label_1985
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	cl, byte ptr [rbp + rax - 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, rax
	add	rdx, 1
	mov	qword ptr [rbp - 0x10], rdx
	mov	byte ptr [rax], cl
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2001
.label_1993:
	jmp	.label_1996
.label_1996:
	jmp	.label_1983
.label_1986:
	movsx	eax, byte ptr [rbp - 1]
	cmp	eax, 8
	jne	.label_1982
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	mov	dword ptr [rbp - 0x20], 1
	mov	al, byte ptr [rbp - 1]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx], al
	jmp	.label_1989
.label_1991:
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_1997
	xor	eax, eax
	mov	ecx,  dword ptr [dword ptr [input_position]]
	sub	eax, dword ptr [rbp - 0x1c]
	cmp	ecx, eax
	jg	.label_1997
	mov	dword ptr [dword ptr [input_position]],  0
	jmp	.label_1998
.label_1994:
	mov	dword ptr [rbp - 0x1c], 1
	mov	dword ptr [rbp - 0x20], 1
	mov	al, byte ptr [rbp - 1]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx], al
.label_1990:
	jmp	.label_1999
.label_1999:
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_1991
	cmp	dword ptr [dword ptr [input_position]],  0
	jne	.label_1991
	mov	dword ptr [rbp - 0x20], 0
	mov	dword ptr [dword ptr [input_position]],  0
	jmp	.label_1987
.label_1997:
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax,  dword ptr [dword ptr [input_position]]
	mov	dword ptr [dword ptr [input_position]],  eax
.label_1998:
	jmp	.label_1987
.label_1987:
	mov	eax, dword ptr [rbp - 0x20]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413647
	.globl sub_413647
	.type sub_413647, @function
sub_413647:

	nop	dword ptr [rax + rax]
.label_2000:
	test	byte ptr [byte ptr [use_cntrl_prefix]],  1
	je	.label_1986
	movzx	eax, byte ptr [rbp - 2]
	cmp	eax, 0x80
	jge	.label_1992
	mov	dword ptr [rbp - 0x1c], 2
	mov	dword ptr [rbp - 0x20], 2
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x5e
	movsx	edx, byte ptr [rbp - 1]
	xor	edx, 0x40
	mov	sil, dl
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], sil
	jmp	.label_1996
	.section	.text
	.align	16
	#Procedure 0x4136a2

	.globl char_to_clump
	.type char_to_clump, @function
char_to_clump:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	mov	al, byte ptr [rbp - 1]
	mov	byte ptr [rbp - 2], al
	mov	rcx,  qword ptr [word ptr [clump_buff]]
	mov	qword ptr [rbp - 0x10], rcx
	mov	dword ptr [rbp - 0x24], 8
	movsx	edi, byte ptr [rbp - 1]
	movsx	edx,  byte ptr [byte ptr [input_tab_char]]
	cmp	edi, edx
	jne	.label_2003
	mov	eax,  dword ptr [dword ptr [chars_per_input_tab]]
	mov	dword ptr [rbp - 0x24], eax
.label_2003:
	movsx	eax, byte ptr [rbp - 1]
	movsx	ecx,  byte ptr [byte ptr [input_tab_char]]
	cmp	eax, ecx
	je	.label_2005
	movsx	eax, byte ptr [rbp - 1]
	cmp	eax, 9
	jne	.label_2007
.label_2005:
	mov	eax, dword ptr [rbp - 0x24]
	mov	ecx,  dword ptr [dword ptr [input_position]]
	mov	dword ptr [rbp - 0x28], eax
	mov	eax, ecx
	cdq	
	idiv	dword ptr [rbp - 0x24]
	mov	ecx, dword ptr [rbp - 0x28]
	sub	ecx, edx
	mov	dword ptr [rbp - 0x1c], ecx
	test	byte ptr [byte ptr [untabify_input]],  1
	je	.label_2006
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x14], eax
.label_2008:
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_2004
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x20
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, -1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2008
.label_2006:
	mov	al, byte ptr [rbp - 1]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx], al
	mov	dword ptr [rbp - 0x20], 1
.label_2002:
	jmp	.label_1999
.label_1982:
	mov	dword ptr [rbp - 0x1c], 0
	mov	dword ptr [rbp - 0x20], 1
	mov	al, byte ptr [rbp - 1]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx], al
.label_1989:
	jmp	.label_1983
.label_1983:
	jmp	.label_1988
.label_1988:
	jmp	.label_1990
.label_1992:
	movabs	rsi, OFFSET FLAT:label_1984
	lea	rdi, [rbp - 0x18]
	mov	dword ptr [rbp - 0x1c], 4
	mov	dword ptr [rbp - 0x20], 4
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x5c
	movzx	edx, byte ptr [rbp - 2]
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x14], 0
	mov	dword ptr [rbp - 0x38], eax
.label_1995:
	cmp	dword ptr [rbp - 0x14], 2
	jg	.label_1993
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	cl, byte ptr [rbp + rax - 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, rax
	add	rdx, 1
	mov	qword ptr [rbp - 0x10], rdx
	mov	byte ptr [rax], cl
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1995
.label_2004:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x20], eax
	jmp	.label_2002
.label_1985:
	jmp	.label_1988
	.section	.text
	.align	16
	#Procedure 0x413820
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_2009
	call	gettext
	movabs	rsi, OFFSET FLAT:label_2011
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_2012
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_1791
	movabs	rdx, OFFSET FLAT:label_2013
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_2010
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
	#Procedure 0x4138a6
	.globl sub_4138a6
	.type sub_4138a6, @function
sub_4138a6:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4138b0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_2016:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_2015
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_2016
.label_2015:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_2017
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_88]],  rax
.label_2017:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_2014
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_2014:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413984
	.globl sub_413984
	.type sub_413984, @function
sub_413984:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413990

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
	jg	.label_2019
	mov	esi, 0x406
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	xor	edx, edx
	mov	dword ptr [rbp - 0xc], eax
	cmp	edx, dword ptr [rbp - 0xc]
	jle	.label_2026
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_2024
.label_2026:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_2020
.label_2019:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
.label_2025:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_2018
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_2018
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x10], eax
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_2023
	mov	esi, 2
	mov	edi, dword ptr [rbp - 0xc]
	mov	eax, dword ptr [rbp - 0x10]
	or	eax, 1
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_2022
.label_2023:
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
.label_2022:
	jmp	.label_2018
.label_2018:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413a88
	.globl sub_413a88
	.type sub_413a88, @function
sub_413a88:

	nop	word ptr cs:[rax + rax]
.label_2024:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	jl	.label_2021
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_2021:
	jmp	.label_2020
.label_2020:
	jmp	.label_2025
.label_2027:
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
	#Procedure 0x413ae3
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
.label_2029:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_2027
	jmp	.label_2028
.label_2028:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2029
	.section	.text
	.align	16
	#Procedure 0x413b30
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
	jb	.label_2030
	jmp	.label_2033
.label_2033:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_2031
	jmp	.label_2030
.label_2030:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2032
.label_2031:
	mov	byte ptr [rbp - 1], 0
.label_2032:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413b7e
	.globl sub_413b7e
	.type sub_413b7e, @function
sub_413b7e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x413b80
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_2034
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_2034:
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
	#Procedure 0x413bbd
	.globl sub_413bbd
	.type sub_413bbd, @function
sub_413bbd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x413bc0

	.globl sub_413bc0
	.type sub_413bc0, @function
sub_413bc0:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2035
.label_2037:
	mov	byte ptr [rbp - 1], 0
.label_2035:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413bd7
	.globl sub_413bd7
	.type sub_413bd7, @function
sub_413bd7:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413be6
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
	ja	.label_2037
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2036]]
	jmp	rcx
	.section	.text
	.align	16
	#Procedure 0x413c10

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
	#Procedure 0x413c4f
	.globl sub_413c4f
	.type sub_413c4f, @function
sub_413c4f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x413c50
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
	jb	.label_2038
	jmp	.label_2041
.label_2041:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_2038
	jmp	.label_2039
.label_2039:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_2040
	jmp	.label_2038
.label_2038:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2042
.label_2040:
	mov	byte ptr [rbp - 1], 0
.label_2042:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413cb5
	.globl sub_413cb5
	.type sub_413cb5, @function
sub_413cb5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413cc0

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
	je	.label_2043
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_2044
.label_2043:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_2044
.label_2044:
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
	je	.label_2045
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_2045:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413e14
	.globl sub_413e14
	.type sub_413e14, @function
sub_413e14:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413e20

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2046
	jmp	.label_2048
.label_2048:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2047
.label_2046:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_2047:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413e57
	.globl sub_413e57
	.type sub_413e57, @function
sub_413e57:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413e60

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
	#Procedure 0x413e7f
	.globl sub_413e7f
	.type sub_413e7f, @function
sub_413e7f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x413e80

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
	jne	.label_2049
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_2049:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2051
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_2050
.label_2051:
	call	abort
.label_2050:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	ret	
.label_2063:
	jmp	.label_2068
.label_2068:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2069
.label_2053:
	cmp	dword ptr [dword ptr [files_ready_to_read]],  0
	setg	al
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413f1c
	.globl sub_413f1c
	.type sub_413f1c, @function
sub_413f1c:

	nop	word ptr cs:[rax + rax]
.label_2067:
	jmp	.label_2064
.label_2064:
	mov	eax, dword ptr [rbp - 0x20]
	add	eax, 1
	mov	dword ptr [rbp - 0x20], eax
	jmp	.label_2066
.label_2058:
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_2057
	mov	dword ptr [rbp - 0x1c], 1
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x18], rax
.label_2055:
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax,  dword ptr [dword ptr [columns]]
	jg	.label_2060
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x10], 3
	je	.label_2065
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x10], 2
.label_2065:
	jmp	.label_2054
.label_2054:
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, 1
	mov	dword ptr [rbp - 0x1c], eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_2055
	.section	.text
	.align	16
	#Procedure 0x413fa3

	.globl skip_to_page
	.type skip_to_page, @function
skip_to_page:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 1
.label_2069:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_2053
	mov	dword ptr [rbp - 0x20], 1
.label_2066:
	mov	eax, dword ptr [rbp - 0x20]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jge	.label_2056
	mov	dword ptr [rbp - 0x1c], 1
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x18], rax
.label_2061:
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax,  dword ptr [dword ptr [columns]]
	jg	.label_2067
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x10], 0
	jne	.label_2072
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	call	skip_read
.label_2072:
	jmp	.label_2059
.label_2059:
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, 1
	mov	dword ptr [rbp - 0x1c], eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_2061
.label_2056:
	mov	byte ptr [byte ptr [last_line]],  1
	mov	dword ptr [rbp - 0x1c], 1
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x18], rax
.label_2052:
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax,  dword ptr [dword ptr [columns]]
	jg	.label_2058
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x10], 0
	jne	.label_2062
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	call	skip_read
.label_2062:
	jmp	.label_2071
.label_2071:
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, 1
	mov	dword ptr [rbp - 0x1c], eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_2052
.label_2060:
	jmp	.label_2057
.label_2057:
	call	reset_status
	mov	byte ptr [byte ptr [last_line]],  0
	cmp	dword ptr [dword ptr [files_ready_to_read]],  1
	jge	.label_2063
	movabs	rdi, OFFSET FLAT:label_2070
	call	gettext
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rdi
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	al, 0
	call	error
	jmp	.label_2053
	.section	.text
	.align	16
	#Procedure 0x4140f0
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
	jb	.label_2073
	jmp	.label_2075
.label_2075:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_2076
	jmp	.label_2073
.label_2073:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2074
.label_2076:
	mov	byte ptr [rbp - 1], 0
.label_2074:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414138
	.globl sub_414138
	.type sub_414138, @function
sub_414138:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414140

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
	je	.label_2077
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_2077:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41417b
	.globl sub_41417b
	.type sub_41417b, @function
sub_41417b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414180

	.globl gettime
	.type gettime, @function
gettime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	clock_gettime
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4141a2
	.globl sub_4141a2
	.type sub_4141a2, @function
sub_4141a2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4141b0

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
	.align	16
	#Procedure 0x4141db
	.globl sub_4141db
	.type sub_4141db, @function
sub_4141db:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4141e0
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
	.align	16
	#Procedure 0x4141f2
	.globl sub_4141f2
	.type sub_4141f2, @function
sub_4141f2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414200
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
	.align	16
	#Procedure 0x41422a
	.globl sub_41422a
	.type sub_41422a, @function
sub_41422a:

	nop	word ptr [rax + rax]
.label_2088:
	movabs	rdi, OFFSET FLAT:label_1795
	call	gettext
	movabs	rdi, OFFSET FLAT:label_152
	mov	esi, 0xffffffff
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rax,  qword ptr [word ptr [stdin]]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	byte ptr [byte ptr [have_read_stdin]],  1
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x39], 0
	mov	edx,  dword ptr [dword ptr [total_files]]
	add	edx, 1
	mov	dword ptr [dword ptr [total_files]],  edx
	call	init_header
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x2c], 0
.label_2082:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x30], rax
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x40
	mov	qword ptr [rbp - 0x18], rax
.label_2079:
	cmp	dword ptr [rbp - 0x34], 0
	je	.label_2078
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x39], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x2c], 0
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, -1
	mov	dword ptr [rbp - 0x34], eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_2079
.label_2078:
	jmp	.label_2080
.label_2080:
	mov	eax,  dword ptr [dword ptr [total_files]]
	mov	dword ptr [dword ptr [files_ready_to_read]],  eax
	mov	byte ptr [rbp - 1], 1
.label_2081:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41434f
	.globl sub_41434f
	.type sub_41434f, @function
sub_41434f:

	nop	dword ptr [rax]
.label_2085:
	movabs	rdi, OFFSET FLAT:label_152
	mov	esi, 0xffffffff
	call	init_header
	jmp	.label_2080
	.section	.text
	.align	16
	#Procedure 0x41436c

	.globl init_fps
	.type init_fps, @function
init_fps:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [dword ptr [total_files]],  0
	mov	rsi,  qword ptr [word ptr [column_vector]]
	mov	rdi, rsi
	call	free
	mov	eax, 0x40
	mov	esi, eax
	movsxd	rdi,  dword ptr [dword ptr [columns]]
	call	xnmalloc
	mov	qword ptr [word ptr [column_vector]],  rax
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_2086
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x1c], eax
	mov	rcx,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x18], rcx
.label_2084:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x1c], ecx
	cmp	eax, 0
	je	.label_2087
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x18]
	call	open_file
	test	al, 1
	jne	.label_2083
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -0x40
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx,  dword ptr [dword ptr [columns]]
	add	ecx, -1
	mov	dword ptr [dword ptr [columns]],  ecx
.label_2083:
	jmp	.label_2090
.label_2090:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x40
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 8
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2084
.label_2089:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rdi
	mov	rdi, rax
	call	fileno
	mov	rdi, qword ptr [rbp - 0x40]
	mov	esi, eax
	call	init_header
	mov	rdi, qword ptr [rbp - 0x18]
	mov	dword ptr [rdi + 0x2c], 0
	jmp	.label_2082
.label_2086:
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x18], rax
	cmp	dword ptr [rbp - 8], 0
	jle	.label_2088
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x18]
	call	open_file
	test	al, 1
	jne	.label_2089
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2081
.label_2087:
	cmp	dword ptr [dword ptr [columns]],  0
	jne	.label_2085
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2081
	.section	.text
	.align	16
	#Procedure 0x4144c0
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
	.align	16
	#Procedure 0x4144da
	.globl sub_4144da
	.type sub_4144da, @function
sub_4144da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4144e0

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
	je	.label_2091
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
.label_2091:
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
	#Procedure 0x414644
	.globl sub_414644
	.type sub_414644, @function
sub_414644:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414650

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
	#Procedure 0x414687
	.globl sub_414687
	.type sub_414687, @function
sub_414687:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414690

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
	.align	16
	#Procedure 0x4146b3
	.globl sub_4146b3
	.type sub_4146b3, @function
sub_4146b3:

	nop	word ptr cs:[rax + rax]
.label_2095:
	jmp	.label_2092
.label_2092:
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
	jne	.label_2093
	jmp	.label_2094
	.section	.text
	.align	16
	#Procedure 0x4146f9

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
	jne	.label_2095
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2096
.label_2093:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_2092
.label_2094:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_2096:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414771
	.globl sub_414771
	.type sub_414771, @function
sub_414771:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414780

	.globl bkm_scale_by_power_1
	.type bkm_scale_by_power_1, @function
bkm_scale_by_power_1:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	dword ptr [rbp - 0x14], 0
.label_2098:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_2097
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale_1
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2098
.label_2097:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4147cd
	.globl sub_4147cd
	.type sub_4147cd, @function
sub_4147cd:

	nop	dword ptr [rax]
.label_2106:
	mov	qword ptr [word ptr [page_number]],  1
.label_2104:
	call	init_funcs
	mov	eax,  dword ptr [dword ptr [line_count]]
	mov	dword ptr [dword ptr [line_number]],  eax
.label_2100:
	call	print_page
	test	al, 1
	jne	.label_2099
	jmp	.label_2101
.label_2099:
	jmp	.label_2100
.label_2102:
	mov	rax,  qword ptr [word ptr [first_page_number]]
	mov	qword ptr [word ptr [page_number]],  rax
	jmp	.label_2104
.label_2101:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414821
	.globl sub_414821
	.type sub_414821, @function
sub_414821:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x414824

	.globl print_files
	.type print_files, @function
print_files:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	call	init_parameters
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	init_fps
	test	al, 1
	jne	.label_2105
	jmp	.label_2101
.label_2105:
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_2103
	call	init_store_cols
.label_2103:
	cmp	qword ptr [word ptr [first_page_number]],  1
	jbe	.label_2106
	mov	rdi,  qword ptr [word ptr [first_page_number]]
	call	skip_to_page
	test	al, 1
	jne	.label_2102
	jmp	.label_2101
	.section	.text
	.align	16
	#Procedure 0x414890
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
	#Procedure 0x4148aa
	.globl sub_4148aa
	.type sub_4148aa, @function
sub_4148aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4148b0
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
	.align	16
	#Procedure 0x4148ca
	.globl sub_4148ca
	.type sub_4148ca, @function
sub_4148ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4148d0

	.globl open_file
	.type open_file, @function
open_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_1336
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_2108
	movabs	rdi, OFFSET FLAT:label_1795
	call	gettext
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi + 8], rax
	mov	rax,  qword ptr [word ptr [stdin]]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi], rax
	mov	byte ptr [byte ptr [have_read_stdin]],  1
	jmp	.label_2109
.label_2108:
	movabs	rsi, OFFSET FLAT:label_2111
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	fopen_safer
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
.label_2109:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	jne	.label_2112
	mov	byte ptr [byte ptr [failed_opens]],  1
	test	byte ptr [byte ptr [ignore_failed_opens]],  1
	jne	.label_2107
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x1c], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_75
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_2107:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2110
.label_2112:
	mov	esi, 2
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	call	fadvise
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x39], 0
	mov	esi,  dword ptr [dword ptr [total_files]]
	add	esi, 1
	mov	dword ptr [dword ptr [total_files]],  esi
	mov	byte ptr [rbp - 1], 1
.label_2110:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4149f9
	.globl sub_4149f9
	.type sub_4149f9, @function
sub_4149f9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x414a00
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
	#Procedure 0x414a2f
	.globl sub_414a2f
	.type sub_414a2f, @function
sub_414a2f:

	nop	
.label_2115:
	jmp	.label_2113
.label_2113:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414a3b
	.globl sub_414a3b
	.type sub_414a3b, @function
sub_414a3b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414a4a

	.globl pad_down
	.type pad_down, @function
pad_down:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	test	byte ptr [byte ptr [use_form_feed]],  1
	je	.label_2114
	mov	edi, 0xc
	call	putchar_unlocked
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_2113
.label_2114:
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 8], eax
.label_2116:
	cmp	dword ptr [rbp - 8], 0
	je	.label_2115
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x10], eax
	mov	eax, dword ptr [rbp - 8]
	add	eax, -1
	mov	dword ptr [rbp - 8], eax
	jmp	.label_2116
	.section	.text
	.align	16
	#Procedure 0x414aa0

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
.label_2118:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_2117
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2118
.label_2117:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414aed
	.globl sub_414aed
	.type sub_414aed, @function
sub_414aed:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x414af0

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
.label_2120:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414b06
	.globl sub_414b06
	.type sub_414b06, @function
sub_414b06:

	nop	
	.section	.text
	.align	16
	#Procedure 0x414b08

	.globl print_clump
	.type print_clump, @function
print_clump:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
.label_2119:
	mov	eax, dword ptr [rbp - 0xc]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0xc], ecx
	cmp	eax, 0
	je	.label_2120
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x18], rdx
	movsx	edi, byte ptr [rcx]
	call	rax
	jmp	.label_2119
	.section	.text
	.align	16
	#Procedure 0x414b50

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x1c]
	call	posix_fadvise
	mov	dword ptr [rbp - 0x20], eax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414b82
	.globl sub_414b82
	.type sub_414b82, @function
sub_414b82:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414b90

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_2125
	movabs	rdi, OFFSET FLAT:label_2122
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_2121:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_2128:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_2124
	movabs	rsi, OFFSET FLAT:label_2123
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_2124
	movabs	rsi, OFFSET FLAT:label_2126
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_2127
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_2127:
	jmp	.label_2124
.label_2124:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414c7b
	.globl sub_414c7b
	.type sub_414c7b, @function
sub_414c7b:

	nop	dword ptr [rax]
.label_2125:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2121
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2128
.label_2131:
	jmp	.label_2129
.label_2129:
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_2130
	mov	edi, 0x20
	call	putchar_unlocked
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_2129
.label_2130:
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [dword ptr [output_position]],  eax
.label_2132:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414ce9
	.globl sub_414ce9
	.type sub_414ce9, @function
sub_414ce9:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414cf7

	.globl pad_across_to
	.type pad_across_to, @function
pad_across_to:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	edi,  dword ptr [dword ptr [output_position]]
	mov	dword ptr [rbp - 8], edi
	test	byte ptr [byte ptr [tabify_output]],  1
	je	.label_2131
	mov	eax, dword ptr [rbp - 4]
	sub	eax,  dword ptr [dword ptr [output_position]]
	mov	dword ptr [dword ptr [spaces_not_printed]],  eax
	jmp	.label_2132
.label_2140:
	cmp	dword ptr [dword ptr [spaces_not_printed]],  0
	jle	.label_2139
	call	print_white_space
.label_2139:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	movsx	edi, byte ptr [rax]
	call	putchar_unlocked
	mov	edi,  dword ptr [dword ptr [output_position]]
	add	edi, 1
	mov	dword ptr [dword ptr [output_position]],  edi
	mov	dword ptr [rbp - 0x10], eax
.label_2134:
	jmp	.label_2138
	.section	.text
	.align	16
	#Procedure 0x414d73

	.globl print_sep_string
	.type print_sep_string, @function
print_sep_string:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [col_sep_string]]
	mov	qword ptr [rbp - 8], rax
	mov	ecx,  dword ptr [dword ptr [col_sep_length]]
	mov	dword ptr [rbp - 0xc], ecx
	cmp	dword ptr [dword ptr [separators_not_printed]],  0
	jg	.label_2141
	cmp	dword ptr [dword ptr [spaces_not_printed]],  0
	jle	.label_2144
	call	print_white_space
.label_2144:
	jmp	.label_2135
.label_2143:
	cmp	dword ptr [dword ptr [spaces_not_printed]],  0
	jle	.label_2142
	call	print_white_space
.label_2142:
	jmp	.label_2133
.label_2133:
	mov	eax,  dword ptr [dword ptr [separators_not_printed]]
	add	eax, -1
	mov	dword ptr [dword ptr [separators_not_printed]],  eax
	jmp	.label_2136
.label_2141:
	jmp	.label_2136
.label_2136:
	cmp	dword ptr [dword ptr [separators_not_printed]],  0
	jle	.label_2137
	jmp	.label_2138
.label_2138:
	mov	eax, dword ptr [rbp - 0xc]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0xc], ecx
	cmp	eax, 0
	jle	.label_2143
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x20
	jne	.label_2140
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	mov	ecx,  dword ptr [dword ptr [spaces_not_printed]]
	add	ecx, 1
	mov	dword ptr [dword ptr [spaces_not_printed]],  ecx
	jmp	.label_2134
.label_2137:
	jmp	.label_2135
.label_2135:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414e4e
	.globl sub_414e4e
	.type sub_414e4e, @function
sub_414e4e:

	nop	
.label_2153:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_2148
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_2148:
	movabs	rdi, OFFSET FLAT:label_2147
	call	gettext
	movabs	rsi, OFFSET FLAT:label_1791
	movabs	rdx, OFFSET FLAT:label_2013
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
	je	.label_2146
	movabs	rsi, OFFSET FLAT:label_2150
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_2146
	movabs	rdi, OFFSET FLAT:label_2151
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_2146:
	movabs	rdi, OFFSET FLAT:label_2152
	call	gettext
	movabs	rsi, OFFSET FLAT:label_2013
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_2145
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_152
	movabs	rsi, OFFSET FLAT:label_2149
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
	#Procedure 0x414f75
	.globl sub_414f75
	.type sub_414f75, @function
sub_414f75:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x414f7c

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
.label_2156:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_2155
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_2155:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_2154
	jmp	.label_2153
.label_2154:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2156
.label_2158:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2157
.label_2157:
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
	#Procedure 0x415034
	.globl sub_415034
	.type sub_415034, @function
sub_415034:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415042
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
	je	.label_2158
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2157
.label_2163:
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	add	rax, 1
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	byte ptr [rax], 0
	jne	.label_2164
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_2164
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x28], rax
.label_2164:
	jmp	.label_2170
.label_2159:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax], 0
	je	.label_2161
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x28], rax
.label_2170:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	call	strcmp
	cmp	eax, 0
	je	.label_2165
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_2163
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 9
	cmp	rax, rcx
	jne	.label_2171
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 8]
	cmp	ecx, 0
	jne	.label_2163
.label_2171:
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
	jae	.label_2168
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2166
	.section	.text
	.align	16
	#Procedure 0x415176

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:label_152
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2169
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_2159
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x38
	cmp	rax, rcx
	jae	.label_2159
.label_2169:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2166
.label_2162:
	mov	rdi, qword ptr [rbp - 0x20]
	call	tzalloc
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], rax
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2167
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2166
.label_2165:
	jmp	.label_2161
.label_2161:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x30], rax
	mov	byte ptr [rbp - 1], 1
.label_2166:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41522a
	.globl sub_41522a
	.type sub_41522a, @function
sub_41522a:

	nop	dword ptr [rax + rax]
.label_2167:
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x28], rax
.label_2160:
	jmp	.label_2165
.label_2168:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	cmp	rax, 0x77
	jae	.label_2162
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x30]
	call	extend_abbrs
	jmp	.label_2160
	.section	.text
	.align	16
	#Procedure 0x4152d5
	.globl sub_4152d5
	.type sub_4152d5, @function
sub_4152d5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4152e2
	.globl sub_4152e2
	.type sub_4152e2, @function
sub_4152e2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415306
	.globl sub_415306
	.type sub_415306, @function
sub_415306:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415319
	.globl sub_415319
	.type sub_415319, @function
sub_415319:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x415320

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
