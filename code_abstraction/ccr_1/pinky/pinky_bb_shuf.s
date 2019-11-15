	.section	.text
	.align	16
	#Procedure 0x401959
	.globl sub_401959
	.type sub_401959, @function
sub_401959:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40195a
	.globl sub_40195a
	.type sub_40195a, @function
sub_40195a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401992
	.globl sub_401992
	.type sub_401992, @function
sub_401992:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4019da
	.globl sub_4019da
	.type sub_4019da, @function
sub_4019da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4019fc
	.globl sub_4019fc
	.type sub_4019fc, @function
sub_4019fc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401a0d
	.globl sub_401a0d
	.type sub_401a0d, @function
sub_401a0d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401a26
	.globl sub_401a26
	.type sub_401a26, @function
sub_401a26:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a30

	.globl long_pinky
	.type long_pinky, @function
long_pinky:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	ebp, edi
	test	ebp, ebp
	jle	.label_9
	nop	dword ptr [rax]
.label_10:
	mov	rdi, qword ptr [rbx]
	call	print_long_entry
	add	rbx, 8
	dec	ebp
	jne	.label_10
.label_9:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401a57
	.globl sub_401a57
	.type sub_401a57, @function
sub_401a57:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a60

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
	.align	16
	#Procedure 0x401a8d
	.globl sub_401a8d
	.type sub_401a8d, @function
sub_401a8d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401a90
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
	.align	16
	#Procedure 0x401aa3
	.globl sub_401aa3
	.type sub_401aa3, @function
sub_401aa3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ab0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_20
	nop	
.label_19:
	mov	edi, OFFSET FLAT:label_11
	call	strcmp
	test	eax, eax
	je	.label_17
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_19
.label_17:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_11
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_15
	mov	ecx, OFFSET FLAT:label_16
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_12
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_12
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_12:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_11
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_16
	mov	ecx, OFFSET FLAT:label_11
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_23
	mov	ecx, OFFSET FLAT:label_24
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
	.align	16
	#Procedure 0x401bca
	.globl sub_401bca
	.type sub_401bca, @function
sub_401bca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401bd0

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
	je	.label_35
	mov	edx, OFFSET FLAT:label_40
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_27
.label_35:
	mov	edx, OFFSET FLAT:label_29
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_27:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_34
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
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_36
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_37]]
.label_409:
	add	rsp, 8
	jmp	.label_28
.label_36:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_43
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
	jmp	.label_28
.label_410:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
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
.label_411:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
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
.label_412:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_41
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
.label_413:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_38
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
	jmp	.label_28
.label_414:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
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
	jmp	.label_28
.label_415:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_39
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
	jmp	.label_28
.label_416:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_42
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
	jmp	.label_28
.label_418:
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
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_28
.label_417:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
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
.label_28:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f28
	.globl sub_401f28
	.type sub_401f28, @function
sub_401f28:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f30
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f3a
	.globl sub_401f3a
	.type sub_401f3a, @function
sub_401f3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f40
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
	#Procedure 0x401f4f
	.globl sub_401f4f
	.type sub_401f4f, @function
sub_401f4f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401f50

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_44
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_45
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
.label_53:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_46
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_50
	xor	eax, eax
	mov	rdx, rcx
	add	rsp, 0x408
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__printf_chk
	.section	.text
	.align	16
	#Procedure 0x401fb6

	.globl print_long_entry
	.type print_long_entry, @function
print_long_entry:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x408
	mov	rbx, rdi
	call	getpwnam
	mov	r15, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_59
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_66
	xor	eax, eax
	mov	rdx, rbx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	test	r15, r15
	je	.label_53
	mov	rdi, qword ptr [r15 + 0x18]
	mov	esi, 0x2c
	call	strchr
	test	rax, rax
	je	.label_58
	mov	byte ptr [rax], 0
.label_58:
	mov	rsi, qword ptr [r15]
	mov	rdi, qword ptr [r15 + 0x18]
	call	create_fullname
	mov	rbx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_50
	xor	eax, eax
	mov	rdx, rbx
	call	__printf_chk
	mov	rdi, rbx
	call	free
	mov	edi, 0xa
	call	putchar_unlocked
	mov	al,  byte ptr [byte ptr [rip + include_home_and_shell]]
	test	al, al
	jne	.label_67
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_49
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	rdx, qword ptr [r15 + 0x20]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_54
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	rdx, qword ptr [r15 + 0x28]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_50
	xor	eax, eax
	call	__printf_chk
	mov	edi, 0xa
	call	putchar_unlocked
.label_67:
	mov	al,  byte ptr [byte ptr [rip + include_project]]
	test	al, al
	jne	.label_47
	mov	rdi, qword ptr [r15 + 0x20]
	call	strlen
	lea	rdi, [rax + 0xa]
	call	xmalloc
	mov	r14, rax
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, r14
	call	stpcpy
	movabs	rcx, 0x63656a6f72702e2f
	mov	qword ptr [rax], rcx
	mov	word ptr [rax + 8], 0x74
	mov	esi, OFFSET FLAT:label_52
	mov	rdi, r14
	call	fopen
	mov	r12, rax
	test	r12, r12
	je	.label_64
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_63
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	lea	rdi, [rsp]
	mov	esi, 1
	mov	edx, 0x400
	mov	rcx, r12
	call	fread_unlocked
	test	rax, rax
	je	.label_51
	lea	rbx, [rsp]
	nop	dword ptr [rax + rax]
.label_60:
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rdi, rbx
	mov	rdx, rax
	call	fwrite_unlocked
	mov	esi, 1
	mov	edx, 0x400
	mov	rdi, rbx
	mov	rcx, r12
	call	fread_unlocked
	test	rax, rax
	jne	.label_60
.label_51:
	mov	rdi, r12
	call	rpl_fclose
.label_64:
	mov	rdi, r14
	call	free
.label_47:
	mov	al,  byte ptr [byte ptr [rip + include_plan]]
	test	al, al
	jne	.label_65
	mov	rdi, qword ptr [r15 + 0x20]
	call	strlen
	lea	rdi, [rax + 7]
	call	xmalloc
	mov	r14, rax
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, r14
	call	stpcpy
	mov	byte ptr [rax + 6], 0
	mov	word ptr [rax + 4], 0x6e61
	mov	dword ptr [rax], 0x6c702e2f
	mov	esi, OFFSET FLAT:label_52
	mov	rdi, r14
	call	fopen
	mov	r15, rax
	test	r15, r15
	je	.label_56
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_57
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	lea	rdi, [rsp]
	mov	esi, 1
	mov	edx, 0x400
	mov	rcx, r15
	call	fread_unlocked
	test	rax, rax
	je	.label_62
	lea	rbx, [rsp]
	nop	dword ptr [rax + rax]
.label_55:
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rdi, rbx
	mov	rdx, rax
	call	fwrite_unlocked
	mov	esi, 1
	mov	edx, 0x400
	mov	rdi, rbx
	mov	rcx, r15
	call	fread_unlocked
	test	rax, rax
	jne	.label_55
