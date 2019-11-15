	.section	.text
	.align	16
	#Procedure 0x401859
	.globl sub_401859
	.type sub_401859, @function
sub_401859:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40185a
	.globl sub_40185a
	.type sub_40185a, @function
sub_40185a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401892
	.globl sub_401892
	.type sub_401892, @function
sub_401892:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018da
	.globl sub_4018da
	.type sub_4018da, @function
sub_4018da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018fc
	.globl sub_4018fc
	.type sub_4018fc, @function
sub_4018fc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40190d
	.globl sub_40190d
	.type sub_40190d, @function
sub_40190d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401926
	.globl sub_401926
	.type sub_401926, @function
sub_401926:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401930

	.globl free_entry
	.type free_entry, @function
free_entry:
	mov	qword ptr [rsi], 0
	mov	rax, qword ptr [rdi + 0x48]
	mov	qword ptr [rsi + 8], rax
	mov	qword ptr [rdi + 0x48], rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x401944
	.globl sub_401944
	.type sub_401944, @function
sub_401944:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401950
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x40195a
	.globl sub_40195a
	.type sub_40195a, @function
sub_40195a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401960

	.globl mode_create_from_ref
	.type mode_create_from_ref, @function
mode_create_from_ref:
	sub	rsp, 0x98
	lea	rsi, [rsp + 8]
	call	stat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_9
	mov	edi, dword ptr [rsp + 0x20]
	mov	esi, 0xfff
	call	make_node_op_equals
.label_9:
	add	rsp, 0x98
	ret	
	.section	.text
	.align	16
	#Procedure 0x40198f
	.globl sub_40198f
	.type sub_40198f, @function
sub_40198f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401990

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	.section	.text
	.align	16
	#Procedure 0x401994
	.globl sub_401994
	.type sub_401994, @function
sub_401994:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4019a0

	.globl process_file
	.type process_file, @function
process_file:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r13, rsi
	mov	r15, rdi
	mov	rbx, qword ptr [r13 + 0x30]
	mov	r12, qword ptr [r13 + 0x38]
	movzx	eax, word ptr [r13 + 0x70]
	add	eax, -2
	movzx	eax, ax
	cmp	eax, 0xb
	ja	.label_28
	mov	bpl, 1
	jmp	qword ptr [word ptr [+ (rax * 8) + label_31]]
.label_913:
	mov	rdi, r15
	mov	rsi, r13
	call	cycle_warning_required
	test	al, al
	je	.label_28
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_39
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r12
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_16
.label_28:
	mov	rax,  qword ptr [word ptr [rip + root_dev_ino]]
	test	rax, rax
	je	.label_19
	mov	rcx, qword ptr [r13 + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_19
	mov	rcx, qword ptr [r13 + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_19
	cmp	byte ptr [r12], 0x2f
	jne	.label_33
	cmp	byte ptr [r12 + 1], 0
	je	.label_35
.label_33:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_38
	mov	edx, 5
	call	dcgettext
	mov	rdx, r12
	mov	r12, rax
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	rbx, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_10
	call	quotearg_n_style
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, rbx
	mov	r8, rbp
	call	error
.label_18:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edx, 4
	mov	rdi, r15
	mov	rsi, r13
	call	rpl_fts_set
	mov	rdi, r15
	call	rpl_fts_read
	jmp	.label_16
.label_19:
	mov	qword ptr [rsp + 8], rbx
	mov	ebx, dword ptr [r13 + 0x90]
	mov	ebp, ebx
	and	ebp, 0xf000
	xor	esi, esi
	cmp	ebp, 0x4000
	sete	sil
	mov	edx,  dword ptr [dword ptr [rip + umask_value]]
	mov	rcx,  qword ptr [word ptr [rip + change]]
	xor	r14d, r14d
	xor	r8d, r8d
	mov	edi, ebx
	call	mode_adjust
	cmp	ebp, 0xa000
	mov	qword ptr [rsp + 0x10], r15
	mov	qword ptr [rsp], r12
	jne	.label_23
	mov	r12b, 1
	mov	r15d, eax
	jmp	.label_24
.label_914:
	mov	qword ptr [rsp + 8], rbx
	mov	qword ptr [rsp + 0x10], r15
	mov	al,  byte ptr [byte ptr [rip + force_silent]]
	test	al, al
	mov	qword ptr [rsp], r12
	jne	.label_32
	mov	ebx, dword ptr [r13 + 0x40]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_41
	jmp	.label_42
.label_915:
	mov	qword ptr [rsp + 8], rbx
	mov	qword ptr [rsp + 0x10], r15
	mov	al,  byte ptr [byte ptr [rip + force_silent]]
	test	al, al
	mov	qword ptr [rsp], r12
	jne	.label_32
	mov	ebp, dword ptr [r13 + 0x40]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r12
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_21
	xor	eax, eax
	mov	esi, ebp
	jmp	.label_22
.label_916:
	cmp	qword ptr [r13 + 0x58], 0
	jne	.label_45
	cmp	qword ptr [r13 + 0x20], 0
	je	.label_29
.label_45:
	mov	qword ptr [rsp + 8], rbx
	mov	qword ptr [rsp + 0x10], r15
	mov	al,  byte ptr [byte ptr [rip + force_silent]]
	test	al, al
	mov	qword ptr [rsp], r12
	jne	.label_32
	mov	ebx, dword ptr [r13 + 0x40]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_40
.label_42:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	jmp	.label_12
.label_917:
	mov	qword ptr [rsp + 8], rbx
	mov	qword ptr [rsp + 0x10], r15
	mov	al,  byte ptr [byte ptr [rip + force_silent]]
	test	al, al
	mov	qword ptr [rsp], r12
	je	.label_17
.label_32:
	xor	r14d, r14d
	jmp	.label_26
.label_23:
	mov	edi, dword ptr [r15 + 0x2c]
	mov	rsi, qword ptr [rsp + 8]
	mov	ebp, eax
	mov	edx, eax
	call	chmodat
	mov	r14b, 1
	test	eax, eax
	je	.label_30
	xor	r14d, r14d
	mov	al,  byte ptr [byte ptr [rip + force_silent]]
	test	al, al
	jne	.label_37
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_43
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x18], rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, qword ptr [rsp + 0x18]
	call	error
.label_37:
	xor	r12d, r12d
	jmp	.label_20
.label_17:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_12:
	mov	rdx, rbp
.label_22:
	call	error
.label_26:
	xor	r12d, r12d
.label_24:
	cmp	dword ptr [dword ptr [rip + verbosity]],  2
	je	.label_15
	test	r14b, r14b
	je	.label_44
	mov	rax, qword ptr [rsp + 0x10]
	mov	edi, dword ptr [rax + 0x2c]
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp]
	mov	ecx, ebx
	mov	r8d, r15d
	call	mode_changed
	jmp	.label_13
.label_44:
	xor	eax, eax
.label_13:
	test	al, al
	jne	.label_14
	mov	ecx,  dword ptr [dword ptr [rip + verbosity]]
	test	ecx, ecx
	jne	.label_15
.label_14:
	xor	ecx, ecx
	test	al, al
	sete	cl
	lea	eax, [rcx + rcx + 1]
	xor	edx, edx
	test	r14b, r14b
	cmovne	edx, eax
	test	r12b, r12b
	mov	ecx, 2
	cmovne	ecx, edx
	mov	rdi, qword ptr [rsp]
	mov	esi, ebx
	mov	edx, r15d
	call	describe_change
.label_15:
	test	r14b, r14b
	je	.label_11
	cmp	byte ptr [byte ptr [rip + diagnose_surprises]],  1
	jne	.label_11
	mov	eax, ebx
	and	eax, 0xf000
	xor	esi, esi
	cmp	eax, 0x4000
	sete	sil
	mov	rcx,  qword ptr [word ptr [rip + change]]
	xor	edx, edx
	xor	r8d, r8d
	mov	edi, ebx
	call	mode_adjust
	mov	ebp, eax
	not	eax
	test	r15d, eax
	je	.label_11
	lea	rsi, [rsp + 0x2c]
	mov	edi, r15d
	call	strmode
	lea	rsi, [rsp + 0x20]
	mov	edi, ebp
	call	strmode
	mov	byte ptr [rsp + 0x2a], 0
	mov	byte ptr [rsp + 0x36], 0
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_36
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp]
	call	quotearg_n_style_colon
	mov	rcx, rax
	lea	r8, [rsp + 0x2d]
	lea	r9, [rsp + 0x21]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_11:
	mov	al,  byte ptr [byte ptr [rip + recurse]]
	test	al, al
	jne	.label_46
	mov	edx, 4
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r13
	call	rpl_fts_set
.label_46:
	test	r12b, r12b
	setne	bpl
.label_16:
	mov	eax, ebp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_30:
	mov	r12b, 1
.label_20:
	mov	r15d, ebp
	jmp	.label_24
.label_29:
	mov	qword ptr [r13 + 0x20], 1
	mov	edx, 1
	mov	rdi, r15
	mov	rsi, r13
	call	rpl_fts_set
	jmp	.label_16
.label_35:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	jmp	.label_18
	.section	.text
	.align	16
	#Procedure 0x401e8a
	.globl sub_401e8a
	.type sub_401e8a, @function
sub_401e8a:

	nop	word ptr [rax + rax]
.label_48:
	xor	r14d, r14d
	jmp	.label_47
	.section	.text
	.align	16
	#Procedure 0x401e95
	.globl sub_401e95
	.type sub_401e95, @function
sub_401e95:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401e9c

	.globl setup_dir
	.type setup_dir, @function
setup_dir:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	movzx	eax, word ptr [rbx + 0x48]
	test	ax, 0x102
	je	.label_50
	xor	r14d, r14d
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	jne	.label_49
	jmp	.label_47
.label_50:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	je	.label_48
	mov	rdi, rax
	call	cycle_check_init
.label_49:
	mov	r14b, 1
.label_47:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f00

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_51
	test	rsi, rsi
	mov	ecx, 1
	je	.label_52
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_52
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_51:
	mov	ecx, 1
.label_52:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x401f4b
	.globl sub_401f4b
	.type sub_401f4b, @function
sub_401f4b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f50

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_53
	ret	
.label_53:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	16
	#Procedure 0x401f63
	.globl sub_401f63
	.type sub_401f63, @function
sub_401f63:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f70

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
	jmp	.label_54
	.section	.text
	.align	16
	#Procedure 0x401f8e
	.globl sub_401f8e
	.type sub_401f8e, @function
sub_401f8e:

	nop	
.label_55:
	add	rbx, 2
.label_54:
	cmp	rbx, -1
	je	.label_56
	mov	rdi, rbx
	call	is_prime
	test	al, al
	je	.label_55
	mov	r14, rbx
.label_56:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x401fb4
	.globl sub_401fb4
	.type sub_401fb4, @function
sub_401fb4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401fc0

	.globl fts_load
	.type fts_load, @function
fts_load:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r12, rsi
	mov	r14, rdi
	mov	rdx, qword ptr [r12 + 0x60]
	mov	qword ptr [r12 + 0x48], rdx
	mov	rdi, qword ptr [r14 + 0x20]
	lea	r15, [r12 + 0x108]
	inc	rdx
	mov	rsi, r15
	call	memmove
	mov	esi, 0x2f
	mov	rdi, r15
	call	strrchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_58
	cmp	rbx, r15
	jne	.label_57
	cmp	byte ptr [rbx + 1], 0
	je	.label_58
.label_57:
	inc	rbx
	mov	rdi, rbx
	call	strlen
	mov	r13, rax
	lea	rdx, [r13 + 1]
	mov	rdi, r15
	mov	rsi, rbx
	call	memmove
	mov	qword ptr [r12 + 0x60], r13
.label_58:
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [r12 + 0x38], rax
	mov	qword ptr [r12 + 0x30], rax
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40204a
	.globl sub_40204a
	.type sub_40204a, @function
sub_40204a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402050
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_59
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_60]]
.label_61:
	ret	
.label_59:
	xor	eax, eax
	jmp	.label_61
	.section	.text
	.align	16
	#Procedure 0x402066
	.globl sub_402066
	.type sub_402066, @function
sub_402066:

	nop	word ptr cs:[rax + rax]
.label_62:
	mov	edi, eax
	call	close
.label_63:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_64
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_62
	jmp	.label_63
.label_64:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402093
	.globl sub_402093
	.type sub_402093, @function
sub_402093:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4020a0

	.globl fd_ring_clear
	.type fd_ring_clear, @function
fd_ring_clear:
	push	rbx
	mov	rbx, rdi
	jmp	.label_63
	.section	.text
	.align	16
	#Procedure 0x4020a6
	.globl sub_4020a6
	.type sub_4020a6, @function
sub_4020a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4020b0
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
	mov	edx, OFFSET FLAT:label_66
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, rbp
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_65
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_67]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_68]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_69]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_70
	mov	al, 1
	mov	rdi, r13
	mov	rcx, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_71
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
	.align	16
	#Procedure 0x40219c
	.globl sub_40219c
	.type sub_40219c, @function
sub_40219c:

	nop	dword ptr [rax]
.label_78:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4021a5
	.globl sub_4021a5
	.type sub_4021a5, @function
sub_4021a5:

	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4021aa

	.globl describe_change
	.type describe_change, @function
describe_change:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	ebp, ecx
	mov	r15d, edx
	mov	ebx, esi
	mov	r14, rdi
	test	ebp, ebp
	je	.label_76
	lea	rsi, [rsp + 8]
	mov	edi, r15d
	call	strmode
	mov	byte ptr [rsp + 0x12], 0
	lea	rsi, [rsp + 0x14]
	mov	edi, ebx
	call	strmode
	mov	byte ptr [rsp + 0x1e], 0
	cmp	ebp, 3
	je	.label_73
	cmp	ebp, 2
	je	.label_77
	cmp	ebp, 1
	jne	.label_78
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_80
	jmp	.label_81
.label_76:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_79
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
	jmp	.label_72
.label_73:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_74
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	and	r15d, 0xfff
	lea	r8, [rsp + 9]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	mov	rcx, r15
	call	__printf_chk
	jmp	.label_72
.label_77:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_75
.label_81:
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	and	ebx, 0xfff
	lea	r8, [rsp + 0x15]
	and	r15d, 0xfff
	lea	rax, [rsp + 9]
	mov	qword ptr [rsp], rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r12
	mov	rdx, rcx
	mov	rcx, rbx
	mov	r9, r15
	call	__printf_chk
.label_72:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4022f0

	.globl AD_hash
	.type AD_hash, @function
AD_hash:
	mov	rax, qword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4022fd
	.globl sub_4022fd
	.type sub_4022fd, @function
sub_4022fd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402300

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_82
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_83
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402325
	.globl sub_402325
	.type sub_402325, @function
sub_402325:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402330

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_87
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_89
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_84
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_89
	mov	esi, OFFSET FLAT:label_86
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_85
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_85:
	mov	rbx, r14
.label_89:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_87:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_88
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4023d1
	.globl sub_4023d1
	.type sub_4023d1, @function
sub_4023d1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023e0

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
	je	.label_90
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_90:
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40240c
	.globl sub_40240c
	.type sub_40240c, @function
sub_40240c:

	nop	dword ptr [rax]
.label_94:
	call	xalloc_die
.label_93:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40241a
	.globl sub_40241a
	.type sub_40241a, @function
sub_40241a:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402421

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_91
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_94
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_92
.label_91:
	test	rcx, rcx
	jne	.label_95
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_95:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_93
.label_92:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_96:
	push	rax
	mov	edi, 0x10
	call	malloc
	add	rsp, 8
	ret	
	.section	.text
	.align	16
	#Procedure 0x4024a0
	.globl sub_4024a0
	.type sub_4024a0, @function
sub_4024a0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024ae

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	je	.label_96
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
.label_97:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4024c5
	.globl sub_4024c5
	.type sub_4024c5, @function
sub_4024c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024cf
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_97
	call	rpl_calloc
	test	rax, rax
	je	.label_97
	pop	rcx
	ret	
.label_98:
	add	r14, 0x10
.label_107:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_104
	cmp	qword ptr [r14], 0
	je	.label_98
	test	r14, r14
	je	.label_98
	mov	rbx, r14
	nop	dword ptr [rax + rax]
.label_100:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_100
	jmp	.label_98
	.section	.text
	.align	16
	#Procedure 0x402522

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_104
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_104
	mov	r14, qword ptr [r15]
	jmp	.label_107
	.section	.text
	.align	16
	#Procedure 0x40253d
	.globl sub_40253d
	.type sub_40253d, @function
sub_40253d:

	nop	dword ptr [rax + rax]
.label_104:
	mov	r14, qword ptr [r15]
	jmp	.label_99
	.section	.text
	.align	16
	#Procedure 0x402547
	.globl sub_402547
	.type sub_402547, @function
sub_402547:

	nop	word ptr [rax + rax]
.label_102:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_101
	nop	dword ptr [rax]
.label_105:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_105
.label_101:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, r15
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x402583
	.globl sub_402583
	.type sub_402583, @function
sub_402583:

	nop	word ptr cs:[rax + rax]
.label_103:
	add	r14, 0x10
.label_99:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_102
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_103
	nop	word ptr cs:[rax + rax]
