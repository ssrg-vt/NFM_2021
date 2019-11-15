	.section	.text
	.align	32
	#Procedure 0x4019a9
	.globl sub_4019a9
	.type sub_4019a9, @function
sub_4019a9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x4019aa
	.globl sub_4019aa
	.type sub_4019aa, @function
sub_4019aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019e2
	.globl sub_4019e2
	.type sub_4019e2, @function
sub_4019e2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a2a
	.globl sub_401a2a
	.type sub_401a2a, @function
sub_401a2a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a4c
	.globl sub_401a4c
	.type sub_401a4c, @function
sub_401a4c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401a5d
	.globl sub_401a5d
	.type sub_401a5d, @function
sub_401a5d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401a76
	.globl sub_401a76
	.type sub_401a76, @function
sub_401a76:

	nop	word ptr cs:[rax + rax]
.label_12:
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
	#Procedure 0x401aa3
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
.label_11:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_12
	jmp	.label_10
.label_10:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_11
.label_25:
	jmp	.label_27
.label_27:
	mov	eax, dword ptr [rbp - 0x24]
	add	eax, 1
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_26
.label_15:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x38]
	jge	.label_13
	movabs	rsi, OFFSET FLAT:label_18
	mov	eax, 5
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	strncmp
	cmp	eax, 0
	jne	.label_13
	lea	rsi, [rbp - 0x30]
	mov	edx, 0xa
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 5
	mov	rdi, rax
	call	strtol
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	byte ptr [rax], 0
	jne	.label_17
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, dword ptr [rbp - 0x38]
	movsxd	rcx, eax
	cmp	rcx, qword ptr [rbp - 0x48]
	jg	.label_17
	cmp	qword ptr [rbp - 0x48], 0
	jg	.label_17
	movsxd	rax, dword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x48]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_14
.label_23:
	mov	dword ptr [rbp - 0x24], 0
.label_26:
	mov	eax, dword ptr [rbp - 0x24]
	mov	ecx, eax
	cmp	rcx, 0x23
	jae	.label_19
	movabs	rax, OFFSET FLAT:numname_table
	mov	ecx, dword ptr [rbp - 0x24]
	mov	edx, ecx
	imul	rdx, rdx, 0xc
	add	rax, rdx
	add	rax, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	jne	.label_25
	movabs	rax, OFFSET FLAT:numname_table
	mov	ecx, dword ptr [rbp - 0x24]
	mov	edx, ecx
	imul	rdx, rdx, 0xc
	add	rax, rdx
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_14
.label_16:
	jmp	.label_20
.label_21:
	jmp	.label_24
.label_19:
	call	__libc_current_sigrtmin
	mov	dword ptr [rbp - 0x34], eax
	call	__libc_current_sigrtmax
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x38], eax
	cmp	ecx, dword ptr [rbp - 0x34]
	jge	.label_15
	movabs	rsi, OFFSET FLAT:label_22
	mov	eax, 5
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	strncmp
	cmp	eax, 0
	jne	.label_15
	lea	rsi, [rbp - 0x30]
	mov	edx, 0xa
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 5
	mov	rdi, rax
	call	strtol
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	byte ptr [rax], 0
	jne	.label_21
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x40]
	jg	.label_21
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rbp - 0x38]
	sub	ecx, dword ptr [rbp - 0x34]
	movsxd	rdx, ecx
	cmp	rax, rdx
	jg	.label_21
	movsxd	rax, dword ptr [rbp - 0x34]
	add	rax, qword ptr [rbp - 0x40]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_14
	.section	.text
	.align	32
	#Procedure 0x401c98

	.globl str2signum
	.type str2signum, @function
str2signum:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdi]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_23
	lea	rsi, [rbp - 0x18]
	mov	edx, 0xa
	mov	rdi, qword ptr [rbp - 0x10]
	call	strtol
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_16
	cmp	qword ptr [rbp - 0x20], 0x40
	jg	.label_16
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_14
.label_17:
	jmp	.label_13
.label_13:
	jmp	.label_24
.label_24:
	jmp	.label_20
.label_20:
	mov	dword ptr [rbp - 4], 0xffffffff
.label_14:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d12
	.globl sub_401d12
	.type sub_401d12, @function
sub_401d12:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d20
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_28
	jmp	.label_30
.label_30:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_29
.label_28:
	mov	byte ptr [rbp - 1], 0
.label_29:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d52
	.globl sub_401d52
	.type sub_401d52, @function
sub_401d52:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d60
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
	#Procedure 0x401d8f
	.globl sub_401d8f
	.type sub_401d8f, @function
sub_401d8f:

	nop	
.label_40:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x4c], eax
.label_42:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], -1
	je	.label_34
	mov	eax, 0x7f
	mov	ecx, 0xff
	cmp	dword ptr [rbp - 0x1c], 0xff
	cmovge	eax, ecx
	and	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x1c], eax
.label_34:
	jmp	.label_31
.label_47:
	lea	rsi, [rbp - 0x1c]
	mov	rdi, qword ptr [rbp - 0x40]
	call	str2sig
	cmp	eax, 0
	je	.label_38
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x53
	jne	.label_37
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x49
	jne	.label_37
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x47
	jne	.label_37
	lea	rsi, [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 3
	mov	rdi, rax
	call	str2sig
	cmp	eax, 0
	je	.label_38
.label_37:
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_38:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
.label_31:
	cmp	dword ptr [rbp - 0x1c], 0
	jl	.label_36
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rsi, qword ptr [rbp - 0x18]
	call	sig2str
	cmp	eax, 0
	je	.label_32
.label_36:
	movabs	rdi, OFFSET FLAT:label_35
	call	gettext
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_33
	.section	.text
	.align	32
	#Procedure 0x401e95

	.globl operand2sig
	.type operand2sig, @function
operand2sig:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rsi]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_41
	call	__errno_location
	lea	rsi, [rbp - 0x28]
	mov	edx, 0xa
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	strtol
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, eax
	mov	dword ptr [rbp - 0x34], edx
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x28]
	je	.label_43
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_43
	call	__errno_location
	cmp	dword ptr [rax], 0
	jne	.label_43
	movsxd	rax, dword ptr [rbp - 0x34]
	cmp	rax, qword ptr [rbp - 0x30]
	je	.label_40
.label_43:
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_42
.label_41:
	mov	rdi, qword ptr [rbp - 0x10]
	call	xstrdup
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
.label_45:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	byte ptr [rax], 0
	je	.label_47
	movabs	rdi, OFFSET FLAT:label_39
	mov	rax, qword ptr [rbp - 0x48]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_44
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x20
	mov	dl, cl
	mov	byte ptr [rax], dl
.label_44:
	jmp	.label_46
.label_46:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_45
.label_32:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_33:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401f9e
	.globl sub_401f9e
	.type sub_401f9e, @function
sub_401f9e:

	nop	
.label_57:
	test	byte ptr [rbp - 0xf], 1
	jne	.label_80
	jmp	.label_63
.label_95:
	mov	al, byte ptr [rbp - 0xd]
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 0xd], al
	test	byte ptr [rbp - 0xf], 1
	je	.label_85
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, rcx
	add	rdx, 8
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rcx], rax
	mov	byte ptr [rbp - 0xf], 0
.label_85:
	jmp	.label_94
.label_94:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_52
.label_99:
	movabs	rdi, OFFSET FLAT:label_100
	movabs	rsi, OFFSET FLAT:label_101
	mov	edx, 0x18b
	movabs	rcx, OFFSET FLAT:label_102
	call	__assert_fail
.label_89:
	test	byte ptr [rbp - 0xe], 1
	jne	.label_60
	test	byte ptr [rbp - 0xd], 1
	je	.label_70
.label_60:
	jmp	.label_63
.label_98:
	movsx	eax, byte ptr [rbp - 0x39]
	cmp	eax, 0x63
	jne	.label_64
	jmp	.label_66
.label_88:
	jmp	.label_66
.label_66:
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40207c
	.globl sub_40207c
	.type sub_40207c, @function
sub_40207c:

	nop	word ptr cs:[rax + rax]
.label_63:
	jmp	.label_75
.label_75:
	test	byte ptr [rbp - 0xf], 1
	je	.label_77
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, rcx
	add	rdx, 8
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rcx], rax
	mov	byte ptr [rbp - 0xf], 0
.label_77:
	jmp	.label_87
.label_87:
	mov	al, byte ptr [rbp - 0x39]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_52
.label_79:
	jmp	.label_93
.label_93:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_96
	movabs	rsi, OFFSET FLAT:label_48
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x98], eax
.label_96:
	jmp	.label_58
.label_58:
	jmp	.label_53
.label_53:
	mov	esi, 0x7d
	mov	rdi, qword ptr [rbp - 8]
	call	strchr
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_52
.label_103:
	lea	rsi, [rbp - 0x38]
	lea	rdx, [rbp - 0x2c]
	mov	rdi, qword ptr [rbp - 8]
	call	validate_split_str
	mov	rdx, qword ptr [rbp - 0x38]
	add	rdx, 6
	add	rdx, 1
	mov	rdi, rdx
	call	xmalloc
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 0x2c]
	add	ecx, dword ptr [rbp - 0xc]
	add	ecx, 2
	movsxd	rax, ecx
	shl	rax, 3
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	ecx, OFFSET FLAT:label_104
	mov	esi, ecx
	call	strcpy
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi, rsi
	add	rdi, 8
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rsi], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, 6
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x60], rax
.label_52:
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	je	.label_88
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x39], cl
	mov	rax, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rax]
	mov	esi, edx
	sub	esi, 9
	mov	dword ptr [rbp - 0x64], edx
	mov	dword ptr [rbp - 0x68], esi
	je	.label_89
	jmp	.label_97
.label_97:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_89
	jmp	.label_49
.label_49:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x22
	mov	dword ptr [rbp - 0x70], eax
	je	.label_51
	jmp	.label_86
.label_86:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x23
	mov	dword ptr [rbp - 0x74], eax
	je	.label_57
	jmp	.label_61
.label_61:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x24
	mov	dword ptr [rbp - 0x78], eax
	je	.label_62
	jmp	.label_82
.label_82:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x27
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_65
	jmp	.label_67
.label_67:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x5c
	mov	dword ptr [rbp - 0x80], eax
	je	.label_68
	jmp	.label_63
.label_55:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x39], dl
	movsx	esi, byte ptr [rbp - 0x39]
	cmp	esi, 0x5c
	je	.label_72
	movsx	eax, byte ptr [rbp - 0x39]
	cmp	eax, 0x27
	je	.label_72
	test	byte ptr [rbp - 0xe], 1
	jne	.label_81
	movsx	eax, byte ptr [rbp - 0x39]
	cmp	eax, 0x23
	je	.label_72
	movsx	eax, byte ptr [rbp - 0x39]
	cmp	eax, 0x24
	je	.label_72
	movsx	eax, byte ptr [rbp - 0x39]
	cmp	eax, 0x22
	jne	.label_81
.label_72:
	jmp	.label_76
.label_50:
	mov	byte ptr [rbp - 0x39], 0x20
	jmp	.label_78
.label_62:
	test	byte ptr [rbp - 0xe], 1
	je	.label_74
	jmp	.label_63
.label_51:
	test	byte ptr [rbp - 0xe], 1
	je	.label_95
	jmp	.label_63
