	.section	.text
	.align	16
	#Procedure 0x4017d9
	.globl sub_4017d9
	.type sub_4017d9, @function
sub_4017d9:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x4017da
	.globl sub_4017da
	.type sub_4017da, @function
sub_4017da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401812
	.globl sub_401812
	.type sub_401812, @function
sub_401812:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40185a
	.globl sub_40185a
	.type sub_40185a, @function
sub_40185a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40187c
	.globl sub_40187c
	.type sub_40187c, @function
sub_40187c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40188d
	.globl sub_40188d
	.type sub_40188d, @function
sub_40188d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4018a6
	.globl sub_4018a6
	.type sub_4018a6, @function
sub_4018a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018b0
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
	#Procedure 0x4018ca
	.globl sub_4018ca
	.type sub_4018ca, @function
sub_4018ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018d0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_9
	jmp	.label_11
.label_11:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_10
.label_9:
	mov	byte ptr [rbp - 1], 0
.label_10:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401902
	.globl sub_401902
	.type sub_401902, @function
sub_401902:

	nop	word ptr cs:[rax + rax]
.label_14:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_13
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_15:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_12
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_19:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_13:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401962
	.globl sub_401962
	.type sub_401962, @function
sub_401962:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40196b

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_14
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_17
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_14
.label_17:
	movabs	rdi, OFFSET FLAT:label_16
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_15
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_18
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_19
.label_52:
	mov	eax, dword ptr [rbp - 0xc]
	movzx	ecx,  byte ptr [byte ptr [line_delim]]
	cmp	eax, ecx
	je	.label_20
	cmp	dword ptr [rbp - 0xc], -1
	jne	.label_25
.label_20:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_27
	test	byte ptr [byte ptr [suppress_non_delimited]],  1
	je	.label_27
	cmp	qword ptr [rbp - 0x18], 1
	je	.label_32
.label_27:
	mov	eax, dword ptr [rbp - 0xc]
	movzx	ecx,  byte ptr [byte ptr [line_delim]]
	cmp	eax, ecx
	je	.label_35
	mov	eax, dword ptr [rbp - 0x38]
	movzx	ecx,  byte ptr [byte ptr [line_delim]]
	cmp	eax, ecx
	jne	.label_35
	movzx	eax,  byte ptr [byte ptr [delim]]
	movzx	ecx,  byte ptr [byte ptr [line_delim]]
	cmp	eax, ecx
	jne	.label_46
.label_35:
	movzx	edi,  byte ptr [byte ptr [line_delim]]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x8c], eax
.label_46:
	jmp	.label_32
.label_32:
	cmp	dword ptr [rbp - 0xc], -1
	jne	.label_53
	jmp	.label_48
.label_56:
	mov	eax, 1
	mov	esi, eax
	mov	rdi,  qword ptr [word ptr [field_1_buffer]]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [stdout]]
	call	fwrite_unlocked
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, 1
	mov	rdx,  qword ptr [word ptr [field_1_buffer]]
	movsx	r8d, byte ptr [rdx + rcx]
	movzx	r9d,  byte ptr [byte ptr [line_delim]]
	cmp	r8d, r9d
	mov	qword ptr [rbp - 0x50], rax
	je	.label_54
	movzx	edi,  byte ptr [byte ptr [line_delim]]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x54], eax
.label_54:
	movzx	eax,  byte ptr [byte ptr [line_delim]]
	mov	dword ptr [rbp - 0xc], eax
.label_31:
	jmp	.label_21
.label_34:
	jmp	.label_23
.label_23:
	mov	rdi, qword ptr [rbp - 8]
	call	getc_unlocked
	xor	ecx, ecx
	mov	dl, cl
	mov	dword ptr [rbp - 0xc], eax
	movzx	ecx,  byte ptr [byte ptr [delim]]
	cmp	eax, ecx
	mov	byte ptr [rbp - 0x81], dl
	je	.label_28
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0xc]
	movzx	edx,  byte ptr [byte ptr [line_delim]]
	cmp	eax, edx
	mov	byte ptr [rbp - 0x81], cl
	je	.label_28
	cmp	dword ptr [rbp - 0xc], -1
	setne	al
	mov	byte ptr [rbp - 0x81], al
.label_28:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_45
	jmp	.label_49
.label_45:
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x38], eax
	jmp	.label_23
.label_64:
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 8]
	call	ungetc
	mov	edi, 1
	mov	dword ptr [rbp - 0xc], 0
	mov	cl,  byte ptr [byte ptr [suppress_non_delimited]]
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0x40], eax
	mov	dword ptr [rbp - 0x44], edx
	call	print_kth
	xor	al, 0xff
	and	al, 1
	movzx	edx, al
	mov	r8d, dword ptr [rbp - 0x44]
	xor	r8d, edx
	cmp	r8d, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
.label_21:
	cmp	qword ptr [rbp - 0x18], 1
	jne	.label_60
	test	byte ptr [rbp - 0x1a], 1
	je	.label_60
	movabs	rdi, OFFSET FLAT:field_1_buffer
	movabs	rsi, OFFSET FLAT:field_1_bufsize
	xor	eax, eax
	mov	edx, eax
	mov	rcx, -1
	movzx	r8d,  byte ptr [byte ptr [delim]]
	movzx	r9d,  byte ptr [byte ptr [line_delim]]
	mov	r10, qword ptr [rbp - 8]
	mov	qword ptr [rsp], r10
	call	getndelim2
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jge	.label_29
	mov	rdi,  qword ptr [word ptr [field_1_buffer]]
	call	free
	mov	qword ptr [word ptr [field_1_buffer]],  0
	mov	rdi, qword ptr [rbp - 8]
	call	ferror_unlocked
	cmp	eax, 0
	jne	.label_43
	mov	rdi, qword ptr [rbp - 8]
	call	feof_unlocked
	cmp	eax, 0
	je	.label_44
.label_43:
	jmp	.label_48
.label_48:
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401c7a
	.globl sub_401c7a
	.type sub_401c7a, @function
sub_401c7a:

	nop	word ptr cs:[rax + rax]
.label_62:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0xc], eax
.label_41:
	jmp	.label_51
.label_51:
	mov	eax, dword ptr [rbp - 0xc]
	movzx	ecx,  byte ptr [byte ptr [delim]]
	cmp	eax, ecx
	jne	.label_52
	lea	rdi, [rbp - 0x18]
	call	next_item
	jmp	.label_42
.label_22:
	mov	eax, 1
	mov	edi, eax
	call	print_kth
	test	al, 1
	jne	.label_57
	jmp	.label_26
.label_57:
	mov	eax, 1
	mov	esi, eax
	mov	rdi,  qword ptr [word ptr [field_1_buffer]]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, 1
	mov	rdx,  qword ptr [word ptr [stdout]]
	mov	qword ptr [rbp - 0x60], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x60]
	call	fwrite_unlocked
	movzx	r8d,  byte ptr [byte ptr [delim]]
	movzx	r9d,  byte ptr [byte ptr [line_delim]]
	cmp	r8d, r9d
	mov	qword ptr [rbp - 0x68], rax
	jne	.label_63
	mov	rdi, qword ptr [rbp - 8]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], -1
	je	.label_30
	mov	edi, dword ptr [rbp - 0x34]
	mov	rsi, qword ptr [rbp - 8]
	call	ungetc
	mov	byte ptr [rbp - 0x19], 1
	mov	dword ptr [rbp - 0x6c], eax
.label_30:
	jmp	.label_36
.label_24:
	movabs	rdi, OFFSET FLAT:label_38
	movabs	rsi, OFFSET FLAT:label_39
	mov	edx, 0x149
	movabs	rcx, OFFSET FLAT:label_40
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x401d6e

	.globl cut_fields
	.type cut_fields, @function
cut_fields:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 1
	mov	byte ptr [rbp - 0x19], 0
	mov	rdi,  qword ptr [word ptr [frp]]
	mov	qword ptr [word ptr [current_rp]],  rdi
	mov	rdi, qword ptr [rbp - 8]
	call	getc_unlocked
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], -1
	jne	.label_64
	jmp	.label_48
.label_44:
	call	xalloc_die
.label_49:
	jmp	.label_55
.label_55:
	movzx	eax,  byte ptr [byte ptr [delim]]
	movzx	ecx,  byte ptr [byte ptr [line_delim]]
	cmp	eax, ecx
	jne	.label_51
	mov	eax, dword ptr [rbp - 0xc]
	movzx	ecx,  byte ptr [byte ptr [delim]]
	cmp	eax, ecx
	jne	.label_51
	mov	rdi, qword ptr [rbp - 8]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], -1
	je	.label_62
	mov	edi, dword ptr [rbp - 0x3c]
	mov	rsi, qword ptr [rbp - 8]
	call	ungetc
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_41
.label_63:
	mov	byte ptr [rbp - 0x19], 1
.label_36:
	jmp	.label_26
.label_26:
	lea	rdi, [rbp - 0x18]
	call	next_item
.label_60:
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x38], eax
	mov	rdi, qword ptr [rbp - 0x18]
	call	print_kth
	test	al, 1
	jne	.label_33
	jmp	.label_34
.label_33:
	test	byte ptr [rbp - 0x19], 1
	je	.label_37
	mov	eax, 1
	mov	esi, eax
	mov	rdi,  qword ptr [word ptr [output_delimiter_string]]
	mov	rdx,  qword ptr [word ptr [output_delimiter_length]]
	mov	rcx,  qword ptr [word ptr [stdout]]
	call	fwrite_unlocked
	mov	qword ptr [rbp - 0x78], rax
.label_37:
	mov	byte ptr [rbp - 0x19], 1
.label_61:
	mov	rdi, qword ptr [rbp - 8]
	call	getc_unlocked
	xor	ecx, ecx
	mov	dl, cl
	mov	dword ptr [rbp - 0xc], eax
	movzx	ecx,  byte ptr [byte ptr [delim]]
	cmp	eax, ecx
	mov	byte ptr [rbp - 0x79], dl
	je	.label_50
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0xc]
	movzx	edx,  byte ptr [byte ptr [line_delim]]
	cmp	eax, edx
	mov	byte ptr [rbp - 0x79], cl
	je	.label_50
	cmp	dword ptr [rbp - 0xc], -1
	setne	al
	mov	byte ptr [rbp - 0x79], al
