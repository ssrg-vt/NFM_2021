	.section	.text
	.align	32
	#Procedure 0x4015e9
	.globl sub_4015e9
	.type sub_4015e9, @function
sub_4015e9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x4015ea
	.globl sub_4015ea
	.type sub_4015ea, @function
sub_4015ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401622
	.globl sub_401622
	.type sub_401622, @function
sub_401622:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40166a
	.globl sub_40166a
	.type sub_40166a, @function
sub_40166a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40168c
	.globl sub_40168c
	.type sub_40168c, @function
sub_40168c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40169d
	.globl sub_40169d
	.type sub_40169d, @function
sub_40169d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4016b6
	.globl sub_4016b6
	.type sub_4016b6, @function
sub_4016b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4016c0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4016ca
	.globl sub_4016ca
	.type sub_4016ca, @function
sub_4016ca:

	nop	word ptr [rax + rax]
.label_9:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4016d6
	.globl sub_4016d6
	.type sub_4016d6, @function
sub_4016d6:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4016db
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_9
	test	rdx, rdx
	je	.label_9
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401700

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
	je	.label_10
	mov	edx, OFFSET FLAT:label_20
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_26
.label_10:
	mov	edx, OFFSET FLAT:label_27
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_26:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
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
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_15
	jmp	qword ptr [(r12 * 8) + label_16]
.label_382:
	add	rsp, 8
	jmp	.label_13
.label_15:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
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
	jmp	.label_13
.label_383:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
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
.label_384:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
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
.label_385:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
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
.label_386:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
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
	jmp	.label_13
.label_387:
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
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_13
.label_388:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
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
	jmp	.label_13
.label_389:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
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
	jmp	.label_13
.label_391:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
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
	jmp	.label_13
.label_390:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
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
.label_13:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x401a58
	.globl sub_401a58
	.type sub_401a58, @function
sub_401a58:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a60

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x208
	mov	rbp, rsi
	mov	ebx, edi
	mov	edi, OFFSET FLAT:label_62
	call	getenv
	test	rax, rax
	setne	r14b
	mov	rdi, qword ptr [rbp]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_78
	call	setlocale
	mov	edi, OFFSET FLAT:label_81
	mov	esi, OFFSET FLAT:label_82
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_81
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	jmp	.label_76
	.section	.text
	.align	32
	#Procedure 0x401ac4
	.globl sub_401ac4
	.type sub_401ac4, @function
sub_401ac4:

	nop	word ptr cs:[rax + rax]
.label_101:
	xor	r14d, r14d
.label_76:
	mov	edx, OFFSET FLAT:label_94
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebx
	mov	rsi, rbp
	call	getopt_long
	cmp	eax, 0x4b
	jle	.label_99
	mov	r14b, 1
	cmp	eax, 0x4c
	je	.label_76
	cmp	eax, 0x50
	je	.label_101
	jmp	.label_44
.label_99:
	cmp	eax, -1
	jne	.label_29
	cmp	dword ptr [rip + optind],  ebx
	jge	.label_32
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_35
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_32:
	test	r14b, r14b
	je	.label_46
	mov	edi, OFFSET FLAT:label_53
	call	getenv
	mov	rbx, rax
	test	rbx, rbx
	je	.label_46
	cmp	byte ptr [rbx], 0x2f
	jne	.label_46
	mov	esi, OFFSET FLAT:label_59
	mov	rdi, rbx
	jmp	.label_60
	.section	.text
	.align	32
	#Procedure 0x401b66
	.globl sub_401b66
	.type sub_401b66, @function
sub_401b66:

	nop	word ptr cs:[rax + rax]
.label_79:
	inc	rax
	mov	esi, OFFSET FLAT:label_59
	mov	rdi, rax
.label_60:
	call	strstr
	test	rax, rax
	je	.label_97
	movzx	ecx, byte ptr [rax + 2]
	cmp	cl, 0x2e
	jne	.label_70
	movzx	ecx, byte ptr [rax + 3]
.label_70:
	test	cl, cl
	je	.label_46
	cmp	cl, 0x2f
	jne	.label_79
	jmp	.label_46
.label_97:
	lea	rdx, [rsp + 0x178]
	mov	edi, 1
	mov	rsi, rbx
	call	__xstat
	test	eax, eax
	jne	.label_46
	lea	rdx, [rsp + 0xe8]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_55
	call	__xstat
	test	eax, eax
	jne	.label_46
	mov	rax, qword ptr [rsp + 0x180]
	cmp	rax, qword ptr [rsp + 0xf0]
	jne	.label_46
	mov	rax, qword ptr [rsp + 0x178]
	cmp	rax, qword ptr [rsp + 0xe8]
	jne	.label_46
	mov	rdi, rbx
	call	puts
	jmp	.label_102
.label_46:
	call	xgetcwd
	mov	rbx, rax
	test	rbx, rbx
	je	.label_31
	mov	rdi, rbx
	call	puts
	mov	rdi, rbx
	jmp	.label_36