.label_81:
	movsx	eax, byte ptr [rbp - 0x39]
	cmp	eax, 0x5f
	jne	.label_98
	test	byte ptr [rbp - 0xd], 1
	jne	.label_50
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	mov	byte ptr [rbp - 0xf], 1
	jmp	.label_52
.label_54:
	mov	al, byte ptr [rbp - 0xe]
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 0xe], al
	test	byte ptr [rbp - 0xf], 1
	je	.label_59
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, rcx
	add	rdx, 8
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rcx], rax
	mov	byte ptr [rbp - 0xf], 0
.label_59:
	jmp	.label_71
.label_71:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_52
.label_74:
	mov	rdi, qword ptr [rbp - 8]
	call	extract_varname
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x48]
	call	getenv
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_79
	jmp	.label_83
.label_83:
	test	byte ptr [rbp - 0xf], 1
	je	.label_84
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, rcx
	add	rdx, 8
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rcx], rax
	mov	byte ptr [rbp - 0xf], 0
.label_84:
	jmp	.label_90
.label_90:
	jmp	.label_91
.label_91:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_92
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x88], rdi
	mov	rdi, rax
	mov	qword ptr [rbp - 0x90], rdx
	call	quote
	movabs	rsi, OFFSET FLAT:label_56
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rcx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x94], eax
.label_92:
	jmp	.label_73
.label_73:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x50]
	call	stpcpy
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_53
.label_70:
	movabs	rsi, OFFSET FLAT:label_69
	mov	byte ptr [rbp - 0xf], 1
	mov	rdi, qword ptr [rbp - 8]
	call	strspn
	add	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_52
.label_64:
	movsx	edi, byte ptr [rbp - 0x39]
	call	escape_char
	mov	byte ptr [rbp - 0x39], al
	jmp	.label_78
.label_78:
	jmp	.label_76
.label_76:
	jmp	.label_63
	.section	.text
	.align	32
	#Procedure 0x4024a1

	.globl build_argv
	.type build_argv, @function
build_argv:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	byte ptr [rbp - 0xd], 0
	mov	byte ptr [rbp - 0xe], 0
	mov	byte ptr [rbp - 0xf], 1
	mov	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x38], 0
	cmp	qword ptr [rbp - 8], 0
	je	.label_99
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_99
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0x58], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x58]
	movzx	ecx, word ptr [rax + rdx*2]
	and	ecx, 0x2000
	cmp	ecx, 0
	jne	.label_99
	jmp	.label_103
.label_68:
	test	byte ptr [rbp - 0xe], 1
	je	.label_55
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x5c
	je	.label_55
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x27
	je	.label_55
	jmp	.label_63
.label_65:
	test	byte ptr [rbp - 0xd], 1
	je	.label_54
	jmp	.label_63
.label_80:
	jmp	.label_66
.label_106:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_105
.label_105:
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
	#Procedure 0x4025a4
	.globl sub_4025a4
	.type sub_4025a4, @function
sub_4025a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4025b2
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
	je	.label_106
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_105
	.section	.text
	.align	32
	#Procedure 0x4025e0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_107
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_107:
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
	#Procedure 0x40261d
	.globl sub_40261d
	.type sub_40261d, @function
sub_40261d:

	nop	dword ptr [rax]
.label_110:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_108
.label_108:
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
	je	.label_109
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_109:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402743
	.globl sub_402743
	.type sub_402743, @function
sub_402743:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40274f

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
	je	.label_110
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_108
	.section	.text
	.align	32
	#Procedure 0x402780

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
	jb	.label_111
	jmp	.label_114
.label_114:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_112
	jmp	.label_111
.label_111:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_113
.label_112:
	mov	byte ptr [rbp - 1], 0
.label_113:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4027ce
	.globl sub_4027ce
	.type sub_4027ce, @function
sub_4027ce:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4027d0
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
	#Procedure 0x4027e6
	.globl sub_4027e6
	.type sub_4027e6, @function
sub_4027e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4027f0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_115
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
.label_116:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_117:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40283c
	.globl sub_40283c
	.type sub_40283c, @function
sub_40283c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40284a

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
	jne	.label_116
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_116
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_116
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_118
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_117
.label_118:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_117
.label_122:
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4028f9
	.globl sub_4028f9
	.type sub_4028f9, @function
sub_4028f9:

	nop	dword ptr [rax]
.label_126:
	movabs	rdi, OFFSET FLAT:unblock_signals
	mov	esi, dword ptr [rbp - 0x8c]
	call	sigismember
	cmp	eax, 0
	je	.label_120
	lea	rdi, [rbp - 0x80]
	mov	esi, dword ptr [rbp - 0x8c]
	call	sigdelset
	movabs	rdi, OFFSET FLAT:label_131
	mov	qword ptr [rbp - 0x88], rdi
	mov	dword ptr [rbp - 0xb0], eax
	jmp	.label_132
.label_119:
	mov	edi, 2
	lea	rsi, [rbp - 0x80]
	xor	eax, eax
	mov	edx, eax
	call	sigprocmask
	cmp	eax, 0
	je	.label_122
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_128
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xbc], esi
	call	gettext
	mov	edi, 0x7d
	mov	esi, dword ptr [rbp - 0xbc]
	mov	rdx, rax
	mov	al, 0
	call	error
	.section	.text
	.align	32
	#Procedure 0x402995

	.globl set_signal_proc_mask
	.type set_signal_proc_mask, @function
set_signal_proc_mask:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	lea	rdi, [rbp - 0x80]
	call	sigemptyset
	xor	edi, edi
	xor	ecx, ecx
	mov	esi, ecx
	lea	rdx, [rbp - 0x80]
	mov	dword ptr [rbp - 0xa4], eax
	call	sigprocmask
	cmp	eax, 0
	je	.label_135
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_134
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xa8], esi
	call	gettext
	mov	edi, 0x7d
	mov	esi, dword ptr [rbp - 0xa8]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_135:
	mov	dword ptr [rbp - 0x8c], 1
.label_130:
	cmp	dword ptr [rbp - 0x8c], 0x40
	jg	.label_119
	movabs	rdi, OFFSET FLAT:block_signals
	mov	esi, dword ptr [rbp - 0x8c]
	call	sigismember
	cmp	eax, 0
	je	.label_126
	lea	rdi, [rbp - 0x80]
	mov	esi, dword ptr [rbp - 0x8c]
	call	sigaddset
	movabs	rdi, OFFSET FLAT:label_133
	mov	qword ptr [rbp - 0x88], rdi
	mov	dword ptr [rbp - 0xac], eax
	jmp	.label_125
.label_120:
	mov	qword ptr [rbp - 0x88], 0
.label_132:
	jmp	.label_125
.label_125:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_124
	cmp	qword ptr [rbp - 0x88], 0
	je	.label_124
	lea	rsi, [rbp - 0xa0]
	mov	edi, dword ptr [rbp - 0x8c]
	call	sig2str
	mov	dword ptr [rbp - 0xb4], eax
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_121
	movabs	rsi, OFFSET FLAT:label_129
	lea	rdx, [rbp - 0xa0]
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	ecx, dword ptr [rbp - 0x8c]
	mov	r8, qword ptr [rbp - 0x88]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xb8], eax
.label_121:
	jmp	.label_123
.label_123:
	jmp	.label_124
.label_124:
	jmp	.label_127
.label_127:
	mov	eax, dword ptr [rbp - 0x8c]
	add	eax, 1
	mov	dword ptr [rbp - 0x8c], eax
	jmp	.label_130
.label_136:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_139:
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
	#Procedure 0x402b3a
	.globl sub_402b3a
	.type sub_402b3a, @function
sub_402b3a:

	nop	word ptr [rax + rax]
.label_137:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_136
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402b64

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
	jne	.label_137
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_140
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
.label_140:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_138
	call	xalloc_die
.label_138:
	jmp	.label_139
	.section	.text
	.align	32
	#Procedure 0x402bf0

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
	#Procedure 0x402c27
	.globl sub_402c27
	.type sub_402c27, @function
sub_402c27:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c30

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
	#Procedure 0x402c66
	.globl sub_402c66
	.type sub_402c66, @function
sub_402c66:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c70

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
	jne	.label_141
	cmp	qword ptr [rbp - 8], 0
	je	.label_141
	call	xalloc_die
.label_141:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402cae
	.globl sub_402cae
	.type sub_402cae, @function
sub_402cae:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402cb0

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
	#Procedure 0x402ccb
	.globl sub_402ccb
	.type sub_402ccb, @function
sub_402ccb:

	nop	dword ptr [rax + rax]
.label_146:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402cd6
	.globl sub_402cd6
	.type sub_402cd6, @function
sub_402cd6:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402cde

	.globl unset_envvars
	.type unset_envvars, @function
unset_envvars:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], 0
.label_147:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax,  qword ptr [word ptr [usvars_used]]
	jae	.label_146
	jmp	.label_142
.label_142:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_143
	movabs	rsi, OFFSET FLAT:label_148
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [usvars]]
	mov	rdx, qword ptr [rcx + rax*8]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xc], eax
.label_143:
	jmp	.label_150
.label_150:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [usvars]]
	mov	rdi, qword ptr [rcx + rax*8]
	call	unsetenv
	cmp	eax, 0
	je	.label_149
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_144
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], esi
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [usvars]]
	mov	rdi, qword ptr [rcx + rdi*8]
	mov	qword ptr [rbp - 0x18], rax
	call	quote
	mov	edi, 0x7d
	mov	esi, dword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_149:
	jmp	.label_145
.label_145:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_147
	.section	.text
	.align	32
	#Procedure 0x402dc0

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
	#Procedure 0x402e32
	.globl sub_402e32
	.type sub_402e32, @function
sub_402e32:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e40

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
	#Procedure 0x402e5f
	.globl sub_402e5f
	.type sub_402e5f, @function
sub_402e5f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402e60

	.globl append_unset_var
	.type append_unset_var, @function
append_unset_var:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi,  qword ptr [word ptr [usvars_used]]
	cmp	rdi,  qword ptr [word ptr [usvars_alloc]]
	jne	.label_151
	movabs	rsi, OFFSET FLAT:usvars_alloc
	mov	eax, 8
	mov	edx, eax
	mov	rcx,  qword ptr [word ptr [usvars]]
	mov	rdi, rcx
	call	x2nrealloc
	mov	qword ptr [word ptr [usvars]],  rax
.label_151:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [usvars_used]]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [word ptr [usvars_used]],  rdx
	mov	rdx,  qword ptr [word ptr [usvars]]
	mov	qword ptr [rdx + rcx*8], rax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ed8
	.globl sub_402ed8
	.type sub_402ed8, @function
sub_402ed8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ee0
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
	#Procedure 0x402efa
	.globl sub_402efa
	.type sub_402efa, @function
sub_402efa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f00
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
	je	.label_152
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_153
.label_152:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_153
.label_153:
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
	#Procedure 0x402fc5
	.globl sub_402fc5
	.type sub_402fc5, @function
sub_402fc5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402fd0
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
	#Procedure 0x403001
	.globl sub_403001
	.type sub_403001, @function
