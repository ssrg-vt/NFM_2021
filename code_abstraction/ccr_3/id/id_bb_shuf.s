	.section	.text
	.align	16
	#Procedure 0x4016d9
	.globl sub_4016d9
	.type sub_4016d9, @function
sub_4016d9:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x4016da
	.globl sub_4016da
	.type sub_4016da, @function
sub_4016da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401712
	.globl sub_401712
	.type sub_401712, @function
sub_401712:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40175a
	.globl sub_40175a
	.type sub_40175a, @function
sub_40175a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40177c
	.globl sub_40177c
	.type sub_40177c, @function
sub_40177c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40178d
	.globl sub_40178d
	.type sub_40178d, @function
sub_40178d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4017a6
	.globl sub_4017a6
	.type sub_4017a6, @function
sub_4017a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017b0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_10
	cmp	byte ptr [rax], 0x43
	jne	.label_12
	cmp	byte ptr [rax + 1], 0
	je	.label_9
.label_12:
	mov	esi, OFFSET FLAT:label_11
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_10
.label_9:
	xor	ebx, ebx
.label_10:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4017e1
	.globl sub_4017e1
	.type sub_4017e1, @function
sub_4017e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017f0

	.globl print_stuff
	.type print_stuff, @function
print_stuff:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rdi
	cmp	byte ptr [rip + just_user],  1
	jne	.label_47
	mov	al, byte ptr [rip + use_real]
	mov	ecx, OFFSET FLAT:ruid
	mov	edx, OFFSET FLAT:euid
	test	al, al
	cmovne	rdx, rcx
	mov	ebx, dword ptr [rdx]
	mov	al, byte ptr [rip + use_name]
	test	al, al
	je	.label_14
	mov	edi, ebx
	call	getpwuid
	test	rax, rax
	je	.label_22
	mov	rdi, qword ptr [rax]
	jmp	.label_24
.label_47:
	cmp	byte ptr [rip + just_group],  1
	jne	.label_38
	mov	al, byte ptr [rip + use_real]
	mov	ecx, OFFSET FLAT:rgid
	mov	edx, OFFSET FLAT:egid
	test	al, al
	cmovne	rdx, rcx
	mov	edi, dword ptr [rdx]
	movzx	esi, byte ptr [rip + use_name]
	call	print_group
	and	byte ptr [rip + ok],  al
	jmp	.label_20
.label_14:
	mov	ebx, ebx
	jmp	.label_31
.label_38:
	cmp	byte ptr [rip + just_group_list],  1
	jne	.label_32
	mov	esi, dword ptr [rip + ruid]
	mov	edx, dword ptr [rip + rgid]
	mov	ecx, dword ptr [rip + egid]
	mov	al, byte ptr [rip + opt_zero]
	test	al, al
	sete	al
	shl	al, 5
	movzx	r8d, byte ptr [rip + use_name]
	movzx	r9d, al
	mov	rdi, rbx
	call	print_group_list
	and	byte ptr [rip + ok],  al
	jmp	.label_20
.label_32:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_43
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, dword ptr [rip + ruid]
	mov	esi, OFFSET FLAT:uidtostr_ptr.buf
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbp
	mov	rdx, rcx
	call	__printf_chk
	mov	edi, dword ptr [rip + ruid]
	call	getpwuid
	mov	r14, rax
	test	r14, r14
	je	.label_16
	mov	rdx, qword ptr [r14]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_18
	xor	eax, eax
	call	__printf_chk
.label_16:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, dword ptr [rip + rgid]
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbp
	mov	rdx, rcx
	call	__printf_chk
	mov	edi, dword ptr [rip + rgid]
	call	getgrgid
	test	rax, rax
	je	.label_29
	mov	rdx, qword ptr [rax]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_18
	xor	eax, eax
	call	__printf_chk
.label_29:
	mov	eax, dword ptr [rip + euid]
	cmp	eax, dword ptr [rip + ruid]
	je	.label_17
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, dword ptr [rip + euid]
	mov	esi, OFFSET FLAT:uidtostr_ptr.buf
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbp
	mov	rdx, rcx
	call	__printf_chk
	mov	edi, dword ptr [rip + euid]
	call	getpwuid
	mov	rbp, rax
	test	rbp, rbp
	je	.label_17
	mov	rdx, qword ptr [rbp]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_18
	xor	eax, eax
	call	__printf_chk
	mov	r14, rbp
.label_17:
	mov	eax, dword ptr [rip + egid]
	cmp	eax, dword ptr [rip + rgid]
	je	.label_28
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, dword ptr [rip + egid]
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbp
	mov	rdx, rcx
	call	__printf_chk
	mov	edi, dword ptr [rip + egid]
	call	getgrgid
	test	rax, rax
	je	.label_28
	mov	rdx, qword ptr [rax]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_18
	xor	eax, eax
	call	__printf_chk
.label_28:
	test	rbx, rbx
	je	.label_27
	mov	esi, 0xffffffff
	test	r14, r14
	je	.label_30
	mov	esi, dword ptr [r14 + 0x14]
	jmp	.label_30
.label_22:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	ebx, ebx
	mov	esi, OFFSET FLAT:uidtostr_ptr.buf
	mov	rdi, rbx
	call	umaxtostr
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	byte ptr [rip + ok],  0
.label_31:
	mov	esi, OFFSET FLAT:uidtostr_ptr.buf
	mov	rdi, rbx
	call	umaxtostr
	mov	rdi, rax
.label_24:
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
.label_20:
	mov	al, byte ptr [rip + opt_zero]
	cmp	al, 1
	jne	.label_46
	cmp	byte ptr [rip + multiple_users],  0
	je	.label_46
	mov	cl, byte ptr [rip + just_group_list]
	xor	cl, 1
	test	cl, 1
	jne	.label_46
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_48
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0
.label_45:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_19
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0
	jmp	.label_23
.label_46:
	xor	ecx, ecx
	test	al, al
	mov	esi, 0xa
	cmovne	esi, ecx
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_26
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
.label_23:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_27:
	mov	esi, dword ptr [rip + egid]
.label_30:
	lea	rdx, [rsp + 8]
	mov	rdi, rbx
	call	xgetgroups
	mov	ebp, eax
	test	ebp, ebp
	js	.label_34
	je	.label_35
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_42
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	mov	ebx, ebp
	xor	ebp, ebp
	jmp	.label_40
.label_34:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	test	rbx, rbx
	je	.label_41
	mov	esi, OFFSET FLAT:label_44
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
	mov	byte ptr [rip + ok],  0
	jmp	.label_20
.label_41:
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rcx
	call	error
	mov	byte ptr [rip + ok],  0
	jmp	.label_20
.label_39:
	mov	esi, 0x2c
	call	__overflow
	jmp	.label_25
	.section	.text
	.align	16
	#Procedure 0x401c39
	.globl sub_401c39
	.type sub_401c39, @function
sub_401c39:

	nop	dword ptr [rax]
.label_40:
	test	rbp, rbp
	jle	.label_25
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_39
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x2c
.label_25:
	mov	rax, qword ptr [rsp + 8]
	mov	edi, dword ptr [rax + rbp*4]
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf
	call	umaxtostr
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rax, qword ptr [rsp + 8]
	mov	edi, dword ptr [rax + rbp*4]
	call	getgrgid
	test	rax, rax
	je	.label_36
	mov	rdx, qword ptr [rax]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_18
	xor	eax, eax
	call	__printf_chk
.label_36:
	inc	rbp
	cmp	ebx, ebp
	jne	.label_40
.label_35:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	jmp	.label_20
.label_26:
	call	__overflow
	jmp	.label_23