.label_50:
	mov	al, byte ptr [rbp - 0x79]
	test	al, 1
	jne	.label_58
	jmp	.label_59
.label_58:
	mov	edi, dword ptr [rbp - 0xc]
	call	putchar_unlocked
	mov	edi, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x38], edi
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_61
.label_59:
	jmp	.label_55
.label_47:
	mov	dword ptr [rbp - 0xc], 0
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, 1
	mov	rcx,  qword ptr [word ptr [field_1_buffer]]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	movzx	edi, al
	movzx	edx,  byte ptr [byte ptr [delim]]
	cmp	edi, edx
	je	.label_22
	test	byte ptr [byte ptr [suppress_non_delimited]],  1
	je	.label_56
	jmp	.label_31
.label_53:
	mov	qword ptr [rbp - 0x18], 1
	mov	rax,  qword ptr [word ptr [frp]]
	mov	qword ptr [word ptr [current_rp]],  rax
	mov	byte ptr [rbp - 0x19], 0
.label_25:
	jmp	.label_42
.label_42:
	jmp	.label_21
.label_29:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_24
	jmp	.label_47
.label_67:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_71
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_65
	call	xalloc_die
.label_65:
	test	byte ptr [rbp - 0x31], 1
	je	.label_70
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_72
.label_70:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_72:
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
	je	.label_73
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_66]]
	mov	qword ptr [rax + 8], rcx
.label_73:
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
.label_71:
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
	ja	.label_68
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_69
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_69:
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
.label_68:
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
	#Procedure 0x4021a4
	.globl sub_4021a4
	.type sub_4021a4, @function
sub_4021a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021b1

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
	jge	.label_67
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4021f0

	.globl add_range_pair
	.type add_range_pair, @function
add_range_pair:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi,  qword ptr [word ptr [n_frp]]
	cmp	rsi,  qword ptr [word ptr [n_frp_allocated]]
	jne	.label_74
	movabs	rsi, OFFSET FLAT:n_frp_allocated
	mov	eax, 0x10
	mov	edx, eax
	mov	rcx,  qword ptr [word ptr [frp]]
	mov	rdi, rcx
	call	x2nrealloc
	mov	qword ptr [word ptr [frp]],  rax
.label_74:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [n_frp]]
	shl	rcx, 4
	add	rcx,  qword ptr [word ptr [frp]]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [n_frp]]
	shl	rcx, 4
	add	rcx,  qword ptr [word ptr [frp]]
	mov	qword ptr [rcx + 8], rax
	mov	rax,  qword ptr [word ptr [n_frp]]
	add	rax, 1
	mov	qword ptr [word ptr [n_frp]],  rax
	add	rsp, 0x10
	pop	rbp
	ret	
.label_78:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_76
	call	xalloc_die
.label_76:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_75:
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
	#Procedure 0x4022eb
	.globl sub_4022eb
	.type sub_4022eb, @function
sub_4022eb:

	nop	word ptr [rax + rax]
.label_79:
	jmp	.label_75
	.section	.text
	.align	16
	#Procedure 0x4022f9

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
	jne	.label_78
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_77
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
.label_77:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_79
	call	xalloc_die
.label_81:
	mov	byte ptr [rbp - 1], 0
.label_82:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40238e
	.globl sub_40238e
	.type sub_40238e, @function
sub_40238e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40239c
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_81
	jmp	.label_80
.label_80:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_82
.label_98:
	mov	eax, 0x10
	mov	edx, eax
	movabs	rcx, OFFSET FLAT:compare_ranges
	mov	rsi,  qword ptr [word ptr [frp]]
	mov	rdi,  qword ptr [word ptr [n_frp]]
	mov	qword ptr [rbp - 0xa8], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0xa8]
	call	qsort
	mov	qword ptr [rbp - 0x40], 0
.label_96:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax,  qword ptr [word ptr [n_frp]]
	jae	.label_157
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
.label_90:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax,  qword ptr [word ptr [n_frp]]
	jae	.label_91
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 4
	add	rax,  qword ptr [word ptr [frp]]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rcx, 4
	add	rcx,  qword ptr [word ptr [frp]]
	cmp	rax, qword ptr [rcx + 8]
	ja	.label_97
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 4
	add	rax,  qword ptr [word ptr [frp]]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rcx, 4
	add	rcx,  qword ptr [word ptr [frp]]
	cmp	rax, qword ptr [rcx + 8]
	jbe	.label_110
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 4
	add	rax,  qword ptr [word ptr [frp]]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_123
.label_112:
	mov	byte ptr [rbp - 0x23], 1
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_134
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_134
	jmp	.label_143
.label_143:
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 4
	cmp	eax, 0
	je	.label_144
	movabs	rdi, OFFSET FLAT:label_136
	call	gettext
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_153
.label_157:
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 2
	cmp	eax, 0
	je	.label_156
	call	complement_rp
.label_156:
	mov	rax,  qword ptr [word ptr [n_frp]]
	add	rax, 1
	mov	qword ptr [word ptr [n_frp]],  rax
	mov	rax,  qword ptr [word ptr [frp]]
	mov	rcx,  qword ptr [word ptr [n_frp]]
	shl	rcx, 4
	mov	rdi, rax
	mov	rsi, rcx
	call	xrealloc
	mov	qword ptr [word ptr [frp]],  rax
	mov	rax,  qword ptr [word ptr [n_frp]]
	sub	rax, 1
	shl	rax, 4
	add	rax,  qword ptr [word ptr [frp]]
	mov	qword ptr [rax + 8], -1
	mov	rax,  qword ptr [word ptr [n_frp]]
	sub	rax, 1
	shl	rax, 4
	add	rax,  qword ptr [word ptr [frp]]
	mov	qword ptr [rax], -1
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402592
	.globl sub_402592
	.type sub_402592, @function
sub_402592:

	nop	word ptr cs:[rax + rax]
.label_108:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2c
	je	.label_130
	mov	rax, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rax]
	call	to_uchar_0
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x68], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x68]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 1
	cmp	edi, 0
	jne	.label_130
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_149
.label_130:
	mov	byte ptr [rbp - 0x24], 0
	test	byte ptr [rbp - 0x23], 1
	je	.label_152
	mov	byte ptr [rbp - 0x23], 0
	test	byte ptr [rbp - 0x21], 1
	jne	.label_85
	test	byte ptr [rbp - 0x22], 1
	jne	.label_85
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 1
	cmp	eax, 0
	je	.label_88
	mov	qword ptr [rbp - 0x18], 1
	jmp	.label_93
.label_145:
	mov	eax, 1
	imul	rcx, qword ptr [rbp - 0x20], 0xa
	mov	rdx, qword ptr [rbp - 8]
	movsx	esi, byte ptr [rdx]
	sub	esi, 0x30
	movsxd	rdx, esi
	add	rcx, rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x74], eax
.label_155:
	mov	eax, dword ptr [rbp - 0x74]
	cmp	eax, 0
	je	.label_106
	cmp	qword ptr [rbp - 0x20], -1
	jne	.label_99
.label_106:
	movabs	rsi, OFFSET FLAT:label_114
	mov	rdi,  qword ptr [word ptr [set_fields.num_start]]
	call	strspn
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi,  qword ptr [word ptr [set_fields.num_start]]
	mov	rsi, qword ptr [rbp - 0x30]
	call	xstrndup
	mov	qword ptr [rbp - 0x38], rax
	mov	ecx, dword ptr [rbp - 0xc]
	and	ecx, 4
	cmp	ecx, 0
	je	.label_126
	movabs	rdi, OFFSET FLAT:label_133
	call	gettext
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_138
.label_134:
	test	byte ptr [rbp - 0x21], 1
	je	.label_105
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_113
.label_149:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_146
	test	byte ptr [rbp - 0x24], 1
	je	.label_151
	cmp	qword ptr [word ptr [set_fields.num_start]],  0
	jne	.label_154
.label_151:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [set_fields.num_start]],  rax
.label_154:
	mov	byte ptr [rbp - 0x24], 1
	test	byte ptr [rbp - 0x23], 1
	je	.label_87
	mov	byte ptr [rbp - 0x22], 1
	jmp	.label_135
.label_91:
	jmp	.label_150
.label_150:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_96
.label_97:
	jmp	.label_91
.label_144:
	movabs	rdi, OFFSET FLAT:label_103
	call	gettext
	mov	qword ptr [rbp - 0x58], rax
.label_153:
	mov	rax, qword ptr [rbp - 0x58]
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_93:
	jmp	.label_85
.label_85:
	test	byte ptr [rbp - 0x22], 1
	jne	.label_119
	mov	rsi, -1
	mov	rdi, qword ptr [rbp - 0x18]
	call	add_range_pair
	jmp	.label_125
.label_152:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_127
	jmp	.label_131
.label_131:
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 4
	cmp	eax, 0
	je	.label_132
	movabs	rdi, OFFSET FLAT:label_136
	call	gettext
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_129
.label_92:
	jmp	.label_95
.label_95:
	jmp	.label_120
.label_120:
	jmp	.label_118
	.section	.text
	.align	16
	#Procedure 0x4027dc

	.globl set_fields
	.type set_fields, @function
set_fields:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], 1
	mov	qword ptr [rbp - 0x20], 0
	mov	byte ptr [rbp - 0x21], 0
	mov	byte ptr [rbp - 0x22], 0
	mov	byte ptr [rbp - 0x23], 0
	mov	byte ptr [rbp - 0x24], 0
	mov	esi, dword ptr [rbp - 0xc]
	and	esi, 1
	cmp	esi, 0
	je	.label_158
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:label_159
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_158
	mov	qword ptr [rbp - 0x20], 1
	mov	byte ptr [rbp - 0x21], 1
	mov	byte ptr [rbp - 0x23], 1
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
.label_158:
	jmp	.label_118
.label_118:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_108
	mov	byte ptr [rbp - 0x24], 0
	test	byte ptr [rbp - 0x23], 1
	je	.label_112
	jmp	.label_117
.label_117:
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 4
	cmp	eax, 0
	je	.label_121
	movabs	rdi, OFFSET FLAT:label_122
	call	gettext
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_128
.label_127:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x20]
	call	add_range_pair
	mov	qword ptr [rbp - 0x20], 0