sub_403001:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403010

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
	jne	.label_154
	test	byte ptr [rbp - 0x13], 1
	je	.label_155
	test	byte ptr [rbp - 0x11], 1
	jne	.label_154
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_155
.label_154:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_156
	call	__errno_location
	mov	dword ptr [rax], 0
.label_156:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_157
.label_155:
	mov	dword ptr [rbp - 4], 0
.label_157:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4030b9
	.globl sub_4030b9
	.type sub_4030b9, @function
sub_4030b9:

	nop	dword ptr [rax]
.label_159:
	mov	byte ptr [rbp - 1], 0
.label_160:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4030ce
	.globl sub_4030ce
	.type sub_4030ce, @function
sub_4030ce:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030dc
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_159
	jmp	.label_158
.label_158:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_160
	.section	.text
	.align	32
	#Procedure 0x403100

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
	#Procedure 0x403133
	.globl sub_403133
	.type sub_403133, @function
sub_403133:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403140
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
	jb	.label_161
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_162
.label_161:
	call	xalloc_die
.label_162:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403196
	.globl sub_403196
	.type sub_403196, @function
sub_403196:

	nop	word ptr cs:[rax + rax]
.label_164:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
.label_163:
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4031af
	.globl sub_4031af
	.type sub_4031af, @function
sub_4031af:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4031b3

	.globl parse_signal_action_params
	.type parse_signal_action_params, @function
parse_signal_action_params:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	cmp	qword ptr [rbp - 8], 0
	jne	.label_173
	mov	dword ptr [rbp - 0x34], 1
.label_168:
	cmp	dword ptr [rbp - 0x34], 0x40
	jg	.label_165
	lea	rsi, [rbp - 0x20]
	mov	edi, dword ptr [rbp - 0x34]
	call	sig2str
	cmp	eax, 0
	jne	.label_172
	mov	eax, 4
	mov	ecx, 2
	mov	dl, byte ptr [rbp - 9]
	test	dl, 1
	cmovne	eax, ecx
	movsxd	rsi, dword ptr [rbp - 0x34]
	mov	rdi,  qword ptr [word ptr [signals]]
	mov	dword ptr [rdi + rsi*4], eax
.label_172:
	jmp	.label_166
.label_166:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_168
.label_165:
	jmp	.label_163
.label_170:
	xor	eax, eax
	mov	edi, eax
	movabs	rsi, OFFSET FLAT:label_167
	mov	eax, 3
	mov	ecx, 1
	mov	dl, byte ptr [rbp - 9]
	test	dl, 1
	cmovne	eax, ecx
	movsxd	r8, dword ptr [rbp - 0x38]
	mov	r9,  qword ptr [word ptr [signals]]
	mov	dword ptr [r9 + r8*4], eax
	call	strtok
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_169
.label_173:
	mov	rdi, qword ptr [rbp - 8]
	call	xstrdup
	movabs	rsi, OFFSET FLAT:label_167
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x30]
	call	strtok
	mov	qword ptr [rbp - 0x28], rax
.label_169:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_164
	lea	rsi, [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x28]
	call	operand2sig
	mov	dword ptr [rbp - 0x38], eax
	cmp	dword ptr [rbp - 0x38], 0
	jne	.label_171
	movabs	rdi, OFFSET FLAT:label_35
	call	gettext
	mov	rdi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x40], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_171:
	cmp	dword ptr [rbp - 0x38], 0
	jg	.label_170
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	usage
	.section	.text
	.align	32
	#Procedure 0x403300

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
	jne	.label_175
	movabs	rax, OFFSET FLAT:label_174
	mov	qword ptr [rbp - 8], rax
.label_175:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_176
	movabs	rax, OFFSET FLAT:label_177
	mov	qword ptr [rbp - 8], rax
.label_176:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403357
	.globl sub_403357
	.type sub_403357, @function
sub_403357:

	nop	word ptr [rax + rax]
.label_180:
	mov	byte ptr [rbp - 1], 0
.label_178:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40336e
	.globl sub_40336e
	.type sub_40336e, @function
sub_40336e:

	nop	word ptr cs:[rax + rax]
.label_871:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_178
	.section	.text
	.align	32
	#Procedure 0x403386
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
	ja	.label_180
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_179]]
	jmp	rcx
	.section	.text
	.align	32
	#Procedure 0x4033b0
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
	jae	.label_181
	call	xalloc_die
.label_181:
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
	#Procedure 0x403400
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
	#Procedure 0x403437
	.globl sub_403437
	.type sub_403437, @function
sub_403437:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403440

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
	#Procedure 0x403478
	.globl sub_403478
	.type sub_403478, @function
sub_403478:

	nop	dword ptr [rax + rax]
.label_183:
	mov	byte ptr [rbp - 1], 0
.label_184:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40348e
	.globl sub_40348e
	.type sub_40348e, @function
sub_40348e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40349c
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_183
	jmp	.label_182
.label_182:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_184
.label_186:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_187:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4034cb
	.globl sub_4034cb
	.type sub_4034cb, @function
sub_4034cb:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034d4
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_186
	jmp	.label_185
.label_185:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_187
.label_188:
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
	#Procedure 0x40351e

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
	jne	.label_190
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_190:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_189
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_188
.label_189:
	call	abort
.label_197:
	movabs	rax, OFFSET FLAT:unblock_signals
	movabs	rcx, OFFSET FLAT:block_signals
	mov	dl, byte ptr [rbp - 9]
	test	dl, 1
	cmovne	rax, rcx
	mov	esi, dword ptr [rbp - 0x34]
	mov	rdi, rax
	call	sigaddset
	movabs	rcx, OFFSET FLAT:block_signals
	movabs	rdi, OFFSET FLAT:unblock_signals
	mov	dl, byte ptr [rbp - 9]
	test	dl, 1
	cmovne	rcx, rdi
	mov	esi, dword ptr [rbp - 0x34]
	mov	rdi, rcx
	mov	dword ptr [rbp - 0x54], eax
	call	sigdelset
	xor	esi, esi
	mov	edi, esi
	movabs	rsi, OFFSET FLAT:label_167
	mov	dword ptr [rbp - 0x58], eax
	call	strtok
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_196
	.section	.text
	.align	32
	#Procedure 0x4035e4

	.globl parse_block_signal_params
	.type parse_block_signal_params, @function
parse_block_signal_params:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	cmp	qword ptr [rbp - 8], 0
	jne	.label_198
	movabs	rax, OFFSET FLAT:unblock_signals
	movabs	rcx, OFFSET FLAT:block_signals
	mov	dl, byte ptr [rbp - 9]
	test	dl, 1
	cmovne	rax, rcx
	mov	rdi, rax
	call	sigfillset
	movabs	rcx, OFFSET FLAT:block_signals
	movabs	rdi, OFFSET FLAT:unblock_signals
	mov	dl, byte ptr [rbp - 9]
	test	dl, 1
	cmovne	rcx, rdi
	mov	rdi, rcx
	mov	dword ptr [rbp - 0x38], eax
	call	sigemptyset
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_191
.label_198:
	test	byte ptr [byte ptr [sig_mask_changed]],  1
	jne	.label_195
	movabs	rdi, OFFSET FLAT:block_signals
	call	sigemptyset
	movabs	rdi, OFFSET FLAT:unblock_signals
	mov	dword ptr [rbp - 0x40], eax
	call	sigemptyset
	mov	dword ptr [rbp - 0x44], eax
.label_195:
	jmp	.label_191
.label_191:
	mov	byte ptr [byte ptr [sig_mask_changed]],  1
	cmp	qword ptr [rbp - 8], 0
	jne	.label_193
	jmp	.label_194
.label_193:
	mov	rdi, qword ptr [rbp - 8]
	call	xstrdup
	movabs	rsi, OFFSET FLAT:label_167
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x30]
	call	strtok
	mov	qword ptr [rbp - 0x28], rax
.label_196:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_192
	lea	rsi, [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x28]
	call	operand2sig
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	jne	.label_199
	movabs	rdi, OFFSET FLAT:label_35
	call	gettext
	mov	rdi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_199:
	cmp	dword ptr [rbp - 0x34], 0
	jg	.label_197
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	usage
.label_192:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
.label_194:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403747
	.globl sub_403747
	.type sub_403747, @function
sub_403747:

	nop	word ptr [rax + rax]
.label_200:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403756
	.globl sub_403756
	.type sub_403756, @function
sub_403756:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403762

	.globl initialize_signals
	.type initialize_signals, @function
initialize_signals:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0x104
	mov	edi, eax
	call	xmalloc
	mov	qword ptr [word ptr [signals]],  rax
	mov	dword ptr [rbp - 4], 0
.label_201:
	cmp	dword ptr [rbp - 4], 0x40
	jg	.label_200
	movsxd	rax, dword ptr [rbp - 4]
	mov	rcx,  qword ptr [word ptr [signals]]
	mov	dword ptr [rcx + rax*4], 0
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	.label_201
	.section	.text
	.align	32
	#Procedure 0x4037b0
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
	#Procedure 0x40385d
	.globl sub_40385d
	.type sub_40385d, @function
sub_40385d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403860

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_202
	jmp	.label_204
.label_204:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_203
.label_202:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_203:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403897
	.globl sub_403897
	.type sub_403897, @function
sub_403897:

	nop	word ptr [rax + rax]
.label_205:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_206:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4038b2
	.globl sub_4038b2
	.type sub_4038b2, @function
sub_4038b2:

	nop	word ptr [rax + rax]
.label_207:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_205
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_205
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4038e4

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_207
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_207
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_206
	.section	.text
	.align	32
	#Procedure 0x403920

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
.label_210:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_209
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_209:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_217
	jmp	.label_221
.label_217:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_210
.label_221:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_212
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_212:
	movabs	rdi, OFFSET FLAT:label_216
	call	gettext
	movabs	rsi, OFFSET FLAT:label_218
	movabs	rdx, OFFSET FLAT:label_211
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
	je	.label_213
	movabs	rsi, OFFSET FLAT:label_220
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_213
	movabs	rdi, OFFSET FLAT:label_214
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_213:
	movabs	rdi, OFFSET FLAT:label_208
	call	gettext
	movabs	rsi, OFFSET FLAT:label_211
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_215
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_174
	movabs	rsi, OFFSET FLAT:label_219
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
	#Procedure 0x403ab9
	.globl sub_403ab9
	.type sub_403ab9, @function
sub_403ab9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403ac0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_222
	call	gettext
	movabs	rsi, OFFSET FLAT:label_224
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_225
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_218
	movabs	rdx, OFFSET FLAT:label_211
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_223
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
	#Procedure 0x403b46
	.globl sub_403b46
	.type sub_403b46, @function
sub_403b46:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b50

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
	#Procedure 0x403b8f
	.globl sub_403b8f
	.type sub_403b8f, @function
sub_403b8f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403b90

	.globl valid_escape_sequence
	.type valid_escape_sequence, @function
