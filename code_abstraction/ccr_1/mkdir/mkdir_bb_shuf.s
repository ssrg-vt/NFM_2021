	.section	.text
	.align	16
	#Procedure 0x401879
	.globl sub_401879
	.type sub_401879, @function
sub_401879:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40187a
	.globl sub_40187a
	.type sub_40187a, @function
sub_40187a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018b2
	.globl sub_4018b2
	.type sub_4018b2, @function
sub_4018b2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018fa
	.globl sub_4018fa
	.type sub_4018fa, @function
sub_4018fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40191c
	.globl sub_40191c
	.type sub_40191c, @function
sub_40191c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40192d
	.globl sub_40192d
	.type sub_40192d, @function
sub_40192d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401946
	.globl sub_401946
	.type sub_401946, @function
sub_401946:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401950

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40195e
	.globl sub_40195e
	.type sub_40195e, @function
sub_40195e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401960

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
	js	.label_9
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_12
	cmp	r12d, 0x7fffffff
	je	.label_14
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
	jne	.label_10
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_10:
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
.label_12:
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
	jbe	.label_15
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_11
.label_15:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_13
	mov	rdi, r14
	call	free
.label_13:
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
.label_11:
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
.label_9:
	call	abort
.label_14:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401b1d
	.globl sub_401b1d
	.type sub_401b1d, @function
sub_401b1d:

	nop	dword ptr [rax]
.label_20:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
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
	#Procedure 0x401b58

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_20
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x401c40

	.globl savewd_restore
	.type savewd_restore, @function
savewd_restore:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r14, rdi
	mov	eax, dword ptr [r14]
	cmp	rax, 4
	ja	.label_24
	xor	ebp, ebp
	jmp	qword ptr [word ptr [+ (rax * 8) + label_32]]
.label_31:
	mov	edi, esi
	call	_exit
	nop	word ptr cs:[rax + rax]
.label_24:
	mov	edi, OFFSET FLAT:label_34
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 0xe2
	mov	ecx, OFFSET FLAT:label_30
	call	__assert_fail
.label_590:
	mov	ebx, dword ptr [r14 + 4]
	test	ebx, ebx
	je	.label_31
	jle	.label_27
	lea	rbp, [rsp + 0xc]
	nop	word ptr cs:[rax + rax]
.label_26:
	xor	edx, edx
	mov	edi, ebx
	mov	rsi, rbp
	call	waitpid
	test	eax, eax
	jns	.label_35
	call	__errno_location
	cmp	dword ptr [rax], 4
	je	.label_26
	mov	edi, OFFSET FLAT:label_28
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 0xd8
	mov	ecx, OFFSET FLAT:label_30
	call	__assert_fail
.label_25:
	mov	dword ptr [r14], 1
.label_27:
	mov	eax, ebp
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_35:
	mov	dword ptr [r14 + 4], 0xffffffff
	mov	edi, dword ptr [rsp + 0xc]
	and	edi, 0x7f
	je	.label_33
	call	raise
.label_33:
	mov	eax, dword ptr [rsp + 0xc]
	movzx	ebp, ah
	jmp	.label_27
.label_589:
	mov	edi, dword ptr [r14 + 4]
	call	fchdir
	test	eax, eax
	je	.label_25
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	edi, dword ptr [r14 + 4]
	call	close
	mov	dword ptr [r14], 4
	mov	dword ptr [r14 + 4], ebx
.label_591:
	mov	ebx, dword ptr [r14 + 4]
	call	__errno_location
	mov	dword ptr [rax], ebx
	mov	ebp, 0xffffffff
	jmp	.label_27
	.section	.text
	.align	16
	#Procedure 0x401d50

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_36
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_36
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_36:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x401d76
	.globl sub_401d76
	.type sub_401d76, @function
sub_401d76:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d80

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_37
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_38
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_37
.label_38:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_37
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_39
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_39:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_37:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x401df7
	.globl sub_401df7
	.type sub_401df7, @function
sub_401df7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e00

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_41
	cmp	byte ptr [rax], 0x43
	jne	.label_43
	cmp	byte ptr [rax + 1], 0
	je	.label_40
.label_43:
	mov	esi, OFFSET FLAT:label_42
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_41
.label_40:
	xor	ebx, ebx
.label_41:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e31
	.globl sub_401e31
	.type sub_401e31, @function
sub_401e31:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e40
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
	#Procedure 0x401e53
	.globl sub_401e53
	.type sub_401e53, @function
sub_401e53:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e60

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_44
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x401e82
	.globl sub_401e82
	.type sub_401e82, @function
sub_401e82:

	nop	word ptr cs:[rax + rax]
.label_50:
	mov	edi, OFFSET FLAT:label_34
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 0xfb
	mov	ecx, OFFSET FLAT:label_45
	call	__assert_fail
.label_516:
	mov	edi, dword ptr [rbx + 4]
	call	close
	jmp	.label_49
.label_47:
	mov	edi, OFFSET FLAT:label_46
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 0xf7
	mov	ecx, OFFSET FLAT:label_45
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x401ecc
	.globl sub_401ecc
	.type sub_401ecc, @function
sub_401ecc:

	nop	dword ptr [rax]
.label_517:
	cmp	dword ptr [rbx + 4], 0
	jns	.label_47
.label_49:
	mov	dword ptr [rbx], 5
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401edd

	.globl savewd_finish
	.type savewd_finish, @function
savewd_finish:
	push	rbx
	mov	rbx, rdi
	mov	eax, dword ptr [rbx]
	cmp	rax, 4
	ja	.label_50
	jmp	qword ptr [word ptr [+ (rax * 8) + label_48]]
	.section	.text
	.align	16
	#Procedure 0x401ef0

	.globl mkancesdirs
	.type mkancesdirs, @function
mkancesdirs:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rdi
	xor	ebp, ebp
	mov	r14, r13
	xor	r15d, r15d
.label_58:
	mov	r12, r14
	mov	al, byte ptr [r12]
	test	al, al
	je	.label_51
	mov	r14, r12
.label_54:
	inc	r14
	nop	
.label_64:
	movzx	ebx, byte ptr [r14]
	cmp	bl, 0x2f
	je	.label_59
	cmp	al, 0x2f
	jne	.label_60
	test	rbp, rbp
	je	.label_60
	test	bl, bl
	jne	.label_63
.label_60:
	movzx	eax, byte ptr [r14]
	inc	r14
	test	al, al
	jne	.label_64
	jmp	.label_51
	.section	.text
	.align	16
	#Procedure 0x401f46
	.globl sub_401f46
	.type sub_401f46, @function
sub_401f46:

	nop	word ptr cs:[rax + rax]
.label_59:
	cmp	al, 0x2f
	cmovne	rbp, r14
	mov	al, byte ptr [r14]
	test	al, al
	jne	.label_54
	jmp	.label_51
	.section	.text
	.align	16
	#Procedure 0x401f62
	.globl sub_401f62
	.type sub_401f62, @function
sub_401f62:

	nop	word ptr cs:[rax + rax]
.label_63:
	mov	rax, rbp
	sub	rax, r12
	cmp	rax, 1
	jne	.label_62
	cmp	byte ptr [r12], 0x2e
	je	.label_58
	mov	qword ptr [rsp + 8], rdx
	mov	qword ptr [rsp + 0x10], rcx
	mov	byte ptr [rbp], 0
	jmp	.label_52
.label_62:
	mov	qword ptr [rsp + 8], rdx
	mov	qword ptr [rsp + 0x10], rcx
	mov	byte ptr [rbp], 0
	cmp	rax, 2
	jne	.label_52
	cmp	byte ptr [r12], 0x2e
	jne	.label_52
	xor	eax, eax
	cmp	byte ptr [r12 + 1], 0x2e
	mov	dword ptr [rsp + 4], 0
	je	.label_61
.label_52:
	mov	rbx, rsi
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x10]
	call	qword ptr [rsp + 8]
	test	eax, eax
	js	.label_56
	mov	dword ptr [rsp + 4], 0
	mov	al, 1
	jmp	.label_57
.label_56:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 4], eax
	mov	al, r15b
.label_57:
	mov	rsi, rbx
.label_61:
	mov	r15d, eax
	and	al, 1
	movzx	edx, al
	xor	ecx, ecx
	mov	rdi, rsi
	mov	rbx, rsi
	mov	rsi, r12
	call	savewd_chdir
	mov	rsi, rbx
	mov	ebx, eax
	cmp	ebx, -1
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 8]
	je	.label_53
	mov	byte ptr [rbp], 0x2f
	test	ebx, ebx
	je	.label_58
.label_53:
	mov	ebp, dword ptr [rsp + 4]
	test	ebp, ebp
	je	.label_55
	call	__errno_location
	cmp	dword ptr [rax], 2
	jne	.label_55
	mov	dword ptr [rax], ebp
.label_55:
	movsxd	r12, ebx
	jmp	.label_65
.label_51:
	sub	r12, r13
