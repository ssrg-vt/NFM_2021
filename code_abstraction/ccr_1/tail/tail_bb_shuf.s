	.section	.text
	.align	16
	#Procedure 0x401c19
	.globl sub_401c19
	.type sub_401c19, @function
sub_401c19:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x401c1a
	.globl sub_401c1a
	.type sub_401c1a, @function
sub_401c1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c52
	.globl sub_401c52
	.type sub_401c52, @function
sub_401c52:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c9a
	.globl sub_401c9a
	.type sub_401c9a, @function
sub_401c9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401cbc
	.globl sub_401cbc
	.type sub_401cbc, @function
sub_401cbc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401ccd
	.globl sub_401ccd
	.type sub_401ccd, @function
sub_401ccd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401ce6
	.globl sub_401ce6
	.type sub_401ce6, @function
sub_401ce6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401cf0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_9
	test	rsi, rsi
	mov	ecx, 1
	je	.label_10
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_10
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_9:
	mov	ecx, 1
.label_10:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x401d3b
	.globl sub_401d3b
	.type sub_401d3b, @function
sub_401d3b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d40

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	16
	#Procedure 0x401d45
	.globl sub_401d45
	.type sub_401d45, @function
sub_401d45:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d50
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
	je	.label_11
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_12:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_11
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_12
.label_11:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401db3
	.globl sub_401db3
	.type sub_401db3, @function
sub_401db3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401dc0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x401dc8
	.globl sub_401dc8
	.type sub_401dc8, @function
sub_401dc8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401dd0
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
	#Procedure 0x401ddd
	.globl sub_401ddd
	.type sub_401ddd, @function
sub_401ddd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401de0

	.globl check_fspec
	.type check_fspec, @function
check_fspec:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r14, rsi
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x38], -1
	je	.label_16
	mov	rdi, rbx
	call	pretty_name
	mov	r15, rax
	mov	edi, dword ptr [rbx + 0x38]
	lea	rsi, [rsp + 8]
	call	fstat
	test	eax, eax
	je	.label_15
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x3c], eax
	mov	edi, dword ptr [rbx + 0x38]
	mov	rsi, r15
	call	close_fd
	mov	dword ptr [rbx + 0x38], 0xffffffff
	jmp	.label_16
.label_15:
	mov	eax, 0xf000
	mov	ecx, dword ptr [rbx + 0x30]
	and	ecx, eax
	cmp	ecx, 0x8000
	jne	.label_13
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rcx, qword ptr [rbx + 8]
	jge	.label_13
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	call	error
	mov	edi, dword ptr [rbx + 0x38]
	xor	esi, esi
	xor	edx, edx
	mov	rcx, r15
	call	xlseek
	mov	qword ptr [rbx + 8], 0
	jmp	.label_20
.label_13:
	and	eax, dword ptr [rbx + 0x30]
	cmp	eax, 0x8000
	jne	.label_20
	mov	rax, qword ptr [rsp + 0x38]
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_20
	lea	rdi, [rsp + 8]
	call	get_stat_mtime
	mov	rcx, rdx
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rbx + 0x18]
	mov	rdx, rax
	call	timespec_cmp
	test	eax, eax
	je	.label_16
.label_20:
	cmp	byte ptr [byte ptr [rip + print_headers]],  1
	jne	.label_18
	cmp	qword ptr [r14], rbx
	setne	al
	jmp	.label_19
.label_14:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	word ptr [rax + rax]
.label_18:
	xor	eax, eax
.label_19:
	mov	edx, dword ptr [rbx + 0x38]
	movzx	edi, al
	mov	rcx, -1
	mov	rsi, r15
	call	dump_remainder
	add	qword ptr [rbx + 8], rax
	test	rax, rax
	je	.label_16
	mov	qword ptr [r14], rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	fflush_unlocked
	test	eax, eax
	jne	.label_14
.label_16:
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f60

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
	ja	.label_22
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
	jmp	.label_23
.label_22:
	mov	eax, ebx
.label_23:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401fa1
	.globl sub_401fa1
	.type sub_401fa1, @function
sub_401fa1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401fb0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_27
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_29
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_29
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_25
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_25:
	mov	rbx, r14
.label_29:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_27:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_28
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402051
	.globl sub_402051
	.type sub_402051, @function
sub_402051:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402060

	.globl tail_lines
	.type tail_lines, @function
tail_lines:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r14, rcx
	mov	r15, rdx
	mov	ebp, esi
	mov	r12, rdi
	lea	rsi, [rsp + 8]
	mov	edi, ebp
	call	fstat
	test	eax, eax
	je	.label_31
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
.label_30:
	mov	eax, ebx
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_31:
	cmp	byte ptr [byte ptr [rip + from_start]],  0
	je	.label_34
	mov	rdi, r12
	mov	esi, ebp
	mov	rdx, r15
	mov	rcx, r14
	call	start_lines
	mov	ebx, eax
	test	ebx, ebx
	je	.label_36
	shr	ebx, 0x1f
	jmp	.label_30
.label_36:
	xor	edi, edi
	mov	rcx, -1
	mov	rsi, r12
	mov	edx, ebp
	call	dump_remainder
	add	qword ptr [r14], rax
	mov	bl, 1
	jmp	.label_30
.label_34:
	mov	al,  byte ptr [byte ptr [rip + presume_input_pipe]]
	test	al, al
	jne	.label_33
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x8000
	jne	.label_33
	xor	esi, esi
	mov	edx, 1
	mov	edi, ebp
	call	lseek
	mov	r13, rax
	cmp	r13, -1
	je	.label_33
	xor	esi, esi
	mov	edx, 2
	mov	edi, ebp
	call	lseek
	cmp	r13, rax
	jge	.label_35
	mov	qword ptr [r14], rax
	mov	bl, 1
	test	rax, rax
	je	.label_30
	mov	rdi, r12
	mov	esi, ebp
	mov	rdx, r15
	mov	rcx, r13
	mov	r8, rax
	mov	r9, r14
	call	file_lines
	test	al, al
	jne	.label_30
	xor	ebx, ebx
	jmp	.label_30
.label_35:
	xor	edx, edx
	mov	edi, ebp
	mov	rsi, r13
	mov	rcx, r12
	call	xlseek
.label_33:
	mov	rdi, r12
	mov	esi, ebp
	mov	rdx, r15
	mov	rcx, r14
	call	pipe_lines
	mov	bl, al
	jmp	.label_30
	.section	.text
	.align	16
	#Procedure 0x4021c7
	.globl sub_4021c7
	.type sub_4021c7, @function
sub_4021c7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021d0

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
	jmp	.label_37
	.section	.text
	.align	16
	#Procedure 0x4021ee
	.globl sub_4021ee
	.type sub_4021ee, @function
sub_4021ee:

	nop	
.label_38:
	add	rbx, 2
.label_37:
	cmp	rbx, -1
	je	.label_39
	mov	rdi, rbx
	call	is_prime
	test	al, al
	je	.label_38
	mov	r14, rbx
.label_39:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x402214
	.globl sub_402214
	.type sub_402214, @function
sub_402214:

	nop	word ptr cs:[rax + rax]
.label_40:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x402223
	.globl sub_402223
	.type sub_402223, @function
sub_402223:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402228

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	movzx	eax, word ptr [rdi + 0x18]
	or	eax, 0x2000
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_40
	mov	al, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x402240
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_41]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	16
	#Procedure 0x402254
	.globl sub_402254
	.type sub_402254, @function
sub_402254:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402260

	.globl any_non_regular_fifo
	.type any_non_regular_fifo, @function
any_non_regular_fifo:
	test	rsi, rsi
	je	.label_42
	add	rdi, 0x38
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_43:
	cmp	dword ptr [rdi], 0
	js	.label_45
	movzx	edx, word ptr [rdi - 8]
	and	edx, 0xf000
	cmp	edx, 0x1000
	je	.label_45
	mov	al, 1
	movzx	edx, dx
	cmp	edx, 0x8000
	jne	.label_44
.label_45:
	inc	rcx
	add	rdi, 0x60
	cmp	rcx, rsi
	jb	.label_43
.label_42:
	xor	eax, eax
.label_44:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4022a3
	.globl sub_4022a3
	.type sub_4022a3, @function
sub_4022a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022b0
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
	#Procedure 0x4022d7
	.globl sub_4022d7
	.type sub_4022d7, @function
sub_4022d7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022e0

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_46
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_48
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_48
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_49
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_50
.label_48:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_50
.label_46:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_50:
	test	ebx, ebx
	js	.label_49
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_49
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_47
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_49
.label_47:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_49:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4023a3
	.globl sub_4023a3
	.type sub_4023a3, @function
sub_4023a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023b0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4023ba
	.globl sub_4023ba
	.type sub_4023ba, @function
sub_4023ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023c0
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
	#Procedure 0x4023d0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x4023d9
	.globl sub_4023d9
	.type sub_4023d9, @function
sub_4023d9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4023e0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x4023ea
	.globl sub_4023ea
	.type sub_4023ea, @function
sub_4023ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023f0

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4023f7
	.globl sub_4023f7
	.type sub_4023f7, @function
sub_4023f7:

	nop	word ptr [rax + rax]
.label_54:
	mov	rbx, qword ptr [rdi]
	mov	rcx, qword ptr [rdi + 8]
	lea	r14, [rsp]
	nop	word ptr cs:[rax + rax]
.label_53:
	mov	qword ptr [rsp + 8], rcx
	cmp	rbx, 0x1fa401
	jl	.label_52
	mov	qword ptr [rsp], 0x1fa400
	mov	rdi, r14
	mov	rsi, r15
	call	nanosleep
	add	rbx, -0x1fa400
	test	eax, eax
	mov	ecx, 0
	je	.label_53
	test	r15, r15
	je	.label_51
	add	qword ptr [r15], rbx
	jmp	.label_51
	.section	.text
	.align	16
	#Procedure 0x402453

	.globl rpl_nanosleep
	.type rpl_nanosleep, @function
rpl_nanosleep:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r15, rsi
	cmp	qword ptr [rdi + 8], 0x3b9aca00
	jb	.label_54
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 0xffffffff
	jmp	.label_51
.label_52:
	mov	qword ptr [rsp], rbx
	lea	rdi, [rsp]
	mov	rsi, r15
	call	nanosleep
.label_51:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
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
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4024aa
	.globl sub_4024aa
	.type sub_4024aa, @function
sub_4024aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024b0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x4024b9
	.globl sub_4024b9
	.type sub_4024b9, @function
sub_4024b9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4024c0

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
	mov	rax,  qword ptr [word ptr [rip + label_55]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_56]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_57]]
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
	#Procedure 0x402528
	.globl sub_402528
	.type sub_402528, @function
sub_402528:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402530

	.globl any_symlinks
	.type any_symlinks, @function
any_symlinks:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x90
	mov	r14, rsi
	mov	r12, rdi
	test	r14, r14
	je	.label_58
	xor	ebx, ebx
	lea	r15, [rsp]
	mov	ebp, 0xf000
	nop	word ptr cs:[rax + rax]
.label_59:
	mov	rdi, qword ptr [r12]
	mov	rsi, r15
	call	lstat
	test	eax, eax
	jne	.label_60
	mov	ecx, dword ptr [rsp + 0x18]
	and	ecx, ebp
	mov	al, 1
	cmp	ecx, 0xa000
	je	.label_61
.label_60:
	inc	rbx
	add	r12, 0x60
	cmp	rbx, r14
	jb	.label_59
.label_58:
	xor	eax, eax
.label_61:
	add	rsp, 0x90
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40259e
	.globl sub_40259e
	.type sub_40259e, @function
sub_40259e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4025a0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	rbx, rsi
	mov	ebp, edi
	mov	dword ptr [rsp + 0xc], 0
	mov	qword ptr [rsp], 0xa
	movabs	rax, 0x3ff0000000000000
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_69
	call	setlocale
	mov	edi, OFFSET FLAT:label_98
	mov	esi, OFFSET FLAT:label_99
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_98
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  0
	mov	byte ptr [byte ptr [rip + count_lines]],  1
	mov	byte ptr [byte ptr [rip + print_headers]],  0
	mov	byte ptr [byte ptr [rip + from_start]],  0
	mov	byte ptr [byte ptr [rip + forever]],  0
	mov	byte ptr [byte ptr [rip + line_end]],  1
	lea	r15, [rsp]
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r15
	call	parse_obsolete_option
	movzx	eax, al
	sub	ebp, eax
	lea	r14, [rbx + rax*8]
	lea	rcx, [rsp + 0xc]
	lea	r8, [rsp + 0x10]
	mov	edi, ebp
	mov	rsi, r14
	mov	rdx, r15
	call	parse_options
	cmp	byte ptr [byte ptr [rip + from_start]],  0
	je	.label_76
	mov	rax, qword ptr [rsp]
	test	rax, rax
	je	.label_76
	dec	rax
	mov	qword ptr [rsp], rax
.label_76:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	ebx, OFFSET FLAT:main.dummy_stdin
	mov	r12d, 1
	cmp	ebp, eax
	jle	.label_82
	xor	r12d, r12d
	sub	ebp, eax
	lea	rbx, [r14 + rax*8]
	je	.label_73
	movsxd	r12, ebp
.label_82:
	xor	eax, eax
	xor	ecx, ecx
	nop	
.label_91:
	mov	rsi, qword ptr [rbx + rax*8]
	movzx	edi, byte ptr [rsi]
	mov	edx, 0x2d
	sub	edx, edi
	jne	.label_87
	movzx	edx, byte ptr [rsi + 1]
	neg	edx
.label_87:
	test	edx, edx
	mov	dl, 1
	je	.label_86
	mov	edx, ecx
.label_86:
	inc	rax
	cmp	r12, rax
	mov	cl, dl
	jne	.label_91
	and	dl, 1
	je	.label_93
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	je	.label_95
.label_93:
	test	dl, dl
	sete	al
	cmp	byte ptr [byte ptr [rip + forever]],  0
	je	.label_73
	test	al, al
	jne	.label_73
	cmp	r12, 1
	jne	.label_62
	mov	eax,  dword ptr [dword ptr [rip + pid]]
	test	eax, eax
	jne	.label_62
	cmp	dword ptr [dword ptr [rip + follow_mode]],  2
	jne	.label_62
	lea	rsi, [rsp + 0x18]
	xor	edi, edi
	call	fstat
	test	eax, eax
	jne	.label_62
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x8000
	jne	.label_73
.label_62:
	xor	edi, edi
	call	isatty
	test	eax, eax
	je	.label_73
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_75
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_73:
	cmp	qword ptr [rsp], 0
	jne	.label_79
	mov	cl,  byte ptr [byte ptr [rip + from_start]]
	xor	eax, eax
	or	cl,  byte ptr [byte ptr [rip + forever]]
	je	.label_80
.label_79:
	mov	esi, 0x60
	mov	rdi, r12
	call	xnmalloc
	mov	r14, rax
	test	r12, r12
	je	.label_83
	mov	rax, r12
	mov	rcx, r14
	nop	dword ptr [rax + rax]
.label_85:
	mov	rdx, qword ptr [rbx]
	mov	qword ptr [rcx], rdx
	add	rbx, 8
	add	rcx, 0x60
	dec	rax
	jne	.label_85
.label_83:
	mov	eax, dword ptr [rsp + 0xc]
	cmp	eax, 1
	je	.label_88
	cmp	r12, 2
	jb	.label_89
	test	eax, eax
	jne	.label_89
.label_88:
	mov	byte ptr [byte ptr [rip + print_headers]],  1
.label_89:
	mov	edi, 1
	xor	esi, esi
	call	xset_binary_mode
	mov	r13b, 1
	test	r12, r12
	je	.label_66
	mov	r13b, 1
	mov	rbx, r12
	mov	rbp, r14
	nop	word ptr [rax + rax]
.label_100:
	mov	rsi, qword ptr [rsp]
	mov	rdi, rbp
	call	tail_file
	and	r13b, al
	add	rbp, 0x60
	dec	rbx
	jne	.label_100
.label_66:
	cmp	byte ptr [byte ptr [rip + forever]],  0
	je	.label_63
	mov	rdi, r14
	mov	rsi, r12
	call	ignore_fifo_and_pipe
	test	rax, rax
	je	.label_63
	lea	rsi, [rsp + 0x18]
	mov	edi, 1
	call	fstat
	test	eax, eax
	js	.label_72
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x1000
	sete	byte ptr [byte ptr [rip + monitor_output]]
	mov	al,  byte ptr [byte ptr [rip + disable_inotify]]
	test	al, al
	jne	.label_64
	mov	rdi, r14
	mov	rsi, r12
	call	tailable_stdin
	test	al, al
	jne	.label_81
	mov	rdi, r14
	mov	rsi, r12
	call	any_remote_file
	test	al, al
	jne	.label_81
	mov	rdi, r14
	mov	rsi, r12
	call	any_non_remote_file
	test	al, al
	je	.label_81
	mov	rdi, r14
	mov	rsi, r12
	call	any_symlinks
	test	al, al
	jne	.label_81
	mov	rdi, r14
	mov	rsi, r12
	call	any_non_regular_fifo
	test	al, al
	jne	.label_81
	cmp	dword ptr [dword ptr [rip + follow_mode]],  2
	jne	.label_71
	mov	eax, r13d
	xor	al, 1
	je	.label_71
.label_81:
	mov	byte ptr [byte ptr [rip + disable_inotify]],  1
.label_64:
	mov	byte ptr [byte ptr [rip + disable_inotify]],  1
	movsd	xmm0, qword ptr [rsp + 0x10]
	mov	rdi, r14
	mov	rsi, r12
	call	tail_forever
.label_63:
	cmp	byte ptr [byte ptr [rip + have_read_stdin]],  1
	jne	.label_94
	xor	edi, edi
	call	close
	test	eax, eax
	js	.label_97
.label_94:
	movzx	eax, r13b
	xor	eax, 1
.label_80:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_71:
	mov	al,  byte ptr [byte ptr [rip + disable_inotify]]
	test	al, al
	jne	.label_64
	call	inotify_init
	mov	ebx, eax
	test	ebx, ebx
	js	.label_67
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	fflush_unlocked
	test	eax, eax
	jne	.label_68
	movsd	xmm0, qword ptr [rsp + 0x10]
	mov	edi, ebx
	mov	rsi, r14
	mov	rdx, r12
	call	tail_forever_inotify
	test	al, al
	je	.label_77
.label_67:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_78
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rcx
	call	error
	test	r12, r12
	je	.label_64
	mov	rbp, r14
	add	rbp, 0x48
	mov	r15, r12
.label_96:
	mov	esi, dword ptr [rbp - 4]
	cmp	esi, -1
	je	.label_70
	mov	edi, ebx
	call	inotify_rm_watch
.label_70:
	mov	esi, dword ptr [rbp]
	cmp	esi, -1
	je	.label_84
	mov	edi, ebx
	call	inotify_rm_watch
.label_84:
	add	rbp, 0x60
	dec	r15
	jne	.label_96
	jmp	.label_64
.label_77:
	mov	eax, 1
	jmp	.label_80
.label_95:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_90
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_92
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_97:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_92
	xor	eax, eax
	call	error
.label_72:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_65
.label_74:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_68:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	jmp	.label_74
	.section	.text
	.align	16
	#Procedure 0x402a49
	.globl sub_402a49
	.type sub_402a49, @function
sub_402a49:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402a50
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x402a5a
	.globl sub_402a5a
	.type sub_402a5a, @function
sub_402a5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a60

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
	je	.label_101
	cmp	r15, -2
	jb	.label_101
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_101
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_101:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ab6
	.globl sub_402ab6
	.type sub_402ab6, @function
sub_402ab6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ac0

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
	jne	.label_109
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
	je	.label_105
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_106
	mov	eax, OFFSET FLAT:label_107
	jmp	.label_108
.label_104:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_102
	mov	eax, OFFSET FLAT:label_103
.label_108:
	cmove	rax, rcx
.label_109:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b3f
	.globl sub_402b3f
	.type sub_402b3f, @function
sub_402b3f:

	nop	dword ptr [rax]
.label_105:
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
	je	.label_104
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_110
	mov	eax, OFFSET FLAT:label_111
	jmp	.label_108
	.section	.text
	.align	16
	#Procedure 0x402b80

	.globl fremote
	.type fremote, @function
fremote:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x78
	mov	r14, rsi
	lea	rsi, [rsp]
	call	fstatfs
	test	eax, eax
	je	.label_114
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	bl, 1
	cmp	ebp, 0x26
	je	.label_118
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_113
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r15
	call	error
	jmp	.label_118
.label_112:
	mov	edi, OFFSET FLAT:label_115
	mov	esi, OFFSET FLAT:label_116
	mov	edx, 0x3c9
	mov	ecx, OFFSET FLAT:label_117
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x402bf5
	.globl sub_402bf5
	.type sub_402bf5, @function
sub_402bf5:

	nop	dword ptr [rax]
.label_114:
	mov	rdi, qword ptr [rsp]
	call	is_local_fs_type
	inc	eax
	cmp	eax, 3
	jae	.label_112
	and	al, 7
	mov	bl, 3
	mov	ecx, eax
	shr	bl, cl
	and	bl, 1
.label_118:
	mov	eax, ebx
	add	rsp, 0x78
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c20
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
	#Procedure 0x402c2f
	.globl sub_402c2f
	.type sub_402c2f, @function
sub_402c2f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402c30

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
	je	.label_119
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	je	.label_120
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_119
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
	je	.label_121
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
	jmp	.label_120
.label_121:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	lea	rsi, [rsp]
	mov	edx, 1
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_122
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_122
	mov	rdi, qword ptr [rsp]
	call	free
.label_119:
	xor	r14d, r14d