.label_141:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_137
	jmp	.label_140
.label_119:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_142
	jmp	.label_147
.label_147:
	movabs	rdi, OFFSET FLAT:label_148
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_146:
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 4
	cmp	eax, 0
	je	.label_84
	movabs	rdi, OFFSET FLAT:label_89
	call	gettext
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_94
.label_88:
	jmp	.label_86
.label_86:
	movabs	rdi, OFFSET FLAT:label_100
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_110:
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 4
	add	rax,  qword ptr [word ptr [frp]]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0xb0], rax
.label_123:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rcx, 4
	add	rcx,  qword ptr [word ptr [frp]]
	mov	qword ptr [rcx + 8], rax
	mov	rax,  qword ptr [word ptr [frp]]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rcx, 4
	add	rax, rcx
	mov	rcx,  qword ptr [word ptr [frp]]
	mov	rdx, qword ptr [rbp - 0x48]
	shl	rdx, 4
	add	rcx, rdx
	add	rcx, 0x10
	mov	rdx,  qword ptr [word ptr [n_frp]]
	sub	rdx, qword ptr [rbp - 0x48]
	sub	rdx, 1
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rcx
	call	memmove
	mov	rcx,  qword ptr [word ptr [n_frp]]
	add	rcx, -1
	mov	qword ptr [word ptr [n_frp]],  rcx
	mov	rcx, qword ptr [rbp - 0x48]
	add	rcx, -1
	mov	qword ptr [rbp - 0x48], rcx
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_109
.label_109:
	jmp	.label_101
.label_101:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_90
.label_99:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_92
.label_104:
	movabs	rdi, OFFSET FLAT:label_116
	call	gettext
	mov	qword ptr [rbp - 0xa0], rax
.label_111:
	mov	rax, qword ptr [rbp - 0xa0]
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_105:
	mov	eax, 1
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_113
.label_113:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_120
.label_121:
	movabs	rdi, OFFSET FLAT:label_124
	call	gettext
	mov	qword ptr [rbp - 0x50], rax
.label_128:
	mov	rax, qword ptr [rbp - 0x50]
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_87:
	mov	byte ptr [rbp - 0x21], 1
.label_135:
	movabs	rax, 0x1999999999999999
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_139
	imul	rax, qword ptr [rbp - 0x20], 0xa
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx]
	sub	edx, 0x30
	movsxd	rcx, edx
	add	rax, rcx
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_145
.label_139:
	xor	eax, eax
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_155
.label_132:
	movabs	rdi, OFFSET FLAT:label_103
	call	gettext
	mov	qword ptr [rbp - 0x70], rax
.label_129:
	mov	rax, qword ptr [rbp - 0x70]
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_140:
	cmp	qword ptr [word ptr [n_frp]],  0
	jne	.label_98
	jmp	.label_102
.label_102:
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 4
	cmp	eax, 0
	je	.label_104
	movabs	rdi, OFFSET FLAT:label_107
	call	gettext
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_111
.label_84:
	movabs	rdi, OFFSET FLAT:label_115
	call	gettext
	mov	qword ptr [rbp - 0x90], rax
.label_94:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x98], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_142:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	add_range_pair
.label_125:
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_141
.label_126:
	movabs	rdi, OFFSET FLAT:label_83
	call	gettext
	mov	qword ptr [rbp - 0x80], rax
.label_138:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x88], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	mov	edi, 1
	call	usage
.label_137:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	mov	byte ptr [rbp - 0x21], 0
	mov	byte ptr [rbp - 0x22], 0
	jmp	.label_95
.label_161:
	mov	byte ptr [rbp - 1], 0
.label_162:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c4e
	.globl sub_402c4e
	.type sub_402c4e, @function
sub_402c4e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c5c
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_161
	jmp	.label_160
.label_160:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_162
.label_163:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c8a
	.globl sub_402c8a
	.type sub_402c8a, @function
sub_402c8a:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c8f

	.globl xstrndup
	.type xstrndup, @function
xstrndup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	strndup
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_163
	call	xalloc_die
.label_165:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_164
.label_164:
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
	#Procedure 0x402d51
	.globl sub_402d51
	.type sub_402d51, @function
sub_402d51:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d5c
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
	je	.label_165
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_164
	.section	.text
	.align	16
	#Procedure 0x402d90

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
.label_166:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_170
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_168
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_167
.label_168:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_167:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_170:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_172
	jmp	.label_171
.label_172:
	jmp	.label_169
.label_169:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_166
.label_171:
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
	#Procedure 0x402e99
	.globl sub_402e99
	.type sub_402e99, @function
sub_402e99:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402ea0

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_173
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
.label_176:
	mov	dword ptr [rbp - 4], 0
.label_175:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ee0
	.globl sub_402ee0
	.type sub_402ee0, @function
sub_402ee0:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402ee7

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
	jne	.label_174
	test	byte ptr [rbp - 0x13], 1
	je	.label_176
	test	byte ptr [rbp - 0x11], 1
	jne	.label_174
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_176
.label_174:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_177
	call	__errno_location
	mov	dword ptr [rax], 0
.label_177:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_175
	.section	.text
	.align	16
	#Procedure 0x402f80

	.globl cut_stream
	.type cut_stream, @function
cut_stream:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	dword ptr [dword ptr [operating_mode]],  1
	jne	.label_178
	mov	rdi, qword ptr [rbp - 8]
	call	cut_bytes
	jmp	.label_179
.label_178:
	mov	rdi, qword ptr [rbp - 8]
	call	cut_fields
.label_179:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402fb7
	.globl sub_402fb7
	.type sub_402fb7, @function
sub_402fb7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fc0

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
	je	.label_180
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_180:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ffb
	.globl sub_402ffb
	.type sub_402ffb, @function
sub_402ffb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403000
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
	#Procedure 0x403027
	.globl sub_403027
	.type sub_403027, @function
sub_403027:

	nop	word ptr [rax + rax]
.label_182:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_183:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40303b
	.globl sub_40303b
	.type sub_40303b, @function
sub_40303b:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403044

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_182
	jmp	.label_181
.label_181:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_183
	.section	.text
	.align	16
	#Procedure 0x403070

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
	jne	.label_184
	cmp	qword ptr [rbp - 8], 0
	je	.label_184
	call	xalloc_die
.label_184:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4030ae
	.globl sub_4030ae
	.type sub_4030ae, @function
sub_4030ae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4030b0
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
	#Procedure 0x4030d5
	.globl sub_4030d5
	.type sub_4030d5, @function
sub_4030d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030e0

	.globl to_uchar_0
	.type to_uchar_0, @function
to_uchar_0:
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	movzx	eax, byte ptr [rbp - 1]
	pop	rbp
	ret	
.label_186:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_201
.label_194:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x1058], rax
.label_198:
	mov	rax, qword ptr [rbp - 0x1058]
	mov	ecx, 1
	mov	esi, ecx
	lea	rdi, [rbp - 0x1040]
	mov	qword ptr [rbp - 0x1048], rax
	mov	rdx, qword ptr [rbp - 0x1048]
	mov	rcx, qword ptr [rbp - 0x10]
	call	fread
	cmp	rax, qword ptr [rbp - 0x1048]
	jae	.label_202
	jmp	.label_187
	.section	.text
	.align	16
	#Procedure 0x40314a

	.globl freadseek
	.type freadseek, @function
freadseek:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1060
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_191
	mov	dword ptr [rbp - 4], 0
	jmp	.label_188
.label_196:
	jmp	.label_189
.label_189:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fgetc
	cmp	eax, -1
	jne	.label_185
	jmp	.label_187
.label_190:
	jmp	.label_192
.label_192:
	mov	eax, 0x1000
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x18]
	jae	.label_194
	mov	eax, 0x1000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x1058], rcx
	jmp	.label_198
.label_202:
	mov	rax, qword ptr [rbp - 0x1048]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x18], rcx
	cmp	qword ptr [rbp - 0x18], 0
	ja	.label_192
	mov	dword ptr [rbp - 4], 0
	jmp	.label_188
.label_187:
	mov	rdi, qword ptr [rbp - 0x10]
	call	ferror
	cmp	eax, 0
	je	.label_200
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_188
.label_199:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	jl	.label_190
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	edi, dword ptr [rbp - 0x24]
	call	lseek
	cmp	rax, 0
	jl	.label_190
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	rpl_fseeko
	mov	dword ptr [rbp - 4], eax
	jmp	.label_188
.label_185:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_186
	mov	dword ptr [rbp - 4], 0
	jmp	.label_188
.label_193:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x1050], rax
.label_197:
	mov	rax, qword ptr [rbp - 0x1050]
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x38]
	call	freadptrinc
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x18]
	sub	rsi, rax
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_195
	mov	dword ptr [rbp - 4], 0
	jmp	.label_188
.label_200:
	mov	dword ptr [rbp - 4], 0
.label_188:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x1060
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4032ca
	.globl sub_4032ca
	.type sub_4032ca, @function
sub_4032ca:

	nop	word ptr cs:[rax + rax]
.label_191:
	mov	rdi, qword ptr [rbp - 0x10]
	call	freadahead
	mov	qword ptr [rbp - 0x20], rax
.label_201:
	cmp	qword ptr [rbp - 0x20], 0
	jbe	.label_199
	lea	rsi, [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x10]
	call	freadptr
	cmp	rax, 0
	je	.label_189
	cmp	qword ptr [rbp - 0x30], 0
	jbe	.label_189
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_193
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x1050], rax
	jmp	.label_197
.label_195:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x20], rcx
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_196
	jmp	.label_199
.label_206:
	jmp	.label_203
.label_203:
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
	jne	.label_204
	jmp	.label_207
.label_204:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_203
.label_207:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_205:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4033c7
	.globl sub_4033c7
	.type sub_4033c7, @function
sub_4033c7:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033d6

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
	jne	.label_206
	mov	dword ptr [rbp - 4], 0
	jmp	.label_205
	.section	.text
	.align	16
	#Procedure 0x403410

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
	je	.label_208
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_211
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_212
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_210
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_209
.label_212:
	mov	byte ptr [rbp - 5], 0
.label_209:
	jmp	.label_208
.label_208:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403483
	.globl sub_403483
	.type sub_403483, @function