.label_31:
	mov	edi, 0x18
	call	xmalloc
	mov	rbx, rax
	mov	qword ptr [rbx + 8], 0x2000
	mov	edi, 0x2000
	call	xmalloc
	mov	qword ptr [rbx], rax
	lea	rbp, [rax + 0x1fff]
	mov	qword ptr [rbx + 0x10], rbp
	mov	byte ptr [rax + 0x1fff], 0
	lea	rdi, [rsp + 0x48]
	call	get_root_dev_ino
	mov	r13, rax
	test	r13, r13
	je	.label_61
	mov	qword ptr [rsp + 0x18], rbp
	mov	qword ptr [rsp + 0x10], rbx
	lea	rdx, [rsp + 0x58]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_55
	call	__xstat
	test	eax, eax
	js	.label_72
	mov	ebp, 1
	lea	r12, [rsp + 0x178]
	jmp	.label_77
	.section	.text
	.align	32
	#Procedure 0x401c9e
	.globl sub_401c9e
	.type sub_401c9e, @function
sub_401c9e:

	nop	
.label_87:
	inc	rbp
	mov	edx, 0x90
	lea	rdi, [rsp + 0x58]
	mov	rsi, r12
	call	memcpy
.label_77:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	rax, qword ptr [r13]
	jne	.label_88
	mov	rax, qword ptr [rsp + 0x58]
	cmp	rax, qword ptr [r13 + 8]
	je	.label_90
.label_88:
	mov	qword ptr [rsp + 8], rbp
	mov	edi, OFFSET FLAT:label_33
	call	opendir
	mov	r15, rax
	test	r15, r15
	je	.label_95
	mov	rdi, r15
	call	dirfd
	mov	ebp, eax
	test	ebp, ebp
	js	.label_100
	mov	edi, ebp
	call	fchdir
	jmp	.label_103
	.section	.text
	.align	32
	#Procedure 0x401d01
	.globl sub_401d01
	.type sub_401d01, @function
sub_401d01:

	nop	word ptr cs:[rax + rax]
.label_100:
	mov	edi, OFFSET FLAT:label_33
	call	chdir
.label_103:
	test	eax, eax
	js	.label_38
	mov	edi, 1
	test	ebp, ebp
	js	.label_41
	mov	esi, ebp
	mov	rdx, r12
	call	__fxstat
	jmp	.label_47
	.section	.text
	.align	32
	#Procedure 0x401d37
	.globl sub_401d37
	.type sub_401d37, @function
sub_401d37:

	nop	word ptr [rax + rax]
.label_41:
	mov	esi, OFFSET FLAT:label_55
	mov	rdx, r12
	call	__xstat
.label_47:
	test	eax, eax
	js	.label_56
	mov	rbp, qword ptr [rsp + 0x178]
	mov	rbx, qword ptr [rsp + 0x58]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	mov	rdi, r15
	call	readdir
	test	rax, rax
	je	.label_40
	cmp	rbp, rbx
	je	.label_65
	jmp	.label_63
.label_96:
	mov	rbp, rax
	jmp	.label_58
.label_84:
	test	rbp, rbp
	je	.label_40
.label_58:
	lea	rsi, [rbp + 0x13]
	mov	edi, 1
	lea	rdx, [rsp + 0xe8]
	call	__lxstat
	test	eax, eax
	js	.label_54
	mov	rax, qword ptr [rsp + 0xf0]
	cmp	rax, qword ptr [rsp + 0x60]
	jne	.label_54
	mov	rax, qword ptr [rsp + 0xe8]
	cmp	rax, qword ptr [rsp + 0x58]
	je	.label_57
.label_54:
	mov	dword ptr [r14], 0
	jmp	.label_43
.label_63:
	cmp	byte ptr [rax + 0x13], 0x2e
	jne	.label_96
	xor	ecx, ecx
	cmp	byte ptr [rax + 0x14], 0x2e
	sete	cl
	movzx	ecx, byte ptr [rax + rcx + 0x14]
	cmp	cl, 0x2f
	cmove	rax, rbp
	test	cl, cl
	cmovne	rbp, rax
	cmp	cl, 0x2f
	je	.label_43
	test	cl, cl
	jne	.label_84
.label_43:
	mov	rdi, r15
	call	readdir
	test	rax, rax
	jne	.label_63
	jmp	.label_40
.label_51:
	mov	rbp, rax
	jmp	.label_37
.label_71:
	test	rbp, rbp
	je	.label_40
.label_37:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	jne	.label_34
	lea	rsi, [rbp + 0x13]
	mov	edi, 1
	lea	rdx, [rsp + 0xe8]
	call	__lxstat
	test	eax, eax
	js	.label_75
	mov	rax, qword ptr [rsp + 0xf0]
.label_34:
	cmp	rax, qword ptr [rsp + 0x60]
	je	.label_57
.label_75:
	mov	dword ptr [r14], 0
	jmp	.label_64
	.section	.text
	.align	32
	#Procedure 0x401e5e
	.globl sub_401e5e
	.type sub_401e5e, @function
sub_401e5e:

	nop	
.label_65:
	cmp	byte ptr [rax + 0x13], 0x2e
	jne	.label_51
	xor	ecx, ecx
	cmp	byte ptr [rax + 0x14], 0x2e
	sete	cl
	movzx	ecx, byte ptr [rax + rcx + 0x14]
	cmp	cl, 0x2f
	cmove	rax, rbp
	test	cl, cl
	cmovne	rbp, rax
	cmp	cl, 0x2f
	je	.label_64
	test	cl, cl
	jne	.label_71