.label_62:
	mov	rdi, r15
	call	rpl_fclose
.label_56:
	mov	rdi, r14
	call	free
.label_65:
	mov	edi, 0xa
	call	putchar_unlocked
	add	rsp, 0x408
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4022e0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	16
	#Procedure 0x4022ea
	.globl sub_4022ea
	.type sub_4022ea, @function
sub_4022ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022f0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_68
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_70
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_68
.label_70:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_68
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_69
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_69:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_68:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x402367
	.globl sub_402367
	.type sub_402367, @function
sub_402367:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402370
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
	.align	16
	#Procedure 0x402389
	.globl sub_402389
	.type sub_402389, @function
sub_402389:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402390
	.globl extract_trimmed_name
	.type extract_trimmed_name, @function
extract_trimmed_name:

	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	edi, 0x21
	call	xmalloc
	mov	rbx, rax
	lea	rsi, [r14 + 0x2c]
	mov	edx, 0x20
	mov	rdi, rbx
	call	strncpy
	mov	byte ptr [rbx + 0x20], 0
	mov	rdi, rbx
	call	strlen
	test	rax, rax
	jle	.label_71
	add	rax, rbx
	nop	dword ptr [rax]
.label_72:
	cmp	byte ptr [rax - 1], 0x20
	jne	.label_71
	mov	byte ptr [rax - 1], 0
	dec	rax
	cmp	rbx, rax
	jb	.label_72
.label_71:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x4023ed
	.globl sub_4023ed
	.type sub_4023ed, @function
sub_4023ed:

	nop	dword ptr [rax]
.label_73:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4023f5
	.globl sub_4023f5
	.type sub_4023f5, @function
sub_4023f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023ff
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_73
	call	rpl_calloc
	test	rax, rax
	je	.label_73
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402420
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x40242a
	.globl sub_40242a
	.type sub_40242a, @function
sub_40242a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402430

	.globl print_heading
	.type print_heading, @function
print_heading:
	push	rbx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_80
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_74
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
	mov	al,  byte ptr [byte ptr [rip + include_fullname]]
	test	al, al
	jne	.label_85
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_75
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_83
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
.label_85:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_78
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_86
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
	mov	al,  byte ptr [byte ptr [rip + include_idle]]
	test	al, al
	jne	.label_82
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_87
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_79
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
.label_82:
	mov	ebx,  dword ptr [dword ptr [rip + time_format_width]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_76
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_77
	xor	eax, eax
	mov	edx, ebx
	call	__printf_chk
	mov	al,  byte ptr [byte ptr [rip + include_where]]
	test	al, al
	jne	.label_81
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_50
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
.label_81:
	mov	edi, 0xa
	pop	rbx
	jmp	putchar_unlocked
	.section	.text
	.align	16
	#Procedure 0x40254f
	.globl sub_40254f
	.type sub_40254f, @function
sub_40254f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402550
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40255a
	.globl sub_40255a
	.type sub_40255a, @function
sub_40255a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402560

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
	je	.label_88
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_89
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_89
.label_88:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_89
	test	cl, cl
	jne	.label_89
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_89:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4025c6
	.globl sub_4025c6
	.type sub_4025c6, @function
sub_4025c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4025d0
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
	#Procedure 0x402603
	.globl sub_402603
	.type sub_402603, @function
sub_402603:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402610

	.globl main
	.type main, @function
main:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	ebx, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_24
	call	setlocale
	mov	edi, OFFSET FLAT:label_101
	mov	esi, OFFSET FLAT:label_102
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_101
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	jmp	.label_90
.label_469:
	mov	byte ptr [byte ptr [rip + include_home_and_shell]],  1
	nop	dword ptr [rax]
.label_90:
	mov	edx, OFFSET FLAT:label_99
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebx
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x61
	jle	.label_105
	add	eax, -0x62
	cmp	eax, 0x15
	ja	.label_104
	jmp	qword ptr [word ptr [+ (rax * 8) + label_91]]
.label_470:
	mov	byte ptr [byte ptr [rip + include_heading]],  1
	jmp	.label_90
.label_471:
	mov	byte ptr [byte ptr [rip + include_project]],  1
	jmp	.label_90
.label_472:
	mov	byte ptr [byte ptr [rip + include_fullname]],  1
	mov	byte ptr [byte ptr [rip + include_where]],  1
	jmp	.label_90
.label_473:
	mov	byte ptr [byte ptr [rip + do_short_format]],  1
	jmp	.label_90
.label_474:
	mov	byte ptr [byte ptr [rip + include_plan]],  1
	jmp	.label_90
.label_475:
	mov	byte ptr [byte ptr [rip + include_fullname]],  1
	mov	byte ptr [byte ptr [rip + include_where]],  1
	mov	byte ptr [byte ptr [rip + include_idle]],  1
	jmp	.label_90
.label_476:
	mov	byte ptr [byte ptr [rip + do_short_format]],  0
	jmp	.label_90
.label_477:
	mov	byte ptr [byte ptr [rip + include_fullname]],  1
	jmp	.label_90
.label_105:
	cmp	eax, -1
	jne	.label_103
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	sub	ebx, eax
	mov	cl,  byte ptr [byte ptr [rip + do_short_format]]
	cmp	cl, 1
	jne	.label_92
	test	ebx, ebx
	je	.label_106
.label_92:
	lea	rsi, [r14 + rax*8]
	mov	edi, ebx
	test	cl, cl
	je	.label_97
	call	long_pinky
	jmp	.label_98
.label_97:
	call	short_pinky
.label_98:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_103:
	cmp	eax, 0xffffff7d
	je	.label_100
	cmp	eax, 0xffffff7e
	jne	.label_104
	xor	edi, edi
	call	usage
.label_100:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_11
	mov	edx, OFFSET FLAT:label_15
	mov	r8d, OFFSET FLAT:label_94
	mov	r9d, OFFSET FLAT:label_95
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_96
	call	version_etc
	add	rsp, 0x10
	xor	edi, edi
	call	exit
.label_104:
	mov	edi, 1
	call	usage
.label_106:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_93
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
	#Procedure 0x4027ba
	.globl sub_4027ba
	.type sub_4027ba, @function
sub_4027ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027c0

	.globl short_pinky
	.type short_pinky, @function
short_pinky:
	push	rbp
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	ebp, edi
	mov	qword ptr [rsp + 8], 0
	lea	rsi, [rsp + 0x10]
	lea	rdx, [rsp + 8]
	mov	edi, OFFSET FLAT:label_107
	xor	ecx, ecx
	call	read_utmp
	test	eax, eax
	jne	.label_108
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 8]
	mov	edx, ebp
	mov	rcx, rbx
	call	scan_entries
	add	rsp, 0x18
	pop	rbx
	pop	rbp
	ret	