sub_403483:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403490

	.globl complement_rp
	.type complement_rp, @function
complement_rp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rax,  qword ptr [word ptr [frp]]
	mov	qword ptr [rbp - 8], rax
	mov	rax,  qword ptr [word ptr [n_frp]]
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [word ptr [frp]],  0
	mov	qword ptr [word ptr [n_frp]],  0
	mov	qword ptr [word ptr [n_frp_allocated]],  0
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax], 1
	jbe	.label_215
	mov	eax, 1
	mov	edi, eax
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	sub	rcx, 1
	mov	rsi, rcx
	call	add_range_pair
.label_215:
	mov	qword ptr [rbp - 0x18], 1
.label_217:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_213
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx]
	jne	.label_216
	jmp	.label_218
.label_216:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	sub	rcx, 1
	mov	rdi, rax
	mov	rsi, rcx
	call	add_range_pair
.label_218:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_217
.label_213:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 8], -1
	jae	.label_214
	mov	rsi, -1
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	add	rax, 1
	mov	rdi, rax
	call	add_range_pair
.label_214:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4035df
	.globl sub_4035df
	.type sub_4035df, @function
sub_4035df:

	nop	
.label_219:
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
	#Procedure 0x40360a
	.globl sub_40360a
	.type sub_40360a, @function
sub_40360a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403616

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
	jne	.label_219
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403650

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
	#Procedure 0x403670

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
	ja	.label_220
	jmp	.label_222
.label_222:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_221
.label_220:
	jmp	.label_221
.label_221:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4036ba
	.globl sub_4036ba
	.type sub_4036ba, @function
sub_4036ba:

	nop	word ptr [rax + rax]
.label_225:
	mov	byte ptr [rbp - 1], 0
.label_223:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4036ce
	.globl sub_4036ce
	.type sub_4036ce, @function
sub_4036ce:

	nop	word ptr cs:[rax + rax]
.label_827:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_223
	.section	.text
	.align	16
	#Procedure 0x4036e6
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
	ja	.label_225
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_224]]
	jmp	rcx
	.section	.text
	.align	16
	#Procedure 0x403710

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_228
	jmp	.label_236
.label_236:
	movabs	rdi, OFFSET FLAT:label_237
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_232
.label_228:
	movabs	rdi, OFFSET FLAT:label_235
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_227
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:label_238
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_229
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_240
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_230
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_239
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_231
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_241
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_233
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_226
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_234
	mov	dword ptr [rbp - 0x40], eax
	call	emit_ancillary_info
.label_232:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x4038fc
	.globl sub_4038fc
	.type sub_4038fc, @function
sub_4038fc:

	nop	dword ptr [rax]
.label_253:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403906
	.globl sub_403906
	.type sub_403906, @function
sub_403906:

	nop	word ptr cs:[rax + rax]
.label_244:
	lea	rdi, [rbp - 0x10]
	call	next_item
	mov	rdi, qword ptr [rbp - 0x10]
	call	print_kth
	test	al, 1
	jne	.label_249
	jmp	.label_250
.label_249:
	test	byte ptr [byte ptr [output_delimiter_specified]],  1
	je	.label_251
	test	byte ptr [rbp - 0x11], 1
	je	.label_245
	mov	rdi, qword ptr [rbp - 0x10]
	call	is_range_start_index
	test	al, 1
	jne	.label_242
	jmp	.label_245
.label_242:
	mov	eax, 1
	mov	esi, eax
	mov	rdi,  qword ptr [word ptr [output_delimiter_string]]
	mov	rdx,  qword ptr [word ptr [output_delimiter_length]]
	mov	rcx,  qword ptr [word ptr [stdout]]
	call	fwrite_unlocked
	mov	qword ptr [rbp - 0x28], rax
.label_245:
	mov	byte ptr [rbp - 0x11], 1
.label_251:
	mov	edi, dword ptr [rbp - 0x18]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_250:
	jmp	.label_252
.label_252:
	jmp	.label_246
.label_246:
	jmp	.label_247
	.section	.text
	.align	16
	#Procedure 0x4039a3

	.globl cut_bytes
	.type cut_bytes, @function
cut_bytes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x11], 0
	mov	rdi,  qword ptr [word ptr [frp]]
	mov	qword ptr [word ptr [current_rp]],  rdi
.label_247:
	mov	rdi, qword ptr [rbp - 8]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x18], eax
	mov	eax, dword ptr [rbp - 0x18]
	movzx	ecx,  byte ptr [byte ptr [line_delim]]
	cmp	eax, ecx
	jne	.label_243
	mov	edi, dword ptr [rbp - 0x18]
	call	putchar_unlocked
	mov	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x11], 0
	mov	rcx,  qword ptr [word ptr [frp]]
	mov	qword ptr [word ptr [current_rp]],  rcx
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_246
.label_243:
	cmp	dword ptr [rbp - 0x18], -1
	jne	.label_244
	cmp	qword ptr [rbp - 0x10], 0
	jbe	.label_248
	movzx	edi,  byte ptr [byte ptr [line_delim]]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x20], eax
.label_248:
	jmp	.label_253
	.section	.text
	.align	16
	#Procedure 0x403a40

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
	#Procedure 0x403ab2
	.globl sub_403ab2
	.type sub_403ab2, @function
sub_403ab2:

	nop	word ptr cs:[rax + rax]
.label_256:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_254:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ad2
	.globl sub_403ad2
	.type sub_403ad2, @function
sub_403ad2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ae1

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
	jne	.label_255
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_255:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_256
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_256
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_256
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_254
.label_258:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_257
	mov	qword ptr [rbp - 8], 0
	jmp	.label_259
.label_257:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
.label_259:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403bbc
	.globl sub_403bbc
	.type sub_403bbc, @function
sub_403bbc:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403bc1

	.globl freadptr
	.type freadptr, @function
freadptr:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rdi + 0x20]
	jbe	.label_258
	mov	qword ptr [rbp - 8], 0
	jmp	.label_259
	.section	.text
	.align	16
	#Procedure 0x403bf0

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
	#Procedure 0x403c65
	.globl sub_403c65
	.type sub_403c65, @function
sub_403c65:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c70
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
	#Procedure 0x403ca7
	.globl sub_403ca7
	.type sub_403ca7, @function
sub_403ca7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403cb0

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
	je	.label_260
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
.label_260:
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
	#Procedure 0x403e14
	.globl sub_403e14
	.type sub_403e14, @function
sub_403e14:

	nop	word ptr cs:[rax + rax]
.label_261:
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax, dword ptr [rbp - 0x18]
	setg	cl
	and	cl, 1
	movzx	eax, cl
	mov	dword ptr [rbp - 0x1c], eax
.label_262:
	mov	eax, dword ptr [rbp - 0x1c]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e37
	.globl sub_403e37
	.type sub_403e37, @function
sub_403e37:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e43

	.globl compare_ranges
	.type compare_ranges, @function
compare_ranges:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi]
	mov	eax, esi
	mov	dword ptr [rbp - 0x14], eax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	eax, esi
	mov	dword ptr [rbp - 0x18], eax
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax, dword ptr [rbp - 0x18]
	jge	.label_261
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_262
	.section	.text
	.align	16
	#Procedure 0x403e80

	.globl next_item
	.type next_item, @function
next_item:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi]
	add	rax, 1
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rdi,  qword ptr [word ptr [current_rp]]
	cmp	rax, qword ptr [rdi + 8]
	jbe	.label_263
	mov	rax,  qword ptr [word ptr [current_rp]]
	add	rax, 0x10
	mov	qword ptr [word ptr [current_rp]],  rax
.label_263:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ec5
	.globl sub_403ec5
	.type sub_403ec5, @function
sub_403ec5:

	nop	word ptr cs:[rax + rax]
.label_825:
	movabs	rdi, OFFSET FLAT:label_264
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
	jmp	.label_265
.label_820:
	movabs	rdi, OFFSET FLAT:label_267
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
	jmp	.label_265
.label_282:
	movabs	rsi, OFFSET FLAT:label_273
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_270:
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
	mov	ecx, OFFSET FLAT:label_279
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
	ja	.label_269
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_276]]
	jmp	rcx
.label_824:
	movabs	rdi, OFFSET FLAT:label_280
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
	jmp	.label_265
.label_818:
	movabs	rdi, OFFSET FLAT:label_275
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
	jmp	.label_265
.label_817:
	movabs	rdi, OFFSET FLAT:label_274
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
	jmp	.label_265
.label_819:
	movabs	rdi, OFFSET FLAT:label_271
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
	jmp	.label_265
.label_823:
	movabs	rdi, OFFSET FLAT:label_277
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
	jmp	.label_265
.label_816:
	jmp	.label_265
	.section	.text
	.align	16
	#Procedure 0x40427b

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
	je	.label_282
	movabs	rsi, OFFSET FLAT:label_278
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_270
.label_821:
	movabs	rdi, OFFSET FLAT:label_272
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
	jmp	.label_265
.label_269:
	movabs	rdi, OFFSET FLAT:label_268
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
.label_265:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404402
	.globl sub_404402
	.type sub_404402, @function
sub_404402:

	nop	
.label_822:
	movabs	rdi, OFFSET FLAT:label_266
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
	jmp	.label_265
	.section	.text
	.align	16
	#Procedure 0x404490

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
	#Procedure 0x4044c6
	.globl sub_4044c6
	.type sub_4044c6, @function
sub_4044c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044d0
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
	#Procedure 0x4044fa
	.globl sub_4044fa
	.type sub_4044fa, @function
sub_4044fa:

	nop	word ptr [rax + rax]
.label_285:
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
	#Procedure 0x404523
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
.label_284:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_285
	jmp	.label_283
.label_283:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_284
	.section	.text
	.align	16
	#Procedure 0x404570
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
	#Procedure 0x40458f
	.globl sub_40458f
	.type sub_40458f, @function
sub_40458f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404590
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
	#Procedure 0x4045b7
	.globl sub_4045b7
	.type sub_4045b7, @function
sub_4045b7:

	nop	word ptr [rax + rax]
.label_287:
	mov	byte ptr [rbp - 1], 0
.label_289:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4045ce
	.globl sub_4045ce
	.type sub_4045ce, @function
sub_4045ce:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045d6
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
	jb	.label_286
	jmp	.label_288
