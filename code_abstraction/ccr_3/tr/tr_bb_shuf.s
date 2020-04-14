	.section	.text
	.align	32
	#Procedure 0x4015c9
	.globl sub_4015c9
	.type sub_4015c9, @function
sub_4015c9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x4015ca
	.globl sub_4015ca
	.type sub_4015ca, @function
sub_4015ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401602
	.globl sub_401602
	.type sub_401602, @function
sub_401602:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40164a
	.globl sub_40164a
	.type sub_40164a, @function
sub_40164a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40166c
	.globl sub_40166c
	.type sub_40166c, @function
sub_40166c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40167d
	.globl sub_40167d
	.type sub_40167d, @function
sub_40167d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401696
	.globl sub_401696
	.type sub_401696, @function
sub_401696:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4016a0

	.globl is_char_class_member
	.type is_char_class_member, @function
is_char_class_member:
	push	rbx
	mov	eax, edi
	cmp	edi, 0xb
	ja	.label_10
	jmp	qword ptr [(rax * 8) + label_11]
.label_738:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x2000
	jmp	.label_9
.label_732:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 2
	jmp	.label_9
.label_730:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x400
	jmp	.label_9
.label_729:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 8
	jmp	.label_9
.label_736:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x4000
	jmp	.label_9
.label_734:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x8000
	jmp	.label_9
.label_10:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401747
	.globl sub_401747
	.type sub_401747, @function
sub_401747:

	nop	
	nop	dword ptr [rax]
.label_733:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x800
	jmp	.label_9
.label_739:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x100
.label_9:
	test	eax, eax
	setne	al
	pop	rbx
	ret	
.label_731:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 1
	jmp	.label_9
.label_737:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 4
	jmp	.label_9
.label_740:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x1000
	jmp	.label_9
.label_735:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x200
	jmp	.label_9
.label_12:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4017e5
	.globl sub_4017e5
	.type sub_4017e5, @function
sub_4017e5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4017eb
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_13]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_15]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_12
	test	rdx, rdx
	je	.label_12
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_23:
	test	rcx, rcx
	je	.label_20
.label_19:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_18:
	mov	byte ptr [rbx + rcx], dil
	inc	rcx
	mov	rsi, rdx
	nop	word ptr cs:[rax + rax]
.label_24:
	lea	rdx, [rsi + 1]
	cmp	rdx, rax
	jae	.label_23
	movzx	edi, byte ptr [rbx + rsi + 1]
	cmp	byte ptr [rdi + in_delete_set],  0
	mov	rsi, rdx
	jne	.label_24
	jmp	.label_18
	.section	.text
	.align	32
	#Procedure 0x401892
	.globl sub_401892
	.type sub_401892, @function
sub_401892:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401896

	.globl read_and_delete
	.type read_and_delete, @function
read_and_delete:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
.label_20:
	xor	edi, edi
	mov	rsi, rbx
	mov	rdx, r14
	call	safe_read
	test	rax, rax
	mov	ecx, 0
	je	.label_19
	cmp	rax, -1
	je	.label_22
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_21:
	movzx	edx, byte ptr [rbx + rcx]
	cmp	byte ptr [rdx + in_delete_set],  0
	jne	.label_17
	inc	rcx
	cmp	rcx, rax
	jb	.label_21
.label_17:
	mov	rsi, rcx
	jmp	.label_24
.label_22:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax]
.label_25:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401915
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_13]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_15]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_25
	test	rsi, rsi
	je	.label_25
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
	.align	32
	#Procedure 0x401980
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x401988
	.globl sub_401988
	.type sub_401988, @function
sub_401988:

	nop	dword ptr [rax + rax]
.label_29:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_26
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4019b0
	.globl sub_4019b0
	.type sub_4019b0, @function
sub_4019b0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019bf

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_29
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_28
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_28
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_27
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_27:
	mov	rbx, r14
.label_28:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x401a40

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_32
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_32
	test	byte ptr [rbx + 1], 1
	je	.label_32
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_32:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x401a73
	.globl sub_401a73
	.type sub_401a73, @function
sub_401a73:

	nop	word ptr cs:[rax + rax]
.label_33:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401a85
	.globl sub_401a85
	.type sub_401a85, @function
sub_401a85:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a8b
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_34
	test	rax, rax
	je	.label_33
.label_34:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401aa0

	.globl squeeze_filter
	.type squeeze_filter, @function
squeeze_filter:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rdi
	mov	r15d, 0x7fffffff
	xor	ebx, ebx
	xor	r12d, r12d
	jmp	.label_44
.label_41:
	mov	r15d, 0x7fffffff
	nop	
.label_44:
	cmp	rbx, r12
	mov	rax, rbx
	jb	.label_35
	mov	edi, OFFSET FLAT:io_buf
	mov	esi, 0x2000
	call	r14
	mov	r12, rax
	test	r12, r12
	mov	eax, 0
	je	.label_42
.label_35:
	cmp	r15d, 0x7fffffff
	jne	.label_47
	mov	r15, r12
	sub	r15, rax
	mov	rbx, rax
	jbe	.label_40
	mov	rbx, rax
	nop	word ptr cs:[rax + rax]
.label_43:
	movzx	ecx, byte ptr [rbx + io_buf]
	cmp	byte ptr [rcx + in_squeeze_set],  0
	jne	.label_40
	add	rbx, 2
	cmp	rbx, r12
	jb	.label_43
.label_40:
	cmp	rbx, r12
	jne	.label_49
	lea	rbx, [r12 - 1]
	movzx	ecx, byte ptr [r12 + label_45]
	cmp	byte ptr [rcx + in_squeeze_set],  0
	cmove	rbx, r12
.label_49:
	cmp	rbx, r12
	jae	.label_37
	movsx	ebp, byte ptr [rbx + io_buf]
	mov	rcx, rbx
	sub	rcx, rax
	lea	r15, [rcx + 1]
	test	rbx, rbx
	je	.label_38
	cmp	byte ptr [rbx + label_45],  bpl
	cmove	r15, rcx
.label_38:
	inc	rbx
	jmp	.label_50
	.section	.text
	.align	32
	#Procedure 0x401b72
	.globl sub_401b72
	.type sub_401b72, @function
sub_401b72:

	nop	word ptr cs:[rax + rax]
.label_42:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_46:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_39
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
.label_37:
	mov	ebp, 0x7fffffff
.label_50:
	test	r15, r15
	je	.label_36
	lea	rdi, qword ptr [rax + io_buf]
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdx, r15
	call	fwrite_unlocked
	cmp	rax, r15
	jne	.label_46
.label_36:
	cmp	ebp, 0x7fffffff
	mov	r15d, 0x7fffffff
	je	.label_44
.label_51:
	cmp	rbx, r12
	mov	r15d, ebp
	jae	.label_44
	nop	dword ptr [rax + rax]
.label_48:
	movsx	eax, byte ptr [rbx + io_buf]
	cmp	eax, ebp
	jne	.label_41
	inc	rbx
	cmp	rbx, r12
	jb	.label_48
	mov	r15d, ebp
	jmp	.label_44
.label_47:
	mov	ebp, r15d
	mov	rbx, rax
	jmp	.label_51
	.section	.text
	.align	32
	#Procedure 0x401c38
	.globl sub_401c38
	.type sub_401c38, @function
sub_401c38:

	nop	dword ptr [rax + rax]
.label_66:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401c45
	.globl sub_401c45
	.type sub_401c45, @function
sub_401c45:

	nop
	mov	esi, OFFSET FLAT:label_55
	jmp	.label_53
	.section	.text
	.align	32
	#Procedure 0x401c51
	.globl sub_401c51
	.type sub_401c51, @function
sub_401c51:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c5d

	.globl make_printable_str
	.type make_printable_str, @function
make_printable_str:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	lea	rdi, [r14 + 1]
	mov	rax, rdi
	shr	rax, 0x3d
	jne	.label_66
	shl	rdi, 2
	call	xmalloc
	mov	r15, rax
	test	r14, r14
	je	.label_63
	mov	r13, r15
	nop	word ptr [rax + rax]
.label_58:
	movzx	r12d, byte ptr [rbx]
	movzx	ebp, r12b
	mov	eax, ebp
	add	al, 0xf9
	movzx	eax, al
	cmp	al, 6
	ja	.label_59
	jmp	qword ptr [(rax * 8) + label_56]
.label_725:
	mov	esi, OFFSET FLAT:label_62
	jmp	.label_53
.label_722:
	mov	esi, OFFSET FLAT:label_67
	jmp	.label_53
.label_726:
	mov	esi, OFFSET FLAT:label_61
	jmp	.label_53
.label_724:
	mov	esi, OFFSET FLAT:label_65
	jmp	.label_53
.label_723:
	mov	esi, OFFSET FLAT:label_60
	jmp	.label_53
.label_721:
	mov	esi, OFFSET FLAT:label_64
	jmp	.label_53
.label_54:
	mov	byte ptr [rsp + 3], r12b
	mov	byte ptr [rsp + 4], 0
	lea	rsi, [rsp + 3]
	nop	dword ptr [rax]
.label_53:
	mov	rdi, r13
	call	stpcpy
	mov	r13, rax
	inc	rbx
	dec	r14
	jne	.label_58
.label_63:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_59:
	cmp	r12b, 0x5c
	mov	esi, OFFSET FLAT:label_52
	je	.label_53
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2 + 1], 0x40
	jne	.label_54
	mov	esi, 1
	mov	edx, 5
	mov	ecx, OFFSET FLAT:label_57
	xor	eax, eax
	lea	r12, [rsp + 3]
	mov	rdi, r12
	mov	r8d, ebp
	call	__sprintf_chk
	mov	rsi, r12
	jmp	.label_53
.label_68:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401d65
	.globl sub_401d65
	.type sub_401d65, @function
sub_401d65:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401d69

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
	je	.label_69
	test	r15, r15
	je	.label_68
.label_69:
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
	#Procedure 0x401da0

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
	je	.label_70
	cmp	r15, -2
	jb	.label_70
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_70
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_70:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x401df6
	.globl sub_401df6
	.type sub_401df6, @function
sub_401df6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e00
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
	#Procedure 0x401e13
	.globl sub_401e13
	.type sub_401e13, @function
sub_401e13:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e20
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
	#Procedure 0x401e39
	.globl sub_401e39
	.type sub_401e39, @function
sub_401e39:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401e40

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
	jmp	.label_112
	.section	.text
	.align	32
	#Procedure 0x401eef
	.globl sub_401eef
	.type sub_401eef, @function
sub_401eef:

	nop	
.label_152:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_149
	or	al, dl
	jne	.label_149
	test	dil, 1
	jne	.label_151
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_149
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_112
	jmp	.label_149
.label_763:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_158
	test	rbp, rbp
	je	.label_95
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_95:
	mov	r14d, 1
	jmp	.label_162
.label_764:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_166
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_109
.label_158:
	xor	r14d, r14d
.label_162:
	mov	eax, OFFSET FLAT:label_166
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_188
	.section	.text
	.align	32
	#Procedure 0x401fbf
	.globl sub_401fbf
	.type sub_401fbf, @function
sub_401fbf:

	nop	
.label_112:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_182
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_180]
.label_765:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_193
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_71
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_766:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_80
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_80
	xor	r14d, r14d
	nop	
.label_86:
	cmp	r14, rbp
	jae	.label_94
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_94:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_86
.label_80:
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
	jmp	.label_109
.label_758:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_109
.label_761:
	mov	al, 1
.label_759:
	mov	r12b, 1
.label_762:
	test	r12b, 1
	mov	cl, 1
	je	.label_121
	mov	ecx, eax
.label_121:
	mov	al, cl
.label_760:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_124
	test	rbp, rbp
	je	.label_130
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_130:
	mov	r14d, 1
	jmp	.label_131
.label_124:
	xor	r14d, r14d
.label_131:
	mov	ecx, OFFSET FLAT:label_71
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_188:
	mov	sil, r12b