.label_108:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	edx, OFFSET FLAT:label_107
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_45
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402840
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
	#Procedure 0x402853
	.globl sub_402853
	.type sub_402853, @function
sub_402853:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402860
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_109
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_110
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_112
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_15
	mov	ecx, OFFSET FLAT:label_16
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_111
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x4028d4
	.globl sub_4028d4
	.type sub_4028d4, @function
sub_4028d4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028e0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4028ea
	.globl sub_4028ea
	.type sub_4028ea, @function
sub_4028ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028f0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	16
	#Procedure 0x4028fd
	.globl sub_4028fd
	.type sub_4028fd, @function
sub_4028fd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402900
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
	.align	16
	#Procedure 0x402910

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_113
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_113:
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
	#Procedure 0x402993
	.globl sub_402993
	.type sub_402993, @function
sub_402993:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4029a0

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_114
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_115:
	mov	rax, rcx
	imul	r8
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	add	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	add	rdx, rax
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_115
	jmp	.label_117
.label_114:
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_116:
	mov	rax, rcx
	imul	r8
	mov	r10, rdx
	shr	r10, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + r10]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	mov	eax, 0x30
	sub	eax, edi
	mov	byte ptr [rsi], al
	add	rdx, r10
	add	rcx, 9
	dec	rsi
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_116
	mov	byte ptr [rsi], 0x2d
.label_117:
	mov	rax, rsi
	ret	
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

	.globl print_entry
	.type print_entry, @function
print_entry:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1c8
	mov	r13, rdi
	lea	r14, [r13 + 8]
	cmp	byte ptr [r13 + 8], 0x2f
	jne	.label_134
	lea	rdi, [rsp]
	jmp	.label_138
.label_134:
	lea	rdi, [rsp + 5]
	mov	word ptr [rsp + 4], 0x2f
	mov	dword ptr [rsp], 0x7665642f
.label_138:
	mov	edx, 0x20
	mov	rsi, r14
	call	stzncpy
	lea	rdi, [rsp]
	lea	rsi, [rsp + 0x30]
	call	stat
	mov	r12d, 0x3f
	xor	r15d, r15d
	test	eax, eax
	jne	.label_124
	test	byte ptr [rsp + 0x48], 0x10
	mov	eax, 0x20
	mov	r12d, 0x2a
	cmovne	r12d, eax
	mov	r15, qword ptr [rsp + 0x78]
.label_124:
	lea	rbp, [r13 + 0x2c]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_133
	mov	edx, 0x20
	xor	eax, eax
	mov	rcx, rbp
	call	__printf_chk
	mov	al,  byte ptr [byte ptr [rip + include_fullname]]
	test	al, al
	jne	.label_136
	lea	rbx, [rsp + 0xc0]
	mov	edx, 0x20
	mov	rdi, rbx
	mov	rsi, rbp
	call	stzncpy
	mov	rdi, rbx
	call	getpwnam
	mov	rbp, rax
	test	rbp, rbp
	je	.label_123
	mov	rdi, qword ptr [rbp + 0x18]
	mov	esi, 0x2c
	call	strchr
	test	rax, rax
	je	.label_126
	mov	byte ptr [rax], 0
.label_126:
	mov	rsi, qword ptr [rbp]
	mov	rdi, qword ptr [rbp + 0x18]
	call	create_fullname
	mov	rbx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_131
	xor	eax, eax
	mov	rdx, rbx
	call	__printf_chk
	mov	rdi, rbx
	call	free
	jmp	.label_136
.label_123:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_137
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_118
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
.label_136:
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_122
	mov	ecx, 0x20
	xor	eax, eax
	mov	edx, r12d
	mov	r8, r14
	call	__printf_chk
	mov	al,  byte ptr [byte ptr [rip + include_idle]]
	test	al, al
	jne	.label_125
	test	r15, r15
	je	.label_127
	mov	rdi, r15
	call	idle_string
	jmp	.label_129
.label_127:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_130
	mov	edx, 5
	call	dcgettext
.label_129:
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_79
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
.label_125:
	mov	rdi, r13
	call	time_string
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_50
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
	mov	al,  byte ptr [byte ptr [rip + include_where]]
	test	al, al
	jne	.label_121
	cmp	byte ptr [r13 + 0x4c], 0
	je	.label_121
	add	r13, 0x4c
	lea	r14, [rsp + 0xc0]
	mov	edx, 0x100
	mov	rdi, r14
	mov	rsi, r13
	call	stzncpy
	mov	esi, 0x3a
	mov	rdi, r14
	call	strchr
	xor	ebx, ebx
	test	rax, rax
	je	.label_132
	mov	rbx, rax
	inc	rbx
	mov	byte ptr [rax], 0
.label_132:
	xor	ebp, ebp
	cmp	byte ptr [rsp + 0xc0], 0
	je	.label_135
	lea	rdi, [rsp + 0xc0]
	call	canon_host
	mov	rbp, rax
.label_135:
	test	rbp, rbp
	cmovne	r14, rbp
	mov	edi, 1
	test	rbx, rbx
	je	.label_119
	mov	esi, OFFSET FLAT:label_120
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbx
	call	__printf_chk
	jmp	.label_128
.label_119:
	mov	esi, OFFSET FLAT:label_50
	xor	eax, eax
	mov	rdx, r14
	call	__printf_chk
.label_128:
	test	rbp, rbp
	je	.label_121
	mov	rdi, r14
	call	free
.label_121:
	mov	edi, 0xa
	call	putchar_unlocked
	add	rsp, 0x1c8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402cdf
	.globl sub_402cdf
	.type sub_402cdf, @function
sub_402cdf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402ce0
	.globl ch_strerror
	.type ch_strerror, @function
ch_strerror:

	mov	edi,  dword ptr [dword ptr [rip + last_cherror]]
	jmp	gai_strerror
	.section	.text
	.align	16
	#Procedure 0x402ceb
	.globl sub_402ceb
	.type sub_402ceb, @function
sub_402ceb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402cf0

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
	mov	rcx,  qword ptr [word ptr [rip + label_139]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_140]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_141]]
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
	.align	16
	#Procedure 0x402d5d
	.globl sub_402d5d
	.type sub_402d5d, @function
sub_402d5d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402d60

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x402d6d
	.globl sub_402d6d
	.type sub_402d6d, @function
sub_402d6d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402d70

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	16
	#Procedure 0x402d77
	.globl sub_402d77
	.type sub_402d77, @function
sub_402d77:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d80
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
	.align	16
	#Procedure 0x402d96
	.globl sub_402d96
	.type sub_402d96, @function
sub_402d96:

	nop	word ptr cs:[rax + rax]
.label_144:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_142
.label_143:
	mov	eax, 1
	test	bpl, bpl
	je	.label_142
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
.label_142:
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
	#Procedure 0x402de8
	.globl sub_402de8
	.type sub_402de8, @function