.label_48:
	xor	esi, esi
	call	__overflow
	jmp	.label_45
.label_19:
	xor	esi, esi
	call	__overflow
	jmp	.label_23
.label_49:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401ce5
	.globl sub_401ce5
	.type sub_401ce5, @function
sub_401ce5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401cf3

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
	je	.label_50
	test	r15, r15
	je	.label_49
.label_50:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_52:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_51
	call	__errno_location
	mov	dword ptr [rax], 0
.label_51:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401d4b

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
	jne	.label_52
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_51
	test	cl, cl
	jne	.label_51
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_51
	.section	.text
	.align	16
	#Procedure 0x401d90

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_56
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_55
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_53
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_55
	mov	esi, OFFSET FLAT:label_58
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_54
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_54:
	mov	rbx, r14
.label_55:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_56:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_57
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401e31
	.globl sub_401e31
	.type sub_401e31, @function
sub_401e31:

	nop	word ptr cs:[rax + rax]
.label_60:
	call	xalloc_die
.label_59:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_61
	test	rax, rax
	je	.label_60
.label_61:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e59

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_59
	test	rbx, rbx
	jne	.label_59
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e70
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
	#Procedure 0x401e88
	.globl sub_401e88
	.type sub_401e88, @function
sub_401e88:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e90
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_62
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_65:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_65
.label_62:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_66
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_63], OFFSET FLAT:slot0
.label_66:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_64
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_64:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f21
	.globl sub_401f21
	.type sub_401f21, @function
sub_401f21:

	nop	word ptr cs:[rax + rax]
.label_67:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401f35
	.globl sub_401f35
	.type sub_401f35, @function
sub_401f35:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401f37
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_68]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_69]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_70]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_67
	test	rdx, rdx
	je	.label_67
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x401fa0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x401fa8
	.globl sub_401fa8
	.type sub_401fa8, @function
sub_401fa8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401fb0

	.globl parse_with_separator
	.type parse_with_separator, @function
parse_with_separator:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r14, r8
	mov	r12, rcx
	mov	r15, rsi
	mov	eax, dword ptr [rdx]
	mov	ecx, 0xffffffff
	test	r12, r12
	je	.label_88
	mov	ecx, dword ptr [r12]
.label_88:
	test	r14, r14
	je	.label_98
	mov	qword ptr [r14], 0
.label_98:
	test	r9, r9
	je	.label_80
	mov	qword ptr [r9], 0
.label_80:
	test	r15, r15
	mov	qword ptr [rsp + 0x38], rdx
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], rcx
	je	.label_101
	mov	qword ptr [rsp + 8], r9
	xor	ebp, ebp
	mov	rbx, r15
	sub	rbx, rdi
	je	.label_72
	lea	rsi, [rbx + 1]
	call	xmemdup
	mov	rbp, rax
	mov	byte ptr [rbp + rbx], 0
.label_72:
	lea	rax, [r15 + 1]
	xor	ebx, ebx
	cmp	byte ptr [r15 + 1], 0
	cmovne	rbx, rax
	jmp	.label_82
.label_101:
	xor	r13d, r13d
	cmp	byte ptr [rdi], 0
	je	.label_90
	mov	qword ptr [rsp + 8], r9
	call	xstrdup
	mov	rbp, rax
	xor	ebx, ebx
.label_82:
	xor	r13d, r13d
	test	rbp, rbp
	mov	qword ptr [rsp + 0x30], r12
	mov	qword ptr [rsp + 0x28], r14
	je	.label_95
	cmp	byte ptr [rbp], 0x2b
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_97
	mov	rdi, rbp
	call	getpwnam
	mov	rbp, qword ptr [rsp + 0x20]
	test	rax, rax
	je	.label_97
	mov	rax, qword ptr [rax + 0x10]
	xor	r13d, r13d
	test	r15, r15
	mov	qword ptr [rsp + 0x10], rax
	je	.label_71
	mov	r15, rbx
	test	r15, r15
	jne	.label_78
	mov	rbp, rax
	shr	rbp, 0x20
	mov	edi, ebp
	call	getgrgid
	test	rax, rax
	mov	qword ptr [rsp + 0x18], rbp
	je	.label_89
	mov	rdi, qword ptr [rax]
	jmp	.label_92
.label_97:
	mov	r14d, OFFSET FLAT:label_93
	xor	r13d, r13d
	test	r15, r15
	mov	r15, rbx
	je	.label_94
	test	r15, r15
	je	.label_81
.label_94:
	lea	rcx, [rsp + 0x40]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_85
	mov	rdi, rbp
	call	xstrtoul
	test	eax, eax
	jne	.label_73
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, rax
	shr	rcx, 0x20
	jne	.label_73
	xor	r14d, r14d
	cmp	eax, -1
	jne	.label_76
.label_73:
	mov	r14d, OFFSET FLAT:label_77
	mov	rax, qword ptr [rsp + 0x10]
.label_76:
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_81
.label_95:
	xor	edi, edi
	xor	r14d, r14d
	mov	r15, rbx
	jmp	.label_86
.label_90:
	xor	edi, edi
	jmp	.label_84
.label_71:
	xor	r14d, r14d
	mov	r15, rbx
	jmp	.label_81
.label_89:
	lea	rsi, [rsp + 0x40]
	mov	rdi, rbp
	call	umaxtostr
	mov	rdi, rax
.label_92:
	call	xstrdup
	mov	r13, rax
	call	endgrent
.label_78:
	xor	r14d, r14d
.label_81:
	call	endpwent
	mov	rdi, qword ptr [rsp + 0x20]
.label_86:
	test	r15, r15
	je	.label_100
	test	r14, r14
	jne	.label_100
	mov	rbp, rdi
	cmp	byte ptr [r15], 0x2b
	je	.label_74
	mov	rdi, r15
	call	getgrnam
	test	rax, rax
	je	.label_74
	mov	ebx, dword ptr [rax + 0x10]
	xor	r14d, r14d
	jmp	.label_79
.label_100:
	mov	r9, qword ptr [rsp + 8]
	jmp	.label_103
.label_74:
	lea	rcx, [rsp + 0x40]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_85
	mov	rdi, r15
	call	xstrtoul
	test	eax, eax
	jne	.label_91
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rax, rbx
	shr	rax, 0x20
	jne	.label_91
	xor	r14d, r14d
	cmp	ebx, -1
	jne	.label_79
.label_91:
	mov	r14d, OFFSET FLAT:label_96
	mov	rbx, qword ptr [rsp + 0x18]
.label_79:
	call	endgrent
	mov	rdi, r15
	call	xstrdup
	mov	r13, rax
	mov	qword ptr [rsp + 0x18], rbx
	mov	r9, qword ptr [rsp + 8]
	mov	rdi, rbp
.label_103:
	test	r14, r14
	je	.label_102
	xor	ebx, ebx
	jmp	.label_87
.label_102:
	mov	r14, qword ptr [rsp + 0x28]
	mov	r12, qword ptr [rsp + 0x30]
.label_84:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], ecx
	test	r12, r12
	je	.label_75
	mov	rax, qword ptr [rsp + 0x18]
	mov	dword ptr [r12], eax
.label_75:
	test	r14, r14
	je	.label_83
	mov	qword ptr [r14], rdi
	xor	edi, edi
.label_83:
	mov	bl, 1
	xor	r14d, r14d
	test	r9, r9
	je	.label_87
	mov	qword ptr [r9], r13
	xor	r14d, r14d
	xor	r13d, r13d
.label_87:
	call	free
	mov	rdi, r13
	call	free
	xor	eax, eax
	test	bl, bl
	jne	.label_99
	xor	edi, edi
	mov	edx, 5
	mov	rsi, r14
	call	dcgettext