.label_65:
	mov	rax, r12
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
	#Procedure 0x402059
	.globl sub_402059
	.type sub_402059, @function
sub_402059:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402060

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40206a
	.globl sub_40206a
	.type sub_40206a, @function
sub_40206a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402070
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	16
	#Procedure 0x40207d
	.globl sub_40207d
	.type sub_40207d, @function
sub_40207d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402080
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
	#Procedure 0x402090

	.globl make_ancestor
	.type make_ancestor, @function
make_ancestor:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rdx
	mov	r15, rsi
	mov	r14, rdi
	cmp	byte ptr [r13 + 0x14], 0
	je	.label_69
	call	defaultcon
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	edi, ebp
	call	ignorable_ctx_err
	test	al, al
	jne	.label_69
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_67
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r12
	call	error
.label_69:
	mov	edi, dword ptr [r13 + 8]
	test	dil, 0xc0
	je	.label_70
	and	edi, 0xffffff3f
	call	umask
	mov	esi, 0x1ff
	mov	rdi, r15
	call	mkdir
	mov	ebp, eax
	call	__errno_location
	mov	rbx, rax
	mov	r15d, dword ptr [rbx]
	mov	edi, dword ptr [r13 + 8]
	call	umask
	mov	dword ptr [rbx], r15d
	jmp	.label_68
.label_70:
	mov	esi, 0x1ff
	mov	rdi, r15
	call	mkdir
	mov	ebp, eax
.label_68:
	test	ebp, ebp
	jne	.label_66
	mov	ebp, dword ptr [r13 + 8]
	shr	ebp, 8
	and	ebp, 1
	mov	rdi, r14
	mov	rsi, r13
	call	announce_mkdir
.label_66:
	mov	eax, ebp
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
	#Procedure 0x40216a
	.globl sub_40216a
	.type sub_40216a, @function
sub_40216a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402170

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_71
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_71:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_72
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_74
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_73
.label_74:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_73:
	mov	edx, dword ptr [rax]
.label_72:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x402234
	.globl sub_402234
	.type sub_402234, @function
sub_402234:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402240

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_75
	nop	
.label_88:
	mov	edi, OFFSET FLAT:label_80
	call	strcmp
	test	eax, eax
	je	.label_86
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_88
.label_86:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_80
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_81
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_78
	mov	ecx, OFFSET FLAT:label_79
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_77
	mov	esi, OFFSET FLAT:label_85
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_77
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_76
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_77:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_82
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_80
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_79
	mov	ecx, OFFSET FLAT:label_80
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_87
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_83
	mov	ecx, OFFSET FLAT:label_84
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
	#Procedure 0x40235a
	.globl sub_40235a
	.type sub_40235a, @function
sub_40235a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402360
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
	#Procedure 0x40236f
	.globl sub_40236f
	.type sub_40236f, @function
sub_40236f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402370

	.globl process_dir
	.type process_dir, @function
process_dir:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbx, rdx
	mov	r15, rsi
	mov	r14, rdi
	cmp	byte ptr [rbx + 0x14], 0
	je	.label_89
	cmp	qword ptr [rbx], 0
	jne	.label_89
	call	defaultcon
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	edi, ebp
	call	ignorable_ctx_err
	test	al, al
	jne	.label_89
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_67
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r12
	call	error
.label_89:
	mov	rdx, qword ptr [rbx]
	mov	r8d, dword ptr [rbx + 0xc]
	mov	eax, dword ptr [rbx + 0x10]
	mov	r9d, OFFSET FLAT:announce_mkdir
	mov	rdi, r14
	mov	rsi, r15
	mov	rcx, rbx
	push	1
	push	-1
	push	-1
	push	rax
	call	make_dir_parents
	add	rsp, 0x20
	movzx	eax, al
	mov	ebp, eax
	xor	ebp, 1
	test	al, al
	je	.label_90
	cmp	byte ptr [rbx + 0x14], 0
	je	.label_90
	cmp	qword ptr [rbx], 0
	je	.label_90
	call	restorecon
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	edi, ebx
	call	ignorable_ctx_err
	test	al, al
	jne	.label_90
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_91
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r15
	call	error
.label_90:
	mov	eax, ebp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40246b
	.globl sub_40246b
	.type sub_40246b, @function
sub_40246b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402470

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
	#Procedure 0x402487
	.globl sub_402487
	.type sub_402487, @function
sub_402487:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402490

	.globl dirchownmod
	.type dirchownmod, @function
dirchownmod:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	dword ptr [rsp + 0xc], r9d
	mov	r12d, r8d
	mov	r13d, ecx
	mov	r15d, edx
	mov	rax, rsi
	mov	r14d, edi
	test	r14d, r14d
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsp + 0x18]
	js	.label_97
	mov	edi, r14d
	call	fstat
	jmp	.label_95
.label_97:
	mov	rdi, rax
	call	stat
.label_95:
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_98
	mov	ebx, dword ptr [rsp + 0x30]
	mov	eax, ebx
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_100
	cmp	r13d, -1
	je	.label_104
	cmp	dword ptr [rsp + 0x34], r13d
	jne	.label_106
.label_104:
	xor	eax, eax
	cmp	r12d, -1
	je	.label_92
	cmp	dword ptr [rsp + 0x38], r12d
	je	.label_92
.label_106:
	test	r14d, r14d
	js	.label_96
	mov	edi, r14d
	mov	esi, r13d
	mov	edx, r12d
	call	fchown
	jmp	.label_94
.label_100:
	call	__errno_location
	mov	dword ptr [rax], 0x14
	mov	ebp, 0xffffffff
	jmp	.label_98
.label_96:
	cmp	r15d, -1
	je	.label_101
	mov	rdi, qword ptr [rsp + 0x10]
	mov	esi, r13d
	mov	edx, r12d
	call	lchown
	jmp	.label_94
.label_101:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	esi, r13d
	mov	edx, r12d
	call	chown
.label_94:
	mov	ebp, eax
	mov	ecx, ebx
	and	ecx, 0x49
	mov	edx, ebx
	and	edx, 0xc00
	xor	eax, eax
	test	ebp, ebp
	cmove	eax, edx
	test	ecx, ecx
	cmove	eax, ecx
	test	ebp, ebp
	jne	.label_98
.label_92:
	mov	esi, dword ptr [rsp + 0xe0]
	mov	ecx, ebx
	xor	ecx, dword ptr [rsp + 0xc]
	or	ecx, eax
	xor	ebp, ebp
	test	ecx, esi
	je	.label_98
	not	esi
	and	esi, ebx
	and	esi, 0xfff
	or	esi, dword ptr [rsp + 0xc]
	test	r14d, r14d
	js	.label_102
	mov	edi, r14d
	call	fchmod
	mov	ebp, eax
	jmp	.label_103
.label_98:
	test	r14d, r14d
	js	.label_93
.label_103:
	test	ebp, ebp
	je	.label_105
	call	__errno_location
	mov	rbx, rax
	mov	r15d, dword ptr [rbx]
	mov	edi, r14d
	call	close
	mov	dword ptr [rbx], r15d
	jmp	.label_93
.label_105:
	mov	edi, r14d
	call	close
.label_99:
	mov	ebp, eax
.label_93:
	mov	eax, ebp
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_102:
	mov	rdi, qword ptr [rsp + 0x10]
	call	chmod
	jmp	.label_99
	.section	.text
	.align	16
	#Procedure 0x4025fb
	.globl sub_4025fb
	.type sub_4025fb, @function
sub_4025fb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402600

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	16
	#Procedure 0x402605
	.globl sub_402605
	.type sub_402605, @function
sub_402605:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402610
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
	#Procedure 0x402626
	.globl sub_402626
	.type sub_402626, @function
sub_402626:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402630

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
	#Procedure 0x40265d
	.globl sub_40265d
	.type sub_40265d, @function
sub_40265d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402660
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
	#Procedure 0x402673
	.globl sub_402673
	.type sub_402673, @function
sub_402673:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402680

	.globl restorecon
	.type restorecon, @function
restorecon:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	pop	rax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40268e
	.globl sub_40268e
	.type sub_40268e, @function
sub_40268e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402690
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x40269a
	.globl sub_40269a
	.type sub_40269a, @function
sub_40269a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026a0

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
	#Procedure 0x4026d6
	.globl sub_4026d6
	.type sub_4026d6, @function
sub_4026d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026e0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_107
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_107:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402706
	.globl sub_402706
	.type sub_402706, @function
sub_402706:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402710

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_108
	test	rbx, rbx
	jne	.label_108
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_108:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_110
	test	rax, rax
	je	.label_109
.label_110:
	pop	rbx
	ret	
.label_109:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402740

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	mov	ecx, esi
	xor	esi, esi
	xor	eax, eax
	mov	edx, ecx
	jmp	fcntl
	.section	.text
	.align	16
	#Procedure 0x40274d
	.globl sub_40274d
	.type sub_40274d, @function
sub_40274d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402750

	.globl make_node_op_equals
	.type make_node_op_equals, @function