valid_escape_sequence:
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	cl, 1
	mov	byte ptr [rbp - 1], al
	movsx	edi, byte ptr [rbp - 1]
	cmp	edi, 0x63
	mov	byte ptr [rbp - 2], cl
	je	.label_226
	mov	al, 1
	movsx	ecx, byte ptr [rbp - 1]
	cmp	ecx, 0x66
	mov	byte ptr [rbp - 2], al
	je	.label_226
	mov	al, 1
	movsx	ecx, byte ptr [rbp - 1]
	cmp	ecx, 0x6e
	mov	byte ptr [rbp - 2], al
	je	.label_226
	mov	al, 1
	movsx	ecx, byte ptr [rbp - 1]
	cmp	ecx, 0x72
	mov	byte ptr [rbp - 2], al
	je	.label_226
	mov	al, 1
	movsx	ecx, byte ptr [rbp - 1]
	cmp	ecx, 0x74
	mov	byte ptr [rbp - 2], al
	je	.label_226
	mov	al, 1
	movsx	ecx, byte ptr [rbp - 1]
	cmp	ecx, 0x76
	mov	byte ptr [rbp - 2], al
	je	.label_226
	mov	al, 1
	movsx	ecx, byte ptr [rbp - 1]
	cmp	ecx, 0x23
	mov	byte ptr [rbp - 2], al
	je	.label_226
	mov	al, 1
	movsx	ecx, byte ptr [rbp - 1]
	cmp	ecx, 0x24
	mov	byte ptr [rbp - 2], al
	je	.label_226
	mov	al, 1
	movsx	ecx, byte ptr [rbp - 1]
	cmp	ecx, 0x5f
	mov	byte ptr [rbp - 2], al
	je	.label_226
	mov	al, 1
	movsx	ecx, byte ptr [rbp - 1]
	cmp	ecx, 0x22
	mov	byte ptr [rbp - 2], al
	je	.label_226
	mov	al, 1
	movsx	ecx, byte ptr [rbp - 1]
	cmp	ecx, 0x27
	mov	byte ptr [rbp - 2], al
	je	.label_226
	movsx	eax, byte ptr [rbp - 1]
	cmp	eax, 0x5c
	sete	cl
	mov	byte ptr [rbp - 2], cl
.label_226:
	mov	al, byte ptr [rbp - 2]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403c77
	.globl sub_403c77
	.type sub_403c77, @function
sub_403c77:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c80
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
	#Procedure 0x403caa
	.globl sub_403caa
	.type sub_403caa, @function
sub_403caa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403cb0

	.globl sub_403cb0
	.type sub_403cb0, @function
sub_403cb0:
	mov	byte ptr [rbp - 1], 0xb
	jmp	.label_227
.label_231:
	movabs	rdi, OFFSET FLAT:label_228
	movabs	rsi, OFFSET FLAT:label_101
	mov	edx, 0xd2
	movabs	rcx, OFFSET FLAT:label_229
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x403ce1

	.globl sub_403ce1
	.type sub_403ce1, @function
sub_403ce1:
	mov	byte ptr [rbp - 1], 0xc
	jmp	.label_227
	.section	.text
	.align	32
	#Procedure 0x403cea

	.globl sub_403cea
	.type sub_403cea, @function
sub_403cea:
	mov	byte ptr [rbp - 1], 0xd
	jmp	.label_227
	.section	.text
	.align	32
	#Procedure 0x403cf3

	.globl sub_403cf3
	.type sub_403cf3, @function
sub_403cf3:
	mov	byte ptr [rbp - 1], 9
	jmp	.label_227
.label_227:
	movsx	eax, byte ptr [rbp - 1]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d06
	.globl sub_403d06
	.type sub_403d06, @function
sub_403d06:

	nop	word ptr cs:[rax + rax]
.label_917:
	mov	byte ptr [rbp - 1], 0xa
	jmp	.label_227
	.section	.text
	.align	32
	#Procedure 0x403d1b

	.globl escape_char
	.type escape_char, @function
escape_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dil
	mov	byte ptr [rbp - 2], al
	movsx	edi, byte ptr [rbp - 2]
	add	edi, -0x66
	mov	ecx, edi
	sub	edi, 0x10
	mov	qword ptr [rbp - 0x10], rcx
	mov	dword ptr [rbp - 0x14], edi
	ja	.label_231
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_230]]
	jmp	rcx
	.section	.text
	.align	32
	#Procedure 0x403d50
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
	#Procedure 0x403d77
	.globl sub_403d77
	.type sub_403d77, @function
sub_403d77:

	nop	word ptr [rax + rax]
.label_275:
	movabs	rsi, OFFSET FLAT:optind
	lea	rdx, [rbp - 8]
	lea	rcx, [rbp - 0x10]
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	parse_split_string
	jmp	.label_249
.label_305:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_285
.label_238:
	xor	edi, edi
	call	usage
.label_295:
	call	reset_signal_handlers
	test	byte ptr [byte ptr [sig_mask_changed]],  1
	je	.label_294
	call	set_signal_proc_mask
.label_294:
	test	byte ptr [byte ptr [report_signal_handling]],  1
	je	.label_298
	call	list_signal_handling
.label_298:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_301
	jmp	.label_308
.label_308:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_311
	mov	edi, 4
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xd0], rax
	call	quotearg_style
	movabs	rsi, OFFSET FLAT:label_239
	mov	rdi, qword ptr [rbp - 0xd0]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xd4], eax
.label_311:
	jmp	.label_250
.label_250:
	mov	rdi, qword ptr [rbp - 0x20]
	call	chdir
	cmp	eax, 0
	je	.label_256
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_261
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xd8], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xe0], rax
	call	quotearg_style
	mov	edi, 0x7d
	mov	esi, dword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_252:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_284
	test	byte ptr [rbp - 0x29], 1
	jne	.label_284
	movabs	rdi, OFFSET FLAT:label_255
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 0x7d
	call	usage
.label_283:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x29], cl
	test	byte ptr [rbp - 0x16], 1
	je	.label_252
	test	byte ptr [rbp - 0x29], 1
	je	.label_252
	movabs	rdi, OFFSET FLAT:label_234
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 0x7d
	call	usage
	.section	.text
	.align	32
	#Procedure 0x403f30

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x110
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x15], 0
	mov	byte ptr [rbp - 0x16], 0
	mov	qword ptr [rbp - 0x20], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_174
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_318
	movabs	rsi, OFFSET FLAT:label_319
	mov	qword ptr [rbp - 0x48], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_318
	mov	qword ptr [rbp - 0x50], rax
	call	textdomain
	mov	edi, 0x7d
	mov	qword ptr [rbp - 0x58], rax
	call	initialize_exit_failure
	movabs	rdi, OFFSET FLAT:close_stdout
	call	atexit
	mov	dword ptr [rbp - 0x5c], eax
	call	initialize_signals
.label_316:
	movabs	rdx, OFFSET FLAT:shortopts
	movabs	rcx, OFFSET FLAT:longopts
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, -1
	je	.label_312
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x60], eax
	mov	dword ptr [rbp - 0x64], ecx
	je	.label_317
	jmp	.label_236
.label_236:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x68], eax
	je	.label_238
	jmp	.label_244
.label_244:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 9
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_245
	jmp	.label_251
.label_251:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x70], eax
	je	.label_245
	jmp	.label_258
.label_258:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x74], eax
	je	.label_260
	jmp	.label_268
.label_268:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x43
	mov	dword ptr [rbp - 0x78], eax
	je	.label_270
	jmp	.label_273
.label_273:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x53
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_275
	jmp	.label_263
.label_263:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0x80], eax
	je	.label_280
	jmp	.label_303
.label_303:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x84], eax
	je	.label_313
	jmp	.label_293
.label_293:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x88], eax
	je	.label_296
	jmp	.label_300
.label_300:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_302
	jmp	.label_307
.label_307:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x81
	mov	dword ptr [rbp - 0x90], eax
	je	.label_310
	jmp	.label_233
.label_233:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x82
	mov	dword ptr [rbp - 0x94], eax
	je	.label_247
	jmp	.label_272
.label_272:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x83
	mov	dword ptr [rbp - 0x98], eax
	je	.label_297
	jmp	.label_246
.label_260:
	mov	byte ptr [rbp - 0x16], 1
	jmp	.label_249
.label_271:
	call	unset_envvars
.label_291:
	jmp	.label_253
.label_253:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	mov	byte ptr [rbp - 0xad], cl
	jge	.label_257
	mov	esi, 0x3d
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strchr
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0xad], dl
.label_257:
	mov	al, byte ptr [rbp - 0xad]
	test	al, 1
	jne	.label_279
	jmp	.label_283
.label_279:
	jmp	.label_286
.label_286:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_287
	movabs	rsi, OFFSET FLAT:label_292
	mov	rdi,  qword ptr [word ptr [stderr]]
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + rax*8]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xb4], eax
.label_287:
	jmp	.label_306
.label_306:
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	putenv
	cmp	eax, 0
	je	.label_232
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax], 0
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_237
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xb8], esi
	call	gettext
	movsxd	rdi,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rdi*8]
	mov	qword ptr [rbp - 0xc0], rax
	call	quote
	mov	edi, 0x7d
	mov	esi, dword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_297:
	mov	byte ptr [byte ptr [report_signal_handling]],  1
	jmp	.label_249
.label_259:
	jmp	.label_290
.label_290:
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	movsxd	rax,  dword ptr [dword ptr [optind]]
	shl	rax, 3
	add	rax, qword ptr [rbp - 0x10]
	mov	rsi, rax
	call	execvp
	mov	dword ptr [rbp - 0xfc], eax
	call	__errno_location
	mov	edx, 0x7e
	mov	r8d, 0x7f
	cmp	dword ptr [rax], 2
	cmove	edx, r8d
	mov	dword ptr [rbp - 0x40], edx
	call	__errno_location
	mov	esi, dword ptr [rax]
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	dword ptr [rbp - 0x100], esi
	call	quote
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_282
	mov	esi, dword ptr [rbp - 0x100]
	mov	rcx, rax
	mov	al, 0
	call	error
	cmp	dword ptr [rbp - 0x40], 0x7f
	jne	.label_240
	mov	esi, 0x20
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strchr
	cmp	rax, 0
	je	.label_240
	movabs	rdi, OFFSET FLAT:label_235
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_240:
	mov	eax, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 4], eax
.label_285:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x110
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40435d
	.globl sub_40435d
	.type sub_40435d, @function
sub_40435d:

	nop	dword ptr [rax + rax]
.label_310:
	xor	esi, esi
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	parse_signal_action_params
	jmp	.label_249
.label_247:
	mov	esi, 1
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	parse_block_signal_params
	jmp	.label_249
.label_280:
	mov	byte ptr [rbp - 0x15], 1
	jmp	.label_249
.label_245:
	movabs	rdi, OFFSET FLAT:label_281
	call	gettext
	xor	ecx, ecx
	mov	edx, dword ptr [rbp - 0x14]
	mov	edi, ecx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x9c], edx
	mov	rdx, rax
	mov	ecx, dword ptr [rbp - 0x9c]
	mov	al, 0
	call	error
	movabs	rdi, OFFSET FLAT:label_235
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 0x7d
	call	usage
.label_270:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_249
.label_249:
	jmp	.label_316
.label_302:
	mov	esi, 1
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	parse_signal_action_params
	xor	esi, esi
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	parse_block_signal_params
	jmp	.label_249
.label_312:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_242
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, OFFSET FLAT:label_248
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	jne	.label_242
	mov	byte ptr [rbp - 0x15], 1
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	mov	dword ptr [dword ptr [optind]],  eax
.label_242:
	test	byte ptr [rbp - 0x15], 1
	je	.label_271
	jmp	.label_274