.label_120:
	mov	eax, r14d
	add	rsp, 0x50
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_122:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402d58
	.globl sub_402d58
	.type sub_402d58, @function
sub_402d58:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d60

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
	#Procedure 0x402d97
	.globl sub_402d97
	.type sub_402d97, @function
sub_402d97:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402da0

	.globl any_live_files
	.type any_live_files, @function
any_live_files:
	mov	al, 1
	cmp	byte ptr [byte ptr [rip + reopen_inaccessible_files]],  1
	jne	.label_123
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	je	.label_125
.label_123:
	test	rsi, rsi
	je	.label_124
	mov	r8b,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	xor	r8b, 1
	add	rdi, 0x38
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_126:
	cmp	dword ptr [rdi], 0
	jns	.label_125
	cmp	byte ptr [rdi - 4], 0
	setne	cl
	or	cl, r8b
	test	cl, 1
	je	.label_125
	inc	rdx
	add	rdi, 0x60
	cmp	rdx, rsi
	jb	.label_126
.label_124:
	xor	eax, eax
.label_125:
	ret	
	.section	.text
	.align	16
	#Procedure 0x402df3
	.globl sub_402df3
	.type sub_402df3, @function
sub_402df3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e00

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_127
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
	#Procedure 0x402e30

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_129
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_129:
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
	#Procedure 0x402eb3
	.globl sub_402eb3
	.type sub_402eb3, @function
sub_402eb3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ec0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_130
	test	rdx, rdx
	je	.label_130
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_130:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402eeb
	.globl sub_402eeb
	.type sub_402eeb, @function
sub_402eeb:

	nop	dword ptr [rax + rax]
.label_138:
	lea	rsi, [rsp]
	mov	rdi, rbx
	call	offtostr
	mov	r14, rax
	cmp	ebp, 2
	je	.label_137
	cmp	ebp, 1
	je	.label_133
	test	ebp, ebp
	jne	.label_135
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_136
	jmp	.label_132
.label_137:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_131
	jmp	.label_132
.label_135:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402f32
	.globl sub_402f32
	.type sub_402f32, @function
sub_402f32:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f41

	.globl xlseek
	.type xlseek, @function
xlseek:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	r15, rcx
	mov	ebp, edx
	mov	rbx, rsi
	call	lseek
	test	rax, rax
	js	.label_138
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_133:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_134
.label_132:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	mov	r8, r14
	call	error
	mov	edi, 1
	call	exit
	.section	.text
	.align	16
	#Procedure 0x402fb0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_139
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_139
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_139:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x402fd6
	.globl sub_402fd6
	.type sub_402fd6, @function
sub_402fd6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fe0

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
	jns	.label_140
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
.label_140:
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
	#Procedure 0x403048
	.globl sub_403048
	.type sub_403048, @function
sub_403048:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403050

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_150
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_150:
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
	ja	.label_151
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_146
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_147
	test	esi, esi
	jne	.label_151
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_153
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_144
.label_151:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_143
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_147
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_149
.label_146:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_147:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_154
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_142
.label_154:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_142:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_149:
	cmp	eax, 6
	jne	.label_143
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_152
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_141
.label_143:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_145
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_148
.label_153:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_144:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_152:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_141:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_145:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_148:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x403204
	.globl sub_403204
	.type sub_403204, @function
sub_403204:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403210
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_155
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_155
.label_156:
	ret	
.label_155:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_156
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x403236
	.globl sub_403236
	.type sub_403236, @function
sub_403236:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403240

	.globl dtotimespec
	.type dtotimespec, @function
dtotimespec:
	push	rax
	movabs	rdi, 0x7fffffffffffffff
	ucomisd	xmm0,  qword ptr [word ptr [rip + label_157]]
	jbe	.label_158
	movsd	xmm1,  qword ptr [word ptr [rip + label_160]]
	ucomisd	xmm1, xmm0
	jbe	.label_161
	cvttsd2si	rdi, xmm0
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, rdi
	subsd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_162]]
	cvttsd2si	rax, xmm0
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, rax
	xor	ecx, ecx
	ucomisd	xmm0, xmm1
	seta	cl
	add	rcx, rax
	movabs	rdx, 0x112e0be826d694b3
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0x1a
	add	rdx, rax
	imul	rax, rdx, 0x3b9aca00
	mov	rsi, rcx
	sub	rsi, rax
	add	rsi, 0x3b9aca00
	sub	rcx, rax
	cmovns	rsi, rcx
	add	rdi, rdx
	sar	rcx, 0x3f
	add	rcx, rdi
	mov	rdi, rcx
	jmp	.label_159
.label_158:
	inc	rdi
	xor	esi, esi
	jmp	.label_159
.label_161:
	mov	esi, 0x3b9ac9ff
.label_159:
	call	make_timespec
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4032f8
	.globl sub_4032f8
	.type sub_4032f8, @function
sub_4032f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403300

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
.label_164:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_163
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_164
.label_163:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x40333b
	.globl sub_40333b
	.type sub_40333b, @function
sub_40333b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403340

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
	je	.label_165
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_166:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebp, eax
	dec	ebx
	jne	.label_166
.label_165:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40337e
	.globl sub_40337e
	.type sub_40337e, @function
sub_40337e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403380
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_167
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_167:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40339e
	.globl sub_40339e
	.type sub_40339e, @function
sub_40339e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4033a0

	.globl any_remote_file
	.type any_remote_file, @function
any_remote_file:
	test	rsi, rsi
	je	.label_168
	add	rdi, 0x38
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_170:
	cmp	dword ptr [rdi], 0
	js	.label_169
	mov	al, 1
	cmp	byte ptr [rdi - 3], 0
	jne	.label_171
.label_169:
	inc	rcx
	add	rdi, 0x60
	cmp	rcx, rsi
	jb	.label_170
.label_168:
	xor	eax, eax
.label_171:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4033cc
	.globl sub_4033cc
	.type sub_4033cc, @function
sub_4033cc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4033d0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_172
.label_173:
	ret	
.label_172:
	cmp	edi, 0x7f
	je	.label_173
	xor	eax, eax
	jmp	.label_173
	.section	.text
	.align	16
	#Procedure 0x4033e1
	.globl sub_4033e1
	.type sub_4033e1, @function
sub_4033e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033f0

	.globl start_bytes
	.type start_bytes, @function
start_bytes:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x2000
	mov	r15, rcx
	mov	rbx, rdx
	mov	ebp, esi
	mov	r14, rdi
	test	rbx, rbx
	je	.label_174
	lea	r12, [rsp]
	nop	word ptr cs:[rax + rax]
.label_176:
	mov	edx, 0x2000
	mov	edi, ebp
	mov	rsi, r12
	call	safe_read
	mov	ecx, 0xffffffff
	test	rax, rax
	je	.label_177
	cmp	rax, -1
	je	.label_178
	add	qword ptr [r15], rax
	mov	rcx, rbx
	sub	rcx, rax
	jb	.label_179
	mov	rbx, rcx
	jne	.label_176
	jmp	.label_174
.label_179:
	sub	rax, rbx
	je	.label_174
	lea	rdi, [rsp + rbx]
	mov	rsi, rax
	call	xwrite_stdout
.label_174:
	xor	ecx, ecx
.label_177:
	mov	eax, ecx
	add	rsp, 0x2000
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_178:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_175
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
	mov	ecx, 1
	jmp	.label_177
	.section	.text
	.align	16
	#Procedure 0x4034b6
	.globl sub_4034b6
	.type sub_4034b6, @function
sub_4034b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034c0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r8, qword ptr [rdi]
	xor	eax, eax
	cmp	r8, qword ptr [rdi + 8]
	jae	.label_180
	xor	eax, eax
.label_183:
	cmp	qword ptr [r8], 0
	je	.label_181
	test	r8, r8
	je	.label_181
	mov	r9, r8
	nop	dword ptr [rax + rax]
.label_182:
	cmp	rax, rdx
	jae	.label_180
	mov	rcx, qword ptr [r9]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r9, qword ptr [r9 + 8]
	test	r9, r9
	jne	.label_182
.label_181:
	add	r8, 0x10
	cmp	r8, qword ptr [rdi + 8]
	jb	.label_183
.label_180:
	ret	
	.section	.text
	.align	16
	#Procedure 0x403503
	.globl sub_403503
	.type sub_403503, @function
sub_403503:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403510
	.globl xset_binary_mode_error
	.type xset_binary_mode_error, @function
xset_binary_mode_error:

	ret	
	.section	.text
	.align	16
	#Procedure 0x403511
	.globl sub_403511
	.type sub_403511, @function
sub_403511:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403520
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	16
	#Procedure 0x40352a
	.globl sub_40352a
	.type sub_40352a, @function
sub_40352a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403530

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
	je	.label_184
	mov	qword ptr [rax], rbx
.label_184:
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
	#Procedure 0x40361c
	.globl sub_40361c
	.type sub_40361c, @function
sub_40361c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403620
	.globl rotr32
	.type rotr32, @function
rotr32:

	mov	ecx, esi
	ror	edi, cl
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403627
	.globl sub_403627
	.type sub_403627, @function
sub_403627:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403630

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
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
	.align	16
	#Procedure 0x40365d
	.globl sub_40365d
	.type sub_40365d, @function
sub_40365d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403660
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
	#Procedure 0x403674
	.globl sub_403674
	.type sub_403674, @function
sub_403674:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403680
	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:

	mov	rax, qword ptr [rdi + 0x60]
	ret	
	.section	.text
	.align	16
	#Procedure 0x403685
	.globl sub_403685
	.type sub_403685, @function
sub_403685:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403690
	.globl timespectod
	.type timespectod, @function
timespectod:

	cvtsi2sd	xmm1, rdi
	cvtsi2sd	xmm0, rsi
	divsd	xmm0,  qword ptr [word ptr [rip + label_162]]
	addsd	xmm0, xmm1
	ret	
	.section	.text
	.align	16
	#Procedure 0x4036a7
	.globl sub_4036a7
	.type sub_4036a7, @function
sub_4036a7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4036b0

	.globl file_lines
	.type file_lines, @function
file_lines:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x2038
	mov	qword ptr [rsp + 0x10], r9
	mov	r14, rdx
	mov	r15d, esi
	mov	rbp, rdi
	mov	bl, 1
	test	r14, r14
	je	.label_187
	mov	rax, r8
	mov	qword ptr [rsp + 0x18], rcx
	sub	rax, rcx
	mov	rcx, rax
	sar	rcx, 0x3f
	shr	rcx, 0x33
	add	rcx, rax
	and	rcx, 0xffffffffffffe000
	sub	rax, rcx
	mov	ebx, 0x2000
	cmovne	rbx, rax
	mov	qword ptr [rsp + 0x20], r8
	mov	r12, r8
	sub	r12, rbx
	xor	edx, edx
	mov	edi, r15d
	mov	rsi, r12
	mov	qword ptr [rsp + 8], rbp
	mov	rcx, rbp
	call	xlseek
	lea	r13, [rsp + 0x30]
	mov	edi, r15d
	mov	rsi, r13
	mov	rdx, rbx
	call	safe_read
	cmp	rax, -1
	je	.label_196
	mov	dword ptr [rsp + 4], r15d
	lea	rcx, [rax + r12]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rdx], rcx
	xor	r15d, r15d
	test	rax, rax
	mov	rbp, r12
	je	.label_186
	movsx	ecx, byte ptr [rsp + rax + 0x2f]
	mov	dl,  byte ptr [byte ptr [rip + line_end]]
	test	dl, dl
	mov	edx, 0xa
	cmove	edx, r15d
	xor	esi, esi
	cmp	ecx, edx
	setne	sil
	sub	r14, rsi
	mov	r15, rax
	nop	word ptr cs:[rax + rax]
.label_186:
	lea	r12, [r15 - 1]
	mov	rbx, qword ptr [rsp + 0x20]
	sub	rbx, r15
	mov	qword ptr [rsp + 0x28], rbp
	sub	rbx, rbp
	mov	rbp, r15
	nop	word ptr [rax + rax]
.label_192:
	test	rbp, rbp
	je	.label_190
	movzx	eax,  byte ptr [byte ptr [rip + line_end]]
	test	al, al
	mov	esi, 0
	mov	eax, 0xa
	cmovne	esi, eax
	mov	rdi, r13
	mov	rdx, rbp
	call	memrchr
	mov	ecx, 5
	test	rax, rax
	je	.label_185
	mov	rbp, rax
	sub	rbp, r13
	xor	ecx, ecx
	test	r14, r14
	lea	r14, [r14 - 1]
	jne	.label_185
	cmp	rbp, r12
	je	.label_189
	inc	rax
	mov	rsi, r12
	sub	rsi, rbp
	mov	rdi, rax
	call	xwrite_stdout
.label_189:
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 8]
	mov	edx, dword ptr [rsp + 4]
	mov	rcx, rbx
	call	dump_remainder
	mov	rcx, qword ptr [rsp + 0x10]
	add	qword ptr [rcx], rax
	mov	ecx, 1
.label_185:
	mov	eax, ecx
	and	al, 7
	je	.label_192
	cmp	al, 5
	jne	.label_193
.label_190:
	mov	r15, qword ptr [rsp + 8]
	mov	r12, qword ptr [rsp + 0x18]
	mov	ebx, dword ptr [rsp + 4]
	mov	rbp, qword ptr [rsp + 0x28]
	cmp	rbp, r12
	je	.label_194
	add	rbp, -0x2000
	xor	edx, edx
	mov	edi, ebx
	mov	rsi, rbp
	mov	rcx, r15
	call	xlseek
	mov	edx, 0x2000
	mov	edi, ebx
	mov	rsi, r13
	call	safe_read
	mov	r15, rax
	cmp	r15, -1
	je	.label_195
	mov	rax, r15
	add	rax, rbp
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx], rax
	jmp	.label_197
	.section	.text
	.align	16
	#Procedure 0x40388f
	.globl sub_40388f
	.type sub_40388f, @function
sub_40388f:

	nop	
.label_193:
	test	ecx, ecx
	mov	rbp, qword ptr [rsp + 0x28]
	jne	.label_191
.label_197:
	test	r15, r15
	jne	.label_186
	jmp	.label_191
.label_196:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_175
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r15
	jmp	.label_188
.label_194:
	xor	edx, edx
	mov	edi, ebx
	mov	rsi, r12
	mov	rcx, r15
	call	xlseek
	xor	edi, edi
	mov	rsi, r15
	mov	edx, ebx
	mov	rcx, qword ptr [rsp + 0x20]
	call	dump_remainder
	add	rax, r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx], rax
.label_191:
	mov	bl, 1
	jmp	.label_187
.label_195:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_175
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
.label_188:
	call	error
.label_187:
	mov	eax, ebx
	add	rsp, 0x2038
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403962
	.globl sub_403962
	.type sub_403962, @function
sub_403962:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403970
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
	#Procedure 0x403984
	.globl sub_403984
	.type sub_403984, @function
sub_403984:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403990
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40399a
	.globl sub_40399a
	.type sub_40399a, @function
sub_40399a:

	nop	word ptr [rax + rax]
.label_198:
	call	die_pipe
	.section	.text
	.align	16
	#Procedure 0x4039a5
	.globl sub_4039a5
	.type sub_4039a5, @function
sub_4039a5:

	nop
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039b3

	.globl check_output_alive
	.type check_output_alive, @function
check_output_alive:
	push	rbx
	sub	rsp, 0x90
	cmp	byte ptr [byte ptr [rip + monitor_output]],  0
	je	.label_199
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp], xmm0
	lea	rbx, [rsp + 0x10]
	xor	eax, eax
	mov	ecx, 0x10
	mov	rdi, rbx
	cld	
	rep stosq	qword ptr [rdi], rax
	mov	edi, 1
	call	__fdelt_chk
	or	byte ptr [rsp + rax*8 + 0x10], 2
	lea	r8, [rsp]
	mov	edi, 2
	xor	edx, edx
	xor	ecx, ecx
	mov	rsi, rbx
	call	select
	cmp	eax, 1
	je	.label_198
.label_199:
	add	rsp, 0x90
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a10
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
	#Procedure 0x403a29
	.globl sub_403a29
	.type sub_403a29, @function
sub_403a29:

	nop	dword ptr [rax]
.label_202:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_200
.label_201:
	mov	eax, 1
	test	bpl, bpl
	je	.label_200
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
.label_200:
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
	#Procedure 0x403a78
	.globl sub_403a78
	.type sub_403a78, @function
sub_403a78:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403a7b

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
	je	.label_202
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_201
	jmp	.label_200
	.section	.text
	.align	16
	#Procedure 0x403ab0
	.globl base_len
	.type base_len, @function
base_len:

	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_204:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_203
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_204
.label_203:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ad6
	.globl sub_403ad6
	.type sub_403ad6, @function
sub_403ad6:

	nop	
	nop	dword ptr [rax + rax]
.label_205:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ae3
	.globl sub_403ae3
	.type sub_403ae3, @function
sub_403ae3:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403aeb
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_205
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b00

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
	#Procedure 0x403b49
	.globl sub_403b49
	.type sub_403b49, @function
sub_403b49:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403b50
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	mov	ecx, esi
	rol	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b59
	.globl sub_403b59
	.type sub_403b59, @function
sub_403b59:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403b60

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
	#Procedure 0x403b77
	.globl sub_403b77
	.type sub_403b77, @function
sub_403b77:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b80
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
	jae	.label_206
	xor	ebx, ebx
.label_208:
	cmp	qword ptr [r13], 0
	je	.label_207
	test	r13, r13
	je	.label_207
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_209:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_206
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	jne	.label_209
.label_207:
	add	r13, 0x10
	cmp	r13, qword ptr [r12 + 8]
	jb	.label_208
.label_206:
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
	#Procedure 0x403bf7
	.globl sub_403bf7
	.type sub_403bf7, @function
sub_403bf7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c00

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	.section	.text
	.align	16
	#Procedure 0x403c05
	.globl sub_403c05
	.type sub_403c05, @function
sub_403c05:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c10
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x403c13
	.globl sub_403c13
	.type sub_403c13, @function
sub_403c13:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c20
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_210
	call	rpl_calloc
	test	rax, rax
	je	.label_210
	pop	rcx
	ret	
.label_210:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403c46
	.globl sub_403c46
	.type sub_403c46, @function
sub_403c46:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c50

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
	je	.label_212
	mov	qword ptr [rsp], rbx
	test	r12, r12
	mov	ebx, OFFSET FLAT:default_tuning
	cmovne	rbx, r12
	mov	qword ptr [r13 + 0x28], rbx
	mov	rdi, r13
	call	check_tuning
	test	al, al
	je	.label_211
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	je	.label_211
	mov	esi, 0x10
	mov	rdi, rax
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_211
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
	jmp	.label_212
.label_211:
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_212:
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
	#Procedure 0x403d2c
	.globl sub_403d2c
	.type sub_403d2c, @function
sub_403d2c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403d30

	.globl recheck
	.type recheck, @function
recheck:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	ebp, esi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	cmp	byte ptr [rax], 0x2d
	jne	.label_221
	lea	r14, [rbx + 0x36]
	lea	r12, [rbx + 0x3c]
	cmp	byte ptr [rax + 1], 0
	mov	al, byte ptr [rbx + 0x36]
	mov	byte ptr [rsp + 3], al
	mov	r13d, dword ptr [rbx + 0x3c]
	jne	.label_227
	xor	r15d, r15d
	mov	al, 1
	mov	dword ptr [rsp + 4], eax
	jmp	.label_229
.label_221:
	lea	r14, [rbx + 0x36]
	mov	al, byte ptr [rbx + 0x36]
	mov	byte ptr [rsp + 3], al
	lea	r12, [rbx + 0x3c]
	mov	r13d, dword ptr [rbx + 0x3c]
.label_227:
	mov	rdi, qword ptr [rbx]
	xor	esi, esi
	test	bpl, bpl
	sete	sil
	shl	esi, 0xb
	mov	dword ptr [rsp + 4], 0
	xor	eax, eax
	call	open_safer
	mov	r15d, eax
.label_229:
	mov	rdi, rbx
	call	valid_file_spec
	test	al, al
	je	.label_214
	cmp	r15d, -1
	sete	al
	and	al,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	xor	al, 1
	mov	byte ptr [r14], al
	mov	al,  byte ptr [byte ptr [rip + disable_inotify]]
	test	al, al
	jne	.label_223
	mov	rdi, qword ptr [rbx]
	lea	rsi, [rsp + 8]
	call	lstat
	test	eax, eax
	jne	.label_223
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0xa000
	jne	.label_223
	mov	dword ptr [r12], 0xffffffff
	mov	byte ptr [rbx + 0x34], 1
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_237
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	jmp	.label_217
.label_223:
	cmp	r15d, -1
	je	.label_224
	lea	rsi, [rsp + 8]
	mov	edi, r15d
	call	fstat
	test	eax, eax
	js	.label_224
	movzx	eax, word ptr [rsp + 0x20]
	and	eax, 0xf000
	movsx	ecx, ax
	movzx	eax, ax
	cmp	ecx, 0xfff
	jg	.label_228
	cmp	eax, 0x8000
	je	.label_218
	cmp	eax, 0xc000
	je	.label_218
	jmp	.label_231
.label_224:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	dword ptr [r12], ebp
	cmp	byte ptr [r14], 0
	je	.label_232
	mov	ebp, dword ptr [rax]
	cmp	r13d, ebp
	je	.label_217
	mov	rdi, rbx
	call	pretty_name
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rax
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_128
	xor	eax, eax
	mov	esi, ebp
	call	error
	jmp	.label_217
.label_232:
	cmp	byte ptr [rsp + 3], 0
	je	.label_217
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_245
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r14
	call	error
	jmp	.label_217
