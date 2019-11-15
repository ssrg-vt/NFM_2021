	.section	.text
	.align	32
	#Procedure 0x401989
	.globl sub_401989
	.type sub_401989, @function
sub_401989:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40198a
	.globl sub_40198a
	.type sub_40198a, @function
sub_40198a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019c2
	.globl sub_4019c2
	.type sub_4019c2, @function
sub_4019c2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a0a
	.globl sub_401a0a
	.type sub_401a0a, @function
sub_401a0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a2c
	.globl sub_401a2c
	.type sub_401a2c, @function
sub_401a2c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401a3d
	.globl sub_401a3d
	.type sub_401a3d, @function
sub_401a3d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401a56
	.globl sub_401a56
	.type sub_401a56, @function
sub_401a56:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a60

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
	je	.label_21
	mov	edx, OFFSET FLAT:label_12
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_18
.label_21:
	mov	edx, OFFSET FLAT:label_19
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_18:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
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
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_24
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_25]]
.label_903:
	add	rsp, 8
	jmp	.label_11
.label_24:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
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
	jmp	.label_11
.label_904:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
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
.label_905:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
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
.label_906:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
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
.label_907:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
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
	jmp	.label_11
.label_908:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
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
	jmp	.label_11
.label_909:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
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
	jmp	.label_11
.label_910:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
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
	jmp	.label_11
.label_912:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
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
	jmp	.label_11
.label_911:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
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
.label_11:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x401db8
	.globl sub_401db8
	.type sub_401db8, @function
sub_401db8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401dc0

	.globl wc_ensure_printable
	.type wc_ensure_printable, @function
wc_ensure_printable:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	edi, dword ptr [rbx]
	test	edi, edi
	je	.label_28
	add	rbx, 4
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_29:
	call	iswprint
	test	eax, eax
	jne	.label_30
	mov	dword ptr [rbx - 4], 0xfffd
	mov	bpl, 1
.label_30:
	mov	edi, dword ptr [rbx]
	add	rbx, 4
	test	edi, edi
	jne	.label_29
	jmp	.label_31
.label_28:
	xor	ebp, ebp
.label_31:
	and	bpl, 1
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e0e
	.globl sub_401e0e
	.type sub_401e0e, @function
sub_401e0e:

	nop	
.label_33:
	pop	rax
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e12
	.globl sub_401e12
	.type sub_401e12, @function
sub_401e12:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e1b

	.globl print_padded_number
	.type print_padded_number, @function
print_padded_number:
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + format_str_prefix]]
	test	rdi, rdi
	je	.label_32
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
.label_32:
	mov	rdi,  qword ptr [word ptr [rip + padding_buffer]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	mov	rdi,  qword ptr [word ptr [rip + format_str_suffix]]
	test	rdi, rdi
	je	.label_33
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x401e60
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
	#Procedure 0x401e6d
	.globl sub_401e6d
	.type sub_401e6d, @function
sub_401e6d:

	nop	dword ptr [rax]
.label_749:
	mov	eax, 7
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e76
	.globl sub_401e76
	.type sub_401e76, @function
sub_401e76:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e85

	.globl suffix_power
	.type suffix_power, @function
suffix_power:
	add	edi, -0x45
	cmp	edi, 0x15
	ja	.label_35
	mov	eax, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_34]]
.label_742:
	mov	eax, 6
	ret	
.label_746:
	mov	eax, 5
	ret	
.label_748:
	mov	eax, 8
	ret	
.label_743:
	mov	eax, 3
	ret	
.label_747:
	mov	eax, 4
	ret	
.label_745:
	mov	eax, 2
	ret	
.label_35:
	xor	eax, eax
.label_744:
	ret	
.label_37:
	mov	ecx, 1
.label_36:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x401ed0
	.globl sub_401ed0
	.type sub_401ed0, @function
sub_401ed0:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ed5

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_37
	test	rsi, rsi
	mov	ecx, 1
	je	.label_36
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_36
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401f10
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x401f1a
	.globl sub_401f1a
	.type sub_401f1a, @function
sub_401f1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f20

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
	#Procedure 0x401f57
	.globl sub_401f57
	.type sub_401f57, @function
sub_401f57:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f60

	.globl xstrtol
	.type xstrtol, @function
xstrtol:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, r8
	mov	r14, rcx
	mov	ebx, edx
	mov	r12, rdi
	cmp	ebx, 0x25
	jae	.label_50
	test	rsi, rsi
	lea	r15, [rsp + 0x10]
	cmovne	r15, rsi
	call	__errno_location
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	mov	rdi, r12
	mov	rsi, r15
	mov	edx, ebx
	call	strtol
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [r15]
	cmp	rax, r12
	je	.label_43
	mov	eax, dword ptr [rbp]
	xor	r12d, r12d
	test	eax, eax
	je	.label_45
	mov	r12d, 4
	cmp	eax, 0x22
	jne	.label_39
	mov	r12d, 1
.label_45:
	test	r13, r13
	jne	.label_51
	jmp	.label_41
.label_43:
	mov	r12d, 4
	test	r13, r13
	je	.label_39
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_39
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_39
	mov	qword ptr [rsp + 8], 1
	xor	r12d, r12d
.label_51:
	mov	rax, qword ptr [r15]
	movsx	ebp, byte ptr [rax]
	test	ebp, ebp
	je	.label_41
	mov	rdi, r13
	mov	esi, ebp
	call	strchr
	test	rax, rax
	je	.label_44
	mov	esi, 0x400
	mov	ebx, 1
	add	ebp, -0x45
	cmp	ebp, 0x2f
	ja	.label_38
	movabs	rax, 0x814400308945
	bt	rax, rbp
	jae	.label_38
	mov	esi, 0x30
	mov	rdi, r13
	call	strchr
	mov	ebx, 1
	test	rax, rax
	je	.label_53
	mov	rax, qword ptr [r15]
	movsx	ecx, byte ptr [rax + 1]
	mov	ebx, 1
	cmp	ecx, 0x42
	mov	esi, 0x400
	je	.label_52
	cmp	ecx, 0x44
	je	.label_52
	cmp	ecx, 0x69
	jne	.label_38
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	rbx, [rcx + rcx + 1]
	jmp	.label_38
.label_53:
	mov	esi, 0x400
	jmp	.label_38
.label_52:
	mov	esi, 0x3e8
	mov	ebx, 2
.label_38:
	mov	rax, qword ptr [r15]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_44
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_46]]
.label_726:
	lea	rdi, [rsp + 8]
	mov	edx, 3
	call	bkm_scale_by_power
	jmp	.label_40
.label_44:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
	or	r12d, 2
	jmp	.label_39
.label_727:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	call	bkm_scale_by_power
	jmp	.label_40
.label_728:
	lea	rdi, [rsp + 8]
	mov	edx, 2
	call	bkm_scale_by_power
	jmp	.label_40
.label_730:
	lea	rdi, [rsp + 8]
	mov	edx, 4
	call	bkm_scale_by_power
	jmp	.label_40
.label_724:
	lea	rdi, [rsp + 8]
	mov	esi, 0x400
	jmp	.label_42
.label_725:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	call	bkm_scale_by_power
	jmp	.label_40
.label_729:
	lea	rdi, [rsp + 8]
	mov	edx, 5
	call	bkm_scale_by_power
	jmp	.label_40
.label_731:
	lea	rdi, [rsp + 8]
	mov	edx, 8
	call	bkm_scale_by_power
	jmp	.label_40
.label_732:
	lea	rdi, [rsp + 8]
	mov	edx, 7
	call	bkm_scale_by_power
	jmp	.label_40
.label_733:
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_42
.label_734:
	lea	rdi, [rsp + 8]
	mov	esi, 2
.label_42:
	call	bkm_scale
.label_40:
	or	eax, r12d
	mov	rcx, qword ptr [r15]
	lea	rdx, [rcx + rbx]
	mov	qword ptr [r15], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + rbx], 0
	cmove	r12d, eax
.label_41:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
.label_39:
	mov	eax, r12d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_50:
	mov	edi, OFFSET FLAT:label_47
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_49
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x4021de
	.globl sub_4021de
	.type sub_4021de, @function
sub_4021de:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4021e0

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
	jne	.label_54
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_54
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_55
.label_54:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_55:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_56
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_56:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40224e
	.globl sub_40224e
	.type sub_40224e, @function
sub_40224e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402250
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40225a
	.globl sub_40225a
	.type sub_40225a, @function
sub_40225a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402260

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_57
	nop	
.label_70:
	mov	edi, OFFSET FLAT:label_62
	call	strcmp
	test	eax, eax
	je	.label_68
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_70
.label_68:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_62
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_63
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_60
	mov	ecx, OFFSET FLAT:label_61
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_59
	mov	esi, OFFSET FLAT:label_67
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_59
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_58
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_59:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_62
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_61
	mov	ecx, OFFSET FLAT:label_62
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_65
	mov	ecx, OFFSET FLAT:label_66
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
	#Procedure 0x40237a
	.globl sub_40237a
	.type sub_40237a, @function
sub_40237a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402380
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
	#Procedure 0x4023b3
	.globl sub_4023b3
	.type sub_4023b3, @function
sub_4023b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023c0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x4023c8
	.globl sub_4023c8
	.type sub_4023c8, @function
sub_4023c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023d0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_71
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_71
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_71:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x4023f6
	.globl sub_4023f6
	.type sub_4023f6, @function
sub_4023f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402400
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_72
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_72:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402423
	.globl sub_402423
	.type sub_402423, @function
sub_402423:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402430

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_73
	test	rax, rax
	je	.label_74
.label_73:
	pop	rbx
	ret	
.label_74:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40244a
	.globl sub_40244a
	.type sub_40244a, @function
sub_40244a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402450

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	32
	#Procedure 0x402455
	.globl sub_402455
	.type sub_402455, @function
sub_402455:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402460
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_75
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_77:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_77
.label_75:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_78
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_79]], OFFSET FLAT:slot0
.label_78:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_76
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_76:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4024f1
	.globl sub_4024f1
	.type sub_4024f1, @function
sub_4024f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402500

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40250e
	.globl sub_40250e
	.type sub_40250e, @function
sub_40250e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402510

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
	js	.label_83
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_86
	cmp	r12d, 0x7fffffff
	je	.label_81
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
	jne	.label_84
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_84:
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
.label_86:
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
	jbe	.label_82
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_85
.label_82:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_80
	mov	rdi, r14
	call	free
.label_80:
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
.label_85:
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
.label_83:
	call	abort
.label_81:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4026cd
	.globl sub_4026cd
	.type sub_4026cd, @function
sub_4026cd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4026d0

	.globl bkm_scale_by_power_0
	.type bkm_scale_by_power_0, @function
bkm_scale_by_power_0:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edx
	mov	r14d, esi
	mov	r15, rdi
	xor	ebp, ebp
	test	ebx, ebx
	je	.label_87
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_88:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale_0
	or	ebp, eax
	dec	ebx
	jne	.label_88
.label_87:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40270e
	.globl sub_40270e
	.type sub_40270e, @function
sub_40270e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402710

	.globl process_suffixed_number
	.type process_suffixed_number, @function
process_suffixed_number:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r12, rcx
	mov	r15, rdx
	mov	qword ptr [rsp + 0x10], rsi
	mov	r13, rdi
	mov	rbx,  qword ptr [word ptr [rip + suffix]]
	test	rbx, rbx
	je	.label_93
	mov	rdi, r13
	call	strlen
	mov	rbp, rax
	mov	rdi, rbx
	call	strlen
	cmp	rbp, rax
	jbe	.label_93
	add	rbp, r13
	sub	rbp, rax
	mov	rdi, rbx
	mov	rsi, rbp
	call	strcmp
	test	eax, eax
	je	.label_97
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_93
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_99
	xor	eax, eax
	call	__fprintf_chk
	jmp	.label_93
.label_97:
	mov	byte ptr [rbp], 0
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_93
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi,  qword ptr [word ptr [rip + suffix]]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_98
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_93:
	mov	r14b, byte ptr [r13]
	test	r14b, r14b
	mov	rbx, r13
	je	.label_90
	call	__ctype_b_loc
	mov	rbp, qword ptr [rax]
	mov	rbx, r13
	nop	word ptr [rax + rax]
.label_103:
	movsx	edi, r14b
	call	to_uchar
	movzx	eax, al
	test	byte ptr [rbp + rax*2], 1
	je	.label_90
	movzx	r14d, byte ptr [rbx + 1]
	inc	rbx
	test	r14b, r14b
	jne	.label_103
.label_90:
	cmp	dword ptr [dword ptr [rip + auto_padding]],  0
	je	.label_89
	cmp	r12, 1
	jg	.label_92
	mov	eax, r13d
	sub	eax, ebx
	jne	.label_92
	mov	qword ptr [word ptr [rip + padding_width]],  0
	jmp	.label_96
.label_92:
	mov	rdi, r13
	call	strlen
	mov	qword ptr [word ptr [rip + padding_width]],  rax
	mov	rdi, rax
	call	setup_padding_buffer
.label_96:
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_89
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rcx,  qword ptr [word ptr [rip + padding_width]]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_95
	xor	eax, eax
	call	__fprintf_chk
.label_89:
	fldz	
	fstp	xword ptr [rsp]
	lea	rsi, [rsp]
	mov	rdi, rbx
	mov	rdx, r15
	call	parse_human_number
	mov	ebp, eax
	cmp	ebp, 1
	jne	.label_101
	cmp	byte ptr [byte ptr [rip + debug]],  1
	jne	.label_101
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_102
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	call	error
.label_101:
	mov	rcx,  qword ptr [word ptr [rip + from_unit_size]]
	cmp	rcx, 1
	mov	rax,  qword ptr [word ptr [rip + to_unit_size]]
	jne	.label_100
	cmp	rax, 1
	je	.label_91
.label_100:
	fld	xword ptr [rsp]
	mov	qword ptr [rsp + 0x18], rcx
	xor	edx, edx
	test	rcx, rcx
	setns	dl
	fild	qword ptr [rsp + 0x18]
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_94]]
	fmulp	st(1)
	mov	qword ptr [rsp + 0x20], rax
	xor	ecx, ecx
	test	rax, rax
	setns	cl
	fild	qword ptr [rsp + 0x20]
	fadd	dword ptr [dword ptr [+ (rcx * 4) + label_94]]
	fdivp	st(1)
	fstp	xword ptr [rsp]
.label_91:
	fld	xword ptr [rsp]
	mov	rax, qword ptr [rsp + 0x10]
	fstp	xword ptr [rax]
	or	ebp, 1
	xor	eax, eax
	cmp	ebp, 1
	sete	al
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
	#Procedure 0x40292b
	.globl sub_40292b
	.type sub_40292b, @function
sub_40292b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402930

	.globl mbsalign
	.type mbsalign, @function