.label_106:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_106
	jmp	.label_103
	.section	.text
	.align	16
	#Procedure 0x4025c0

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
	jae	.label_108
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_115:
	cmp	qword ptr [r15], 0
	je	.label_112
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	je	.label_117
	nop	word ptr cs:[rax + rax]
.label_111:
	mov	r13, qword ptr [rbx]
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rax], 0
	je	.label_113
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	jmp	.label_114
	.section	.text
	.align	16
	#Procedure 0x402636
	.globl sub_402636
	.type sub_402636, @function
sub_402636:

	nop	word ptr cs:[rax + rax]
.label_113:
	mov	qword ptr [rax], r13
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	free_entry
.label_114:
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_111
.label_117:
	mov	r13, qword ptr [r15]
	mov	qword ptr [r15 + 8], 0
	test	r12b, r12b
	mov	rbp, qword ptr [rsp]
	jne	.label_112
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbx, rax
	cmp	qword ptr [rbx], 0
	je	.label_116
	mov	rdi, r14
	call	allocate_entry
	test	rax, rax
	je	.label_109
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbx + 8], rax
	jmp	.label_110
.label_116:
	mov	qword ptr [rbx], r13
	inc	qword ptr [r14 + 0x18]
.label_110:
	mov	qword ptr [r15], 0
	dec	qword ptr [rbp + 0x18]
.label_112:
	add	r15, 0x10
	cmp	r15, qword ptr [rbp + 8]
	jb	.label_115
	mov	al, 1
.label_108:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_109:
	xor	eax, eax
	jmp	.label_108
	.section	.text
	.align	16
	#Procedure 0x4026d5
	.globl sub_4026d5
	.type sub_4026d5, @function
sub_4026d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026e0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4026ea
	.globl sub_4026ea
	.type sub_4026ea, @function
sub_4026ea:

	nop	word ptr [rax + rax]
.label_119:
	mov	r15, qword ptr [rbx]
.label_118:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402702

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
	je	.label_118
	test	rbx, rbx
	je	.label_118
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_120:
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	je	.label_119
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_119
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_120
	jmp	.label_118
	.section	.text
	.align	16
	#Procedure 0x402750

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	.section	.text
	.align	16
	#Procedure 0x402755
	.globl sub_402755
	.type sub_402755, @function
sub_402755:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402760
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
	.align	16
	#Procedure 0x402774
	.globl sub_402774
	.type sub_402774, @function
sub_402774:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402780

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
	jae	.label_121
	shl	rax, 4
	add	rax, qword ptr [rbx]
	pop	rbx
	ret	
.label_121:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4027a5
	.globl sub_4027a5
	.type sub_4027a5, @function
sub_4027a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027b0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
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

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_122
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_122
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_122:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x4027e6
	.globl sub_4027e6
	.type sub_4027e6, @function
sub_4027e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027f0

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_123
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_125:
	cmp	qword ptr [rcx], 0
	je	.label_124
	xor	esi, esi
	mov	rdi, rcx
	nop	dword ptr [rax + rax]
.label_126:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_126
	cmp	rsi, rax
	cmova	rax, rsi
.label_124:
	add	rcx, 0x10
	cmp	rcx, rdx
	jb	.label_125
.label_123:
	ret	
	.section	.text
	.align	16
	#Procedure 0x40283d
	.globl sub_40283d
	.type sub_40283d, @function
sub_40283d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402840

	.globl fts_lfree
	.type fts_lfree, @function
fts_lfree:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_127
	nop	dword ptr [rax]
.label_129:
	mov	r14, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_128
	call	closedir
.label_128:
	mov	rdi, rbx
	call	free
	test	r14, r14
	mov	rbx, r14
	jne	.label_129
.label_127:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x40287a
	.globl sub_40287a
	.type sub_40287a, @function
sub_40287a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402880

	.globl i_ring_init
	.type i_ring_init, @function
i_ring_init:
	mov	byte ptr [rdi + 0x1c], 1
	mov	qword ptr [rdi + 0x14], 0
	xor	eax, eax
	nop	
.label_130:
	mov	dword ptr [rdi + rax*4], esi
	inc	rax
	cmp	rax, 4
	jne	.label_130
	mov	dword ptr [rdi + 0x10], esi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4028a0
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
	#Procedure 0x4028d3
	.globl sub_4028d3
	.type sub_4028d3, @function
sub_4028d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028e0

	.globl fts_compare_ino
	.type fts_compare_ino, @function
fts_compare_ino:
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rsi]
	mov	rcx, qword ptr [rcx + 0x80]
	cmp	rcx, rax
	sbb	edx, edx
	and	edx, 1
	cmp	rax, rcx
	mov	eax, 0xffffffff
	cmovae	eax, edx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402908
	.globl sub_402908
	.type sub_402908, @function
sub_402908:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402910

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
	#Procedure 0x402949
	.globl sub_402949
	.type sub_402949, @function
sub_402949:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402950

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
	#Procedure 0x402961
	.globl sub_402961
	.type sub_402961, @function
sub_402961:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402970
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
	#Procedure 0x402984
	.globl sub_402984
	.type sub_402984, @function
sub_402984:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402990

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	16
	#Procedure 0x40299a
	.globl sub_40299a
	.type sub_40299a, @function
sub_40299a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4029a0
	.globl rpl_fts_children
	.type rpl_fts_children, @function
rpl_fts_children:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	ebp, esi
	mov	rbx, rdi
	mov	eax, ebp
	or	eax, 0x1000
	cmp	eax, 0x1000
	jne	.label_139
	mov	r12, qword ptr [rbx]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	eax, eax
	test	byte ptr [rbx + 0x49], 0x20
	jne	.label_131
	movzx	ecx, word ptr [r12 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	je	.label_132
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_131
	mov	rax, qword ptr [r12 + 0x10]
	jmp	.label_131
.label_139:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	jmp	.label_131
.label_132:
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	je	.label_135
	call	fts_lfree
.label_135:
	mov	r15d, 1
	cmp	ebp, 0x1000
	jne	.label_138
	or	byte ptr [rbx + 0x49], 0x10
	mov	r15d, 2
.label_138:
	cmp	qword ptr [r12 + 0x58], 0
	jne	.label_133
	mov	rax, qword ptr [r12 + 0x30]
	cmp	byte ptr [rax], 0x2f
	je	.label_133
	test	byte ptr [rbx + 0x48], 4
	jne	.label_133
	mov	esi, OFFSET FLAT:label_134
	mov	rdi, rbx
	call	diropen
	mov	ebp, eax
	test	ebp, ebp
	js	.label_137
	mov	rdi, rbx
	mov	esi, r15d
	call	fts_build
	mov	qword ptr [rbx + 8], rax
	test	byte ptr [rbx + 0x49], 2
	jne	.label_141
	mov	edi, ebp
	call	fchdir
	test	eax, eax
	je	.label_140
	mov	ebx, dword ptr [r14]
	mov	edi, ebp
	call	close
	mov	dword ptr [r14], ebx
	xor	eax, eax
	jmp	.label_131
.label_133:
	mov	rdi, rbx
	mov	esi, r15d
	call	fts_build
	mov	qword ptr [rbx + 8], rax
.label_131:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_137:
	mov	qword ptr [rbx + 8], 0
	xor	eax, eax
	jmp	.label_131
.label_141:
	mov	edx, 1
	mov	rdi, rbx
	mov	esi, ebp
	call	cwd_advance_fd
	jmp	.label_136
.label_140:
	mov	edi, ebp
	call	close
.label_136:
	mov	rax, qword ptr [rbx + 8]
	jmp	.label_131
	.section	.text
	.align	16
	#Procedure 0x402ad2
	.globl sub_402ad2
	.type sub_402ad2, @function
sub_402ad2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ae0
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
	#Procedure 0x402aed
	.globl sub_402aed
	.type sub_402aed, @function
sub_402aed:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402af0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_142
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_143
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_145
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_146
	mov	ecx, OFFSET FLAT:label_147
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_144
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x402b64
	.globl sub_402b64
	.type sub_402b64, @function
sub_402b64:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b70

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b75
	.globl sub_402b75
	.type sub_402b75, @function
sub_402b75:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b80
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
	.align	16
	#Procedure 0x402b94
	.globl sub_402b94
	.type sub_402b94, @function
sub_402b94:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ba0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	16
	#Procedure 0x402ba5
	.globl sub_402ba5
	.type sub_402ba5, @function
sub_402ba5:

	nop	word ptr cs:[rax + rax]
.label_149:
	add	rcx, 0x10
.label_151:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_148
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_149
.label_150:
	ret	
.label_148:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402bc9
	.globl sub_402bc9
	.type sub_402bc9, @function
sub_402bc9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402bd0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_150
	mov	rcx, qword ptr [rdi]
	jmp	.label_151
	.section	.text
	.align	16
	#Procedure 0x402bde
	.globl sub_402bde
	.type sub_402bde, @function
sub_402bde:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402be0

	.globl set_stat_type
	.type set_stat_type, @function
set_stat_type:
	dec	esi
	xor	eax, eax
	cmp	esi, 0xb
	ja	.label_152
	movsxd	rax, esi
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + label_153]]
.label_152:
	mov	dword ptr [rdi + 0x18], eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x402bf7
	.globl sub_402bf7
	.type sub_402bf7, @function
sub_402bf7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c00
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c08
	.globl sub_402c08
	.type sub_402c08, @function
sub_402c08:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c10

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_154
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_154:
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
	#Procedure 0x402c93
	.globl sub_402c93
	.type sub_402c93, @function
sub_402c93:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ca0

	.globl rpl_fts_open
	.type rpl_fts_open, @function
rpl_fts_open:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbp, rdx
	mov	r14d, esi
	mov	r15, rdi
	cmp	r14d, 0x1000
	jae	.label_173
	mov	eax, r14d
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_173
	test	r14b, 0x12
	je	.label_173
	mov	edi, 0x80
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_176
	xorps	xmm0, xmm0
	movups	xmmword ptr [r13 + 0x70], xmm0
	movups	xmmword ptr [r13 + 0x60], xmm0
	movups	xmmword ptr [r13 + 0x50], xmm0
	movups	xmmword ptr [r13 + 0x40], xmm0
	movups	xmmword ptr [r13 + 0x30], xmm0
	movups	xmmword ptr [r13 + 0x20], xmm0
	movups	xmmword ptr [r13 + 0x10], xmm0
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [r13 + 0x40], rbp
	mov	eax, r14d
	and	eax, 0xfffffdfb
	or	eax, 4
	test	r14b, 2
	cmove	eax, r14d
	mov	dword ptr [r13 + 0x48], eax
	mov	dword ptr [r13 + 0x2c], 0xffffff9c
	mov	rdi, r15
	call	fts_maxarglen
	cmp	rax, 0x1000
	mov	esi, 0x1000
	cmova	rsi, rax
	mov	rdi, r13
	call	fts_palloc
	test	al, al
	je	.label_175
	xor	r12d, r12d
	cmp	qword ptr [r15], 0
	je	.label_159
	mov	esi, OFFSET FLAT:label_82
	xor	edx, edx
	mov	rdi, r13
	call	fts_alloc
	mov	r12, rax
	test	r12, r12
	je	.label_155
	mov	qword ptr [r12 + 0x58], -1
	mov	qword ptr [r12 + 0x68], -1
.label_159:
	mov	byte ptr [rsp + 0xf], 1
	test	rbp, rbp
	je	.label_164
	mov	al, byte ptr [r13 + 0x49]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0xf], al
.label_164:
	mov	qword ptr [rsp + 0x28], r13
	mov	r13, qword ptr [r15]
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	test	r13, r13
	je	.label_172
	mov	qword ptr [rsp + 0x18], r12
	mov	qword ptr [rsp + 0x30], rbp
	and	r14d, 0x800
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	r12d, r12d
	jmp	.label_165
.label_173:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_157:
	xor	eax, eax
.label_176:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402e16
	.globl sub_402e16
	.type sub_402e16, @function
sub_402e16:

	nop	word ptr cs:[rax + rax]
.label_163:
	mov	qword ptr [rbp + 0x58], 0
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbp + 8], rax
	mov	rax, rbp
	add	rax, 0x108
	mov	qword ptr [rbp + 0x30], rax
	mov	rbx, qword ptr [rsp + 0x10]
	test	rbx, rbx
	setne	al
	and	al, byte ptr [rsp + 0xf]
	cmp	al, 1
	jne	.label_162
	mov	word ptr [rbp + 0x70], 0xb
	mov	esi, 1
	mov	rdi, rbp
	call	fts_set_stat_required
	jmp	.label_174
.label_162:
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, rbp
	call	fts_stat
	mov	word ptr [rbp + 0x70], ax
.label_174:
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_169
	mov	qword ptr [rbp + 0x10], rbx
.label_171:
	mov	qword ptr [rsp + 0x10], rbp
	jmp	.label_158
.label_169:
	mov	qword ptr [rbp + 0x10], 0
	test	rbx, rbx
	je	.label_156
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + 0x10], rbp
	mov	qword ptr [rsp + 0x20], rbp
.label_158:
	inc	r12
	mov	r13, qword ptr [r15 + 8]
	add	r15, 8
	test	r13, r13
	jne	.label_165
	jmp	.label_170
.label_156:
	mov	rax, rbp
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_171
	.section	.text
	.align	16
	#Procedure 0x402ec4
	.globl sub_402ec4
	.type sub_402ec4, @function
sub_402ec4:

	nop	word ptr cs:[rax + rax]
.label_165:
	mov	rdi, r13
	call	strlen
	test	r14d, r14d
	jne	.label_160
	cmp	rax, 3
	jb	.label_160
	cmp	byte ptr [r13 + rax - 1], 0x2f
	jne	.label_160
	nop	dword ptr [rax + rax]
.label_177:
	cmp	byte ptr [r13 + rax - 2], 0x2f
	jne	.label_160
	dec	rax
	cmp	rax, 1
	ja	.label_177
	nop	word ptr cs:[rax + rax]
.label_160:
	mov	rsi, qword ptr [r15]
	mov	r13, qword ptr [rsp + 0x28]
	mov	rdi, r13
	mov	rdx, rax
	call	fts_alloc
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_163
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_168
.label_170:
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_161
	cmp	r12, 2
	jb	.label_161
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r12
	call	fts_sort
	mov	qword ptr [rsp + 0x10], rax
.label_161:
	mov	r12, qword ptr [rsp + 0x18]
.label_172:
	mov	esi, OFFSET FLAT:label_82
	xor	edx, edx
	mov	r13, qword ptr [rsp + 0x28]
	mov	rdi, r13
	call	fts_alloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_168
	mov	rbx, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 0x10], rbx
	mov	rax, qword ptr [r13]
	mov	word ptr [rax + 0x70], 9
	mov	rax, qword ptr [r13]
	mov	qword ptr [rax + 0x58], 1
	mov	rdi, r13
	call	setup_dir
	test	al, al
	je	.label_166
	movzx	eax, word ptr [r13 + 0x48]
	test	ax, 0x204
	jne	.label_167
	mov	esi, OFFSET FLAT:label_134
	mov	rdi, r13
	call	diropen
	mov	dword ptr [r13 + 0x28], eax
	test	eax, eax
	jns	.label_167
	or	byte ptr [r13 + 0x48], 4
.label_167:
	mov	rdi, r13
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	mov	rax, r13
	jmp	.label_176
.label_168:
	mov	rbx, qword ptr [rsp + 0x10]
.label_166:
	mov	rdi, rbx
	call	fts_lfree
	mov	rdi, r12
	call	free
.label_155:
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
.label_175:
	mov	rdi, r13
	call	free
	jmp	.label_157
	.section	.text
	.align	16
	#Procedure 0x403014
	.globl sub_403014
	.type sub_403014, @function
sub_403014:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403020

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
	#Procedure 0x403057
	.globl sub_403057
	.type sub_403057, @function
sub_403057:

	nop	word ptr [rax + rax]
.label_183:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_178
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_181
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_21
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x4030a5

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_185
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_183
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_183
.label_185:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_184
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_181:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_180
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_184:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_186:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_179
	cmp	qword ptr [rax + 0x58], 0
	js	.label_179
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_182
	mov	rdx, qword ptr [rcx]
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_179
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	jne	.label_179
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rdi + 0x58]
	mov	qword ptr [rcx], rax
.label_179:
	add	rsp, 0x18
	ret	
.label_182:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403171
	.globl sub_403171
	.type sub_403171, @function
sub_403171:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40317f

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_186
	mov	rax, qword ptr [rsi + 0x78]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rsi + 0x80]
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_182
	mov	rdi, rax
	call	free
	add	rsp, 0x18
	ret	
	.section	.text
	.align	16
	#Procedure 0x4031c0
	.globl rotr32
	.type rotr32, @function
rotr32:

	mov	ecx, esi
	ror	edi, cl
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4031c7
	.globl sub_4031c7
	.type sub_4031c7, @function
sub_4031c7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4031d0
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
	#Procedure 0x4031e9
	.globl sub_4031e9
	.type sub_4031e9, @function
sub_4031e9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4031f0

	.globl dev_type_compare
	.type dev_type_compare, @function