.label_99:
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402273
	.globl sub_402273
	.type sub_402273, @function
sub_402273:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402280

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_104
	test	rax, rax
	je	.label_105
.label_104:
	pop	rbx
	ret	
.label_105:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40229a
	.globl sub_40229a
	.type sub_40229a, @function
sub_40229a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022a0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_116
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_118
.label_116:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_118:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_107
	cmp	r10d, 0x29
	jae	.label_115
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_117
.label_115:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_117:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_107
	cmp	r10d, 0x29
	jae	.label_113
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_114
.label_113:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_114:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_107
	cmp	r10d, 0x29
	jae	.label_111
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_112
.label_111:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_112:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_107
	cmp	r10d, 0x29
	jae	.label_109
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_110
.label_109:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_110:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_107
	cmp	r10d, 0x29
	jae	.label_106
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_108
.label_106:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_108:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_107
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_107
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_107
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_107
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_107:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x402482
	.globl sub_402482
	.type sub_402482, @function
sub_402482:

	nop	word ptr cs:[rax + rax]
.label_119:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402495
	.globl sub_402495
	.type sub_402495, @function
sub_402495:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024a0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_119
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_120
	test	rax, rax
	je	.label_119
.label_120:
	pop	rbx
	ret	
.label_121:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4024d5
	.globl sub_4024d5
	.type sub_4024d5, @function
sub_4024d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024e0
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
	je	.label_121
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
	#Procedure 0x402570
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
	je	.label_123
	test	r14, r14
	je	.label_122
.label_123:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_122:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4025a6
	.globl sub_4025a6
	.type sub_4025a6, @function
sub_4025a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4025b0
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
	#Procedure 0x402625
	.globl sub_402625
	.type sub_402625, @function
sub_402625:

	nop	word ptr cs:[rax + rax]
.label_125:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_124
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_124:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402664
	.globl sub_402664
	.type sub_402664, @function
sub_402664:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402666

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
	jne	.label_126
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_126
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_125
.label_126:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x4026a0
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
	#Procedure 0x4026af
	.globl sub_4026af
	.type sub_4026af, @function
sub_4026af:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4026b0
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
	je	.label_127
	mov	qword ptr [rax], rbx
.label_127:
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
	#Procedure 0x40279c
	.globl sub_40279c
	.type sub_40279c, @function
sub_40279c:

	nop	dword ptr [rax]
.label_129:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x4027ab

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_133
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_130
	cmp	dword ptr [rbp], 0x20
	jne	.label_130
.label_133:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_129
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_131:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_132
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_130:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_134
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_131
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_128
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_136:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402865

	.globl xgetgroups
	.type xgetgroups, @function
xgetgroups:
	push	rbx
	call	mgetgroups
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_135
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_136
.label_135:
	mov	eax, ebx
	pop	rbx
	ret	
.label_139:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402885
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_141
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_138
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_140
	call	free
	xor	eax, eax
	jmp	.label_137
.label_141:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_139
	mov	qword ptr [rsi], rbx
.label_140:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_137
	test	rax, rax
	je	.label_139
.label_137:
	pop	rbx
	ret	
.label_138:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4028e4
	.globl sub_4028e4
	.type sub_4028e4, @function
sub_4028e4:

	nop	word ptr cs:[rax + rax]
.label_143:
	mov	ecx, 1
.label_142:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x402900
	.globl sub_402900
	.type sub_402900, @function
sub_402900:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402905

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_143
	test	rsi, rsi
	mov	ecx, 1
	je	.label_142
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_142
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402940

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
	#Procedure 0x402957
	.globl sub_402957
	.type sub_402957, @function
sub_402957:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402960
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_144:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_144
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x402981
	.globl sub_402981
	.type sub_402981, @function
sub_402981:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402990
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
	#Procedure 0x40299f
	.globl sub_40299f
	.type sub_40299f, @function
sub_40299f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4029a0
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
	je	.label_145
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
.label_145:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402a08
	.globl sub_402a08
	.type sub_402a08, @function
sub_402a08:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a10
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x402a1a
	.globl sub_402a1a
	.type sub_402a1a, @function
sub_402a1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a20

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_146
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_146
	test	byte ptr [rbx + 1], 1
	je	.label_146
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_146:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x402a53
	.globl sub_402a53
	.type sub_402a53, @function
sub_402a53:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a60

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_147:
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
	ja	.label_147
	mov	rax, rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x402aab
	.globl sub_402aab
	.type sub_402aab, @function
sub_402aab:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ab0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x402aba
	.globl sub_402aba
	.type sub_402aba, @function
sub_402aba:

	nop	word ptr [rax + rax]
.label_154:
	test	rcx, rcx
	jne	.label_148
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_148:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_151
.label_153:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_149
	test	rbx, rbx
	jne	.label_149
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_149:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_150
	test	rax, rax
	je	.label_152
.label_150:
	pop	rbx
	ret	
.label_151:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402b25
	.globl sub_402b25
	.type sub_402b25, @function
sub_402b25:

	nop	word ptr [rax + rax]
.label_152:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402b33
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_154
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_152
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_153
	.section	.text
	.align	16
	#Procedure 0x402b60
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
	#Procedure 0x402b73
	.globl sub_402b73
	.type sub_402b73, @function
sub_402b73:

	nop	word ptr cs:[rax + rax]
.label_155:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402b85
	.globl sub_402b85
	.type sub_402b85, @function
sub_402b85:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b8b
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_68]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_69]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_70]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_155
	test	rdx, rdx
	je	.label_155
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_156:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402bf5
	.globl sub_402bf5
	.type sub_402bf5, @function
sub_402bf5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402bfd
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
	je	.label_156
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
	.section	.text
	.align	16
	#Procedure 0x402c60
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_157
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_158
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_160
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_161
	mov	ecx, OFFSET FLAT:label_162
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_159
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x402cd4
	.globl sub_402cd4
	.type sub_402cd4, @function
sub_402cd4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ce0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_68]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_69]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_70]
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
	#Procedure 0x402d34
	.globl sub_402d34
	.type sub_402d34, @function
sub_402d34:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d40

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, r8
	mov	r12d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_174
	mov	qword ptr [rsp], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_164:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_164
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_163
	mov	rdi, rbx
	mov	edx, r12d
	mov	qword ptr [rsp + 8], rsi
	call	strtoul
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 8]
	mov	r12, qword ptr [rax]
	cmp	r12, rbx
	je	.label_179
	mov	eax, dword ptr [r15]
	xor	ebx, ebx
	test	eax, eax
	je	.label_182
	cmp	eax, 0x22
	jne	.label_163
	mov	ebx, 1
.label_182:
	test	r14, r14
	jne	.label_183
	jmp	.label_168
.label_179:
	test	r14, r14
	je	.label_163
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_163
	mov	rdi, r14
	call	strchr
	xor	ebx, ebx
	mov	ebp, 1
	test	rax, rax
	je	.label_163
.label_183:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_168
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_173
	mov	r15d, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_167
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_167
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	r15d, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_167
	movsx	eax, byte ptr [r12 + 1]
	mov	r15d, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_171
	cmp	eax, 0x44
	je	.label_171
	cmp	eax, 0x69
	jne	.label_167
	xor	eax, eax
	cmp	byte ptr [r12 + 2], 0x42
	sete	al
	lea	r15, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_167
.label_171:
	mov	r15d, 2
	mov	esi, 0x3e8
.label_167:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_173
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_181]
.label_504:
	mov	r8, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r8
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r8
	cmp	rax, rbp
	sbb	dil, dil
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, r8
	or	dl, r9b
	or	dl, dil
	jmp	.label_169