.label_288:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_287
	jmp	.label_286
.label_286:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_289
	.section	.text
	.align	16
	#Procedure 0x404610

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
	#Procedure 0x4046bd
	.globl sub_4046bd
	.type sub_4046bd, @function
sub_4046bd:

	nop	dword ptr [rax]
.label_291:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_290:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4046de
	.globl sub_4046de
	.type sub_4046de, @function
sub_4046de:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046e6

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_292
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_291
.label_292:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_290
	.section	.text
	.align	16
	#Procedure 0x404720

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	je	.label_293
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
.label_293:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404763
	.globl sub_404763
	.type sub_404763, @function
sub_404763:

	nop	word ptr cs:[rax + rax]
.label_296:
	mov	byte ptr [rbp - 1], 0
.label_295:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40477e
	.globl sub_40477e
	.type sub_40477e, @function
sub_40477e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40477f
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_296
	jmp	.label_294
.label_294:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_295
	.section	.text
	.align	16
	#Procedure 0x4047a0

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
	#Procedure 0x4047d2
	.globl sub_4047d2
	.type sub_4047d2, @function
sub_4047d2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047e0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_297
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_298
.label_297:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_298
.label_298:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40481b
	.globl sub_40481b
	.type sub_40481b, @function
sub_40481b:

	nop	dword ptr [rax + rax]
.label_306:
	jmp	.label_302
.label_302:
	mov	esi, 2
	mov	rdi, qword ptr [rbp - 0x18]
	call	fadvise
	mov	rdi, qword ptr [rbp - 0x18]
	call	cut_stream
	mov	rdi, qword ptr [rbp - 0x18]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_300
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x20], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_12
	mov	esi, dword ptr [rbp - 0x20]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_299
.label_300:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_159
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_301
	mov	rdi, qword ptr [rbp - 0x18]
	call	clearerr_unlocked
	jmp	.label_303
.label_301:
	mov	rdi, qword ptr [rbp - 0x18]
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_304
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x24], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_12
	mov	esi, dword ptr [rbp - 0x24]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_299
	.section	.text
	.align	16
	#Procedure 0x4048ff

	.globl cut_file
	.type cut_file, @function
cut_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_159
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_307
	mov	byte ptr [byte ptr [have_read_stdin]],  1
	mov	rax,  qword ptr [word ptr [stdin]]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_302
.label_304:
	jmp	.label_303
.label_303:
	mov	byte ptr [rbp - 1], 1
.label_299:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404954
	.globl sub_404954
	.type sub_404954, @function
sub_404954:

	nop	word ptr cs:[rax + rax]
.label_307:
	movabs	rsi, OFFSET FLAT:label_305
	mov	rdi, qword ptr [rbp - 0x10]
	call	fopen
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_306
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x1c], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_12
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_299
	.section	.text
	.align	16
	#Procedure 0x4049c0
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
	#Procedure 0x4049e8
	.globl sub_4049e8
	.type sub_4049e8, @function
sub_4049e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049f0
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
	#Procedure 0x404a21
	.globl sub_404a21
	.type sub_404a21, @function
sub_404a21:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a30

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
	#Procedure 0x404a58
	.globl sub_404a58
	.type sub_404a58, @function
sub_404a58:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a60

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
	jne	.label_308
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_308:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_310
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_309
.label_310:
	call	abort
.label_309:
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
	#Procedure 0x404ad0

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
	je	.label_311
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_312
.label_311:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_312
.label_312:
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
	je	.label_313
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_313:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c24
	.globl sub_404c24
	.type sub_404c24, @function
sub_404c24:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c30

	.globl is_range_start_index
	.type is_range_start_index, @function
is_range_start_index:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax,  qword ptr [word ptr [current_rp]]
	cmp	rdi, qword ptr [rax]
	sete	cl
	and	cl, 1
	movzx	eax, cl
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c52
	.globl sub_404c52
	.type sub_404c52, @function
sub_404c52:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c60

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
	#Procedure 0x404c7b
	.globl sub_404c7b
	.type sub_404c7b, @function
sub_404c7b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c80
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_316:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_315
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_316
.label_315:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_317
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_66]],  rax
.label_317:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_314
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_314:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d54
	.globl sub_404d54
	.type sub_404d54, @function
sub_404d54:

	nop	word ptr cs:[rax + rax]
.label_318:
	mov	byte ptr [rbp - 1], 0
.label_321:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d6e
	.globl sub_404d6e
	.type sub_404d6e, @function
sub_404d6e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d79
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
	jb	.label_319
	jmp	.label_320
.label_320:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_319
	jmp	.label_322
.label_322:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_318
	jmp	.label_319
.label_319:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_321
	.section	.text
	.align	16
	#Procedure 0x404dd0
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
	#Procedure 0x404dfd
	.globl sub_404dfd
	.type sub_404dfd, @function
sub_404dfd:

	nop	dword ptr [rax]
.label_323:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404e17
	.globl sub_404e17
	.type sub_404e17, @function
sub_404e17:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e1f
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
	jae	.label_323
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404e50

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
	#Procedure 0x404e83
	.globl sub_404e83
	.type sub_404e83, @function
sub_404e83:

	nop	word ptr cs:[rax + rax]
.label_325:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_324
.label_324:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404eae
	.globl sub_404eae
	.type sub_404eae, @function
sub_404eae:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404eb7
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
	je	.label_325
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_324
.label_326:
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
	#Procedure 0x404efb
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
	jae	.label_326
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404f30

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
	#Procedure 0x404f67
	.globl sub_404f67
	.type sub_404f67, @function
sub_404f67:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f70

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
	jne	.label_328
	movabs	rax, OFFSET FLAT:label_327
	mov	qword ptr [rbp - 8], rax
.label_328:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_329
	movabs	rax, OFFSET FLAT:label_330
	mov	qword ptr [rbp - 8], rax
.label_329:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404fc7
	.globl sub_404fc7
	.type sub_404fc7, @function
sub_404fc7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fd0
	.globl reset_fields
	.type reset_fields, @function
reset_fields:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [word ptr [n_frp]],  0
	mov	qword ptr [word ptr [n_frp_allocated]],  0
	mov	rax,  qword ptr [word ptr [frp]]
	mov	rdi, rax
	call	free
	mov	qword ptr [word ptr [frp]],  0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40500a
	.globl sub_40500a
	.type sub_40500a, @function
sub_40500a:

	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405010
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
	jb	.label_331
	jmp	.label_334
.label_334:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_332
	jmp	.label_331
.label_331:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_333
.label_332:
	mov	byte ptr [rbp - 1], 0
.label_333:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40505e
	.globl sub_40505e
	.type sub_40505e, @function
sub_40505e:

	nop	
.label_338:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rcx]
	and	edx, 0x100
	cmp	edx, 0
	mov	qword ptr [rbp - 0x18], rax
	je	.label_335
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x48]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_336
.label_335:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_336
.label_336:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, rax
	mov	qword ptr [rbp - 8], rcx
.label_337:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4050ca
	.globl sub_4050ca
	.type sub_4050ca, @function
sub_4050ca:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050d5

	.globl freadahead
	.type freadahead, @function
freadahead:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rdi, qword ptr [rax + 0x20]
	jbe	.label_338
	mov	qword ptr [rbp - 8], 0
	jmp	.label_337
	.section	.text
	.align	16
	#Procedure 0x405100

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_339
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405130

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
	#Procedure 0x405162
	.globl sub_405162
	.type sub_405162, @function
sub_405162:

	nop	word ptr cs:[rax + rax]
.label_341:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_340
.label_340:
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
	#Procedure 0x4051b4
	.globl sub_4051b4
	.type sub_4051b4, @function
sub_4051b4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051c2
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
	je	.label_341
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_340
	.section	.text
	.align	16
	#Procedure 0x4051f0

	.globl freadptrinc
	.type freadptrinc, @function
freadptrinc:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rdi + 8]
	mov	qword ptr [rdi + 8], rsi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40520e
	.globl sub_40520e
	.type sub_40520e, @function
sub_40520e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405210

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_346
	movabs	rdi, OFFSET FLAT:label_343
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_342:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_349:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_345
	movabs	rsi, OFFSET FLAT:label_344
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_345
	movabs	rsi, OFFSET FLAT:label_347
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_348
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_348:
	jmp	.label_345
.label_345:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4052fb
	.globl sub_4052fb
	.type sub_4052fb, @function
sub_4052fb:

	nop	dword ptr [rax]
.label_346:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_342
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_349
	.section	.text
	.align	16
	#Procedure 0x405330
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_350
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_350:
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
	#Procedure 0x40536d
	.globl sub_40536d
	.type sub_40536d, @function
sub_40536d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405370
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_351
	jmp	.label_353
.label_353:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_352
.label_351:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_352:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4053a7
	.globl sub_4053a7
	.type sub_4053a7, @function
sub_4053a7:

	nop	word ptr [rax + rax]
.label_355:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4053ba
	.globl sub_4053ba
	.type sub_4053ba, @function
sub_4053ba:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053c4
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
	jb	.label_354
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_355
.label_354:
	call	xalloc_die
.label_548:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_358
	jmp	.label_360
.label_358:
	jmp	.label_362
.label_372:
	jmp	.label_364
.label_526:
	jmp	.label_366
.label_366:
	jmp	.label_364
.label_499:
	jmp	.label_369
.label_369:
	mov	byte ptr [rbp - 0x83], 1
.label_769:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_372
	test	byte ptr [rbp - 0x7b], 1
	je	.label_372
	jmp	.label_360
.label_768:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_376
.label_748:
	mov	byte ptr [rbp - 0x79], 1
.label_747:
	mov	byte ptr [rbp - 0x7b], 1
.label_749:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_379
	mov	byte ptr [rbp - 0x79], 1
.label_379:
	jmp	.label_382
.label_382:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_357
	jmp	.label_390
.label_390:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_539
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_539:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_357
.label_357:
	movabs	rax, OFFSET FLAT:label_401
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_397
.label_392:
	jmp	.label_419
.label_419:
	jmp	.label_424
.label_424:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_389
.label_412:
	jmp	.label_405
.label_405:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_381
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_381:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_500
.label_495:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_422
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_422
	jmp	.label_429