mbsalign:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12d, r9d
	mov	r13d, r8d
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x30], rsi
	mov	rbp, rdi
	call	strlen
	mov	r14, rax
	test	r12b, 2
	mov	qword ptr [rsp + 0x18], rbp
	mov	dword ptr [rsp + 4], r12d
	mov	dword ptr [rsp + 0x2c], r13d
	jne	.label_112
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_112
	xor	edi, edi
	xor	edx, edx
	mov	rsi, rbp
	call	mbstowcs
	xor	ecx, ecx
	mov	r15, rax
	cmp	r15, -1
	je	.label_107
	lea	rdi, [r15*4 + 4]
	call	malloc
	mov	rcx, rax
	test	rcx, rcx
	je	.label_107
	lea	r13, [r15 + 1]
	mov	rdi, rcx
	mov	r12, rcx
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, r13
	call	mbstowcs
	test	rax, rax
	je	.label_110
	mov	dword ptr [r12 + r15*4], 0
	mov	rdi, r12
	call	wc_ensure_printable
	mov	r15d, eax
	mov	rdi, r12
	mov	rsi, r13
	call	wcswidth
	movsxd	r13, eax
	test	r15b, r15b
	mov	qword ptr [rsp + 0x10], r12
	je	.label_115
	xor	edi, edi
	xor	edx, edx
	mov	rsi, r12
	call	wcstombs
	mov	r15, rax
	jmp	.label_108
.label_112:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	ecx, ecx
	mov	r13, r14
.label_105:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r12, qword ptr [rax]
	cmp	r13, r12
	cmova	r13, r12
	cmova	r14, r12
	xor	r15d, r15d
	sub	r12, r13
	cmovbe	r12, r15
	mov	qword ptr [rax], r13
	mov	eax, dword ptr [rsp + 0x2c]
	test	eax, eax
	je	.label_109
	cmp	eax, 1
	jne	.label_106
	mov	r15, r12
	xor	r12d, r12d
	jmp	.label_109
.label_106:
	mov	rax, r12
	shr	rax, 1
	and	r12d, 1
	add	r12, rax
	mov	r15, r12
	mov	r12, rax
.label_109:
	mov	edx, dword ptr [rsp + 4]
	xor	eax, eax
	test	dl, 4
	cmovne	r15, rax
	test	dl, 8
	cmovne	r12, rax
	test	rbx, rbx
	je	.label_114
	mov	rdi, qword ptr [rsp + 0x30]
	lea	rbp, [rdi + rbx - 1]
	mov	rbx, rcx
	mov	rsi, rbp
	mov	rdx, r15
	call	mbs_align_pad
	mov	rdx, rbp
	sub	rdx, rax
	cmp	r14, rdx
	cmovb	rdx, r14
	mov	rcx, -1
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x18]
	call	__mempcpy_chk
	mov	rdi, rax
	mov	rsi, rbp
	mov	rdx, r12
	call	mbs_align_pad
	mov	rcx, rbx
.label_114:
	add	r15, r14
	add	r15, r12
.label_111:
	mov	rdi, rcx
	call	free
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	rax, r15
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_107:
	mov	r15, -1
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	test	r12b, 1
	mov	r13, r14
	jne	.label_105
	jmp	.label_111
.label_110:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	mov	r13, r14
	mov	rcx, r12
	jmp	.label_105
.label_115:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	r13, qword ptr [rax]
	mov	r15, r14
	jbe	.label_104
.label_108:
	inc	r15
	mov	rdi, r15
	call	malloc
	mov	rcx, rax
	test	rcx, rcx
	je	.label_113
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rax]
	mov	r14, qword ptr [rsp + 0x10]
	mov	rdi, r14
	mov	rbp, rcx
	call	wc_truncate
	mov	r13, rax
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, r15
	call	wcstombs
	mov	rcx, r14
	mov	r14, rax
	mov	rax, rbp
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x18], rbp
	jmp	.label_105
.label_104:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	mov	rcx, qword ptr [rsp + 0x10]
	jmp	.label_105
.label_113:
	mov	r15, -1
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	mov	eax, dword ptr [rsp + 4]
	test	al, 1
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_105
	jmp	.label_111
	.section	.text
	.align	32
	#Procedure 0x402bc1
	.globl sub_402bc1
	.type sub_402bc1, @function
sub_402bc1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402bd0
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
	#Procedure 0x402be6
	.globl sub_402be6
	.type sub_402be6, @function
sub_402be6:

	nop	word ptr cs:[rax + rax]
.label_116:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x402bfe
	.globl sub_402bfe
	.type sub_402bfe, @function
sub_402bfe:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c07

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_116
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_118
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_116
.label_118:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_116
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_117
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_117:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c70
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_119
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_119:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c8e
	.globl sub_402c8e
	.type sub_402c8e, @function
sub_402c8e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402c90
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
	#Procedure 0x402ca3
	.globl sub_402ca3
	.type sub_402ca3, @function
sub_402ca3:

	nop	word ptr cs:[rax + rax]
.label_121:
	mov	rax, r8
	cqo	
	idiv	r9
	cmp	rax, rcx
	jge	.label_120
	mov	qword ptr [rdi], r8
	mov	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x402cc6

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	movabs	r8, 0x7fffffffffffffff
	mov	rcx, qword ptr [rdi]
	movsxd	r9, esi
	lea	rsi, [r8 + 1]
	mov	rax, rsi
	cqo	
	idiv	r9
	cmp	rcx, rax
	jge	.label_121
	mov	qword ptr [rdi], rsi
	mov	eax, 1
	ret	
.label_120:
	imul	rcx, r9
	mov	qword ptr [rdi], rcx
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x402cfa
	.globl sub_402cfa
	.type sub_402cfa, @function
sub_402cfa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d00

	.globl complement_rp
	.type complement_rp, @function
complement_rp:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14,  qword ptr [word ptr [rip + frp]]
	mov	r15,  qword ptr [word ptr [rip + n_frp]]
	mov	qword ptr [word ptr [rip + frp]],  0
	mov	qword ptr [word ptr [rip + n_frp]],  0
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  0
	mov	rsi, qword ptr [r14]
	cmp	rsi, 2
	jb	.label_122
	dec	rsi
	mov	edi, 1
	call	add_range_pair
.label_122:
	cmp	r15, 2
	jb	.label_126
	lea	r12, [r15 - 1]
	lea	rbx, [r14 + 0x10]
	nop	dword ptr [rax + rax]
.label_125:
	mov	rdi, qword ptr [rbx - 8]
	mov	rsi, qword ptr [rbx]
	inc	rdi
	cmp	rdi, rsi
	je	.label_124
	dec	rsi
	call	add_range_pair
.label_124:
	add	rbx, 0x10
	dec	r12
	jne	.label_125
.label_126:
	shl	r15, 4
	mov	rdi, qword ptr [r14 + r15 - 8]
	cmp	rdi, -1
	je	.label_123
	inc	rdi
	mov	rsi, -1
	call	add_range_pair
.label_123:
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x402db1
	.globl sub_402db1
	.type sub_402db1, @function
sub_402db1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402dc0

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
	je	.label_127
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_129
	jmp	.label_128
.label_127:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_128
.label_129:
	mov	eax, 1
	test	bpl, bpl
	je	.label_128
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
.label_128:
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
	#Procedure 0x402e3d
	.globl sub_402e3d
	.type sub_402e3d, @function
sub_402e3d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402e40
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x402e4a
	.globl sub_402e4a
	.type sub_402e4a, @function
sub_402e4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e50

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x402e5a
	.globl sub_402e5a
	.type sub_402e5a, @function
sub_402e5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e60
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
	#Procedure 0x402e70

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x402e79
	.globl sub_402e79
	.type sub_402e79, @function
sub_402e79:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402e80

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x402e8a
	.globl sub_402e8a
	.type sub_402e8a, @function
sub_402e8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e90
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
	#Procedure 0x402e9d
	.globl sub_402e9d
	.type sub_402e9d, @function
sub_402e9d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402ea0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_131
	cmp	byte ptr [rax], 0x43
	jne	.label_133
	cmp	byte ptr [rax + 1], 0
	je	.label_130
.label_133:
	mov	esi, OFFSET FLAT:label_132
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_131
.label_130:
	xor	ebx, ebx
.label_131:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ed1
	.globl sub_402ed1
	.type sub_402ed1, @function
sub_402ed1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ee0

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
	je	.label_136
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_134
	jmp	.label_135
.label_136:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_135
.label_134:
	mov	eax, 1
	test	bpl, bpl
	je	.label_135
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
.label_135:
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
	#Procedure 0x402f68
	.globl sub_402f68
	.type sub_402f68, @function
sub_402f68:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f70

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
	je	.label_137
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_139
	jmp	.label_138
.label_137:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_138
.label_139:
	mov	eax, 1
	test	bpl, bpl
	je	.label_138
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
.label_138:
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
	#Procedure 0x402fe9
	.globl sub_402fe9
	.type sub_402fe9, @function
sub_402fe9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402ff0

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
	je	.label_142
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_141
	jmp	.label_140
.label_142:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_140
.label_141:
	mov	eax, 1
	test	bpl, bpl
	je	.label_140
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
.label_140:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403053
	.globl sub_403053
	.type sub_403053, @function
sub_403053:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403060

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
	je	.label_145
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_143
	jmp	.label_144
.label_145:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_144
.label_143:
	mov	eax, 1
	test	bpl, bpl
	je	.label_144
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_144:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4030bf
	.globl sub_4030bf
	.type sub_4030bf, @function
sub_4030bf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4030c0

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
	je	.label_146
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_148
	jmp	.label_147
.label_146:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_147
.label_148:
	mov	eax, 1
	test	bpl, bpl
	je	.label_147
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_147:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403109
	.globl sub_403109
	.type sub_403109, @function
sub_403109:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403110

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
	je	.label_151
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_150
	jmp	.label_149
.label_151:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_149
.label_150:
	mov	eax, 1
	test	bpl, bpl
	je	.label_149
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_149:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403155
	.globl sub_403155
	.type sub_403155, @function
sub_403155:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403160

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_153
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_154
	jmp	.label_152
.label_153:
	mov	eax, 1
	test	cl, cl
	je	.label_152
.label_154:
	xor	eax, eax
.label_152:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40318f
	.globl sub_40318f
	.type sub_40318f, @function
sub_40318f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403190

	.globl simple_strtod_human
	.type simple_strtod_human, @function
simple_strtod_human:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, rdi
	mov	dword ptr [rsp + 0x28], r8d
	mov	edi, r8d
	call	default_scale_base
	mov	dword ptr [rsp + 0x20], eax
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_170
	mov	r12,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	rsi, rbp
	call	quote_n
	mov	r15, rax
	mov	rsi,  qword ptr [word ptr [rip + decimal_point]]
	mov	edi, 1
	call	quote_n
	mov	r8, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_166
	mov	r9d, 0x12
	xor	eax, eax
	mov	rdi, r12
	mov	rcx, r15
	call	__fprintf_chk
.label_170:
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, r14
	mov	rcx, rbx
	call	simple_strtod_float
	mov	r12d, eax
	cmp	r12d, 1
	ja	.label_162
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_165
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	fld	xword ptr [r14]
	mov	ecx, dword ptr [rbx]
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_168
	xor	eax, eax
	call	__fprintf_chk
.label_165:
	mov	qword ptr [rsp + 0x40], rbx
	mov	rax, qword ptr [r13]
	xor	r15d, r15d
	cmp	byte ptr [rax], 0
	je	.label_159
	mov	dword ptr [rsp + 0x24], r12d
	mov	qword ptr [rsp + 0x38], r14
	mov	rbx, qword ptr [r13]
	mov	r15b, byte ptr [rbx]
	movsx	edi, r15b
	call	to_uchar
	movzx	r12d, al
	call	__ctype_b_loc
	mov	rbp, rax
	mov	rax, qword ptr [rbp]
	test	byte ptr [rax + r12*2], 1
	je	.label_156
	inc	rbx
	nop	dword ptr [rax]
.label_169:
	mov	qword ptr [r13], rbx
	movzx	r15d, byte ptr [rbx]
	movsx	edi, r15b
	call	to_uchar
	movzx	eax, al
	mov	rcx, qword ptr [rbp]
	inc	rbx
	test	byte ptr [rcx + rax*2], 1
	jne	.label_169
	dec	rbx
.label_156:
	mov	r12d, dword ptr [rsp + 0x24]
	movsx	ebp, r15b
	mov	edi, ebp
	call	valid_suffix
	mov	ecx, eax
	mov	eax, 5
	test	ecx, ecx
	je	.label_160
	mov	eax, 4
	cmp	dword ptr [rsp + 0x28], 0
	je	.label_160
	mov	edi, ebp
	call	suffix_power
	mov	r15d, eax
	lea	rax, [rbx + 1]
	mov	qword ptr [r13], rax
	cmp	dword ptr [rsp + 0x28], 1
	jne	.label_158
	cmp	byte ptr [rax], 0x69
	jne	.label_158
	add	rbx, 2
	mov	qword ptr [r13], rbx
	mov	dword ptr [rsp + 0x20], 0x400
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_158
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	dword ptr [rsp + 0x20], 0x400
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_167
	mov	ecx, 0x400
	xor	eax, eax
	call	__fprintf_chk
.label_158:
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [rax], 0
	mov	r14, qword ptr [rsp + 0x38]
.label_159:
	cmp	dword ptr [rsp + 0x28], 4
	jne	.label_164
	mov	rcx, qword ptr [r13]
	mov	eax, 6
	cmp	byte ptr [rcx], 0x69
	jne	.label_160
	inc	rcx
	mov	qword ptr [r13], rcx
.label_164:
	mov	ebp, dword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 0x34], ebp
	fild	dword ptr [rsp + 0x34]
	fstp	xword ptr [rsp]
	mov	edi, r15d
	call	powerld
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_161
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	fld	st(0)
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_155
	xor	eax, eax
	mov	ecx, ebp
	mov	r8d, r15d
	fstp	xword ptr [rsp + 0x28]
	call	__fprintf_chk
	fld	xword ptr [rsp + 0x28]
.label_161:
	fld	xword ptr [r14]
	fmulp	st(1)
	fld	st(0)
	fstp	xword ptr [r14]
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_157
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	fld	st(0)
	fstp	xword ptr [rsp + 0x10]
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_163
	xor	eax, eax
	call	__fprintf_chk
	jmp	.label_162
.label_157:
	fstp	st(0)
.label_162:
	mov	eax, r12d
.label_160:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403414
	.globl sub_403414
	.type sub_403414, @function
sub_403414:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403420

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
	#Procedure 0x40344d
	.globl sub_40344d
	.type sub_40344d, @function
sub_40344d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403450

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
	#Procedure 0x403463
	.globl sub_403463
	.type sub_403463, @function
sub_403463:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403470

	.globl simple_round
	.type simple_round, @function
simple_round:
	sub	rsp, 0x48
	fld	xword ptr [rsp + 0x50]
	fld	xword ptr [word ptr [rip + label_172]]
	fld	st(1)
	fdiv	st(1)
	fnstcw	word ptr [rsp + 0x1e]
	movzx	eax, word ptr [rsp + 0x1e]
	mov	word ptr [rsp + 0x1e], 0xc7f
	fldcw	word ptr [rsp + 0x1e]
	mov	word ptr [rsp + 0x1e], ax
	fistp	qword ptr [rsp + 0x28]
	fldcw	word ptr [rsp + 0x1e]
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x30], rax
	fild	qword ptr [rsp + 0x30]
	fmulp	st(1)
	fsub	st(1), st(0)
	fldz	
	mov	eax, edi
	cmp	edi, 4
	ja	.label_173
	fstp	st(0)
	fstp	xword ptr [rsp + 0x3c]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_174]]
.label_723:
	fstp	xword ptr [rsp]
	call	simple_round_nearest