.label_109:
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
	jmp	.label_141
	.section	.text
	.align	32
	#Procedure 0x402181
	.globl sub_402181
	.type sub_402181, @function
sub_402181:

	nop	word ptr cs:[rax + rax]
.label_143:
	inc	r12
.label_141:
	cmp	r11, -1
	je	.label_164
	cmp	r12, r11
	jne	.label_170
	jmp	.label_172
	.section	.text
	.align	32
	#Procedure 0x4021a3
	.globl sub_4021a3
	.type sub_4021a3, @function
sub_4021a3:

	nop	word ptr cs:[rax + rax]
.label_164:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_79
.label_170:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_183
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_187
	cmp	r11, -1
	jne	.label_187
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_187:
	cmp	rbx, r11
	jbe	.label_197
.label_183:
	xor	esi, esi
.label_101:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_72
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_76]
.label_793:
	test	r12, r12
	jne	.label_83
	jmp	.label_84
	.section	.text
	.align	32
	#Procedure 0x402236
	.globl sub_402236
	.type sub_402236, @function
sub_402236:

	nop	word ptr cs:[rax + rax]
.label_197:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_97
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_101
	jmp	.label_85
.label_97:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_101
.label_797:
	xor	eax, eax
	cmp	r11, -1
	je	.label_115
	test	r12, r12
	jne	.label_120
	cmp	r11, 1
	je	.label_84
	xor	r13d, r13d
	jmp	.label_75
.label_786:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_126
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_85
	cmp	r8d, 2
	jne	.label_135
	mov	eax, r9d
	and	al, 1
	jne	.label_135
	cmp	r14, rbp
	jae	.label_136
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_136:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_139
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_139:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_144
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_144:
	add	r14, 3
	mov	r9b, 1
.label_135:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_150
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_150:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_116
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_116
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_116
	cmp	r14, rbp
	jae	.label_90
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_90:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_88
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_88:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_75
.label_787:
	mov	bl, 0x62
	jmp	.label_168
.label_788:
	mov	cl, 0x74
	jmp	.label_82
.label_789:
	mov	bl, 0x76
	jmp	.label_168
.label_790:
	mov	bl, 0x66
	jmp	.label_168
.label_791:
	mov	cl, 0x72
	jmp	.label_82
.label_794:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_178
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_106
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
	jae	.label_190
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_190:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_73
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_73:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_78
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_78:
	add	r14, 3
	xor	r9d, r9d
.label_178:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_75
.label_795:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_89
	cmp	r8d, 2
	jne	.label_83
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_83
	jmp	.label_106
.label_796:
	cmp	r8d, 2
	jne	.label_103
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_106
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_110
.label_72:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_111
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_123
.label_115:
	test	r12, r12
	jne	.label_132
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_132
.label_84:
	mov	dl, 1
.label_792:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_106
	xor	eax, eax
	mov	r13b, dl
.label_75:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_142
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_145
	jmp	.label_147
	.section	.text
	.align	32
	#Procedure 0x402514
	.globl sub_402514
	.type sub_402514, @function
sub_402514:

	nop	word ptr cs:[rax + rax]
.label_142:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_147
.label_145:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_138
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_156
	.section	.text
	.align	32
	#Procedure 0x40254d
	.globl sub_40254d
	.type sub_40254d, @function
sub_40254d:

	nop	dword ptr [rax]
.label_147:
	test	sil, sil
.label_156:
	mov	ebx, r15d
	je	.label_87
	jmp	.label_160
.label_138:
	mov	ebx, r15d
	jmp	.label_160
.label_126:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_143
	xor	r15d, r15d
	jmp	.label_83
.label_103:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_82
	xor	eax, eax
	mov	r15b, 0x5c
.label_110:
	xor	r13d, r13d
	jmp	.label_87
.label_82:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_106
.label_168:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_75
	nop	
.label_160:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_85
	cmp	r8d, 2
	jne	.label_100
	mov	eax, r9d
	and	al, 1
	jne	.label_100
	cmp	r14, rbp
	jae	.label_186
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_186:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_146
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_146:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_192
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_192:
	add	r14, 3
	mov	r9b, 1
.label_100:
	cmp	r14, rbp
	jae	.label_163
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_163:
	inc	r14
	jmp	.label_153
.label_111:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_77
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_77:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_157
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_155:
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
	je	.label_104
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_117
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_134
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_128
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_184:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_127
	bt	rsi, rdx
	jb	.label_106
.label_127:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_184
.label_128:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_179
	xor	r13d, r13d
.label_179:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_155
	jmp	.label_119
.label_116:
	xor	r13d, r13d
	jmp	.label_75
.label_132:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_75
.label_89:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_83
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_83
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_83
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_167
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_169
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_174
	cmp	r14, rbp
	jae	.label_176
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_176:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_185
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_185:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_108
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_108:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_165
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_165:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_169:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_75
.label_83:
	xor	eax, eax
.label_120:
	xor	r13d, r13d
	jmp	.label_75
.label_157:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_114:
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
	je	.label_98
	cmp	rbp, -1
	je	.label_102
	cmp	rbp, -2
	je	.label_104
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_175
	xor	r13d, r13d
.label_175:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_114
	jmp	.label_119
.label_104:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_113
	lea	rax, [r10 + r12]
.label_133:
	cmp	byte ptr [rax + rsi], 0
	je	.label_113
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_133
.label_113:
	mov	qword ptr [rsp + 0x40], rsi
.label_117:
	xor	r13d, r13d
	jmp	.label_134
.label_102:
	xor	r13d, r13d
.label_98:
	mov	r10, qword ptr [rsp + 0x28]
.label_134:
	mov	r12, qword ptr [rsp + 0x40]
.label_119:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_123:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_140
	test	al, al
	je	.label_140
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_75
.label_140:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_154
	.section	.text
	.align	32
	#Procedure 0x402947
	.globl sub_402947
	.type sub_402947, @function
sub_402947:

	nop	word ptr [rax + rax]
.label_118:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_154:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_159
	test	sil, 1
	je	.label_92
	cmp	r14, rbp
	jae	.label_161
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_161:
	inc	r14
	xor	esi, esi
	jmp	.label_92
	.section	.text
	.align	32
	#Procedure 0x402985
	.globl sub_402985
	.type sub_402985, @function
sub_402985:

	nop	word ptr cs:[rax + rax]
.label_159:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_85
	cmp	r8d, 2
	jne	.label_171
	mov	eax, r9d
	and	al, 1
	jne	.label_171
	cmp	r14, rbp
	jae	.label_173
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_173:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_177
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_177:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_107
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_107:
	add	r14, 3
	mov	r9b, 1
.label_171:
	cmp	r14, rbp
	jae	.label_191
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_191:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_195
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_195:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_74
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_74:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_92:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_87
	test	r9b, 1
	je	.label_91
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_189
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_96
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_96:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_105
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_105:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_91
	.section	.text
	.align	32
	#Procedure 0x402a96
	.globl sub_402a96
	.type sub_402a96, @function
sub_402a96:

	nop	word ptr cs:[rax + rax]
.label_189:
	mov	rbx, rcx
.label_91:
	cmp	r14, rbp
	jae	.label_118
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_118
	.section	.text
	.align	32
	#Procedure 0x402abe
	.globl sub_402abe
	.type sub_402abe, @function
sub_402abe:

	nop	
.label_87:
	test	r9b, 1
	je	.label_125
	and	al, 1
	jne	.label_125
	cmp	r14, rbp
	jae	.label_129
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_129:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_148
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_148:
	add	r14, 2
	xor	r9d, r9d
.label_125:
	mov	ebx, r15d
.label_153:
	cmp	r14, rbp
	jae	.label_181
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_181:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_143
.label_167:
	xor	r13d, r13d
	jmp	.label_75
	.section	.text
	.align	32
	#Procedure 0x402b21
	.globl sub_402b21
	.type sub_402b21, @function
sub_402b21:

	nop	word ptr cs:[rax + rax]
.label_172:
	mov	rcx, r12
.label_79:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_152
	or	al, dl
	jne	.label_152
	mov	r11, rcx
	jmp	.label_85
.label_106:
	mov	eax, 2
.label_99:
	mov	qword ptr [rsp + 0x38], rax
.label_85:
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
.label_137:
	mov	r14, rax
.label_93:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_149:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_122
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_81
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_81
	inc	rdx
	nop	dword ptr [rax + rax]
.label_196:
	cmp	r14, rbp
	jae	.label_194
	mov	byte ptr [rcx + r14], al
.label_194:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_196
	jmp	.label_81
.label_151:
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
	jmp	.label_137
.label_122:
	mov	rcx, qword ptr [rsp + 0x10]
.label_81:
	cmp	r14, rbp
	jae	.label_93
	mov	byte ptr [rcx + r14], 0
	jmp	.label_93
.label_174:
	mov	eax, 5
	jmp	.label_99
.label_182:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402c70

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_198
	test	rsi, rsi
	mov	ecx, 1
	je	.label_199
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_199
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_198:
	mov	ecx, 1
.label_199:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x402cbb
	.globl sub_402cbb
	.type sub_402cbb, @function
sub_402cbb:

	nop	dword ptr [rax + rax]
.label_209:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_200
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
	#Procedure 0x402cf8
	.globl sub_402cf8
	.type sub_402cf8, @function
sub_402cf8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402cfd

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_209
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_219
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_215
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_203
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_213
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_218
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_210
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_205
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_206
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_214
	mov	ecx, OFFSET FLAT:label_211
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_204
	mov	esi, OFFSET FLAT:label_207
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_204
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_212
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_204:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_208
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_211
	mov	ecx, OFFSET FLAT:label_201
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_216
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_201
	mov	ecx, OFFSET FLAT:label_202
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	32
	#Procedure 0x402ee0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_220
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_221
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f05
	.globl sub_402f05
	.type sub_402f05, @function
sub_402f05:

	nop	word ptr cs:[rax + rax]
.label_222:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402f15
	.globl sub_402f15
	.type sub_402f15, @function
sub_402f15:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402f17
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_13]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_15]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_222
	test	rdx, rdx
	je	.label_222
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_223:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402f85
	.globl sub_402f85
	.type sub_402f85, @function
sub_402f85:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f8d
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
	je	.label_223
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
	.align	32
	#Procedure 0x402ff0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x402ffa
	.globl sub_402ffa
	.type sub_402ffa, @function
sub_402ffa:

	nop	word ptr [rax + rax]
.label_226:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403005
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_225
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_227
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_228
	call	free
	xor	eax, eax
	jmp	.label_224
.label_227:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40303c
	.globl sub_40303c
	.type sub_40303c, @function
sub_40303c:

	nop	word ptr cs:[rax + rax]
.label_225:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_226
	mov	qword ptr [rsi], rbx
.label_228:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_224
	test	rax, rax
	je	.label_226
.label_224:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403070
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
	#Procedure 0x403088
	.globl sub_403088
	.type sub_403088, @function
sub_403088:

	nop	dword ptr [rax + rax]
.label_230:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_229
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_229:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4030c4
	.globl sub_4030c4
	.type sub_4030c4, @function
sub_4030c4:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4030c6

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
	jne	.label_231
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_231
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_230
.label_231:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	32
	#Procedure 0x403100
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
	je	.label_232
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
.label_232:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403161
	.globl sub_403161
	.type sub_403161, @function
sub_403161:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403170

	.globl get_next
	.type get_next, @function
get_next:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rdi
	test	rsi, rsi
	jne	.label_256
	mov	rax, qword ptr [r14 + 0x10]
	jmp	.label_233
.label_247:
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [r14 + 8], rax
	mov	qword ptr [r14 + 0x10], -1
	nop	dword ptr [rax]
.label_256:
	mov	dword ptr [rsi], 2
	mov	rax, qword ptr [r14 + 0x10]
	cmp	rax, -2
	jne	.label_251
	mov	rax, qword ptr [r14]
	mov	r15, qword ptr [rax + 8]
	mov	qword ptr [r14 + 8], r15
	mov	qword ptr [r14 + 0x10], -1
	mov	rax, -1
	jmp	.label_240
	.section	.text
	.align	32
	#Procedure 0x4031cc
	.globl sub_4031cc
	.type sub_4031cc, @function