.label_173:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	or	ebx, 2
	jmp	.label_172
.label_505:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_175
.label_506:
	mov	r8, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r8
	cmp	rax, rdi
	sbb	dl, dl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r8
	or	dl, r9b
	jmp	.label_169
.label_508:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	cl, cl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	or	dl, r10b
	or	dl, cl
	jmp	.label_169
.label_502:
	xor	eax, eax
	mov	rdx, rbp
	shr	rdx, 0x36
	setne	al
	shl	rbp, 0xa
	jmp	.label_165
.label_503:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	r11b, r11b
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r14b, r14b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	bpl, bpl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	or	dl, r10b
	or	dl, r11b
	or	dl, r14b
	or	dl, bpl
.label_169:
	and	dl, 1
	movzx	eax, dl
	jmp	.label_170
.label_507:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdx, rbp
	imul	rdx, rsi
	cmp	rax, rbp
	cmovb	rdx, rdi
	cmp	rax, rdx
	sbb	cl, cl
	mov	rbp, rdx
	imul	rbp, rsi
	cmp	rax, rdx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdx, rbp
	imul	rdx, rsi
	cmp	rax, rbp
	cmovb	rdx, rdi
	cmp	rax, rdx
	sbb	r10b, r10b
	mov	rbp, rdx
	imul	rbp, rsi
	cmp	rax, rdx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	dl, dl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	cl, r8b
	or	cl, r9b
	or	cl, r10b
	or	cl, dl
	and	cl, 1
	movzx	eax, cl
	jmp	.label_170
.label_509:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	dl, dl
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r10b, r10b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r14b, r14b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r13b, r13b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	bpl, bpl
	imul	rsi, rcx
	cmp	rax, rcx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	and	dl, 1
	or	dl, r14b
	or	dl, r13b
	or	dl, bpl
	jmp	.label_180
.label_510:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	dl, dl
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r10b, r10b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r14b, r14b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	cl, cl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	or	dl, r14b
	or	dl, cl
.label_180:
	movzx	eax, dl
.label_175:
	and	eax, 1
.label_170:
	mov	rbp, rsi
.label_166:
	or	eax, ebx
	lea	rcx, [r12 + r15]
	mov	rdx, qword ptr [rsp + 8]
	mov	qword ptr [rdx], rcx
	lea	ebx, [rax + 2]
	cmp	byte ptr [r12 + r15], 0
	cmove	ebx, eax
.label_168:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
.label_172:
	mov	r13d, ebx
.label_163:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_511:
	xor	eax, eax
	mov	rdx, rbp
	shr	rdx, 0x37
	setne	al
	shl	rbp, 9
.label_165:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	rbp, rdx
	jmp	.label_166
.label_512:
	lea	rax, [rbp + rbp]
	test	rbp, rbp
	mov	rcx, -1
	cmovns	rcx, rax
	shr	rbp, 0x3f
	mov	eax, ebp
	mov	rbp, rcx
	jmp	.label_166
.label_174:
	mov	edi, OFFSET FLAT:label_176
	mov	esi, OFFSET FLAT:label_177
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_178
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x40335d
	.globl sub_40335d
	.type sub_40335d, @function
sub_40335d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403360

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
	jne	.label_189
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_185
	cmp	ecx, 0x55
	jne	.label_184
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_184
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_184
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_184
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_184
	cmp	byte ptr [rax + 5], 0
	jne	.label_184
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_193
	mov	eax, OFFSET FLAT:label_194
	jmp	.label_188
.label_185:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_184
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_184
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_184
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_184
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_184
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_184
	cmp	byte ptr [rax + 7], 0
	je	.label_190
.label_184:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_191
	mov	eax, OFFSET FLAT:label_192
.label_188:
	cmove	rax, rcx
.label_189:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_190:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_186
	mov	eax, OFFSET FLAT:label_187
	jmp	.label_188
	.section	.text
	.align	16
	#Procedure 0x403425
	.globl sub_403425
	.type sub_403425, @function
sub_403425:

	nop	word ptr cs:[rax + rax]
.label_195:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403435
	.globl sub_403435
	.type sub_403435, @function
sub_403435:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403439
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
	je	.label_195
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
	.align	16
	#Procedure 0x4034a0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_68]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_69]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_70]
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
	#Procedure 0x4034f5
	.globl sub_4034f5
	.type sub_4034f5, @function
sub_4034f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403500
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_196
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_197
	test	rbx, rbx
	jne	.label_197
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_196:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403534
	.globl sub_403534
	.type sub_403534, @function
sub_403534:

	nop	dword ptr [rax + rax]
.label_197:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_198
	test	rax, rax
	je	.label_196
.label_198:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403550
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
	#Procedure 0x403611
	.globl sub_403611
	.type sub_403611, @function
sub_403611:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403620

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
	je	.label_199
	cmp	r15, -2
	jb	.label_199
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_199
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_199:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403676
	.globl sub_403676
	.type sub_403676, @function
sub_403676:

	nop	word ptr cs:[rax + rax]
.label_200:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403685
	.globl sub_403685
	.type sub_403685, @function
sub_403685:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403689

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
	je	.label_201
	test	r15, r15
	je	.label_200
.label_201:
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
	#Procedure 0x4036c0

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
	#Procedure 0x4036d9
	.globl sub_4036d9
	.type sub_4036d9, @function
sub_4036d9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4036e0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_202
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_202:
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
	#Procedure 0x403763
	.globl sub_403763
	.type sub_403763, @function
sub_403763:

	nop	word ptr cs:[rax + rax]
.label_203:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403775
	.globl sub_403775
	.type sub_403775, @function
sub_403775:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403784
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
	je	.label_203
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
	.align	16
	#Procedure 0x4037e0

	.globl print_group
	.type print_group, @function
print_group:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	sil, sil
	je	.label_204
	mov	edi, ebp
	call	getgrgid
	test	rax, rax
	je	.label_205
	mov	rdi, qword ptr [rax]
	mov	bl, 1
	jmp	.label_206
.label_205:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_208
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	ebp, ebp
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	call	error
.label_207:
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf_0
	mov	rdi, rbp
	call	umaxtostr
	mov	rdi, rax
.label_206:
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40384b
	.globl sub_40384b
	.type sub_40384b, @function
sub_40384b:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40384e
	.globl sub_40384e
	.type sub_40384e, @function
sub_40384e:

	nop	word ptr cs:[rax + rax]
.label_204:
	mov	ebp, ebp
	mov	bl, 1
	jmp	.label_207
	.section	.text
	.align	16
	#Procedure 0x403860
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x403868
	.globl sub_403868
	.type sub_403868, @function
sub_403868:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403870
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_209
	call	rpl_calloc
	test	rax, rax
	je	.label_209
	pop	rcx
	ret	
.label_209:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403896
	.globl sub_403896
	.type sub_403896, @function
sub_403896:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038a0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_68]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_69]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_70]
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
	#Procedure 0x40390f
	.globl sub_40390f
	.type sub_40390f, @function
sub_40390f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403910

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_210
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_212
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_210
.label_212:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_210
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_211
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_211:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_210:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x403984
	.globl sub_403984
	.type sub_403984, @function
sub_403984:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403990

	.globl parse_user_spec
	.type parse_user_spec, @function
parse_user_spec:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbp, r8
	mov	r15, rcx
	mov	rbx, rdx
	mov	r12, rsi
	mov	r13, rdi
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_214
	mov	esi, 0x3a
	mov	rdi, r13
	call	strchr
	mov	r14, rax