.label_171:
	mov	qword ptr [rsp + 0x20], rax
	fild	qword ptr [rsp + 0x20]
	fld	xword ptr [rsp + 0x3c]
	faddp	st(1)
	fldz	
	fldz	
	fxch	st(1)
	fxch	st(2)
.label_173:
	fstp	st(2)
	fstp	st(0)
	add	rsp, 0x48
	ret	
	.section	.text
	.align	32
	#Procedure 0x4034f3
	.globl sub_4034f3
	.type sub_4034f3, @function
sub_4034f3:

	nop	dword ptr [rax + rax]
.label_721:
	fstp	xword ptr [rsp]
	call	simple_round_from_zero
	jmp	.label_171
.label_719:
	fstp	xword ptr [rsp]
	call	simple_round_ceiling
	jmp	.label_171
.label_722:
	fstp	xword ptr [rsp]
	call	simple_round_to_zero
	jmp	.label_171
.label_720:
	fstp	xword ptr [rsp]
	call	simple_round_floor
	jmp	.label_171
	.section	.text
	.align	32
	#Procedure 0x403520
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_175
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_175:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403546
	.globl sub_403546
	.type sub_403546, @function
sub_403546:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403550

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_176
	test	rbx, rbx
	jne	.label_176
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_176:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_178
	test	rax, rax
	je	.label_177
.label_178:
	pop	rbx
	ret	
.label_177:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403580

	.globl simple_strtod_int
	.type simple_strtod_int, @function
simple_strtod_int:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	cmp	byte ptr [rdi], 0x2d
	lea	rax, [rdi + 1]
	cmovne	rax, rdi
	sete	byte ptr [r15]
	mov	qword ptr [r13], rax
	xor	ebp, ebp
	fldz	
	test	rax, rax
	je	.label_179
	fstp	st(0)
	movsx	edi, byte ptr [rax]
	call	c_isdigit
	xor	ecx, ecx
	fldz	
	test	al, al
	mov	ebp, 0
	je	.label_180
	fstp	st(0)
	fldz	
	xor	ebp, ebp
	mov	r12d, 1
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_186:
	mov	esi, ebx
	mov	rcx, qword ptr [r13]
	movsx	edx, byte ptr [rcx]
	fldz	
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	setp	bl
	setne	al
	or	al, bl
	add	edx, -0x30
	setne	bl
	or	bl, al
	movzx	ebx, bl
	add	ebx, esi
	mov	eax, 2
	cmp	ebx, 0x1b
	ja	.label_181
	cmp	ebx, 0x12
	cmova	ebp, r12d
	fmul	dword ptr [dword ptr [rip + label_184]]
	mov	dword ptr [rsp + 8], edx
	fiadd	dword ptr [rsp + 8]
	fstp	xword ptr [rsp + 0xc]
	lea	rax, [rcx + 1]
	mov	qword ptr [r13], rax
	movsx	edi, byte ptr [rcx + 1]
	call	c_isdigit
	fld	xword ptr [rsp + 0xc]
	mov	cl, 1
	test	al, al
	jne	.label_186
.label_180:
	test	cl, cl
	jne	.label_182
.label_179:
	fstp	xword ptr [rsp + 0xc]
	mov	rdi, qword ptr [r13]
	mov	rsi,  qword ptr [word ptr [rip + decimal_point]]
	movsxd	rdx,  dword ptr [dword ptr [rip + decimal_point_length]]
	call	strncmp
	fld	xword ptr [rsp + 0xc]
	mov	ecx, eax
	mov	eax, 3
	test	ecx, ecx
	jne	.label_181
.label_182:
	test	r14, r14
	je	.label_185
	cmp	byte ptr [r15], 0
	fld	st(0)
	fchs	
	fcmove	st(0), st(1)
	fstp	st(1)
	fstp	xword ptr [r14]
	jmp	.label_183
.label_185:
	fstp	st(0)
.label_183:
	mov	eax, ebp
	fldz	
.label_181:
	fstp	st(0)
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
	#Procedure 0x40369f
	.globl sub_40369f
	.type sub_40369f, @function
sub_40369f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4036a0

	.globl mbs_align_pad
	.type mbs_align_pad, @function
mbs_align_pad:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, rbx
	sub	rax, r14
	jae	.label_187
	test	r15, r15
	je	.label_187
	mov	rdx, r15
	neg	rdx
	cmp	rax, rdx
	cmovae	rdx, rax
	neg	rdx
	mov	esi, 0x20
	mov	rdi, rbx
	call	memset
	mov	eax, 1
	sub	rax, r15
.label_188:
	inc	rbx
	cmp	rbx, r14
	jae	.label_187
	test	rax, rax
	lea	rax, [rax + 1]
	jne	.label_188
.label_187:
	mov	byte ptr [rbx], 0
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4036fd
	.globl sub_4036fd
	.type sub_4036fd, @function
sub_4036fd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403700

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_189
	test	rdx, rdx
	je	.label_189
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_189:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40372b
	.globl sub_40372b
	.type sub_40372b, @function
sub_40372b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403730

	.globl next_field
	.type next_field, @function
next_field:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	r15, qword ptr [r14]
	mov	ecx,  dword ptr [dword ptr [rip + delimiter]]
	mov	al, byte ptr [r15]
	cmp	ecx, 0x80
	jne	.label_193
	test	al, al
	mov	rbx, r15
	je	.label_191
	mov	rbx, r15
	nop	word ptr cs:[rax + rax]
.label_192:
	movzx	edi, al
	call	field_sep
	test	al, al
	je	.label_191
	movzx	eax, byte ptr [rbx + 1]
	inc	rbx
	test	al, al
	jne	.label_192
.label_191:
	mov	al, byte ptr [rbx]
	jmp	.label_195
	.section	.text
	.align	32
	#Procedure 0x40377b
	.globl sub_40377b
	.type sub_40377b, @function
sub_40377b:

	nop	dword ptr [rax + rax]
.label_196:
	movzx	eax, byte ptr [rbx + 1]
	inc	rbx
.label_195:
	test	al, al
	je	.label_190
	movzx	edi, al
	call	field_sep
	test	al, al
	je	.label_196
	jmp	.label_190
.label_193:
	movsx	eax, al
	cmp	eax, ecx
	mov	rbx, r15
	je	.label_190
	mov	al, byte ptr [r15]
	test	al, al
	mov	rbx, r15
	je	.label_190
	mov	ecx,  dword ptr [dword ptr [rip + delimiter]]
	mov	rbx, r15
	nop	word ptr cs:[rax + rax]
.label_194:
	movsx	eax, al
	cmp	eax, ecx
	je	.label_190
	movzx	eax, byte ptr [rbx + 1]
	inc	rbx
	test	al, al
	jne	.label_194
.label_190:
	mov	qword ptr [r14], rbx
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4037de
	.globl sub_4037de
	.type sub_4037de, @function
sub_4037de:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4037e0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_197
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_197:
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
	#Procedure 0x403863
	.globl sub_403863
	.type sub_403863, @function
sub_403863:

	nop	word ptr cs:[rax + rax]
.label_200:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_199:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_201
	inc	r9
	cmp	r9, 0xa
	jb	.label_198
.label_201:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x40389f
	.globl sub_40389f
	.type sub_40389f, @function
sub_40389f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4038a0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_198:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_200
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_199
	.section	.text
	.align	32
	#Procedure 0x4038c9
	.globl sub_4038c9
	.type sub_4038c9, @function
sub_4038c9:

	nop	dword ptr [rax]
.label_202:
	fldz	
	fxch	st(1)
	fstp	st(1)
	ret	
	.section	.text
	.align	32
	#Procedure 0x4038d7

	.globl powerld
	.type powerld, @function
powerld:
	fld	xword ptr [rsp + 8]
	fld1	
	test	edi, edi
	je	.label_204
	fstp	st(0)
	cmp	edi, 1
	je	.label_202
	mov	eax, 1
	sub	eax, edi
	fld	st(0)
	nop	word ptr [rax + rax]
.label_203:
	fmul	st(1)
	inc	eax
	jne	.label_203
.label_204:
	fstp	st(1)
	ret	
.label_205:
	fstp	xword ptr [rsp]
	call	simple_round_ceiling
	add	rsp, 0x18
	ret	
	.section	.text
	.align	32
	#Procedure 0x40390d
	.globl sub_40390d
	.type sub_40390d, @function
sub_40390d:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403915

	.globl simple_round_from_zero
	.type simple_round_from_zero, @function
simple_round_from_zero:
	sub	rsp, 0x18
	fld	xword ptr [rsp + 0x20]
	fldz	
	fucomip	st(1)
	jbe	.label_205
	fstp	xword ptr [rsp]
	call	simple_round_floor
	add	rsp, 0x18
	ret	
	.section	.text
	.align	32
	#Procedure 0x403930
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_206
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_206:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x403948
	.globl sub_403948
	.type sub_403948, @function
sub_403948:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403950
	.globl ambsalign
	.type ambsalign, @function
ambsalign:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	dword ptr [rsp + 4], ecx
	mov	dword ptr [rsp], edx
	mov	r13, rsi
	mov	r12, rdi
	mov	r15, qword ptr [r13]
	xor	ebp, ebp
	mov	rax, r15
	mov	rbx, r15
	nop	word ptr cs:[rax + rax]
.label_209:
	cmp	rax, rbx
	jb	.label_207
	mov	rbx, rax
	inc	rbx
	mov	rdi, rbp
	mov	rsi, rbx
	call	realloc
	mov	r14, rax
	test	r14, r14
	je	.label_208
	mov	qword ptr [r13], r15
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbx
	mov	rcx, r13
	mov	r8d, dword ptr [rsp]
	mov	r9d, dword ptr [rsp + 4]
	call	mbsalign
	cmp	rax, -1
	mov	rbp, r14
	jne	.label_209
	mov	rdi, r14
	jmp	.label_210
.label_208:
	mov	rdi, rbp
.label_210:
	call	free
	xor	ebp, ebp
.label_207:
	mov	rax, rbp
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
	#Procedure 0x4039e6
	.globl sub_4039e6
	.type sub_4039e6, @function
sub_4039e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4039f0
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
	#Procedure 0x4039ff
	.globl sub_4039ff
	.type sub_4039ff, @function
sub_4039ff:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403a00

	.globl parse_human_number
	.type parse_human_number, @function
parse_human_number:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rax, rdx
	mov	rcx, rsi
	mov	r14, rdi
	mov	qword ptr [rsp], 0
	mov	r8d,  dword ptr [dword ptr [rip + scale_from]]
	lea	rsi, [rsp]
	mov	rdx, rcx
	mov	rcx, rax
	call	simple_strtod_human
	mov	ebx, eax
	cmp	ebx, 2
	jb	.label_212
	mov	edi, ebx
	mov	rsi, r14
	call	simple_strtod_fatal
	jmp	.label_211
.label_212:
	mov	rax, qword ptr [rsp]
	test	rax, rax
	je	.label_211
	cmp	byte ptr [rax], 0
	je	.label_211
	mov	ebx, 5
	cmp	dword ptr [dword ptr [rip + inval_style]],  3
	je	.label_211
	mov	al,  byte ptr [byte ptr [rip + conv_exit_code]]
	xor	ebp, ebp
	test	al, al
	sete	bpl
	add	ebp, ebp
	mov	ebx, 5
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_213
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	rsi, r14
	call	quote_n
	mov	r14, rax
	mov	rsi, qword ptr [rsp]
	mov	edi, 1
	call	quote_n
	mov	r8, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebp
	mov	rdx, r15
	mov	rcx, r14
	call	error
.label_211:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ac2
	.globl sub_403ac2
	.type sub_403ac2, @function
sub_403ac2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ad0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x403ada
	.globl sub_403ada
	.type sub_403ada, @function
sub_403ada:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ae0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	32
	#Procedure 0x403aed
	.globl sub_403aed
	.type sub_403aed, @function
sub_403aed:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403af0
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
	#Procedure 0x403b00
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
	#Procedure 0x403b72
	.globl sub_403b72
	.type sub_403b72, @function
sub_403b72:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b80

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edx
	mov	r14d, esi
	mov	r15, rdi
	xor	ebp, ebp
	test	ebx, ebx
	je	.label_214
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_215:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebp, eax
	dec	ebx
	jne	.label_215
.label_214:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403bbe
	.globl sub_403bbe
	.type sub_403bbe, @function
sub_403bbe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403bc0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r15, rsi
	mov	ebx, edi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_66
	call	setlocale
	mov	r14, rax
	mov	edi, OFFSET FLAT:label_267
	mov	esi, OFFSET FLAT:label_268
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_267
	call	textdomain
	mov	edi, 0x10000
	call	rpl_nl_langinfo
	mov	qword ptr [word ptr [rip + decimal_point]],  rax
	test	rax, rax
	je	.label_218
	cmp	byte ptr [rax], 0
	jne	.label_222
.label_218:
	mov	qword ptr [word ptr [rip + decimal_point]], OFFSET FLAT:label_254
.label_222:
	mov	rdi,  qword ptr [word ptr [rip + decimal_point]]
	call	strlen
	mov	dword ptr [dword ptr [rip + decimal_point_length]],  eax
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	jmp	.label_221
.label_898:
	mov	byte ptr [byte ptr [rip + dev_debug]],  1
	mov	byte ptr [byte ptr [rip + debug]],  1
	nop	word ptr cs:[rax + rax]
.label_221:
	mov	edx, OFFSET FLAT:label_238
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebx
	mov	rsi, r15
	call	getopt_long
	lea	ecx, [rax + 1]
	cmp	ecx, 0x8e
	ja	.label_241
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_243]]
.label_886:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	cmp	byte ptr [rax], 0
	je	.label_246
	cmp	byte ptr [rax + 1], 0
	jne	.label_251
.label_246:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	movsx	eax, byte ptr [rax]
	mov	dword ptr [dword ptr [rip + delimiter]],  eax
	jmp	.label_221
.label_887:
	mov	byte ptr [byte ptr [rip + line_delim]],  1
	jmp	.label_221
.label_888:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:label_255
	mov	edx, OFFSET FLAT:scale_from_args
	mov	ecx, OFFSET FLAT:scale_from_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + scale_from_types]]
	mov	dword ptr [dword ptr [rip + scale_from]],  eax
	jmp	.label_221
.label_889:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	unit_to_umax
	mov	qword ptr [word ptr [rip + from_unit_size]],  rax
	jmp	.label_221
.label_891:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	unit_to_umax
	mov	qword ptr [word ptr [rip + to_unit_size]],  rax
	jmp	.label_221
.label_893:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + suffix]],  rax
	jmp	.label_221
.label_894:
	mov	byte ptr [byte ptr [rip + grouping]],  1
	jmp	.label_221
.label_897:
	mov	byte ptr [byte ptr [rip + debug]],  1
	jmp	.label_221
.label_899:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	test	rdi, rdi
	je	.label_234
	xor	esi, esi
	mov	edx, 0xa
	mov	ecx, OFFSET FLAT:header
	mov	r8d, OFFSET FLAT:label_66
	call	xstrtoumax
	test	eax, eax
	jne	.label_242
	mov	rax,  qword ptr [word ptr [rip + header]]
	test	rax, rax
	jne	.label_221
	jmp	.label_242