dev_type_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4031fa
	.globl sub_4031fa
	.type sub_4031fa, @function
sub_4031fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403200

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_187
	test	rdx, rdx
	je	.label_187
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_187:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40322b
	.globl sub_40322b
	.type sub_40322b, @function
sub_40322b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403230

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
	je	.label_204
	mov	edx, OFFSET FLAT:label_195
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_201
.label_204:
	mov	edx, OFFSET FLAT:label_202
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_201:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_206
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
	mov	esi, OFFSET FLAT:label_203
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_189
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_191]]
.label_949:
	add	rsp, 8
	jmp	.label_188
.label_189:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_198
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
	jmp	.label_188
.label_950:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_199
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
.label_951:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_190
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
.label_952:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_196
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
.label_953:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_193
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
	jmp	.label_188
.label_954:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_192
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
	jmp	.label_188
.label_955:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_194
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
	jmp	.label_188
.label_956:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_197
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
	jmp	.label_188
.label_958:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_200
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
	jmp	.label_188
.label_957:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_205
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
.label_188:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403588
	.globl sub_403588
	.type sub_403588, @function
sub_403588:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403590
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	16
	#Procedure 0x40359a
	.globl sub_40359a
	.type sub_40359a, @function
sub_40359a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4035a0

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
	je	.label_207
	mov	qword ptr [rax], rbx
.label_207:
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
	#Procedure 0x40368c
	.globl sub_40368c
	.type sub_40368c, @function
sub_40368c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403690
	.globl lchmodat
	.type lchmodat, @function
lchmodat:

	mov	ecx, 0x100
	jmp	fchmodat
	.section	.text
	.align	16
	#Procedure 0x40369a
	.globl sub_40369a
	.type sub_40369a, @function
sub_40369a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4036a0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4036ae
	.globl sub_4036ae
	.type sub_4036ae, @function
sub_4036ae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4036b0

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
	js	.label_211
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_214
	cmp	r12d, 0x7fffffff
	je	.label_209
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
	jne	.label_212
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_212:
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
.label_214:
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
	jbe	.label_210
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_213
.label_210:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_208
	mov	rdi, r14
	call	free
.label_208:
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
.label_213:
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
.label_211:
	call	abort
.label_209:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40386d
	.globl sub_40386d
	.type sub_40386d, @function
sub_40386d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403870
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
	#Procedure 0x4038e2
	.globl sub_4038e2
	.type sub_4038e2, @function
sub_4038e2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038f0

	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:
	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	je	.label_215
	cmp	ecx, 0x11
	jne	.label_216
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_215:
	ret	
.label_216:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40390e
	.globl sub_40390e
	.type sub_40390e, @function
sub_40390e:

	nop	
.label_220:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_218:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_219
	inc	r9
	cmp	r9, 0xa
	jb	.label_217
.label_219:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x40393f
	.globl sub_40393f
	.type sub_40393f, @function
sub_40393f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403940

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_217:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_220
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_218
	.section	.text
	.align	16
	#Procedure 0x403969
	.globl sub_403969
	.type sub_403969, @function
sub_403969:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403970

	.globl fts_maxarglen
	.type fts_maxarglen, @function
fts_maxarglen:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	mov	r14d, 1
	test	rdi, rdi
	je	.label_221
	add	rbx, 8
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_222:
	call	strlen
	cmp	rax, r14
	cmova	r14, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_222
	inc	r14
.label_221:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x4039b6
	.globl sub_4039b6
	.type sub_4039b6, @function
sub_4039b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039c0
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
	#Procedure 0x4039e7
	.globl sub_4039e7
	.type sub_4039e7, @function
sub_4039e7:

	nop	word ptr [rax + rax]
.label_224:
	mov	rdi, qword ptr [rbp + 0x58]
	lea	rsi, [r14 + 0x78]
	call	cycle_check
	mov	bpl, 1
	test	al, al
	je	.label_223
	mov	qword ptr [r14], r14
.label_226:
	mov	word ptr [r14 + 0x70], 2
	jmp	.label_223
	.section	.text
	.align	16
	#Procedure 0x403a10

	.globl enter_dir
	.type enter_dir, @function
enter_dir:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbp, rdi
	movzx	eax, word ptr [rbp + 0x48]
	test	ax, 0x102
	je	.label_224
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_225
	mov	rax, qword ptr [r14 + 0x78]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [r14 + 0x80]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [rbx + 0x10], r14
	mov	rdi, qword ptr [rbp + 0x58]
	mov	rsi, rbx
	call	hash_insert
	mov	r15, rax
	mov	bpl, 1
	cmp	r15, rbx
	je	.label_223
	mov	rdi, rbx
	call	free
	test	r15, r15
	je	.label_225
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [r14], rax
	jmp	.label_226
.label_225:
	xor	ebp, ebp
.label_223:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a8b
	.globl sub_403a8b
	.type sub_403a8b, @function
sub_403a8b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a90
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_227
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_227:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403ab6
	.globl sub_403ab6
	.type sub_403ab6, @function
sub_403ab6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ac0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_228
	test	rbx, rbx
	jne	.label_228
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_228:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_230
	test	rax, rax
	je	.label_229
.label_230:
	pop	rbx
	ret	
.label_229:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403af0

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	je	.label_231
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_232]]
	jbe	.label_233
	movss	xmm1,  dword ptr [dword ptr [rip + label_236]]
	ucomiss	xmm1, xmm0
	jbe	.label_233
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_235]]
	jbe	.label_233
	movss	xmm1, dword ptr [rcx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_233
	addss	xmm1,  dword ptr [dword ptr [rip + label_232]]
	ucomiss	xmm0, xmm1
	jbe	.label_233
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_234]]
	ucomiss	xmm2, xmm0
	jb	.label_233
	ucomiss	xmm0, xmm1
	ja	.label_231
.label_233:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_231:
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b64
	.globl sub_403b64
	.type sub_403b64, @function
sub_403b64:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b70
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b7a
	.globl sub_403b7a
	.type sub_403b7a, @function
sub_403b7a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b80
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
	#Procedure 0x403b93
	.globl sub_403b93
	.type sub_403b93, @function
sub_403b93:

	nop	word ptr cs:[rax + rax]
.label_238:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_237
	test	cl, cl
	jne	.label_237
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_237:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403bcb
	.globl sub_403bcb
	.type sub_403bcb, @function
sub_403bcb:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403bd5

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
	je	.label_238
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_237
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_237
	.section	.text
	.align	16
	#Procedure 0x403c10

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
	#Procedure 0x403c3d
	.globl sub_403c3d
	.type sub_403c3d, @function
sub_403c3d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403c40
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
	#Procedure 0x403c53
	.globl sub_403c53
	.type sub_403c53, @function
sub_403c53:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c60

	.globl filesystem_type
	.type filesystem_type, @function
filesystem_type:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	r15d, esi
	mov	r13, rdi
	mov	rbx, qword ptr [r13 + 0x50]
	xor	eax, eax
	test	byte ptr [rbx + 0x49], 2
	je	.label_239
	mov	rbp, qword ptr [rbx + 0x50]
	test	rbp, rbp
	jne	.label_240
	xor	r12d, r12d
	mov	edi, 0xd
	xor	esi, esi
	mov	edx, OFFSET FLAT:dev_type_hash
	mov	ecx, OFFSET FLAT:dev_type_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	rbp, rax
	mov	qword ptr [rbx + 0x50], rbp
	test	rbp, rbp
	mov	r14d, 0
	je	.label_242
.label_240:
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	hash_lookup
	test	rax, rax
	je	.label_244
	mov	rax, qword ptr [rax + 8]
	jmp	.label_239
.label_243:
	mov	rdi, rbp
	call	free
.label_241:
	mov	rax, qword ptr [rsp]
.label_239:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403cf8
	.globl sub_403cf8
	.type sub_403cf8, @function
sub_403cf8:

	nop	word ptr [rax + rax]
.label_244:
	mov	r12b, 1
	mov	r14, rbp
.label_242:
	xor	eax, eax
	test	r15d, r15d
	js	.label_239
	lea	rsi, [rsp]
	mov	edi, r15d
	call	fstatfs
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_239
	test	r12b, r12b
	je	.label_241
	mov	edi, 0x10
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_241
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rbp], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r14
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_243
	cmp	rax, rbp
	je	.label_241
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403d60

	.globl mode_changed
	.type mode_changed, @function
mode_changed:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x90
	mov	eax, r8d
	mov	ebp, ecx
	mov	rbx, rdx
	test	ah, 0xe
	je	.label_245
	lea	rdx, [rsp]
	xor	ecx, ecx
	call	fstatat
	test	eax, eax
	je	.label_246
	mov	al,  byte ptr [byte ptr [rip + force_silent]]
	test	al, al
	jne	.label_247
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_249
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
.label_247:
	xor	eax, eax
	jmp	.label_248
.label_246:
	mov	eax, dword ptr [rsp + 0x18]
.label_245:
	xor	eax, ebp
	test	ax, 0xfff
	setne	al
.label_248:
	add	rsp, 0x90
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403de9
	.globl sub_403de9
	.type sub_403de9, @function
sub_403de9:

	nop	dword ptr [rax]
.label_255:
	add	r14, 0x10
.label_256:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_253
	cmp	qword ptr [r14], 0
	je	.label_255
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_250
	nop	word ptr cs:[rax + rax]
.label_251:
	test	cl, 1
	je	.label_254
	mov	rdi, qword ptr [rbx]
	call	rax
.label_254:
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
	jne	.label_251
.label_250:
	test	cl, cl
	je	.label_252
	mov	rdi, qword ptr [r14]
	call	rax
.label_252:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_255
	.section	.text
	.align	16
	#Procedure 0x403e65
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	jmp	.label_256
	.section	.text
	.align	16
	#Procedure 0x403e72
	.globl sub_403e72
	.type sub_403e72, @function
sub_403e72:

	nop	dword ptr [rax]
.label_253:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e83
	.globl sub_403e83
	.type sub_403e83, @function
sub_403e83:

	nop	word ptr cs:[rax + rax]
.label_261:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_257
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
	#Procedure 0x403ec8
	.globl sub_403ec8
	.type sub_403ec8, @function
sub_403ec8:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ed7

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_261
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_258
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
	mov	esi, OFFSET FLAT:label_263
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_260
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_262
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_259
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_264
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_265
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_266
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_267
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
	#Procedure 0x404020

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_268
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_268:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_269
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x18
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_270
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_271
.label_270:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_271:
	mov	ecx, dword ptr [rax]
.label_269:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x4040de
	.globl sub_4040de
	.type sub_4040de, @function
sub_4040de:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4040e0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_280
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_280:
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
	ja	.label_282
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_281
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_273
	test	esi, esi
	jne	.label_282
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_285
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_275
.label_282:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_272
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_273
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_284
.label_281:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_273:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_276
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_278
.label_276:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_278:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_284:
	cmp	eax, 6
	jne	.label_272
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_274
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_277
.label_272:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_279
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_283
.label_285:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_275:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_274:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_277:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_279:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_283:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x404294
	.globl sub_404294
	.type sub_404294, @function
sub_404294:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042a0

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
	je	.label_287
	cmp	rsi, r13
	je	.label_289
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_292
.label_289:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	je	.label_287
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_288
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_290
.label_292:
	mov	rax, qword ptr [rbx + 8]
	xor	r15d, r15d
	test	rax, rax
	je	.label_287
	add	rbx, 8
	xor	r15d, r15d
	nop	
.label_291:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r13
	je	.label_286
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_286
	mov	rbx, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_291
	jmp	.label_287
.label_288:
	mov	qword ptr [rbx], 0
	jmp	.label_287
.label_286:
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_287
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_290:
	mov	rdi, r14
	call	free_entry
.label_287:
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
	.align	16
	#Procedure 0x40436a
	.globl sub_40436a
	.type sub_40436a, @function
sub_40436a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404370

	.globl fts_palloc
	.type fts_palloc, @function
fts_palloc:
	push	rbx
	mov	rbx, rdi
	add	rsi, 0x100
	add	rsi, qword ptr [rbx + 0x30]
	jae	.label_293
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	call	__errno_location
	mov	dword ptr [rax], 0x24
	jmp	.label_295
.label_294:
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
.label_295:
	xor	eax, eax
.label_296:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4043b4
	.globl sub_4043b4
	.type sub_4043b4, @function
sub_4043b4:

	nop	
.label_293:
	mov	qword ptr [rbx + 0x30], rsi
	mov	rdi, qword ptr [rbx + 0x20]
	call	realloc
	test	rax, rax
	je	.label_294
	mov	qword ptr [rbx + 0x20], rax
	mov	al, 1
	jmp	.label_296
.label_298:
	mov	esi, 0xffffff9c
	mov	edx, 1
	mov	rdi, rbx
	call	cwd_advance_fd
.label_299:
	xor	eax, eax
.label_297:
	movzx	ebp, al
	add	rbx, 0x60
	mov	rdi, rbx
	call	fd_ring_clear
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4043fc
	.globl sub_4043fc
	.type sub_4043fc, @function
sub_4043fc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4043ff

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_299
	test	ah, 2
	jne	.label_298
	mov	edi, dword ptr [rbx + 0x28]
	call	fchdir
	test	eax, eax
	setne	al
	jmp	.label_297
	.section	.text
	.align	16
	#Procedure 0x404420
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
	.align	16
	#Procedure 0x404434
	.globl sub_404434
	.type sub_404434, @function
sub_404434:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404440
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_300]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	16
	#Procedure 0x404454
	.globl sub_404454
	.type sub_404454, @function
sub_404454:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404460

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x404469
	.globl sub_404469
	.type sub_404469, @function
sub_404469:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404470

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
	mov	rax,  qword ptr [word ptr [rip + label_301]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_302]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_303]]
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
	#Procedure 0x4044d8
	.globl sub_4044d8
	.type sub_4044d8, @function
sub_4044d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044e0

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_304
	mov	eax, edi
	and	eax, 1
	test	rdi, rdi
	js	.label_309
	cvtsi2ss	xmm0, rdi
	jmp	.label_305
.label_309:
	shr	rdi, 1
	or	rax, rdi
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_305:
	divss	xmm0, dword ptr [rsi + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_306]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rdi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rdi, rcx
	xor	eax, eax
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_307]]
	jae	.label_308
.label_304:
	push	rax
	call	next_prime
	mov	rcx, rax
	xor	eax, eax
	mov	rdx, rcx
	shr	rdx, 0x3c
	cmove	rax, rcx
	add	rsp, 8
.label_308:
	ret	
	.section	.text
	.align	16
	#Procedure 0x40455e
	.globl sub_40455e
	.type sub_40455e, @function
sub_40455e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404560
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_310
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_312:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_312
.label_310:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_314
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_313]], OFFSET FLAT:slot0
.label_314:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_311
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_311:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4045f1
	.globl sub_4045f1
	.type sub_4045f1, @function
sub_4045f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404600

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
	#Procedure 0x40460d
	.globl sub_40460d
	.type sub_40460d, @function
sub_40460d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404610

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_316
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_318
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_318
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_315
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_319
.label_318:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_319
.label_316:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_319:
	test	ebx, ebx
	js	.label_315
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_315
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_317
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_315
.label_317:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_315:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4046d3
	.globl sub_4046d3
	.type sub_4046d3, @function
sub_4046d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046e0
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
	#Procedure 0x4046f6
	.globl sub_4046f6
	.type sub_4046f6, @function
sub_4046f6:

	nop	word ptr cs:[rax + rax]
.label_323:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404705
	.globl sub_404705
	.type sub_404705, @function
sub_404705:

	nop	dword ptr [rax + rax]
.label_324:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_323
	mov	edi, OFFSET FLAT:label_320
	mov	esi, OFFSET FLAT:label_321
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:label_322
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x40472d

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	test	rax, rax
	je	.label_324
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404740

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
	je	.label_326
	mov	qword ptr [rsp], rbx
	test	r12, r12
	mov	ebx, OFFSET FLAT:default_tuning
	cmovne	rbx, r12
	mov	qword ptr [r13 + 0x28], rbx
	mov	rdi, r13
	call	check_tuning
	test	al, al
	je	.label_325
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	je	.label_325
	mov	esi, 0x10
	mov	rdi, rax
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_325
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
	jmp	.label_326
.label_325:
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_326:
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
	#Procedure 0x40481c
	.globl sub_40481c
	.type sub_40481c, @function
sub_40481c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404820

	.globl chmodat
	.type chmodat, @function
chmodat:
	xor	ecx, ecx
	jmp	fchmodat
	.section	.text
	.align	16
	#Procedure 0x404827
	.globl sub_404827
	.type sub_404827, @function
sub_404827:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404830
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_327:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_327
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x404851
	.globl sub_404851
	.type sub_404851, @function
sub_404851:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404860
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	ecx, esi
	rol	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x404869
	.globl sub_404869
	.type sub_404869, @function
sub_404869:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404870
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40487a
	.globl sub_40487a
	.type sub_40487a, @function
sub_40487a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404880
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
	jae	.label_328
	xor	ebx, ebx
.label_330:
	cmp	qword ptr [r13], 0
	je	.label_329
	test	r13, r13
	je	.label_329
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_331:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_328
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	jne	.label_331
.label_329:
	add	r13, 0x10
	cmp	r13, qword ptr [r12 + 8]
	jb	.label_330