.label_64:
	mov	rdi, r15
	call	readdir
	test	rax, rax
	jne	.label_65
.label_40:
	mov	ebx, dword ptr [r14]
	test	ebx, ebx
	jne	.label_80
	xor	ebp, ebp
.label_39:
	mov	rdi, r15
	call	closedir
	test	eax, eax
	jne	.label_85
	test	bpl, bpl
	mov	rbp, qword ptr [rsp + 8]
	jne	.label_87
	jmp	.label_83
.label_57:
	add	rbp, 0x13
	mov	rdi, rbp
	call	strlen
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rsi, rdx
	sub	rsi, rcx
	lea	rbx, [rax + 1]
	cmp	rsi, rbx
	jae	.label_45
	mov	qword ptr [rsp + 0x38], rsi
	mov	qword ptr [rsp + 0x40], rcx
	mov	qword ptr [rsp + 0x18], rax
	mov	rax, qword ptr [rdi + 8]
	mov	qword ptr [rsp + 0x30], rax
	add	rbx, rax
	movabs	rax, 0x3fffffffffffffff
	cmp	rbx, rax
	ja	.label_86
	lea	rdi, [rbx + rbx]
	mov	qword ptr [rsp + 0x28], rdi
	call	xmalloc
	mov	qword ptr [rsp + 0x20], rax
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x30]
	sub	rdx, rsi
	lea	rdi, [rax + rbx*2]
	sub	rdi, rdx
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 0x10], rdi
	mov	rbx, qword ptr [rsp + 0x40]
	add	rsi, rbx
	call	memcpy
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rdi + 8], rax
	mov	rdx, qword ptr [rdi + 0x10]
	mov	rax, qword ptr [rsp + 0x18]
.label_45:
	mov	rsi, rax
	not	rsi
	lea	rcx, [rdx + rsi]
	mov	qword ptr [rdi + 0x10], rcx
	mov	byte ptr [rdx + rsi], 0x2f
	mov	rcx, qword ptr [rdi + 0x10]
	mov	qword ptr [rsp + 0x18], rcx
	lea	rdi, [rcx + 1]
	mov	rsi, rbp
	mov	rdx, rax
	call	memcpy
	mov	bpl, 1
	jmp	.label_39
.label_90:
	mov	rbx, qword ptr [rsp + 0x18]
	cmp	byte ptr [rbx], 0
	je	.label_89
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_91
.label_89:
	mov	rbp, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rbp]
	cmp	rbx, r14
	jne	.label_92
	mov	r12, qword ptr [rbp + 8]
	lea	r13, [r12 + 1]
	movabs	rax, 0x3fffffffffffffff
	cmp	r13, rax
	ja	.label_30
	lea	rdi, [r13 + r13]
	mov	qword ptr [rsp + 8], rdi
	call	xmalloc
	mov	r15, rax
	lea	rbx, [r15 + r13*2]
	sub	rbx, r12
	mov	qword ptr [rbp + 0x10], rbx
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r12
	call	memcpy
	mov	rdi, r14
	call	free
	mov	qword ptr [rbp], r15
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbp + 8], rax
.label_92:
	lea	rax, [rbx - 1]
	mov	qword ptr [rbp + 0x10], rax
	mov	byte ptr [rbx - 1], 0x2f
	mov	rbx, qword ptr [rbp + 0x10]
.label_91:
	mov	rdi, rbx
	call	puts
	mov	rdi, qword ptr [rbp]
	call	free
	mov	rdi, rbp
.label_36:
	call	free
.label_102:
	xor	eax, eax
	add	rsp, 0x208
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_56:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_68
	jmp	.label_67
.label_83:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_52
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, rbp
	call	nth_parent
	mov	rdi, rax
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_95:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_66
	jmp	.label_67
.label_38:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_93
	jmp	.label_67
.label_80:
	mov	rdi, r15
	call	closedir
	mov	dword ptr [r14], ebx
.label_85:
	mov	r14d, dword ptr [r14]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_98
.label_67:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, qword ptr [rsp + 8]
	call	nth_parent
	mov	rdi, rax
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
.label_29:
	cmp	eax, 0xffffff7d
	je	.label_42
	cmp	eax, 0xffffff7e
	jne	.label_44
	xor	edi, edi
	call	usage
.label_42:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_48
	mov	edx, OFFSET FLAT:label_49
	mov	r8d, OFFSET FLAT:label_50
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_44:
	mov	edi, 1
	call	usage
.label_61:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_73
	jmp	.label_74
.label_72:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_68
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_55
.label_74:
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_86:
	call	xalloc_die
.label_30:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4021e0

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
	je	.label_104
	cmp	r15, -2
	jb	.label_104
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_104
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_104:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402236
	.globl sub_402236
	.type sub_402236, @function
sub_402236:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402240

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_105
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_106
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402270
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
	#Procedure 0x4022a3
	.globl sub_4022a3
	.type sub_4022a3, @function
sub_4022a3:

	nop	word ptr cs:[rax + rax]
.label_107:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4022b5
	.globl sub_4022b5
	.type sub_4022b5, @function
sub_4022b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4022c4
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
	je	.label_107
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
	.section	.text
	.align	32
	#Procedure 0x402320
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_108]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_109]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_110]
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
	.align	32
	#Procedure 0x40238e
	.globl sub_40238e
	.type sub_40238e, @function