.label_228:
	cmp	eax, 0x1000
	je	.label_218
	cmp	eax, 0x2000
	jne	.label_231
.label_218:
	mov	rdi, rbx
	call	pretty_name
	mov	edi, r15d
	mov	rsi, rax
	call	fremote
	mov	byte ptr [rbx + 0x35], al
	test	al, al
	je	.label_225
	mov	al,  byte ptr [byte ptr [rip + disable_inotify]]
	test	al, al
	je	.label_238
.label_225:
	mov	dword ptr [r12], 0
	or	r13d, 2
	cmp	r13d, 2
	jne	.label_222
	cmp	dword ptr [rbx + 0x38], -1
	je	.label_230
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_219
	mov	rax, qword ptr [rbx + 0x20]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_219
	mov	rdi, rbx
	call	pretty_name
	mov	edi, r15d
	mov	rsi, rax
	call	close_fd
	jmp	.label_233
.label_231:
	mov	dword ptr [r12], 0xffffffff
	mov	byte ptr [r14], 0
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	sete	al
	and	al,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	xor	al, 1
	mov	byte ptr [rbx + 0x34], al
	cmp	byte ptr [rsp + 3], 0
	jne	.label_236
	cmp	r13d, dword ptr [r12]
	je	.label_217
.label_236:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_244
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	mov	rbp, rax
	mov	r8d, OFFSET FLAT:label_69
	cmp	byte ptr [rbx + 0x34], 0
	je	.label_213
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_215
	mov	edx, 5
	call	dcgettext
	mov	r8, rax
.label_213:
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbp
	call	error
	jmp	.label_217
.label_238:
	mov	dword ptr [r12], 0xffffffff
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_226
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	word ptr [rbx + 0x34], 0x101
.label_217:
	mov	rdi, rbx
	call	pretty_name
	mov	edi, r15d
	mov	rsi, rax
	call	close_fd
	mov	ebp, dword ptr [rbx + 0x38]
	mov	rdi, rbx
	call	pretty_name
	mov	edi, ebp
	mov	rsi, rax
	call	close_fd
	mov	dword ptr [rbx + 0x38], 0xffffffff
.label_233:
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_222:
	cmp	dword ptr [rbx + 0x38], -1
	jne	.label_240
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_241
	jmp	.label_242
.label_219:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_243
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	r14d, dword ptr [rbx + 0x38]
	mov	rdi, rbx
	call	pretty_name
	mov	edi, r14d
	mov	rsi, rax
	call	close_fd
	jmp	.label_216
.label_230:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_220
.label_242:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
.label_216:
	movzx	eax, bpl
	mov	ecx, dword ptr [rsp + 4]
	test	cl, cl
	mov	r8d, 0xffffffff
	cmove	r8d, eax
	lea	rcx, [rsp + 8]
	xor	edx, edx
	mov	rdi, rbx
	mov	esi, r15d
	call	record_open_fd
	mov	rdi, rbx
	call	pretty_name
	xor	esi, esi
	xor	edx, edx
	mov	edi, r15d
	mov	rcx, rax
	call	xlseek
	jmp	.label_233
.label_214:
	mov	edi, OFFSET FLAT:label_234
	mov	esi, OFFSET FLAT:label_116
	mov	edx, 0x3df
	mov	ecx, OFFSET FLAT:label_235
	call	__assert_fail
.label_240:
	mov	edi, OFFSET FLAT:label_239
	mov	esi, OFFSET FLAT:label_116
	mov	edx, 0x42c
	mov	ecx, OFFSET FLAT:label_235
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x4041db
	.globl sub_4041db
	.type sub_4041db, @function
sub_4041db:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041e0

	.globl record_open_fd
	.type record_open_fd, @function
record_open_fd:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, r8d
	mov	rbx, rcx
	mov	rbp, rdi
	mov	dword ptr [rbp + 0x38], esi
	mov	qword ptr [rbp + 8], rdx
	mov	rdi, rbx
	call	get_stat_mtime
	mov	qword ptr [rbp + 0x10], rax
	mov	qword ptr [rbp + 0x18], rdx
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbp + 0x20], rax
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rbp + 0x28], rax
	mov	eax, dword ptr [rbx + 0x18]
	mov	dword ptr [rbp + 0x30], eax
	mov	dword ptr [rbp + 0x40], r14d
	mov	qword ptr [rbp + 0x58], 0
	mov	byte ptr [rbp + 0x34], 0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40422e
	.globl sub_40422e
	.type sub_40422e, @function
sub_40422e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404230

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40423e
	.globl sub_40423e
	.type sub_40423e, @function
sub_40423e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404240

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
	js	.label_246
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_249
	cmp	r12d, 0x7fffffff
	je	.label_251
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
	jne	.label_247
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_247:
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
.label_249:
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
	jbe	.label_252
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_248
.label_252:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_250
	mov	rdi, r14
	call	free
.label_250:
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
.label_248:
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
.label_246:
	call	abort
.label_251:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4043fd
	.globl sub_4043fd
	.type sub_4043fd, @function
sub_4043fd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404400

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
	#Procedure 0x40440d
	.globl sub_40440d
	.type sub_40440d, @function
sub_40440d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404410

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_253
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_255:
	cmp	qword ptr [rcx], 0
	je	.label_254
	xor	esi, esi
	mov	rdi, rcx
	nop	dword ptr [rax + rax]
.label_256:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_256
	cmp	rsi, rax
	cmova	rax, rsi
.label_254:
	add	rcx, 0x10
	cmp	rcx, rdx
	jb	.label_255
.label_253:
	ret	
	.section	.text
	.align	16
	#Procedure 0x40445d
	.globl sub_40445d
	.type sub_40445d, @function
sub_40445d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404460
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
	#Procedure 0x404476
	.globl sub_404476
	.type sub_404476, @function
sub_404476:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404480

	.globl make_timespec
	.type make_timespec, @function
make_timespec:
	mov	rax, rdi
	mov	rdx, rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x404487
	.globl sub_404487
	.type sub_404487, @function
sub_404487:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404490
	.globl rotl32
	.type rotl32, @function
rotl32:

	mov	ecx, esi
	rol	edi, cl
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x404497
	.globl sub_404497
	.type sub_404497, @function
sub_404497:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044a0

	.globl any_non_remote_file
	.type any_non_remote_file, @function
any_non_remote_file:
	test	rsi, rsi
	je	.label_257
	add	rdi, 0x38
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_259:
	cmp	dword ptr [rdi], 0
	js	.label_258
	mov	al, 1
	cmp	byte ptr [rdi - 3], 0
	je	.label_260
.label_258:
	inc	rcx
	add	rdi, 0x60
	cmp	rcx, rsi
	jb	.label_259
.label_257:
	xor	eax, eax
.label_260:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4044cc
	.globl sub_4044cc
	.type sub_4044cc, @function
sub_4044cc:

	nop	dword ptr [rax]
.label_262:
	mov	r15, qword ptr [rbx]
.label_261:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4044e2

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
	je	.label_261
	test	rbx, rbx
	je	.label_261
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_263:
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	je	.label_262
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_262
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_263
	jmp	.label_261
	.section	.text
	.align	16
	#Procedure 0x404530

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
	mov	esi, OFFSET FLAT:label_268
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [r15]
	test	rbx, rbx
	je	.label_266
	xor	r12d, r12d
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_270:
	test	rbp, rbp
	je	.label_264
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_269
.label_264:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_267
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_271
	.section	.text
	.align	16
	#Procedure 0x4045c3
	.globl sub_4045c3
	.type sub_4045c3, @function
sub_4045c3:

	nop	word ptr cs:[rax + rax]
.label_269:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_265
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_271:
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	jne	.label_270
.label_266:
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
	.align	16
	#Procedure 0x40462e
	.globl sub_40462e
	.type sub_40462e, @function
sub_40462e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404630

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	mov	rax, qword ptr [rdi + 0x58]
	mov	rdx, qword ptr [rdi + 0x60]
	ret	
	.section	.text
	.align	16
	#Procedure 0x404639
	.globl sub_404639
	.type sub_404639, @function
sub_404639:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404640

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	je	.label_272
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
.label_272:
	push	rax
	mov	edi, 0x10
	call	malloc
	add	rsp, 8
	ret	
	.section	.text
	.align	16
	#Procedure 0x404662
	.globl sub_404662
	.type sub_404662, @function
sub_404662:

	nop	word ptr cs:[rax + rax]
.label_283:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_273
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
	#Procedure 0x4046a8
	.globl sub_4046a8
	.type sub_4046a8, @function
sub_4046a8:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046b1

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_283
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_286
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
	mov	edi, 1
	mov	edx, 0xa
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_280
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
	mov	esi, OFFSET FLAT:label_279
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, 0xa
	mov	ecx, 5
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_275
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_278
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
	mov	esi, OFFSET FLAT:label_281
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_276
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_277
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_274
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
	#Procedure 0x404870
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
	#Procedure 0x4048e2
	.globl sub_4048e2
	.type sub_4048e2, @function
sub_4048e2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048f0

	.globl valid_file_spec
	.type valid_file_spec, @function
valid_file_spec:
	cmp	dword ptr [rdi + 0x38], -1
	sete	cl
	cmp	dword ptr [rdi + 0x3c], 0
	sete	al
	xor	al, cl
	ret	
	.section	.text
	.align	16
	#Procedure 0x404901
	.globl sub_404901
	.type sub_404901, @function
sub_404901:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404910

	.globl wd_hasher
	.type wd_hasher, @function
wd_hasher:
	movsxd	rax, dword ptr [rdi + 0x44]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40491d
	.globl sub_40491d
	.type sub_40491d, @function
sub_40491d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404920

	.globl cl_strtod
	.type cl_strtod, @function
cl_strtod:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsp]
	call	strtod
	mov	rax, qword ptr [rsp]
	cmp	byte ptr [rax], 0
	je	.label_288
	movsd	qword ptr [rsp + 8], xmm0
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	lea	rsi, [rsp + 0x10]
	mov	rdi, rbx
	call	c_strtod
	mov	rax, qword ptr [rsp + 0x10]
	cmp	qword ptr [rsp], rax
	jae	.label_287
	mov	qword ptr [rsp], rax
	jmp	.label_288
.label_287:
	mov	dword ptr [r15], ebp
	movsd	xmm0, qword ptr [rsp + 8]
.label_288:
	test	r14, r14
	je	.label_289
	mov	rax, qword ptr [rsp]
	mov	qword ptr [r14], rax
.label_289:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404991
	.globl sub_404991
	.type sub_404991, @function
sub_404991:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049a0

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
	jae	.label_295
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_292:
	cmp	qword ptr [r15], 0
	je	.label_291
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	je	.label_294
	nop	word ptr cs:[rax + rax]
.label_298:
	mov	r13, qword ptr [rbx]
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rax], 0
	je	.label_299
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	jmp	.label_290
	.section	.text
	.align	16
	#Procedure 0x404a16
	.globl sub_404a16
	.type sub_404a16, @function
sub_404a16:

	nop	word ptr cs:[rax + rax]
.label_299:
	mov	qword ptr [rax], r13
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	free_entry
.label_290:
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_298
.label_294:
	mov	r13, qword ptr [r15]
	mov	qword ptr [r15 + 8], 0
	test	r12b, r12b
	mov	rbp, qword ptr [rsp]
	jne	.label_291
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbx, rax
	cmp	qword ptr [rbx], 0
	je	.label_293
	mov	rdi, r14
	call	allocate_entry
	test	rax, rax
	je	.label_296
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbx + 8], rax
	jmp	.label_297
.label_293:
	mov	qword ptr [rbx], r13
	inc	qword ptr [r14 + 0x18]
.label_297:
	mov	qword ptr [r15], 0
	dec	qword ptr [rbp + 0x18]
.label_291:
	add	r15, 0x10
	cmp	r15, qword ptr [rbp + 8]
	jb	.label_292
	mov	al, 1
.label_295:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_296:
	xor	eax, eax
	jmp	.label_295
	.section	.text
	.align	16
	#Procedure 0x404ab5
	.globl sub_404ab5
	.type sub_404ab5, @function
sub_404ab5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ac0

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	mov	ecx, esi
	ror	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ac9
	.globl sub_404ac9
	.type sub_404ac9, @function
sub_404ac9:

	nop	dword ptr [rax]
.label_302:
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ad4
	.globl sub_404ad4
	.type sub_404ad4, @function
sub_404ad4:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ad9

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_303:
	cmp	byte ptr [rdi + 1], 0x2f
	lea	rdi, [rdi + 1]
	je	.label_303
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_300
	.section	.text
	.align	16
	#Procedure 0x404afa
	.globl sub_404afa
	.type sub_404afa, @function
sub_404afa:

	nop	word ptr cs:[rax + rax]
.label_301:
	inc	rax
	mov	sil, dl
.label_300:
	movzx	ecx, byte ptr [rax]
	mov	dl, 1
	cmp	cl, 0x2f
	je	.label_301
	test	cl, cl
	je	.label_302
	mov	edx, esi
	and	dl, 1
	je	.label_304
	xor	esi, esi
.label_304:
	test	dl, dl
	cmovne	rdi, rax
	mov	edx, esi
	jmp	.label_301
	.section	.text
	.align	16
	#Procedure 0x404b30

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
	#Procedure 0x404b5d
	.globl sub_404b5d
	.type sub_404b5d, @function
sub_404b5d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404b60
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
	#Procedure 0x404b73
	.globl sub_404b73
	.type sub_404b73, @function
sub_404b73:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b80

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	.section	.text
	.align	16
	#Procedure 0x404b85
	.globl sub_404b85
	.type sub_404b85, @function
sub_404b85:

	nop	word ptr cs:[rax + rax]
.label_308:
	mov	esi, OFFSET FLAT:label_305
.label_307:
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
	.align	16
	#Procedure 0x404be3

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
	je	.label_308
	mov	esi, OFFSET FLAT:label_306
	jmp	.label_307
	.section	.text
	.align	16
	#Procedure 0x404c00
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c03
	.globl sub_404c03
	.type sub_404c03, @function
sub_404c03:

	nop	word ptr cs:[rax + rax]
.label_311:
	xor	eax, eax
	jmp	.label_309
	.section	.text
	.align	16
	#Procedure 0x404c14
	.globl sub_404c14
	.type sub_404c14, @function
sub_404c14:

	nop	word ptr cs:[rax + rax]
.label_309:
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c1f
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_311
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_310]]
	.section	.text
	.align	16
	#Procedure 0x404c30
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_312
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_314:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_314
.label_312:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_315
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_316]], OFFSET FLAT:slot0
.label_315:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_313
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_313:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404cc1
	.globl sub_404cc1
	.type sub_404cc1, @function
sub_404cc1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404cd0

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
	#Procedure 0x404d09
	.globl sub_404d09
	.type sub_404d09, @function
sub_404d09:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404d10

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
	#Procedure 0x404d21
	.globl sub_404d21
	.type sub_404d21, @function
sub_404d21:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d30
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
	#Procedure 0x404d44
	.globl sub_404d44
	.type sub_404d44, @function
sub_404d44:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d50

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
	je	.label_319
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_317
	jmp	.label_318
.label_319:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_318
.label_317:
	mov	eax, 1
	test	bpl, bpl
	je	.label_318
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
.label_318:
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
	#Procedure 0x404dd8
	.globl sub_404dd8
	.type sub_404dd8, @function
sub_404dd8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404de0

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
	je	.label_320
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_322
	jmp	.label_321
.label_320:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_321
.label_322:
	mov	eax, 1
	test	bpl, bpl
	je	.label_321
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
.label_321:
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
	#Procedure 0x404e59
	.globl sub_404e59
	.type sub_404e59, @function
sub_404e59:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404e60

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
	je	.label_325
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_324
	jmp	.label_323
.label_325:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_323
.label_324:
	mov	eax, 1
	test	bpl, bpl
	je	.label_323
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
.label_323:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ec3
	.globl sub_404ec3
	.type sub_404ec3, @function
sub_404ec3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ed0

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
	je	.label_328
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_326
	jmp	.label_327
.label_328:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_327
.label_326:
	mov	eax, 1
	test	bpl, bpl
	je	.label_327
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_327:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404f2f
	.globl sub_404f2f
	.type sub_404f2f, @function
sub_404f2f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404f30

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
	je	.label_329
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_331
	jmp	.label_330
.label_329:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_330
.label_331:
	mov	eax, 1
	test	bpl, bpl
	je	.label_330
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_330:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404f79
	.globl sub_404f79
	.type sub_404f79, @function
sub_404f79:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404f80

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
	je	.label_334
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_333
	jmp	.label_332
.label_334:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_332
.label_333:
	mov	eax, 1
	test	bpl, bpl
	je	.label_332
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_332:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404fc5
	.globl sub_404fc5
	.type sub_404fc5, @function
sub_404fc5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fd0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_336
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_337
	jmp	.label_335
.label_336:
	mov	eax, 1
	test	cl, cl
	je	.label_335
.label_337:
	xor	eax, eax
.label_335:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404fff
	.globl sub_404fff
	.type sub_404fff, @function
sub_404fff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405000

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
.label_369:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_375
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_380]]
.label_1163:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_386
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_103
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_1164:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_401
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_401
	xor	r14d, r14d
.label_410:
	cmp	r14, r11
	jae	.label_407
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_407:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_410
.label_401:
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
	jmp	.label_408
.label_1156:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_408
.label_1159:
	mov	al, 1
.label_1157:
	mov	r12b, 1
.label_1160:
	test	r12b, 1
	mov	cl, 1
	je	.label_429
	mov	ecx, eax
.label_429:
	mov	al, cl
.label_1158:
	test	r12b, 1
	jne	.label_432
	test	r11, r11
	je	.label_434
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_434:
	mov	r14d, 1
	jmp	.label_438
.label_432:
	xor	r14d, r14d
.label_438:
	mov	ecx, OFFSET FLAT:label_103
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_408
.label_1161:
	test	r12b, 1
	jne	.label_446
	test	r11, r11
	je	.label_338
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_338:
	mov	r14d, 1
	jmp	.label_449
.label_1162:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_102
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_408
.label_446:
	xor	r14d, r14d
.label_449:
	mov	eax, OFFSET FLAT:label_102
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_408:
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
	jmp	.label_444
	.section	.text
	.align	16
	#Procedure 0x4052dc
	.globl sub_4052dc
	.type sub_4052dc, @function
sub_4052dc:

	nop	dword ptr [rax]
.label_411:
	inc	rsi
.label_444:
	cmp	rbp, -1
	je	.label_391
	cmp	rsi, rbp
	jne	.label_422
	jmp	.label_396
	.section	.text
	.align	16
	#Procedure 0x4052f3
	.globl sub_4052f3
	.type sub_4052f3, @function
sub_4052f3:

	nop	word ptr cs:[rax + rax]
.label_391:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_396
.label_422:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_403
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_405
	cmp	rbp, -1
	jne	.label_405
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
.label_405:
	cmp	rbx, rbp
	jbe	.label_417
.label_403:
	xor	r8d, r8d
.label_377:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_418
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_421]]
.label_995:
	test	rsi, rsi
	jne	.label_414
	jmp	.label_347
	.section	.text
	.align	16
	#Procedure 0x40538e
	.globl sub_40538e
	.type sub_40538e, @function
sub_40538e:

	nop	
.label_417:
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
	jne	.label_436
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_377
	jmp	.label_354
.label_436:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_377
.label_999:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_342
	test	rsi, rsi
	jne	.label_344
	cmp	rbp, 1
	je	.label_347
	xor	r13d, r13d
	jmp	.label_343
.label_988:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_350
	cmp	byte ptr [rsp + 7], 0
	jne	.label_351
	cmp	r12d, 2
	jne	.label_341
	mov	eax, r9d
	and	al, 1
	jne	.label_341
	cmp	r14, r11
	jae	.label_390
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_390:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_358
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_358:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_363
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_363:
	add	r14, 3
	mov	r9b, 1
.label_341:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_368
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_368:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_374
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_374
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_374
	cmp	r14, r11
	jae	.label_387
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_387:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_395
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_395:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_343
.label_989:
	mov	bl, 0x62
	jmp	.label_399
.label_990:
	mov	cl, 0x74
	jmp	.label_402
.label_991:
	mov	bl, 0x76
	jmp	.label_399
.label_992:
	mov	bl, 0x66
	jmp	.label_399
.label_993:
	mov	cl, 0x72
	jmp	.label_402
.label_996:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_406
	cmp	byte ptr [rsp + 7], 0
	jne	.label_351
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
	jae	.label_413
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_413:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_423
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_423:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_426
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_426:
	add	r14, 3
	xor	r9d, r9d
.label_406:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_343
.label_997:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_435
	cmp	r12d, 2
	jne	.label_414
	cmp	byte ptr [rsp + 7], 0
	je	.label_414
	jmp	.label_351
.label_998:
	cmp	r12d, 2
	jne	.label_398
	cmp	byte ptr [rsp + 7], 0
	jne	.label_351
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_367
.label_418:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_441
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
.label_361:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_364
	test	r8b, r8b
	je	.label_364
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_343
.label_342:
	test	rsi, rsi
	jne	.label_370
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_370
.label_347:
	mov	dl, 1
.label_994:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_351
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_343:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_381
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_384
	jmp	.label_388
	.section	.text
	.align	16
	#Procedure 0x4056d4
	.globl sub_4056d4
	.type sub_4056d4, @function
sub_4056d4:

	nop	word ptr cs:[rax + rax]
.label_381:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_388
.label_384:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_392
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_367
	jmp	.label_382
	.section	.text
	.align	16
	#Procedure 0x40571d
	.globl sub_40571d
	.type sub_40571d, @function
sub_40571d:

	nop	dword ptr [rax]
.label_388:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_382
	jmp	.label_367