sub_4031cc:

	nop	dword ptr [rax]
.label_251:
	mov	r15, qword ptr [r14 + 8]
.label_240:
	mov	ebx, 0xffffffff
	test	r15, r15
	je	.label_234
	mov	ecx, dword ptr [r15]
	cmp	rcx, 4
	ja	.label_249
	jmp	qword ptr [(rcx * 8) + label_255]
.label_840:
	mov	rcx, qword ptr [r15 + 0x18]
	test	rcx, rcx
	je	.label_247
	jmp	.label_259
.label_258:
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [r14 + 8], rax
	mov	qword ptr [r14 + 0x10], -1
	mov	rax, -1
	nop	dword ptr [rax + rax]
.label_233:
	cmp	rax, -2
	jne	.label_239
	mov	rax, qword ptr [r14]
	mov	r15, qword ptr [rax + 8]
	mov	qword ptr [r14 + 8], r15
	mov	qword ptr [r14 + 0x10], -1
	mov	rax, -1
	jmp	.label_241
	.section	.text
	.align	32
	#Procedure 0x403242
	.globl sub_403242
	.type sub_403242, @function
sub_403242:

	nop	word ptr cs:[rax + rax]
.label_239:
	mov	r15, qword ptr [r14 + 8]
.label_241:
	mov	ebx, 0xffffffff
	test	r15, r15
	je	.label_234
	mov	ecx, dword ptr [r15]
	cmp	rcx, 4
	ja	.label_249
	jmp	qword ptr [(rcx * 8) + label_237]
.label_719:
	mov	rcx, qword ptr [r15 + 0x18]
	test	rcx, rcx
	je	.label_258
.label_259:
	cmp	rax, -1
	jne	.label_261
	mov	qword ptr [r14 + 0x10], 0
	xor	eax, eax
.label_261:
	inc	rax
	mov	qword ptr [r14 + 0x10], rax
	movzx	ebx, byte ptr [r15 + 0x10]
	cmp	rax, rcx
	je	.label_235
	jmp	.label_234
.label_716:
	movzx	ebx, byte ptr [r15 + 0x10]
	mov	qword ptr [r14 + 0x10], -1
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [r14 + 8], rax
	jmp	.label_234
.label_717:
	cmp	rax, -1
	je	.label_246
	inc	rax
	mov	cl, byte ptr [r15 + 0x11]
	mov	rbx, rax
	jmp	.label_248
.label_718:
	test	rsi, rsi
	je	.label_252
	mov	eax, dword ptr [r15 + 0x10]
	cmp	eax, 0xa
	je	.label_253
	cmp	eax, 6
	jne	.label_252
	mov	dword ptr [rsi], 0
	jmp	.label_252
.label_246:
	movzx	ecx, word ptr [r15 + 0x10]
	movzx	ebx, cl
	shr	ecx, 8
.label_248:
	mov	qword ptr [r14 + 0x10], rbx
	movzx	eax, cl
	cmp	rbx, rax
	je	.label_235
	jmp	.label_234
.label_253:
	mov	dword ptr [rsi], 1
.label_252:
	mov	rbx, qword ptr [r14 + 0x10]
	cmp	rbx, -1
	jne	.label_236
	mov	ebp, dword ptr [r15 + 0x10]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_260:
	movzx	esi, bl
	mov	edi, ebp
	call	is_char_class_member
	test	al, al
	jne	.label_245
	inc	rbx
	cmp	ebx, 0x100
	jl	.label_260
	mov	edi, OFFSET FLAT:label_242
	mov	esi, OFFSET FLAT:label_243
	mov	edx, 0x434
	mov	ecx, OFFSET FLAT:label_244
	call	__assert_fail
.label_245:
	mov	qword ptr [r14 + 0x10], rbx
.label_236:
	mov	r12d, dword ptr [r15 + 0x10]
	movzx	esi, bl
	mov	edi, r12d
	call	is_char_class_member
	test	al, al
	je	.label_257
	lea	eax, [rbx + 1]
	cmp	eax, 0xff
	jg	.label_235
	movsxd	rbp, eax
	nop	word ptr cs:[rax + rax]
.label_254:
	movzx	esi, bpl
	mov	edi, r12d
	call	is_char_class_member
	test	al, al
	jne	.label_238
	inc	rbp
	cmp	ebp, 0x100
	jl	.label_254
.label_235:
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [r14 + 8], rax
	mov	qword ptr [r14 + 0x10], -1
.label_234:
	mov	eax, ebx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_238:
	mov	qword ptr [r14 + 0x10], rbp
	jmp	.label_234
.label_249:
	call	abort
.label_257:
	mov	edi, OFFSET FLAT:label_250
	mov	esi, OFFSET FLAT:label_243
	mov	edx, 0x437
	mov	ecx, OFFSET FLAT:label_244
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x4033ea
	.globl sub_4033ea
	.type sub_4033ea, @function
sub_4033ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033f0

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
	#Procedure 0x403407
	.globl sub_403407
	.type sub_403407, @function
sub_403407:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403410
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
	#Procedure 0x403428
	.globl sub_403428
	.type sub_403428, @function
sub_403428:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403430
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
	#Procedure 0x403466
	.globl sub_403466
	.type sub_403466, @function
sub_403466:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403470
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
	je	.label_263
	test	r15, r15
	je	.label_262
.label_263:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_262:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4034b2
	.globl sub_4034b2
	.type sub_4034b2, @function
sub_4034b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034c0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_264
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_266
.label_264:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_266:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_267
	cmp	r10d, 0x29
	jae	.label_276
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_265
.label_276:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_265:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_267
	cmp	r10d, 0x29
	jae	.label_274
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_275
.label_274:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_275:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_267
	cmp	r10d, 0x29
	jae	.label_272
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_273
.label_272:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_273:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_267
	cmp	r10d, 0x29
	jae	.label_270
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_271
.label_270:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_271:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_267
	cmp	r10d, 0x29
	jae	.label_268
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_269
.label_268:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_269:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_267
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_267
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_267
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_267
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_267:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x4036a2
	.globl sub_4036a2
	.type sub_4036a2, @function
sub_4036a2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4036b0

	.globl plain_read
	.type plain_read, @function
plain_read:
	push	rbx
	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	call	safe_read
	cmp	rax, -1
	je	.label_277
	pop	rbx
	ret	
.label_277:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403700
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_13]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_15]
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
	#Procedure 0x40376e
	.globl sub_40376e
	.type sub_40376e, @function
sub_40376e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403770
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
	#Procedure 0x40377f
	.globl sub_40377f
	.type sub_40377f, @function
sub_40377f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403780

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
	jne	.label_279
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_284
	cmp	ecx, 0x55
	jne	.label_278
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_278
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_278
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_278
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_278
	cmp	byte ptr [rax + 5], 0
	jne	.label_278
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_281
	mov	eax, OFFSET FLAT:label_282
	jmp	.label_283
.label_284:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_278
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_278
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_278
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_278
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_278
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_278
	cmp	byte ptr [rax + 7], 0
	je	.label_280
.label_278:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_166
	mov	eax, OFFSET FLAT:label_71
.label_283:
	cmove	rax, rcx
.label_279:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_280:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_285
	mov	eax, OFFSET FLAT:label_286
	jmp	.label_283
	.section	.text
	.align	32
	#Procedure 0x403845
	.globl sub_403845
	.type sub_403845, @function
sub_403845:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403850
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_287
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_288
	test	rbx, rbx
	jne	.label_288
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_287:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403884
	.globl sub_403884
	.type sub_403884, @function
sub_403884:

	nop	dword ptr [rax + rax]
.label_288:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_289
	test	rax, rax
	je	.label_287
.label_289:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4038a0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1a8
	mov	r15, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_220
	call	setlocale
	mov	edi, OFFSET FLAT:label_375
	mov	esi, OFFSET FLAT:label_376
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_375
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	jmp	.label_383
	.section	.text
	.align	32
	#Procedure 0x4038f2
	.globl sub_4038f2
	.type sub_4038f2, @function
sub_4038f2:

	nop	word ptr cs:[rax + rax]
.label_769:
	mov	byte ptr [rip + complement],  1
.label_383:
	mov	edx, OFFSET FLAT:label_390
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r15
	call	getopt_long
	cmp	eax, 0x40
	jle	.label_396
	add	eax, -0x41
	cmp	eax, 0x33
	ja	.label_413
	jmp	qword ptr [(rax * 8) + label_415]
.label_768:
	mov	edi, 3
	mov	esi, OFFSET FLAT:label_416
	call	setlocale
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_416
	call	setlocale
	jmp	.label_383
.label_770:
	mov	byte ptr [rip + delete],  1
	jmp	.label_383
.label_771:
	mov	byte ptr [rip + squeeze_repeats],  1
	jmp	.label_383
.label_772:
	mov	byte ptr [rip + truncate_set1],  1
	jmp	.label_383
.label_396:
	cmp	eax, -1
	jne	.label_434
	mov	r12d, ebp
	sub	r12d, dword ptr [rip + optind]
	movzx	ebx, byte ptr [rip + delete]
	cmp	r12d, 2
	je	.label_451
	xor	eax, eax
	jmp	.label_456
.label_451:
	mov	al, bl
	xor	al, 1
.label_456:
	mov	byte ptr [rip + translating],  al
	mov	al, byte ptr [rip + squeeze_repeats]
	mov	ecx, ebx
	xor	cl, al
	movzx	ecx, cl
	mov	edx, 2
	mov	esi, 2
	sub	esi, ecx
	xor	ebx, 1
	inc	ebx
	test	al, al
	cmovne	ebx, edx
	cmp	r12d, esi
	jl	.label_459
	cmp	ebx, r12d
	jl	.label_471
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rax + 8], 0
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r15 + rax*8]
	lea	rsi, [rsp + 0x10]
	call	parse_str
	mov	ebp, 1
	test	al, al
	je	.label_290
	xor	r14d, r14d
	cmp	r12d, 2
	jne	.label_292
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rsp + 0x178], rax
	mov	qword ptr [rsp + 0x170], rax
	mov	qword ptr [rax + 8], 0
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r15 + rax*8 + 8]
	lea	r14, [rsp + 0x170]
	mov	rsi, r14
	call	parse_str
	test	al, al
	je	.label_290
.label_292:
	lea	rdi, [rsp + 0x10]
	call	get_spec_stats
	cmp	byte ptr [rip + complement],  1
	jne	.label_350
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0x160], xmm0
	movdqa	xmmword ptr [rsp + 0x150], xmm0
	movdqa	xmmword ptr [rsp + 0x140], xmm0
	movdqa	xmmword ptr [rsp + 0x130], xmm0
	movdqa	xmmword ptr [rsp + 0x120], xmm0
	movdqa	xmmword ptr [rsp + 0x110], xmm0
	movdqa	xmmword ptr [rsp + 0x100], xmm0
	movdqa	xmmword ptr [rsp + 0xf0], xmm0
	movdqa	xmmword ptr [rsp + 0xe0], xmm0
	movdqa	xmmword ptr [rsp + 0xd0], xmm0
	movdqa	xmmword ptr [rsp + 0xc0], xmm0
	movdqa	xmmword ptr [rsp + 0xb0], xmm0
	movdqa	xmmword ptr [rsp + 0xa0], xmm0
	movdqa	xmmword ptr [rsp + 0x90], xmm0
	movdqa	xmmword ptr [rsp + 0x80], xmm0
	movdqa	xmmword ptr [rsp + 0x70], xmm0
	mov	qword ptr [rsp + 0x20], -2
	lea	rdi, [rsp + 0x10]
	xor	esi, esi
	call	get_next
	mov	ecx, 0x100
	cmp	eax, -1
	je	.label_395
	mov	ebp, 0x100
	lea	rbx, [rsp + 0x10]
	nop	