make_node_op_equals:
	push	rbp
	push	rbx
	push	rax
	mov	ebx, esi
	mov	ebp, edi
	mov	edi, 0x20
	call	xmalloc
	mov	byte ptr [rax], 0x3d
	mov	byte ptr [rax + 1], 1
	mov	dword ptr [rax + 4], 0xfff
	mov	dword ptr [rax + 8], ebp
	mov	dword ptr [rax + 0xc], ebx
	mov	byte ptr [rax + 0x11], 0
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_111:
	cmp	edi, 0x7f
	je	.label_112
	xor	eax, eax
	jmp	.label_112
	.section	.text
	.align	16
	#Procedure 0x402789
	.globl sub_402789
	.type sub_402789, @function
sub_402789:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402798
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_111
.label_112:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4027a0

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
	je	.label_125
	mov	edx, OFFSET FLAT:label_116
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_122
.label_125:
	mov	edx, OFFSET FLAT:label_123
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_122:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_127
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
	mov	esi, OFFSET FLAT:label_124
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_128
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_129]]
.label_519:
	add	rsp, 8
	jmp	.label_115
.label_128:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
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
	jmp	.label_115
.label_520:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_114
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
.label_521:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_120
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
.label_522:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_117
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
.label_523:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_131
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
	jmp	.label_115
.label_524:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_130
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
	jmp	.label_115
.label_525:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_113
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
	jmp	.label_115
.label_526:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_118
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
	jmp	.label_115
.label_528:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_121
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
	jmp	.label_115
.label_527:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_126
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
.label_115:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402af8
	.globl sub_402af8
	.type sub_402af8, @function
sub_402af8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b00

	.globl savewd_chdir
	.type savewd_chdir, @function
savewd_chdir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	ebp, edx
	mov	r12, rsi
	mov	rbx, rdi
	test	r15, r15
	sete	al
	test	bpl, 1
	jne	.label_132
	mov	r13d, 0xffffffff
	test	al, al
	jne	.label_142
.label_132:
	mov	esi, ebp
	and	esi, 1
	shl	esi, 0x11
	or	esi, 0x10900
	xor	eax, eax
	mov	rdi, r12
	call	open
	mov	r13d, eax
	test	r15, r15
	je	.label_135
	mov	dword ptr [r15], r13d
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 4], eax
.label_135:
	test	r13d, r13d
	js	.label_139
	xor	r14d, r14d
	test	bpl, 2
	je	.label_142
	jmp	.label_136
.label_139:
	call	__errno_location
	mov	r14d, 0xffffffff
	cmp	dword ptr [rax], 0xd
	jne	.label_138
.label_142:
	mov	rdi, rbx
	call	savewd_save
	mov	r14d, 0xfffffffe
	test	al, al
	je	.label_133
	xor	r15d, r15d
	jmp	.label_136
.label_133:
	test	r13d, r13d
	js	.label_143
	mov	edi, r13d
	call	fchdir
	jmp	.label_141
.label_143:
	mov	rdi, r12
	call	chdir
.label_141:
	mov	r14d, eax
	test	r14d, r14d
	jne	.label_136
	mov	eax, dword ptr [rbx]
	dec	eax
	cmp	eax, 4
	ja	.label_144
	xor	r14d, r14d
	jmp	qword ptr [word ptr [+ (rax * 8) + label_145]]
.label_488:
	mov	dword ptr [rbx], 2
	jmp	.label_136
.label_489:
	cmp	dword ptr [rbx + 4], 0
	jne	.label_137
.label_136:
	test	r13d, r13d
	js	.label_138
	test	r15, r15
	jne	.label_138
	call	__errno_location
	mov	rbp, rax
	mov	ebx, dword ptr [rbp]
	mov	edi, r13d
	call	close
	mov	dword ptr [rbp], ebx
.label_138:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_144:
	mov	edi, OFFSET FLAT:label_34
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 0x9f
	mov	ecx, OFFSET FLAT:label_134
	call	__assert_fail
.label_137:
	mov	edi, OFFSET FLAT:label_140
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 0x9b
	mov	ecx, OFFSET FLAT:label_134
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x402c35
	.globl sub_402c35
	.type sub_402c35, @function
sub_402c35:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c40

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_146
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_146:
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
	#Procedure 0x402cc3
	.globl sub_402cc3
	.type sub_402cc3, @function
sub_402cc3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402cd0
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
	#Procedure 0x402cdd
	.globl sub_402cdd
	.type sub_402cdd, @function
sub_402cdd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402ce0

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
	jne	.label_147
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_147
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_148
.label_147:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_148:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_149
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_149:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d4e
	.globl sub_402d4e
	.type sub_402d4e, @function
sub_402d4e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402d50

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
	je	.label_150
	cmp	r15, -2
	jb	.label_150
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_150
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_150:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402da6
	.globl sub_402da6
	.type sub_402da6, @function
sub_402da6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402db0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x402dba
	.globl sub_402dba
	.type sub_402dba, @function
sub_402dba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402dc0
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
	#Procedure 0x402dd0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x402dd9
	.globl sub_402dd9
	.type sub_402dd9, @function
sub_402dd9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402de0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x402dea
	.globl sub_402dea
	.type sub_402dea, @function
sub_402dea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402df0

	.globl ignorable_ctx_err
	.type ignorable_ctx_err, @function
ignorable_ctx_err:
	cmp	edi, 0x5f
	sete	cl
	cmp	edi, 0x3d
	sete	al
	or	al, cl
	ret	
	.section	.text
	.align	16
	#Procedure 0x402dff
	.globl sub_402dff
	.type sub_402dff, @function
sub_402dff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402e00
	.globl mode_create_from_ref
	.type mode_create_from_ref, @function
mode_create_from_ref:

	sub	rsp, 0x98
	lea	rsi, [rsp + 8]
	call	stat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_151
	mov	edi, dword ptr [rsp + 0x20]
	mov	esi, 0xfff
	call	make_node_op_equals
.label_151:
	add	rsp, 0x98
	ret	
	.section	.text
	.align	16
	#Procedure 0x402e2f
	.globl sub_402e2f
	.type sub_402e2f, @function
sub_402e2f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402e30
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x402e3a
	.globl sub_402e3a
	.type sub_402e3a, @function
sub_402e3a:

	nop	word ptr [rax + rax]
.label_152:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x402e43
	.globl sub_402e43
	.type sub_402e43, @function
sub_402e43:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e4b
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_152
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x402e60

	.globl octal_to_mode
	.type octal_to_mode, @function
octal_to_mode:
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x402e63
	.globl sub_402e63
	.type sub_402e63, @function
sub_402e63:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e70

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_159
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_159:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	cmp	esi, 0xb
	ja	.label_153
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_163
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_161
	test	esi, esi
	jne	.label_153
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_164
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_156
.label_153:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_154
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_161
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_166
.label_163:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_161:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_157
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_160
.label_157:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_160:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_166:
	cmp	eax, 6
	jne	.label_154
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_155
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_158
.label_154:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_162
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_165
.label_164:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_156:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_155:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_158:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_162:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_165:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x403024
	.globl sub_403024
	.type sub_403024, @function
sub_403024:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403030
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_167
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_169:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_169
.label_167:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_170
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_171]], OFFSET FLAT:slot0
.label_170:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_168
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_168:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4030c1
	.globl sub_4030c1
	.type sub_4030c1, @function
sub_4030c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030d0
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
	#Procedure 0x403119
	.globl sub_403119
	.type sub_403119, @function
sub_403119:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403120

	.globl savewd_init
	.type savewd_init, @function
savewd_init:
	mov	dword ptr [rdi], 0
	ret	
	.section	.text
	.align	16
	#Procedure 0x403127
	.globl sub_403127
	.type sub_403127, @function
sub_403127:

	nop	word ptr [rax + rax]
.label_174:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_172
.label_173:
	mov	eax, 1
	test	bpl, bpl
	je	.label_172
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
.label_172:
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
	#Procedure 0x403178
	.globl sub_403178
	.type sub_403178, @function
sub_403178:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40317b

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
	je	.label_174
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_173
	jmp	.label_172
	.section	.text
	.align	16
	#Procedure 0x4031b0

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
	je	.label_176
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_175
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_175
.label_176:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_175
	test	cl, cl
	jne	.label_175
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_175:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403216
	.globl sub_403216
	.type sub_403216, @function
sub_403216:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403220

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_177
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_179
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_179
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_180
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_181
.label_179:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_181
.label_177:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_181:
	test	ebx, ebx
	js	.label_180
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_180
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_178
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_180
.label_178:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_180:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4032e3
	.globl sub_4032e3
	.type sub_4032e3, @function
sub_4032e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032f0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_182
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_182:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40330e
	.globl sub_40330e
	.type sub_40330e, @function
sub_40330e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403310
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
	#Procedure 0x403343
	.globl sub_403343
	.type sub_403343, @function