sub_40238e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402390

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_111
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_113
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_111
.label_113:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_111
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_112
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_112:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_111:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x402404
	.globl sub_402404
	.type sub_402404, @function
sub_402404:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402410

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_114
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_114
	test	byte ptr [rbx + 1], 1
	je	.label_114
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_114:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x402443
	.globl sub_402443
	.type sub_402443, @function
sub_402443:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402450

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_122
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_124
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_129
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_127
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_130
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_131
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_118
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_116
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_48
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_121
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_49
	mov	ecx, OFFSET FLAT:label_125
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_117
	mov	esi, OFFSET FLAT:label_120
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_117
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_117:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_115
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_125
	mov	ecx, OFFSET FLAT:label_48
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_128
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_48
	mov	ecx, OFFSET FLAT:label_126
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_122:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_123
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
	.align	32
	#Procedure 0x402653
	.globl sub_402653
	.type sub_402653, @function
sub_402653:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402660

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_142
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_144
.label_142:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_144:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_133
	cmp	r10d, 0x29
	jae	.label_141
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_143
.label_141:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_143:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_133
	cmp	r10d, 0x29
	jae	.label_139
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_140
.label_139:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_140:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_133
	cmp	r10d, 0x29
	jae	.label_137
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_138
.label_137:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_138:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_133
	cmp	r10d, 0x29
	jae	.label_135
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_136
.label_135:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_136:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_133
	cmp	r10d, 0x29
	jae	.label_132
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_134
.label_132:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_134:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_133
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_133
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_133
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_133
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_133:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x402842
	.globl sub_402842
	.type sub_402842, @function
sub_402842:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402850
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_108]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_109]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_110]
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
	.align	32
	#Procedure 0x4028bf
	.globl sub_4028bf
	.type sub_4028bf, @function
sub_4028bf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4028c0
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
	je	.label_146
	test	r14, r14
	je	.label_145
.label_146:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_145:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4028f6
	.globl sub_4028f6
	.type sub_4028f6, @function
sub_4028f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402900
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_108]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_109]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_110]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_147
	test	rsi, rsi
	je	.label_147
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
.label_147:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40296c
	.globl sub_40296c
	.type sub_40296c, @function
sub_40296c:

	nop	dword ptr [rax]
.label_148:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402975
	.globl sub_402975
	.type sub_402975, @function
sub_402975:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40297b
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_108]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_109]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_110]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_148
	test	rdx, rdx
	je	.label_148
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	32
	#Procedure 0x4029e0

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
	.align	32
	#Procedure 0x4029f9
	.globl sub_4029f9
	.type sub_4029f9, @function
sub_4029f9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402a00
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_149
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_151:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_151
.label_149:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_152
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_153], OFFSET FLAT:slot0
.label_152:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_150
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_150:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a91
	.globl sub_402a91
	.type sub_402a91, @function
sub_402a91:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402aa0
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
	je	.label_154
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
.label_154:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402b08
	.globl sub_402b08
	.type sub_402b08, @function
sub_402b08:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b10

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
	jne	.label_155
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_155
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_156
.label_155:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_156:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_157
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_157:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b7e
	.globl sub_402b7e
	.type sub_402b7e, @function
sub_402b7e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402b80
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
	je	.label_158
	mov	qword ptr [rax], rbx
.label_158:
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
	#Procedure 0x402c6c
	.globl sub_402c6c
	.type sub_402c6c, @function
sub_402c6c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402c70
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_108]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_109]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_110]
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
	.align	32
	#Procedure 0x402cc4
	.globl sub_402cc4
	.type sub_402cc4, @function
sub_402cc4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402cd0

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	push	rbx
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_160
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_159
.label_160:
	mov	rax, rbx
	pop	rbx
	ret	
.label_159:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402cf6
	.globl sub_402cf6
	.type sub_402cf6, @function
sub_402cf6:

	nop	word ptr cs:[rax + rax]
.label_162:
	mov	ecx, 1
.label_161:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x402d10
	.globl sub_402d10
	.type sub_402d10, @function
sub_402d10:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d15

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_162
	test	rsi, rsi
	mov	ecx, 1
	je	.label_161
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_161
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402d50

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_163
	test	rax, rax
	je	.label_164
.label_163:
	pop	rbx
	ret	
.label_164:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402d6a
	.globl sub_402d6a
	.type sub_402d6a, @function
sub_402d6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d70

	.globl nth_parent
	.type nth_parent, @function
nth_parent:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	movabs	rax, 0x2aaaaaaaaaaaaaab
	cmp	rbx, rax
	jae	.label_168
	lea	r14, [rbx + rbx*2]
	mov	rdi, r14
	call	xmalloc
	test	rbx, rbx
	mov	rcx, rax
	je	.label_169
	lea	rdx, [rbx - 1]
	mov	ecx, ebx
	and	ecx, 7
	cmp	rdx, 7
	mov	rdx, rax
	jb	.label_167
	mov	rsi, rcx
	sub	rsi, rbx
	mov	rdx, rax
	nop	dword ptr [rax]