.label_469:
	cdqe	
	movzx	ecx, byte ptr [rsp + rax + 0x70]
	xor	ecx, 1
	sub	ebp, ecx
	mov	byte ptr [rsp + rax + 0x70], 1
	xor	esi, esi
	mov	rdi, rbx
	call	get_next
	cmp	eax, -1
	jne	.label_469
	movsxd	rcx, ebp
.label_395:
	mov	qword ptr [rsp + 0x28], rcx
.label_350:
	cmp	qword ptr [rsp + 0x30], 0
	jne	.label_294
	test	r14, r14
	je	.label_371
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rdi, r14
	call	get_spec_stats
	mov	rdx, qword ptr [r14 + 0x18]
	mov	rax, qword ptr [r14 + 0x20]
	mov	rcx, rbx
	sub	rcx, rdx
	jb	.label_452
	cmp	rax, 1
	jne	.label_452
	mov	rax, qword ptr [r14 + 0x28]
	mov	qword ptr [rax + 0x18], rcx
	mov	qword ptr [r14 + 0x18], rbx
	mov	eax, 1
	mov	rdx, rbx
	jmp	.label_457
.label_452:
	cmp	rax, 2
	jae	.label_463
.label_457:
	cmp	byte ptr [rip + translating],  0
	je	.label_465
	mov	eax, dword ptr [r14 + 0x30]
	test	al, al
	jne	.label_467
	test	eax, 0xff0000
	jne	.label_365
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [r14 + 8]
	movzx	eax, word ptr [r14 + 0x30]
	cmp	eax, 0x100
	jae	.label_472
	mov	rcx, rdx
	mov	rax, rdi
	jmp	.label_476
.label_465:
	test	rax, rax
	je	.label_371
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_473
	jmp	.label_352
.label_472:
	mov	qword ptr [rsp + 0x68], rdi
	mov	qword ptr [rsp + 0x60], rdx
	mov	qword ptr [rsp + 0x58], rsi
	mov	dword ptr [rsp + 0x4c], r12d
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 0x50], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	pxor	xmm8, xmm8
	xor	ecx, ecx
	movdqa	xmm9, xmmword ptr [rip + label_333]
	pand	xmm9, xmmword ptr [rip + label_334]
	pxor	xmm1, xmm1
	pxor	xmm0, xmm0
	pxor	xmm5, xmm5
	pxor	xmm4, xmm4
	nop	word ptr cs:[rax + rax]
.label_349:
	movd	xmm6, dword ptr [rax + rcx*2]
	punpcklwd	xmm6, xmm8
	punpckldq	xmm6, xmm8
	movd	xmm7, dword ptr [rax + rcx*2 + 4]
	punpcklwd	xmm7, xmm8
	punpckldq	xmm7, xmm8
	movdqa	xmm2, xmm6
	psrlq	xmm2, 8
	movdqa	xmm3, xmm7
	psrlq	xmm3, 8
	pand	xmm2, xmm9
	pand	xmm3, xmm9
	paddq	xmm1, xmm2
	paddq	xmm0, xmm3
	psrlq	xmm6, 9
	psrlq	xmm7, 9
	pand	xmm6, xmm9
	pand	xmm7, xmm9
	paddq	xmm5, xmm6
	paddq	xmm4, xmm7
	add	rcx, 4
	cmp	rcx, 0x100
	jne	.label_349
	paddq	xmm4, xmm5
	pshufd	xmm2, xmm4, 0x4e
	paddq	xmm2, xmm4
	movq	r15, xmm2
	paddq	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	paddq	xmm1, xmm0
	movq	r12, xmm1
	mov	qword ptr [rsp + 0x20], -2
	mov	qword ptr [r14 + 0x10], -2
	mov	r13b, 1
	mov	bl, 1
	nop	word ptr cs:[rax + rax]
.label_366:
	lea	rdi, [rsp + 0x10]
	lea	rsi, [rsp + 0x70]
	call	get_next
	mov	ebp, eax
	mov	rdi, r14
	lea	rsi, [rsp + 0xc]
	call	get_next
	mov	ecx, dword ptr [rsp + 0xc]
	test	r13b, r13b
	je	.label_414
	cmp	ecx, 2
	je	.label_414
	test	bl, bl
	je	.label_418
	cmp	dword ptr [rsp + 0x70], 2
	je	.label_418
.label_414:
	cmp	ecx, 2
	jne	.label_424
	mov	rcx, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [rsp + 0x20]
	jmp	.label_425
	.section	.text
	.align	32
	#Procedure 0x403d5f
	.globl sub_403d5f
	.type sub_403d5f, @function
sub_403d5f:

	nop	
.label_424:
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rdx + 8]
	mov	qword ptr [rsp + 0x18], rdx
	mov	qword ptr [rsp + 0x20], -1
	mov	rdx, qword ptr [r14 + 8]
	mov	rdx, qword ptr [rdx + 8]
	mov	qword ptr [r14 + 8], rdx
	mov	qword ptr [r14 + 0x10], -1
	cmp	dword ptr [rsp + 0x70], 1
	mov	rdx, r15
	cmove	rdx, r12
	mov	rsi, qword ptr [rsp + 0x28]
	neg	rdx
	lea	rdx, [rsi + rdx + 1]
	mov	qword ptr [rsp + 0x28], rdx
	cmp	ecx, 1
	mov	rcx, r15
	cmove	rcx, r12
	mov	edx, 1
	sub	rdx, rcx
	add	qword ptr [r14 + 0x18], rdx
	mov	rdx, -1
	mov	rcx, -1
.label_425:
	cmp	rdx, -1
	sete	bl
	cmp	rcx, -1
	sete	r13b
	cmp	ebp, -1
	je	.label_477
	cmp	eax, -1
	jne	.label_366
.label_477:
	mov	rax, qword ptr [rsp + 0x28]
	cmp	qword ptr [rsp + 0x68], rax
	jb	.label_346
	mov	rcx, qword ptr [r14 + 0x18]
	cmp	qword ptr [rsp + 0x60], rcx
	jb	.label_346
	mov	rdx, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x18], rdx
	mov	rsi, qword ptr [rsp + 0x58]
	mov	qword ptr [r14 + 8], rsi
	mov	r12d, dword ptr [rsp + 0x4c]
.label_476:
	mov	rbx, rax
	sub	rbx, rcx
	jbe	.label_300
	mov	dl, byte ptr [rip + truncate_set1]
	test	dl, dl
	jne	.label_300
	test	rcx, rcx
	je	.label_341
	cmp	byte ptr [rip + translating],  0
	je	.label_342
	mov	eax, dword ptr [rsi]
	cmp	rax, 4
	ja	.label_344
	jmp	qword ptr [(rax * 8) + label_347]
.label_815:
	add	rsi, 0x10
	jmp	.label_417
.label_816:
	add	rsi, 0x11
.label_417:
	mov	bpl, byte ptr [rsi]
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 4
	mov	byte ptr [rax + 0x10], bpl
	mov	qword ptr [rax + 0x18], rbx
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	je	.label_356
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r14 + 8], rax
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [r14 + 0x18], rax
	mov	rcx, rax
.label_300:
	cmp	byte ptr [rip + complement],  1
	jne	.label_371
	cmp	byte ptr [rsp + 0x41], 0
	je	.label_371
	cmp	rcx, rax
	jne	.label_373
	mov	qword ptr [r14 + 0x10], -2
	xor	esi, esi
	mov	rdi, r14
	call	get_next
	mov	ebx, eax
	cmp	ebx, -1
	je	.label_373
	nop	dword ptr [rax]
.label_382:
	xor	esi, esi
	mov	rdi, r14
	call	get_next
	cmp	eax, -1
	je	.label_371
	cmp	eax, ebx
	je	.label_382
.label_373:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_466
	jmp	.label_352
.label_371:
	mov	rdi, qword ptr [rip + stdin]
	mov	esi, 2
	call	fadvise
	mov	al, byte ptr [rip + squeeze_repeats]
	cmp	r12d, 1
	jne	.label_392
	test	al, 1
	je	.label_392
	mov	bpl, byte ptr [rip + complement]
	mov	qword ptr [rsp + 0x20], -2
	lea	rdi, [rsp + 0x10]
	xor	esi, esi
	call	get_next
	cmp	eax, -1
	je	.label_420
	lea	rbx, [rsp + 0x10]
	nop	
.label_429:
	cdqe	
	mov	byte ptr [rax + in_squeeze_set],  1
	xor	esi, esi
	mov	rdi, rbx
	call	get_next
	cmp	eax, -1
	jne	.label_429
.label_420:
	test	bpl, 1
	je	.label_432
	movdqa	xmm0, xmmword ptr [rip + label_397]
	movdqa	xmm1, xmmword ptr [rip + in_squeeze_set]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_435]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + in_squeeze_set],  xmm1
	movdqa	xmmword ptr [rip + label_435],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_436]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_437]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_436],  xmm1
	movdqa	xmmword ptr [rip + label_437],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_438]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_439]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_438],  xmm1
	movdqa	xmmword ptr [rip + label_439],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_440]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_441]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_440],  xmm1
	movdqa	xmmword ptr [rip + label_441],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_442]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_443]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_442],  xmm1
	movdqa	xmmword ptr [rip + label_443],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_444]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_445]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_444],  xmm1
	movdqa	xmmword ptr [rip + label_445],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_446]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_447]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_446],  xmm1
	movdqa	xmmword ptr [rip + label_447],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_448]
	pxor	xmm1, xmm0
	pxor	xmm0, xmmword ptr [rip + label_449]
	movdqa	xmmword ptr [rip + label_448],  xmm1
	movdqa	xmmword ptr [rip + label_449],  xmm0
.label_432:
	mov	edi, OFFSET FLAT:plain_read
	jmp	.label_364
.label_392:
	mov	cl, byte ptr [rip + delete]
	cmp	r12d, 1
	jne	.label_374
	test	cl, 1
	je	.label_374
	mov	bpl, byte ptr [rip + complement]
	mov	qword ptr [rsp + 0x20], -2
	lea	rdi, [rsp + 0x10]
	xor	esi, esi
	call	get_next
	cmp	eax, -1
	je	.label_386
	lea	rbx, [rsp + 0x10]
	nop	
.label_393:
	cdqe	
	mov	byte ptr [rax + in_delete_set],  1
	xor	esi, esi
	mov	rdi, rbx
	call	get_next
	cmp	eax, -1
	jne	.label_393
.label_386:
	test	bpl, 1
	je	.label_367
	movdqa	xmm0, xmmword ptr [rip + label_397]
	movdqa	xmm1, xmmword ptr [rip + in_delete_set]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_398]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + in_delete_set],  xmm1
	movdqa	xmmword ptr [rip + label_398],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_399]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_400]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_399],  xmm1
	movdqa	xmmword ptr [rip + label_400],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_401]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_402]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_401],  xmm1
	movdqa	xmmword ptr [rip + label_402],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_403]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_404]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_403],  xmm1
	movdqa	xmmword ptr [rip + label_404],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_405]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_406]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_405],  xmm1
	movdqa	xmmword ptr [rip + label_406],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_407]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_408]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_407],  xmm1
	movdqa	xmmword ptr [rip + label_408],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_409]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_410]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_409],  xmm1
	movdqa	xmmword ptr [rip + label_410],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_411]
	pxor	xmm1, xmm0
	pxor	xmm0, xmmword ptr [rip + label_412]
	movdqa	xmmword ptr [rip + label_411],  xmm1
	movdqa	xmmword ptr [rip + label_412],  xmm0
	nop	word ptr cs:[rax + rax]
.label_367:
	mov	edi, OFFSET FLAT:io_buf
	mov	esi, 0x2000
	call	read_and_delete
	mov	rbx, rax
	test	rbx, rbx
	je	.label_359
	mov	rcx, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:io_buf
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
	cmp	rax, rbx
	je	.label_367