sub_403343:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403350

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_183
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_184
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403380

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_185
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_185:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4033a3
	.globl sub_4033a3
	.type sub_4033a3, @function
sub_4033a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033b0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_186
	test	rax, rax
	je	.label_187
.label_186:
	pop	rbx
	ret	
.label_187:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4033ca
	.globl sub_4033ca
	.type sub_4033ca, @function
sub_4033ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033d0

	.globl mode_compile
	.type mode_compile, @function
mode_compile:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbp, rdi
	mov	al, byte ptr [rbp]
	and	al, 0xf8
	cmp	al, 0x30
	jne	.label_191
	xor	r14d, r14d
	xor	edi, edi
	mov	rbx, rbp
	nop	
.label_190:
	movsx	eax, byte ptr [rbx]
	lea	edi, [rax + rdi*8 - 0x30]
	cmp	edi, 0xfff
	ja	.label_193
	movzx	eax, byte ptr [rbx + 1]
	inc	rbx
	mov	ecx, eax
	and	cl, 0xf8
	cmp	cl, 0x30
	je	.label_190
	xor	r14d, r14d
	test	al, al
	jne	.label_193
	call	octal_to_mode
	sub	rbx, rbp
	mov	ecx, eax
	and	ecx, 0xc00
	or	ecx, 0x3ff
	cmp	rbx, 5
	mov	esi, 0xfff
	cmovl	esi, ecx
	mov	edi, eax
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	make_node_op_equals
.label_191:
	mov	edi, 1
	mov	rax, rbp
	jmp	.label_204
.label_188:
	add	rdi, rdx
	inc	rax
.label_204:
	movzx	ecx, byte ptr [rax]
	cmp	cl, 0x2c
	jle	.label_207
	cmp	cl, 0x2d
	je	.label_211
	cmp	cl, 0x3d
	mov	edx, 1
	je	.label_188
	jmp	.label_214
	.section	.text
	.align	16
	#Procedure 0x40347f
	.globl sub_40347f
	.type sub_40347f, @function
sub_40347f:

	nop	
.label_207:
	cmp	cl, 0x2b
	mov	edx, 1
	je	.label_188
	test	cl, cl
	je	.label_192
.label_214:
	xor	edx, edx
	jmp	.label_188
	.section	.text
	.align	16
	#Procedure 0x403492
	.globl sub_403492
	.type sub_403492, @function
sub_403492:

	nop	word ptr cs:[rax + rax]
.label_211:
	mov	edx, 1
	jmp	.label_188
.label_192:
	mov	esi, 0x10
	call	xnmalloc
	mov	r14, rax
	xor	r15d, r15d
	movabs	r12, 0x2000280000000000
	jmp	.label_199
	.section	.text
	.align	16
	#Procedure 0x4034c3

	.globl sub_4034c3
	.type sub_4034c3, @function
sub_4034c3:
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_199:
	xor	ecx, ecx
	jmp	.label_203
	.section	.text
	.align	16
	#Procedure 0x4034d4
	.globl sub_4034d4
	.type sub_4034d4, @function
sub_4034d4:

	nop	word ptr cs:[rax + rax]
.label_549:
	or	ecx, 0x207
	inc	rbp
.label_203:
	movsx	eax, byte ptr [rbp]
	lea	edx, [rax - 0x61]
	cmp	edx, 0x14
	ja	.label_208
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_212]]
.label_547:
	or	ecx, 0xfff
	inc	rbp
	jmp	.label_203
	.section	.text
	.align	16
	#Procedure 0x403507
	.globl sub_403507
	.type sub_403507, @function
sub_403507:

	nop	word ptr [rax + rax]
.label_548:
	or	ecx, 0x438
	inc	rbp
	jmp	.label_203
	.section	.text
	.align	16
	#Procedure 0x40351b
	.globl sub_40351b
	.type sub_40351b, @function
sub_40351b:

	nop	dword ptr [rax + rax]
.label_550:
	or	ecx, 0x9c0
	inc	rbp
	jmp	.label_203
	.section	.text
	.align	16
	#Procedure 0x40352b
	.globl sub_40352b
	.type sub_40352b, @function
sub_40352b:

	nop	dword ptr [rax + rax]
.label_208:
	mov	edx, eax
	cmp	eax, 0x3d
	ja	.label_194
	bt	r12, rdx
	jae	.label_194
.label_553:
	lea	rax, [rbp + 1]
	mov	r13b, byte ptr [rbp]
	movsx	edx, byte ptr [rbp + 1]
	add	edx, -0x30
	cmp	edx, 0x45
	ja	.label_202
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_205]]
.label_496:
	xor	edi, edi
	mov	rbp, rax
	nop	word ptr cs:[rax + rax]
.label_196:
	movsx	eax, byte ptr [rbp]
	lea	edi, [rax + rdi*8 - 0x30]
	cmp	edi, 0xfff
	ja	.label_194
	movzx	eax, byte ptr [rbp + 1]
	inc	rbp
	mov	edx, eax
	and	dl, 0xf8
	cmp	dl, 0x30
	je	.label_196
	test	ecx, ecx
	jne	.label_194
	cmp	al, 0x2c
	je	.label_197
	test	al, al
	jne	.label_194
.label_197:
	call	octal_to_mode
	mov	bl, 1
	mov	ecx, 0xfff
	mov	esi, 0xfff
	jmp	.label_198
.label_202:
	mov	bl, 1
	xor	esi, esi
	mov	rbp, rax
	xor	eax, eax
	jmp	.label_200
	.section	.text
	.align	16
	#Procedure 0x4035ca
	.globl sub_4035ca
	.type sub_4035ca, @function
sub_4035ca:

	nop	word ptr [rax + rax]
.label_195:
	inc	rbp
	mov	ebx, edx
.label_200:
	movsx	edi, byte ptr [rbp]
	add	edi, -0x58
	cmp	edi, 0x20
	ja	.label_198
	mov	dl, 2
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_206]]
.label_479:
	or	eax, 0x124
	jmp	.label_209
.label_480:
	or	eax, 0xc00
	jmp	.label_209
.label_481:
	or	eax, 0x200
	jmp	.label_209
.label_482:
	or	eax, 0x92
	jmp	.label_209
.label_483:
	or	eax, 0x49
	nop	dword ptr [rax]
.label_209:
	mov	edx, ebx
	jmp	.label_195
.label_497:
	add	rbp, 2
	mov	bl, 3
	xor	esi, esi
	mov	eax, 0x38
	jmp	.label_198
.label_498:
	add	rbp, 2
	mov	bl, 3
	xor	esi, esi
	mov	eax, 7
	jmp	.label_198
.label_499:
	add	rbp, 2
	mov	bl, 3
	xor	esi, esi
	mov	eax, 0x1c0
	nop	
.label_198:
	mov	rdx, r15
	shl	rdx, 4
	mov	byte ptr [r14 + rdx], r13b
	mov	byte ptr [r14 + rdx + 1], bl
	mov	dword ptr [r14 + rdx + 4], ecx
	mov	dword ptr [r14 + rdx + 8], eax
	test	esi, esi
	jne	.label_201
	cmp	ecx, 1
	sbb	esi, esi
	or	esi, ecx
	and	esi, eax
.label_201:
	inc	r15
	mov	dword ptr [r14 + rdx + 0xc], esi
	mov	al, byte ptr [rbp]
	add	al, 0xd5
	movzx	eax, al
	cmp	al, 0x12
	ja	.label_210
	jmp	qword ptr [word ptr [+ (rax * 8) + label_213]]
.label_210:
	cmp	byte ptr [rbp], 0
	je	.label_189
.label_194:
	mov	rdi, r14
	call	free
	xor	r14d, r14d
.label_193:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_189:
	shl	r15, 4
	mov	byte ptr [r14 + r15 + 1], 0
	jmp	.label_193
	.section	.text
	.align	16
	#Procedure 0x4036b1
	.globl sub_4036b1
	.type sub_4036b1, @function
sub_4036b1:

	nop	word ptr cs:[rax + rax]
.label_215:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	16
	#Procedure 0x4036cc
	.globl sub_4036cc
	.type sub_4036cc, @function
sub_4036cc:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4036d9

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_215
	ret	
	.section	.text
	.align	16
	#Procedure 0x4036e0

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
	mov	rcx,  qword ptr [word ptr [rip + label_216]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_217]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_218]]
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
	#Procedure 0x40374d
	.globl sub_40374d
	.type sub_40374d, @function
sub_40374d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403750

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x40375d
	.globl sub_40375d
	.type sub_40375d, @function
sub_40375d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403760

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	16
	#Procedure 0x403767
	.globl sub_403767
	.type sub_403767, @function
sub_403767:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403770

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_221
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_223
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_219
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_223
	mov	esi, OFFSET FLAT:label_224
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_220
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_220:
	mov	rbx, r14
.label_223:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_221:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_222
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403811
	.globl sub_403811
	.type sub_403811, @function
sub_403811:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403820
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40382a
	.globl sub_40382a
	.type sub_40382a, @function