.label_890:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:label_250
	mov	edx, OFFSET FLAT:scale_to_args
	mov	ecx, OFFSET FLAT:scale_to_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + scale_to_types]]
	mov	dword ptr [dword ptr [rip + scale_to]],  eax
	jmp	.label_221
.label_892:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:label_261
	mov	edx, OFFSET FLAT:round_args
	mov	ecx, OFFSET FLAT:round_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + round_types]]
	mov	dword ptr [dword ptr [rip + round_style]],  eax
	jmp	.label_221
.label_895:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	mov	edx, 0xa
	mov	ecx, OFFSET FLAT:padding_width
	mov	r8d, OFFSET FLAT:label_66
	call	xstrtol
	test	eax, eax
	jne	.label_228
	mov	rax,  qword ptr [word ptr [rip + padding_width]]
	test	rax, rax
	je	.label_228
	jns	.label_221
	mov	byte ptr [byte ptr [rip + padding_alignment]],  1
	neg	qword ptr [word ptr [rip + padding_width]]
	jmp	.label_221
.label_896:
	cmp	qword ptr [word ptr [rip + n_frp]],  0
	jne	.label_237
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	esi, 1
	call	set_fields
	jmp	.label_221
.label_900:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + format_str]],  rax
	jmp	.label_221
.label_901:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:label_248
	mov	edx, OFFSET FLAT:inval_args
	mov	ecx, OFFSET FLAT:inval_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + inval_types]]
	mov	dword ptr [dword ptr [rip + inval_style]],  eax
	jmp	.label_221
.label_234:
	mov	qword ptr [word ptr [rip + header]],  1
	jmp	.label_221
.label_885:
	cmp	qword ptr [word ptr [rip + format_str]],  0
	je	.label_264
	test	byte ptr [byte ptr [rip + grouping]],  1
	jne	.label_266
.label_264:
	test	r14, r14
	jne	.label_270
	mov	al,  byte ptr [byte ptr [rip + debug]]
	xor	al, 1
	test	al, 1
	jne	.label_270
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_216
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_270:
	mov	rdi,  qword ptr [word ptr [rip + format_str]]
	test	rdi, rdi
	jne	.label_227
	mov	rax,  qword ptr [word ptr [rip + padding_width]]
	test	rax, rax
	jne	.label_227
	test	byte ptr [byte ptr [rip + debug]],  1
	je	.label_227
	mov	eax,  dword ptr [dword ptr [rip + scale_to]]
	or	eax,  dword ptr [dword ptr [rip + scale_from]]
	jne	.label_227
	mov	al,  byte ptr [byte ptr [rip + grouping]]
	xor	al, 1
	test	al, 1
	je	.label_227
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_235
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	rdi,  qword ptr [word ptr [rip + format_str]]
.label_227:
	test	rdi, rdi
	je	.label_244
	call	parse_format_string
.label_244:
	cmp	byte ptr [byte ptr [rip + grouping]],  1
	jne	.label_249
	cmp	dword ptr [dword ptr [rip + scale_to]],  0
	jne	.label_252
	cmp	byte ptr [byte ptr [rip + debug]],  1
	jne	.label_249
	mov	edi, 0x10001
	call	rpl_nl_langinfo
	cmp	byte ptr [rax], 0
	jne	.label_249
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_258
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_249:
	mov	rdi,  qword ptr [word ptr [rip + padding_width]]
	call	setup_padding_buffer
	cmp	qword ptr [word ptr [rip + padding_width]],  0
	sete	al
	cmp	dword ptr [dword ptr [rip + delimiter]],  0x80
	sete	cl
	and	cl, al
	movzx	eax, cl
	mov	dword ptr [dword ptr [rip + auto_padding]],  eax
	cmp	dword ptr [dword ptr [rip + inval_style]],  0
	je	.label_269
	mov	byte ptr [byte ptr [rip + conv_exit_code]],  1
.label_269:
	cmp	dword ptr [dword ptr [rip + optind]],  ebx
	jge	.label_224
	cmp	byte ptr [byte ptr [rip + debug]],  1
	jne	.label_229
	mov	rax,  qword ptr [word ptr [rip + header]]
	test	rax, rax
	je	.label_229
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_230
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_229:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	mov	ebp, 1
	cmp	eax, ebx
	jge	.label_223
	mov	ebp, 1
	nop	dword ptr [rax]
.label_247:
	cdqe	
	mov	rdi, qword ptr [r15 + rax*8]
	mov	esi, 1
	call	process_line
	and	ebp, eax
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	inc	eax
	mov	dword ptr [dword ptr [rip + optind]],  eax
	cmp	eax, ebx
	jl	.label_247
	jmp	.label_253
.label_224:
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], 0
	mov	rax,  qword ptr [word ptr [rip + header]]
	lea	rcx, [rax - 1]
	mov	qword ptr [word ptr [rip + header]],  rcx
	test	rax, rax
	je	.label_233
	xor	r14d, r14d
	lea	rbx, [rsp]
	lea	rbp, [rsp + 8]
	nop	dword ptr [rax]
.label_272:
	movzx	eax,  byte ptr [byte ptr [rip + line_delim]]
	test	al, al
	mov	edx, 0xa
	cmovne	edx, r14d
	mov	rcx,  qword ptr [word ptr [rip + stdin]]
	mov	rdi, rbx
	mov	rsi, rbp
	call	getdelim
	test	rax, rax
	jle	.label_233
	mov	rdi, qword ptr [rsp]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	mov	rax,  qword ptr [word ptr [rip + header]]
	lea	rcx, [rax - 1]
	mov	qword ptr [word ptr [rip + header]],  rcx
	test	rax, rax
	jne	.label_272
.label_233:
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	xor	r12d, r12d
	test	al, al
	mov	edx, 0xa
	cmovne	edx, r12d
	mov	rcx,  qword ptr [word ptr [rip + stdin]]
	lea	rdi, [rsp]
	lea	rsi, [rsp + 8]
	call	getdelim
	mov	ebp, 1
	test	rax, rax
	jle	.label_236
	mov	ebp, 1
	lea	r14, [rsp]
	lea	r15, [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_259:
	mov	rdx, qword ptr [rsp]
	movsx	ecx, byte ptr [rdx + rax - 1]
	movzx	ebx,  byte ptr [byte ptr [rip + line_delim]]
	test	bl, bl
	mov	edi, 0xa
	cmovne	edi, r12d
	cmp	ecx, edi
	jne	.label_219
	mov	byte ptr [rdx + rax - 1], 0
.label_219:
	xor	esi, esi
	cmp	ecx, edi
	sete	sil
	mov	rdi, qword ptr [rsp]
	call	process_line
	and	ebp, eax
	movzx	eax,  byte ptr [byte ptr [rip + line_delim]]
	test	al, al
	mov	edx, 0xa
	cmovne	edx, r12d
	mov	rcx,  qword ptr [word ptr [rip + stdin]]
	mov	rdi, r14
	mov	rsi, r15
	call	getdelim
	test	rax, rax
	jg	.label_259
.label_236:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	ferror_unlocked
	test	eax, eax
	je	.label_253
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_253:
	test	ebp, ebp
	jne	.label_223
	mov	al,  byte ptr [byte ptr [rip + debug]]
	xor	al, 1
	test	al, 1
	jne	.label_223
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_245
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_223:
	mov	eax,  dword ptr [dword ptr [rip + inval_style]]
	and	eax, 0xfffffffe
	xor	ecx, ecx
	cmp	eax, 2
	setne	cl
	add	ecx, ecx
	xor	eax, eax
	test	ebp, ebp
	cmove	eax, ecx
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_241:
	cmp	eax, 0xffffff7d
	je	.label_240
	cmp	eax, 0xffffff7e
	jne	.label_263
	xor	edi, edi
	call	usage
.label_263:
	mov	edi, 1
	call	usage
.label_240:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_62
	mov	edx, OFFSET FLAT:label_60
	mov	r8d, OFFSET FLAT:label_239
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_228:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_256
	jmp	.label_257
.label_237:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_260
	jmp	.label_226
.label_266:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_262
	jmp	.label_226
.label_251:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_225
	jmp	.label_226
.label_242:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_265
.label_257:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_252:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_220
.label_226:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax]
.label_753:
	mov	esi, OFFSET FLAT:label_231
	jmp	.label_232
.label_751:
	mov	esi, OFFSET FLAT:label_273
	jmp	.label_232
.label_755:
	mov	esi, OFFSET FLAT:label_276
.label_232:
	cmp	dword ptr [dword ptr [rip + inval_style]],  3
	jne	.label_271
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404361

	.globl simple_strtod_fatal
	.type simple_strtod_fatal, @function
simple_strtod_fatal:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	xor	esi, esi
	mov	eax, edi
	cmp	edi, 6
	ja	.label_232
	jmp	qword ptr [word ptr [+ (rax * 8) + label_275]]
.label_754:
	mov	esi, OFFSET FLAT:label_274
	jmp	.label_232
.label_752:
	mov	esi, OFFSET FLAT:label_277
	jmp	.label_232
.label_750:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40438b
	.globl sub_40438b
	.type sub_40438b, @function
sub_40438b:

	nop	word ptr [rax + rax]
.label_271:
	mov	al,  byte ptr [byte ptr [rip + conv_exit_code]]
	xor	ebp, ebp
	test	al, al
	sete	bpl
	add	ebp, ebp
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebp
	mov	rdx, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	error
	.section	.text
	.align	32
	#Procedure 0x4043d0

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
	#Procedure 0x404409
	.globl sub_404409
	.type sub_404409, @function
sub_404409:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404410
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
	#Procedure 0x404421
	.globl sub_404421
	.type sub_404421, @function
sub_404421:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404430
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
	#Procedure 0x404444
	.globl sub_404444
	.type sub_404444, @function
sub_404444:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404450

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_296
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_301
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_278
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_297
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_295
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_308
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_281
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_279
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_294
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_298
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_283
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_300
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_284
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_304
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_285
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_302
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_286
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_303
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_287
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_291
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_288
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_280
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_289
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_305
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_299
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_306
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_290
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_307
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_293
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_282
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	sub	rsp, 8
	mov	edi, 1
	mov	eax, 0
	mov	rsi, rcx
	mov	rcx, rdx
	mov	r8, rdx
	mov	r9, rdx
	push	rdx
	push	rdx
	push	rdx
	push	rdx
	push	rdx
	call	__printf_chk
	add	rsp, 0x30
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_296:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_292
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	32
	#Procedure 0x40487d
	.globl sub_40487d
	.type sub_40487d, @function
sub_40487d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404880

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
	#Procedure 0x4048b6
	.globl sub_4048b6
	.type sub_4048b6, @function
sub_4048b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048c0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_309
	call	rpl_calloc
	test	rax, rax
	je	.label_309
	pop	rcx
	ret	
.label_309:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4048e6
	.globl sub_4048e6
	.type sub_4048e6, @function
sub_4048e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048f0

	.globl field_sep
	.type field_sep, @function
field_sep:
	push	rbx
	mov	ebx, edi
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	cmp	bl, 0xa
	sete	cl
	mov	al, byte ptr [rax + rbx*2]
	and	al, 1
	or	al, cl
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40490a
	.globl sub_40490a
	.type sub_40490a, @function
sub_40490a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404910
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rcx
	mov	r15, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	r13, qword ptr [rbx]
	xor	eax, eax
	test	r13, r13
	je	.label_310
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_311:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_310
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_311
.label_310:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x404973
	.globl sub_404973
	.type sub_404973, @function
sub_404973:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404980

	.globl double_to_human
	.type double_to_human, @function
double_to_human:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r15d, r8d
	mov	ebp, ecx
	mov	r12d, edx
	mov	r14, rsi
	mov	r13d, edi
	fld	xword ptr [rsp + 0xe0]
	fstp	xword ptr [rsp + 0x24]
	mov	byte ptr [rsp + 0x60], 0x25
	test	ebp, ebp
	je	.label_312
	lea	rbx, [rsp + 0x62]
	mov	byte ptr [rsp + 0x61], 0x27
	jmp	.label_323
.label_312:
	lea	rbx, [rsp + 0x61]
.label_323:
	mov	r9,  qword ptr [word ptr [rip + zero_padding_width]]
	test	r9, r9
	je	.label_325
	mov	esi, 0x3e
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_329
	xor	eax, eax
	mov	rdi, rbx
	call	__snprintf_chk
	cdqe	
	add	rbx, rax
.label_325:
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_337
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_339
	xor	eax, eax
	call	__fprintf_chk
.label_337:
	test	r12d, r12d
	je	.label_319
	mov	edi, r12d
	call	default_scale_base
	cvtsi2sd	xmm0, eax
	movsd	qword ptr [rsp + 0x30], xmm0
	mov	dword ptr [rsp + 0x20], 0
	fld	xword ptr [rsp + 0x24]
	fstp	xword ptr [rsp]
	lea	rsi, [rsp + 0x20]
	mov	edi, eax
	call	expld
	fstp	xword ptr [rsp + 0x24]
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_328
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	ecx, dword ptr [rsp + 0x20]
	fld	xword ptr [rsp + 0x24]
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_331
	mov	al, 1
	movsd	xmm0, qword ptr [rsp + 0x30]
	call	__fprintf_chk
.label_328:
	mov	rdi,  qword ptr [word ptr [rip + user_precision]]
	cmp	rdi, -1
	je	.label_313
	imul	eax, dword ptr [rsp + 0x20], 3
	cmp	rax, rdi
	cmovl	edi, eax
	jmp	.label_318
.label_319:
	fld	dword ptr [dword ptr [rip + label_184]]
	fstp	xword ptr [rsp]
	mov	edi, r13d
	call	powerld
	fld	st(0)
	fstp	xword ptr [rsp + 0x30]
	fld	xword ptr [rsp + 0x24]
	fmulp	st(1)
	fstp	xword ptr [rsp]
	mov	edi, r15d
	call	simple_round
	fld	xword ptr [rsp + 0x30]
	fdivp	st(1)
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	fld	st(0)
	fstp	xword ptr [rsp + 0x24]
	jne	.label_327
	test	ebp, ebp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	eax, OFFSET FLAT:label_333
	mov	edx, OFFSET FLAT:label_334
	cmovne	rdx, rax
	fstp	xword ptr [rsp]
	mov	esi, 1
	xor	eax, eax
	mov	ecx, r13d
	call	__fprintf_chk
	fld	xword ptr [rsp + 0x24]
.label_327:
	mov	byte ptr [rbx + 4], 0
	mov	dword ptr [rbx], 0x664c2a2e
	fstp	xword ptr [rsp]
	lea	r8, [rsp + 0x60]
	mov	esi, 0x80
	mov	edx, 1
	mov	rcx, -1
	xor	eax, eax
	mov	rdi, r14
	mov	r9d, r13d
	call	__snprintf_chk
	cmp	eax, 0x80
	jb	.label_320
	jmp	.label_326
.label_313:
	fld	xword ptr [rsp + 0x24]
	fstp	xword ptr [rsp]
	call	absld
	xor	edi, edi
	fld	dword ptr [dword ptr [rip + label_184]]
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_318
	mov	edi, 1