.label_460:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_39
.label_427:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_374:
	cmp	r12d, 2
	sete	dl
	and	dl, cl
	and	al, dl
	cmp	al, 1
	jne	.label_380
	mov	bpl, byte ptr [rip + complement]
	mov	qword ptr [rsp + 0x20], -2
	lea	rdi, [rsp + 0x10]
	xor	esi, esi
	call	get_next
	cmp	eax, -1
	je	.label_389
	lea	rbx, [rsp + 0x10]
	nop	
.label_379:
	cdqe	
	mov	byte ptr [rax + in_delete_set],  1
	xor	esi, esi
	mov	rdi, rbx
	call	get_next
	cmp	eax, -1
	jne	.label_379
.label_389:
	test	bpl, 1
	je	.label_384
	movdqa	xmm0, xmmword ptr [rip + label_397]
	movdqa	xmm1, xmmword ptr [rip + in_delete_set]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_398]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + in_delete_set],  xmm1
	movdqa	xmmword ptr [rip + label_398],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_399]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_400]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_399],  xmm1
	movdqa	xmmword ptr [rip + label_400],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_401]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_402]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_401],  xmm1
	movdqa	xmmword ptr [rip + label_402],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_403]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_404]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_403],  xmm1
	movdqa	xmmword ptr [rip + label_404],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_405]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_406]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_405],  xmm1
	movdqa	xmmword ptr [rip + label_406],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_407]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_408]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_407],  xmm1
	movdqa	xmmword ptr [rip + label_408],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_409]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_410]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_409],  xmm1
	movdqa	xmmword ptr [rip + label_410],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_411]
	pxor	xmm1, xmm0
	pxor	xmm0, xmmword ptr [rip + label_412]
	movdqa	xmmword ptr [rip + label_411],  xmm1
	movdqa	xmmword ptr [rip + label_412],  xmm0
.label_384:
	mov	qword ptr [r14 + 0x10], -2
	jmp	.label_355
.label_362:
	cdqe	
	mov	byte ptr [rax + in_squeeze_set],  1
.label_355:
	xor	esi, esi
	mov	rdi, r14
	call	get_next
	cmp	eax, -1
	jne	.label_362
	mov	edi, OFFSET FLAT:read_and_delete
	jmp	.label_364
.label_380:
	cmp	byte ptr [rip + translating],  0
	je	.label_359
	cmp	byte ptr [rip + complement],  1
	jne	.label_372
	mov	qword ptr [rsp + 0x20], -2
	lea	rdi, [rsp + 0x10]
	xor	esi, esi
	call	get_next
	cmp	eax, -1
	je	.label_378
	lea	rbx, [rsp + 0x10]
	nop	dword ptr [rax + rax]
.label_385:
	cdqe	
	mov	byte ptr [rax + in_delete_set],  1
	xor	esi, esi
	mov	rdi, rbx
	call	get_next
	cmp	eax, -1
	jne	.label_385
.label_378:
	mov	qword ptr [r14 + 0x10], -2
	movaps	xmm0, xmmword ptr [rip + label_301]
	movaps	xmmword ptr [rip + xlate],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_302]
	movaps	xmmword ptr [rip + label_303],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_304]
	movaps	xmmword ptr [rip + label_305],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_306]
	movaps	xmmword ptr [rip + label_307],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_308]
	movaps	xmmword ptr [rip + label_309],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_310]
	movaps	xmmword ptr [rip + label_311],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_312]
	movaps	xmmword ptr [rip + label_313],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_314]
	movaps	xmmword ptr [rip + label_315],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_316]
	movaps	xmmword ptr [rip + label_317],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_318]
	movaps	xmmword ptr [rip + label_319],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_320]
	movaps	xmmword ptr [rip + label_321],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_322]
	movaps	xmmword ptr [rip + label_323],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_324]
	movaps	xmmword ptr [rip + label_325],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_326]
	movaps	xmmword ptr [rip + label_327],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_328]
	movaps	xmmword ptr [rip + label_329],  xmm0
	movdqa	xmm0, xmmword ptr [rip + label_330]
	movdqa	xmmword ptr [rip + label_331],  xmm0
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_295:
	cmp	byte ptr [rbx + in_delete_set],  0
	jne	.label_462
	xor	esi, esi
	mov	rdi, r14
	call	get_next
	cmp	eax, -1
	je	.label_291
	mov	byte ptr [rbx + xlate],  al
.label_462:
	inc	rbx
	cmp	rbx, 0x100
	jl	.label_295
	jmp	.label_340
.label_372:
	movaps	xmm0, xmmword ptr [rip + label_301]
	movaps	xmmword ptr [rip + xlate],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_302]
	movaps	xmmword ptr [rip + label_303],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_304]
	movaps	xmmword ptr [rip + label_305],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_306]
	movaps	xmmword ptr [rip + label_307],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_308]
	movaps	xmmword ptr [rip + label_309],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_310]
	movaps	xmmword ptr [rip + label_311],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_312]
	movaps	xmmword ptr [rip + label_313],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_314]
	movaps	xmmword ptr [rip + label_315],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_316]
	movaps	xmmword ptr [rip + label_317],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_318]
	movaps	xmmword ptr [rip + label_319],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_320]
	movaps	xmmword ptr [rip + label_321],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_322]
	movaps	xmmword ptr [rip + label_323],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_324]
	movaps	xmmword ptr [rip + label_325],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_326]
	movaps	xmmword ptr [rip + label_327],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_328]
	movaps	xmmword ptr [rip + label_329],  xmm0
	movdqa	xmm0, xmmword ptr [rip + label_330]
	movdqa	xmmword ptr [rip + label_331],  xmm0
	mov	qword ptr [rsp + 0x20], -2
	mov	qword ptr [r14 + 0x10], -2
	lea	r13, [rsp + 0xc]
	jmp	.label_332
	.section	.text
	.align	32
	#Procedure 0x40471d
	.globl sub_40471d
	.type sub_40471d, @function
sub_40471d:

	nop	dword ptr [rax]
.label_391:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 0x20], -1
	mov	rax, qword ptr [r14 + 8]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [r14 + 8], rax
	mov	qword ptr [r14 + 0x10], -1
.label_332:
	lea	rdi, [rsp + 0x10]
	lea	rsi, [rsp + 0x70]
	call	get_next
	mov	ebp, eax
	mov	rdi, r14
	mov	rsi, r13
	call	get_next
	mov	ecx, dword ptr [rsp + 0x70]
	mov	r12d, dword ptr [rsp + 0xc]
	test	ecx, ecx
	jne	.label_431
	cmp	r12d, 1
	jne	.label_431
	call	__ctype_b_loc
	mov	rbp, qword ptr [rax]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_464:
	test	byte ptr [rbp + r15*2 + 1], 2
	je	.label_428
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	movzx	eax, byte ptr [rax + r15*4]
	mov	byte ptr [r15 + xlate],  al
.label_428:
	inc	r15
	cmp	r15, 0x100
	jne	.label_464
	jmp	.label_299
	.section	.text
	.align	32
	#Procedure 0x4047ba
	.globl sub_4047ba
	.type sub_4047ba, @function
sub_4047ba:

	nop	word ptr [rax + rax]
.label_431:
	cmp	ecx, 1
	jne	.label_468
	test	r12d, r12d
	jne	.label_468
	call	__ctype_b_loc
	mov	rbp, qword ptr [rax]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_394:
	test	byte ptr [rbp + rbx*2 + 1], 1
	je	.label_475
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	movzx	eax, byte ptr [rax + rbx*4]
	mov	byte ptr [rbx + xlate],  al
.label_475:
	inc	rbx
	cmp	rbx, 0x100
	jne	.label_394
	jmp	.label_299
	.section	.text
	.align	32
	#Procedure 0x404807
	.globl sub_404807
	.type sub_404807, @function
sub_404807:

	nop	word ptr [rax + rax]
.label_468:
	cmp	ebp, -1
	je	.label_293
	cmp	eax, -1
	je	.label_293
	movsxd	rcx, ebp
	mov	byte ptr [rcx + xlate],  al
.label_299:
	cmp	r12d, 2
	je	.label_332
	jmp	.label_391
.label_293:
	cmp	ebp, -1
	je	.label_340
	mov	al, byte ptr [rip + truncate_set1]
	test	al, al
	jne	.label_340
	mov	edi, OFFSET FLAT:label_343
	mov	esi, OFFSET FLAT:label_243
	mov	edx, 0x762
	mov	ecx, OFFSET FLAT:label_297
	call	__assert_fail
.label_291:
	mov	al, byte ptr [rip + truncate_set1]
	test	al, al
	je	.label_348
.label_340:
	mov	al, byte ptr [rip + squeeze_repeats]
	test	al, al
	je	.label_353
	mov	qword ptr [r14 + 0x10], -2
	jmp	.label_354
	.section	.text
	.align	32
	#Procedure 0x40487c
	.globl sub_40487c
	.type sub_40487c, @function
sub_40487c:

	nop	dword ptr [rax]
.label_450:
	cdqe	
	mov	byte ptr [rax + in_squeeze_set],  1
.label_354:
	xor	esi, esi
	mov	rdi, r14
	call	get_next
	cmp	eax, -1
	jne	.label_450
	mov	edi, OFFSET FLAT:read_and_xlate
.label_364:
	call	squeeze_filter
.label_359:
	xor	ebp, ebp
	xor	edi, edi
	call	close
	test	eax, eax
	jne	.label_368
.label_290:
	mov	eax, ebp
	add	rsp, 0x1a8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_353:
	xor	edi, edi
	mov	esi, OFFSET FLAT:io_buf
	mov	edx, 0x2000
	call	safe_read
	mov	rbp, rax
	test	rbp, rbp
	je	.label_359
	cmp	rbp, -1
	je	.label_419
	lea	rcx, [rbp - 1]
	mov	eax, ebp
	and	eax, 3
	cmp	rcx, 3
	mov	ecx, 0
	jb	.label_381
	mov	rdx, rbp
	sub	rdx, rax
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_339:
	movzx	esi, byte ptr [rcx + io_buf]
	movzx	ebx, byte ptr [rsi + xlate]
	mov	byte ptr [rcx + io_buf],  bl
	movzx	esi, byte ptr [rcx + label_336]
	movzx	ebx, byte ptr [rsi + xlate]
	mov	byte ptr [rcx + label_336],  bl
	movzx	esi, byte ptr [rcx + label_337]
	movzx	ebx, byte ptr [rsi + xlate]
	mov	byte ptr [rcx + label_337],  bl
	movzx	esi, byte ptr [rcx + label_338]
	movzx	ebx, byte ptr [rsi + xlate]
	mov	byte ptr [rcx + label_338],  bl
	add	rcx, 4
	cmp	rdx, rcx
	jne	.label_339
.label_381:
	test	rax, rax
	je	.label_433
	lea	rcx, qword ptr [rcx + io_buf]
	neg	rax
	nop	dword ptr [rax + rax]
.label_455:
	movzx	edx, byte ptr [rcx]
	movzx	edx, byte ptr [rdx + xlate]
	mov	byte ptr [rcx], dl
	inc	rcx
	inc	rax
	jne	.label_455
.label_433:
	test	rbp, rbp
	je	.label_359
	mov	rcx, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:io_buf
	mov	esi, 1
	mov	rdx, rbp
	call	fwrite_unlocked
	cmp	rax, rbp
	je	.label_353
	jmp	.label_460
.label_434:
	cmp	eax, 0xffffff7d
	je	.label_470
	cmp	eax, 0xffffff7e
	jne	.label_413
	xor	edi, edi
	call	usage
.label_470:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_201
	mov	edx, OFFSET FLAT:label_214
	mov	r8d, OFFSET FLAT:label_474
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_413:
	mov	edi, 1
	call	usage
.label_418:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_351
	jmp	.label_352