sub_40382a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403830
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x403838
	.globl sub_403838
	.type sub_403838, @function
sub_403838:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403840
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40384a
	.globl sub_40384a
	.type sub_40384a, @function
sub_40384a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403850
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40385a
	.globl sub_40385a
	.type sub_40385a, @function
sub_40385a:

	nop	word ptr [rax + rax]
.label_225:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x403863
	.globl sub_403863
	.type sub_403863, @function
sub_403863:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403865
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_225
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x403880
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_226
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_226
.label_227:
	ret	
.label_226:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_227
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4038a6
	.globl sub_4038a6
	.type sub_4038a6, @function
sub_4038a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038b0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_229:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_228
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_230
	.section	.text
	.align	16
	#Procedure 0x4038d9
	.globl sub_4038d9
	.type sub_4038d9, @function
sub_4038d9:

	nop	dword ptr [rax]
.label_228:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_230:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_231
	inc	r9
	cmp	r9, 0xa
	jb	.label_229
.label_231:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
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
	#Procedure 0x40391d
	.globl sub_40391d
	.type sub_40391d, @function
sub_40391d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403920
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	16
	#Procedure 0x40392a
	.globl sub_40392a
	.type sub_40392a, @function
sub_40392a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403930

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
	je	.label_232
	mov	qword ptr [rax], rbx
.label_232:
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
	#Procedure 0x403a1c
	.globl sub_403a1c
	.type sub_403a1c, @function
sub_403a1c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403a20

	.globl savewd_delegating
	.type savewd_delegating, @function
savewd_delegating:
	cmp	dword ptr [rdi], 3
	jne	.label_233
	cmp	dword ptr [rdi + 4], 0
	setg	al
	ret	
.label_233:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a30

	.globl announce_mkdir
	.type announce_mkdir, @function
announce_mkdir:
	push	r14
	push	rbx
	push	rax
	mov	rax, rdi
	mov	rbx, qword ptr [rsi + 0x18]
	test	rbx, rbx
	je	.label_234
	mov	r14,  qword ptr [word ptr [rip + stdout]]
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	prog_fprintf
.label_234:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a76
	.globl sub_403a76
	.type sub_403a76, @function
sub_403a76:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a80
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
	#Procedure 0x403a8f
	.globl sub_403a8f
	.type sub_403a8f, @function
sub_403a8f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403a90
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
	#Procedure 0x403b02
	.globl sub_403b02
	.type sub_403b02, @function
sub_403b02:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b10

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x403b19
	.globl sub_403b19
	.type sub_403b19, @function
sub_403b19:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403b20

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
	mov	rax,  qword ptr [word ptr [rip + label_216]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_217]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_218]]
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
	#Procedure 0x403b88
	.globl sub_403b88
	.type sub_403b88, @function
sub_403b88:

	nop	dword ptr [rax + rax]
.label_235:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403b95
	.globl sub_403b95
	.type sub_403b95, @function
sub_403b95:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b9f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_235
	call	rpl_calloc
	test	rax, rax
	je	.label_235
	pop	rcx
	ret	
.label_236:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403bc6
	.globl sub_403bc6
	.type sub_403bc6, @function
sub_403bc6:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403bcb

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_236
	test	rdx, rdx
	je	.label_236
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_238:
	test	rcx, rcx
	jne	.label_237
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_237:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_239
.label_240:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
	.section	.text
	.align	16
	#Procedure 0x403c32

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_238
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_241
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_240
.label_241:
	call	xalloc_die
.label_239:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403c69
	.globl sub_403c69
	.type sub_403c69, @function
sub_403c69:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403c70

	.globl savewd_process_files
	.type savewd_process_files, @function
savewd_process_files:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rcx
	mov	qword ptr [rsp + 0x18], rdx
	mov	rbp, rsi
	mov	r12d, edi
	movabs	r15, 0xffffffff00000000
	lea	rdi, [rsp + 8]
	call	savewd_init
	movsxd	rax, r12d
	mov	rsi, rax
	shl	rsi, 0x20
	add	rsi, r15
	lea	rcx, [rbp + rax*8 - 8]
	mov	edx, eax
	mov	qword ptr [rsp + 0x20], rdx
	xor	edi, edi
	nop	dword ptr [rax + rax]
.label_245:
	mov	rdx, rdi
	mov	r14, rsi
	lea	rsi, [rax + rdx]
	test	rsi, rsi
	jle	.label_249
	mov	rbx, qword ptr [rcx + rdx*8]
	lea	rdi, [rdx - 1]
	lea	rsi, [r14 + r15]
	cmp	byte ptr [rbx], 0x2f
	je	.label_245
.label_249:
	add	edx, r12d
	xor	ebx, ebx
	cmp	edx, 2
	mov	r15d, 0
	jl	.label_244
	mov	qword ptr [rsp + 0x10], r13
	sar	r14, 0x20
	xor	r15d, r15d
	lea	r13, [rsp + 8]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_248:
	mov	rdi, r13
	call	savewd_delegating
	test	al, al
	jne	.label_246
	mov	rdi, qword ptr [rbp + r15*8]
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x10]
	call	qword ptr [rsp + 0x18]
	cmp	ebx, eax
	cmovl	ebx, eax
.label_246:
	mov	rax, qword ptr [rbp + r15*8 + 8]
	inc	r15
	cmp	byte ptr [rax], 0x2f
	je	.label_247
	mov	rdi, r13
	mov	esi, ebx
	call	savewd_restore
	cmp	ebx, eax
	cmovl	ebx, eax
.label_247:
	cmp	r15, r14
	jl	.label_248
	mov	r13, qword ptr [rsp + 0x10]
.label_244:
	lea	rdi, [rsp + 8]
	call	savewd_finish
	mov	rax, qword ptr [rsp + 0x20]
	cmp	r15d, eax
	jge	.label_242
	movsxd	rax, r15d
	lea	rbp, [rbp + rax*8]
	sub	r12d, r15d
	lea	r14, [rsp + 8]
	mov	r15, qword ptr [rsp + 0x18]
	nop	word ptr cs:[rax + rax]
.label_243:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	mov	rdx, r13
	call	r15
	cmp	ebx, eax
	cmovl	ebx, eax
	add	rbp, 8
	dec	r12d
	jne	.label_243
.label_242:
	mov	eax, ebx
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
	#Procedure 0x403dbc
	.globl sub_403dbc
	.type sub_403dbc, @function
sub_403dbc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403dc0

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
.label_271:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_275
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_280]]
.label_627:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_287
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_293
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_628:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_300
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_300
	xor	r14d, r14d
.label_313:
	cmp	r14, r11
	jae	.label_309
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_309:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_313
.label_300:
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
	jmp	.label_292
.label_620:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_292
.label_623:
	mov	al, 1
.label_621:
	mov	r12b, 1
.label_624:
	test	r12b, 1
	mov	cl, 1
	je	.label_327
	mov	ecx, eax
.label_327:
	mov	al, cl
.label_622:
	test	r12b, 1
	jne	.label_329
	test	r11, r11
	je	.label_282
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_282:
	mov	r14d, 1
	jmp	.label_336
.label_329:
	xor	r14d, r14d
.label_336:
	mov	ecx, OFFSET FLAT:label_293
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_292
.label_625:
	test	r12b, 1
	jne	.label_342
	test	r11, r11
	je	.label_363
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_363:
	mov	r14d, 1
	jmp	.label_334
.label_626:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_348
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_292
.label_342:
	xor	r14d, r14d
.label_334:
	mov	eax, OFFSET FLAT:label_348
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_292:
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
	jmp	.label_254
	.section	.text
	.align	16
	#Procedure 0x40409c
	.globl sub_40409c
	.type sub_40409c, @function
sub_40409c:

	nop	dword ptr [rax]
.label_310:
	inc	rsi
.label_254:
	cmp	rbp, -1
	je	.label_353
	cmp	rsi, rbp
	jne	.label_362
	jmp	.label_297
	.section	.text
	.align	16
	#Procedure 0x4040b3
	.globl sub_4040b3
	.type sub_4040b3, @function
sub_4040b3:

	nop	word ptr cs:[rax + rax]
.label_353:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_297
.label_362:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_302
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_269
	cmp	rbp, -1
	jne	.label_269
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
.label_269:
	cmp	rbx, rbp
	jbe	.label_315
.label_302:
	xor	r8d, r8d
.label_252:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_316
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_318]]
.label_574:
	test	rsi, rsi
	jne	.label_311
	jmp	.label_322
	.section	.text
	.align	16
	#Procedure 0x40414e
	.globl sub_40414e
	.type sub_40414e, @function
sub_40414e:

	nop	
.label_315:
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
	jne	.label_333
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_252
	jmp	.label_253
.label_333:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_252
.label_578:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_351
	test	rsi, rsi
	jne	.label_354
	cmp	rbp, 1
	je	.label_322
	xor	r13d, r13d
	jmp	.label_298