.label_274:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_276
	movabs	rsi, OFFSET FLAT:label_278
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xac], eax
.label_276:
	jmp	.label_288
.label_288:
	movabs	rax, OFFSET FLAT:main.dummy_environ
	mov	qword ptr [word ptr [__environ]],  rax
	jmp	.label_291
.label_246:
	mov	edi, 0x7d
	call	usage
.label_256:
	jmp	.label_301
.label_301:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_290
	jmp	.label_262
.label_262:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_299
	movabs	rsi, OFFSET FLAT:label_315
	mov	rdi,  qword ptr [word ptr [stderr]]
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + rax*8]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xe4], eax
.label_299:
	jmp	.label_243
.label_243:
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 0x3c], eax
.label_269:
	mov	eax, dword ptr [rbp - 0x3c]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_259
	jmp	.label_254
.label_254:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_304
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax,  dword ptr [dword ptr [optind]]
	movsxd	rcx, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0xf0], rdi
	mov	rdi, rcx
	mov	dword ptr [rbp - 0xf4], eax
	call	quote
	movabs	rsi, OFFSET FLAT:label_277
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	edx, dword ptr [rbp - 0xf4]
	mov	rcx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xf8], eax
.label_304:
	jmp	.label_289
.label_289:
	jmp	.label_314
.label_314:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_269
.label_284:
	test	byte ptr [rbp - 0x29], 1
	jne	.label_295
	mov	rax,  qword ptr [word ptr [__environ]]
	mov	qword ptr [rbp - 0x38], rax
.label_241:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	je	.label_305
	movabs	rdi, OFFSET FLAT:label_309
	mov	eax, 0xa
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, rdx
	add	rsi, 8
	mov	qword ptr [rbp - 0x38], rsi
	mov	rsi, qword ptr [rdx]
	mov	r8b, byte ptr [rbp - 0x16]
	test	r8b, 1
	cmovne	eax, ecx
	mov	edx, eax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0xc4], eax
	jmp	.label_241
.label_313:
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	append_unset_var
	jmp	.label_249
.label_232:
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	mov	dword ptr [dword ptr [optind]],  eax
	jmp	.label_253
.label_296:
	mov	byte ptr [byte ptr [dev_debug]],  1
	jmp	.label_249
.label_317:
	movabs	rsi, OFFSET FLAT:label_264
	movabs	rdx, OFFSET FLAT:label_218
	movabs	r8, OFFSET FLAT:label_265
	movabs	r9, OFFSET FLAT:label_266
	movabs	rax, OFFSET FLAT:label_267
	xor	ecx, ecx
	mov	edi, ecx
	mov	r10,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0xa8], rdi
	mov	rdi, r10
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
	.section	.text
	.align	32
	#Procedure 0x4046d0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_320
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_321
.label_320:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_322
.label_321:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_322:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404728
	.globl sub_404728
	.type sub_404728, @function
sub_404728:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404730

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_323
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_282
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40476f
	.globl sub_40476f
	.type sub_40476f, @function
sub_40476f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404770
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
	jb	.label_324
	jmp	.label_326
.label_326:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_327
	jmp	.label_324
.label_324:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_325
.label_327:
	mov	byte ptr [rbp - 1], 0
.label_325:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4047b8
	.globl sub_4047b8
	.type sub_4047b8, @function
sub_4047b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047c0

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
	#Procedure 0x4047e8
	.globl sub_4047e8
	.type sub_4047e8, @function
sub_4047e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047f0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_328
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_329
.label_328:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_329
.label_329:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40482b
	.globl sub_40482b
	.type sub_40482b, @function
sub_40482b:

	nop	dword ptr [rax + rax]
.label_333:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x7d
	jne	.label_330
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_331
	.section	.text
	.align	32
	#Procedure 0x40484d

	.globl scan_varname
	.type scan_varname, @function
scan_varname:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_335
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x24
	jne	.label_335
	jmp	.label_340
.label_340:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x7b
	jne	.label_332
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rax + 2]
	call	c_isalpha
	test	al, 1
	jne	.label_341
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x5f
	jne	.label_332
.label_341:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 3
	mov	qword ptr [rbp - 0x18], rax
.label_334:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	call	c_isalnum
	mov	cl, 1
	test	al, 1
	mov	byte ptr [rbp - 0x19], cl
	jne	.label_337
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x5f
	sete	dl
	mov	byte ptr [rbp - 0x19], dl
.label_337:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_336
	jmp	.label_333
.label_336:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_334
.label_330:
	jmp	.label_332
.label_332:
	mov	qword ptr [rbp - 8], 0
.label_331:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40491d
	.globl sub_40491d
	.type sub_40491d, @function
sub_40491d:

	nop	word ptr cs:[rax + rax]
.label_335:
	movabs	rdi, OFFSET FLAT:label_338
	movabs	rsi, OFFSET FLAT:label_101
	mov	edx, 0xdd
	movabs	rcx, OFFSET FLAT:label_339
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x404950

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
	jne	.label_342
	mov	dword ptr [rbp - 4], 0
	jmp	.label_346
.label_344:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_343
.label_345:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_346:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4049c8
	.globl sub_4049c8
	.type sub_4049c8, @function
sub_4049c8:

	nop	word ptr cs:[rax + rax]
.label_342:
	jmp	.label_343
.label_343:
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
	jne	.label_344
	jmp	.label_345
	.section	.text
	.align	32
	#Procedure 0x404a10

	.globl str2sig
	.type str2sig, @function
str2sig:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	call	str2signum
	xor	ecx, ecx
	mov	edx, 0xffffffff
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi], eax
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi], 0
	cmovl	ecx, edx
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a48
	.globl sub_404a48
	.type sub_404a48, @function
sub_404a48:

	nop	dword ptr [rax + rax]
.label_351:
	test	byte ptr [rbp - 0x1b], 1
	je	.label_375
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
.label_375:
	mov	byte ptr [rbp - 0x1b], 0
.label_354:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x22
	mov	dword ptr [rbp - 0x4c], ecx
	mov	dword ptr [rbp - 0x50], edx
	je	.label_380
	jmp	.label_383
.label_383:
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, 0x24
	mov	dword ptr [rbp - 0x54], eax
	je	.label_349
	jmp	.label_357
.label_357:
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, 0x27
	mov	dword ptr [rbp - 0x58], eax
	je	.label_359
	jmp	.label_363
.label_363:
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, 0x5c
	mov	dword ptr [rbp - 0x5c], eax
	je	.label_364
	jmp	.label_348
.label_377:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x1a], 1
	mov	byte ptr [rbp - 0x5e], cl
	jne	.label_370
	mov	al, byte ptr [rbp - 0x19]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x5e], al
.label_370:
	mov	al, byte ptr [rbp - 0x5e]
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	jmp	.label_348
.label_360:
	movsx	edi, byte ptr [rbp - 0x35]
	call	valid_escape_sequence
	test	al, 1
	jne	.label_381
	movabs	rdi, OFFSET FLAT:label_382
	call	gettext
	mov	edi, 0x7d
	xor	esi, esi
	movsx	ecx, byte ptr [rbp - 0x35]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_385:
	mov	byte ptr [rbp - 0x1b], 0
	mov	byte ptr [rbp - 0x1a], 0
	mov	byte ptr [rbp - 0x19], 0
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
.label_352:
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	je	.label_367
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x35], cl
	mov	rax, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rax]
	movsxd	rax, edx
	mov	qword ptr [rbp - 0x48], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x48]
	movzx	edx, word ptr [rax + rsi*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_351
	test	byte ptr [rbp - 0x19], 1
	jne	.label_351
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_351
	mov	byte ptr [rbp - 0x1b], 1
	jmp	.label_354
.label_350:
	movsx	eax, byte ptr [rbp - 0x35]
	cmp	eax, 0
	jne	.label_360
	movabs	rdi, OFFSET FLAT:label_362
	call	gettext
	mov	edi, 0x7d
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_368:
	mov	rdi, qword ptr [rbp - 8]
	call	extract_varname
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	jne	.label_374
	movabs	rdi, OFFSET FLAT:label_365
	call	gettext
	mov	edi, 0x7d
	xor	esi, esi
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_367:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_347
	test	byte ptr [rbp - 0x1a], 1
	je	.label_353
.label_347:
	movabs	rdi, OFFSET FLAT:label_358
	call	gettext
	mov	edi, 0x7d
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_353:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx], rcx
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c4f
	.globl sub_404c4f
	.type sub_404c4f, @function
sub_404c4f:

	nop	word ptr cs:[rax + rax]
.label_376:
	movabs	rdi, OFFSET FLAT:label_355
	movabs	rsi, OFFSET FLAT:label_101
	mov	edx, 0x134
	movabs	rcx, OFFSET FLAT:label_356
	call	__assert_fail
.label_364:
	test	byte ptr [rbp - 0x19], 1
	je	.label_350
	movsx	eax, byte ptr [rbp - 0x35]
	cmp	eax, 0x63
	jne	.label_350
	movabs	rdi, OFFSET FLAT:label_361
	call	gettext
	mov	edi, 0x7d
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_349:
	test	byte ptr [rbp - 0x1a], 1
	je	.label_368
	jmp	.label_348
	.section	.text
	.align	32
	#Procedure 0x404ccb

	.globl validate_split_str
	.type validate_split_str, @function
validate_split_str:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x34], 1
	cmp	qword ptr [rbp - 8], 0
	je	.label_384
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_384
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0x40], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x40]
	movzx	ecx, word ptr [rax + rdx*2]
	and	ecx, 0x2000
	cmp	ecx, 0
	jne	.label_384
	jmp	.label_385
.label_359:
	test	byte ptr [rbp - 0x1a], 1
	je	.label_366
	test	byte ptr [rbp - 0x19], 1
	jne	.label_369
.label_366:
	jmp	.label_372
.label_380:
	test	byte ptr [rbp - 0x1a], 1
	je	.label_373
	test	byte ptr [rbp - 0x19], 1
	jne	.label_376
.label_373:
	jmp	.label_377
.label_372:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x1a], 1
	mov	byte ptr [rbp - 0x5d], cl
	jne	.label_379
	mov	al, byte ptr [rbp - 0x19]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x5d], al
.label_379:
	mov	al, byte ptr [rbp - 0x5d]
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	jmp	.label_348
.label_381:
	movsx	eax, byte ptr [rbp - 0x35]
	cmp	eax, 0x5f
	jne	.label_371
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
.label_371:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_348
.label_384:
	movabs	rdi, OFFSET FLAT:label_100
	movabs	rsi, OFFSET FLAT:label_101
	mov	edx, 0x118
	movabs	rcx, OFFSET FLAT:label_356
	call	__assert_fail
.label_374:
	mov	rdi, qword ptr [rbp - 0x28]
	call	getenv
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	je	.label_378
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
.label_378:
	jmp	.label_348
.label_348:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_352
.label_369:
	movabs	rdi, OFFSET FLAT:label_355
	movabs	rsi, OFFSET FLAT:label_101
	mov	edx, 0x12f
	movabs	rcx, OFFSET FLAT:label_356
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x404e40
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
	je	.label_386
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_387
.label_386:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_387
.label_387:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e87
	.globl sub_404e87
	.type sub_404e87, @function