.label_214:
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, r12
	mov	rcx, rbx
	mov	r8, r15
	mov	qword ptr [rsp], rbp
	mov	r9, rbp
	call	parse_with_separator
	mov	rbp, rax
	test	rbx, rbx
	je	.label_213
	test	r14, r14
	jne	.label_213
	test	rbp, rbp
	je	.label_213
	mov	esi, 0x2e
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_213
	mov	rdi, r13
	mov	rsi, rax
	mov	rdx, r12
	mov	rcx, rbx
	mov	r8, r15
	mov	r9, qword ptr [rsp]
	call	parse_with_separator
	test	rax, rax
	cmovne	rax, rbp
	jmp	.label_215
.label_213:
	mov	rax, rbp
.label_215:
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
	#Procedure 0x403a34
	.globl sub_403a34
	.type sub_403a34, @function
sub_403a34:

	nop	word ptr cs:[rax + rax]
.label_216:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403a46
	.globl sub_403a46
	.type sub_403a46, @function
sub_403a46:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a4b
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_216
	test	rdx, rdx
	je	.label_216
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a70

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_128
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403aa0
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
	#Procedure 0x403ad3
	.globl sub_403ad3
	.type sub_403ad3, @function
sub_403ad3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ae0

	.globl print_group_list
	.type print_group_list, @function
print_group_list:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14d, r9d
	mov	dword ptr [rsp + 4], r8d
	mov	r12d, ecx
	mov	ebx, edx
	mov	rbp, rdi
	mov	r15b, 1
	xor	r13d, r13d
	test	rbp, rbp
	je	.label_238
	mov	edi, esi
	call	getpwuid
	mov	r13, rax
	test	r13, r13
	setne	r15b
.label_238:
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_224
	mov	edi, ebx
	call	getgrgid
	test	rax, rax
	je	.label_228
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rip + stdout]
	jmp	.label_229
.label_224:
	mov	edi, ebx
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf_0
	jmp	.label_236
.label_228:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_208
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	qword ptr [rsp + 8], rbp
	mov	ebp, ebx
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	call	error
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf_0
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp + 8]
.label_236:
	call	umaxtostr
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
.label_229:
	call	fputs_unlocked
	cmp	r12d, ebx
	je	.label_223
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_226
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r14b
.label_230:
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_237
	mov	edi, r12d
	call	getgrgid
	test	rax, rax
	je	.label_239
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rip + stdout]
	jmp	.label_245
.label_237:
	mov	edi, r12d
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf_0
	jmp	.label_243
.label_239:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_208
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	qword ptr [rsp + 8], rbp
	mov	ebp, r12d
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	call	error
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf_0
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp + 8]
.label_243:
	call	umaxtostr
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
.label_245:
	call	fputs_unlocked
.label_223:
	test	r13, r13
	mov	esi, r12d
	je	.label_235
	mov	esi, dword ptr [r13 + 0x14]
.label_235:
	lea	rdx, [rsp + 0x10]
	mov	rdi, rbp
	call	xgetgroups
	test	eax, eax
	js	.label_240
	mov	qword ptr [rsp + 8], r15
	je	.label_225
	movzx	r15d, r14b
	movsxd	r13, eax
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_244
	mov	dword ptr [rsp + 4], r15d
	xor	r15d, r15d
	jmp	.label_221
.label_240:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	test	rbp, rbp
	je	.label_246
	mov	esi, OFFSET FLAT:label_44
	mov	edx, 5
	call	dcgettext
	mov	rdi, rbp
	mov	rbp, rax
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_232
.label_244:
	xor	ebp, ebp
	jmp	.label_233
.label_246:
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_232:
	xor	eax, eax
	jmp	.label_242
.label_220:
	mov	esi, dword ptr [rsp + 4]
	call	__overflow
	jmp	.label_219
	.section	.text
	.align	16
	#Procedure 0x403ced
	.globl sub_403ced
	.type sub_403ced, @function
sub_403ced:

	nop	dword ptr [rax]
.label_221:
	mov	rax, qword ptr [rsp + 0x10]
	mov	eax, dword ptr [rax + r15*4]
	cmp	eax, ebx
	je	.label_218
	cmp	eax, r12d
	je	.label_218
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_220
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r14b
.label_219:
	mov	rax, qword ptr [rsp + 0x10]
	mov	ebp, dword ptr [rax + r15*4]
	mov	edi, ebp
	call	getgrgid
	test	rax, rax
	je	.label_234
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rip + stdout]
	jmp	.label_241
.label_234:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_208
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	call	error
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf_0
	mov	rdi, rbp
	call	umaxtostr
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
.label_241:
	call	fputs_unlocked
.label_218:
	inc	r15
	cmp	r15, r13
	jl	.label_221
	jmp	.label_225
.label_222:
	mov	esi, r15d
	call	__overflow
	jmp	.label_227
	.section	.text
	.align	16
	#Procedure 0x403da7
	.globl sub_403da7
	.type sub_403da7, @function
sub_403da7:

	nop	word ptr [rax + rax]
.label_233:
	mov	rax, qword ptr [rsp + 0x10]
	mov	eax, dword ptr [rax + rbp*4]
	cmp	eax, ebx
	je	.label_231
	cmp	eax, r12d
	je	.label_231
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_222
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r14b
.label_227:
	mov	rax, qword ptr [rsp + 0x10]
	mov	edi, dword ptr [rax + rbp*4]
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf_0
	call	umaxtostr
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_231:
	inc	rbp
	cmp	rbp, r13
	jl	.label_233
.label_225:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	mov	rax, qword ptr [rsp + 8]
	and	al, 1
.label_242:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_226:
	movzx	esi, r14b
	call	__overflow
	jmp	.label_230
	.section	.text
	.align	16
	#Procedure 0x403e34
	.globl sub_403e34
	.type sub_403e34, @function
sub_403e34:

	nop	word ptr cs:[rax + rax]
.label_247:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403e45
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_68]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_69]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_70]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_247
	test	rsi, rsi
	je	.label_247
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
	#Procedure 0x403eb0
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
	#Procedure 0x403ec9
	.globl sub_403ec9
	.type sub_403ec9, @function
sub_403ec9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403ed0

	.globl mgetgroups
	.type mgetgroups, @function
mgetgroups:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdx
	mov	r13d, esi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_259
	mov	dword ptr [rsp + 0xc], 0xa
	xor	edi, edi
	mov	esi, 0x28
	call	realloc
	mov	rbp, rax
	mov	r14d, 0xffffffff
	test	rbp, rbp
	je	.label_248
	mov	qword ptr [rsp + 0x10], r12
	mov	r12d, 0xa
	lea	r15, [rsp + 0xc]
	jmp	.label_252
	.section	.text
	.align	16
	#Procedure 0x403f28
	.globl sub_403f28
	.type sub_403f28, @function
sub_403f28:

	nop	dword ptr [rax + rax]
.label_249:
	mov	r12d, dword ptr [rsp + 0xc]
	mov	rbp, rax
.label_252:
	mov	rdi, rbx
	mov	esi, r13d
	mov	rdx, rbp
	mov	rcx, r15
	call	getgrouplist
	mov	r14d, eax
	mov	eax, dword ptr [rsp + 0xc]
	test	r14d, r14d
	jns	.label_250
	cmp	r12d, eax
	jne	.label_250
	add	r12d, r12d
	mov	dword ptr [rsp + 0xc], r12d
	mov	eax, r12d
.label_250:
	test	eax, eax
	js	.label_261
	movsxd	rsi, eax
	shl	rsi, 2
	mov	rdi, rbp
	call	realloc
	test	rax, rax
	je	.label_264
	test	r14d, r14d
	js	.label_249
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx], rax
	mov	r14d, dword ptr [rsp + 0xc]
	jmp	.label_248