.label_429:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_431
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_431:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_437
.label_437:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_438
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_438:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_445
.label_445:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_449
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_449:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_422:
	jmp	.label_458
.label_458:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_459
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_459:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_466
.label_466:
	jmp	.label_504
.label_504:
	jmp	.label_471
.label_471:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_472
	test	byte ptr [rbp - 0x82], 1
	jne	.label_472
	jmp	.label_477
.label_477:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_395
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_395:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_480
.label_480:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_482
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_482:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_472:
	jmp	.label_494
.label_494:
	jmp	.label_511
.label_511:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_496
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_496:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_502
	mov	byte ptr [rbp - 0x7e], 0
.label_502:
	jmp	.label_508
.label_508:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_509
.label_763:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_399
.label_517:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_398
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_398
	test	byte ptr [rbp - 0x7d], 1
	je	.label_398
	test	byte ptr [rbp - 0x7e], 1
	je	.label_518
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
	jmp	.label_500
.label_483:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_526
	jmp	.label_508
.label_546:
	jmp	.label_364
.label_364:
	test	byte ptr [rbp - 0x79], 1
	je	.label_535
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_370
.label_535:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_538
.label_370:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_538
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
	jne	.label_543
.label_538:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_543
	jmp	.label_504
.label_746:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_397
.label_415:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_517
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_517
	test	byte ptr [rbp - 0x7b], 1
	je	.label_517
	jmp	.label_360
	.section	.text
	.align	16
	#Procedure 0x4057ea

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
.label_557:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_385
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_393]]
	jmp	rcx
.label_770:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_364
.label_765:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_376
.label_551:
	jmp	.label_403
.label_403:
	jmp	.label_398
.label_398:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_405
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_405
	jmp	.label_410
.label_410:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_412
	jmp	.label_455
.label_455:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_461
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_461:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_420
.label_420:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_410
.label_773:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_426
	test	byte ptr [rbp - 0x7b], 1
	je	.label_433
	jmp	.label_360
.label_774:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_436
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_435
	jmp	.label_440
.label_531:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_442
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_442:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_454
.label_454:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_457
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_457:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_463
.label_463:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_468
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_468:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_474
.label_474:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_387
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_387:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_479
.label_767:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_399
.label_761:
	test	byte ptr [rbp - 0x79], 1
	je	.label_483
	jmp	.label_485
.label_485:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_488
	jmp	.label_360
.label_554:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_497
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_497:
	jmp	.label_505
.label_505:
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
	jne	.label_516
	jmp	.label_396
.label_400:
	jmp	.label_364
.label_547:
	jmp	.label_479
.label_479:
	jmp	.label_470
.label_470:
	jmp	.label_362
.label_359:
	jmp	.label_521
.label_521:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_522
	mov	byte ptr [rbp - 0x91], 0
.label_522:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_523
.label_523:
	jmp	.label_533
.label_533:
	jmp	.label_534
.label_534:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_505
.label_396:
	jmp	.label_541
.label_541:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_542
	test	byte ptr [rbp - 0x79], 1
	je	.label_546
	test	byte ptr [rbp - 0x91], 1
	jne	.label_546
.label_542:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_416:
	test	byte ptr [rbp - 0x79], 1
	je	.label_506
	test	byte ptr [rbp - 0x91], 1
	jne	.label_506
	jmp	.label_556
.label_556:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_558
	jmp	.label_360
.label_555:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_521
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_521
	mov	qword ptr [rbp - 0xb8], 1
.label_389:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_359
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
	jb	.label_365
	jmp	.label_377
.label_377:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_365
	jmp	.label_384
.label_384:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_365
	jmp	.label_391
.label_391:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_392
	jmp	.label_365
.label_365:
	jmp	.label_360
.label_402:
	jmp	.label_399
.label_399:
	test	byte ptr [rbp - 0x79], 1
	je	.label_400
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_404
.label_558:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_406
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_406
	jmp	.label_414
.label_414:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_452
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_452:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_417
.label_417:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_421
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_421:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_529
.label_529:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_432
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_432:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_406:
	jmp	.label_439
.label_439:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_441
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_441:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_447
.label_447:
	jmp	.label_450
.label_450:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_451
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_451:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_512
.label_512:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_464
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_464:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_473
.label_488:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_428
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_428
	jmp	.label_552
.label_552:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_448
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_448:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_489
.label_489:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_493
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_493:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_524
.label_524:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_503
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_503:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_428:
	jmp	.label_513
.label_513:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_514
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_514:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_434
.label_434:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_519
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_519
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_519
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_519
	jmp	.label_528
.label_528:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_530
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_530:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_536
.label_536:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_540
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_540:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_519
.label_519:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_366
.label_772:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_548
	jmp	.label_549
.label_549:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_550
	jmp	.label_553
.label_515:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_555
	mov	byte ptr [rbp - 0x91], 0
.label_374:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_559
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_559:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_368
	jmp	.label_373
.label_368:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_374
.label_553:
	jmp	.label_362
.label_362:
	jmp	.label_364
.label_413:
	jmp	.label_378
.label_378:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_380
	test	byte ptr [rbp - 0x82], 1
	jne	.label_380
	jmp	.label_386
.label_386:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_388
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_388:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_467
.label_467:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_367
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_367:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_380:
	jmp	.label_408
.label_408:
	jmp	.label_409
.label_409:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_411
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_411:
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
	jmp	.label_416
.label_771:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_423
	test	byte ptr [rbp - 0x7b], 1
	je	.label_430
	jmp	.label_360
.label_385:
	call	abort
.label_436:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_435
.label_440:
	jmp	.label_364
.label_360:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_394
	test	byte ptr [rbp - 0x79], 1
	je	.label_394
	mov	dword ptr [rbp - 0x34], 4
.label_394:
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
.label_500:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4061de
	.globl sub_4061de
	.type sub_4061de, @function
sub_4061de:

	nop	dword ptr [rax + rax]
.label_506:
	test	byte ptr [rbp - 0x81], 1
	je	.label_465
	jmp	.label_469
.label_469:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_460
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_460:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_465:
	jmp	.label_473
.label_473:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_413
	jmp	.label_481
.label_762:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_399
.label_751:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_750:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_487
	jmp	.label_490
.label_490:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_491
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_491:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_487
.label_487:
	movabs	rax, OFFSET FLAT:label_501
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_397
.label_426:
	test	byte ptr [rbp - 0x79], 1
	je	.label_507
	test	byte ptr [rbp - 0x7b], 1
	je	.label_507
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_507
	jmp	.label_504
.label_516:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_515
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_396
.label_550:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_470
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_470
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_470
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_484
	jmp	.label_532
.label_532:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_484
	jmp	.label_537
.label_537:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_484
	jmp	.label_544
.label_544:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_484
	jmp	.label_545
.label_545:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_547
	jmp	.label_484
.label_484:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_531
	jmp	.label_360
.label_518:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_551
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_551
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_557
.label_430:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_356
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_356
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_356:
	jmp	.label_361
.label_361:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_363
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_363:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_371
.label_371:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_375
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_375:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_525
.label_525:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_383
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_383:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_423:
	jmp	.label_364
.label_373:
	jmp	.label_396
.label_752:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_397
.label_507:
	jmp	.label_376
.label_376:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_402
	test	byte ptr [rbp - 0x7b], 1
	je	.label_402
	jmp	.label_360
.label_443:
	jmp	.label_407
.label_407:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_397
.label_397:
	mov	qword ptr [rbp - 0x58], 0
.label_509:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_475
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_418
.label_753:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_425
	movabs	rdi, OFFSET FLAT:label_427
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_401
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_425:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_407
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_456:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_443
	jmp	.label_444
.label_444:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_446
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_446:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_453
.label_453:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_456
.label_520:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_527:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_462
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_462
	test	byte ptr [rbp - 0x7b], 1
	je	.label_476
	jmp	.label_360
.label_476:
	mov	byte ptr [rbp - 0x81], 1
.label_462:
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
	ja	.label_478
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_486]]
	jmp	rcx
.label_543:
	jmp	.label_404
.label_404:
	jmp	.label_492
.label_492:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_495
	jmp	.label_360
.label_766:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_399
.label_435:
	jmp	.label_498
.label_498:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_499
	jmp	.label_364
.label_481:
	jmp	.label_504
.label_475:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_418:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_510
	jmp	.label_415
.label_510:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_462
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_462
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_462
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_520
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_520
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_527
.label_478:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_554
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
	jmp	.label_541
.label_433:
	jmp	.label_504
.label_764:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_376
.label_574:
	jmp	.label_568
.label_568:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_571
.label_573:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_572:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x20], 0
	mov	byte ptr [rbp - 0x69], cl
	jbe	.label_565
	mov	rax, qword ptr [rbp - 0x30]
	and	rax, 7
	cmp	rax, 0
	setne	cl
	mov	byte ptr [rbp - 0x69], cl
.label_565:
	mov	al, byte ptr [rbp - 0x69]
	test	al, 1
	jne	.label_575
	jmp	.label_561
.label_575:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	movzx	ecx, byte ptr [rax]
	movzx	edx, byte ptr [rbp - 0x51]
	cmp	ecx, edx
	je	.label_562
	mov	rax, qword ptr [rbp - 0x28]
	movzx	ecx, byte ptr [rax]
	movzx	edx, byte ptr [rbp - 0x52]
	cmp	ecx, edx
	jne	.label_567
.label_562:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_563
	.section	.text
	.align	16
	#Procedure 0x406849

	.globl memchr2
	.type memchr2, @function
memchr2:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	dword ptr [rbp - 0x18], edx
	mov	qword ptr [rbp - 0x20], rcx
	mov	edx, dword ptr [rbp - 0x14]
	mov	al, dl
	mov	byte ptr [rbp - 0x51], al
	mov	edx, dword ptr [rbp - 0x18]
	mov	al, dl
	mov	byte ptr [rbp - 0x52], al
	movzx	edx, byte ptr [rbp - 0x51]
	movzx	esi, byte ptr [rbp - 0x52]
	cmp	edx, esi
	jne	.label_573
	mov	rdi, qword ptr [rbp - 0x10]
	movzx	esi, byte ptr [rbp - 0x51]
	mov	rdx, qword ptr [rbp - 0x20]
	call	memchr
	mov	qword ptr [rbp - 8], rax
	jmp	.label_563