.label_567:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_361
	cmp	byte ptr [rsp + 7], 0
	jne	.label_277
	cmp	r12d, 2
	jne	.label_251
	mov	eax, r9d
	and	al, 1
	jne	.label_251
	cmp	r14, r11
	jae	.label_285
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_285:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_258
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_258:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_263
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_263:
	add	r14, 3
	mov	r9b, 1
.label_251:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_357
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_357:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_274
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_274
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_274
	cmp	r14, r11
	jae	.label_288
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_288:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_273
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_273:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_298
.label_568:
	mov	bl, 0x62
	jmp	.label_299
.label_569:
	mov	cl, 0x74
	jmp	.label_265
.label_570:
	mov	bl, 0x76
	jmp	.label_299
.label_571:
	mov	bl, 0x66
	jmp	.label_299
.label_572:
	mov	cl, 0x72
	jmp	.label_265
.label_575:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_307
	cmp	byte ptr [rsp + 7], 0
	jne	.label_277
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
	jae	.label_314
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_314:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_319
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_319:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_323
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_323:
	add	r14, 3
	xor	r9d, r9d
.label_307:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_298
.label_576:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_331
	cmp	r12d, 2
	jne	.label_311
	cmp	byte ptr [rsp + 7], 0
	je	.label_311
	jmp	.label_277
.label_577:
	cmp	r12d, 2
	jne	.label_340
	cmp	byte ptr [rsp + 7], 0
	jne	.label_277
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_266
.label_316:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_345
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
.label_272:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_261
	test	r8b, r8b
	je	.label_261
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_298
.label_351:
	test	rsi, rsi
	jne	.label_270
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_270
.label_322:
	mov	dl, 1
.label_573:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_277
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_298:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_281
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_283
	jmp	.label_289
	.section	.text
	.align	16
	#Procedure 0x404494
	.globl sub_404494
	.type sub_404494, @function
sub_404494:

	nop	word ptr cs:[rax + rax]
.label_281:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_289
.label_283:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_294
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_266
	jmp	.label_306
	.section	.text
	.align	16
	#Procedure 0x4044dd
	.globl sub_4044dd
	.type sub_4044dd, @function
sub_4044dd:

	nop	dword ptr [rax]
.label_289:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_306
	jmp	.label_266
.label_294:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_306
.label_361:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_310
	xor	r15d, r15d
	jmp	.label_311
.label_340:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_265
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_266
.label_265:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_277
.label_299:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_298
	nop	word ptr cs:[rax + rax]
.label_306:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_277
	cmp	r12d, 2
	jne	.label_267
	mov	eax, r9d
	and	al, 1
	jne	.label_267
	cmp	r14, r11
	jae	.label_330
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_330:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_303
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_303:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_338
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_338:
	add	r14, 3
	mov	r9b, 1
.label_267:
	cmp	r14, r11
	jae	.label_341
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_341:
	inc	r14
	jmp	.label_343
.label_345:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_346
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_346:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_290:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_257
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_260
	cmp	rbp, -2
	je	.label_332
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_284
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_352:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_320
	bt	rsi, rdx
	jb	.label_253
.label_320:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_352
.label_284:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_296
	xor	r13d, r13d
.label_296:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_290
	jmp	.label_272
.label_274:
	xor	r13d, r13d
	jmp	.label_298
.label_270:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_298
.label_331:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_311
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_311
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_311
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_364
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_305
	cmp	byte ptr [rsp + 7], 0
	jne	.label_277
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_324
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_324:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_359
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_359:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_335
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_335:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_337
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_337:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_298
.label_311:
	xor	eax, eax
.label_354:
	xor	r13d, r13d
	jmp	.label_298
.label_261:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_344
	.section	.text
	.align	16
	#Procedure 0x4047c3
	.globl sub_4047c3
	.type sub_4047c3, @function
sub_4047c3:

	nop	word ptr cs:[rax + rax]
.label_312:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_344:
	test	r8b, r8b
	je	.label_355
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_356
	cmp	r14, r11
	jae	.label_358
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_358:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_356
	.section	.text
	.align	16
	#Procedure 0x40480c
	.globl sub_40480c
	.type sub_40480c, @function
sub_40480c:

	nop	dword ptr [rax]
.label_355:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_253
	cmp	r12d, 2
	jne	.label_256
	mov	eax, r9d
	and	al, 1
	jne	.label_256
	cmp	r14, r11
	jae	.label_259
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_259:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_262
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_262:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_268
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_268:
	add	r14, 3
	mov	r9b, 1
.label_256:
	cmp	r14, r11
	jae	.label_350
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_350:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_278
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_278:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_321
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_321:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_356:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_266
	test	r9b, 1
	je	.label_301
	mov	ebx, eax
	and	bl, 1
	jne	.label_301
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_304
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_304:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_286
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_286:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_301:
	cmp	r14, r11
	jae	.label_312
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_312
	.section	.text
	.align	16
	#Procedure 0x404913
	.globl sub_404913
	.type sub_404913, @function
sub_404913:

	nop	word ptr cs:[rax + rax]
.label_266:
	test	r9b, 1
	je	.label_308
	and	al, 1
	jne	.label_308
	cmp	r14, r11
	jae	.label_317
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_317:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_326
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_326:
	add	r14, 2
	xor	r9d, r9d
.label_308:
	mov	ebx, r15d
.label_343:
	cmp	r14, r11
	jae	.label_325
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_325:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_310
.label_260:
	xor	r13d, r13d
.label_257:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_272
.label_332:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_339
	mov	rsi, qword ptr [rsp + 0x50]
.label_250:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_347
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_250
	xor	r13d, r13d
	jmp	.label_272
.label_339:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_272
.label_347:
	xor	r13d, r13d
	jmp	.label_272
.label_364:
	xor	r13d, r13d
	jmp	.label_298
.label_305:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_298
	.section	.text
	.align	16
	#Procedure 0x4049e8
	.globl sub_4049e8
	.type sub_4049e8, @function
sub_4049e8:

	nop	dword ptr [rax + rax]
.label_297:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_360
	or	dl, al
	je	.label_253
.label_360:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_255
	or	dl, al
	jne	.label_255
	test	r10b, 1
	jne	.label_264
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_255
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_271
.label_255:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_276
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_279
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_279
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_295:
	cmp	r14, r11
	jae	.label_349
	mov	byte ptr [rcx + r14], al
.label_349:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_295
	jmp	.label_279
.label_277:
	mov	qword ptr [rsp + 0x20], rbp
.label_253:
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
.label_328:
	mov	r14, rax
.label_291:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_264:
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
	jmp	.label_328
.label_276:
	mov	rcx, qword ptr [rsp + 8]
.label_279:
	cmp	r14, r11
	jae	.label_291
	mov	byte ptr [rcx + r14], 0
	jmp	.label_291
.label_275:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404b7c
	.globl sub_404b7c
	.type sub_404b7c, @function
sub_404b7c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404b80

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_365
	test	rsi, rsi
	mov	ecx, 1
	je	.label_366
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_366
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_365:
	mov	ecx, 1
.label_366:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x404bcb
	.globl sub_404bcb
	.type sub_404bcb, @function
sub_404bcb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404bd0

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
	#Procedure 0x404c09
	.globl sub_404c09
	.type sub_404c09, @function
sub_404c09:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404c10

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
	#Procedure 0x404c21
	.globl sub_404c21
	.type sub_404c21, @function
sub_404c21:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c30
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
	#Procedure 0x404c44
	.globl sub_404c44
	.type sub_404c44, @function
sub_404c44:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c50
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c58
	.globl sub_404c58
	.type sub_404c58, @function
sub_404c58:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c60

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_84
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_367
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c85
	.globl sub_404c85
	.type sub_404c85, @function
sub_404c85:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c90
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
	#Procedure 0x404cb7
	.globl sub_404cb7
	.type sub_404cb7, @function
sub_404cb7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404cc0

	.globl defaultcon
	.type defaultcon, @function
defaultcon:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	pop	rax
	ret	
	.section	.text
	.align	16
	#Procedure 0x404cce
	.globl sub_404cce
	.type sub_404cce, @function
sub_404cce:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404cd0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x404cda
	.globl sub_404cda
	.type sub_404cda, @function
sub_404cda:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ce0

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
	je	.label_368
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
.label_368:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404d32
	.globl sub_404d32
	.type sub_404d32, @function
sub_404d32:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d40

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, rsi
	mov	ebx, edi
	mov	qword ptr [rsp + 8], 0
	mov	dword ptr [rsp + 0x14], 0x1ff
	lea	r15, [rsp + 0x18]
	mov	dword ptr [rsp + 0x18], 0
	mov	qword ptr [rsp + 0x20], 0
	mov	byte ptr [rsp + 0x1c], 0
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_84
	call	setlocale
	mov	edi, OFFSET FLAT:label_371
	mov	esi, OFFSET FLAT:label_372
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_371
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	r12d, r12d
	jmp	.label_374