.label_165:
	mov	byte ptr [rdx + 2], 0x2f
	mov	word ptr [rdx], 0x2e2e
	mov	byte ptr [rdx + 5], 0x2f
	mov	word ptr [rdx + 3], 0x2e2e
	mov	byte ptr [rdx + 8], 0x2f
	mov	word ptr [rdx + 6], 0x2e2e
	mov	byte ptr [rdx + 0xb], 0x2f
	mov	word ptr [rdx + 9], 0x2e2e
	mov	byte ptr [rdx + 0xe], 0x2f
	mov	word ptr [rdx + 0xc], 0x2e2e
	mov	byte ptr [rdx + 0x11], 0x2f
	mov	word ptr [rdx + 0xf], 0x2e2e
	mov	byte ptr [rdx + 0x14], 0x2f
	mov	word ptr [rdx + 0x12], 0x2e2e
	mov	byte ptr [rdx + 0x17], 0x2f
	mov	word ptr [rdx + 0x15], 0x2e2e
	add	rdx, 0x18
	add	rsi, 8
	jne	.label_165
.label_167:
	test	rcx, rcx
	je	.label_170
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_166:
	mov	byte ptr [rdx + 2], 0x2f
	mov	word ptr [rdx], 0x2e2e
	add	rdx, 3
	inc	rcx
	jne	.label_166
.label_170:
	mov	rcx, rax
	add	rcx, r14
.label_169:
	mov	byte ptr [rcx - 1], 0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_168:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402e59
	.globl sub_402e59
	.type sub_402e59, @function
sub_402e59:

	nop	dword ptr [rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402e60

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_172
	cmp	byte ptr [rax], 0x43
	jne	.label_174
	cmp	byte ptr [rax + 1], 0
	je	.label_171
.label_174:
	mov	esi, OFFSET FLAT:label_173
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_172
.label_171:
	xor	ebx, ebx
.label_172:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402e91
	.globl sub_402e91
	.type sub_402e91, @function
sub_402e91:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ea0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x402eae
	.globl sub_402eae
	.type sub_402eae, @function
sub_402eae:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402eb0

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
	js	.label_178
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_181
	cmp	r12d, 0x7fffffff
	je	.label_176
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
	jne	.label_179
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_179:
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
.label_181:
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
	jbe	.label_177
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_180
.label_177:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_175
	mov	rdi, r14
	call	free
.label_175:
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
.label_180:
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
.label_178:
	call	abort
.label_176:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40306d
	.globl sub_40306d
	.type sub_40306d, @function
sub_40306d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403070
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_182
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_183
	test	rbx, rbx
	jne	.label_183
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_182:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4030a4
	.globl sub_4030a4
	.type sub_4030a4, @function
sub_4030a4:

	nop	dword ptr [rax + rax]
.label_183:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_184
	test	rax, rax
	je	.label_182
.label_184:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4030c0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_78
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_185
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4030e5
	.globl sub_4030e5
	.type sub_4030e5, @function
sub_4030e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030f0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_188
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_190
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_187
	call	free
	xor	eax, eax
	jmp	.label_189
.label_190:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403127
	.globl sub_403127
	.type sub_403127, @function
sub_403127:

	nop	word ptr cs:[rax + rax]
.label_186:
	call	xalloc_die
.label_188:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_186
	mov	qword ptr [rsi], rbx
.label_187:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_189
	test	rax, rax
	je	.label_186
.label_189:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403160
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x403171
	.globl sub_403171
	.type sub_403171, @function
sub_403171:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403180

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_191
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_191:
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
	#Procedure 0x403203
	.globl sub_403203
	.type sub_403203, @function
sub_403203:

	nop	word ptr cs:[rax + rax]
.label_193:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_194
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_195:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_192
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_193
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_106
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_196:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x40328d

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_197
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_195
	cmp	dword ptr [rbp], 0x20
	jne	.label_195
.label_197:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_196
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4032d0
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
	.align	32
	#Procedure 0x4032e8
	.globl sub_4032e8
	.type sub_4032e8, @function
sub_4032e8:

	nop	dword ptr [rax + rax]
.label_198:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4032f5
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_108]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_109]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_110]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_198
	test	rsi, rsi
	je	.label_198
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_201:
	call	xalloc_die
.label_199:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_200
	test	rax, rax
	je	.label_201
.label_200:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403379

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_199
	test	rbx, rbx
	jne	.label_199
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403390
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_202
	call	rpl_calloc
	test	rax, rax
	je	.label_202
	pop	rcx
	ret	
.label_202:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4033b6
	.globl sub_4033b6
	.type sub_4033b6, @function
sub_4033b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033c0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4033ca
	.globl sub_4033ca
	.type sub_4033ca, @function
sub_4033ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033d0
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
	.align	32
	#Procedure 0x403491
	.globl sub_403491
	.type sub_403491, @function
sub_403491:

	nop	word ptr cs:[rax + rax]
.label_203:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4034a5
	.globl sub_4034a5
	.type sub_4034a5, @function
sub_4034a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034b3
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
	je	.label_204
	test	r15, r15
	je	.label_203
.label_204:
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
	.align	32
	#Procedure 0x4034f0
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
	.align	32
	#Procedure 0x403565
	.globl sub_403565
	.type sub_403565, @function
sub_403565:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403570
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
	#Procedure 0x403583
	.globl sub_403583
	.type sub_403583, @function
sub_403583:

	nop	word ptr cs:[rax + rax]