.label_459:
	xor	edi, edi
	test	r12d, r12d
	jne	.label_298
	mov	esi, OFFSET FLAT:label_335
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
.label_471:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_345
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rip + optind]
	movsxd	rcx, ebx
	add	rcx, rax
	mov	rdi, qword ptr [r15 + rcx*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	cmp	r12d, 2
	jne	.label_361
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_363
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_369
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_361:
	mov	edi, 1
	call	usage
.label_298:
	mov	esi, OFFSET FLAT:label_377
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	movsxd	rax, ebp
	mov	rdi, qword ptr [r15 + rax*8 - 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	rbx, qword ptr [rip + stderr]
	mov	al, byte ptr [rip + squeeze_repeats]
	mov	ecx, OFFSET FLAT:label_387
	mov	esi, OFFSET FLAT:label_388
	test	al, al
	cmovne	rsi, rcx
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_369
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, 1
	call	usage
.label_294:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_423
	jmp	.label_352
.label_368:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_426
	jmp	.label_427
.label_467:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_430
	jmp	.label_352
.label_365:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_370
	jmp	.label_352
.label_346:
	mov	edi, OFFSET FLAT:label_453
	mov	esi, OFFSET FLAT:label_243
	mov	edx, 0x4c5
	mov	ecx, OFFSET FLAT:label_454
	call	__assert_fail
.label_463:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_458
	jmp	.label_352
.label_341:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_461
	jmp	.label_352
.label_342:
	mov	edi, OFFSET FLAT:label_421
	mov	esi, OFFSET FLAT:label_243
	mov	edx, 0x55e
	mov	ecx, OFFSET FLAT:label_422
	call	__assert_fail
.label_356:
	mov	edi, OFFSET FLAT:label_357
	mov	esi, OFFSET FLAT:label_243
	mov	edx, 0x2cf
	mov	ecx, OFFSET FLAT:label_358
	call	__assert_fail
.label_419:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	jmp	.label_427
.label_344:
	call	abort
.label_817:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_360
.label_352:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_348:
	mov	edi, OFFSET FLAT:label_296
	mov	esi, OFFSET FLAT:label_243
	mov	edx, 0x72d
	mov	ecx, OFFSET FLAT:label_297
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x404c2e
	.globl sub_404c2e
	.type sub_404c2e, @function
sub_404c2e:

	nop	
.label_478:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404c35
	.globl sub_404c35
	.type sub_404c35, @function
sub_404c35:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404c39
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_13]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_15]
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
	.section	.text
	.align	32
	#Procedure 0x404ca0

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
	jne	.label_480
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_479
	test	cl, cl
	jne	.label_479
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_479
.label_480:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_479
	call	__errno_location
	mov	dword ptr [rax], 0
.label_479:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404d00
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_481
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_482
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_484
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_214
	mov	ecx, OFFSET FLAT:label_211
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_483
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x404d74
	.globl sub_404d74
	.type sub_404d74, @function
sub_404d74:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d80

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_485
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_486
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_485
.label_486:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_485
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_487
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_487:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_485:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x404df4
	.globl sub_404df4
	.type sub_404df4, @function
sub_404df4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e00

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_488
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_489
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
.label_490:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404e35
	.globl sub_404e35
	.type sub_404e35, @function
sub_404e35:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e40
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_490
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_491
	test	rax, rax
	je	.label_490
.label_491:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e70
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e78
	.globl sub_404e78
	.type sub_404e78, @function
sub_404e78:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e80
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x404e91
	.globl sub_404e91
	.type sub_404e91, @function
sub_404e91:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ea0
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	.section	.text
	.align	32
	#Procedure 0x404ea5
	.globl sub_404ea5
	.type sub_404ea5, @function
sub_404ea5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404eb0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_492
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_494:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_494
.label_492:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_496
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_495], OFFSET FLAT:slot0
.label_496:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_493
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_493:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x404f41
	.globl sub_404f41
	.type sub_404f41, @function
sub_404f41:

	nop	word ptr cs:[rax + rax]
.label_497:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404f55
	.globl sub_404f55
	.type sub_404f55, @function
sub_404f55:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f5b

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_498
	test	rax, rax
	je	.label_497
.label_498:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404f70
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_499:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_499
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x404f91
	.globl sub_404f91
	.type sub_404f91, @function
sub_404f91:

	nop	word ptr cs:[rax + rax]
.label_500:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404fa6
	.globl sub_404fa6
	.type sub_404fa6, @function
sub_404fa6:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404fab
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_500
	test	rdx, rdx
	je	.label_500
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404fd0

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
.label_502:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_501
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_502
	cmp	rbx, 0x7ff00001
	jb	.label_501
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_502
.label_501:
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405023
	.globl sub_405023
	.type sub_405023, @function
sub_405023:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405030

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
	#Procedure 0x405049
	.globl sub_405049
	.type sub_405049, @function
sub_405049:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405050
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
	je	.label_503
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
.label_503:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4050b8
	.globl sub_4050b8
	.type sub_4050b8, @function
sub_4050b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050c0
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
	#Procedure 0x405135
	.globl sub_405135
	.type sub_405135, @function
sub_405135:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405140

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_508
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_504
	cmp	dword ptr [rbp], 0x20
	jne	.label_504
.label_508:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_506
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_504:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_39
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_505
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_489
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_506:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_505:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_507
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_509:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405202
	.globl sub_405202
	.type sub_405202, @function
sub_405202:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405205

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_509
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_510:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405225
	.globl sub_405225
	.type sub_405225, @function
sub_405225:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40522f

	.globl xcalloc
	.type xcalloc, @function
xcalloc:
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_510
	call	rpl_calloc
	test	rax, rax
	je	.label_510
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405250

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
	je	.label_520
	mov	edx, OFFSET FLAT:label_526
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_513
.label_520:
	mov	edx, OFFSET FLAT:label_515
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_513:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_519
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
	mov	esi, OFFSET FLAT:label_516
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_521
	jmp	qword ptr [(r12 * 8) + label_522]
.label_695:
	add	rsp, 8
	jmp	.label_514
.label_521:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_529
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
	jmp	.label_514
.label_696:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_517
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
.label_697:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_511
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
.label_698:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_527
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
.label_699:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_524
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
	jmp	.label_514
.label_700:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_523
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
	jmp	.label_514
.label_701:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_525
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
	jmp	.label_514
.label_702:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_528
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
	jmp	.label_514
.label_704:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_512
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
	jmp	.label_514
.label_703:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_518
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
.label_514:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4055a8
	.globl sub_4055a8
	.type sub_4055a8, @function
sub_4055a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055b0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_535
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_533
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_530
.label_535:
	test	rcx, rcx
	jne	.label_534
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_534:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_531
.label_530:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_536
	test	rbx, rbx
	jne	.label_536
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_531:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40562e
	.globl sub_40562e
	.type sub_40562e, @function
sub_40562e:

	nop	word ptr [rax + rax]
.label_533:
	call	xalloc_die
.label_536:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_532
	test	rax, rax
	je	.label_533
.label_532:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405650
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
	#Procedure 0x405683
	.globl sub_405683
	.type sub_405683, @function
sub_405683:

	nop	word ptr cs:[rax + rax]
.label_706:
	movzx	ebx, byte ptr [r13 + 0x11]
	movzx	eax, byte ptr [r13 + 0x10]
	cmp	bl, al
	jb	.label_543
	inc	rbx
	sub	rbx, rax
	jmp	.label_537
	.section	.text
	.align	32
	#Procedure 0x4056ad

	.globl get_spec_stats
	.type get_spec_stats, @function
get_spec_stats:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	qword ptr [r14 + 0x20], 0
	mov	byte ptr [r14 + 0x32], 0
	mov	word ptr [r14 + 0x30], 0
	mov	r13, qword ptr [r14]
	xor	eax, eax
	mov	qword ptr [rsp], rax
	xor	r12d, r12d
	nop	
.label_541:
	mov	r13, qword ptr [r13 + 8]
	test	r13, r13
	je	.label_545
	mov	ebx, 1
	mov	eax, dword ptr [r13]
	cmp	rax, 4
	ja	.label_544
	jmp	qword ptr [(rax * 8) + label_548]
.label_545:
	mov	qword ptr [r14 + 0x18], r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_544:
	call	abort
.label_708:
	mov	al, byte ptr [r13 + 0x10]
	xor	ecx, ecx
	mov	edx, eax
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_547:
	cmp	dl, 1
	adc	rbx, 0
	mov	esi, ecx
	or	esi, 1
	xor	edi, edi
	cmp	al, sil
	sete	dil
	add	rdi, rbx
	mov	esi, ecx
	or	esi, 2
	xor	ebp, ebp
	cmp	al, sil
	sete	bpl
	add	rbp, rdi
	mov	esi, ecx
	or	esi, 3
	xor	edi, edi
	cmp	al, sil
	sete	dil
	add	rdi, rbp
	mov	esi, ecx
	or	esi, 4
	xor	ebp, ebp
	cmp	al, sil
	sete	bpl
	add	rbp, rdi
	mov	esi, ecx
	or	esi, 5
	xor	edi, edi
	cmp	al, sil
	sete	dil
	add	rdi, rbp
	mov	esi, ecx
	or	esi, 6
	xor	ebp, ebp
	cmp	al, sil
	sete	bpl
	add	rbp, rdi
	mov	esi, ecx
	or	esi, 7
	xor	ebx, ebx
	cmp	al, sil
	sete	bl
	add	rbx, rbp
	add	ecx, 8
	add	dl, 0xf8
	cmp	ecx, 0x100
	jne	.label_547
	mov	byte ptr [r14 + 0x30], 1
	jmp	.label_537
.label_707:
	mov	byte ptr [r14 + 0x31], 1
	mov	ebp, dword ptr [r13 + 0x10]
	xor	r15d, r15d
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_546:
	movzx	esi, r15b
	mov	edi, ebp
	call	is_char_class_member
	movzx	eax, al
	add	rbx, rax
	inc	r15d
	cmp	r15d, 0x100
	jne	.label_546
	cmp	ebp, 6
	je	.label_537
	cmp	ebp, 0xa
	je	.label_537
	mov	byte ptr [r14 + 0x32], 1
	jmp	.label_537
.label_709:
	mov	rbx, qword ptr [r13 + 0x18]
	test	rbx, rbx
	jne	.label_537
	mov	qword ptr [r14 + 0x28], r13
	mov	rax, qword ptr [rsp]
	mov	rcx, rax
	inc	rcx
	mov	rax, rcx
	mov	qword ptr [rsp], rax
	mov	qword ptr [r14 + 0x20], rcx
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_537:
	add	rbx, r12
	cmp	r12, rbx
	ja	.label_538
	cmp	rbx, -1
	mov	r12, rbx
	jne	.label_541
.label_538:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_542
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_543:
	mov	edi, OFFSET FLAT:label_539
	mov	esi, OFFSET FLAT:label_243
	mov	edx, 0x4ee
	mov	ecx, OFFSET FLAT:label_540
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x40589b
	.globl sub_40589b
	.type sub_40589b, @function
sub_40589b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058a0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_549
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_549:
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
	#Procedure 0x405923
	.globl sub_405923
	.type sub_405923, @function
sub_405923:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405930
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
	#Procedure 0x4059f1
	.globl sub_4059f1
	.type sub_4059f1, @function
sub_4059f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a00
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
	#Procedure 0x405a0f
	.globl sub_405a0f
	.type sub_405a0f, @function
sub_405a0f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405a10
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_13]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_15]
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
	#Procedure 0x405a64
	.globl sub_405a64
	.type sub_405a64, @function
sub_405a64:

	nop	word ptr cs:[rax + rax]
.label_552:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_550
	test	rax, rax
	je	.label_551
.label_550:
	pop	rbx
	ret	
.label_551:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405a89

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_552
	test	rbx, rbx
	jne	.label_552
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405aa0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x405aaa
	.globl sub_405aaa
	.type sub_405aaa, @function
sub_405aaa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ab0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x405abe
	.globl sub_405abe
	.type sub_405abe, @function
sub_405abe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405ac0

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
	js	.label_553
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_556
	cmp	r12d, 0x7fffffff
	je	.label_558
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
	jne	.label_554
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_554:
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
.label_556:
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
	jbe	.label_559
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_555
.label_559:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_557
	mov	rdi, r14
	call	free