.label_318:
	fld	dword ptr [dword ptr [rip + label_184]]
	fld	st(0)
	fstp	xword ptr [rsp + 0x48]
	fstp	xword ptr [rsp]
	call	powerld
	fld	st(0)
	fstp	xword ptr [rsp + 0x54]
	fld	xword ptr [rsp + 0x24]
	fmulp	st(1)
	fstp	xword ptr [rsp]
	mov	edi, r15d
	call	simple_round
	fld	xword ptr [rsp + 0x54]
	fdivp	st(1)
	fld	st(0)
	fstp	xword ptr [rsp + 0x24]
	fstp	xword ptr [rsp]
	call	absld
	movsd	xmm0, qword ptr [rsp + 0x30]
	movsd	qword ptr [rsp + 0x40], xmm0
	fld	qword ptr [rsp + 0x40]
	fxch	st(1)
	fucomip	st(1)
	jae	.label_322
	fstp	st(0)
	fld	xword ptr [rsp + 0x24]
	jmp	.label_324
.label_322:
	fld	xword ptr [rsp + 0x24]
	fdivrp	st(1)
	inc	dword ptr [rsp + 0x20]
.label_324:
	fldz	
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	fld	st(0)
	fstp	xword ptr [rsp + 0x24]
	jne	.label_330
	jnp	.label_335
.label_330:
	fstp	xword ptr [rsp]
	call	absld
	fld	xword ptr [rsp + 0x48]
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_336
	cmp	dword ptr [rsp + 0x20], 0
	setne	bpl
	jmp	.label_338
.label_335:
	fstp	st(0)
.label_336:
	xor	ebp, ebp
.label_338:
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_315
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	ecx, dword ptr [rsp + 0x20]
	fld	xword ptr [rsp + 0x24]
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_316
	mov	al, 1
	movsd	xmm0, qword ptr [rsp + 0x30]
	call	__fprintf_chk
.label_315:
	mov	byte ptr [rbx + 6], 0
	mov	word ptr [rbx + 4], 0x7325
	mov	dword ptr [rbx], 0x664c2a2e
	mov	rbx,  qword ptr [word ptr [rip + user_precision]]
	cmp	rbx, -1
	movzx	eax, bpl
	cmove	ebx, eax
	mov	edi, dword ptr [rsp + 0x20]
	call	suffix_power_char
	mov	qword ptr [rsp + 0x10], rax
	fld	xword ptr [rsp + 0x24]
	fstp	xword ptr [rsp]
	lea	r8, [rsp + 0x60]
	mov	esi, 0x7f
	mov	edx, 1
	mov	rcx, -1
	xor	eax, eax
	mov	rdi, r14
	mov	r9d, ebx
	call	__snprintf_chk
	cmp	eax, 0x7f
	jae	.label_326
	cmp	r12d, 4
	jne	.label_317
	mov	ecx, dword ptr [rsp + 0x20]
	test	ecx, ecx
	je	.label_317
	cdqe	
	mov	edx, 0x7f
	sub	rdx, rax
	mov	esi, OFFSET FLAT:label_321
	mov	rcx, -1
	mov	rdi, r14
	call	__strncat_chk
.label_317:
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_320
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_332
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_320:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_326:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_314
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	fld	xword ptr [rsp + 0x24]
	fstp	xword ptr [rsp]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	sub	rsp, 0x10
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d40

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_66
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_340
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404d65
	.globl sub_404d65
	.type sub_404d65, @function
sub_404d65:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d70

	.globl expld
	.type expld, @function
expld:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r14, rsi
	mov	ebp, edi
	fld	xword ptr [rsp + 0x60]
	xor	ebx, ebx
	fld	xword ptr [word ptr [rip + label_343]]
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	jb	.label_344
	fld	xword ptr [word ptr [rip + label_345]]
	fucomip	st(1)
	jb	.label_344
	fld	st(0)
	fstp	xword ptr [rsp + 0x1c]
	fstp	xword ptr [rsp]
	call	absld
	mov	eax, ebp
	mov	qword ptr [rsp + 0x28], rax
	fild	qword ptr [rsp + 0x28]
	fxch	st(1)
	fucomip	st(1)
	jae	.label_342
	fstp	st(0)
	fld	xword ptr [rsp + 0x1c]
.label_344:
	fldz	
	jmp	.label_341
.label_342:
	xor	ebx, ebx
	fld	xword ptr [rsp + 0x1c]
	fld	st(1)
	fstp	xword ptr [rsp + 0x34]
	fxch	st(1)
	nop	word ptr cs:[rax + rax]
.label_346:
	inc	ebx
	fdivp	st(1)
	fld	st(0)
	fstp	xword ptr [rsp + 0x1c]
	fstp	xword ptr [rsp]
	call	absld
	fld	xword ptr [rsp + 0x34]
	fld	xword ptr [rsp + 0x1c]
	fxch	st(2)
	fucomip	st(1)
	jae	.label_346
.label_341:
	fstp	st(0)
	test	r14, r14
	je	.label_347
	mov	dword ptr [r14], ebx
.label_347:
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e13
	.globl sub_404e13
	.type sub_404e13, @function
sub_404e13:

	nop	word ptr cs:[rax + rax]
.label_350:
	mov	eax, OFFSET FLAT:label_348
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e26
	.globl sub_404e26
	.type sub_404e26, @function
sub_404e26:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e2f

	.globl suffix_power_char
	.type suffix_power_char, @function
suffix_power_char:
	cmp	edi, 8
	ja	.label_350
	movsxd	rax, edi
	mov	rax,  qword ptr [word ptr [+ (rax * 8) + label_349]]
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e40

	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:
	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e4a
	.globl sub_404e4a
	.type sub_404e4a, @function
sub_404e4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e50
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_351:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_351
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x404e71
	.globl sub_404e71
	.type sub_404e71, @function
sub_404e71:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e80
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_352
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_353
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_355
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_60
	mov	ecx, OFFSET FLAT:label_61
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_354
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x404ef4
	.globl sub_404ef4
	.type sub_404ef4, @function
sub_404ef4:

	nop	word ptr cs:[rax + rax]
.label_356:
	ret	
.label_358:
	xor	eax, eax
	jmp	.label_356
	.section	.text
	.align	32
	#Procedure 0x404f05
	.globl sub_404f05
	.type sub_404f05, @function
sub_404f05:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f0f
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_358
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_357]]
	.section	.text
	.align	32
	#Procedure 0x404f20

	.globl to_uchar_0
	.type to_uchar_0, @function
to_uchar_0:
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x404f23
	.globl sub_404f23
	.type sub_404f23, @function
sub_404f23:

	nop	word ptr cs:[rax + rax]
.label_362:
	mov	esi, OFFSET FLAT:label_359
.label_361:
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r15
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	rsi, r14
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	error
	.section	.text
	.align	32
	#Procedure 0x404f83

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r14, rdi
	xor	edi, edi
	cmp	rdx, -1
	je	.label_362
	mov	esi, OFFSET FLAT:label_360
	jmp	.label_361
	.section	.text
	.align	32
	#Procedure 0x404fa0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_363
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x404fc2
	.globl sub_404fc2
	.type sub_404fc2, @function
sub_404fc2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404fd0

	.globl set_fields
	.type set_fields, @function
set_fields:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r12, rdi
	xor	ebp, ebp
	mov	dword ptr [rsp + 4], esi
	and	esi, 1
	mov	dword ptr [rsp + 0x24], esi
	je	.label_409
	movzx	ecx, byte ptr [r12]
	mov	eax, 0x2d
	sub	eax, ecx
	jne	.label_414
	movzx	eax, byte ptr [r12 + 1]
	neg	eax
.label_414:
	lea	rcx, [r12 + 1]
	xor	ebp, ebp
	test	eax, eax
	sete	bpl
	cmove	r12, rcx
.label_409:
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	r14b, bpl
	mov	al, bpl
	mov	dword ptr [rsp + 8], eax
	mov	eax, 1
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_370
	.section	.text
	.align	32
	#Procedure 0x405034
	.globl sub_405034
	.type sub_405034, @function
sub_405034:

	nop	word ptr cs:[rax + rax]
.label_406:
	mov	qword ptr [rsp + 0x18], rbx
	inc	r12
	xor	ebp, ebp
.label_370:
	mov	dword ptr [rsp + 0xc], r14d
	and	r14b, 1
	xor	r13d, r13d
	jmp	.label_383
	.section	.text
	.align	32
	#Procedure 0x405058
	.globl sub_405058
	.type sub_405058, @function
sub_405058:

	nop	dword ptr [rax + rax]
.label_369:
	inc	r12
	mov	r13b, 1
.label_383:
	movsx	ebx, byte ptr [r12]
	cmp	ebx, 0x2c
	je	.label_391
	cmp	bl, 0x2d
	je	.label_404
	mov	edi, ebx
	call	to_uchar_0
	movzx	r15d, al
	call	__ctype_b_loc
	test	bl, bl
	je	.label_391
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + r15*2]
	and	eax, 1
	test	ax, ax
	jne	.label_391
	add	ebx, -0x30
	cmp	ebx, 9
	ja	.label_401
	cmp	qword ptr [word ptr [rip + set_fields.num_start]],  0
	setne	al
	test	r13b, al
	jne	.label_403
	mov	qword ptr [word ptr [rip + set_fields.num_start]],  r12
.label_403:
	test	r14b, r14b
	je	.label_394
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_410
	.section	.text
	.align	32
	#Procedure 0x4050da
	.globl sub_4050da
	.type sub_4050da, @function
sub_4050da:

	nop	word ptr [rax + rax]
.label_394:
	mov	al, 1
	mov	dword ptr [rsp + 8], eax
.label_410:
	movabs	rax, 0x1999999999999999
	cmp	rbp, rax
	ja	.label_372
	lea	rax, [rbp + rbp*4]
	movsx	rcx, byte ptr [r12]
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, rbp
	cmovae	rbp, rax
	jb	.label_372
	cmp	rbp, -1
	jne	.label_369
	jmp	.label_372
	.section	.text
	.align	32
	#Procedure 0x405124
	.globl sub_405124
	.type sub_405124, @function
sub_405124:

	nop	word ptr cs:[rax + rax]
.label_391:
	mov	r14d, dword ptr [rsp + 0xc]
	test	r14b, 1
	jne	.label_379
	test	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x18]
	je	.label_380
	mov	rdi, rbp
	mov	rsi, rbp
	call	add_range_pair
	jmp	.label_387
	.section	.text
	.align	32
	#Procedure 0x405159
	.globl sub_405159
	.type sub_405159, @function
sub_405159:

	nop	dword ptr [rax]
.label_379:
	mov	rax, qword ptr [rsp + 0x10]
	mov	ecx, dword ptr [rsp + 8]
	or	cl, al
	and	cl, 1
	mov	eax, 1
	mov	rbx, qword ptr [rsp + 0x18]
	cmove	rbx, rax
	cmp	dword ptr [rsp + 0x24], 0
	jne	.label_376
	test	cl, cl
	je	.label_395
.label_376:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	jne	.label_396
	mov	rsi, -1
	mov	rdi, rbx
	jmp	.label_397
.label_404:
	mov	eax, dword ptr [rsp + 0xc]
	test	al, 1
	jne	.label_398
	mov	eax, dword ptr [rsp + 8]
	and	al, 1
	sete	cl
	test	rbp, rbp
	jne	.label_402
	test	cl, cl
	je	.label_405
.label_402:
	test	al, al
	mov	eax, 1
	cmove	rbp, rax
	mov	r14b, 1
	mov	rbx, rbp
	jmp	.label_406
.label_396:
	cmp	rbp, rbx
	jb	.label_411
	mov	rdi, rbx
	mov	rsi, rbp
.label_397:
	call	add_range_pair
	xor	r14d, r14d
.label_387:
	cmp	byte ptr [r12], 0
	je	.label_413
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 8], 0
	jmp	.label_406
.label_413:
	mov	rsi,  qword ptr [word ptr [rip + n_frp]]
	test	rsi, rsi
	je	.label_365
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	mov	edx, 0x10
	mov	ecx, OFFSET FLAT:compare_ranges
	call	qsort
	cmp	qword ptr [word ptr [rip + n_frp]],  0
	je	.label_374
	xor	ebx, ebx
.label_392:
	mov	r14, rbx
	lea	rbx, [r14 + 1]
	cmp	rbx,  qword ptr [word ptr [rip + n_frp]]
	jae	.label_382
.label_400:
	mov	rax,  qword ptr [word ptr [rip + frp]]
	mov	rcx, rbx
	shl	rcx, 4
	mov	rsi, r14
	shl	rsi, 4
	mov	rdx, qword ptr [rax + rsi + 8]
	cmp	qword ptr [rax + rcx], rdx
	ja	.label_382
	lea	rsi, [rax + rsi + 8]
	lea	rdi, [rax + rcx]
	mov	rbp, qword ptr [rax + rcx + 8]
	cmp	rbp, rdx
	cmova	rdx, rbp
	mov	qword ptr [rsi], rdx
	lea	rsi, [rax + rcx + 0x10]
	mov	rdx,  qword ptr [word ptr [rip + n_frp]]
	sub	rdx, rbx
	shl	rdx, 4
	add	rdx, -0x10
	call	memmove
	mov	rax,  qword ptr [word ptr [rip + n_frp]]
	dec	rax
	mov	qword ptr [word ptr [rip + n_frp]],  rax
	cmp	rbx, rax
	jb	.label_400
.label_382:
	cmp	rbx,  qword ptr [word ptr [rip + n_frp]]
	jb	.label_392
.label_374:
	mov	eax, dword ptr [rsp + 4]
	test	al, 2
	je	.label_407
	call	complement_rp
.label_407:
	mov	rsi,  qword ptr [word ptr [rip + n_frp]]
	inc	rsi
	mov	qword ptr [word ptr [rip + n_frp]],  rsi
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	shl	rsi, 4
	call	xrealloc
	mov	qword ptr [word ptr [rip + frp]],  rax
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	shl	rcx, 4
	pcmpeqd	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx - 0x10], xmm0
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_372:
	mov	rbx,  qword ptr [word ptr [rip + set_fields.num_start]]
	mov	esi, OFFSET FLAT:label_373
	mov	rdi, rbx
	call	strspn
	mov	rdi, rbx
	mov	rsi, rax
	call	xstrndup
	mov	rbx, rax
	mov	eax, dword ptr [rsp + 4]
	xor	edi, edi
	test	al, 4
	jne	.label_381
	mov	esi, OFFSET FLAT:label_384
	jmp	.label_385
.label_401:
	mov	eax, dword ptr [rsp + 4]
	xor	edi, edi
	test	al, 4
	jne	.label_386
	mov	esi, OFFSET FLAT:label_377
	jmp	.label_378
.label_381:
	mov	esi, OFFSET FLAT:label_390
.label_385:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	rdi, rbx
	call	free
	mov	edi, 1
	call	usage
.label_386:
	mov	esi, OFFSET FLAT:label_399
.label_378:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r12
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_380:
	mov	eax, dword ptr [rsp + 4]
	xor	edi, edi
	test	al, 4
	jne	.label_364
	mov	esi, OFFSET FLAT:label_366
	jmp	.label_367
.label_395:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_393
	jmp	.label_367
.label_398:
	mov	eax, dword ptr [rsp + 4]
	xor	edi, edi
	test	al, 4
	jne	.label_412
	mov	esi, OFFSET FLAT:label_415
	jmp	.label_367
.label_405:
	mov	eax, dword ptr [rsp + 4]
	xor	edi, edi
	test	al, 4
	jne	.label_364
	mov	esi, OFFSET FLAT:label_366
	jmp	.label_367