.label_392:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_382
.label_350:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_411
	xor	r15d, r15d
	jmp	.label_414
.label_398:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_402
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_367
.label_402:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_351
.label_399:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_343
	nop	word ptr cs:[rax + rax]
.label_382:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_351
	cmp	r12d, 2
	jne	.label_430
	mov	eax, r9d
	and	al, 1
	jne	.label_430
	cmp	r14, r11
	jae	.label_433
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_433:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_353
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_353:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_440
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_440:
	add	r14, 3
	mov	r9b, 1
.label_430:
	cmp	r14, r11
	jae	.label_445
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_445:
	inc	r14
	jmp	.label_447
.label_441:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_450
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_450:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_415:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_357
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_360
	cmp	rbp, -2
	je	.label_397
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_372
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_400:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_416
	bt	rsi, rdx
	jb	.label_354
.label_416:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_400
.label_372:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_394
	xor	r13d, r13d
.label_394:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_415
	jmp	.label_361
.label_374:
	xor	r13d, r13d
	jmp	.label_343
.label_370:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_343
.label_435:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_414
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_414
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_414
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_352
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_371
	cmp	byte ptr [rsp + 7], 0
	jne	.label_351
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_427
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_427:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_443
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_443:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_437
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_437:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_439
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_439:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_343
.label_414:
	xor	eax, eax
.label_344:
	xor	r13d, r13d
	jmp	.label_343
.label_364:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_448
	.section	.text
	.align	16
	#Procedure 0x405a03
	.globl sub_405a03
	.type sub_405a03, @function
sub_405a03:

	nop	word ptr cs:[rax + rax]
.label_409:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_448:
	test	r8b, r8b
	je	.label_345
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_346
	cmp	r14, r11
	jae	.label_348
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_348:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_346
	.section	.text
	.align	16
	#Procedure 0x405a4c
	.globl sub_405a4c
	.type sub_405a4c, @function
sub_405a4c:

	nop	dword ptr [rax]
.label_345:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_354
	cmp	r12d, 2
	jne	.label_356
	mov	eax, r9d
	and	al, 1
	jne	.label_356
	cmp	r14, r11
	jae	.label_359
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_359:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_362
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_362:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_366
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_366:
	add	r14, 3
	mov	r9b, 1
.label_356:
	cmp	r14, r11
	jae	.label_442
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_442:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_378
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_378:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_385
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_385:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_346:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_367
	test	r9b, 1
	je	.label_340
	mov	ebx, eax
	and	bl, 1
	jne	.label_340
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_404
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_404:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_373
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_373:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_340:
	cmp	r14, r11
	jae	.label_409
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_409
	.section	.text
	.align	16
	#Procedure 0x405b53
	.globl sub_405b53
	.type sub_405b53, @function
sub_405b53:

	nop	word ptr cs:[rax + rax]
.label_367:
	test	r9b, 1
	je	.label_419
	and	al, 1
	jne	.label_419
	cmp	r14, r11
	jae	.label_420
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_420:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_389
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_389:
	add	r14, 2
	xor	r9d, r9d
.label_419:
	mov	ebx, r15d
.label_447:
	cmp	r14, r11
	jae	.label_428
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_428:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_411
.label_360:
	xor	r13d, r13d
.label_357:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_361
.label_397:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_383
	mov	rsi, qword ptr [rsp + 0x50]
.label_425:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_424
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_425
	xor	r13d, r13d
	jmp	.label_361
.label_383:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_361
.label_424:
	xor	r13d, r13d
	jmp	.label_361
.label_352:
	xor	r13d, r13d
	jmp	.label_343
.label_371:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_343
	.section	.text
	.align	16
	#Procedure 0x405c28
	.globl sub_405c28
	.type sub_405c28, @function
sub_405c28:

	nop	dword ptr [rax + rax]
.label_396:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_349
	or	dl, al
	je	.label_354
.label_349:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_355
	or	dl, al
	jne	.label_355
	test	r10b, 1
	jne	.label_365
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_355
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_369
.label_355:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_376
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_379
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_379
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_393:
	cmp	r14, r11
	jae	.label_412
	mov	byte ptr [rcx + r14], al
.label_412:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_393
	jmp	.label_379
.label_351:
	mov	qword ptr [rsp + 0x20], rbp
.label_354:
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
.label_431:
	mov	r14, rax
.label_339:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_365:
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
	jmp	.label_431
.label_376:
	mov	rcx, qword ptr [rsp + 8]
.label_379:
	cmp	r14, r11
	jae	.label_339
	mov	byte ptr [rcx + r14], 0
	jmp	.label_339
.label_375:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405dbc
	.globl sub_405dbc
	.type sub_405dbc, @function
sub_405dbc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405dc0

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
	#Procedure 0x405dd4
	.globl sub_405dd4
	.type sub_405dd4, @function
sub_405dd4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405de0

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
	je	.label_463
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	jne	.label_454
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_464
	cvtsi2ss	xmm0, rax
	jmp	.label_459
.label_464:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_459:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_453
	cvtsi2ss	xmm1, rcx
	jmp	.label_456
.label_453:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_456:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jbe	.label_454
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_452
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	jmp	.label_455
.label_452:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_455:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_460
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_451
.label_460:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_451:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_454
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	jne	.label_457
	mulss	xmm0, dword ptr [rcx + 8]
.label_457:
	movss	xmm1,  dword ptr [dword ptr [rip + label_462]]
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
	jne	.label_454
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_458
	nop	dword ptr [rax + rax]
.label_461:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_461
.label_458:
	mov	qword ptr [r15 + 0x48], 0
.label_454:
	mov	rax, r14
.label_463:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x405f66
	.globl sub_405f66
	.type sub_405f66, @function
sub_405f66:

	nop	word ptr cs:[rax + rax]
.label_465:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x405f7e
	.globl sub_405f7e
	.type sub_405f7e, @function
sub_405f7e:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f87

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_465
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_467
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_465
.label_467:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_465
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_466
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_466:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_468:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405ff5
	.globl sub_405ff5
	.type sub_405ff5, @function
sub_405ff5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406003

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
	je	.label_468
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
	.align	16
	#Procedure 0x406050

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	ret	
	.section	.text
	.align	16
	#Procedure 0x406055
	.globl sub_406055
	.type sub_406055, @function
sub_406055:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406060
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_469:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_469
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x406081
	.globl sub_406081
	.type sub_406081, @function
sub_406081:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406090
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_470
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_470:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4060ae
	.globl sub_4060ae
	.type sub_4060ae, @function
sub_4060ae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4060b0

	.globl xset_binary_mode
	.type xset_binary_mode, @function
xset_binary_mode:
	jmp	set_binary_mode
	.section	.text
	.align	16
	#Procedure 0x4060b5
	.globl sub_4060b5
	.type sub_4060b5, @function
sub_4060b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060c0
	.globl __gl_setmode_check
	.type __gl_setmode_check, @function
__gl_setmode_check:

	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4060c3
	.globl sub_4060c3
	.type sub_4060c3, @function
sub_4060c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060d0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4060d8
	.globl sub_4060d8
	.type sub_4060d8, @function
sub_4060d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060e0
	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:

	mov	rax, qword ptr [rdi + 0x48]
	mov	rdx, qword ptr [rdi + 0x50]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4060e9
	.globl sub_4060e9
	.type sub_4060e9, @function
sub_4060e9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4060f0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4060fa
	.globl sub_4060fa
	.type sub_4060fa, @function
sub_4060fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406100

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	je	.label_471
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_472]]
	jbe	.label_473
	movss	xmm1,  dword ptr [dword ptr [rip + label_476]]
	ucomiss	xmm1, xmm0
	jbe	.label_473
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_475]]
	jbe	.label_473
	movss	xmm1, dword ptr [rcx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_473
	addss	xmm1,  dword ptr [dword ptr [rip + label_472]]
	ucomiss	xmm0, xmm1
	jbe	.label_473
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_474]]
	ucomiss	xmm2, xmm0
	jb	.label_473
	ucomiss	xmm0, xmm1
	ja	.label_471
.label_473:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_471:
	ret	
	.section	.text
	.align	16
	#Procedure 0x406174
	.globl sub_406174
	.type sub_406174, @function
sub_406174:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406180

	.globl tail_forever_inotify
	.type tail_forever_inotify, @function
tail_forever_inotify:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x148
	movsd	qword ptr [rsp + 0x28], xmm0
	mov	r12, rdx
	mov	qword ptr [rsp + 0x38], rsi
	mov	dword ptr [rsp + 0xc], edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:wd_hasher
	mov	ecx, OFFSET FLAT:wd_comparator
	xor	r8d, r8d
	mov	rdi, r12
	call	hash_initialize
	mov	qword ptr [rsp + 0x10], rax
	test	rax, rax
	je	.label_510
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	mov	eax, 0xc06
	mov	r13d, 2
	cmove	r13d, eax
	test	r12, r12
	mov	dword ptr [rsp + 0x4c], r13d
	je	.label_541
	mov	rbp, qword ptr [rsp + 0x38]
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	r15d, r15d
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_528:
	cmp	byte ptr [rbp + 0x34], 0
	jne	.label_479
	mov	rdi, qword ptr [rbp]
	call	strlen
	cmp	r15, rax
	cmovb	r15, rax
	mov	dword ptr [rbp + 0x44], 0xffffffff
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	jne	.label_484
	mov	qword ptr [rsp + 0x40], r15
	mov	r13, r12
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	dir_len
	mov	r15, rax
	movzx	r12d, byte ptr [rbx + r15]
	mov	rdi, rbx
	call	last_component
	sub	rax, rbx
	mov	qword ptr [rbp + 0x50], rax
	mov	rax, qword ptr [rbp]
	mov	byte ptr [rax + r15], 0
	test	r15, r15
	mov	esi, OFFSET FLAT:label_493
	je	.label_494
	mov	rsi, qword ptr [rbp]
.label_494:
	mov	edx, 0x784
	mov	edi, dword ptr [rsp + 0xc]
	call	inotify_add_watch
	mov	dword ptr [rbp + 0x48], eax
	mov	rax, qword ptr [rbp]
	mov	byte ptr [rax + r15], r12b
	cmp	dword ptr [rbp + 0x48], 0
	mov	r12, r13
	mov	r13d, dword ptr [rsp + 0x4c]
	mov	r15, qword ptr [rsp + 0x40]
	js	.label_501
.label_484:
	mov	rsi, qword ptr [rbp]
	mov	edi, dword ptr [rsp + 0xc]
	mov	edx, r13d
	call	inotify_add_watch
	mov	dword ptr [rbp + 0x44], eax
	test	eax, eax
	js	.label_508
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	call	hash_insert
	mov	cl, 1
	mov	qword ptr [rsp + 0x18], rcx
	test	rax, rax
	jne	.label_479
	jmp	.label_510
.label_508:
	cmp	dword ptr [rbp + 0x38], -1
	je	.label_511
	mov	al, 1
	mov	qword ptr [rsp + 0x30], rax
.label_511:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	eax, ebx
	or	eax, 0x10
	cmp	eax, 0x1c
	je	.label_514
	cmp	ebx, dword ptr [rbp + 0x3c]
	je	.label_479
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_517
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x40], r15
	mov	r15, rax
	mov	rsi, qword ptr [rbp]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r15
	mov	r15, qword ptr [rsp + 0x40]
	call	error
	nop	word ptr cs:[rax + rax]
.label_479:
	inc	r14
	add	rbp, 0x60
	cmp	r14, r12
	jb	.label_528
	mov	eax,  dword ptr [dword ptr [rip + follow_mode]]
	mov	rcx, qword ptr [rsp + 0x30]
	test	cl, 1
	je	.label_531
	cmp	eax, 2
	mov	rcx, qword ptr [rsp + 0x18]
	je	.label_525
	jmp	.label_533
.label_541:
	mov	eax,  dword ptr [dword ptr [rip + follow_mode]]
	xor	ecx, ecx
	xor	r15d, r15d
	jmp	.label_533
.label_531:
	mov	rcx, qword ptr [rsp + 0x18]
.label_533:
	test	cl, 1
	jne	.label_537
	cmp	eax, 2
	jne	.label_537
	xor	ebx, ebx
	jmp	.label_515
.label_537:
	mov	r14, r15
	lea	rax, [r12 + r12*2]
	shl	rax, 5
	mov	rcx, qword ptr [rsp + 0x38]
	lea	rax, [rcx + rax - 0x60]
	mov	qword ptr [rsp + 0x68], rax
	test	r12, r12
	je	.label_538
	xor	ebx, ebx
	lea	r15, [rsp + 0x68]
	mov	rbp, qword ptr [rsp + 0x38]
	nop	word ptr cs:[rax + rax]
.label_490:
	cmp	byte ptr [rbp + 0x34], 0
	jne	.label_544
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	jne	.label_545
	xor	esi, esi
	mov	rdi, rbp
	call	recheck
	jmp	.label_481
.label_545:
	cmp	dword ptr [rbp + 0x38], -1
	je	.label_481
	mov	rdi, qword ptr [rbp]
	lea	rsi, [rsp + 0xb8]
	call	stat
	test	eax, eax
	jne	.label_481
	mov	rax, qword ptr [rbp + 0x20]
	cmp	rax, qword ptr [rsp + 0xb8]
	jne	.label_483
	mov	rax, qword ptr [rbp + 0x28]
	cmp	rax, qword ptr [rsp + 0xc0]
	jne	.label_483
	nop	word ptr [rax + rax]
.label_481:
	mov	rdi, rbp
	mov	rsi, r15
	call	check_fspec
.label_544:
	inc	rbx
	add	rbp, 0x60
	cmp	rbx, r12
	jb	.label_490
.label_538:
	mov	rdi, r14
	add	rdi, 0x11
	mov	qword ptr [rsp + 0x40], rdi
	call	xmalloc
	mov	r15, rax
	mov	edx, dword ptr [rsp + 0xc]
	mov	eax, edx
	sar	eax, 0x1f
	shr	eax, 0x1a
	add	eax, edx
	and	eax, 0xc0
	mov	ecx, edx
	sub	ecx, eax
	mov	eax, 1
	shl	rax, cl
	mov	qword ptr [rsp + 0xb0], rax
	movsxd	rax, edx
	mov	qword ptr [rsp + 0xa8], rax
	test	edx, edx
	mov	eax, 1
	cmovg	eax, edx
	inc	eax
	mov	dword ptr [rsp + 0x5c], eax
	movsd	xmm1, qword ptr [rsp + 0x28]
	cvttsd2si	rax, xmm1
	mov	qword ptr [rsp + 0x90], rax
	cvtsi2sd	xmm0, rax
	subsd	xmm1, xmm0
	mulsd	xmm1,  qword ptr [word ptr [rip + label_495]]
	cvttsd2si	rax, xmm1
	mov	qword ptr [rsp + 0x88], rax
	mov	rax, qword ptr [rsp + 0x38]
	lea	rcx, [rax + 0x48]
	mov	qword ptr [rsp + 0xa0], rcx
	lea	rax, [rax + 0x50]
	mov	qword ptr [rsp + 0x98], rax
	mov	ebp, 3
	mov	eax, 0
	mov	qword ptr [rsp + 0x50], rax
	xor	ebx, ebx
	xor	r13d, r13d
	jmp	.label_496
.label_501:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x1c
	jne	.label_504
.label_514:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_516
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_525
.label_504:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_526
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rsi, qword ptr [rbp]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r14
	call	error
.label_525:
	mov	rdi, qword ptr [rsp + 0x10]
	call	hash_free
	jmp	.label_518
.label_483:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_535
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rdi, rbp
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r15
	call	error
	mov	rdi, qword ptr [rsp + 0x10]
	call	hash_free
	mov	dword ptr [rbx], 0
	jmp	.label_520
.label_492:
	xor	esi, esi
	mov	rdi, r14
	call	recheck
	nop	dword ptr [rax + rax]
.label_496:
	mov	qword ptr [rsp + 0x28], rbx
	mov	ebx, ebp
	jmp	.label_546
.label_543:
	mov	rsi, qword ptr [rsp + 0x40]
	add	rsi, rsi
	mov	rdi, r15
	mov	qword ptr [rsp + 0x40], rsi
	call	xrealloc
	mov	r15, rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	nop	
.label_546:
	mov	ebp, ebx
	mov	qword ptr [rsp + 0x60], r15
.label_499:
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	jne	.label_485
	mov	al,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	test	al, al
	jne	.label_485
	mov	rdi, qword ptr [rsp + 0x10]
	call	hash_get_n_entries
	test	rax, rax
	je	.label_488
.label_485:
	mov	qword ptr [rsp + 0x30], rbp
	mov	rbp, qword ptr [rsp + 0x50]
	mov	rbx, qword ptr [rsp + 0x28]
	cmp	rbp, rbx
	lea	r14, [rsp + 0xb8]
	ja	.label_491
.label_529:
	mov	edi,  dword ptr [dword ptr [rip + pid]]
	test	edi, edi
	je	.label_503
	test	r13b, 1
	jne	.label_497
	xor	r13d, r13d
	xor	esi, esi
	call	kill
	test	eax, eax
	je	.label_502
	call	__errno_location
	cmp	dword ptr [rax], 1
	setne	r13b
	je	.label_502
	xorpd	xmm0, xmm0
	movapd	xmmword ptr [rsp + 0x70], xmm0
	jmp	.label_503
	.section	.text
	.align	16
	#Procedure 0x4066a9
	.globl sub_4066a9
	.type sub_4066a9, @function
sub_4066a9:

	nop	dword ptr [rax]
.label_502:
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 0x70], rax
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x78], rax
.label_503:
	xor	eax, eax
	mov	ecx, 0x10
	mov	rdi, r14
	cld	
	rep stosq	qword ptr [rdi], rax
	mov	rdi, qword ptr [rsp + 0xa8]
	call	__fdelt_chk
	mov	rcx, qword ptr [rsp + 0xb0]
	or	qword ptr [rsp + rax*8 + 0xb8], rcx
	cmp	byte ptr [byte ptr [rip + monitor_output]],  0
	je	.label_512
	mov	edi, 1
	call	__fdelt_chk
	or	byte ptr [rsp + rax*8 + 0xb8], 2
.label_512:
	cmp	dword ptr [dword ptr [rip + pid]],  0
	mov	r8d, 0
	lea	rax, [rsp + 0x70]
	cmovne	r8, rax
	xor	edx, edx
	xor	ecx, ecx
	mov	edi, dword ptr [rsp + 0x5c]
	mov	rsi, r14
	call	select
	test	eax, eax
	jne	.label_522
	cmp	rbp, rbx
	jbe	.label_529
	jmp	.label_491
	.section	.text
	.align	16
	#Procedure 0x406748
	.globl sub_406748
	.type sub_406748, @function
sub_406748:

	nop	dword ptr [rax + rax]
.label_522:
	cmp	eax, -1
	je	.label_507
	mov	edi, 1
	call	__fdelt_chk
	test	byte ptr [rsp + rax*8 + 0xb8], 2
	jne	.label_532
	cmp	rbp, rbx
	ja	.label_491
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x40]
	call	safe_read
	mov	rbp, rax
	test	rbp, rbp
	je	.label_534
	cmp	rbp, -1
	jne	.label_536
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_519
.label_534:
	mov	rax, qword ptr [rsp + 0x30]
	lea	ebx, [rax - 1]
	test	eax, eax
	jne	.label_543
	mov	eax, ebx
	mov	qword ptr [rsp + 0x30], rax
.label_536:
	mov	rax, rbp
	inc	rax
	cmp	rax, 1
	mov	ebx, 0
	jbe	.label_519
.label_491:
	lea	rax, [r15 + rbx]
	mov	qword ptr [rsp + 0x18], rax
	mov	eax, dword ptr [r15 + rbx + 0xc]
	test	byte ptr [r15 + rbx + 5], 4
	je	.label_542
	test	eax, eax
	jne	.label_542
	test	r12, r12
	je	.label_542
	mov	rcx, qword ptr [rsp + 0x18]
	mov	ecx, dword ptr [rcx]
	mov	rdx, qword ptr [rsp + 0xa0]
	xor	esi, esi
	nop	
.label_478:
	cmp	ecx, dword ptr [rdx]
	je	.label_477
	inc	rsi
	add	rdx, 0x60
	cmp	rsi, r12
	jb	.label_478
.label_542:
	mov	qword ptr [rsp + 0x50], rbp
	lea	rbx, [rbx + rax + 0x10]
	mov	rax, qword ptr [rsp + 0x18]
	cmp	dword ptr [rax + 0xc], 0
	je	.label_482
	mov	qword ptr [rsp + 0x28], rbx
	mov	dword ptr [rsp + 0x24], r13d
	test	r12, r12
	mov	ebx, 0
	je	.label_486
	mov	rax, qword ptr [rsp + 0x18]
	lea	r14, [rax + 0x10]
	mov	ebp, dword ptr [rax]
	mov	r15, qword ptr [rsp + 0x98]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_498:
	cmp	dword ptr [r15 - 8], ebp
	jne	.label_500
	mov	rsi, qword ptr [r15 - 0x50]
	add	rsi, qword ptr [r15]
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_486
.label_500:
	inc	rbx
	add	r15, 0x60
	cmp	rbx, r12
	jb	.label_498