.label_259:
	xor	edi, edi
	xor	esi, esi
	call	getgroups
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	js	.label_254
	cmp	r13d, -1
	jne	.label_255
	test	eax, eax
	mov	ebx, eax
	jne	.label_256
.label_255:
	lea	ebx, [rax + 1]
	mov	dword ptr [rsp + 0xc], ebx
	cmp	eax, -2
	jg	.label_256
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_258
.label_256:
	movsxd	rsi, ebx
	shl	rsi, 2
	xor	edi, edi
	call	realloc
	mov	r15, rax
	mov	r14d, 0xffffffff
	test	r15, r15
	je	.label_248
	xor	eax, eax
	cmp	r13d, -1
	setne	al
	sub	ebx, eax
	lea	rsi, [r15 + rax*4]
	mov	edi, ebx
	call	getgroups
	test	eax, eax
	js	.label_251
	cmp	r13d, -1
	mov	r14d, eax
	je	.label_253
	mov	dword ptr [r15], r13d
	inc	eax
	mov	r14d, eax
.label_253:
	mov	qword ptr [r12], r15
	cmp	r14d, 2
	jl	.label_248
	movsxd	rax, r14d
	lea	rax, [r15 + rax*4]
	mov	rcx, r15
	add	rcx, 4
	cmp	rcx, rax
	jae	.label_248
	mov	edx, dword ptr [r15]
	mov	esi, edx
	nop	word ptr cs:[rax + rax]
.label_263:
	mov	edi, dword ptr [rcx]
	cmp	edi, edx
	je	.label_260
	cmp	edi, esi
	jne	.label_262
.label_260:
	dec	r14d
	add	rcx, 4
	cmp	rcx, rax
	jb	.label_263
	jmp	.label_248
.label_262:
	mov	dword ptr [r15 + 4], edi
	add	r15, 4
	add	rcx, 4
	cmp	rcx, rax
	mov	esi, edi
	jb	.label_263
	jmp	.label_248
.label_254:
	call	__errno_location
	mov	r14d, 0xffffffff
	cmp	dword ptr [rax], 0x26
	jne	.label_248
	xor	edi, edi
	mov	esi, 4
	call	realloc
	test	rax, rax
	je	.label_248
	mov	qword ptr [r12], rax
	mov	dword ptr [rax], r13d
	xor	r14d, r14d
	cmp	r13d, -1
	setne	r14b
	jmp	.label_248
.label_261:
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0xc
	jmp	.label_257
.label_264:
	call	__errno_location
	mov	rbx, rax
.label_257:
	mov	r14d, dword ptr [rbx]
	mov	rdi, rbp
	call	free
	mov	dword ptr [rbx], r14d
.label_258:
	mov	r14d, 0xffffffff
.label_248:
	mov	eax, r14d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_251:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r15
	call	free
	mov	dword ptr [rbx], ebp
	jmp	.label_248
	.section	.text
	.align	16
	#Procedure 0x404116
	.globl sub_404116
	.type sub_404116, @function
sub_404116:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404120

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_85
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_265
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404145
	.globl sub_404145
	.type sub_404145, @function
sub_404145:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404150

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
	je	.label_272
	mov	edx, OFFSET FLAT:label_281
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_268
.label_272:
	mov	edx, OFFSET FLAT:label_270
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_268:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_274
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
	mov	esi, OFFSET FLAT:label_271
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_276
	jmp	qword ptr [(r12 * 8) + label_277]
.label_591:
	add	rsp, 8
	jmp	.label_269
.label_276:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_284
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
	jmp	.label_269
.label_592:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_275
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
.label_593:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_266
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
.label_594:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_282
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
.label_595:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_279
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
	jmp	.label_269
.label_596:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_278
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
	jmp	.label_269
.label_597:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_280
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
	jmp	.label_269
.label_598:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_283
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
	jmp	.label_269
.label_600:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_267
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
	jmp	.label_269
.label_599:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_273
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
.label_269:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4044a8
	.globl sub_4044a8
	.type sub_4044a8, @function
sub_4044a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044b0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_85
	call	setlocale
	mov	edi, OFFSET FLAT:label_323
	mov	esi, OFFSET FLAT:label_324
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_323
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	jmp	.label_295
.label_567:
	mov	byte ptr [rip + just_group_list],  1
	nop	
.label_295:
	mov	edx, OFFSET FLAT:label_285
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x46
	jle	.label_291
	add	eax, -0x47
	cmp	eax, 0x33
	ja	.label_292
	jmp	qword ptr [(rax * 8) + label_294]
.label_569:
	mov	byte ptr [rip + just_group],  1
	jmp	.label_295
.label_572:
	mov	byte ptr [rip + just_user],  1
	jmp	.label_295
.label_573:
	mov	byte ptr [rip + opt_zero],  1
	jmp	.label_295
.label_570:
	mov	byte ptr [rip + use_name],  1
	jmp	.label_295
.label_571:
	mov	byte ptr [rip + use_real],  1
	jmp	.label_295
.label_291:
	cmp	eax, -1
	jne	.label_303
	movzx	esi, byte ptr [rip + just_user]
	movzx	ecx, byte ptr [rip + just_group]
	lea	eax, [rcx + rsi]
	movzx	edx, byte ptr [rip + just_group_list]
	add	eax, edx
	cmp	eax, 2
	jae	.label_305
	movsxd	rax, dword ptr [rip + optind]
	mov	ebx, esi
	or	bl, cl
	or	bl, dl
	jne	.label_312
	mov	bl, byte ptr [rip + use_real]
	test	bl, bl
	jne	.label_313
	cmp	byte ptr [rip + use_name],  1
	je	.label_313
	cmp	byte ptr [rip + opt_zero],  1
	je	.label_315
.label_312:
	movsxd	r15, ebp
	sub	r15, rax
	test	r15d, r15d
	je	.label_318
	cmp	r15d, 1
	setne	byte ptr [rip + multiple_users]
	add	r15, rax
	jmp	.label_322
	.section	.text
	.align	16
	#Procedure 0x4045de
	.globl sub_4045de
	.type sub_4045de, @function
sub_4045de:

	nop	
.label_306:
	movsxd	rax, dword ptr [rip + optind]
	inc	rax
	mov	dword ptr [rip + optind],  eax
.label_322:
	cmp	rax, r15
	jae	.label_326
	mov	rdi, qword ptr [r14 + rax*8]
	cmp	byte ptr [rdi], 0
	je	.label_289
	mov	esi, OFFSET FLAT:euid
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	call	parse_user_spec
	test	rax, rax
	jne	.label_289
	mov	edi, dword ptr [rip + euid]
	call	getpwuid
	mov	rbp, rax
	test	rbp, rbp
	je	.label_289
	mov	rdi, qword ptr [rbp]
	call	xstrdup
	mov	rbx, rax
	mov	rax, qword ptr [rbp + 0x10]
	mov	dword ptr [rip + euid],  eax
	mov	dword ptr [rip + ruid],  eax
	shr	rax, 0x20
	mov	dword ptr [rip + egid],  eax
	mov	dword ptr [rip + rgid],  eax
	mov	rdi, rbx
	call	print_stuff
	mov	rdi, rbx
	call	free
	jmp	.label_306
	.section	.text
	.align	16
	#Procedure 0x40466c
	.globl sub_40466c
	.type sub_40466c, @function
sub_40466c:

	nop	dword ptr [rax]
.label_289:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_307
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r14 + rax*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	mov	byte ptr [rip + ok],  0
	jmp	.label_306
.label_318:
	test	sil, sil
	je	.label_316
	mov	al, byte ptr [rip + use_real]
	test	al, al
	je	.label_317
	jmp	.label_310