.label_364:
	mov	esi, OFFSET FLAT:label_368
	jmp	.label_367
.label_411:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_371
	jmp	.label_367
.label_412:
	mov	esi, OFFSET FLAT:label_375
.label_367:
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
.label_365:
	mov	eax, dword ptr [rsp + 4]
	xor	edi, edi
	test	al, 4
	jne	.label_408
	mov	esi, OFFSET FLAT:label_388
	jmp	.label_367
.label_408:
	mov	esi, OFFSET FLAT:label_389
	jmp	.label_367
	.section	.text
	.align	32
	#Procedure 0x405464
	.globl sub_405464
	.type sub_405464, @function
sub_405464:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405470

	.globl valid_suffix
	.type valid_suffix, @function
valid_suffix:
	push	rax
	mov	eax, edi
	mov	edi, OFFSET FLAT:label_416
	mov	edx, 9
	mov	esi, eax
	call	memchr
	xor	ecx, ecx
	test	rax, rax
	setne	cl
	mov	eax, ecx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405490

	.globl parse_format_string
	.type parse_format_string, @function
parse_format_string:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdi
	mov	qword ptr [rsp + 8], 0
	xor	r14d, r14d
	xor	ebx, ebx
	jmp	.label_424
	.section	.text
	.align	32
	#Procedure 0x4054b1
	.globl sub_4054b1
	.type sub_4054b1, @function
sub_4054b1:

	nop	word ptr cs:[rax + rax]
.label_446:
	inc	r14
	xor	ecx, ecx
	cmp	al, 0x25
	sete	cl
	lea	rbx, [rcx + rbx + 1]
.label_424:
	movzx	eax, byte ptr [r12 + rbx]
	cmp	al, 0x25
	jne	.label_439
	cmp	byte ptr [r12 + rbx + 1], 0x25
	jne	.label_442
	movzx	eax, byte ptr [r12 + rbx]
.label_439:
	test	al, al
	jne	.label_446
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_448
.label_422:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r12
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_442:
	inc	rbx
	xor	ebp, ebp
	jmp	.label_426
.label_436:
	mov	byte ptr [byte ptr [rip + grouping]],  1
	inc	rbx
.label_426:
	lea	rdi, [r12 + rbx]
	mov	esi, 0x20
	call	__strspn_c1
	add	rbx, rax
	movzx	ecx, byte ptr [r12 + rbx]
	cmp	cl, 0x27
	je	.label_436
	cmp	cl, 0x30
	je	.label_437
	test	rax, rax
	jne	.label_426
	jmp	.label_444
.label_437:
	inc	rbx
	mov	bpl, 1
	jmp	.label_426
.label_444:
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	add	rbx, r12
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, rbx
	call	strtol
	mov	r13, rax
	cmp	dword ptr [r15], 0x22
	je	.label_453
	test	r13, r13
	je	.label_423
	cmp	qword ptr [rsp + 8], rbx
	je	.label_423
	cmp	byte ptr [byte ptr [rip + debug]],  1
	jne	.label_425
	mov	rax,  qword ptr [word ptr [rip + padding_width]]
	test	rax, rax
	je	.label_425
	test	bpl, bpl
	je	.label_433
	test	r13, r13
	jg	.label_425
.label_433:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_435
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_425:
	test	r13, r13
	js	.label_441
	test	bpl, bpl
	je	.label_445
	mov	qword ptr [word ptr [rip + zero_padding_width]],  r13
	jmp	.label_423
.label_441:
	mov	byte ptr [byte ptr [rip + padding_alignment]],  1
	neg	r13
.label_445:
	mov	qword ptr [word ptr [rip + padding_width]],  r13
.label_423:
	mov	rbx, qword ptr [rsp + 8]
	mov	al, byte ptr [rbx]
	sub	rbx, r12
	cmp	al, 0x2e
	je	.label_452
	test	al, al
	jne	.label_419
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_421
	jmp	.label_422
.label_452:
	mov	dword ptr [r15], 0
	lea	rbx, [r12 + rbx + 1]
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, rbx
	call	strtol
	mov	qword ptr [word ptr [rip + user_precision]],  rax
	test	rax, rax
	js	.label_428
	cmp	dword ptr [r15], 0x22
	je	.label_428
	movsx	rbx, byte ptr [rbx]
	call	__ctype_b_loc
	cmp	rbx, 0x2b
	je	.label_428
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 1
	test	ax, ax
	jne	.label_428
	mov	rbx, qword ptr [rsp + 8]
	sub	rbx, r12
.label_419:
	cmp	byte ptr [r12 + rbx], 0x66
	jne	.label_454
	inc	rbx
	mov	rax, rbx
	jmp	.label_420
	.section	.text
	.align	32
	#Procedure 0x405692
	.globl sub_405692
	.type sub_405692, @function
sub_405692:

	nop	word ptr cs:[rax + rax]
.label_417:
	xor	ecx, ecx
	cmp	byte ptr [r12 + rax], 0x25
	sete	cl
	lea	rax, [rcx + rax + 1]
.label_420:
	movzx	ecx, byte ptr [r12 + rax]
	cmp	cl, 0x25
	je	.label_434
	test	cl, cl
	jne	.label_417
	jmp	.label_450
	.section	.text
	.align	32
	#Procedure 0x4056bf
	.globl sub_4056bf
	.type sub_4056bf, @function
sub_4056bf:

	nop	
.label_434:
	cmp	byte ptr [r12 + rax + 1], 0x25
	je	.label_417
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_438
	jmp	.label_422
.label_450:
	test	r14, r14
	je	.label_440
	mov	rdi, r12
	mov	rsi, r14
	call	xstrndup
	mov	qword ptr [word ptr [rip + format_str_prefix]],  rax
.label_440:
	cmp	byte ptr [r12 + rbx], 0
	je	.label_449
	add	rbx, r12
	mov	rdi, rbx
	call	xstrdup
	mov	qword ptr [word ptr [rip + format_str_suffix]],  rax
.label_449:
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_418
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp + 0x10], rax
	xor	edi, edi
	mov	rsi, r12
	call	quote_n
	mov	r15, rax
	mov	al,  byte ptr [byte ptr [rip + grouping]]
	mov	ecx, OFFSET FLAT:label_429
	mov	r13d, OFFSET FLAT:label_430
	test	al, al
	cmovne	r13, rcx
	mov	r12,  qword ptr [word ptr [rip + padding_width]]
	mov	al,  byte ptr [byte ptr [rip + padding_alignment]]
	mov	ecx, OFFSET FLAT:label_431
	mov	r14d, OFFSET FLAT:label_432
	test	al, al
	cmovne	r14, rcx
	mov	rsi,  qword ptr [word ptr [rip + format_str_prefix]]
	test	rsi, rsi
	mov	ebx, OFFSET FLAT:label_66
	cmove	rsi, rbx
	mov	edi, 1
	call	quote_n
	mov	rbp, rax
	mov	rax,  qword ptr [word ptr [rip + format_str_suffix]]
	test	rax, rax
	cmovne	rbx, rax
	mov	edi, 2
	mov	rsi, rbx
	call	quote_n
	mov	rbx, rax
	sub	rsp, 8
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_427
	mov	eax, 0
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, r15
	mov	r8, r13
	mov	r9, r12
	push	rbx
	push	rbp
	push	r14
	call	__fprintf_chk
	add	rsp, 0x20
.label_418:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_453:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_443
	jmp	.label_422
.label_428:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_447
	jmp	.label_422
.label_454:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_451
	jmp	.label_422
	.section	.text
	.align	32
	#Procedure 0x4057fe
	.globl sub_4057fe
	.type sub_4057fe, @function
sub_4057fe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405800
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_455
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_455
.label_456:
	ret	
.label_455:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_456
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x405826
	.globl sub_405826
	.type sub_405826, @function
sub_405826:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405830
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_457
.label_458:
	ret	
.label_457:
	cmp	edi, 0x7f
	je	.label_458
	xor	eax, eax
	jmp	.label_458
	.section	.text
	.align	32
	#Procedure 0x405841
	.globl sub_405841
	.type sub_405841, @function
sub_405841:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405850
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	32
	#Procedure 0x40585a
	.globl sub_40585a
	.type sub_40585a, @function
sub_40585a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405860

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
	je	.label_459
	mov	qword ptr [rax], rbx
.label_459:
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
	#Procedure 0x40594c
	.globl sub_40594c
	.type sub_40594c, @function
sub_40594c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405950
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40595a
	.globl sub_40595a
	.type sub_40595a, @function
sub_40595a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405960

	.globl wc_truncate
	.type wc_truncate, @function
wc_truncate:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	mov	edi, dword ptr [rbx]
	xor	eax, eax
	test	edi, edi
	je	.label_460
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_462:
	call	wcwidth
	cmp	eax, -1
	jne	.label_461
	mov	dword ptr [rbx], 0xfffd
	mov	eax, 1
.label_461:
	cdqe	
	add	rax, r15
	cmp	rax, r14
	ja	.label_463
	mov	edi, dword ptr [rbx + 4]
	add	rbx, 4
	test	edi, edi
	mov	r15, rax
	jne	.label_462
	jmp	.label_460
.label_463:
	mov	rax, r15
.label_460:
	mov	dword ptr [rbx], 0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4059be
	.globl sub_4059be
	.type sub_4059be, @function
sub_4059be:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4059c0
	.globl reset_fields
	.type reset_fields, @function
reset_fields:

	push	rax
	mov	qword ptr [word ptr [rip + n_frp]],  0
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  0
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	call	free
	mov	qword ptr [word ptr [rip + frp]],  0
	pop	rax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4059f0

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
.label_499:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_501
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_509]]
.label_795:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_513
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_518
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_796:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_526
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_526
	xor	r14d, r14d
.label_540:
	cmp	r14, r11
	jae	.label_535
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_535:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_540
.label_526:
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
	jmp	.label_544
.label_788:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_544
.label_791:
	mov	al, 1
.label_789:
	mov	r12b, 1
.label_792:
	test	r12b, 1
	mov	cl, 1
	je	.label_556
	mov	ecx, eax
.label_556:
	mov	al, cl
.label_790:
	test	r12b, 1
	jne	.label_559
	test	r11, r11
	je	.label_561
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_561:
	mov	r14d, 1
	jmp	.label_567
.label_559:
	xor	r14d, r14d
.label_567:
	mov	ecx, OFFSET FLAT:label_518
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_544
.label_793:
	test	r12b, 1
	jne	.label_573
	test	r11, r11
	je	.label_494
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_494:
	mov	r14d, 1
	jmp	.label_551
.label_794:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_468
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_544
.label_573:
	xor	r14d, r14d
.label_551:
	mov	eax, OFFSET FLAT:label_468
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_544:
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
	jmp	.label_479
	.section	.text
	.align	32
	#Procedure 0x405ccc
	.globl sub_405ccc
	.type sub_405ccc, @function
sub_405ccc:

	nop	dword ptr [rax]
.label_524:
	inc	rsi
.label_479:
	cmp	rbp, -1
	je	.label_517
	cmp	rsi, rbp
	jne	.label_534
	jmp	.label_523
	.section	.text
	.align	32
	#Procedure 0x405ce3
	.globl sub_405ce3
	.type sub_405ce3, @function
sub_405ce3:

	nop	word ptr cs:[rax + rax]
.label_517:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_523
.label_534:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_529
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_531
	cmp	rbp, -1
	jne	.label_531
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
.label_531:
	cmp	rbx, rbp
	jbe	.label_542
.label_529:
	xor	r8d, r8d
.label_563:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_545
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_549]]
.label_815:
	test	rsi, rsi
	jne	.label_538
	jmp	.label_467
	.section	.text
	.align	32
	#Procedure 0x405d7e
	.globl sub_405d7e
	.type sub_405d7e, @function
sub_405d7e:

	nop	
.label_542:
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
	jne	.label_565
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_563
	jmp	.label_478
.label_565:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_563
.label_819:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_578
	test	rsi, rsi
	jne	.label_464
	cmp	rbp, 1
	je	.label_467
	xor	r13d, r13d
	jmp	.label_470
.label_808:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_473
	cmp	byte ptr [rsp + 7], 0
	jne	.label_474
	cmp	r12d, 2
	jne	.label_476
	mov	eax, r9d
	and	al, 1
	jne	.label_476
	cmp	r14, r11
	jae	.label_481
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_481:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_486
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_486:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_492
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_492:
	add	r14, 3
	mov	r9b, 1
.label_476:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_498
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_498:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_505
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_505
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_505
	cmp	r14, r11
	jae	.label_514
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_514:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_548
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_548:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_470
.label_809:
	mov	bl, 0x62
	jmp	.label_525
.label_810:
	mov	cl, 0x74
	jmp	.label_528
.label_811:
	mov	bl, 0x76
	jmp	.label_525
.label_812:
	mov	bl, 0x66
	jmp	.label_525
.label_813:
	mov	cl, 0x72
	jmp	.label_528
.label_816:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_533
	cmp	byte ptr [rsp + 7], 0
	jne	.label_474
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
	jae	.label_541
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_541:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_550
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_550:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_553
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_553:
	add	r14, 3
	xor	r9d, r9d
.label_533:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_470
.label_817:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_562
	cmp	r12d, 2
	jne	.label_538
	cmp	byte ptr [rsp + 7], 0
	je	.label_538
	jmp	.label_474
.label_818:
	cmp	r12d, 2
	jne	.label_571
	cmp	byte ptr [rsp + 7], 0
	jne	.label_474
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_504
.label_545:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_469
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
.label_485:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_475
	test	r8b, r8b
	je	.label_475
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_470
.label_578:
	test	rsi, rsi
	jne	.label_500
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_500
.label_467:
	mov	dl, 1
.label_814:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_474
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_470:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_510
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_511
	jmp	.label_515
	.section	.text
	.align	32
	#Procedure 0x4060c4
	.globl sub_4060c4
	.type sub_4060c4, @function
sub_4060c4:

	nop	word ptr cs:[rax + rax]
.label_510:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_515
.label_511:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_519
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_504
	jmp	.label_490
	.section	.text
	.align	32
	#Procedure 0x40610d
	.globl sub_40610d
	.type sub_40610d, @function
sub_40610d:

	nop	dword ptr [rax]
.label_515:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_490
	jmp	.label_504
.label_519:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_490
.label_473:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_524
	xor	r15d, r15d
	jmp	.label_538
.label_571:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_528
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_504
.label_528:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_474
.label_525:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_470
	nop	word ptr cs:[rax + rax]
.label_490:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_474
	cmp	r12d, 2
	jne	.label_557
	mov	eax, r9d
	and	al, 1
	jne	.label_557
	cmp	r14, r11
	jae	.label_560
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_560:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_577
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_577:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_569
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_569:
	add	r14, 3
	mov	r9b, 1
.label_557:
	cmp	r14, r11
	jae	.label_572
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_572:
	inc	r14
	jmp	.label_543
.label_469:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_576
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_576:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_489:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_483
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_488
	cmp	rbp, -2
	je	.label_503
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_496
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_484:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_480
	bt	rsi, rdx
	jb	.label_478
.label_480:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_484
.label_496:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_521
	xor	r13d, r13d
.label_521:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_489
	jmp	.label_485
.label_505:
	xor	r13d, r13d
	jmp	.label_470