.label_486:
	cmp	rbx, r12
	mov	r15, qword ptr [rsp + 0x60]
	mov	r13d, dword ptr [rsp + 0x24]
	mov	rbp, qword ptr [rsp + 0x30]
	je	.label_499
	lea	r13, [rbx + rbx*2]
	shl	r13, 5
	mov	rax, qword ptr [rsp + 0x38]
	lea	r14, [rax + r13]
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebx, dword ptr [rax + 4]
	mov	eax, 0x200
	and	ebx, eax
	jne	.label_506
	mov	rsi, qword ptr [r14]
	mov	edi, dword ptr [rsp + 0xc]
	mov	edx, dword ptr [rsp + 0x4c]
	call	inotify_add_watch
	mov	ecx, eax
	test	ebx, ebx
	sete	al
	test	ecx, ecx
	jns	.label_509
	test	al, al
	je	.label_509
	mov	dword ptr [rsp + 0x58], ecx
	mov	rbx, r14
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	eax, r14d
	or	eax, 0x10
	xor	edi, edi
	cmp	eax, 0x1c
	je	.label_513
	mov	esi, OFFSET FLAT:label_517
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [rbx]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	r14, rbx
	mov	rdx, rbp
	call	error
	mov	r15, qword ptr [rsp + 0x60]
	mov	rbp, qword ptr [rsp + 0x30]
	mov	ecx, dword ptr [rsp + 0x58]
.label_509:
	mov	rax, qword ptr [rsp + 0x38]
	mov	esi, dword ptr [rax + r13 + 0x44]
	test	esi, esi
	js	.label_527
	cmp	ecx, esi
	je	.label_506
.label_527:
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rax + r13 + 0x44]
	test	esi, esi
	js	.label_530
	mov	edi, dword ptr [rsp + 0xc]
	mov	r13d, ecx
	call	inotify_rm_watch
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r14
	call	hash_delete
	mov	ecx, r13d
.label_530:
	mov	dword ptr [rbx], ecx
	cmp	ecx, -1
	mov	r13d, dword ptr [rsp + 0x24]
	mov	rbx, qword ptr [rsp + 0x28]
	je	.label_496
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r14
	call	hash_delete
	mov	rbx, rax
	test	rbx, rbx
	je	.label_539
	cmp	rbx, r14
	je	.label_539
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	jne	.label_540
	xor	esi, esi
	mov	rdi, rbx
	call	recheck
.label_540:
	mov	dword ptr [rbx + 0x44], 0xffffffff
	mov	r13d, dword ptr [rbx + 0x38]
	mov	rdi, rbx
	call	pretty_name
	mov	edi, r13d
	mov	rsi, rax
	call	close_fd
.label_539:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r14
	call	hash_insert
	test	rax, rax
	je	.label_547
.label_506:
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	jne	.label_548
	xor	esi, esi
	mov	rdi, r14
	call	recheck
.label_548:
	mov	r13d, dword ptr [rsp + 0x24]
	mov	rbx, qword ptr [rsp + 0x28]
	jmp	.label_480
.label_482:
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0xfc], eax
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r14
	call	hash_lookup
	mov	r14, rax
	mov	rbp, qword ptr [rsp + 0x30]
.label_480:
	test	r14, r14
	je	.label_496
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 4]
	test	ax, 0xe04
	je	.label_489
	test	ah, 4
	je	.label_492
	mov	esi, dword ptr [r14 + 0x44]
	mov	edi, dword ptr [rsp + 0xc]
	call	inotify_rm_watch
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r14
	call	hash_delete
	jmp	.label_492
.label_489:
	mov	rdi, r14
	lea	rsi, [rsp + 0x68]
	call	check_fspec
	jmp	.label_496
.label_477:
	mov	rdi, qword ptr [rsp + 0x10]
	call	hash_free
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_505
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_518:
	call	__errno_location
	mov	dword ptr [rax], 0
.label_520:
	mov	bl, 1
.label_515:
	mov	eax, ebx
	add	rsp, 0x148
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_488:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_521
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_515
.label_513:
	mov	esi, OFFSET FLAT:label_516
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	rdi, qword ptr [rsp + 0x10]
	call	hash_free
	mov	dword ptr [rbp], 0
	jmp	.label_520
.label_510:
	call	xalloc_die
.label_507:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_523
	jmp	.label_524
.label_497:
	xor	edi, edi
	call	exit
.label_532:
	call	die_pipe
.label_519:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_487
.label_524:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_547:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406b89
	.globl sub_406b89
	.type sub_406b89, @function
sub_406b89:

	nop	dword ptr [rax]
.label_549:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406b96
	.globl sub_406b96
	.type sub_406b96, @function
sub_406b96:

	nop	dword ptr [rax]
.label_550:
	add	rcx, 0x10
.label_552:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_549
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_550
.label_551:
	ret	
	.section	.text
	.align	16
	#Procedure 0x406bb0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_551
	mov	rcx, qword ptr [rdi]
	jmp	.label_552
	.section	.text
	.align	16
	#Procedure 0x406bbe
	.globl sub_406bbe
	.type sub_406bbe, @function
sub_406bbe:

	nop	
.label_557:
	mov	rcx, qword ptr [rdx]
.label_556:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x406bce
	.globl sub_406bce
	.type sub_406bce, @function
sub_406bce:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406bd8
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
.label_555:
	cmp	qword ptr [rcx], rbx
	jne	.label_553
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_557
.label_553:
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_555
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	
.label_554:
	cmp	rax, rdx
	mov	ecx, 0
	jae	.label_556
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_554
	jmp	.label_556
	.section	.text
	.align	16
	#Procedure 0x406c30

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_566
	nop	
.label_565:
	mov	edi, OFFSET FLAT:label_558
	call	strcmp
	test	eax, eax
	je	.label_563
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_565
.label_563:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_558
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_568
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_561
	mov	ecx, OFFSET FLAT:label_562
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_559
	mov	esi, OFFSET FLAT:label_560
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_559
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_567
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_559:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_569
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_558
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_562
	mov	ecx, OFFSET FLAT:label_558
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_564
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_570
	mov	ecx, OFFSET FLAT:label_69
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
	#Procedure 0x406d4a
	.globl sub_406d4a
	.type sub_406d4a, @function
sub_406d4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d50

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_571
	ret	
.label_571:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	16
	#Procedure 0x406d63
	.globl sub_406d63
	.type sub_406d63, @function
sub_406d63:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d70

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
	je	.label_581
	lea	rdx, [rsp]
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	je	.label_580
	test	rbx, rbx
	je	.label_575
	mov	qword ptr [rbx], rax
	jmp	.label_575
.label_580:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_585
	cvtsi2ss	xmm0, rcx
	jmp	.label_573
.label_585:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_573:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_579
	cvtsi2ss	xmm1, rax
	jmp	.label_584
.label_579:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_584:
	mulss	xmm1, dword ptr [rcx + 8]
	ucomiss	xmm0, xmm1
	jbe	.label_578
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_577
	cvtsi2ss	xmm2, rcx
	jmp	.label_582
.label_577:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_582:
	mov	rcx, qword ptr [r15 + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_587
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_576
.label_587:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_576:
	movaps	xmm3, xmm1
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	jbe	.label_578
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_586
	mulss	xmm0, xmm1
.label_586:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_574]]
	jae	.label_575
	movss	xmm1,  dword ptr [dword ptr [rip + label_462]]
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
	je	.label_575
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	jne	.label_581
.label_578:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_583
	mov	rdi, r15
	call	allocate_entry
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_575
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx + 8], rax
	inc	qword ptr [r15 + 0x20]
	jmp	.label_572
.label_583:
	mov	qword ptr [rax], r14
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_572:
	mov	ebp, 1
.label_575:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_581:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406f42
	.globl sub_406f42
	.type sub_406f42, @function
sub_406f42:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f50

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_69
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_588
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406f75
	.globl sub_406f75
	.type sub_406f75, @function
sub_406f75:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f80
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	ecx, esi
	rol	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x406f89
	.globl sub_406f89
	.type sub_406f89, @function
sub_406f89:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406f90

	.globl close_fd
	.type close_fd, @function
close_fd:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	ebx, edi
	lea	eax, [rbx + 1]
	cmp	eax, 2
	jb	.label_589
	mov	edi, ebx
	call	close
	test	eax, eax
	je	.label_589
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_590
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
	mov	r8d, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	error
.label_589:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407002
	.globl sub_407002
	.type sub_407002, @function
sub_407002:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407010

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
	mov	rcx,  qword ptr [word ptr [rip + label_55]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_56]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_57]]
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
	#Procedure 0x40707d
	.globl sub_40707d
	.type sub_40707d, @function
sub_40707d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407080

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x40708d
	.globl sub_40708d
	.type sub_40708d, @function
sub_40708d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407090

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	16
	#Procedure 0x407097
	.globl sub_407097
	.type sub_407097, @function
sub_407097:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4070a0
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
	#Procedure 0x4070b4
	.globl sub_4070b4
	.type sub_4070b4, @function
sub_4070b4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4070c0

	.globl xwrite_stdout
	.type xwrite_stdout, @function
xwrite_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rsi
	test	rbx, rbx
	je	.label_591
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
	cmp	rax, rbx
	jb	.label_593
.label_591:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_593:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	clearerr_unlocked
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_592
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_65
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407140

	.globl die_pipe
	.type die_pipe, @function
die_pipe:
	push	rax
	mov	edi, 0xd
	call	raise
	mov	edi, 1
	call	exit
	.section	.text
	.align	16
	#Procedure 0x407155
	.globl sub_407155
	.type sub_407155, @function
sub_407155:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407160
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
	#Procedure 0x407174
	.globl sub_407174
	.type sub_407174, @function
sub_407174:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407180

	.globl tailable_stdin
	.type tailable_stdin, @function
tailable_stdin:
	test	rsi, rsi
	je	.label_594
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_596:
	cmp	byte ptr [rdi + 0x34], 0
	jne	.label_595
	mov	rdx, qword ptr [rdi]
	cmp	byte ptr [rdx], 0x2d
	jne	.label_595
	mov	al, 1
	cmp	byte ptr [rdx + 1], 0
	je	.label_597
	nop	word ptr cs:[rax + rax]
.label_595:
	inc	rcx
	add	rdi, 0x60
	cmp	rcx, rsi
	jb	.label_596
.label_594:
	xor	eax, eax
.label_597:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4071bf
	.globl sub_4071bf
	.type sub_4071bf, @function
sub_4071bf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4071c0

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
	je	.label_598
	mov	edx, OFFSET FLAT:label_608
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_614
.label_598:
	mov	edx, OFFSET FLAT:label_615
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_614:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_601
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
	mov	esi, OFFSET FLAT:label_616
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_603
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_604]]
.label_1115:
	add	rsp, 8
	jmp	.label_602
.label_603:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_611
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
	jmp	.label_602
.label_1116:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_599
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
.label_1117:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_612
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
.label_1118:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_609
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
.label_1119:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_606
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
	jmp	.label_602
.label_1120:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_605
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
	jmp	.label_602
.label_1121:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_607
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
	jmp	.label_602
.label_1122:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_610
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
	jmp	.label_602
.label_1124:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_613
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
	jmp	.label_602
.label_1123:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_600
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
.label_602:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x407518
	.globl sub_407518
	.type sub_407518, @function
sub_407518:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407520
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
	#Procedure 0x40752f
	.globl sub_40752f
	.type sub_40752f, @function
sub_40752f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x407530
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
	#Procedure 0x407543
	.globl sub_407543
	.type sub_407543, @function
sub_407543:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407550
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	mov	rax, -1
	mov	rdx, -1
	ret	
	.section	.text
	.align	16
	#Procedure 0x40755f
	.globl sub_40755f
	.type sub_40755f, @function
sub_40755f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x407560
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_617
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_617:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x407586
	.globl sub_407586
	.type sub_407586, @function
sub_407586:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407590

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_618
	test	rbx, rbx
	jne	.label_618
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_618:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_620
	test	rax, rax
	je	.label_619
.label_620:
	pop	rbx
	ret	
.label_619:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4075c0

	.globl ignore_fifo_and_pipe
	.type ignore_fifo_and_pipe, @function
ignore_fifo_and_pipe:
	xor	eax, eax
	test	rsi, rsi
	je	.label_621
	add	rdi, 0x38
	xor	eax, eax
	mov	ecx, 0xf000
	nop	word ptr cs:[rax + rax]
.label_623:
	mov	rdx, qword ptr [rdi - 0x38]
	cmp	byte ptr [rdx], 0x2d
	jne	.label_622
	cmp	byte ptr [rdx + 1], 0
	jne	.label_622
	cmp	byte ptr [rdi - 4], 0
	jne	.label_622
	cmp	dword ptr [rdi], 0
	js	.label_622
	mov	edx, dword ptr [rdi - 8]
	and	edx, ecx
	cmp	edx, 0x1000
	jne	.label_622
	mov	dword ptr [rdi], 0xffffffff
	mov	byte ptr [rdi - 4], 1
	jmp	.label_624
	.section	.text
	.align	16
	#Procedure 0x407613
	.globl sub_407613
	.type sub_407613, @function
sub_407613:

	nop	word ptr cs:[rax + rax]
.label_622:
	inc	rax
.label_624:
	add	rdi, 0x60
	dec	rsi
	jne	.label_623
.label_621:
	ret	
	.section	.text
	.align	16
	#Procedure 0x40762d
	.globl sub_40762d
	.type sub_40762d, @function
sub_40762d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407630

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
	je	.label_627
	cmp	rsi, r13
	je	.label_625
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_629
.label_625:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	je	.label_627
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_630
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_626
.label_630:
	mov	qword ptr [rbx], 0
	jmp	.label_627
.label_629:
	mov	rax, qword ptr [rbx + 8]
	xor	r15d, r15d
	test	rax, rax
	je	.label_627
	add	rbx, 8
	xor	r15d, r15d
	nop	
.label_631:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r13
	je	.label_628
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_628
	mov	rbx, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_631
	jmp	.label_627
.label_628:
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_627
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_626:
	mov	rdi, r14
	call	free_entry
.label_627:
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
	#Procedure 0x4076fa
	.globl sub_4076fa
	.type sub_4076fa, @function
sub_4076fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407700

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
	#Procedure 0x407718
	.globl sub_407718
	.type sub_407718, @function
sub_407718:

	nop	dword ptr [rax + rax]
.label_633:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_632
	mov	edx, 5
	jmp	dcgettext
	.section	.text
	.align	16
	#Procedure 0x407731
	.globl sub_407731
	.type sub_407731, @function
sub_407731:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40773e

	.globl pretty_name
	.type pretty_name, @function
pretty_name:
	mov	rax, qword ptr [rdi]
	cmp	byte ptr [rax], 0x2d
	jne	.label_634
	cmp	byte ptr [rax + 1], 0
	je	.label_633
.label_634:
	mov	rax, qword ptr [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x407750
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
	mov	edx, OFFSET FLAT:label_636
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, rbp
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_635
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_637]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_638]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_639]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_640
	mov	al, 1
	mov	rdi, r13
	mov	rcx, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_641
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
	#Procedure 0x40783c
	.globl sub_40783c
	.type sub_40783c, @function
sub_40783c:

	nop	dword ptr [rax]
.label_645:
	shr	rdi, 1
	or	rax, rdi
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_644:
	divss	xmm0, dword ptr [rsi + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_462]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rdi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rdi, rcx
	xor	eax, eax
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_574]]
	jae	.label_642
.label_643:
	push	rax
	call	next_prime
	mov	rcx, rax
	xor	eax, eax
	mov	rdx, rcx
	shr	rdx, 0x3c
	cmove	rax, rcx
	add	rsp, 8
.label_642:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4078a7
	.globl sub_4078a7
	.type sub_4078a7, @function
sub_4078a7:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4078a9

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_643
	mov	eax, edi
	and	eax, 1
	test	rdi, rdi
	js	.label_645
	cvtsi2ss	xmm0, rdi
	jmp	.label_644
	.section	.text
	.align	16
	#Procedure 0x4078c0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_648
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_647
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_647
.label_648:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_649
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_649:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_647:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_646
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_128
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_646:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_650
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407980
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
	je	.label_651
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	test	rbx, rbx
	jne	.label_652
	mov	byte ptr [r14 + rbx], 0x2e
	mov	ebx, 1
.label_652:
	mov	byte ptr [r14 + rbx], 0
	mov	rax, r14
.label_651:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4079d7
	.globl sub_4079d7
	.type sub_4079d7, @function
sub_4079d7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4079e0

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
	je	.label_653
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_653:
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x407a0c
	.globl sub_407a0c
	.type sub_407a0c, @function
sub_407a0c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407a10
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_654
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_655:
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
	jne	.label_655
.label_654:
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x407a43
	.globl sub_407a43
	.type sub_407a43, @function
sub_407a43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407a50
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_656
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_657
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_659
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_561
	mov	ecx, OFFSET FLAT:label_562
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_658
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x407ac4
	.globl sub_407ac4
	.type sub_407ac4, @function
sub_407ac4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ad0

	.globl xstrtod
	.type xstrtod, @function
xstrtod:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r13, rcx
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	lea	rsi, [rsp + 8]
	mov	rdi, rbx
	call	r13
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, rbx
	je	.label_660
	test	r15, r15
	jne	.label_662
	cmp	byte ptr [rax], 0
	je	.label_662
	xor	eax, eax
	jmp	.label_663
.label_662:
	mov	al, 1
	xorps	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jne	.label_664
	jnp	.label_661
.label_664:
	cmp	dword ptr [r12], 0x22
	setne	al
	jmp	.label_661
.label_660:
	xor	eax, eax
.label_661:
	test	r15, r15
	je	.label_663
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [r15], rcx
.label_663:
	movsd	qword ptr [r14], xmm0
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x407b55
	.globl sub_407b55
	.type sub_407b55, @function
sub_407b55:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b60

	.globl is_local_fs_type
	.type is_local_fs_type, @function
is_local_fs_type:
	mov	eax, 1
	cmp	rdi, 0x2fc12fc0
	jg	.label_701
	cmp	rdi, 0xadfe
	jle	.label_703
	cmp	rdi, 0x13111a7
	jg	.label_690
	cmp	rdi, 0x1021993
	jg	.label_707
	cmp	rdi, 0x11953
	jle	.label_709
	cmp	rdi, 0x414a52
	jle	.label_710
	cmp	rdi, 0x414a53
	je	.label_666
	cmp	rdi, 0xc0ffee
	je	.label_666
	cmp	rdi, 0xc36400
	je	.label_665
	jmp	.label_668
.label_701:
	cmp	rdi, 0x65735542
	jle	.label_716
	mov	ecx, 0x858458f5
	cmp	rdi, rcx
	jle	.label_717
	mov	ecx, 0xc97e8167
	cmp	rdi, rcx
	jg	.label_719
	mov	ecx, 0xaad7aae9
	cmp	rdi, rcx
	jg	.label_667
	mov	ecx, 0x958458f5
	cmp	rdi, rcx
	jg	.label_670
	mov	ecx, 0x858458f6
	cmp	rdi, rcx
	je	.label_666
	mov	ecx, 0x9123683e
	jmp	.label_671
.label_703:
	cmp	rdi, 0x482a
	jg	.label_673
	cmp	rdi, 0x2467
	jg	.label_676
	cmp	rdi, 0x1372
	jle	.label_677
	lea	rcx, [rdi - 0x1373]
	cmp	rcx, 0x1c
	ja	.label_678
	mov	edx, 0x10001401
	bt	rdx, rcx
	jb	.label_666
.label_678:
	cmp	rdi, 0x1cd1
	je	.label_666
	jmp	.label_668
.label_716:
	cmp	rdi, 0x541900ff
	jg	.label_681
	cmp	rdi, 0x47504652
	jle	.label_684
	cmp	rdi, 0x5346414e
	jg	.label_685
	cmp	rdi, 0x52654972
	jg	.label_687
	cmp	rdi, 0x47504653
	je	.label_665
	cmp	rdi, 0x50495045
	je	.label_665
	jmp	.label_668
.label_717:
	cmp	rdi, 0x73636672
	jle	.label_689
	cmp	rdi, 0x7461636e
	jg	.label_692
	cmp	rdi, 0x73727278
	jg	.label_694
	cmp	rdi, 0x73636673
	je	.label_666
	cmp	rdi, 0x73717368
	je	.label_666
	jmp	.label_668
.label_673:
	cmp	rdi, 0x6968
	jle	.label_697
	cmp	rdi, 0x965f
	jg	.label_698
	cmp	rdi, 0x6969
	je	.label_665
	cmp	rdi, 0x7275
	je	.label_666
	cmp	rdi, 0x72b6
	je	.label_666
	jmp	.label_668
.label_681:
	cmp	rdi, 0x6165676b
	jle	.label_702
	cmp	rdi, 0x62656571
	jg	.label_704
	cmp	rdi, 0x62646575
	jg	.label_706
	cmp	rdi, 0x6165676c
	je	.label_666
	cmp	rdi, 0x61756673
	je	.label_665
	jmp	.label_668
.label_690:
	cmp	rdi, 0x15013345
	jg	.label_711
	cmp	rdi, 0xbad1de9
	jle	.label_713
	cmp	rdi, 0x11307853
	jg	.label_715
	cmp	rdi, 0xbad1dea
	je	.label_666
	cmp	rdi, 0xbd00bd0
	je	.label_665
	jmp	.label_668
.label_707:
	cmp	rdi, 0x12fd16c
	jg	.label_720
	cmp	rdi, 0x1021994
	je	.label_666
	cmp	rdi, 0x1021997
	je	.label_666
	cmp	rdi, 0x1161970
	je	.label_665
	jmp	.label_668
.label_719:
	mov	ecx, 0xf97cff8b
	cmp	rdi, rcx
	jg	.label_672
	mov	ecx, 0xde5e81e3
	cmp	rdi, rcx
	jg	.label_675
	mov	ecx, 0xc97e8168
	cmp	rdi, rcx
	je	.label_666
	mov	ecx, 0xcafe4a11
	jmp	.label_671
.label_676:
	cmp	rdi, 0x3fff
	jle	.label_679
	lea	rcx, [rdi - 0x4000]
	cmp	rcx, 6
	ja	.label_680
	mov	edx, 0x51
	bt	rdx, rcx
	jb	.label_666