.label_557:
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
.label_555:
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
.label_553:
	call	abort
.label_558:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405c7d
	.globl sub_405c7d
	.type sub_405c7d, @function
sub_405c7d:

	nop	dword ptr [rax]
.label_562:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405cba

	.globl read_and_xlate
	.type read_and_xlate, @function
read_and_xlate:
	push	rbx
	mov	rax, rsi
	mov	rbx, rdi
	xor	edi, edi
	mov	rsi, rbx
	mov	rdx, rax
	call	safe_read
	test	rax, rax
	je	.label_561
	cmp	rax, -1
	je	.label_562
	lea	rcx, [rax - 1]
	mov	esi, eax
	and	esi, 3
	xor	edx, edx
	cmp	rcx, 3
	jb	.label_560
	mov	r8, rax
	sub	r8, rsi
	xor	edx, edx
.label_564:
	movzx	edi, byte ptr [rbx + rdx]
	movzx	ecx, byte ptr [rdi + xlate]
	mov	byte ptr [rbx + rdx], cl
	movzx	ecx, byte ptr [rbx + rdx + 1]
	movzx	ecx, byte ptr [rcx + xlate]
	mov	byte ptr [rbx + rdx + 1], cl
	movzx	ecx, byte ptr [rbx + rdx + 2]
	movzx	ecx, byte ptr [rcx + xlate]
	mov	byte ptr [rbx + rdx + 2], cl
	movzx	ecx, byte ptr [rbx + rdx + 3]
	movzx	ecx, byte ptr [rcx + xlate]
	mov	byte ptr [rbx + rdx + 3], cl
	add	rdx, 4
	cmp	r8, rdx
	jne	.label_564
.label_560:
	test	rsi, rsi
	je	.label_561
	add	rbx, rdx
	neg	rsi
	nop	word ptr cs:[rax + rax]
.label_563:
	movzx	edx, byte ptr [rbx]
	movzx	edx, byte ptr [rdx + xlate]
	mov	byte ptr [rbx], dl
	inc	rbx
	inc	rsi
	jne	.label_563
.label_561:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405d70

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	r12d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_584
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_580:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_580
	test	rbp, rbp
	lea	rsi, [rsp + 0x20]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_573
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, rbx
	mov	qword ptr [rsp + 0x18], rsi
	mov	edx, r12d
	call	__strtoul_internal
	mov	r12, rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rax]
	cmp	rcx, rbx
	je	.label_586
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_571
	cmp	eax, 0x22
	jne	.label_573
	mov	ebp, 1
.label_571:
	test	r14, r14
	mov	r15d, ebp
	jne	.label_576
	jmp	.label_577
.label_586:
	test	r14, r14
	je	.label_573
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_573
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	r15d, r15d
	mov	r12d, 1
	test	rax, rax
	je	.label_573
.label_576:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_577
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_572
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_567
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_567
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_567
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_581
	cmp	eax, 0x44
	je	.label_581
	cmp	eax, 0x69
	jne	.label_567
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rcx, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_567
.label_581:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_567:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_572
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_574]
.label_775:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_579
.label_572:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	r15d, 2
	jmp	.label_585
.label_776:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, r12
	cmp	rax, r12
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_565
.label_777:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_583
.label_779:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, r9
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	bl, bl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	jmp	.label_575
.label_773:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x36
	setne	al
	shl	r12, 0xa
	jmp	.label_582
.label_774:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	or	dl, bpl
	jmp	.label_583
.label_778:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
.label_575:
	or	dl, r10b
.label_579:
	or	dl, bl
.label_583:
	and	dl, 1
	movzx	eax, dl
	mov	r12, rsi
	jmp	.label_578
.label_780:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	mov	r13d, r15d
	sbb	r15b, r15b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	and	dl, 1
	or	dl, r14b
	or	dl, r15b
	mov	r15d, r13d
	or	dl, bpl
	jmp	.label_566
.label_781:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	or	dl, r14b
	or	dl, bl
.label_566:
	movzx	eax, dl
.label_565:
	and	eax, 1
	mov	r12, rsi
	jmp	.label_578
.label_782:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x37
	setne	al
	shl	r12, 9
.label_582:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	r12, rdx
	jmp	.label_578
.label_783:
	lea	rax, [r12 + r12]
	test	r12, r12
	mov	rdx, -1
	cmovns	rdx, rax
	shr	r12, 0x3f
	mov	eax, r12d
	mov	r12, rdx
.label_578:
	or	eax, r15d
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdx, [rdi + rcx]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rdx
	lea	r15d, [rax + 2]
	cmp	byte ptr [rdi + rcx], 0
	cmove	r15d, eax
.label_577:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_585:
	mov	r13d, r15d
.label_573:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_584:
	mov	edi, OFFSET FLAT:label_568
	mov	esi, OFFSET FLAT:label_569
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_570
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x4063a1
	.globl sub_4063a1
	.type sub_4063a1, @function
sub_4063a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4063b0
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
	je	.label_588
	test	r14, r14
	je	.label_587
.label_588:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_587:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4063e6
	.globl sub_4063e6
	.type sub_4063e6, @function
sub_4063e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4063f0
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
	je	.label_589
	mov	qword ptr [rax], rbx
.label_589:
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
	#Procedure 0x4064dc
	.globl sub_4064dc
	.type sub_4064dc, @function
sub_4064dc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4064e0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_13]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_15]
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
	#Procedure 0x406535
	.globl sub_406535
	.type sub_406535, @function
sub_406535:

	nop	word ptr cs:[rax + rax]
.label_590:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406545
	.globl sub_406545
	.type sub_406545, @function
sub_406545:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406549
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
	je	.label_590
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
	#Procedure 0x4065b0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_592
	cmp	byte ptr [rax], 0x43
	jne	.label_594
	cmp	byte ptr [rax + 1], 0
	je	.label_591
.label_594:
	mov	esi, OFFSET FLAT:label_593
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_592
.label_591:
	xor	ebx, ebx
.label_592:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4065e1
	.globl sub_4065e1
	.type sub_4065e1, @function
sub_4065e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4065f0

	.globl parse_str
	.type parse_str, @function
parse_str:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	qword ptr [rsp + 0x18], rsi
	mov	r14, rdi
	call	strlen
	mov	rbx, rax
	mov	rdi, rbx
	call	xmalloc
	mov	r12, rax
	mov	esi, 1
	mov	rdi, rbx
	call	xcalloc
	mov	qword ptr [rsp + 0x30], rax
	mov	r9, rax
	xor	ebx, ebx
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x10], r9
	mov	qword ptr [rsp + 0x38], r12
	jmp	.label_603
	.section	.text
	.align	32
	#Procedure 0x40663e
	.globl sub_40663e
	.type sub_40663e, @function
sub_40663e:

	nop	
.label_615:
	inc	ebx
	inc	ebp
.label_603:
	mov	eax, ebp
	movzx	eax, byte ptr [r14 + rax]
	cmp	al, 0x5c
	je	.label_609
	test	al, al
	je	.label_612
	mov	ecx, ebx
	mov	byte ptr [r12 + rcx], al
	jmp	.label_615
	.section	.text
	.align	32
	#Procedure 0x40665f
	.globl sub_40665f
	.type sub_40665f, @function
sub_40665f:

	nop	
.label_609:
	mov	r15d, ebx
	mov	byte ptr [r9 + r15], 1
	lea	r12d, [rbp + 1]
	movsx	eax, byte ptr [r14 + r12]
	cmp	eax, 0x76
	ja	.label_617
	mov	r13b, 0x5c
	jmp	qword ptr [(rax * 8) + label_623]
.label_820:
	add	al, 0xd0
	lea	edx, [rbp + 2]
	movsx	ecx, byte ptr [r14 + rdx]
	add	ecx, -0x30
	cmp	ecx, 7
	ja	.label_617
	movzx	eax, al
	lea	r13d, [rcx + rax*8]
	add	ebp, 3
	movsx	eax, byte ptr [r14 + rbp]
	add	eax, -0x30
	cmp	eax, 7
	ja	.label_629
	movzx	ecx, r13b
	lea	eax, [rax + rcx*8]
	cmp	eax, 0xff
	jg	.label_633
	mov	ebp, edx
	mov	r13b, al
	jmp	.label_634
.label_617:
	mov	r13b, al
	jmp	.label_634
.label_629:
	mov	ebp, r12d
	jmp	.label_634
.label_819:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_640
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	r9, qword ptr [rsp + 0x10]
	mov	byte ptr [r9 + r15], 0
	dec	ebp
	jmp	.label_634
.label_822:
	mov	r13b, 8
	jmp	.label_634
.label_823:
	mov	r13b, 0xc
	jmp	.label_634
.label_633:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_653
	mov	qword ptr [rsp + 0x28], rdx
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	movsx	ecx, byte ptr [r14 + r12]
	mov	rax, qword ptr [rsp + 0x28]
	movsx	r8d, byte ptr [r14 + rax]
	movsx	r9d, byte ptr [r14 + rbp]
	sub	rsp, 8
	xor	edi, edi
	xor	esi, esi
	mov	eax, 0
	push	r9
	push	r8
	push	rcx
	call	error
	mov	r9, qword ptr [rsp + 0x30]
	add	rsp, 0x20
	mov	ebp, r12d
	jmp	.label_634
.label_821:
	mov	r13b, 7
	jmp	.label_634
.label_825:
	mov	r13b, 0xd
	jmp	.label_634
.label_826:
	mov	r13b, 9
	jmp	.label_634
.label_827:
	mov	r13b, 0xb
	jmp	.label_634
.label_824:
	mov	r13b, 0xa
	nop	word ptr cs:[rax + rax]
.label_634:
	inc	ebp
	mov	r12, qword ptr [rsp + 0x38]
	mov	byte ptr [r12 + r15], r13b
	jmp	.label_615
.label_612:
	mov	eax, ebx
	mov	qword ptr [rsp + 0x20], rax
	xor	r14d, r14d
	cmp	ebx, 3
	jb	.label_601
	mov	rax, qword ptr [rsp + 0x20]
	dec	rax
	mov	qword ptr [rsp + 0x28], rax
	lea	rax, [r12 + 1]
	mov	qword ptr [rsp + 0x58], rax
	lea	rax, [r12 + 3]
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rsp + 0x30]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x50], rcx
	add	rax, 3
	mov	qword ptr [rsp + 0x30], rax
	xor	eax, eax
	mov	r15d, 2
.label_665:
	mov	rbx, rax
	nop	word ptr cs:[rax + rax]
.label_657:
	movzx	r13d, byte ptr [r12 + rbx]
	cmp	r13, 0x5b
	jne	.label_628
	cmp	byte ptr [r9 + rbx], 0
	jne	.label_628
	mov	r14b, byte ptr [r12 + rbx + 1]
	cmp	r14b, 0x3d
	je	.label_597
	cmp	r14b, 0x3a
	jne	.label_600
.label_597:
	cmp	byte ptr [r9 + rbx + 1], 0
	jne	.label_600
	cmp	qword ptr [rsp + 0x28], r15
	jbe	.label_600
	lea	r8, [r12 + rbx]
	mov	rax, qword ptr [rsp + 0x50]
	lea	rax, [rax + r15]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rcx, [rcx + r15]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_621:
	cmp	byte ptr [rcx + rbp - 1], r14b
	jne	.label_613
	cmp	byte ptr [rcx + rbp], 0x5d
	jne	.label_613
	cmp	byte ptr [rax + rbp - 1], 0
	jne	.label_613
	cmp	byte ptr [rax + rbp], 0
	je	.label_619
	nop	
.label_613:
	lea	rdx, [r15 + rbp + 1]
	inc	rbp
	cmp	rdx, qword ptr [rsp + 0x28]
	jb	.label_621