.label_500:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_470
.label_562:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_538
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_538
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_538
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_574
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_477
	cmp	byte ptr [rsp + 7], 0
	jne	.label_474
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_537
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_537:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_502
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_502:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_566
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_566:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_568
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_568:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_470
.label_538:
	xor	eax, eax
.label_464:
	xor	r13d, r13d
	jmp	.label_470
.label_475:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_575
	.section	.text
	.align	32
	#Procedure 0x4063f3
	.globl sub_4063f3
	.type sub_4063f3, @function
sub_4063f3:

	nop	word ptr cs:[rax + rax]
.label_539:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_575:
	test	r8b, r8b
	je	.label_465
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_466
	cmp	r14, r11
	jae	.label_471
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_471:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_466
	.section	.text
	.align	32
	#Procedure 0x40643c
	.globl sub_40643c
	.type sub_40643c, @function
sub_40643c:

	nop	dword ptr [rax]
.label_465:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_478
	cmp	r12d, 2
	jne	.label_482
	mov	eax, r9d
	and	al, 1
	jne	.label_482
	cmp	r14, r11
	jae	.label_487
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_487:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_491
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_491:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_497
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_497:
	add	r14, 3
	mov	r9b, 1
.label_482:
	cmp	r14, r11
	jae	.label_552
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_552:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_507
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_507:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_512
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_512:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_466:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_504
	test	r9b, 1
	je	.label_527
	mov	ebx, eax
	and	bl, 1
	jne	.label_527
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_530
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_530:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_532
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_532:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_527:
	cmp	r14, r11
	jae	.label_539
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_539
	.section	.text
	.align	32
	#Procedure 0x406543
	.globl sub_406543
	.type sub_406543, @function
sub_406543:

	nop	word ptr cs:[rax + rax]
.label_504:
	test	r9b, 1
	je	.label_546
	and	al, 1
	jne	.label_546
	cmp	r14, r11
	jae	.label_547
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_547:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_554
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_554:
	add	r14, 2
	xor	r9d, r9d
.label_546:
	mov	ebx, r15d
.label_543:
	cmp	r14, r11
	jae	.label_555
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_555:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_524
.label_488:
	xor	r13d, r13d
.label_483:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_485
.label_503:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_570
	mov	rsi, qword ptr [rsp + 0x50]
.label_536:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_522
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_536
	xor	r13d, r13d
	jmp	.label_485
.label_570:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_485
.label_522:
	xor	r13d, r13d
	jmp	.label_485
.label_574:
	xor	r13d, r13d
	jmp	.label_470
.label_477:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_470
	.section	.text
	.align	32
	#Procedure 0x406618
	.globl sub_406618
	.type sub_406618, @function
sub_406618:

	nop	dword ptr [rax + rax]
.label_523:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_472
	or	dl, al
	je	.label_478
.label_472:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_493
	or	dl, al
	jne	.label_493
	test	r10b, 1
	jne	.label_495
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_493
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_499
.label_493:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_506
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_508
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_508
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_520:
	cmp	r14, r11
	jae	.label_516
	mov	byte ptr [rcx + r14], al
.label_516:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_520
	jmp	.label_508
.label_474:
	mov	qword ptr [rsp + 0x20], rbp
.label_478:
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
.label_558:
	mov	r14, rax
.label_564:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_495:
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
	jmp	.label_558
.label_506:
	mov	rcx, qword ptr [rsp + 8]
.label_508:
	cmp	r14, r11
	jae	.label_564
	mov	byte ptr [rcx + r14], 0
	jmp	.label_564
.label_501:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4067ac
	.globl sub_4067ac
	.type sub_4067ac, @function
sub_4067ac:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4067b0

	.globl setup_padding_buffer
	.type setup_padding_buffer, @function
setup_padding_buffer:
	mov	rax, rdi
	cmp	qword ptr [word ptr [rip + padding_buffer_size]],  rax
	ja	.label_579
	push	rax
	inc	rax
	mov	qword ptr [word ptr [rip + padding_buffer_size]],  rax
	mov	rdi,  qword ptr [word ptr [rip + padding_buffer]]
	mov	rsi, rax
	call	xrealloc
	mov	qword ptr [word ptr [rip + padding_buffer]],  rax
	add	rsp, 8
.label_579:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4067e2
	.globl sub_4067e2
	.type sub_4067e2, @function
sub_4067e2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4067f0

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
	jne	.label_586
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
	je	.label_580
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_584
	mov	eax, OFFSET FLAT:label_585
	jmp	.label_583
.label_580:
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
	je	.label_587
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_581
	mov	eax, OFFSET FLAT:label_582
	jmp	.label_583
.label_587:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_468
	mov	eax, OFFSET FLAT:label_518
.label_583:
	cmove	rax, rcx
.label_586:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4068ad
	.globl sub_4068ad
	.type sub_4068ad, @function
sub_4068ad:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4068b0

	.globl absld
	.type absld, @function
absld:
	fld	xword ptr [rsp + 8]
	fldz	
	fucomip	st(1)
	fld	st(0)
	fchs	
	fxch	st(1)
	fcmovnbe	st(0), st(1)
	fstp	st(1)
	ret	
	.section	.text
	.align	32
	#Procedure 0x4068c3
	.globl sub_4068c3
	.type sub_4068c3, @function
sub_4068c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4068d0

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r13, rsi
	mov	r15, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_592
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [r15]
	test	rbx, rbx
	je	.label_590
	xor	r12d, r12d
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_594:
	test	rbp, rbp
	je	.label_588
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_593
.label_588:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_591
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_595
	.section	.text
	.align	32
	#Procedure 0x406963
	.globl sub_406963
	.type sub_406963, @function
sub_406963:

	nop	word ptr cs:[rax + rax]
.label_593:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_589
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_595:
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	jne	.label_594
.label_590:
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	putc_unlocked
	.section	.text
	.align	32
	#Procedure 0x4069ce
	.globl sub_4069ce
	.type sub_4069ce, @function
sub_4069ce:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4069d0

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
	je	.label_597
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_596
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_596
.label_597:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_596
	test	cl, cl
	jne	.label_596
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_596:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a36
	.globl sub_406a36
	.type sub_406a36, @function
sub_406a36:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a40

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
	mov	rcx,  qword ptr [word ptr [rip + label_598]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_599]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_600]]
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
	#Procedure 0x406aad
	.globl sub_406aad
	.type sub_406aad, @function
sub_406aad:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406ab0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x406abd
	.globl sub_406abd
	.type sub_406abd, @function
sub_406abd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406ac0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	32
	#Procedure 0x406ac7
	.globl sub_406ac7
	.type sub_406ac7, @function
sub_406ac7:

	nop	word ptr [rax + rax]
.label_601:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406ad5
	.globl sub_406ad5
	.type sub_406ad5, @function
sub_406ad5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ae3

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
	je	.label_601
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
	.section	.text
	.align	32
	#Procedure 0x406b30
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
	#Procedure 0x406b57
	.globl sub_406b57
	.type sub_406b57, @function
sub_406b57:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b60
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x406b6a
	.globl sub_406b6a
	.type sub_406b6a, @function
sub_406b6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b70

	.globl add_range_pair
	.type add_range_pair, @function
add_range_pair:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax,  qword ptr [word ptr [rip + n_frp]]
	cmp	rax,  qword ptr [word ptr [rip + n_frp_allocated]]
	jne	.label_602
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	mov	esi, OFFSET FLAT:n_frp_allocated
	mov	edx, 0x10
	call	x2nrealloc
	mov	qword ptr [word ptr [rip + frp]],  rax
.label_602:
	mov	rax,  qword ptr [word ptr [rip + n_frp]]
	mov	rcx,  qword ptr [word ptr [rip + frp]]
	shl	rax, 4
	mov	qword ptr [rcx + rax], rbx
	mov	rax,  qword ptr [word ptr [rip + n_frp]]
	mov	rcx,  qword ptr [word ptr [rip + frp]]
	mov	rdx, rax
	shl	rdx, 4
	mov	qword ptr [rcx + rdx + 8], r14
	inc	rax
	mov	qword ptr [word ptr [rip + n_frp]],  rax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x406be9
	.globl sub_406be9
	.type sub_406be9, @function
sub_406be9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406bf0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	32
	#Procedure 0x406bfa
	.globl sub_406bfa
	.type sub_406bfa, @function
sub_406bfa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c00

	.globl simple_round_floor
	.type simple_round_floor, @function
simple_round_floor:
	sub	rsp, 0x18
	fld	xword ptr [rsp + 0x20]
	fchs	
	fstp	xword ptr [rsp]
	call	simple_round_ceiling
	neg	rax
	add	rsp, 0x18
	ret	
	.section	.text
	.align	32
	#Procedure 0x406c1a
	.globl sub_406c1a
	.type sub_406c1a, @function
sub_406c1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c20

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_603
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, rax
	call	argmatch_invalid
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	argmatch_valid
	call	r14
	mov	rax, -1
.label_603:
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
	#Procedure 0x406c88
	.globl sub_406c88
	.type sub_406c88, @function
sub_406c88:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c90

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
	je	.label_604
	cmp	r15, -2
	jb	.label_604
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_604
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_604:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x406ce6
	.globl sub_406ce6
	.type sub_406ce6, @function
sub_406ce6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406cf0

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
	#Procedure 0x406d07
	.globl sub_406d07
	.type sub_406d07, @function
sub_406d07:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d10

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x406d1a
	.globl sub_406d1a
	.type sub_406d1a, @function
sub_406d1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d20

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_605
	ret	
.label_605:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	32
	#Procedure 0x406d33
	.globl sub_406d33
	.type sub_406d33, @function
sub_406d33:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d40

	.globl compare_ranges
	.type compare_ranges, @function
compare_ranges:
	mov	eax, dword ptr [rdi]
	xor	ecx, ecx
	cmp	eax, dword ptr [rsi]
	setg	cl
	mov	eax, 0xffffffff
	cmovge	eax, ecx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406d52
	.globl sub_406d52
	.type sub_406d52, @function
sub_406d52:

	nop	word ptr cs:[rax + rax]
.label_606:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x406d63
	.globl sub_406d63
	.type sub_406d63, @function
sub_406d63:

	nop	
	.section	.text
	.align	32
	#Procedure 0x406d65
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_606
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x406d80

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, r8
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r14d, 0x25
	jae	.label_607
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_622:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_622
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_615
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoumax
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_609
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_613
	cmp	eax, 0x22
	jne	.label_615
	mov	r12d, 1
.label_613:
	test	rbp, rbp
	jne	.label_617
	jmp	.label_621
.label_609:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_615
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_615
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_615
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_617:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_621
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_611
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_612
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_612
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_620
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_623
	cmp	ecx, 0x44
	je	.label_623
	cmp	ecx, 0x69
	jne	.label_620
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_620
.label_623:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_620
.label_612:
	mov	rsi, r14
.label_620:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_611
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_614]]
.label_709:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_608
.label_611:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_616
.label_710:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_608
.label_711:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_608
.label_713:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_608
.label_707:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale_0
	jmp	.label_610
.label_708:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_608
.label_712:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_608
.label_714:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_608
.label_715:
	lea	rdi, [rsp]
	mov	edx, 7
.label_608:
	mov	esi, r15d
	call	bkm_scale_by_power_0
.label_610:
	mov	rsi, r14
.label_717:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_621:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_616:
	mov	r15d, r12d
.label_615:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_716:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale_0
	jmp	.label_610
.label_718:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale_0
	jmp	.label_610
.label_607:
	mov	edi, OFFSET FLAT:label_47
	mov	esi, OFFSET FLAT:label_618
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_619
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x407022
	.globl sub_407022
	.type sub_407022, @function
sub_407022:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407030

	.globl simple_round_nearest
	.type simple_round_nearest, @function
simple_round_nearest:
	fld	xword ptr [rsp + 8]
	fldz	
	xor	eax, eax
	fucomip	st(1)
	seta	al
	shl	rax, 4
	fld	xword ptr [word ptr [rax + label_624]]
	faddp	st(1)
	fnstcw	word ptr [rsp - 0xa]
	movzx	eax, word ptr [rsp - 0xa]
	mov	word ptr [rsp - 0xa], 0xc7f
	fldcw	word ptr [rsp - 0xa]
	mov	word ptr [rsp - 0xa], ax
	fistp	qword ptr [rsp - 8]
	fldcw	word ptr [rsp - 0xa]
	mov	rax, qword ptr [rsp - 8]
	ret	
	.section	.text
	.align	32
	#Procedure 0x407070
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
	#Procedure 0x40707f
	.globl sub_40707f
	.type sub_40707f, @function
sub_40707f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x407080
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
	#Procedure 0x407099
	.globl sub_407099
	.type sub_407099, @function
sub_407099:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4070a0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_625
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_626
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4070d0
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
	#Procedure 0x407119
	.globl sub_407119
	.type sub_407119, @function
sub_407119:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407120

	.globl xstrndup
	.type xstrndup, @function
xstrndup:
	push	rax
	call	__strndup
	test	rax, rax
	je	.label_627
	pop	rcx
	ret	
.label_627:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x407132
	.globl sub_407132
	.type sub_407132, @function
sub_407132:

	nop	word ptr cs:[rax + rax]
.label_630:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_629
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_632:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_628
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_630
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_626
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x4071b9

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_631
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_632
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_632
.label_631:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_633
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_633:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x407200

	.globl unit_to_umax
	.type unit_to_umax, @function
unit_to_umax:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rdi
	call	strlen
	mov	rbx, rax
	mov	qword ptr [rsp + 8], 0
	mov	r8d, OFFSET FLAT:label_416
	xor	r15d, r15d
	test	rbx, rbx
	mov	rdi, r14
	je	.label_637
	movsx	edi, byte ptr [r14 + rbx - 1]
	call	c_isdigit
	mov	r8d, OFFSET FLAT:label_416
	xor	r15d, r15d
	test	al, al
	mov	rdi, r14
	jne	.label_637
	lea	rdi, [rbx + 2]
	call	xmalloc
	mov	r15, rax
	lea	r12, [r15 + rbx - 1]
	mov	qword ptr [rsp + 8], r12
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	cmp	rbx, 2
	jb	.label_640
	cmp	byte ptr [r15 + rbx - 1], 0x69
	jne	.label_640
	movsx	edi, byte ptr [r12 - 1]
	call	c_isdigit
	test	al, al
	je	.label_634
.label_640:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 8], rcx
	mov	byte ptr [rax + 1], 0x42
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 8], rcx
	mov	byte ptr [rax + 1], 0
	mov	r8d, OFFSET FLAT:label_635
	jmp	.label_636
.label_634:
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0
	mov	r8d, OFFSET FLAT:label_416
.label_636:
	mov	rdi, r15
.label_637:
	lea	rsi, [rsp + 8]
	lea	rcx, [rsp + 0x10]
	mov	edx, 0xa
	call	xstrtoumax
	test	eax, eax
	jne	.label_639
	mov	rax, qword ptr [rsp + 8]
	cmp	byte ptr [rax], 0
	jne	.label_639
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_639
	mov	rdi, r15
	call	free
	mov	rax, qword ptr [rsp + 0x10]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_639:
	mov	rdi, r15
	call	free
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_638
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407350

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rcx
	mov	r14, rdx
	mov	rbp, rsi
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_644
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r14
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_641:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_642
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_646
	cmp	qword ptr [rsp + 8], -1
	je	.label_647
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_643
	mov	rdi, qword ptr [rsp + 8]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_642