.label_328:
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
	.align	16
	#Procedure 0x4048f7
	.globl sub_4048f7
	.type sub_4048f7, @function
sub_4048f7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404900
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rsi, qword ptr [rdi]
	xor	edx, edx
	cmp	rsi, qword ptr [rdi + 8]
	mov	ecx, 0
	jae	.label_332
	mov	r8, qword ptr [rdi + 8]
	xor	ecx, ecx
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_335:
	cmp	qword ptr [rsi], 0
	je	.label_337
	mov	rax, rsi
	nop	dword ptr [rax]
.label_333:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_333
	inc	rdx
.label_337:
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_335
.label_332:
	cmp	rdx, qword ptr [rdi + 0x18]
	jne	.label_334
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_336
.label_334:
	xor	eax, eax
.label_336:
	ret	
	.section	.text
	.align	16
	#Procedure 0x404959
	.globl sub_404959
	.type sub_404959, @function
sub_404959:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404960

	.globl octal_to_mode
	.type octal_to_mode, @function
octal_to_mode:
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x404963
	.globl sub_404963
	.type sub_404963, @function
sub_404963:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404970

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_338
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_340
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_338
.label_340:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_338
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_339
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_339:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_338:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x4049e7
	.globl sub_4049e7
	.type sub_4049e7, @function
sub_4049e7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049f0

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
	je	.label_349
	lea	rdx, [rsp]
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	je	.label_348
	test	rbx, rbx
	je	.label_343
	mov	qword ptr [rbx], rax
	jmp	.label_343
.label_348:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_353
	cvtsi2ss	xmm0, rcx
	jmp	.label_342
.label_353:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_342:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_347
	cvtsi2ss	xmm1, rax
	jmp	.label_352
.label_347:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_352:
	mulss	xmm1, dword ptr [rcx + 8]
	ucomiss	xmm0, xmm1
	jbe	.label_346
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_345
	cvtsi2ss	xmm2, rcx
	jmp	.label_350
.label_345:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_350:
	mov	rcx, qword ptr [r15 + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_355
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_344
.label_355:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_344:
	movaps	xmm3, xmm1
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	jbe	.label_346
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_354
	mulss	xmm0, xmm1
.label_354:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_307]]
	jae	.label_343
	movss	xmm1,  dword ptr [dword ptr [rip + label_306]]
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
	je	.label_343
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	jne	.label_349
.label_346:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_351
	mov	rdi, r15
	call	allocate_entry
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_343
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx + 8], rax
	inc	qword ptr [r15 + 0x20]
	jmp	.label_341
.label_351:
	mov	qword ptr [rax], r14
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_341:
	mov	ebp, 1
.label_343:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_349:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404bc2
	.globl sub_404bc2
	.type sub_404bc2, @function
sub_404bc2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404bd0

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
	jne	.label_365
	mov	cl, 0x2d
.label_365:
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
	jne	.label_357
	mov	cl, 0x2d
.label_357:
	test	al, 8
	jne	.label_359
	mov	dl, cl
.label_359:
	mov	byte ptr [r14 + 3], dl
	test	bl, 0x20
	mov	cl, 0x72
	jne	.label_361
	mov	cl, 0x2d
.label_361:
	mov	byte ptr [r14 + 4], cl
	test	bl, 0x10
	mov	dl, 0x77
	mov	cl, 0x77
	jne	.label_363
	mov	cl, 0x2d
.label_363:
	mov	byte ptr [r14 + 5], cl
	mov	ecx, ebx
	and	ecx, 8
	lea	edi, [rcx*4 + 0x53]
	mov	cl, 0x78
	jne	.label_366
	mov	cl, 0x2d
.label_366:
	test	al, 4
	jne	.label_356
	mov	dil, cl
.label_356:
	mov	byte ptr [r14 + 6], dil
	test	bl, 4
	jne	.label_358
	mov	sil, 0x2d
.label_358:
	mov	byte ptr [r14 + 7], sil
	test	bl, 2
	jne	.label_362
	mov	dl, 0x2d
.label_362:
	mov	byte ptr [r14 + 8], dl
	and	ebx, 1
	jne	.label_364
	mov	r8b, 0x2d
.label_364:
	test	al, 2
	je	.label_360
	shl	ebx, 5
	or	ebx, 0x54
	mov	r8d, ebx
.label_360:
	mov	byte ptr [r14 + 9], r8b
	mov	byte ptr [r14 + 0xa], 0x20
	mov	byte ptr [r14 + 0xb], 0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c9d
	.globl sub_404c9d
	.type sub_404c9d, @function
sub_404c9d:

	nop	dword ptr [rax]
.label_376:
	mov	dword ptr [r14], 0
	mov	ax, 0xd
	jmp	.label_367
	.section	.text
	.align	16
	#Procedure 0x404cb0
	.globl sub_404cb0
	.type sub_404cb0, @function
sub_404cb0:

	nop	dword ptr [rax + rax]
.label_377:
	mov	ax, 8
	jmp	.label_367
	.section	.text
	.align	16
	#Procedure 0x404cc1

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_368
	test	byte ptr [r14 + 0x48], 1
	je	.label_368
	mov	dl, 1
.label_368:
	lea	rbx, [r15 + 0x78]
	test	dl, dl
	jne	.label_373
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 2
	jne	.label_373
	mov	edi, dword ptr [r14 + 0x2c]
	mov	rsi, qword ptr [r15 + 0x30]
	mov	ecx, 0x100
	mov	rdx, rbx
	call	fstatat
	test	eax, eax
	je	.label_369
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_370
.label_373:
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rsi, rbx
	call	stat
	test	eax, eax
	je	.label_369
	call	__errno_location
	mov	r14, rax
	cmp	dword ptr [r14], 2
	jne	.label_371
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rsi, rbx
	call	lstat
	test	eax, eax
	je	.label_376
.label_371:
	mov	eax, dword ptr [r14]
.label_370:
	mov	dword ptr [r15 + 0x40], eax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	ax, 0xa
.label_367:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_369:
	movzx	ecx, word ptr [r15 + 0x90]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	je	.label_377
	mov	ax, 0xc
	movzx	ecx, cx
	cmp	ecx, 0xa000
	je	.label_367
	cmp	ecx, 0x4000
	jne	.label_372
	mov	rax, qword ptr [r15 + 0x88]
	mov	rcx, -1
	cmp	rax, 2
	jb	.label_374
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_374
	mov	ecx, dword ptr [r14 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_374:
	mov	qword ptr [r15 + 0x68], rcx
	mov	ax, 1
	cmp	byte ptr [r15 + 0x108], 0x2e
	jne	.label_367
	mov	cl, byte ptr [r15 + 0x109]
	test	cl, cl
	je	.label_375
	cmp	cl, 0x2e
	jne	.label_367
	cmp	byte ptr [r15 + 0x10a], 0
	jne	.label_367
.label_375:
	cmp	qword ptr [r15 + 0x58], 0
	mov	cx, 1
	mov	ax, 5
	cmove	ax, cx
	jmp	.label_367
.label_372:
	mov	ax, 3
	jmp	.label_367
	.section	.text
	.align	16
	#Procedure 0x404e30

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rbx, qword ptr [r14]
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_381
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_381
	movzx	eax, word ptr [rbx + 0x74]
	mov	word ptr [rbx + 0x74], 3
	cmp	eax, 2
	je	.label_395
	movzx	ecx, ax
	cmp	ecx, 1
	jne	.label_397
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	mov	r15, rbx
	jmp	.label_381
.label_395:
	movzx	ecx, word ptr [rbx + 0x70]
	and	ecx, 0xfffe
	cmp	ecx, 0xc
	jne	.label_397
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_410
	test	byte ptr [r14 + 0x48], 4
	jne	.label_410
	mov	esi, OFFSET FLAT:label_134
	mov	rdi, r14
	call	diropen
	mov	dword ptr [rbx + 0x44], eax
	test	eax, eax
	js	.label_414
	or	byte ptr [rbx + 0x72], 2
	mov	r15, rbx
	jmp	.label_383
.label_397:
	movzx	ecx, word ptr [rbx + 0x70]
	cmp	ecx, 1
	jne	.label_412
	movzx	eax, ax
	cmp	eax, 4
	je	.label_379
	test	byte ptr [r14 + 0x48], 0x40
	je	.label_417
	mov	rax, qword ptr [rbx + 0x78]
	cmp	rax, qword ptr [r14 + 0x18]
	jne	.label_379
.label_417:
	cmp	qword ptr [r14 + 8], 0
	je	.label_385
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 0x10
	jne	.label_386
	cmp	qword ptr [r14 + 8], 0
	je	.label_385
	mov	rcx, qword ptr [rbx + 0x30]
	mov	edx, 0xffffffff
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_389
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	or	byte ptr [rbx + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_418
	.section	.text
	.align	16
	#Procedure 0x404f67
	.globl sub_404f67
	.type sub_404f67, @function
sub_404f67:

	nop	word ptr [rax + rax]
.label_412:
	mov	r15, qword ptr [rbx + 0x10]
	test	r15, r15
	jne	.label_398
	mov	rax, qword ptr [rbx + 8]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_399
	mov	r15, qword ptr [rbx + 0x10]
	test	r15, r15
	je	.label_404
.label_398:
	mov	qword ptr [r14], r15
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_409
	movzx	eax, word ptr [r15 + 0x74]
	cmp	eax, 4
	mov	rbx, r15
	je	.label_412
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_384
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_396
	test	byte ptr [r14 + 0x48], 4
	jne	.label_396
	mov	esi, OFFSET FLAT:label_134
	mov	rdi, r14
	call	diropen
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_416
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_396
.label_392:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_418:
	test	rax, rax
	jne	.label_392
	jmp	.label_389
.label_379:
	test	byte ptr [rbx + 0x72], 2
	je	.label_390
	mov	edi, dword ptr [rbx + 0x44]
	call	close
.label_390:
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_393
	call	fts_lfree
	mov	qword ptr [r14 + 8], 0
.label_393:
	mov	word ptr [rbx + 0x70], 6
.label_391:
	mov	rdi, r14
	mov	rsi, rbx
	call	leave_dir
	mov	r15, rbx
	jmp	.label_381
.label_410:
	mov	r15, rbx
	jmp	.label_383
.label_409:
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	je	.label_400
	or	byte ptr [r14 + 0x49], 0x20
	xor	r15d, r15d
	jmp	.label_381
.label_399:
	mov	qword ptr [r14], rax
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	r15, rax
	test	r15, r15
	je	.label_411
	mov	rdi, rbx
	call	free
	jmp	.label_384
.label_400:
	mov	rdi, r14
	call	free_dir
	mov	rdi, r14
	mov	rsi, r15
	call	fts_load
	mov	rdi, r14
	call	setup_dir
	jmp	.label_383
.label_386:
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	mov	rdi, qword ptr [r14 + 8]
	call	fts_lfree
	mov	qword ptr [r14 + 8], 0
.label_385:
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_380
.label_389:
	mov	r15, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	jmp	.label_384
.label_380:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_381
	cmp	dword ptr [rbx + 0x40], 0
	je	.label_391
	movzx	eax, word ptr [rbx + 0x70]
	cmp	eax, 4
	je	.label_391
	mov	word ptr [rbx + 0x70], 7
	jmp	.label_391
.label_414:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	mov	word ptr [rbx + 0x70], 7
	mov	r15, rbx
	jmp	.label_383
.label_411:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_381
.label_404:
	mov	r15, qword ptr [rbx + 8]
	mov	qword ptr [r14], r15
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r15 + 0x58], -1
	je	.label_403
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	je	.label_406
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_408
	movzx	eax, word ptr [r15 + 0x72]
	test	al, 2
	jne	.label_413
	test	al, 1
	jne	.label_378
	mov	rsi, qword ptr [r15 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_401
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_405
.label_403:
	mov	rdi, r15
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	xor	r15d, r15d
	jmp	.label_381
.label_408:
	mov	rdi, r14
	call	restore_initial_cwd
.label_405:
	test	eax, eax
	je	.label_378
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_378
.label_413:
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_387
	test	ah, 2
	mov	esi, dword ptr [r15 + 0x44]
	jne	.label_402
	mov	edi, esi
	call	fchdir
	test	eax, eax
	je	.label_387
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_387
.label_416:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
.label_396:
	mov	word ptr [r15 + 0x74], 3
.label_384:
	mov	rax, qword ptr [r14 + 0x20]
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rcx + 0x48]
	lea	rsi, [rcx - 1]
	cmp	byte ptr [rdx + rcx - 1], 0x2f
	cmovne	rsi, rcx
	lea	rdi, [rax + rsi + 1]
	mov	byte ptr [rax + rsi], 0x2f
	lea	rsi, [r15 + 0x108]
	mov	rdx, qword ptr [r15 + 0x60]
	inc	rdx
	call	memmove
.label_383:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	jne	.label_382
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_388
	cmp	rax, 2
	jne	.label_406
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_415
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_415
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	leaf_optimization
	cmp	eax, 2
	je	.label_388
.label_415:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_382
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_388
	mov	rax, qword ptr [rbx + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_388
	dec	rax
	mov	qword ptr [rbx + 0x68], rax
.label_388:
	mov	ax, word ptr [r15 + 0x70]
.label_382:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_381
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_394
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_394:
	mov	rdi, r14
	mov	rsi, r15
	call	enter_dir
	test	al, al
	jne	.label_381
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r15d, r15d
	jmp	.label_381
.label_402:
	mov	edx, 1
	mov	rdi, r14
	call	cwd_advance_fd
.label_387:
	mov	edi, dword ptr [r15 + 0x44]
	call	close
.label_378:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	je	.label_407
	mov	eax, dword ptr [r15 + 0x40]
	xor	ecx, ecx
	cmp	eax, 0
	setne	cl
	or	ecx, 6
	cmp	eax, 0
	mov	word ptr [r15 + 0x70], cx
	jne	.label_407
	mov	rdi, r14
	mov	rsi, r15
	call	leave_dir
.label_407:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	r15, rax
.label_381:
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_406:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4053d7
	.globl sub_4053d7
	.type sub_4053d7, @function
sub_4053d7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053e0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	16
	#Procedure 0x4053ee
	.globl sub_4053ee
	.type sub_4053ee, @function
sub_4053ee:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4053f0

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
	je	.label_424
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
.label_425:
	movsx	ebp, al
	mov	ebx, dword ptr [rcx + 4]
	mov	esi, dword ptr [rcx + 8]
	mov	r8d, dword ptr [rcx + 0xc]
	cmp	ebp, 2
	je	.label_419
	cmp	ebp, 3
	jne	.label_423
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
	jmp	.label_423
	.section	.text
	.align	16
	#Procedure 0x405488
	.globl sub_405488
	.type sub_405488, @function
sub_405488:

	nop	dword ptr [rax + rax]
.label_419:
	mov	ebp, edi
	and	ebp, 0x49
	mov	eax, esi
	or	eax, 0x49
	or	ebp, r12d
	cmovne	esi, eax
.label_423:
	test	ebx, ebx
	mov	eax, edx
	cmovne	eax, ebx
	mov	ebp, r8d
	or	ebp, r10d
	and	ebp, esi
	and	ebp, eax
	movsx	esi, byte ptr [rcx]
	cmp	esi, 0x2b
	je	.label_422
	cmp	esi, 0x2d
	je	.label_426
	cmp	esi, 0x3d
	jne	.label_420
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
	jmp	.label_420
	.section	.text
	.align	16
	#Procedure 0x4054ea
	.globl sub_4054ea
	.type sub_4054ea, @function
sub_4054ea:

	nop	word ptr [rax + rax]
.label_422:
	or	r13d, ebp
	or	edi, ebp
.label_420:
	movzx	eax, byte ptr [rcx + 0x11]
	add	rcx, 0x10
	test	al, al
	jne	.label_425
.label_424:
	mov	rax, qword ptr [rsp - 8]
	test	rax, rax
	je	.label_421
	mov	dword ptr [rax], r13d
.label_421:
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
	#Procedure 0x40551f
	.globl sub_40551f
	.type sub_40551f, @function
sub_40551f:

	nop	
.label_426:
	or	r13d, ebp
	not	ebp
	and	edi, ebp
	jmp	.label_420
	.section	.text
	.align	16
	#Procedure 0x405529
	.globl sub_405529
	.type sub_405529, @function
sub_405529:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405530

	.globl dirent_inode_sort_may_be_useful
	.type dirent_inode_sort_may_be_useful, @function
dirent_inode_sort_may_be_useful:
	push	rax
	call	filesystem_type
	mov	rcx, rax
	xor	eax, eax
	cmp	rcx, 0x6969
	je	.label_427
	cmp	rcx, 0x1021994
	je	.label_427
	mov	edx, 0xff534d42
	cmp	rcx, rdx
	je	.label_427
	mov	al, 1
.label_427:
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40555b
	.globl sub_40555b
	.type sub_40555b, @function
sub_40555b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405560

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_428
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_428:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405583
	.globl sub_405583
	.type sub_405583, @function
sub_405583:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405590

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_429
	test	rax, rax
	je	.label_430
.label_429:
	pop	rbx
	ret	
.label_430:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4055aa
	.globl sub_4055aa
	.type sub_4055aa, @function
sub_4055aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055b0

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4055b5
	.globl sub_4055b5
	.type sub_4055b5, @function
sub_4055b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055c0
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
	#Procedure 0x4055cf
	.globl sub_4055cf
	.type sub_4055cf, @function
sub_4055cf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4055d0

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
.label_459:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_518
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_466]]
.label_986:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_474
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_482
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_987:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_490
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_490
	xor	r14d, r14d