.label_564:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x28], rax
.label_571:
	cmp	qword ptr [rbp - 0x20], 0
	jbe	.label_566
	mov	rax, qword ptr [rbp - 0x28]
	movzx	ecx, byte ptr [rax]
	movzx	edx, byte ptr [rbp - 0x51]
	cmp	ecx, edx
	je	.label_560
	mov	rax, qword ptr [rbp - 0x28]
	movzx	ecx, byte ptr [rax]
	movzx	edx, byte ptr [rbp - 0x52]
	cmp	ecx, edx
	jne	.label_574
.label_560:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_563
.label_566:
	mov	qword ptr [rbp - 8], 0
.label_563:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4068f1
	.globl sub_4068f1
	.type sub_4068f1, @function
sub_4068f1:

	nop	dword ptr [rax + rax]
.label_567:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_572
.label_561:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x40], 0x1010101
	movzx	ecx, byte ptr [rbp - 0x51]
	movzx	edx, byte ptr [rbp - 0x51]
	shl	edx, 8
	or	ecx, edx
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0x48], rax
	movzx	ecx, byte ptr [rbp - 0x52]
	movzx	edx, byte ptr [rbp - 0x52]
	shl	edx, 8
	or	ecx, edx
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 0x10
	or	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x50]
	shl	rax, 0x10
	or	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 0x1f
	shl	rax, 1
	or	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 0x1f
	shl	rax, 1
	or	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x50]
	shl	rax, 0x1f
	shl	rax, 1
	or	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x50], rax
.label_570:
	cmp	qword ptr [rbp - 0x20], 8
	jb	.label_564
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	xor	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	xor	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x60]
	sub	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x60]
	xor	rcx, 0xffffffffffffffff
	and	rax, rcx
	mov	rcx, qword ptr [rbp - 0x68]
	sub	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x68]
	xor	rdx, 0xffffffffffffffff
	and	rcx, rdx
	or	rax, rcx
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rcx, 7
	and	rax, rcx
	cmp	rax, 0
	je	.label_569
	jmp	.label_564
.label_569:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 8
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 8
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_570
	.section	.text
	.align	16
	#Procedure 0x406a30

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
	#Procedure 0x406a6f
	.globl sub_406a6f
	.type sub_406a6f, @function
sub_406a6f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406a70
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
	#Procedure 0x406a86
	.globl sub_406a86
	.type sub_406a86, @function
sub_406a86:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a90

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
	#Procedure 0x406abc
	.globl sub_406abc
	.type sub_406abc, @function
sub_406abc:

	nop	dword ptr [rax]
.label_577:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_576
.label_576:
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
	#Procedure 0x406b33
	.globl sub_406b33
	.type sub_406b33, @function
sub_406b33:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b41

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
	je	.label_577
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_576
	.section	.text
	.align	16
	#Procedure 0x406b70

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
	#Procedure 0x406bae
	.globl sub_406bae
	.type sub_406bae, @function
sub_406bae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406bb0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_578
	call	gettext
	movabs	rsi, OFFSET FLAT:label_580
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_581
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_582
	movabs	rdx, OFFSET FLAT:label_583
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_579
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
	#Procedure 0x406c36
	.globl sub_406c36
	.type sub_406c36, @function
sub_406c36:

	nop	
	nop	dword ptr [rax + rax]
.label_639:
	movabs	rsi, OFFSET FLAT:label_234
	movabs	rdx, OFFSET FLAT:label_582
	movabs	r8, OFFSET FLAT:label_584
	movabs	r9, OFFSET FLAT:label_585
	movabs	rax, OFFSET FLAT:label_586
	xor	ecx, ecx
	mov	edi, ecx
	mov	r10,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0x78], rdi
	mov	rdi, r10
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_591:
	jmp	.label_624
.label_620:
	test	byte ptr [byte ptr [suppress_non_delimited]],  1
	je	.label_609
	cmp	dword ptr [dword ptr [operating_mode]],  2
	je	.label_609
	jmp	.label_631
.label_631:
	movabs	rdi, OFFSET FLAT:label_633
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_622:
	xor	edi, edi
	call	usage
.label_636:
	cmp	dword ptr [dword ptr [operating_mode]],  0
	jne	.label_638
	jmp	.label_588
.label_588:
	movabs	rdi, OFFSET FLAT:label_590
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_589:
	mov	dword ptr [dword ptr [operating_mode]],  2
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_591
.label_603:
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_606
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_606
	jmp	.label_637
.label_637:
	movabs	rdi, OFFSET FLAT:label_617
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_608:
	cmp	dword ptr [dword ptr [operating_mode]],  0
	je	.label_589
	jmp	.label_627
.label_627:
	movabs	rdi, OFFSET FLAT:label_635
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_609:
	xor	eax, eax
	mov	ecx, 2
	mov	edx, 4
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	dword ptr [dword ptr [operating_mode]],  2
	cmove	edx, eax
	mov	sil,  byte ptr [byte ptr [complement]]
	test	sil, 1
	cmovne	eax, ecx
	or	edx, eax
	mov	esi, edx
	call	set_fields
	test	byte ptr [rbp - 0x16], 1
	jne	.label_594
	mov	byte ptr [byte ptr [delim]],  9
.label_594:
	cmp	qword ptr [word ptr [output_delimiter_string]],  0
	jne	.label_598
	movabs	rax, OFFSET FLAT:main.dummy
	mov	cl,  byte ptr [byte ptr [delim]]
	mov	byte ptr [byte ptr [main.dummy]],  cl
	mov	byte ptr [byte ptr [label_601]],  0
	mov	qword ptr [word ptr [output_delimiter_string]],  rax
	mov	qword ptr [word ptr [output_delimiter_length]],  1
.label_598:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	jne	.label_614
	movabs	rdi, OFFSET FLAT:label_159
	call	cut_file
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
	jmp	.label_619
.label_606:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	cl, byte ptr [rax]
	mov	byte ptr [byte ptr [delim]],  cl
	mov	byte ptr [rbp - 0x16], 1
	jmp	.label_591
.label_605:
	mov	edi, 1
	call	usage
.label_587:
	mov	byte ptr [byte ptr [output_delimiter_specified]],  1
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_629
	mov	eax, 1
	mov	ecx, eax
	mov	qword ptr [rbp - 0x70], rcx
	jmp	.label_595
.label_629:
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	strlen
	mov	qword ptr [rbp - 0x70], rax
.label_595:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [word ptr [output_delimiter_length]],  rax
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	xstrdup
	mov	qword ptr [word ptr [output_delimiter_string]],  rax
	jmp	.label_591
.label_614:
	mov	byte ptr [rbp - 0x15], 1
.label_604:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_596
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	cut_file
	and	al, 1
	movzx	edx, al
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	esi, al
	and	esi, edx
	cmp	esi, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	mov	dword ptr [dword ptr [optind]],  eax
	jmp	.label_604
.label_630:
	mov	byte ptr [byte ptr [complement]],  1
	jmp	.label_591
.label_621:
	mov	byte ptr [byte ptr [line_delim]],  0
	jmp	.label_591
.label_638:
	test	byte ptr [rbp - 0x16], 1
	je	.label_620
	cmp	dword ptr [dword ptr [operating_mode]],  2
	je	.label_620
	jmp	.label_625
.label_625:
	movabs	rdi, OFFSET FLAT:label_626
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_613:
	jmp	.label_591
.label_599:
	cmp	dword ptr [dword ptr [operating_mode]],  0
	je	.label_600
	jmp	.label_618
.label_618:
	movabs	rdi, OFFSET FLAT:label_635
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_593:
	mov	byte ptr [byte ptr [suppress_non_delimited]],  1
	jmp	.label_591
	.section	.text
	.align	16
	#Procedure 0x407028

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x16], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_327
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_610
	movabs	rsi, OFFSET FLAT:label_611
	mov	qword ptr [rbp - 0x28], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_610
	mov	qword ptr [rbp - 0x30], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x38], rax
	call	atexit
	mov	dword ptr [dword ptr [operating_mode]],  0
	mov	byte ptr [byte ptr [suppress_non_delimited]],  0
	mov	byte ptr [byte ptr [delim]],  0
	mov	byte ptr [byte ptr [have_read_stdin]],  0
	mov	dword ptr [rbp - 0x3c], eax
.label_624:
	movabs	rdx, OFFSET FLAT:label_632
	movabs	rcx, OFFSET FLAT:longopts
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, -1
	je	.label_636
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x40], eax
	mov	dword ptr [rbp - 0x44], ecx
	je	.label_639
	jmp	.label_592
.label_592:
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x48], eax
	je	.label_622
	jmp	.label_597
.label_597:
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, -0x62
	sub	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
	jb	.label_599
	jmp	.label_602
.label_602:
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0x50], eax
	je	.label_603
	jmp	.label_607
.label_607:
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 0x66
	mov	dword ptr [rbp - 0x54], eax
	je	.label_608
	jmp	.label_612
.label_612:
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x58], eax
	je	.label_613
	jmp	.label_616
.label_616:
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x5c], eax
	je	.label_593
	jmp	.label_615
.label_615:
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 0x7a
	mov	dword ptr [rbp - 0x60], eax
	je	.label_621
	jmp	.label_623
.label_623:
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x64], eax
	je	.label_587
	jmp	.label_628
.label_628:
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 0x81
	mov	dword ptr [rbp - 0x68], eax
	je	.label_630
	jmp	.label_605
.label_596:
	jmp	.label_619
.label_619:
	test	byte ptr [byte ptr [have_read_stdin]],  1
	je	.label_634
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_634
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_159
	mov	esi, dword ptr [rax]
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x15], 0
.label_634:
	mov	eax, 1
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x15]
	test	dl, 1
	cmovne	eax, ecx
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407238
	.globl sub_407238
	.type sub_407238, @function
sub_407238:

	nop	word ptr cs:[rax + rax]
.label_600:
	mov	dword ptr [dword ptr [operating_mode]],  1
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_591
	.section	.text
	.align	16
	#Procedure 0x407260
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
	jb	.label_640
	jmp	.label_643
.label_643:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_640
	jmp	.label_641
.label_641:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_642
	jmp	.label_640
.label_640:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_644
.label_642:
	mov	byte ptr [rbp - 1], 0