sub_404e87:

	nop	word ptr [rax + rax]
.label_399:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_398
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_395
	movabs	rax, OFFSET FLAT:label_390
	movabs	rcx, OFFSET FLAT:label_391
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_392
.label_395:
	movabs	rsi, OFFSET FLAT:label_388
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_389
	movabs	rax, OFFSET FLAT:label_396
	movabs	rcx, OFFSET FLAT:label_397
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_392
.label_389:
	movabs	rax, OFFSET FLAT:label_393
	movabs	rcx, OFFSET FLAT:label_394
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_392:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404f51
	.globl sub_404f51
	.type sub_404f51, @function
sub_404f51:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f59

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
	je	.label_399
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_392
.label_404:
	mov	dword ptr [rbp - 0xa4], 1
.label_405:
	cmp	dword ptr [rbp - 0xa4], 0x40
	jg	.label_402
	xor	eax, eax
	mov	esi, eax
	lea	rdx, [rbp - 0x140]
	mov	edi, dword ptr [rbp - 0xa4]
	call	sigaction
	cmp	eax, 0
	je	.label_408
	jmp	.label_401
.label_400:
	lea	rsi, [rbp - 0xa0]
	mov	edi, dword ptr [rbp - 0xa4]
	call	sig2str
	movabs	rsi, OFFSET FLAT:label_403
	lea	rdx, [rbp - 0xa0]
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	ecx, dword ptr [rbp - 0xa4]
	mov	r8, qword ptr [rbp - 0x150]
	mov	r9, qword ptr [rbp - 0x158]
	mov	r10, qword ptr [rbp - 0x148]
	mov	qword ptr [rsp], r10
	mov	dword ptr [rbp - 0x168], eax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x16c], eax
.label_401:
	mov	eax, dword ptr [rbp - 0xa4]
	add	eax, 1
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_405
	.section	.text
	.align	32
	#Procedure 0x40503c

	.globl list_signal_handling
	.type list_signal_handling, @function
list_signal_handling:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x180
	lea	rdi, [rbp - 0x80]
	call	sigemptyset
	xor	edi, edi
	xor	ecx, ecx
	mov	esi, ecx
	lea	rdx, [rbp - 0x80]
	mov	dword ptr [rbp - 0x15c], eax
	call	sigprocmask
	cmp	eax, 0
	je	.label_404
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_134
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x160], esi
	call	gettext
	mov	edi, 0x7d
	mov	esi, dword ptr [rbp - 0x160]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_402:
	add	rsp, 0x180
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4050a8
	.globl sub_4050a8
	.type sub_4050a8, @function
sub_4050a8:

	nop	word ptr [rax + rax]
.label_408:
	lea	rdi, [rbp - 0x80]
	mov	eax, 1
	mov	ecx, eax
	movabs	rdx, OFFSET FLAT:label_174
	movabs	rsi, OFFSET FLAT:label_407
	cmp	qword ptr [rbp - 0x140], rcx
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x148], rdx
	mov	esi, dword ptr [rbp - 0xa4]
	call	sigismember
	xor	esi, esi
	mov	r8b, sil
	movabs	rcx, OFFSET FLAT:label_174
	movabs	rdx, OFFSET FLAT:label_133
	cmp	eax, 0
	cmovne	rcx, rdx
	mov	qword ptr [rbp - 0x150], rcx
	mov	rcx, qword ptr [rbp - 0x148]
	movsx	eax, byte ptr [rcx]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x161], r8b
	je	.label_406
	mov	rax, qword ptr [rbp - 0x150]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	setne	dl
	mov	byte ptr [rbp - 0x161], dl
.label_406:
	mov	al, byte ptr [rbp - 0x161]
	movabs	rcx, OFFSET FLAT:label_174
	movabs	rdx, OFFSET FLAT:label_167
	test	al, 1
	cmovne	rcx, rdx
	mov	qword ptr [rbp - 0x158], rcx
	mov	rcx, qword ptr [rbp - 0x148]
	cmp	byte ptr [rcx], 0
	jne	.label_400
	mov	rax, qword ptr [rbp - 0x150]
	cmp	byte ptr [rax], 0
	jne	.label_400
	jmp	.label_401
.label_900:
	movabs	rdi, OFFSET FLAT:label_416
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
	jmp	.label_413
.label_893:
	movabs	rdi, OFFSET FLAT:label_426
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
	jmp	.label_413
.label_892:
	jmp	.label_413
	.section	.text
	.align	32
	#Procedure 0x405270

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
	je	.label_423
	movabs	rsi, OFFSET FLAT:label_420
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_409
.label_899:
	movabs	rdi, OFFSET FLAT:label_414
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
	jmp	.label_413
.label_895:
	movabs	rdi, OFFSET FLAT:label_421
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
	jmp	.label_413
.label_896:
	movabs	rdi, OFFSET FLAT:label_424
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
	jmp	.label_413
.label_894:
	movabs	rdi, OFFSET FLAT:label_412
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
	jmp	.label_413
.label_901:
	movabs	rdi, OFFSET FLAT:label_411
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
	jmp	.label_413
.label_422:
	movabs	rdi, OFFSET FLAT:label_427
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
.label_413:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4055b4
	.globl sub_4055b4
	.type sub_4055b4, @function
sub_4055b4:

	nop	
.label_423:
	movabs	rsi, OFFSET FLAT:label_425
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_409:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_418
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
	mov	ecx, OFFSET FLAT:label_415
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
	ja	.label_422
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_410]]
	jmp	rcx
.label_898:
	movabs	rdi, OFFSET FLAT:label_417
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
	jmp	.label_413
.label_897:
	movabs	rdi, OFFSET FLAT:label_419
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
	jmp	.label_413
.label_882:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_881:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_437
	jmp	.label_605
.label_605:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_456
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_456:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_437
.label_437:
	movabs	rax, OFFSET FLAT:label_394
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_433
.label_879:
	mov	byte ptr [rbp - 0x79], 1
.label_878:
	mov	byte ptr [rbp - 0x7b], 1
.label_880:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_617
	mov	byte ptr [rbp - 0x79], 1
.label_617:
	jmp	.label_621
.label_621:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_622
	jmp	.label_625
.label_625:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_603
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_603:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_622
.label_622:
	movabs	rax, OFFSET FLAT:label_393
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_433
.label_585:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_440
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_499
.label_831:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_446
.label_529:
	jmp	.label_447
.label_447:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_448
	jmp	.label_446
.label_554:
	jmp	.label_446
.label_610:
	jmp	.label_556
.label_556:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_563
	test	byte ptr [rbp - 0x82], 1
	jne	.label_563
	jmp	.label_459
.label_459:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_461
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_461:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_626
.label_626:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_445
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_445:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_563:
	jmp	.label_477
.label_477:
	jmp	.label_479
.label_479:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_481
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_481:
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
	jmp	.label_485
.label_833:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_593
	jmp	.label_620
.label_620:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_497
	jmp	.label_502
.label_497:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_457
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_457
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_457
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_431
	jmp	.label_521
.label_521:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_431
	jmp	.label_528
.label_528:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_431
	jmp	.label_534
.label_534:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_431
	jmp	.label_511
.label_511:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_540
	jmp	.label_431
.label_431:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_509
	jmp	.label_435
.label_434:
	jmp	.label_545
.label_441:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_547
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_547
	jmp	.label_551
.label_551:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_560
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_560:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_558
.label_558:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_561
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_561:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_569
.label_569:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_574
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_574:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_547:
	jmp	.label_579
.label_579:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_580
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_580:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_584
.label_584:
	jmp	.label_508
.label_508:
	jmp	.label_588
.label_588:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_591
	test	byte ptr [rbp - 0x82], 1
	jne	.label_591
	jmp	.label_595
.label_595:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_611
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_611:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_602
.label_602:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_607
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_607:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_591:
	jmp	.label_612
.label_612:
	jmp	.label_518
.label_518:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_613
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_613:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_619
	mov	byte ptr [rbp - 0x7e], 0
.label_619:
	jmp	.label_596
.label_596:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_597
.label_464:
	test	byte ptr [rbp - 0x79], 1
	je	.label_428
	test	byte ptr [rbp - 0x7b], 1
	je	.label_428
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_428
	jmp	.label_508
.label_593:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_434
	jmp	.label_435
.label_608:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_438
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_438
	test	byte ptr [rbp - 0x7b], 1
	je	.label_438
	jmp	.label_435
.label_438:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_430
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_430
	test	byte ptr [rbp - 0x7d], 1
	je	.label_430
	test	byte ptr [rbp - 0x7e], 1
	je	.label_549
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
	jmp	.label_541
.label_573:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_467
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_467
	mov	qword ptr [rbp - 0xb8], 1
.label_452:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_472
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
	jb	.label_478
	jmp	.label_488
.label_488:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_478
	jmp	.label_493
.label_493:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_478
	jmp	.label_565
.label_565:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_500
	jmp	.label_478
.label_478:
	jmp	.label_435
.label_500:
	jmp	.label_505
.label_505:
	jmp	.label_582
.label_582:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_452
.label_472:
	jmp	.label_467
.label_467:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_516
	mov	byte ptr [rbp - 0x91], 0
.label_516:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_519
.label_519:
	jmp	.label_523
.label_523:
	jmp	.label_524
.label_524:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_577
.label_499:
	jmp	.label_532
.label_532:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_535
	test	byte ptr [rbp - 0x79], 1
	je	.label_471
	test	byte ptr [rbp - 0x91], 1
	jne	.label_471
.label_535:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_485:
	test	byte ptr [rbp - 0x79], 1
	je	.label_546
	test	byte ptr [rbp - 0x91], 1
	jne	.label_546
	jmp	.label_552
.label_552:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_550
	jmp	.label_435
.label_576:
	jmp	.label_484
.label_484:
	test	byte ptr [rbp - 0x79], 1
	je	.label_554
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_557
.label_553:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_566
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_566:
	jmp	.label_577
.label_577:
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
	jne	.label_585
	jmp	.label_499
.label_877:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_433
.label_455:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_572
	jmp	.label_596
.label_469:
	jmp	.label_508
.label_546:
	test	byte ptr [rbp - 0x81], 1
	je	.label_618
	jmp	.label_600
.label_600:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_601
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_601:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_618:
	jmp	.label_609
.label_609:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_610
	jmp	.label_614
.label_525:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_529
.label_531:
	jmp	.label_446
.label_460:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_482
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_482
	jmp	.label_624
.label_624:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_589
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_589:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_629
.label_629:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_429
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_429:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_436
.label_436:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_442
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_442:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_482:
	jmp	.label_450
.label_450:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_451
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_451:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_454
.label_454:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_463
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_463
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_463
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_463
	jmp	.label_474
.label_474:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_475
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_475:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_483
.label_483:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_543
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_543:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_463
.label_463:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_462
.label_509:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_494
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_494:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_504
.label_504:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_507
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_507:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_514
.label_514:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_517
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_517:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_564
.label_564:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_583
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_583:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_530
.label_614:
	jmp	.label_508
.label_439:
	jmp	.label_432
.label_432:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_537
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_537:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_541
.label_883:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_433
.label_823:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_484
.label_540:
	jmp	.label_530
.label_530:
	jmp	.label_457