.label_205:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403595
	.globl sub_403595
	.type sub_403595, @function
sub_403595:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4035a0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_205
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_206
	test	rax, rax
	je	.label_205
.label_206:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4035d0
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
	#Procedure 0x403606
	.globl sub_403606
	.type sub_403606, @function
sub_403606:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403610

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
	je	.label_207
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
.label_207:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403678
	.globl sub_403678
	.type sub_403678, @function
sub_403678:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403680
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x403688
	.globl sub_403688
	.type sub_403688, @function
sub_403688:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403690
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
	.align	32
	#Procedure 0x4036a9
	.globl sub_4036a9
	.type sub_4036a9, @function
sub_4036a9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4036b0

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_73
	call	__lxstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_208
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
.label_208:
	add	rsp, 0x90
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4036f2
	.globl sub_4036f2
	.type sub_4036f2, @function
sub_4036f2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403700

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_209
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_211
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_213
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_211
	mov	esi, OFFSET FLAT:label_212
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_214
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_214:
	mov	rbx, r14
.label_211:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_209:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_210
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4037a1
	.globl sub_4037a1
	.type sub_4037a1, @function
sub_4037a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4037b0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_215
	test	rax, rax
	je	.label_216
.label_215:
	pop	rbx
	ret	
.label_216:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4037ca
	.globl sub_4037ca
	.type sub_4037ca, @function
sub_4037ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4037d0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_220
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_223
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_218
.label_223:
	call	xalloc_die
.label_220:
	test	rcx, rcx
	jne	.label_219
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_219:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_221
.label_218:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_217
	test	rbx, rbx
	jne	.label_217
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_217:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_222
	test	rax, rax
	je	.label_223
.label_222:
	pop	rbx
	ret	
.label_221:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403867
	.globl sub_403867
	.type sub_403867, @function
sub_403867:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403870
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_224
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_225
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_227
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_49
	mov	ecx, OFFSET FLAT:label_125
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_226
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x4038e4
	.globl sub_4038e4
	.type sub_4038e4, @function
sub_4038e4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4038f0
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
	je	.label_228
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
.label_228:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403985
	.globl sub_403985
	.type sub_403985, @function
sub_403985:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403990

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
	#Procedure 0x4039a7
	.globl sub_4039a7
	.type sub_4039a7, @function
sub_4039a7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4039b0

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
	je	.label_229
	test	r15, r15
	je	.label_230
.label_229:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_230:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4039ec
	.globl sub_4039ec
	.type sub_4039ec, @function
sub_4039ec:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4039f0
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
	.align	32
	#Procedure 0x403a08
	.globl sub_403a08
	.type sub_403a08, @function
sub_403a08:

	nop	dword ptr [rax + rax]
.label_235:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_231
	mov	eax, OFFSET FLAT:label_232
	jmp	.label_233
	.section	.text
	.align	32
	#Procedure 0x403a1f
	.globl sub_403a1f
	.type sub_403a1f, @function
sub_403a1f:

	nop	word ptr cs:[rax + rax]
.label_240:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_234
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_234
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_234
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_234
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_234
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_234
	cmp	byte ptr [rax + 7], 0
	je	.label_235
.label_234:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_236
	mov	eax, OFFSET FLAT:label_237
.label_233:
	cmove	rax, rcx
.label_241:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403a72

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
	jne	.label_241
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_240
	cmp	ecx, 0x55
	jne	.label_234
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_234
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_234
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_234
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_234
	cmp	byte ptr [rax + 5], 0
	jne	.label_234
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_238
	mov	eax, OFFSET FLAT:label_239
	jmp	.label_233
.label_242:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403ae5
	.globl sub_403ae5
	.type sub_403ae5, @function
sub_403ae5:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403ae9
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
	je	.label_242
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
	.section	.text
	.align	32
	#Procedure 0x403b50
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
	#Procedure 0x403b5f
	.globl sub_403b5f
	.type sub_403b5f, @function
sub_403b5f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403b60
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_108]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_109]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_110]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_243
	test	rdx, rdx
	je	.label_243
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_243:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403bce
	.globl sub_403bce
	.type sub_403bce, @function
sub_403bce:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403bd0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x403bd8
	.globl sub_403bd8
	.type sub_403bd8, @function
sub_403bd8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403be0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_108]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_109]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_110]
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
	.align	32
	#Procedure 0x403c35
	.globl sub_403c35
	.type sub_403c35, @function
sub_403c35:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c40

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
	jne	.label_245
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_244
	test	cl, cl
	jne	.label_244
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_244
.label_245:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_244
	call	__errno_location
	mov	dword ptr [rax], 0
.label_244:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ca0

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
	jmp	.label_313
	.section	.text
	.align	32
	#Procedure 0x403d4f
	.globl sub_403d4f
	.type sub_403d4f, @function
sub_403d4f:

	nop	
.label_354:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_337
	or	al, dl
	jne	.label_337
	test	dil, 1
	jne	.label_352
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_337
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_313
	jmp	.label_337
.label_426:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_357
	test	rbp, rbp
	je	.label_290
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_290:
	mov	r14d, 1
	jmp	.label_362
.label_427:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_236
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_309
.label_357:
	xor	r14d, r14d