.label_503:
	cmp	r14, r11
	jae	.label_501
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_501:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_503
.label_490:
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
	jmp	.label_506
.label_979:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_506
.label_982:
	mov	al, 1
.label_980:
	mov	r12b, 1
.label_983:
	test	r12b, 1
	mov	cl, 1
	je	.label_517
	mov	ecx, eax
.label_517:
	mov	al, cl
.label_981:
	test	r12b, 1
	jne	.label_521
	test	r11, r11
	je	.label_495
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_495:
	mov	r14d, 1
	jmp	.label_527
.label_521:
	xor	r14d, r14d
.label_527:
	mov	ecx, OFFSET FLAT:label_482
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_506
.label_984:
	test	r12b, 1
	jne	.label_533
	test	r11, r11
	je	.label_468
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_468:
	mov	r14d, 1
	jmp	.label_536
.label_985:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_538
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_506
.label_533:
	xor	r14d, r14d
.label_536:
	mov	eax, OFFSET FLAT:label_538
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_506:
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
	jmp	.label_440
	.section	.text
	.align	16
	#Procedure 0x4058ac
	.globl sub_4058ac
	.type sub_4058ac, @function
sub_4058ac:

	nop	dword ptr [rax]
.label_467:
	inc	rsi
.label_440:
	cmp	rbp, -1
	je	.label_481
	cmp	rsi, rbp
	jne	.label_455
	jmp	.label_486
	.section	.text
	.align	16
	#Procedure 0x4058c3
	.globl sub_4058c3
	.type sub_4058c3, @function
sub_4058c3:

	nop	word ptr cs:[rax + rax]
.label_481:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_486
.label_455:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_492
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_494
	cmp	rbp, -1
	jne	.label_494
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
.label_494:
	cmp	rbx, rbp
	jbe	.label_505
.label_492:
	xor	r8d, r8d
.label_456:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_508
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_511]]
.label_863:
	test	rsi, rsi
	jne	.label_449
	jmp	.label_513
	.section	.text
	.align	16
	#Procedure 0x40595e
	.globl sub_40595e
	.type sub_40595e, @function
sub_40595e:

	nop	
.label_505:
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
	jne	.label_525
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_456
	jmp	.label_439
.label_525:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_456
.label_867:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_540
	test	rsi, rsi
	jne	.label_541
	cmp	rbp, 1
	je	.label_513
	xor	r13d, r13d
	jmp	.label_454
.label_856:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_432
	cmp	byte ptr [rsp + 7], 0
	jne	.label_435
	cmp	r12d, 2
	jne	.label_437
	mov	eax, r9d
	and	al, 1
	jne	.label_437
	cmp	r14, r11
	jae	.label_496
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_496:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_446
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_446:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_451
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_451:
	add	r14, 3
	mov	r9b, 1
.label_437:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_458
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_458:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_461
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_461
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_461
	cmp	r14, r11
	jae	.label_475
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_475:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_543
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_543:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_454
.label_857:
	mov	bl, 0x62
	jmp	.label_489
.label_858:
	mov	cl, 0x74
	jmp	.label_476
.label_859:
	mov	bl, 0x76
	jmp	.label_489
.label_860:
	mov	bl, 0x66
	jmp	.label_489
.label_861:
	mov	cl, 0x72
	jmp	.label_476
.label_864:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_499
	cmp	byte ptr [rsp + 7], 0
	jne	.label_435
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
	jae	.label_504
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_504:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_512
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_512:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_515
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_515:
	add	r14, 3
	xor	r9d, r9d
.label_499:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_454
.label_865:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_524
	cmp	r12d, 2
	jne	.label_449
	cmp	byte ptr [rsp + 7], 0
	je	.label_449
	jmp	.label_435
.label_866:
	cmp	r12d, 2
	jne	.label_531
	cmp	byte ptr [rsp + 7], 0
	jne	.label_435
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_477
.label_508:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_479
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
.label_497:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_452
	test	r8b, r8b
	je	.label_452
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_454
.label_540:
	test	rsi, rsi
	jne	.label_450
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_450
.label_513:
	mov	dl, 1
.label_862:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_435
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_454:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_469
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_470
	jmp	.label_441
	.section	.text
	.align	16
	#Procedure 0x405ca4
	.globl sub_405ca4
	.type sub_405ca4, @function
sub_405ca4:

	nop	word ptr cs:[rax + rax]
.label_469:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_441
.label_470:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_483
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_477
	jmp	.label_498
	.section	.text
	.align	16
	#Procedure 0x405ced
	.globl sub_405ced
	.type sub_405ced, @function
sub_405ced:

	nop	dword ptr [rax]
.label_441:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_498
	jmp	.label_477
.label_483:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_498
.label_432:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_467
	xor	r15d, r15d
	jmp	.label_449
.label_531:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_476
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_477
.label_476:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_435
.label_489:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_454
	nop	word ptr cs:[rax + rax]
.label_498:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_435
	cmp	r12d, 2
	jne	.label_478
	mov	eax, r9d
	and	al, 1
	jne	.label_478
	cmp	r14, r11
	jae	.label_522
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_522:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_488
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_488:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_529
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_529:
	add	r14, 3
	mov	r9b, 1
.label_478:
	cmp	r14, r11
	jae	.label_532
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_532:
	inc	r14
	jmp	.label_534
.label_479:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_537
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_537:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_500:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_444
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_448
	cmp	rbp, -2
	je	.label_545
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_433
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_460:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_539
	bt	rsi, rdx
	jb	.label_439
.label_539:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_460
.label_433:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_485
	xor	r13d, r13d
.label_485:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_500
	jmp	.label_497
.label_461:
	xor	r13d, r13d
	jmp	.label_454
.label_450:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_454
.label_524:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_449
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_449
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_449
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_473
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_544
	cmp	byte ptr [rsp + 7], 0
	jne	.label_435
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_457
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_457:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_471
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_471:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_526
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_526:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_528
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_528:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_454
.label_449:
	xor	eax, eax
.label_541:
	xor	r13d, r13d
	jmp	.label_454
.label_452:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_535
	.section	.text
	.align	16
	#Procedure 0x405fd3
	.globl sub_405fd3
	.type sub_405fd3, @function
sub_405fd3:

	nop	word ptr cs:[rax + rax]
.label_502:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_535:
	test	r8b, r8b
	je	.label_542
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_434
	cmp	r14, r11
	jae	.label_519
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_519:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_434
	.section	.text
	.align	16
	#Procedure 0x40601c
	.globl sub_40601c
	.type sub_40601c, @function
sub_40601c:

	nop	dword ptr [rax]
.label_542:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_439
	cmp	r12d, 2
	jne	.label_443
	mov	eax, r9d
	and	al, 1
	jne	.label_443
	cmp	r14, r11
	jae	.label_447
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_447:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_514
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_514:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_436
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_436:
	add	r14, 3
	mov	r9b, 1
.label_443:
	cmp	r14, r11
	jae	.label_480
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_480:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_463
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_463:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_472
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_472:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_434:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_477
	test	r9b, 1
	je	.label_491
	mov	ebx, eax
	and	bl, 1
	jne	.label_491
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_493
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_493:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_507
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_507:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_491:
	cmp	r14, r11
	jae	.label_502
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_502
	.section	.text
	.align	16
	#Procedure 0x406123
	.globl sub_406123
	.type sub_406123, @function
sub_406123:

	nop	word ptr cs:[rax + rax]
.label_477:
	test	r9b, 1
	je	.label_509
	and	al, 1
	jne	.label_509
	cmp	r14, r11
	jae	.label_510
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_510:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_445
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_445:
	add	r14, 2
	xor	r9d, r9d
.label_509:
	mov	ebx, r15d
.label_534:
	cmp	r14, r11
	jae	.label_516
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_516:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_467
.label_448:
	xor	r13d, r13d
.label_444:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_497
.label_545:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_530
	mov	rsi, qword ptr [rsp + 0x50]
.label_464:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_438
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_464
	xor	r13d, r13d
	jmp	.label_497
.label_530:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_497
.label_438:
	xor	r13d, r13d
	jmp	.label_497
.label_473:
	xor	r13d, r13d
	jmp	.label_454
.label_544:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_454
	.section	.text
	.align	16
	#Procedure 0x4061f8
	.globl sub_4061f8
	.type sub_4061f8, @function
sub_4061f8:

	nop	dword ptr [rax + rax]
.label_486:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_431
	or	dl, al
	je	.label_439
.label_431:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_442
	or	dl, al
	jne	.label_442
	test	r10b, 1
	jne	.label_453
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_442
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_459
.label_442:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_462
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_465
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_465
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_484:
	cmp	r14, r11
	jae	.label_487
	mov	byte ptr [rcx + r14], al
.label_487:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_484
	jmp	.label_465
.label_435:
	mov	qword ptr [rsp + 0x20], rbp
.label_439:
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
.label_520:
	mov	r14, rax
.label_523:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_453:
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
	jmp	.label_520
.label_462:
	mov	rcx, qword ptr [rsp + 8]
.label_465:
	cmp	r14, r11
	jae	.label_523
	mov	byte ptr [rcx + r14], 0
	jmp	.label_523
.label_518:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40638c
	.globl sub_40638c
	.type sub_40638c, @function
sub_40638c:

	nop	dword ptr [rax]
.label_549:
	mov	al, 0x62
	ret	
.label_551:
	movzx	eax, di
	cmp	eax, 0x6000
	je	.label_549
	cmp	eax, 0x4000
	jne	.label_547
	mov	al, 0x64
	ret	
.label_546:
	mov	al, 0x2d
	movzx	ecx, di
	cmp	ecx, 0x8000
	je	.label_548
	cmp	ecx, 0xa000
	je	.label_550
	cmp	ecx, 0xc000
	jne	.label_547
	mov	al, 0x73
	ret	
	.section	.text
	.align	16
	#Procedure 0x4063c7

	.globl ftypelet
	.type ftypelet, @function
ftypelet:
	and	edi, 0xfffff000
	movsx	eax, di
	cmp	eax, 0xfff
	jle	.label_546
	cmp	eax, 0x3fff
	jg	.label_551
	movzx	eax, di
	cmp	eax, 0x1000
	je	.label_552
	cmp	eax, 0x2000
	jne	.label_547
	mov	al, 0x63
	ret	
.label_550:
	mov	al, 0x6c
	ret	
	.section	.text
	.align	16
	#Procedure 0x4063f5
	.globl sub_4063f5
	.type sub_4063f5, @function
sub_4063f5:

	nop	dword ptr [rax + rax]
.label_552:
	mov	al, 0x70
	ret	
.label_547:
	mov	al, 0x3f
.label_548:
	ret	
	.section	.text
	.align	16
	#Procedure 0x406400

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40640a
	.globl sub_40640a
	.type sub_40640a, @function
sub_40640a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406410
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
	#Procedure 0x406420

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x406429
	.globl sub_406429
	.type sub_406429, @function
sub_406429:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406430

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x40643a
	.globl sub_40643a
	.type sub_40643a, @function
sub_40643a:

	nop	word ptr [rax + rax]
.label_553:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x406443
	.globl sub_406443
	.type sub_406443, @function
sub_406443:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406445
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_553
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x406460

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	cmp	dword ptr [r15 + 0x18], 0x95f616
	jne	.label_554
	cmp	qword ptr [r15 + 0x10], 0
	je	.label_559
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r15]
	jne	.label_559
	mov	rcx, qword ptr [r14]
	mov	al, 1
	cmp	rcx, qword ptr [r15 + 8]
	je	.label_560
.label_559:
	mov	rbx, qword ptr [r15 + 0x10]
	inc	rbx
	mov	qword ptr [r15 + 0x10], rbx
	mov	rdi, rbx
	call	is_zero_or_power_of_two
	test	al, al
	je	.label_555
	mov	al, 1
	test	rbx, rbx
	je	.label_560
	mov	rax, qword ptr [r14]
	mov	qword ptr [r15 + 8], rax
	mov	rax, qword ptr [r14 + 8]
	mov	qword ptr [r15], rax
.label_555:
	xor	eax, eax
.label_560:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_554:
	mov	edi, OFFSET FLAT:label_556
	mov	esi, OFFSET FLAT:label_557
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:label_558
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x4064dd
	.globl sub_4064dd
	.type sub_4064dd, @function
sub_4064dd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4064e0

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
	#Procedure 0x406529
	.globl sub_406529
	.type sub_406529, @function
sub_406529:

	nop	dword ptr [rax]
.label_561:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406536
	.globl sub_406536
	.type sub_406536, @function
sub_406536:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406538

	.globl fts_set_stat_required
	.type fts_set_stat_required, @function
fts_set_stat_required:
	movzx	eax, word ptr [rdi + 0x70]
	cmp	eax, 0xb
	jne	.label_561
	movzx	eax, sil
	inc	rax
	mov	qword ptr [rdi + 0xa8], rax
	ret	
.label_562:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x406553
	.globl sub_406553
	.type sub_406553, @function
sub_406553:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40655c

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_562
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x406570

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40657a
	.globl sub_40657a
	.type sub_40657a, @function
sub_40657a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406580
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	16
	#Procedure 0x40658d
	.globl sub_40658d
	.type sub_40658d, @function
sub_40658d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406590
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
	#Procedure 0x4065a0

	.globl fts_sort
	.type fts_sort, @function
fts_sort:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	r12, qword ptr [r15 + 0x40]
	cmp	qword ptr [r15 + 0x38], r14
	jae	.label_563
	lea	rsi, [r14 + 0x28]
	mov	qword ptr [r15 + 0x38], rsi
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_569
	mov	rdi, qword ptr [r15 + 0x10]
	shl	rsi, 3
	call	realloc
	test	rax, rax
	je	.label_569
	mov	qword ptr [r15 + 0x10], rax
.label_563:
	test	rbx, rbx
	je	.label_565
	mov	rax, qword ptr [r15 + 0x10]
	nop	
.label_564:
	mov	qword ptr [rax], rbx
	add	rax, 8
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_564
.label_565:
	mov	rdi, qword ptr [r15 + 0x10]
	mov	edx, 8
	mov	rsi, r14
	mov	rcx, r12
	call	qsort
	mov	rax, qword ptr [r15 + 0x10]
	mov	rbx, qword ptr [rax]
	mov	r8, r14
	dec	r8
	je	.label_567
	mov	edx, 1
	sub	rdx, r14
	lea	rsi, [rax + 8]
	nop	
.label_568:
	mov	rdi, qword ptr [rsi - 8]
	mov	rcx, qword ptr [rsi]
	mov	qword ptr [rdi + 0x10], rcx
	add	rsi, 8
	inc	rdx
	jne	.label_568
	lea	rax, [rax + r8*8]
.label_567:
	mov	rax, qword ptr [rax]
	mov	qword ptr [rax + 0x10], 0
	jmp	.label_566
.label_569:
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	qword ptr [r15 + 0x10], 0
	mov	qword ptr [r15 + 0x38], 0
.label_566:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40667d
	.globl sub_40667d
	.type sub_40667d, @function
sub_40667d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406680

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
	mov	rcx,  qword ptr [word ptr [rip + label_301]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_302]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_303]]
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
	#Procedure 0x4066ed
	.globl sub_4066ed
	.type sub_4066ed, @function
sub_4066ed:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4066f0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x4066fd
	.globl sub_4066fd
	.type sub_4066fd, @function
sub_4066fd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406700

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	16
	#Procedure 0x406707
	.globl sub_406707
	.type sub_406707, @function
sub_406707:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406710

	.globl fts_alloc
	.type fts_alloc, @function