.label_602:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_379
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x20], rax
	nop	word ptr cs:[rax + rax]
.label_374:
	mov	edx, OFFSET FLAT:label_384
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebx
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x59
	jle	.label_387
	add	eax, -0x5a
	cmp	eax, 0x1c
	ja	.label_369
	jmp	qword ptr [word ptr [+ (rax * 8) + label_373]]
.label_599:
	cmp	qword ptr [word ptr [rip + optarg]],  0
	je	.label_374
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_377
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_374
.label_600:
	mov	r12,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_374
.label_601:
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:make_ancestor
	jmp	.label_374
.label_387:
	cmp	eax, -1
	jne	.label_382
	cmp	dword ptr [dword ptr [rip + optind]],  ebx
	je	.label_383
	test	r12, r12
	jne	.label_385
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_380
.label_385:
	xor	edi, edi
	call	umask
	mov	ebp, eax
	mov	edi, ebp
	call	umask
	mov	dword ptr [rsp + 0x10], ebp
	test	r12, r12
	je	.label_370
	mov	rdi, r12
	call	mode_compile
	mov	r13, rax
	test	r13, r13
	je	.label_376
	mov	edi, 0x1ff
	mov	esi, 1
	mov	edx, ebp
	mov	rcx, r13
	mov	r8, r15
	call	mode_adjust
	mov	dword ptr [rsp + 0x14], eax
	mov	rdi, r13
	call	free
	jmp	.label_380
.label_370:
	mov	dword ptr [rsp + 0x14], 0x1ff
.label_380:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	sub	ebx, eax
	lea	rsi, [r14 + rax*8]
	lea	rcx, [rsp + 8]
	mov	edx, OFFSET FLAT:process_dir
	mov	edi, ebx
	call	savewd_process_files
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_382:
	cmp	eax, 0xffffff7d
	je	.label_378
	cmp	eax, 0xffffff7e
	jne	.label_369
	xor	edi, edi
	call	usage
.label_378:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_80
	mov	edx, OFFSET FLAT:label_78
	mov	r8d, OFFSET FLAT:label_375
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_369:
	mov	edi, 1
	call	usage
.label_383:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_381
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
.label_376:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_386
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fb0

	.globl savewd_errno
	.type savewd_errno, @function
savewd_errno:
	xor	eax, eax
	cmp	dword ptr [rdi], 4
	jne	.label_388
	mov	eax, dword ptr [rdi + 4]
.label_388:
	ret	
	.section	.text
	.align	16
	#Procedure 0x404fbb
	.globl sub_404fbb
	.type sub_404fbb, @function
sub_404fbb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fc0

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
	#Procedure 0x404ff7
	.globl sub_404ff7
	.type sub_404ff7, @function
sub_404ff7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405000
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	16
	#Procedure 0x40500a
	.globl sub_40500a
	.type sub_40500a, @function
sub_40500a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405010

	.globl prog_fprintf
	.type prog_fprintf, @function
prog_fprintf:
	push	r14
	push	rbx
	sub	rsp, 0xd8
	mov	r14, rsi
	mov	rbx, rdi
	test	al, al
	je	.label_389
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_389:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	rdi,  qword ptr [word ptr [rip + program_name]]
	mov	rsi, rbx
	call	fputs_unlocked
	mov	edi, OFFSET FLAT:label_390
	mov	rsi, rbx
	call	fputs_unlocked
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	lea	rcx, [rsp]
	mov	esi, 1
	mov	rdi, rbx
	mov	rdx, r14
	call	__vfprintf_chk
	mov	edi, 0xa
	mov	rsi, rbx
	call	fputc_unlocked
	add	rsp, 0xd8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x4050dd
	.globl sub_4050dd
	.type sub_4050dd, @function
sub_4050dd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4050e0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_391:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_391
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x405101
	.globl sub_405101
	.type sub_405101, @function
sub_405101:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405110

	.globl mode_adjust
	.type mode_adjust, @function
mode_adjust:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	qword ptr [rsp - 8], r8
	and	edi, 0xfff
	mov	al, byte ptr [rcx + 1]
	xor	r13d, r13d
	test	al, al
	je	.label_395
	xor	r13d, r13d
	test	sil, sil
	mov	r9d, 0xc00
	cmove	r9d, r13d
	not	edx
	mov	r10d, r9d
	not	r10d
	movzx	r12d, sil
	mov	r14d, 0x92
	mov	r15d, 0x49
	nop	dword ptr [rax + rax]
.label_394:
	movsx	ebp, al
	mov	ebx, dword ptr [rcx + 4]
	mov	esi, dword ptr [rcx + 8]
	mov	r8d, dword ptr [rcx + 0xc]
	cmp	ebp, 2
	je	.label_392
	cmp	ebp, 3
	jne	.label_396
	and	esi, edi
	mov	ebp, esi
	and	ebp, 0x124
	mov	eax, 0x124
	cmovne	ebp, eax
	mov	r11d, esi
	and	r11d, 0x92
	cmovne	r11d, r14d
	or	r11d, esi
	and	esi, 0x49
	cmovne	esi, r15d
	or	esi, ebp
	or	esi, r11d
	jmp	.label_396
	.section	.text
	.align	16
	#Procedure 0x4051a8
	.globl sub_4051a8
	.type sub_4051a8, @function
sub_4051a8:

	nop	dword ptr [rax + rax]
.label_392:
	mov	ebp, edi
	and	ebp, 0x49
	mov	eax, esi
	or	eax, 0x49
	or	ebp, r12d
	cmovne	esi, eax
.label_396:
	test	ebx, ebx
	mov	eax, edx
	cmovne	eax, ebx
	mov	ebp, r8d
	or	ebp, r10d
	and	ebp, esi
	and	ebp, eax
	movsx	esi, byte ptr [rcx]
	cmp	esi, 0x2b
	je	.label_397
	cmp	esi, 0x2d
	je	.label_399
	cmp	esi, 0x3d
	jne	.label_393
	not	r8d
	and	r8d, r9d
	test	ebx, ebx
	mov	eax, ebx
	not	eax
	cmove	eax, ebx
	or	eax, r8d
	mov	esi, eax
	not	esi
	and	esi, 0xfff
	or	r13d, esi
	and	eax, edi
	or	ebp, eax
	mov	edi, ebp
	jmp	.label_393
	.section	.text
	.align	16
	#Procedure 0x40520a
	.globl sub_40520a
	.type sub_40520a, @function
sub_40520a:

	nop	word ptr [rax + rax]
.label_399:
	or	r13d, ebp
	not	ebp
	and	edi, ebp
	jmp	.label_393
	.section	.text
	.align	16
	#Procedure 0x405219
	.globl sub_405219
	.type sub_405219, @function
sub_405219:

	nop	dword ptr [rax]
.label_397:
	or	r13d, ebp
	or	edi, ebp
.label_393:
	movzx	eax, byte ptr [rcx + 0x11]
	add	rcx, 0x10
	test	al, al
	jne	.label_394
.label_395:
	mov	rax, qword ptr [rsp - 8]
	test	rax, rax
	je	.label_398
	mov	dword ptr [rax], r13d
.label_398:
	mov	eax, edi
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40524f
	.globl sub_40524f
	.type sub_40524f, @function
sub_40524f:

	nop	
.label_402:
	xor	eax, eax
	jmp	.label_400
	.section	.text
	.align	16
	#Procedure 0x405254
	.globl sub_405254
	.type sub_405254, @function
sub_405254:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40525e
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_402
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_401]]
.label_400:
	ret	
	.section	.text
	.align	16
	#Procedure 0x405270

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
	je	.label_405
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_403
	jmp	.label_404
.label_405:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_404
.label_403:
	mov	eax, 1
	test	bpl, bpl
	je	.label_404
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
.label_404:
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
	#Procedure 0x4052f8
	.globl sub_4052f8
	.type sub_4052f8, @function
sub_4052f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405300

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
	je	.label_406
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_408
	jmp	.label_407
.label_406:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_407
.label_408:
	mov	eax, 1
	test	bpl, bpl
	je	.label_407
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
.label_407:
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
	#Procedure 0x405379
	.globl sub_405379
	.type sub_405379, @function
sub_405379:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405380

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
	je	.label_411
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_410
	jmp	.label_409
.label_411:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_409
.label_410:
	mov	eax, 1
	test	bpl, bpl
	je	.label_409
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
.label_409:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4053e3
	.globl sub_4053e3
	.type sub_4053e3, @function
sub_4053e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053f0

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
	je	.label_414
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_412
	jmp	.label_413
.label_414:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_413
.label_412:
	mov	eax, 1
	test	bpl, bpl
	je	.label_413
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_413:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40544f
	.globl sub_40544f
	.type sub_40544f, @function
sub_40544f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405450

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
	je	.label_415
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_417
	jmp	.label_416
.label_415:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_416
.label_417:
	mov	eax, 1
	test	bpl, bpl
	je	.label_416
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_416:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405499
	.globl sub_405499
	.type sub_405499, @function