.label_362:
	mov	eax, OFFSET FLAT:label_236
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_247
	.section	.text
	.align	32
	#Procedure 0x403e1f
	.globl sub_403e1f
	.type sub_403e1f, @function
sub_403e1f:

	nop	
.label_313:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_257
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_265]
.label_428:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_272
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_237
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_429:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_286
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_286
	xor	r14d, r14d
	nop	
.label_336:
	cmp	r14, rbp
	jae	.label_292
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_292:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_336
.label_286:
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
	jmp	.label_309
.label_421:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_309
.label_424:
	mov	al, 1
.label_422:
	mov	r12b, 1
.label_425:
	test	r12b, 1
	mov	cl, 1
	je	.label_321
	mov	ecx, eax
.label_321:
	mov	al, cl
.label_423:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_324
	test	rbp, rbp
	je	.label_330
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_330:
	mov	r14d, 1
	jmp	.label_332
.label_324:
	xor	r14d, r14d
.label_332:
	mov	ecx, OFFSET FLAT:label_237
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_247:
	mov	sil, r12b
.label_309:
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
	jmp	.label_342
	.section	.text
	.align	32
	#Procedure 0x403fe1
	.globl sub_403fe1
	.type sub_403fe1, @function
sub_403fe1:

	nop	word ptr cs:[rax + rax]
.label_345:
	inc	r12
.label_342:
	cmp	r11, -1
	je	.label_367
	cmp	r12, r11
	jne	.label_369
	jmp	.label_370
	.section	.text
	.align	32
	#Procedure 0x404003
	.globl sub_404003
	.type sub_404003, @function
sub_404003:

	nop	word ptr cs:[rax + rax]
.label_367:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_364
.label_369:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_258
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_268
	cmp	r11, -1
	jne	.label_268
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_268:
	cmp	rbx, r11
	jbe	.label_276
.label_258:
	xor	esi, esi
.label_291:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_278
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_282]
.label_438:
	test	r12, r12
	jne	.label_300
	jmp	.label_289
	.section	.text
	.align	32
	#Procedure 0x404096
	.globl sub_404096
	.type sub_404096, @function
sub_404096:

	nop	word ptr cs:[rax + rax]
.label_276:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_302
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_291
	jmp	.label_251
.label_302:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_291
.label_442:
	xor	eax, eax
	cmp	r11, -1
	je	.label_315
	test	r12, r12
	jne	.label_319
	cmp	r11, 1
	je	.label_289
	xor	r13d, r13d
	jmp	.label_263
.label_431:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_326
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_251
	cmp	r8d, 2
	jne	.label_334
	mov	eax, r9d
	and	al, 1
	jne	.label_334
	cmp	r14, rbp
	jae	.label_335
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_335:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_338
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_338:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_346
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_346:
	add	r14, 3
	mov	r9b, 1
.label_334:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_351
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_351:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_314
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_314
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_314
	cmp	r14, rbp
	jae	.label_287
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_287:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_311
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_311:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_263
.label_432:
	mov	bl, 0x62
	jmp	.label_249
.label_433:
	mov	cl, 0x74
	jmp	.label_279
.label_434:
	mov	bl, 0x76
	jmp	.label_249
.label_435:
	mov	bl, 0x66
	jmp	.label_249
.label_436:
	mov	cl, 0x72
	jmp	.label_279
.label_439:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_255
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_262
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
	jae	.label_266
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_266:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_280
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_280:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_285
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_285:
	add	r14, 3
	xor	r9d, r9d
.label_255:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_263
.label_440:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_295
	cmp	r8d, 2
	jne	.label_300
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_300
	jmp	.label_262
.label_441:
	cmp	r8d, 2
	jne	.label_306
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_262
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_331
.label_278:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_312
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_323
.label_315:
	test	r12, r12
	jne	.label_333
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_333
.label_289:
	mov	dl, 1
.label_437:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_262
	xor	eax, eax
	mov	r13b, dl
.label_263:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_344
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_347
	jmp	.label_348
	.section	.text
	.align	32
	#Procedure 0x404374
	.globl sub_404374
	.type sub_404374, @function
sub_404374:

	nop	word ptr cs:[rax + rax]
.label_344:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_348
.label_347:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_368
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_356
	.section	.text
	.align	32
	#Procedure 0x4043ad
	.globl sub_4043ad
	.type sub_4043ad, @function
sub_4043ad:

	nop	dword ptr [rax]
.label_348:
	test	sil, sil
.label_356:
	mov	ebx, r15d
	je	.label_293
	jmp	.label_359
.label_368:
	mov	ebx, r15d
	jmp	.label_359
.label_326:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_345
	xor	r15d, r15d
	jmp	.label_300
.label_306:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_279
	xor	eax, eax
	mov	r15b, 0x5c
.label_331:
	xor	r13d, r13d
	jmp	.label_293
.label_279:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_262
.label_249:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_263
	nop	
.label_359:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_251
	cmp	r8d, 2
	jne	.label_256
	mov	eax, r9d
	and	al, 1
	jne	.label_256
	cmp	r14, rbp
	jae	.label_260
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_260:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_267
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_267:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_271
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_271:
	add	r14, 3
	mov	r9b, 1
.label_256:
	cmp	r14, rbp
	jae	.label_277
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_277:
	inc	r14
	jmp	.label_297