fts_alloc:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	lea	rdi, [r15 + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_570
	mov	rdi, rbx
	add	rdi, 0x108
	mov	rsi, r12
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [rbx + r15 + 0x108], 0
	mov	qword ptr [rbx + 0x60], r15
	mov	qword ptr [rbx + 0x50], r14
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rbx + 0x38], rax
	mov	dword ptr [rbx + 0x40], 0
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x72], 0
	mov	word ptr [rbx + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	mov	rax, rbx
.label_570:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40679a
	.globl sub_40679a
	.type sub_40679a, @function
sub_40679a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067a0
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
.label_575:
	cmp	qword ptr [rcx], rbx
	jne	.label_571
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_573
.label_571:
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_575
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	
.label_574:
	cmp	rax, rdx
	mov	ecx, 0
	jae	.label_572
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_574
	jmp	.label_572
.label_573:
	mov	rcx, qword ptr [rdx]
.label_572:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x406806
	.globl sub_406806
	.type sub_406806, @function
sub_406806:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406810

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
	je	.label_586
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	jne	.label_583
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_579
	cvtsi2ss	xmm0, rax
	jmp	.label_584
.label_579:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_584:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_578
	cvtsi2ss	xmm1, rcx
	jmp	.label_577
.label_578:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_577:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jbe	.label_583
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_588
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	jmp	.label_576
.label_588:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_576:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_585
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_587
.label_585:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_587:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_583
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	jne	.label_582
	mulss	xmm0, dword ptr [rcx + 8]
.label_582:
	movss	xmm1,  dword ptr [dword ptr [rip + label_306]]
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
	jne	.label_583
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_580
	nop	dword ptr [rax + rax]
.label_581:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_581
.label_580:
	mov	qword ptr [r15 + 0x48], 0
.label_583:
	mov	rax, r14
.label_586:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x406996
	.globl sub_406996
	.type sub_406996, @function
sub_406996:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4069a0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4069aa
	.globl sub_4069aa
	.type sub_4069aa, @function
sub_4069aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4069b0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r14, rsi
	mov	r12d, edi
	mov	qword ptr [rsp + 0x18], 0
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_82
	call	setlocale
	mov	edi, OFFSET FLAT:label_605
	mov	esi, OFFSET FLAT:label_606
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_605
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [byte ptr [rip + diagnose_surprises]],  0
	mov	byte ptr [byte ptr [rip + force_silent]],  0
	mov	byte ptr [byte ptr [rip + recurse]],  0
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	xor	ebx, ebx
	xor	ebp, ebp
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x30], r14
	mov	dword ptr [rsp + 0x24], r12d
	jmp	.label_592
	.section	.text
	.align	16
	#Procedure 0x406a3a
	.globl sub_406a3a
	.type sub_406a3a, @function
sub_406a3a:

	nop	word ptr [rax + rax]
.label_593:
	mov	byte ptr [rax + rbp], 0x2c
	mov	rcx, rax
	mov	qword ptr [rsp + 0x10], rcx
	add	r12, rax
	inc	r14
	mov	rdi, r12
	mov	rsi, rbx
	mov	rdx, r14
	call	memcpy
	mov	byte ptr [byte ptr [rip + diagnose_surprises]],  1
	mov	bl, r15b
	mov	rbp, r13
	mov	r14, qword ptr [rsp + 0x30]
	mov	r12d, dword ptr [rsp + 0x24]
.label_592:
	mov	r15d, ebx
	xor	ebx, ebx
	mov	edx, OFFSET FLAT:label_613
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r12d
	mov	rsi, r14
	call	getopt_long
	add	eax, 0x83
	cmp	eax, 0x105
	ja	.label_594
	jmp	qword ptr [word ptr [+ (rax * 8) + label_595]]
.label_840:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rbx, qword ptr [r14 + rax*8 - 8]
	mov	rdi, rbx
	call	strlen
	mov	r14, rax
	cmp	rbp, 1
	mov	r12, rbp
	sbb	r12, -1
	lea	r13, [r14 + r12]
	cmp	qword ptr [rsp + 0x18], r13
	jbe	.label_600
	mov	rax, qword ptr [rsp + 0x10]
	jmp	.label_593
	.section	.text
	.align	16
	#Procedure 0x406ae2
	.globl sub_406ae2
	.type sub_406ae2, @function
sub_406ae2:

	nop	word ptr cs:[rax + rax]
.label_600:
	lea	rax, [r13 + 1]
	mov	qword ptr [rsp + 0x18], rax
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rsi, [rsp + 0x18]
	call	x2realloc
	jmp	.label_593
.label_841:
	mov	byte ptr [byte ptr [rip + recurse]],  1
	mov	bl, r15b
	jmp	.label_592
.label_842:
	mov	dword ptr [dword ptr [rip + verbosity]],  1
	mov	bl, r15b
	jmp	.label_592
.label_843:
	mov	byte ptr [byte ptr [rip + force_silent]],  1
	mov	bl, r15b
	jmp	.label_592
.label_844:
	mov	dword ptr [dword ptr [rip + verbosity]],  0
	mov	bl, r15b
	jmp	.label_592
.label_845:
	mov	bl, 1
	jmp	.label_592
.label_846:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x28], rax
	mov	bl, r15b
	jmp	.label_592
.label_839:
	mov	rbx, qword ptr [rsp + 0x28]
	test	rbx, rbx
	je	.label_608
	cmp	qword ptr [rsp + 0x10], 0
	mov	ecx, 0
	je	.label_596
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_589
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
.label_608:
	mov	rcx, qword ptr [rsp + 0x10]
	test	rcx, rcx
	jne	.label_596
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rcx, qword ptr [r14 + rax*8]
.label_596:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, r12d
	jge	.label_602
	test	rbx, rbx
	je	.label_604
	mov	rdi, rbx
	call	mode_create_from_ref
	mov	qword ptr [word ptr [rip + change]],  rax
	test	rax, rax
	jne	.label_607
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_591
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
.label_604:
	mov	rbp, rcx
	mov	rdi, rbp
	call	mode_compile
	mov	qword ptr [word ptr [rip + change]],  rax
	test	rax, rax
	je	.label_599
	xor	edi, edi
	call	umask
	mov	dword ptr [dword ptr [rip + umask_value]],  eax
.label_607:
	test	r15b, r15b
	je	.label_603
	mov	al,  byte ptr [byte ptr [rip + recurse]]
	xor	al, 1
	test	al, 1
	jne	.label_603
	mov	edi, OFFSET FLAT:main.dev_ino_buf
	call	get_root_dev_ino
	mov	qword ptr [word ptr [rip + root_dev_ino]],  rax
	test	rax, rax
	jne	.label_612
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_591
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_10
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_603:
	mov	qword ptr [word ptr [rip + root_dev_ino]],  0
.label_612:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	rdi, [r14 + rax*8]
	call	process_files
	movzx	eax, al
	xor	eax, 1
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_837:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_609
	mov	edx, OFFSET FLAT:label_146
	mov	r8d, OFFSET FLAT:label_610
	mov	r9d, OFFSET FLAT:label_611
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_838:
	xor	edi, edi
	call	usage
.label_594:
	mov	edi, 1
	call	usage
.label_602:
	mov	rdx, rcx
	test	rcx, rcx
	je	.label_598
	cmp	rdx, qword ptr [r14 + rax*8 - 8]
	jne	.label_598
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_601
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, r12d
	mov	rdi, qword ptr [r14 + rax*8 - 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_598:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_590
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
.label_599:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_597
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, rbp
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x406de8
	.globl sub_406de8
	.type sub_406de8, @function
sub_406de8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406df0
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
	#Procedure 0x406dff
	.globl sub_406dff
	.type sub_406dff, @function
sub_406dff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406e00

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	cmp	edx, 5
	jb	.label_614
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	add	rsp, 8
	ret	
.label_614:
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x406e22
	.globl sub_406e22
	.type sub_406e22, @function
sub_406e22:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406e30

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_615
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_615:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_616
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_618
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_617
.label_618:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_617:
	mov	edx, dword ptr [rax]
.label_616:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x406ef4
	.globl sub_406ef4
	.type sub_406ef4, @function
sub_406ef4:

	nop	word ptr cs:[rax + rax]
.label_619:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rbx + 0x14], ecx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406f0b

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	push	rbx
	mov	rbx, rdi
	call	i_ring_empty
	test	al, al
	jne	.label_620
	mov	ecx, dword ptr [rbx + 0x10]
	mov	edx, dword ptr [rbx + 0x14]
	mov	eax, dword ptr [rbx + rdx*4]
	mov	dword ptr [rbx + rdx*4], ecx
	mov	ecx, dword ptr [rbx + 0x14]
	cmp	ecx, dword ptr [rbx + 0x18]
	jne	.label_619
	mov	byte ptr [rbx + 0x1c], 1
	pop	rbx
	ret	
.label_620:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406f37
	.globl sub_406f37
	.type sub_406f37, @function
sub_406f37:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f40

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	mov	ecx, esi
	ror	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x406f49
	.globl sub_406f49
	.type sub_406f49, @function
sub_406f49:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406f50

	.globl fts_safe_changedir
	.type fts_safe_changedir, @function
fts_safe_changedir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rcx
	mov	r13d, edx
	mov	r14, rdi
	test	rbx, rbx
	je	.label_627
	movzx	edx, byte ptr [rbx]
	mov	ecx, 0x2e
	mov	eax, 0x2e
	sub	eax, edx
	jne	.label_621
	movzx	eax, byte ptr [rbx + 1]
	sub	ecx, eax
	mov	eax, ecx
	jne	.label_621
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_621:
	test	eax, eax
	sete	r15b
	jmp	.label_625
.label_627:
	xor	r15d, r15d
.label_625:
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_628
	test	r13d, r13d
	mov	qword ptr [rsp], rsi
	jns	.label_623
	mov	ecx, r15d
	xor	cl, 1
	jne	.label_623
	and	eax, 0x200
	je	.label_623
	lea	rbp, [r14 + 0x60]
	mov	rdi, rbp
	call	i_ring_empty
	test	al, al
	jne	.label_623
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r15b, 1
.label_623:
	test	r13d, r13d
	mov	r12d, r13d
	jns	.label_630
	mov	rdi, r14
	mov	rsi, rbx
	call	diropen
	mov	r12d, eax
	mov	ebp, 0xffffffff
	test	r12d, r12d
	js	.label_631
.label_630:
	test	byte ptr [r14 + 0x48], 2
	jne	.label_633
	test	rbx, rbx
	je	.label_624
	cmp	byte ptr [rbx], 0x2e
	jne	.label_624
	cmp	byte ptr [rbx + 1], 0x2e
	jne	.label_624
	cmp	byte ptr [rbx + 2], 0
	jne	.label_624
.label_633:
	lea	rsi, [rsp + 8]
	mov	edi, r12d
	call	fstat
	test	eax, eax
	jne	.label_632
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_622
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_622
.label_624:
	test	byte ptr [r14 + 0x49], 2
	jne	.label_626
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	jmp	.label_629
.label_628:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_631
	and	eax, 0x200
	je	.label_631
	mov	edi, r13d
	call	close
	jmp	.label_631
.label_622:
	call	__errno_location
	mov	dword ptr [rax], 2
.label_632:
	mov	ebp, 0xffffffff
.label_629:
	test	r13d, r13d
	jns	.label_631
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
.label_631:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4070bf
	.globl sub_4070bf
	.type sub_4070bf, @function
sub_4070bf:

	nop	word ptr cs:[rax + rax]
.label_626:
	xor	edx, edx
	test	r15b, r15b
	sete	dl
	mov	rdi, r14
	mov	esi, r12d
	call	cwd_advance_fd
	xor	ebp, ebp
	jmp	.label_631
	.section	.text
	.align	16
	#Procedure 0x4070e0
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
	.align	16
	#Procedure 0x4070f4
	.globl sub_4070f4
	.type sub_4070f4, @function
sub_4070f4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407100

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
	.section	.text
	.align	16
	#Procedure 0x407130
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r8, qword ptr [rdi]
	xor	eax, eax
	cmp	r8, qword ptr [rdi + 8]
	jae	.label_634
	xor	eax, eax
.label_637:
	cmp	qword ptr [r8], 0
	je	.label_635
	test	r8, r8
	je	.label_635
	mov	r9, r8
	nop	dword ptr [rax + rax]
.label_636:
	cmp	rax, rdx
	jae	.label_634
	mov	rcx, qword ptr [r9]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r9, qword ptr [r9 + 8]
	test	r9, r9
	jne	.label_636
.label_635:
	add	r8, 0x10
	cmp	r8, qword ptr [rdi + 8]
	jb	.label_637
.label_634:
	ret	
	.section	.text
	.align	16
	#Procedure 0x407173
	.globl sub_407173
	.type sub_407173, @function
sub_407173:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407180

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
	ja	.label_638
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
	jmp	.label_639
.label_638:
	mov	eax, ebx
.label_639:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4071c1
	.globl sub_4071c1
	.type sub_4071c1, @function
sub_4071c1:

	nop	word ptr cs:[rax + rax]
.label_640:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4071d3
	.globl sub_4071d3
	.type sub_4071d3, @function
sub_4071d3:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4071db
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_640
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_642:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4071f1
	.globl sub_4071f1
	.type sub_4071f1, @function
sub_4071f1:

	nop	word ptr cs:[rax + rax]
.label_641:
	mov	rdi, qword ptr [rdi + 0x58]
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x407208

	.globl free_dir
	.type free_dir, @function
free_dir:
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_641
	mov	rdi, qword ptr [rdi + 0x58]
	test	rdi, rdi
	je	.label_642
	jmp	hash_free
	.section	.text
	.align	16
	#Procedure 0x407220

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_647
	cmp	qword ptr [rdi + 0x58], 0
	js	.label_650
	nop	word ptr cs:[rax + rax]
.label_649:
	mov	rbx, qword ptr [rdi + 0x10]
	test	rbx, rbx
	jne	.label_643
	mov	rbx, qword ptr [rdi + 8]
.label_643:
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	mov	rdi, rbx
	jns	.label_649
	jmp	.label_646
.label_650:
	mov	rbx, rdi
.label_646:
	mov	rdi, rbx
	call	free
.label_647:
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_648
	call	fts_lfree
.label_648:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_651
	xor	ebx, ebx
	test	al, 4
	jne	.label_645
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebx, ebx
	test	eax, eax
	je	.label_653
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_653:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	test	ebx, ebx
	je	.label_652
	jmp	.label_645
.label_651:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebx, ebx
	test	edi, edi
	js	.label_645
	call	close
.label_652:
	test	eax, eax
	je	.label_645
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_645:
	lea	rdi, [r14 + 0x60]
	call	fd_ring_clear
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_644
	call	hash_free
.label_644:
	mov	rdi, r14
	call	free_dir
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	ebx, ebx
	je	.label_654
	call	__errno_location
	mov	dword ptr [rax], ebx
	mov	eax, 0xffffffff
.label_654:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x407318
	.globl sub_407318
	.type sub_407318, @function
sub_407318:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407320

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
	jne	.label_662
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
	je	.label_659
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_655
	mov	eax, OFFSET FLAT:label_656
	jmp	.label_657
.label_659:
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
	je	.label_658
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_660
	mov	eax, OFFSET FLAT:label_661
	jmp	.label_657
.label_658:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_538
	mov	eax, OFFSET FLAT:label_482
.label_657:
	cmove	rax, rcx
.label_662:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4073dd
	.globl sub_4073dd
	.type sub_4073dd, @function
sub_4073dd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4073e0
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_663
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_664:
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
	jne	.label_664
.label_663:
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x407413
	.globl sub_407413
	.type sub_407413, @function
sub_407413:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407420

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
	#Procedure 0x407456
	.globl sub_407456
	.type sub_407456, @function
sub_407456:

	nop	word ptr cs:[rax + rax]
.label_665:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407465
	.globl sub_407465
	.type sub_407465, @function
sub_407465:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407473

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
	je	.label_665
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
.label_668:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_666
.label_667:
	mov	eax, 1
	test	bpl, bpl
	je	.label_666
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
.label_666:
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
	#Procedure 0x407508
	.globl sub_407508
	.type sub_407508, @function
sub_407508:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40750b

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
	je	.label_668
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_667
	jmp	.label_666
	.section	.text
	.align	16
	#Procedure 0x407540
	.globl fts_compar
	.type fts_compar, @function
fts_compar:

	push	rax
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax + 0x50]
	call	qword ptr [rax + 0x40]
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40754d
	.globl sub_40754d
	.type sub_40754d, @function
sub_40754d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407550
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	mov	ecx, esi
	rol	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x407559
	.globl sub_407559
	.type sub_407559, @function
sub_407559:

	nop	dword ptr [rax]
.label_669:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x407563
	.globl sub_407563
	.type sub_407563, @function
sub_407563:

	nop	
	.section	.text
	.align	16
	#Procedure 0x407565
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_669
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x407580

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_670
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_21
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4075b0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_676
	nop	
.label_675:
	mov	edi, OFFSET FLAT:label_609
	call	strcmp
	test	eax, eax
	je	.label_673
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_675
.label_673:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_609
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_677
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_146
	mov	ecx, OFFSET FLAT:label_147
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_671
	mov	esi, OFFSET FLAT:label_672
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_671
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_680
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_671:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_678
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_609
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_147
	mov	ecx, OFFSET FLAT:label_609
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_674
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_679
	mov	ecx, OFFSET FLAT:label_82
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
	#Procedure 0x4076ca
	.globl sub_4076ca
	.type sub_4076ca, @function
sub_4076ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4076d0
	.globl filemodestring
	.type filemodestring, @function
filemodestring:

	mov	edi, dword ptr [rdi + 0x18]
	jmp	strmode
	.section	.text
	.align	16
	#Procedure 0x4076d8
	.globl sub_4076d8
	.type sub_4076d8, @function
sub_4076d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4076e0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4076ea
	.globl sub_4076ea
	.type sub_4076ea, @function
sub_4076ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4076f0

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
	jne	.label_705
	xor	r14d, r14d
	xor	edi, edi
	mov	rbx, rbp
	nop	