.label_643:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_642
.label_647:
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr [rax + rax]
.label_642:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_641
	jmp	.label_645
.label_644:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_645:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 8]
.label_646:
	mov	rax, rbp
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
	#Procedure 0x40744d
	.globl sub_40744d
	.type sub_40744d, @function
sub_40744d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407450

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x407453
	.globl sub_407453
	.type sub_407453, @function
sub_407453:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407460

	.globl bkm_scale_0
	.type bkm_scale_0, @function
bkm_scale_0:
	movsxd	rcx, esi
	mov	rsi, -1
	mov	rax, -1
	xor	edx, edx
	div	rcx
	mov	rdx, qword ptr [rdi]
	imul	rcx, rdx
	cmp	rax, rdx
	cmovb	rcx, rsi
	sbb	eax, eax
	and	eax, 1
	mov	qword ptr [rdi], rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40748d
	.globl sub_40748d
	.type sub_40748d, @function
sub_40748d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407490

	.globl simple_strtod_float
	.type simple_strtod_float, @function
simple_strtod_float:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x40
	mov	r14, rcx
	mov	r15, rdx
	mov	rbx, rsi
	test	r14, r14
	je	.label_655
	mov	qword ptr [r14], 0
.label_655:
	lea	rcx, [rsp + 0x17]
	mov	rsi, rbx
	mov	rdx, r15
	call	simple_strtod_int
	mov	ebp, eax
	cmp	ebp, 1
	ja	.label_649
	mov	rdi, qword ptr [rbx]
	mov	rsi,  qword ptr [word ptr [rip + decimal_point]]
	movsxd	rdx,  dword ptr [dword ptr [rip + decimal_point_length]]
	call	strncmp
	test	eax, eax
	jne	.label_649
	fldz	
	fstp	xword ptr [rsp + 0x20]
	movsxd	rdi,  dword ptr [dword ptr [rip + decimal_point_length]]
	add	rdi, qword ptr [rbx]
	mov	qword ptr [rbx], rdi
	lea	rsi, [rsp + 0x18]
	lea	rdx, [rsp + 0x20]
	lea	rcx, [rsp + 0x16]
	call	simple_strtod_int
	cmp	eax, 1
	ja	.label_651
	cmove	ebp, eax
	mov	eax, 3
	cmp	byte ptr [rsp + 0x16], 0
	je	.label_653
.label_651:
	mov	ebp, eax
.label_649:
	mov	eax, ebp
	add	rsp, 0x40
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_653:
	mov	r12, qword ptr [rsp + 0x18]
	sub	r12, qword ptr [rbx]
	fld	xword ptr [rsp + 0x20]
	fstp	xword ptr [rsp + 0x34]
	fld	dword ptr [dword ptr [rip + label_184]]
	fstp	xword ptr [rsp]
	mov	edi, r12d
	call	powerld
	fld	xword ptr [rsp + 0x34]
	fdivrp	st(1)
	fld	st(0)
	fstp	xword ptr [rsp + 0x20]
	test	r15, r15
	je	.label_654
	cmp	byte ptr [rsp + 0x17], 0
	fld	xword ptr [r15]
	je	.label_648
	fsubrp	st(1)
	jmp	.label_652
.label_648:
	faddp	st(1)
.label_652:
	fstp	xword ptr [r15]
	fldz	
.label_654:
	fstp	st(0)
	test	r14, r14
	je	.label_650
	mov	qword ptr [r14], r12
.label_650:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx], rax
	jmp	.label_649
	.section	.text
	.align	32
	#Procedure 0x407589
	.globl sub_407589
	.type sub_407589, @function
sub_407589:

	nop	dword ptr [rax]
.label_658:
	cmp	rdi, 1
	sete	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x407598
	.globl sub_407598
	.type sub_407598, @function
sub_407598:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4075a3

	.globl include_field
	.type include_field, @function
include_field:
	mov	rcx,  qword ptr [word ptr [rip + frp]]
	test	rcx, rcx
	je	.label_658
	mov	rax, qword ptr [rcx]
	cmp	rax, -1
	je	.label_659
	add	rcx, 0x10
	nop	dword ptr [rax]
.label_656:
	cmp	rax, rdi
	ja	.label_660
	mov	al, 1
	cmp	qword ptr [rcx - 8], rdi
	jae	.label_657
.label_660:
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	cmp	rax, -1
	jne	.label_656
.label_659:
	xor	eax, eax
.label_657:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4075e0

	.globl simple_round_to_zero
	.type simple_round_to_zero, @function
simple_round_to_zero:
	fld	xword ptr [rsp + 8]
	fnstcw	word ptr [rsp - 0xa]
	movzx	eax, word ptr [rsp - 0xa]
	mov	word ptr [rsp - 0xa], 0xc7f
	fldcw	word ptr [rsp - 0xa]
	mov	word ptr [rsp - 0xa], ax
	fistp	qword ptr [rsp - 8]
	fldcw	word ptr [rsp - 0xa]
	mov	rax, qword ptr [rsp - 8]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40760b
	.globl sub_40760b
	.type sub_40760b, @function
sub_40760b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407610
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x407618
	.globl sub_407618
	.type sub_407618, @function
sub_407618:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407620

	.globl prepare_padded_number
	.type prepare_padded_number, @function
prepare_padded_number:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xb0
	mov	rbx, rdi
	fld	xword ptr [rsp + 0xd0]
	mov	rax,  qword ptr [word ptr [rip + user_precision]]
	cmp	rax, -1
	cmovne	rbx, rax
	fld	st(0)
	fstp	xword ptr [rsp + 0x18]
	fstp	xword ptr [rsp]
	lea	rsi, [rsp + 0x24]
	mov	edi, 0xa
	call	expld
	fstp	st(0)
	mov	eax, dword ptr [rsp + 0x24]
	cmp	dword ptr [dword ptr [rip + scale_to]],  0
	jne	.label_670
	lea	rcx, [rax + rbx]
	cmp	rcx, 0x13
	jb	.label_670
	xor	r14d, r14d
	cmp	dword ptr [dword ptr [rip + inval_style]],  3
	je	.label_664
	mov	al,  byte ptr [byte ptr [rip + conv_exit_code]]
	xor	ebp, ebp
	test	al, al
	sete	bpl
	add	ebp, ebp
	xor	r14d, r14d
	xor	edi, edi
	test	rbx, rbx
	je	.label_662
	mov	esi, OFFSET FLAT:label_671
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	fld	xword ptr [rsp + 0x18]
	fstp	xword ptr [rsp]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebp
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
	jmp	.label_664
.label_670:
	cmp	eax, 0x1b
	jb	.label_668
	xor	r14d, r14d
	cmp	dword ptr [dword ptr [rip + inval_style]],  3
	je	.label_664
	mov	al,  byte ptr [byte ptr [rip + conv_exit_code]]
	xor	ebx, ebx
	test	al, al
	sete	bl
	add	ebx, ebx
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_666
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	fld	xword ptr [rsp + 0x18]
	fstp	xword ptr [rsp]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
.label_663:
	mov	rdx, rcx
	call	error
	jmp	.label_664
.label_668:
	mov	edx,  dword ptr [dword ptr [rip + scale_to]]
	movzx	ecx,  byte ptr [byte ptr [rip + grouping]]
	mov	r8d,  dword ptr [dword ptr [rip + round_style]]
	fld	xword ptr [rsp + 0x18]
	fstp	xword ptr [rsp]
	lea	rsi, [rsp + 0x30]
	mov	edi, ebx
	call	double_to_human
	mov	rbx,  qword ptr [word ptr [rip + suffix]]
	test	rbx, rbx
	je	.label_665
	lea	rbp, [rsp + 0x30]
	mov	rdi, rbp
	call	strlen
	mov	edx, 0x7f
	sub	rdx, rax
	mov	ecx, 0x80
	mov	rdi, rbp
	mov	rsi, rbx
	call	__strncat_chk
.label_665:
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_674
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	lea	rdi, [rsp + 0x30]
	call	quote
	mov	rcx, rax
	fld	xword ptr [rsp + 0x18]
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_669
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_674:
	mov	rbx,  qword ptr [word ptr [rip + padding_width]]
	test	rbx, rbx
	je	.label_667
	lea	rdi, [rsp + 0x30]
	call	strlen
	cmp	rax, rbx
	jae	.label_667
	mov	rax,  qword ptr [word ptr [rip + padding_width]]
	mov	qword ptr [rsp + 0x28], rax
	mov	rsi,  qword ptr [word ptr [rip + padding_buffer]]
	mov	rdx,  qword ptr [word ptr [rip + padding_buffer_size]]
	movzx	r8d,  byte ptr [byte ptr [rip + padding_alignment]]
	xor	r8d, 1
	lea	rdi, [rsp + 0x30]
	lea	rcx, [rsp + 0x28]
	mov	r9d, 2
	call	mbsalign
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_661
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi,  qword ptr [word ptr [rip + padding_buffer]]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_672
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	jmp	.label_661
.label_667:
	lea	rbx, [rsp + 0x30]
	mov	rdi, rbx
	call	strlen
	lea	rdi, [rax + 1]
	call	setup_padding_buffer
	mov	rdi,  qword ptr [word ptr [rip + padding_buffer]]
	mov	rsi, rbx
	call	strcpy
.label_661:
	mov	r14d, 1
.label_664:
	mov	eax, r14d
	add	rsp, 0xb0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_662:
	mov	esi, OFFSET FLAT:label_673
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	fld	xword ptr [rsp + 0x18]
	fstp	xword ptr [rsp]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebp
	jmp	.label_663
	.section	.text
	.align	32
	#Procedure 0x4078a0
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
	#Procedure 0x4078af
	.globl sub_4078af
	.type sub_4078af, @function
sub_4078af:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4078b0

	.globl process_line
	.type process_line, @function
process_line:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14d, esi
	mov	qword ptr [rsp], rdi
	lea	rdi, [rsp]
	call	next_field
	mov	rcx, qword ptr [rsp]
	mov	ebp, 1
	mov	ebx, 1
	cmp	byte ptr [rcx], 0
	je	.label_675
	mov	r13b, 1
	mov	ebx, 1
	mov	r12d, 0x20
	lea	rbp, [rsp]
.label_677:
	mov	byte ptr [rcx], 0
	mov	rdi, rax
	mov	rsi, rbx
	call	process_field
	mov	r15d, eax
	test	r15b, r15b
	je	.label_678
	mov	r15d, r13d
.label_678:
	mov	edi,  dword ptr [dword ptr [rip + delimiter]]
	cmp	edi, 0x80
	cmove	edi, r12d
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputc_unlocked
	inc	qword ptr [rsp]
	inc	rbx
	mov	rdi, rbp
	call	next_field
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	mov	r13d, r15d
	jne	.label_677
	and	r15b, 1
	movzx	ebp, r15b
.label_675:
	mov	rdi, rax
	mov	rsi, rbx
	call	process_field
	mov	ebx, eax
	test	r14b, r14b
	je	.label_676
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	xor	ecx, ecx
	test	al, al
	mov	edi, 0xa
	cmovne	edi, ecx
	call	putchar_unlocked
.label_676:
	xor	eax, eax
	test	bl, bl
	cmovne	eax, ebp
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
	#Procedure 0x407987
	.globl sub_407987
	.type sub_407987, @function
sub_407987:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407990

	.globl default_scale_base
	.type default_scale_base, @function
default_scale_base:
	add	edi, -3
	cmp	edi, 2
	mov	ecx, 0x400
	mov	eax, 0x3e8
	cmovb	eax, ecx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4079a4
	.globl sub_4079a4
	.type sub_4079a4, @function
sub_4079a4:

	nop	word ptr cs:[rax + rax]
.label_680:
	test	rcx, rcx
	jne	.label_679
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_679:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_681
.label_682:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
	.section	.text
	.align	32
	#Procedure 0x4079f2

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_680
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_683
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_682
.label_681:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x407a24
	.globl sub_407a24
	.type sub_407a24, @function
sub_407a24:

	nop	dword ptr [rax]
.label_683:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x407a30

	.globl simple_round_ceiling
	.type simple_round_ceiling, @function
simple_round_ceiling:
	fld	xword ptr [rsp + 8]
	fnstcw	word ptr [rsp - 0x12]
	movzx	eax, word ptr [rsp - 0x12]
	mov	word ptr [rsp - 0x12], 0xc7f
	fldcw	word ptr [rsp - 0x12]
	mov	word ptr [rsp - 0x12], ax
	fld	st(0)
	fistp	qword ptr [rsp - 0x10]
	fldcw	word ptr [rsp - 0x12]
	mov	rcx, qword ptr [rsp - 0x10]
	mov	qword ptr [rsp - 8], rcx
	fild	qword ptr [rsp - 8]
	xor	eax, eax
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	seta	al
	add	rax, rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x407a74
	.globl sub_407a74
	.type sub_407a74, @function
sub_407a74:

	nop	word ptr cs:[rax + rax]
.label_688:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_684
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x407aa0
	.globl sub_407aa0
	.type sub_407aa0, @function
sub_407aa0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407aaf

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_688
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_686
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_689
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_686
	mov	esi, OFFSET FLAT:label_687
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_685
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_685:
	mov	rbx, r14
.label_686:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x407b30

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	.section	.text
	.align	32
	#Procedure 0x407b3a
	.globl sub_407b3a
	.type sub_407b3a, @function
sub_407b3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b40

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	32
	#Procedure 0x407b49
	.globl sub_407b49
	.type sub_407b49, @function
sub_407b49:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407b50

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
	mov	rax,  qword ptr [word ptr [rip + label_598]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_599]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_600]]
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
	#Procedure 0x407bb8
	.globl sub_407bb8
	.type sub_407bb8, @function
sub_407bb8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407bc0

	.globl process_field
	.type process_field, @function
process_field:
	push	r14
	push	rbx
	sub	rsp, 0x38
	mov	rbx, rsi
	mov	r14, rdi
	fldz	
	fstp	xword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x18], 0
	mov	rdi, rbx
	call	include_field
	test	al, al
	je	.label_691
	lea	rsi, [rsp + 0x20]
	lea	rdx, [rsp + 0x18]
	mov	rdi, r14
	mov	rcx, rbx
	call	process_suffixed_number
	test	eax, eax
	setne	al
	je	.label_694
	fld	xword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x18]
	fstp	xword ptr [rsp]
	call	prepare_padded_number
	test	eax, eax
	setne	al
.label_694:
	test	al, al
	je	.label_693
	call	print_padded_number
	jmp	.label_690
.label_691:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, r14
	call	fputs_unlocked
.label_690:
	mov	al, 1
	jmp	.label_692
.label_693:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, r14
	call	fputs_unlocked
	xor	eax, eax
.label_692:
	add	rsp, 0x38
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x407c51
	.globl sub_407c51
	.type sub_407c51, @function
sub_407c51:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407cc5
	.globl sub_407cc5
	.type sub_407cc5, @function
sub_407cc5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407cd2
	.globl sub_407cd2
	.type sub_407cd2, @function
sub_407cd2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407cf6
	.globl sub_407cf6
	.type sub_407cf6, @function
sub_407cf6:

	nop	word ptr cs:[rax + rax]