sub_402de8:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402deb

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
	je	.label_144
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_143
	jmp	.label_142
	.section	.text
	.align	16
	#Procedure 0x402e20

	.globl canon_host
	.type canon_host, @function
canon_host:
	mov	esi, OFFSET FLAT:last_cherror
	jmp	canon_host_r
	.section	.text
	.align	16
	#Procedure 0x402e27
	.globl sub_402e27
	.type sub_402e27, @function
sub_402e27:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e30

	.globl canon_host_r
	.type canon_host_r, @function
canon_host_r:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp], 0
	mov	dword ptr [dword ptr [rip + canon_host_r.hints]],  2
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, OFFSET FLAT:canon_host_r.hints
	call	getaddrinfo
	test	eax, eax
	je	.label_147
	xor	ebx, ebx
	test	r14, r14
	je	.label_145
	mov	dword ptr [r14], eax
	xor	ebx, ebx
	jmp	.label_145
.label_147:
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax + 0x20]
	test	rax, rax
	cmovne	rbx, rax
	mov	rdi, rbx
	call	__strdup
	mov	rbx, rax
	test	r14, r14
	je	.label_146
	test	rbx, rbx
	jne	.label_146
	mov	dword ptr [r14], 0xfffffff6
.label_146:
	mov	rdi, qword ptr [rsp]
	call	freeaddrinfo
.label_145:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ead
	.globl sub_402ead
	.type sub_402ead, @function
sub_402ead:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402eb0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x402eb8
	.globl sub_402eb8
	.type sub_402eb8, @function
sub_402eb8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ec0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_148
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_148:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ed8
	.globl sub_402ed8
	.type sub_402ed8, @function
sub_402ed8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ee0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_149
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_149:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402f06
	.globl sub_402f06
	.type sub_402f06, @function
sub_402f06:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f10

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_150
	test	rbx, rbx
	jne	.label_150
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_150:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_152
	test	rax, rax
	je	.label_151
.label_152:
	pop	rbx
	ret	
.label_151:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402f40

	.globl idle_string
	.type idle_string, @function
idle_string:
	push	rbx
	mov	rbx, rdi
	cmp	qword ptr [word ptr [rip + idle_string.now]],  0
	jne	.label_153
	mov	edi, OFFSET FLAT:idle_string.now
	call	time
.label_153:
	mov	rcx,  qword ptr [word ptr [rip + idle_string.now]]
	sub	rcx, rbx
	mov	ebx, OFFSET FLAT:label_157
	cmp	rcx, 0x3c
	jl	.label_156
	cmp	rcx, 0x1517f
	jg	.label_154
	mov	rax, rcx
	shr	rax, 4
	movabs	rdx, 0x91a2b3c4d5e6f81
	mul	rdx
	mov	r8, rdx
	shr	r8, 3
	imul	rax, r8, 0xe10
	sub	rcx, rax
	movabs	rdx, 0x8888888888888889
	mov	rax, rcx
	mul	rdx
	mov	r9, rdx
	shr	r9, 5
	mov	ebx, OFFSET FLAT:idle_string.buf
	mov	edi, OFFSET FLAT:idle_string.buf
	mov	esi, 1
	mov	edx, 0x16
	mov	ecx, OFFSET FLAT:label_158
	xor	eax, eax
	call	__sprintf_chk
	jmp	.label_156
.label_154:
	movabs	rdx, 0xc22e450672894ab7
	mov	rax, rcx
	mul	rdx
	mov	r8, rdx
	shr	r8, 0x10
	mov	ebx, OFFSET FLAT:idle_string.buf
	mov	edi, OFFSET FLAT:idle_string.buf
	mov	esi, 1
	mov	edx, 0x16
	mov	ecx, OFFSET FLAT:label_155
	xor	eax, eax
	call	__sprintf_chk
.label_156:
	mov	rax, rbx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403014
	.globl sub_403014
	.type sub_403014, @function
sub_403014:

	nop	word ptr cs:[rax + rax]
.label_166:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403025
	.globl sub_403025
	.type sub_403025, @function
sub_403025:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40302a

	.globl create_fullname
	.type create_fullname, @function
create_fullname:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r13, rdi
	call	strlen
	mov	r15, rax
	inc	r15
	mov	rdi, r13
	call	count_ampersands
	mov	r12, rax
	test	r12, r12
	je	.label_159
	mov	rdi, r14
	call	strlen
	mov	rcx, rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r12
	cmp	rax, rcx
	jb	.label_166
	imul	rcx, r12
	mov	rax, rcx
	sub	rax, r12
	add	r15, rax
	cmp	r15, rcx
	jb	.label_166
.label_159:
	mov	rdi, r15
	call	xmalloc
	mov	r15, rax
	lea	r12, [r14 + 1]
	mov	rbx, r15
	jmp	.label_163
	.section	.text
	.align	16
	#Procedure 0x4030a3
	.globl sub_4030a3
	.type sub_4030a3, @function
sub_4030a3:

	nop	dword ptr [rax]
.label_165:
	mov	byte ptr [rbx], 0
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_161:
	movsx	edi, byte ptr [r14]
	call	to_uchar
	movzx	ebp, al
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2 + 1], 2
	jne	.label_160
	mov	rax, r14
	jmp	.label_164
.label_160:
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	al, byte ptr [rax + rbp*4]
	mov	byte ptr [rbx], al
	inc	rbx
	mov	rax, r12
.label_164:
	mov	cl, byte ptr [rax]
	test	cl, cl
	je	.label_162
	inc	rax
	nop	dword ptr [rax]
.label_167:
	mov	byte ptr [rbx], cl
	inc	rbx
	movzx	ecx, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_167
	jmp	.label_162
.label_162:
	inc	r13
.label_163:
	mov	al, byte ptr [r13]
	cmp	al, 0x26
	je	.label_161
	test	al, al
	je	.label_165
	mov	byte ptr [rbx], al
	inc	rbx
	inc	r13
	jmp	.label_163
	.section	.text
	.align	16
	#Procedure 0x403129
	.globl sub_403129
	.type sub_403129, @function
sub_403129:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403130

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40313a
	.globl sub_40313a
	.type sub_40313a, @function
sub_40313a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403140
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
	.align	16
	#Procedure 0x403150

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x403159
	.globl sub_403159
	.type sub_403159, @function
sub_403159:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403160
	.globl quote
	.type quote, @function
quote:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x40316a
	.globl sub_40316a
	.type sub_40316a, @function
sub_40316a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403170

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403173
	.globl sub_403173
	.type sub_403173, @function
sub_403173:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403180
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40318a
	.globl sub_40318a
	.type sub_40318a, @function
sub_40318a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403190

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_168
	test	rdx, rdx
	je	.label_168
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_168:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4031bb
	.globl sub_4031bb
	.type sub_4031bb, @function
sub_4031bb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4031c0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4031ca
	.globl sub_4031ca
	.type sub_4031ca, @function
sub_4031ca:

	nop	word ptr [rax + rax]