.label_692:
	movsx	eax, byte ptr [rbx]
	lea	edi, [rax + rdi*8 - 0x30]
	cmp	edi, 0xfff
	ja	.label_686
	movzx	eax, byte ptr [rbx + 1]
	inc	rbx
	mov	ecx, eax
	and	cl, 0xf8
	cmp	cl, 0x30
	je	.label_692
	xor	r14d, r14d
	test	al, al
	jne	.label_686
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
.label_705:
	mov	edi, 1
	mov	rax, rbp
	jmp	.label_706
.label_687:
	add	rdi, rdx
	inc	rax
.label_706:
	movzx	ecx, byte ptr [rax]
	cmp	cl, 0x2c
	jle	.label_682
	cmp	cl, 0x2d
	je	.label_685
	cmp	cl, 0x3d
	mov	edx, 1
	je	.label_687
	jmp	.label_690
	.section	.text
	.align	16
	#Procedure 0x40779f
	.globl sub_40779f
	.type sub_40779f, @function
sub_40779f:

	nop	
.label_682:
	cmp	cl, 0x2b
	mov	edx, 1
	je	.label_687
	test	cl, cl
	je	.label_694
.label_690:
	xor	edx, edx
	jmp	.label_687
	.section	.text
	.align	16
	#Procedure 0x4077b2
	.globl sub_4077b2
	.type sub_4077b2, @function
sub_4077b2:

	nop	word ptr cs:[rax + rax]
.label_685:
	mov	edx, 1
	jmp	.label_687
.label_694:
	mov	esi, 0x10
	call	xnmalloc
	mov	r14, rax
	xor	r15d, r15d
	movabs	r12, 0x2000280000000000
	jmp	.label_699
	.section	.text
	.align	16
	#Procedure 0x4077e3

	.globl sub_4077e3
	.type sub_4077e3, @function
sub_4077e3:
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_699:
	xor	ecx, ecx
	jmp	.label_681
	.section	.text
	.align	16
	#Procedure 0x4077f4
	.globl sub_4077f4
	.type sub_4077f4, @function
sub_4077f4:

	nop	word ptr cs:[rax + rax]
.label_930:
	or	ecx, 0x207
	inc	rbp
.label_681:
	movsx	eax, byte ptr [rbp]
	lea	edx, [rax - 0x61]
	cmp	edx, 0x14
	ja	.label_683
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_688]]
.label_928:
	or	ecx, 0xfff
	inc	rbp
	jmp	.label_681
	.section	.text
	.align	16
	#Procedure 0x407827
	.globl sub_407827
	.type sub_407827, @function
sub_407827:

	nop	word ptr [rax + rax]
.label_929:
	or	ecx, 0x438
	inc	rbp
	jmp	.label_681
	.section	.text
	.align	16
	#Procedure 0x40783b
	.globl sub_40783b
	.type sub_40783b, @function
sub_40783b:

	nop	dword ptr [rax + rax]
.label_931:
	or	ecx, 0x9c0
	inc	rbp
	jmp	.label_681
	.section	.text
	.align	16
	#Procedure 0x40784b
	.globl sub_40784b
	.type sub_40784b, @function
sub_40784b:

	nop	dword ptr [rax + rax]
.label_683:
	mov	edx, eax
	cmp	eax, 0x3d
	ja	.label_697
	bt	r12, rdx
	jae	.label_697
.label_887:
	lea	rax, [rbp + 1]
	mov	r13b, byte ptr [rbp]
	movsx	edx, byte ptr [rbp + 1]
	add	edx, -0x30
	cmp	edx, 0x45
	ja	.label_702
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_707]]
.label_942:
	xor	edi, edi
	mov	rbp, rax
	nop	word ptr cs:[rax + rax]
.label_693:
	movsx	eax, byte ptr [rbp]
	lea	edi, [rax + rdi*8 - 0x30]
	cmp	edi, 0xfff
	ja	.label_697
	movzx	eax, byte ptr [rbp + 1]
	inc	rbp
	mov	edx, eax
	and	dl, 0xf8
	cmp	dl, 0x30
	je	.label_693
	test	ecx, ecx
	jne	.label_697
	cmp	al, 0x2c
	je	.label_698
	test	al, al
	jne	.label_697
.label_698:
	call	octal_to_mode
	mov	bl, 1
	mov	ecx, 0xfff
	mov	esi, 0xfff
	jmp	.label_696
.label_702:
	mov	bl, 1
	xor	esi, esi
	mov	rbp, rax
	xor	eax, eax
	jmp	.label_700
	.section	.text
	.align	16
	#Procedure 0x4078ea
	.globl sub_4078ea
	.type sub_4078ea, @function
sub_4078ea:

	nop	word ptr [rax + rax]
.label_704:
	inc	rbp
	mov	ebx, edx
.label_700:
	movsx	edi, byte ptr [rbp]
	add	edi, -0x58
	cmp	edi, 0x20
	ja	.label_696
	mov	dl, 2
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_703]]
.label_906:
	or	eax, 0x124
	jmp	.label_684
.label_907:
	or	eax, 0xc00
	jmp	.label_684
.label_908:
	or	eax, 0x200
	jmp	.label_684
.label_909:
	or	eax, 0x92
	jmp	.label_684
.label_910:
	or	eax, 0x49
	nop	dword ptr [rax]
.label_684:
	mov	edx, ebx
	jmp	.label_704
.label_943:
	add	rbp, 2
	mov	bl, 3
	xor	esi, esi
	mov	eax, 0x38
	jmp	.label_696
.label_944:
	add	rbp, 2
	mov	bl, 3
	xor	esi, esi
	mov	eax, 7
	jmp	.label_696
.label_945:
	add	rbp, 2
	mov	bl, 3
	xor	esi, esi
	mov	eax, 0x1c0
	nop	
.label_696:
	mov	rdx, r15
	shl	rdx, 4
	mov	byte ptr [r14 + rdx], r13b
	mov	byte ptr [r14 + rdx + 1], bl
	mov	dword ptr [r14 + rdx + 4], ecx
	mov	dword ptr [r14 + rdx + 8], eax
	test	esi, esi
	jne	.label_701
	cmp	ecx, 1
	sbb	esi, esi
	or	esi, ecx
	and	esi, eax
.label_701:
	inc	r15
	mov	dword ptr [r14 + rdx + 0xc], esi
	mov	al, byte ptr [rbp]
	add	al, 0xd5
	movzx	eax, al
	cmp	al, 0x12
	ja	.label_695
	jmp	qword ptr [word ptr [+ (rax * 8) + label_689]]
.label_695:
	cmp	byte ptr [rbp], 0
	je	.label_691
.label_697:
	mov	rdi, r14
	call	free
	xor	r14d, r14d
.label_686:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_691:
	shl	r15, 4
	mov	byte ptr [r14 + r15 + 1], 0
	jmp	.label_686
	.section	.text
	.align	16
	#Procedure 0x4079d1
	.globl sub_4079d1
	.type sub_4079d1, @function
sub_4079d1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4079e0

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
	#Procedure 0x4079f7
	.globl sub_4079f7
	.type sub_4079f7, @function
sub_4079f7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407a00

	.globl fts_build
	.type fts_build, @function
fts_build:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	ebp, esi
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	mov	r13, qword ptr [r14 + 0x18]
	test	r13, r13
	je	.label_708
	mov	rdi, r13
	call	dirfd
	mov	dword ptr [rsp], eax
	test	eax, eax
	js	.label_720
	lea	rax, [rbx + 0x40]
	mov	qword ptr [rsp + 0x20], rax
	cmp	qword ptr [rbx + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x58], rax
	mov	al, 1
	mov	dword ptr [rsp + 4], eax
	jmp	.label_718
.label_708:
	mov	eax, 0x204
	and	eax, dword ptr [rbx + 0x48]
	mov	edi, 0xffffff9c
	cmp	eax, 0x200
	jne	.label_734
	mov	edi, dword ptr [rbx + 0x2c]
.label_734:
	mov	rsi, qword ptr [r14 + 0x30]
	mov	eax, dword ptr [rbx + 0x48]
	xor	edx, edx
	test	al, 0x10
	je	.label_710
	test	al, 1
	je	.label_742
	cmp	qword ptr [r14 + 0x58], 0
	je	.label_710
.label_742:
	mov	edx, 0x20000
.label_710:
	lea	rcx, [rsp]
	call	opendirat
	mov	qword ptr [r14 + 0x18], rax
	test	rax, rax
	je	.label_747
	movzx	eax, word ptr [r14 + 0x70]
	cmp	eax, 0xb
	jne	.label_750
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r14
	call	fts_stat
	mov	word ptr [r14 + 0x70], ax
	jmp	.label_753
.label_720:
	mov	rdi, qword ptr [r14 + 0x18]
	call	closedir
	mov	qword ptr [r14 + 0x18], 0
.label_747:
	cmp	ebp, 3
	mov	ebp, 0
	jne	.label_752
	mov	word ptr [r14 + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r14 + 0x40], eax
	jmp	.label_731
.label_750:
	test	byte ptr [rbx + 0x49], 1
	je	.label_753
	mov	rdi, rbx
	mov	rsi, r14
	call	leave_dir
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r14
	call	fts_stat
	mov	rdi, rbx
	mov	rsi, r14
	call	enter_dir
	test	al, al
	je	.label_757
.label_753:
	lea	rax, [rbx + 0x40]
	mov	qword ptr [rsp + 0x20], rax
	cmp	qword ptr [rbx + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x58], rax
	test	r13, r13
	mov	al, 1
	mov	dword ptr [rsp + 4], eax
	jne	.label_718
	cmp	ebp, 2
	jne	.label_730
	mov	r15, rbx
	xor	r12d, r12d
	jmp	.label_732
.label_730:
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 0x38
	cmp	eax, 0x18
	jne	.label_735
	cmp	qword ptr [r14 + 0x88], 2
	jne	.label_735
	mov	r15, rbx
	mov	esi, dword ptr [rsp]
	mov	rdi, r14
	call	leaf_optimization
	test	eax, eax
	setne	r12b
	jmp	.label_714
.label_757:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_731
.label_735:
	mov	r15, rbx
	xor	r12d, r12d
.label_714:
	xor	r12b, 1
.label_732:
	cmp	ebp, 3
	je	.label_751
	test	r12b, r12b
	jne	.label_751
	mov	dword ptr [rsp + 4], r12d
.label_761:
	mov	rbx, r15
	jmp	.label_718
.label_751:
	test	byte ptr [r15 + 0x49], 2
	mov	ebx, dword ptr [rsp]
	je	.label_754
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebx
	call	rpl_fcntl
	mov	ebx, eax
	mov	dword ptr [rsp], ebx
.label_754:
	test	ebx, ebx
	js	.label_759
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	mov	edx, ebx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_761
.label_759:
	cmp	ebp, 3
	jne	.label_755
	test	r12b, r12b
	je	.label_755
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r14 + 0x40], eax
.label_755:
	or	byte ptr [r14 + 0x72], 1
	mov	rdi, qword ptr [r14 + 0x18]
	call	closedir
	mov	qword ptr [r14 + 0x18], 0
	mov	rbx, r15
	mov	eax, dword ptr [rbx + 0x48]
	test	ah, 2
	je	.label_722
	mov	edi, dword ptr [rsp]
	test	edi, edi
	js	.label_722
	call	close
.label_722:
	mov	qword ptr [r14 + 0x18], 0
	mov	dword ptr [rsp + 4], 0
.label_718:
	mov	dword ptr [rsp + 0x4c], ebp
	mov	rax, qword ptr [r14 + 0x38]
	mov	rcx, qword ptr [r14 + 0x48]
	lea	rdx, [rcx - 1]
	cmp	byte ptr [rax + rcx - 1], 0x2f
	cmovne	rdx, rcx
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	test	byte ptr [rbx + 0x48], 4
	je	.label_727
	mov	rax, qword ptr [rbx + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x18], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_727:
	lea	rax, [rdx + 1]
	mov	rcx, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	sub	rcx, rax
	mov	qword ptr [rsp + 0x68], rcx
	mov	rax, qword ptr [r14 + 0x58]
	inc	rax
	mov	qword ptr [rsp + 0x80], rax
	add	rdx, 2
	mov	qword ptr [rsp + 0x70], rdx
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	xor	r12d, r12d
	xor	edx, edx
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x40], rbx
	mov	qword ptr [rsp + 0x28], r14
	mov	qword ptr [rsp + 0x38], r13
.label_748:
	cmp	qword ptr [r14 + 0x18], 0
	je	.label_740
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr cs:[rax + rax]
.label_726:
	call	__errno_location
	mov	r13, rax
	mov	dword ptr [r13], 0
	mov	rdi, qword ptr [r14 + 0x18]
	call	readdir
	mov	r15, rax
	test	r15, r15
	je	.label_711
	test	byte ptr [rbx + 0x48], 0x20
	jne	.label_713
	cmp	byte ptr [r15 + 0x13], 0x2e
	jne	.label_713
	movzx	eax, byte ptr [r15 + 0x14]
	cmp	al, 0x2e
	je	.label_716
	test	al, al
	je	.label_738
	jmp	.label_713
	.section	.text
	.align	16
	#Procedure 0x407d31
	.globl sub_407d31
	.type sub_407d31, @function
sub_407d31:

	nop	word ptr cs:[rax + rax]
.label_716:
	cmp	byte ptr [r15 + 0x15], 0
	jne	.label_713
.label_738:
	cmp	qword ptr [r14 + 0x18], 0
	jne	.label_726
	jmp	.label_729
	.section	.text
	.align	16
	#Procedure 0x407d53
	.globl sub_407d53
	.type sub_407d53, @function
sub_407d53:

	nop	word ptr cs:[rax + rax]
.label_713:
	mov	qword ptr [rsp + 0x78], r12
	mov	r14, rbx
	mov	rbx, r15
	add	rbx, 0x13
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rbp
	call	fts_alloc
	mov	r12, rax
	test	r12, r12
	je	.label_744
	cmp	rbp, qword ptr [rsp + 0x68]
	jae	.label_745
	mov	rbx, qword ptr [rsp + 0x40]
	mov	r14, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x30]
	jmp	.label_746
	.section	.text
	.align	16
	#Procedure 0x407dac
	.globl sub_407dac
	.type sub_407dac, @function
sub_407dac:

	nop	dword ptr [rax]
.label_745:
	mov	r14, qword ptr [rsp + 0x40]
	mov	rbx, qword ptr [r14 + 0x20]
	mov	rax, qword ptr [rsp + 0x70]
	lea	rsi, [rax + rbp]
	mov	rdi, r14
	call	fts_palloc
	test	al, al
	je	.label_744
	mov	rax, qword ptr [r14 + 0x20]
	cmp	rbx, rax
	je	.label_760
	mov	rdx, qword ptr [rsp + 0x30]
	add	rax, rdx
	test	byte ptr [r14 + 0x48], 4
	mov	rcx, qword ptr [rsp + 0x18]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x18], rcx
	mov	al, 1
	mov	qword ptr [rsp + 0x60], rax
	mov	rbx, r14
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_717
.label_760:
	mov	rbx, r14
	mov	r14, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x30]
.label_717:
	mov	rax, qword ptr [rbx + 0x30]
	sub	rax, rdx
	mov	qword ptr [rsp + 0x68], rax
.label_746:
	add	rbp, rdx
	jb	.label_715
	mov	rax, qword ptr [rsp + 0x80]
	mov	qword ptr [r12 + 0x58], rax
	mov	rax, qword ptr [rbx]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x48], rbp
	mov	rax, qword ptr [r15]
	mov	qword ptr [r12 + 0x80], rax
	test	byte ptr [rbx + 0x48], 4
	jne	.label_719
	lea	rax, [r12 + 0x108]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_756
	.section	.text
	.align	16
	#Procedure 0x407e63
	.globl sub_407e63
	.type sub_407e63, @function
sub_407e63:

	nop	word ptr cs:[rax + rax]
.label_719:
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	lea	rsi, [r12 + 0x108]
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x18]
	call	memmove
.label_756:
	mov	r13, qword ptr [rsp + 0x38]
	mov	rbp, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax], 0
	je	.label_739
	test	byte ptr [rbx + 0x49], 4
	jne	.label_739
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	jmp	.label_737
	.section	.text
	.align	16
	#Procedure 0x407ec4
	.globl sub_407ec4
	.type sub_407ec4, @function
sub_407ec4:

	nop	word ptr cs:[rax + rax]
.label_739:
	mov	rdi, r12
	add	rdi, 0x78
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_733
	mov	al, byte ptr [r15 + 0x12]
	cmp	al, 4
	setne	cl
	test	al, al
	setne	bl
	and	bl, cl
	jmp	.label_728
.label_733:
	xor	ebx, ebx
.label_728:
	mov	word ptr [r12 + 0x70], 0xb
	movzx	esi, byte ptr [r15 + 0x12]
	call	set_stat_type
	xor	bl, 1
	movzx	esi, bl
	mov	rdi, r12
	call	fts_set_stat_required
	mov	rbx, qword ptr [rsp + 0x40]
.label_737:
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [r12 + 0x10], 0
	test	rbp, rbp
	mov	rax, r12
	je	.label_749
	mov	rax, qword ptr [rsp + 0x78]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, rbp