.label_600:
	lea	rax, [rbx + 2]
	mov	rcx, qword ptr [rsp + 0x20]
	cmp	rax, rcx
	jae	.label_625
	cmp	byte ptr [r12 + rax], 0x2a
	jne	.label_628
	cmp	byte ptr [r9 + rax], 0
	jne	.label_628
	lea	r8, [rbx + 3]
	cmp	r8, rcx
	jae	.label_628
	mov	rax, qword ptr [rsp + 0x40]
	lea	rax, [rax + rbx]
	mov	rdx, qword ptr [rsp + 0x30]
	lea	rdx, [rdx + rbx]
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_639:
	cmp	byte ptr [rdx + rbp], 0
	jne	.label_628
	cmp	byte ptr [rax + rbp], 0x5d
	je	.label_637
	lea	rsi, [rbx + rbp + 4]
	inc	rbp
	cmp	rsi, rcx
	jb	.label_639
	nop	dword ptr [rax]
.label_628:
	lea	r14, [rbx + 1]
	cmp	byte ptr [r12 + rbx + 1], 0x2d
	jne	.label_643
	cmp	byte ptr [r9 + r14], 0
	je	.label_646
.label_643:
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 0
	mov	byte ptr [rax + 0x10], r13b
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	je	.label_642
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rdx + 8], rax
.label_670:
	mov	r9, qword ptr [rsp + 0x10]
.label_685:
	lea	r15, [r14 + 2]
	cmp	r15, qword ptr [rsp + 0x20]
	mov	rbx, r14
	jb	.label_657
	jmp	.label_601
.label_646:
	mov	r14b, byte ptr [r12 + rbx + 2]
	movzx	ebp, r14b
	cmp	bpl, r13b
	jb	.label_660
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 1
	mov	byte ptr [rax + 0x10], r13b
	mov	byte ptr [rax + 0x11], r14b
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	je	.label_667
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rdx + 8], rax
	add	rbx, 3
	mov	r14, rbx
	jmp	.label_670
.label_619:
	test	rbp, rbp
	je	.label_672
	add	r8, 2
	cmp	r14b, 0x3a
	jne	.label_681
	mov	esi, OFFSET FLAT:label_675
	mov	qword ptr [rsp + 8], r8
	mov	rdi, r8
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_678
	xor	r12d, r12d
	test	eax, eax
	je	.label_608
.label_678:
	mov	esi, OFFSET FLAT:label_682
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_686
	mov	r12d, 1
	test	eax, eax
	je	.label_608
.label_686:
	mov	esi, OFFSET FLAT:label_688
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_598
	mov	r12d, 2
	test	eax, eax
	je	.label_608
.label_598:
	mov	esi, OFFSET FLAT:label_641
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_607
	mov	r12d, 3
	test	eax, eax
	je	.label_608
.label_607:
	mov	esi, OFFSET FLAT:label_611
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_616
	mov	r12d, 4
	test	eax, eax
	je	.label_608
.label_616:
	mov	esi, OFFSET FLAT:label_687
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_626
	mov	r12d, 5
	test	eax, eax
	je	.label_608
.label_626:
	mov	esi, OFFSET FLAT:label_630
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_647
	mov	r12d, 6
	test	eax, eax
	je	.label_608
.label_647:
	mov	esi, OFFSET FLAT:label_618
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_638
	mov	r12d, 7
	test	eax, eax
	je	.label_608
.label_638:
	mov	esi, OFFSET FLAT:label_644
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_648
	mov	r12d, 8
	test	eax, eax
	je	.label_608
.label_648:
	mov	esi, OFFSET FLAT:label_651
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_654
	mov	r12d, 9
	test	eax, eax
	je	.label_608
.label_654:
	mov	esi, OFFSET FLAT:label_655
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_664
	mov	r12d, 0xa
	test	eax, eax
	je	.label_608
.label_664:
	mov	esi, OFFSET FLAT:label_661
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 6
	jne	.label_666
	mov	r12d, 0xb
	test	eax, eax
	jne	.label_666
.label_608:
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 2
	mov	dword ptr [rax + 0x10], r12d
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	je	.label_669
	mov	qword ptr [rcx + 8], rax
	mov	r12, qword ptr [rsp + 0x38]
	jmp	.label_673
.label_681:
	cmp	rbp, 1
	jne	.label_674
	mov	edi, 0x20
	mov	rbx, r8
	call	xmalloc
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 3
	mov	cl, byte ptr [rbx]
	mov	byte ptr [rax + 0x10], cl
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	je	.label_677
	mov	qword ptr [rcx + 8], rax
.label_673:
	mov	r9, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [rcx + 8], rax
	lea	r14, [r15 + rbp + 2]
	jmp	.label_685
.label_674:
	cmp	byte ptr [r12 + r15], 0x2a
	jne	.label_596
	cmp	byte ptr [r9 + r15], 0
	jne	.label_596
	inc	r15
.label_605:
	mov	rax, r15
	cmp	rax, qword ptr [rsp + 0x20]
	jae	.label_596
	movzx	ecx, byte ptr [r12 + rax]
	lea	edx, [rcx - 0x30]
	cmp	edx, 9
	ja	.label_602
	lea	r15, [rax + 1]
	cmp	byte ptr [r9 + rax], 0
	je	.label_605
.label_602:
	cmp	cl, 0x5d
	jne	.label_596
	cmp	byte ptr [r9 + rax], 0
	je	.label_600
	jmp	.label_596
.label_666:
	mov	r12, qword ptr [rsp + 0x38]
	cmp	byte ptr [r12 + r15], 0x2a
	mov	r9, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	jne	.label_614
	cmp	byte ptr [r9 + r15], 0
	jne	.label_614
	inc	r15
.label_631:
	mov	rax, r15
	cmp	rax, qword ptr [rsp + 0x20]
	jae	.label_614
	movzx	ecx, byte ptr [r12 + rax]
	lea	edx, [rcx - 0x30]
	cmp	edx, 9
	ja	.label_627
	lea	r15, [rax + 1]
	cmp	byte ptr [r9 + rax], 0
	je	.label_631
.label_627:
	cmp	cl, 0x5d
	jne	.label_614
	cmp	byte ptr [r9 + rax], 0
	je	.label_600
	jmp	.label_614
.label_637:
	test	rbp, rbp
	je	.label_635
	lea	r13, [r12 + r8]
	xor	ecx, ecx
	cmp	byte ptr [r12 + r8], 0x30
	setne	cl
	lea	edx, [rcx + rcx + 8]
	xor	r8d, r8d
	mov	rdi, r13
	lea	rsi, [rsp + 0x60]
	lea	rcx, [rsp + 0x48]
	call	xstrtoumax
	test	eax, eax
	jne	.label_645
	mov	r15, qword ptr [rsp + 0x48]
	cmp	r15, -1
	je	.label_645
	mov	rax, qword ptr [rsp + 0x40]
	sub	rax, qword ptr [rsp + 0x60]
	add	rax, rbx
	add	rax, rbp
	je	.label_650
	jmp	.label_645
.label_635:
	mov	qword ptr [rsp + 0x48], 0
	xor	r15d, r15d
.label_650:
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 4
	mov	byte ptr [rax + 0x10], r14b
	mov	qword ptr [rax + 0x18], r15
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	je	.label_656
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rdx + 8], rax
	lea	rax, [rbx + rbp + 4]
	lea	r15, [rbx + rbp + 6]
	cmp	r15, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 0x10]
	jb	.label_665
	lea	r14, [rbx + rbp + 4]
.label_601:
	mov	r13b, 1
	mov	r15, qword ptr [rsp + 0x20]
	cmp	r14, r15
	jae	.label_632
	mov	rbp, qword ptr [rsp + 0x18]
	nop	
.label_620:
	movzx	ebx, byte ptr [r12 + r14]
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 0
	mov	byte ptr [rax + 0x10], bl
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	je	.label_642
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rbp + 8], rax
	inc	r14
	cmp	r14, r15
	jb	.label_620
.label_632:
	mov	rdi, r12
	call	free
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	mov	eax, r13d
	add	rsp, 0x68
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_660:
	mov	edi, 5
	call	xmalloc
	mov	rbx, rax
	call	__ctype_b_loc
	mov	r15, rax
	mov	rax, qword ptr [r15]
	test	byte ptr [rax + r13*2 + 1], 0x40
	mov	qword ptr [rsp + 0x28], rbx
	jne	.label_595
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_57
	xor	eax, eax
	mov	rdi, rbx
	mov	r8d, r13d
	call	__sprintf_chk
	jmp	.label_606
.label_595:
	mov	byte ptr [rbx], r13b
	mov	byte ptr [rbx + 1], 0
.label_606:
	mov	edi, 5
	call	xmalloc
	mov	rbx, rax
	mov	rax, qword ptr [r15]
	test	byte ptr [rax + rbp*2 + 1], 0x40
	jne	.label_610
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_57
	xor	eax, eax
	mov	rdi, rbx
	mov	r8d, ebp
	call	__sprintf_chk
	jmp	.label_622
.label_610:
	mov	byte ptr [rbx], r14b
	mov	byte ptr [rbx + 1], 0
.label_622:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_624
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rcx, rbp
	mov	r8, rbx
	call	error
	mov	rdi, rbp
	call	free
.label_658:
	mov	rdi, rbx
	call	free
	jmp	.label_632
.label_596:
	mov	rdi, r8
	mov	rsi, rbp
	call	make_printable_str
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_636
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
.label_676:
	call	error
	mov	rdi, rbx
	call	free
	jmp	.label_649
.label_645:
	mov	rdi, r13
	mov	rsi, rbp
	call	make_printable_str
	mov	rbx, rax
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_652
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
	jmp	.label_658
.label_672:
	xor	edi, edi
	cmp	r14b, 0x3a
	jne	.label_659
	mov	esi, OFFSET FLAT:label_662
	jmp	.label_663
.label_659:
	mov	esi, OFFSET FLAT:label_683
.label_663:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_649:
	xor	r13d, r13d
	jmp	.label_632
.label_642:
	mov	edi, OFFSET FLAT:label_357
	mov	esi, OFFSET FLAT:label_243
	mov	edx, 0x287
	mov	ecx, OFFSET FLAT:label_668
	call	__assert_fail
.label_614:
	mov	rsi, rbp
	call	make_printable_str
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_671
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
	jmp	.label_676
.label_625:
	mov	edi, OFFSET FLAT:label_679
	mov	esi, OFFSET FLAT:label_243
	mov	edx, 0x30e
	mov	ecx, OFFSET FLAT:label_680
	call	__assert_fail
.label_667:
	mov	edi, OFFSET FLAT:label_357
	mov	esi, OFFSET FLAT:label_243
	mov	edx, 0x2a5
	mov	ecx, OFFSET FLAT:label_684
	call	__assert_fail
.label_656:
	mov	edi, OFFSET FLAT:label_357
	mov	esi, OFFSET FLAT:label_243
	mov	edx, 0x2cf
	mov	ecx, OFFSET FLAT:label_358
	call	__assert_fail
.label_669:
	mov	edi, OFFSET FLAT:label_357
	mov	esi, OFFSET FLAT:label_243
	mov	edx, 0x2bb
	mov	ecx, OFFSET FLAT:label_599
	call	__assert_fail
.label_677:
	mov	edi, OFFSET FLAT:label_357
	mov	esi, OFFSET FLAT:label_243
	mov	edx, 0x2e5
	mov	ecx, OFFSET FLAT:label_604
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x407045
	.globl sub_407045
	.type sub_407045, @function
sub_407045:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407050
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
	je	.label_689
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
.label_689:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4070e5
	.globl sub_4070e5
	.type sub_4070e5, @function
sub_4070e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4070f0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_13]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_15]
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
	#Procedure 0x40715f
	.globl sub_40715f
	.type sub_40715f, @function
sub_40715f:

	nop
	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4071d2
	.globl sub_4071d2
	.type sub_4071d2, @function
sub_4071d2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4071f6
	.globl sub_4071f6
	.type sub_4071f6, @function
sub_4071f6:

	nop	word ptr cs:[rax + rax]