.label_680:
	cmp	rdi, 0x4244
	je	.label_666
	jmp	.label_668
.label_684:
	cmp	rdi, 0x42494e4c
	jle	.label_714
	cmp	rdi, 0x453dcd27
	jg	.label_686
	cmp	rdi, 0x42494e4d
	je	.label_666
	cmp	rdi, 0x43415d53
	je	.label_666
	jmp	.label_668
.label_689:
	cmp	rdi, 0x68191121
	jle	.label_688
	cmp	rdi, 0x6e667363
	jg	.label_693
	cmp	rdi, 0x68191122
	je	.label_666
	cmp	rdi, 0x6b414653
	je	.label_665
	jmp	.label_668
.label_697:
	cmp	rdi, 0x4d59
	jle	.label_695
	cmp	rdi, 0x564b
	jg	.label_696
	cmp	rdi, 0x4d5a
	je	.label_666
	cmp	rdi, 0x517b
	je	.label_665
	jmp	.label_668
.label_702:
	cmp	rdi, 0x58465341
	jle	.label_699
	cmp	rdi, 0x5dca2df4
	jg	.label_700
	cmp	rdi, 0x58465342
	je	.label_666
	cmp	rdi, 0x5a3c69f0
	je	.label_666
	jmp	.label_668
.label_711:
	cmp	rdi, 0x1badfacd
	jle	.label_705
	cmp	rdi, 0x28cd3d44
	jg	.label_708
	cmp	rdi, 0x1badface
	je	.label_666
	cmp	rdi, 0x24051905
	je	.label_666
	jmp	.label_668
.label_709:
	cmp	rdi, 0xef52
	jg	.label_712
	cmp	rdi, 0xadff
	je	.label_666
	cmp	rdi, 0xef51
	je	.label_666
	jmp	.label_668
.label_667:
	mov	ecx, 0xbacbacbb
	cmp	rdi, rcx
	jg	.label_718
	mov	ecx, 0xaad7aaea
	cmp	rdi, rcx
	je	.label_665
	mov	ecx, 0xabba1974
	jmp	.label_671
.label_685:
	cmp	rdi, 0x5346544d
	jg	.label_669
	cmp	rdi, 0x5346414f
	je	.label_665
	cmp	rdi, 0x53464846
	je	.label_666
	jmp	.label_668
.label_692:
	cmp	rdi, 0x794c762f
	jg	.label_674
	cmp	rdi, 0x7461636f
	je	.label_665
	cmp	rdi, 0x74726163
	je	.label_666
	jmp	.label_668
.label_698:
	lea	rcx, [rdi - 0x9fa0]
	cmp	rcx, 3
	jb	.label_666
	cmp	rdi, 0x9660
	je	.label_666
	cmp	rdi, 0xadf5
	je	.label_666
	jmp	.label_668
.label_704:
	cmp	rdi, 0x6462671f
	jg	.label_683
	cmp	rdi, 0x62656572
	je	.label_666
	cmp	rdi, 0x63677270
	je	.label_666
	jmp	.label_668
.label_720:
	lea	rcx, [rdi - 0x12ff7b4]
	cmp	rcx, 4
	jb	.label_666
	cmp	rdi, 0x12fd16d
	je	.label_666
	jmp	.label_668
.label_672:
	mov	ecx, 0xfe534d41
	cmp	rdi, rcx
	jg	.label_691
	mov	ecx, 0xf97cff8c
	cmp	rdi, rcx
	je	.label_666
	mov	ecx, 0xf995e849
	jmp	.label_671
.label_677:
	cmp	rdi, 0x2f
	je	.label_666
	cmp	rdi, 0x187
	je	.label_666
	cmp	rdi, 0x7c0
	je	.label_666
	jmp	.label_668
.label_713:
	cmp	rdi, 0x13111a8
	je	.label_665
	cmp	rdi, 0x7655821
	je	.label_666
	cmp	rdi, 0x9041934
	je	.label_666
	jmp	.label_668
.label_679:
	cmp	rdi, 0x2468
	je	.label_666
	cmp	rdi, 0x2478
	je	.label_666
	cmp	rdi, 0x3434
	je	.label_666
	jmp	.label_668
.label_714:
	cmp	rdi, 0x2fc12fc1
	je	.label_666
	cmp	rdi, 0x3153464a
	je	.label_666
	cmp	rdi, 0x42465331
	je	.label_666
	jmp	.label_668
.label_688:
	cmp	rdi, 0x65735543
	je	.label_665
	cmp	rdi, 0x65735546
	je	.label_665
	cmp	rdi, 0x67596969
	je	.label_666
	jmp	.label_668
.label_695:
	cmp	rdi, 0x482b
	je	.label_666
	cmp	rdi, 0x4858
	je	.label_666
	cmp	rdi, 0x4d44
	je	.label_666
	jmp	.label_668
.label_699:
	cmp	rdi, 0x54190100
	je	.label_666
	cmp	rdi, 0x565a4653
	je	.label_666
	cmp	rdi, 0x58295829
	je	.label_666
	jmp	.label_668
.label_705:
	cmp	rdi, 0x15013346
	je	.label_666
	cmp	rdi, 0x19800202
	je	.label_666
	cmp	rdi, 0x19830326
	je	.label_665
	jmp	.label_668
.label_710:
	cmp	rdi, 0x11954
	je	.label_666
	cmp	rdi, 0x27e0eb
	je	.label_666
	jmp	.label_668
.label_670:
	mov	ecx, 0x958458f6
	cmp	rdi, rcx
	je	.label_666
	mov	eax, 0xa501fcf5
	jmp	.label_682
.label_687:
	cmp	rdi, 0x52654973
	je	.label_666
	cmp	rdi, 0x5346314d
	je	.label_666
	jmp	.label_668
.label_694:
	cmp	rdi, 0x73727279
	je	.label_666
	cmp	rdi, 0x73757245
	je	.label_665
	jmp	.label_668
.label_706:
	cmp	rdi, 0x62646576
	je	.label_666
	cmp	rdi, 0x62656570
	je	.label_666
	jmp	.label_668
.label_715:
	cmp	rdi, 0x11307854
	je	.label_666
	cmp	rdi, 0x13661366
	je	.label_666
	jmp	.label_668
.label_675:
	mov	ecx, 0xde5e81e4
	cmp	rdi, rcx
	je	.label_666
	mov	ecx, 0xf2f52010
.label_671:
	cmp	rdi, rcx
	jne	.label_668
.label_666:
	ret	
.label_686:
	cmp	rdi, 0x453dcd28
	je	.label_666
	cmp	rdi, 0x45584653
	je	.label_666
	jmp	.label_668
.label_693:
	cmp	rdi, 0x6e667364
	je	.label_665
	cmp	rdi, 0x6e736673
	je	.label_666
	jmp	.label_668
.label_696:
	cmp	rdi, 0x564c
	je	.label_665
	cmp	rdi, 0x5df5
	je	.label_666
	jmp	.label_668
.label_700:
	cmp	rdi, 0x5dca2df5
	je	.label_666
	cmp	rdi, 0x61636673
	je	.label_665
	jmp	.label_668
.label_708:
	cmp	rdi, 0x28cd3d45
	je	.label_666
	cmp	rdi, 0x2bad1dea
	je	.label_666
	jmp	.label_668
.label_712:
	cmp	rdi, 0xef53
	je	.label_666
	cmp	rdi, 0xf15f
	je	.label_666
	jmp	.label_668
.label_718:
	mov	eax, 0xbacbacbc
	cmp	rdi, rax
	je	.label_665
	mov	eax, 0xbeefdead
	jmp	.label_682
.label_669:
	cmp	rdi, 0x5346544e
	je	.label_666
	cmp	rdi, 0x534f434b
	je	.label_666
	jmp	.label_668
.label_674:
	cmp	rdi, 0x794c7630
	je	.label_665
	cmp	rdi, 0x7c7c6673
	je	.label_665
	jmp	.label_668
.label_683:
	cmp	rdi, 0x64626720
	je	.label_666
	cmp	rdi, 0x64646178
	je	.label_666
	jmp	.label_668
.label_691:
	mov	eax, 0xfe534d42
	cmp	rdi, rax
	je	.label_665
	mov	eax, 0xff534d42
.label_682:
	cmp	rdi, rax
	jne	.label_668
.label_665:
	xor	eax, eax
	ret	
.label_668:
	mov	eax, 0xffffffff
	ret	
	.section	.text
	.align	16
	#Procedure 0x40842e
	.globl sub_40842e
	.type sub_40842e, @function
sub_40842e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x408430

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
	jae	.label_728
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_721:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_721
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_723
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoumax
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_729
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_732
	cmp	eax, 0x22
	jne	.label_723
	mov	r12d, 1
.label_732:
	test	rbp, rbp
	jne	.label_738
	jmp	.label_726
.label_729:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_723
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_723
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_723
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_738:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_726
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_730
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_731
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_731
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_725
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_722
	cmp	ecx, 0x44
	je	.label_722
	cmp	ecx, 0x69
	jne	.label_725
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_725
.label_722:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_725
.label_731:
	mov	rsi, r14
.label_725:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_730
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_733]]
.label_1028:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_724
.label_730:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_737
.label_1029:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_724
.label_1030:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_724
.label_1032:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_724
.label_1026:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale
	jmp	.label_727
.label_1027:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_724
.label_1031:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_724
.label_1033:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_724
.label_1034:
	lea	rdi, [rsp]
	mov	edx, 7
.label_724:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_727:
	mov	rsi, r14
.label_1036:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_726:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_737:
	mov	r15d, r12d
.label_723:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1035:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale
	jmp	.label_727
.label_1037:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale
	jmp	.label_727
.label_728:
	mov	edi, OFFSET FLAT:label_734
	mov	esi, OFFSET FLAT:label_735
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_736
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x4086d2
	.globl sub_4086d2
	.type sub_4086d2, @function
sub_4086d2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4086e0

	.globl posix2_version
	.type posix2_version, @function
posix2_version:
	push	rax
	mov	edi, OFFSET FLAT:label_739
	call	getenv
	mov	ecx, 0x31069
	test	rax, rax
	je	.label_740
	mov	ecx, 0x31069
	cmp	byte ptr [rax], 0
	je	.label_740
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, rax
	call	strtol
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	mov	ecx, 0x31069
	cmove	rcx, rax
.label_740:
	cmp	rcx, 0x7fffffff
	mov	edx, 0x7fffffff
	cmovl	edx, ecx
	cmp	rcx, -0x80000000
	mov	eax, 0x80000000
	cmovge	eax, edx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x408740

	.globl tail_forever
	.type tail_forever, @function
tail_forever:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xd8
	movsd	qword ptr [rsp + 0x30], xmm0
	mov	r13, rsi
	mov	rbx, rdi
	xor	eax, eax
	cmp	r13, 1
	jne	.label_751
	mov	ecx,  dword ptr [dword ptr [rip + pid]]
	test	ecx, ecx
	jne	.label_751
	cmp	dword ptr [dword ptr [rip + follow_mode]],  2
	jne	.label_751
	cmp	dword ptr [rbx + 0x38], -1
	je	.label_752
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x30]
	cmp	eax, 0x8000
	setne	al
	jmp	.label_751
.label_752:
	xor	eax, eax
.label_751:
	lea	rcx, [r13 - 1]
	mov	qword ptr [rsp + 0x18], rcx
	movzx	eax, al
	xor	ecx, ecx
	mov	dword ptr [rsp + 0xc], eax
	test	al, al
	sete	cl
	shl	ecx, 0xb
	mov	dword ptr [rsp + 0x2c], ecx
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x40], rbx
	mov	qword ptr [rsp + 0x20], r13
.label_741:
	mov	dword ptr [rsp + 0x28], ebp
.label_767:
	test	r13, r13
	je	.label_764
	xor	r15d, r15d
	mov	rbp, rbx
	xor	r12d, r12d
	jmp	.label_760
.label_764:
	xor	r12d, r12d
	jmp	.label_766
.label_755:
	mov	rax,  qword ptr [word ptr [rip + max_n_unchanged_stats_between_opens]]
	mov	rcx, qword ptr [rbp + 0x58]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbp + 0x58], rdx
	cmp	rax, rcx
	ja	.label_743
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	jne	.label_743
	xor	esi, esi
	cmp	dword ptr [rbp + 0x40], 0
	setne	sil
	mov	rdi, rbp
	call	recheck
	mov	qword ptr [rbp + 0x58], 0
	jmp	.label_743
.label_760:
	cmp	byte ptr [rbp + 0x34], 0
	jne	.label_743
	mov	ebx, dword ptr [rbp + 0x38]
	mov	rdi, rbp
	test	ebx, ebx
	js	.label_748
	call	pretty_name
	mov	r14d, dword ptr [rbp + 0x30]
	mov	ecx, dword ptr [rbp + 0x40]
	cmp	ecx, dword ptr [rsp + 0xc]
	je	.label_750
	mov	r13, rax
	mov	esi, 3
	xor	eax, eax
	mov	edi, ebx
	call	rpl_fcntl
	test	eax, eax
	js	.label_753
	mov	edx, eax
	or	edx, dword ptr [rsp + 0x2c]
	cmp	edx, eax
	je	.label_754
	mov	esi, 4
	xor	eax, eax
	mov	edi, ebx
	call	rpl_fcntl
	cmp	eax, -1
	je	.label_753
.label_754:
	mov	eax, dword ptr [rsp + 0xc]
	mov	dword ptr [rbp + 0x40], eax
	mov	ecx, eax
	jmp	.label_759
.label_748:
	mov	esi, dword ptr [rsp + 0xc]
	call	recheck
	jmp	.label_743
.label_753:
	mov	eax, dword ptr [rbp + 0x30]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0x8000
	jne	.label_756
	call	__errno_location
	cmp	dword ptr [rax], 1
	jne	.label_756
	mov	ecx, dword ptr [rbp + 0x40]
.label_759:
	mov	rax, r13
	mov	r13, qword ptr [rsp + 0x20]
.label_750:
	test	ecx, ecx
	jne	.label_742
	mov	qword ptr [rsp + 0x10], rax
	mov	edi, ebx
	lea	rsi, [rsp + 0x48]
	call	fstat
	test	eax, eax
	je	.label_768
	mov	dword ptr [rbp + 0x38], 0xffffffff
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp + 0x3c], ecx
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x10]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_128
	xor	eax, eax
	mov	esi, r14d
	call	error
	mov	edi, ebx
	call	close
	jmp	.label_743
.label_768:
	mov	eax, dword ptr [rsp + 0x60]
	cmp	dword ptr [rbp + 0x30], eax
	jne	.label_744
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_770
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rsp + 0x78]
	jne	.label_744
.label_770:
	lea	rdi, [rsp + 0x48]
	call	get_stat_mtime
	mov	rcx, rdx
	mov	rdi, qword ptr [rbp + 0x10]
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rdx, rax
	call	timespec_cmp
	test	eax, eax
	je	.label_755
.label_744:
	lea	rdi, [rsp + 0x48]
	call	get_stat_mtime
	mov	qword ptr [rbp + 0x10], rax
	mov	qword ptr [rbp + 0x18], rdx
	mov	eax, dword ptr [rsp + 0x60]
	mov	dword ptr [rbp + 0x30], eax
	mov	qword ptr [rbp + 0x58], 0
	mov	eax, r14d
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_758
	mov	rax, qword ptr [rsp + 0x78]
	cmp	rax, qword ptr [rbp + 8]
	jge	.label_758
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x38], rax
	xor	edi, edi
	mov	esi, 3
	mov	r13, qword ptr [rsp + 0x10]
	mov	rdx, r13
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 0x38]
	call	error
	xor	esi, esi
	xor	edx, edx
	mov	edi, ebx
	mov	rcx, r13
	mov	r13, qword ptr [rsp + 0x20]
	call	xlseek
	mov	qword ptr [rbp + 8], 0
.label_758:
	cmp	r15, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rsp + 0x10]
	je	.label_742
	cmp	byte ptr [byte ptr [rip + print_headers]],  1
	mov	qword ptr [rsp + 0x18], r15
	jne	.label_742
	mov	rdi, rax
	call	write_header
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x18], r15
.label_742:
	mov	rcx, -2
	cmp	dword ptr [rbp + 0x40], 0
	jne	.label_749
	and	r14d, 0xf000
	mov	rcx, -1
	cmp	r14d, 0x8000
	jne	.label_749
	cmp	byte ptr [rbp + 0x35], 0
	je	.label_749
	mov	rcx, qword ptr [rsp + 0x78]
	sub	rcx, qword ptr [rbp + 8]
.label_749:
	xor	edi, edi
	mov	rsi, rax
	mov	edx, ebx
	call	dump_remainder
	test	rax, rax
	setne	cl
	and	r12b, 1
	or	r12b, cl
	add	qword ptr [rbp + 8], rax
	nop	word ptr cs:[rax + rax]
.label_743:
	inc	r15
	add	rbp, 0x60
	cmp	r15, r13
	jb	.label_760
.label_766:
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdi, rbx
	mov	rsi, r13
	call	any_live_files
	test	al, al
	je	.label_761
	and	r12b, 1
	sete	al
	cmp	dword ptr [rsp + 0xc], 0
	jne	.label_762
	test	al, al
	je	.label_763
.label_762:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	fflush_unlocked
	test	eax, eax
	jne	.label_765
.label_763:
	call	check_output_alive
	test	r12b, r12b
	jne	.label_767
	mov	eax, dword ptr [rsp + 0x28]
	test	al, 1
	jne	.label_747
	mov	edi,  dword ptr [dword ptr [rip + pid]]
	xor	ebp, ebp
	test	edi, edi
	je	.label_769
	xor	esi, esi
	call	kill
	test	eax, eax
	je	.label_769
	call	__errno_location
	cmp	dword ptr [rax], 1
	setne	bpl
	jne	.label_741
.label_769:
	movsd	xmm0, qword ptr [rsp + 0x30]
	call	xnanosleep
	test	eax, eax
	je	.label_741
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_745
	jmp	.label_746
.label_761:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_521
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_747:
	add	rsp, 0xd8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_756:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_757
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r13
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_765:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
.label_746:
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
	.align	16
	#Procedure 0x408be0

	.globl pipe_bytes
	.type pipe_bytes, @function
pipe_bytes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp], rdx
	mov	ebx, esi
	mov	qword ptr [rsp + 8], rdi
	mov	edi, 0x2010
	call	xmalloc
	mov	rbp, rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp + 0x2000], xmm0
	mov	edi, 0x2010
	call	xmalloc
	xor	ecx, ecx
	mov	r13, rbp
	jmp	.label_776
.label_774:
	mov	rax, r13
	mov	r13, qword ptr [r13 + 0x2008]
.label_776:
	mov	r12, rbp
	mov	rbp, rax
	mov	r14, rcx
	jmp	.label_773
	.section	.text
	.align	16
	#Procedure 0x408c3b
	.globl sub_408c3b
	.type sub_408c3b, @function
sub_408c3b:

	nop	dword ptr [rax + rax]
.label_782:
	add	rdi, r12
	mov	rsi, rbp
	mov	rdx, r15
	call	memcpy
	mov	rax, qword ptr [rbp + 0x2000]
	add	qword ptr [r12 + 0x2000], rax
.label_773:
	mov	edx, 0x2000
	mov	edi, ebx
	mov	rsi, rbp
	call	safe_read
	mov	r15, rax
	lea	rax, [r15 + 1]
	cmp	rax, 2
	jb	.label_780
	mov	rax, qword ptr [rsp + 0x10]
	add	qword ptr [rax], r15
	mov	qword ptr [rbp + 0x2000], r15
	mov	qword ptr [rbp + 0x2008], 0
	add	r14, r15
	mov	rdi, qword ptr [r12 + 0x2000]
	mov	rax, r15
	add	rax, rdi
	cmp	rax, 0x1fff
	jbe	.label_782
	mov	qword ptr [r12 + 0x2008], rbp
	mov	rcx, r14
	sub	rcx, qword ptr [r13 + 0x2000]
	cmp	rcx, qword ptr [rsp]
	ja	.label_774
	mov	edi, 0x2010
	call	xmalloc
	mov	r12, rbp
	mov	rbp, rax
	jmp	.label_773
.label_780:
	mov	rdi, rbp
	call	free
	cmp	r15, -1
	je	.label_777
	mov	rsi, qword ptr [r13 + 0x2000]
	mov	rax, r14
	sub	rax, rsi
	mov	rcx, qword ptr [rsp]
	cmp	rax, rcx
	mov	rbx, r13
	jbe	.label_775
	mov	rbx, r13
	nop	dword ptr [rax + rax]
.label_772:
	mov	r14, rax
	mov	rbx, qword ptr [rbx + 0x2008]
	mov	rsi, qword ptr [rbx + 0x2000]
	sub	rax, rsi
	cmp	rax, rcx
	ja	.label_772
.label_775:
	xor	eax, eax
	sub	r14, rcx
	cmova	rax, r14
	lea	rdi, [rbx + rax]
	sub	rsi, rax
	call	xwrite_stdout
	mov	rbp, qword ptr [rbx + 0x2008]
	mov	r14b, 1
	jmp	.label_783
	.section	.text
	.align	16
	#Procedure 0x408d4a
	.globl sub_408d4a
	.type sub_408d4a, @function
sub_408d4a:

	nop	word ptr [rax + rax]
.label_778:
	mov	rsi, qword ptr [rbp + 0x2000]
	mov	rdi, rbp
	call	xwrite_stdout
	mov	rbp, qword ptr [rbp + 0x2008]
.label_783:
	test	rbp, rbp
	jne	.label_778
	jmp	.label_779