.label_170:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_169
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_169:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403204
	.globl sub_403204
	.type sub_403204, @function
sub_403204:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403206

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
	jne	.label_171
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_171
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_170
.label_171:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x403240

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_24
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_172
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403265
	.globl sub_403265
	.type sub_403265, @function
sub_403265:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403270

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
	.align	16
	#Procedure 0x4032a7
	.globl sub_4032a7
	.type sub_4032a7, @function
sub_4032a7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032b0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4032ba
	.globl sub_4032ba
	.type sub_4032ba, @function
sub_4032ba:

	nop	word ptr [rax + rax]
.label_173:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	16
	#Procedure 0x4032cc
	.globl sub_4032cc
	.type sub_4032cc, @function
sub_4032cc:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032d9

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_173
	ret	
	.section	.text
	.align	16
	#Procedure 0x4032e0

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
	jne	.label_183
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
	je	.label_180
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_181
	mov	eax, OFFSET FLAT:label_182
	jmp	.label_179
.label_176:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_174
	mov	eax, OFFSET FLAT:label_175
.label_179:
	cmove	rax, rcx
.label_183:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40335f
	.globl sub_40335f
	.type sub_40335f, @function
sub_40335f:

	nop	dword ptr [rax]
.label_180:
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
	je	.label_176
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_177
	mov	eax, OFFSET FLAT:label_178
	jmp	.label_179
.label_186:
	call	endutxent
	mov	qword ptr [r15], r12
	mov	qword ptr [r14], r13
	xor	eax, eax
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
	#Procedure 0x4033bc
	.globl sub_4033bc
	.type sub_4033bc, @function
sub_4033bc:

	nop	word ptr cs:[rax + rax]
.label_185:
	lea	rdi, [r12 + r12*2]
	inc	r12
	shl	rdi, 7
	add	rdi, r13
	mov	edx, 0x180
	mov	rsi, rbx
	call	memcpy
	nop	dword ptr [rax + rax]
.label_184:
	call	getutxent
	mov	rbx, rax
	test	rbx, rbx
	je	.label_186
	mov	rdi, rbx
	mov	esi, ebp
	call	desirable_utmp_entry
	test	al, al
	je	.label_184
	cmp	r12, qword ptr [rsp]
	jne	.label_185
	mov	edx, 0x180
	mov	rdi, r13
	lea	rsi, [rsp]
	call	x2nrealloc
	mov	r13, rax
	jmp	.label_185
	.section	.text
	.align	16
	#Procedure 0x403423

	.globl read_utmp
	.type read_utmp, @function
read_utmp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	ebp, ecx
	mov	r14, rdx
	mov	r15, rsi
	mov	qword ptr [rsp], 0
	call	utmpxname
	call	setutxent
	xor	r13d, r13d
	xor	r12d, r12d
	jmp	.label_184
.label_187:
	mov	ecx, 1
.label_188:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x403460
	.globl sub_403460
	.type sub_403460, @function
sub_403460:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403465

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_187
	test	rsi, rsi
	mov	ecx, 1
	je	.label_188
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_188
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_189:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4034a3
	.globl sub_4034a3
	.type sub_4034a3, @function
sub_4034a3:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4034a5
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_189
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_191:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_190
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
	.align	16
	#Procedure 0x4034f8
	.globl sub_4034f8
	.type sub_4034f8, @function
sub_4034f8:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403505

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_191
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_193
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_194
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_197
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_192
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_195
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_196
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_107
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x4035f0

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
.label_228:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_232
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_239]]
.label_429:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_244
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_175
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_430:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_259
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_259
	xor	r14d, r14d
.label_271:
	cmp	r14, r11
	jae	.label_268
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_268:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_271
.label_259:
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
	jmp	.label_276
.label_422:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_276
.label_425:
	mov	al, 1
.label_423:
	mov	r12b, 1
.label_426:
	test	r12b, 1
	mov	cl, 1
	je	.label_287
	mov	ecx, eax
.label_287:
	mov	al, cl
.label_424:
	test	r12b, 1
	jne	.label_290
	test	r11, r11
	je	.label_292
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_292:
	mov	r14d, 1
	jmp	.label_297
.label_290:
	xor	r14d, r14d
.label_297:
	mov	ecx, OFFSET FLAT:label_175
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_276
.label_427:
	test	r12b, 1
	jne	.label_303
	test	r11, r11
	je	.label_235
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_235:
	mov	r14d, 1
	jmp	.label_283
.label_428:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_174
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_276
.label_303:
	xor	r14d, r14d
.label_283:
	mov	eax, OFFSET FLAT:label_174
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_276:
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
	jmp	.label_213
	.section	.text
	.align	16
	#Procedure 0x4038cc
	.globl sub_4038cc
	.type sub_4038cc, @function
sub_4038cc:

	nop	dword ptr [rax]
.label_256:
	inc	rsi
.label_213:
	cmp	rbp, -1
	je	.label_250
	cmp	rsi, rbp
	jne	.label_267
	jmp	.label_255
	.section	.text
	.align	16
	#Procedure 0x4038e3
	.globl sub_4038e3
	.type sub_4038e3, @function
sub_4038e3:

	nop	word ptr cs:[rax + rax]
.label_250:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_255
.label_267:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_262
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_265
	cmp	rbp, -1
	jne	.label_265
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
.label_265:
	cmp	rbx, rbp
	jbe	.label_274
.label_262:
	xor	r8d, r8d
.label_304:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_277
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_281]]
.label_505:
	test	rsi, rsi
	jne	.label_263
	jmp	.label_201
	.section	.text
	.align	16
	#Procedure 0x40397e
	.globl sub_40397e
	.type sub_40397e, @function
sub_40397e:

	nop	
.label_274:
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
	jne	.label_295
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_304
	jmp	.label_212
.label_295:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_304
.label_509:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_310
	test	rsi, rsi
	jne	.label_198
	cmp	rbp, 1
	je	.label_201
	xor	r13d, r13d
	jmp	.label_203
.label_498:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_206
	cmp	byte ptr [rsp + 7], 0
	jne	.label_209
	cmp	r12d, 2
	jne	.label_210
	mov	eax, r9d
	and	al, 1
	jne	.label_210
	cmp	r14, r11
	jae	.label_208
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_208:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_217
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_217:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_223
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_223:
	add	r14, 3
	mov	r9b, 1
.label_210:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_227
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_227:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_231
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_231
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_231
	cmp	r14, r11
	jae	.label_245
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_245:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_238
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_238:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_203
.label_499:
	mov	bl, 0x62
	jmp	.label_257
.label_500:
	mov	cl, 0x74
	jmp	.label_260
.label_501:
	mov	bl, 0x76
	jmp	.label_257
.label_502:
	mov	bl, 0x66
	jmp	.label_257
.label_503:
	mov	cl, 0x72
	jmp	.label_260