.label_312:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_284
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_284:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_353
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_349:
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
	je	.label_307
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_316
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_296
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_328
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_283:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_366
	bt	rsi, rdx
	jb	.label_262
.label_366:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_283
.label_328:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_350
	xor	r13d, r13d
.label_350:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_349
	jmp	.label_318
.label_314:
	xor	r13d, r13d
	jmp	.label_263
.label_333:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_263
.label_295:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_300
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_300
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_300
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_365
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_363
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_250
	cmp	r14, rbp
	jae	.label_253
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_253:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_259
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_259:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_343
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_343:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_264
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_264:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_363:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_263
.label_300:
	xor	eax, eax
.label_319:
	xor	r13d, r13d
	jmp	.label_263
.label_353:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_360:
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
	je	.label_303
	cmp	rbp, -1
	je	.label_305
	cmp	rbp, -2
	je	.label_307
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_310
	xor	r13d, r13d
.label_310:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_360
	jmp	.label_318
.label_307:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_327
	lea	rax, [r10 + r12]
.label_320:
	cmp	byte ptr [rax + rsi], 0
	je	.label_327
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_320
.label_327:
	mov	qword ptr [rsp + 0x40], rsi
.label_316:
	xor	r13d, r13d
	jmp	.label_296
.label_305:
	xor	r13d, r13d
.label_303:
	mov	r10, qword ptr [rsp + 0x28]
.label_296:
	mov	r12, qword ptr [rsp + 0x40]
.label_318:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_323:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_341
	test	al, al
	je	.label_341
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_263
.label_341:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_355
	.section	.text
	.align	32
	#Procedure 0x4047a7
	.globl sub_4047a7
	.type sub_4047a7, @function
sub_4047a7:

	nop	word ptr [rax + rax]
.label_317:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_355:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_358
	test	sil, 1
	je	.label_288
	cmp	r14, rbp
	jae	.label_361
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_361:
	inc	r14
	xor	esi, esi
	jmp	.label_288
	.section	.text
	.align	32
	#Procedure 0x4047e5
	.globl sub_4047e5
	.type sub_4047e5, @function
sub_4047e5:

	nop	word ptr cs:[rax + rax]
.label_358:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_251
	cmp	r8d, 2
	jne	.label_246
	mov	eax, r9d
	and	al, 1
	jne	.label_246
	cmp	r14, rbp
	jae	.label_248
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_248:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_254
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_254:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_322
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_322:
	add	r14, 3
	mov	r9b, 1
.label_246:
	cmp	r14, rbp
	jae	.label_270
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_270:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_274
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_274:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_281
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_281:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_288:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_293
	test	r9b, 1
	je	.label_298
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_252
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_301
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_301:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_308
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_308:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_298
	.section	.text
	.align	32
	#Procedure 0x4048f6
	.globl sub_4048f6
	.type sub_4048f6, @function
sub_4048f6:

	nop	word ptr cs:[rax + rax]
.label_252:
	mov	rbx, rcx
.label_298:
	cmp	r14, rbp
	jae	.label_317
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_317
	.section	.text
	.align	32
	#Procedure 0x40491e
	.globl sub_40491e
	.type sub_40491e, @function
sub_40491e:

	nop	
.label_293:
	test	r9b, 1
	je	.label_325
	and	al, 1
	jne	.label_325
	cmp	r14, rbp
	jae	.label_329
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_329:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_340
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_340:
	add	r14, 2
	xor	r9d, r9d
.label_325:
	mov	ebx, r15d
.label_297:
	cmp	r14, rbp
	jae	.label_339
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_339:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_345
.label_365:
	xor	r13d, r13d
	jmp	.label_263
	.section	.text
	.align	32
	#Procedure 0x404981
	.globl sub_404981
	.type sub_404981, @function
sub_404981:

	nop	word ptr cs:[rax + rax]
.label_370:
	mov	rcx, r12
.label_364:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_354
	or	al, dl
	jne	.label_354
	mov	r11, rcx
	jmp	.label_251
.label_262:
	mov	eax, 2
.label_304:
	mov	qword ptr [rsp + 0x38], rax
.label_251:
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
.label_294:
	mov	r14, rax
.label_299:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_337:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_261
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_269
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_269
	inc	rdx
	nop	dword ptr [rax + rax]
.label_275:
	cmp	r14, rbp
	jae	.label_273
	mov	byte ptr [rcx + r14], al
.label_273:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_275
	jmp	.label_269
.label_352:
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
	jmp	.label_294
.label_261:
	mov	rcx, qword ptr [rsp + 0x10]
.label_269:
	cmp	r14, rbp
	jae	.label_299
	mov	byte ptr [rcx + r14], 0
	jmp	.label_299
.label_250:
	mov	eax, 5
	jmp	.label_304
.label_257:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404ad0
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
	#Procedure 0x404adf
	.globl sub_404adf
	.type sub_404adf, @function
sub_404adf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404ae0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_371:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_371
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x404b01
	.globl sub_404b01
	.type sub_404b01, @function
sub_404b01:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b75
	.globl sub_404b75
	.type sub_404b75, @function
sub_404b75:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b82
	.globl sub_404b82
	.type sub_404b82, @function
sub_404b82:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ba6
	.globl sub_404ba6
	.type sub_404ba6, @function
sub_404ba6:

	nop	word ptr cs:[rax + rax]