.label_316:
	or	cl, dl
	jne	.label_310
.label_317:
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	call	geteuid
	mov	dword ptr [rip + euid],  eax
	cmp	eax, -1
	jne	.label_310
	mov	ebx, dword ptr [rbx]
	test	ebx, ebx
	jne	.label_325
.label_310:
	cmp	byte ptr [rip + just_user],  1
	jne	.label_327
	mov	al, byte ptr [rip + use_real]
	test	al, al
	jne	.label_328
	jmp	.label_286
.label_327:
	mov	al, byte ptr [rip + just_group]
	test	al, al
	jne	.label_286
.label_328:
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	call	getuid
	mov	dword ptr [rip + ruid],  eax
	cmp	eax, -1
	jne	.label_286
	mov	ebx, dword ptr [rbx]
	test	ebx, ebx
	jne	.label_296
.label_286:
	mov	al, byte ptr [rip + just_user]
	test	al, al
	jne	.label_297
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	call	getegid
	mov	dword ptr [rip + egid],  eax
	cmp	eax, -1
	jne	.label_302
	mov	ebp, dword ptr [rbx]
	test	ebp, ebp
	jne	.label_304
.label_302:
	mov	dword ptr [rbx], 0
	call	getgid
	mov	dword ptr [rip + rgid],  eax
	cmp	eax, -1
	jne	.label_297
	mov	ebx, dword ptr [rbx]
	test	ebx, ebx
	jne	.label_311
.label_297:
	xor	edi, edi
	call	print_stuff
.label_326:
	movzx	eax, byte ptr [rip + ok]
	xor	eax, 1
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_303:
	cmp	eax, 0xffffff7d
	je	.label_314
	cmp	eax, 0xffffff7e
	jne	.label_292
	xor	edi, edi
	call	usage
.label_568:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_309
	jmp	.label_288
.label_314:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_319
	mov	edx, OFFSET FLAT:label_161
	mov	r8d, OFFSET FLAT:label_320
	mov	r9d, OFFSET FLAT:label_321
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_292:
	mov	edi, 1
	call	usage
.label_305:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_287
	jmp	.label_288
.label_313:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_290
	jmp	.label_288
.label_315:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_293
.label_288:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_325:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_298
	jmp	.label_299
.label_296:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_300
	jmp	.label_299
.label_304:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_301
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_311:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_308
.label_299:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x4048a0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_329
	test	rax, rax
	je	.label_330
.label_329:
	pop	rbx
	ret	
.label_330:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4048ba
	.globl sub_4048ba
	.type sub_4048ba, @function
sub_4048ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048c0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_68]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_69]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_70]
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
	#Procedure 0x40492e
	.globl sub_40492e
	.type sub_40492e, @function
sub_40492e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404930
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
	#Procedure 0x404948
	.globl sub_404948
	.type sub_404948, @function
sub_404948:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404950

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_333
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_344
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_345
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_339
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_338
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_342
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_332
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_341
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_161
	mov	ecx, OFFSET FLAT:label_162
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_335
	mov	esi, OFFSET FLAT:label_337
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_335
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_336
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_335:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_340
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_162
	mov	ecx, OFFSET FLAT:label_319
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_331
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_319
	mov	ecx, OFFSET FLAT:label_334
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_333:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_343
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
	#Procedure 0x404b2b
	.globl sub_404b2b
	.type sub_404b2b, @function
sub_404b2b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b30
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x404b3e
	.globl sub_404b3e
	.type sub_404b3e, @function
sub_404b3e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404b40

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
	js	.label_346
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_349
	cmp	r12d, 0x7fffffff
	je	.label_351
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
	jne	.label_347
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_347:
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
.label_349:
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
	jbe	.label_352
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_348
.label_352:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_350
	mov	rdi, r14
	call	free
.label_350:
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
.label_348:
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
.label_346:
	call	abort
.label_351:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404cfd
	.globl sub_404cfd
	.type sub_404cfd, @function
sub_404cfd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404d00
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x404d11
	.globl sub_404d11
	.type sub_404d11, @function
sub_404d11:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d20

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
	jmp	.label_361
	.section	.text
	.align	16
	#Procedure 0x404dcf
	.globl sub_404dcf
	.type sub_404dcf, @function
sub_404dcf:

	nop	
.label_358:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_357
	or	al, dl
	jne	.label_357
	test	dil, 1
	jne	.label_354
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_357
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_361
	jmp	.label_357
.label_529:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_369
	test	rbp, rbp
	je	.label_374
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_374:
	mov	r14d, 1
	jmp	.label_378
.label_530:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_191
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_380
.label_369:
	xor	r14d, r14d
.label_378:
	mov	eax, OFFSET FLAT:label_191
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_392
	.section	.text
	.align	16
	#Procedure 0x404e9f
	.globl sub_404e9f
	.type sub_404e9f, @function
sub_404e9f:

	nop	
.label_361:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_403
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_448]
.label_531:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_414
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_192
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_532:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_372
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_372
	xor	r14d, r14d
	nop	
.label_450:
	cmp	r14, rbp
	jae	.label_437
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_437:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_450
.label_372:
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
	jmp	.label_380
.label_524:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_380
.label_527:
	mov	al, 1
.label_525:
	mov	r12b, 1
.label_528:
	test	r12b, 1
	mov	cl, 1
	je	.label_449
	mov	ecx, eax
.label_449:
	mov	al, cl
.label_526:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_458
	test	rbp, rbp
	je	.label_464
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_464:
	mov	r14d, 1
	jmp	.label_411
.label_458:
	xor	r14d, r14d
.label_411:
	mov	ecx, OFFSET FLAT:label_192
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_392:
	mov	sil, r12b
.label_380:
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
	jmp	.label_471
	.section	.text
	.align	16
	#Procedure 0x405061
	.globl sub_405061
	.type sub_405061, @function
sub_405061:

	nop	word ptr cs:[rax + rax]
.label_456:
	inc	r12
.label_471:
	cmp	r11, -1
	je	.label_387
	cmp	r12, r11
	jne	.label_389
	jmp	.label_391
	.section	.text
	.align	16
	#Procedure 0x405083
	.globl sub_405083
	.type sub_405083, @function
sub_405083:

	nop	word ptr cs:[rax + rax]
.label_387:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_395
.label_389:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_404
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_407
	cmp	r11, -1
	jne	.label_407
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_407:
	cmp	rbx, r11
	jbe	.label_419
.label_404:
	xor	esi, esi
.label_444:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_421
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_426]
.label_545:
	test	r12, r12
	jne	.label_373
	jmp	.label_430
	.section	.text
	.align	16
	#Procedure 0x405116
	.globl sub_405116
	.type sub_405116, @function
sub_405116:

	nop	word ptr cs:[rax + rax]
.label_419:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_441
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_444
	jmp	.label_438
.label_441:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_444
.label_549:
	xor	eax, eax
	cmp	r11, -1
	je	.label_452
	test	r12, r12
	jne	.label_455
	cmp	r11, 1
	je	.label_430
	xor	r13d, r13d
	jmp	.label_356
.label_538:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_460
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_438
	cmp	r8d, 2
	jne	.label_465
	mov	eax, r9d
	and	al, 1
	jne	.label_465
	cmp	r14, rbp
	jae	.label_467
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_467:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_468
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_468:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_474
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_474:
	add	r14, 3
	mov	r9b, 1
.label_465:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_477
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_477:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_363
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_363
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_363
	cmp	r14, rbp
	jae	.label_368
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_368:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_473
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_473:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_356
.label_539:
	mov	bl, 0x62
	jmp	.label_388