.label_749:
	mov	rbp, rax
	cmp	rdx, 0x2710
	jne	.label_724
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax], 0
	jne	.label_724
	mov	esi, dword ptr [rsp]
	mov	rdi, r14
	call	dirent_inode_sort_may_be_useful
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x50], rax
	nop	dword ptr [rax]
.label_724:
	inc	rdx
	cmp	qword ptr [rsp + 0x58], rdx
	ja	.label_748
	jmp	.label_740
.label_711:
	mov	eax, dword ptr [r13]
	test	eax, eax
	mov	r13, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x10]
	je	.label_709
	mov	dword ptr [r14 + 0x40], eax
	mov	rax, r13
	or	rax, rdx
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	word ptr [r14 + 0x70], cx
.label_709:
	mov	rdi, qword ptr [r14 + 0x18]
	test	rdi, rdi
	mov	rbp, qword ptr [rsp + 8]
	je	.label_740
	call	closedir
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [r14 + 0x18], 0
	jmp	.label_740
.label_729:
	mov	r13, qword ptr [rsp + 0x38]
	mov	rbp, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x10]
.label_740:
	mov	rax, qword ptr [rsp + 0x60]
	test	al, 1
	mov	r15d, dword ptr [rsp + 0x4c]
	je	.label_758
	mov	rdi, rbx
	mov	rsi, rbp
	mov	r12, rdx
	call	fts_padjust
	mov	rdx, r12
.label_758:
	test	byte ptr [rbx + 0x48], 4
	je	.label_762
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	mov	rsi, qword ptr [rsp + 0x30]
	cmp	rsi, qword ptr [rbx + 0x30]
	cmove	rcx, rax
	test	rdx, rdx
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_762:
	test	r13, r13
	jne	.label_721
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_721
	cmp	r15d, 1
	je	.label_723
	test	rdx, rdx
	jne	.label_721
.label_723:
	cmp	qword ptr [r14 + 0x58], 0
	je	.label_725
	mov	rsi, qword ptr [r14 + 8]
	mov	r12, rdx
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_401
	mov	rdi, rbx
	call	fts_safe_changedir
	jmp	.label_712
.label_725:
	mov	rdi, rbx
	mov	r12, rdx
	call	restore_initial_cwd
.label_712:
	mov	rdx, r12
	test	eax, eax
	je	.label_721
	mov	word ptr [r14 + 0x70], 7
	or	byte ptr [rbx + 0x49], 0x20
	jmp	.label_736
.label_721:
	test	rdx, rdx
	je	.label_741
	mov	rax, qword ptr [rsp + 0x50]
	test	al, 1
	je	.label_743
	mov	r14, qword ptr [rsp + 0x20]
	mov	qword ptr [word ptr [r14]], OFFSET FLAT:fts_compare_ino
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rbp, rdx
	call	fts_sort
	mov	rdx, rbp
	mov	rbp, rax
	mov	qword ptr [r14], 0
.label_743:
	cmp	rdx, 2
	jb	.label_752
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_752
	mov	rdi, rbx
	mov	rsi, rbp
	call	fts_sort
	mov	rbp, rax
	jmp	.label_752
.label_741:
	cmp	r15d, 3
	jne	.label_736
	movzx	eax, word ptr [r14 + 0x70]
	cmp	eax, 4
	je	.label_736
	movzx	eax, ax
	cmp	eax, 7
	je	.label_736
	mov	word ptr [r14 + 0x70], 6
.label_736:
	mov	rdi, rbp
	call	fts_lfree
.label_731:
	xor	ebp, ebp
.label_752:
	mov	rax, rbp
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_744:
	mov	ebx, dword ptr [r13]
	mov	rdi, r12
	call	free
	mov	rdi, qword ptr [rsp + 8]
	call	fts_lfree
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	mov	word ptr [rbp + 0x70], 7
	or	byte ptr [r14 + 0x49], 0x20
	mov	dword ptr [r13], ebx
	jmp	.label_731
.label_715:
	mov	rdi, r12
	call	free
	mov	rdi, qword ptr [rsp + 8]
	call	fts_lfree
	mov	rdi, qword ptr [r14 + 0x18]
	call	closedir
	mov	qword ptr [r14 + 0x18], 0
	mov	word ptr [r14 + 0x70], 7
	or	byte ptr [rbx + 0x49], 0x20
	mov	dword ptr [r13], 0x24
	jmp	.label_731
	.section	.text
	.align	16
	#Procedure 0x40818d
	.globl sub_40818d
	.type sub_40818d, @function
sub_40818d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408190

	.globl dev_type_hash
	.type dev_type_hash, @function
dev_type_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40819c
	.globl sub_40819c
	.type sub_40819c, @function
sub_40819c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4081a0

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
	je	.label_765
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_763
	jmp	.label_764
.label_765:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_764
.label_763:
	mov	eax, 1
	test	bpl, bpl
	je	.label_764
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
.label_764:
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
	#Procedure 0x408228
	.globl sub_408228
	.type sub_408228, @function
sub_408228:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408230

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
	je	.label_766
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_768
	jmp	.label_767
.label_766:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_767
.label_768:
	mov	eax, 1
	test	bpl, bpl
	je	.label_767
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
.label_767:
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
	#Procedure 0x4082a9
	.globl sub_4082a9
	.type sub_4082a9, @function
sub_4082a9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4082b0

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
	je	.label_771
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_770
	jmp	.label_769
.label_771:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_769
.label_770:
	mov	eax, 1
	test	bpl, bpl
	je	.label_769
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
.label_769:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408313
	.globl sub_408313
	.type sub_408313, @function
sub_408313:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408320

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
	je	.label_774
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_772
	jmp	.label_773
.label_774:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_773
.label_772:
	mov	eax, 1
	test	bpl, bpl
	je	.label_773
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_773:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40837f
	.globl sub_40837f
	.type sub_40837f, @function
sub_40837f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x408380

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
	je	.label_775
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_777
	jmp	.label_776
.label_775:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_776
.label_777:
	mov	eax, 1
	test	bpl, bpl
	je	.label_776
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_776:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4083c9
	.globl sub_4083c9
	.type sub_4083c9, @function
sub_4083c9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4083d0

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
	je	.label_780
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_779
	jmp	.label_778
.label_780:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_778
.label_779:
	mov	eax, 1
	test	bpl, bpl
	je	.label_778
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_778:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408415
	.globl sub_408415
	.type sub_408415, @function
sub_408415:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408420

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_783
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_782
	jmp	.label_781
.label_783:
	mov	eax, 1
	test	cl, cl
	je	.label_781
.label_782:
	xor	eax, eax
.label_781:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40844f
	.globl sub_40844f
	.type sub_40844f, @function
sub_40844f:

	nop	
.label_784:
	mov	edi, dword ptr [rdi + 0x2c]
	xor	eax, eax
	jmp	openat_safer
	.section	.text
	.align	16
	#Procedure 0x40845a
	.globl sub_40845a
	.type sub_40845a, @function
sub_40845a:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40845e

	.globl diropen
	.type diropen, @function
diropen:
	mov	eax, dword ptr [rdi + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_784
	xor	eax, eax
	mov	rdi, rsi
	mov	esi, edx
	jmp	open_safer
	.section	.text
	.align	16
	#Procedure 0x408480
	.globl rotr64
	.type rotr64, @function
rotr64:

	mov	ecx, esi
	ror	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x408489
	.globl sub_408489
	.type sub_408489, @function
sub_408489:

	nop	dword ptr [rax]
.label_788:
	cmp	rax, 0x58465342
	je	.label_785
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	jne	.label_786
.label_787:
	xor	ecx, ecx
.label_785:
	mov	eax, ecx
	pop	rcx
	ret	
.label_786:
	mov	ecx, 1
	jmp	.label_785
	.section	.text
	.align	16
	#Procedure 0x4084af
	.globl sub_4084af
	.type sub_4084af, @function
sub_4084af:

	nop	word ptr cs:[rax + rax]
.label_789:
	test	rax, rax
	je	.label_787
	cmp	rax, 0x6969
	je	.label_787
	cmp	rax, 0x9fa0
	je	.label_787
	jmp	.label_786
	.section	.text
	.align	16
	#Procedure 0x4084d3

	.globl leaf_optimization
	.type leaf_optimization, @function
leaf_optimization:
	push	rax
	call	filesystem_type
	cmp	rax, 0x52654972
	jle	.label_789
	mov	ecx, 2
	cmp	rax, 0x58465341
	jg	.label_788
	cmp	rax, 0x52654973
	je	.label_785
	cmp	rax, 0x5346414f
	je	.label_787
	jmp	.label_786
	.section	.text
	.align	16
	#Procedure 0x408500

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_791
	cmp	byte ptr [rax], 0x43
	jne	.label_793
	cmp	byte ptr [rax + 1], 0
	je	.label_790
.label_793:
	mov	esi, OFFSET FLAT:label_792
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_791
.label_790:
	xor	ebx, ebx
.label_791:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x408531
	.globl sub_408531
	.type sub_408531, @function
sub_408531:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408540

	.globl is_zero_or_power_of_two
	.type is_zero_or_power_of_two, @function
is_zero_or_power_of_two:
	lea	rax, [rdi - 1]
	test	rax, rdi
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40854b
	.globl sub_40854b
	.type sub_40854b, @function
sub_40854b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408550
	.globl rotl32
	.type rotl32, @function
rotl32:

	mov	ecx, esi
	rol	edi, cl
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x408557
	.globl sub_408557
	.type sub_408557, @function
sub_408557:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408560
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_794
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_794
.label_795:
	ret	
.label_794:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_795
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x408586
	.globl sub_408586
	.type sub_408586, @function
sub_408586:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408590

	.globl fts_padjust
	.type fts_padjust, @function
fts_padjust:
	mov	rcx, qword ptr [rdi + 8]
	mov	rax, qword ptr [rdi + 0x20]
	jmp	.label_799
	.section	.text
	.align	16
	#Procedure 0x40859a
	.globl sub_40859a
	.type sub_40859a, @function
sub_40859a:

	nop	word ptr [rax + rax]
.label_802:
	cmp	qword ptr [rsi + 0x58], 0
	js	.label_796
	nop	word ptr cs:[rax + rax]
.label_797:
	mov	rcx, qword ptr [rsi + 0x30]
	lea	rdx, [rsi + 0x108]
	cmp	rcx, rdx
	je	.label_801
	sub	rcx, qword ptr [rsi + 0x38]
	add	rcx, rax
	mov	qword ptr [rsi + 0x30], rcx
.label_801:
	mov	qword ptr [rsi + 0x38], rax
	mov	rcx, qword ptr [rsi + 0x10]
	test	rcx, rcx
	jne	.label_800
	mov	rcx, qword ptr [rsi + 8]
.label_800:
	cmp	qword ptr [rcx + 0x58], 0
	mov	rsi, rcx
	jns	.label_797
.label_796:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4085ed
	.globl sub_4085ed
	.type sub_4085ed, @function
sub_4085ed:

	nop	word ptr [rax + rax]
.label_798:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_799:
	test	rcx, rcx
	je	.label_802
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rdi, [rcx + 0x108]
	cmp	rdx, rdi
	je	.label_798
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_798
	.section	.text
	.align	16
	#Procedure 0x408620

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rsi, [rsp]
	mov	edi, OFFSET FLAT:label_10
	call	lstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_803
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
.label_803:
	add	rsp, 0x90
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40865d
	.globl sub_40865d
	.type sub_40865d, @function
sub_40865d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408660
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
	#Procedure 0x40866f
	.globl sub_40866f
	.type sub_40866f, @function
sub_40866f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x408670
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x408678
	.globl sub_408678
	.type sub_408678, @function
sub_408678:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408680

	.globl i_ring_push
	.type i_ring_push, @function
i_ring_push:
	mov	al, byte ptr [rdi + 0x1c]
	xor	al, 1
	movzx	edx, al
	add	edx, dword ptr [rdi + 0x14]
	and	edx, 3
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], esi
	mov	dword ptr [rdi + 0x14], edx
	mov	ecx, dword ptr [rdi + 0x18]
	cmp	edx, ecx
	jne	.label_804
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_804:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	.section	.text
	.align	16
	#Procedure 0x4086b4
	.globl sub_4086b4
	.type sub_4086b4, @function
sub_4086b4:

	nop	word ptr cs:[rax + rax]
.label_807:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_805
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_805:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4086f4
	.globl sub_4086f4
	.type sub_4086f4, @function
sub_4086f4:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4086f6

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
	jne	.label_806
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_806
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_807
.label_806:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_808:
	test	esi, esi
	js	.label_811
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 4
	jne	.label_811
	mov	edi, esi
.label_812:
	call	close
.label_811:
	mov	dword ptr [rbx + 0x2c], ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40874d

	.globl cwd_advance_fd
	.type cwd_advance_fd, @function
cwd_advance_fd:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	mov	esi, dword ptr [rbx + 0x2c]
	cmp	esi, ebp
	jne	.label_810
	cmp	esi, -0x64
	jne	.label_809
.label_810:
	test	dl, dl
	je	.label_808
	lea	rdi, [rbx + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_811
	mov	edi, eax
	jmp	.label_812
.label_809:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40877b
	.globl sub_40877b
	.type sub_40877b, @function
sub_40877b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408780

	.globl process_files
	.type process_files, @function
process_files:
	push	rbp
	push	r14
	push	rbx
	mov	esi, 0x411
	xor	edx, edx
	call	xfts_open
	mov	r14, rax
	mov	rdi, r14
	call	rpl_fts_read
	mov	bl, 1
	test	rax, rax
	je	.label_818
	mov	bl, 1
	nop	word ptr cs:[rax + rax]
.label_813:
	mov	rdi, r14
	mov	rsi, rax
	call	process_file
	and	bl, al
	mov	rdi, r14
	call	rpl_fts_read
	test	rax, rax
	jne	.label_813
.label_818:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	test	ebp, ebp
	je	.label_816
	mov	al,  byte ptr [byte ptr [rip + force_silent]]
	xor	ebx, ebx
	test	al, al
	jne	.label_816
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_814
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_816:
	mov	rdi, r14
	call	rpl_fts_close
	test	eax, eax
	je	.label_815
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_817
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_815:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408841
	.globl sub_408841
	.type sub_408841, @function
sub_408841:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408850
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
	#Procedure 0x40885d
	.globl sub_40885d
	.type sub_40885d, @function
sub_40885d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408860

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
	.align	16
	#Procedure 0x408878
	.globl sub_408878
	.type sub_408878, @function
sub_408878:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408880

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	ret	
	.section	.text
	.align	16
	#Procedure 0x408890

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
	je	.label_819
	cmp	r15, -2
	jb	.label_819
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_819
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_819:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4088e6
	.globl sub_4088e6
	.type sub_4088e6, @function
sub_4088e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4088f0

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
	js	.label_821
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_820
	mov	dword ptr [r14], ebp
	jmp	.label_821
.label_820:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_821:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40893f
	.globl sub_40893f
	.type sub_40893f, @function
sub_40893f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x408940

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x408947
	.globl sub_408947
	.type sub_408947, @function
sub_408947:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408950

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
	je	.label_822
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	je	.label_824
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_822
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
	je	.label_825
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
	jmp	.label_824
.label_823:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x408a30
	.globl sub_408a30
	.type sub_408a30, @function
sub_408a30:

	nop	dword ptr [rax + rax]
.label_825:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	lea	rsi, [rsp]
	mov	edx, 1
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_823
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_823
	mov	rdi, qword ptr [rsp]
	call	free
.label_822:
	xor	r14d, r14d
.label_824:
	mov	eax, r14d
	add	rsp, 0x50
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408a80

	.globl is_prime
	.type is_prime, @function
is_prime:
	mov	r8, rdi
	mov	esi, 3
	cmp	r8, 0xa
	jb	.label_826
	mov	esi, 3
	mov	edi, 9
	mov	ecx, 0x10
	nop	dword ptr [rax]
.label_827:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_826
	add	rdi, rcx
	add	rsi, 2
	add	rcx, 8
	cmp	rdi, r8
	jb	.label_827
.label_826:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	setne	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x408acc
	.globl sub_408acc
	.type sub_408acc, @function
sub_408acc:

	nop	dword ptr [rax]
.label_829:
	cmp	edi, 0x7f
	je	.label_828
	xor	eax, eax
	jmp	.label_828
	.section	.text
	.align	16
	#Procedure 0x408ad9
	.globl sub_408ad9
	.type sub_408ad9, @function
sub_408ad9:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ae8
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_829
.label_828:
	ret	
	.section	.text
	.align	16
	#Procedure 0x408b55
	.globl sub_408b55
	.type sub_408b55, @function
sub_408b55:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408b62
	.globl sub_408b62
	.type sub_408b62, @function
sub_408b62:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408b86
	.globl sub_408b86
	.type sub_408b86, @function
sub_408b86:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408b99
	.globl sub_408b99
	.type sub_408b99, @function
sub_408b99:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408ba0

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	16
	#Procedure 0x408bb0

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	.section	.text
	.align	16
	#Procedure 0x408bbf
	.globl sub_408bbf
	.type sub_408bbf, @function
sub_408bbf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x408bc0

	.globl lstat
	.type lstat, @function
lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section	.text
	.align	16
	#Procedure 0x408bd0

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