.label_506:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_266
	cmp	byte ptr [rsp + 7], 0
	jne	.label_209
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
	jae	.label_273
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_273:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_282
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_282:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_285
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_285:
	add	r14, 3
	xor	r9d, r9d
.label_266:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_203
.label_507:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_293
	cmp	r12d, 2
	jne	.label_263
	cmp	byte ptr [rsp + 7], 0
	je	.label_263
	jmp	.label_209
.label_508:
	cmp	r12d, 2
	jne	.label_301
	cmp	byte ptr [rsp + 7], 0
	jne	.label_209
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_258
.label_277:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_306
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
.label_202:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_224
	test	r8b, r8b
	je	.label_224
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_203
.label_310:
	test	rsi, rsi
	jne	.label_229
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_229
.label_201:
	mov	dl, 1
.label_504:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_209
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_203:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_240
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_241
	jmp	.label_246
	.section	.text
	.align	16
	#Procedure 0x403cc4
	.globl sub_403cc4
	.type sub_403cc4, @function
sub_403cc4:

	nop	word ptr cs:[rax + rax]
.label_240:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_246
.label_241:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_251
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_258
	jmp	.label_221
	.section	.text
	.align	16
	#Procedure 0x403d0d
	.globl sub_403d0d
	.type sub_403d0d, @function
sub_403d0d:

	nop	dword ptr [rax]
.label_246:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_221
	jmp	.label_258
.label_251:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_221
.label_206:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_256
	xor	r15d, r15d
	jmp	.label_263
.label_301:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_260
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_258
.label_260:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_209
.label_257:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_203
	nop	word ptr cs:[rax + rax]
.label_221:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_209
	cmp	r12d, 2
	jne	.label_288
	mov	eax, r9d
	and	al, 1
	jne	.label_288
	cmp	r14, r11
	jae	.label_291
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_291:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_308
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_308:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_299
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_299:
	add	r14, 3
	mov	r9b, 1
.label_288:
	cmp	r14, r11
	jae	.label_302
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_302:
	inc	r14
	jmp	.label_275
.label_306:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_307
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_307:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_261:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_216
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_219
	cmp	rbp, -2
	je	.label_230
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_247
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_272:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_234
	bt	rsi, rdx
	jb	.label_212
.label_234:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_272
.label_247:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_253
	xor	r13d, r13d
.label_253:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_261
	jmp	.label_202
.label_231:
	xor	r13d, r13d
	jmp	.label_203
.label_229:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_203
.label_293:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_263
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_263
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_263
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_278
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_211
	cmp	byte ptr [rsp + 7], 0
	jne	.label_209
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_242
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_242:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_249
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_249:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_296
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_296:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_298
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_298:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_203
.label_263:
	xor	eax, eax
.label_198:
	xor	r13d, r13d
	jmp	.label_203
.label_224:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_305
	.section	.text
	.align	16
	#Procedure 0x403ff3
	.globl sub_403ff3
	.type sub_403ff3, @function
sub_403ff3:

	nop	word ptr cs:[rax + rax]
.label_270:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_305:
	test	r8b, r8b
	je	.label_199
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_200
	cmp	r14, r11
	jae	.label_204
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_204:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_200
	.section	.text
	.align	16
	#Procedure 0x40403c
	.globl sub_40403c
	.type sub_40403c, @function
sub_40403c:

	nop	dword ptr [rax]
.label_199:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_212
	cmp	r12d, 2
	jne	.label_215
	mov	eax, r9d
	and	al, 1
	jne	.label_215
	cmp	r14, r11
	jae	.label_218
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_218:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_222
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_222:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_226
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_226:
	add	r14, 3
	mov	r9b, 1
.label_215:
	cmp	r14, r11
	jae	.label_284
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_284:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_236
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_236:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_243
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_243:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_200:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_258
	test	r9b, 1
	je	.label_207
	mov	ebx, eax
	and	bl, 1
	jne	.label_207
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_264
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_264:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_309
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_309:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_207:
	cmp	r14, r11
	jae	.label_270
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_270
	.section	.text
	.align	16
	#Procedure 0x404143
	.globl sub_404143
	.type sub_404143, @function
sub_404143:

	nop	word ptr cs:[rax + rax]
.label_258:
	test	r9b, 1
	je	.label_279
	and	al, 1
	jne	.label_279
	cmp	r14, r11
	jae	.label_280
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_280:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_220
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_220:
	add	r14, 2
	xor	r9d, r9d
.label_279:
	mov	ebx, r15d
.label_275:
	cmp	r14, r11
	jae	.label_286
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_286:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_256
.label_219:
	xor	r13d, r13d
.label_216:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_202
.label_230:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_300
	mov	rsi, qword ptr [rsp + 0x50]
.label_269:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_254
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_269
	xor	r13d, r13d
	jmp	.label_202
.label_300:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_202
.label_254:
	xor	r13d, r13d
	jmp	.label_202
.label_278:
	xor	r13d, r13d
	jmp	.label_203
.label_211:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_203
	.section	.text
	.align	16
	#Procedure 0x404218
	.globl sub_404218
	.type sub_404218, @function
sub_404218:

	nop	dword ptr [rax + rax]
.label_255:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_205
	or	dl, al
	je	.label_212
.label_205:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_214
	or	dl, al
	jne	.label_214
	test	r10b, 1
	jne	.label_225
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_214
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_228
.label_214:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_233
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_237
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_237
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_252:
	cmp	r14, r11
	jae	.label_248
	mov	byte ptr [rcx + r14], al
.label_248:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_252
	jmp	.label_237
.label_209:
	mov	qword ptr [rsp + 0x20], rbp
.label_212:
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
.label_289:
	mov	r14, rax
.label_294:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_225:
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
	jmp	.label_289
.label_233:
	mov	rcx, qword ptr [rsp + 8]
.label_237:
	cmp	r14, r11
	jae	.label_294
	mov	byte ptr [rcx + r14], 0
	jmp	.label_294
.label_232:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4043ac
	.globl sub_4043ac
	.type sub_4043ac, @function
sub_4043ac:

	nop	dword ptr [rax]
.label_312:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_311
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4043bb
	.globl sub_4043bb
	.type sub_4043bb, @function
