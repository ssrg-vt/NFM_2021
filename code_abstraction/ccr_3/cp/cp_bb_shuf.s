	.section	.text
	.align	32
	#Procedure 0x402789
	.globl sub_402789
	.type sub_402789, @function
sub_402789:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40278a
	.globl sub_40278a
	.type sub_40278a, @function
sub_40278a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4027c2
	.globl sub_4027c2
	.type sub_4027c2, @function
sub_4027c2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40280a
	.globl sub_40280a
	.type sub_40280a, @function
sub_40280a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40282c
	.globl sub_40282c
	.type sub_40282c, @function
sub_40282c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40283d
	.globl sub_40283d
	.type sub_40283d, @function
sub_40283d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402856
	.globl sub_402856
	.type sub_402856, @function
sub_402856:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402860
	.globl statat
	.type statat, @function
statat:

	xor	ecx, ecx
	jmp	fstatat
	.section	.text
	.align	32
	#Procedure 0x402867
	.globl sub_402867
	.type sub_402867, @function
sub_402867:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402870
	.globl rotl8
	.type rotl8, @function
rotl8:

	mov	eax, edi
	mov	ecx, esi
	shl	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x402884
	.globl sub_402884
	.type sub_402884, @function
sub_402884:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402890

	.globl triple_free
	.type triple_free, @function
triple_free:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x4028a5
	.globl sub_4028a5
	.type sub_4028a5, @function
sub_4028a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4028b0

	.globl copy_acl
	.type copy_acl, @function
copy_acl:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	call	qcopy_acl
	mov	ebp, eax
	cmp	ebp, -1
	je	.label_9
	cmp	ebp, -2
	jne	.label_10
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_12
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_13
.label_9:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbx
.label_13:
	call	error
.label_10:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402932
	.globl sub_402932
	.type sub_402932, @function
sub_402932:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402940
	.globl rotr16
	.type rotr16, @function
rotr16:

	mov	eax, edi
	mov	ecx, esi
	shr	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x402954
	.globl sub_402954
	.type sub_402954, @function
sub_402954:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402960

	.globl extent_scan_free
	.type extent_scan_free, @function
extent_scan_free:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x28]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	mov	qword ptr [rbx + 0x18], 0
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40297f
	.globl sub_40297f
	.type sub_40297f, @function
sub_40297f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402980

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
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [r15]
	test	rbx, rbx
	je	.label_20
	xor	r12d, r12d
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_16:
	test	rbp, rbp
	je	.label_18
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_15
.label_18:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_21
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_17
	.section	.text
	.align	32
	#Procedure 0x402a13
	.globl sub_402a13
	.type sub_402a13, @function
sub_402a13:

	nop	word ptr cs:[rax + rax]
.label_15:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_19
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_17:
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	jne	.label_16
.label_20:
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
	#Procedure 0x402a7e
	.globl sub_402a7e
	.type sub_402a7e, @function
sub_402a7e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402a80
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
	#Procedure 0x402a99
	.globl sub_402a99
	.type sub_402a99, @function
sub_402a99:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402aa0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x402ac2
	.globl sub_402ac2
	.type sub_402ac2, @function
sub_402ac2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ad0

	.globl randread
	.type randread, @function
randread:
	cmp	qword ptr [rdi], 0
	je	.label_23
	jmp	readsource
.label_23:
	add	rdi, 0x18
	jmp	readisaac
	.section	.text
	.align	32
	#Procedure 0x402ae1
	.globl sub_402ae1
	.type sub_402ae1, @function
sub_402ae1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402af0

	.globl readsource
	.type readsource, @function
readsource:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r13, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	mov	rdi, r14
	call	fread_unlocked
	mov	rbx, rax
	call	__errno_location
	mov	r12, rax
	jmp	.label_25
	.section	.text
	.align	32
	#Procedure 0x402b1f
	.globl sub_402b1f
	.type sub_402b1f, @function
sub_402b1f:

	nop	
.label_24:
	add	r14, rbx
	mov	ebx, dword ptr [r12]
	mov	rdi, qword ptr [r15]
	call	ferror_unlocked
	test	eax, eax
	cmove	ebx, eax
	mov	dword ptr [r12], ebx
	mov	rdi, qword ptr [r15 + 0x10]
	call	qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	mov	rdi, r14
	mov	rdx, r13
	call	fread_unlocked
	mov	rbx, rax
.label_25:
	sub	r13, rbx
	jne	.label_24
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b65
	.globl sub_402b65
	.type sub_402b65, @function
sub_402b65:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b70

	.globl dest_info_init
	.type dest_info_init, @function
dest_info_init:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x3d
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash
	mov	ecx, OFFSET FLAT:triple_compare
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	mov	qword ptr [rbx + 0x40], rax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b96
	.globl sub_402b96
	.type sub_402b96, @function
sub_402b96:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ba0
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rcx, rax
	nop	word ptr cs:[rax + rax]
.label_30:
	cmp	qword ptr [rcx], rbx
	jne	.label_26
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_28
.label_26:
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_30
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	
.label_29:
	cmp	rax, rdx
	mov	ecx, 0
	jae	.label_27
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_29
	jmp	.label_27
.label_28:
	mov	rcx, qword ptr [rdx]
.label_27:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c06
	.globl sub_402c06
	.type sub_402c06, @function
sub_402c06:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c10

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_32
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_34
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_34
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_31
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_35
.label_34:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_35
.label_32:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_35:
	test	ebx, ebx
	js	.label_31
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_31
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_33
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_31
.label_33:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_31:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402cd3
	.globl sub_402cd3
	.type sub_402cd3, @function
sub_402cd3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ce0

	.globl randint_genmax
	.type randint_genmax, @function
randint_genmax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rsi
	mov	rax, qword ptr [rdi]
	mov	qword ptr [rsp + 0x18], rax
	mov	r15, qword ptr [rdi + 8]
	lea	rax, [rdi + 8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], rdi
	mov	rbx, qword ptr [rdi + 0x10]
	lea	r12, [r13 + 1]
	nop	word ptr cs:[rax + rax]
.label_38:
	cmp	rbx, r13
	jae	.label_36
	mov	rax, rbx
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_40:
	mov	rdi, rax
	call	shift_left
	add	rax, 0xff
	inc	r14
	cmp	rax, r13
	jb	.label_40
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rbp, [rsp + 0x20]
	mov	rsi, rbp
	mov	rdx, r14
	call	randread
	nop	dword ptr [rax + rax]
.label_39:
	mov	rdi, r15
	call	shift_left
	movzx	r15d, byte ptr [rbp]
	add	r15, rax
	mov	rdi, rbx
	call	shift_left
	mov	rbx, rax
	add	rbx, 0xff
	inc	rbp
	cmp	rbx, r13
	jb	.label_39
.label_36:
	mov	rcx, r15
	mov	rsi, rbx
	sub	rsi, r13
	je	.label_37
	xor	edx, edx
	mov	rax, rsi
	div	r12
	mov	rdi, rdx
	sub	rbx, rdi
	xor	edx, edx
	mov	rax, rcx
	div	r12
	mov	r15, rdx
	dec	rdi
	cmp	rcx, rbx
	mov	rbx, rdi
	ja	.label_38
	xor	edx, edx
	mov	rax, rcx
	div	r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx + 8], rax
	xor	edx, edx
	mov	rax, rsi
	div	r12
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, r15
	jmp	.label_41
.label_37:
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rsp + 8]
	movups	xmmword ptr [rax], xmm0
.label_41:
	mov	rax, rcx
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
	#Procedure 0x402dfc
	.globl sub_402dfc
	.type sub_402dfc, @function
sub_402dfc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402e00

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12d, ecx
	mov	rbp, rdx
	mov	r13, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rsi, qword ptr [rbx]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_42
	cmp	rsi, r13
	je	.label_46
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_48
.label_46:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	je	.label_42
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_44
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_47
.label_44:
	mov	qword ptr [rbx], 0
	jmp	.label_42
.label_48:
	mov	rax, qword ptr [rbx + 8]
	xor	r15d, r15d
	test	rax, rax
	je	.label_42
	add	rbx, 8
	xor	r15d, r15d
	nop	
.label_45:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r13
	je	.label_43
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_43
	mov	rbx, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_45
	jmp	.label_42
.label_43:
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_42
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_47:
	mov	rdi, r14
	call	free_entry
.label_42:
	mov	rax, r15
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
	#Procedure 0x402eca
	.globl sub_402eca
	.type sub_402eca, @function
sub_402eca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ed0

	.globl emit_backup_suffix_note
	.type emit_backup_suffix_note, @function
emit_backup_suffix_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_49
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_50
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x402f12
	.globl sub_402f12
	.type sub_402f12, @function
sub_402f12:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f20

	.globl is_prime
	.type is_prime, @function
is_prime:
	mov	r8, rdi
	mov	esi, 3
	cmp	r8, 0xa
	jb	.label_51
	mov	esi, 3
	mov	edi, 9
	mov	ecx, 0x10
	nop	dword ptr [rax]
.label_52:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_51
	add	rdi, rcx
	add	rsi, 2
	add	rcx, 8
	cmp	rdi, r8
	jb	.label_52
.label_51:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	setne	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f6c
	.globl sub_402f6c
	.type sub_402f6c, @function
sub_402f6c:

	nop	dword ptr [rax]
.label_53:
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	overwrite_ok
	xor	al, 1
.label_59:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f86

	.globl abandon_move
	.type abandon_move, @function
abandon_move:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0x18], 0
	je	.label_54
	mov	ecx, dword ptr [rbx + 8]
	mov	al, 1
	cmp	ecx, 2
	je	.label_59
	cmp	ecx, 3
	je	.label_53
	cmp	ecx, 4
	jne	.label_58
	cmp	byte ptr [rbx + 0x2f], 0
	je	.label_58
	mov	esi, dword ptr [r14 + 0x18]
	mov	rdi, r15
	call	writable_destination
	test	al, al
	je	.label_53
.label_58:
	xor	eax, eax
	jmp	.label_59
.label_54:
	mov	edi, OFFSET FLAT:label_55
	mov	esi, OFFSET FLAT:label_56
	mov	edx, 0x6d2
	mov	ecx, OFFSET FLAT:label_57
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x402fe1
	.globl sub_402fe1
	.type sub_402fe1, @function
sub_402fe1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ff0
	.globl close_stdin_set_file_name
	.type close_stdin_set_file_name, @function
close_stdin_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ff8
	.globl sub_402ff8
	.type sub_402ff8, @function
sub_402ff8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403000

	.globl lgetfilecon
	.type lgetfilecon, @function
lgetfilecon:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403013
	.globl sub_403013
	.type sub_403013, @function
sub_403013:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403020
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_60
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_60
.label_61:
	ret	
.label_60:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_61
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x403046
	.globl sub_403046
	.type sub_403046, @function
sub_403046:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403050

	.globl source_is_dst_backup
	.type source_is_dst_backup, @function
source_is_dst_backup:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	rbp, rdx
	mov	qword ptr [rsp + 8], rsi
	mov	rbx, rdi
	call	strlen
	mov	r15, rax
	mov	qword ptr [rsp + 0x10], rbp
	mov	rdi, rbp
	call	last_component
	mov	r14, rax
	mov	rdi, r14
	call	strlen
	mov	rbp, rax
	mov	r13,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdi, r13
	call	strlen
	mov	r12, rax
	lea	rax, [r12 + rbp]
	cmp	r15, rax
	jne	.label_63
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, rbp
	call	memcmp
	test	eax, eax
	jne	.label_63
	add	rbx, rbp
	mov	rdi, rbx
	mov	rsi, r13
	call	strcmp
	test	eax, eax
	jne	.label_63
	mov	r14, qword ptr [rsp + 0x10]
	mov	rdi, r14
	call	strlen
	mov	rbx, rax
	lea	rdi, [r12 + rbx + 1]
	call	xmalloc
	mov	rbp, rax
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdi, rax
	call	strcpy
	lea	rsi, [rsp + 0x18]
	mov	rdi, rbp
	call	stat
	mov	ebx, eax
	mov	rdi, rbp
	call	free
	test	ebx, ebx
	jne	.label_63
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_63
	mov	rax, qword ptr [rcx]
	cmp	rax, qword ptr [rsp + 0x18]
	sete	al
	jmp	.label_62
.label_63:
	xor	eax, eax
.label_62:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403163
	.globl sub_403163
	.type sub_403163, @function
sub_403163:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403170

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	mov	rax, rsi
	xor	esi, esi
	mov	rdx, rax
	jmp	memset
	.section	.text
	.align	32
	#Procedure 0x40317d
	.globl sub_40317d
	.type sub_40317d, @function
sub_40317d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403180

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r15, rdi
	lea	rdx, [rsp + 8]
	mov	ecx, 1
	call	hash_find_entry
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_72
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	jne	.label_69
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_68
	cvtsi2ss	xmm0, rax
	jmp	.label_66
.label_75:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_70:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jbe	.label_69
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_73
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	jmp	.label_65
.label_68:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_66:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_75
	cvtsi2ss	xmm1, rcx
	jmp	.label_70
.label_73:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_65:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_67
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_74
.label_67:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_74:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_69
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	jne	.label_64
	mulss	xmm0, dword ptr [rcx + 8]
.label_64:
	movss	xmm1,  dword ptr [dword ptr [rip + label_71]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	test	al, al
	jne	.label_69
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_76
	nop	dword ptr [rax + rax]
.label_77:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_77
.label_76:
	mov	qword ptr [r15 + 0x48], 0
.label_69:
	mov	rax, r14
.label_72:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403306
	.globl sub_403306
	.type sub_403306, @function
sub_403306:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403310
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
	#Procedure 0x403323
	.globl sub_403323
	.type sub_403323, @function
sub_403323:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403330
	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:

	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_78
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_79
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	test	eax, eax
	sete	al
	add	rsp, 8
	ret	
.label_78:
	xor	eax, eax
	ret	
.label_79:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x403360

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
.label_194:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_81
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_90]]
.label_1510:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_95
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_100
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_1511:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_111
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_111
	xor	r14d, r14d
.label_123:
	cmp	r14, r11
	jae	.label_120
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_120:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_123
.label_111:
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
	jmp	.label_128
.label_1503:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_128
.label_1506:
	mov	al, 1
.label_1504:
	mov	r12b, 1
.label_1507:
	test	r12b, 1
	mov	cl, 1
	je	.label_142
	mov	ecx, eax
.label_142:
	mov	al, cl
.label_1505:
	test	r12b, 1
	jne	.label_145
	test	r11, r11
	je	.label_147
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_147:
	mov	r14d, 1
	jmp	.label_152
.label_145:
	xor	r14d, r14d
.label_152:
	mov	ecx, OFFSET FLAT:label_100
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_128
.label_1508:
	test	r12b, 1
	jne	.label_158
	test	r11, r11
	je	.label_160
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_160:
	mov	r14d, 1
	jmp	.label_83
.label_1509:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_166
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_128
.label_158:
	xor	r14d, r14d
.label_83:
	mov	eax, OFFSET FLAT:label_166
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_128:
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
	jmp	.label_108
	.section	.text
	.align	32
	#Procedure 0x40363c
	.globl sub_40363c
	.type sub_40363c, @function
sub_40363c:

	nop	dword ptr [rax]
.label_87:
	inc	rsi
.label_108:
	cmp	rbp, -1
	je	.label_99
	cmp	rsi, rbp
	jne	.label_102
	jmp	.label_105
	.section	.text
	.align	32
	#Procedure 0x403653
	.globl sub_403653
	.type sub_403653, @function
sub_403653:

	nop	word ptr cs:[rax + rax]
.label_99:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_105
.label_102:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_114
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_117
	cmp	rbp, -1
	jne	.label_117
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
.label_117:
	cmp	rbx, rbp
	jbe	.label_127
.label_114:
	xor	r8d, r8d
.label_115:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_129
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_133]]
.label_1609:
	test	rsi, rsi
	jne	.label_125
	jmp	.label_138
	.section	.text
	.align	32
	#Procedure 0x4036ee
	.globl sub_4036ee
	.type sub_4036ee, @function
sub_4036ee:

	nop	
.label_127:
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
	jne	.label_149
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_115
	jmp	.label_92
.label_149:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_115
.label_1613:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_169
	test	rsi, rsi
	jne	.label_170
	cmp	rbp, 1
	je	.label_138
	xor	r13d, r13d
	jmp	.label_107
.label_1602:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_176
	cmp	byte ptr [rsp + 7], 0
	jne	.label_94
	cmp	r12d, 2
	jne	.label_179
	mov	eax, r9d
	and	al, 1
	jne	.label_179
	cmp	r14, r11
	jae	.label_180
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_180:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_184
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_184:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_188
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_188:
	add	r14, 3
	mov	r9b, 1
.label_179:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_193
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_193:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_80
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_80
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_80
	cmp	r14, r11
	jae	.label_96
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_96:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_159
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_159:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_107
.label_1603:
	mov	bl, 0x62
	jmp	.label_110
.label_1604:
	mov	cl, 0x74
	jmp	.label_113
.label_1605:
	mov	bl, 0x76
	jmp	.label_110
.label_1606:
	mov	bl, 0x66
	jmp	.label_110
.label_1607:
	mov	cl, 0x72
	jmp	.label_113
.label_1610:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_119
	cmp	byte ptr [rsp + 7], 0
	jne	.label_94
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
	jae	.label_124
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_124:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_134
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_134:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_139
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_139:
	add	r14, 3
	xor	r9d, r9d
.label_119:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_107
.label_1611:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_148
	cmp	r12d, 2
	jne	.label_125
	cmp	byte ptr [rsp + 7], 0
	je	.label_125
	jmp	.label_94
.label_1612:
	cmp	r12d, 2
	jne	.label_156
	cmp	byte ptr [rsp + 7], 0
	jne	.label_94
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_84
.label_129:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_163
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
.label_106:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_177
	test	r8b, r8b
	je	.label_177
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_107
.label_169:
	test	rsi, rsi
	jne	.label_178
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_178
.label_138:
	mov	dl, 1
.label_1608:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_94
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_107:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_91
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_93
	jmp	.label_97
	.section	.text
	.align	32
	#Procedure 0x403a34
	.globl sub_403a34
	.type sub_403a34, @function
sub_403a34:

	nop	word ptr cs:[rax + rax]
.label_91:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_97
.label_93:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_101
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_84
	jmp	.label_118
	.section	.text
	.align	32
	#Procedure 0x403a7d
	.globl sub_403a7d
	.type sub_403a7d, @function
sub_403a7d:

	nop	dword ptr [rax]
.label_97:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_118
	jmp	.label_84
.label_101:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_118
.label_176:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_87
	xor	r15d, r15d
	jmp	.label_125
.label_156:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_113
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_84
.label_113:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_94
.label_110:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_107
	nop	word ptr cs:[rax + rax]
.label_118:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_94
	cmp	r12d, 2
	jne	.label_143
	mov	eax, r9d
	and	al, 1
	jne	.label_143
	cmp	r14, r11
	jae	.label_146
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_146:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_137
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_137:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_154
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_154:
	add	r14, 3
	mov	r9b, 1
.label_143:
	cmp	r14, r11
	jae	.label_157
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_157:
	inc	r14
	jmp	.label_161
.label_163:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_165
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_165:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_109:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_182
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_186
	cmp	rbp, -2
	je	.label_189
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_191
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_98:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_126
	bt	rsi, rdx
	jb	.label_92
.label_126:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_98
.label_191:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_103
	xor	r13d, r13d
.label_103:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_109
	jmp	.label_106
.label_80:
	xor	r13d, r13d
	jmp	.label_107
.label_178:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_107
.label_148:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_125
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_125
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_125
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_130
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_135
	cmp	byte ptr [rsp + 7], 0
	jne	.label_94
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_140
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_140:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_89
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_89:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_151
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_151:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_153
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_153:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_107
.label_125:
	xor	eax, eax
.label_170:
	xor	r13d, r13d
	jmp	.label_107
.label_177:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_162
	.section	.text
	.align	32
	#Procedure 0x403d63
	.globl sub_403d63
	.type sub_403d63, @function
sub_403d63:

	nop	word ptr cs:[rax + rax]
.label_122:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_162:
	test	r8b, r8b
	je	.label_171
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_172
	cmp	r14, r11
	jae	.label_174
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_174:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_172
	.section	.text
	.align	32
	#Procedure 0x403dac
	.globl sub_403dac
	.type sub_403dac, @function
sub_403dac:

	nop	dword ptr [rax]
.label_171:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_92
	cmp	r12d, 2
	jne	.label_181
	mov	eax, r9d
	and	al, 1
	jne	.label_181
	cmp	r14, r11
	jae	.label_185
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_185:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_187
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_187:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_192
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_192:
	add	r14, 3
	mov	r9b, 1
.label_181:
	cmp	r14, r11
	jae	.label_85
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_85:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_86
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_86:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_150
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_150:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_172:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_84
	test	r9b, 1
	je	.label_112
	mov	ebx, eax
	and	bl, 1
	jne	.label_112
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_116
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_116:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_136
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_136:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_112:
	cmp	r14, r11
	jae	.label_122
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_122
	.section	.text
	.align	32
	#Procedure 0x403eb3
	.globl sub_403eb3
	.type sub_403eb3, @function
sub_403eb3:

	nop	word ptr cs:[rax + rax]
.label_84:
	test	r9b, 1
	je	.label_131
	and	al, 1
	jne	.label_131
	cmp	r14, r11
	jae	.label_132
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_132:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_168
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_168:
	add	r14, 2
	xor	r9d, r9d
.label_131:
	mov	ebx, r15d
.label_161:
	cmp	r14, r11
	jae	.label_141
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_141:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_87
.label_186:
	xor	r13d, r13d
.label_182:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_106
.label_189:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_155
	mov	rsi, qword ptr [rsp + 0x50]
.label_183:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_167
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_183
	xor	r13d, r13d
	jmp	.label_106
.label_155:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_106
.label_167:
	xor	r13d, r13d
	jmp	.label_106
.label_130:
	xor	r13d, r13d
	jmp	.label_107
.label_135:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_107
	.section	.text
	.align	32
	#Procedure 0x403f88
	.globl sub_403f88
	.type sub_403f88, @function
sub_403f88:

	nop	dword ptr [rax + rax]
.label_105:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_175
	or	dl, al
	je	.label_92
.label_175:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_104
	or	dl, al
	jne	.label_104
	test	r10b, 1
	jne	.label_190
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_104
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_194
.label_104:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_82
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_88
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_88
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_121:
	cmp	r14, r11
	jae	.label_173
	mov	byte ptr [rcx + r14], al
.label_173:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_121
	jmp	.label_88
.label_94:
	mov	qword ptr [rsp + 0x20], rbp
.label_92:
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
.label_144:
	mov	r14, rax
.label_164:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_190:
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
	jmp	.label_144
.label_82:
	mov	rcx, qword ptr [rsp + 8]
.label_88:
	cmp	r14, r11
	jae	.label_164
	mov	byte ptr [rcx + r14], 0
	jmp	.label_164
.label_81:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40411c
	.globl sub_40411c
	.type sub_40411c, @function
sub_40411c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404120

	.globl freecon
	.type freecon, @function
freecon:
	ret	
	.section	.text
	.align	32
	#Procedure 0x404121
	.globl sub_404121
	.type sub_404121, @function
sub_404121:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404130
	.globl setexeccon
	.type setexeccon, @function
setexeccon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404143
	.globl sub_404143
	.type sub_404143, @function
sub_404143:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404150

	.globl check_extension
	.type check_extension, @function
check_extension:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rcx
	mov	ebp, edx
	mov	r15, rsi
	mov	rbx, rdi
	call	last_component
	mov	r14, rax
	mov	rdi, r14
	call	base_len
	mov	r13, rax
	mov	eax, 0xff
	cmp	r13, 0xf
	jb	.label_198
	cmp	qword ptr [r12], 0
	jne	.label_195
	test	ebp, ebp
	js	.label_197
	call	__errno_location
	mov	qword ptr [rsp], rax
	mov	dword ptr [rax], 0
	mov	esi, 3
	mov	edi, ebp
	call	fpathconf
	mov	rcx, qword ptr [rsp]
	cmp	dword ptr [rcx], 1
	sbb	rax, 0
	jmp	.label_196
.label_197:
	movzx	eax, word ptr [r14]
	mov	word ptr [rsp], ax
	mov	word ptr [r14], 0x2e
	call	__errno_location
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	mov	esi, 3
	mov	rdi, rbx
	call	pathconf
	cmp	dword ptr [rbp], 1
	sbb	rax, 0
	movzx	ecx, word ptr [rsp]
	mov	word ptr [r14], cx
.label_196:
	cmp	rax, -1
	mov	ecx, 0xe
	mov	rdx, -1
	cmovl	rdx, rcx
	test	rax, rax
	cmovns	rdx, rax
	mov	qword ptr [r12], rdx
.label_195:
	mov	rax, qword ptr [r12]
.label_198:
	cmp	rax, r13
	jae	.label_199
	add	rbx, r15
	sub	rbx, r14
	cmp	rax, rbx
	lea	rax, [rax - 1]
	cmova	rax, rbx
	mov	word ptr [r14 + rax], 0x7e
.label_199:
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
	#Procedure 0x404248
	.globl sub_404248
	.type sub_404248, @function
sub_404248:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404250

	.globl just
	.type just, @function
just:
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x404254
	.globl sub_404254
	.type sub_404254, @function
sub_404254:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404260

	.globl sparse_copy
	.type sparse_copy, @function
sparse_copy:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	dword ptr [rsp + 0x1c], r9d
	mov	r15, r8
	mov	r13, rdx
	mov	dword ptr [rsp + 4], esi
	mov	dword ptr [rsp + 0x3c], edi
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rdx, qword ptr [rsp + 0xa8]
	mov	rsi, qword ptr [rsp + 0xa0]
	mov	r14, qword ptr [rsp + 0x90]
	mov	byte ptr [rax], 0
	mov	qword ptr [rdx], 0
	test	r15, r15
	mov	rax, rcx
	cmovne	rax, r15
	mov	qword ptr [rsp + 0x50], rax
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x28], r13
	mov	qword ptr [rsp + 0x48], rcx
	jmp	.label_218
.label_217:
	mov	qword ptr [rsp + 8], rbp
	mov	qword ptr [rsp + 0x10], r8
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], r14b
	mov	r14, qword ptr [rsp + 0x90]
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	nop	dword ptr [rax + rax]
.label_218:
	cmp	rsi, rcx
	mov	r12, rcx
	cmovb	r12, rsi
	mov	qword ptr [rsp + 0x30], rsi
	nop	
.label_211:
	test	rsi, rsi
	je	.label_216
	mov	edi, dword ptr [rsp + 0x3c]
	mov	rsi, r13
	mov	rdx, r12
	call	read
	mov	rbx, rax
	test	rbx, rbx
	jns	.label_209
	call	__errno_location
	mov	ebp, dword ptr [rax]
	cmp	ebp, 4
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_211
	jmp	.label_213
	.section	.text
	.align	32
	#Procedure 0x404346
	.globl sub_404346
	.type sub_404346, @function
sub_404346:

	nop	word ptr cs:[rax + rax]
.label_209:
	je	.label_216
	sub	qword ptr [rsp + 0x30], rbx
	mov	rax, qword ptr [rsp + 0xa8]
	add	qword ptr [rax], rbx
	mov	r8, qword ptr [rsp + 0x10]
	mov	r14d, r8d
	and	r14b, 1
	mov	qword ptr [rsp + 0x20], r13
	mov	rdi, r13
	mov	r12, qword ptr [rsp + 0x50]
	mov	rbp, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x40], r15
	nop	dword ptr [rax]
.label_215:
	mov	r9d, r14d
	cmp	r12, rbx
	cmovae	r12, rbx
	test	r15, r15
	je	.label_205
	test	r12, r12
	je	.label_205
	mov	rsi, r12
	mov	r14, rdi
	mov	r13d, r9d
	call	is_nul
	mov	r9d, r13d
	mov	rdi, r14
	mov	r8b, al
.label_205:
	mov	r14d, r8d
	and	r14b, 1
	cmp	r14b, r9b
	setne	al
	mov	rsi, rbp
	test	rbp, rbp
	setne	r13b
	cmp	rbx, r12
	sete	cl
	test	r14b, r14b
	sete	dl
	and	dl, cl
	test	r12, r12
	sete	bpl
	or	bpl, dl
	and	r13b, al
	jne	.label_220
	test	bpl, bpl
	jne	.label_220
	movabs	rax, 0x7fffffffffffffff
	sub	rax, r12
	mov	rbp, rsi
	cmp	rbp, rax
	mov	r13, qword ptr [rsp + 0x28]
	ja	.label_222
	add	rbp, r12
	jmp	.label_206
	.section	.text
	.align	32
	#Procedure 0x40441a
	.globl sub_40441a
	.type sub_40441a, @function
sub_40441a:

	nop	word ptr [rax + rax]
.label_220:
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x10], r8
	test	r13b, 1
	mov	r15, r12
	mov	eax, 0
	cmovne	r15, rax
	add	r15, rsi
	test	r9b, r9b
	je	.label_208
	mov	eax, dword ptr [rsp + 0x1c]
	movzx	edx, al
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rcx, r15
	call	create_hole
	test	al, al
	jne	.label_210
	jmp	.label_219
.label_208:
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, r15
	call	full_write
	cmp	rax, r15
	jne	.label_223
.label_210:
	test	bpl, bpl
	je	.label_200
	test	r12, r12
	cmove	rbx, r12
	and	r13b, 1
	mov	rax, r12
	mov	ecx, 0
	cmovne	rax, rcx
	test	r13b, r13b
	cmove	r12, rcx
	mov	rbp, r12
	mov	r12, rax
	jmp	.label_207
	.section	.text
	.align	32
	#Procedure 0x4044ab
	.globl sub_4044ab
	.type sub_4044ab, @function
sub_4044ab:

	nop	dword ptr [rax + rax]
.label_200:
	mov	rbp, r12
.label_207:
	mov	rdi, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x20], rdi
	mov	r15, qword ptr [rsp + 0x40]
	mov	r13, qword ptr [rsp + 0x28]
	mov	r8, qword ptr [rsp + 0x10]
.label_206:
	add	rdi, r12
	sub	rbx, r12
	jne	.label_215
	jmp	.label_217
.label_216:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	je	.label_221
	mov	eax, dword ptr [rsp + 0x1c]
	movzx	edx, al
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rcx, qword ptr [rsp + 8]
	call	create_hole
	test	al, al
	je	.label_201
.label_221:
	mov	r14b, 1
	jmp	.label_202
.label_213:
	mov	rbx, r14
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_204
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r15
	jmp	.label_212
.label_201:
	xor	r14d, r14d
	jmp	.label_202
.label_222:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_214
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x90]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	jmp	.label_212
.label_219:
	xor	r14d, r14d
	jmp	.label_202
.label_223:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_203
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x98]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
.label_212:
	call	error
.label_202:
	mov	eax, r14d
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4045d8
	.globl sub_4045d8
	.type sub_4045d8, @function
sub_4045d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045e0

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	call	dir_len
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	sete	al
	lea	rdi, [rbx + rax + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_224
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	test	rbx, rbx
	jne	.label_225
	mov	byte ptr [r14 + rbx], 0x2e
	mov	ebx, 1
.label_225:
	mov	byte ptr [r14 + rbx], 0
	mov	rax, r14
.label_224:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x404637
	.globl sub_404637
	.type sub_404637, @function
sub_404637:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404640

	.globl writable_destination
	.type writable_destination, @function
writable_destination:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	and	esi, 0xf000
	mov	bl, 1
	cmp	esi, 0xa000
	je	.label_226
	call	can_write_any_file
	test	al, al
	jne	.label_226
	mov	esi, 2
	mov	rdi, r14
	call	euidaccess
	test	eax, eax
	sete	bl
.label_226:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x40467c
	.globl sub_40467c
	.type sub_40467c, @function
sub_40467c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404680

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	mov	cl, byte ptr [rdi]
	xor	eax, eax
	test	cl, cl
	je	.label_227
	inc	rdi
	xor	eax, eax
	nop	dword ptr [rax]
.label_228:
	movsx	rcx, cl
	rol	rax, 9
	add	rax, rcx
	movzx	ecx, byte ptr [rdi]
	inc	rdi
	test	cl, cl
	jne	.label_228
.label_227:
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4046ae
	.globl sub_4046ae
	.type sub_4046ae, @function
sub_4046ae:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4046b0
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4046b3
	.globl sub_4046b3
	.type sub_4046b3, @function
sub_4046b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4046c0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	32
	#Procedure 0x4046c9
	.globl sub_4046c9
	.type sub_4046c9, @function
sub_4046c9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4046d0

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
	mov	rax,  qword ptr [word ptr [rip + label_229]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_230]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_231]]
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
	#Procedure 0x404738
	.globl sub_404738
	.type sub_404738, @function
sub_404738:

	nop	dword ptr [rax + rax]
.label_232:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404746
	.globl sub_404746
	.type sub_404746, @function
sub_404746:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40474b

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_232
	test	rdx, rdx
	je	.label_232
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404770

	.globl create_hard_link
	.type create_hard_link, @function
create_hard_link:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r12d, ecx
	mov	r15, rsi
	mov	rbx, rdi
	movzx	r8d, r8b
	shl	r8d, 0xa
	mov	dword ptr [rsp], 0xffffffff
	movzx	r9d, dl
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	rsi, rbx
	mov	rcx, r15
	call	force_linkat
	mov	ebp, eax
	test	ebp, ebp
	jle	.label_234
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_235
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r15
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, rbx
	call	error
	jmp	.label_233
.label_234:
	test	ebp, ebp
	mov	r14b, 1
	je	.label_233
	xor	r12b, 1
	jne	.label_233
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_236
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
.label_233:
	mov	eax, r14d
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40485a
	.globl sub_40485a
	.type sub_40485a, @function
sub_40485a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404860

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
	jns	.label_237
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
.label_237:
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
	#Procedure 0x4048c8
	.globl sub_4048c8
	.type sub_4048c8, @function
sub_4048c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048d0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_238:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_238
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x4048f1
	.globl sub_4048f1
	.type sub_4048f1, @function
sub_4048f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404900

	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:
	mov	rax, qword ptr [rdi + 0x60]
	ret	
	.section	.text
	.align	32
	#Procedure 0x404905
	.globl sub_404905
	.type sub_404905, @function
sub_404905:

	nop	word ptr cs:[rax + rax]
.label_240:
	cmp	edi, 0x7f
	je	.label_239
	xor	eax, eax
	jmp	.label_239
	.section	.text
	.align	32
	#Procedure 0x404919
	.globl sub_404919
	.type sub_404919, @function
sub_404919:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404928
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_240
.label_239:
	ret	
	.section	.text
	.align	32
	#Procedure 0x404930

	.globl restorecon
	.type restorecon, @function
restorecon:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	pop	rax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40493e
	.globl sub_40493e
	.type sub_40493e, @function
sub_40493e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404940

	.globl should_dereference
	.type should_dereference, @function
should_dereference:
	mov	ecx, dword ptr [rdi + 4]
	mov	al, 1
	cmp	ecx, 4
	je	.label_241
	cmp	ecx, 3
	sete	al
	and	al, sil
.label_241:
	ret	
	.section	.text
	.align	32
	#Procedure 0x404954
	.globl sub_404954
	.type sub_404954, @function
sub_404954:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404960
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	ecx, esi
	rol	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x404969
	.globl sub_404969
	.type sub_404969, @function
sub_404969:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404970

	.globl qcopy_acl
	.type qcopy_acl, @function
qcopy_acl:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, ecx
	mov	rbx, rdx
	lea	rcx, [rsp]
	mov	edx, r8d
	call	get_permissions
	mov	ebp, 0xfffffffe
	test	eax, eax
	jne	.label_242
	lea	r15, [rsp]
	mov	rdi, r15
	mov	rsi, rbx
	mov	edx, r14d
	call	set_permissions
	mov	ebp, eax
	mov	rdi, r15
	call	free_permission_context
.label_242:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4049bb
	.globl sub_4049bb
	.type sub_4049bb, @function
sub_4049bb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049c0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4049ca
	.globl sub_4049ca
	.type sub_4049ca, @function
sub_4049ca:

	nop	word ptr [rax + rax]
.label_243:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4049d5
	.globl sub_4049d5
	.type sub_4049d5, @function
sub_4049d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049e1

	.globl find_backup_file_name
	.type find_backup_file_name, @function
find_backup_file_name:
	push	rax
	xor	ecx, ecx
	call	backupfile_internal
	test	rax, rax
	je	.label_243
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4049f0

	.globl backupfile_internal
	.type backupfile_internal, @function
backupfile_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	dword ptr [rsp + 0x24], ecx
	mov	ebx, edx
	mov	r13, rsi
	mov	dword ptr [rsp + 0x20], edi
	mov	rdi, r13
	call	last_component
	mov	rbp, rax
	sub	rbp, r13
	mov	rdi, rax
	call	strlen
	mov	r12, rax
	add	r12, rbp
	cmp	qword ptr [word ptr [rip + simple_backup_suffix]],  0
	jne	.label_253
	xor	edi, edi
	call	set_simple_backup_suffix
.label_253:
	mov	rdi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	call	strlen
	inc	rax
	cmp	rax, 9
	mov	ecx, 9
	mov	qword ptr [rsp + 0x28], rax
	cmovae	rcx, rax
	lea	rdi, [r12 + rcx + 1]
	mov	qword ptr [rsp + 0x30], rdi
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rsp + 0x10], rcx
	xor	eax, eax
	test	rcx, rcx
	je	.label_250
	mov	qword ptr [rsp + 0x18], 0
	mov	dword ptr [rsp + 0xc], 0xffffffff
	mov	qword ptr [rsp + 0x40], 0
	lea	rax, [r12 + 1]
	mov	qword ptr [rsp + 0x38], rax
	nop	
.label_251:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x38]
	call	memcpy
	cmp	ebx, 1
	jne	.label_256
	mov	rdi, qword ptr [rsp + 0x10]
	add	rdi, r12
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdx, qword ptr [rsp + 0x28]
	call	memcpy
	mov	ebx, 1
	jmp	.label_249
	.section	.text
	.align	32
	#Procedure 0x404ad7
	.globl sub_404ad7
	.type sub_404ad7, @function
sub_404ad7:

	nop	word ptr [rax + rax]
.label_256:
	lea	rax, [rsp + 0xc]
	mov	qword ptr [rsp], rax
	mov	edi, dword ptr [rsp + 0x20]
	lea	rsi, [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rcx, r12
	mov	r8, rbp
	lea	r9, [rsp + 0x18]
	call	numbered_backup
	cmp	eax, 1
	je	.label_246
	cmp	eax, 2
	je	.label_247
	cmp	eax, 3
	jne	.label_249
	jmp	.label_245
.label_247:
	cmp	ebx, 2
	jne	.label_246
	mov	rdi, qword ptr [rsp + 0x10]
	add	rdi, r12
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdx, qword ptr [rsp + 0x28]
	call	memcpy
	mov	ebx, 1
.label_246:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	edx, dword ptr [rsp + 0xc]
	mov	rsi, r12
	lea	rcx, [rsp + 0x40]
	call	check_extension
.label_249:
	mov	eax, dword ptr [rsp + 0x24]
	test	al, al
	je	.label_244
	cmp	dword ptr [rsp + 0xc], 0
	jns	.label_252
	mov	dword ptr [rsp + 0xc], 0xffffff9c
	xor	ebp, ebp
.label_252:
	xor	r8d, r8d
	cmp	ebx, 1
	setne	r8b
	mov	edx, dword ptr [rsp + 0xc]
	mov	rcx, qword ptr [rsp + 0x10]
	add	rcx, rbp
	mov	edi, 0xffffff9c
	mov	rsi, r13
	call	renameatu
	test	eax, eax
	je	.label_244
	call	__errno_location
	mov	r15, rax
	mov	r14d, dword ptr [r15]
	cmp	r14d, 0x11
	je	.label_251
	mov	rdi, qword ptr [rsp + 0x18]
	test	rdi, rdi
	je	.label_254
	call	closedir
.label_254:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	mov	dword ptr [r15], r14d
	jmp	.label_248
.label_244:
	mov	rdi, qword ptr [rsp + 0x18]
	test	rdi, rdi
	je	.label_255
	call	closedir
.label_255:
	mov	rax, qword ptr [rsp + 0x10]
	jmp	.label_250
.label_245:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0xc
.label_248:
	xor	eax, eax
.label_250:
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
	#Procedure 0x404c03
	.globl sub_404c03
	.type sub_404c03, @function
sub_404c03:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c10
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
	#Procedure 0x404c26
	.globl sub_404c26
	.type sub_404c26, @function
sub_404c26:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c30

	.globl punch_hole
	.type punch_hole, @function
punch_hole:
	push	rbp
	push	rbx
	push	rax
	mov	rax, rdx
	mov	rcx, rsi
	mov	esi, 3
	mov	rdx, rcx
	mov	rcx, rax
	call	fallocate
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_257
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	edi, ebp
	call	is_ENOTSUP
	xor	ecx, ecx
	cmp	ebp, 0x26
	cmove	ebx, ecx
	test	al, al
	cmovne	ebx, ecx
.label_257:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c73
	.globl sub_404c73
	.type sub_404c73, @function
sub_404c73:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c80

	.globl direntry_cmp_name
	.type direntry_cmp_name, @function
direntry_cmp_name:
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	jmp	strcmp
	.section	.text
	.align	32
	#Procedure 0x404c8b
	.globl sub_404c8b
	.type sub_404c8b, @function
sub_404c8b:

	nop	dword ptr [rax + rax]
.label_259:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_258
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_258:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404cc4
	.globl sub_404cc4
	.type sub_404cc4, @function
sub_404cc4:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404cc6

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
	jne	.label_260
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_260
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_259
.label_260:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	32
	#Procedure 0x404d00

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	je	.label_261
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_262]]
	jbe	.label_263
	movss	xmm1,  dword ptr [dword ptr [rip + label_266]]
	ucomiss	xmm1, xmm0
	jbe	.label_263
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_265]]
	jbe	.label_263
	movss	xmm1, dword ptr [rcx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_263
	addss	xmm1,  dword ptr [dword ptr [rip + label_262]]
	ucomiss	xmm0, xmm1
	jbe	.label_263
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_264]]
	ucomiss	xmm2, xmm0
	jb	.label_263
	ucomiss	xmm0, xmm1
	ja	.label_261
.label_263:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_261:
	ret	
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

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	mov	rax, qword ptr [rdi + 0x58]
	mov	rdx, qword ptr [rdi + 0x60]
	ret	
	.section	.text
	.align	32
	#Procedure 0x404d89
	.globl sub_404d89
	.type sub_404d89, @function
sub_404d89:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404d90

	.globl fdutimens
	.type fdutimens, @function
fdutimens:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x100
	mov	r14, rsi
	mov	r15d, edi
	xor	ebp, ebp
	test	rdx, rdx
	lea	rax, [rsp + 0x50]
	cmove	rax, rdx
	mov	qword ptr [rsp + 8], rax
	je	.label_270
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movups	xmm0, xmmword ptr [rdx + 0x10]
	movaps	xmmword ptr [rsp + 0x60], xmm0
	mov	rdi, qword ptr [rsp + 8]
	call	validate_timespec
	mov	ebp, eax
	mov	ebx, 0xffffffff
	test	ebp, ebp
	js	.label_278
.label_270:
	test	r15d, r15d
	jns	.label_284
	test	r14, r14
	jne	.label_284
	call	__errno_location
	mov	dword ptr [rax], 9
	mov	ebx, 0xffffffff
.label_278:
	mov	eax, ebx
	add	rsp, 0x100
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_284:
	cmp	dword ptr [dword ptr [rip + utimensat_works_really]],  0
	js	.label_269
	cmp	ebp, 2
	jne	.label_275
	lea	rsi, [rsp + 0x70]
	test	r15d, r15d
	js	.label_277
	mov	edi, r15d
	call	fstat
	jmp	.label_283
.label_277:
	mov	rdi, r14
	call	stat
.label_283:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_278
	mov	rbx, qword ptr [rsp + 8]
	cmp	qword ptr [rbx + 8], 0x3ffffffe
	jne	.label_285
	lea	rdi, [rsp + 0x70]
	call	get_stat_atime
	mov	qword ptr [rbx], rax
	mov	qword ptr [rbx + 8], rdx
	jmp	.label_291
.label_285:
	cmp	qword ptr [rbx + 0x18], 0x3ffffffe
	jne	.label_291
	lea	rdi, [rsp + 0x70]
	call	get_stat_mtime
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx + 0x18], rdx
.label_291:
	inc	ebp
.label_275:
	test	r15d, r15d
	jns	.label_267
	mov	rdx, qword ptr [rsp + 8]
	mov	edi, 0xffffff9c
	xor	ecx, ecx
	mov	rsi, r14
	call	utimensat
	mov	ebx, eax
	test	ebx, ebx
	jle	.label_276
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_279
.label_276:
	je	.label_282
.label_279:
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_282
.label_267:
	test	r15d, r15d
	js	.label_269
	mov	rsi, qword ptr [rsp + 8]
	mov	edi, r15d
	call	futimens
	mov	ebx, eax
	test	ebx, ebx
	jle	.label_288
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_271
.label_282:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  1
	jmp	.label_278
.label_288:
	je	.label_295
.label_271:
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_295
.label_269:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  0xffffffff
	mov	dword ptr [dword ptr [rip + lutimensat_works_really]],  0xffffffff
	test	ebp, ebp
	je	.label_289
	cmp	ebp, 3
	je	.label_272
	lea	rsi, [rsp + 0x70]
	test	r15d, r15d
	js	.label_274
	mov	edi, r15d
	call	fstat
	jmp	.label_280
.label_295:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  1
	jmp	.label_278
.label_274:
	mov	rdi, r14
	call	stat
.label_280:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_278
.label_272:
	cmp	qword ptr [rsp + 8], 0
	je	.label_289
	lea	rdi, [rsp + 0x70]
	lea	rsi, [rsp + 8]
	call	update_timespec
	xor	ebx, ebx
	test	al, al
	jne	.label_278
.label_289:
	mov	rax, qword ptr [rsp + 8]
	xor	ebp, ebp
	test	rax, rax
	je	.label_293
	mov	rax, qword ptr [rax]
	mov	qword ptr [rsp + 0x30], rax
	mov	rsi, qword ptr [rsp + 8]
	movabs	rcx, 0x20c49ba5e353f7cf
	mov	rax, rcx
	imul	qword ptr [rsi + 8]
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 7
	add	rdx, rax
	mov	qword ptr [rsp + 0x38], rdx
	mov	rax, qword ptr [rsi + 0x10]
	mov	qword ptr [rsp + 0x40], rax
	mov	rdx, qword ptr [rsp + 8]
	mov	rax, rcx
	imul	qword ptr [rdx + 0x18]
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 7
	add	rdx, rax
	mov	qword ptr [rsp + 0x48], rdx
	lea	rbp, [rsp + 0x30]
.label_293:
	test	r15d, r15d
	js	.label_290
	xor	ebx, ebx
	xor	esi, esi
	mov	edi, r15d
	mov	rdx, rbp
	call	futimesat
	test	eax, eax
	je	.label_292
	mov	ebx, 0xffffffff
	test	r14, r14
	je	.label_278
	mov	rdi, r14
	mov	rsi, rbp
	call	utimes
	jmp	.label_287
.label_290:
	mov	edi, 0xffffff9c
	mov	rsi, r14
	mov	rdx, rbp
	call	futimesat
.label_287:
	mov	ebx, eax
	jmp	.label_278
.label_292:
	test	rbp, rbp
	je	.label_278
	mov	r12, qword ptr [rbp + 8]
	mov	r14, qword ptr [rbp + 0x18]
	cmp	r12, 0x7a11f
	setg	al
	cmp	r14, 0x7a11f
	setg	cl
	or	cl, al
	cmp	cl, 1
	jne	.label_278
	lea	rsi, [rsp + 0x70]
	mov	edi, r15d
	call	fstat
	test	eax, eax
	jne	.label_278
	lea	rcx, [rbp + 0x10]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rbx, qword ptr [rsp + 0xc8]
	sub	rax, qword ptr [rbp]
	sub	rbx, qword ptr [rbp + 0x10]
	movups	xmm0, xmmword ptr [rbp]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rcx]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	xor	ebp, ebp
	cmp	r12, 0x7a120
	jl	.label_281
	cmp	rax, 1
	jne	.label_281
	lea	rdi, [rsp + 0x70]
	call	get_stat_atime_ns
	xor	ebp, ebp
	test	rax, rax
	jne	.label_281
	lea	rbp, [rsp + 0x10]
	mov	qword ptr [rsp + 0x18], 0
.label_281:
	cmp	r14, 0x7a120
	jl	.label_286
	cmp	rbx, 1
	jne	.label_286
	lea	rdi, [rsp + 0x70]
	call	get_stat_mtime_ns
	test	rax, rax
	je	.label_273
.label_286:
	test	rbp, rbp
	jne	.label_268
	jmp	.label_294
.label_273:
	lea	rbp, [rsp + 0x10]
	mov	qword ptr [rsp + 0x28], 0
.label_268:
	xor	esi, esi
	mov	edi, r15d
	mov	rdx, rbp
	call	futimesat
.label_294:
	xor	ebx, ebx
	jmp	.label_278
	.section	.text
	.align	32
	#Procedure 0x40510e
	.globl sub_40510e
	.type sub_40510e, @function
sub_40510e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405110

	.globl do_copy
	.type do_copy, @function
do_copy:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xd8
	mov	r14, r8
	mov	rbx, rsi
	mov	r12d, edi
	mov	byte ptr [rbp - 0x2a], 0
	mov	al, 1
	cmp	byte ptr [r14 + 0x15], 0
	jne	.label_320
	cmp	byte ptr [r14 + 0x16], 0
	setne	al
.label_320:
	xor	esi, esi
	test	rdx, rdx
	sete	sil
	cmp	esi, r12d
	jge	.label_313
	test	cl, cl
	mov	rcx, r14
	mov	qword ptr [rbp - 0x38], rcx
	je	.label_317
	test	rdx, rdx
	jne	.label_322
	cmp	r12d, 3
	jge	.label_324
	movsxd	rcx, r12d
	mov	rdi, qword ptr [rbx + rcx*8 - 8]
	movzx	ecx, al
	lea	rsi, [rbp - 0xf8]
	lea	rdx, [rbp - 0x2a]
	call	target_directory_operand
.label_301:
	cmp	byte ptr [byte ptr [rip + parents_option]],  1
	je	.label_303
	mov	r14, qword ptr [rbx]
	mov	r15, qword ptr [rbx + 8]
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x16], 0
	je	.label_306
	mov	ebx, dword ptr [rax]
	test	ebx, ebx
	je	.label_306
	mov	rdi, r14
	mov	rsi, r15
	call	strcmp
	test	eax, eax
	jne	.label_306
	mov	al, byte ptr [rbp - 0x2a]
	test	al, al
	jne	.label_306
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0xe0]
	cmp	eax, 0x8000
	jne	.label_306
	mov	edi, 0xffffff9c
	mov	rsi, r15
	mov	edx, ebx
	call	find_backup_file_name
	mov	r15, rax
	mov	rax, qword ptr [rbp - 0x38]
	movups	xmm0, xmmword ptr [rax + 0x40]
	movups	xmmword ptr [word ptr [rip + label_327]],  xmm0
	movups	xmm0, xmmword ptr [rax]
	movups	xmm1, xmmword ptr [rax + 0x10]
	movups	xmm2, xmmword ptr [rax + 0x20]
	movups	xmm3, xmmword ptr [rax + 0x30]
	movups	xmmword ptr [word ptr [rip + label_328]],  xmm3
	movups	xmmword ptr [word ptr [rip + label_329]],  xmm2
	movups	xmmword ptr [word ptr [rip + label_330]],  xmm1
	movups	xmmword ptr [word ptr [rip + do_copy.x_tmp]],  xmm0
	mov	eax, OFFSET FLAT:do_copy.x_tmp
	mov	qword ptr [rbp - 0x38], rax
	mov	dword ptr [dword ptr [rip + do_copy.x_tmp]],  0
.label_306:
	lea	r8, [rbp - 0x40]
	xor	edx, edx
	xor	r9d, r9d
	mov	rdi, r14
	mov	rsi, r15
	mov	rcx, qword ptr [rbp - 0x38]
	call	copy
	mov	byte ptr [rbp - 0x29], al
	jmp	.label_318
.label_303:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_323
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
.label_313:
	xor	edi, edi
	test	r12d, r12d
	jg	.label_302
	mov	esi, OFFSET FLAT:label_305
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
.label_297:
	cmp	r12d, 3
	jl	.label_301
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_316
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rsi, qword ptr [rbx + r15*8 - 8]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
.label_319:
	mov	qword ptr [rbp - 0x60], r15
	mov	rdi, r15
	call	last_component
	mov	r15, rax
	mov	rdi, r15
	call	strlen
	mov	rbx, rax
	mov	r14, rsp
	lea	rdx, [rbx + 1]
	add	rbx, 0x10
	and	rbx, 0xfffffffffffffff0
	mov	r12, r14
	sub	r12, rbx
	mov	rsp, r12
	neg	rbx
	mov	rdi, r12
	mov	rsi, r15
	call	memcpy
	mov	rdi, r12
	call	strip_trailing_slashes
	cmp	byte ptr [r14 + rbx], 0x2e
	jne	.label_315
	cmp	byte ptr [r12 + 1], 0x2e
	jne	.label_315
	cmp	byte ptr [r12 + 2], 0
	je	.label_296
	nop	word ptr cs:[rax + rax]
.label_315:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, r12
	call	file_name_concat
.label_321:
	mov	r15, rax
	mov	r14, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbp - 0x60]
.label_325:
	movzx	edx, byte ptr [rbp - 0x2a]
	xor	r9d, r9d
	mov	rdi, rbx
	mov	rsi, r15
	mov	rcx, r14
	lea	r8, [rbp - 0x2b]
	call	copy
	mov	r12b, al
	and	r12b, byte ptr [rbp - 0x29]
	cmp	byte ptr [byte ptr [rip + parents_option]],  1
	jne	.label_299
	mov	rsi, qword ptr [rbp - 0x50]
	sub	rsi, r15
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdi, r15
	mov	rcx, r14
	call	re_protect
	and	al, r12b
	mov	r12b, al
.label_299:
	mov	eax, r12d
	mov	byte ptr [rbp - 0x29], al
	cmp	byte ptr [byte ptr [rip + parents_option]],  1
	jne	.label_312
	mov	rax, qword ptr [rbp - 0x40]
	test	rax, rax
	je	.label_312
	nop	word ptr cs:[rax + rax]
.label_300:
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rbx, qword ptr [rdi + 0xa0]
	mov	qword ptr [rbp - 0x40], rbx
	call	free
	test	rbx, rbx
	jne	.label_300
.label_312:
	mov	rdi, r15
	call	free
	inc	r13
	mov	r12d, dword ptr [rbp - 0x54]
	cmp	r13d, r12d
	mov	rbx, qword ptr [rbp - 0x68]
	jne	.label_298
.label_318:
	mov	al, byte ptr [rbp - 0x29]
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_296:
	mov	rdi, qword ptr [rbp - 0x48]
	call	xstrdup
	jmp	.label_321
	.section	.text
	.align	32
	#Procedure 0x40544b
	.globl sub_40544b
	.type sub_40544b, @function
sub_40544b:

	nop	word ptr cs:[rax + rax]
.label_317:
	test	rdx, rdx
	jne	.label_304
	cmp	r12d, 2
	jl	.label_301
	movsxd	r15, r12d
	mov	rdi, qword ptr [rbx + r15*8 - 8]
	movzx	ecx, al
	lea	rsi, [rbp - 0xf8]
	lea	rdx, [rbp - 0x2a]
	call	target_directory_operand
	test	al, al
	je	.label_297
	dec	r15
	mov	rdx, qword ptr [rbx + r15*8]
	test	rdx, rdx
	je	.label_301
	dec	r12d
.label_304:
	cmp	r12d, 2
	mov	qword ptr [rbp - 0x48], rdx
	jl	.label_309
	mov	rdi, r14
	call	dest_info_init
	mov	rdi, r14
	call	src_info_init
	jmp	.label_310
.label_302:
	mov	esi, OFFSET FLAT:label_311
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rsi, qword ptr [rbx]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x4054f4
	.globl sub_4054f4
	.type sub_4054f4, @function
sub_4054f4:

	nop	word ptr cs:[rax + rax]
.label_309:
	mov	byte ptr [rbp - 0x29], 1
	cmp	r12d, 1
	jne	.label_318
.label_310:
	mov	byte ptr [rbp - 0x29], 1
	xor	r13d, r13d
	mov	qword ptr [rbp - 0x68], rbx
	mov	dword ptr [rbp - 0x54], r12d
	jmp	.label_298
.label_322:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_308
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_298:
	mov	qword ptr [rbp - 0x50], 0
	mov	r15, qword ptr [rbx + r13*8]
	cmp	byte ptr [byte ptr [rip + remove_trailing_slashes]],  1
	jne	.label_314
	mov	rdi, r15
	call	strip_trailing_slashes
.label_314:
	mov	al,  byte ptr [byte ptr [rip + parents_option]]
	test	al, al
	je	.label_319
	mov	rdi, r15
	call	strlen
	mov	rbx, rsp
	lea	rdx, [rax + 1]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	sub	rbx, rax
	mov	rsp, rbx
	mov	rdi, rbx
	mov	rsi, r15
	call	memcpy
	mov	rdi, rbx
	call	strip_trailing_slashes
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rbx
	lea	rdx, [rbp - 0x50]
	call	file_name_concat
	mov	rbx, r15
	mov	r15, rax
	mov	rsi, qword ptr [rbp - 0x50]
	sub	rsi, r15
	xor	r12d, r12d
	cmp	byte ptr [r14 + 0x2e], 0
	mov	edx, 0
	mov	eax, OFFSET FLAT:label_307
	cmovne	rdx, rax
	mov	rdi, r15
	lea	rcx, [rbp - 0x40]
	lea	r8, [rbp - 0x2a]
	mov	r9, r14
	call	make_dir_parents_private
	test	al, al
	jne	.label_325
	jmp	.label_299
	.section	.text
	.align	32
	#Procedure 0x4055f1
	.globl sub_4055f1
	.type sub_4055f1, @function
sub_4055f1:

	nop	
.label_324:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_326
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rsi, qword ptr [rbx + 0x10]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x405630

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, r8
	mov	r12, rsi
	mov	r15, rdi
	test	rdx, rdx
	mov	ebp, OFFSET FLAT:raw_hasher
	cmovne	rbp, rdx
	test	rcx, rcx
	mov	r14d, OFFSET FLAT:raw_comparator
	cmovne	r14, rcx
	mov	edi, 0x50
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_332
	mov	qword ptr [rsp], rbx
	test	r12, r12
	mov	ebx, OFFSET FLAT:default_tuning
	cmovne	rbx, r12
	mov	qword ptr [r13 + 0x28], rbx
	mov	rdi, r13
	call	check_tuning
	test	al, al
	je	.label_331
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	je	.label_331
	mov	esi, 0x10
	mov	rdi, rax
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_331
	mov	rcx, qword ptr [r13 + 0x10]
	shl	rcx, 4
	add	rax, rcx
	mov	qword ptr [r13 + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r13 + 0x18], xmm0
	mov	qword ptr [r13 + 0x30], rbp
	mov	qword ptr [r13 + 0x38], r14
	mov	rax, qword ptr [rsp]
	mov	qword ptr [r13 + 0x40], rax
	mov	qword ptr [r13 + 0x48], 0
	mov	rax, r13
	jmp	.label_332
.label_331:
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_332:
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
	#Procedure 0x40570c
	.globl sub_40570c
	.type sub_40570c, @function
sub_40570c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405710

	.globl randint_new
	.type randint_new, @function
randint_new:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x18
	call	xmalloc
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 8], xmm0
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40572a
	.globl sub_40572a
	.type sub_40572a, @function
sub_40572a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405730

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	push	rax
	call	randread_new
	test	rax, rax
	je	.label_333
	mov	rdi, rax
	pop	rax
	jmp	randint_new
.label_333:
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405745
	.globl sub_405745
	.type sub_405745, @function
sub_405745:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405750

	.globl extent_copy
	.type extent_copy, @function
extent_copy:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rsp + 0x20], r9
	mov	rbp, r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x28], rdx
	mov	dword ptr [rsp + 0xc], esi
	mov	rbx, qword ptr [rsp + 0xc8]
	lea	r14, [rsp + 0x48]
	mov	dword ptr [rsp + 0x14], edi
	mov	rsi, r14
	call	extent_scan_init
	mov	byte ptr [rbx], 0
	xor	r12d, r12d
	cmp	dword ptr [rsp + 0xb0], 3
	cmovne	rbp, r12
	mov	qword ptr [rsp + 0x38], rbp
	mov	al, 1
	mov	dword ptr [rsp + 0x10], eax
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	r13d, r13d
.label_347:
	mov	rdi, r14
	call	extent_scan_read
	test	al, al
	je	.label_348
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_352
	mov	r14d, 1
	xor	ecx, ecx
	mov	rsi, qword ptr [rsp + 0x20]
	nop	dword ptr [rax]
.label_358:
	mov	rax, qword ptr [rsp + 0x70]
	lea	rcx, [rcx + rcx*2]
	mov	r15, qword ptr [rax + rcx*8]
	mov	rbx, qword ptr [rax + rcx*8 + 8]
	lea	rax, [rbx + r15]
	cmp	rax, rsi
	jle	.label_360
	cmp	r15, rsi
	cmovg	r15, rsi
	mov	rbx, rsi
	sub	rbx, r15
.label_360:
	mov	rbp, r15
	sub	rbp, r13
	sub	rbp, r12
	je	.label_337
	xor	edx, edx
	mov	edi, dword ptr [rsp + 0x14]
	mov	rsi, r15
	call	lseek
	test	rax, rax
	js	.label_344
	mov	eax, dword ptr [rsp + 0xb0]
	cmp	eax, 1
	jne	.label_364
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, rbp
	call	write_zeros
	test	al, al
	je	.label_350
.label_337:
	xor	ebp, ebp
	jmp	.label_349
	.section	.text
	.align	32
	#Procedure 0x40584e
	.globl sub_40584e
	.type sub_40584e, @function
sub_40584e:

	nop	
.label_364:
	xor	edx, edx
	cmp	eax, 3
	sete	dl
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, qword ptr [rsp + 0xc0]
	mov	rcx, rbp
	call	create_hole
	mov	bpl, 1
	test	al, al
	je	.label_346
.label_349:
	sub	rsp, 8
	mov	r9d, 1
	mov	edi, dword ptr [rsp + 0x1c]
	mov	esi, dword ptr [rsp + 0x14]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r8, qword ptr [rsp + 0x40]
	lea	rax, [rsp + 0x13]
	push	rax
	lea	rax, [rsp + 0x50]
	push	rax
	push	rbx
	push	qword ptr [rsp + 0xe0]
	push	qword ptr [rsp + 0xe0]
	call	sparse_copy
	add	rsp, 0x30
	test	al, al
	je	.label_346
	mov	rdx, qword ptr [rsp + 0x40]
	lea	rdi, [rdx + r15]
	movzx	eax, byte ptr [rsp + 0xb]
	mov	rsi, qword ptr [rsp + 0x20]
	cmp	rdi, rsi
	je	.label_340
	mov	dword ptr [rsp + 0x10], ebp
	mov	ecx, r14d
	inc	r14d
	cmp	rcx, qword ptr [rsp + 0x60]
	mov	r13, r15
	mov	r12, rbx
	jb	.label_358
	mov	qword ptr [rsp + 0x18], rdi
	test	rdx, rdx
	lea	r14, [rsp + 0x48]
	je	.label_336
	mov	dword ptr [rsp + 0x10], eax
	jmp	.label_336
	.section	.text
	.align	32
	#Procedure 0x40590c
	.globl sub_40590c
	.type sub_40590c, @function
sub_40590c:

	nop	dword ptr [rax]
.label_352:
	mov	r15, r13
	mov	rbx, r12
	jmp	.label_336
.label_340:
	mov	qword ptr [rsp + 0x18], rdi
	test	rdx, rdx
	je	.label_339
	mov	bpl, al
.label_339:
	mov	dword ptr [rsp + 0x10], ebp
	mov	byte ptr [rsp + 0x69], 1
	lea	r14, [rsp + 0x48]
.label_336:
	mov	rdi, r14
	call	extent_scan_free
	cmp	byte ptr [rsp + 0x69], 0
	mov	r12, rbx
	mov	r13, r15
	je	.label_347
	jmp	.label_355
.label_344:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_335
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xb8]
	call	quotearg_style
	jmp	.label_334
.label_350:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_362
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0xc0]
	call	quotearg_n_style_colon
.label_334:
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_346:
	lea	rdi, [rsp + 0x48]
	call	extent_scan_free
.label_345:
	xor	r14d, r14d
.label_338:
	mov	eax, r14d
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_348:
	cmp	byte ptr [rsp + 0x69], 0
	je	.label_359
.label_355:
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x18]
	cmp	rsi, rcx
	jl	.label_361
	mov	eax, dword ptr [rsp + 0x10]
	and	al, 1
	je	.label_351
.label_361:
	cmp	dword ptr [rsp + 0xb0], 1
	jne	.label_363
	sub	rcx, rsi
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, rcx
	call	write_zeros
	mov	r14b, 1
	test	al, al
	jne	.label_338
	jmp	.label_342
.label_359:
	cmp	byte ptr [rsp + 0x68], 0
	je	.label_343
	mov	rax, qword ptr [rsp + 0xc8]
	mov	byte ptr [rax], 1
	jmp	.label_345
.label_363:
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, rcx
	call	ftruncate
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x20]
	test	eax, eax
	je	.label_351
.label_342:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_356
	jmp	.label_357
.label_351:
	cmp	dword ptr [rsp + 0xb0], 3
	mov	r14b, 1
	jne	.label_338
	cmp	rsi, rcx
	jge	.label_338
	sub	rcx, rsi
	mov	edi, dword ptr [rsp + 0xc]
	mov	rdx, rcx
	call	punch_hole
	test	eax, eax
	jns	.label_338
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_341
.label_357:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xc0]
	call	quotearg_style
	jmp	.label_353
.label_343:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_354
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0xb8]
	call	quotearg_n_style_colon
.label_353:
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_338
	.section	.text
	.align	32
	#Procedure 0x405b0f
	.globl sub_405b0f
	.type sub_405b0f, @function
sub_405b0f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405b10
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
	#Procedure 0x405b1d
	.globl sub_405b1d
	.type sub_405b1d, @function
sub_405b1d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405b20

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_368
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_374
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	mov	r8, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_378
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_365
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_383
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_375
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_379
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_367
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_369
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_376
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_377
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_370
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_366
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_371
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_381
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_372
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_382
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_384
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_backup_suffix_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_380
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_368:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_373
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
	#Procedure 0x405dcb
	.globl sub_405dcb
	.type sub_405dcb, @function
sub_405dcb:

	nop	dword ptr [rax + rax]
.label_388:
	mov	esi, OFFSET FLAT:label_385
.label_387:
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
	#Procedure 0x405e23

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
	je	.label_388
	mov	esi, OFFSET FLAT:label_386
	jmp	.label_387
.label_389:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405e45

	.globl hash_init
	.type hash_init, @function
hash_init:
	push	rax
	mov	edi, 0x67
	xor	esi, esi
	mov	edx, OFFSET FLAT:src_to_dest_hash
	mov	ecx, OFFSET FLAT:src_to_dest_compare
	mov	r8d, OFFSET FLAT:src_to_dest_free
	call	hash_initialize
	mov	qword ptr [word ptr [rip + src_to_dest]],  rax
	test	rax, rax
	je	.label_389
	pop	rax
	ret	
	.section	.text
	.align	32
	#Procedure 0x405e70
	.globl forget_all
	.type forget_all, @function
forget_all:

	mov	rdi,  qword ptr [word ptr [rip + src_to_dest]]
	jmp	hash_free
	.section	.text
	.align	32
	#Procedure 0x405e7c
	.globl sub_405e7c
	.type sub_405e7c, @function
sub_405e7c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405e80

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
	je	.label_390
	cmp	r15, -2
	jb	.label_390
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_390
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_390:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x405ed6
	.globl sub_405ed6
	.type sub_405ed6, @function
sub_405ed6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ee0

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_391
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_391:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_392
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x18
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_393
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_394
.label_393:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_394:
	mov	ecx, dword ptr [rax]
.label_392:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	32
	#Procedure 0x405f9e
	.globl sub_405f9e
	.type sub_405f9e, @function
sub_405f9e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405fa0

	.globl try_symlink
	.type try_symlink, @function
try_symlink:
	mov	rax, rdi
	mov	rdi, qword ptr [rsi]
	mov	esi, dword ptr [rsi + 8]
	mov	rdx, rax
	jmp	symlinkat
	.section	.text
	.align	32
	#Procedure 0x405fb1
	.globl sub_405fb1
	.type sub_405fb1, @function
sub_405fb1:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405fc0

	.globl errno_unsupported
	.type errno_unsupported, @function
errno_unsupported:
	cmp	edi, 0x5f
	sete	cl
	cmp	edi, 0x3d
	sete	al
	or	al, cl
	ret	
	.section	.text
	.align	32
	#Procedure 0x405fcf
	.globl sub_405fcf
	.type sub_405fcf, @function
sub_405fcf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405fd0

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	ret	
	.section	.text
	.align	32
	#Procedure 0x405fd5
	.globl sub_405fd5
	.type sub_405fd5, @function
sub_405fd5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405fe0

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
	.align	32
	#Procedure 0x405fef
	.globl sub_405fef
	.type sub_405fef, @function
sub_405fef:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405ff0

	.globl set_permissions
	.type set_permissions, @function
set_permissions:
	push	rax
	mov	eax, dword ptr [rdi]
	mov	rdi, rsi
	mov	esi, edx
	mov	edx, eax
	call	chmod_or_fchmod
	neg	eax
	sbb	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406005
	.globl sub_406005
	.type sub_406005, @function
sub_406005:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406010

	.globl close_stdin
	.type close_stdin, @function
close_stdin:
	push	rbp
	push	r14
	push	rbx
	mov	rbx,  qword ptr [word ptr [rip + stdin]]
	mov	rdi, rbx
	call	freadahead
	xor	ebp, ebp
	test	rax, rax
	je	.label_396
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
	test	eax, eax
	jne	.label_396
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fflush
	test	eax, eax
	setne	bpl
.label_396:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	close_stream
	test	bpl, bpl
	jne	.label_395
	test	eax, eax
	jne	.label_395
	pop	rbx
	pop	r14
	pop	rbp
	jmp	close_stdout
.label_395:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_398
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_399
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_12
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	jmp	.label_397
.label_399:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_400
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
.label_397:
	call	close_stdout
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4060e0

	.globl opendirat
	.type opendirat, @function
opendirat:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rcx
	or	edx, 0x90900
	xor	ebx, ebx
	xor	eax, eax
	call	openat_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_402
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_401
	mov	dword ptr [r14], ebp
	jmp	.label_402
.label_401:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_402:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40612f
	.globl sub_40612f
	.type sub_40612f, @function
sub_40612f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x406130

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_403
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_403:
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
	#Procedure 0x4061b3
	.globl sub_4061b3
	.type sub_4061b3, @function
sub_4061b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061c0

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	mov	ecx, esi
	xor	esi, esi
	xor	eax, eax
	mov	edx, ecx
	jmp	fcntl
	.section	.text
	.align	32
	#Procedure 0x4061cd
	.globl sub_4061cd
	.type sub_4061cd, @function
sub_4061cd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4061d0
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	mov	rax, -1
	mov	rdx, -1
	ret	
	.section	.text
	.align	32
	#Procedure 0x4061df
	.globl sub_4061df
	.type sub_4061df, @function
sub_4061df:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4061e0

	.globl shift_left
	.type shift_left, @function
shift_left:
	shl	rdi, 8
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4061e8
	.globl sub_4061e8
	.type sub_4061e8, @function
sub_4061e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061f0

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
	je	.label_407
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r14
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_404:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_405
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_409
	cmp	qword ptr [rsp + 8], -1
	je	.label_410
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_406
	mov	rdi, qword ptr [rsp + 8]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_405
.label_406:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_405
.label_410:
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr [rax + rax]
.label_405:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_404
	jmp	.label_408
.label_407:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_408:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 8]
.label_409:
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
	#Procedure 0x4062ed
	.globl sub_4062ed
	.type sub_4062ed, @function
sub_4062ed:

	nop	dword ptr [rax]
.label_411:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4062f5
	.globl sub_4062f5
	.type sub_4062f5, @function
sub_4062f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406300

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbx
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, rsi
	mov	rsi, rax
	call	qword ptr [rbx + 0x30]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_411
	shl	rax, 4
	add	rax, qword ptr [rbx]
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406320

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_412
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_412
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_412:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x406346
	.globl sub_406346
	.type sub_406346, @function
sub_406346:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406350

	.globl readisaac
	.type readisaac, @function
readisaac:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	r14, rdi
	mov	r12, qword ptr [r14]
	lea	r13, [r14 + 0x820]
	mov	rsi, r13
	sub	rsi, r12
	add	rsi, 0x800
	cmp	r12, r15
	jae	.label_415
	lea	rbp, [r14 + 8]
	mov	rdi, rbx
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	sub	r15, r12
	xor	r12d, r12d
	nop	dword ptr [rax + rax]
.label_416:
	cmp	r15, 0x800
	jb	.label_413
	mov	rdi, rbp
	mov	rsi, rbx
	call	isaac_refill
	add	rbx, 0x800
	add	r15, -0x800
	jne	.label_416
	jmp	.label_414
.label_413:
	mov	rdi, rbp
	mov	rsi, r13
	call	isaac_refill
	mov	r12d, 0x800
	mov	rsi, r13
.label_415:
	mov	rdi, rbx
	mov	rdx, r15
	call	memcpy
	sub	r12, r15
.label_414:
	mov	qword ptr [r14], r12
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
	#Procedure 0x4063fa
	.globl sub_4063fa
	.type sub_4063fa, @function
sub_4063fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406400

	.globl direntry_cmp_inode
	.type direntry_cmp_inode, @function
direntry_cmp_inode:
	mov	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	cmp	rax, qword ptr [rsi + 8]
	seta	cl
	mov	eax, 0xffffffff
	cmovae	eax, ecx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406416
	.globl sub_406416
	.type sub_406416, @function
sub_406416:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406420
	.globl getcon
	.type getcon, @function
getcon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406433
	.globl sub_406433
	.type sub_406433, @function
sub_406433:

	nop	word ptr cs:[rax + rax]
.label_423:
	movzx	eax, di
	cmp	eax, 0x6000
	je	.label_417
	cmp	eax, 0x4000
	jne	.label_418
	mov	al, 0x64
	ret	
.label_422:
	mov	al, 0x2d
	movzx	ecx, di
	cmp	ecx, 0x8000
	je	.label_420
	cmp	ecx, 0xa000
	je	.label_419
	cmp	ecx, 0xc000
	jne	.label_418
	mov	al, 0x73
	ret	
.label_419:
	mov	al, 0x6c
	ret	
	.section	.text
	.align	32
	#Procedure 0x406477
	.globl sub_406477
	.type sub_406477, @function
sub_406477:

	nop	dword ptr [rax + rax]
.label_421:
	mov	al, 0x70
	ret	
	.section	.text
	.align	32
	#Procedure 0x40647f

	.globl ftypelet
	.type ftypelet, @function
ftypelet:
	and	edi, 0xfffff000
	movsx	eax, di
	cmp	eax, 0xfff
	jle	.label_422
	cmp	eax, 0x3fff
	jg	.label_423
	movzx	eax, di
	cmp	eax, 0x1000
	je	.label_421
	cmp	eax, 0x2000
	jne	.label_418
	mov	al, 0x63
	ret	
.label_417:
	mov	al, 0x62
	ret	
.label_418:
	mov	al, 0x3f
.label_420:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4064b0

	.globl create_hole
	.type create_hole, @function
create_hole:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbx, rcx
	mov	r12d, edx
	mov	r14, rsi
	mov	ebp, edi
	mov	edx, 1
	mov	rsi, rbx
	call	lseek
	test	rax, rax
	js	.label_424
	mov	r15b, 1
	test	r12b, r12b
	je	.label_425
	sub	rax, rbx
	mov	edi, ebp
	mov	rsi, rax
	mov	rdx, rbx
	call	punch_hole
	test	eax, eax
	jns	.label_425
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_341
	jmp	.label_426
.label_424:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_335
.label_426:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_425:
	mov	eax, r15d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40654c
	.globl sub_40654c
	.type sub_40654c, @function
sub_40654c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406550

	.globl backup_file_rename
	.type backup_file_rename, @function
backup_file_rename:
	mov	ecx, 1
	jmp	backupfile_internal
	.section	.text
	.align	32
	#Procedure 0x40655a
	.globl sub_40655a
	.type sub_40655a, @function
sub_40655a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406560

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40656e
	.globl sub_40656e
	.type sub_40656e, @function
sub_40656e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x406570

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
	js	.label_430
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_433
	cmp	r12d, 0x7fffffff
	je	.label_428
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
	jne	.label_431
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_431:
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
.label_433:
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
	jbe	.label_429
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_432
.label_429:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_427
	mov	rdi, r14
	call	free
.label_427:
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
.label_432:
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
.label_430:
	call	abort
.label_428:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40672d
	.globl sub_40672d
	.type sub_40672d, @function
sub_40672d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406730

	.globl validate_timespec
	.type validate_timespec, @function
validate_timespec:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, 0x3b9aca00
	jb	.label_434
	and	rax, 0xfffffffffffffffe
	cmp	rax, 0x3ffffffe
	jne	.label_438
.label_434:
	mov	rax, qword ptr [rdi + 0x18]
	cmp	rax, 0x3b9aca00
	jb	.label_435
	and	rax, 0xfffffffffffffffe
	cmp	rax, 0x3ffffffe
	je	.label_435
.label_438:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 0xffffffff
	add	rsp, 8
	ret	
.label_435:
	mov	rax, qword ptr [rdi + 8]
	and	rax, 0xfffffffffffffffe
	xor	edx, edx
	cmp	rax, 0x3ffffffe
	mov	ecx, 0
	jne	.label_436
	mov	qword ptr [rdi], 0
	xor	ecx, ecx
	cmp	qword ptr [rdi + 8], 0x3ffffffe
	sete	cl
	mov	edx, 1
.label_436:
	mov	rax, qword ptr [rdi + 0x18]
	and	rax, 0xfffffffffffffffe
	cmp	rax, 0x3ffffffe
	jne	.label_437
	mov	qword ptr [rdi + 0x10], 0
	xor	eax, eax
	cmp	qword ptr [rdi + 0x18], 0x3ffffffe
	sete	al
	add	ecx, eax
	mov	edx, 1
.label_437:
	xor	eax, eax
	cmp	ecx, 1
	sete	al
	add	eax, edx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4067dd
	.globl sub_4067dd
	.type sub_4067dd, @function
sub_4067dd:

	nop	dword ptr [rax]
.label_443:
	add	r14, 0x10
.label_442:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_446
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_443
	nop	word ptr cs:[rax + rax]
.label_440:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_440
	jmp	.label_443
.label_446:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_444
	nop	dword ptr [rax]
.label_448:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_448
.label_444:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, r15
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x406846
	.globl sub_406846
	.type sub_406846, @function
sub_406846:

	nop	word ptr cs:[rax + rax]
.label_445:
	mov	r14, qword ptr [r15]
	jmp	.label_442
	.section	.text
	.align	32
	#Procedure 0x406855
	.globl sub_406855
	.type sub_406855, @function
sub_406855:

	nop	word ptr [rax + rax]
.label_441:
	add	r14, 0x10
.label_447:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_445
	cmp	qword ptr [r14], 0
	je	.label_441
	test	r14, r14
	je	.label_441
	mov	rbx, r14
	nop	dword ptr [rax + rax]
.label_439:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_439
	jmp	.label_441
	.section	.text
	.align	32
	#Procedure 0x406890

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_445
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_445
	mov	r14, qword ptr [r15]
	jmp	.label_447
	.section	.text
	.align	32
	#Procedure 0x4068ab
	.globl sub_4068ab
	.type sub_4068ab, @function
sub_4068ab:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4068b0

	.globl opendir_safer
	.type opendir_safer, @function
opendir_safer:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	call	opendir
	mov	r14, rax
	xor	ebx, ebx
	test	r14, r14
	je	.label_452
	mov	rdi, r14
	call	dirfd
	mov	ecx, eax
	cmp	ecx, 2
	ja	.label_450
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ecx
	call	rpl_fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_449
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	call	__errno_location
	mov	r15d, dword ptr [rax]
	test	rbx, rbx
	jne	.label_453
	mov	edi, ebp
	call	close
	jmp	.label_451
.label_449:
	call	__errno_location
	mov	r15d, dword ptr [rax]
.label_451:
	xor	ebx, ebx
.label_453:
	mov	rdi, r14
	call	closedir
	call	__errno_location
	mov	dword ptr [rax], r15d
.label_452:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406936
	.globl sub_406936
	.type sub_406936, @function
sub_406936:

	nop	dword ptr [rax + rax]
.label_450:
	mov	rbx, r14
	jmp	.label_452
	.section	.text
	.align	32
	#Procedure 0x406940

	.globl triple_compare
	.type triple_compare, @function
triple_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_454
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_455
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	same_name
	add	rsp, 8
	ret	
.label_454:
	xor	eax, eax
	ret	
.label_455:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40696b
	.globl sub_40696b
	.type sub_40696b, @function
sub_40696b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406970

	.globl samedir_template
	.type samedir_template, @function
samedir_template:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	call	last_component
	mov	rbx, rax
	sub	rbx, r15
	lea	rdi, [rbx + 9]
	cmp	rdi, 0x101
	jb	.label_456
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_457
.label_456:
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	__mempcpy_chk
	movabs	rcx, 0x5858585858587543
	mov	qword ptr [rax], rcx
	mov	byte ptr [rax + 8], 0
	mov	rax, r14
.label_457:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4069d1
	.globl sub_4069d1
	.type sub_4069d1, @function
sub_4069d1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4069e0

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12d, edx
	mov	rbp, rsi
	mov	r14, rdi
	mov	r15, qword ptr [rbp]
	mov	al, 1
	cmp	r15, qword ptr [rbp + 8]
	jae	.label_463
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_460:
	cmp	qword ptr [r15], 0
	je	.label_459
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	je	.label_462
	nop	word ptr cs:[rax + rax]
.label_466:
	mov	r13, qword ptr [rbx]
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rax], 0
	je	.label_467
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	jmp	.label_458
	.section	.text
	.align	32
	#Procedure 0x406a56
	.globl sub_406a56
	.type sub_406a56, @function
sub_406a56:

	nop	word ptr cs:[rax + rax]
.label_467:
	mov	qword ptr [rax], r13
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	free_entry
.label_458:
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_466
.label_462:
	mov	r13, qword ptr [r15]
	mov	qword ptr [r15 + 8], 0
	test	r12b, r12b
	mov	rbp, qword ptr [rsp]
	jne	.label_459
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbx, rax
	cmp	qword ptr [rbx], 0
	je	.label_461
	mov	rdi, r14
	call	allocate_entry
	test	rax, rax
	je	.label_464
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbx + 8], rax
	jmp	.label_465
.label_461:
	mov	qword ptr [rbx], r13
	inc	qword ptr [r14 + 0x18]
.label_465:
	mov	qword ptr [r15], 0
	dec	qword ptr [rbp + 0x18]
.label_459:
	add	r15, 0x10
	cmp	r15, qword ptr [rbp + 8]
	jb	.label_460
	mov	al, 1
.label_463:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_464:
	xor	eax, eax
	jmp	.label_463
	.section	.text
	.align	32
	#Procedure 0x406af5
	.globl sub_406af5
	.type sub_406af5, @function
sub_406af5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b00
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x406b0a
	.globl sub_406b0a
	.type sub_406b0a, @function
sub_406b0a:

	nop	word ptr [rax + rax]
.label_472:
	mov	esi, OFFSET FLAT:label_468
.label_470:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	mov	esi, r15d
	mov	rdx, rbp
	call	error
.label_471:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406b42
	.globl sub_406b42
	.type sub_406b42, @function
sub_406b42:

	nop	
	.section	.text
	.align	32
	#Procedure 0x406b44

	.globl randread_error
	.type randread_error, @function
randread_error:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_471
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	jne	.label_472
	mov	esi, OFFSET FLAT:label_469
	jmp	.label_470
	.section	.text
	.align	32
	#Procedure 0x406b70

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_474:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_473
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_474
.label_473:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406b96
	.globl sub_406b96
	.type sub_406b96, @function
sub_406b96:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ba0

	.globl randread_new
	.type randread_new, @function
randread_new:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	rbx, rdi
	test	r15, r15
	je	.label_475
	test	rbx, rbx
	je	.label_477
	mov	esi, OFFSET FLAT:label_478
	mov	rdi, rbx
	call	fopen_safer
	mov	r12, rax
	xor	r14d, r14d
	test	r12, r12
	je	.label_476
	mov	rdi, r12
	mov	rsi, rbx
	call	simple_new
	mov	r14, rax
	lea	rsi, [r14 + 0x18]
	cmp	r15, 0x1000
	mov	ecx, 0x1000
	cmovbe	rcx, r15
	xor	edx, edx
	mov	rdi, r12
	call	setvbuf
	jmp	.label_476
.label_475:
	xor	edi, edi
	xor	esi, esi
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	simple_new
.label_477:
	xor	edi, edi
	mov	rsi, rbx
	call	simple_new
	mov	r14, rax
	mov	qword ptr [r14 + 0x18], 0
	mov	rbx, r14
	add	rbx, 0x20
	mov	rdi, rbx
	mov	rsi, r15
	call	get_nonce
	mov	rdi, rbx
	call	isaac_seed
.label_476:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x406c4d
	.globl sub_406c4d
	.type sub_406c4d, @function
sub_406c4d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406c50

	.globl simple_new
	.type simple_new, @function
simple_new:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	edi, 0x1038
	call	xmalloc
	mov	qword ptr [rax], rbx
	mov	qword ptr [word ptr [rax + 8]], OFFSET FLAT:randread_error
	mov	qword ptr [rax + 0x10], r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x406c7b
	.globl sub_406c7b
	.type sub_406c7b, @function
sub_406c7b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c80

	.globl gettime
	.type gettime, @function
gettime:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	clock_gettime
	.section	.text
	.align	32
	#Procedure 0x406c8d
	.globl sub_406c8d
	.type sub_406c8d, @function
sub_406c8d:

	nop	dword ptr [rax]
.label_483:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_479
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406cb0
	.globl sub_406cb0
	.type sub_406cb0, @function
sub_406cb0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406cbf

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_483
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_481
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_484
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_481
	mov	esi, OFFSET FLAT:label_482
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_480
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_480:
	mov	rbx, r14
.label_481:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x406d40
	.globl string_to_security_class
	.type string_to_security_class, @function
string_to_security_class:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406d50

	.globl same_name
	.type same_name, @function
same_name:
	mov	rax, rsi
	mov	rcx, rdi
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	rsi, rcx
	mov	rcx, rax
	jmp	same_nameat
	.section	.text
	.align	32
	#Procedure 0x406d68
	.globl sub_406d68
	.type sub_406d68, @function
sub_406d68:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d70

	.globl same_nameat
	.type same_nameat, @function
same_nameat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x138
	mov	r15, rcx
	mov	dword ptr [rsp + 0xc], edx
	mov	r13, rsi
	mov	r12d, edi
	mov	rdi, r13
	call	last_component
	mov	rbx, rax
	mov	rdi, r15
	call	last_component
	mov	rbp, rax
	mov	rdi, rbx
	call	base_len
	mov	r14, rax
	mov	rdi, rbp
	call	base_len
	cmp	r14, rax
	jne	.label_490
	mov	qword ptr [rsp + 0x10], r15
	mov	r15d, dword ptr [rsp + 0xc]
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, rax
	call	memcmp
	test	eax, eax
	je	.label_486
.label_490:
	xor	ebp, ebp
.label_488:
	mov	eax, ebp
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_486:
	mov	rdi, r13
	call	dir_name
	mov	rbp, rax
	lea	rdx, [rsp + 0xa8]
	mov	ecx, 0x100
	mov	edi, r12d
	mov	rsi, rbp
	call	fstatat
	test	eax, eax
	je	.label_489
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_12
	xor	eax, eax
	mov	rcx, rbp
	call	error
.label_489:
	mov	rdi, rbp
	call	free
	mov	rdi, qword ptr [rsp + 0x10]
	call	dir_name
	mov	rbx, rax
	lea	rdx, [rsp + 0x18]
	mov	ecx, 0x100
	mov	edi, r15d
	mov	rsi, rbx
	call	fstatat
	test	eax, eax
	je	.label_487
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_12
	xor	eax, eax
	mov	rcx, rbx
	call	error
.label_487:
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_491
	mov	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [rsp + 0x18]
	sete	bpl
	jmp	.label_485
.label_491:
	xor	ebp, ebp
.label_485:
	mov	rdi, rbx
	call	free
	jmp	.label_488
	.section	.text
	.align	32
	#Procedure 0x406eaa
	.globl sub_406eaa
	.type sub_406eaa, @function
sub_406eaa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406eb0
	.globl getfscreatecon
	.type getfscreatecon, @function
getfscreatecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406ec3
	.globl sub_406ec3
	.type sub_406ec3, @function
sub_406ec3:

	nop	word ptr cs:[rax + rax]
.label_493:
	mov	ecx, 1
.label_492:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x406ee0
	.globl sub_406ee0
	.type sub_406ee0, @function
sub_406ee0:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ee5

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_493
	test	rsi, rsi
	mov	ecx, 1
	je	.label_492
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_492
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406f20

	.globl ind
	.type ind, @function
ind:
	and	esi, 0x7f8
	mov	rax, qword ptr [rdi + rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x406f2b
	.globl sub_406f2b
	.type sub_406f2b, @function
sub_406f2b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406f30

	.globl set_owner
	.type set_owner, @function
set_owner:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	ebx, edx
	mov	r14, rsi
	mov	r15, rdi
	mov	ebp, dword ptr [rcx + 0x1c]
	mov	r12d, dword ptr [rcx + 0x20]
	test	r8b, r8b
	jne	.label_498
	cmp	byte ptr [r15 + 0x1e], 0
	je	.label_500
	mov	edx, dword ptr [r9 + 0x18]
	jmp	.label_502
.label_500:
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_503
	cmp	byte ptr [r15 + 0x2b], 0
	je	.label_498
.label_503:
	mov	edx, dword ptr [r9 + 0x18]
	cmp	byte ptr [r15 + 0x1e], 0
	jne	.label_502
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_508
.label_502:
	add	rcx, 0x18
.label_507:
	mov	eax, dword ptr [rcx]
	mov	ecx, eax
	or	ecx, 0xe00
	xor	ecx, 0x1ff
	and	ecx, edx
	test	cx, 0xfff
	je	.label_498
	and	edx, eax
	and	edx, 0x1c0
	mov	rdi, r14
	mov	esi, ebx
	call	qset_acl
	test	eax, eax
	je	.label_498
	mov	rdi, r15
	call	owner_failure_ok
	test	al, al
	jne	.label_496
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_506
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_496:
	movzx	eax, byte ptr [r15 + 0x24]
	neg	eax
	jmp	.label_494
.label_498:
	cmp	ebx, -1
	je	.label_497
	mov	edi, ebx
	mov	esi, ebp
	mov	edx, r12d
	call	fchown
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_494
	call	__errno_location
	mov	rbp, rax
	mov	eax, dword ptr [rbp]
	cmp	eax, 0x16
	je	.label_504
	cmp	eax, 1
	jne	.label_495
.label_504:
	mov	r13d, dword ptr [rbp]
	mov	esi, 0xffffffff
	mov	edi, ebx
	mov	edx, r12d
	call	fchown
	mov	dword ptr [rbp], r13d
	jmp	.label_495
.label_497:
	mov	rdi, r14
	mov	esi, ebp
	mov	edx, r12d
	call	lchown
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_494
	call	__errno_location
	mov	rbx, rax
	mov	eax, dword ptr [rbx]
	cmp	eax, 0x16
	je	.label_505
	cmp	eax, 1
	jne	.label_495
.label_505:
	mov	ebp, dword ptr [rbx]
	mov	esi, 0xffffffff
	mov	rdi, r14
	mov	edx, r12d
	call	lchown
	mov	dword ptr [rbx], ebp
.label_495:
	mov	rdi, r15
	call	chown_failure_ok
	test	al, al
	jne	.label_499
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_501
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	eax, 0xffffffff
	cmp	byte ptr [r15 + 0x24], 0
	jne	.label_494
.label_499:
	xor	eax, eax
.label_494:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_508:
	lea	rcx, [r15 + 0x10]
	jmp	.label_507
	.section	.text
	.align	32
	#Procedure 0x407105
	.globl sub_407105
	.type sub_407105, @function
sub_407105:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407110

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
	je	.label_509
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_511
	jmp	.label_510
.label_509:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_510
.label_511:
	mov	eax, 1
	test	bpl, bpl
	je	.label_510
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
.label_510:
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
	#Procedure 0x40718d
	.globl sub_40718d
	.type sub_40718d, @function
sub_40718d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407190

	.globl get_version
	.type get_version, @function
get_version:
	mov	eax, 2
	test	rsi, rsi
	je	.label_512
	cmp	byte ptr [rsi], 0
	je	.label_512
	push	rax
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + backup_types]]
	add	rsp, 8
.label_512:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4071c8
	.globl sub_4071c8
	.type sub_4071c8, @function
sub_4071c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4071d0

	.globl xget_version
	.type xget_version, @function
xget_version:
	test	rsi, rsi
	je	.label_513
	cmp	byte ptr [rsi], 0
	je	.label_513
	jmp	get_version
.label_513:
	push	rax
	mov	edi, OFFSET FLAT:label_514
	call	getenv
	mov	edi, OFFSET FLAT:label_515
	mov	rsi, rax
	pop	rax
	jmp	get_version
	.section	.text
	.align	32
	#Procedure 0x4071f2
	.globl sub_4071f2
	.type sub_4071f2, @function
sub_4071f2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407200

	.globl emit_verbose
	.type emit_verbose, @function
emit_verbose:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdx
	mov	rbx, rsi
	mov	rax, rdi
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rax
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_516
	xor	eax, eax
	mov	rdx, r15
	call	__printf_chk
	test	r14, r14
	je	.label_517
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_518
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
.label_517:
	mov	edi, 0xa
	pop	rbx
	pop	r14
	pop	r15
	jmp	putchar_unlocked
	.section	.text
	.align	32
	#Procedure 0x407293
	.globl sub_407293
	.type sub_407293, @function
sub_407293:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4072a0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	32
	#Procedure 0x4072aa
	.globl sub_4072aa
	.type sub_4072aa, @function
sub_4072aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4072b0
	.globl security_check_context_raw
	.type security_check_context_raw, @function
security_check_context_raw:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4072c3
	.globl sub_4072c3
	.type sub_4072c3, @function
sub_4072c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4072d0

	.globl target_directory_operand
	.type target_directory_operand, @function
target_directory_operand:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15d, ecx
	mov	r12, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	call	stat
	test	eax, eax
	je	.label_521
	call	__errno_location
	mov	r14d, dword ptr [rax]
	cmp	r14d, 2
	je	.label_523
	test	r14d, r14d
	jne	.label_525
.label_521:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp + 0x18]
	cmp	eax, 0x4000
	sete	al
	jmp	.label_519
.label_522:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_524
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
	nop	word ptr cs:[rax + rax]
.label_525:
	test	r15b, r15b
	je	.label_522
	mov	dword ptr [rbp + 0x18], 0
.label_520:
	xor	eax, eax
.label_519:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_523:
	mov	byte ptr [r12], 1
	jmp	.label_520
	.section	.text
	.align	32
	#Procedure 0x407370

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	.section	.text
	.align	32
	#Procedure 0x407375
	.globl sub_407375
	.type sub_407375, @function
sub_407375:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407380

	.globl try_dir
	.type try_dir, @function
try_dir:
	mov	esi, 0x1c0
	jmp	mkdir
	.section	.text
	.align	32
	#Procedure 0x40738a
	.globl sub_40738a
	.type sub_40738a, @function
sub_40738a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407390

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
	#Procedure 0x4073a7
	.globl sub_4073a7
	.type sub_4073a7, @function
sub_4073a7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4073b0
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rsi
	mov	rbx, rdi
	call	hash_get_n_entries
	mov	rbp, rax
	mov	rdi, rbx
	call	hash_get_n_buckets
	mov	r12, rax
	mov	rdi, rbx
	call	hash_get_n_buckets_used
	mov	r15, rax
	mov	rdi, rbx
	call	hash_get_max_bucket_length
	mov	r14, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_527
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, rbp
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_526
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_528]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_529]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_530]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_531
	mov	al, 1
	mov	rdi, r13
	mov	rcx, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_532
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__fprintf_chk
	.section	.text
	.align	32
	#Procedure 0x40749c
	.globl sub_40749c
	.type sub_40749c, @function
sub_40749c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4074a0

	.globl is_ancestor
	.type is_ancestor, @function
is_ancestor:
	test	rsi, rsi
	je	.label_533
	mov	rcx, qword ptr [rdi + 8]
	nop	dword ptr [rax]
.label_536:
	cmp	qword ptr [rsi + 8], rcx
	jne	.label_534
	mov	rdx, qword ptr [rsi + 0x10]
	mov	al, 1
	cmp	rdx, qword ptr [rdi]
	je	.label_535
.label_534:
	mov	rsi, qword ptr [rsi]
	test	rsi, rsi
	jne	.label_536
.label_533:
	xor	eax, eax
.label_535:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4074cc
	.globl sub_4074cc
	.type sub_4074cc, @function
sub_4074cc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4074d0

	.globl try_nocreate
	.type try_nocreate, @function
try_nocreate:
	sub	rsp, 0x98
	lea	rsi, [rsp + 8]
	call	lstat
	test	eax, eax
	je	.label_537
	call	__errno_location
	cmp	dword ptr [rax], 0x4b
	jne	.label_538
.label_537:
	call	__errno_location
	mov	dword ptr [rax], 0x11
.label_538:
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 2
	mov	eax, 0xffffffff
	cmove	eax, ecx
	add	rsp, 0x98
	ret	
	.section	.text
	.align	32
	#Procedure 0x407514
	.globl sub_407514
	.type sub_407514, @function
sub_407514:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407520

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x407527
	.globl sub_407527
	.type sub_407527, @function
sub_407527:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407530

	.globl gen_tempname_len
	.type gen_tempname_len, @function
gen_tempname_len:
	push	rax
	mov	dword ptr [rsp + 4], edx
	cmp	ecx, 3
	jae	.label_539
	movsxd	rax, ecx
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_543]]
	lea	rdx, [rsp + 4]
	call	try_tempname_len
	pop	rcx
	ret	
.label_539:
	mov	edi, OFFSET FLAT:label_540
	mov	esi, OFFSET FLAT:label_541
	mov	edx, 0x147
	mov	ecx, OFFSET FLAT:label_542
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x40756a
	.globl sub_40756a
	.type sub_40756a, @function
sub_40756a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407570

	.globl force_linkat
	.type force_linkat, @function
force_linkat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x128
	mov	ebx, r9d
	mov	r13d, edx
	mov	r14, rsi
	mov	r15d, edi
	mov	ebp, dword ptr [rsp + 0x160]
	test	ebp, ebp
	jns	.label_549
	mov	edi, r15d
	mov	rsi, r14
	mov	edx, r13d
	mov	r12, rcx
	mov	dword ptr [rsp + 4], r8d
	call	linkat
	xor	ebp, ebp
	test	eax, eax
	je	.label_544
	call	__errno_location
	mov	rcx, r12
	mov	ebp, dword ptr [rax]
	mov	r8d, dword ptr [rsp + 4]
.label_549:
	cmp	ebp, 0x11
	jne	.label_544
	mov	r12d, r8d
	xor	bl, 1
	jne	.label_544
	lea	rsi, [rsp + 0x20]
	mov	rbp, rcx
	mov	rdi, rcx
	call	samedir_template
	mov	rbx, rax
	test	rbx, rbx
	je	.label_548
	mov	dword ptr [rsp + 8], r15d
	mov	qword ptr [rsp + 0x10], r14
	mov	dword ptr [rsp + 0x18], r13d
	mov	dword ptr [rsp + 0x1c], r12d
	lea	rdx, [rsp + 8]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:try_link
	mov	r8d, 6
	mov	rdi, rbx
	call	try_tempname_len
	test	eax, eax
	je	.label_546
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_547
.label_548:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_544
.label_546:
	mov	edi, r13d
	mov	rsi, rbx
	mov	edx, r13d
	mov	rcx, rbp
	call	renameat
	mov	ebp, 0xffffffff
	test	eax, eax
	je	.label_545
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_545:
	xor	edx, edx
	mov	edi, r13d
	mov	rsi, rbx
	call	unlinkat
.label_547:
	lea	rax, [rsp + 0x20]
	cmp	rbx, rax
	je	.label_544
	mov	rdi, rbx
	call	free
.label_544:
	mov	eax, ebp
	add	rsp, 0x128
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40768c
	.globl sub_40768c
	.type sub_40768c, @function
sub_40768c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407690

	.globl triple_hash_no_name
	.type triple_hash_no_name, @function
triple_hash_no_name:
	mov	rax, qword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40769d
	.globl sub_40769d
	.type sub_40769d, @function
sub_40769d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4076a0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_552
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_550
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_550
.label_552:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_553
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_551:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_400
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
.label_553:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_550:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_554
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name_0]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_551
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_12
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x407760

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40776a
	.globl sub_40776a
	.type sub_40776a, @function
sub_40776a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407770
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
	#Procedure 0x407780

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x407789
	.globl sub_407789
	.type sub_407789, @function
sub_407789:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407790

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x40779a
	.globl sub_40779a
	.type sub_40779a, @function
sub_40779a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4077a0

	.globl copy_dir
	.type copy_dir, @function
copy_dir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	rbp, r9
	mov	qword ptr [rsp + 0x28], r8
	mov	qword ptr [rsp + 0x20], rcx
	mov	r15d, edx
	mov	qword ptr [rsp + 0x18], rsi
	mov	rbx, rdi
	movups	xmm0, xmmword ptr [rbp + 0x40]
	movaps	xmmword ptr [rsp + 0x70], xmm0
	movups	xmm0, xmmword ptr [rbp]
	movups	xmm1, xmmword ptr [rbp + 0x10]
	movups	xmm2, xmmword ptr [rbp + 0x20]
	movups	xmm3, xmmword ptr [rbp + 0x30]
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x30], xmm0
	mov	esi, 2
	call	savedir
	test	rax, rax
	je	.label_555
	cmp	dword ptr [rbp + 4], 3
	jne	.label_556
	mov	dword ptr [rsp + 0x34], 2
.label_556:
	cmp	byte ptr [rax], 0
	mov	qword ptr [rsp + 8], rax
	mov	r14b, 1
	je	.label_558
	xor	ebp, ebp
	movzx	ecx, r15b
	mov	dword ptr [rsp + 4], ecx
	mov	r13, rax
	mov	qword ptr [rsp + 0x10], rbx
	nop	word ptr [rax + rax]
.label_557:
	mov	byte ptr [rsp + 2], r14b
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r13
	call	file_name_concat
	mov	r15, rax
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r13
	call	file_name_concat
	mov	r12, rax
	mov	rax, qword ptr [rsp + 0xc0]
	movzx	eax, byte ptr [rax]
	mov	byte ptr [rsp + 1], al
	mov	rdi, r15
	mov	rsi, r12
	mov	edx, dword ptr [rsp + 4]
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x28]
	lea	r9, [rsp + 0x30]
	push	0
	lea	rax, [rsp + 0xb]
	push	rax
	lea	rax, [rsp + 0x11]
	push	rax
	push	0
	call	copy_internal
	add	rsp, 0x20
	mov	r14d, eax
	and	r14b, byte ptr [rsp + 2]
	movzx	ebx, byte ptr [rsp + 3]
	mov	rax, qword ptr [rsp + 0xc8]
	or	byte ptr [rax], bl
	mov	rdi, r12
	call	free
	mov	rdi, r15
	call	free
	test	bl, bl
	jne	.label_559
	or	bpl, byte ptr [rsp + 1]
	mov	rdi, r13
	call	strlen
	cmp	byte ptr [r13 + rax + 1], 0
	lea	r13, [r13 + rax + 1]
	mov	rbx, qword ptr [rsp + 0x10]
	jne	.label_557
	jmp	.label_559
.label_555:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_561
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r15
	call	error
	jmp	.label_560
.label_558:
	xor	ebp, ebp
.label_559:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	rax, qword ptr [rsp + 0xc0]
	mov	byte ptr [rax], bpl
	test	r14b, r14b
	setne	bpl
.label_560:
	mov	eax, ebp
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407969
	.globl sub_407969
	.type sub_407969, @function
sub_407969:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407970

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	32
	#Procedure 0x40797e
	.globl sub_40797e
	.type sub_40797e, @function
sub_40797e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x407980

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	mov	ecx, esi
	ror	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x407989
	.globl sub_407989
	.type sub_407989, @function
sub_407989:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407990
	.globl rotl32
	.type rotl32, @function
rotl32:

	mov	ecx, esi
	rol	edi, cl
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x407997
	.globl sub_407997
	.type sub_407997, @function
sub_407997:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4079a0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xf8
	mov	r14, rsi
	mov	ebx, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_601
	call	setlocale
	mov	edi, OFFSET FLAT:label_603
	mov	esi, OFFSET FLAT:label_604
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_603
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdin
	call	atexit
	lea	rdi, [rsp + 8]
	call	cp_option_init
	xor	ebp, ebp
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	xor	r13d, r13d
	xor	ecx, ecx
	xor	r15d, r15d
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	jmp	.label_568
.label_599:
	mov	byte ptr [rsp + 0x32], 1
	mov	cl, r12b
	nop	dword ptr [rax]
.label_568:
	mov	r12d, ecx
	mov	edx, OFFSET FLAT:label_577
	mov	ecx, OFFSET FLAT:long_opts
	xor	r8d, r8d
	mov	edi, ebx
	mov	rsi, r14
	call	getopt_long
	add	eax, 0x83
	cmp	eax, 0x10b
	ja	.label_586
	mov	cl, 1
	jmp	qword ptr [word ptr [+ (rax * 8) + label_587]]
.label_1469:
	mov	dword ptr [rsp + 0xc], 3
	mov	cl, r12b
	jmp	.label_568
.label_1470:
	mov	dword ptr [rsp + 0xc], 4
	mov	cl, r12b
	jmp	.label_568
.label_1474:
	cmp	qword ptr [word ptr [rip + optarg]],  0
	mov	cl, r12b
	je	.label_568
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_594
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	cl, r12b
	jmp	.label_568
.label_1475:
	mov	dword ptr [rsp + 0xc], 2
	mov	byte ptr [rsp + 0x2a], 1
	mov	word ptr [rsp + 0x25], 0x101
	mov	byte ptr [rsp + 0x27], 1
	mov	byte ptr [rsp + 0x2c], 1
	mov	byte ptr [rsp + 0x2f], 1
	mov	byte ptr [rsp + 0x31], 1
	jmp	.label_599
.label_1476:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	test	rax, rax
	cmovne	r13, rax
	mov	bpl, 1
	mov	cl, r12b
	jmp	.label_568
.label_1478:
	mov	byte ptr [rsp + 0x1e], 1
	mov	cl, r12b
	jmp	.label_568
.label_1482:
	mov	byte ptr [rsp + 0x34], 1
	mov	cl, r12b
	jmp	.label_568
.label_1483:
	test	r15, r15
	jne	.label_565
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsp + 0x68]
	call	stat
	test	eax, eax
	jne	.label_576
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x80]
	cmp	eax, 0x4000
	jne	.label_579
	mov	r15,  qword ptr [word ptr [rip + optarg]]
	mov	cl, r12b
	jmp	.label_568
.label_1486:
	mov	byte ptr [rsp + 0x24], 1
	mov	cl, r12b
	jmp	.label_568
.label_1490:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	test	rdi, rdi
	je	.label_570
	lea	rsi, [rsp + 8]
	mov	edx, 1
	call	decode_preserve_arg
	jmp	.label_593
.label_570:
	mov	word ptr [rsp + 0x25], 0x101
	mov	byte ptr [rsp + 0x27], 1
.label_593:
	mov	byte ptr [rsp + 0x2c], 1
	mov	cl, r12b
	jmp	.label_568
.label_1491:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	test	rsi, rsi
	je	.label_596
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:label_598
	mov	edx, OFFSET FLAT:reflink_type_string
	mov	ecx, OFFSET FLAT:reflink_type
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + reflink_type]]
	mov	dword ptr [rsp + 0x40], eax
	mov	cl, r12b
	jmp	.label_568
.label_1472:
	mov	bpl, 1
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x60], rax
	mov	cl, r12b
	jmp	.label_568
.label_1473:
	mov	al, 1
	mov	qword ptr [rsp + 0x58], rax
	mov	cl, r12b
	jmp	.label_568
.label_1477:
	mov	byte ptr [rsp + 0x2a], 1
.label_1471:
	mov	dword ptr [rsp + 0xc], 2
	mov	cl, r12b
	jmp	.label_568
.label_1479:
	mov	dword ptr [rsp + 0x10], 3
	mov	cl, r12b
	jmp	.label_568
.label_1480:
	mov	byte ptr [rsp + 0x1f], 1
	mov	cl, r12b
	jmp	.label_568
.label_1481:
	mov	dword ptr [rsp + 0x10], 2
	mov	cl, r12b
	jmp	.label_568
.label_1484:
	mov	byte ptr [rsp + 0x35], 1
	mov	cl, r12b
	jmp	.label_568
.label_1485:
	mov	byte ptr [rsp + 0x36], 1
	mov	cl, r12b
	jmp	.label_568
.label_1487:
	mov	byte ptr [rsp + 0x2b], 0
	mov	cl, r12b
	jmp	.label_568
.label_1488:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsp + 8]
	xor	edx, edx
	call	decode_preserve_arg
	mov	cl, r12b
	jmp	.label_568
.label_1489:
	mov	byte ptr [byte ptr [rip + parents_option]],  1
	mov	cl, r12b
	jmp	.label_568
.label_1492:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:label_595
	mov	edx, OFFSET FLAT:sparse_type_string
	mov	ecx, OFFSET FLAT:sparse_type
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + sparse_type]]
	mov	dword ptr [rsp + 0x14], eax
	mov	cl, r12b
	jmp	.label_568
.label_1493:
	mov	byte ptr [byte ptr [rip + remove_trailing_slashes]],  1
	mov	cl, r12b
	jmp	.label_568
.label_1494:
	mov	byte ptr [rsp + 0x1d], 1
	mov	cl, r12b
	jmp	.label_568
.label_596:
	mov	dword ptr [rsp + 0x40], 2
	mov	cl, r12b
	jmp	.label_568
.label_1468:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_607
	cmp	byte ptr [rsp + 0x34], 0
	jne	.label_609
.label_607:
	cmp	dword ptr [rsp + 0x10], 2
	jne	.label_566
	mov	byte ptr [rsp + 0x35], 0
.label_566:
	test	bpl, bpl
	je	.label_590
	cmp	dword ptr [rsp + 0x10], 2
	je	.label_569
.label_590:
	cmp	dword ptr [rsp + 0x40], 2
	jne	.label_578
	cmp	dword ptr [rsp + 0x14], 2
	jne	.label_580
.label_578:
	xor	eax, eax
	test	bpl, bpl
	je	.label_583
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_588
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r13
	call	xget_version
.label_583:
	mov	dword ptr [rsp + 8], eax
	mov	rdi, qword ptr [rsp + 0x60]
	call	set_simple_backup_suffix
	cmp	dword ptr [rsp + 0xc], 1
	jne	.label_589
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_592
	mov	al, byte ptr [rsp + 0x1f]
	test	al, al
	jne	.label_592
	mov	dword ptr [rsp + 0xc], 2
	jmp	.label_589
.label_592:
	mov	dword ptr [rsp + 0xc], 4
.label_589:
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_605
	mov	byte ptr [rsp + 0x1c], r12b
.label_605:
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_597
	cmp	byte ptr [rsp + 0x2e], 0
	jne	.label_597
	mov	byte ptr [rsp + 0x2d], 0
.label_597:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_564
	mov	al, byte ptr [rsp + 0x29]
	test	al, al
	jne	.label_600
.label_564:
	cmp	byte ptr [rsp + 0x2e], 0
	jne	.label_584
	cmp	byte ptr [rsp + 0x30], 0
	jne	.label_602
	call	hash_init
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	sub	ebx, eax
	lea	rsi, [r14 + rax*8]
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0x58]
	test	al, al
	setne	cl
	lea	r8, [rsp + 8]
	mov	edi, ebx
	mov	rdx, r15
	call	do_copy
	movzx	eax, al
	xor	eax, 1
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1466:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_571
	mov	edx, OFFSET FLAT:label_572
	mov	r8d, OFFSET FLAT:label_573
	mov	r9d, OFFSET FLAT:label_574
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_575
	call	version_etc
	add	rsp, 0x10
	xor	edi, edi
	call	exit
.label_1467:
	xor	edi, edi
	call	usage
.label_586:
	mov	edi, 1
	call	usage
.label_565:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_591
	jmp	.label_563
.label_576:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_524
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
.label_579:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_316
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_569:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_606
	jmp	.label_582
.label_600:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_608
	jmp	.label_563
.label_584:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_562
	jmp	.label_563
.label_602:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_567
.label_563:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_609:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_581
	jmp	.label_582
.label_580:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_585
.label_582:
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
	.align	32
	#Procedure 0x407f64
	.globl sub_407f64
	.type sub_407f64, @function
sub_407f64:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f70

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x407f7a
	.globl sub_407f7a
	.type sub_407f7a, @function
sub_407f7a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f80
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	32
	#Procedure 0x407f8d
	.globl sub_407f8d
	.type sub_407f8d, @function
sub_407f8d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407f90
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quotearg_n_mem
.label_610:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x407fa3
	.globl sub_407fa3
	.type sub_407fa3, @function
sub_407fa3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407fb1

	.globl dot_or_dotdot
	.type dot_or_dotdot, @function
dot_or_dotdot:
	cmp	byte ptr [rdi], 0x2e
	jne	.label_610
	xor	eax, eax
	cmp	byte ptr [rdi + 1], 0x2e
	sete	al
	mov	al, byte ptr [rdi + rax + 1]
	test	al, al
	sete	cl
	cmp	al, 0x2f
	sete	al
	or	al, cl
	ret	
	.section	.text
	.align	32
	#Procedure 0x407fd0
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
	#Procedure 0x407fdf
	.globl sub_407fdf
	.type sub_407fdf, @function
sub_407fdf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x407fe0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_611
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_613:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_613
.label_611:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_615
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_614]], OFFSET FLAT:slot0
.label_615:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_612
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_612:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x408071
	.globl sub_408071
	.type sub_408071, @function
sub_408071:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408080

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
	#Procedure 0x4080ad
	.globl sub_4080ad
	.type sub_4080ad, @function
sub_4080ad:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4080b0

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
	#Procedure 0x4080c3
	.globl sub_4080c3
	.type sub_4080c3, @function
sub_4080c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4080d0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r8, qword ptr [rdi]
	xor	eax, eax
	cmp	r8, qword ptr [rdi + 8]
	jae	.label_616
	xor	eax, eax
.label_619:
	cmp	qword ptr [r8], 0
	je	.label_617
	test	r8, r8
	je	.label_617
	mov	r9, r8
	nop	dword ptr [rax + rax]
.label_618:
	cmp	rax, rdx
	jae	.label_616
	mov	rcx, qword ptr [r9]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r9, qword ptr [r9 + 8]
	test	r9, r9
	jne	.label_618
.label_617:
	add	r8, 0x10
	cmp	r8, qword ptr [rdi + 8]
	jb	.label_619
.label_616:
	ret	
	.section	.text
	.align	32
	#Procedure 0x408113
	.globl sub_408113
	.type sub_408113, @function
sub_408113:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408120

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	movabs	rbp, 0x647c4677a2884b7c
	movabs	r15, 0xb9f8b322c73ac862
	movabs	r14, 0x8c0ea5053d4712a0
	movabs	rbx, 0xb29b2e824a595524
	movabs	r13, 0x82f053db8355e0ce
	movabs	rdx, 0x48fe4a0fa5a09315
	movabs	rax, 0xae985bf2cbfc89ed
	movabs	r12, 0x98f5704f6c44c0ab
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x28], rdi
	nop	word ptr cs:[rax + rax]
.label_621:
	mov	qword ptr [rsp + 0x20], rcx
	add	rbp, qword ptr [rdi + rcx*8]
	add	r15, qword ptr [rdi + rcx*8 + 8]
	add	r14, qword ptr [rdi + rcx*8 + 0x10]
	add	rbx, qword ptr [rdi + rcx*8 + 0x18]
	add	r13, qword ptr [rdi + rcx*8 + 0x20]
	add	rdx, qword ptr [rdi + rcx*8 + 0x28]
	mov	qword ptr [rsp], rdx
	add	rax, qword ptr [rdi + rcx*8 + 0x30]
	mov	qword ptr [rsp + 8], rax
	add	r12, qword ptr [rdi + rcx*8 + 0x38]
	sub	rbp, r13
	mov	rdi, r12
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rsp]
	mov	qword ptr [rsp], rax
	add	r12, rbp
	sub	r15, rax
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 0x18], rax
	shl	rbp, 9
	xor	rbp, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 8], rbp
	sub	r14, rbp
	mov	rdi, r15
	call	just
	shr	rax, 0x17
	xor	r12, rax
	add	r15, r14
	mov	qword ptr [rsp + 0x30], r15
	sub	rbx, r12
	lea	rax, [rbx + r14]
	mov	qword ptr [rsp + 0x10], rax
	shl	r14, 0xf
	mov	rbp, r14
	xor	rbp, qword ptr [rsp + 0x18]
	sub	r13, rbp
	mov	rdi, rbx
	call	just
	mov	r15, rax
	shr	r15, 0xe
	xor	r15, qword ptr [rsp + 0x30]
	add	rbx, r13
	mov	qword ptr [rsp + 0x18], rbx
	mov	rdi, qword ptr [rsp]
	sub	rdi, r15
	mov	qword ptr [rsp], rdi
	mov	r14, r13
	shl	r14, 0x14
	xor	r14, qword ptr [rsp + 0x10]
	add	r13, rdi
	mov	qword ptr [rsp + 0x10], r13
	mov	r13, qword ptr [rsp + 8]
	sub	r13, r14
	call	just
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rbx, rax
	shr	rbx, 0x11
	xor	rbx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp]
	mov	rax, r13
	add	rdx, rax
	sub	r12, rbx
	shl	r13, 0xe
	xor	r13, qword ptr [rsp + 0x10]
	add	rax, r12
	mov	qword ptr [rdi + rcx*8], rbp
	mov	qword ptr [rdi + rcx*8 + 8], r15
	mov	qword ptr [rdi + rcx*8 + 0x10], r14
	mov	qword ptr [rdi + rcx*8 + 0x18], rbx
	mov	qword ptr [rdi + rcx*8 + 0x20], r13
	mov	qword ptr [rdi + rcx*8 + 0x28], rdx
	mov	qword ptr [rdi + rcx*8 + 0x30], rax
	mov	qword ptr [rdi + rcx*8 + 0x38], r12
	add	rcx, 8
	cmp	rcx, 0x100
	jl	.label_621
	xor	ecx, ecx
	nop	
.label_620:
	mov	qword ptr [rsp + 0x20], rcx
	add	rbp, qword ptr [rdi + rcx*8]
	add	r15, qword ptr [rdi + rcx*8 + 8]
	add	r14, qword ptr [rdi + rcx*8 + 0x10]
	add	rbx, qword ptr [rdi + rcx*8 + 0x18]
	add	r13, qword ptr [rdi + rcx*8 + 0x20]
	add	rdx, qword ptr [rdi + rcx*8 + 0x28]
	mov	qword ptr [rsp], rdx
	add	rax, qword ptr [rdi + rcx*8 + 0x30]
	mov	qword ptr [rsp + 8], rax
	add	r12, qword ptr [rdi + rcx*8 + 0x38]
	sub	rbp, r13
	mov	rdi, r12
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rsp]
	mov	qword ptr [rsp], rax
	add	r12, rbp
	sub	r15, rax
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 0x18], rax
	shl	rbp, 9
	xor	rbp, qword ptr [rsp + 8]
	sub	r14, rbp
	mov	rdi, r15
	call	just
	shr	rax, 0x17
	xor	rax, r12
	add	r15, r14
	sub	rbx, rax
	mov	r12, rax
	lea	rax, [rbx + r14]
	mov	qword ptr [rsp + 0x10], rax
	shl	r14, 0xf
	xor	r14, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 8], r14
	sub	r13, r14
	mov	rdi, rbx
	call	just
	shr	rax, 0xe
	xor	r15, rax
	add	rbx, r13
	mov	rdi, qword ptr [rsp]
	sub	rdi, r15
	mov	qword ptr [rsp], rdi
	mov	r14, r13
	shl	r14, 0x14
	xor	r14, qword ptr [rsp + 0x10]
	add	r13, rdi
	sub	rbp, r14
	call	just
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x28]
	shr	rax, 0x11
	xor	rbx, rax
	mov	rdx, qword ptr [rsp]
	add	rdx, rbp
	sub	r12, rbx
	mov	rax, rbp
	shl	rax, 0xe
	xor	r13, rax
	add	rbp, r12
	mov	rsi, qword ptr [rsp + 8]
	mov	qword ptr [rdi + rcx*8], rsi
	mov	qword ptr [rdi + rcx*8 + 8], r15
	mov	qword ptr [rdi + rcx*8 + 0x10], r14
	mov	qword ptr [rdi + rcx*8 + 0x18], rbx
	mov	qword ptr [rdi + rcx*8 + 0x20], r13
	mov	qword ptr [rdi + rcx*8 + 0x28], rdx
	mov	qword ptr [rdi + rcx*8 + 0x30], rbp
	mov	qword ptr [rdi + rcx*8 + 0x38], r12
	add	rcx, 8
	cmp	rcx, 0x100
	mov	rax, rbp
	mov	rbp, rsi
	jl	.label_620
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x800], xmm0
	mov	qword ptr [rdi + 0x810], 0
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40843c
	.globl sub_40843c
	.type sub_40843c, @function
sub_40843c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408440

	.globl extent_scan_init
	.type extent_scan_init, @function
extent_scan_init:
	mov	dword ptr [rsi], edi
	mov	qword ptr [rsi + 0x18], 0
	mov	qword ptr [rsi + 0x28], 0
	mov	qword ptr [rsi + 8], 0
	mov	byte ptr [rsi + 0x20], 0
	mov	byte ptr [rsi + 0x21], 0
	mov	dword ptr [rsi + 0x10], 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x40846a
	.globl sub_40846a
	.type sub_40846a, @function
sub_40846a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408470

	.globl get_permissions
	.type get_permissions, @function
get_permissions:
	mov	dword ptr [rcx], edx
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x408475
	.globl sub_408475
	.type sub_408475, @function
sub_408475:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408480

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
	je	.label_622
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_623
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_623
.label_622:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_623
	test	cl, cl
	jne	.label_623
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_623:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4084e6
	.globl sub_4084e6
	.type sub_4084e6, @function
sub_4084e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4084f0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_624
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_12
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
.label_625:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x408525
	.globl sub_408525
	.type sub_408525, @function
sub_408525:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408533

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rax
	call	mfile_name_concat
	test	rax, rax
	je	.label_625
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x408540

	.globl is_ENOTSUP
	.type is_ENOTSUP, @function
is_ENOTSUP:
	cmp	edi, 0x5f
	sete	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x408547
	.globl sub_408547
	.type sub_408547, @function
sub_408547:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408550

	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:
	mov	rax, qword ptr [rdi + 0x48]
	mov	rdx, qword ptr [rdi + 0x50]
	ret	
	.section	.text
	.align	32
	#Procedure 0x408559
	.globl sub_408559
	.type sub_408559, @function
sub_408559:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408560
	.globl getfilecon
	.type getfilecon, @function
getfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x408573
	.globl sub_408573
	.type sub_408573, @function
sub_408573:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408580

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	push	rbx
	mov	rbx, rsi
	mov	esi, 3
	call	rotr_sz
	xor	edx, edx
	div	rbx
	mov	rax, rdx
	pop	rbx
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
	#Procedure 0x4085a0

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rsi
	lea	rdx, [rsp + 8]
	call	hash_insert_if_absent
	mov	ecx, eax
	xor	eax, eax
	cmp	ecx, -1
	je	.label_626
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_626:
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4085cc
	.globl sub_4085cc
	.type sub_4085cc, @function
sub_4085cc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4085d0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_627
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_627:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4085ee
	.globl sub_4085ee
	.type sub_4085ee, @function
sub_4085ee:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4085f0
	.globl rotr64
	.type rotr64, @function
rotr64:

	mov	ecx, esi
	ror	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4085f9
	.globl sub_4085f9
	.type sub_4085f9, @function
sub_4085f9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408600

	.globl src_to_dest_lookup
	.type src_to_dest_lookup, @function
src_to_dest_lookup:
	sub	rsp, 0x18
	mov	qword ptr [rsp], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	rdi,  qword ptr [word ptr [rip + src_to_dest]]
	lea	rsi, [rsp]
	call	hash_lookup
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_628
	mov	rax, qword ptr [rcx + 0x10]
.label_628:
	add	rsp, 0x18
	ret	
.label_630:
	test	rcx, rcx
	jne	.label_629
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_629:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_632
.label_633:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_632:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x408677
	.globl sub_408677
	.type sub_408677, @function
sub_408677:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40867e

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_630
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_631
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_633
.label_631:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4086b0

	.globl src_to_dest_hash
	.type src_to_dest_hash, @function
src_to_dest_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4086bc
	.globl sub_4086bc
	.type sub_4086bc, @function
sub_4086bc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4086c0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_601
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_634
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4086e5
	.globl sub_4086e5
	.type sub_4086e5, @function
sub_4086e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4086f0

	.globl qset_acl
	.type qset_acl, @function
qset_acl:
	push	rbp
	push	rbx
	push	rax
	mov	eax, esi
	mov	rcx, rdi
	mov	dword ptr [rsp], edx
	lea	rbx, [rsp]
	mov	rdi, rbx
	mov	rsi, rcx
	mov	edx, eax
	call	set_permissions
	mov	ebp, eax
	mov	rdi, rbx
	call	free_permission_context
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40871f
	.globl sub_40871f
	.type sub_40871f, @function
sub_40871f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x408720
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
	#Procedure 0x408747
	.globl sub_408747
	.type sub_408747, @function
sub_408747:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408750

	.globl decode_preserve_arg
	.type decode_preserve_arg, @function
decode_preserve_arg:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12d, edx
	mov	rbx, rsi
	call	xstrdup
	mov	r14, rax
	mov	ecx, OFFSET FLAT:label_638
	mov	r15d, OFFSET FLAT:label_639
	test	r12b, r12b
	cmovne	r15, rcx
	mov	r13d, r12d
	xor	r13b, 1
	mov	qword ptr [rsp], r14
	nop	word ptr cs:[rax + rax]
.label_640:
	mov	rbp, r14
	mov	esi, 0x2c
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	mov	r14d, 0
	je	.label_635
	mov	r14, rax
	inc	r14
	mov	byte ptr [rax], 0
.label_635:
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edx, OFFSET FLAT:decode_preserve_arg.preserve_args
	mov	ecx, OFFSET FLAT:decode_preserve_arg.preserve_vals
	mov	r8d, 4
	mov	rdi, r15
	mov	rsi, rbp
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + decode_preserve_arg.preserve_vals]]
	cmp	rax, 6
	ja	.label_641
	jmp	qword ptr [word ptr [+ (rax * 8) + label_636]]
.label_1629:
	mov	byte ptr [rbx + 0x26], r12b
	mov	byte ptr [rbx + 0x25], r12b
	jmp	.label_637
.label_1625:
	mov	byte ptr [rbx + 0x1e], r12b
	mov	byte ptr [rbx + 0x20], r13b
	jmp	.label_637
.label_1626:
	mov	byte ptr [rbx + 0x1f], r12b
	jmp	.label_637
.label_1631:
	mov	byte ptr [rbx + 0x1e], r12b
	mov	byte ptr [rbx + 0x1f], r12b
	mov	byte ptr [rbx + 0x1d], r12b
	mov	byte ptr [rbx + 0x22], r12b
	mov	byte ptr [rbx + 0x20], r13b
	mov	byte ptr [rbx + 0x27], r12b
	nop	word ptr cs:[rax + rax]
.label_637:
	test	r14, r14
	jne	.label_640
	mov	rdi, qword ptr [rsp]
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	free
.label_1627:
	mov	byte ptr [rbx + 0x1d], r12b
	jmp	.label_637
.label_641:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x408855
	.globl sub_408855
	.type sub_408855, @function
sub_408855:

	nop	word ptr cs:[rax + rax]
.label_1628:
	mov	byte ptr [rbx + 0x22], r12b
	jmp	.label_637
.label_1630:
	mov	byte ptr [rbx + 0x27], r12b
	mov	byte ptr [rbx + 0x28], r12b
	jmp	.label_637
	.section	.text
	.align	32
	#Procedure 0x408870
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	jmp	.label_646
	.section	.text
	.align	32
	#Procedure 0x40887d
	.globl sub_40887d
	.type sub_40887d, @function
sub_40887d:

	nop	dword ptr [rax]
.label_644:
	add	r14, 0x10
.label_646:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_643
	cmp	qword ptr [r14], 0
	je	.label_644
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_642
	nop	word ptr cs:[rax + rax]
.label_648:
	test	cl, 1
	je	.label_645
	mov	rdi, qword ptr [rbx]
	call	rax
.label_645:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [r15 + 0x48], rbx
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_648
.label_642:
	test	cl, cl
	je	.label_647
	mov	rdi, qword ptr [r14]
	call	rax
.label_647:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_644
.label_643:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x408903
	.globl sub_408903
	.type sub_408903, @function
sub_408903:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408910
	.globl matchpathcon
	.type matchpathcon, @function
matchpathcon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x408923
	.globl sub_408923
	.type sub_408923, @function
sub_408923:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408930

	.globl renameatu
	.type renameatu, @function
renameatu:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x128
	mov	r13d, r8d
	mov	r12, rcx
	mov	r14d, edx
	mov	rbp, rsi
	mov	r15d, edi
	mov	edi, 0x13c
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	mov	ecx, r14d
	mov	r8, r12
	mov	r9d, r13d
	call	syscall
	mov	rbx, rax
	call	__errno_location
	test	ebx, ebx
	jns	.label_651
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x16
	je	.label_650
	cmp	ecx, 0x5f
	je	.label_650
	cmp	ecx, 0x26
	jne	.label_651
.label_650:
	test	r13d, r13d
	je	.label_658
	cmp	r13d, 1
	jne	.label_654
	mov	rbx, rax
	lea	rdx, [rsp + 0x98]
	mov	edi, r14d
	mov	rsi, r12
	call	lstatat
	test	eax, eax
	je	.label_659
	mov	rax, rbx
	mov	ecx, dword ptr [rax]
	mov	r13b, 1
	cmp	ecx, 2
	je	.label_661
	mov	ebx, 0xffffffff
	cmp	ecx, 0x4b
	jne	.label_651
.label_659:
	mov	edi, 0x11
	jmp	.label_653
.label_658:
	xor	r13d, r13d
.label_661:
	mov	qword ptr [rsp], rax
	mov	rdi, rbp
	call	strlen
	mov	rbx, rax
	mov	rdi, r12
	call	strlen
	test	rbx, rbx
	je	.label_649
	test	rax, rax
	je	.label_649
	cmp	byte ptr [rbp + rbx - 1], 0x2f
	je	.label_652
	cmp	byte ptr [r12 + rax - 1], 0x2f
	jne	.label_649
.label_652:
	lea	rdx, [rsp + 8]
	mov	edi, r15d
	mov	rsi, rbp
	call	lstatat
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_651
	test	r13b, r13b
	je	.label_662
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	je	.label_649
	mov	edi, 2
	jmp	.label_655
.label_654:
	mov	edi, 0x5f
.label_653:
	call	errno_fail
	mov	ebx, 0xffffffff
	jmp	.label_651
.label_662:
	lea	rdx, [rsp + 0x98]
	mov	edi, r14d
	mov	rsi, r12
	call	lstatat
	test	eax, eax
	je	.label_657
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax], 2
	jne	.label_651
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	je	.label_649
	jmp	.label_651
.label_657:
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsp + 0xb0]
	and	ecx, eax
	cmp	ecx, 0x4000
	jne	.label_656
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	jne	.label_660
.label_649:
	mov	edi, r15d
	mov	rsi, rbp
	mov	edx, r14d
	mov	rcx, r12
	call	renameat
	mov	ebx, eax
.label_651:
	mov	eax, ebx
	add	rsp, 0x128
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_656:
	mov	edi, 0x14
	jmp	.label_655
.label_660:
	mov	edi, 0x15
.label_655:
	call	errno_fail
	jmp	.label_651
	.section	.text
	.align	32
	#Procedure 0x408af7
	.globl sub_408af7
	.type sub_408af7, @function
sub_408af7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408b00

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
	mov	r12d, 0x7ff00000
	nop	word ptr [rax + rax]
.label_664:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	write
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_663
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_664
	cmp	eax, 0x16
	sete	cl
	cmp	rbx, 0x7ff00000
	seta	dl
	and	dl, cl
	mov	rcx, rbx
	cmovne	rcx, r12
	test	dl, dl
	cmovne	rbp, r13
	cmp	rbx, 0x7ff00001
	jb	.label_663
	cmp	eax, 0x16
	mov	rbx, rcx
	mov	r13, rbp
	je	.label_664
.label_663:
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
	#Procedure 0x408b87
	.globl sub_408b87
	.type sub_408b87, @function
sub_408b87:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408b90

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	32
	#Procedure 0x408b95
	.globl sub_408b95
	.type sub_408b95, @function
sub_408b95:

	nop	word ptr cs:[rax + rax]
.label_666:
	xor	eax, eax
.label_667:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x408ba4
	.globl sub_408ba4
	.type sub_408ba4, @function
sub_408ba4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408bb2

	.globl chown_failure_ok
	.type chown_failure_ok, @function
chown_failure_ok:
	push	rbx
	mov	rbx, rdi
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 0x16
	je	.label_665
	cmp	eax, 1
	jne	.label_666
.label_665:
	cmp	byte ptr [rbx + 0x1a], 0
	sete	al
	jmp	.label_667
.label_670:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x408bd3

	.globl is_nul
	.type is_nul, @function
is_nul:
	mov	rcx, rsi
	mov	al, 1
	test	rcx, rcx
	je	.label_668
	dec	rcx
	mov	rsi, rdi
.label_669:
	cmp	byte ptr [rsi], 0
	jne	.label_670
	test	rcx, rcx
	je	.label_668
	inc	rsi
	mov	edx, ecx
	dec	rcx
	test	dl, 0xf
	jne	.label_669
	push	rax
	inc	rcx
	mov	rdx, rcx
	call	memcmp
	test	eax, eax
	sete	al
	add	rsp, 8
.label_668:
	ret	
	.section	.text
	.align	32
	#Procedure 0x408c10

	.globl freadahead
	.type freadahead, @function
freadahead:
	mov	rcx, qword ptr [rdi + 0x28]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	ja	.label_671
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	test	byte ptr [rdi + 1], 1
	je	.label_672
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_672:
	add	rax, rcx
.label_671:
	ret	
	.section	.text
	.align	32
	#Procedure 0x408c38
	.globl sub_408c38
	.type sub_408c38, @function
sub_408c38:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408c40
	.globl fgetfilecon
	.type fgetfilecon, @function
fgetfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x408c53
	.globl sub_408c53
	.type sub_408c53, @function
sub_408c53:

	nop	word ptr cs:[rax + rax]
.label_673:
	mov	esi, edx
	jmp	chmod
	.section	.text
	.align	32
	#Procedure 0x408c67
	.globl sub_408c67
	.type sub_408c67, @function
sub_408c67:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408c72

	.globl chmod_or_fchmod
	.type chmod_or_fchmod, @function
chmod_or_fchmod:
	cmp	esi, -1
	je	.label_673
	mov	edi, esi
	mov	esi, edx
	jmp	fchmod
	.section	.text
	.align	32
	#Procedure 0x408c80
	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:

	mov	rax, qword ptr [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x408c84
	.globl sub_408c84
	.type sub_408c84, @function
sub_408c84:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408c90

	.globl try_tempname_len
	.type try_tempname_len, @function
try_tempname_len:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r14, r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x28], rdx
	mov	ebx, esi
	mov	r15, rdi
	call	__errno_location
	mov	qword ptr [rsp + 8], rax
	mov	r12d, dword ptr [rax]
	mov	rdi, r15
	call	strlen
	mov	rbp, rax
	movsxd	rbx, ebx
	lea	rax, [rbx + r14]
	mov	rdi, rbp
	sub	rdi, rax
	jb	.label_678
	add	rdi, r15
	mov	rsi, r14
	call	check_x_suffix
	test	al, al
	je	.label_678
	mov	dword ptr [rsp + 0x14], r12d
	mov	qword ptr [rsp + 0x18], r15
	xor	r13d, r13d
	xor	edi, edi
	mov	rsi, r14
	call	randint_all_new
	mov	r15, rax
	mov	r12d, 0xffffffff
	test	r15, r15
	je	.label_675
	sub	rbp, rbx
	mov	r12, qword ptr [rsp + 0x18]
	add	rbp, r12
	mov	rax, r14
	neg	rax
	mov	qword ptr [rsp + 0x20], rax
	nop	dword ptr [rax]
.label_674:
	test	r14, r14
	je	.label_680
	mov	rbx, qword ptr [rsp + 0x20]
	nop	word ptr [rax + rax]
.label_676:
	mov	esi, 0x3d
	mov	rdi, r15
	call	randint_genmax
	movzx	eax,  byte ptr [byte ptr [rax + letters]]
	mov	byte ptr [rbp + rbx], al
	inc	rbx
	jne	.label_676
.label_680:
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x28]
	call	qword ptr [rsp + 0x30]
	mov	r12d, eax
	test	r12d, r12d
	jns	.label_679
	mov	rax, qword ptr [rsp + 8]
	cmp	dword ptr [rax], 0x11
	mov	r12d, 0xffffffff
	jne	.label_681
	inc	r13d
	cmp	r13d, 0x3a2f7
	mov	r12, qword ptr [rsp + 0x18]
	jbe	.label_674
	mov	rdi, r15
	call	randint_all_free
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0x11
	jmp	.label_677
.label_679:
	mov	rax, qword ptr [rsp + 8]
	mov	ecx, dword ptr [rsp + 0x14]
	mov	dword ptr [rax], ecx
.label_681:
	mov	rbp, qword ptr [rsp + 8]
	mov	ebx, dword ptr [rbp]
	mov	rdi, r15
	call	randint_all_free
	mov	dword ptr [rbp], ebx
	jmp	.label_675
	.section	.text
	.align	32
	#Procedure 0x408dc7
	.globl sub_408dc7
	.type sub_408dc7, @function
sub_408dc7:

	nop	word ptr [rax + rax]
.label_678:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0x16
.label_677:
	mov	r12d, 0xffffffff
.label_675:
	mov	eax, r12d
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408df0

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbp, rsi
	mov	r14, rdi
	mov	rbx, qword ptr [r14 + 0x800]
	mov	rax, qword ptr [r14 + 0x810]
	inc	rax
	mov	r12, qword ptr [r14 + 0x808]
	add	r12, rax
	mov	qword ptr [r14 + 0x810], rax
	lea	rcx, [r14 + 0x400]
	lea	rax, [r14 + 0x20]
	cmp	rcx, rax
	mov	qword ptr [rsp + 0x20], rcx
	cmova	rax, rcx
	mov	rcx, r14
	not	rcx
	add	rcx, rax
	shr	rcx, 5
	lea	rax, [rcx*4]
	mov	qword ptr [rsp + 0x18], rax
	shl	rcx, 5
	lea	rax, [rbp + rcx + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 8], r14
	mov	r15, qword ptr [rsp + 8]
	nop	
.label_683:
	mov	qword ptr [rsp], rbp
	mov	r13, rbx
	shl	r13, 0x15
	xor	r13, rbx
	not	r13
	add	r13, qword ptr [r14 + 0x400]
	mov	rbx, qword ptr [r14]
	mov	rdi, r15
	mov	rsi, rbx
	call	ind
	add	rax, r12
	add	rax, r13
	mov	qword ptr [r14], rax
	shr	rax, 8
	mov	rdi, r15
	mov	rsi, rax
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rdi, r13
	call	just
	mov	rbp, rax
	shr	rbp, 5
	xor	rbp, r13
	add	rbp, qword ptr [r14 + 0x408]
	mov	r12, qword ptr [r14 + 8]
	mov	rdi, r15
	mov	rsi, r12
	call	ind
	add	rbx, rbp
	add	rbx, rax
	mov	qword ptr [r14 + 8], rbx
	shr	rbx, 8
	mov	rdi, r15
	mov	rsi, rbx
	call	ind
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	rbx, rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + 8], rbx
	mov	r12, rbp
	shl	r12, 0xc
	xor	r12, rbp
	add	r12, qword ptr [r14 + 0x410]
	mov	rbp, qword ptr [r14 + 0x10]
	mov	rdi, r15
	mov	rsi, rbp
	call	ind
	add	rbx, r12
	add	rbx, rax
	mov	qword ptr [r14 + 0x10], rbx
	shr	rbx, 8
	mov	rdi, r15
	mov	rsi, rbx
	call	ind
	add	rbp, rax
	mov	rdi, rbp
	call	just
	mov	rbp, rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + 0x10], rbp
	mov	rdi, r12
	call	just
	mov	rbx, rax
	shr	rbx, 0x21
	xor	rbx, r12
	add	rbx, qword ptr [r14 + 0x418]
	mov	r12, qword ptr [r14 + 0x18]
	mov	rdi, r15
	mov	rsi, r12
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r14 + 0x18], rbp
	shr	rbp, 8
	mov	rdi, r15
	mov	rsi, rbp
	mov	rbp, qword ptr [rsp]
	call	ind
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	r12, rax
	mov	qword ptr [rbp + 0x18], r12
	add	r14, 0x20
	add	rbp, 0x20
	cmp	r14, qword ptr [rsp + 0x20]
	jb	.label_683
	mov	rcx, qword ptr [rsp + 8]
	lea	rax, [rcx + 0x800]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rsp + 0x18]
	lea	r13, [rcx + rax*8 + 0x38]
	mov	r14, qword ptr [rsp + 8]
	nop	
.label_682:
	mov	r15, rbx
	shl	r15, 0x15
	xor	r15, rbx
	not	r15
	add	r15, qword ptr [r13 - 0x418]
	mov	rbx, qword ptr [r13 - 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	ind
	add	rax, r12
	add	rax, r15
	mov	qword ptr [r13 - 0x18], rax
	shr	rax, 8
	mov	rdi, r14
	mov	rsi, rax
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbp
	mov	r12, rax
	mov	rdi, r15
	call	just
	mov	rbx, rax
	shr	rbx, 5
	xor	rbx, r15
	add	rbx, qword ptr [r13 - 0x410]
	mov	r15, qword ptr [r13 - 0x10]
	mov	rdi, r14
	mov	rsi, r15
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r13 - 0x10], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	r15, rax
	mov	rdi, r15
	call	just
	mov	rbp, rax
	mov	qword ptr [r12 + 8], rbp
	mov	qword ptr [rsp + 0x10], r12
	mov	r15, rbx
	shl	r15, 0xc
	xor	r15, rbx
	add	r15, qword ptr [r13 - 0x408]
	mov	rbx, qword ptr [r13 - 8]
	mov	rdi, r14
	mov	rsi, rbx
	call	ind
	add	rbp, r15
	add	rbp, rax
	mov	qword ptr [r13 - 8], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbp, rax
	mov	qword ptr [r12 + 0x10], rbp
	mov	rdi, r15
	call	just
	mov	rbx, rax
	shr	rbx, 0x21
	xor	rbx, r15
	add	rbx, qword ptr [r13 - 0x400]
	mov	r15, qword ptr [r13]
	mov	rdi, r14
	mov	rsi, r15
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r13], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	r15, rax
	mov	rdi, r15
	call	just
	mov	r12, rax
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx + 0x18], r12
	lea	rax, [r13 + 0x20]
	add	r13, 8
	add	rcx, 0x20
	mov	qword ptr [rsp + 0x10], rcx
	cmp	r13, qword ptr [rsp]
	mov	r13, rax
	jb	.label_682
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax + 0x800], rbx
	mov	qword ptr [rax + 0x808], r12
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
	#Procedure 0x409182
	.globl sub_409182
	.type sub_409182, @function
sub_409182:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409190

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_685
	cmp	byte ptr [rax], 0x43
	jne	.label_687
	cmp	byte ptr [rax + 1], 0
	je	.label_684
.label_687:
	mov	esi, OFFSET FLAT:label_686
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_685
.label_684:
	xor	ebx, ebx
.label_685:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4091c1
	.globl sub_4091c1
	.type sub_4091c1, @function
sub_4091c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4091d0

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
	ja	.label_688
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
	jmp	.label_689
.label_688:
	mov	eax, ebx
.label_689:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409211
	.globl sub_409211
	.type sub_409211, @function
sub_409211:

	nop	word ptr cs:[rax + rax]
.label_704:
	mov	edi, OFFSET FLAT:label_690
	mov	esi, OFFSET FLAT:label_56
	mov	edx, 0xb89
	mov	ecx, OFFSET FLAT:label_691
	call	__assert_fail
.label_702:
	mov	edi, OFFSET FLAT:label_700
	mov	esi, OFFSET FLAT:label_56
	mov	edx, 0xb8d
	mov	ecx, OFFSET FLAT:label_691
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x409252
	.globl sub_409252
	.type sub_409252, @function
sub_409252:

	nop	dword ptr [rax + rax]
.label_697:
	mov	edi, OFFSET FLAT:label_692
	mov	esi, OFFSET FLAT:label_56
	mov	edx, 0xb8a
	mov	ecx, OFFSET FLAT:label_691
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x409270
	.globl valid_options
	.type valid_options, @function
valid_options:

	push	rax
	test	rdi, rdi
	je	.label_696
	cmp	dword ptr [rdi], 4
	jae	.label_698
	mov	eax, dword ptr [rdi + 0xc]
	dec	eax
	cmp	eax, 3
	jae	.label_701
	cmp	dword ptr [rdi + 0x38], 3
	jae	.label_704
	cmp	byte ptr [rdi + 0x17], 0
	je	.label_694
	cmp	byte ptr [rdi + 0x2c], 0
	jne	.label_697
.label_694:
	cmp	dword ptr [rdi + 0x38], 2
	jne	.label_695
	cmp	dword ptr [rdi + 0xc], 2
	jne	.label_702
.label_695:
	pop	rax
	ret	
.label_698:
	mov	edi, OFFSET FLAT:label_693
	mov	esi, OFFSET FLAT:label_56
	mov	edx, 0xb87
	mov	ecx, OFFSET FLAT:label_691
	call	__assert_fail
.label_701:
	mov	edi, OFFSET FLAT:label_703
	mov	esi, OFFSET FLAT:label_56
	mov	edx, 0xb88
	mov	ecx, OFFSET FLAT:label_691
	call	__assert_fail
.label_696:
	mov	edi, OFFSET FLAT:label_699
	mov	esi, OFFSET FLAT:label_56
	mov	edx, 0xb86
	mov	ecx, OFFSET FLAT:label_691
	call	__assert_fail
.label_705:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	32
	#Procedure 0x4092fc
	.globl sub_4092fc
	.type sub_4092fc, @function
sub_4092fc:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409309

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_705
	ret	
	.section	.text
	.align	32
	#Procedure 0x409310

	.globl defaultcon
	.type defaultcon, @function
defaultcon:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	pop	rax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40931e
	.globl sub_40931e
	.type sub_40931e, @function
sub_40931e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x409320

	.globl set_acl
	.type set_acl, @function
set_acl:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	qset_acl
	mov	ebx, eax
	test	ebx, ebx
	je	.label_707
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_706
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	call	error
.label_707:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409378
	.globl sub_409378
	.type sub_409378, @function
sub_409378:

	nop	dword ptr [rax + rax]
.label_708:
	ret	
.label_710:
	xor	eax, eax
	jmp	.label_708
	.section	.text
	.align	32
	#Procedure 0x409385
	.globl sub_409385
	.type sub_409385, @function
sub_409385:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40938f
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_710
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_709]]
	.section	.text
	.align	32
	#Procedure 0x4093a0

	.globl set_process_security_ctx
	.type set_process_security_ctx, @function
set_process_security_ctx:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, r8
	mov	r15, rsi
	mov	r14, rdi
	cmp	byte ptr [rbx + 0x25], 0
	je	.label_711
	mov	bpl, 1
	cmp	byte ptr [rbx + 0x23], 0
	je	.label_716
	cmp	byte ptr [rbx + 0x26], 0
	je	.label_717
	xor	r15d, r15d
	jmp	.label_715
.label_711:
	cmp	byte ptr [rbx + 0x21], 0
	mov	bl, 1
	je	.label_713
	xor	cl, 1
	jne	.label_713
	call	defaultcon
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	edi, ebp
	call	ignorable_ctx_err
	test	al, al
	jne	.label_713
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_724
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r14
	call	error
	jmp	.label_713
.label_716:
	xor	r15d, r15d
	jmp	.label_715
.label_717:
	cmp	byte ptr [rbx + 0x29], 0
	sete	r15b
	xor	ebp, ebp
.label_715:
	lea	rsi, [rsp]
	mov	rdi, r14
	call	lgetfilecon
	test	eax, eax
	js	.label_719
	mov	rdi, qword ptr [rsp]
	call	setfscreatecon
	test	eax, eax
	jns	.label_714
	test	bpl, bpl
	jne	.label_722
	test	r15b, r15b
	je	.label_720
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	test	al, al
	jne	.label_720
.label_722:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_725
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, qword ptr [rsp]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
.label_720:
	cmp	byte ptr [rbx + 0x26], 0
	je	.label_714
	mov	rdi, qword ptr [rsp]
	call	freecon
	xor	ebx, ebx
	jmp	.label_713
.label_714:
	mov	rdi, qword ptr [rsp]
	call	freecon
	jmp	.label_712
.label_719:
	test	bpl, bpl
	jne	.label_718
	test	r15b, r15b
	je	.label_721
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	test	al, al
	jne	.label_721
.label_718:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_723
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	call	error
.label_721:
	cmp	byte ptr [rbx + 0x26], 0
	je	.label_712
	xor	ebx, ebx
	jmp	.label_713
.label_712:
	mov	bl, 1
.label_713:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40953a
	.globl sub_40953a
	.type sub_40953a, @function
sub_40953a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409540
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x409548
	.globl sub_409548
	.type sub_409548, @function
sub_409548:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409550

	.globl randint_all_free
	.type randint_all_free, @function
randint_all_free:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	randread_free
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	rdi, rbx
	call	randint_free
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40958b
	.globl sub_40958b
	.type sub_40958b, @function
sub_40958b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409590

	.globl copy_reg
	.type copy_reg, @function
copy_reg:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x198
	mov	qword ptr [rsp + 0x28], r9
	mov	r14d, r8d
	mov	r13d, ecx
	mov	r12, rdx
	mov	rbp, rsi
	mov	r15, rdi
	mov	rax, qword ptr [rsp + 0x1d0]
	mov	eax, dword ptr [rax + 0x18]
	mov	dword ptr [rsp + 0x44], eax
	mov	al, byte ptr [r12 + 0x23]
	mov	byte ptr [rsp + 0x18], al
	xor	esi, esi
	cmp	dword ptr [r12 + 4], 2
	sete	sil
	shl	esi, 0x11
	xor	eax, eax
	call	open_safer
	mov	ebx, eax
	test	ebx, ebx
	js	.label_786
	mov	qword ptr [rsp + 0x30], r15
	lea	rsi, [rsp + 0x108]
	mov	edi, ebx
	call	fstat
	test	eax, eax
	mov	dword ptr [rsp + 0x14], ebx
	je	.label_789
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_728
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	jmp	.label_736
.label_786:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_741
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_748
.label_789:
	mov	rcx, qword ptr [rsp + 0x1d0]
	mov	rax, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rsp + 0x110]
	jne	.label_750
	mov	rax, qword ptr [rcx]
	cmp	rax, qword ptr [rsp + 0x108]
	jne	.label_750
	mov	rax, qword ptr [rsp + 0x28]
	cmp	byte ptr [rax], 0
	jne	.label_752
	mov	dword ptr [rsp + 0x38], r13d
	cmp	byte ptr [r12 + 0x23], 0
	mov	eax, 0x201
	mov	esi, 1
	cmovne	esi, eax
	xor	eax, eax
	mov	qword ptr [rsp], rbp
	mov	rdi, rbp
	call	open_safer
	mov	r15d, eax
	call	__errno_location
	mov	rbx, rax
	mov	eax, dword ptr [rbx]
	mov	dword ptr [rsp + 0x10], eax
	cmp	byte ptr [r12 + 0x21], 0
	je	.label_764
	test	r15d, r15d
	jns	.label_785
	jmp	.label_767
.label_750:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_768
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x30]
.label_783:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_735:
	mov	rdx, rbx
.label_736:
	call	error
	xor	ebp, ebp
.label_749:
	mov	edi, dword ptr [rsp + 0x14]
	call	close
	test	eax, eax
	jns	.label_774
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_751
	mov	edx, 5
	call	dcgettext
	mov	rbx, rbp
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	mov	rbp, rbx
	call	error
.label_774:
	mov	rdi, rbp
	call	free
	and	r13b, 1
.label_748:
	and	r13b, 1
	mov	eax, r13d
	add	rsp, 0x198
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_764:
	test	r15d, r15d
	js	.label_746
	mov	al, byte ptr [r12 + 0x25]
	test	al, al
	je	.label_746
.label_785:
	movzx	esi, byte ptr [r12 + 0x25]
	xor	ebp, ebp
	xor	edx, edx
	mov	rdi, qword ptr [rsp]
	mov	rcx, r12
	call	set_file_security_ctx
	xor	r13d, r13d
	cmp	byte ptr [r12 + 0x26], 0
	jne	.label_761
.label_746:
	test	r15d, r15d
	jns	.label_787
.label_767:
	cmp	byte ptr [r12 + 0x16], 0
	je	.label_787
	mov	rbp, qword ptr [rsp]
	mov	rdi, rbp
	call	unlink
	test	eax, eax
	je	.label_729
	mov	r14d, dword ptr [rbx]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_730
	jmp	.label_731
.label_729:
	cmp	byte ptr [r12 + 0x2e], 0
	je	.label_733
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_236
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r13
	mov	rdx, rcx
	call	__printf_chk
.label_733:
	mov	rax, qword ptr [rsp + 0x28]
	mov	byte ptr [rax], 1
	cmp	byte ptr [r12 + 0x21], 0
	je	.label_744
	mov	ecx, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp]
	mov	r8, r12
	call	set_process_security_ctx
	xor	r13d, r13d
	test	al, al
	mov	ebp, 0
	je	.label_749
.label_787:
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0x28]
	cmp	byte ptr [rax], 0
	mov	rbp, qword ptr [rsp]
	mov	r13d, dword ptr [rsp + 0x38]
	mov	ebx, dword ptr [rsp + 0x10]
	jne	.label_752
	jmp	.label_756
.label_744:
	mov	rbp, qword ptr [rsp]
	mov	r13d, dword ptr [rsp + 0x38]
.label_752:
	mov	rdi, rbp
	mov	eax, r13d
	mov	edx, r14d
	not	edx
	and	edx, eax
	mov	esi, 0xc1
	xor	eax, eax
	mov	dword ptr [rsp], edx
	call	open_safer
	mov	r15d, eax
	call	__errno_location
	mov	qword ptr [rsp + 0x38], rax
	mov	ebx, dword ptr [rax]
	test	r15d, r15d
	mov	dword ptr [rsp + 0xc], r15d
	jns	.label_766
	cmp	ebx, 0x11
	jne	.label_766
	cmp	byte ptr [r12 + 0x18], 0
	jne	.label_766
	lea	rsi, [rsp + 0x78]
	mov	rdi, rbp
	call	lstat
	test	eax, eax
	je	.label_770
	mov	r15d, dword ptr [rsp + 0xc]
	jmp	.label_766
.label_770:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x90]
	cmp	eax, 0xa000
	mov	r15d, dword ptr [rsp + 0xc]
	jne	.label_766
	cmp	byte ptr [r12 + 0x30], 0
	je	.label_772
	mov	esi, 0x41
	xor	eax, eax
	mov	rdi, rbp
	mov	edx, dword ptr [rsp]
	call	open_safer
	mov	r15d, eax
	mov	rax, qword ptr [rsp + 0x38]
	mov	ebx, dword ptr [rax]
.label_766:
	cmp	ebx, 0x15
	jne	.label_740
	test	r15d, r15d
	jns	.label_740
	cmp	byte ptr [rbp], 0
	je	.label_740
	mov	rdi, rbp
	call	strlen
	cmp	byte ptr [rbp + rax - 1], 0x2f
	mov	eax, 0x14
	cmove	ebx, eax
.label_740:
	mov	ecx, r14d
.label_756:
	test	r15d, r15d
	js	.label_778
	mov	dword ptr [rsp + 0x10], ecx
	mov	qword ptr [rsp], rbp
	lea	rsi, [rsp + 0x78]
	mov	edi, r15d
	call	fstat
	test	eax, eax
	je	.label_780
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_728
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	xor	ebp, ebp
	jmp	.label_761
.label_778:
	cmp	ebx, 2
	jne	.label_739
	mov	rax, qword ptr [rsp + 0x28]
	cmp	byte ptr [rax], 0
	jne	.label_739
	cmp	byte ptr [r12 + 0x18], 0
	je	.label_788
.label_739:
	xor	r13d, r13d
	xor	edi, edi
	mov	r14d, ebx
	mov	esi, OFFSET FLAT:label_726
.label_731:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_735
.label_780:
	mov	dword ptr [rsp + 0x38], r13d
	mov	r13b, 1
	xor	ebp, ebp
	cmp	byte ptr [rsp + 0x18], 0
	je	.label_737
	cmp	dword ptr [r12 + 0x38], 0
	je	.label_742
	mov	edi, r15d
	mov	esi, dword ptr [rsp + 0x14]
	call	clone_file
	xor	ebp, ebp
	test	eax, eax
	je	.label_737
	cmp	dword ptr [r12 + 0x38], 2
	jne	.label_742
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0x28], eax
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_762
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rsp]
	call	quotearg_n_style
	mov	rbx, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rsp + 0x30]
	call	quotearg_n_style
	mov	rbp, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rsp + 0x28]
	mov	rdx, r14
	mov	rcx, rbx
	mov	r8, rbp
	call	error
	xor	ebp, ebp
	jmp	.label_761
.label_742:
	call	getpagesize
	cdqe	
	mov	qword ptr [rsp + 0x48], rax
	sub	rsp, 0x90
	lea	rsi, [rsp + 0x108]
	mov	ecx, 0x12
	mov	rdi, rsp
	rep movsq	qword ptr [rdi], qword ptr [rsi]
	call	io_blksize
	add	rsp, 0x90
	mov	r14, rax
	mov	rax, qword ptr [rsp + 0xb0]
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	ecx, 0x200
	mov	edx, 0x200
	cmovb	rdx, rax
	test	rax, rax
	cmovle	rdx, rcx
	mov	qword ptr [rsp + 0x70], rdx
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 2
	mov	edi, dword ptr [rsp + 0x14]
	call	fdadvise
	lea	rdi, [rsp + 0x108]
	call	is_probably_sparse
	mov	r13d, 0xf000
	mov	ecx, dword ptr [rsp + 0x90]
	and	ecx, r13d
	cmp	ecx, 0x8000
	mov	dword ptr [rsp + 0xc], r15d
	mov	byte ptr [rsp + 0x26], al
	jne	.label_738
	mov	ecx, dword ptr [r12 + 0xc]
	cmp	ecx, 2
	sete	dl
	cmp	ecx, 3
	mov	cl, 1
	mov	dword ptr [rsp + 0x40], ecx
	je	.label_779
	and	dl, al
	jne	.label_779
.label_738:
	movabs	rbp, 0x7fffffffffffffff
	sub	rbp, qword ptr [rsp + 0x48]
	sub	rsp, 0x90
	lea	rsi, [rsp + 0x198]
	mov	ecx, 0x12
	mov	rdi, rsp
	rep movsq	qword ptr [rdi], qword ptr [rsi]
	call	io_blksize
	add	rsp, 0x90
	mov	rdi, rax
	mov	rsi, r14
	mov	rdx, rbp
	call	buffer_lcm
	mov	rcx, rax
	and	r13d, dword ptr [rsp + 0x120]
	cmp	r13d, 0x8000
	jne	.label_777
	mov	rax, qword ptr [rsp + 0x138]
	cmp	rax, r14
	lea	rax, [rax + 1]
	cmovb	r14, rax
.label_777:
	lea	r14, [rcx + r14 - 1]
	xor	edx, edx
	mov	rax, r14
	div	rcx
	sub	r14, rdx
	lea	rax, [r14 - 1]
	cmp	rax, rbp
	cmovae	r14, rcx
	mov	dword ptr [rsp + 0x40], 0
.label_779:
	mov	r13, qword ptr [rsp]
	mov	ebp, dword ptr [rsp + 0x14]
	mov	rbx, qword ptr [rsp + 0x48]
	lea	rdi, [r14 + rbx]
	call	xmalloc
	mov	qword ptr [rsp + 0x18], rax
	mov	rdi, rax
	mov	rsi, rbx
	call	ptr_align
	cmp	byte ptr [rsp + 0x26], 0
	mov	edi, ebp
	mov	ebx, dword ptr [rsp + 0x40]
	mov	rbp, qword ptr [rsp + 0x70]
	je	.label_760
	mov	r11d, 1
	mov	r9, qword ptr [rsp + 0x138]
	test	bl, bl
	je	.label_747
	mov	r11d, dword ptr [r12 + 0xc]
.label_747:
	lea	r10, [rsp + 0x50]
	mov	esi, dword ptr [rsp + 0xc]
	mov	qword ptr [rsp + 0x48], rax
	mov	rdx, rax
	mov	rcx, r14
	mov	r8, rbp
	push	r10
	mov	r15, r13
	push	r13
	push	qword ptr [rsp + 0x40]
	push	r11
	call	extent_copy
	add	rsp, 0x20
	test	al, al
	je	.label_755
	mov	r13b, 1
	mov	ecx, 5
	jmp	.label_757
.label_788:
	mov	rax, qword ptr [rsp + 0x28]
	mov	byte ptr [rax], 1
	mov	r14d, ecx
	jmp	.label_752
.label_755:
	cmp	byte ptr [rsp + 0x50], 0
	je	.label_759
	mov	r13, r15
	mov	rax, qword ptr [rsp + 0x48]
	mov	edi, dword ptr [rsp + 0x14]
.label_760:
	xor	ecx, ecx
	test	bl, bl
	cmove	rbp, rcx
	xor	r9d, r9d
	cmp	dword ptr [r12 + 0xc], 3
	sete	r9b
	sub	rsp, 8
	lea	rbx, [rsp + 0x2f]
	lea	r10, [rsp + 0x58]
	mov	esi, dword ptr [rsp + 0x14]
	mov	rdx, rax
	mov	rcx, r14
	mov	r8, rbp
	push	rbx
	push	r10
	push	-1
	push	r13
	push	qword ptr [rsp + 0x58]
	call	sparse_copy
	add	rsp, 0x30
	mov	ecx, 3
	test	al, al
	je	.label_771
	mov	r13b, 1
	cmp	byte ptr [rsp + 0x27], 0
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_773
	mov	rsi, qword ptr [rsp + 0x50]
	mov	r15d, dword ptr [rsp + 0xc]
	mov	edi, r15d
	call	ftruncate
	test	eax, eax
	mov	ecx, 0
	jns	.label_734
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_356
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r14
	call	error
	mov	ecx, 3
	jmp	.label_734
.label_772:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_782
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, rbp
	jmp	.label_783
.label_773:
	xor	ecx, ecx
	mov	r15d, dword ptr [rsp + 0xc]
	jmp	.label_734
.label_759:
	mov	ecx, 3
.label_771:
	xor	r13d, r13d
.label_757:
	mov	r15d, dword ptr [rsp + 0xc]
	mov	rbp, qword ptr [rsp + 0x18]
.label_734:
	cmp	ecx, 5
	je	.label_737
	cmp	ecx, 3
	je	.label_761
	test	ecx, ecx
	jne	.label_748
.label_737:
	mov	qword ptr [rsp + 0x18], rbp
	cmp	byte ptr [r12 + 0x1f], 0
	je	.label_727
	mov	rbp, qword ptr [rsp + 0x1d0]
	mov	rdi, rbp
	call	get_stat_atime
	mov	qword ptr [rsp + 0x50], rax
	mov	qword ptr [rsp + 0x58], rdx
	mov	rdi, rbp
	call	get_stat_mtime
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x68], rdx
	lea	rdx, [rsp + 0x50]
	mov	edi, r15d
	mov	rbp, qword ptr [rsp]
	mov	rsi, rbp
	call	fdutimens
	test	eax, eax
	je	.label_727
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_743
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r14
	call	error
	cmp	byte ptr [r12 + 0x24], 0
	jne	.label_763
.label_727:
	cmp	byte ptr [r12 + 0x1d], 0
	je	.label_753
	mov	rcx, qword ptr [rsp + 0x1d0]
	mov	eax, dword ptr [rcx + 0x1c]
	cmp	eax, dword ptr [rsp + 0x94]
	mov	rbp, qword ptr [rsp + 0x30]
	jne	.label_754
	mov	eax, dword ptr [rcx + 0x20]
	cmp	eax, dword ptr [rsp + 0x98]
	je	.label_758
.label_754:
	mov	rax, qword ptr [rsp + 0x28]
	movzx	r8d, byte ptr [rax]
	lea	r9, [rsp + 0x78]
	mov	rdi, r12
	mov	rsi, qword ptr [rsp]
	mov	edx, r15d
	call	set_owner
	cmp	eax, -1
	je	.label_763
	test	eax, eax
	mov	ecx, dword ptr [rsp + 0x10]
	jne	.label_765
	and	dword ptr [rsp + 0x44], 0xfffff1ff
	jmp	.label_765
.label_763:
	xor	r13d, r13d
	jmp	.label_732
.label_753:
	mov	rbp, qword ptr [rsp + 0x30]
.label_758:
	mov	ecx, dword ptr [rsp + 0x10]
.label_765:
	cmp	byte ptr [r12 + 0x27], 0
	je	.label_769
	cmp	byte ptr [rsp + 0x90], 0
	js	.label_769
	call	geteuid
	mov	ecx, dword ptr [rsp + 0x10]
	test	eax, eax
	je	.label_769
	mov	edx, 0x180
	mov	edi, r15d
	mov	rsi, qword ptr [rsp]
	call	fchmod_or_lchmod
	mov	ecx, dword ptr [rsp + 0x10]
	test	eax, eax
	jne	.label_769
	mov	edx, ecx
	not	edx
	and	edx, dword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	rsi, qword ptr [rsp]
	call	fchmod_or_lchmod
	mov	ecx, dword ptr [rsp + 0x10]
.label_769:
	cmp	byte ptr [r12 + 0x1e], 0
	jne	.label_775
	cmp	byte ptr [r12 + 0x18], 0
	je	.label_776
.label_775:
	mov	rdi, rbp
	mov	esi, dword ptr [rsp + 0x14]
	mov	rdx, qword ptr [rsp]
	mov	ecx, r15d
	mov	r8d, dword ptr [rsp + 0x44]
	call	copy_acl
	test	eax, eax
	je	.label_732
	cmp	byte ptr [r12 + 0x24], 0
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_761
	xor	r13d, r13d
	jmp	.label_761
.label_776:
	cmp	byte ptr [r12 + 0x2b], 0
	je	.label_781
	mov	edx, dword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rsp]
	mov	esi, r15d
	call	set_acl
	test	eax, eax
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_761
	xor	r13d, r13d
	jmp	.label_761
.label_781:
	cmp	byte ptr [r12 + 0x20], 0
	je	.label_784
	mov	rax, qword ptr [rsp + 0x28]
	cmp	byte ptr [rax], 0
	je	.label_784
	call	cached_umask
	not	eax
	and	eax, 0x1b6
	mov	rdi, qword ptr [rsp]
	mov	esi, r15d
	mov	edx, eax
	call	set_acl
	test	eax, eax
	je	.label_732
	xor	r13d, r13d
	jmp	.label_732
.label_784:
	test	ecx, ecx
	mov	ebp, ecx
	je	.label_732
	call	cached_umask
	not	eax
	test	ebp, eax
	je	.label_732
	mov	ebp, r15d
	mov	edi, r15d
	mov	rsi, qword ptr [rsp]
	mov	edx, dword ptr [rsp + 0x38]
	call	fchmod_or_lchmod
	test	eax, eax
	je	.label_745
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r14
	call	error
	cmp	byte ptr [r12 + 0x24], 0
	je	.label_745
	xor	r13d, r13d
.label_745:
	mov	r15d, ebp
.label_732:
	mov	rbp, qword ptr [rsp + 0x18]
.label_761:
	mov	edi, r15d
	call	close
	test	eax, eax
	jns	.label_749
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_751
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
	jmp	.label_749
	.section	.text
	.align	32
	#Procedure 0x40a0ce
	.globl sub_40a0ce
	.type sub_40a0ce, @function
sub_40a0ce:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40a0d0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_799
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_799:
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
	ja	.label_800
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_795
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_796
	test	esi, esi
	jne	.label_800
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_802
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_793
.label_800:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_792
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_796
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_798
.label_795:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_796:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_803
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_791
.label_803:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_791:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_798:
	cmp	eax, 6
	jne	.label_792
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_801
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_790
.label_792:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_794
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_797
.label_802:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_793:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_801:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_790:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_794:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_797:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a284
	.globl sub_40a284
	.type sub_40a284, @function
sub_40a284:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a290
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
	#Procedure 0x40a2c3
	.globl sub_40a2c3
	.type sub_40a2c3, @function
sub_40a2c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a2d0
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	r13, qword ptr [r12]
	xor	ebx, ebx
	cmp	r13, qword ptr [r12 + 8]
	jae	.label_804
	xor	ebx, ebx
.label_807:
	cmp	qword ptr [r13], 0
	je	.label_806
	test	r13, r13
	je	.label_806
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_805:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_804
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	jne	.label_805
.label_806:
	add	r13, 0x10
	cmp	r13, qword ptr [r12 + 8]
	jb	.label_807
.label_804:
	mov	rax, rbx
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
	#Procedure 0x40a347
	.globl sub_40a347
	.type sub_40a347, @function
sub_40a347:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a350
	.globl gen_tempname
	.type gen_tempname, @function
gen_tempname:

	mov	r8d, 6
	jmp	gen_tempname_len
	.section	.text
	.align	32
	#Procedure 0x40a35b
	.globl sub_40a35b
	.type sub_40a35b, @function
sub_40a35b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a360

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a365
	.globl sub_40a365
	.type sub_40a365, @function
sub_40a365:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a370
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	32
	#Procedure 0x40a37a
	.globl sub_40a37a
	.type sub_40a37a, @function
sub_40a37a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a380

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
	je	.label_808
	mov	qword ptr [rax], rbx
.label_808:
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
	#Procedure 0x40a46c
	.globl sub_40a46c
	.type sub_40a46c, @function
sub_40a46c:

	nop	dword ptr [rax]
.label_809:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a473
	.globl sub_40a473
	.type sub_40a473, @function
sub_40a473:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a47b
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_809
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a490
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	qword ptr [rdi + 8], rsi
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a495
	.globl sub_40a495
	.type sub_40a495, @function
sub_40a495:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a4a0
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
	#Procedure 0x40a512
	.globl sub_40a512
	.type sub_40a512, @function
sub_40a512:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a520

	.globl owner_failure_ok
	.type owner_failure_ok, @function
owner_failure_ok:
	push	rbx
	mov	rbx, rdi
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 0x16
	je	.label_811
	cmp	eax, 1
	jne	.label_812
.label_811:
	cmp	byte ptr [rbx + 0x1b], 0
	sete	al
	jmp	.label_810
.label_812:
	xor	eax, eax
.label_810:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a542
	.globl sub_40a542
	.type sub_40a542, @function
sub_40a542:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a550
	.globl rotr32
	.type rotr32, @function
rotr32:

	mov	ecx, esi
	ror	edi, cl
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a557
	.globl sub_40a557
	.type sub_40a557, @function
sub_40a557:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a560

	.globl buffer_lcm
	.type buffer_lcm, @function
buffer_lcm:
	mov	r8, rdx
	test	rdi, rdi
	je	.label_813
	test	rsi, rsi
	je	.label_815
	mov	rax, rdi
	mov	rdx, rsi
	nop	word ptr cs:[rax + rax]
.label_814:
	mov	rcx, rdx
	xor	edx, edx
	div	rcx
	test	rdx, rdx
	mov	rax, rcx
	jne	.label_814
	xor	edx, edx
	mov	rax, rdi
	div	rcx
	mov	r9, rax
	mov	rcx, r9
	imul	rcx, rsi
	cmp	rcx, r8
	ja	.label_815
	xor	edx, edx
	mov	rax, rcx
	div	rsi
	cmp	rax, r9
	jne	.label_815
	jmp	.label_816
.label_813:
	test	rsi, rsi
	mov	edi, 0x2000
	cmovne	rdi, rsi
.label_815:
	cmp	rdi, r8
	cmovbe	r8, rdi
	mov	rcx, r8
.label_816:
	mov	rax, rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a5d0
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
	je	.label_817
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_818:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_817
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_818
.label_817:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a633
	.globl sub_40a633
	.type sub_40a633, @function
sub_40a633:

	nop	word ptr cs:[rax + rax]
.label_820:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_819
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a672

	.globl restore_default_fscreatecon_or_die
	.type restore_default_fscreatecon_or_die, @function
restore_default_fscreatecon_or_die:
	push	rbx
	xor	edi, edi
	call	setfscreatecon
	test	eax, eax
	jne	.label_820
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a680

	.globl copy
	.type copy, @function
copy:
	push	rbx
	sub	rsp, 0x10
	mov	r11, r9
	mov	r10, r8
	mov	rax, rcx
	mov	qword ptr [word ptr [rip + top_level_src_name]],  rdi
	mov	qword ptr [word ptr [rip + top_level_dst_name]],  rsi
	mov	byte ptr [rsp + 0xf], 0
	lea	rbx, [rsp + 0xf]
	movzx	edx, dl
	mov	ecx, 0
	mov	r8d, 0
	mov	r9, rax
	push	r11
	push	r10
	push	rbx
	push	1
	call	copy_internal
	add	rsp, 0x30
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a6c9
	.globl sub_40a6c9
	.type sub_40a6c9, @function
sub_40a6c9:

	nop	dword ptr [rax]
.label_821:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a6d3
	.globl sub_40a6d3
	.type sub_40a6d3, @function
sub_40a6d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a6de

	.globl seen_file
	.type seen_file, @function
seen_file:
	test	rdi, rdi
	je	.label_821
	sub	rsp, 0x18
	mov	qword ptr [rsp], rsi
	mov	rax, qword ptr [rdx + 8]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rdx]
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsp]
	call	hash_lookup
	test	rax, rax
	setne	al
	add	rsp, 0x18
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a710

	.globl yesno
	.type yesno, @function
yesno:
	push	rbx
	sub	rsp, 0x10
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], 0
	mov	rdx,  qword ptr [word ptr [rip + stdin]]
	lea	rdi, [rsp]
	lea	rsi, [rsp + 8]
	call	getline
	test	rax, rax
	jle	.label_823
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx + rax - 1], 0xa
	jne	.label_822
	mov	byte ptr [rcx + rax - 1], 0
.label_822:
	mov	rdi, qword ptr [rsp]
	call	rpmatch
	test	eax, eax
	setg	bl
	jmp	.label_824
.label_823:
	xor	ebx, ebx
.label_824:
	mov	rdi, qword ptr [rsp]
	call	free
	mov	eax, ebx
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a773
	.globl sub_40a773
	.type sub_40a773, @function
sub_40a773:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a780

	.globl cp_options_default
	.type cp_options_default, @function
cp_options_default:
	push	rbx
	mov	rbx, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	call	geteuid
	test	eax, eax
	sete	byte ptr [rbx + 0x1b]
	sete	byte ptr [rbx + 0x1a]
	mov	dword ptr [rbx + 0x34], 0xffffffff
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a7b2
	.globl sub_40a7b2
	.type sub_40a7b2, @function
sub_40a7b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a7c0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_825
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_825:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a7de
	.globl sub_40a7de
	.type sub_40a7de, @function
sub_40a7de:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40a7e0
	.globl lsetfilecon
	.type lsetfilecon, @function
lsetfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a7f3
	.globl sub_40a7f3
	.type sub_40a7f3, @function
sub_40a7f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a800
	.globl lutimensat
	.type lutimensat, @function
lutimensat:

	mov	ecx, 0x100
	jmp	utimensat
	.section	.text
	.align	32
	#Procedure 0x40a80a
	.globl sub_40a80a
	.type sub_40a80a, @function
sub_40a80a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a810

	.globl free_entry
	.type free_entry, @function
free_entry:
	mov	qword ptr [rsi], 0
	mov	rax, qword ptr [rdi + 0x48]
	mov	qword ptr [rsi + 8], rax
	mov	qword ptr [rdi + 0x48], rsi
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a824
	.globl sub_40a824
	.type sub_40a824, @function
sub_40a824:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a830

	.globl same_file_ok
	.type same_file_ok, @function
same_file_ok:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x138
	mov	r14, r9
	mov	r15, r8
	mov	rbx, rcx
	mov	rbp, rsi
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_837
	mov	rax, qword ptr [rbp]
	cmp	rax, qword ptr [rbx]
	mov	byte ptr [r14], 0
	jne	.label_844
	mov	r13b, 1
	cmp	byte ptr [r15 + 0x17], 0
	je	.label_848
	mov	byte ptr [r14], 1
	mov	r12b, 1
	jmp	.label_827
.label_837:
	mov	byte ptr [r14], 0
.label_844:
	xor	r13d, r13d
.label_848:
	cmp	dword ptr [r15 + 4], 2
	jne	.label_826
	mov	eax, 0xf000
	mov	ecx, dword ptr [rbp + 0x18]
	and	ecx, eax
	cmp	ecx, 0xa000
	jne	.label_828
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	mov	rsi, rbp
	jne	.label_833
	mov	rsi, rdx
	call	same_name
	test	al, al
	jne	.label_838
	mov	r12b, 1
	cmp	dword ptr [r15], 0
	jne	.label_827
	test	r13b, r13b
	je	.label_838
	mov	byte ptr [r14], 1
	jmp	.label_843
.label_826:
	mov	r12b, 1
	test	r13b, r13b
	je	.label_827
	mov	qword ptr [rsp + 8], rdi
	lea	rbx, [rsp + 0xa8]
	mov	rdi, rdx
	mov	rsi, rbx
	mov	r13, rdx
	call	lstat
	test	eax, eax
	jne	.label_827
	mov	qword ptr [rsp + 0x10], r13
	lea	r13, [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r13
	call	lstat
	test	eax, eax
	jne	.label_827
	mov	rcx, r13
	mov	rax, qword ptr [rsp + 0x20]
	cmp	rax, qword ptr [rsp + 0xb0]
	jne	.label_836
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, qword ptr [rsp + 0xa8]
	sete	r13b
	jmp	.label_841
.label_828:
	mov	rsi, rbp
.label_833:
	cmp	dword ptr [r15], 0
	je	.label_845
	test	r13b, r13b
	je	.label_847
	mov	rsi, rdx
	call	same_name
	mov	r12b, al
	xor	r12b, 1
	jmp	.label_827
.label_845:
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_849
	cmp	byte ptr [r15 + 0x15], 0
	je	.label_834
.label_849:
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	mov	r12b, 1
	cmp	eax, 0xa000
	je	.label_827
	test	r13b, r13b
	je	.label_834
	cmp	qword ptr [rbx + 0x10], 2
	jb	.label_834
	mov	r13, rdi
	mov	qword ptr [rsp + 8], rsi
	mov	rsi, rdx
	mov	r12, rdx
	call	same_name
	mov	rsi, qword ptr [rsp + 8]
	mov	rdi, r13
	mov	rdx, r12
	test	al, al
	je	.label_843
.label_834:
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsi + 0x18]
	and	ecx, eax
	cmp	ecx, 0xa000
	je	.label_842
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	je	.label_842
	mov	rax, qword ptr [rsi + 8]
	mov	r12b, 1
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_827
	mov	rax, qword ptr [rsi]
	cmp	rax, qword ptr [rbx]
	jne	.label_827
	cmp	byte ptr [r15 + 0x17], 0
	je	.label_842
	mov	byte ptr [r14], 1
	jmp	.label_827
.label_847:
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_835
	cmp	dword ptr [r15 + 4], 2
	je	.label_835
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsi + 0x18]
	and	ecx, eax
	cmp	ecx, 0xa000
	jne	.label_835
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	jne	.label_840
.label_835:
	mov	r12b, 1
	jmp	.label_827
.label_838:
	xor	al, 1
	mov	r12b, al
	jmp	.label_827
.label_842:
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_830
	mov	eax, 0xf000
	and	eax, dword ptr [rbp + 0x18]
	cmp	eax, 0xa000
	jne	.label_830
	cmp	qword ptr [rbx + 0x10], 2
	jb	.label_830
	mov	rbp, rdi
	mov	r12, rdx
	mov	r13, rsi
	call	canonicalize_file_name
	mov	rsi, r13
	mov	rdi, rbp
	mov	rdx, r12
	mov	rbp, rax
	test	rbp, rbp
	je	.label_830
	mov	rdi, rbp
	mov	rsi, rdx
	call	same_name
	mov	r12b, al
	xor	r12b, 1
	mov	rdi, rbp
	call	free
	jmp	.label_827
.label_830:
	cmp	byte ptr [r15 + 0x2c], 0
	je	.label_839
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	mov	r12b, 1
	cmp	eax, 0xa000
	je	.label_827
.label_839:
	cmp	dword ptr [r15 + 4], 2
	jne	.label_840
	mov	rbp, rdx
	mov	eax, 0xf000
	and	eax, dword ptr [rsi + 0x18]
	cmp	eax, 0xa000
	jne	.label_846
	lea	rsi, [rsp + 0x18]
	call	stat
	mov	r12b, 1
	test	eax, eax
	mov	rdi, rbp
	jne	.label_827
	jmp	.label_829
.label_843:
	cmp	byte ptr [r15 + 0x18], 0
	sete	r12b
	jmp	.label_827
.label_836:
	xor	r13d, r13d
.label_841:
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, rcx
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsp + 0x30]
	and	ecx, eax
	cmp	ecx, 0xa000
	jne	.label_833
	and	eax, dword ptr [rsp + 0xc0]
	cmp	eax, 0xa000
	jne	.label_833
	cmp	byte ptr [r15 + 0x15], 0
	jne	.label_827
	jmp	.label_833
.label_846:
	lea	rdi, [rsp + 0x18]
	mov	edx, 0x90
	call	memcpy
	mov	rdi, rbp
.label_829:
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	jne	.label_831
	lea	rsi, [rsp + 0xa8]
	call	stat
	mov	r12b, 1
	test	eax, eax
	jne	.label_827
	jmp	.label_832
.label_831:
	lea	rdi, [rsp + 0xa8]
	mov	edx, 0x90
	mov	rsi, rbx
	call	memcpy
.label_832:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r12b, 1
	cmp	rax, qword ptr [rsp + 0xb0]
	jne	.label_827
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, qword ptr [rsp + 0xa8]
	jne	.label_827
	cmp	byte ptr [r15 + 0x17], 0
	je	.label_840
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	setne	byte ptr [r14]
	jmp	.label_827
.label_840:
	xor	r12d, r12d
.label_827:
	mov	eax, r12d
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ac02
	.globl sub_40ac02
	.type sub_40ac02, @function
sub_40ac02:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ac10
	.globl filemodestring
	.type filemodestring, @function
filemodestring:

	mov	edi, dword ptr [rdi + 0x18]
	jmp	strmode
	.section	.text
	.align	32
	#Procedure 0x40ac18
	.globl sub_40ac18
	.type sub_40ac18, @function
sub_40ac18:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ac20

	.globl update_timespec
	.type update_timespec, @function
update_timespec:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rbx, qword ptr [rsi]
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, 0x3ffffffe
	jne	.label_850
	mov	al, 1
	cmp	qword ptr [rbx + 0x18], 0x3ffffffe
	je	.label_856
	mov	rax, qword ptr [rbx + 8]
.label_850:
	cmp	rax, 0x3fffffff
	jne	.label_854
	cmp	qword ptr [rbx + 0x18], 0x3fffffff
	jne	.label_854
	mov	qword ptr [rsi], 0
	jmp	.label_851
.label_852:
	add	rbx, 0x10
	mov	rdi, rbx
	call	gettime
.label_851:
	xor	eax, eax
.label_856:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ac7b
	.globl sub_40ac7b
	.type sub_40ac7b, @function
sub_40ac7b:

	nop	
.label_855:
	mov	rdi, rbx
	call	gettime
.label_853:
	mov	rax, qword ptr [rbx + 0x18]
	cmp	rax, 0x3fffffff
	je	.label_852
	cmp	rax, 0x3ffffffe
	jne	.label_851
	mov	rdi, r14
	call	get_stat_mtime
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx + 0x18], rdx
	jmp	.label_851
.label_854:
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, 0x3fffffff
	je	.label_855
	cmp	rax, 0x3ffffffe
	jne	.label_853
	mov	rdi, r14
	call	get_stat_atime
	mov	qword ptr [rbx], rax
	mov	qword ptr [rbx + 8], rdx
	jmp	.label_853
.label_857:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40acd5
	.globl sub_40acd5
	.type sub_40acd5, @function
sub_40acd5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40acdf
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_857
	call	rpl_calloc
	test	rax, rax
	je	.label_857
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ad00
	.globl matchpathcon_init_prefix
	.type matchpathcon_init_prefix, @function
matchpathcon_init_prefix:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ad13
	.globl sub_40ad13
	.type sub_40ad13, @function
sub_40ad13:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ad20
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rsi, qword ptr [rdi]
	xor	edx, edx
	cmp	rsi, qword ptr [rdi + 8]
	mov	ecx, 0
	jae	.label_858
	mov	r8, qword ptr [rdi + 8]
	xor	ecx, ecx
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_863:
	cmp	qword ptr [rsi], 0
	je	.label_861
	mov	rax, rsi
	nop	dword ptr [rax]
.label_860:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_860
	inc	rdx
.label_861:
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_863
.label_858:
	cmp	rdx, qword ptr [rdi + 0x18]
	jne	.label_859
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_862
.label_859:
	xor	eax, eax
.label_862:
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ad79
	.globl sub_40ad79
	.type sub_40ad79, @function
sub_40ad79:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ad80

	.globl forget_created
	.type forget_created, @function
forget_created:
	sub	rsp, 0x18
	mov	qword ptr [rsp], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp + 0x10], 0
	mov	rdi,  qword ptr [word ptr [rip + src_to_dest]]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_864
	mov	rdi, rax
	call	src_to_dest_free
.label_864:
	add	rsp, 0x18
	ret	
	.section	.text
	.align	32
	#Procedure 0x40adb8
	.globl sub_40adb8
	.type sub_40adb8, @function
sub_40adb8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40adc0

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	je	.label_865
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
.label_865:
	push	rax
	mov	edi, 0x10
	call	malloc
	add	rsp, 8
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ade2
	.globl sub_40ade2
	.type sub_40ade2, @function
sub_40ade2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40adf0

	.globl copy_internal
	.type copy_internal, @function
copy_internal:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x298
	mov	r15, r9
	mov	rbx, r8
	mov	r12, rcx
	mov	qword ptr [rbp - 0x38], rsi
	mov	r14, rdi
	mov	rcx, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rbp + 0x20]
	mov	byte ptr [rbp - 0x29], dl
	mov	byte ptr [rax], 0
	mov	r13d, dword ptr [r15 + 0x34]
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_983
	test	r13d, r13d
	jns	.label_990
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	r8d, 1
	mov	rsi, r14
	mov	rcx, qword ptr [rbp - 0x38]
	call	renameatu
	mov	rcx, qword ptr [rbp + 0x28]
	xor	r13d, r13d
	test	eax, eax
	je	.label_990
	call	__errno_location
	mov	rcx, qword ptr [rbp + 0x28]
	mov	r13d, dword ptr [rax]
.label_990:
	test	r13d, r13d
	sete	al
	sete	byte ptr [rbp - 0x29]
	test	rcx, rcx
	je	.label_983
	mov	byte ptr [rcx], al
.label_983:
	mov	qword ptr [rbp - 0x68], rbx
	test	r13d, r13d
	je	.label_1002
	cmp	r13d, 0x11
	jne	.label_1004
	cmp	dword ptr [r15 + 8], 2
	jne	.label_1004
	jmp	.label_1007
.label_1002:
	cmp	byte ptr [r15 + 0x31], 0
	jne	.label_1007
.label_1004:
	test	r13d, r13d
	mov	rbx, r14
	cmove	rbx, qword ptr [rbp - 0x38]
	cmp	dword ptr [r15 + 4], 2
	jne	.label_1011
	lea	rsi, [rbp - 0x108]
	mov	rdi, rbx
	call	lstat
	jmp	.label_1013
.label_1011:
	lea	rsi, [rbp - 0x108]
	mov	rdi, rbx
	call	stat
.label_1013:
	test	eax, eax
	je	.label_1017
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_966
.label_1045:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r15
.label_976:
	call	error
.label_883:
	mov	eax, r12d
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1017:
	mov	ebx, dword ptr [rbp - 0xf0]
	mov	eax, ebx
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_1007
	cmp	byte ptr [r15 + 0x2a], 0
	je	.label_1037
.label_1007:
	mov	al, byte ptr [rbp + 0x10]
	test	al, al
	je	.label_893
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_893
	mov	eax, ebx
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_1048
	cmp	dword ptr [r15], 0
	jne	.label_1048
	lea	rdx, [rbp - 0x108]
	mov	rsi, r14
	call	seen_file
	test	al, al
	je	.label_1048
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1055
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	r12b, 1
	jmp	.label_883
.label_1048:
	mov	rdi, qword ptr [r15 + 0x48]
	lea	rdx, [rbp - 0x108]
	mov	rsi, r14
	call	record_file
	mov	al, byte ptr [rbp + 0x10]
.label_893:
	mov	qword ptr [rbp - 0x48], r14
	movzx	esi, al
	mov	rdi, r15
	call	should_dereference
	mov	byte ptr [rbp - 0x3c], al
	xor	eax, eax
	mov	qword ptr [rbp - 0x58], rax
	xor	r14d, r14d
	cmp	byte ptr [rbp - 0x29], 0
	mov	dword ptr [rbp - 0x4c], ebx
	jne	.label_904
	cmp	r13d, 0x11
	jne	.label_876
	cmp	dword ptr [r15 + 8], 2
	jne	.label_876
	xor	r14d, r14d
	jmp	.label_866
.label_876:
	mov	eax, ebx
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_870
	mov	r14b, 1
	cmp	byte ptr [r15 + 0x14], 0
	je	.label_873
	cmp	eax, 0xa000
	je	.label_873
	movzx	eax, ax
	cmp	eax, 0x4000
	je	.label_873
.label_870:
	mov	r14b, 1
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_873
	cmp	byte ptr [r15 + 0x2c], 0
	jne	.label_873
	cmp	byte ptr [r15 + 0x17], 0
	jne	.label_873
	cmp	dword ptr [r15], 0
	jne	.label_873
	cmp	byte ptr [r15 + 0x15], 0
	setne	r14b
.label_873:
	movzx	ecx, r14b
	shl	ecx, 8
	lea	rdx, [rbp - 0x198]
	mov	edi, 0xffffff9c
	mov	rsi, qword ptr [rbp - 0x38]
	call	fstatat
	test	eax, eax
	je	.label_866
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x28
	jne	.label_896
	cmp	byte ptr [r15 + 0x16], 0
	jne	.label_898
	mov	ebx, dword ptr [rax]
.label_896:
	cmp	ebx, 2
	jne	.label_901
	mov	byte ptr [rbp - 0x29], 1
.label_898:
	xor	r14d, r14d
	cmp	r13d, 0x11
	mov	eax, 0
	mov	qword ptr [rbp - 0x58], rax
	mov	ebx, dword ptr [rbp - 0x4c]
	jne	.label_904
.label_866:
	mov	byte ptr [rbp - 0x230], 0
	cmp	dword ptr [r15 + 8], 2
	mov	r13, qword ptr [rbp - 0x38]
	je	.label_914
	lea	rsi, [rbp - 0x108]
	lea	rcx, [rbp - 0x198]
	lea	r9, [rbp - 0x230]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, r13
	mov	r8, r15
	call	same_file_ok
	test	al, al
	je	.label_927
.label_914:
	and	ebx, 0xf000
	cmp	ebx, 0x4000
	je	.label_929
	mov	al, byte ptr [r15 + 0x2d]
	test	al, al
	je	.label_929
	cmp	byte ptr [r15 + 0x1f], 0
	je	.label_936
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_939
	mov	rax, qword ptr [rbp - 0x198]
	cmp	rax, qword ptr [rbp - 0x108]
	sete	al
	jmp	.label_1016
.label_1037:
	cmp	byte ptr [r15 + 0x19], 0
	je	.label_945
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_947
	jmp	.label_948
.label_927:
	mov	rbx, r13
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_952
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x48]
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, rbx
.label_960:
	call	quotearg_n_style
.label_988:
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r15
	mov	r8, rbx
	call	error
	jmp	.label_883
.label_901:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_966
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
.label_1030:
	mov	rdx, r14
	jmp	.label_976
.label_936:
	xor	eax, eax
	jmp	.label_979
.label_945:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_980
.label_948:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	r12d, r12d
.label_972:
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_879:
	mov	rdx, rbx
	jmp	.label_976
.label_939:
	xor	eax, eax
.label_1016:
	xor	al, 1
.label_979:
	movzx	ecx, al
	lea	rsi, [rbp - 0x198]
	lea	rdx, [rbp - 0x108]
	mov	rdi, r13
	call	utimecmp
	test	eax, eax
	js	.label_929
	mov	rax, qword ptr [rbp + 0x28]
	test	rax, rax
	je	.label_992
	mov	byte ptr [rax], 1
.label_992:
	mov	rdx, qword ptr [rbp - 0x108]
	mov	rsi, qword ptr [rbp - 0x100]
	mov	rdi, r13
	call	remember_copied
	mov	rbx, rax
	test	rbx, rbx
	je	.label_999
	movzx	ecx, byte ptr [r15 + 0x2e]
	movzx	r8d, byte ptr [rbp - 0x3c]
	mov	edx, 1
	mov	rdi, rbx
	mov	rsi, r13
	call	create_hard_link
	test	al, al
	je	.label_1003
.label_999:
	mov	r12b, 1
	jmp	.label_883
.label_929:
	mov	r13, r12
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_1008
	lea	rdx, [rbp - 0x198]
	mov	rdi, r15
	mov	rsi, qword ptr [rbp - 0x38]
	call	abandon_move
	test	al, al
	mov	rax, qword ptr [rbp + 0x28]
	je	.label_913
	mov	r12b, 1
	test	rax, rax
	je	.label_883
	mov	byte ptr [rax], 1
	jmp	.label_883
.label_1008:
	cmp	ebx, 0x4000
	je	.label_913
	mov	eax, dword ptr [r15 + 8]
	mov	r12b, 1
	cmp	eax, 2
	je	.label_883
	cmp	eax, 3
	jne	.label_913
	lea	rdx, [rbp - 0x198]
	mov	rdi, r15
	mov	rsi, qword ptr [rbp - 0x38]
	call	overwrite_ok
	test	al, al
	je	.label_883
	mov	al, byte ptr [rbp - 0x230]
	test	al, al
	je	.label_1027
	jmp	.label_883
.label_913:
	mov	r12b, 1
	cmp	byte ptr [rbp - 0x230], 0
	jne	.label_883
.label_1027:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x180]
	cmp	eax, 0x4000
	mov	r12, r13
	je	.label_1031
	cmp	ebx, 0x4000
	jne	.label_1035
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_1039
	cmp	dword ptr [r15], 0
	je	.label_1039
.label_1035:
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_1031
	cmp	dword ptr [r15], 3
	je	.label_1031
	mov	rdi, qword ptr [r15 + 0x40]
	lea	rdx, [rbp - 0x198]
	mov	rsi, qword ptr [rbp - 0x38]
	call	seen_file
	test	al, al
	je	.label_1031
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1052
	jmp	.label_1053
.label_1031:
	cmp	ebx, 0x4000
	je	.label_937
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x180]
	cmp	eax, 0x4000
	jne	.label_937
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_969
	cmp	dword ptr [r15], 0
	je	.label_969
.label_937:
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_1019
	mov	eax, 0xf000
	mov	ecx, dword ptr [rbp - 0xf0]
	and	ecx, eax
	cmp	ecx, 0x4000
	jne	.label_1019
	and	eax, dword ptr [rbp - 0x180]
	cmp	eax, 0x4000
	je	.label_1019
	cmp	dword ptr [r15], 0
	je	.label_1068
.label_1019:
	cmp	dword ptr [r15], 0
	je	.label_1071
	mov	rdi, qword ptr [rbp - 0x48]
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	dot_or_dotdot
	test	al, al
	jne	.label_1071
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_867
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x180]
	cmp	eax, 0x4000
	jne	.label_867
.label_1071:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x180]
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x58], rcx
	cmp	eax, 0x4000
	mov	ebx, dword ptr [rbp - 0x4c]
	je	.label_888
	xor	eax, eax
	mov	qword ptr [rbp - 0x58], rax
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_888
	cmp	byte ptr [r15 + 0x15], 0
	jne	.label_889
	cmp	byte ptr [r15 + 0x22], 0
	je	.label_890
	cmp	qword ptr [rbp - 0x188], 1
	ja	.label_889
.label_890:
	xor	eax, eax
	mov	qword ptr [rbp - 0x58], rax
	cmp	dword ptr [r15 + 4], 2
	jne	.label_888
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0xf0]
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x58], rcx
	cmp	eax, 0x8000
	je	.label_888
.label_889:
	mov	rdi, qword ptr [rbp - 0x38]
	call	unlink
	test	eax, eax
	je	.label_908
	call	__errno_location
	mov	r13d, dword ptr [rax]
	cmp	r13d, 2
	jne	.label_872
.label_908:
	mov	byte ptr [rbp - 0x29], 1
	xor	eax, eax
	mov	qword ptr [rbp - 0x58], rax
	cmp	byte ptr [r15 + 0x2e], 0
	je	.label_888
	xor	eax, eax
	mov	qword ptr [rbp - 0x58], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_236
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	ebx, dword ptr [rbp - 0x4c]
	mov	rdx, rcx
	call	__printf_chk
	jmp	.label_888
.label_1003:
	mov	qword ptr [rbp - 0x70], rbx
	xor	eax, eax
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_894
.label_867:
	cmp	dword ptr [r15], 3
	mov	r13, qword ptr [rbp - 0x38]
	je	.label_946
	lea	rsi, [rbp - 0x108]
	mov	rdi, rbx
	mov	rdx, r13
	call	source_is_dst_backup
	test	al, al
	je	.label_946
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_951
	mov	rbx, r13
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_953
	jmp	.label_954
.label_1039:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_956
.label_1053:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x38]
.label_886:
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x48]
	jmp	.label_960
.label_969:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_965
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	call	quotearg_style
	mov	rcx, rax
	jmp	.label_972
.label_946:
	mov	edx, dword ptr [r15]
	mov	edi, 0xffffff9c
	mov	rsi, r13
	call	backup_file_rename
	mov	rbx, rax
	test	rbx, rbx
	je	.label_977
	mov	rdi, rbx
	call	strlen
	mov	rdi, rsp
	lea	rdx, [rax + 1]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	sub	rdi, rax
	mov	rsp, rdi
	mov	rax, rdi
	mov	qword ptr [rbp - 0x58], rax
	mov	rsi, rbx
	call	memcpy
	mov	rdi, rbx
	call	free
	mov	ebx, dword ptr [rbp - 0x4c]
	jmp	.label_909
.label_977:
	call	__errno_location
	mov	r13d, dword ptr [rax]
	xor	eax, eax
	mov	qword ptr [rbp - 0x58], rax
	cmp	r13d, 2
	mov	ebx, dword ptr [rbp - 0x4c]
	jne	.label_923
.label_909:
	mov	byte ptr [rbp - 0x29], 1
.label_888:
	mov	r13d, 0x11
.label_904:
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_963
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_963
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_963
	cmp	dword ptr [r15], 0
	jne	.label_963
	test	r14b, r14b
	jne	.label_1000
	lea	rbx, [rbp - 0x230]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, rbx
	call	lstat
	test	eax, eax
	jne	.label_1005
	jmp	.label_1006
.label_1000:
	lea	rbx, [rbp - 0x198]
.label_1006:
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	jne	.label_1005
	mov	rdi, qword ptr [r15 + 0x40]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, rbx
	call	seen_file
	test	al, al
	je	.label_1005
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1012
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x48]
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x38]
	jmp	.label_960
.label_1005:
	mov	ebx, dword ptr [rbp - 0x4c]
.label_963:
	mov	qword ptr [rbp - 0x78], r12
	cmp	byte ptr [r15 + 0x2e], 0
	je	.label_995
	mov	eax, ebx
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_995
	mov	al, byte ptr [r15 + 0x18]
	test	al, al
	jne	.label_995
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x58]
	call	emit_verbose
.label_995:
	xor	r12d, r12d
	test	r13d, r13d
	je	.label_1032
	mov	ebx, dword ptr [rbp - 0x4c]
	and	ebx, 0xf000
	cmp	ebx, 0x4000
	jne	.label_919
	mov	al, byte ptr [r15 + 0x2a]
	test	al, al
	je	.label_919
	mov	rax, qword ptr [rbp - 0x108]
	mov	rcx, qword ptr [rbp - 0x100]
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_911
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, rcx
	mov	rdx, rax
	jmp	.label_1049
.label_919:
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_907
	cmp	qword ptr [rbp - 0xf8], 1
	jne	.label_907
	mov	rsi, qword ptr [rbp - 0x108]
	mov	rdi, qword ptr [rbp - 0x100]
	jmp	.label_1056
.label_907:
	xor	r12d, r12d
	cmp	byte ptr [r15 + 0x22], 0
	je	.label_1032
	xor	r12d, r12d
	cmp	byte ptr [r15 + 0x17], 0
	jne	.label_1032
	cmp	qword ptr [rbp - 0xf8], 1
	ja	.label_1062
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_1063
	cmp	dword ptr [r15 + 4], 3
	je	.label_1062
.label_1063:
	xor	r12d, r12d
	cmp	dword ptr [r15 + 4], 4
	jne	.label_1032
.label_1062:
	mov	rdx, qword ptr [rbp - 0x108]
	mov	rsi, qword ptr [rbp - 0x100]
	mov	rdi, qword ptr [rbp - 0x38]
.label_1049:
	call	remember_copied
	jmp	.label_1072
.label_911:
	mov	rdi, rcx
	mov	rsi, rax
.label_1056:
	call	src_to_dest_lookup
.label_1072:
	mov	r14, rax
	xor	r12d, r12d
	test	r14, r14
	je	.label_1032
	cmp	ebx, 0x4000
	jne	.label_869
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, r14
	call	same_name
	test	al, al
	je	.label_875
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_918
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rdx,  qword ptr [word ptr [rip + top_level_src_name]]
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r13, rax
	mov	rdx,  qword ptr [word ptr [rip + top_level_dst_name]]
	mov	edi, 1
	mov	esi, 4
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, rbx
	call	error
	mov	rax, qword ptr [rbp + 0x20]
	mov	byte ptr [rax], 1
	mov	qword ptr [rbp - 0x70], r14
	jmp	.label_894
.label_869:
	movzx	ecx, byte ptr [r15 + 0x2e]
	movzx	r8d, byte ptr [rbp - 0x3c]
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, qword ptr [rbp - 0x38]
	call	create_hard_link
	mov	r12b, 1
	test	al, al
	mov	qword ptr [rbp - 0x70], r14
	jne	.label_883
	jmp	.label_894
.label_875:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, r14
	call	same_name
	test	al, al
	je	.label_917
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_940
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + top_level_src_name]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	r12b, 1
	mov	rcx, qword ptr [rbp + 0x28]
	test	rcx, rcx
	je	.label_883
	mov	al, byte ptr [r15 + 0x18]
	test	al, al
	je	.label_883
	mov	byte ptr [rcx], 1
	jmp	.label_883
.label_917:
	mov	ecx, dword ptr [r15 + 4]
	cmp	ecx, 3
	sete	al
	cmp	ecx, 4
	je	.label_941
	and	al, byte ptr [rbp + 0x10]
	jne	.label_941
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_944
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x38]
	call	quotearg_n_style
	mov	r13, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r14
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, rbx
	call	error
	mov	qword ptr [rbp - 0x70], r14
	jmp	.label_894
.label_941:
	mov	r12, r14
.label_1032:
	cmp	byte ptr [r15 + 0x18], 0
	mov	ebx, dword ptr [rbp - 0x4c]
	je	.label_962
	cmp	r13d, 0x11
	mov	r14, qword ptr [rbp - 0x48]
	jne	.label_964
	mov	rdi, r14
	mov	rsi, qword ptr [rbp - 0x38]
	call	rename
	test	eax, eax
	je	.label_970
	call	__errno_location
	mov	r13d, dword ptr [rax]
.label_964:
	cmp	r13d, 0x16
	je	.label_971
	cmp	r13d, 0x12
	je	.label_973
	test	r13d, r13d
	jne	.label_974
.label_970:
	cmp	byte ptr [r15 + 0x2e], 0
	mov	rbx, qword ptr [rbp - 0x38]
	je	.label_978
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_981
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, qword ptr [rbp - 0x58]
	call	emit_verbose
.label_978:
	cmp	byte ptr [r15 + 0x21], 0
	je	.label_987
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	mov	rcx, r15
	call	set_file_security_ctx
.label_987:
	mov	rsi, rbx
	mov	rax, qword ptr [rbp + 0x28]
	test	rax, rax
	je	.label_991
	mov	byte ptr [rax], 1
.label_991:
	mov	r12b, 1
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_883
	cmp	byte ptr [r15 + 0x31], 0
	jne	.label_883
	mov	rdi, qword ptr [r15 + 0x40]
	lea	rdx, [rbp - 0x108]
	call	record_file
	jmp	.label_883
.label_971:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1001
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdx,  qword ptr [word ptr [rip + top_level_src_name]]
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r15, rax
	mov	rdx,  qword ptr [word ptr [rip + top_level_dst_name]]
	mov	edi, 1
	mov	esi, 4
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r15
	mov	r8, rbx
	call	error
	mov	rax, qword ptr [rbp + 0x20]
	mov	byte ptr [rax], 1
	mov	r12b, 1
	jmp	.label_883
.label_973:
	and	ebx, 0xf000
	cmp	ebx, 0x4000
	jne	.label_1020
	mov	rdi, qword ptr [rbp - 0x38]
	call	rmdir
	jmp	.label_1024
.label_974:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1025
	mov	edx, 5
	call	dcgettext
	mov	rdx, r14
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x38]
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, r14
	mov	rcx, r15
	mov	r8, rbx
	jmp	.label_1033
.label_1020:
	mov	rdi, qword ptr [rbp - 0x38]
	call	unlink
.label_1024:
	test	eax, eax
	je	.label_1042
	call	__errno_location
	mov	r13d, dword ptr [rax]
	cmp	r13d, 2
	jne	.label_975
.label_1042:
	cmp	ebx, 0x4000
	je	.label_1047
	mov	al, byte ptr [r15 + 0x2e]
	test	al, al
	je	.label_1047
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1051
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	rdi, r14
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x58]
	call	emit_verbose
.label_1047:
	mov	byte ptr [rbp - 0x29], 1
	mov	ebx, dword ptr [rbp - 0x4c]
.label_962:
	cmp	byte ptr [r15 + 0x2b], 0
	mov	r14d, ebx
	je	.label_1061
	mov	r14d, dword ptr [r15 + 0x10]
.label_1061:
	mov	r13d, 0x3f
	cmp	byte ptr [r15 + 0x1d], 0
	mov	rsi, qword ptr [rbp - 0x38]
	jne	.label_1064
	mov	eax, ebx
	and	eax, 0xf000
	xor	ecx, ecx
	cmp	eax, 0x4000
	mov	r13d, 0x12
	cmovne	r13d, ecx
.label_1064:
	movzx	ecx, byte ptr [rbp - 0x29]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	r8, r15
	call	set_process_security_ctx
	test	al, al
	je	.label_1074
	mov	qword ptr [rbp - 0x70], r12
	and	r13d, r14d
	mov	r12d, ebx
	and	r12d, 0xf000
	cmp	r12d, 0x4000
	jne	.label_925
	lea	rdi, [rbp - 0x108]
	mov	rbx, qword ptr [rbp - 0x68]
	mov	rsi, rbx
	call	is_ancestor
	test	al, al
	je	.label_878
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_881
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x48]
	call	quotearg_style
.label_996:
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	jmp	.label_887
.label_1074:
	xor	r12d, r12d
	jmp	.label_883
.label_925:
	cmp	byte ptr [r15 + 0x2c], 0
	mov	dword ptr [rbp - 0x50], r13d
	je	.label_892
	mov	r14, qword ptr [rbp - 0x48]
	cmp	byte ptr [r14], 0x2f
	je	.label_895
	mov	rdi, qword ptr [rbp - 0x38]
	call	dir_name
	mov	rbx, rax
	cmp	byte ptr [rbx], 0x2e
	jne	.label_899
	cmp	byte ptr [rbx + 1], 0
	je	.label_910
.label_899:
	lea	rsi, [rbp - 0x230]
	mov	edi, OFFSET FLAT:label_903
	call	stat
	test	eax, eax
	jne	.label_910
	lea	rsi, [rbp - 0x2c0]
	mov	rdi, rbx
	call	stat
	test	eax, eax
	je	.label_915
.label_910:
	mov	rdi, rbx
	call	free
.label_895:
	movzx	ecx, byte ptr [r15 + 0x16]
	mov	esi, 0xffffff9c
	mov	r8d, 0xffffffff
	mov	rdi, r14
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rdx, rbx
	call	force_symlinkat
	mov	r13d, eax
	test	r13d, r13d
	jle	.label_926
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_932
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rbp - 0x48], rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r14
	call	quotearg_n_style
	mov	r8, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, r12
	call	error
	jmp	.label_894
.label_878:
	mov	rax, rsp
	mov	rcx, rbx
	lea	rbx, [rax - 0x20]
	mov	rsp, rbx
	mov	qword ptr [rax - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x100]
	mov	qword ptr [rax - 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x108]
	mov	qword ptr [rax - 0x10], rcx
	cmp	byte ptr [rbp - 0x29], 0
	jne	.label_949
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x180]
	cmp	eax, 0x4000
	jne	.label_949
	cmp	byte ptr [r15 + 0x21], 0
	jne	.label_959
	cmp	byte ptr [r15 + 0x25], 0
	je	.label_961
.label_959:
	movzx	esi, byte ptr [r15 + 0x25]
	xor	r14d, r14d
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, r15
	call	set_file_security_ctx
	cmp	byte ptr [r15 + 0x26], 0
	mov	r13, qword ptr [rbp - 0x48]
	jne	.label_894
	mov	qword ptr [rbp - 0x68], rbx
	xor	ebx, ebx
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_935
.label_949:
	mov	qword ptr [rbp - 0x68], rbx
	and	r14d, 0xfff
	mov	esi, r13d
	not	esi
	and	esi, r14d
	mov	r14d, r13d
	mov	r13, qword ptr [rbp - 0x38]
	mov	rdi, r13
	call	mkdir
	test	eax, eax
	je	.label_982
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1069
	jmp	.label_1070
.label_892:
	cmp	byte ptr [r15 + 0x17], 0
	je	.label_985
	mov	r13b, 1
	cmp	byte ptr [r15 + 0x16], 0
	mov	al, 1
	jne	.label_986
	cmp	dword ptr [r15 + 8], 3
	sete	al
.label_986:
	movzx	edx, al
	movzx	r8d, byte ptr [rbp - 0x3c]
	xor	r14d, r14d
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x38]
	call	create_hard_link
	test	al, al
	je	.label_894
	jmp	.label_931
.label_975:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_994
	mov	edx, 5
	call	dcgettext
	mov	rdx, r14
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x38]
	call	quotearg_n_style
	mov	r8, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, r14
	mov	rcx, r15
.label_1033:
	call	error
	mov	rsi, qword ptr [rbp - 0x108]
	mov	rdi, qword ptr [rbp - 0x100]
	call	forget_created
	jmp	.label_883
.label_982:
	lea	rsi, [rbp - 0x198]
	mov	rdi, r13
	call	lstat
	test	eax, eax
	je	.label_1015
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_966
.label_1070:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r13
.label_924:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
.label_887:
	mov	rdx, rbx
.label_912:
	call	error
.label_894:
	cmp	byte ptr [r15 + 0x25], 0
	je	.label_1028
	call	restore_default_fscreatecon_or_die
.label_1028:
	cmp	qword ptr [rbp - 0x70], 0
	mov	r12, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbp - 0x58]
	jne	.label_1029
	mov	rsi, qword ptr [rbp - 0x108]
	mov	rdi, qword ptr [rbp - 0x100]
	call	forget_created
.label_1029:
	test	rbx, rbx
	je	.label_1038
	mov	rdi, rbx
	mov	rsi, r12
	call	rename
	test	eax, eax
	je	.label_1040
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rbx, r12
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1044
	jmp	.label_1045
.label_1038:
	xor	r12d, r12d
	jmp	.label_883
.label_1040:
	cmp	byte ptr [r15 + 0x2e], 0
	je	.label_1050
	mov	r15, r12
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1054
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	rbx, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r15
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r14
	mov	rdx, rbx
	call	__printf_chk
	jmp	.label_883
.label_1050:
	xor	r12d, r12d
	jmp	.label_883
.label_985:
	cmp	r12d, 0x8000
	je	.label_1066
	cmp	r12d, 0xa000
	je	.label_1059
	mov	al, byte ptr [r15 + 0x14]
	test	al, al
	je	.label_1059
.label_1066:
	and	r14d, 0x1ff
	sub	rsp, 8
	lea	rax, [rbp - 0x108]
	lea	r9, [rbp - 0x29]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, r15
	mov	ecx, r14d
	mov	r8d, r13d
	push	rax
	call	copy_reg
	add	rsp, 0x10
	test	al, al
	je	.label_894
	mov	bl, 1
	xor	r14d, r14d
	jmp	.label_882
.label_1015:
	mov	ecx, dword ptr [rbp - 0x180]
	mov	eax, ecx
	and	eax, 0x1c0
	cmp	eax, 0x1c0
	mov	dword ptr [rbp - 0x3c], ecx
	jne	.label_885
	xor	ebx, ebx
	mov	r13, qword ptr [rbp - 0x48]
	jmp	.label_1046
.label_915:
	mov	rax, qword ptr [rbp - 0x228]
	cmp	rax, qword ptr [rbp - 0x2b8]
	jne	.label_891
	mov	rax, qword ptr [rbp - 0x230]
	mov	qword ptr [rbp - 0x68], rax
	mov	r13, qword ptr [rbp - 0x2c0]
	mov	rdi, rbx
	call	free
	cmp	qword ptr [rbp - 0x68], r13
	mov	r14, qword ptr [rbp - 0x48]
	je	.label_895
	jmp	.label_905
.label_1059:
	movsx	eax, r12w
	cmp	eax, 0xfff
	jle	.label_1065
	movzx	eax, r12w
	cmp	eax, 0x6000
	mov	rbx, qword ptr [rbp - 0x48]
	je	.label_902
	cmp	eax, 0x2000
	je	.label_902
	cmp	eax, 0x1000
	jne	.label_920
	mov	ebx, r13d
	not	ebx
	and	ebx, dword ptr [rbp - 0x4c]
	xor	r14d, r14d
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x38]
	mov	esi, ebx
	call	mknod
	mov	r13b, 1
	test	eax, eax
	je	.label_931
	and	ebx, 0xffffefff
	mov	rdi, qword ptr [rbp - 0x38]
	mov	esi, ebx
	call	mkfifo
	test	eax, eax
	je	.label_934
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_938
	jmp	.label_922
.label_931:
	xor	ebx, ebx
	jmp	.label_942
.label_885:
	mov	esi, ecx
	or	esi, 0x1c0
	mov	rdi, qword ptr [rbp - 0x38]
	call	chmod
	mov	bl, 1
	test	eax, eax
	mov	r13, qword ptr [rbp - 0x48]
	je	.label_1046
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_706
.label_922:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	jmp	.label_924
.label_1046:
	mov	rax, qword ptr [rbp + 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_957
	mov	rdx, qword ptr [rbp - 0x198]
	mov	rsi, qword ptr [rbp - 0x190]
	mov	rdi, qword ptr [rbp - 0x38]
	call	remember_copied
	mov	rax, qword ptr [rbp + 0x18]
	mov	byte ptr [rax], 1
.label_957:
	cmp	byte ptr [r15 + 0x2e], 0
	je	.label_935
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_1018
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_916
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r13
	mov	r13, qword ptr [rbp - 0x48]
	mov	rdx, rcx
	call	__printf_chk
	jmp	.label_935
.label_1068:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_993
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x48]
	call	quotearg_n_style_colon
	mov	r15, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x38]
	call	quotearg_n_style_colon
	jmp	.label_988
.label_891:
	mov	rdi, rbx
	call	free
.label_905:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1073
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x38]
	call	quotearg_n_style_colon
	jmp	.label_996
.label_1065:
	movzx	eax, r12w
	cmp	eax, 0xa000
	mov	rbx, qword ptr [rbp - 0x48]
	je	.label_998
	cmp	eax, 0xc000
	jne	.label_920
.label_902:
	mov	esi, r13d
	not	esi
	and	esi, dword ptr [rbp - 0x4c]
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rdi, rbx
	call	mknod
	test	eax, eax
	je	.label_1010
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_933
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r12
	jmp	.label_912
.label_961:
	mov	qword ptr [rbp - 0x68], rbx
	xor	ebx, ebx
	xor	r14d, r14d
	mov	dword ptr [rbp - 0x3c], eax
	mov	r13, qword ptr [rbp - 0x48]
	jmp	.label_935
.label_923:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1022
	jmp	.label_1023
.label_872:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_730
.label_1023:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	jmp	.label_1030
.label_1018:
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, qword ptr [rbp - 0x38]
	call	emit_verbose
.label_935:
	mov	qword ptr [rbp - 0x60], rbx
	mov	dword ptr [rbp - 0x50], r14d
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_967
	mov	al, byte ptr [r15 + 0x1c]
	test	al, al
	je	.label_967
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x108]
	jne	.label_1043
.label_967:
	movzx	edx, byte ptr [rbp - 0x29]
	lea	rcx, [rbp - 0x108]
	mov	rdi, r13
	mov	rsi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rbp - 0x68]
	mov	r9, r15
	push	qword ptr [rbp + 0x20]
	push	qword ptr [rbp + 0x18]
	call	copy_dir
	add	rsp, 0x10
	mov	r13d, eax
	jmp	.label_1057
.label_1043:
	mov	r13b, 1
.label_1057:
	xor	r14d, r14d
	xor	ebx, ebx
	jmp	.label_1058
.label_951:
	mov	rbx, r13
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1060
.label_954:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	jmp	.label_886
.label_1010:
	mov	r13b, 1
.label_934:
	xor	r14d, r14d
	xor	ebx, ebx
	jmp	.label_942
.label_998:
	mov	rsi, qword ptr [rbp - 0xd8]
	mov	rdi, rbx
	call	areadlink_with_size
	mov	r13, rax
	test	r13, r13
	je	.label_1034
	movzx	ecx, byte ptr [r15 + 0x16]
	mov	esi, 0xffffff9c
	mov	r8d, 0xffffffff
	mov	rdi, r13
	mov	rdx, qword ptr [rbp - 0x38]
	call	force_symlinkat
	mov	r14d, eax
	test	r14d, r14d
	jle	.label_877
	cmp	byte ptr [r15 + 0x2d], 0
	je	.label_874
	mov	al, byte ptr [rbp - 0x29]
	test	al, al
	jne	.label_874
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x180]
	cmp	eax, 0xa000
	jne	.label_874
	mov	rbx, qword ptr [rbp - 0x168]
	mov	rdi, r13
	call	strlen
	cmp	rbx, rax
	jne	.label_874
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, rbx
	call	areadlink_with_size
	mov	rbx, rax
	test	rbx, rbx
	je	.label_874
	mov	rdi, rbx
	mov	rsi, r13
	call	strcmp
	mov	dword ptr [rbp - 0x68], eax
	mov	rdi, rbx
	call	free
	cmp	dword ptr [rbp - 0x68], 0
	je	.label_877
.label_874:
	mov	rdi, r13
	call	free
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_921
	jmp	.label_922
.label_920:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_900
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	jmp	.label_912
.label_1034:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_897
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x48]
	jmp	.label_924
.label_877:
	mov	rdi, r13
	call	free
	cmp	byte ptr [r15 + 0x25], 0
	je	.label_928
	call	restore_default_fscreatecon_or_die
.label_928:
	cmp	byte ptr [r15 + 0x1d], 0
	je	.label_926
	mov	esi, dword ptr [rbp - 0xec]
	mov	edx, dword ptr [rbp - 0xe8]
	mov	rdi, qword ptr [rbp - 0x38]
	call	lchown
	test	eax, eax
	je	.label_926
	mov	rdi, r15
	call	chown_failure_ok
	test	al, al
	je	.label_1014
.label_926:
	mov	r14b, 1
	xor	ebx, ebx
.label_882:
	mov	r13b, 1
.label_942:
	xor	eax, eax
	mov	qword ptr [rbp - 0x60], rax
.label_930:
	mov	dword ptr [rbp - 0x3c], eax
.label_1058:
	mov	al, byte ptr [rbp + 0x10]
	cmp	byte ptr [rbp - 0x29], 0
	jne	.label_871
	cmp	r12d, 0x4000
	je	.label_871
	mov	al, byte ptr [r15 + 0x14]
	test	al, al
	mov	al, byte ptr [rbp + 0x10]
	jne	.label_871
	cmp	byte ptr [r15 + 0x21], 0
	jne	.label_955
	cmp	byte ptr [r15 + 0x25], 0
	je	.label_871
.label_955:
	movzx	esi, byte ptr [r15 + 0x25]
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, r15
	call	set_file_security_ctx
	mov	al, byte ptr [rbp + 0x10]
	cmp	byte ptr [r15 + 0x26], 0
	jne	.label_894
.label_871:
	test	al, al
	je	.label_943
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_943
	lea	rsi, [rbp - 0x230]
	mov	rdi, qword ptr [rbp - 0x38]
	call	lstat
	test	eax, eax
	jne	.label_943
	mov	rdi, qword ptr [r15 + 0x40]
	lea	rdx, [rbp - 0x230]
	mov	rsi, qword ptr [rbp - 0x38]
	call	record_file
.label_943:
	cmp	r12d, 0x4000
	je	.label_997
	mov	al, byte ptr [r15 + 0x17]
	test	al, al
	jne	.label_906
.label_997:
	test	bl, bl
	jne	.label_906
	cmp	byte ptr [r15 + 0x1f], 0
	je	.label_950
	lea	rbx, [rbp - 0x108]
	mov	rdi, rbx
	call	get_stat_atime
	mov	qword ptr [rbp - 0x230], rax
	mov	qword ptr [rbp - 0x228], rdx
	mov	rdi, rbx
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x220], rax
	mov	qword ptr [rbp - 0x218], rdx
	test	r14b, r14b
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rbp - 0x230]
	je	.label_984
	call	utimens_symlink
	jmp	.label_989
.label_984:
	call	utimens
.label_989:
	test	eax, eax
	je	.label_950
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_743
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, rbx
	call	error
	cmp	byte ptr [r15 + 0x24], 0
	je	.label_950
	xor	r12d, r12d
	jmp	.label_883
.label_950:
	test	r14b, r14b
	mov	rbx, qword ptr [rbp - 0x38]
	jne	.label_906
	cmp	byte ptr [r15 + 0x1d], 0
	je	.label_1041
	cmp	byte ptr [rbp - 0x29], 0
	mov	r14, qword ptr [rbp - 0x48]
	jne	.label_1009
	mov	eax, dword ptr [rbp - 0xec]
	cmp	eax, dword ptr [rbp - 0x17c]
	jne	.label_1009
	mov	eax, dword ptr [rbp - 0xe8]
	cmp	eax, dword ptr [rbp - 0x178]
	je	.label_1021
.label_1009:
	movzx	r8d, byte ptr [rbp - 0x29]
	lea	rcx, [rbp - 0x108]
	lea	r9, [rbp - 0x198]
	mov	edx, 0xffffffff
	mov	rdi, r15
	mov	rsi, rbx
	call	set_owner
	cmp	eax, -1
	je	.label_868
	test	eax, eax
	jne	.label_1021
	and	dword ptr [rbp - 0x4c], 0xfffff1ff
	jmp	.label_1021
.label_1041:
	mov	r14, qword ptr [rbp - 0x48]
.label_1021:
	cmp	byte ptr [r15 + 0x1e], 0
	jne	.label_968
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_1026
.label_968:
	mov	esi, 0xffffffff
	mov	ecx, 0xffffffff
	mov	rdi, r14
	mov	rdx, rbx
	mov	r8d, dword ptr [rbp - 0x4c]
	call	copy_acl
	test	eax, eax
	je	.label_906
	cmp	byte ptr [r15 + 0x24], 0
	je	.label_906
.label_868:
	xor	r12d, r12d
	jmp	.label_883
.label_1026:
	cmp	byte ptr [r15 + 0x2b], 0
	je	.label_1036
	mov	edx, dword ptr [r15 + 0x10]
	mov	esi, 0xffffffff
	mov	rdi, rbx
	call	set_acl
	test	eax, eax
	je	.label_906
	xor	r12d, r12d
	jmp	.label_883
.label_1036:
	cmp	byte ptr [r15 + 0x20], 0
	je	.label_880
	mov	al, byte ptr [rbp - 0x29]
	test	al, al
	je	.label_880
	mov	eax, dword ptr [rbp - 0x4c]
	and	eax, 0x7000
	or	eax, 0x8000
	cmp	eax, 0xc000
	mov	eax, 0x1ff
	mov	ebx, 0x1b6
	cmove	ebx, eax
	call	cached_umask
	not	eax
	and	ebx, eax
	mov	esi, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x38]
	mov	edx, ebx
	call	set_acl
	test	eax, eax
	je	.label_906
	xor	r12d, r12d
	jmp	.label_883
.label_880:
	cmp	dword ptr [rbp - 0x50], 0
	je	.label_958
	call	cached_umask
	not	eax
	and	dword ptr [rbp - 0x50], eax
	mov	rax, qword ptr [rbp - 0x60]
	test	al, al
	jne	.label_884
	cmp	dword ptr [rbp - 0x50], 0
	je	.label_884
	cmp	byte ptr [rbp - 0x29], 0
	je	.label_1067
	lea	rsi, [rbp - 0x198]
	mov	rdi, qword ptr [rbp - 0x38]
	call	lstat
	test	eax, eax
	je	.label_1067
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_966
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_879
.label_958:
	mov	dword ptr [rbp - 0x50], 0
	jmp	.label_884
.label_1014:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	eax, eax
	mov	qword ptr [rbp - 0x60], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_501
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x38]
	call	error
	cmp	byte ptr [r15 + 0x24], 0
	jne	.label_894
	mov	r14b, 1
	xor	ebx, ebx
	mov	r13b, 1
	jmp	.label_930
.label_1067:
	mov	eax, dword ptr [rbp - 0x180]
	mov	dword ptr [rbp - 0x3c], eax
	not	eax
	test	dword ptr [rbp - 0x50], eax
	je	.label_884
	mov	al, 1
	mov	qword ptr [rbp - 0x60], rax
.label_884:
	mov	rax, qword ptr [rbp - 0x60]
	test	al, 1
	je	.label_906
	mov	esi, dword ptr [rbp - 0x3c]
	or	esi, dword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x38]
	call	chmod
	test	eax, eax
	je	.label_906
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
	cmp	byte ptr [r15 + 0x24], 0
	jne	.label_883
.label_906:
	test	r13b, r13b
	setne	r12b
	jmp	.label_883
	.section	.text
	.align	32
	#Procedure 0x40c911
	.globl sub_40c911
	.type sub_40c911, @function
sub_40c911:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c920

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	xor	r14d, r14d
	cmp	byte ptr [rbx], 0x2f
	sete	r14b
	call	last_component
	mov	rcx, rax
	sub	rcx, rbx
	nop	dword ptr [rax]
.label_1076:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_1075
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_1076
.label_1075:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c95b
	.globl sub_40c95b
	.type sub_40c95b, @function
sub_40c95b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c960

	.globl lstatat
	.type lstatat, @function
lstatat:
	mov	ecx, 0x100
	jmp	fstatat
	.section	.text
	.align	32
	#Procedure 0x40c96a
	.globl sub_40c96a
	.type sub_40c96a, @function
sub_40c96a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c970
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_1077
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_1078:
	mov	rcx, rdx
	shl	rcx, 5
	sub	rcx, rdx
	movzx	eax, al
	add	rax, rcx
	xor	edx, edx
	div	rsi
	movzx	eax, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_1078
.label_1077:
	mov	rax, rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c9a3
	.globl sub_40c9a3
	.type sub_40c9a3, @function
sub_40c9a3:

	nop	word ptr cs:[rax + rax]
.label_1079:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40c9b5
	.globl sub_40c9b5
	.type sub_40c9b5, @function
sub_40c9b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c9c3

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_1079
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c9d0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name_0]],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c9d8
	.globl sub_40c9d8
	.type sub_40c9d8, @function
sub_40c9d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c9e0
	.globl setfilecon
	.type setfilecon, @function
setfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c9f3
	.globl sub_40c9f3
	.type sub_40c9f3, @function
sub_40c9f3:

	nop	word ptr cs:[rax + rax]
.label_1081:
	add	rcx, 0x10
.label_1083:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_1080
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_1081
.label_1082:
	ret	
.label_1080:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40ca19
	.globl sub_40ca19
	.type sub_40ca19, @function
sub_40ca19:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ca20
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_1082
	mov	rcx, qword ptr [rdi]
	jmp	.label_1083
	.section	.text
	.align	32
	#Procedure 0x40ca2e
	.globl sub_40ca2e
	.type sub_40ca2e, @function
sub_40ca2e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40ca30

	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:
	mov	rax, qword ptr [rdi + 0x70]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ca35
	.globl sub_40ca35
	.type sub_40ca35, @function
sub_40ca35:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ca40

	.globl src_info_init
	.type src_info_init, @function
src_info_init:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x3d
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash_no_name
	mov	ecx, OFFSET FLAT:triple_compare
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	mov	qword ptr [rbx + 0x48], rax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ca66
	.globl sub_40ca66
	.type sub_40ca66, @function
sub_40ca66:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ca70

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_1084
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1086:
	cmp	qword ptr [rcx], 0
	je	.label_1085
	xor	esi, esi
	mov	rdi, rcx
	nop	dword ptr [rax + rax]
.label_1087:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_1087
	cmp	rsi, rax
	cmova	rax, rsi
.label_1085:
	add	rcx, 0x10
	cmp	rcx, rdx
	jb	.label_1086
.label_1084:
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cabd
	.globl sub_40cabd
	.type sub_40cabd, @function
sub_40cabd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40cac0

	.globl try_file
	.type try_file, @function
try_file:
	mov	esi, dword ptr [rsi]
	and	esi, 0xffffff3c
	or	esi, 0xc2
	mov	edx, 0x180
	xor	eax, eax
	jmp	open
	.section	.text
	.align	32
	#Procedure 0x40cada
	.globl sub_40cada
	.type sub_40cada, @function
sub_40cada:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cae0

	.globl extent_scan_read
	.type extent_scan_read, @function
extent_scan_read:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1008
	mov	r13, rdi
	mov	r15, qword ptr [r13 + 0x28]
	movabs	r12, 0x7fffffffffffffff
	xor	r14d, r14d
.label_1098:
	xor	esi, esi
	mov	edx, 0xff0
	lea	rdi, [rsp + 0x18]
	call	memset
	mov	rax, qword ptr [r13 + 8]
	mov	qword ptr [rsp + 8], rax
	mov	ecx, dword ptr [r13 + 0x10]
	mov	dword ptr [rsp + 0x18], ecx
	mov	dword ptr [rsp + 0x20], 0x48
	not	rax
	mov	qword ptr [rsp + 0x10], rax
	mov	edi, dword ptr [r13]
	mov	esi, 0xc020660b
	xor	eax, eax
	lea	rdx, [rsp + 8]
	call	ioctl
	test	eax, eax
	js	.label_1094
	mov	eax, dword ptr [rsp + 0x1c]
	test	rax, rax
	je	.label_1101
	mov	rsi, qword ptr [r13 + 0x18]
	mov	rcx, rax
	not	rcx
	cmp	rsi, rcx
	ja	.label_1105
	add	rsi, rax
	mov	qword ptr [r13 + 0x18], rsi
	mov	rdi, qword ptr [r13 + 0x28]
	sub	r15, rdi
	mov	edx, 0x18
	call	xnrealloc
	mov	qword ptr [r13 + 0x28], rax
	add	r15, rax
	cmp	dword ptr [rsp + 0x1c], 0
	je	.label_1096
	xor	eax, eax
	mov	r8d, dword ptr [rsp + 0x1c]
	nop	word ptr cs:[rax + rax]
.label_1095:
	mov	ecx, eax
	imul	rsi, rcx, 0x38
	mov	rcx, qword ptr [rsp + rsi + 0x28]
	mov	rdi, qword ptr [rsp + rsi + 0x38]
	mov	rdx, r12
	sub	rdx, rdi
	cmp	rcx, rdx
	ja	.label_1109
	lea	rdx, [rsp + rsi + 0x28]
	test	r14d, r14d
	je	.label_1099
	mov	ebp, dword ptr [rsp + rsi + 0x50]
	and	ebp, 0xfffffffe
	cmp	dword ptr [r15 + 0x10], ebp
	jne	.label_1103
	mov	rbp, qword ptr [r15 + 8]
	mov	rbx, qword ptr [r15]
	add	rbx, rbp
	cmp	rbx, rcx
	jne	.label_1103
	lea	rcx, [rsp + rsi + 0x50]
	add	rbp, rdi
	mov	qword ptr [r15 + 8], rbp
	mov	ecx, dword ptr [rcx]
	mov	dword ptr [r15 + 0x10], ecx
	jmp	.label_1097
	.section	.text
	.align	32
	#Procedure 0x40cc0c
	.globl sub_40cc0c
	.type sub_40cc0c, @function
sub_40cc0c:

	nop	dword ptr [rax]
.label_1103:
	mov	rcx, qword ptr [r15 + 8]
	add	rcx, qword ptr [r15]
	cmp	rcx, qword ptr [rdx]
	jbe	.label_1100
	mov	rcx, qword ptr [r15 + 8]
	add	rcx, qword ptr [r15]
	jmp	.label_1104
	.section	.text
	.align	32
	#Procedure 0x40cc25
	.globl sub_40cc25
	.type sub_40cc25, @function
sub_40cc25:

	nop	word ptr cs:[rax + rax]
.label_1099:
	mov	rcx, qword ptr [r13 + 8]
	cmp	rcx, qword ptr [rdx]
	jbe	.label_1100
	mov	rcx, qword ptr [r13 + 8]
.label_1104:
	mov	rsi, rcx
	sub	rsi, qword ptr [rdx]
	cmp	rsi, qword ptr [rdx + 0x10]
	jb	.label_1108
	mov	qword ptr [rdx], rcx
	sub	qword ptr [rdx + 0x10], rsi
	dec	eax
	jmp	.label_1097
	.section	.text
	.align	32
	#Procedure 0x40cc58
	.globl sub_40cc58
	.type sub_40cc58, @function
sub_40cc58:

	nop	dword ptr [rax + rax]
.label_1100:
	mov	rcx, qword ptr [r13 + 0x28]
	mov	edi, r14d
	lea	rdi, [rdi + rdi*2]
	lea	r15, [rcx + rdi*8]
	mov	rbp, qword ptr [rdx]
	mov	qword ptr [rcx + rdi*8], rbp
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rcx + rdi*8 + 8], rdx
	mov	edx, dword ptr [rsp + rsi + 0x50]
	mov	dword ptr [rcx + rdi*8 + 0x10], edx
	inc	r14d
.label_1097:
	inc	eax
	cmp	eax, r8d
	jb	.label_1095
.label_1096:
	test	byte ptr [r15 + 0x10], 1
	je	.label_1102
	mov	byte ptr [r13 + 0x21], 1
.label_1102:
	cmp	r14d, 0x49
	jb	.label_1093
	cmp	byte ptr [r13 + 0x21], 0
	jne	.label_1093
	mov	rax, qword ptr [r13 + 0x28]
	dec	r14d
	lea	rcx, [r14 + r14*2]
	lea	r15, [rax + rcx*8 - 0x18]
	nop	
.label_1093:
	mov	eax, r14d
	mov	qword ptr [r13 + 0x18], rax
	cmp	byte ptr [r13 + 0x21], 0
	jne	.label_1088
	mov	rax, qword ptr [r15 + 8]
	add	rax, qword ptr [r15]
	mov	qword ptr [r13 + 8], rax
	mov	al, 1
	cmp	r14d, 0x48
	jb	.label_1098
	jmp	.label_1092
.label_1108:
	cmp	qword ptr [r13 + 8], 0
	je	.label_1107
	xor	eax, eax
	jmp	.label_1092
.label_1094:
	cmp	qword ptr [r13 + 8], 0
	je	.label_1107
	xor	eax, eax
	jmp	.label_1092
.label_1107:
	mov	byte ptr [r13 + 0x20], 1
	xor	eax, eax
	jmp	.label_1092
.label_1101:
	mov	byte ptr [r13 + 0x21], 1
	cmp	qword ptr [r13 + 8], 0
	setne	al
	jmp	.label_1092
.label_1088:
	mov	al, 1
.label_1092:
	add	rsp, 0x1008
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1109:
	mov	edi, OFFSET FLAT:label_1106
	mov	esi, OFFSET FLAT:label_1090
	mov	edx, 0x8d
	mov	ecx, OFFSET FLAT:label_1091
	call	__assert_fail
.label_1105:
	mov	edi, OFFSET FLAT:label_1089
	mov	esi, OFFSET FLAT:label_1090
	mov	edx, 0x7e
	mov	ecx, OFFSET FLAT:label_1091
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x40cd5b
	.globl sub_40cd5b
	.type sub_40cd5b, @function
sub_40cd5b:

	nop	dword ptr [rax + rax]
.label_1110:
	mov	rdi, rsi
	mov	esi, edx
	jmp	chmod
	.section	.text
	.align	32
	#Procedure 0x40cd6a
	.globl sub_40cd6a
	.type sub_40cd6a, @function
sub_40cd6a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cd75

	.globl fchmod_or_lchmod
	.type fchmod_or_lchmod, @function
fchmod_or_lchmod:
	test	edi, edi
	js	.label_1110
	mov	esi, edx
	jmp	fchmod
	.section	.text
	.align	32
	#Procedure 0x40cd80
	.globl fsetfilecon
	.type fsetfilecon, @function
fsetfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cd93
	.globl sub_40cd93
	.type sub_40cd93, @function
sub_40cd93:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cda0

	.globl set_simple_backup_suffix
	.type set_simple_backup_suffix, @function
set_simple_backup_suffix:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	jne	.label_1111
	mov	edi, OFFSET FLAT:label_1114
	call	getenv
	mov	rbx, rax
	mov	eax, OFFSET FLAT:label_1112
	test	rbx, rbx
	je	.label_1113
.label_1111:
	mov	eax, OFFSET FLAT:label_1112
	cmp	byte ptr [rbx], 0
	je	.label_1113
	mov	rdi, rbx
	call	last_component
	cmp	rbx, rax
	mov	eax, OFFSET FLAT:label_1112
	cmove	rax, rbx
.label_1113:
	mov	qword ptr [word ptr [rip + simple_backup_suffix]],  rax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cde7
	.globl sub_40cde7
	.type sub_40cde7, @function
sub_40cde7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cdf0

	.globl triple_hash
	.type triple_hash, @function
triple_hash:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	hash_pjw
	xor	rax, qword ptr [rbx + 8]
	xor	edx, edx
	div	r14
	mov	rax, rdx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ce16
	.globl sub_40ce16
	.type sub_40ce16, @function
sub_40ce16:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ce20

	.globl setfscreatecon
	.type setfscreatecon, @function
setfscreatecon:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ce33
	.globl sub_40ce33
	.type sub_40ce33, @function
sub_40ce33:

	nop	word ptr cs:[rax + rax]
.label_1115:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40ce45
	.globl sub_40ce45
	.type sub_40ce45, @function
sub_40ce45:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ce53

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
	je	.label_1115
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
.label_1116:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cea3
	.globl sub_40cea3
	.type sub_40cea3, @function
sub_40cea3:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ceac

	.globl src_to_dest_compare
	.type src_to_dest_compare, @function
src_to_dest_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	jne	.label_1116
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	sete	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cec0

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
	je	.label_1119
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1117
	jmp	.label_1118
.label_1119:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_1118
.label_1117:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1118
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
.label_1118:
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
	#Procedure 0x40cf48
	.globl sub_40cf48
	.type sub_40cf48, @function
sub_40cf48:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cf50

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
	je	.label_1120
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1122
	jmp	.label_1121
.label_1120:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_1121
.label_1122:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1121
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
.label_1121:
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
	#Procedure 0x40cfc9
	.globl sub_40cfc9
	.type sub_40cfc9, @function
sub_40cfc9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40cfd0

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
	je	.label_1125
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1124
	jmp	.label_1123
.label_1125:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_1123
.label_1124:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1123
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
.label_1123:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d033
	.globl sub_40d033
	.type sub_40d033, @function
sub_40d033:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d040

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
	je	.label_1128
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1126
	jmp	.label_1127
.label_1128:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_1127
.label_1126:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1127
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_1127:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d09f
	.globl sub_40d09f
	.type sub_40d09f, @function
sub_40d09f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40d0a0

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
	je	.label_1129
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1131
	jmp	.label_1130
.label_1129:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_1130
.label_1131:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1130
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_1130:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d0e9
	.globl sub_40d0e9
	.type sub_40d0e9, @function
sub_40d0e9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d0f0

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
	je	.label_1134
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1133
	jmp	.label_1132
.label_1134:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_1132
.label_1133:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1132
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_1132:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d135
	.globl sub_40d135
	.type sub_40d135, @function
sub_40d135:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d140

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_1137
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_1136
	jmp	.label_1135
.label_1137:
	mov	eax, 1
	test	cl, cl
	je	.label_1135
.label_1136:
	xor	eax, eax
.label_1135:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d16f
	.globl sub_40d16f
	.type sub_40d16f, @function
sub_40d16f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40d170

	.globl get_nonce
	.type get_nonce, @function
get_nonce:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	r14, rdi
	xor	r15d, r15d
	mov	edi, OFFSET FLAT:label_1139
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1140
	cmp	rbx, 0x800
	mov	edx, 0x800
	cmovbe	rdx, rbx
	mov	edi, ebp
	mov	rsi, r14
	call	read
	mov	rbx, rax
	mov	edi, ebp
	call	close
	xor	r15d, r15d
	test	rbx, rbx
	js	.label_1140
	cmp	rbx, 0x7ff
	mov	r15, rbx
	ja	.label_1138
.label_1140:
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 0x10
	mov	ebx, 0x10
	cmovbe	rbx, rax
	lea	rbp, [rsp + 8]
	xor	esi, esi
	mov	rdi, rbp
	call	gettimeofday
	lea	rdi, [r14 + r15]
	mov	rsi, rbp
	mov	rdx, rbx
	call	memcpy
	add	rbx, r15
	cmp	rbx, 0x7ff
	ja	.label_1138
	mov	eax, 0x800
	sub	rax, rbx
	cmp	rax, 4
	mov	r15d, 4
	cmovbe	r15, rax
	call	getpid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp + 8]
	mov	rdx, r15
	call	memcpy
	add	r15, rbx
	cmp	r15, 0x7ff
	ja	.label_1138
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getppid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + r15]
	lea	rsi, [rsp + 8]
	mov	rdx, rbx
	call	memcpy
	add	rbx, r15
	cmp	rbx, 0x7ff
	ja	.label_1138
	mov	eax, 0x800
	sub	rax, rbx
	cmp	rax, 4
	mov	r15d, 4
	cmovbe	r15, rax
	call	getuid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp + 8]
	mov	rdx, r15
	call	memcpy
	add	r15, rbx
	cmp	r15, 0x7ff
	ja	.label_1138
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getgid
	mov	dword ptr [rsp + 8], eax
	add	r14, r15
	lea	rsi, [rsp + 8]
	mov	rdi, r14
	mov	rdx, rbx
	call	memcpy
.label_1138:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d309
	.globl sub_40d309
	.type sub_40d309, @function
sub_40d309:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d310
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d31a
	.globl sub_40d31a
	.type sub_40d31a, @function
sub_40d31a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d320

	.globl utimens
	.type utimens, @function
utimens:
	mov	rax, rsi
	mov	rcx, rdi
	mov	edi, 0xffffffff
	mov	rsi, rcx
	mov	rdx, rax
	jmp	fdutimens
	.section	.text
	.align	32
	#Procedure 0x40d336
	.globl sub_40d336
	.type sub_40d336, @function
sub_40d336:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d340

	.globl utimecmp
	.type utimecmp, @function
utimecmp:
	mov	eax, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 0xffffff9c
	mov	r8d, eax
	jmp	utimecmpat
	.section	.text
	.align	32
	#Procedure 0x40d355
	.globl sub_40d355
	.type sub_40d355, @function
sub_40d355:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d360

	.globl utimecmpat
	.type utimecmpat, @function
utimecmpat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xf8
	mov	ebp, r8d
	mov	rbx, rcx
	mov	r13, rdx
	mov	qword ptr [rsp + 0x10], rsi
	mov	r14d, edi
	mov	r12, qword ptr [r13 + 0x58]
	mov	r15, qword ptr [rbx + 0x58]
	mov	rdi, r13
	call	get_stat_mtime_ns
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	get_stat_mtime_ns
	mov	rbx, rax
	test	bpl, 1
	je	.label_1150
	cmp	r12, r15
	jne	.label_1141
	xor	ecx, ecx
	mov	rax, qword ptr [rsp]
	cmp	eax, ebx
	je	.label_1147
.label_1141:
	lea	rax, [r15 - 2]
	mov	ecx, 0xffffffff
	cmp	r12, rax
	jle	.label_1147
	lea	rax, [r12 - 2]
	mov	ecx, 1
	cmp	r15, rax
	jle	.label_1147
	cmp	qword ptr [word ptr [rip + utimecmpat.ht]],  0
	jne	.label_1160
	mov	edi, 0x10
	xor	esi, esi
	mov	edx, OFFSET FLAT:dev_info_hash
	mov	ecx, OFFSET FLAT:dev_info_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [word ptr [rip + utimecmpat.ht]],  rax
	test	rax, rax
	je	.label_1144
.label_1160:
	cmp	qword ptr [word ptr [rip + utimecmpat.new_dst_res]],  0
	jne	.label_1148
	mov	edi, 0x10
	call	malloc
	mov	qword ptr [word ptr [rip + utimecmpat.new_dst_res]],  rax
	xor	ecx, ecx
	test	rax, rax
	je	.label_1153
	mov	dword ptr [rax + 8], 0x77359400
	mov	rax,  qword ptr [word ptr [rip + utimecmpat.new_dst_res]]
	mov	byte ptr [rax + 0xc], 0
.label_1148:
	mov	rax, qword ptr [r13]
	mov	rsi,  qword ptr [word ptr [rip + utimecmpat.new_dst_res]]
	mov	qword ptr [rsi], rax
	mov	rdi,  qword ptr [word ptr [rip + utimecmpat.ht]]
	call	hash_insert
	mov	rcx, rax
	test	rcx, rcx
	je	.label_1153
	cmp	rcx,  qword ptr [word ptr [rip + utimecmpat.new_dst_res]]
	jne	.label_1149
	mov	qword ptr [word ptr [rip + utimecmpat.new_dst_res]],  0
	jmp	.label_1149
.label_1153:
	cmp	qword ptr [word ptr [rip + utimecmpat.ht]],  0
	je	.label_1142
	mov	rax, qword ptr [r13]
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi,  qword ptr [word ptr [rip + utimecmpat.ht]]
	lea	rsi, [rsp + 0x30]
	call	hash_lookup
	mov	rcx, rax
.label_1142:
	test	rcx, rcx
	jne	.label_1149
.label_1144:
	mov	dword ptr [rsp + 0x38], 0x77359400
	mov	byte ptr [rsp + 0x3c], 0
	lea	rcx, [rsp + 0x30]
.label_1149:
	cmp	byte ptr [rcx + 0xc], 0
	je	.label_1157
	mov	edi, dword ptr [rcx + 8]
	jmp	.label_1154
.label_1157:
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbx, qword ptr [r13 + 0x48]
	mov	eax, dword ptr [r13 + 0x68]
	mov	dword ptr [rsp + 8], eax
	mov	rdi, r13
	call	get_stat_atime_ns
	mov	rbp, rax
	mov	rdi, r13
	call	get_stat_ctime_ns
	mov	r9, rbp
	mov	r8, rbx
	mov	ecx, r8d
	or	ecx, r12d
	or	ecx, dword ptr [rsp + 8]
	and	ecx, 1
	movsxd	rdx, r9d
	imul	rsi, rdx, 0x66666667
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x22
	add	esi, edi
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	sub	edx, esi
	movsxd	rsi, eax
	imul	rdi, rsi, 0x66666667
	mov	rbp, rdi
	shr	rbp, 0x3f
	sar	rdi, 0x22
	add	edi, ebp
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	sub	esi, edi
	mov	rbx, qword ptr [rsp]
	movsxd	rdi, ebx
	imul	rdi, rdi, 0x66666667
	mov	rbp, rdi
	shr	rbp, 0x3f
	sar	rdi, 0x22
	add	edi, ebp
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	mov	ebp, ebx
	sub	ebp, edi
	or	ebp, edx
	or	ebp, esi
	je	.label_1165
	mov	r10, qword ptr [rsp + 0x20]
	mov	dword ptr [r10 + 8], 1
	mov	edi, 1
.label_1145:
	mov	dword ptr [r10 + 8], edi
	mov	byte ptr [r10 + 0xc], 1
	mov	rbx, qword ptr [rsp + 0x18]
.label_1154:
	xor	eax, eax
	cmp	edi, 0x77359400
	sete	al
	not	rax
	and	r15, rax
	mov	eax, ebx
	cdq	
	idiv	edi
	sub	ebx, edx
.label_1150:
	mov	ecx, 0xffffffff
	cmp	r12, r15
	jl	.label_1147
	mov	ecx, 1
	jg	.label_1147
	mov	rax, qword ptr [rsp]
	cmp	eax, ebx
	mov	ecx, 0xffffffff
	jl	.label_1147
	setg	al
	movzx	ecx, al
.label_1147:
	mov	eax, ecx
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1165:
	mov	r10, qword ptr [rsp + 0x20]
	cmp	dword ptr [r10 + 8], 0xb
	jl	.label_1161
	mov	qword ptr [rsp + 8], r8
	mov	r13d, 0xa
	mov	qword ptr [rsp + 0x28], r9
	mov	edx, r9d
	mov	rsi, qword ptr [rsp]
	mov	r11d, esi
	mov	rsi, qword ptr [rsp + 0x10]
.label_1158:
	movsxd	rdi, r11d
	imul	r11, rdi, 0x66666667
	mov	rdi, r11
	shr	rdi, 0x3f
	sar	r11, 0x22
	add	r11d, edi
	cdqe	
	imul	rax, rax, 0x66666667
	mov	rdi, rax
	shr	rdi, 0x3f
	sar	rax, 0x22
	add	eax, edi
	movsxd	rdx, edx
	imul	rdx, rdx, 0x66666667
	mov	rdi, rdx
	shr	rdi, 0x3f
	sar	rdx, 0x22
	add	edx, edi
	movsxd	r8, edx
	imul	rdi, r8, 0x66666667
	mov	rbx, rdi
	shr	rbx, 0x3f
	sar	rdi, 0x22
	add	edi, ebx
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	sub	r8d, edi
	movsxd	r9, eax
	imul	rbx, r9, 0x66666667
	mov	rbp, rbx
	shr	rbp, 0x3f
	sar	rbx, 0x22
	add	ebx, ebp
	add	ebx, ebx
	lea	ebp, [rbx + rbx*4]
	sub	r9d, ebp
	or	r9d, r8d
	movsxd	rbp, r11d
	imul	rbx, rbp, 0x66666667
	mov	rdi, rbx
	shr	rdi, 0x3f
	sar	rbx, 0x22
	add	ebx, edi
	add	ebx, ebx
	lea	edi, [rbx + rbx*4]
	sub	ebp, edi
	or	ebp, r9d
	jne	.label_1159
	cmp	r13d, 0x3b9aca00
	mov	ebx, r14d
	je	.label_1155
	add	r13d, r13d
	lea	r13d, [r13 + r13*4]
	cmp	r13d, dword ptr [r10 + 8]
	jl	.label_1158
.label_1159:
	mov	dword ptr [r10 + 8], r13d
	cmp	r13d, 2
	mov	edi, r13d
	mov	ebx, r14d
	mov	r8, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	jl	.label_1145
	jmp	.label_1164
.label_1161:
	mov	dword ptr [r10 + 8], 0xa
	mov	r13d, 0xa
	mov	rsi, qword ptr [rsp + 0x10]
	mov	ebx, r14d
	jmp	.label_1164
.label_1155:
	xor	ecx, 1
	shl	r13d, cl
	mov	dword ptr [r10 + 8], r13d
	mov	r8, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
.label_1164:
	xor	edi, edi
	cmp	r13d, 0x77359400
	sete	dil
	mov	ecx, 1
	cmp	r15, r12
	jl	.label_1147
	cmp	r12, r15
	setne	al
	mov	rdx, qword ptr [rsp]
	mov	rbp, qword ptr [rsp + 0x18]
	cmp	ebp, edx
	jg	.label_1156
	test	al, al
	je	.label_1147
.label_1156:
	mov	rax, rdi
	not	rax
	and	rax, r15
	mov	ecx, 0xffffffff
	cmp	r12, rax
	jl	.label_1147
	jne	.label_1163
	mov	rbp, qword ptr [rsp + 0x18]
	mov	eax, ebp
	cdq	
	idiv	r13d
	mov	eax, ebp
	sub	eax, edx
	mov	rdx, qword ptr [rsp]
	cmp	edx, eax
	jl	.label_1147
.label_1163:
	mov	qword ptr [rsp + 0x40], r8
	movsxd	rax, r9d
	mov	qword ptr [rsp + 0x48], rax
	or	rdi, r12
	mov	qword ptr [rsp + 0x50], rdi
	mov	eax, r13d
	imul	rax, rax, 0x38e38e39
	shr	rax, 0x21
	mov	rcx, qword ptr [rsp]
	add	eax, ecx
	cdqe	
	mov	qword ptr [rsp + 0x58], rax
	lea	rdx, [rsp + 0x40]
	mov	ecx, 0x100
	mov	edi, ebx
	call	utimensat
	mov	rsi, qword ptr [rsp + 0x10]
	mov	ecx, 0xfffffffe
	test	eax, eax
	jne	.label_1147
	lea	rdx, [rsp + 0x68]
	mov	ecx, 0x100
	mov	edi, ebx
	call	fstatat
	mov	r14d, eax
	cdqe	
	mov	ebp, ebx
	mov	rbx, qword ptr [rsp + 0xc0]
	xor	rbx, r12
	or	rbx, rax
	lea	rdi, [rsp + 0x68]
	call	get_stat_mtime_ns
	mov	rcx, qword ptr [rsp]
	movsxd	rcx, ecx
	xor	rax, rcx
	or	rax, rbx
	je	.label_1151
	mov	qword ptr [rsp + 0x50], r12
	mov	qword ptr [rsp + 0x58], rcx
	lea	rdx, [rsp + 0x40]
	mov	ecx, 0x100
	mov	edi, ebp
	mov	rsi, qword ptr [rsp + 0x10]
	call	utimensat
.label_1151:
	test	r14d, r14d
	je	.label_1143
	mov	ecx, 0xfffffffe
	jmp	.label_1147
.label_1143:
	mov	ebx, dword ptr [rsp + 0xc0]
	and	ebx, 1
	neg	ebx
	and	ebx, 0x3b9aca00
	lea	rdi, [rsp + 0x68]
	call	get_stat_mtime_ns
	add	rax, rbx
	movsxd	rcx, eax
	imul	rdx, rcx, 0x66666667
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x22
	add	edx, esi
	add	edx, edx
	lea	edx, [rdx + rdx*4]
	mov	edi, 1
	cmp	ecx, edx
	jne	.label_1146
	mov	ecx, 1
.label_1162:
	mov	edi, 0x77359400
	cmp	ecx, 0x3b9aca00
	je	.label_1146
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	cmp	ecx, r13d
	je	.label_1152
	cdqe	
	imul	rax, rax, 0x66666667
	mov	rdx, rax
	shr	rdx, 0x3f
	sar	rax, 0x22
	add	eax, edx
	movsxd	rdx, eax
	imul	rsi, rdx, 0x66666667
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x22
	add	esi, edi
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	cmp	edx, esi
	mov	edi, ecx
	je	.label_1162
.label_1146:
	mov	r10, qword ptr [rsp + 0x20]
	jmp	.label_1145
.label_1152:
	mov	edi, ecx
	mov	r10, qword ptr [rsp + 0x20]
	jmp	.label_1145
	.section	.text
	.align	32
	#Procedure 0x40d8fe
	.globl sub_40d8fe
	.type sub_40d8fe, @function
sub_40d8fe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40d900

	.globl re_protect
	.type re_protect, @function
re_protect:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15, rcx
	mov	rbx, rdx
	mov	r13, rsi
	mov	r14, rdi
	call	strlen
	mov	r12, rsp
	lea	rdx, [rax + 1]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	sub	r12, rax
	mov	rsp, r12
	mov	rdi, r12
	mov	rsi, r14
	call	memcpy
	mov	al, 1
	test	rbx, rbx
	je	.label_1166
	add	r13, r12
	lea	r14, [rbp - 0x50]
	nop	word ptr cs:[rax + rax]
.label_1177:
	mov	rax, qword ptr [rbx + 0x98]
	mov	byte ptr [r12 + rax], 0
	cmp	byte ptr [r15 + 0x1f], 0
	je	.label_1174
	mov	rdi, rbx
	call	get_stat_atime
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x48], rdx
	mov	rdi, rbx
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdi, r12
	mov	rsi, r14
	call	utimens
	test	eax, eax
	jne	.label_1172
.label_1174:
	cmp	byte ptr [r15 + 0x1d], 0
	je	.label_1176
	mov	esi, dword ptr [rbx + 0x1c]
	mov	edx, dword ptr [rbx + 0x20]
	mov	rdi, r12
	call	lchown
	test	eax, eax
	je	.label_1176
	mov	rdi, r15
	call	chown_failure_ok
	test	al, al
	je	.label_1168
	mov	edx, dword ptr [rbx + 0x20]
	mov	esi, 0xffffffff
	mov	rdi, r12
	call	lchown
.label_1176:
	cmp	byte ptr [r15 + 0x1e], 0
	je	.label_1173
	mov	r8d, dword ptr [rbx + 0x18]
	mov	esi, 0xffffffff
	mov	ecx, 0xffffffff
	mov	rdi, r13
	mov	rdx, r12
	call	copy_acl
	test	eax, eax
	je	.label_1169
	jmp	.label_1167
	.section	.text
	.align	32
	#Procedure 0x40da08
	.globl sub_40da08
	.type sub_40da08, @function
sub_40da08:

	nop	dword ptr [rax + rax]
.label_1173:
	cmp	byte ptr [rbx + 0x90], 0
	je	.label_1169
	mov	esi, dword ptr [rbx + 0x18]
	mov	rdi, r12
	call	chmod
	test	eax, eax
	jne	.label_1175
.label_1169:
	mov	rax, qword ptr [rbx + 0x98]
	mov	byte ptr [r12 + rax], 0x2f
	mov	rbx, qword ptr [rbx + 0xa0]
	test	rbx, rbx
	jne	.label_1177
	mov	al, 1
	jmp	.label_1166
.label_1172:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1170
	jmp	.label_1171
.label_1168:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_501
	jmp	.label_1171
.label_1175:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1178
.label_1171:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
.label_1167:
	xor	eax, eax
.label_1166:
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dab6
	.globl sub_40dab6
	.type sub_40dab6, @function
sub_40dab6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dac0

	.globl overwrite_ok
	.type overwrite_ok, @function
overwrite_ok:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	esi, dword ptr [r13 + 0x18]
	mov	rdi, r14
	call	writable_destination
	test	al, al
	je	.label_1180
	mov	r15,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1182
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rbx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rbp, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r15
	mov	rdx, r12
	mov	rcx, rbx
	mov	r8, rbp
	call	__fprintf_chk
	jmp	.label_1185
.label_1180:
	mov	edi, dword ptr [r13 + 0x18]
	lea	rsi, [rsp + 0xc]
	call	strmode
	mov	byte ptr [rsp + 0x16], 0
	mov	r15,  qword ptr [word ptr [rip + stderr]]
	cmp	byte ptr [rbx + 0x18], 0
	jne	.label_1181
	cmp	byte ptr [rbx + 0x15], 0
	jne	.label_1181
	cmp	byte ptr [rbx + 0x16], 0
	je	.label_1186
.label_1181:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1179
.label_1184:
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rbp,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rbx, rax
	mov	r9d, dword ptr [r13 + 0x18]
	and	r9d, 0xfff
	lea	rax, [rsp + 0xd]
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r15
	mov	rdx, r12
	mov	rcx, rbp
	mov	r8, rbx
	call	__fprintf_chk
.label_1185:
	call	yesno
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1186:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1183
	jmp	.label_1184
	.section	.text
	.align	32
	#Procedure 0x40dbd6
	.globl sub_40dbd6
	.type sub_40dbd6, @function
sub_40dbd6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dbe0

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
	#Procedure 0x40dc19
	.globl sub_40dc19
	.type sub_40dc19, @function
sub_40dc19:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40dc20

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
	#Procedure 0x40dc31
	.globl sub_40dc31
	.type sub_40dc31, @function
sub_40dc31:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dc40
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
	#Procedure 0x40dc54
	.globl sub_40dc54
	.type sub_40dc54, @function
sub_40dc54:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dc60
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dc6a
	.globl sub_40dc6a
	.type sub_40dc6a, @function
sub_40dc6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dc70

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
	mov	rcx,  qword ptr [word ptr [rip + label_229]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_230]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_231]]
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
	#Procedure 0x40dcdd
	.globl sub_40dcdd
	.type sub_40dcdd, @function
sub_40dcdd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40dce0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x40dced
	.globl sub_40dced
	.type sub_40dced, @function
sub_40dced:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40dcf0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	32
	#Procedure 0x40dcf7
	.globl sub_40dcf7
	.type sub_40dcf7, @function
sub_40dcf7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dd00

	.globl set_file_security_ctx
	.type set_file_security_ctx, @function
set_file_security_ctx:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	byte ptr [rcx + 0x23], 0
	je	.label_1187
	cmp	byte ptr [rcx + 0x26], 0
	je	.label_1190
.label_1187:
	call	restorecon
.label_1189:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1191
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r14
	call	quotearg_n_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
.label_1188:
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1190:
	mov	bl, byte ptr [rcx + 0x29]
	call	restorecon
	cmp	bl, 0
	jne	.label_1188
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	test	al, al
	je	.label_1189
	jmp	.label_1188
	.section	.text
	.align	32
	#Procedure 0x40dd79
	.globl sub_40dd79
	.type sub_40dd79, @function
sub_40dd79:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40dd80
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dd8a
	.globl sub_40dd8a
	.type sub_40dd8a, @function
sub_40dd8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dd90

	.globl areadlink_with_size
	.type areadlink_with_size, @function
areadlink_with_size:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdi
	cmp	rsi, 0x401
	lea	rax, [rsi + 1]
	mov	r12d, 0x401
	cmovb	r12, rax
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	mov	qword ptr [rsp], rax
	test	rbx, rbx
	je	.label_1194
	xor	eax, eax
	mov	qword ptr [rsp], rax
	nop	word ptr cs:[rax + rax]
.label_1193:
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r12
	call	readlink
	mov	r13, rax
	test	r13, r13
	jns	.label_1199
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	jne	.label_1197
.label_1199:
	cmp	r13, r12
	jb	.label_1192
	mov	rdi, rbx
	call	free
	mov	rax, r12
	shr	rax, 0x3e
	jne	.label_1195
	add	r12, r12
	jmp	.label_1196
	.section	.text
	.align	32
	#Procedure 0x40de23
	.globl sub_40de23
	.type sub_40de23, @function
sub_40de23:

	nop	word ptr cs:[rax + rax]
.label_1195:
	movabs	rax, 0x7fffffffffffffff
	cmp	r12, rax
	mov	r12, rax
	jae	.label_1200
.label_1196:
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_1193
	jmp	.label_1194
.label_1192:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp], rbx
	jmp	.label_1194
.label_1200:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_1198
.label_1197:
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
.label_1198:
	xor	eax, eax
	mov	qword ptr [rsp], rax
.label_1194:
	mov	rax, qword ptr [rsp]
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
	#Procedure 0x40de91
	.globl sub_40de91
	.type sub_40de91, @function
sub_40de91:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dea0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_1201]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	32
	#Procedure 0x40deb4
	.globl sub_40deb4
	.type sub_40deb4, @function
sub_40deb4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dec0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40deca
	.globl sub_40deca
	.type sub_40deca, @function
sub_40deca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ded0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	.section	.text
	.align	32
	#Procedure 0x40deda
	.globl sub_40deda
	.type sub_40deda, @function
sub_40deda:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dee0
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	mov	ecx, esi
	rol	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dee9
	.globl sub_40dee9
	.type sub_40dee9, @function
sub_40dee9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40def0

	.globl check_x_suffix
	.type check_x_suffix, @function
check_x_suffix:
	push	rbx
	mov	rbx, rsi
	mov	esi, 0x58
	call	__strspn_c1
	cmp	rax, rbx
	setae	al
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40df06
	.globl sub_40df06
	.type sub_40df06, @function
sub_40df06:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40df10

	.globl can_write_any_file
	.type can_write_any_file, @function
can_write_any_file:
	mov	al,  byte ptr [byte ptr [rip + can_write_any_file.initialized]]
	test	al, al
	jne	.label_1202
	push	rax
	call	geteuid
	test	eax, eax
	sete	byte ptr [byte ptr [rip + can_write_any_file.can_write]]
	mov	byte ptr [byte ptr [rip + can_write_any_file.initialized]],  1
	add	rsp, 8
.label_1202:
	mov	al,  byte ptr [byte ptr [rip + can_write_any_file.can_write]]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40df3b
	.globl sub_40df3b
	.type sub_40df3b, @function
sub_40df3b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40df40

	.globl clone_file
	.type clone_file, @function
clone_file:
	mov	ecx, esi
	mov	esi, 0x40049409
	xor	eax, eax
	mov	edx, ecx
	jmp	ioctl
	.section	.text
	.align	32
	#Procedure 0x40df50

	.globl randread_free
	.type randread_free, @function
randread_free:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	mov	esi, 0x1038
	call	explicit_bzero
	mov	rdi, rbx
	call	free
	test	r14, r14
	je	.label_1203
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	rpl_fclose
.label_1203:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x40df8a
	.globl sub_40df8a
	.type sub_40df8a, @function
sub_40df8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40df90
	.globl rotl16
	.type rotl16, @function
rotl16:

	mov	eax, edi
	mov	ecx, esi
	shl	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dfa4
	.globl sub_40dfa4
	.type sub_40dfa4, @function
sub_40dfa4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dfb0

	.globl randint_free
	.type randint_free, @function
randint_free:
	push	rbx
	mov	rbx, rdi
	mov	esi, 0x18
	call	explicit_bzero
	mov	rdi, rbx
	pop	rbx
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x40dfc7
	.globl sub_40dfc7
	.type sub_40dfc7, @function
sub_40dfc7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dfd0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_1211
	nop	
.label_1209:
	mov	edi, OFFSET FLAT:label_571
	call	strcmp
	test	eax, eax
	je	.label_1207
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_1209
.label_1207:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_571
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1212
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_572
	mov	ecx, OFFSET FLAT:label_1206
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_1204
	mov	esi, OFFSET FLAT:label_1205
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_1204
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1210
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_1204:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1213
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_571
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_1206
	mov	ecx, OFFSET FLAT:label_571
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1208
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_1214
	mov	ecx, OFFSET FLAT:label_601
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
	#Procedure 0x40e0ea
	.globl sub_40e0ea
	.type sub_40e0ea, @function
sub_40e0ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e0f0
	.globl security_check_context
	.type security_check_context, @function
security_check_context:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e103
	.globl sub_40e103
	.type sub_40e103, @function
sub_40e103:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e110

	.globl lutimens
	.type lutimens, @function
lutimens:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xc0
	mov	r14, rdi
	xor	ebp, ebp
	test	rsi, rsi
	lea	rax, [rsp + 0x10]
	cmove	rax, rsi
	mov	qword ptr [rsp + 8], rax
	je	.label_1222
	movups	xmm0, xmmword ptr [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rsi + 0x10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rdi, qword ptr [rsp + 8]
	call	validate_timespec
	mov	ebp, eax
	mov	ebx, 0xffffffff
	test	ebp, ebp
	js	.label_1219
.label_1222:
	cmp	dword ptr [dword ptr [rip + lutimensat_works_really]],  0
	js	.label_1224
	cmp	ebp, 2
	jne	.label_1226
	lea	rsi, [rsp + 0x30]
	mov	rdi, r14
	call	lstat
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1219
	mov	rbx, qword ptr [rsp + 8]
	cmp	qword ptr [rbx + 8], 0x3ffffffe
	jne	.label_1217
	lea	rdi, [rsp + 0x30]
	call	get_stat_atime
	mov	qword ptr [rbx], rax
	mov	qword ptr [rbx + 8], rdx
	jmp	.label_1216
.label_1217:
	cmp	qword ptr [rbx + 0x18], 0x3ffffffe
	jne	.label_1216
	lea	rdi, [rsp + 0x30]
	call	get_stat_mtime
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx + 0x18], rdx
.label_1216:
	inc	ebp
.label_1226:
	mov	rdx, qword ptr [rsp + 8]
	mov	edi, 0xffffff9c
	mov	ecx, 0x100
	mov	rsi, r14
	call	utimensat
	mov	ebx, eax
	test	ebx, ebx
	jle	.label_1225
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1223
.label_1225:
	je	.label_1221
.label_1223:
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_1221
.label_1224:
	mov	dword ptr [dword ptr [rip + lutimensat_works_really]],  0xffffffff
	test	ebp, ebp
	je	.label_1227
	cmp	ebp, 3
	je	.label_1220
	lea	rsi, [rsp + 0x30]
	mov	rdi, r14
	call	lstat
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1219
.label_1220:
	cmp	qword ptr [rsp + 8], 0
	je	.label_1215
	lea	rdi, [rsp + 0x30]
	lea	rsi, [rsp + 8]
	call	update_timespec
	xor	ebx, ebx
	test	al, al
	je	.label_1215
	jmp	.label_1219
.label_1221:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  1
	mov	dword ptr [dword ptr [rip + lutimensat_works_really]],  1
	jmp	.label_1219
.label_1227:
	lea	rsi, [rsp + 0x30]
	mov	rdi, r14
	call	lstat
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1219
.label_1215:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x48]
	cmp	eax, 0xa000
	jne	.label_1218
	call	__errno_location
	mov	dword ptr [rax], 0x26
	mov	ebx, 0xffffffff
	jmp	.label_1219
.label_1218:
	mov	rdx, qword ptr [rsp + 8]
	mov	edi, 0xffffffff
	mov	rsi, r14
	call	fdutimens
	mov	ebx, eax
.label_1219:
	mov	eax, ebx
	add	rsp, 0xc0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e2bb
	.globl sub_40e2bb
	.type sub_40e2bb, @function
sub_40e2bb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e2c0

	.globl errno_fail
	.type errno_fail, @function
errno_fail:
	push	rbx
	mov	ebx, edi
	call	__errno_location
	mov	dword ptr [rax], ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e2cc
	.globl sub_40e2cc
	.type sub_40e2cc, @function
sub_40e2cc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e2d0

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], rdx
	mov	r15, rsi
	mov	r13, rdi
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	base_len
	mov	rbp, rax
	sub	rbx, r13
	add	rbx, rbp
	mov	rdi, r15
	call	strlen
	test	rbp, rbp
	je	.label_1230
	cmp	byte ptr [r13 + rbx - 1], 0x2f
	je	.label_1231
	cmp	byte ptr [r15], 0x2f
	je	.label_1231
	mov	r12b, 0x2f
	jmp	.label_1228
.label_1230:
	cmp	byte ptr [r15], 0x2f
	mov	r12b, 0x2e
	je	.label_1228
.label_1231:
	xor	r12d, r12d
.label_1228:
	xor	ebp, ebp
	test	r12b, r12b
	setne	bpl
	mov	qword ptr [rsp + 8], rax
	lea	rax, [rax + rbx]
	lea	rdi, [rbp + rax + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_1232
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	add	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_1229
	mov	qword ptr [rax], rbp
.label_1229:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 8]
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	mov	rax, r14
.label_1232:
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
	#Procedure 0x40e3a8
	.globl sub_40e3a8
	.type sub_40e3a8, @function
sub_40e3a8:

	nop	dword ptr [rax + rax]
.label_1234:
	mov	r15, qword ptr [rbx]
.label_1233:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e3c2

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rbx, rax
	xor	r15d, r15d
	cmp	qword ptr [rbx], 0
	je	.label_1233
	test	rbx, rbx
	je	.label_1233
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_1235:
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	je	.label_1234
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_1234
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_1235
	jmp	.label_1233
	.section	.text
	.align	32
	#Procedure 0x40e410
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1236
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_1237
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1239
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_572
	mov	ecx, OFFSET FLAT:label_1206
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1238
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x40e484
	.globl sub_40e484
	.type sub_40e484, @function
sub_40e484:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e490

	.globl strmode
	.type strmode, @function
strmode:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	ebx, edi
	call	ftypelet
	mov	byte ptr [r14], al
	mov	al, bh
	test	al, 1
	mov	sil, 0x72
	mov	cl, 0x72
	jne	.label_1249
	mov	cl, 0x2d
.label_1249:
	mov	byte ptr [r14 + 1], cl
	mov	ecx, ebx
	sar	cl, 7
	and	cl, 0x4a
	add	cl, 0x2d
	mov	byte ptr [r14 + 2], cl
	mov	ecx, ebx
	and	ecx, 0x40
	mov	edx, ecx
	shr	edx, 1
	or	edx, 0x53
	test	ecx, ecx
	mov	r8b, 0x78
	mov	cl, 0x78
	jne	.label_1248
	mov	cl, 0x2d
.label_1248:
	test	al, 8
	jne	.label_1243
	mov	dl, cl
.label_1243:
	mov	byte ptr [r14 + 3], dl
	test	bl, 0x20
	mov	cl, 0x72
	jne	.label_1245
	mov	cl, 0x2d
.label_1245:
	mov	byte ptr [r14 + 4], cl
	test	bl, 0x10
	mov	dl, 0x77
	mov	cl, 0x77
	jne	.label_1247
	mov	cl, 0x2d
.label_1247:
	mov	byte ptr [r14 + 5], cl
	mov	ecx, ebx
	and	ecx, 8
	lea	edi, [rcx*4 + 0x53]
	mov	cl, 0x78
	jne	.label_1250
	mov	cl, 0x2d
.label_1250:
	test	al, 4
	jne	.label_1240
	mov	dil, cl
.label_1240:
	mov	byte ptr [r14 + 6], dil
	test	bl, 4
	jne	.label_1242
	mov	sil, 0x2d
.label_1242:
	mov	byte ptr [r14 + 7], sil
	test	bl, 2
	jne	.label_1246
	mov	dl, 0x2d
.label_1246:
	mov	byte ptr [r14 + 8], dl
	and	ebx, 1
	jne	.label_1241
	mov	r8b, 0x2d
.label_1241:
	test	al, 2
	je	.label_1244
	shl	ebx, 5
	or	ebx, 0x54
	mov	r8d, ebx
.label_1244:
	mov	byte ptr [r14 + 9], r8b
	mov	byte ptr [r14 + 0xa], 0x20
	mov	byte ptr [r14 + 0xb], 0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e55d
	.globl sub_40e55d
	.type sub_40e55d, @function
sub_40e55d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e560

	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:
	mov	rax, qword ptr [rdi + 0x50]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e565
	.globl sub_40e565
	.type sub_40e565, @function
sub_40e565:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e570

	.globl cp_option_init
	.type cp_option_init, @function
cp_option_init:
	push	rbx
	mov	rbx, rdi
	call	cp_options_default
	mov	byte ptr [rbx + 0x14], 1
	mov	dword ptr [rbx + 4], 1
	mov	byte ptr [rbx + 0x15], 0
	mov	byte ptr [rbx + 0x16], 0
	mov	byte ptr [rbx + 0x17], 0
	mov	dword ptr [rbx + 8], 4
	mov	byte ptr [rbx + 0x18], 0
	mov	byte ptr [rbx + 0x19], 0
	mov	dword ptr [rbx + 0x38], 0
	mov	byte ptr [rbx + 0x22], 0
	mov	word ptr [rbx + 0x20], 0
	mov	dword ptr [rbx + 0x1c], 0
	mov	byte ptr [rbx + 0x29], 0
	mov	dword ptr [rbx + 0x25], 0
	mov	byte ptr [rbx + 0x23], 1
	mov	byte ptr [rbx + 0x24], 0
	mov	byte ptr [rbx + 0x2a], 0
	mov	qword ptr [rbx + 0xc], 2
	mov	byte ptr [rbx + 0x2f], 0
	mov	dword ptr [rbx + 0x2b], 0
	mov	edi, OFFSET FLAT:label_1251
	call	getenv
	test	rax, rax
	setne	byte ptr [rbx + 0x30]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e5fb
	.globl sub_40e5fb
	.type sub_40e5fb, @function
sub_40e5fb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e600

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e60a
	.globl sub_40e60a
	.type sub_40e60a, @function
sub_40e60a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e610

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
	#Procedure 0x40e659
	.globl sub_40e659
	.type sub_40e659, @function
sub_40e659:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e660

	.globl dev_info_compare
	.type dev_info_compare, @function
dev_info_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e66a
	.globl sub_40e66a
	.type sub_40e66a, @function
sub_40e66a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e670

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
	jne	.label_1256
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
	je	.label_1252
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_1257
	mov	eax, OFFSET FLAT:label_1258
	jmp	.label_1255
.label_1252:
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
	je	.label_1259
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_1253
	mov	eax, OFFSET FLAT:label_1254
	jmp	.label_1255
.label_1259:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_166
	mov	eax, OFFSET FLAT:label_100
.label_1255:
	cmove	rax, rcx
.label_1256:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e72d
	.globl sub_40e72d
	.type sub_40e72d, @function
sub_40e72d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e730

	.globl numbered_backup
	.type numbered_backup, @function
numbered_backup:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r15, r9
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 0x20], rdx
	mov	ebx, edi
	mov	r12, qword ptr [r15]
	mov	qword ptr [rsp + 0x28], rsi
	mov	r14, qword ptr [rsi]
	mov	qword ptr [rsp + 0x48], r8
	lea	rbp, [r14 + r8]
	mov	rdi, rbp
	call	base_len
	mov	r13, rax
	test	r12, r12
	mov	qword ptr [rsp], r13
	je	.label_1278
	mov	rdi, r12
	call	rewinddir
	jmp	.label_1279
.label_1278:
	mov	rcx, qword ptr [rsp + 0x90]
	movzx	r13d, word ptr [rbp]
	mov	word ptr [rbp], 0x2e
	xor	edx, edx
	mov	edi, ebx
	mov	rsi, r14
	call	opendirat
	mov	r12, rax
	test	r12, r12
	je	.label_1270
	mov	word ptr [rbp], r13w
	mov	r13, qword ptr [rsp]
	mov	byte ptr [rbp + r13 + 4], 0
	mov	dword ptr [rbp + r13], 0x7e317e2e
	mov	qword ptr [r15], r12
.label_1279:
	mov	rdi, r12
	call	readdir
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1273
	lea	rax, [r13 + 4]
	mov	qword ptr [rsp + 0x50], rax
	lea	rax, [r13 + 2]
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rsp + 8]
	lea	rax, [rax + 4]
	mov	qword ptr [rsp + 0x30], rax
	lea	rax, [r13 + 0x17]
	mov	qword ptr [rsp + 0x38], rax
	mov	eax, 2
	mov	qword ptr [rsp + 0x10], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_1272
.label_1275:
	mov	r13d, 1
.label_1268:
	cmp	al, 0x7e
	jne	.label_1267
	mov	rax, qword ptr [rsp]
	lea	rbp, [rbp + rax + 0x15]
	cmp	byte ptr [rbp + r13 + 1], 0
	jne	.label_1267
	cmp	qword ptr [rsp + 0x18], r13
	jb	.label_1271
	jne	.label_1267
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [r14 + rax + 2]
	mov	rsi, rbp
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	jle	.label_1271
.label_1267:
	mov	r15, r14
	mov	r13, qword ptr [rsp]
	jmp	.label_1264
.label_1271:
	movzx	edx, bl
	lea	rcx, [rdx + r13]
	mov	rax, qword ptr [rsp + 0x30]
	mov	qword ptr [rsp + 0x18], rcx
	lea	rsi, [rax + rcx]
	mov	rbx, qword ptr [rsp + 0x20]
	cmp	rbx, rsi
	jae	.label_1276
	mov	rax, rsi
	shr	rax, 0x3e
	sete	cl
	shl	rsi, cl
	mov	rdi, r14
	mov	rbx, rsi
	mov	r15, rdx
	call	realloc
	mov	rdx, r15
	mov	r15, rax
	test	r15, r15
	jne	.label_1266
	jmp	.label_1265
.label_1276:
	mov	r15, r14
.label_1266:
	mov	qword ptr [rsp + 0x20], rbx
	mov	rcx, qword ptr [rsp + 8]
	lea	rax, [r15 + rcx]
	mov	byte ptr [r15 + rcx], 0x2e
	lea	rbx, [rax + rdx]
	mov	word ptr [r15 + rcx + 1], 0x307e
	mov	qword ptr [rsp + 0x10], rdx
	lea	rdi, [rdx + rax + 2]
	lea	rdx, [r13 + 2]
	mov	rsi, rbp
	call	memcpy
	lea	rax, [r13 + rbx + 1]
	mov	cl, byte ptr [r13 + rbx + 1]
	cmp	cl, 0x39
	jne	.label_1277
	mov	r13, qword ptr [rsp]
	nop	dword ptr [rax]
.label_1260:
	mov	byte ptr [rax], 0x30
	movzx	ecx, byte ptr [rax - 1]
	dec	rax
	cmp	cl, 0x39
	je	.label_1260
	jmp	.label_1262
.label_1277:
	mov	r13, qword ptr [rsp]
.label_1262:
	inc	cl
	mov	byte ptr [rax], cl
	jmp	.label_1264
	.section	.text
	.align	32
	#Procedure 0x40e91e
	.globl sub_40e91e
	.type sub_40e91e, @function
sub_40e91e:

	nop	
.label_1272:
	lea	rbx, [rbp + 0x13]
	mov	rdi, rbx
	call	strlen
	cmp	rax, qword ptr [rsp + 0x50]
	jb	.label_1269
	mov	rax, qword ptr [rsp + 0x48]
	lea	rdi, [r14 + rax]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x40]
	call	memcmp
	test	eax, eax
	jne	.label_1269
	mov	al, byte ptr [rbp + r13 + 0x15]
	mov	ecx, eax
	add	cl, 0xcf
	cmp	cl, 8
	ja	.label_1269
	lea	rcx, [rbp + r13 + 0x13]
	cmp	al, 0x39
	sete	bl
	movsx	eax, byte ptr [rcx + 3]
	mov	ecx, eax
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_1275
	mov	rcx, qword ptr [rsp + 0x38]
	lea	rcx, [rbp + rcx]
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_1263:
	cmp	al, 0x39
	sete	al
	and	bl, al
	movsx	eax, byte ptr [rcx + r13]
	mov	edx, eax
	add	edx, -0x30
	inc	r13
	cmp	edx, 0xa
	jb	.label_1263
	inc	r13
	jmp	.label_1268
	.section	.text
	.align	32
	#Procedure 0x40e9b1
	.globl sub_40e9b1
	.type sub_40e9b1, @function
sub_40e9b1:

	nop	word ptr cs:[rax + rax]
.label_1269:
	mov	r15, r14
.label_1264:
	mov	rdi, r12
	call	readdir
	mov	rbp, rax
	test	rbp, rbp
	mov	r14, r15
	jne	.label_1272
	jmp	.label_1274
.label_1273:
	mov	eax, 2
	mov	qword ptr [rsp + 0x10], rax
	mov	r15, r14
.label_1274:
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], r15
	mov	rcx, qword ptr [rsp + 0x10]
.label_1261:
	mov	eax, ecx
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1270:
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 0xc
	sete	cl
	or	ecx, 2
	mov	word ptr [rbp], r13w
	mov	rax, qword ptr [rsp]
	mov	byte ptr [rbp + rax + 4], 0
	mov	dword ptr [rbp + rax], 0x7e317e2e
	jmp	.label_1261
.label_1265:
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], r14
	mov	ecx, 3
	jmp	.label_1261
	.section	.text
	.align	32
	#Procedure 0x40ea3e
	.globl sub_40ea3e
	.type sub_40ea3e, @function
sub_40ea3e:

	nop	
.label_1280:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ea43

	.globl is_probably_sparse
	.type is_probably_sparse, @function
is_probably_sparse:
	mov	eax, 0xf000
	and	eax, dword ptr [rdi + 0x18]
	cmp	eax, 0x8000
	jne	.label_1280
	mov	rax, qword ptr [rdi + 0x30]
	mov	rcx, rax
	sar	rcx, 0x3f
	shr	rcx, 0x37
	add	rcx, rax
	sar	rcx, 9
	cmp	qword ptr [rdi + 0x40], rcx
	setl	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ea70

	.globl utimens_symlink
	.type utimens_symlink, @function
utimens_symlink:
	push	rbx
	call	lutimens
	mov	ebx, eax
	test	ebx, ebx
	je	.label_1281
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 0x26
	cmove	ebx, ecx
	mov	eax, ebx
	pop	rbx
	ret	
.label_1281:
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ea91
	.globl sub_40ea91
	.type sub_40ea91, @function
sub_40ea91:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40eaa0

	.globl io_blksize
	.type io_blksize, @function
io_blksize:
	mov	rcx, qword ptr [rsp + 0x40]
	test	rcx, rcx
	setle	al
	movabs	rdx, 0x2000000000000000
	cmp	rcx, rdx
	seta	dl
	cmp	rcx, 0x20000
	jl	.label_1282
	or	al, dl
	jne	.label_1282
	movabs	rax, 0x2000000000000001
	cmp	rcx, rax
	mov	edx, 0x200
	mov	eax, 0x200
	cmovb	rax, rcx
	test	rcx, rcx
	cmovle	rax, rdx
	ret	
.label_1282:
	mov	eax, 0x20000
	ret	
	.section	.text
	.align	32
	#Procedure 0x40eaf1
	.globl sub_40eaf1
	.type sub_40eaf1, @function
sub_40eaf1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40eb00
	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:

	mov	rax, qword ptr [rdi + 0x68]
	mov	rdx, qword ptr [rdi + 0x70]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40eb09
	.globl sub_40eb09
	.type sub_40eb09, @function
sub_40eb09:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40eb10

	.globl cached_umask
	.type cached_umask, @function
cached_umask:
	cmp	dword ptr [dword ptr [rip + cached_umask.mask]],  -1
	jne	.label_1283
	push	rax
	xor	edi, edi
	call	umask
	mov	dword ptr [dword ptr [rip + cached_umask.mask]],  eax
	mov	edi, eax
	call	umask
	add	rsp, 8
.label_1283:
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40eb39
	.globl sub_40eb39
	.type sub_40eb39, @function
sub_40eb39:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40eb40

	.globl savedir
	.type savedir, @function
savedir:
	push	rbp
	push	r14
	push	rbx
	mov	ebp, esi
	call	opendir_safer
	mov	rbx, rax
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_1284
	mov	rdi, rbx
	mov	esi, ebp
	call	streamsavedir
	mov	r14, rax
	mov	rdi, rbx
	call	closedir
	test	eax, eax
	je	.label_1284
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r14
	call	free
	mov	dword ptr [rbx], ebp
	xor	r14d, r14d
.label_1284:
	mov	rax, r14
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40eb8e
	.globl sub_40eb8e
	.type sub_40eb8e, @function
sub_40eb8e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40eb90

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_1285
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1285:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_1286
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1288
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1287
.label_1288:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1287:
	mov	edx, dword ptr [rax]
.label_1286:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ec54
	.globl sub_40ec54
	.type sub_40ec54, @function
sub_40ec54:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ec60

	.globl full_write
	.type full_write, @function
full_write:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	ebp, edi
	xor	r14d, r14d
	test	r15, r15
	je	.label_1289
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_1291:
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r15
	call	safe_write
	cmp	rax, -1
	je	.label_1289
	test	rax, rax
	je	.label_1290
	add	r14, rax
	add	rbx, rax
	sub	r15, rax
	jne	.label_1291
	jmp	.label_1289
.label_1290:
	call	__errno_location
	mov	dword ptr [rax], 0x1c
.label_1289:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ecbe
	.globl sub_40ecbe
	.type sub_40ecbe, @function
sub_40ecbe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40ecc0

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
	#Procedure 0x40ecf6
	.globl sub_40ecf6
	.type sub_40ecf6, @function
sub_40ecf6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ed00

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
	je	.label_1292
	mov	edx, OFFSET FLAT:label_1302
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_1308
.label_1292:
	mov	edx, OFFSET FLAT:label_1309
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_1308:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1295
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
	mov	esi, OFFSET FLAT:label_1310
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_1297
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_1298]]
.label_1512:
	add	rsp, 8
	jmp	.label_1296
.label_1297:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1305
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
	jmp	.label_1296
.label_1513:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1293
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
.label_1514:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1306
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
.label_1515:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1303
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
.label_1516:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1300
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
	jmp	.label_1296
.label_1517:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1299
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
	jmp	.label_1296
.label_1518:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1301
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
	jmp	.label_1296
.label_1519:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1304
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
	jmp	.label_1296
.label_1521:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1307
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
	jmp	.label_1296
.label_1520:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1294
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
.label_1296:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f058
	.globl sub_40f058
	.type sub_40f058, @function
sub_40f058:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f060

	.globl strip_trailing_slashes
	.type strip_trailing_slashes, @function
strip_trailing_slashes:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	last_component
	mov	rbx, rax
	cmp	byte ptr [rbx], 0
	cmove	rbx, r14
	mov	rdi, rbx
	call	base_len
	cmp	byte ptr [rbx + rax], 0
	setne	cl
	mov	byte ptr [rbx + rax], 0
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f093
	.globl sub_40f093
	.type sub_40f093, @function
sub_40f093:

	nop	
	nop	word ptr cs:[rax + rax]
.label_1312:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40f0a5
	.globl sub_40f0a5
	.type sub_40f0a5, @function
sub_40f0a5:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f0a9

	.globl remember_copied
	.type remember_copied, @function
remember_copied:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	edi, 0x18
	call	xmalloc
	mov	rbx, rax
	mov	rdi, r12
	call	xstrdup
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx], r15
	mov	qword ptr [rbx + 8], r14
	mov	rdi,  qword ptr [word ptr [rip + src_to_dest]]
	mov	rsi, rbx
	call	hash_insert
	mov	r14, rax
	test	r14, r14
	je	.label_1312
	xor	eax, eax
	cmp	r14, rbx
	je	.label_1311
	mov	rdi, rbx
	call	src_to_dest_free
	mov	rax, qword ptr [r14 + 0x10]
.label_1311:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f110

	.globl force_symlinkat
	.type force_symlinkat, @function
force_symlinkat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x118
	mov	ebp, r8d
	mov	ebx, ecx
	mov	r13, rdx
	mov	r15d, esi
	mov	r14, rdi
	test	ebp, ebp
	jns	.label_1316
	mov	rdi, r14
	mov	esi, r15d
	mov	rdx, r13
	call	symlinkat
	xor	ebp, ebp
	test	eax, eax
	je	.label_1313
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_1316:
	cmp	ebp, 0x11
	jne	.label_1313
	xor	bl, 1
	jne	.label_1313
	lea	rbx, [rsp + 0x10]
	mov	rdi, r13
	mov	rsi, rbx
	call	samedir_template
	mov	r12, rax
	test	r12, r12
	je	.label_1317
	mov	qword ptr [rsp], r14
	mov	dword ptr [rsp + 8], r15d
	lea	rdx, [rsp]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:try_symlink
	mov	r8d, 6
	mov	rdi, r12
	call	try_tempname_len
	test	eax, eax
	je	.label_1315
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_1314
.label_1317:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_1313
.label_1315:
	mov	edi, r15d
	mov	rsi, r12
	mov	edx, r15d
	mov	rcx, r13
	call	renameat
	mov	ebp, 0xffffffff
	test	eax, eax
	je	.label_1314
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edx, edx
	mov	edi, r15d
	mov	rsi, r12
	call	unlinkat
.label_1314:
	cmp	r12, rbx
	je	.label_1313
	mov	rdi, r12
	call	free
.label_1313:
	mov	eax, ebp
	add	rsp, 0x118
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f203
	.globl sub_40f203
	.type sub_40f203, @function
sub_40f203:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f210
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
	#Procedure 0x40f21f
	.globl sub_40f21f
	.type sub_40f21f, @function
sub_40f21f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40f220

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	call	fopen
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_1318
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_1322
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1319
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_1320
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_1318
.label_1320:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_1321
.label_1322:
	mov	rax, rbx
	jmp	.label_1318
.label_1319:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_1321:
	xor	eax, eax
.label_1318:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f2a6
	.globl sub_40f2a6
	.type sub_40f2a6, @function
sub_40f2a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f2b0

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x50
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x28]
	mov	rdi, rsi
	mov	rsi, rax
	call	compute_bucket_size
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1323
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	je	.label_1325
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_1323
	mov	qword ptr [rsp + 0x10], rbp
	shl	rbp, 4
	add	rbp, qword ptr [rsp]
	mov	qword ptr [rsp + 8], rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x18], xmm0
	mov	rax, qword ptr [rbx + 0x28]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rbx + 0x38]
	mov	qword ptr [rsp + 0x38], rax
	mov	rax, qword ptr [rbx + 0x40]
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rbx + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rsp]
	xor	edx, edx
	mov	rsi, rbx
	call	transfer_entries
	test	al, al
	je	.label_1326
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 0x10], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx + 0x18], rax
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	jmp	.label_1325
.label_1324:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40f390
	.globl sub_40f390
	.type sub_40f390, @function
sub_40f390:

	nop	dword ptr [rax + rax]
.label_1326:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	lea	rsi, [rsp]
	mov	edx, 1
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_1324
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_1324
	mov	rdi, qword ptr [rsp]
	call	free
.label_1323:
	xor	r14d, r14d
.label_1325:
	mov	eax, r14d
	add	rsp, 0x50
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f3e0

	.globl streamsavedir
	.type streamsavedir, @function
streamsavedir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r13, rdi
	mov	ecx, esi
	xor	r15d, r15d
	test	r13, r13
	je	.label_1334
	mov	rax,  qword ptr [word ptr [+ (rcx * 8) + comparison_function_table]]
	mov	qword ptr [rsp + 0x30], rax
	dec	rcx
	mov	qword ptr [rsp + 0x28], rcx
	xor	r14d, r14d
	xor	r12d, r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	eax, eax
	mov	qword ptr [rsp], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_1329
.label_1328:
	mov	rdi, rbx
	call	xstrdup
	mov	rcx, r12
	shl	rcx, 4
	mov	rdx, qword ptr [rsp]
	mov	qword ptr [rdx + rcx], rax
	mov	rax, qword ptr [r15]
	mov	qword ptr [rdx + rcx + 8], rax
	inc	r12
	add	r14, rbp
	nop	dword ptr [rax]
.label_1329:
	call	__errno_location
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	mov	rdi, r13
	call	readdir
	mov	r15, rax
	test	r15, r15
	je	.label_1338
	cmp	byte ptr [r15 + 0x13], 0x2e
	mov	eax, 0
	jne	.label_1327
	xor	eax, eax
	cmp	byte ptr [r15 + 0x14], 0x2e
	sete	al
	inc	rax
.label_1327:
	cmp	byte ptr [r15 + rax + 0x13], 0
	je	.label_1329
	mov	rbx, r15
	add	rbx, 0x13
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	inc	rbp
	cmp	qword ptr [rsp + 0x28], 1
	ja	.label_1336
	mov	rax, qword ptr [rsp + 0x20]
	cmp	rax, r12
	jne	.label_1328
	mov	qword ptr [rsp + 8], rax
	mov	edx, 0x10
	mov	rdi, qword ptr [rsp]
	lea	rsi, [rsp + 8]
	call	x2nrealloc
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_1328
.label_1336:
	mov	rax, qword ptr [rsp + 0x18]
	sub	rax, r14
	cmp	rax, rbp
	mov	rax, qword ptr [rsp + 0x10]
	ja	.label_1339
	mov	rcx, rbp
	add	rcx, r14
	mov	qword ptr [rsp + 8], rcx
	jb	.label_1330
	mov	edx, 1
	mov	rdi, rax
	lea	rsi, [rsp + 8]
	call	x2nrealloc
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x18], rcx
.label_1339:
	mov	rcx, rax
	mov	qword ptr [rsp + 0x10], rcx
	lea	rdi, [rax + r14]
	mov	rsi, rbx
	mov	rdx, rbp
	call	memcpy
	add	r14, rbp
	jmp	.label_1329
.label_1338:
	mov	ebx, dword ptr [rbp]
	test	ebx, ebx
	je	.label_1333
	mov	rdi, qword ptr [rsp]
	call	free
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	mov	dword ptr [rbp], ebx
	xor	r15d, r15d
	jmp	.label_1334
.label_1333:
	cmp	qword ptr [rsp + 0x28], 1
	mov	r15, qword ptr [rsp + 0x10]
	mov	r13, qword ptr [rsp]
	ja	.label_1340
	test	r12, r12
	je	.label_1332
	mov	edx, 0x10
	mov	rdi, r13
	mov	rsi, r12
	mov	rcx, qword ptr [rsp + 0x30]
	call	qsort
	inc	r14
	mov	rdi, r14
	call	xmalloc
	mov	r15, rax
	xor	r14d, r14d
	mov	rbx, r13
	nop	dword ptr [rax]
.label_1337:
	lea	rbp, [r15 + r14]
	mov	rsi, qword ptr [rbx]
	mov	rdi, rbp
	call	stpcpy
	inc	r14
	sub	r14, rbp
	add	r14, rax
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x10
	dec	r12
	jne	.label_1337
	jmp	.label_1331
.label_1340:
	cmp	qword ptr [rsp + 0x18], r14
	jne	.label_1335
	lea	rsi, [r14 + 1]
	mov	rdi, r15
	call	xrealloc
	mov	r15, rax
	jmp	.label_1335
.label_1332:
	inc	r14
	mov	rdi, r14
	call	xmalloc
	mov	r15, rax
	xor	r14d, r14d
.label_1331:
	mov	rdi, r13
	call	free
.label_1335:
	mov	byte ptr [r15 + r14], 0
.label_1334:
	mov	rax, r15
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1330:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40f638
	.globl sub_40f638
	.type sub_40f638, @function
sub_40f638:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f640
	.globl security_compute_create
	.type security_compute_create, @function
security_compute_create:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f653
	.globl sub_40f653
	.type sub_40f653, @function
sub_40f653:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f660

	.globl next_prime
	.type next_prime, @function
next_prime:
	push	r14
	push	rbx
	push	rax
	cmp	rdi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rdi
	or	rbx, 1
	mov	r14, -1
	jmp	.label_1341
	.section	.text
	.align	32
	#Procedure 0x40f67e
	.globl sub_40f67e
	.type sub_40f67e, @function
sub_40f67e:

	nop	
.label_1342:
	add	rbx, 2
.label_1341:
	cmp	rbx, -1
	je	.label_1343
	mov	rdi, rbx
	call	is_prime
	test	al, al
	je	.label_1342
	mov	r14, rbx
.label_1343:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f6a4
	.globl sub_40f6a4
	.type sub_40f6a4, @function
sub_40f6a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f6b0

	.globl ptr_align
	.type ptr_align, @function
ptr_align:
	lea	rcx, [rdi + rsi - 1]
	xor	edx, edx
	mov	rax, rcx
	div	rsi
	sub	rcx, rdx
	mov	rax, rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f6c4
	.globl sub_40f6c4
	.type sub_40f6c4, @function
sub_40f6c4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f6d0

	.globl src_to_dest_free
	.type src_to_dest_free, @function
src_to_dest_free:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x40f6e6
	.globl sub_40f6e6
	.type sub_40f6e6, @function
sub_40f6e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f6f0
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f6f5
	.globl sub_40f6f5
	.type sub_40f6f5, @function
sub_40f6f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f700

	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:
	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_1344
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_1344:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40f726
	.globl sub_40f726
	.type sub_40f726, @function
sub_40f726:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f730

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_1345
	test	rbx, rbx
	jne	.label_1345
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1345:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1347
	test	rax, rax
	je	.label_1346
.label_1347:
	pop	rbx
	ret	
.label_1346:
	call	xalloc_die
.label_1351:
	inc	rax
	mov	sil, dl
.label_1352:
	movzx	ecx, byte ptr [rax]
	mov	dl, 1
	cmp	cl, 0x2f
	je	.label_1351
	test	cl, cl
	je	.label_1349
	mov	edx, esi
	and	dl, 1
	je	.label_1350
	xor	esi, esi
.label_1350:
	test	dl, dl
	cmovne	rdi, rax
	mov	edx, esi
	jmp	.label_1351
.label_1349:
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f78b
	.globl sub_40f78b
	.type sub_40f78b, @function
sub_40f78b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f790

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_1348:
	cmp	byte ptr [rdi + 1], 0x2f
	lea	rdi, [rdi + 1]
	je	.label_1348
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_1352
	.section	.text
	.align	32
	#Procedure 0x40f7b1
	.globl sub_40f7b1
	.type sub_40f7b1, @function
sub_40f7b1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f7c0
	.globl try_tempname
	.type try_tempname, @function
try_tempname:

	mov	r8d, 6
	jmp	try_tempname_len
	.section	.text
	.align	32
	#Procedure 0x40f7cb
	.globl sub_40f7cb
	.type sub_40f7cb, @function
sub_40f7cb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f7d0

	.globl write_zeros
	.type write_zeros, @function
write_zeros:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14d, edi
	cmp	qword ptr [word ptr [rip + write_zeros.zeros]],  0
	jne	.label_1353
	mov	al,  byte ptr [byte ptr [rip + write_zeros.nz]]
	test	al, al
	mov	eax, 0x400
	mov	edi, 0x20000
	cmovne	rdi, rax
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [word ptr [rip + write_zeros.zeros]],  rax
	test	rax, rax
	jne	.label_1353
	mov	qword ptr [word ptr [rip + write_zeros.zeros]], OFFSET FLAT:write_zeros.fallback
	mov	byte ptr [byte ptr [rip + write_zeros.nz]],  1
.label_1353:
	mov	r15d, 0x400
	nop	dword ptr [rax + rax]
.label_1355:
	mov	al, 1
	test	rbx, rbx
	je	.label_1354
	movzx	eax,  byte ptr [byte ptr [rip + write_zeros.nz]]
	test	al, al
	mov	ebp, 0x20000
	cmovne	rbp, r15
	cmp	rbp, rbx
	cmovae	rbp, rbx
	mov	rsi,  qword ptr [word ptr [rip + write_zeros.zeros]]
	mov	edi, r14d
	mov	rdx, rbp
	call	full_write
	mov	rcx, rax
	xor	eax, eax
	cmp	rcx, rbp
	mov	edx, 0
	cmove	rdx, rbp
	sub	rbx, rdx
	cmp	rcx, rbp
	je	.label_1355
.label_1354:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f886
	.globl sub_40f886
	.type sub_40f886, @function
sub_40f886:

	nop	word ptr cs:[rax + rax]
.label_1356:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40f895
	.globl sub_40f895
	.type sub_40f895, @function
sub_40f895:

	nop	word ptr cs:[rax + rax]
.label_1357:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f8ab

	.globl record_file
	.type record_file, @function
record_file:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	test	r14, r14
	je	.label_1357
	mov	edi, 0x18
	call	xmalloc
	mov	rbx, rax
	mov	rdi, r12
	call	xstrdup
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [r15]
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, r14
	mov	rsi, rbx
	call	hash_insert
	test	rax, rax
	je	.label_1356
	cmp	rax, rbx
	je	.label_1357
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	triple_free
	.section	.text
	.align	32
	#Procedure 0x40f910
	.globl rotr8
	.type rotr8, @function
rotr8:

	mov	eax, edi
	mov	ecx, esi
	shr	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f924
	.globl sub_40f924
	.type sub_40f924, @function
sub_40f924:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f930

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	test	r14, r14
	je	.label_1366
	lea	rdx, [rsp]
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	je	.label_1365
	test	rbx, rbx
	je	.label_1361
	mov	qword ptr [rbx], rax
	jmp	.label_1361
.label_1365:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_1371
	cvtsi2ss	xmm0, rcx
	jmp	.label_1359
.label_1371:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_1359:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_1364
	cvtsi2ss	xmm1, rax
	jmp	.label_1370
.label_1364:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_1370:
	mulss	xmm1, dword ptr [rcx + 8]
	ucomiss	xmm0, xmm1
	jbe	.label_1367
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_1363
	cvtsi2ss	xmm2, rcx
	jmp	.label_1368
.label_1363:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_1368:
	mov	rcx, qword ptr [r15 + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_1373
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_1362
.label_1373:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_1362:
	movaps	xmm3, xmm1
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	jbe	.label_1367
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_1372
	mulss	xmm0, xmm1
.label_1372:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_1360]]
	jae	.label_1361
	movss	xmm1,  dword ptr [dword ptr [rip + label_71]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	test	al, al
	je	.label_1361
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	jne	.label_1366
.label_1367:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_1369
	mov	rdi, r15
	call	allocate_entry
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_1361
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx + 8], rax
	inc	qword ptr [r15 + 0x20]
	jmp	.label_1358
.label_1369:
	mov	qword ptr [rax], r14
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_1358:
	mov	ebp, 1
.label_1361:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1366:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40fb02
	.globl sub_40fb02
	.type sub_40fb02, @function
sub_40fb02:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fb10
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_1374
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_1374:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40fb33
	.globl sub_40fb33
	.type sub_40fb33, @function
sub_40fb33:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fb40

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1375
	test	rax, rax
	je	.label_1376
.label_1375:
	pop	rbx
	ret	
.label_1376:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40fb5a
	.globl sub_40fb5a
	.type sub_40fb5a, @function
sub_40fb5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fb60

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
	#Procedure 0x40fb97
	.globl sub_40fb97
	.type sub_40fb97, @function
sub_40fb97:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fba0

	.globl dev_info_hash
	.type dev_info_hash, @function
dev_info_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fbac
	.globl sub_40fbac
	.type sub_40fbac, @function
sub_40fbac:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40fbb0
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
	#Procedure 0x40fbbd
	.globl sub_40fbbd
	.type sub_40fbbd, @function
sub_40fbbd:

	nop	dword ptr [rax]
.label_1377:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x40fbce
	.globl sub_40fbce
	.type sub_40fbce, @function
sub_40fbce:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fbd7

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_1377
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1379
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1377
.label_1379:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_1377
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_1378
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_1378:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fc40
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fc43
	.globl sub_40fc43
	.type sub_40fc43, @function
sub_40fc43:

	nop	word ptr cs:[rax + rax]
.label_1380:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1382:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_1383
	inc	r9
	cmp	r9, 0xa
	jb	.label_1381
.label_1383:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fc7f
	.globl sub_40fc7f
	.type sub_40fc7f, @function
sub_40fc7f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40fc80

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_1381:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_1380
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_1382
	.section	.text
	.align	32
	#Procedure 0x40fca9
	.globl sub_40fca9
	.type sub_40fca9, @function
sub_40fca9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40fcb0

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_1384
	mov	eax, edi
	and	eax, 1
	test	rdi, rdi
	js	.label_1387
	cvtsi2ss	xmm0, rdi
	jmp	.label_1385
.label_1387:
	shr	rdi, 1
	or	rax, rdi
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_1385:
	divss	xmm0, dword ptr [rsi + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_71]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rdi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rdi, rcx
	xor	eax, eax
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_1360]]
	jae	.label_1386
.label_1384:
	push	rax
	call	next_prime
	mov	rcx, rax
	xor	eax, eax
	mov	rdx, rcx
	shr	rdx, 0x3c
	cmove	rax, rcx
	add	rsp, 8
.label_1386:
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fd2e
	.globl sub_40fd2e
	.type sub_40fd2e, @function
sub_40fd2e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40fd30
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
	#Procedure 0x40fd3f
	.globl sub_40fd3f
	.type sub_40fd3f, @function
sub_40fd3f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40fd40

	.globl try_link
	.type try_link, @function
try_link:
	mov	rax, rdi
	mov	edi, dword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	mov	edx, dword ptr [rsi + 0x10]
	mov	r8d, dword ptr [rsi + 0x14]
	mov	rsi, rcx
	mov	rcx, rax
	jmp	linkat
	.section	.text
	.align	32
	#Procedure 0x40fd5b
	.globl sub_40fd5b
	.type sub_40fd5b, @function
sub_40fd5b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fd60

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	.section	.text
	.align	32
	#Procedure 0x40fd65
	.globl sub_40fd65
	.type sub_40fd65, @function
sub_40fd65:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fd70
	.globl fadvise
	.type fadvise, @function
fadvise:

	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_1388
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_1388:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fd8a
	.globl sub_40fd8a
	.type sub_40fd8a, @function
sub_40fd8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fd90

	.globl make_dir_parents_private
	.type make_dir_parents_private, @function
make_dir_parents_private:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x148
	mov	qword ptr [rbp - 0x30], r9
	mov	qword ptr [rbp - 0x38], r8
	mov	r13, rcx
	mov	qword ptr [rbp - 0x48], rdx
	mov	r14, rsi
	mov	rbx, rdi
	call	strlen
	mov	r12, rsp
	lea	rdx, [rax + 1]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	sub	r12, rax
	mov	rsp, r12
	mov	rdi, r12
	mov	rsi, rbx
	call	memcpy
	mov	rdi, r12
	call	dir_len
	mov	r15, rax
	lea	rax, [r15 + 0x10]
	and	rax, 0xfffffffffffffff0
	mov	rbx, rsp
	sub	rbx, rax
	mov	rsp, rbx
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [r15 + rbx], 0
	mov	qword ptr [rbp - 0x50], r13
	mov	qword ptr [r13], 0
	lea	rsi, [rbp - 0xe0]
	mov	rdi, rbx
	call	stat
	test	eax, eax
	je	.label_1396
	lea	rax, [r12 + r14]
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [r12 + r14 - 1]
	nop	dword ptr [rax]
.label_1399:
	cmp	byte ptr [rdi + 1], 0x2f
	lea	rdi, [rdi + 1]
	je	.label_1399
	mov	esi, 0x2f
	call	strchr
	mov	r15, rax
	mov	r13b, 1
	test	r15, r15
	je	.label_1397
	nop	word ptr cs:[rax + rax]
.label_1424:
	mov	byte ptr [r15], 0
	mov	rdi, r12
	lea	rsi, [rbp - 0xe0]
	call	stat
	mov	r14d, eax
	test	r14d, r14d
	jne	.label_1409
	mov	rax, qword ptr [rbp - 0x30]
	cmp	byte ptr [rax + 0x1d], 0
	jne	.label_1409
	mov	rax, qword ptr [rbp - 0x30]
	cmp	byte ptr [rax + 0x1e], 0
	jne	.label_1409
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x30]
	cmp	byte ptr [rax + 0x1f], 0
	je	.label_1401
	nop	
.label_1409:
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rbp - 0x170]
	call	stat
	test	eax, eax
	je	.label_1417
	call	__errno_location
	mov	ebx, dword ptr [rax]
	test	ebx, ebx
	je	.label_1416
	jmp	.label_1400
	.section	.text
	.align	32
	#Procedure 0x40fed4
	.globl sub_40fed4
	.type sub_40fed4, @function
sub_40fed4:

	nop	word ptr cs:[rax + rax]
.label_1417:
	mov	eax, dword ptr [rbp - 0x158]
	mov	ecx, 0xf000
	and	eax, ecx
	mov	ebx, 0x14
	cmp	eax, 0x4000
	jne	.label_1400
.label_1416:
	mov	edi, 0xa8
	call	xmalloc
	mov	r13, rax
	mov	edx, 0x90
	mov	rdi, r13
	lea	rsi, [rbp - 0x170]
	call	memcpy
	mov	rax, r15
	sub	rax, r12
	mov	qword ptr [r13 + 0x98], rax
	mov	byte ptr [r13 + 0x90], 0
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx]
	mov	qword ptr [r13 + 0xa0], rax
	mov	qword ptr [rcx], r13
	test	r14d, r14d
	je	.label_1394
	mov	edx, dword ptr [r13 + 0x18]
	jmp	.label_1401
	.section	.text
	.align	32
	#Procedure 0x40ff4f
	.globl sub_40ff4f
	.type sub_40ff4f, @function
sub_40ff4f:

	nop	
.label_1394:
	xor	edx, edx
.label_1401:
	xor	ecx, ecx
	test	r14d, r14d
	setne	cl
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, r12
	mov	r8, qword ptr [rbp - 0x30]
	call	set_process_security_ctx
	test	al, al
	je	.label_1405
	test	r14d, r14d
	je	.label_1406
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	mov	eax, dword ptr [r13 + 0x18]
	mov	ebx, 0x3f
	mov	r14, qword ptr [rbp - 0x30]
	cmp	byte ptr [r14 + 0x1d], 0
	jne	.label_1408
	cmp	byte ptr [r14 + 0x1e], 0
	mov	ebx, 0
	mov	ecx, 0x12
	cmovne	ebx, ecx
.label_1408:
	and	ebx, eax
	cmp	byte ptr [r14 + 0x20], 0
	mov	ecx, 0x1ff
	cmovne	eax, ecx
	mov	esi, ebx
	xor	esi, 0xfff
	and	esi, eax
	mov	rdi, r12
	call	mkdir
	test	eax, eax
	jne	.label_1418
	mov	rsi, qword ptr [rbp - 0x48]
	test	rsi, rsi
	je	.label_1419
	mov	edi, 1
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, r12
	call	__printf_chk
.label_1419:
	mov	rdi, r12
	lea	rsi, [rbp - 0xe0]
	call	lstat
	test	eax, eax
	jne	.label_1423
.label_1568:
	cmp	byte ptr [r14 + 0x1e], 0
	jne	.label_1389
	mov	eax, dword ptr [rbp - 0xc8]
	not	eax
	test	ebx, eax
	je	.label_1390
	call	cached_umask
	not	eax
	and	ebx, eax
.label_1390:
	mov	eax, dword ptr [rbp - 0xc8]
	mov	ecx, eax
	not	ecx
	test	ebx, ecx
	jne	.label_1395
	mov	ecx, eax
	and	ecx, 0x1c0
	cmp	ecx, 0x1c0
	je	.label_1389
.label_1395:
	or	eax, ebx
	mov	dword ptr [r13 + 0x18], eax
	mov	byte ptr [r13 + 0x90], 1
	nop	dword ptr [rax]
.label_1389:
	mov	esi, dword ptr [rbp - 0xc8]
	mov	eax, esi
	and	eax, 0x1c0
	cmp	eax, 0x1c0
	je	.label_1421
	or	esi, 0x1c0
	mov	rdi, r12
	call	chmod
	test	eax, eax
	jne	.label_1414
.label_1421:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax], 0
	jne	.label_1407
	jmp	.label_1391
	.section	.text
	.align	32
	#Procedure 0x410085
	.globl sub_410085
	.type sub_410085, @function
sub_410085:

	nop	word ptr cs:[rax + rax]
.label_1406:
	mov	eax, dword ptr [rbp - 0xc8]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0x4000
	mov	r14, qword ptr [rbp - 0x30]
	jne	.label_1403
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 0
.label_1391:
	cmp	byte ptr [r14 + 0x21], 0
	jne	.label_1415
	cmp	byte ptr [r14 + 0x25], 0
	je	.label_1407
.label_1415:
	movzx	esi, byte ptr [r14 + 0x25]
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r14
	call	set_file_security_ctx
	test	al, al
	jne	.label_1407
	cmp	byte ptr [r14 + 0x26], 0
	jne	.label_1420
.label_1407:
	mov	byte ptr [r15], 0x2f
	nop	word ptr cs:[rax + rax]
.label_1422:
	cmp	byte ptr [r15 + 1], 0x2f
	lea	r15, [r15 + 1]
	je	.label_1422
	mov	esi, 0x2f
	mov	rdi, r15
	call	strchr
	mov	r15, rax
	test	r15, r15
	jne	.label_1424
	jmp	.label_1392
.label_1396:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0xc8]
	cmp	eax, 0x4000
	jne	.label_1393
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 0
.label_1392:
	mov	r13b, 1
	jmp	.label_1397
.label_1393:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1398
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	jmp	.label_1402
.label_1400:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1404
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x40]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
.label_1402:
	mov	rdx, r14
	jmp	.label_1410
.label_1405:
	xor	r13d, r13d
	jmp	.label_1397
.label_1418:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1412
	jmp	.label_1413
.label_1423:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1404
	jmp	.label_1413
.label_1403:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1398
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	jmp	.label_1411
.label_1414:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_706
.label_1413:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
.label_1411:
	mov	rdx, rbx
.label_1410:
	call	error
.label_1397:
	mov	eax, r13d
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1420:
	xor	r13d, r13d
	jmp	.label_1397
	.section	.text
	.align	32
	#Procedure 0x410250
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	sub	rsp, 0x18
	lea	rdi, [rsp + 8]
	call	gettime
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x10]
	add	rsp, 0x18
	ret	
	.section	.text
	.align	32
	#Procedure 0x41026d
	.globl sub_41026d
	.type sub_41026d, @function
sub_41026d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x410270

	.globl free_permission_context
	.type free_permission_context, @function
free_permission_context:
	ret	
	.section	.text
	.align	32
	#Procedure 0x410271
	.globl sub_410271
	.type sub_410271, @function
sub_410271:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4102e5
	.globl sub_4102e5
	.type sub_4102e5, @function
sub_4102e5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4102f2
	.globl sub_4102f2
	.type sub_4102f2, @function
sub_4102f2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410316
	.globl sub_410316
	.type sub_410316, @function
sub_410316:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410329
	.globl sub_410329
	.type sub_410329, @function
sub_410329:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x410330

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x410340

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	.section	.text
	.align	32
	#Procedure 0x41034f
	.globl sub_41034f
	.type sub_41034f, @function
sub_41034f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x410350

	.globl lstat
	.type lstat, @function
lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section	.text
	.align	32
	#Procedure 0x410360

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
	.section	.text
	.align	32
	#Procedure 0x410375
	.globl sub_410375
	.type sub_410375, @function
sub_410375:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410380

	.globl mknod
	.type mknod, @function
mknod:
	sub	rsp, 0x18
	lea	rcx, [rsp + 8]
	mov	qword ptr [rsp + 8], rdx
	mov	edx, esi
	mov	rsi, rdi
	xor	edi, edi
	call	__xmknod
	add	rsp, 0x18
	ret	