.label_540:
	mov	cl, 0x74
	jmp	.label_381
.label_541:
	mov	bl, 0x76
	jmp	.label_388
.label_542:
	mov	bl, 0x66
	jmp	.label_388
.label_543:
	mov	cl, 0x72
	jmp	.label_381
.label_546:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_399
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_385
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
	jae	.label_409
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_409:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_423
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_423:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_428
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_428:
	add	r14, 3
	xor	r9d, r9d
.label_399:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_356
.label_547:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_433
	cmp	r8d, 2
	jne	.label_373
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_373
	jmp	.label_385
.label_548:
	cmp	r8d, 2
	jne	.label_446
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_385
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_367
.label_421:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_386
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_457
.label_452:
	test	r12, r12
	jne	.label_466
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_466
.label_430:
	mov	dl, 1
.label_544:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_385
	xor	eax, eax
	mov	r13b, dl
.label_356:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_472
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_475
	jmp	.label_353
	.section	.text
	.align	16
	#Procedure 0x4053f4
	.globl sub_4053f4
	.type sub_4053f4, @function
sub_4053f4:

	nop	word ptr cs:[rax + rax]
.label_472:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_353
.label_475:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_365
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_362
	.section	.text
	.align	16
	#Procedure 0x40542d
	.globl sub_40542d
	.type sub_40542d, @function
sub_40542d:

	nop	dword ptr [rax]
.label_353:
	test	sil, sil
.label_362:
	mov	ebx, r15d
	je	.label_366
	jmp	.label_371
.label_365:
	mov	ebx, r15d
	jmp	.label_371
.label_460:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_456
	xor	r15d, r15d
	jmp	.label_373
.label_446:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_381
	xor	eax, eax
	mov	r15b, 0x5c
.label_367:
	xor	r13d, r13d
	jmp	.label_366
.label_381:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_385
.label_388:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_356
	nop	
.label_371:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_438
	cmp	r8d, 2
	jne	.label_401
	mov	eax, r9d
	and	al, 1
	jne	.label_401
	cmp	r14, rbp
	jae	.label_406
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_406:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_410
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_410:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_413
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_413:
	add	r14, 3
	mov	r9b, 1
.label_401:
	cmp	r14, rbp
	jae	.label_420
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_420:
	inc	r14
	jmp	.label_461
.label_386:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_427
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_427:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_396
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_425:
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
	je	.label_360
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_453
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_383
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_462
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_429:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_431
	bt	rsi, rdx
	jb	.label_385
.label_431:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_429
.label_462:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_440
	xor	r13d, r13d
.label_440:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_425
	jmp	.label_364
.label_363:
	xor	r13d, r13d
	jmp	.label_356
.label_466:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_356
.label_433:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_373
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_373
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_373
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_384
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_417
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_394
	cmp	r14, rbp
	jae	.label_397
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_397:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_405
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_405:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_376
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_376:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_375
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_375:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_417:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_356
.label_373:
	xor	eax, eax
.label_455:
	xor	r13d, r13d
	jmp	.label_356
.label_396:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_451:
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
	je	.label_442
	cmp	rbp, -1
	je	.label_445
	cmp	rbp, -2
	je	.label_360
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_447
	xor	r13d, r13d
.label_447:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_451
	jmp	.label_364
.label_360:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_435
	lea	rax, [r10 + r12]
.label_422:
	cmp	byte ptr [rax + rsi], 0
	je	.label_435
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_422
.label_435:
	mov	qword ptr [rsp + 0x40], rsi
.label_453:
	xor	r13d, r13d
	jmp	.label_383
.label_445:
	xor	r13d, r13d
.label_442:
	mov	r10, qword ptr [rsp + 0x28]
.label_383:
	mov	r12, qword ptr [rsp + 0x40]
.label_364:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_457:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_355
	test	al, al
	je	.label_355
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_356
.label_355:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_359
	.section	.text
	.align	16
	#Procedure 0x405827
	.globl sub_405827
	.type sub_405827, @function
sub_405827:

	nop	word ptr [rax + rax]
.label_454:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_359:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_370
	test	sil, 1
	je	.label_382
	cmp	r14, rbp
	jae	.label_377
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_377:
	inc	r14
	xor	esi, esi
	jmp	.label_382
	.section	.text
	.align	16
	#Procedure 0x405865
	.globl sub_405865
	.type sub_405865, @function
sub_405865:

	nop	word ptr cs:[rax + rax]
.label_370:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_438
	cmp	r8d, 2
	jne	.label_390
	mov	eax, r9d
	and	al, 1
	jne	.label_390
	cmp	r14, rbp
	jae	.label_393
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_393:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_398
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_398:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_400
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_400:
	add	r14, 3
	mov	r9b, 1
.label_390:
	cmp	r14, rbp
	jae	.label_412
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_412:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_416
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_416:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_424
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_424:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_382:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_366
	test	r9b, 1
	je	.label_434
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_432
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_439
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_439:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_470
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_470:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_434
	.section	.text
	.align	16
	#Procedure 0x405976
	.globl sub_405976
	.type sub_405976, @function
sub_405976:

	nop	word ptr cs:[rax + rax]
.label_432:
	mov	rbx, rcx
.label_434:
	cmp	r14, rbp
	jae	.label_454
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_454
	.section	.text
	.align	16
	#Procedure 0x40599e
	.globl sub_40599e
	.type sub_40599e, @function
sub_40599e:

	nop	
.label_366:
	test	r9b, 1
	je	.label_459
	and	al, 1
	jne	.label_459
	cmp	r14, rbp
	jae	.label_463
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_463:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_379
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_379:
	add	r14, 2
	xor	r9d, r9d
.label_459:
	mov	ebx, r15d
.label_461:
	cmp	r14, rbp
	jae	.label_469
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_469:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_456
.label_384:
	xor	r13d, r13d
	jmp	.label_356
	.section	.text
	.align	16
	#Procedure 0x405a01
	.globl sub_405a01
	.type sub_405a01, @function
sub_405a01:

	nop	word ptr cs:[rax + rax]
.label_391:
	mov	rcx, r12
.label_395:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_358
	or	al, dl
	jne	.label_358
	mov	r11, rcx
	jmp	.label_438
.label_385:
	mov	eax, 2
.label_443:
	mov	qword ptr [rsp + 0x38], rax
.label_438:
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
.label_402:
	mov	r14, rax
.label_436:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_357:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_476
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_408
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_408
	inc	rdx
	nop	dword ptr [rax + rax]
.label_418:
	cmp	r14, rbp
	jae	.label_415
	mov	byte ptr [rcx + r14], al
.label_415:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_418
	jmp	.label_408
.label_354:
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
	jmp	.label_402
.label_476:
	mov	rcx, qword ptr [rsp + 0x10]
.label_408:
	cmp	r14, rbp
	jae	.label_436
	mov	byte ptr [rcx + r14], 0
	jmp	.label_436
.label_394:
	mov	eax, 5
	jmp	.label_443
.label_403:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405b50
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_68]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_69]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_70]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_478
	test	rsi, rsi
	je	.label_478
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
.label_478:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405bbc
	.globl sub_405bbc
	.type sub_405bbc, @function
sub_405bbc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405bc0
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
	#Procedure 0x405bf6
	.globl sub_405bf6
	.type sub_405bf6, @function
sub_405bf6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c65
	.globl sub_405c65
	.type sub_405c65, @function
sub_405c65:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c72
	.globl sub_405c72
	.type sub_405c72, @function
sub_405c72:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c96
	.globl sub_405c96
	.type sub_405c96, @function
sub_405c96:

	nop	word ptr cs:[rax + rax]