sub_4043bb:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043c5
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_312
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_312
.label_311:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4043e0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	lea	ecx, [rdi - 0x61]
	lea	eax, [rdi - 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4043ed
	.globl sub_4043ed
	.type sub_4043ed, @function
sub_4043ed:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4043f0
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
	#Procedure 0x4043ff
	.globl sub_4043ff
	.type sub_4043ff, @function
sub_4043ff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404400
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x404408
	.globl sub_404408
	.type sub_404408, @function
sub_404408:

	nop	dword ptr [rax + rax]
.label_317:
	xor	eax, eax
.label_316:
	push	rax
	test	sil, 2
	je	.label_315
	test	al, al
	jne	.label_315
	xor	eax, eax
	jmp	.label_314
.label_313:
	mov	al, 1
.label_314:
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404425

	.globl desirable_utmp_entry
	.type desirable_utmp_entry, @function
desirable_utmp_entry:
	cmp	byte ptr [rdi + 0x2c], 0
	je	.label_317
	movzx	eax, word ptr [rdi]
	cmp	eax, 7
	sete	al
	jmp	.label_316
.label_315:
	test	sil, 1
	je	.label_313
	xor	al, 1
	jne	.label_313
	mov	edi, dword ptr [rdi + 4]
	test	edi, edi
	jle	.label_313
	xor	esi, esi
	call	kill
	test	eax, eax
	jns	.label_313
	call	__errno_location
	cmp	dword ptr [rax], 3
	jne	.label_313
	xor	eax, eax
	jmp	.label_314
	.section	.text
	.align	16
	#Procedure 0x404460
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_318
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_320]]
.label_318:
	xor	eax, eax
	jmp	.label_319
	.section	.text
	.align	16
	#Procedure 0x404475
	.globl sub_404475
	.type sub_404475, @function
sub_404475:

	nop	word ptr cs:[rax + rax]
.label_319:
	ret	
	.section	.text
	.align	16
	#Procedure 0x404480

	.globl time_string
	.type time_string, @function
time_string:
	push	rbx
	sub	rsp, 0x10
	movsxd	rax, dword ptr [rdi + 0x154]
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rsp + 8]
	call	localtime
	test	rax, rax
	je	.label_321
	mov	rdx,  qword ptr [word ptr [rip + time_format]]
	mov	ebx, OFFSET FLAT:time_string.buf
	mov	edi, OFFSET FLAT:time_string.buf
	mov	esi, 0x21
	mov	rcx, rax
	call	strftime
	jmp	.label_322
.label_321:
	mov	rdi, qword ptr [rsp + 8]
	call	timetostr
	mov	rbx, rax
.label_322:
	mov	rax, rbx
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4044d6
	.globl sub_4044d6
	.type sub_4044d6, @function
sub_4044d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044e0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_323
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_325
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_324
.label_325:
	call	xalloc_die
.label_326:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404517
	.globl sub_404517
	.type sub_404517, @function
sub_404517:

	nop	dword ptr [rax]
.label_323:
	test	rcx, rcx
	jne	.label_327
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_327:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_326
.label_324:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
	.section	.text
	.align	16
	#Procedure 0x404560

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
	#Procedure 0x404596
	.globl sub_404596
	.type sub_404596, @function
sub_404596:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045a0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_328
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_328:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4045c3
	.globl sub_4045c3
	.type sub_4045c3, @function
sub_4045c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045d0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
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
	#Procedure 0x4045ea
	.globl sub_4045ea
	.type sub_4045ea, @function
sub_4045ea:

	nop	word ptr [rax + rax]
.label_334:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_331
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404610
	.globl sub_404610
	.type sub_404610, @function
sub_404610:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40461f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_334
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_333
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_336
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_333
	mov	esi, OFFSET FLAT:label_335
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_332
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_332:
	mov	rbx, r14
.label_333:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x4046a0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	16
	#Procedure 0x4046aa
	.globl sub_4046aa
	.type sub_4046aa, @function
sub_4046aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046b0

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
	je	.label_337
	mov	qword ptr [rax], rbx
.label_337:
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
	#Procedure 0x40479c
	.globl sub_40479c
	.type sub_40479c, @function
sub_40479c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4047a0

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
	#Procedure 0x4047b7
	.globl sub_4047b7
	.type sub_4047b7, @function
sub_4047b7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047c0
	.globl c_tolower
	.type c_tolower, @function
c_tolower:

	lea	ecx, [rdi - 0x41]
	lea	eax, [rdi + 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4047cd
	.globl sub_4047cd
	.type sub_4047cd, @function
sub_4047cd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4047d0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_339
	cmp	byte ptr [rax], 0x43
	jne	.label_341
	cmp	byte ptr [rax + 1], 0
	je	.label_338
.label_341:
	mov	esi, OFFSET FLAT:label_340
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_339
.label_338:
	xor	ebx, ebx
.label_339:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404801
	.globl sub_404801
	.type sub_404801, @function
sub_404801:

	nop	word ptr cs:[rax + rax]
.label_342:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x404813
	.globl sub_404813
	.type sub_404813, @function
sub_404813:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404815
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_342
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x404830
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_343
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_345:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_345
.label_343:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_346
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_347]], OFFSET FLAT:slot0
.label_346:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_344
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_344:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4048c1
	.globl sub_4048c1
	.type sub_4048c1, @function
sub_4048c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048d0

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
	.align	16
	#Procedure 0x404919
	.globl sub_404919
	.type sub_404919, @function
sub_404919:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404920
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
	.align	16
	#Procedure 0x404992
	.globl sub_404992
	.type sub_404992, @function
sub_404992:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049a0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_348
.label_349:
	ret	
.label_348:
	cmp	edi, 0x7f
	je	.label_349
	xor	eax, eax
	jmp	.label_349
	.section	.text
	.align	16
	#Procedure 0x4049b1
	.globl sub_4049b1
	.type sub_4049b1, @function
sub_4049b1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049c0
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
	.align	16
	#Procedure 0x4049cf
	.globl sub_4049cf
	.type sub_4049cf, @function
sub_4049cf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4049d0

	.globl count_ampersands
	.type count_ampersands, @function
count_ampersands:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_350:
	movzx	ecx, byte ptr [rdi]
	xor	edx, edx
	cmp	cl, 0x26
	sete	dl
	add	rax, rdx
	inc	rdi
	test	cl, cl
	jne	.label_350
	ret	
	.section	.text
	.align	16
	#Procedure 0x4049f6
	.globl sub_4049f6
	.type sub_4049f6, @function
sub_4049f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a00

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_351
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_351
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_351:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x404a26
	.globl sub_404a26
	.type sub_404a26, @function
sub_404a26:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a30

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
	je	.label_352
	cmp	r15, -2
	jb	.label_352
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_352
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_352:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404a86
	.globl sub_404a86
	.type sub_404a86, @function
sub_404a86:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a90

	.globl timetostr
	.type timetostr, @function
timetostr:
	mov	esi, OFFSET FLAT:time_string.buf
	jmp	imaxtostr
	.section	.text
	.align	16
	#Procedure 0x404a9a
	.globl sub_404a9a
	.type sub_404a9a, @function
sub_404a9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404aa0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x404aae
	.globl sub_404aae
	.type sub_404aae, @function
sub_404aae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404ab0

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
	js	.label_356
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_359
	cmp	r12d, 0x7fffffff
	je	.label_354
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
	jne	.label_357
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_357:
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
.label_359:
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
	jbe	.label_355
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_358
.label_355:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_353
	mov	rdi, r14
	call	free
.label_353:
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
.label_358:
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
.label_356:
	call	abort
.label_354:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404c6d
	.globl sub_404c6d
	.type sub_404c6d, @function