.label_777:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_175
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	call	error
.label_779:
	test	r13, r13
	je	.label_771
	nop	word ptr cs:[rax + rax]
.label_781:
	mov	rbx, qword ptr [r13 + 0x2008]
	mov	rdi, r13
	call	free
	test	rbx, rbx
	mov	r13, rbx
	jne	.label_781
.label_771:
	mov	eax, r14d
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
	#Procedure 0x408de9
	.globl sub_408de9
	.type sub_408de9, @function
sub_408de9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408df0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x408dfa
	.globl sub_408dfa
	.type sub_408dfa, @function
sub_408dfa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408e00
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	16
	#Procedure 0x408e0d
	.globl sub_408e0d
	.type sub_408e0d, @function
sub_408e0d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408e10
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
	#Procedure 0x408e20
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rsi, qword ptr [rdi]
	xor	edx, edx
	cmp	rsi, qword ptr [rdi + 8]
	mov	ecx, 0
	jae	.label_784
	mov	r8, qword ptr [rdi + 8]
	xor	ecx, ecx
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_789:
	cmp	qword ptr [rsi], 0
	je	.label_787
	mov	rax, rsi
	nop	dword ptr [rax]
.label_786:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_786
	inc	rdx
.label_787:
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_789
.label_784:
	cmp	rdx, qword ptr [rdi + 0x18]
	jne	.label_785
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_788
.label_785:
	xor	eax, eax
.label_788:
	ret	
	.section	.text
	.align	16
	#Procedure 0x408e79
	.globl sub_408e79
	.type sub_408e79, @function
sub_408e79:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408e80

	.globl write_header
	.type write_header, @function
write_header:
	push	rax
	mov	rcx, rdi
	mov	al,  byte ptr [byte ptr [rip + write_header.first_file]]
	mov	esi, OFFSET FLAT:label_790
	mov	edx, OFFSET FLAT:label_69
	test	al, al
	cmovne	rdx, rsi
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_791
	xor	eax, eax
	call	__printf_chk
	mov	byte ptr [byte ptr [rip + write_header.first_file]],  1
	pop	rax
	ret	
	.section	.text
	.align	16
	#Procedure 0x408eb4
	.globl sub_408eb4
	.type sub_408eb4, @function
sub_408eb4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ec0
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
	#Procedure 0x408ecd
	.globl sub_408ecd
	.type sub_408ecd, @function
sub_408ecd:

	nop	dword ptr [rax]
.label_798:
	mov	r14, qword ptr [r15]
	jmp	.label_796
	.section	.text
	.align	16
	#Procedure 0x408ed5
	.globl sub_408ed5
	.type sub_408ed5, @function
sub_408ed5:

	nop	word ptr [rax + rax]
.label_795:
	add	r14, 0x10
.label_796:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_792
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_795
	nop	word ptr cs:[rax + rax]
.label_794:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_794
	jmp	.label_795
	.section	.text
	.align	16
	#Procedure 0x408f11

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_798
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_798
	mov	r14, qword ptr [r15]
	jmp	.label_799
	.section	.text
	.align	16
	#Procedure 0x408f2c
	.globl sub_408f2c
	.type sub_408f2c, @function
sub_408f2c:

	nop	dword ptr [rax + rax]
.label_801:
	add	r14, 0x10
.label_799:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_798
	cmp	qword ptr [r14], 0
	je	.label_801
	test	r14, r14
	je	.label_801
	mov	rbx, r14
	nop	dword ptr [rax + rax]
.label_800:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_800
	jmp	.label_801
.label_792:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_793
	nop	dword ptr [rax]
.label_797:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_797
.label_793:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, r15
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x408f96
	.globl sub_408f96
	.type sub_408f96, @function
sub_408f96:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408fa0

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
	#Procedure 0x408fd6
	.globl sub_408fd6
	.type sub_408fd6, @function
sub_408fd6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408fe0

	.globl timespec_cmp
	.type timespec_cmp, @function
timespec_cmp:
	mov	eax, 0xffffffff
	cmp	rdi, rdx
	jl	.label_802
	mov	eax, 1
	jg	.label_802
	sub	esi, ecx
	mov	eax, esi
.label_802:
	ret	
	.section	.text
	.align	16
	#Procedure 0x408ff6
	.globl sub_408ff6
	.type sub_408ff6, @function
sub_408ff6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409000

	.globl is_prime
	.type is_prime, @function
is_prime:
	mov	r8, rdi
	mov	esi, 3
	cmp	r8, 0xa
	jb	.label_803
	mov	esi, 3
	mov	edi, 9
	mov	ecx, 0x10
	nop	dword ptr [rax]
.label_804:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_803
	add	rdi, rcx
	add	rsi, 2
	add	rcx, 8
	cmp	rdi, r8
	jb	.label_804
.label_803:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	setne	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40904c
	.globl sub_40904c
	.type sub_40904c, @function
sub_40904c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409050

	.globl pipe_lines
	.type pipe_lines, @function
pipe_lines:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	dword ptr [rsp + 0xc], esi
	mov	qword ptr [rsp + 0x18], rdi
	mov	edi, 0x2018
	call	xmalloc
	mov	rbp, rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp + 0x2000], xmm0
	mov	qword ptr [rbp + 0x2010], 0
	mov	edi, 0x2018
	call	xmalloc
	xor	ecx, ecx
	mov	r15d, 0xa
	mov	qword ptr [rsp], rbp
	jmp	.label_809
.label_810:
	mov	rax, rdx
	mov	rdx, qword ptr [rdx + 0x2010]
	mov	qword ptr [rsp], rdx
	nop	dword ptr [rax]
.label_809:
	mov	r14, rcx
	jmp	.label_816
	.section	.text
	.align	16
	#Procedure 0x4090c5
	.globl sub_4090c5
	.type sub_4090c5, @function
sub_4090c5:

	nop	word ptr cs:[rax + rax]
.label_824:
	mov	edi, 0x2018
	call	xmalloc
.label_816:
	mov	r13, rbp
	mov	rbp, rax
	lea	rbx, [rbp + 0x2008]
	jmp	.label_819
	.section	.text
	.align	16
	#Procedure 0x4090e9
	.globl sub_4090e9
	.type sub_4090e9, @function
sub_4090e9:

	nop	dword ptr [rax]
.label_805:
	add	rdi, r13
	mov	rsi, rbp
	call	memcpy
	mov	rax, qword ptr [rbp + 0x2000]
	add	qword ptr [r13 + 0x2000], rax
	mov	rax, qword ptr [rbp + 0x2008]
	add	qword ptr [r13 + 0x2008], rax
.label_819:
	mov	edx, 0x2000
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, rbp
	call	safe_read
	mov	r12, rax
	lea	rax, [r12 + 1]
	cmp	rax, 2
	jb	.label_823
	mov	qword ptr [rbp + 0x2000], r12
	mov	rax, qword ptr [rsp + 0x20]
	add	qword ptr [rax], r12
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	al,  byte ptr [byte ptr [rip + line_end]]
	test	al, al
	mov	esi, 0
	cmovne	esi, r15d
	mov	rdi, rbp
	mov	rdx, r12
	call	memchr
	test	rax, rax
	je	.label_822
	add	r12, rbp
	nop	word ptr cs:[rax + rax]
.label_811:
	inc	rax
	inc	qword ptr [rbx]
	movzx	ecx,  byte ptr [byte ptr [rip + line_end]]
	test	cl, cl
	mov	esi, 0
	cmovne	esi, r15d
	mov	rdx, r12
	sub	rdx, rax
	mov	rdi, rax
	call	memchr
	test	rax, rax
	jne	.label_811
.label_822:
	add	r14, qword ptr [rbp + 0x2008]
	mov	rdx, qword ptr [rbp + 0x2000]
	mov	rdi, qword ptr [r13 + 0x2000]
	lea	rax, [rdi + rdx]
	cmp	rax, 0x1fff
	jbe	.label_805
	mov	qword ptr [r13 + 0x2010], rbp
	mov	rcx, r14
	mov	rdx, qword ptr [rsp]
	sub	rcx, qword ptr [rdx + 0x2008]
	cmp	rcx, qword ptr [rsp + 0x10]
	jbe	.label_824
	jmp	.label_810
.label_823:
	mov	rdi, rbp
	call	free
	cmp	r12, -1
	je	.label_828
	mov	rsi, qword ptr [rsp + 0x10]
	test	rsi, rsi
	mov	r15b, 1
	je	.label_807
	mov	rax, qword ptr [r13 + 0x2000]
	test	rax, rax
	je	.label_807
	movsx	eax, byte ptr [r13 + rax - 1]
	mov	cl,  byte ptr [byte ptr [rip + line_end]]
	xor	edx, edx
	test	cl, cl
	mov	ecx, 0xa
	cmove	ecx, edx
	cmp	eax, ecx
	je	.label_813
	inc	qword ptr [r13 + 0x2008]
	inc	r14
.label_813:
	mov	rax, r14
	mov	r13, qword ptr [rsp]
	sub	rax, qword ptr [r13 + 0x2008]
	cmp	rax, rsi
	mov	rbx, r13
	jbe	.label_817
	mov	rbx, r13
	nop	word ptr [rax + rax]
.label_815:
	mov	r14, rax
	mov	rbx, qword ptr [rbx + 0x2010]
	sub	rax, qword ptr [rbx + 0x2008]
	cmp	rax, rsi
	ja	.label_815
.label_817:
	mov	r15, qword ptr [rbx + 0x2000]
	add	r15, rbx
	cmp	r14, rsi
	mov	rax, rbx
	jbe	.label_806
	mov	rax, rbx
	je	.label_806
	mov	al,  byte ptr [byte ptr [rip + line_end]]
	xor	ecx, ecx
	test	al, al
	mov	r12d, 0xa
	cmove	r12d, ecx
	sub	rsi, r14
	mov	rax, rbx
	nop	word ptr [rax + rax]
.label_820:
	mov	rbp, rsi
	mov	rdx, r15
	sub	rdx, rax
	mov	rdi, rax
	mov	esi, r12d
	call	memchr
	test	rax, rax
	je	.label_818
	inc	rax
	mov	rsi, rbp
	inc	rsi
	jne	.label_820
.label_806:
	sub	r15, rax
	mov	rdi, rax
	mov	rsi, r15
	call	xwrite_stdout
	mov	rbp, qword ptr [rbx + 0x2010]
	mov	r15b, 1
	jmp	.label_825
	.section	.text
	.align	16
	#Procedure 0x409302
	.globl sub_409302
	.type sub_409302, @function
sub_409302:

	nop	word ptr cs:[rax + rax]
.label_821:
	mov	rsi, qword ptr [rbp + 0x2000]
	mov	rdi, rbp
	call	xwrite_stdout
	mov	rbp, qword ptr [rbp + 0x2010]
.label_825:
	test	rbp, rbp
	jne	.label_821
	jmp	.label_814
.label_828:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_175
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x18]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
.label_807:
	mov	r13, qword ptr [rsp]
.label_814:
	test	r13, r13
	je	.label_812
	nop	word ptr cs:[rax + rax]
.label_808:
	mov	rbx, qword ptr [r13 + 0x2010]
	mov	rdi, r13
	call	free
	test	rbx, rbx
	mov	r13, rbx
	jne	.label_808
.label_812:
	mov	eax, r15d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_818:
	mov	edi, OFFSET FLAT:label_826
	mov	esi, OFFSET FLAT:label_116
	mov	edx, 0x2e0
	mov	ecx, OFFSET FLAT:label_827
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x4093c2
	.globl sub_4093c2
	.type sub_4093c2, @function
sub_4093c2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4093d0

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_829
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x4093f2
	.globl sub_4093f2
	.type sub_4093f2, @function
sub_4093f2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409400

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
	je	.label_836
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r14
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_830:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_834
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_832
	cmp	qword ptr [rsp + 8], -1
	je	.label_833
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_835
	mov	rdi, qword ptr [rsp + 8]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_834
.label_835:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_834
.label_833:
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr [rax + rax]
.label_834:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_830
	jmp	.label_831
.label_836:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_831:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 8]
.label_832:
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
	.align	16
	#Procedure 0x4094fd
	.globl sub_4094fd
	.type sub_4094fd, @function
sub_4094fd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409500
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
	#Procedure 0x409533
	.globl sub_409533
	.type sub_409533, @function
sub_409533:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409540

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
	je	.label_837
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_838
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_838
.label_837:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_838
	test	cl, cl
	jne	.label_838
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_838:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4095a6
	.globl sub_4095a6
	.type sub_4095a6, @function
sub_4095a6:

	nop	word ptr cs:[rax + rax]
.label_851:
	cmp	byte ptr [byte ptr [rip + forever]],  0
	je	.label_841
	mov	dword ptr [rbx + 0x38], 0xffffffff
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x3c], eax
	mov	al,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	xor	al, 1
	mov	byte ptr [rbx + 0x34], al
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
.label_841:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_839
.label_849:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rdi, rbx
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r15
	call	error
	jmp	.label_840
.label_848:
	test	r15b, r15b
	jne	.label_840
	mov	edi, r14d
	call	close
	test	eax, eax
	je	.label_840
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_175
	jmp	.label_849
.label_854:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbx + 0x3c], ecx
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_175
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	call	error
	jmp	.label_845
.label_852:
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	xor	r14d, r14d
	xor	edi, edi
	xor	esi, esi
	call	xset_binary_mode
	mov	r15b, 1
	jmp	.label_847
	.section	.text
	.align	16
	#Procedure 0x4096ba

	.globl tail_file
	.type tail_file, @function
tail_file:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x98
	mov	rbp, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	cmp	byte ptr [rax], 0x2d
	jne	.label_853
	cmp	byte ptr [rax + 1], 0
	je	.label_852
.label_853:
	mov	rdi, qword ptr [rbx]
	xor	r15d, r15d
	xor	esi, esi
	xor	eax, eax
	call	open_safer
	mov	r14d, eax
.label_847:
	cmp	r14d, -1
	sete	al
	and	al,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	xor	al, 1
	cmp	r14d, -1
	mov	byte ptr [rbx + 0x36], al
	je	.label_851
	cmp	byte ptr [byte ptr [rip + print_headers]],  1
	jne	.label_843
	mov	rdi, rbx
	call	pretty_name
	mov	rdi, rax
	call	write_header
.label_843:
	mov	rdi, rbx
	call	pretty_name
	lea	rcx, [rsp]
	mov	rdi, rax
	mov	esi, r14d
	mov	rdx, rbp
	call	tail
	mov	bpl, al
	cmp	byte ptr [byte ptr [rip + forever]],  0
	je	.label_848
	mov	eax, ebp
	not	al
	movzx	eax, al
	shl	eax, 0x1f
	sar	eax, 0x1f
	mov	dword ptr [rbx + 0x3c], eax
	lea	rsi, [rsp + 8]
	mov	edi, r14d
	call	fstat
	test	eax, eax
	js	.label_854
	movzx	eax, word ptr [rsp + 0x20]
	and	eax, 0xf000
	movsx	ecx, ax
	movzx	eax, ax
	cmp	ecx, 0xfff
	jg	.label_855
	cmp	eax, 0x8000
	je	.label_844
	cmp	eax, 0xc000
	je	.label_844
	jmp	.label_846
.label_855:
	cmp	eax, 0x1000
	je	.label_844
	cmp	eax, 0x2000
	jne	.label_846
.label_844:
	test	bpl, bpl
	je	.label_845
	mov	rdx, qword ptr [rsp]
	test	r15b, r15b
	mov	eax, 0xffffffff
	mov	r8d, 1
	cmovne	r8d, eax
	lea	rcx, [rsp + 8]
	mov	rdi, rbx
	mov	esi, r14d
	call	record_open_fd
	mov	rdi, rbx
	call	pretty_name
	mov	edi, r14d
	mov	rsi, rax
	call	fremote
	mov	byte ptr [rbx + 0x35], al
	mov	bpl, 1
	jmp	.label_840
.label_846:
	mov	dword ptr [rbx + 0x3c], 0xffffffff
	mov	byte ptr [rbx + 0x36], 0
	mov	al,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	xor	al, 1
	mov	byte ptr [rbx + 0x34], al
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_842
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rdi, rbx
	call	pretty_name
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rax
	call	quotearg_n_style_colon
	mov	rbp, rax
	mov	r8d, OFFSET FLAT:label_69
	cmp	byte ptr [rbx + 0x34], 0
	je	.label_850
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_215
	mov	edx, 5
	call	dcgettext
	mov	r8, rax
.label_850:
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, rbp
	call	error
.label_845:
	mov	al,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	xor	al, 1
	mov	byte ptr [rbx + 0x34], al
	mov	rdi, rbx
	call	pretty_name
	mov	edi, r14d
	mov	rsi, rax
	call	close_fd
	mov	dword ptr [rbx + 0x38], 0xffffffff
	xor	ebp, ebp
.label_840:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4098b3
	.globl sub_4098b3
	.type sub_4098b3, @function
sub_4098b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4098c0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4098ca
	.globl sub_4098ca
	.type sub_4098ca, @function
sub_4098ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4098d0
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
	#Procedure 0x4098df
	.globl sub_4098df
	.type sub_4098df, @function
sub_4098df:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4098e0
	.globl timespec_sign
	.type timespec_sign, @function
timespec_sign:

	xor	ecx, ecx
	or	rsi, rdi
	setne	cl
	test	rdi, rdi
	mov	eax, 0xffffffff
	cmovns	eax, ecx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4098f4
	.globl sub_4098f4
	.type sub_4098f4, @function
sub_4098f4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409900

	.globl parse_obsolete_option
	.type parse_obsolete_option, @function
parse_obsolete_option:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rdx
	mov	rbx, rsi
	cmp	edi, 2
	je	.label_856
	cmp	edi, 3
	jne	.label_872
	mov	rax, qword ptr [rbx + 0x10]
	cmp	byte ptr [rax], 0x2d
	jne	.label_856
	cmp	byte ptr [rax + 1], 0
	jne	.label_868
	jmp	.label_856
.label_872:
	add	edi, -3
	cmp	edi, 1
	ja	.label_869
.label_868:
	mov	rax, qword ptr [rbx + 0x10]
	cmp	byte ptr [rax], 0x2d
	jne	.label_869
	cmp	byte ptr [rax + 1], 0x2d
	jne	.label_875
	cmp	byte ptr [rax + 2], 0
	je	.label_856
	xor	ebp, ebp
	jmp	.label_857
.label_856:
	call	posix2_version
	mov	rcx, qword ptr [rbx + 8]
	lea	rdi, [rcx + 1]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x2d
	je	.label_866
	cmp	edx, 0x2b
	jne	.label_869
	add	eax, 0xfffcf250
	mov	bpl, 1
	cmp	eax, 0x2b8
	ja	.label_862
	xor	ebp, ebp
	jmp	.label_857
.label_869:
	xor	ebp, ebp
	jmp	.label_857
.label_866:
	cmp	eax, 0x30db0
	jge	.label_859
	xor	ebp, ebp
	jmp	.label_862
.label_859:
	xor	eax, eax
	cmp	byte ptr [rdi], 0x63
	sete	al
	xor	ebp, ebp
	cmp	byte ptr [rdi + rax], 0
	je	.label_857
.label_862:
	xor	eax, eax
	nop	dword ptr [rax]
.label_871:
	movsx	esi, byte ptr [rcx + rax + 1]
	lea	edx, [rsi - 0x30]
	inc	rax
	cmp	edx, 0xa
	jb	.label_871
	mov	r15b, 1
	mov	edx, 0xa
	cmp	esi, 0x6c
	je	.label_865
	cmp	esi, 0x63
	je	.label_861
	cmp	esi, 0x62
	jne	.label_864
	mov	edx, 0x1400
.label_861:
	xor	r15d, r15d
.label_865:
	lea	rcx, [rcx + rax + 1]
	jmp	.label_867
.label_875:
	xor	ebp, ebp
	jmp	.label_857
.label_864:
	add	rcx, rax
.label_867:
	lea	rsi, [rcx + 1]
	cmp	byte ptr [rcx], 0x66
	sete	r12b
	cmovne	rsi, rcx
	cmp	byte ptr [rsi], 0
	je	.label_870
	xor	ebp, ebp
	jmp	.label_857
.label_870:
	cmp	rax, 1
	jne	.label_858
	mov	qword ptr [r14], rdx
	jmp	.label_860
.label_858:
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_863
	mov	rcx, r14
	call	xstrtoumax
	test	eax, 0xfffffffd
	jne	.label_873
.label_860:
	mov	byte ptr [byte ptr [rip + from_start]],  bpl
	mov	byte ptr [byte ptr [rip + count_lines]],  r15b
	mov	byte ptr [byte ptr [rip + forever]],  r12b
	mov	bpl, 1
.label_857:
	mov	eax, ebp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_873:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_874
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, qword ptr [rbx + 8]
	call	quote
	mov	rbx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_650
	xor	eax, eax
	mov	esi, r14d
	mov	rcx, rbp
	mov	r8, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409aa0

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
	jne	.label_876
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_876
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_877
.label_876:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_877:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_878
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_878:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409b0e
	.globl sub_409b0e
	.type sub_409b0e, @function
sub_409b0e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x409b10

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_879
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_879:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_880
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_882
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_881
.label_882:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_881:
	mov	edx, dword ptr [rax]
.label_880:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x409bd4
	.globl sub_409bd4
	.type sub_409bd4, @function
sub_409bd4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409be0

	.globl dump_remainder
	.type dump_remainder, @function
dump_remainder:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x2018
	mov	r12, rcx
	mov	dword ptr [rsp + 4], edx
	mov	qword ptr [rsp + 8], rsi
	mov	ebp, edi
	xor	ebx, ebx
	lea	r13, [rsp + 0x10]
	mov	r15, r12
	nop	dword ptr [rax]