sub_405499:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4054a0

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
	je	.label_420
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_419
	jmp	.label_418
.label_420:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_418
.label_419:
	mov	eax, 1
	test	bpl, bpl
	je	.label_418
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_418:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4054e5
	.globl sub_4054e5
	.type sub_4054e5, @function
sub_4054e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4054f0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_423
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_422
	jmp	.label_421
.label_423:
	mov	eax, 1
	test	cl, cl
	je	.label_421
.label_422:
	xor	eax, eax
.label_421:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40551f
	.globl sub_40551f
	.type sub_40551f, @function
sub_40551f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405520

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	16
	#Procedure 0x40552e
	.globl sub_40552e
	.type sub_40552e, @function
sub_40552e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405530

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_424
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_426
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_426
.label_424:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_425
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_426:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_428
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_427
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_184
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_425:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_427:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_429
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055f0

	.globl savewd_save
	.type savewd_save, @function
savewd_save:
	push	rbx
	mov	rbx, rdi
	mov	eax, dword ptr [rbx]
	cmp	eax, 5
	ja	.label_439
	mov	ecx, 0x36
	bt	ecx, eax
	jb	.label_430
	test	eax, eax
	jne	.label_431
	mov	edi, OFFSET FLAT:label_432
	xor	esi, esi
	xor	eax, eax
	call	open_safer
	test	eax, eax
	js	.label_433
	mov	dword ptr [rbx], 1
	jmp	.label_435
.label_433:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0xd
	je	.label_437
	cmp	ecx, 0x74
	jne	.label_438
.label_437:
	movabs	rax, 0xffffffff00000003
	mov	qword ptr [rbx], rax
.label_431:
	cmp	dword ptr [rbx + 4], 0
	jns	.label_430
	call	fork
	mov	dword ptr [rbx + 4], eax
	test	eax, eax
	je	.label_430
	mov	al, 1
	jg	.label_434
	mov	dword ptr [rbx], 4
	call	__errno_location
	jmp	.label_436
.label_438:
	mov	dword ptr [rbx], 4
.label_436:
	mov	eax, dword ptr [rax]
.label_435:
	mov	dword ptr [rbx + 4], eax
.label_430:
	xor	eax, eax
.label_434:
	pop	rbx
	ret	
.label_439:
	mov	edi, OFFSET FLAT:label_34
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 0x63
	mov	ecx, OFFSET FLAT:label_440
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x40568c
	.globl sub_40568c
	.type sub_40568c, @function
sub_40568c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405690
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_441
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_442
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_444
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_78
	mov	ecx, OFFSET FLAT:label_79
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_443
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x405704
	.globl sub_405704
	.type sub_405704, @function
sub_405704:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405710
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
	#Procedure 0x405729
	.globl sub_405729
	.type sub_405729, @function
sub_405729:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405730

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
	jne	.label_451
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
	je	.label_445
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_449
	mov	eax, OFFSET FLAT:label_450
	jmp	.label_448
.label_445:
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
	je	.label_452
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_446
	mov	eax, OFFSET FLAT:label_447
	jmp	.label_448
.label_452:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_348
	mov	eax, OFFSET FLAT:label_293
.label_448:
	cmove	rax, rcx
.label_451:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4057ed
	.globl sub_4057ed
	.type sub_4057ed, @function
sub_4057ed:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4057f0

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	cmp	ebx, 2
	ja	.label_453
	mov	edi, ebx
	call	dup_safer
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_454
.label_453:
	mov	eax, ebx
.label_454:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405831
	.globl sub_405831
	.type sub_405831, @function
sub_405831:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405840
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
	#Procedure 0x40584f
	.globl sub_40584f
	.type sub_40584f, @function
sub_40584f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405850

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40585a
	.globl sub_40585a
	.type sub_40585a, @function
sub_40585a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405860

	.globl make_dir_parents
	.type make_dir_parents, @function
make_dir_parents:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	r15, r9
	mov	r13d, r8d
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbx, rdx
	mov	rbp, rsi
	mov	r12, rdi
	cmp	byte ptr [r12], 0x2f
	je	.label_470
	mov	rdi, rbp
	call	savewd_errno
	mov	r14d, eax
	test	r14d, r14d
	jne	.label_458
.label_470:
	mov	qword ptr [rsp + 0x30], r15
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_459
	mov	rdi, r12
	mov	rsi, rbp
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 0x20]
	call	mkancesdirs
	mov	r15, rax
	test	r15, r15
	js	.label_467
.label_459:
	mov	qword ptr [rsp + 0x28], rbp
	mov	qword ptr [rsp + 0x18], rbx
	mov	ebp, dword ptr [rsp + 0x110]
	mov	eax, dword ptr [rsp + 0x100]
	and	ebp, dword ptr [rsp + 0x108]
	and	eax, 0xc00
	mov	ebx, r13d
	and	ebx, 0x200
	mov	ecx, r13d
	and	ecx, 0xffffffc0
	mov	r14d, r13d
	and	r14d, 0xffffffed
	or	ebx, eax
	cmove	r14d, r13d
	cmp	ebp, -1
	cmovne	r14d, ecx
	add	r15, r12
	mov	rdi, r15
	mov	esi, r14d
	call	mkdir
	test	eax, eax
	mov	dword ptr [rsp + 0x14], ebp
	je	.label_460
	mov	bl, byte ptr [rsp + 0x118]
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	r14d, 0xffffffff
	mov	edx, 2
	jmp	.label_465
.label_460:
	cmp	ebp, -1
	sete	byte ptr [rsp + 0x13]
	mov	rbp, r12
	mov	r12d, r13d
	and	r12d, dword ptr [rsp + 0x100]
	and	r12d, 0x1ff
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x20]
	call	qword ptr [rsp + 0x30]
	or	r12d, ebx
	mov	r12, rbp
	sete	bl
	and	bl, byte ptr [rsp + 0x13]
	xor	ebp, ebp
	mov	edx, 3
.label_465:
	test	bl, bl
	je	.label_455
	mov	bl, 1
	mov	r14d, ebp
	test	r14d, r14d
	je	.label_456
	cmp	qword ptr [rsp + 0x18], 0
	je	.label_458
	cmp	r14d, 2
	je	.label_458
	lea	rsi, [rsp + 0x38]
	mov	rdi, r15
	call	stat
	test	eax, eax
	je	.label_466
	cmp	r14d, 0x11
	jne	.label_458
	call	__errno_location
	mov	ebp, dword ptr [rax]
	cmp	ebp, 2
	je	.label_458
	cmp	ebp, 0x14
	je	.label_458
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_469
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, r12
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r14
	jmp	.label_461
.label_455:
	lea	rcx, [rsp + 0x38]
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, r15
	call	savewd_chdir
	cmp	eax, -2
	jg	.label_471
	mov	bl, 1
	jmp	.label_456
.label_467:
	mov	bl, 1
	cmp	r15, -1
	jne	.label_456
	call	__errno_location
	mov	r14d, dword ptr [rax]
	jmp	.label_458
.label_471:
	test	eax, eax
	mov	eax, OFFSET FLAT:label_432
	cmove	r15, rax
	mov	edi, dword ptr [rsp + 0x38]
	mov	eax, dword ptr [rsp + 0x100]
	mov	dword ptr [rsp], eax
	mov	rsi, r15
	mov	edx, r14d
	mov	ecx, dword ptr [rsp + 0x108]
	mov	r8d, dword ptr [rsp + 0x110]
	mov	r9d, r13d
	call	dirchownmod
	mov	bl, 1
	test	eax, eax
	je	.label_456
	mov	r14d, ebp
	test	r14d, r14d
	je	.label_457
	cmp	qword ptr [rsp + 0x18], 0
	je	.label_458
	cmp	r14d, 2
	je	.label_458
	call	__errno_location
	cmp	dword ptr [rax], 0x14
	je	.label_458
.label_457:
	call	__errno_location
	cmp	dword ptr [rsp + 0x14], -1
	mov	r14d, dword ptr [rax]
	mov	eax, OFFSET FLAT:label_462
	mov	esi, OFFSET FLAT:label_463
	cmove	rsi, rax
	xor	ebx, ebx
	xor	edi, edi
	jmp	.label_464
.label_466:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x50]
	mov	bl, 1
	cmp	eax, 0x4000
	je	.label_456
.label_458:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_468
.label_464:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, r12
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
.label_461:
	call	error
.label_456:
	mov	eax, ebx
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405b22
	.globl sub_405b22
	.type sub_405b22, @function
sub_405b22:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b95
	.globl sub_405b95
	.type sub_405b95, @function
sub_405b95:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ba2
	.globl sub_405ba2
	.type sub_405ba2, @function
sub_405ba2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405bc6
	.globl sub_405bc6
	.type sub_405bc6, @function
sub_405bc6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405bd9
	.globl sub_405bd9
	.type sub_405bd9, @function
sub_405bd9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405be0

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	16
	#Procedure 0x405bf0

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