sub_404c6d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404c70

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
	je	.label_362
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_360
	jmp	.label_361
.label_362:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_361
.label_360:
	mov	eax, 1
	test	bpl, bpl
	je	.label_361
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
.label_361:
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
	#Procedure 0x404cf8
	.globl sub_404cf8
	.type sub_404cf8, @function
sub_404cf8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d00

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
	je	.label_363
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_365
	jmp	.label_364
.label_363:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_364
.label_365:
	mov	eax, 1
	test	bpl, bpl
	je	.label_364
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
.label_364:
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
	#Procedure 0x404d79
	.globl sub_404d79
	.type sub_404d79, @function
sub_404d79:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404d80

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
	je	.label_368
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_367
	jmp	.label_366
.label_368:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_366
.label_367:
	mov	eax, 1
	test	bpl, bpl
	je	.label_366
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
.label_366:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404de3
	.globl sub_404de3
	.type sub_404de3, @function
sub_404de3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404df0

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
	je	.label_371
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_369
	jmp	.label_370
.label_371:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_370
.label_369:
	mov	eax, 1
	test	bpl, bpl
	je	.label_370
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_370:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404e4f
	.globl sub_404e4f
	.type sub_404e4f, @function
sub_404e4f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404e50

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
	je	.label_372
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_374
	jmp	.label_373
.label_372:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_373
.label_374:
	mov	eax, 1
	test	bpl, bpl
	je	.label_373
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_373:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404e99
	.globl sub_404e99
	.type sub_404e99, @function
sub_404e99:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404ea0

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
	je	.label_377
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_376
	jmp	.label_375
.label_377:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_375
.label_376:
	mov	eax, 1
	test	bpl, bpl
	je	.label_375
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_375:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ee5
	.globl sub_404ee5
	.type sub_404ee5, @function
sub_404ee5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ef0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_380
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_379
	jmp	.label_378
.label_380:
	mov	eax, 1
	test	cl, cl
	je	.label_378
.label_379:
	xor	eax, eax
.label_378:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404f1f
	.globl sub_404f1f
	.type sub_404f1f, @function
sub_404f1f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404f20

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
	je	.label_381
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
.label_381:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404f72
	.globl sub_404f72
	.type sub_404f72, @function
sub_404f72:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f80

	.globl scan_entries
	.type scan_entries, @function
scan_entries:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	dword ptr [rsp + 4], edx
	mov	rbp, rsi
	mov	r12, rdi
	mov	edi, 2
	call	hard_locale
	mov	ecx, OFFSET FLAT:label_383
	mov	edx, OFFSET FLAT:label_384
	test	al, al
	cmovne	rdx, rcx
	movzx	eax, al
	lea	eax, [rax*4 + 0xc]
	mov	qword ptr [word ptr [rip + time_format]],  rdx
	mov	dword ptr [dword ptr [rip + time_format_width]],  eax
	mov	al,  byte ptr [byte ptr [rip + include_heading]]
	test	al, al
	jne	.label_385
	call	print_heading
.label_385:
	test	r12, r12
	je	.label_389
	movsxd	r13, dword ptr [rsp + 4]
	nop	word ptr cs:[rax + rax]
.label_382:
	dec	r12
	cmp	byte ptr [rbp + 0x2c], 0
	je	.label_387
	movzx	eax, word ptr [rbp]
	cmp	eax, 7
	jne	.label_387
	lea	rbx, [rbp + 0x2c]
	cmp	dword ptr [rsp + 4], 0
	je	.label_386
	jle	.label_387
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_388:
	mov	rsi, qword ptr [r15 + r14*8]
	mov	edx, 0x20
	mov	rdi, rbx
	call	strncmp
	test	eax, eax
	je	.label_386
	inc	r14
	cmp	r14, r13
	jl	.label_388
	jmp	.label_387
.label_386:
	mov	rdi, rbp
	call	print_entry
	nop	word ptr [rax + rax]
.label_387:
	add	rbp, 0x180
	test	r12, r12
	jne	.label_382
.label_389:
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
	#Procedure 0x40506b
	.globl sub_40506b
	.type sub_40506b, @function
sub_40506b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405070
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_390:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_390
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x405091
	.globl sub_405091
	.type sub_405091, @function
sub_405091:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050a0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_394
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_391
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_391
.label_394:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_395
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_395:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_392:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_393
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_391:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_396
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_392
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_45
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x405160

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x405169
	.globl sub_405169
	.type sub_405169, @function
sub_405169:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405170

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
	mov	rax,  qword ptr [word ptr [rip + label_139]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_140]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_141]]
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
	.align	16
	#Procedure 0x4051d8
	.globl sub_4051d8
	.type sub_4051d8, @function
sub_4051d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051e0
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
	.align	16
	#Procedure 0x405207
	.globl sub_405207
	.type sub_405207, @function
sub_405207:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405210

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
	.align	16
	#Procedure 0x405249
	.globl sub_405249
	.type sub_405249, @function
sub_405249:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405250
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
	.align	16
	#Procedure 0x405261
	.globl sub_405261
	.type sub_405261, @function
sub_405261:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405270
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
	.align	16
	#Procedure 0x405284
	.globl sub_405284
	.type sub_405284, @function
sub_405284:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405290

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	16
	#Procedure 0x405295
	.globl sub_405295
	.type sub_405295, @function
sub_405295:

	nop	word ptr cs:[rax + rax]
.label_400:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_398:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_399
	inc	r9
	cmp	r9, 0xa
	jb	.label_397
.label_399:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x4052cf
	.globl sub_4052cf
	.type sub_4052cf, @function
sub_4052cf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4052d0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_397:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_400
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_398
	.section	.text
	.align	16
	#Procedure 0x4052f9
	.globl sub_4052f9
	.type sub_4052f9, @function
sub_4052f9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405300

	.globl stzncpy
	.type stzncpy, @function
stzncpy:
	test	rdx, rdx
	jle	.label_401
	add	rdx, rsi
	nop	dword ptr [rax + rax]
.label_402:
	movzx	eax, byte ptr [rsi]
	test	al, al
	je	.label_401
	inc	rsi
	mov	byte ptr [rdi], al
	inc	rdi
	cmp	rsi, rdx
	jb	.label_402
.label_401:
	mov	byte ptr [rdi], 0
	ret	
	.section	.text
	.align	16
	#Procedure 0x405328
	.globl sub_405328
	.type sub_405328, @function
sub_405328:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405330
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40533a
	.globl sub_40533a
	.type sub_40533a, @function
sub_40533a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053a5
	.globl sub_4053a5
	.type sub_4053a5, @function
sub_4053a5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053b2
	.globl sub_4053b2
	.type sub_4053b2, @function
sub_4053b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053d6
	.globl sub_4053d6
	.type sub_4053d6, @function
sub_4053d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053e9
	.globl sub_4053e9
	.type sub_4053e9, @function
sub_4053e9:

	nop	dword ptr [rax]