.label_883:
	cmp	r15, 0x2000
	mov	edx, 0x2000
	cmovb	rdx, r15
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, r13
	call	safe_read
	mov	r14, rax
	test	r14, r14
	je	.label_884
	cmp	r14, -1
	je	.label_886
	test	bpl, 1
	je	.label_887
	mov	rdi, qword ptr [rsp + 8]
	call	write_header
	xor	ebp, ebp
.label_887:
	mov	rdi, r13
	mov	rsi, r14
	call	xwrite_stdout
	add	rbx, r14
	cmp	r12, -1
	je	.label_883
	cmp	r12, -2
	je	.label_884
	sub	r15, r14
	jne	.label_883
	jmp	.label_884
.label_886:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	cmp	ebp, 0xb
	jne	.label_885
.label_884:
	mov	rax, rbx
	add	rsp, 0x2018
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_885:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_175
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409cd0

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_888
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_888:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x409cf3
	.globl sub_409cf3
	.type sub_409cf3, @function
sub_409cf3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d00

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_889
	test	rax, rax
	je	.label_890
.label_889:
	pop	rbx
	ret	
.label_890:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x409d1a
	.globl sub_409d1a
	.type sub_409d1a, @function
sub_409d1a:

	nop	word ptr [rax + rax]
.label_892:
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_891
.label_894:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_891
	.section	.text
	.align	16
	#Procedure 0x409d3a

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, rcx
	mov	r12, rdx
	mov	eax, esi
	mov	r13, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, eax
	call	xstrtoumax
	cmp	eax, 3
	je	.label_892
	cmp	eax, 1
	je	.label_894
	test	eax, eax
	jne	.label_891
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r12
	jb	.label_895
	cmp	rbx, r15
	jbe	.label_896
.label_895:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_893
	mov	dword ptr [rax], 0x4b
	jmp	.label_891
.label_893:
	mov	dword ptr [rax], 0x22
.label_891:
	mov	eax, dword ptr [rsp + 0x40]
	test	eax, eax
	mov	ebp, 1
	cmovne	ebp, eax
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	eax, eax
	cmp	ebx, 0x16
	cmove	ebx, eax
	mov	rdi, r13
	call	quote
	mov	r8, rax
	mov	edx, OFFSET FLAT:label_650
	xor	eax, eax
	mov	edi, ebp
	mov	esi, ebx
	mov	rcx, r14
	call	error
.label_896:
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
	.align	16
	#Procedure 0x409de6
	.globl sub_409de6
	.type sub_409de6, @function
sub_409de6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409df0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	.section	.text
	.align	16
	#Procedure 0x409dfa
	.globl sub_409dfa
	.type sub_409dfa, @function
sub_409dfa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409e00
	.globl __gl_setmode
	.type __gl_setmode, @function
__gl_setmode:

	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x409e03
	.globl sub_409e03
	.type sub_409e03, @function
sub_409e03:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409e10

	.globl c_locale
	.type c_locale, @function
c_locale:
	cmp	qword ptr [word ptr [rip + c_locale_cache]],  0
	jne	.label_897
	push	rax
	mov	edi, 0x1fbf
	mov	esi, OFFSET FLAT:label_898
	xor	edx, edx
	call	newlocale
	mov	qword ptr [word ptr [rip + c_locale_cache]],  rax
	add	rsp, 8
.label_897:
	mov	rax,  qword ptr [word ptr [rip + c_locale_cache]]
	ret	
	.section	.text
	.align	16
	#Procedure 0x409e3f
	.globl sub_409e3f
	.type sub_409e3f, @function
sub_409e3f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x409e40

	.globl set_binary_mode
	.type set_binary_mode, @function
set_binary_mode:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x409e43
	.globl sub_409e43
	.type sub_409e43, @function
sub_409e43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409e50

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x409e5a
	.globl sub_409e5a
	.type sub_409e5a, @function
sub_409e5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409e60

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_900
	cmp	byte ptr [rax], 0x43
	jne	.label_902
	cmp	byte ptr [rax + 1], 0
	je	.label_899
.label_902:
	mov	esi, OFFSET FLAT:label_901
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_900
.label_899:
	xor	ebx, ebx
.label_900:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x409e91
	.globl sub_409e91
	.type sub_409e91, @function
sub_409e91:

	nop	word ptr cs:[rax + rax]
.label_903:
	call	tail_bytes
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x409ea7
	.globl sub_409ea7
	.type sub_409ea7, @function
sub_409ea7:

	nop	
	.section	.text
	.align	16
	#Procedure 0x409ea8

	.globl tail
	.type tail, @function
tail:
	push	rax
	mov	qword ptr [rcx], 0
	cmp	byte ptr [byte ptr [rip + count_lines]],  0
	je	.label_903
	call	tail_lines
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x409ec0

	.globl safe_read
	.type safe_read, @function
safe_read:
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
.label_905:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_904
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_905
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
	jb	.label_904
	cmp	eax, 0x16
	mov	rbx, rcx
	mov	r13, rbp
	je	.label_905
.label_904:
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
	.align	16
	#Procedure 0x409f47
	.globl sub_409f47
	.type sub_409f47, @function
sub_409f47:

	nop	word ptr [rax + rax]
.label_906:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x409f55
	.globl sub_409f55
	.type sub_409f55, @function
sub_409f55:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409f60

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
	jae	.label_906
	shl	rax, 4
	add	rax, qword ptr [rbx]
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x409f80
	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:

	mov	rax, qword ptr [rdi + 0x68]
	mov	rdx, qword ptr [rdi + 0x70]
	ret	
	.section	.text
	.align	16
	#Procedure 0x409f89
	.globl sub_409f89
	.type sub_409f89, @function
sub_409f89:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409f90

	.globl wd_comparator
	.type wd_comparator, @function
wd_comparator:
	mov	eax, dword ptr [rdi + 0x44]
	cmp	eax, dword ptr [rsi + 0x44]
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x409f9a
	.globl sub_409f9a
	.type sub_409f9a, @function
sub_409f9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409fa0

	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:
	push	rax
	mov	r10, r8
	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	esi, 0xa
	mov	r8, rax
	mov	r9, r10
	call	xnumtoumax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x409fc3
	.globl sub_409fc3
	.type sub_409fc3, @function
sub_409fc3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409fd0

	.globl parse_options
	.type parse_options, @function
parse_options:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 8], r8
	mov	r15, rcx
	mov	r12, rdx
	mov	r14, rsi
	mov	ebp, edi
	jmp	.label_912
.label_919:
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_923
	xor	r9d, r9d
	mov	rdi, r13
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [r12], rax
	nop	word ptr [rax + rax]
.label_912:
	mov	edx, OFFSET FLAT:label_931
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r14
	call	getopt_long
	mov	ebx, eax
	lea	eax, [rbx + 0x83]
	cmp	eax, 0x108
	ja	.label_928
	jmp	qword ptr [word ptr [+ (rax * 8) + label_932]]
.label_1104:
	cmp	ebx, 0x6e
	sete	byte ptr [byte ptr [rip + count_lines]]
	sete	al
	mov	rcx,  qword ptr [word ptr [rip + optarg]]
	movzx	edx, byte ptr [rcx]
	cmp	dl, 0x2d
	je	.label_933
	cmp	dl, 0x2b
	jne	.label_938
	mov	byte ptr [byte ptr [rip + from_start]],  1
	jmp	.label_939
.label_1105:
	mov	byte ptr [byte ptr [rip + forever]],  1
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	test	rsi, rsi
	je	.label_908
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:label_916
	mov	edx, OFFSET FLAT:follow_mode_string
	mov	ecx, OFFSET FLAT:follow_mode_map
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + follow_mode_map]]
	mov	dword ptr [dword ptr [rip + follow_mode]],  eax
	jmp	.label_912
.label_1103:
	mov	byte ptr [byte ptr [rip + forever]],  1
	mov	dword ptr [dword ptr [rip + follow_mode]],  1
	mov	byte ptr [byte ptr [rip + reopen_inaccessible_files]],  1
	jmp	.label_912
.label_1106:
	mov	dword ptr [r15], 2
	jmp	.label_912
.label_1107:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:cl_strtod
	lea	rdx, [rsp + 0x10]
	call	xstrtod
	test	al, al
	je	.label_911
	movsd	xmm0, qword ptr [rsp + 0x10]
	ucomisd	xmm0,  qword ptr [word ptr [label_915]]
	jb	.label_911
	mov	rax, qword ptr [rsp + 8]
	movsd	qword ptr [rax], xmm0
	jmp	.label_912
.label_1108:
	mov	dword ptr [r15], 1
	jmp	.label_912
.label_1109:
	mov	byte ptr [byte ptr [rip + line_end]],  0
	jmp	.label_912
.label_1110:
	mov	byte ptr [byte ptr [rip + reopen_inaccessible_files]],  1
	jmp	.label_912
.label_1111:
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_935
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_69
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [word ptr [rip + max_n_unchanged_stats_between_opens]],  rax
	jmp	.label_912
.label_1112:
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_917
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:label_69
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	dword ptr [dword ptr [rip + pid]],  eax
	jmp	.label_912
.label_1113:
	mov	byte ptr [byte ptr [rip + presume_input_pipe]],  1
	jmp	.label_912
.label_1114:
	mov	byte ptr [byte ptr [rip + disable_inotify]],  1
	jmp	.label_912
.label_908:
	mov	dword ptr [dword ptr [rip + follow_mode]],  2
	jmp	.label_912
.label_933:
	inc	rcx
	mov	qword ptr [word ptr [rip + optarg]],  rcx
.label_939:
	movzx	eax,  byte ptr [byte ptr [rip + count_lines]]
.label_938:
	mov	r13,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	test	al, al
	je	.label_913
	mov	esi, OFFSET FLAT:label_918
	jmp	.label_919
.label_913:
	mov	esi, OFFSET FLAT:label_921
	jmp	.label_919
.label_1101:
	cmp	byte ptr [byte ptr [rip + reopen_inaccessible_files]],  1
	jne	.label_922
	cmp	byte ptr [byte ptr [rip + forever]],  0
	je	.label_930
	cmp	dword ptr [dword ptr [rip + follow_mode]],  2
	jne	.label_922
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_936
	jmp	.label_937
.label_930:
	mov	byte ptr [byte ptr [rip + reopen_inaccessible_files]],  0
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_934
.label_937:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_922:
	mov	edi,  dword ptr [dword ptr [rip + pid]]
	test	edi, edi
	je	.label_907
	mov	al,  byte ptr [byte ptr [rip + forever]]
	test	al, al
	jne	.label_907
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_914
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_929
.label_907:
	test	edi, edi
	je	.label_929
	xor	esi, esi
	call	kill
	test	eax, eax
	je	.label_929
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_929
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_920
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	dword ptr [dword ptr [rip + pid]],  0
.label_929:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1102:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_909
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
.label_1099:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	sub	rsp, 8
	mov	esi, OFFSET FLAT:label_558
	mov	edx, OFFSET FLAT:label_561
	mov	r8d, OFFSET FLAT:label_924
	mov	r9d, OFFSET FLAT:label_925
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_926
	push	OFFSET FLAT:label_927
	call	version_etc
	add	rsp, 0x20
	xor	edi, edi
	call	exit
.label_1100:
	xor	edi, edi
	call	usage
.label_928:
	mov	edi, 1
	call	usage
.label_911:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_910
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a3d0

	.globl start_lines
	.type start_lines, @function
start_lines:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x2028
	mov	r13, rcx
	mov	rbx, rdx
	mov	ebp, esi
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_941
	mov	qword ptr [rsp + 0x10], rdi
	lea	r14, [rsp + 0x20]
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp + 0xc], ebp
	jmp	.label_942
	.section	.text
	.align	16
	#Procedure 0x40a40a
	.globl sub_40a40a
	.type sub_40a40a, @function
sub_40a40a:

	nop	word ptr [rax + rax]
.label_940:
	mov	r13, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp + 0xc]
.label_942:
	mov	edx, 0x2000
	mov	edi, ebp
	mov	r15, r14
	mov	rsi, r14
	call	safe_read
	mov	r14d, 0xffffffff
	test	rax, rax
	je	.label_941
	cmp	rax, -1
	je	.label_943
	lea	r12, [rsp + rax + 0x20]
	add	qword ptr [r13], rax
	mov	al,  byte ptr [byte ptr [rip + line_end]]
	test	al, al
	mov	ebp, 0
	mov	eax, 0xa
	cmovne	ebp, eax
	mov	r14, r15
	mov	rax, r14
.label_944:
	mov	rdx, r12
	sub	rdx, rax
	mov	rdi, rax
	mov	esi, ebp
	call	memchr
	test	rax, rax
	je	.label_940
	inc	rax
	dec	rbx
	jne	.label_944
	xor	r14d, r14d
	cmp	rax, r12
	jae	.label_941
	sub	r12, rax
	mov	rdi, rax
	mov	rsi, r12
	call	xwrite_stdout
.label_941:
	mov	eax, r14d
	add	rsp, 0x2028
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_943:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_175
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x10]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	r14d, 1
	jmp	.label_941
	.section	.text
	.align	16
	#Procedure 0x40a4eb
	.globl sub_40a4eb
	.type sub_40a4eb, @function
sub_40a4eb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a4f0

	.globl tail_bytes
	.type tail_bytes, @function
tail_bytes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r14, rcx
	mov	r12, rdx
	mov	ebp, esi
	mov	r15, rdi
	lea	rsi, [rsp + 8]
	mov	edi, ebp
	call	fstat
	test	eax, eax
	je	.label_950
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
	jmp	.label_945
.label_950:
	mov	cl,  byte ptr [byte ptr [rip + presume_input_pipe]]
	xor	cl, 1
	test	r12, r12
	setns	al
	and	al, cl
	cmp	byte ptr [byte ptr [rip + from_start]],  0
	je	.label_955
	test	al, al
	je	.label_954
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x8000
	jne	.label_957
	mov	edx, 1
	mov	edi, ebp
	mov	rsi, r12
	mov	rcx, r15
	call	xlseek
	test	rax, rax
	jns	.label_951
.label_957:
	mov	edx, 1
	mov	edi, ebp
	mov	rsi, r12
	call	lseek
	cmp	rax, -1
	je	.label_954
.label_951:
	add	qword ptr [r14], r12
	mov	r12, -1
	jmp	.label_949
.label_954:
	mov	rdi, r15
	mov	esi, ebp
	mov	rdx, r12
	mov	rcx, r14
	call	start_bytes
	mov	ebx, eax
	test	ebx, ebx
	mov	r12, -1
	je	.label_949
	shr	ebx, 0x1f
	jmp	.label_945
.label_955:
	mov	rbx, -1
	test	al, al
	je	.label_953
	lea	rdi, [rsp + 8]
	call	usable_st_size
	test	al, al
	je	.label_947
	mov	r13, qword ptr [rsp + 0x38]
	jmp	.label_948
.label_953:
	mov	r13, -1
	jmp	.label_948
.label_947:
	mov	rsi, r12
	neg	rsi
	mov	edx, 2
	mov	edi, ebp
	call	lseek
	mov	rbx, rax
	lea	r13, [rbx + r12]
	cmp	rbx, -1
	cmove	r13, rbx
.label_948:
	mov	rax, qword ptr [rsp + 0x40]
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	ecx, 0x200
	mov	edx, 0x200
	cmovb	rdx, rax
	test	rax, rax
	cmovle	rdx, rcx
	cmp	r13, rdx
	jle	.label_956
	cmp	rbx, -1
	jne	.label_952
	xor	esi, esi
	mov	edx, 1
	mov	edi, ebp
	mov	rcx, r15
	call	xlseek
	mov	rbx, rax
.label_952:
	mov	rax, r13
	sub	rax, rbx
	jle	.label_946
	cmp	rax, r12
	jbe	.label_946
	sub	r13, r12
	xor	edx, edx
	mov	edi, ebp
	mov	rsi, r13
	mov	rcx, r15
	call	xlseek
	mov	rbx, r13
.label_946:
	mov	qword ptr [r14], rbx
.label_949:
	xor	edi, edi
	mov	rsi, r15
	mov	edx, ebp
	mov	rcx, r12
	call	dump_remainder
	add	qword ptr [r14], rax
	mov	bl, 1
	jmp	.label_945
.label_956:
	mov	rdi, r15
	mov	esi, ebp
	mov	rdx, r12
	mov	rcx, r14
	call	pipe_bytes
	mov	bl, al
.label_945:
	mov	eax, ebx
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
	#Procedure 0x40a6e1
	.globl sub_40a6e1
	.type sub_40a6e1, @function
sub_40a6e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a6f0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	16
	#Procedure 0x40a6fa
	.globl sub_40a6fa
	.type sub_40a6fa, @function
sub_40a6fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a700
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a70a
	.globl sub_40a70a
	.type sub_40a70a, @function
sub_40a70a:

	nop	word ptr [rax + rax]
.label_959:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40a715

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_961
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_959
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_962
.label_961:
	test	rcx, rcx
	jne	.label_960
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_960:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_958
.label_962:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_958:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40a789
	.globl sub_40a789
	.type sub_40a789, @function
sub_40a789:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a790
	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:

	mov	rax, qword ptr [rdi + 0x50]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a795
	.globl sub_40a795
	.type sub_40a795, @function
sub_40a795:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a7a0

	.globl xnanosleep
	.type xnanosleep, @function
xnanosleep:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	call	dtotimespec
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], rdx
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	ebx, ebx
	lea	rdi, [rsp]
	xor	esi, esi
	call	rpl_nanosleep
	test	eax, eax
	je	.label_963
	lea	r15, [rsp]
	nop	dword ptr [rax + rax]
.label_964:
	mov	eax, dword ptr [r14]
	mov	ebx, 0xffffffff
	or	eax, 4
	cmp	eax, 4
	jne	.label_963
	mov	dword ptr [r14], 0
	xor	ebx, ebx
	xor	esi, esi
	mov	rdi, r15
	call	rpl_nanosleep
	test	eax, eax
	jne	.label_964
.label_963:
	mov	eax, ebx
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a813
	.globl sub_40a813
	.type sub_40a813, @function
sub_40a813:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a820

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_965
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x40a842
	.globl sub_40a842
	.type sub_40a842, @function
sub_40a842:

	nop	word ptr cs:[rax + rax]
.label_969:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a85e
	.globl sub_40a85e
	.type sub_40a85e, @function
sub_40a85e:

	nop	word ptr cs:[rax + rax]
.label_970:
	add	r14, 0x10
.label_972:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_969
	cmp	qword ptr [r14], 0
	je	.label_970
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_966
	nop	word ptr cs:[rax + rax]
.label_967:
	test	cl, 1
	je	.label_971
	mov	rdi, qword ptr [rbx]
	call	rax
.label_971:
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
	jne	.label_967
.label_966:
	test	cl, cl
	je	.label_968
	mov	rdi, qword ptr [r14]
	call	rax
.label_968:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_970
	.section	.text
	.align	16
	#Procedure 0x40a8e0
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	jmp	.label_972
	.section	.text
	.align	16
	#Procedure 0x40a8ed
	.globl sub_40a8ed
	.type sub_40a8ed, @function
sub_40a8ed:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a8f0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	16
	#Procedure 0x40a8fe
	.globl sub_40a8fe
	.type sub_40a8fe, @function
sub_40a8fe:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40a900
	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:

	mov	rax, qword ptr [rdi + 0x70]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a905
	.globl sub_40a905
	.type sub_40a905, @function
sub_40a905:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a910

	.globl offtostr
	.type offtostr, @function
offtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_973
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_974:
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
	ja	.label_974
	jmp	.label_976
.label_973:
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_975:
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
	ja	.label_975
	mov	byte ptr [rsi], 0x2d
.label_976:
	mov	rax, rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a9c3
	.globl sub_40a9c3
	.type sub_40a9c3, @function
sub_40a9c3:

	nop	word ptr cs:[rax + rax]
.label_978:
	test	rbx, rbx
	je	.label_977
	mov	qword ptr [rbx], r14
.label_977:
	xorps	xmm0, xmm0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a9e3
	.globl sub_40a9e3
	.type sub_40a9e3, @function
sub_40a9e3:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a9e7

	.globl c_strtod
	.type c_strtod, @function
c_strtod:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	call	c_locale
	test	rax, rax
	je	.label_978
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rax
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	strtod_l
	.section	.text
	.align	16
	#Procedure 0x40aa10
	.globl rotr64
	.type rotr64, @function
rotr64:

	mov	ecx, esi
	ror	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aa19
	.globl sub_40aa19
	.type sub_40aa19, @function
sub_40aa19:

	nop	dword ptr [rax]
.label_979:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_982:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_981
	inc	r9
	cmp	r9, 0xa
	jb	.label_980
.label_981:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aa4f
	.globl sub_40aa4f
	.type sub_40aa4f, @function
sub_40aa4f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40aa50

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_980:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_979
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_982
	.section	.text
	.align	16
	#Procedure 0x40aa79
	.globl sub_40aa79
	.type sub_40aa79, @function
sub_40aa79:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40aae5
	.globl sub_40aae5
	.type sub_40aae5, @function
sub_40aae5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aaf2
	.globl sub_40aaf2
	.type sub_40aaf2, @function
sub_40aaf2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ab16
	.globl sub_40ab16
	.type sub_40ab16, @function
sub_40ab16:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ab29
	.globl sub_40ab29
	.type sub_40ab29, @function
sub_40ab29:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ab30

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	16
	#Procedure 0x40ab40

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	.section	.text
	.align	16
	#Procedure 0x40ab4f
	.globl sub_40ab4f
	.type sub_40ab4f, @function
sub_40ab4f:

	nop	