.label_457:
	jmp	.label_545
.label_486:
	mov	byte ptr [rbp - 0x81], 1
.label_473:
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
	ja	.label_548
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_559]]
	jmp	rcx
.label_825:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_468
.label_495:
	jmp	.label_557
.label_557:
	jmp	.label_567
.label_567:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_441
	jmp	.label_435
.label_440:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_573
	mov	byte ptr [rbp - 0x91], 0
.label_592:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_578
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_578:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_586
	jmp	.label_590
.label_586:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_592
.label_502:
	jmp	.label_545
.label_545:
	jmp	.label_446
.label_542:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_544:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_604
	jmp	.label_608
.label_604:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_473
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_473
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_473
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_615
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_615
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_627
.label_522:
	jmp	.label_520
.label_520:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_433
	.section	.text
	.align	32
	#Procedure 0x406419

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
.label_628:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_465
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_470]]
	jmp	rcx
.label_448:
	jmp	.label_476
.label_476:
	mov	byte ptr [rbp - 0x83], 1
.label_830:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_480
	test	byte ptr [rbp - 0x7b], 1
	je	.label_480
	jmp	.label_435
.label_832:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_538
	test	byte ptr [rbp - 0x7b], 1
	je	.label_487
	jmp	.label_435
.label_487:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_489
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_489
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_489:
	jmp	.label_496
.label_496:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_568
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_568:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_503
.label_503:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_506
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_506:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_513
.label_513:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_515
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_515:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_538:
	jmp	.label_446
.label_480:
	jmp	.label_446
.label_835:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_525
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_529
	jmp	.label_531
.label_435:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_533
	test	byte ptr [rbp - 0x79], 1
	je	.label_533
	mov	dword ptr [rbp - 0x34], 4
.label_533:
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
.label_541:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406674
	.globl sub_406674
	.type sub_406674, @function
sub_406674:

	nop	dword ptr [rax + rax]
.label_590:
	jmp	.label_499
.label_550:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_555
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_555
	jmp	.label_562
.label_562:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_616
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_616:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_570
.label_570:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_575
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_575:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_498
.label_498:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_581
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_581:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_555:
	jmp	.label_587
.label_587:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_501
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_501:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_594
.label_594:
	jmp	.label_598
.label_598:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_599
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_599:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_466
.label_466:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_492
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_492:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_609
.label_549:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_623
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_623
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_628
.label_829:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_468
.label_623:
	jmp	.label_606
.label_606:
	jmp	.label_430
.label_430:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_432
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_432
	jmp	.label_453
.label_453:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_439
	jmp	.label_443
.label_443:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_444
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_444:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_449
.label_449:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_453
.label_822:
	test	byte ptr [rbp - 0x79], 1
	je	.label_455
	jmp	.label_458
.label_458:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_460
	jmp	.label_435
.label_572:
	jmp	.label_462
.label_462:
	jmp	.label_446
.label_465:
	call	abort
.label_834:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_464
	test	byte ptr [rbp - 0x7b], 1
	je	.label_469
	jmp	.label_435
.label_615:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_627:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_473
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_473
	test	byte ptr [rbp - 0x7b], 1
	je	.label_486
	jmp	.label_435
.label_471:
	jmp	.label_446
.label_446:
	test	byte ptr [rbp - 0x79], 1
	je	.label_571
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_490
.label_571:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_491
.label_490:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_491
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
	jne	.label_495
.label_491:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_495
	jmp	.label_508
.label_884:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_510
	movabs	rdi, OFFSET FLAT:label_512
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_393
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_510:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_520
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_539:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_522
	jmp	.label_526
.label_526:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_527
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_527:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_536
.label_536:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_539
.label_433:
	mov	qword ptr [rbp - 0x58], 0
.label_597:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_542
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_544
.label_824:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_484
.label_826:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_468
.label_827:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_484
.label_548:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_553
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
	jmp	.label_532
.label_428:
	jmp	.label_468
.label_468:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_576
	test	byte ptr [rbp - 0x7b], 1
	je	.label_576
	jmp	.label_435
.label_828:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_484
.label_631:
	mov	byte ptr [rbp - 1], 0
.label_632:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406afe
	.globl sub_406afe
	.type sub_406afe, @function
sub_406afe:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b0c
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_631
	jmp	.label_630
.label_630:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_632
.label_633:
	mov	byte ptr [rbp - 1], 0
.label_637:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406b3e
	.globl sub_406b3e
	.type sub_406b3e, @function
sub_406b3e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b49
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
	jb	.label_634
	jmp	.label_636
.label_636:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_634
	jmp	.label_635
.label_635:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_633
	jmp	.label_634
.label_634:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_637
.label_646:
	test	byte ptr [rbp - 0x31], 1
	je	.label_642
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_645
.label_642:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_645:
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
	je	.label_641
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_644]]
	mov	qword ptr [rax + 8], rcx
.label_641:
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
.label_643:
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
	ja	.label_639
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_640
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_640:
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
.label_639:
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
	#Procedure 0x406d95
	.globl sub_406d95
	.type sub_406d95, @function
sub_406d95:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406da2

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
	jge	.label_638
	call	abort
.label_638:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_643
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_646
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x406e20

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_654
	jmp	.label_661
.label_661:
	movabs	rdi, OFFSET FLAT:label_662
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_657
.label_654:
	movabs	rdi, OFFSET FLAT:label_660
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_651
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:label_663
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_652
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_664
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_655
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_647
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_653
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_648
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_656
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_649
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_658
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_650
	mov	dword ptr [rbp - 0x44], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_659
	mov	dword ptr [rbp - 0x48], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_264
	mov	dword ptr [rbp - 0x4c], eax
	call	emit_ancillary_info
.label_657:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x40706d
	.globl sub_40706d
	.type sub_40706d, @function
sub_40706d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407070

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
	#Procedure 0x40709c
	.globl sub_40709c
	.type sub_40709c, @function
sub_40709c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4070a0
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
	jae	.label_665
	call	xalloc_die
.label_665:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4070e8
	.globl sub_4070e8
	.type sub_4070e8, @function
sub_4070e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4070f0
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
	#Procedure 0x40712a
	.globl sub_40712a
	.type sub_40712a, @function
sub_40712a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407130

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
	#Procedure 0x4071a5
	.globl sub_4071a5
	.type sub_4071a5, @function
sub_4071a5:

	nop	word ptr cs:[rax + rax]
.label_673:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_671
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_670
.label_671:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_670:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_666
	movabs	rsi, OFFSET FLAT:label_667
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_666
	movabs	rsi, OFFSET FLAT:label_668
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_669
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_669:
	jmp	.label_666
.label_666:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407293
	.globl sub_407293
	.type sub_407293, @function
sub_407293:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40729a

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_673
	movabs	rdi, OFFSET FLAT:label_672
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4072d0

	.globl extract_varname
	.type extract_varname, @function
extract_varname:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	scan_varname
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_676
	mov	qword ptr [rbp - 8], 0
	jmp	.label_675
.label_676:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	sub	rax, 2
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax,  qword ptr [word ptr [vnlen]]
	jb	.label_674
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [word ptr [vnlen]],  rax
	mov	rdi,  qword ptr [word ptr [varname]]
	mov	rsi,  qword ptr [word ptr [vnlen]]
	call	xrealloc
	mov	qword ptr [word ptr [varname]],  rax
.label_674:
	mov	rdi,  qword ptr [word ptr [varname]]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 2
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdx,  qword ptr [word ptr [varname]]
	mov	byte ptr [rdx + rax], 0
	mov	rax,  qword ptr [word ptr [varname]]
	mov	qword ptr [rbp - 8], rax
.label_675:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407395
	.globl sub_407395
	.type sub_407395, @function
sub_407395:

	nop	word ptr cs:[rax + rax]
.label_678:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 4]
	mov	rdx,  qword ptr [word ptr [signals]]
	cmp	dword ptr [rdx + rcx*4], 2
	mov	byte ptr [rbp - 0xc1], al
	je	.label_688
	movsxd	rax, dword ptr [rbp - 4]
	mov	rcx,  qword ptr [word ptr [signals]]
	cmp	dword ptr [rcx + rax*4], 4
	sete	dl
	mov	byte ptr [rbp - 0xc1], dl
.label_688:
	mov	al, byte ptr [rbp - 0xc1]
	mov	cl, 1
	and	al, 1
	mov	byte ptr [rbp - 0xa1], al
	movsxd	rdx, dword ptr [rbp - 4]
	mov	rsi,  qword ptr [word ptr [signals]]
	cmp	dword ptr [rsi + rdx*4], 1
	mov	byte ptr [rbp - 0xc2], cl
	je	.label_685
	movsxd	rax, dword ptr [rbp - 4]
	mov	rcx,  qword ptr [word ptr [signals]]
	cmp	dword ptr [rcx + rax*4], 2
	sete	dl
	mov	byte ptr [rbp - 0xc2], dl
.label_685:
	mov	al, byte ptr [rbp - 0xc2]
	xor	ecx, ecx
	mov	esi, ecx
	lea	rdx, [rbp - 0xa0]
	and	al, 1
	mov	byte ptr [rbp - 0xa2], al
	mov	edi, dword ptr [rbp - 4]
	call	sigaction
	mov	dword ptr [rbp - 0xa8], eax
	cmp	dword ptr [rbp - 0xa8], 0
	je	.label_682
	test	byte ptr [rbp - 0xa1], 1
	jne	.label_682
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_689
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc8], esi
	call	gettext
	mov	edi, 0x7d
	mov	ecx, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0xc8]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_682:
	cmp	dword ptr [rbp - 0xa8], 0
	jne	.label_686
	lea	rsi, [rbp - 0xa0]
	xor	eax, eax
	mov	ecx, eax
	mov	eax, 1
	mov	edx, eax
	mov	dil, byte ptr [rbp - 0xa2]
	test	dil, 1
	cmovne	rdx, rcx
	mov	qword ptr [rbp - 0xa0], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rdx, rcx
	call	sigaction
	mov	dword ptr [rbp - 0xa8], eax
	cmp	eax, 0
	je	.label_677
	test	byte ptr [rbp - 0xa1], 1
	jne	.label_677
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_691
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xcc], esi
	call	gettext
	mov	edi, 0x7d
	mov	ecx, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0xcc]
	mov	rdx, rax
	mov	al, 0
	call	error
	.section	.text
	.align	32
	#Procedure 0x407521

	.globl reset_signal_handlers
	.type reset_signal_handlers, @function
reset_signal_handlers:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	dword ptr [rbp - 4], 1
.label_690:
	cmp	dword ptr [rbp - 4], 0x40
	jg	.label_692
	movsxd	rax, dword ptr [rbp - 4]
	mov	rcx,  qword ptr [word ptr [signals]]
	cmp	dword ptr [rcx + rax*4], 0
	jne	.label_678
	jmp	.label_683
.label_677:
	jmp	.label_686