.label_644:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4072c5
	.globl sub_4072c5
	.type sub_4072c5, @function
sub_4072c5:

	nop	word ptr cs:[rax + rax]
.label_650:
	mov	rax, qword ptr [rbp - 0x60]
	shl	rax, 1
	mov	qword ptr [rbp - 0xb0], rax
.label_653:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x58]
	sub	rcx, rdx
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x78]
	add	rcx, 1
	cmp	rax, rcx
	jae	.label_667
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x58]
	sub	rax, rcx
	add	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
.label_667:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x88]
	jae	.label_656
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x28]
	jbe	.label_669
.label_656:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x88], rax
.label_669:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x88]
	sub	rcx, qword ptr [rbp - 0x20]
	cmp	rax, rcx
	jae	.label_666
	movabs	rax, 0x7fffffffffffffff
	add	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x98]
	jne	.label_672
	jmp	.label_648
.label_664:
	mov	rax, -1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_652
.label_652:
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 8], rax
.label_683:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4073d2
	.globl sub_4073d2
	.type sub_4073d2, @function
sub_4073d2:

	nop	dword ptr [rax + rax]
.label_680:
	cmp	dword ptr [rbp - 0x30], -1
	jne	.label_675
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x30], eax
.label_675:
	jmp	.label_674
.label_674:
	mov	byte ptr [rbp - 0x61], 0
.label_663:
	lea	rsi, [rbp - 0x78]
	mov	rdi, qword ptr [rbp - 0x38]
	call	freadptr
	mov	qword ptr [rbp - 0x70], rax
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_645
	cmp	dword ptr [rbp - 0x2c], -1
	je	.label_649
	mov	rdi, qword ptr [rbp - 0x70]
	mov	esi, dword ptr [rbp - 0x2c]
	mov	edx, dword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x78]
	call	memchr2
	mov	qword ptr [rbp - 0x80], rax
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_655
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x70]
	sub	rax, rcx
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	mov	byte ptr [rbp - 0x61], 1
.label_655:
	jmp	.label_649
.label_649:
	jmp	.label_668
.label_672:
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x88], rax
.label_666:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x58]
	sub	rcx, rdx
	sub	rax, rcx
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x88]
	call	realloc
	mov	qword ptr [rbp - 0x90], rax
	cmp	qword ptr [rbp - 0x90], 0
	jne	.label_651
	jmp	.label_648
.label_659:
	jmp	.label_671
.label_682:
	cmp	dword ptr [rbp - 0x2c], -1
	jne	.label_680
	mov	eax, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_674
.label_673:
	jmp	.label_661
.label_661:
	mov	al, byte ptr [rbp - 0x61]
	xor	al, 0xff
	test	al, 1
	jne	.label_663
.label_671:
	mov	rax, qword ptr [rbp - 0x48]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x50], rax
.label_648:
	jmp	.label_658
.label_658:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_664
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_652
.label_645:
	mov	rdi, qword ptr [rbp - 0x38]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x68], eax
	cmp	dword ptr [rbp - 0x68], -1
	jne	.label_657
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x58]
	jne	.label_659
	jmp	.label_648
.label_679:
	mov	rax, qword ptr [rbp - 0x60]
	sub	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_682
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x60]
	ja	.label_682
	jmp	.label_658
.label_676:
	mov	eax, 0x40
	mov	ecx, eax
	mov	qword ptr [rbp - 0xa8], rcx
	jmp	.label_678
.label_678:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x60], rax
	mov	rdi, qword ptr [rbp - 0x60]
	call	malloc
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	jne	.label_681
	mov	qword ptr [rbp - 8], -1
	jmp	.label_683
.label_657:
	mov	eax, dword ptr [rbp - 0x68]
	cmp	eax, dword ptr [rbp - 0x2c]
	je	.label_662
	mov	eax, dword ptr [rbp - 0x68]
	cmp	eax, dword ptr [rbp - 0x30]
	jne	.label_670
.label_662:
	mov	byte ptr [rbp - 0x61], 1
.label_670:
	mov	qword ptr [rbp - 0x78], 1
.label_668:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x78]
	add	rcx, 1
	cmp	rax, rcx
	jae	.label_647
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_647
	cmp	qword ptr [rbp - 0x60], 0x40
	jae	.label_650
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 0x40
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_653
	.section	.text
	.align	16
	#Procedure 0x407631

	.globl getndelim2
	.type getndelim2, @function
getndelim2:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	rax, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x2c], r8d
	mov	dword ptr [rbp - 0x30], r9d
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x50], -1
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x58], 0
	jne	.label_677
	cmp	qword ptr [rbp - 0x28], 0x40
	jae	.label_676
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xa8], rax
	jmp	.label_678
.label_651:
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	sub	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x48], rax
.label_647:
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x40]
	jae	.label_660
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rbp - 0xa0]
	jae	.label_665
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xa0], rax
.label_665:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_646
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0xa0]
	call	memcpy
	jmp	.label_654
.label_681:
	jmp	.label_677
.label_677:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_679
	jmp	.label_658
.label_646:
	mov	eax, dword ptr [rbp - 0x68]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x48]
	mov	byte ptr [rdx], cl
.label_654:
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x40], rcx
.label_660:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_673
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x78]
	call	freadseek
	cmp	eax, 0
	je	.label_673
	jmp	.label_648
	.section	.text
	.align	16
	#Procedure 0x407790

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
	#Procedure 0x4077c3
	.globl sub_4077c3
	.type sub_4077c3, @function
sub_4077c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4077d0

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
	#Procedure 0x4077ef
	.globl sub_4077ef
	.type sub_4077ef, @function
sub_4077ef:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4077f0

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
	.align	16
	#Procedure 0x407800
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
	#Procedure 0x40782f
	.globl sub_40782f
	.type sub_40782f, @function
sub_40782f:

	nop	
.label_693:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_687
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_690
	movabs	rax, OFFSET FLAT:label_691
	movabs	rcx, OFFSET FLAT:label_692
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_686
	.section	.text
	.align	16
	#Procedure 0x407880

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
	je	.label_693
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_686
.label_688:
	movabs	rax, OFFSET FLAT:label_401
	movabs	rcx, OFFSET FLAT:label_501
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_686:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4078e1
	.globl sub_4078e1
	.type sub_4078e1, @function
sub_4078e1:

	nop	dword ptr [rax + rax]
.label_690:
	movabs	rsi, OFFSET FLAT:label_689
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_688
	movabs	rax, OFFSET FLAT:label_684
	movabs	rcx, OFFSET FLAT:label_685
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_686
.label_702:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_701
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_701:
	movabs	rdi, OFFSET FLAT:label_696
	call	gettext
	movabs	rsi, OFFSET FLAT:label_582
	movabs	rdx, OFFSET FLAT:label_583
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
	je	.label_695
	movabs	rsi, OFFSET FLAT:label_698
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_695
	movabs	rdi, OFFSET FLAT:label_703
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_695:
	movabs	rdi, OFFSET FLAT:label_699
	call	gettext
	movabs	rsi, OFFSET FLAT:label_583
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_694
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_327
	movabs	rsi, OFFSET FLAT:label_697
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
	#Procedure 0x407a55
	.globl sub_407a55
	.type sub_407a55, @function
sub_407a55:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407a5c

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
.label_705:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_704
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_704:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_700
	jmp	.label_702
.label_700:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_705
	.section	.text
	.align	16
	#Procedure 0x407ad0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_706
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_706:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407afa
	.globl sub_407afa
	.type sub_407afa, @function
sub_407afa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b00

	.globl print_kth
	.type print_kth, @function
print_kth:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi,  qword ptr [word ptr [current_rp]]
	mov	rdi, qword ptr [rdi]
	cmp	rdi, qword ptr [rbp - 8]
	setbe	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407b21
	.globl sub_407b21
	.type sub_407b21, @function
sub_407b21:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b30

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_707
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_707
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_709
.label_707:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_708
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_708
	call	xalloc_die
.label_708:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_709:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407baa
	.globl sub_407baa
	.type sub_407baa, @function
sub_407baa:

	nop	word ptr [rax + rax]
.label_712:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_710
	.section	.text
	.align	16
	#Procedure 0x407bd6

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
	jne	.label_711
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_711
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_711
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_712
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_710
.label_711:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_710:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407c72
	.globl sub_407c72
	.type sub_407c72, @function
sub_407c72:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c80
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_713
	jmp	.label_715
.label_715:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_714
.label_713:
	mov	byte ptr [rbp - 1], 0
.label_714:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407cb2
	.globl sub_407cb2
	.type sub_407cb2, @function
sub_407cb2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407cc0

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
	#Procedure 0x407cf8
	.globl sub_407cf8
	.type sub_407cf8, @function
sub_407cf8:

	nop	dword ptr [rax + rax]
.label_717:
	mov	byte ptr [rbp - 1], 0
.label_718:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407d0e
	.globl sub_407d0e
	.type sub_407d0e, @function
sub_407d0e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d1c
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_717
	jmp	.label_716
.label_716:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_718
.label_722:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_720
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_721
.label_720:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_721
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_721:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_723
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_723:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_719:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407dcd
	.globl sub_407dcd
	.type sub_407dcd, @function
sub_407dcd:

	nop	
	.section	.text
	.align	16
	#Procedure 0x407dcf

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
	jge	.label_722
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_719
	.section	.text
	.align	16
	#Procedure 0x407e10

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_724
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_12
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407e4f
	.globl sub_407e4f
	.type sub_407e4f, @function
sub_407e4f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x407e50
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
	jb	.label_725
	jmp	.label_728
.label_728:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_727
	jmp	.label_725
.label_725:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_726
.label_727:
	mov	byte ptr [rbp - 1], 0
.label_726:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407e9b
	.globl sub_407e9b
	.type sub_407e9b, @function
sub_407e9b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ea0
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
	#Procedure 0x407eda
	.globl sub_407eda
	.type sub_407eda, @function
sub_407eda:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407f45
	.globl sub_407f45
	.type sub_407f45, @function
sub_407f45:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407f52
	.globl sub_407f52
	.type sub_407f52, @function
sub_407f52:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407f76
	.globl sub_407f76
	.type sub_407f76, @function
sub_407f76:

	nop	word ptr cs:[rax + rax]