.label_686:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_687
	lea	rsi, [rbp - 0xc0]
	mov	edi, dword ptr [rbp - 4]
	call	sig2str
	mov	dword ptr [rbp - 0xd0], eax
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_693
	movabs	rsi, OFFSET FLAT:label_679
	movabs	rax, OFFSET FLAT:label_174
	movabs	rcx, OFFSET FLAT:label_680
	movabs	rdx, OFFSET FLAT:label_407
	movabs	rdi, OFFSET FLAT:label_681
	lea	r8, [rbp - 0xc0]
	mov	r9,  qword ptr [word ptr [stderr]]
	mov	r10d, dword ptr [rbp - 4]
	mov	r11b, byte ptr [rbp - 0xa2]
	test	r11b, 1
	cmovne	rdx, rdi
	cmp	dword ptr [rbp - 0xa8], 0
	cmovne	rax, rcx
	mov	rdi, r9
	mov	qword ptr [rbp - 0xd8], rdx
	mov	rdx, r8
	mov	ecx, r10d
	mov	r8, qword ptr [rbp - 0xd8]
	mov	r9, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xdc], eax
.label_693:
	jmp	.label_684
.label_684:
	jmp	.label_687
.label_687:
	jmp	.label_683
.label_683:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	.label_690
.label_692:
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40763a
	.globl sub_40763a
	.type sub_40763a, @function
sub_40763a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407640
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_695:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_696
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_695
.label_696:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_697
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_644]],  rax
.label_697:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_694
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_694:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407714
	.globl sub_407714
	.type sub_407714, @function
sub_407714:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407720
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
	#Procedure 0x40773f
	.globl sub_40773f
	.type sub_40773f, @function
sub_40773f:

	nop	
.label_700:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_18
	mov	esi, eax
	call	strcpy
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x20], ecx
	mov	qword ptr [rbp - 0x48], rax
.label_701:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	je	.label_698
	movabs	rsi, OFFSET FLAT:label_699
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 5
	mov	edx, dword ptr [rbp - 0x24]
	mov	rdi, rax
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x4c], eax
.label_698:
	mov	dword ptr [rbp - 4], 0
.label_705:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40779f
	.globl sub_40779f
	.type sub_40779f, @function
sub_40779f:

	nop	dword ptr [rax]
.label_704:
	mov	eax, 2
	mov	ecx, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	sub	esi, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x34], eax
	mov	eax, esi
	mov	dword ptr [rbp - 0x38], edx
	cdq	
	mov	esi, dword ptr [rbp - 0x34]
	idiv	esi
	mov	edi, dword ptr [rbp - 0x38]
	add	edi, eax
	cmp	ecx, edi
	jg	.label_700
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_22
	mov	esi, eax
	call	strcpy
	mov	ecx, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x20], ecx
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_701
	.section	.text
	.align	32
	#Procedure 0x4077ed

	.globl sig2str
	.type sig2str, @function
sig2str:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], 0
.label_702:
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	cmp	rcx, 0x23
	jae	.label_703
	movabs	rax, OFFSET FLAT:numname_table
	mov	ecx, dword ptr [rbp - 0x14]
	mov	edx, ecx
	imul	rdx, rdx, 0xc
	add	rax, rdx
	mov	ecx, dword ptr [rax]
	cmp	ecx, dword ptr [rbp - 8]
	jne	.label_706
	movabs	rax, OFFSET FLAT:numname_table
	mov	rdi, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	edx, ecx
	imul	rdx, rdx, 0xc
	add	rax, rdx
	add	rax, 4
	mov	rsi, rax
	call	strcpy
	mov	dword ptr [rbp - 4], 0
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_705
.label_703:
	call	__libc_current_sigrtmin
	mov	dword ptr [rbp - 0x18], eax
	call	__libc_current_sigrtmax
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax, dword ptr [rbp - 0x18]
	cmp	eax, dword ptr [rbp - 8]
	jg	.label_707
	mov	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 0x1c]
	jle	.label_704
.label_707:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_705
.label_706:
	jmp	.label_708
.label_708:
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_702
	.section	.text
	.align	32
	#Procedure 0x4078b0

	.globl initialize_exit_failure
	.type initialize_exit_failure, @function
initialize_exit_failure:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 1
	je	.label_709
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [dword ptr [exit_failure]],  eax
.label_709:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4078cd
	.globl sub_4078cd
	.type sub_4078cd, @function
sub_4078cd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4078d0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_711
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_714
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_711
.label_714:
	movabs	rdi, OFFSET FLAT:label_713
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_716
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_715
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_710
.label_716:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_282
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_710:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_711:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_712
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_712:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4079b7
	.globl sub_4079b7
	.type sub_4079b7, @function
sub_4079b7:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4079c0

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
	jb	.label_717
	jmp	.label_720
.label_720:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_717
	jmp	.label_718
.label_718:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_719
	jmp	.label_717
.label_717:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_721
.label_719:
	mov	byte ptr [rbp - 1], 0
.label_721:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407a25
	.globl sub_407a25
	.type sub_407a25, @function
sub_407a25:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a30

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
	jge	.label_725
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_722
.label_725:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_726
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_724
.label_726:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_724
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_724:
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
.label_722:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407afe
	.globl sub_407afe
	.type sub_407afe, @function
sub_407afe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x407b00

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
	jne	.label_727
	call	abort
.label_727:
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
	#Procedure 0x407b64
	.globl sub_407b64
	.type sub_407b64, @function
sub_407b64:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b70
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_728
	jmp	.label_730
.label_730:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_729
.label_728:
	mov	byte ptr [rbp - 1], 0
.label_729:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407ba2
	.globl sub_407ba2
	.type sub_407ba2, @function
sub_407ba2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407bb0

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
	ja	.label_731
	jmp	.label_733
.label_733:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_732
.label_731:
	jmp	.label_732
.label_732:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407bfa
	.globl sub_407bfa
	.type sub_407bfa, @function
sub_407bfa:

	nop	word ptr [rax + rax]
.label_736:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_734:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407c12
	.globl sub_407c12
	.type sub_407c12, @function
sub_407c12:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c21

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
	jne	.label_735
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_735:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_736
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_736
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_736
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_734
	.section	.text
	.align	32
	#Procedure 0x407cb0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_737
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_737:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407cda
	.globl sub_407cda
	.type sub_407cda, @function
sub_407cda:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ce0

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
	#Procedure 0x407d05
	.globl sub_407d05
	.type sub_407d05, @function
sub_407d05:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407d10
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
	#Procedure 0x407d37
	.globl sub_407d37
	.type sub_407d37, @function
sub_407d37:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407d40

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
	#Procedure 0x407d72
	.globl sub_407d72
	.type sub_407d72, @function
sub_407d72:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407d80

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
	je	.label_738
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_738:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407dbb
	.globl sub_407dbb
	.type sub_407dbb, @function
sub_407dbb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407dc0

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
	#Procedure 0x407dfe
	.globl sub_407dfe
	.type sub_407dfe, @function
sub_407dfe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x407e00

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
	#Procedure 0x407e33
	.globl sub_407e33
	.type sub_407e33, @function
sub_407e33:

	nop	word ptr cs:[rax + rax]
.label_741:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_739:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_744:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_745
	jmp	.label_740
.label_745:
	jmp	.label_742
.label_742:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_743
.label_740:
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
	#Procedure 0x407ecc
	.globl sub_407ecc
	.type sub_407ecc, @function
sub_407ecc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407ed3

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
.label_743:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_744
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_741
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_739
	.section	.text
	.align	32
	#Procedure 0x407f50
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_746
	jmp	.label_747
.label_747:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_748
.label_746:
	mov	byte ptr [rbp - 1], 0
.label_748:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407f7f
	.globl sub_407f7f
	.type sub_407f7f, @function
sub_407f7f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x407f80

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
	je	.label_749
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_751
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_752
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_750
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_753
.label_752:
	mov	byte ptr [rbp - 5], 0
.label_753:
	jmp	.label_749
.label_749:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407ff3
	.globl sub_407ff3
	.type sub_407ff3, @function
sub_407ff3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408000
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
	#Procedure 0x40802d
	.globl sub_40802d
	.type sub_40802d, @function
sub_40802d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408030

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
	je	.label_754
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_755
.label_754:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_755
.label_755:
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
	#Procedure 0x4080d2
	.globl sub_4080d2
	.type sub_4080d2, @function
sub_4080d2:

	nop	word ptr cs:[rax + rax]
.label_768:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax], 0
	mov	dword ptr [rbp - 0x28], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_756:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	je	.label_757
	mov	eax, dword ptr [rbp - 0x28]
	add	eax, 1
	mov	dword ptr [rbp - 0x28], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 8
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_756
	.section	.text
	.align	32
	#Procedure 0x408122

	.globl parse_split_string
	.type parse_split_string, @function
parse_split_string:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
.label_775:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0x40], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x40]
	movzx	ecx, word ptr [rax + rdx*2]
	and	ecx, 0x2000
	cmp	ecx, 0
	je	.label_765
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_775
.label_765:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_779
	jmp	.label_763
.label_757:
	mov	eax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dword ptr [rcx], 0
.label_763:
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4081b1
	.globl sub_4081b1
	.type sub_4081b1, @function
sub_4081b1:

	nop	
.label_778:
	jmp	.label_770
.label_770:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
.label_766:
	mov	eax, dword ptr [rbp - 0x24]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	eax, dword ptr [rcx]
	jge	.label_768
	movsxd	rax, dword ptr [rbp - 0x24]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, rcx
	add	rdx, 8
	mov	qword ptr [rbp - 0x38], rdx
	mov	qword ptr [rcx], rax
	mov	eax, dword ptr [rbp - 0x24]
	add	eax, 1
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_766
.label_772:
	jmp	.label_770
.label_777:
	jmp	.label_760
.label_760:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	je	.label_778
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 8
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_760
.label_779:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x10]
	sub	ecx, dword ptr [rax]
	mov	esi, ecx
	call	build_argv
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	qword ptr [rbp - 0x38], rax
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_777
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	je	.label_777
	jmp	.label_780
.label_780:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_758
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_774
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
.label_758:
	jmp	.label_759
.label_759:
	jmp	.label_761
.label_761:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_764
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, 8
	mov	qword ptr [rbp - 0x38], rcx
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x58], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_781
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x5c], eax
.label_764:
	jmp	.label_769
.label_769:
	jmp	.label_771
.label_771:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	je	.label_772
	jmp	.label_776
.label_776:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_767
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, 8
	mov	qword ptr [rbp - 0x38], rcx
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x68], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_762
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x6c], eax
.label_767:
	jmp	.label_773
.label_773:
	jmp	.label_771
.label_785:
	mov	byte ptr [rbp - 1], 0
.label_784:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40839e
	.globl sub_40839e
	.type sub_40839e, @function
sub_40839e:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4083a3
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
	jb	.label_782
	jmp	.label_783
.label_783:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_785
	jmp	.label_782
.label_782:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_784
	.section	.text
	.align	32
	#Procedure 0x4083e0

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
	#Procedure 0x408400

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
	je	.label_786
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
.label_786:
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
	#Procedure 0x408564
	.globl sub_408564
	.type sub_408564, @function
sub_408564:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408570
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
	#Procedure 0x408598
	.globl sub_408598
	.type sub_408598, @function
sub_408598:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408605
	.globl sub_408605
	.type sub_408605, @function
sub_408605:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408612
	.globl sub_408612
	.type sub_408612, @function
sub_408612:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408636
	.globl sub_408636
	.type sub_408636, @function
sub_408636:

	nop	word ptr cs:[rax + rax]
