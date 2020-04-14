	.section	.text
	.align	32
	#Procedure 0x401ba9
	.globl sub_401ba9
	.type sub_401ba9, @function
sub_401ba9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x401baa
	.globl sub_401baa
	.type sub_401baa, @function
sub_401baa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401be2
	.globl sub_401be2
	.type sub_401be2, @function
sub_401be2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c2a
	.globl sub_401c2a
	.type sub_401c2a, @function
sub_401c2a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c4c
	.globl sub_401c4c
	.type sub_401c4c, @function
sub_401c4c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401c5d
	.globl sub_401c5d
	.type sub_401c5d, @function
sub_401c5d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401c76
	.globl sub_401c76
	.type sub_401c76, @function
sub_401c76:

	nop	word ptr cs:[rax + rax]
.label_9:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401c85
	.globl sub_401c85
	.type sub_401c85, @function
sub_401c85:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c8f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_9
	call	rpl_calloc
	test	rax, rax
	je	.label_9
	pop	rcx
	ret	
.label_12:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_10
.label_11:
	mov	eax, 1
	test	bpl, bpl
	je	.label_10
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
.label_10:
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
	#Procedure 0x401cf8
	.globl sub_401cf8
	.type sub_401cf8, @function
sub_401cf8:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401cfb

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
	je	.label_12
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_11
	jmp	.label_10
.label_14:
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d31
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_13
	mov	al, 1
	jmp	qword ptr [(rdi * 8) + label_15]
.label_13:
	xor	eax, eax
	jmp	.label_14
	.section	.text
	.align	32
	#Procedure 0x401d46
	.globl sub_401d46
	.type sub_401d46, @function
sub_401d46:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d50

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	mov	rax, qword ptr [rdi + 0x58]
	mov	rdx, qword ptr [rdi + 0x60]
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d59
	.globl sub_401d59
	.type sub_401d59, @function
sub_401d59:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401d60

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_16
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_16:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401d83
	.globl sub_401d83
	.type sub_401d83, @function
sub_401d83:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d90

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_17
	test	rax, rax
	je	.label_18
.label_17:
	pop	rbx
	ret	
.label_18:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401daa
	.globl sub_401daa
	.type sub_401daa, @function
sub_401daa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401db0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_19
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_21
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_19
.label_21:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_19
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_20
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_20:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_19:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x401e27
	.globl sub_401e27
	.type sub_401e27, @function
sub_401e27:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e30
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e33
	.globl sub_401e33
	.type sub_401e33, @function
sub_401e33:

	nop	word ptr cs:[rax + rax]
.label_28:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x401e4b

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_22
	cmp	byte ptr [rip + ignore_EPIPE],  0
	je	.label_24
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_24
.label_22:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_28
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_27:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_25
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_24:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx, qword ptr [rip + file_name]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_27
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_26
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x401f00

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	32
	#Procedure 0x401f05
	.globl sub_401f05
	.type sub_401f05, @function
sub_401f05:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f10

	.globl init_fps
	.type init_fps, @function
init_fps:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	ebp, edi
	mov	dword ptr [rip + total_files],  0
	mov	rdi, qword ptr [rip + column_vector]
	call	free
	movsxd	rdi, dword ptr [rip + columns]
	mov	esi, 0x40
	call	xnmalloc
	mov	rbx, rax
	mov	qword ptr [rip + column_vector],  rbx
	cmp	byte ptr [rip + parallel_files],  1
	je	.label_29
	test	ebp, ebp
	jle	.label_32
	mov	rdi, qword ptr [r14]
	mov	rsi, rbx
	call	open_file
	test	al, al
	je	.label_35
	mov	rbp, qword ptr [r14]
	mov	rdi, qword ptr [rbx]
	call	fileno
	mov	rdi, rbp
	mov	esi, eax
	jmp	.label_37
	.section	.text
	.align	32
	#Procedure 0x401f7b
	.globl sub_401f7b
	.type sub_401f7b, @function
sub_401f7b:

	nop	dword ptr [rax + rax]
.label_33:
	add	rbx, 0x40
	add	r14, 8
.label_29:
	test	ebp, ebp
	je	.label_30
	dec	ebp
	mov	rdi, qword ptr [r14]
	mov	rsi, rbx
	call	open_file
	test	al, al
	jne	.label_33
	add	rbx, -0x40
	dec	dword ptr [rip + columns]
	jmp	.label_33
.label_35:
	xor	eax, eax
	jmp	.label_36
.label_30:
	cmp	dword ptr [rip + columns],  0
	je	.label_35
	mov	edi, OFFSET FLAT:label_34
	mov	esi, 0xffffffff
	call	init_header
	jmp	.label_38
.label_32:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rip + stdin]
	mov	qword ptr [rbx], rax
	mov	byte ptr [rip + have_read_stdin],  1
	mov	dword ptr [rbx + 0x10], 0
	mov	byte ptr [rbx + 0x39], 0
	inc	dword ptr [rip + total_files]
	mov	edi, OFFSET FLAT:label_34
	mov	esi, 0xffffffff
.label_37:
	call	init_header
	mov	dword ptr [rbx + 0x2c], 0
	mov	esi, dword ptr [rip + columns]
	cmp	esi, 1
	je	.label_38
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 8]
	add	rbx, 0x40
	mov	edx, 1
	sub	edx, esi
	nop	word ptr [rax + rax]
.label_39:
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rbx], rax
	mov	dword ptr [rbx + 0x10], 0
	mov	byte ptr [rbx + 0x39], 0
	mov	dword ptr [rbx + 0x2c], 0
	add	rbx, 0x40
	inc	edx
	jne	.label_39
.label_38:
	mov	eax, dword ptr [rip + total_files]
	mov	dword ptr [rip + files_ready_to_read],  eax
	mov	al, 1
.label_36:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402074
	.globl sub_402074
	.type sub_402074, @function
sub_402074:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402080

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
	je	.label_40
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_41:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebp, eax
	dec	ebx
	jne	.label_41
.label_40:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4020be
	.globl sub_4020be
	.type sub_4020be, @function
sub_4020be:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4020c0

	.globl init_funcs
	.type init_funcs, @function
init_funcs:
	mov	eax, dword ptr [rip + chars_per_margin]
	xor	esi, esi
	cmp	byte ptr [rip + truncate_lines],  1
	jne	.label_42
	cmp	byte ptr [rip + parallel_files],  1
	jne	.label_45
	cmp	byte ptr [rip + numbered_lines],  1
	jne	.label_45
	mov	esi, dword ptr [rip + chars_per_column]
	add	esi, eax
	add	esi, dword ptr [rip + number_width]
	jmp	.label_42
.label_45:
	mov	esi, dword ptr [rip + chars_per_column]
	add	esi, eax
.label_42:
	push	rbp
	push	r15
	push	r14
	push	rbx
	add	eax, dword ptr [rip + col_sep_length]
	mov	rcx, qword ptr [rip + column_vector]
	mov	edx, 1
	mov	bl, byte ptr [rip + storing_columns]
	cmp	dword ptr [rip + columns],  2
	jl	.label_53
	mov	r11b, byte ptr [rip + numbered_lines]
	mov	r8b, byte ptr [rip + parallel_files]
	xor	r8b, 1
	mov	r9b, byte ptr [rip + truncate_lines]
	mov	r14d, dword ptr [rip + col_sep_length]
	mov	r15d, dword ptr [rip + chars_per_column]
	mov	ebp, dword ptr [rip + columns]
	mov	edx, 1
	mov	r10b, byte ptr [rip + storing_columns]
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_43:
	test	bl, 1
	je	.label_49
	mov	qword ptr [rcx + 32], OFFSET FLAT:print_char
	mov	qword ptr [rcx + 24], OFFSET FLAT:read_line
	jmp	.label_52
	.section	.text
	.align	32
	#Procedure 0x402187
	.globl sub_402187
	.type sub_402187, @function
sub_402187:

	nop	word ptr [rax + rax]
.label_49:
	mov	qword ptr [rcx + 32], OFFSET FLAT:store_char
	mov	qword ptr [rcx + 24], OFFSET FLAT:print_stored
.label_52:
	test	r11b, 1
	je	.label_46
	cmp	edx, 1
	sete	bl
	or	bl, r8b
	jmp	.label_47
	.section	.text
	.align	32
	#Procedure 0x4021b1
	.globl sub_4021b1
	.type sub_4021b1, @function
sub_4021b1:

	nop	word ptr cs:[rax + rax]
.label_46:
	xor	ebx, ebx
.label_47:
	and	bl, 1
	mov	byte ptr [rcx + 0x38], bl
	mov	dword ptr [rcx + 0x34], eax
	add	esi, r14d
	mov	eax, esi
	lea	esi, [rsi + r15]
	mov	ebx, r9d
	and	bl, 1
	cmove	eax, edi
	test	bl, bl
	cmove	esi, edi
	add	rcx, 0x40
	inc	edx
	cmp	edx, ebp
	mov	ebx, r10d
	jl	.label_43
	mov	ebx, r10d
.label_53:
	test	bl, 1
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jne	.label_51
	cmp	byte ptr [rip + balance_columns],  1
	jne	.label_51
	mov	qword ptr [rcx + 32], OFFSET FLAT:store_char
	mov	qword ptr [rcx + 24], OFFSET FLAT:print_stored
	jmp	.label_44
.label_51:
	mov	qword ptr [rcx + 32], OFFSET FLAT:print_char
	mov	qword ptr [rcx + 24], OFFSET FLAT:read_line
.label_44:
	cmp	byte ptr [rip + numbered_lines],  1
	jne	.label_48
	mov	sil, byte ptr [rip + parallel_files]
	cmp	edx, 1
	sete	dl
	xor	sil, 1
	or	sil, dl
	jmp	.label_50
.label_48:
	xor	esi, esi
.label_50:
	and	sil, 1
	mov	byte ptr [rcx + 0x38], sil
	mov	dword ptr [rcx + 0x34], eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x402255
	.globl sub_402255
	.type sub_402255, @function
sub_402255:

	nop	word ptr cs:[rax + rax]
.label_56:
	mov	dword ptr [rip + files_ready_to_read],  1
.label_57:
	ret	
	.section	.text
	.align	32
	#Procedure 0x40226b
	.globl sub_40226b
	.type sub_40226b, @function
sub_40226b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402275

	.globl reset_status
	.type reset_status, @function
reset_status:
	mov	eax, dword ptr [rip + columns]
	test	eax, eax
	je	.label_58
	mov	rcx, qword ptr [rip + column_vector]
	add	rcx, 0x10
	nop	word ptr cs:[rax + rax]
.label_55:
	cmp	dword ptr [rcx], 2
	jne	.label_54
	mov	dword ptr [rcx], 0
	inc	dword ptr [rip + files_ready_to_read]
.label_54:
	add	rcx, 0x40
	dec	eax
	jne	.label_55
.label_58:
	mov	al, byte ptr [rip + storing_columns]
	test	al, al
	jne	.label_57
	mov	rax, qword ptr [rip + column_vector]
	cmp	dword ptr [rax + 0x10], 3
	jne	.label_56
	mov	dword ptr [rip + files_ready_to_read],  0
	ret	
	.section	.text
	.align	32
	#Procedure 0x4022d0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4022da
	.globl sub_4022da
	.type sub_4022da, @function
sub_4022da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4022e0
	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:

	mov	rax, qword ptr [rdi + 0x70]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4022e5
	.globl sub_4022e5
	.type sub_4022e5, @function
sub_4022e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4022f0

	.globl extend_abbrs
	.type extend_abbrs, @function
extend_abbrs:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	call	memcpy
	mov	byte ptr [rbx + r14], 0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x40230c
	.globl sub_40230c
	.type sub_40230c, @function
sub_40230c:

	nop	dword ptr [rax]
.label_60:
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	close_file
.label_61:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x402327
	.globl sub_402327
	.type sub_402327, @function
sub_402327:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402333

	.globl read_rest_of_line
	.type read_rest_of_line, @function
read_rest_of_line:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rbx, qword ptr [r14]
	nop	word ptr [rax + rax]
.label_63:
	mov	rdi, rbx
	call	getc_unlocked
	cmp	eax, -1
	je	.label_60
	cmp	eax, 0xa
	je	.label_61
	cmp	eax, 0xc
	jne	.label_63
	mov	rdi, rbx
	call	getc_unlocked
	cmp	eax, 0xa
	je	.label_59
	mov	edi, eax
	mov	rsi, rbx
	call	ungetc
.label_59:
	cmp	byte ptr [rip + keep_FF],  1
	jne	.label_62
	mov	byte ptr [rip + print_a_FF],  1
.label_62:
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	hold_file
	.section	.text
	.align	32
	#Procedure 0x402390

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_72
	nop	
.label_71:
	mov	edi, OFFSET FLAT:label_64
	call	strcmp
	test	eax, eax
	je	.label_69
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_71
.label_69:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_64
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_74
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_67
	mov	ecx, OFFSET FLAT:label_68
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_65
	mov	esi, OFFSET FLAT:label_66
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_65
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_73
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_65:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_75
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_64
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_68
	mov	ecx, OFFSET FLAT:label_64
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_70
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_76
	mov	ecx, OFFSET FLAT:label_34
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
	#Procedure 0x4024aa
	.globl sub_4024aa
	.type sub_4024aa, @function
sub_4024aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4024b0

	.globl nstrftime
	.type nstrftime, @function
nstrftime:
	push	rax
	mov	eax, r9d
	mov	r10, r8
	sub	rsp, 8
	mov	r8d, 0
	mov	r9d, 0
	push	rax
	push	r10
	push	-1
	call	__strftime_internal
	add	rsp, 0x20
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4024d7
	.globl sub_4024d7
	.type sub_4024d7, @function
sub_4024d7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4024e0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	32
	#Procedure 0x4024ee
	.globl sub_4024ee
	.type sub_4024ee, @function
sub_4024ee:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4024f0

	.globl pad_down
	.type pad_down, @function
pad_down:
	push	rbx
	mov	ebx, edi
	mov	al, byte ptr [rip + use_form_feed]
	test	al, al
	je	.label_77
	mov	edi, 0xc
	pop	rbx
	jmp	putchar_unlocked
.label_77:
	test	ebx, ebx
	je	.label_78
	nop	dword ptr [rax]
.label_79:
	mov	edi, 0xa
	call	putchar_unlocked
	dec	ebx
	jne	.label_79
.label_78:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402520

	.globl init_header
	.type init_header, @function
init_header:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xf8
	mov	r13, rdi
	movzx	ecx, byte ptr [r13]
	mov	eax, 0x2d
	sub	eax, ecx
	jne	.label_82
	movzx	eax, byte ptr [r13 + 1]
	neg	eax
.label_82:
	cmp	eax, 1
	sbb	r15d, r15d
	or	r15d, esi
	js	.label_80
	lea	rsi, [rsp + 0x68]
	mov	edi, r15d
	call	fstat
	test	eax, eax
	je	.label_83
.label_80:
	cmp	qword ptr [rip + init_header.timespec],  0
	jne	.label_84
	mov	edi, OFFSET FLAT:init_header.timespec
	call	gettime
.label_84:
	movups	xmm0, xmmword ptr [rip + init_header.timespec]
	movaps	xmmword ptr [rsp], xmm0
	jmp	.label_87
.label_83:
	lea	rdi, [rsp + 0x68]
	call	get_stat_mtime
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], rdx
.label_87:
	mov	r14d, dword ptr [rsp + 8]
	mov	rdi, qword ptr [rip + localtz]
	lea	rsi, [rsp]
	lea	rdx, [rsp + 0x30]
	call	localtime_rz
	test	rax, rax
	je	.label_86
	mov	rdx, qword ptr [rip + date_format]
	mov	r8, qword ptr [rip + localtz]
	lea	r12, [rsp + 0x30]
	xor	edi, edi
	mov	rsi, -1
	mov	rcx, r12
	mov	r9d, r14d
	call	nstrftime
	mov	rbx, rax
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	rbp, rax
	mov	rdx, qword ptr [rip + date_format]
	mov	r8, qword ptr [rip + localtz]
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rcx, r12
	mov	r9d, r14d
	call	nstrftime
	jmp	.label_81
.label_86:
	mov	edi, 0x21
	call	xmalloc
	mov	rbp, rax
	mov	rdi, qword ptr [rsp]
	lea	rsi, [rsp + 0x10]
	call	timetostr
	mov	rbx, rax
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_85
	xor	eax, eax
	mov	rdi, rbp
	mov	r8, rbx
	mov	r9d, r14d
	call	__sprintf_chk
.label_81:
	mov	rdi, qword ptr [rip + date_text]
	call	free
	mov	qword ptr [rip + date_text],  rbp
	mov	rax, qword ptr [rip + custom_header]
	test	r15d, r15d
	mov	ecx, OFFSET FLAT:label_34
	cmovs	r13, rcx
	test	rax, rax
	cmovne	r13, rax
	mov	qword ptr [rip + file_text],  r13
	mov	ebx, dword ptr [rip + chars_per_line]
	mov	rdi, qword ptr [rip + date_text]
	xor	esi, esi
	call	gnu_mbswidth
	sub	ebx, eax
	mov	rdi, qword ptr [rip + file_text]
	xor	esi, esi
	call	gnu_mbswidth
	sub	ebx, eax
	mov	dword ptr [rip + header_width_available],  ebx
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4026c2
	.globl sub_4026c2
	.type sub_4026c2, @function
sub_4026c2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026d0

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
	je	.label_88
	cmp	r15, -2
	jb	.label_88
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_88
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_88:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402726
	.globl sub_402726
	.type sub_402726, @function
sub_402726:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402730

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	bl, 1
	cmp	r14, 1
	je	.label_89
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	mov	rdi, r14
	call	change_env
	mov	ebx, eax
	test	bl, bl
	jne	.label_90
	mov	ebp, dword ptr [r15]
.label_90:
	mov	rdi, r14
	call	tzfree
	mov	dword ptr [r15], ebp
.label_89:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402776
	.globl sub_402776
	.type sub_402776, @function
sub_402776:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402780

	.globl open_file
	.type open_file, @function
open_file:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	cmp	byte ptr [r14], 0x2d
	jne	.label_91
	cmp	byte ptr [r14 + 1], 0
	je	.label_94
.label_91:
	mov	qword ptr [rbx + 8], r14
	mov	esi, OFFSET FLAT:label_96
	mov	rdi, r14
	call	fopen_safer
	mov	qword ptr [rbx], rax
	jmp	.label_93
.label_94:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rip + stdin]
	mov	qword ptr [rbx], rax
	mov	byte ptr [rip + have_read_stdin],  1
.label_93:
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_95
	mov	esi, 2
	call	fadvise
	mov	dword ptr [rbx + 0x10], 0
	mov	byte ptr [rbx + 0x39], 0
	inc	dword ptr [rip + total_files]
	mov	bl, 1
	jmp	.label_92
.label_95:
	mov	byte ptr [rip + failed_opens],  1
	mov	al, byte ptr [rip + ignore_failed_opens]
	test	al, al
	je	.label_97
	xor	ebx, ebx
	jmp	.label_92
.label_97:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_26
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_92:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402841
	.globl sub_402841
	.type sub_402841, @function
sub_402841:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402850

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
	je	.label_100
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_98
	jmp	.label_99
.label_100:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_99
.label_98:
	mov	eax, 1
	test	bpl, bpl
	je	.label_99
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
.label_99:
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
	#Procedure 0x4028d8
	.globl sub_4028d8
	.type sub_4028d8, @function
sub_4028d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4028e0

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
	je	.label_101
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_103
	jmp	.label_102
.label_101:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_102
.label_103:
	mov	eax, 1
	test	bpl, bpl
	je	.label_102
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
.label_102:
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
	#Procedure 0x402959
	.globl sub_402959
	.type sub_402959, @function
sub_402959:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402960

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
	je	.label_106
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_105
	jmp	.label_104
.label_106:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_104
.label_105:
	mov	eax, 1
	test	bpl, bpl
	je	.label_104
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
.label_104:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4029c3
	.globl sub_4029c3
	.type sub_4029c3, @function
sub_4029c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029d0

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
	je	.label_109
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_107
	jmp	.label_108
.label_109:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_108
.label_107:
	mov	eax, 1
	test	bpl, bpl
	je	.label_108
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_108:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a2f
	.globl sub_402a2f
	.type sub_402a2f, @function
sub_402a2f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402a30

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
	je	.label_110
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_112
	jmp	.label_111
.label_110:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_111
.label_112:
	mov	eax, 1
	test	bpl, bpl
	je	.label_111
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_111:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a79
	.globl sub_402a79
	.type sub_402a79, @function
sub_402a79:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402a80

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
	je	.label_115
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_114
	jmp	.label_113
.label_115:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_113
.label_114:
	mov	eax, 1
	test	bpl, bpl
	je	.label_113
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_113:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ac5
	.globl sub_402ac5
	.type sub_402ac5, @function
sub_402ac5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ad0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_118
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_117
	jmp	.label_116
.label_118:
	mov	eax, 1
	test	cl, cl
	je	.label_116
.label_117:
	xor	eax, eax
.label_116:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402aff
	.globl sub_402aff
	.type sub_402aff, @function
sub_402aff:

	nop	
.label_123:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_121:
	xor	eax, eax
.label_119:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b1f
	.globl sub_402b1f
	.type sub_402b1f, @function
sub_402b1f:

	nop	word ptr cs:[rax + rax]
.label_122:
	mov	rax, rbx
	jmp	.label_119
	.section	.text
	.align	32
	#Procedure 0x402b2e

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
	je	.label_119
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_122
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_123
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_120
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_119
.label_120:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_121
	.section	.text
	.align	32
	#Procedure 0x402b90
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b93
	.globl sub_402b93
	.type sub_402b93, @function
sub_402b93:

	nop	word ptr cs:[rax + rax]
.label_124:
	xor	eax, eax
.label_127:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402bad
	.globl sub_402bad
	.type sub_402bad, @function
sub_402bad:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402bb6

	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_126
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_124
	mov	rdi, rbp
	mov	rsi, r15
	call	localtime_r
	mov	bpl, 1
	test	rax, rax
	je	.label_125
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	mov	ebp, eax
	xor	bpl, 1
.label_125:
	mov	rdi, r14
	call	revert_tz
	xor	ecx, ecx
	xor	al, 1
	cmovne	r15, rcx
	test	bpl, bpl
	cmovne	r15, rcx
	mov	rax, r15
	jmp	.label_127
.label_126:
	mov	rdi, rbp
	mov	rsi, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	gmtime_r
	.section	.text
	.align	32
	#Procedure 0x402c30
	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:

	mov	rax, qword ptr [rdi + 0x60]
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c35
	.globl sub_402c35
	.type sub_402c35, @function
sub_402c35:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c40

	.globl timetostr
	.type timetostr, @function
timetostr:
	jmp	imaxtostr
	.section	.text
	.align	32
	#Procedure 0x402c45
	.globl sub_402c45
	.type sub_402c45, @function
sub_402c45:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c50
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
	#Procedure 0x402c66
	.globl sub_402c66
	.type sub_402c66, @function
sub_402c66:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c70

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
.label_198:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_200
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_204]
.label_1148:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_209
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_148
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_1149:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_220
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_220
	xor	r14d, r14d
.label_228:
	cmp	r14, r11
	jae	.label_227
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_227:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_228
.label_220:
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
	jmp	.label_149
.label_1141:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_149
.label_1144:
	mov	al, 1
.label_1142:
	mov	r12b, 1
.label_1145:
	test	r12b, 1
	mov	cl, 1
	je	.label_131
	mov	ecx, eax
.label_131:
	mov	al, cl
.label_1143:
	test	r12b, 1
	jne	.label_135
	test	r11, r11
	je	.label_138
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_138:
	mov	r14d, 1
	jmp	.label_145
.label_135:
	xor	r14d, r14d
.label_145:
	mov	ecx, OFFSET FLAT:label_148
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_149
.label_1146:
	test	r12b, 1
	jne	.label_156
	test	r11, r11
	je	.label_202
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_202:
	mov	r14d, 1
	jmp	.label_160
.label_1147:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_165
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_149
.label_156:
	xor	r14d, r14d
.label_160:
	mov	eax, OFFSET FLAT:label_165
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_149:
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
	jmp	.label_241
	.section	.text
	.align	32
	#Procedure 0x402f4c
	.globl sub_402f4c
	.type sub_402f4c, @function
sub_402f4c:

	nop	dword ptr [rax]
.label_166:
	inc	rsi
.label_241:
	cmp	rbp, -1
	je	.label_212
	cmp	rsi, rbp
	jne	.label_214
	jmp	.label_216
	.section	.text
	.align	32
	#Procedure 0x402f63
	.globl sub_402f63
	.type sub_402f63, @function
sub_402f63:

	nop	word ptr cs:[rax + rax]
.label_212:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_216
.label_214:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_223
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_217
	cmp	rbp, -1
	jne	.label_217
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
.label_217:
	cmp	rbx, rbp
	jbe	.label_230
.label_223:
	xor	r8d, r8d
.label_147:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_231
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_237]
.label_1003:
	test	rsi, rsi
	jne	.label_146
	jmp	.label_172
	.section	.text
	.align	32
	#Procedure 0x402ffe
	.globl sub_402ffe
	.type sub_402ffe, @function
sub_402ffe:

	nop	
.label_230:
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
	jne	.label_143
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_147
	jmp	.label_157
.label_143:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_147
.label_1007:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_168
	test	rsi, rsi
	jne	.label_169
	cmp	rbp, 1
	je	.label_172
	xor	r13d, r13d
	jmp	.label_134
.label_996:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_177
	cmp	byte ptr [rsp + 7], 0
	jne	.label_128
	cmp	r12d, 2
	jne	.label_182
	mov	eax, r9d
	and	al, 1
	jne	.label_182
	cmp	r14, r11
	jae	.label_183
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_183:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_186
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_186:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_191
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_191:
	add	r14, 3
	mov	r9b, 1
.label_182:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_130
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_130:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_199
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_199
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_199
	cmp	r14, r11
	jae	.label_210
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_210:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_194
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_194:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_134
.label_997:
	mov	bl, 0x62
	jmp	.label_219
.label_998:
	mov	cl, 0x74
	jmp	.label_222
.label_999:
	mov	bl, 0x76
	jmp	.label_219
.label_1000:
	mov	bl, 0x66
	jmp	.label_219
.label_1001:
	mov	cl, 0x72
	jmp	.label_222
.label_1004:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_226
	cmp	byte ptr [rsp + 7], 0
	jne	.label_128
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
	jae	.label_229
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_229:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_239
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_239:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_240
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_240:
	add	r14, 3
	xor	r9d, r9d
.label_226:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_134
.label_1005:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_140
	cmp	r12d, 2
	jne	.label_146
	cmp	byte ptr [rsp + 7], 0
	je	.label_146
	jmp	.label_128
.label_1006:
	cmp	r12d, 2
	jne	.label_154
	cmp	byte ptr [rsp + 7], 0
	jne	.label_128
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_139
.label_231:
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
.label_161:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_180
	test	r8b, r8b
	je	.label_180
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_134
.label_168:
	test	rsi, rsi
	jne	.label_197
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_197
.label_172:
	mov	dl, 1
.label_1002:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_128
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_134:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_205
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_206
	jmp	.label_211
	.section	.text
	.align	32
	#Procedure 0x403344
	.globl sub_403344
	.type sub_403344, @function
sub_403344:

	nop	word ptr cs:[rax + rax]
.label_205:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_211
.label_206:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_213
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_139
	jmp	.label_225
	.section	.text
	.align	32
	#Procedure 0x40338d
	.globl sub_40338d
	.type sub_40338d, @function
sub_40338d:

	nop	dword ptr [rax]
.label_211:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_225
	jmp	.label_139
.label_213:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_225
.label_177:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_166
	xor	r15d, r15d
	jmp	.label_146
.label_154:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_222
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_139
.label_222:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_128
.label_219:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_134
	nop	word ptr cs:[rax + rax]
.label_225:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_128
	cmp	r12d, 2
	jne	.label_132
	mov	eax, r9d
	and	al, 1
	jne	.label_132
	cmp	r14, r11
	jae	.label_137
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_137:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_192
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_192:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_151
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_151:
	add	r14, 3
	mov	r9b, 1
.label_132:
	cmp	r14, r11
	jae	.label_155
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_155:
	inc	r14
	jmp	.label_158
.label_163:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_162
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_162:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_181:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_185
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_188
	cmp	rbp, -2
	je	.label_193
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_196
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_238:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_173
	bt	rsi, rdx
	jb	.label_157
.label_173:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_238
.label_196:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_215
	xor	r13d, r13d
.label_215:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_181
	jmp	.label_161
.label_199:
	xor	r13d, r13d
	jmp	.label_134
.label_197:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_134
.label_140:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_146
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_146
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_146
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_232
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_208
	cmp	byte ptr [rsp + 7], 0
	jne	.label_128
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_233
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_233:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_167
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_167:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_144
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_144:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_150
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_150:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_134
.label_146:
	xor	eax, eax
.label_169:
	xor	r13d, r13d
	jmp	.label_134
.label_180:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_159
	.section	.text
	.align	32
	#Procedure 0x403673
	.globl sub_403673
	.type sub_403673, @function
sub_403673:

	nop	word ptr cs:[rax + rax]
.label_153:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_159:
	test	r8b, r8b
	je	.label_170
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_171
	cmp	r14, r11
	jae	.label_174
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_174:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_171
	.section	.text
	.align	32
	#Procedure 0x4036bc
	.globl sub_4036bc
	.type sub_4036bc, @function
sub_4036bc:

	nop	dword ptr [rax]
.label_170:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_157
	cmp	r12d, 2
	jne	.label_184
	mov	eax, r9d
	and	al, 1
	jne	.label_184
	cmp	r14, r11
	jae	.label_187
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_187:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_190
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_190:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_234
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_234:
	add	r14, 3
	mov	r9b, 1
.label_184:
	cmp	r14, r11
	jae	.label_164
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_164:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_141
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_141:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_218
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_218:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_171:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_139
	test	r9b, 1
	je	.label_178
	mov	ebx, eax
	and	bl, 1
	jne	.label_178
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_224
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_224:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_207
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_207:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_178:
	cmp	r14, r11
	jae	.label_153
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_153
	.section	.text
	.align	32
	#Procedure 0x4037c3
	.globl sub_4037c3
	.type sub_4037c3, @function
sub_4037c3:

	nop	word ptr cs:[rax + rax]
.label_139:
	test	r9b, 1
	je	.label_189
	and	al, 1
	jne	.label_189
	cmp	r14, r11
	jae	.label_235
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_235:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_221
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_221:
	add	r14, 2
	xor	r9d, r9d
.label_189:
	mov	ebx, r15d
.label_158:
	cmp	r14, r11
	jae	.label_129
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_129:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_166
.label_188:
	xor	r13d, r13d
.label_185:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_161
.label_193:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_152
	mov	rsi, qword ptr [rsp + 0x50]
.label_142:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_236
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_142
	xor	r13d, r13d
	jmp	.label_161
.label_152:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_161
.label_236:
	xor	r13d, r13d
	jmp	.label_161
.label_232:
	xor	r13d, r13d
	jmp	.label_134
.label_208:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_134
	.section	.text
	.align	32
	#Procedure 0x403898
	.globl sub_403898
	.type sub_403898, @function
sub_403898:

	nop	dword ptr [rax + rax]
.label_216:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_175
	or	dl, al
	je	.label_157
.label_175:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_179
	or	dl, al
	jne	.label_179
	test	r10b, 1
	jne	.label_195
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_179
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_198
.label_179:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_201
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_203
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_203
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_136:
	cmp	r14, r11
	jae	.label_242
	mov	byte ptr [rcx + r14], al
.label_242:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_136
	jmp	.label_203
.label_128:
	mov	qword ptr [rsp + 0x20], rbp
.label_157:
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
.label_133:
	mov	r14, rax
.label_176:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_195:
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
	jmp	.label_133
.label_201:
	mov	rcx, qword ptr [rsp + 8]
.label_203:
	cmp	r14, r11
	jae	.label_176
	mov	byte ptr [rcx + r14], 0
	jmp	.label_176
.label_200:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403a2c
	.globl sub_403a2c
	.type sub_403a2c, @function
sub_403a2c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403a30

	.globl change_env
	.type change_env, @function
change_env:
	push	rbx
	xor	ebx, ebx
	cmp	byte ptr [rdi + 8], 0
	lea	rdi, [rdi + 9]
	cmove	rdi, rbx
	call	setenv_TZ
	test	eax, eax
	jne	.label_243
	call	tzset
	mov	bl, 1
.label_243:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403a53
	.globl sub_403a53
	.type sub_403a53, @function
sub_403a53:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a60

	.globl cleanup
	.type cleanup, @function
cleanup:
	push	rax
	mov	rdi, qword ptr [rip + number_buff]
	call	free
	mov	rdi, qword ptr [rip + clump_buff]
	call	free
	mov	rdi, qword ptr [rip + column_vector]
	call	free
	mov	rdi, qword ptr [rip + line_vector]
	call	free
	mov	rdi, qword ptr [rip + end_vector]
	call	free
	mov	rdi, qword ptr [rip + buff]
	pop	rax
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x403aaa
	.globl sub_403aaa
	.type sub_403aaa, @function
sub_403aaa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ab0

	.globl read_line
	.type read_line, @function
read_line:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rdi
	mov	rdi, qword ptr [r13]
	call	getc_unlocked
	mov	r12d, eax
	mov	ebp, dword ptr [rip + input_position]
	cmp	r12d, 0xc
	jne	.label_257
	cmp	byte ptr [r13 + 0x39], 0
	je	.label_261
	mov	rdi, qword ptr [r13]
	call	getc_unlocked
	mov	r12d, eax
	cmp	r12d, 0xa
	jne	.label_257
	mov	rdi, qword ptr [r13]
	call	getc_unlocked
	mov	r12d, eax
.label_257:
	mov	byte ptr [r13 + 0x39], 0
	cmp	r12d, -1
	je	.label_267
	cmp	r12d, 0xa
	je	.label_260
	cmp	r12d, 0xc
	je	.label_249
	movsx	edi, r12b
	call	char_to_clump
	mov	r14d, eax
.label_260:
	cmp	byte ptr [rip + truncate_lines],  1
	jne	.label_253
	mov	eax, dword ptr [rip + input_position]
	cmp	eax, dword ptr [rip + chars_per_column]
	jle	.label_253
	mov	dword ptr [rip + input_position],  ebp
	xor	r15d, r15d
	jmp	.label_252
.label_253:
	mov	eax, OFFSET FLAT:store_char
	cmp	qword ptr [r13 + 0x20], rax
	je	.label_246
	mov	byte ptr [rip + pad_vertically],  1
	cmp	byte ptr [rip + print_a_header],  1
	jne	.label_250
	cmp	byte ptr [rip + storing_columns],  1
	jne	.label_250
	call	print_header
.label_250:
	cmp	byte ptr [rip + parallel_files],  1
	jne	.label_245
	cmp	byte ptr [rip + align_empty_cols],  1
	jne	.label_245
	mov	ebx, dword ptr [rip + separators_not_printed]
	mov	dword ptr [rip + separators_not_printed],  0
	test	ebx, ebx
	jle	.label_247
	mov	rbp, qword ptr [rip + column_vector]
	nop	dword ptr [rax]
.label_254:
	mov	rdi, rbp
	call	align_column
	inc	dword ptr [rip + separators_not_printed]
	add	rbp, 0x40
	dec	ebx
	jne	.label_254
.label_247:
	mov	eax, dword ptr [r13 + 0x34]
	mov	dword ptr [rip + padding_not_printed],  eax
	mov	al, byte ptr [rip + truncate_lines]
	xor	ecx, ecx
	test	al, al
	cmovne	ecx, dword ptr [rip + chars_per_column]
	mov	dword ptr [rip + spaces_not_printed],  ecx
	mov	byte ptr [rip + align_empty_cols],  0
.label_245:
	mov	edi, dword ptr [rip + padding_not_printed]
	sub	edi, dword ptr [rip + col_sep_length]
	jle	.label_264
	call	pad_across_to
	mov	dword ptr [rip + padding_not_printed],  0
.label_264:
	cmp	byte ptr [rip + use_col_separator],  1
	jne	.label_246
	call	print_sep_string
.label_246:
	cmp	byte ptr [r13 + 0x38], 0
	je	.label_251
	mov	rdi, r13
	call	add_line_number
.label_251:
	mov	byte ptr [rip + empty_line],  0
	mov	r15b, 1
	cmp	r12d, 0xa
	je	.label_252
	mov	rdx, qword ptr [rip + clump_buff]
	mov	rdi, r13
	mov	esi, r14d
	jmp	.label_255
	.section	.text
	.align	32
	#Procedure 0x403c4b
	.globl sub_403c4b
	.type sub_403c4b, @function
sub_403c4b:

	nop	dword ptr [rax + rax]
.label_248:
	mov	rdx, qword ptr [rip + clump_buff]
	mov	rdi, r13
	mov	esi, eax
.label_255:
	call	print_clump
	mov	rdi, qword ptr [r13]
	call	getc_unlocked
	cmp	eax, -1
	je	.label_266
	cmp	eax, 0xa
	je	.label_252
	cmp	eax, 0xc
	je	.label_265
	mov	ebx, dword ptr [rip + input_position]
	movsx	edi, al
	call	char_to_clump
	cmp	byte ptr [rip + truncate_lines],  1
	jne	.label_248
	mov	ecx, dword ptr [rip + input_position]
	cmp	ecx, dword ptr [rip + chars_per_column]
	jle	.label_248
	mov	dword ptr [rip + input_position],  ebx
	xor	r15d, r15d
	jmp	.label_252
.label_267:
	mov	rdi, r13
	call	close_file
	jmp	.label_256
.label_261:
	mov	byte ptr [r13 + 0x39], 0
.label_249:
	mov	rdi, qword ptr [r13]
	call	getc_unlocked
	cmp	eax, 0xa
	je	.label_258
	mov	rsi, qword ptr [r13]
	mov	edi, eax
	call	ungetc
.label_258:
	mov	byte ptr [rip + FF_only],  1
	cmp	byte ptr [rip + print_a_header],  1
	jne	.label_262
	cmp	byte ptr [rip + storing_columns],  1
	jne	.label_262
	mov	byte ptr [rip + pad_vertically],  1
	call	print_header
	jmp	.label_244
.label_262:
	cmp	byte ptr [rip + keep_FF],  1
	jne	.label_244
	mov	byte ptr [rip + print_a_FF],  1
.label_244:
	mov	rdi, r13
	call	hold_file
.label_256:
	mov	r15b, 1
.label_252:
	mov	eax, r15d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_266:
	mov	rdi, r13
	call	close_file
	jmp	.label_252
.label_265:
	mov	rdi, qword ptr [r13]
	call	getc_unlocked
	cmp	eax, 0xa
	je	.label_263
	mov	rsi, qword ptr [r13]
	mov	edi, eax
	call	ungetc
.label_263:
	cmp	byte ptr [rip + keep_FF],  1
	jne	.label_259
	mov	byte ptr [rip + print_a_FF],  1
.label_259:
	mov	rdi, r13
	call	hold_file
	jmp	.label_252
	.section	.text
	.align	32
	#Procedure 0x403d6e
	.globl sub_403d6e
	.type sub_403d6e, @function
sub_403d6e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403d70

	.globl tzfree
	.type tzfree, @function
tzfree:
	push	rbx
	cmp	rdi, 2
	jb	.label_268
	nop	word ptr [rax + rax]
.label_269:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_269
.label_268:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d92
	.globl sub_403d92
	.type sub_403d92, @function
sub_403d92:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403da0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_270
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x403dc2
	.globl sub_403dc2
	.type sub_403dc2, @function
sub_403dc2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403dd0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x403dda
	.globl sub_403dda
	.type sub_403dda, @function
sub_403dda:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403de0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	32
	#Procedure 0x403ded
	.globl sub_403ded
	.type sub_403ded, @function
sub_403ded:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403df0
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
	#Procedure 0x403e00

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
	#Procedure 0x403e0d
	.globl sub_403e0d
	.type sub_403e0d, @function
sub_403e0d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403e10
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x403e1a
	.globl sub_403e1a
	.type sub_403e1a, @function
sub_403e1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e20

	.globl print_clump
	.type print_clump, @function
print_clump:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdx
	mov	ebp, esi
	mov	r14, rdi
	test	ebp, ebp
	je	.label_271
.label_272:
	movsx	edi, byte ptr [rbx]
	inc	rbx
	call	qword ptr [r14 + 0x20]
	dec	ebp
	jne	.label_272
.label_271:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403e43
	.globl sub_403e43
	.type sub_403e43, @function
sub_403e43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e50

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x4a8
	mov	dword ptr [rsp + 0x74], r8d
	mov	r13, rdx
	mov	qword ptr [rsp + 0x38], rsi
	mov	eax, dword ptr [rcx + 8]
	mov	rdx, qword ptr [rcx + 0x30]
	test	rdx, rdx
	mov	esi, OFFSET FLAT:label_34
	cmovne	rsi, rdx
	lea	edx, [rax - 0xc]
	test	eax, eax
	mov	ebp, 0xc
	cmovne	ebp, eax
	cmp	eax, 0xc
	cmovg	ebp, edx
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	cmp	byte ptr [r13], 0
	je	.label_314
	mov	dword ptr [rsp + 0x64], ebp
	mov	qword ptr [rsp + 0x68], rsi
	mov	qword ptr [rsp + 0x18], rcx
	mov	dword ptr [rsp + 0x70], r9d
	mov	r14d, dword ptr [rsp + 0x4e0]
	xor	r8d, r8d
	jmp	.label_344
.label_314:
	xor	r8d, r8d
	jmp	.label_392
.label_417:
	mov	ebx, 3
	jmp	.label_393
	.section	.text
	.align	32
	#Procedure 0x403ed4
	.globl sub_403ed4
	.type sub_403ed4, @function
sub_403ed4:

	nop	word ptr cs:[rax + rax]
.label_344:
	cmp	byte ptr [r13], 0x25
	jne	.label_397
	xor	eax, eax
	mov	ecx, dword ptr [rsp + 0x74]
	mov	sil, cl
	xor	r15d, r15d
.label_1096:
	mov	r12d, eax
	mov	eax, esi
	jmp	.label_335
	.section	.text
	.align	32
	#Procedure 0x403efa
	.globl sub_403efa
	.type sub_403efa, @function
sub_403efa:

	nop	word ptr [rax + rax]
.label_402:
	movsx	r15d, byte ptr [r13]
.label_335:
	inc	r13
	movsx	ecx, byte ptr [r13]
	mov	al, 1
	lea	edx, [rcx - 0x23]
	cmp	edx, 0xd
	ja	.label_373
	jmp	qword ptr [(rdx * 8) + label_401]
	.section	.text
	.align	32
	#Procedure 0x403f1e
	.globl sub_403f1e
	.type sub_403f1e, @function
sub_403f1e:

	nop	
.label_373:
	cmp	ecx, 0x5f
	je	.label_402
	cmp	ecx, 0x5e
	jne	.label_396
	mov	sil, al
	jmp	.label_335
	.section	.text
	.align	32
	#Procedure 0x403f33
	.globl sub_403f33
	.type sub_403f33, @function
sub_403f33:

	nop	word ptr cs:[rax + rax]
.label_397:
	test	r14d, r14d
	mov	eax, r14d
	mov	ecx, 0
	cmovs	eax, ecx
	movsxd	rbx, eax
	cmp	ebx, 1
	mov	ecx, 1
	cmovbe	rbx, rcx
	mov	rdx, qword ptr [rsp + 0x38]
	sub	rdx, r8
	mov	ecx, 1
	cmp	rbx, rdx
	jae	.label_408
	test	rdi, rdi
	mov	edx, 0
	je	.label_421
	cmp	eax, 2
	jb	.label_424
	mov	qword ptr [rsp + 0x28], rbp
	movsxd	rbp, r14d
	lea	rdx, [rbp - 1]
	mov	esi, 0x20
	mov	r14, r8
	mov	r15, rdi
	mov	r12d, r11d
	call	memset
	mov	r11d, r12d
	mov	rdi, r15
	mov	r8, r14
	lea	rdi, [rdi + rbp - 1]
	mov	rbp, qword ptr [rsp + 0x28]
.label_424:
	mov	al, byte ptr [r13]
	mov	byte ptr [rdi], al
	inc	rdi
	mov	rdx, rdi
.label_421:
	add	r8, rbx
	xor	ecx, ecx
	mov	rdi, rdx
.label_408:
	test	ecx, ecx
	mov	eax, 4
	cmove	ecx, eax
.label_423:
	or	ecx, 4
	cmp	ecx, 4
	je	.label_341
	jmp	.label_384
	.section	.text
	.align	32
	#Procedure 0x403fdf
	.globl sub_403fdf
	.type sub_403fdf, @function
sub_403fdf:

	nop	
.label_396:
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_434
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_277:
	mov	r14d, 0x7fffffff
	cmp	eax, 0xccccccc
	jg	.label_437
	jne	.label_439
	movsx	ecx, byte ptr [r13]
	add	ecx, -0x30
	cmp	ecx, 7
	jg	.label_437
.label_439:
	lea	eax, [rax + rax*4]
	movsx	ecx, byte ptr [r13]
	lea	r14d, [rcx + rax*2 - 0x30]
.label_437:
	movsx	eax, byte ptr [r13 + 1]
	inc	r13
	add	eax, -0x30
	cmp	eax, 0xa
	mov	eax, r14d
	jb	.label_277
.label_434:
	movsx	eax, byte ptr [r13]
	cmp	eax, 0x4f
	mov	qword ptr [rsp + 0x28], rbp
	je	.label_281
	xor	r9d, r9d
	cmp	eax, 0x45
	jne	.label_318
.label_281:
	movsx	r9d, byte ptr [r13]
	inc	r13
.label_318:
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp], rdi
	movsx	edx, byte ptr [r13]
	mov	ebp, OFFSET FLAT:label_289
	xor	ebx, ebx
	cmp	edx, 0x7a
	ja	.label_287
	mov	al, 0x72
	mov	r10d, 0xffffffff
	xor	esi, esi
	xor	ecx, ecx
	jmp	qword ptr [(rdx * 8) + label_297]
.label_1177:
	cmp	r9d, 0x45
	je	.label_287
	mov	qword ptr [rsp + 8], rdx
	mov	dword ptr [rsp + 0x28], r9d
	mov	qword ptr [rsp + 0x10], r8
	mov	rdx, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rdx + 0x14]
	mov	esi, dword ptr [rdx + 0x18]
	mov	ecx, eax
	sar	ecx, 0x1f
	and	ecx, 0x190
	lea	ebp, [rax + rcx - 0x64]
	mov	r12d, dword ptr [rdx + 0x1c]
	mov	edi, r12d
	call	iso_week_days
	mov	ebx, eax
	test	ebx, ebx
	js	.label_312
	mov	eax, 0x16d
	test	bpl, 3
	jne	.label_313
	movsxd	rax, ebp
	imul	rax, rax, 0x51eb851f
	mov	rcx, rax
	sar	rcx, 0x25
	mov	rdx, rax
	shr	rdx, 0x3f
	add	ecx, edx
	imul	ecx, ecx, 0x64
	sar	rax, 0x27
	add	eax, edx
	imul	eax, eax, 0x190
	xor	edx, edx
	cmp	ebp, eax
	sete	dl
	add	edx, 0x16d
	cmp	ebp, ecx
	mov	eax, 0x16e
	cmove	eax, edx
.label_313:
	sub	r12d, eax
	mov	rax, qword ptr [rsp + 0x18]
	mov	esi, dword ptr [rax + 0x18]
	mov	edi, r12d
	call	iso_week_days
	mov	ecx, eax
	shr	ecx, 0x1f
	xor	ecx, 1
	test	eax, eax
	cmovns	ebx, eax
	jmp	.label_326
.label_1191:
	test	r12b, r12b
	je	.label_329
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
.label_329:
	xor	esi, esi
	mov	eax, r9d
	cmp	eax, 0x45
	jne	.label_332
	xor	ebx, ebx
	jmp	.label_287
.label_1169:
	dec	r13
	jmp	.label_287
.label_1170:
	test	r9d, r9d
	jne	.label_287
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebp, 1
	cmova	rbp, rcx
	mov	rcx, qword ptr [rsp + 0x38]
	sub	rcx, r8
	cmp	rbp, rcx
	mov	rdi, qword ptr [rsp]
	jae	.label_275
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_310
	cmp	eax, 2
	jb	.label_343
	movsxd	rbx, r14d
	dec	rbx
	cmp	r15d, 0x30
	je	.label_345
	cmp	r15d, 0x2b
	jne	.label_348
.label_345:
	mov	esi, 0x30
	jmp	.label_351
.label_1171:
	mov	eax, 1
	jmp	.label_352
	.section	.text
	.align	32
	#Procedure 0x4041cf
	.globl sub_4041cf
	.type sub_4041cf, @function
sub_4041cf:

	nop	
.label_354:
	inc	rax
.label_352:
	movzx	ecx, byte ptr [r13 + rax]
	cmp	cl, 0x3a
	je	.label_354
	cmp	cl, 0x7a
	jne	.label_287
	add	r13, rax
	mov	rbx, rax
.label_1208:
	mov	rax, qword ptr [rsp + 0x18]
	cmp	dword ptr [rax + 0x20], 0
	js	.label_361
	mov	r10, qword ptr [rsp]
	mov	eax, dword ptr [rax + 0x28]
	mov	sil, 1
	test	eax, eax
	mov	rbp, qword ptr [rsp + 0x28]
	mov	r12d, r9d
	js	.label_367
	test	eax, eax
	je	.label_370
	xor	esi, esi
	jmp	.label_367
.label_1172:
	mov	eax, r9d
	test	eax, eax
	jne	.label_287
	test	r12b, r12b
	je	.label_325
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
.label_325:
	xor	esi, esi
	mov	al, 0x41
	jmp	.label_336
.label_1173:
	mov	eax, r9d
	cmp	eax, 0x45
	je	.label_287
	test	r12b, r12b
	je	.label_379
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
.label_379:
	xor	esi, esi
	mov	al, 0x42
	jmp	.label_336
.label_1174:
	mov	r12d, r9d
	cmp	r12d, 0x45
	jne	.label_381
	xor	esi, esi
	mov	al, 0x43
	jmp	.label_336
.label_1175:
	mov	ebp, OFFSET FLAT:label_398
	test	r9d, r9d
	jne	.label_287
	mov	r10d, 0xffffffff
	jmp	.label_350
.label_1176:
	test	r9d, r9d
	jne	.label_287
	mov	ebp, OFFSET FLAT:label_349
	test	r15d, r15d
	jne	.label_389
	test	r14d, r14d
	jns	.label_389
	mov	r15d, 0x2b
	mov	r10d, 4
	jmp	.label_350
.label_1178:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_287
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rax + 8]
	mov	ecx, 2
	jmp	.label_320
.label_1179:
	mov	ecx, 2
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_287
	mov	eax, dword ptr [rsp + 0x64]
	jmp	.label_400
.label_1180:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_287
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rax + 4]
	mov	ecx, 2
	jmp	.label_320
.label_1181:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_287
	mov	ecx, 9
	cmp	r14d, -1
	je	.label_404
	cmp	r14d, 8
	jg	.label_407
	mov	eax, 9
	mov	ecx, dword ptr [rsp + 0x4f0]
	mov	ebp, ecx
	mov	rdi, qword ptr [rsp]
	nop	word ptr [rax + rax]
.label_415:
	movsxd	rcx, ebp
	imul	rbp, rcx, 0x66666667
	mov	rcx, rbp
	shr	rcx, 0x3f
	sar	rbp, 0x22
	add	ebp, ecx
	dec	eax
	cmp	r14d, eax
	jne	.label_415
	mov	ecx, r14d
	jmp	.label_298
.label_1182:
	mov	cl, 1
.label_1200:
	xor	ebx, ebx
	test	r12b, r12b
	je	.label_426
	mov	eax, 0
	mov	qword ptr [rsp + 0x20], rax
.label_426:
	je	.label_428
	mov	cl, 1
.label_428:
	mov	al, 0x70
	mov	sil, cl
	jmp	.label_308
.label_1183:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_287
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rax]
	mov	ecx, 2
	jmp	.label_320
.label_1184:
	mov	ebp, OFFSET FLAT:label_430
.label_350:
	mov	qword ptr [rsp + 0x10], r8
	xor	r8d, r8d
	mov	rax, qword ptr [rsp + 0x20]
	test	al, al
	setne	r8b
	sub	rsp, 8
	xor	ebx, ebx
	xor	edi, edi
	mov	rsi, -1
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r9d, r15d
	mov	eax, dword ptr [rsp + 0x4f8]
	push	rax
	push	qword ptr [rsp + 0x4f8]
	mov	qword ptr [rsp + 0x58], r10
	push	r10
	mov	dword ptr [rsp + 0x28], r11d
	call	__strftime_internal
	mov	r11d, dword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x30]
	add	rsp, 0x20
	test	r14d, r14d
	cmovns	ebx, r14d
	movsxd	rsi, ebx
	cmp	rax, rsi
	mov	rbx, rax
	cmovb	rbx, rsi
	mov	r12, qword ptr [rsp + 0x38]
	sub	r12, r8
	cmp	rbx, r12
	jae	.label_275
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_291
	cmp	rax, rsi
	mov	qword ptr [rsp + 0x30], rax
	jae	.label_293
	movsxd	rcx, r14d
	sub	rcx, rax
	cmp	r15d, 0x30
	mov	qword ptr [rsp + 0x48], rcx
	je	.label_299
	cmp	r15d, 0x2b
	jne	.label_300
.label_299:
	mov	esi, 0x30
	jmp	.label_302
.label_1185:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_287
	mov	rcx, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rcx + 0x1c]
	add	eax, 7
	sub	eax, dword ptr [rcx + 0x18]
	movsxd	rbp, eax
	jmp	.label_307
.label_1186:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_287
	mov	rcx, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rcx + 0x18]
	mov	ecx, dword ptr [rcx + 0x1c]
	mov	rbp, rdx
	lea	edx, [rax + 6]
	movsxd	rdx, edx
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	lea	eax, [rsi + rax + 6]
	mov	esi, eax
	shr	esi, 0x1f
	sar	eax, 2
	add	eax, esi
	lea	esi, [rax*8]
	sub	esi, eax
	sub	edx, esi
	add	ecx, 7
	sub	ecx, edx
	mov	rdx, rbp
	movsxd	rbp, ecx
.label_307:
	imul	rax, rbp, -0x6db6db6d
	shr	rax, 0x20
	add	ebp, eax
	mov	eax, ebp
	shr	eax, 0x1f
	sar	ebp, 2
	add	ebp, eax
	mov	ecx, 2
	jmp	.label_320
.label_1187:
	xor	ebx, ebx
	mov	eax, r9d
	cmp	eax, 0x4f
	je	.label_287
	mov	al, 0x58
	xor	esi, esi
	jmp	.label_308
.label_1188:
	xor	ebx, ebx
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_331
	cmp	r12d, 0x4f
	je	.label_287
	mov	qword ptr [rsp + 8], rdx
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rax + 0x14]
	cmp	ebp, 0xfffff894
	setl	sil
	add	ebp, 0x76c
	mov	ebx, 4
	jmp	.label_334
.label_1189:
	mov	rdi, qword ptr [rsp + 0x68]
	mov	qword ptr [rsp + 0x10], r8
	mov	rbp, qword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 8], r11d
	call	strlen
	mov	r11d, dword ptr [rsp + 8]
	mov	rdx, rbp
	mov	rdi, qword ptr [rsp]
	mov	r8, qword ptr [rsp + 0x10]
	xor	ecx, ecx
	test	r14d, r14d
	cmovns	ecx, r14d
	movsxd	rsi, ecx
	cmp	rax, rsi
	mov	rbx, rax
	cmovb	rbx, rsi
	mov	rcx, qword ptr [rsp + 0x38]
	sub	rcx, r8
	cmp	rbx, rcx
	jae	.label_275
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_291
	cmp	rax, rsi
	jae	.label_356
	movsxd	r14, r14d
	mov	qword ptr [rsp + 0x40], rax
	sub	r14, rax
	cmp	r15d, 0x30
	je	.label_357
	cmp	r15d, 0x2b
	jne	.label_363
.label_357:
	mov	esi, 0x30
	jmp	.label_366
.label_1190:
	mov	eax, r9d
	test	eax, eax
	jne	.label_287
	test	r12b, r12b
	je	.label_369
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
.label_369:
	xor	esi, esi
	mov	al, 0x61
	jmp	.label_336
.label_1192:
	xor	ebx, ebx
	mov	eax, r9d
	cmp	eax, 0x4f
	je	.label_287
	mov	al, 0x63
	xor	esi, esi
	jmp	.label_308
.label_1193:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_287
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rax + 0xc]
	mov	ecx, 2
	jmp	.label_320
.label_1194:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_287
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 0xc]
	jmp	.label_380
.label_1195:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_287
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rax + 0x1c]
	cmp	ebp, -1
	setl	sil
	inc	ebp
	mov	ebx, 3
	jmp	.label_383
.label_1196:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_287
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 8]
	jmp	.label_380
.label_1197:
	mov	r12d, r9d
	cmp	r12d, 0x45
	mov	eax, dword ptr [rsp + 0x64]
	je	.label_287
.label_380:
	test	r15d, r15d
	mov	ecx, 0x5f
	cmove	r15d, ecx
	mov	ecx, 2
.label_400:
	mov	ebp, eax
.label_320:
	mov	rdi, qword ptr [rsp]
.label_298:
	mov	esi, ebp
	shr	esi, 0x1f
	xor	r11d, r11d
	xor	r10d, r10d
	mov	ebx, ecx
	jmp	.label_395
.label_1198:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_287
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rax + 0x10]
	cmp	ebp, -1
	setl	sil
	inc	ebp
	mov	ebx, 2
.label_383:
	xor	r11d, r11d
	xor	r10d, r10d
	mov	rdi, qword ptr [rsp]
	jmp	.label_395
.label_1199:
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebp, 1
	cmova	rbp, rcx
	mov	rcx, qword ptr [rsp + 0x38]
	sub	rcx, r8
	cmp	rbp, rcx
	mov	rdi, qword ptr [rsp]
	jae	.label_275
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_310
	cmp	eax, 2
	jb	.label_410
	mov	dword ptr [rsp + 8], r11d
	mov	r12, r8
	movsxd	r14, r14d
	dec	r14
	cmp	r15d, 0x30
	je	.label_412
	cmp	r15d, 0x2b
	jne	.label_419
.label_412:
	mov	esi, 0x30
	jmp	.label_422
.label_1201:
	mov	rax, qword ptr [rsp + 0x18]
	imul	ebp, dword ptr [rax + 0x10], 0xb
	sar	ebp, 5
	inc	ebp
	mov	ebx, 1
	xor	r11d, r11d
	xor	r10d, r10d
	xor	esi, esi
	mov	rdi, qword ptr [rsp]
	mov	r12d, r9d
	jmp	.label_395
.label_1202:
	mov	dword ptr [rsp + 8], r11d
	mov	rbx, r8
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0xd0], rax
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 0x10]
	movups	xmm2, xmmword ptr [rcx + 0x20]
	movaps	xmmword ptr [rsp + 0xc0], xmm2
	movaps	xmmword ptr [rsp + 0xb0], xmm1
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	lea	rsi, [rsp + 0xa0]
	mov	rdi, qword ptr [rsp + 0x4e8]
	call	mktime_z
	mov	rcx, rax
	mov	rsi, rcx
	shr	rsi, 0x3f
	lea	r12, [rsp + 0x97]
	nop	dword ptr [rax]
.label_274:
	movabs	rdx, 0x6666666666666667
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	mov	ebp, ecx
	sub	ebp, edi
	add	rdx, rax
	mov	eax, ebp
	neg	eax
	test	rsi, rsi
	cmove	eax, ebp
	add	eax, 0x30
	mov	byte ptr [r12 - 1], al
	dec	r12
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_274
	xor	r10d, r10d
	mov	r8, rbx
	mov	ebx, 1
	mov	rdi, qword ptr [rsp]
	mov	rbp, qword ptr [rsp + 0x28]
	mov	r11d, dword ptr [rsp + 8]
	jmp	.label_292
.label_1203:
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebp, 1
	cmova	rbp, rcx
	mov	rcx, qword ptr [rsp + 0x38]
	sub	rcx, r8
	cmp	rbp, rcx
	mov	rdi, qword ptr [rsp]
	jae	.label_275
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_310
	cmp	eax, 2
	jb	.label_282
	mov	dword ptr [rsp + 8], r11d
	mov	r12, r8
	movsxd	r14, r14d
	dec	r14
	cmp	r15d, 0x30
	je	.label_294
	cmp	r15d, 0x2b
	jne	.label_315
.label_294:
	mov	esi, 0x30
	jmp	.label_323
.label_1204:
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 0x18]
	lea	ecx, [rax + 6]
	movsxd	rbp, ecx
	imul	rcx, rbp, -0x6db6db6d
	shr	rcx, 0x20
	lea	eax, [rcx + rax + 6]
	mov	ecx, eax
	shr	ecx, 0x1f
	sar	eax, 2
	add	eax, ecx
	lea	ecx, [rax*8]
	sub	ecx, eax
	sub	ebp, ecx
	inc	ebp
	mov	ecx, 1
	mov	rdi, qword ptr [rsp]
	mov	r12d, r9d
	jmp	.label_298
.label_1205:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_287
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rax + 0x18]
	mov	ecx, 1
	jmp	.label_320
.label_1206:
	xor	ebx, ebx
	mov	eax, r9d
	cmp	eax, 0x4f
	je	.label_287
	mov	al, 0x78
	xor	esi, esi
	jmp	.label_308
.label_1207:
	mov	r12d, r9d
	cmp	r12d, 0x45
	jne	.label_411
	xor	esi, esi
	mov	al, 0x79
	jmp	.label_336
.label_332:
	mov	eax, edx
.label_336:
	xor	ebx, ebx
	jmp	.label_308
.label_293:
	mov	rcx, qword ptr [rsp + 0x18]
	jmp	.label_337
.label_312:
	dec	ebp
	mov	edi, 0x16d
	test	bpl, 3
	jne	.label_324
	movsxd	rax, ebp
	imul	rax, rax, 0x51eb851f
	mov	rcx, rax
	sar	rcx, 0x25
	mov	rdx, rax
	shr	rdx, 0x3f
	add	ecx, edx
	imul	ecx, ecx, 0x64
	sar	rax, 0x27
	add	eax, edx
	imul	eax, eax, 0x190
	xor	edx, edx
	cmp	ebp, eax
	sete	dl
	add	edx, 0x16d
	cmp	ebp, ecx
	mov	edi, 0x16e
	cmove	edi, edx
.label_324:
	add	edi, r12d
	mov	rax, qword ptr [rsp + 0x18]
	mov	esi, dword ptr [rax + 0x18]
	call	iso_week_days
	mov	ebx, eax
	mov	ecx, 0xffffffff
.label_326:
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp]
	mov	r12d, dword ptr [rsp + 0x28]
	movsx	eax, byte ptr [r13]
	cmp	eax, 0x47
	je	.label_359
	cmp	eax, 0x67
	jne	.label_371
	mov	rax, qword ptr [rsp + 0x18]
	movsxd	rax, dword ptr [rax + 0x14]
	imul	rdx, rax, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	edx, edx, 0x64
	mov	esi, eax
	sub	esi, edx
	add	esi, ecx
	movsxd	rbp, esi
	imul	rdx, rbp, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	edx, edx, 0x64
	sub	ebp, edx
	mov	ebx, 2
	jns	.label_368
	mov	edx, 0xfffff894
	sub	edx, ecx
	mov	ecx, ebp
	neg	ecx
	add	ebp, 0x64
	cmp	eax, edx
	cmovl	ebp, ecx
.label_368:
	xor	esi, esi
	jmp	.label_375
.label_361:
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdi, qword ptr [rsp]
	jmp	.label_341
.label_381:
	mov	qword ptr [rsp + 8], rdx
	mov	rax, qword ptr [rsp + 0x18]
	movsxd	rax, dword ptr [rax + 0x14]
	cmp	rax, -0x76c
	setl	sil
	setg	cl
	imul	rbp, rax, 0x51eb851f
	mov	rdx, rbp
	shr	rdx, 0x3f
	sar	rbp, 0x25
	add	ebp, edx
	imul	edx, ebp, 0x64
	cmp	eax, edx
	sets	al
	and	al, cl
	movzx	eax, al
	sub	ebp, eax
	add	ebp, 0x13
	mov	ebx, 2
	jmp	.label_334
.label_411:
	mov	qword ptr [rsp + 8], rdx
	mov	rax, qword ptr [rsp + 0x18]
	movsxd	rax, dword ptr [rax + 0x14]
	imul	rcx, rax, 0x51eb851f
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x25
	add	ecx, edx
	imul	ecx, ecx, 0x64
	mov	ebp, eax
	sub	ebp, ecx
	mov	ebx, 2
	jns	.label_309
	mov	ecx, ebp
	neg	ecx
	add	ebp, 0x64
	cmp	eax, 0xfffff894
	cmovl	ebp, ecx
.label_309:
	xor	esi, esi
.label_334:
	mov	rdi, qword ptr [rsp]
	jmp	.label_375
.label_359:
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 0x14]
	mov	edx, 0xfffff894
	sub	edx, ecx
	cmp	eax, edx
	setl	sil
	lea	ebp, [rcx + rax + 0x76c]
	mov	ebx, 4
.label_375:
	test	r15d, r15d
	cmove	r15d, dword ptr [rsp + 0x70]
	xor	r11d, r11d
	cmp	r15d, 0x2b
	mov	r10d, 0
	jne	.label_405
	cmp	ebx, 2
	mov	eax, 0x63
	mov	ecx, 0x270f
	cmove	ecx, eax
	cmp	ecx, ebp
	setb	cl
	cmp	ebx, r14d
	setl	r10b
	or	r10b, cl
.label_405:
	mov	rdx, qword ptr [rsp + 8]
.label_395:
	cmp	r12d, 0x4f
	jne	.label_418
	test	sil, sil
	jne	.label_418
	mov	r9d, r12d
	mov	qword ptr [rsp + 0x28], rbp
	xor	esi, esi
	mov	eax, edx
.label_308:
	mov	dword ptr [rsp + 0x30], esi
	mov	qword ptr [rsp + 0x40], rbx
	mov	dword ptr [rsp + 8], r11d
	mov	qword ptr [rsp + 0x10], r8
	mov	rbp, qword ptr [rsp]
	mov	word ptr [rsp + 0x53], 0x2520
	test	r9d, r9d
	lea	rcx, [rsp + 0x55]
	je	.label_427
	mov	byte ptr [rsp + 0x55], r9b
	lea	rcx, [rsp + 0x56]
.label_427:
	mov	byte ptr [rcx], al
	mov	byte ptr [rcx + 1], 0
	lea	rdi, [rsp + 0xa0]
	lea	rdx, [rsp + 0x53]
	mov	esi, 0x400
	mov	rcx, qword ptr [rsp + 0x18]
	call	strftime
	mov	rbx, rax
	test	rbx, rbx
	je	.label_433
	dec	rbx
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	cdqe	
	cmp	rbx, rax
	mov	r12, rbx
	cmovb	r12, rax
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r8, qword ptr [rsp + 0x10]
	sub	rcx, r8
	cmp	r12, rcx
	jae	.label_275
	xor	ecx, ecx
	mov	rdi, rbp
	test	rdi, rdi
	mov	r11d, dword ptr [rsp + 8]
	je	.label_303
	cmp	rbx, rax
	setae	al
	mov	rcx, qword ptr [rsp + 0x40]
	test	ecx, ecx
	jne	.label_280
	test	al, al
	mov	rax, qword ptr [rsp + 0x20]
	mov	ecx, dword ptr [rsp + 0x30]
	jne	.label_285
	movsxd	r14, r14d
	sub	r14, rbx
	cmp	r15d, 0x30
	je	.label_290
	cmp	r15d, 0x2b
	jne	.label_372
.label_290:
	mov	esi, 0x30
	jmp	.label_295
.label_418:
	mov	eax, ebp
	neg	eax
	test	sil, sil
	cmove	eax, ebp
	lea	r12, [rsp + 0x97]
.label_304:
	test	r11b, 1
	je	.label_301
	mov	byte ptr [r12 - 1], 0x3a
	dec	r12
.label_301:
	sar	r11d, 1
	mov	edx, eax
	mov	ebp, 0xcccccccd
	imul	rbp, rdx
	shr	rbp, 0x23
	lea	edx, [rbp + rbp]
	lea	edx, [rdx + rdx*4]
	mov	ecx, eax
	sub	ecx, edx
	or	ecx, 0x30
	mov	byte ptr [r12 - 1], cl
	dec	r12
	cmp	eax, 9
	mov	eax, ebp
	ja	.label_304
	test	r11d, r11d
	mov	eax, ebp
	jne	.label_304
.label_292:
	cmp	ebx, r14d
	cmovl	ebx, r14d
	test	r10b, r10b
	je	.label_338
	mov	r10b, 0x2b
.label_338:
	test	sil, sil
	mov	sil, 0x2d
	jne	.label_316
	mov	esi, r10d
.label_316:
	cmp	r15d, 0x2d
	mov	dword ptr [rsp + 8], r11d
	mov	qword ptr [rsp + 0x28], rbp
	mov	qword ptr [rsp + 0x40], rbx
	jne	.label_317
	test	sil, sil
	je	.label_319
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x38]
	sub	rcx, r8
	cmp	rbx, rcx
	mov	r9, qword ptr [rsp + 0x20]
	jae	.label_275
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_328
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x40]
	test	ecx, ecx
	jne	.label_330
	test	al, al
	jne	.label_330
	movsxd	rbp, r14d
	lea	rdx, [rbp - 1]
	mov	byte ptr [rsp + 0x30], sil
	mov	esi, 0x20
	mov	qword ptr [rsp + 0x10], r8
	call	memset
	mov	sil, byte ptr [rsp + 0x30]
	mov	r11d, dword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp]
	mov	r8, qword ptr [rsp + 0x10]
	lea	rdi, [rdi + rbp - 1]
.label_330:
	mov	byte ptr [rdi], sil
	inc	rdi
	mov	rcx, rdi
.label_328:
	add	r8, rbx
	jmp	.label_340
.label_433:
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp + 0x28]
	mov	r11d, dword ptr [rsp + 8]
	jmp	.label_341
.label_317:
	movsxd	rax, ebx
	mov	rcx, r12
	lea	rdx, [rsp + 0x97]
	sub	rcx, rdx
	mov	edx, esi
	neg	dl
	sbb	rbx, rbx
	add	rbx, rcx
	add	rbx, rax
	test	ebx, ebx
	jle	.label_346
	cmp	r15d, 0x5f
	mov	r9, qword ptr [rsp + 0x20]
	jne	.label_353
	movsxd	rdx, ebx
	mov	rax, qword ptr [rsp + 0x38]
	sub	rax, r8
	cmp	rdx, rax
	jae	.label_275
	xor	r10d, r10d
	test	rdi, rdi
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	je	.label_365
	mov	byte ptr [rsp + 0x30], sil
	mov	esi, 0x20
	mov	qword ptr [rsp + 0x10], r8
	mov	rbp, rdi
	mov	qword ptr [rsp + 0x78], rdx
	call	memset
	mov	rdx, qword ptr [rsp + 0x78]
	xor	r10d, r10d
	mov	sil, byte ptr [rsp + 0x30]
	mov	r11d, dword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	add	rbp, rdx
	mov	qword ptr [rsp + 0x48], rbp
.label_365:
	add	r8, rdx
	sub	r14d, ebx
	cmovg	r10d, r14d
	test	sil, sil
	je	.label_376
	xor	eax, eax
	test	r10d, r10d
	cmovns	eax, r10d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebp, 1
	cmova	rbp, rcx
	mov	rcx, qword ptr [rsp + 0x38]
	sub	rcx, r8
	cmp	rbp, rcx
	jae	.label_275
	xor	edi, edi
	cmp	qword ptr [rsp + 0x48], 0
	je	.label_385
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x40]
	test	ecx, ecx
	jne	.label_388
	test	al, al
	jne	.label_388
	movsxd	rbx, r10d
	dec	rbx
	cmp	r15d, 0x30
	mov	qword ptr [rsp + 0x10], r8
	mov	byte ptr [rsp + 0x30], sil
	mov	qword ptr [rsp], r10
	je	.label_390
	cmp	r15d, 0x2b
	jne	.label_305
.label_390:
	mov	esi, 0x30
	jmp	.label_394
.label_280:
	mov	rax, qword ptr [rsp + 0x20]
	mov	ecx, dword ptr [rsp + 0x30]
	jmp	.label_285
.label_319:
	mov	r9, qword ptr [rsp + 0x20]
	jmp	.label_306
.label_346:
	test	sil, sil
	mov	r9, qword ptr [rsp + 0x20]
	je	.label_306
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebp, 1
	cmova	rbp, rcx
	mov	rcx, qword ptr [rsp + 0x38]
	sub	rcx, r8
	cmp	rbp, rcx
	jae	.label_275
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_403
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x40]
	test	ecx, ecx
	jne	.label_406
	test	al, al
	jne	.label_406
	movsxd	rbx, r14d
	dec	rbx
	cmp	r15d, 0x30
	mov	qword ptr [rsp + 0x10], r8
	mov	byte ptr [rsp + 0x30], sil
	je	.label_409
	cmp	r15d, 0x2b
	jne	.label_416
.label_409:
	mov	esi, 0x30
	jmp	.label_420
.label_353:
	mov	rcx, qword ptr [rsp + 0x38]
	sub	rcx, r8
	cmp	rax, rcx
	jae	.label_275
	test	sil, sil
	je	.label_425
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rdx, eax
	cmp	edx, 1
	mov	ebp, 1
	cmova	rbp, rdx
	cmp	rbp, rcx
	jae	.label_275
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_374
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x40]
	test	ecx, ecx
	jne	.label_387
	test	al, al
	jne	.label_387
	movsxd	r14, r14d
	dec	r14
	cmp	r15d, 0x30
	mov	qword ptr [rsp + 0x10], r8
	mov	byte ptr [rsp + 0x30], sil
	je	.label_432
	cmp	r15d, 0x2b
	jne	.label_436
.label_432:
	mov	esi, 0x30
	jmp	.label_431
.label_372:
	mov	esi, 0x20
.label_295:
	mov	rdx, r14
	call	memset
	mov	ecx, dword ptr [rsp + 0x30]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rdi, rbp
	add	rdi, r14
.label_285:
	lea	rsi, [rsp + 0xa1]
	mov	rdx, rbx
	mov	rbp, rdi
	test	cl, 1
	jne	.label_278
	test	al, 1
	jne	.label_283
	call	memcpy
	jmp	.label_284
.label_278:
	call	memcpy_lowcase
	mov	r11d, dword ptr [rsp + 8]
	mov	rcx, rbp
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_286
.label_283:
	call	memcpy_uppcase
.label_284:
	mov	rcx, rbp
	mov	r8, qword ptr [rsp + 0x10]
	mov	r11d, dword ptr [rsp + 8]
.label_286:
	add	rcx, rbx
.label_303:
	add	r8, r12
	jmp	.label_327
.label_371:
	movsxd	rax, ebx
	imul	rcx, rax, -0x6db6db6d
	shr	rcx, 0x20
	add	eax, ecx
	mov	ecx, eax
	sar	ecx, 2
	shr	eax, 0x1f
	lea	ebp, [rcx + rax + 1]
	mov	ecx, 2
	mov	rdx, qword ptr [rsp + 8]
	jmp	.label_298
.label_376:
	mov	rdi, qword ptr [rsp + 0x48]
	mov	r14d, r10d
	jmp	.label_306
.label_331:
	mov	al, 0x59
	xor	esi, esi
	jmp	.label_308
.label_356:
	mov	rsi, qword ptr [rsp + 0x68]
	jmp	.label_311
.label_300:
	mov	esi, 0x20
.label_302:
	mov	rdx, rcx
	mov	r14, rdi
	call	memset
	mov	rcx, qword ptr [rsp + 0x18]
	add	r14, qword ptr [rsp + 0x48]
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x20]
.label_337:
	mov	r10, qword ptr [rsp + 0x40]
	xor	r8d, r8d
	test	dl, dl
	setne	r8b
	sub	rsp, 8
	mov	rsi, r12
	mov	rdx, rbp
	mov	r9d, r15d
	mov	eax, dword ptr [rsp + 0x4f8]
	push	rax
	push	qword ptr [rsp + 0x4f8]
	push	r10
	mov	rbp, rdi
	call	__strftime_internal
	add	rsp, 0x20
	mov	rax, qword ptr [rsp + 0x30]
	add	rax, rbp
	mov	rcx, rax
	mov	r8, qword ptr [rsp + 0x10]
	mov	r11d, dword ptr [rsp + 8]
.label_291:
	add	r8, rbx
	jmp	.label_327
.label_370:
	mov	rcx, qword ptr [rsp + 0x68]
	cmp	byte ptr [rcx], 0x2d
	sete	sil
.label_367:
	cmp	rbx, 3
	mov	qword ptr [rsp + 8], rdx
	ja	.label_414
	movsxd	rcx, eax
	imul	rdx, rcx, -0x77777777
	shr	rdx, 0x20
	add	edx, eax
	mov	edi, edx
	shr	edi, 0x1f
	sar	edx, 5
	add	edx, edi
	imul	rbp, rcx, -0x6e5d4c3b
	shr	rbp, 0x20
	add	ebp, eax
	mov	ecx, ebp
	shr	ecx, 0x1f
	sar	ebp, 0xb
	add	ebp, ecx
	movsxd	rcx, edx
	imul	rdx, rcx, -0x77777777
	shr	rdx, 0x20
	add	edx, ecx
	mov	edi, edx
	shr	edi, 0x1f
	sar	edx, 5
	add	edx, edi
	imul	edx, edx, 0x3c
	imul	edi, ecx, 0x3c
	sub	ecx, edx
	sub	eax, edi
	jmp	qword ptr [(rbx * 8) + label_333]
.label_1115:
	imul	ebp, ebp, 0x64
	add	ebp, ecx
	mov	ebx, 5
.label_393:
	xor	r11d, r11d
	jmp	.label_322
.label_389:
	xor	eax, eax
	mov	r10d, r14d
	add	r10d, -6
	cmovs	r10d, eax
	mov	ebp, OFFSET FLAT:label_349
	jmp	.label_350
.label_404:
	mov	eax, dword ptr [rsp + 0x4f0]
	mov	ebp, eax
	mov	r14d, 9
	jmp	.label_320
.label_414:
	xor	ebx, ebx
	mov	ecx, 0xe
	jmp	.label_358
.label_1118:
	test	eax, eax
	je	.label_362
.label_1117:
	imul	ebp, ebp, 0x2710
	imul	ecx, ecx, 0x64
	add	ebp, eax
	add	ebp, ecx
	mov	ebx, 9
	mov	r11d, 0x14
	jmp	.label_322
.label_407:
	mov	eax, dword ptr [rsp + 0x4f0]
	mov	ebp, eax
	mov	ecx, r14d
	jmp	.label_320
.label_363:
	mov	esi, 0x20
.label_366:
	mov	rdx, r14
	mov	r15, rdi
	call	memset
	add	r15, r14
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rdi, r15
	mov	rdx, rbp
	mov	rax, qword ptr [rsp + 0x40]
.label_311:
	test	r12b, r12b
	je	.label_377
	mov	rdx, rax
	mov	r14, rdi
	mov	rbp, rax
	call	memcpy_lowcase
	mov	rax, rbp
	mov	r11d, dword ptr [rsp + 8]
	mov	rcx, r14
	mov	r8, qword ptr [rsp + 0x10]
	add	rcx, rax
	jmp	.label_291
.label_377:
	test	dl, dl
	je	.label_382
	mov	rdx, rax
	mov	r14, rdi
	mov	rbp, rax
	call	memcpy_uppcase
	jmp	.label_386
.label_419:
	mov	esi, 0x20
.label_422:
	mov	rdx, r14
	mov	rbx, rdi
	call	memset
	add	rbx, r14
	mov	r8, r12
	mov	rdi, rbx
	mov	r11d, dword ptr [rsp + 8]
.label_410:
	mov	byte ptr [rdi], 0xa
	jmp	.label_391
.label_315:
	mov	esi, 0x20
.label_323:
	mov	rdx, r14
	mov	rbx, rdi
	call	memset
	add	rbx, r14
	mov	r8, r12
	mov	rdi, rbx
	mov	r11d, dword ptr [rsp + 8]
.label_282:
	mov	byte ptr [rdi], 9
	jmp	.label_391
.label_416:
	mov	esi, 0x20
.label_420:
	mov	rdx, rbx
	call	memset
	mov	sil, byte ptr [rsp + 0x30]
	mov	r11d, dword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp]
	mov	r8, qword ptr [rsp + 0x10]
	add	rdi, rbx
.label_406:
	mov	byte ptr [rdi], sil
	inc	rdi
	mov	rcx, rdi
.label_403:
	add	r8, rbp
.label_340:
	mov	rdi, rcx
	jmp	.label_306
.label_382:
	mov	rdx, rax
	mov	r14, rdi
	mov	rbp, rax
	call	memcpy
.label_386:
	mov	rax, rbp
	mov	rcx, r14
	mov	r8, qword ptr [rsp + 0x10]
	mov	r11d, dword ptr [rsp + 8]
	add	rcx, rax
	jmp	.label_291
.label_362:
	test	ecx, ecx
	je	.label_417
.label_1116:
	imul	ebp, ebp, 0x64
	add	ebp, ecx
	mov	ebx, 6
	mov	r11d, 4
.label_322:
	mov	ecx, 0x21
.label_358:
	mov	rdi, r10
	mov	edx, ecx
	and	dl, 0x3f
	cmp	dl, 0xe
	je	.label_413
	mov	r10b, 1
	cmp	dl, 0x21
	mov	rdx, qword ptr [rsp + 8]
	je	.label_395
	jmp	.label_423
.label_413:
	mov	qword ptr [rsp + 0x28], rbp
.label_287:
	mov	r9, rbx
	xor	ebp, ebp
	xor	ebx, ebx
	movabs	rax, 0x100000000
	nop	word ptr cs:[rax + rax]
.label_429:
	add	rbx, rax
	cmp	byte ptr [r13 + rbp], 0x25
	lea	rbp, [rbp - 1]
	jne	.label_429
	mov	rax, rbp
	neg	rax
	test	r14d, r14d
	mov	ecx, r14d
	mov	edx, 0
	cmovs	ecx, edx
	cmp	eax, ecx
	mov	edx, ecx
	cmova	edx, eax
	movsxd	r12, edx
	mov	rdx, qword ptr [rsp + 0x38]
	sub	rdx, r8
	cmp	r12, rdx
	mov	rdi, qword ptr [rsp]
	mov	rdx, qword ptr [rsp + 0x20]
	jae	.label_275
	test	rdi, rdi
	mov	esi, 0
	je	.label_435
	sar	rbx, 0x20
	test	r9d, r9d
	jne	.label_438
	cmp	eax, ecx
	jae	.label_438
	mov	dword ptr [rsp + 8], r11d
	mov	qword ptr [rsp + 0x10], r8
	movsxd	r14, r14d
	sub	r14, rbx
	cmp	r15d, 0x30
	je	.label_273
	cmp	r15d, 0x2b
	jne	.label_276
.label_273:
	mov	esi, 0x30
	jmp	.label_279
.label_276:
	mov	esi, 0x20
.label_279:
	mov	rdx, r14
	mov	r15, rdi
	call	memset
	add	r15, r14
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 0x20]
	mov	r11d, dword ptr [rsp + 8]
.label_438:
	mov	r15d, r11d
	mov	r14, r8
	lea	rsi, [r13 + rbp + 1]
	test	dl, 1
	jne	.label_288
	mov	rdx, rbx
	mov	rbp, rdi
	call	memcpy
	jmp	.label_296
.label_288:
	mov	rdx, rbx
	mov	rbp, rdi
	call	memcpy_uppcase
.label_296:
	add	rbp, rbx
	mov	rsi, rbp
	mov	r8, r14
	mov	r11d, r15d
.label_435:
	add	r8, r12
	mov	rdi, rsi
	jmp	.label_399
.label_305:
	mov	esi, 0x20
.label_394:
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rdx, rbx
	mov	r14, r9
	call	memset
	mov	r10, qword ptr [rsp]
	mov	sil, byte ptr [rsp + 0x30]
	mov	r11d, dword ptr [rsp + 8]
	mov	r9, r14
	mov	r8, qword ptr [rsp + 0x10]
	add	qword ptr [rsp + 0x48], rbx
.label_388:
	mov	rax, qword ptr [rsp + 0x48]
	mov	byte ptr [rax], sil
	inc	rax
	mov	rdi, rax
.label_385:
	add	r8, rbp
	mov	r14d, r10d
	jmp	.label_306
.label_436:
	mov	esi, 0x20
.label_431:
	mov	rdx, r14
	call	memset
	mov	sil, byte ptr [rsp + 0x30]
	mov	r11d, dword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp]
	mov	r8, qword ptr [rsp + 0x10]
	add	rdi, r14
.label_387:
	mov	byte ptr [rdi], sil
	inc	rdi
	mov	rcx, rdi
.label_374:
	add	r8, rbp
	mov	rdi, rcx
.label_425:
	xor	r14d, r14d
	test	rdi, rdi
	mov	ebp, 0
	je	.label_321
	movsxd	rdx, ebx
	mov	qword ptr [rsp], rdx
	mov	esi, 0x30
	mov	qword ptr [rsp + 0x10], r8
	mov	rbp, rdi
	call	memset
	mov	r11d, dword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	add	rbp, qword ptr [rsp]
.label_321:
	movsxd	rcx, ebx
	add	r8, rcx
	mov	rdi, rbp
.label_306:
	lea	rbx, [rsp + 0x97]
	sub	rbx, r12
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	cdqe	
	cmp	rbx, rax
	mov	rbp, rbx
	cmovb	rbp, rax
	mov	rcx, qword ptr [rsp + 0x38]
	sub	rcx, r8
	cmp	rbp, rcx
	jae	.label_275
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_310
	cmp	rbx, rax
	setae	al
	mov	rcx, qword ptr [rsp + 0x40]
	test	ecx, ecx
	jne	.label_339
	test	al, al
	jne	.label_339
	mov	qword ptr [rsp + 0x10], r8
	movsxd	r14, r14d
	sub	r14, rbx
	cmp	r15d, 0x30
	je	.label_342
	cmp	r15d, 0x2b
	jne	.label_364
.label_342:
	mov	esi, 0x30
	jmp	.label_347
.label_364:
	mov	esi, 0x20
.label_347:
	mov	rdx, r14
	mov	r15, rdi
	call	memset
	add	r15, r14
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, r15
	mov	r9, qword ptr [rsp + 0x20]
.label_339:
	mov	r14, r8
	mov	rsi, r12
	mov	rdx, rbx
	mov	r15, rdi
	test	r9b, r9b
	je	.label_355
	call	memcpy_uppcase
	jmp	.label_360
.label_355:
	call	memcpy
.label_360:
	add	r15, rbx
	mov	rcx, r15
	mov	r8, r14
	mov	r11d, dword ptr [rsp + 8]
	jmp	.label_310
.label_348:
	mov	esi, 0x20
.label_351:
	mov	rdx, rbx
	mov	r14, r8
	mov	r15, rdi
	mov	r12d, r11d
	call	memset
	mov	r11d, r12d
	mov	rdi, r15
	mov	r8, r14
	add	rdi, rbx
.label_343:
	mov	al, byte ptr [r13]
	mov	byte ptr [rdi], al
.label_391:
	inc	rdi
	mov	rcx, rdi
.label_310:
	add	r8, rbp
.label_327:
	mov	rdi, rcx
.label_399:
	mov	rbp, qword ptr [rsp + 0x28]
.label_341:
	mov	r14d, 0xffffffff
	cmp	byte ptr [r13 + 1], 0
	lea	r13, [r13 + 1]
	jne	.label_344
.label_392:
	cmp	qword ptr [rsp + 0x38], 0
	je	.label_378
	test	rdi, rdi
	je	.label_378
	mov	byte ptr [rdi], 0
.label_378:
	mov	qword ptr [rsp + 0x58], r8
.label_384:
	mov	rax, qword ptr [rsp + 0x58]
	add	rsp, 0x4a8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_275:
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	jmp	.label_384
	.section	.text
	.align	32
	#Procedure 0x405685
	.globl sub_405685
	.type sub_405685, @function
sub_405685:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405690
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
	#Procedure 0x40569f
	.globl sub_40569f
	.type sub_40569f, @function
sub_40569f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4056a0
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
	#Procedure 0x4056af
	.globl sub_4056af
	.type sub_4056af, @function
sub_4056af:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4056b0

	.globl store_char
	.type store_char, @function
store_char:
	push	rbx
	mov	ebx, edi
	mov	eax, dword ptr [rip + buff_current]
	cmp	rax, qword ptr [rip + buff_allocated]
	jb	.label_440
	mov	rdi, qword ptr [rip + buff]
	mov	esi, OFFSET FLAT:buff_allocated
	call	x2realloc
	mov	qword ptr [rip + buff],  rax
.label_440:
	mov	eax, dword ptr [rip + buff_current]
	lea	ecx, [rax + 1]
	mov	dword ptr [rip + buff_current],  ecx
	mov	rcx, qword ptr [rip + buff]
	mov	byte ptr [rcx + rax], bl
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4056f5
	.globl sub_4056f5
	.type sub_4056f5, @function
sub_4056f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405700
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
	#Procedure 0x405772
	.globl sub_405772
	.type sub_405772, @function
sub_405772:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405780

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
	#Procedure 0x405797
	.globl sub_405797
	.type sub_405797, @function
sub_405797:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057a0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_441
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_441:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4057c6
	.globl sub_4057c6
	.type sub_4057c6, @function
sub_4057c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057d0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_442
	test	rbx, rbx
	jne	.label_442
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_442:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_444
	test	rax, rax
	je	.label_443
.label_444:
	pop	rbx
	ret	
.label_443:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405800

	.globl init_parameters
	.type init_parameters, @function
init_parameters:
	push	rax
	mov	eax, dword ptr [rip + lines_per_page]
	add	eax, -0xa
	mov	dword ptr [rip + lines_per_body],  eax
	jle	.label_445
	cmp	byte ptr [rip + extremities],  1
	je	.label_450
	jmp	.label_459
.label_445:
	mov	byte ptr [rip + extremities],  1
	mov	byte ptr [rip + keep_FF],  1
.label_450:
	mov	eax, dword ptr [rip + lines_per_page]
	mov	dword ptr [rip + lines_per_body],  eax
.label_459:
	cmp	byte ptr [rip + double_space],  1
	jne	.label_462
	mov	eax, dword ptr [rip + lines_per_body]
	mov	ecx, eax
	shr	ecx, 0x1f
	add	ecx, eax
	sar	ecx, 1
	mov	dword ptr [rip + lines_per_body],  ecx
.label_462:
	test	edi, edi
	je	.label_467
	cmp	byte ptr [rip + parallel_files],  1
	jne	.label_468
	mov	dword ptr [rip + columns],  edi
	jmp	.label_468
.label_467:
	mov	byte ptr [rip + parallel_files],  0
.label_468:
	mov	al, byte ptr [rip + storing_columns]
	test	al, al
	jne	.label_474
	mov	byte ptr [rip + balance_columns],  1
.label_474:
	cmp	dword ptr [rip + columns],  2
	jl	.label_448
	mov	cl, byte ptr [rip + use_col_separator]
	mov	al, byte ptr [rip + join_lines]
	test	cl, cl
	je	.label_447
	cmp	dword ptr [rip + col_sep_length],  1
	jne	.label_455
	xor	al, 1
	test	al, 1
	je	.label_455
	mov	rax, qword ptr [rip + col_sep_string]
	cmp	byte ptr [rax], 9
	jne	.label_455
	mov	qword ptr [rip + col_sep_string], OFFSET FLAT:label_461
	jmp	.label_455
.label_448:
	mov	byte ptr [rip + storing_columns],  1
	jmp	.label_465
.label_447:
	mov	ecx, OFFSET FLAT:label_466
	mov	edx, OFFSET FLAT:label_461
	test	al, 1
	cmovne	rdx, rcx
	mov	qword ptr [rip + col_sep_string],  rdx
	mov	dword ptr [rip + col_sep_length],  1
	mov	byte ptr [rip + use_col_separator],  1
.label_455:
	mov	byte ptr [rip + truncate_lines],  1
	mov	byte ptr [rip + tabify_output],  1
.label_465:
	cmp	byte ptr [rip + join_lines],  1
	jne	.label_446
	mov	byte ptr [rip + truncate_lines],  0
.label_446:
	xor	r9d, r9d
	cmp	byte ptr [rip + numbered_lines],  1
	jne	.label_473
	mov	eax, dword ptr [rip + start_line_num]
	mov	dword ptr [rip + line_count],  eax
	mov	eax, dword ptr [rip + chars_per_number]
	cmp	byte ptr [rip + number_separator],  9
	jne	.label_456
	mov	ecx, eax
	sar	ecx, 0x1f
	shr	ecx, 0x1d
	add	ecx, eax
	and	ecx, 0xfffffff8
	mov	edx, eax
	sub	edx, ecx
	neg	edx
	lea	eax, [rax + rdx + 8]
	jmp	.label_463
.label_456:
	inc	eax
.label_463:
	mov	dword ptr [rip + number_width],  eax
	mov	cl, byte ptr [rip + parallel_files]
	xor	r9d, r9d
	test	cl, cl
	cmovne	r9d, eax
.label_473:
	mov	edi, dword ptr [rip + col_sep_length]
	test	edi, edi
	js	.label_472
	je	.label_458
	mov	ecx, dword ptr [rip + columns]
	test	ecx, ecx
	jle	.label_475
	dec	ecx
	mov	esi, 0x7fffffff
	mov	eax, 0x7fffffff
	xor	edx, edx
	div	edi
	cmp	eax, ecx
	jge	.label_458
	jmp	.label_451
.label_472:
	mov	r8d, dword ptr [rip + columns]
	test	r8d, r8d
	jle	.label_452
	cmp	edi, -1
	je	.label_458
	dec	r8d
	mov	eax, 0x80000000
	cdq	
	idiv	edi
	mov	esi, 0x7fffffff
	cmp	eax, r8d
	jge	.label_458
	jmp	.label_451
.label_475:
	mov	eax, 0x80000000
	cdq	
	idiv	edi
	mov	esi, 0x7fffffff
	cmp	ecx, eax
	jg	.label_458
	jmp	.label_451
.label_452:
	mov	esi, 0x7fffffff
	mov	eax, 0x7fffffff
	xor	edx, edx
	idiv	edi
	cmp	r8d, eax
	jle	.label_451
.label_458:
	mov	esi, dword ptr [rip + columns]
	dec	esi
	imul	esi, dword ptr [rip + col_sep_length]
	test	esi, esi
	js	.label_470
.label_451:
	mov	ecx, dword ptr [rip + chars_per_line]
	sub	ecx, r9d
	mov	edx, esi
	xor	edx, 0x80000000
	jmp	.label_476
.label_470:
	lea	ecx, [rsi + 0x7fffffff]
	mov	edx, dword ptr [rip + chars_per_line]
	sub	edx, r9d
.label_476:
	xor	eax, eax
	cmp	ecx, edx
	jl	.label_453
	mov	eax, dword ptr [rip + chars_per_line]
	add	esi, r9d
	sub	eax, esi
.label_453:
	cdq	
	idiv	dword ptr [rip + columns]
	mov	dword ptr [rip + chars_per_column],  eax
	test	eax, eax
	jle	.label_460
	cmp	byte ptr [rip + numbered_lines],  1
	jne	.label_464
	mov	rdi, qword ptr [rip + number_buff]
	call	free
	movsxd	rax, dword ptr [rip + chars_per_number]
	cmp	rax, 0xb
	mov	edi, 0xb
	cmova	rdi, rax
	inc	rdi
	call	xmalloc
	mov	qword ptr [rip + number_buff],  rax
.label_464:
	mov	rdi, qword ptr [rip + clump_buff]
	call	free
	mov	eax, dword ptr [rip + chars_per_input_tab]
	cmp	eax, 8
	mov	ecx, 8
	cmovge	ecx, eax
	movsxd	rdi, ecx
	call	xmalloc
	mov	qword ptr [rip + clump_buff],  rax
	pop	rax
	ret	
.label_460:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_457
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
.label_449:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_454:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_469
	inc	r9
	cmp	r9, 0xa
	jb	.label_471
.label_469:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x405aff
	.globl sub_405aff
	.type sub_405aff, @function
sub_405aff:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405b00

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_471:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_449
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_454
	.section	.text
	.align	32
	#Procedure 0x405b29
	.globl sub_405b29
	.type sub_405b29, @function
sub_405b29:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405b30

	.globl store_columns
	.type store_columns, @function
store_columns:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	dword ptr [rip + buff_current],  0
	mov	al, byte ptr [rip + balance_columns]
	mov	r14d, dword ptr [rip + columns]
	not	al
	movzx	eax, al
	and	eax, 1
	sub	r14d, eax
	xor	r15d, r15d
	test	r14d, r14d
	jle	.label_480
	mov	rax, qword ptr [rip + column_vector]
	add	rax, 0x2c
	mov	ecx, r14d
	nop	word ptr [rax + rax]
.label_477:
	mov	dword ptr [rax], 0
	add	rax, 0x40
	dec	ecx
	jne	.label_477
	test	r14d, r14d
	jle	.label_480
	mov	eax, dword ptr [rip + files_ready_to_read]
	test	eax, eax
	mov	r13d, 0
	je	.label_482
	mov	r12d, 1
	xor	r13d, r13d
	mov	rbx, qword ptr [rip + column_vector]
	xor	r15d, r15d
	nop	
.label_484:
	mov	dword ptr [rbx + 0x28], r15d
	mov	eax, dword ptr [rip + lines_per_body]
	test	eax, eax
	je	.label_478
	mov	ecx, dword ptr [rip + files_ready_to_read]
	test	ecx, ecx
	je	.label_478
	mov	ebp, 1
	sub	ebp, eax
	nop	word ptr [rax + rax]
.label_481:
	cmp	dword ptr [rbx + 0x10], 0
	jne	.label_483
	mov	dword ptr [rip + input_position],  0
	mov	rdi, rbx
	call	read_line
	test	al, al
	jne	.label_479
	mov	rdi, rbx
	call	read_rest_of_line
.label_479:
	cmp	dword ptr [rbx + 0x10], 0
	je	.label_485
	cmp	r13d, dword ptr [rip + buff_current]
	je	.label_483
.label_485:
	inc	dword ptr [rbx + 0x2c]
	mov	eax, r15d
	mov	rcx, qword ptr [rip + line_vector]
	mov	dword ptr [rcx + rax*4], r13d
	mov	ecx, dword ptr [rip + input_position]
	inc	r15d
	mov	rdx, qword ptr [rip + end_vector]
	mov	dword ptr [rdx + rax*4], ecx
	mov	r13d, dword ptr [rip + buff_current]
	nop	
.label_483:
	test	ebp, ebp
	je	.label_478
	mov	eax, dword ptr [rip + files_ready_to_read]
	inc	ebp
	test	eax, eax
	jne	.label_481
.label_478:
	cmp	r12d, r14d
	jge	.label_482
	inc	r12d
	add	rbx, 0x40
	mov	eax, dword ptr [rip + files_ready_to_read]
	test	eax, eax
	jne	.label_484
	jmp	.label_482
.label_480:
	xor	r13d, r13d
.label_482:
	mov	eax, r15d
	mov	rcx, qword ptr [rip + line_vector]
	mov	dword ptr [rcx + rax*4], r13d
	cmp	byte ptr [rip + balance_columns],  1
	jne	.label_486
	mov	edi, r15d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	balance
.label_486:
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
	#Procedure 0x405cb8
	.globl sub_405cb8
	.type sub_405cb8, @function
sub_405cb8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405cc0

	.globl balance
	.type balance, @function
balance:
	mov	r8d, edi
	mov	r10d, dword ptr [rip + columns]
	test	r10d, r10d
	jle	.label_487
	mov	rsi, qword ptr [rip + column_vector]
	mov	r9d, dword ptr [rip + columns]
	add	rsi, 0x2c
	xor	ecx, ecx
	xor	r11d, r11d
	nop	word ptr cs:[rax + rax]
.label_488:
	inc	ecx
	mov	eax, r8d
	cdq	
	idiv	r10d
	xor	edi, edi
	cmp	ecx, edx
	setle	dil
	add	edi, eax
	mov	dword ptr [rsi], edi
	mov	dword ptr [rsi - 4], r11d
	add	r11d, edi
	add	rsi, 0x40
	cmp	ecx, r9d
	mov	r10d, r9d
	jl	.label_488
.label_487:
	ret	
	.section	.text
	.align	32
	#Procedure 0x405d19
	.globl sub_405d19
	.type sub_405d19, @function
sub_405d19:

	nop	dword ptr [rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405d20

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
	je	.label_489
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
.label_489:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405d72
	.globl sub_405d72
	.type sub_405d72, @function
sub_405d72:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d80
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	mov	rax, -1
	mov	rdx, -1
	ret	
	.section	.text
	.align	32
	#Procedure 0x405d8f
	.globl sub_405d8f
	.type sub_405d8f, @function
sub_405d8f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405d90
	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:

	mov	rax, qword ptr [rdi + 0x68]
	mov	rdx, qword ptr [rdi + 0x70]
	ret	
	.section	.text
	.align	32
	#Procedure 0x405d99
	.globl sub_405d99
	.type sub_405d99, @function
sub_405d99:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405da0
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
	#Procedure 0x405db9
	.globl sub_405db9
	.type sub_405db9, @function
sub_405db9:

	nop	dword ptr [rax]
.label_493:
	mov	eax, dword ptr [rip + columns]
	test	eax, eax
	je	.label_490
	mov	rcx, qword ptr [rip + column_vector]
	add	rcx, 0x30
	nop	
.label_492:
	mov	dword ptr [rcx - 0x20], 3
	cmp	dword ptr [rcx - 4], 0
	jne	.label_491
	mov	dword ptr [rcx], 0
.label_491:
	add	rcx, 0x40
	dec	eax
	jne	.label_492
.label_490:
	dec	dword ptr [rip + files_ready_to_read]
.label_495:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405dfe

	.globl close_file
	.type close_file, @function
close_file:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x10], 3
	je	.label_495
	mov	rdi, qword ptr [rbx]
	call	ferror_unlocked
	test	eax, eax
	jne	.label_494
	mov	rdi, qword ptr [rbx]
	call	fileno
	test	eax, eax
	je	.label_496
	mov	rdi, qword ptr [rbx]
	call	rpl_fclose
	test	eax, eax
	jne	.label_494
.label_496:
	mov	al, byte ptr [rip + parallel_files]
	test	al, al
	je	.label_493
	mov	dword ptr [rbx + 0x10], 3
	mov	dword ptr [rbx + 0x30], 0
	jmp	.label_490
.label_494:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdx, qword ptr [rbx + 8]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_26
	xor	eax, eax
	mov	esi, ebp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e80

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_34
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_497
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405ea5
	.globl sub_405ea5
	.type sub_405ea5, @function
sub_405ea5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405eb0

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_498
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_499:
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
	ja	.label_499
	jmp	.label_500
.label_498:
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_501:
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
	ja	.label_501
	mov	byte ptr [rsi], 0x2d
.label_500:
	mov	rax, rsi
	ret	
	.section	.text
	.align	32
	#Procedure 0x405f63
	.globl sub_405f63
	.type sub_405f63, @function
sub_405f63:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f70

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_503
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_505
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_505
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_502
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	jmp	.label_506
.label_505:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_506
.label_503:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_506:
	test	ebx, ebx
	js	.label_502
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	jne	.label_502
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_504
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_502
.label_504:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_502:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406033
	.globl sub_406033
	.type sub_406033, @function
sub_406033:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406040
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_507:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_507
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x406061
	.globl sub_406061
	.type sub_406061, @function
sub_406061:

	nop	word ptr cs:[rax + rax]
.label_510:
	test	rcx, rcx
	jne	.label_508
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_508:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_509
.label_511:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_509:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4060b7
	.globl sub_4060b7
	.type sub_4060b7, @function
sub_4060b7:

	nop	dword ptr [rax]
.label_512:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4060c3

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_510
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_512
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_511
	.section	.text
	.align	32
	#Procedure 0x4060f0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_513
	test	rdx, rdx
	je	.label_513
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_513:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40611b
	.globl sub_40611b
	.type sub_40611b, @function
sub_40611b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406120

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
	.align	32
	#Procedure 0x40614d
	.globl sub_40614d
	.type sub_40614d, @function
sub_40614d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406150
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_514
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_515
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_517
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_67
	mov	ecx, OFFSET FLAT:label_68
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_516
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x4061c4
	.globl sub_4061c4
	.type sub_4061c4, @function
sub_4061c4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061d0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r14, rsi
	mov	r15d, edi
	mov	qword ptr [rsp + 0x38], 0
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_34
	call	setlocale
	mov	edi, OFFSET FLAT:label_521
	mov	esi, OFFSET FLAT:label_522
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_521
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	ebx, ebx
	cmp	r15d, 2
	jl	.label_535
	lea	eax, [r15 - 1]
	movsxd	rdi, eax
	mov	esi, 8
	call	xnmalloc
	mov	rbx, rax
.label_535:
	mov	dword ptr [rsp + 0x14], 0xffffffff
	lea	r8, [rsp + 0x14]
	mov	edx, OFFSET FLAT:short_options
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, r15d
	mov	rsi, r14
	call	getopt_long
	mov	r13d, eax
	cmp	r13d, -1
	je	.label_553
	mov	qword ptr [rsp + 0x28], r15
	mov	qword ptr [rsp + 0x30], r14
	xor	r14d, r14d
	xor	r12d, r12d
	xor	ebp, ebp
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	mov	dword ptr [rsp + 0x10], 0
	jmp	.label_568
.label_553:
	xor	ebp, ebp
	xor	r12d, r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	r13d, r13d
	jmp	.label_558
.label_993:
	mov	rdx, qword ptr [rip + optarg]
	test	rdx, rdx
	je	.label_561
	mov	edi, dword ptr [rsp + 0x14]
	xor	r15d, r15d
	xor	esi, esi
	call	first_last_page
	test	al, al
	jne	.label_532
	jmp	.label_567
.label_574:
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_532
.label_571:
	mov	dword ptr [rsp + 0x10], eax
.label_526:
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_532
	.section	.text
	.align	32
	#Procedure 0x4062f3
	.globl sub_4062f3
	.type sub_4062f3, @function
sub_4062f3:

	nop	word ptr cs:[rax + rax]
.label_568:
	lea	eax, [r13 - 0x30]
	cmp	eax, 9
	ja	.label_518
	lea	r15, [r14 + 1]
	cmp	r15, qword ptr [rsp + 0x38]
	jb	.label_524
	mov	rdi, r12
	lea	rsi, [rsp + 0x38]
	call	x2realloc
	mov	r12, rax
.label_524:
	mov	byte ptr [r12 + r14], r13b
	mov	byte ptr [r12 + r14 + 1], 0
	jmp	.label_532
	.section	.text
	.align	32
	#Procedure 0x406333
	.globl sub_406333
	.type sub_406333, @function
sub_406333:

	nop	word ptr cs:[rax + rax]
.label_518:
	add	r13d, 0x83
	cmp	r13d, 0x104
	ja	.label_542
	jmp	qword ptr [(r13 * 8) + label_547]
.label_970:
	mov	byte ptr [rip + use_form_feed],  1
	jmp	.label_536
.label_968:
	cmp	qword ptr [rip + first_page_number],  0
	jne	.label_554
	mov	rdx, qword ptr [rip + optarg]
	cmp	byte ptr [rdx], 0x2b
	jne	.label_554
	inc	rdx
	mov	edi, 0xfffffffe
	mov	esi, 0x2b
	call	first_last_page
	xor	r15d, r15d
	test	al, al
	jne	.label_532
.label_554:
	mov	rax, qword ptr [rip + optarg]
	mov	ecx, ebp
	inc	ebp
	mov	qword ptr [rbx + rcx*8], rax
	jmp	.label_536
.label_969:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + date_format],  rax
	jmp	.label_536
.label_971:
	mov	byte ptr [rip + join_lines],  1
	jmp	.label_536
.label_972:
	mov	byte ptr [rip + skip_count],  1
	mov	r13, qword ptr [rip + optarg]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_566
	mov	edx, 5
	call	dcgettext
	mov	esi, 0x80000000
	mov	edx, OFFSET FLAT:start_line_num
	jmp	.label_544
.label_973:
	mov	qword ptr [rip + col_sep_string], OFFSET FLAT:label_34
	mov	dword ptr [rip + col_sep_length],  0
	mov	byte ptr [rip + use_col_separator],  1
	mov	rdi, qword ptr [rip + optarg]
	xor	r15d, r15d
	test	rdi, rdi
	je	.label_574
	call	separator_string
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_536
.label_974:
	mov	byte ptr [rip + extremities],  1
	mov	byte ptr [rip + keep_FF],  0
	jmp	.label_536
.label_975:
	mov	byte ptr [rip + truncate_lines],  1
	mov	r13, qword ptr [rip + optarg]
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_546
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	edx, OFFSET FLAT:chars_per_line
	mov	rdi, r13
	mov	rcx, rax
	call	getoptnum
	jmp	.label_536
.label_976:
	mov	byte ptr [rip + print_across_flag],  1
	mov	byte ptr [rip + storing_columns],  1
	jmp	.label_536
.label_977:
	mov	byte ptr [rip + balance_columns],  1
	jmp	.label_536
.label_978:
	mov	byte ptr [rip + use_cntrl_prefix],  1
	jmp	.label_536
.label_979:
	mov	byte ptr [rip + double_space],  1
	jmp	.label_536
.label_980:
	mov	rdi, qword ptr [rip + optarg]
	test	rdi, rdi
	je	.label_565
	mov	esi, 0x65
	mov	edx, OFFSET FLAT:input_tab_char
	mov	ecx, OFFSET FLAT:chars_per_input_tab
	call	getoptarg
.label_565:
	mov	byte ptr [rip + untabify_input],  1
	jmp	.label_536
.label_981:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + custom_header],  rax
	jmp	.label_536
.label_982:
	mov	rdi, qword ptr [rip + optarg]
	test	rdi, rdi
	je	.label_523
	mov	esi, 0x69
	mov	edx, OFFSET FLAT:output_tab_char
	mov	ecx, OFFSET FLAT:chars_per_output_tab
	call	getoptarg
.label_523:
	mov	byte ptr [rip + tabify_output],  1
	jmp	.label_536
.label_983:
	mov	r13, qword ptr [rip + optarg]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_539
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	edx, OFFSET FLAT:lines_per_page
	jmp	.label_544
.label_984:
	mov	byte ptr [rip + parallel_files],  1
	mov	byte ptr [rip + storing_columns],  1
	jmp	.label_536
.label_985:
	mov	byte ptr [rip + numbered_lines],  1
	mov	rdi, qword ptr [rip + optarg]
	xor	r15d, r15d
	test	rdi, rdi
	je	.label_532
	mov	esi, 0x6e
	mov	edx, OFFSET FLAT:number_separator
	mov	ecx, OFFSET FLAT:chars_per_number
	call	getoptarg
	jmp	.label_536
.label_986:
	mov	r13, qword ptr [rip + optarg]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_560
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	edx, OFFSET FLAT:chars_per_margin
.label_544:
	mov	rdi, r13
	mov	rcx, rax
	call	getoptnum
	jmp	.label_532
.label_987:
	mov	byte ptr [rip + ignore_failed_opens],  1
	jmp	.label_536
.label_988:
	mov	rdi, qword ptr [rip + optarg]
	xor	r15d, r15d
	mov	al, 1
	test	rdi, rdi
	je	.label_571
	mov	dword ptr [rsp + 0x10], eax
	movzx	eax, byte ptr [rip + use_col_separator]
	xor	al, 1
	test	al, 1
	je	.label_526
	call	separator_string
	xor	r15d, r15d
	jmp	.label_526
.label_989:
	mov	byte ptr [rip + extremities],  1
	mov	byte ptr [rip + keep_FF],  1
	jmp	.label_536
.label_990:
	mov	byte ptr [rip + use_esc_sequence],  1
	jmp	.label_536
.label_991:
	mov	r13, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_540
	mov	edx, 5
	call	dcgettext
	lea	rdx, [rsp + 0x44]
	mov	esi, 1
	mov	rdi, r13
	mov	rcx, rax
	call	getoptnum
	movzx	eax, byte ptr [rip + truncate_lines]
	test	al, al
	jne	.label_551
	mov	eax, dword ptr [rsp + 0x44]
	mov	dword ptr [rip + chars_per_line],  eax
.label_551:
	mov	al, 1
	mov	dword ptr [rsp + 0x10], eax
	xor	r15d, r15d
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_532
.label_992:
	mov	rdi, qword ptr [rip + optarg]
	call	parse_column_count
	mov	rdi, r12
	call	free
	mov	qword ptr [rsp + 0x38], 0
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_536:
	xor	r15d, r15d
.label_532:
	mov	dword ptr [rsp + 0x14], 0xffffffff
	mov	edx, OFFSET FLAT:short_options
	mov	ecx, OFFSET FLAT:long_options
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x30]
	lea	r8, [rsp + 0x14]
	call	getopt_long
	mov	r13d, eax
	cmp	r13d, -1
	mov	r14, r15
	jne	.label_568
	test	r12, r12
	je	.label_556
	mov	rdi, r12
	call	parse_column_count
	mov	rdi, r12
	call	free
.label_556:
	mov	r14, qword ptr [rsp + 0x30]
	mov	r15, qword ptr [rsp + 0x28]
	mov	r12, qword ptr [rsp + 0x18]
	mov	r13d, dword ptr [rsp + 0x10]
.label_558:
	cmp	qword ptr [rip + date_format],  0
	jne	.label_527
	mov	edi, OFFSET FLAT:label_529
	call	getenv
	mov	ecx, OFFSET FLAT:label_533
	test	rax, rax
	je	.label_534
	mov	edi, 2
	call	hard_locale
	mov	edx, OFFSET FLAT:label_533
	mov	ecx, OFFSET FLAT:label_541
	test	al, al
	cmovne	rcx, rdx
.label_534:
	mov	qword ptr [rip + date_format],  rcx
.label_527:
	mov	edi, OFFSET FLAT:label_545
	call	getenv
	mov	rdi, rax
	call	tzalloc
	mov	qword ptr [rip + localtz],  rax
	cmp	qword ptr [rip + first_page_number],  0
	jne	.label_552
	mov	qword ptr [rip + first_page_number],  1
.label_552:
	cmp	byte ptr [rip + parallel_files],  1
	jne	.label_557
	cmp	byte ptr [rip + explicit_columns],  1
	je	.label_538
	cmp	byte ptr [rip + parallel_files],  1
	jne	.label_557
	cmp	byte ptr [rip + print_across_flag],  1
	je	.label_559
.label_557:
	test	r13b, 1
	je	.label_525
	mov	rax, qword ptr [rsp + 0x20]
	test	al, 1
	jne	.label_519
	test	r12b, 1
	je	.label_525
	test	byte ptr [rip + use_col_separator],  1
	jne	.label_525
	mov	al, byte ptr [rip + parallel_files]
	test	al, al
	jne	.label_528
	cmp	byte ptr [rip + explicit_columns],  1
	jne	.label_525
.label_528:
	mov	al, byte ptr [rip + truncate_lines]
	test	al, al
	jne	.label_570
	mov	byte ptr [rip + join_lines],  1
	cmp	dword ptr [rip + col_sep_length],  0
	jg	.label_570
	jmp	.label_525
.label_519:
	mov	al, byte ptr [rip + parallel_files]
	test	al, al
	jne	.label_573
	cmp	byte ptr [rip + explicit_columns],  1
	jne	.label_520
.label_573:
	mov	byte ptr [rip + truncate_lines],  1
	test	r12b, 1
	je	.label_525
.label_570:
	mov	byte ptr [rip + use_col_separator],  1
	jmp	.label_525
.label_520:
	mov	byte ptr [rip + join_lines],  1
.label_525:
	mov	ecx, dword ptr [rip + optind]
	cmp	ecx, r15d
	jge	.label_572
	mov	eax, dword ptr [rip + optind]
	nop	dword ptr [rax]
.label_564:
	movsxd	rcx, ecx
	mov	rcx, qword ptr [r14 + rcx*8]
	mov	edx, ebp
	inc	ebp
	mov	qword ptr [rbx + rdx*8], rcx
	inc	eax
	cmp	eax, r15d
	mov	ecx, eax
	jl	.label_564
	mov	dword ptr [rip + optind],  eax
.label_572:
	test	ebp, ebp
	je	.label_543
	mov	al, byte ptr [rip + parallel_files]
	test	al, al
	je	.label_537
	mov	edi, ebp
	mov	rsi, rbx
	jmp	.label_555
	.section	.text
	.align	32
	#Procedure 0x406873
	.globl sub_406873
	.type sub_406873, @function
sub_406873:

	nop	word ptr cs:[rax + rax]
.label_537:
	mov	edi, 1
	mov	rsi, rbx
	call	print_files
	add	rbx, 8
	dec	ebp
	jne	.label_537
	jmp	.label_569
.label_543:
	xor	edi, edi
	xor	esi, esi
.label_555:
	call	print_files
.label_569:
	call	cleanup
	cmp	byte ptr [rip + have_read_stdin],  1
	jne	.label_562
	mov	rdi, qword ptr [rip + stdin]
	call	rpl_fclose
	cmp	eax, -1
	je	.label_549
.label_562:
	movzx	eax, byte ptr [rip + failed_opens]
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_966:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_64
	mov	edx, OFFSET FLAT:label_67
	mov	r8d, OFFSET FLAT:label_575
	mov	r9d, OFFSET FLAT:label_576
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_967:
	xor	edi, edi
	call	usage
.label_542:
	mov	edi, 1
	call	usage
.label_538:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_530
	jmp	.label_531
.label_549:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_561:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_548
	jmp	.label_531
.label_567:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_550
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + optarg]
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_559:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_563
.label_531:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4069c0

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	.section	.text
	.align	32
	#Procedure 0x4069c5
	.globl sub_4069c5
	.type sub_4069c5, @function
sub_4069c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4069d0

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_577
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_577:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4069ea
	.globl sub_4069ea
	.type sub_4069ea, @function
sub_4069ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4069f0

	.globl memcpy_uppcase
	.type memcpy_uppcase, @function
memcpy_uppcase:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	test	rbx, rbx
	je	.label_578
	call	__ctype_toupper_loc
	nop	dword ptr [rax + rax]
.label_579:
	movzx	ecx, byte ptr [r14 + rbx - 1]
	mov	rdx, qword ptr [rax]
	movzx	ecx, byte ptr [rdx + rcx*4]
	mov	byte ptr [r15 + rbx - 1], cl
	dec	rbx
	jne	.label_579
.label_578:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a2d
	.globl sub_406a2d
	.type sub_406a2d, @function
sub_406a2d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406a30

	.globl equal_tm
	.type equal_tm, @function
equal_tm:
	push	rbx
	mov	eax, dword ptr [rsi]
	mov	ecx, dword ptr [rsi + 4]
	xor	eax, dword ptr [rdi]
	xor	ecx, dword ptr [rdi + 4]
	or	ecx, eax
	mov	eax, dword ptr [rsi + 8]
	xor	eax, dword ptr [rdi + 8]
	mov	edx, dword ptr [rsi + 0xc]
	xor	edx, dword ptr [rdi + 0xc]
	or	edx, eax
	or	edx, ecx
	mov	eax, dword ptr [rsi + 0x10]
	xor	eax, dword ptr [rdi + 0x10]
	mov	ebx, dword ptr [rsi + 0x14]
	xor	ebx, dword ptr [rdi + 0x14]
	or	ebx, eax
	or	ebx, edx
	mov	edi, dword ptr [rdi + 0x20]
	mov	esi, dword ptr [rsi + 0x20]
	call	isdst_differ
	movzx	ecx, al
	xor	eax, eax
	or	ecx, ebx
	sete	al
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a74
	.globl sub_406a74
	.type sub_406a74, @function
sub_406a74:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a80
	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:

	mov	rax, qword ptr [rdi + 0x50]
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a85
	.globl sub_406a85
	.type sub_406a85, @function
sub_406a85:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a90

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_580
	test	rsi, rsi
	mov	ecx, 1
	je	.label_581
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_581
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_580:
	mov	ecx, 1
.label_581:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x406adb
	.globl sub_406adb
	.type sub_406adb, @function
sub_406adb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ae0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_582
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_582
.label_583:
	ret	
.label_582:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_583
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x406b06
	.globl sub_406b06
	.type sub_406b06, @function
sub_406b06:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b10

	.globl print_files
	.type print_files, @function
print_files:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	ebp, edi
	call	init_parameters
	mov	edi, ebp
	mov	rsi, rbx
	call	init_fps
	test	al, al
	je	.label_585
	mov	al, byte ptr [rip + storing_columns]
	test	al, al
	jne	.label_586
	call	init_store_cols
.label_586:
	mov	rdi, qword ptr [rip + first_page_number]
	mov	eax, 1
	cmp	rdi, 2
	jb	.label_587
	call	skip_to_page
	test	al, al
	je	.label_585
	mov	rax, qword ptr [rip + first_page_number]
.label_587:
	mov	qword ptr [rip + page_number],  rax
	call	init_funcs
	mov	eax, dword ptr [rip + line_count]
	mov	dword ptr [rip + line_number],  eax
	nop	word ptr cs:[rax + rax]
.label_584:
	call	print_page
	test	al, al
	jne	.label_584
.label_585:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406b90

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x406b9e
	.globl sub_406b9e
	.type sub_406b9e, @function
sub_406b9e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x406ba0

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
	js	.label_588
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_591
	cmp	r12d, 0x7fffffff
	je	.label_593
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
	jne	.label_589
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_589:
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
.label_591:
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
	jbe	.label_594
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_590
.label_594:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_592
	mov	rdi, r14
	call	free
.label_592:
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
.label_590:
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
.label_588:
	call	abort
.label_593:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x406d5d
	.globl sub_406d5d
	.type sub_406d5d, @function
sub_406d5d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406d60

	.globl skip_to_page
	.type skip_to_page, @function
skip_to_page:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rdi
	cmp	r14, 2
	jb	.label_598
	mov	r15d, 1
	nop	dword ptr [rax + rax]
.label_608:
	cmp	dword ptr [rip + lines_per_body],  2
	jl	.label_595
	mov	r12d, 1
	nop	
.label_600:
	cmp	dword ptr [rip + columns],  0
	jle	.label_601
	xor	ebp, ebp
	mov	rbx, qword ptr [rip + column_vector]
	nop	word ptr cs:[rax + rax]
.label_597:
	inc	ebp
	cmp	dword ptr [rbx + 0x10], 0
	jne	.label_607
	mov	rdi, rbx
	mov	esi, ebp
	call	skip_read
.label_607:
	add	rbx, 0x40
	cmp	ebp, dword ptr [rip + columns]
	jl	.label_597
.label_601:
	inc	r12d
	cmp	r12d, dword ptr [rip + lines_per_body]
	jl	.label_600
.label_595:
	mov	byte ptr [rip + last_line],  1
	cmp	dword ptr [rip + columns],  0
	jle	.label_604
	xor	ebp, ebp
	mov	rbx, qword ptr [rip + column_vector]
	nop	word ptr cs:[rax + rax]
.label_602:
	inc	ebp
	cmp	dword ptr [rbx + 0x10], 0
	jne	.label_596
	mov	rdi, rbx
	mov	esi, ebp
	call	skip_read
.label_596:
	add	rbx, 0x40
	cmp	ebp, dword ptr [rip + columns]
	jl	.label_602
.label_604:
	mov	al, byte ptr [rip + storing_columns]
	test	al, al
	jne	.label_606
	mov	eax, dword ptr [rip + columns]
	test	eax, eax
	jle	.label_606
	mov	rax, qword ptr [rip + column_vector]
	mov	ecx, dword ptr [rip + columns]
	add	rax, 0x10
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_605:
	cmp	dword ptr [rax], 3
	je	.label_603
	mov	dword ptr [rax], 2
.label_603:
	inc	edx
	add	rax, 0x40
	cmp	edx, ecx
	jl	.label_605
.label_606:
	call	reset_status
	mov	byte ptr [rip + last_line],  0
	cmp	dword ptr [rip + files_ready_to_read],  0
	jle	.label_609
	inc	r15
	cmp	r15, r14
	jb	.label_608
	jmp	.label_598
.label_609:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_599
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r14
	mov	r8, r15
	call	error
.label_598:
	cmp	dword ptr [rip + files_ready_to_read],  0
	setg	al
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406ec3
	.globl sub_406ec3
	.type sub_406ec3, @function
sub_406ec3:

	nop	word ptr cs:[rax + rax]
.label_614:
	push	rax
	call	store_columns
	mov	esi, dword ptr [rip + columns]
	mov	rax, qword ptr [rip + column_vector]
	cmp	esi, 1
	lea	rsp, [rsp + 8]
	je	.label_611
	lea	ecx, [rsi - 2]
	inc	rcx
	mov	edx, 1
	sub	edx, esi
	lea	rsi, [rax + 0x30]
	nop	word ptr cs:[rax + rax]
.label_612:
	mov	edi, dword ptr [rsi - 4]
	mov	dword ptr [rsi], edi
	add	rsi, 0x40
	inc	edx
	jne	.label_612
	shl	rcx, 6
	add	rax, rcx
.label_611:
	cmp	byte ptr [rip + balance_columns],  1
	jne	.label_613
	mov	ecx, dword ptr [rax + 0x2c]
	mov	dword ptr [rax + 0x30], ecx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406f2d

	.globl init_page
	.type init_page, @function
init_page:
	mov	al, byte ptr [rip + storing_columns]
	test	al, al
	je	.label_614
	mov	eax, dword ptr [rip + columns]
	test	eax, eax
	je	.label_616
	mov	rcx, qword ptr [rip + column_vector]
	mov	edx, dword ptr [rip + lines_per_body]
	add	rcx, 0x30
	nop	word ptr cs:[rax + rax]
.label_615:
	cmp	dword ptr [rcx - 0x20], 0
	mov	esi, 0
	cmove	esi, edx
	mov	dword ptr [rcx], esi
	add	rcx, 0x40
	dec	eax
	jne	.label_615
.label_616:
	ret	
.label_610:
	mov	ecx, dword ptr [rip + lines_per_body]
	mov	dword ptr [rax + 0x30], ecx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406f7e
	.globl sub_406f7e
	.type sub_406f7e, @function
sub_406f7e:

	nop	dword ptr [rax]
.label_613:
	cmp	dword ptr [rax + 0x10], 0
	je	.label_610
	mov	dword ptr [rax + 0x30], 0
	ret	
	.section	.text
	.align	32
	#Procedure 0x406f90

	.globl iso_week_days
	.type iso_week_days, @function
iso_week_days:
	lea	eax, [rdi + 0x17e]
	sub	eax, esi
	cdqe	
	imul	rcx, rax, -0x6db6db6d
	shr	rcx, 0x20
	add	ecx, eax
	mov	edx, ecx
	shr	edx, 0x1f
	sar	ecx, 2
	add	ecx, edx
	lea	edx, [rcx*8]
	sub	edx, ecx
	sub	eax, edx
	neg	eax
	lea	eax, [rdi + rax + 3]
	ret	
	.section	.text
	.align	32
	#Procedure 0x406fc3
	.globl sub_406fc3
	.type sub_406fc3, @function
sub_406fc3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406fd0

	.globl cols_ready_to_print
	.type cols_ready_to_print, @function
cols_ready_to_print:
	xor	eax, eax
	cmp	dword ptr [rip + columns],  0
	je	.label_617
	mov	rcx, qword ptr [rip + column_vector]
	mov	edx, dword ptr [rip + columns]
	mov	sil, byte ptr [rip + storing_columns]
	add	rcx, 0x30
	xor	eax, eax
	xor	edi, edi
	nop	word ptr [rax + rax]
.label_619:
	cmp	dword ptr [rcx - 0x20], 2
	jb	.label_618
	test	sil, 1
	jne	.label_620
	cmp	dword ptr [rcx - 4], 0
	jle	.label_620
	cmp	dword ptr [rcx], 0
	jle	.label_620
	nop	word ptr [rax + rax]
.label_618:
	inc	eax
.label_620:
	inc	edi
	add	rcx, 0x40
	cmp	edi, edx
	jb	.label_619
.label_617:
	ret	
	.section	.text
	.align	32
	#Procedure 0x40702d
	.globl sub_40702d
	.type sub_40702d, @function
sub_40702d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407030
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
	#Procedure 0x40703f
	.globl sub_40703f
	.type sub_40703f, @function
sub_40703f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x407040
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40704a
	.globl sub_40704a
	.type sub_40704a, @function
sub_40704a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407050

	.globl print_page
	.type print_page, @function
print_page:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	call	init_page
	call	cols_ready_to_print
	test	eax, eax
	je	.label_640
	mov	al, byte ptr [rip + extremities]
	test	al, al
	jne	.label_642
	mov	byte ptr [rip + print_a_header],  1
.label_642:
	mov	byte ptr [rip + pad_vertically],  0
	mov	r14d, dword ptr [rip + lines_per_body]
	mov	cl, byte ptr [rip + double_space]
	shl	r14d, cl
	xor	r15d, r15d
	jmp	.label_624
	.section	.text
	.align	32
	#Procedure 0x407096
	.globl sub_407096
	.type sub_407096, @function
sub_407096:

	nop	word ptr cs:[rax + rax]
.label_628:
	mov	edi, 0xa
	call	putchar_unlocked
	dec	r14d
.label_624:
	test	r14d, r14d
	jle	.label_621
	call	cols_ready_to_print
	test	eax, eax
	je	.label_630
	mov	dword ptr [rip + output_position],  0
	mov	dword ptr [rip + spaces_not_printed],  0
	mov	dword ptr [rip + separators_not_printed],  0
	mov	byte ptr [rip + pad_vertically],  0
	mov	byte ptr [rip + align_empty_cols],  0
	mov	byte ptr [rip + empty_line],  1
	cmp	dword ptr [rip + columns],  0
	jle	.label_634
	xor	ebp, ebp
	mov	rbx, qword ptr [rip + column_vector]
	nop	dword ptr [rax]
.label_636:
	mov	dword ptr [rip + input_position],  0
	cmp	dword ptr [rbx + 0x30], 0
	jg	.label_627
	cmp	dword ptr [rbx + 0x10], 1
	jne	.label_629
.label_627:
	mov	byte ptr [rip + FF_only],  0
	mov	eax, dword ptr [rbx + 0x34]
	mov	dword ptr [rip + padding_not_printed],  eax
	mov	rdi, rbx
	call	qword ptr [rbx + 0x18]
	test	al, al
	jne	.label_633
	mov	rdi, rbx
	call	read_rest_of_line
.label_633:
	and	r15b, 1
	or	r15b, byte ptr [rip + pad_vertically]
	mov	eax, dword ptr [rbx + 0x30]
	lea	ecx, [rax - 1]
	mov	dword ptr [rbx + 0x30], ecx
	cmp	eax, 1
	jg	.label_635
	call	cols_ready_to_print
	test	eax, eax
	je	.label_641
.label_635:
	cmp	byte ptr [rip + parallel_files],  1
	jne	.label_623
	mov	eax, dword ptr [rbx + 0x10]
	test	eax, eax
	je	.label_623
	cmp	byte ptr [rip + empty_line],  1
	je	.label_639
	cmp	eax, 3
	je	.label_626
	cmp	eax, 2
	jne	.label_623
	cmp	byte ptr [rip + FF_only],  1
	je	.label_626
	jmp	.label_623
.label_629:
	cmp	byte ptr [rip + parallel_files],  1
	jne	.label_623
	cmp	byte ptr [rip + empty_line],  1
	jne	.label_626
.label_639:
	mov	byte ptr [rip + align_empty_cols],  1
	jmp	.label_623
.label_626:
	mov	rdi, rbx
	call	align_column
	nop	dword ptr [rax + rax]
.label_623:
	cmp	byte ptr [rip + use_col_separator],  1
	jne	.label_622
	inc	dword ptr [rip + separators_not_printed]
.label_622:
	add	rbx, 0x40
	inc	ebp
	cmp	ebp, dword ptr [rip + columns]
	jl	.label_636
.label_641:
	cmp	byte ptr [rip + pad_vertically],  0
	je	.label_634
	mov	edi, 0xa
	call	putchar_unlocked
	dec	r14d
.label_634:
	call	cols_ready_to_print
	test	eax, eax
	jne	.label_646
	mov	al, byte ptr [rip + extremities]
	test	al, al
	jne	.label_621
.label_646:
	test	r15b, 1
	je	.label_624
	mov	al, byte ptr [rip + double_space]
	xor	al, 1
	test	al, 1
	je	.label_628
	jmp	.label_624
.label_621:
	test	r14d, r14d
	jne	.label_630
	cmp	dword ptr [rip + columns],  0
	jle	.label_631
	mov	rax, qword ptr [rip + column_vector]
	mov	ecx, dword ptr [rip + columns]
	add	rax, 0x39
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_638:
	cmp	dword ptr [rax - 0x29], 0
	jne	.label_644
	mov	byte ptr [rax], 1
.label_644:
	add	rax, 0x40
	inc	edx
	cmp	edx, ecx
	jl	.label_638
	jmp	.label_630
.label_640:
	xor	eax, eax
	jmp	.label_637
.label_631:
	xor	r14d, r14d
.label_630:
	and	r15b, 1
	mov	byte ptr [rip + pad_vertically],  r15b
	je	.label_643
	mov	al, byte ptr [rip + extremities]
	test	al, al
	je	.label_645
.label_643:
	cmp	byte ptr [rip + keep_FF],  1
	jne	.label_625
	cmp	byte ptr [rip + print_a_FF],  1
	jne	.label_625
	mov	edi, 0xc
	call	putchar_unlocked
	mov	byte ptr [rip + print_a_FF],  0
	jmp	.label_625
.label_645:
	add	r14d, 5
	mov	edi, r14d
	call	pad_down
.label_625:
	mov	rax, qword ptr [rip + last_page_number]
	mov	rcx, qword ptr [rip + page_number]
	inc	rcx
	mov	qword ptr [rip + page_number],  rcx
	cmp	rax, rcx
	jae	.label_632
	xor	eax, eax
	jmp	.label_637
.label_632:
	call	reset_status
	mov	al, 1
.label_637:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4072e7
	.globl sub_4072e7
	.type sub_4072e7, @function
sub_4072e7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4072f0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x4072f8
	.globl sub_4072f8
	.type sub_4072f8, @function
sub_4072f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407300

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
	jae	.label_647
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_663:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_663
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_658
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoumax
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_649
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_656
	cmp	eax, 0x22
	jne	.label_658
	mov	r12d, 1
.label_656:
	test	rbp, rbp
	jne	.label_660
	jmp	.label_664
.label_649:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_658
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_658
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_658
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_660:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_664
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_654
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_655
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_655
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_661
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_662
	cmp	ecx, 0x44
	je	.label_662
	cmp	ecx, 0x69
	jne	.label_661
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_661
.label_662:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_661
.label_655:
	mov	rsi, r14
.label_661:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_654
	xor	eax, eax
	jmp	qword ptr [(rcx * 8) + label_657]
.label_1031:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_648
.label_654:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_659
.label_1032:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_648
.label_1033:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_648
.label_1035:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_648
.label_1029:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale
	jmp	.label_650
.label_1030:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_648
.label_1034:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_648
.label_1036:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_648
.label_1037:
	lea	rdi, [rsp]
	mov	edx, 7
.label_648:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_650:
	mov	rsi, r14
.label_1039:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_664:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_659:
	mov	r15d, r12d
.label_658:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1038:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale
	jmp	.label_650
.label_1040:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale
	jmp	.label_650
.label_647:
	mov	edi, OFFSET FLAT:label_651
	mov	esi, OFFSET FLAT:label_652
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_653
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x4075a2
	.globl sub_4075a2
	.type sub_4075a2, @function
sub_4075a2:

	nop	word ptr cs:[rax + rax]
.label_666:
	mov	eax, dword ptr [rip + columns]
	test	eax, eax
	je	.label_665
	mov	rcx, qword ptr [rip + column_vector]
	movzx	edx, byte ptr [rip + storing_columns]
	inc	edx
	add	rcx, 0x10
	nop	word ptr cs:[rax + rax]
.label_667:
	mov	dword ptr [rcx], edx
	add	rcx, 0x40
	dec	eax
	jne	.label_667
.label_665:
	mov	dword ptr [rdi + 0x30], 0
	dec	dword ptr [rip + files_ready_to_read]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4075f5
	.globl sub_4075f5
	.type sub_4075f5, @function
sub_4075f5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4075fd

	.globl hold_file
	.type hold_file, @function
hold_file:
	mov	al, byte ptr [rip + parallel_files]
	test	al, al
	je	.label_666
	mov	dword ptr [rdi + 0x10], 2
	jmp	.label_665
	.section	.text
	.align	32
	#Procedure 0x407610

	.globl xdectoimax
	.type xdectoimax, @function
xdectoimax:
	push	rax
	mov	r10, r8
	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	esi, 0xa
	mov	r8, rax
	mov	r9, r10
	call	xnumtoimax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x407633
	.globl sub_407633
	.type sub_407633, @function
sub_407633:

	nop	word ptr cs:[rax + rax]
.label_668:
	imul	rcx, r9
	mov	qword ptr [rdi], rcx
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40764a
	.globl sub_40764a
	.type sub_40764a, @function
sub_40764a:

	nop	word ptr [rax + rax]
.label_669:
	mov	rax, r8
	cqo	
	idiv	r9
	cmp	rax, rcx
	jge	.label_668
	mov	qword ptr [rdi], r8
	mov	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x407666

	.globl bkm_scale_0
	.type bkm_scale_0, @function
bkm_scale_0:
	movabs	r8, 0x7fffffffffffffff
	mov	rcx, qword ptr [rdi]
	movsxd	r9, esi
	lea	rsi, [r8 + 1]
	mov	rax, rsi
	cqo	
	idiv	r9
	cmp	rcx, rax
	jge	.label_669
	mov	qword ptr [rdi], rsi
	mov	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x407690

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_670
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_670:
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
	#Procedure 0x407713
	.globl sub_407713
	.type sub_407713, @function
sub_407713:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407720
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x407728
	.globl sub_407728
	.type sub_407728, @function
sub_407728:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407730
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	32
	#Procedure 0x40773a
	.globl sub_40773a
	.type sub_40773a, @function
sub_40773a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407740

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
	je	.label_671
	mov	qword ptr [rax], rbx
.label_671:
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
	#Procedure 0x40782c
	.globl sub_40782c
	.type sub_40782c, @function
sub_40782c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407830

	.globl print_stored
	.type print_stored, @function
print_stored:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r15, rdi
	movsxd	r14, dword ptr [r15 + 0x28]
	lea	rax, [r14 + 1]
	mov	dword ptr [r15 + 0x28], eax
	mov	rax, qword ptr [rip + line_vector]
	movsxd	r13, dword ptr [rax + r14*4]
	mov	rbx, qword ptr [rip + buff]
	add	rbx, r13
	movsxd	r12, dword ptr [rax + r14*4 + 4]
	mov	byte ptr [rip + pad_vertically],  1
	cmp	byte ptr [rip + print_a_header],  1
	jne	.label_675
	call	print_header
.label_675:
	cmp	dword ptr [r15 + 0x10], 1
	jne	.label_678
	cmp	dword ptr [rip + columns],  0
	jle	.label_681
	mov	rax, qword ptr [rip + column_vector]
	mov	ecx, dword ptr [rip + columns]
	add	rax, 0x10
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_674:
	mov	dword ptr [rax], 2
	inc	edx
	add	rax, 0x40
	cmp	edx, ecx
	jl	.label_674
.label_681:
	mov	rax, qword ptr [rip + column_vector]
	cmp	dword ptr [rax + 0x30], 0
	jle	.label_677
.label_678:
	mov	edi, dword ptr [rip + padding_not_printed]
	sub	edi, dword ptr [rip + col_sep_length]
	jle	.label_680
	call	pad_across_to
	mov	dword ptr [rip + padding_not_printed],  0
.label_680:
	cmp	byte ptr [rip + use_col_separator],  1
	jne	.label_673
	call	print_sep_string
.label_673:
	cmp	r13d, r12d
	je	.label_676
	sub	r12, r13
.label_679:
	movsx	edi, byte ptr [rbx]
	inc	rbx
	call	print_char
	dec	r12
	jne	.label_679
.label_676:
	cmp	dword ptr [rip + spaces_not_printed],  0
	jne	.label_672
	mov	edx, dword ptr [r15 + 0x34]
	mov	rax, qword ptr [rip + end_vector]
	mov	eax, dword ptr [rax + r14*4]
	add	eax, edx
	mov	dword ptr [rip + output_position],  eax
	mov	ecx, dword ptr [rip + col_sep_length]
	sub	edx, ecx
	cmp	edx, dword ptr [rip + chars_per_margin]
	jne	.label_672
	sub	eax, ecx
	mov	dword ptr [rip + output_position],  eax
	jmp	.label_672
.label_677:
	cmp	byte ptr [rip + extremities],  1
	jne	.label_672
	mov	byte ptr [rip + pad_vertically],  0
.label_672:
	mov	al, 1
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x407956
	.globl sub_407956
	.type sub_407956, @function
sub_407956:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407960

	.globl memcpy_lowcase
	.type memcpy_lowcase, @function
memcpy_lowcase:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	test	rbx, rbx
	je	.label_682
	call	__ctype_tolower_loc
	nop	dword ptr [rax + rax]
.label_683:
	movzx	ecx, byte ptr [r14 + rbx - 1]
	mov	rdx, qword ptr [rax]
	movzx	ecx, byte ptr [rdx + rcx*4]
	mov	byte ptr [r15 + rbx - 1], cl
	dec	rbx
	jne	.label_683
.label_682:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40799d
	.globl sub_40799d
	.type sub_40799d, @function
sub_40799d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4079a0

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	xor	r15d, r15d
	test	r14, r14
	je	.label_684
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	inc	r15
.label_684:
	lea	rax, [r15 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r15, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_685
	mov	qword ptr [rbx], 0
	test	r14, r14
	setne	byte ptr [rbx + 8]
	mov	byte ptr [rbx + 9], 0
	je	.label_685
	mov	rdi, rbx
	add	rdi, 9
	mov	rsi, r14
	mov	rdx, r15
	call	extend_abbrs
.label_685:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x407a0f
	.globl sub_407a0f
	.type sub_407a0f, @function
sub_407a0f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x407a10

	.globl print_sep_string
	.type print_sep_string, @function
print_sep_string:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	cmp	dword ptr [rip + separators_not_printed],  0
	jle	.label_691
	mov	r12d, dword ptr [rip + col_sep_length]
	mov	r14, qword ptr [rip + col_sep_string]
	nop	word ptr cs:[rax + rax]
.label_692:
	lea	eax, [r12 - 1]
	test	r12d, r12d
	jle	.label_686
	mov	r15d, eax
	mov	rbx, r14
.label_689:
	mov	eax, dword ptr [rip + spaces_not_printed]
	cmp	byte ptr [rbx], 0x20
	jne	.label_687
	inc	eax
	mov	dword ptr [rip + spaces_not_printed],  eax
	jmp	.label_695
	.section	.text
	.align	32
	#Procedure 0x407a65
	.globl sub_407a65
	.type sub_407a65, @function
sub_407a65:

	nop	word ptr cs:[rax + rax]
.label_687:
	test	eax, eax
	jle	.label_694
	call	print_white_space
.label_694:
	movsx	edi, byte ptr [rbx]
	call	putchar_unlocked
	inc	dword ptr [rip + output_position]
.label_695:
	inc	rbx
	dec	r12d
	jg	.label_689
	lea	r14, [r14 + r15 + 1]
	mov	r12d, 0xffffffff
	jmp	.label_690
	.section	.text
	.align	32
	#Procedure 0x407a9c
	.globl sub_407a9c
	.type sub_407a9c, @function
sub_407a9c:

	nop	dword ptr [rax]
.label_686:
	mov	r12d, eax
.label_690:
	cmp	dword ptr [rip + spaces_not_printed],  0
	jle	.label_688
	call	print_white_space
.label_688:
	mov	eax, dword ptr [rip + separators_not_printed]
	lea	ecx, [rax - 1]
	mov	dword ptr [rip + separators_not_printed],  ecx
	cmp	eax, 1
	jg	.label_692
.label_693:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_691:
	cmp	dword ptr [rip + spaces_not_printed],  0
	jle	.label_693
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	print_white_space
	.section	.text
	.align	32
	#Procedure 0x407aeb
	.globl sub_407aeb
	.type sub_407aeb, @function
sub_407aeb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407af0

	.globl print_white_space
	.type print_white_space, @function
print_white_space:
	push	rbp
	push	r14
	push	rbx
	mov	ebx, dword ptr [rip + output_position]
	mov	eax, dword ptr [rip + spaces_not_printed]
	lea	r14d, [rax + rbx]
	cmp	eax, 2
	jl	.label_697
	nop	dword ptr [rax]
.label_698:
	mov	ecx, ebx
	mov	ebx, dword ptr [rip + chars_per_output_tab]
	mov	eax, ecx
	cdq	
	idiv	ebx
	sub	ebx, edx
	add	ebx, ecx
	mov	ebp, r14d
	sub	ebp, ebx
	jl	.label_696
	movsx	edi, byte ptr [rip + output_tab_char]
	call	putchar_unlocked
	cmp	ebp, 1
	mov	ecx, ebx
	jg	.label_698
	jmp	.label_696
.label_697:
	mov	ecx, ebx
.label_696:
	cmp	ecx, r14d
	jge	.label_700
	mov	ebx, r14d
	sub	ebx, ecx
	nop	dword ptr [rax]
.label_699:
	mov	edi, 0x20
	call	putchar_unlocked
	dec	ebx
	jne	.label_699
.label_700:
	mov	dword ptr [rip + output_position],  r14d
	mov	dword ptr [rip + spaces_not_printed],  0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407b74
	.globl sub_407b74
	.type sub_407b74, @function
sub_407b74:

	nop	word ptr cs:[rax + rax]
.label_701:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	32
	#Procedure 0x407b8c
	.globl sub_407b8c
	.type sub_407b8c, @function
sub_407b8c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b99

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_701
	ret	
	.section	.text
	.align	32
	#Procedure 0x407ba0
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
	#Procedure 0x407bc7
	.globl sub_407bc7
	.type sub_407bc7, @function
sub_407bc7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407bd0

	.globl print_header
	.type print_header, @function
print_header:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x120
	mov	dword ptr [rip + output_position],  0
	mov	edi, dword ptr [rip + chars_per_margin]
	call	pad_across_to
	call	print_white_space
	cmp	qword ptr [rip + page_number],  0
	je	.label_704
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_702
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	r8, qword ptr [rip + page_number]
	lea	r15, [rsp]
	mov	esi, 1
	mov	edx, 0x114
	xor	eax, eax
	mov	rdi, r15
	call	__sprintf_chk
	mov	ebx, dword ptr [rip + header_width_available]
	xor	esi, esi
	mov	rdi, r15
	call	gnu_mbswidth
	sub	ebx, eax
	cmovs	ebx, r14d
	mov	r9d, ebx
	sar	r9d, 1
	sub	ebx, r9d
	mov	edx, dword ptr [rip + chars_per_margin]
	mov	r8, qword ptr [rip + date_text]
	sub	rsp, 8
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_703
	mov	ecx, OFFSET FLAT:label_34
	mov	eax, 0
	push	r15
	push	OFFSET FLAT:label_461
	push	rbx
	push	qword ptr [rip + file_text]
	push	OFFSET FLAT:label_461
	call	__printf_chk
	add	rsp, 0x30
	mov	byte ptr [rip + print_a_header],  0
	mov	dword ptr [rip + output_position],  0
	add	rsp, 0x120
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_704:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_705
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407ce0

	.globl print_char
	.type print_char, @function
print_char:
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	cmp	byte ptr [rip + tabify_output],  1
	jne	.label_706
	cmp	bl, 0x20
	mov	eax, dword ptr [rip + spaces_not_printed]
	jne	.label_709
	inc	eax
	mov	dword ptr [rip + spaces_not_printed],  eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_709:
	test	eax, eax
	jle	.label_708
	call	print_white_space
.label_708:
	movsx	edi, bl
	call	to_uchar
	movzx	r14d, al
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + r14*2 + 1], 0x40
	jne	.label_707
	cmp	bl, 8
	jne	.label_706
	dec	dword ptr [rip + output_position]
	jmp	.label_706
.label_707:
	inc	dword ptr [rip + output_position]
.label_706:
	movsx	edi, bl
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	putchar_unlocked
	.section	.text
	.align	32
	#Procedure 0x407d51
	.globl sub_407d51
	.type sub_407d51, @function
sub_407d51:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407d60

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	32
	#Procedure 0x407d69
	.globl sub_407d69
	.type sub_407d69, @function
sub_407d69:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407d70

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
	mov	rax, qword ptr [rip + label_710]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_711]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_712]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
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
	#Procedure 0x407dd8
	.globl sub_407dd8
	.type sub_407dd8, @function
sub_407dd8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407de0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_714
	cmp	byte ptr [rax], 0x43
	jne	.label_716
	cmp	byte ptr [rax + 1], 0
	je	.label_713
.label_716:
	mov	esi, OFFSET FLAT:label_715
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_714
.label_713:
	xor	ebx, ebx
.label_714:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x407e11
	.globl sub_407e11
	.type sub_407e11, @function
sub_407e11:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407e20
	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:

	mov	rax, qword ptr [rdi + 0x48]
	mov	rdx, qword ptr [rdi + 0x50]
	ret	
	.section	.text
	.align	32
	#Procedure 0x407e29
	.globl sub_407e29
	.type sub_407e29, @function
sub_407e29:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407e30

	.globl gnu_mbswidth
	.type gnu_mbswidth, @function
gnu_mbswidth:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	call	strlen
	mov	rdi, rbx
	mov	rsi, rax
	mov	edx, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	mbsnwidth
	.section	.text
	.align	32
	#Procedure 0x407e4d
	.globl sub_407e4d
	.type sub_407e4d, @function
sub_407e4d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407e50

	.globl mbsnwidth
	.type mbsnwidth, @function
mbsnwidth:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14d, edx
	mov	r15, rsi
	mov	rbx, rdi
	lea	r12, [rbx + r15]
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_726
	xor	ebp, ebp
	test	r15, r15
	jle	.label_717
	mov	eax, r14d
	and	eax, 2
	mov	dword ptr [rsp + 0xc], eax
	and	r14d, 1
	mov	eax, r14d
	xor	eax, 1
	mov	dword ptr [rsp + 0x14], eax
	lea	eax, [r14*4]
	xor	eax, 5
	mov	dword ptr [rsp + 0x10], eax
	xor	r15d, r15d
	lea	r13, [rsp]
	mov	ebp, 0x7fffffff
	nop	dword ptr [rax + rax]
.label_733:
	movsx	eax, byte ptr [rbx]
	add	eax, -0x20
	cmp	eax, 0x5e
	ja	.label_729
	jmp	qword ptr [(rax * 8) + label_731]
.label_995:
	inc	rbx
	inc	r15d
.label_734:
	cmp	rbx, r12
	jb	.label_733
	jmp	.label_723
.label_729:
	mov	qword ptr [rsp], 0
	nop	word ptr [rax + rax]
.label_732:
	mov	rdx, r12
	sub	rdx, rbx
	lea	rdi, [rsp + 8]
	mov	rsi, rbx
	mov	rcx, r13
	call	rpl_mbrtowc
	mov	r13, rax
	cmp	r13, -2
	je	.label_721
	test	r13, r13
	je	.label_722
	cmp	r13, -1
	jne	.label_724
	mov	ecx, 1
	test	r14d, r14d
	jne	.label_718
	inc	rbx
	inc	r15d
	mov	ecx, 5
	jmp	.label_718
	.section	.text
	.align	32
	#Procedure 0x407f38
	.globl sub_407f38
	.type sub_407f38, @function
sub_407f38:

	nop	dword ptr [rax + rax]
.label_721:
	add	r15d, dword ptr [rsp + 0x14]
	test	r14d, r14d
	cmove	rbx, r12
	mov	ecx, dword ptr [rsp + 0x10]
	jmp	.label_718
	.section	.text
	.align	32
	#Procedure 0x407f52
	.globl sub_407f52
	.type sub_407f52, @function
sub_407f52:

	nop	word ptr cs:[rax + rax]
.label_722:
	mov	r13d, 1
.label_724:
	mov	edi, dword ptr [rsp + 8]
	call	wcwidth
	test	eax, eax
	js	.label_735
	mov	edx, 0x7fffffff
	sub	edx, r15d
	mov	ecx, 7
	cmp	eax, edx
	jg	.label_718
	add	r15d, eax
	jmp	.label_720
.label_735:
	mov	ecx, 1
	cmp	dword ptr [rsp + 0xc], 0
	jne	.label_718
	mov	edi, dword ptr [rsp + 8]
	call	iswcntrl
	test	eax, eax
	jne	.label_720
	cmp	r15d, 0x7fffffff
	jne	.label_727
	mov	ecx, 7
	mov	r15d, 0x7fffffff
	jmp	.label_718
.label_727:
	inc	r15d
	nop	dword ptr [rax + rax]
.label_720:
	add	rbx, r13
	xor	ecx, ecx
.label_718:
	lea	r13, [rsp]
	mov	eax, ecx
	and	al, 7
	jne	.label_730
	mov	rdi, r13
	call	mbsinit
	test	eax, eax
	je	.label_732
	jmp	.label_734
.label_730:
	cmp	al, 5
	je	.label_734
	and	cl, 7
	je	.label_734
	mov	r15d, 0xffffffff
	cmp	cl, 7
	jne	.label_723
	jmp	.label_717
.label_726:
	and	r14d, 2
	xor	r15d, r15d
	jmp	.label_719
.label_728:
	inc	r15d
	nop	
.label_719:
	cmp	rbx, r12
	jae	.label_723
	movzx	ebp, byte ptr [rbx]
	inc	rbx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	test	ah, 0x40
	jne	.label_725
	mov	ebp, 0xffffffff
	test	r14d, r14d
	jne	.label_717
	test	al, 2
	jne	.label_719
.label_725:
	mov	ebp, 0x7fffffff
	cmp	r15d, 0x7fffffff
	jne	.label_728
	jmp	.label_717
.label_723:
	mov	ebp, r15d
.label_717:
	mov	eax, ebp
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
	#Procedure 0x40805e
	.globl sub_40805e
	.type sub_40805e, @function
sub_40805e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x408060

	.globl getoptnum
	.type getoptnum, @function
getoptnum:
	push	rbx
	mov	rax, rcx
	mov	rbx, rdx
	movsxd	rsi, esi
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:label_34
	xor	r9d, r9d
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [rbx], eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x408083
	.globl sub_408083
	.type sub_408083, @function
sub_408083:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408090

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	32
	#Procedure 0x40809a
	.globl sub_40809a
	.type sub_40809a, @function
sub_40809a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4080a0
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
	#Procedure 0x4080b3
	.globl sub_4080b3
	.type sub_4080b3, @function
sub_4080b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4080c0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4080ca
	.globl sub_4080ca
	.type sub_4080ca, @function
sub_4080ca:

	nop	word ptr [rax + rax]
.label_740:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_736
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4080f0
	.globl sub_4080f0
	.type sub_4080f0, @function
sub_4080f0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4080ff

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_740
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_738
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_741
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_738
	mov	esi, OFFSET FLAT:label_739
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_737
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_737:
	mov	rbx, r14
.label_738:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x408180

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
	#Procedure 0x4081b9
	.globl sub_4081b9
	.type sub_4081b9, @function
sub_4081b9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4081c0
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
	#Procedure 0x4081d1
	.globl sub_4081d1
	.type sub_4081d1, @function
sub_4081d1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4081e0
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
	#Procedure 0x4081f4
	.globl sub_4081f4
	.type sub_4081f4, @function
sub_4081f4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408200

	.globl gettime
	.type gettime, @function
gettime:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	clock_gettime
	.section	.text
	.align	32
	#Procedure 0x40820d
	.globl sub_40820d
	.type sub_40820d, @function
sub_40820d:

	nop	dword ptr [rax]
.label_743:
	cmp	edi, 0x7f
	je	.label_742
	xor	eax, eax
	jmp	.label_742
	.section	.text
	.align	32
	#Procedure 0x408219
	.globl sub_408219
	.type sub_408219, @function
sub_408219:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408228
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_743
.label_742:
	ret	
	.section	.text
	.align	32
	#Procedure 0x408230
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_744
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_746:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_746
.label_744:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_747
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_748], OFFSET FLAT:slot0
.label_747:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_745
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_745:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4082c1
	.globl sub_4082c1
	.type sub_4082c1, @function
sub_4082c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4082d0
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
	#Procedure 0x4082ed
	.globl sub_4082ed
	.type sub_4082ed, @function
sub_4082ed:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4082f0

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
	#Procedure 0x408326
	.globl sub_408326
	.type sub_408326, @function
sub_408326:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408330

	.globl char_to_clump
	.type char_to_clump, @function
char_to_clump:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edi
	mov	r15, qword ptr [rip + clump_buff]
	mov	al, byte ptr [rip + input_tab_char]
	cmp	al, bpl
	mov	ecx, 8
	cmove	ecx, dword ptr [rip + chars_per_input_tab]
	cmp	bpl, 9
	je	.label_759
	cmp	al, bpl
	je	.label_759
	movzx	r14d, bpl
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + r14*2 + 1], 0x40
	jne	.label_761
	cmp	byte ptr [rip + use_esc_sequence],  1
	jne	.label_763
	mov	byte ptr [r15], 0x5c
	xor	ebp, ebp
	lea	rdi, [rsp + 4]
	mov	esi, 1
	mov	edx, 4
	mov	ecx, OFFSET FLAT:label_752
	xor	eax, eax
	mov	r8d, r14d
	call	__sprintf_chk
	nop	dword ptr [rax]
.label_751:
	movzx	eax, byte ptr [rsp + rbp + 4]
	mov	byte ptr [r15 + rbp + 1], al
	inc	rbp
	mov	ebx, 4
	cmp	rbp, 3
	jne	.label_751
	jmp	.label_753
.label_759:
	mov	eax, dword ptr [rip + input_position]
	cdq	
	idiv	ecx
	mov	ebx, ecx
	sub	ebx, edx
	cmp	byte ptr [rip + untabify_input],  1
	jne	.label_754
	test	ebx, ebx
	je	.label_749
	dec	ecx
	sub	ecx, edx
	inc	rcx
	mov	esi, 0x20
	mov	rdi, r15
	mov	rdx, rcx
	call	memset
	mov	eax, ebx
	jmp	.label_764
.label_761:
	mov	byte ptr [r15], bpl
	mov	ebx, 1
.label_753:
	mov	ecx, dword ptr [rip + input_position]
	mov	eax, ebx
.label_762:
	add	ebx, ecx
	mov	dword ptr [rip + input_position],  ebx
	jmp	.label_757
.label_754:
	mov	byte ptr [r15], bpl
.label_758:
	mov	eax, 1
.label_764:
	mov	edx, ebx
	shr	edx, 0x1f
	mov	ecx, dword ptr [rip + input_position]
	test	ebx, ebx
	jns	.label_760
	test	ecx, ecx
	jne	.label_760
	mov	dword ptr [rip + input_position],  0
	xor	eax, eax
	jmp	.label_757
.label_763:
	cmp	byte ptr [rip + use_cntrl_prefix],  1
	jne	.label_750
	test	bpl, bpl
	js	.label_755
	mov	byte ptr [r15], 0x5e
	xor	bpl, 0x40
	mov	byte ptr [r15 + 1], bpl
	mov	ebx, 2
	jmp	.label_753
.label_749:
	xor	edx, edx
	mov	ecx, dword ptr [rip + input_position]
	xor	eax, eax
	xor	ebx, ebx
.label_760:
	mov	esi, ebx
	neg	esi
	cmp	ecx, esi
	jg	.label_762
	xor	dl, 1
	jne	.label_762
	mov	dword ptr [rip + input_position],  0
.label_757:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_750:
	mov	byte ptr [r15], bpl
	xor	eax, eax
	cmp	bpl, 8
	mov	ebx, 0xffffffff
	cmovne	ebx, eax
	jmp	.label_758
.label_755:
	mov	byte ptr [r15], 0x5c
	xor	ebp, ebp
	lea	rdi, [rsp + 4]
	mov	esi, 1
	mov	edx, 4
	mov	ecx, OFFSET FLAT:label_752
	xor	eax, eax
	mov	r8d, r14d
	call	__sprintf_chk
	nop	dword ptr [rax + rax]
.label_756:
	movzx	eax, byte ptr [rsp + rbp + 4]
	mov	byte ptr [r15 + rbp + 1], al
	inc	rbp
	mov	ebx, 4
	cmp	rbp, 3
	jne	.label_756
	jmp	.label_753
	.section	.text
	.align	32
	#Procedure 0x4084ed
	.globl sub_4084ed
	.type sub_4084ed, @function
sub_4084ed:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4084f0

	.globl parse_column_count
	.type parse_column_count, @function
parse_column_count:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_765
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	edx, OFFSET FLAT:columns
	mov	rdi, rbx
	mov	rcx, rax
	call	getoptnum
	mov	byte ptr [rip + explicit_columns],  1
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x408523
	.globl sub_408523
	.type sub_408523, @function
sub_408523:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408530

	.globl integer_overflow
	.type integer_overflow, @function
integer_overflow:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_766
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
.label_767:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x408563
	.globl sub_408563
	.type sub_408563, @function
sub_408563:

	nop	
	.section	.text
	.align	32
	#Procedure 0x408565
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_767
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x408580

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
	#Procedure 0x4085ad
	.globl sub_4085ad
	.type sub_4085ad, @function
sub_4085ad:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4085b0
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
	#Procedure 0x4085c3
	.globl sub_4085c3
	.type sub_4085c3, @function
sub_4085c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4085d0
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
	#Procedure 0x4085dd
	.globl sub_4085dd
	.type sub_4085dd, @function
sub_4085dd:

	nop	dword ptr [rax]
.label_771:
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	tzfree
	mov	dword ptr [r14], ebp
	xor	eax, eax
.label_768:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4085fd
	.globl sub_4085fd
	.type sub_4085fd, @function
sub_4085fd:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4085ff

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	call	getenv_TZ
	mov	rbx, rax
	test	rbx, rbx
	mov	cl, byte ptr [r14 + 8]
	je	.label_769
	test	cl, cl
	je	.label_770
	lea	rdi, [r14 + 9]
	mov	rsi, rbx
	call	strcmp
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	jne	.label_770
	jmp	.label_768
.label_769:
	mov	eax, 1
	test	cl, cl
	je	.label_768
.label_770:
	mov	rdi, rbx
	call	tzalloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_768
	mov	rdi, r14
	call	change_env
	test	al, al
	je	.label_771
	mov	rax, rbx
	jmp	.label_768
	.section	.text
	.align	32
	#Procedure 0x408660

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40866a
	.globl sub_40866a
	.type sub_40866a, @function
sub_40866a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408670
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
	#Procedure 0x408680

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x408689
	.globl sub_408689
	.type sub_408689, @function
sub_408689:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408690

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x40869a
	.globl sub_40869a
	.type sub_40869a, @function
sub_40869a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4086a0

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r15, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_772
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_773
	mov	rdi, r15
	call	mktime
	mov	qword ptr [rsp], rax
	cmp	rax, -1
	jne	.label_775
	lea	rdi, [rsp]
	lea	rsi, [rsp + 8]
	call	localtime_r
	test	rax, rax
	je	.label_774
	lea	rsi, [rsp + 8]
	mov	rdi, r15
	call	equal_tm
	test	eax, eax
	je	.label_774
.label_775:
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	test	al, al
	jne	.label_774
	mov	qword ptr [rsp], -1
.label_774:
	mov	rdi, r14
	call	revert_tz
	test	al, al
	je	.label_773
	mov	rax, qword ptr [rsp]
	jmp	.label_776
.label_773:
	mov	rax, -1
.label_776:
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_772:
	mov	rdi, r15
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	jmp	timegm
	.section	.text
	.align	32
	#Procedure 0x408749
	.globl sub_408749
	.type sub_408749, @function
sub_408749:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408750

	.globl getoptarg
	.type getoptarg, @function
getoptarg:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	rbp, rcx
	mov	r14d, esi
	mov	rbx, rdi
	movsx	eax, byte ptr [rbx]
	lea	ecx, [rax - 0x30]
	cmp	ecx, 0xa
	jb	.label_778
	inc	rbx
	mov	byte ptr [rdx], al
.label_778:
	cmp	byte ptr [rbx], 0
	je	.label_780
	lea	rcx, [rsp + 8]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_34
	mov	rdi, rbx
	call	xstrtol
	mov	rcx, qword ptr [rsp + 8]
	test	eax, eax
	jne	.label_779
	lea	rax, [rcx - 1]
	cmp	rax, 0x7fffffff
	jae	.label_779
	mov	dword ptr [rbp], ecx
.label_780:
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_779:
	mov	r15d, 0x4b
	cmp	rcx, 0x7fffffff
	jg	.label_781
	call	__errno_location
	mov	r15d, dword ptr [rax]
.label_781:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_777
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	movsx	ebp, r14b
	mov	rdi, rbx
	call	quote
	mov	rbx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, r12
	mov	ecx, ebp
	mov	r8, rbx
	call	error
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x408811
	.globl sub_408811
	.type sub_408811, @function
sub_408811:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408820
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
	#Procedure 0x408853
	.globl sub_408853
	.type sub_408853, @function
sub_408853:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408860
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x40886a
	.globl sub_40886a
	.type sub_40886a, @function
sub_40886a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408870

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
	je	.label_792
	mov	edx, OFFSET FLAT:label_788
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_794
.label_792:
	mov	edx, OFFSET FLAT:label_795
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_794:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_800
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
	mov	esi, OFFSET FLAT:label_796
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_784
	jmp	qword ptr [(r12 * 8) + label_785]
.label_1122:
	add	rsp, 8
	jmp	.label_782
.label_784:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_791
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
	jmp	.label_782
.label_1123:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_797
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
.label_1124:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_798
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
.label_1125:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_789
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
.label_1126:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_786
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
	jmp	.label_782
.label_1127:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_783
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
	jmp	.label_782
.label_1128:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_787
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
	jmp	.label_782
.label_1129:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_790
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
	jmp	.label_782
.label_1131:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_793
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
	jmp	.label_782
.label_1130:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_799
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
.label_782:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x408bc8
	.globl sub_408bc8
	.type sub_408bc8, @function
sub_408bc8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408bd0

	.globl bkm_scale_1
	.type bkm_scale_1, @function
bkm_scale_1:
	movabs	r8, 0x7fffffffffffffff
	mov	rcx, qword ptr [rdi]
	movsxd	r9, esi
	lea	rsi, [r8 + 1]
	mov	rax, rsi
	cqo	
	idiv	r9
	cmp	rcx, rax
	jge	.label_801
	mov	qword ptr [rdi], rsi
	mov	eax, 1
	ret	
.label_802:
	imul	rcx, r9
	mov	qword ptr [rdi], rcx
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x408c04
	.globl sub_408c04
	.type sub_408c04, @function
sub_408c04:

	nop	word ptr [rax + rax]
.label_801:
	mov	rax, r8
	cqo	
	idiv	r9
	cmp	rax, rcx
	jge	.label_802
	mov	qword ptr [rdi], r8
	mov	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x408c20

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
	jae	.label_814
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
	je	.label_815
	mov	eax, dword ptr [rbp]
	xor	r12d, r12d
	test	eax, eax
	je	.label_817
	mov	r12d, 4
	cmp	eax, 0x22
	jne	.label_804
	mov	r12d, 1
.label_817:
	test	r13, r13
	jne	.label_808
	jmp	.label_810
.label_815:
	mov	r12d, 4
	test	r13, r13
	je	.label_804
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_804
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_804
	mov	qword ptr [rsp + 8], 1
	xor	r12d, r12d
.label_808:
	mov	rax, qword ptr [r15]
	movsx	ebp, byte ptr [rax]
	test	ebp, ebp
	je	.label_810
	mov	rdi, r13
	mov	esi, ebp
	call	strchr
	test	rax, rax
	je	.label_816
	mov	esi, 0x400
	mov	ebx, 1
	add	ebp, -0x45
	cmp	ebp, 0x2f
	ja	.label_807
	movabs	rax, 0x814400308945
	bt	rax, rbp
	jae	.label_807
	mov	esi, 0x30
	mov	rdi, r13
	call	strchr
	mov	ebx, 1
	test	rax, rax
	je	.label_811
	mov	rax, qword ptr [r15]
	movsx	ecx, byte ptr [rax + 1]
	mov	ebx, 1
	cmp	ecx, 0x42
	mov	esi, 0x400
	je	.label_812
	cmp	ecx, 0x44
	je	.label_812
	cmp	ecx, 0x69
	jne	.label_807
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	rbx, [rcx + rcx + 1]
	jmp	.label_807
.label_811:
	mov	esi, 0x400
	jmp	.label_807
.label_812:
	mov	esi, 0x3e8
	mov	ebx, 2
.label_807:
	mov	rax, qword ptr [r15]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_816
	xor	eax, eax
	jmp	qword ptr [(rcx * 8) + label_803]
.label_1050:
	lea	rdi, [rsp + 8]
	mov	edx, 3
	call	bkm_scale_by_power_0
	jmp	.label_809
.label_816:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
	or	r12d, 2
	jmp	.label_804
.label_1051:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	call	bkm_scale_by_power_0
	jmp	.label_809
.label_1052:
	lea	rdi, [rsp + 8]
	mov	edx, 2
	call	bkm_scale_by_power_0
	jmp	.label_809
.label_1054:
	lea	rdi, [rsp + 8]
	mov	edx, 4
	call	bkm_scale_by_power_0
	jmp	.label_809
.label_1048:
	lea	rdi, [rsp + 8]
	mov	esi, 0x400
	jmp	.label_813
.label_1049:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	call	bkm_scale_by_power_0
	jmp	.label_809
.label_1053:
	lea	rdi, [rsp + 8]
	mov	edx, 5
	call	bkm_scale_by_power_0
	jmp	.label_809
.label_1055:
	lea	rdi, [rsp + 8]
	mov	edx, 8
	call	bkm_scale_by_power_0
	jmp	.label_809
.label_1056:
	lea	rdi, [rsp + 8]
	mov	edx, 7
	call	bkm_scale_by_power_0
	jmp	.label_809
.label_1057:
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_813
.label_1058:
	lea	rdi, [rsp + 8]
	mov	esi, 2
.label_813:
	call	bkm_scale_0
.label_809:
	or	eax, r12d
	mov	rcx, qword ptr [r15]
	lea	rdx, [rcx + rbx]
	mov	qword ptr [r15], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + rbx], 0
	cmove	r12d, eax
.label_810:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
.label_804:
	mov	eax, r12d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_814:
	mov	edi, OFFSET FLAT:label_651
	mov	esi, OFFSET FLAT:label_805
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_806
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x408e9e
	.globl sub_408e9e
	.type sub_408e9e, @function
sub_408e9e:

	nop	
.label_820:
	call	__errno_location
	cmp	rbx, -0x40000001
	jg	.label_818
	mov	dword ptr [rax], 0x4b
	jmp	.label_819
.label_818:
	mov	dword ptr [rax], 0x22
	jmp	.label_819
	.section	.text
	.align	32
	#Procedure 0x408ebe
	.globl sub_408ebe
	.type sub_408ebe, @function
sub_408ebe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x408ebf

	.globl xnumtoimax
	.type xnumtoimax, @function
xnumtoimax:
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
	call	xstrtoimax
	cmp	eax, 3
	je	.label_822
	cmp	eax, 1
	je	.label_824
	test	eax, eax
	jne	.label_819
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r12
	jl	.label_821
	cmp	rbx, r15
	jle	.label_823
.label_821:
	cmp	rbx, 0x40000000
	jl	.label_820
.label_824:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_819
.label_822:
	call	__errno_location
	mov	dword ptr [rax], 0
.label_819:
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
	mov	edx, OFFSET FLAT:label_25
	xor	eax, eax
	mov	edi, ebp
	mov	esi, ebx
	mov	rcx, r14
	call	error
.label_823:
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
	#Procedure 0x408f70

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
	je	.label_826
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_825
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_825
.label_826:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_825
	test	cl, cl
	jne	.label_825
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_825:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408fd6
	.globl sub_408fd6
	.type sub_408fd6, @function
sub_408fd6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408fe0

	.globl isdst_differ
	.type isdst_differ, @function
isdst_differ:
	test	edi, edi
	sete	al
	test	esi, esi
	sete	cl
	xor	cl, al
	or	esi, edi
	setns	al
	and	al, cl
	ret	
	.section	.text
	.align	32
	#Procedure 0x408ff4
	.globl sub_408ff4
	.type sub_408ff4, @function
sub_408ff4:

	nop	word ptr cs:[rax + rax]
.label_829:
	cmp	eax, ebx
	jge	.label_827
	mov	ebp, ebx
	sub	ebp, eax
	nop	word ptr [rax + rax]
.label_828:
	mov	edi, 0x20
	call	putchar_unlocked
	dec	ebp
	jne	.label_828
.label_827:
	mov	dword ptr [rip + output_position],  ebx
.label_830:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40902c
	.globl sub_40902c
	.type sub_40902c, @function
sub_40902c:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409031

	.globl pad_across_to
	.type pad_across_to, @function
pad_across_to:
	push	rbp
	push	rbx
	push	rax
	mov	ebx, edi
	mov	eax, dword ptr [rip + output_position]
	mov	cl, byte ptr [rip + tabify_output]
	test	cl, cl
	je	.label_829
	sub	ebx, eax
	mov	dword ptr [rip + spaces_not_printed],  ebx
	jmp	.label_830
.label_834:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_832
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
	#Procedure 0x409088
	.globl sub_409088
	.type sub_409088, @function
sub_409088:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409093

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_834
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_837
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_831
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_839
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_838
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_847
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_835
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_849
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_848
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_840
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_841
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_842
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_843
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_833
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_844
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_836
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_845
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_846
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
	.section	.text
	.align	32
	#Procedure 0x4092e0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_850
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_26
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x409310

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r12, rdi
	mov	rbx, qword ptr [r15 + 0x30]
	mov	al, 1
	test	rbx, rbx
	je	.label_853
	cmp	r15, rbx
	ja	.label_859
	lea	rcx, [r15 + 0x38]
	cmp	rbx, rcx
	jb	.label_853
.label_859:
	mov	r14d, OFFSET FLAT:label_34
	cmp	byte ptr [rbx], 0
	je	.label_851
	lea	r14, [r12 + 9]
	jmp	.label_855
.label_858:
	mov	rax, qword ptr [r12]
	lea	r14, [rax + 9]
	test	rax, rax
	cmove	r14, rcx
	cmovne	r12, rax
.label_855:
	lea	r13, [r12 + 9]
.label_857:
	mov	rdi, r14
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	je	.label_861
	cmp	byte ptr [r14], 0
	jne	.label_862
	mov	rbp, r14
	sub	rbp, r13
	jne	.label_852
	cmp	byte ptr [r12 + 8], 0
	je	.label_852
.label_862:
	mov	rdi, r14
	call	strlen
	lea	rcx, [r14 + rax + 1]
	cmp	byte ptr [r14 + rax + 1], 0
	mov	r14, rcx
	jne	.label_857
	jmp	.label_858
.label_852:
	mov	rdi, rbx
	call	strlen
	inc	rax
	mov	rcx, rbp
	not	rcx
	cmp	rax, rcx
	jbe	.label_860
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	jmp	.label_853
.label_860:
	add	rbp, rax
	cmp	rbp, 0x76
	ja	.label_856
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rax
	call	extend_abbrs
.label_861:
	mov	al, 1
.label_851:
	mov	qword ptr [r15 + 0x30], r14
.label_853:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_856:
	mov	rdi, rbx
	call	tzalloc
	mov	r14, rax
	mov	qword ptr [r12], r14
	test	r14, r14
	mov	al, 1
	je	.label_854
	mov	byte ptr [r14 + 8], 0
	add	r14, 9
	jmp	.label_851
.label_854:
	xor	eax, eax
	jmp	.label_853
	.section	.text
	.align	32
	#Procedure 0x409425
	.globl sub_409425
	.type sub_409425, @function
sub_409425:

	nop	word ptr cs:[rax + rax]
.label_865:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_863
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_863:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409464
	.globl sub_409464
	.type sub_409464, @function
sub_409464:

	nop	
	.section	.text
	.align	32
	#Procedure 0x409466

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
	jne	.label_864
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_864
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_865
.label_864:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	32
	#Procedure 0x4094a0

	.globl align_column
	.type align_column, @function
align_column:
	push	rbx
	mov	rbx, rdi
	mov	edi, dword ptr [rbx + 0x34]
	mov	dword ptr [rip + padding_not_printed],  edi
	sub	edi, dword ptr [rip + col_sep_length]
	jle	.label_866
	call	pad_across_to
	mov	dword ptr [rip + padding_not_printed],  0
.label_866:
	cmp	byte ptr [rip + use_col_separator],  1
	jne	.label_868
	call	print_sep_string
.label_868:
	cmp	byte ptr [rbx + 0x38], 0
	je	.label_867
	mov	rdi, rbx
	pop	rbx
	jmp	add_line_number
.label_867:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4094e0

	.globl add_line_number
	.type add_line_number, @function
add_line_number:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rdi, qword ptr [rip + number_buff]
	mov	r8d, dword ptr [rip + chars_per_number]
	mov	r9d, dword ptr [rip + line_number]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_869
	xor	eax, eax
	call	__sprintf_chk
	inc	dword ptr [rip + line_number]
	mov	ebp, dword ptr [rip + chars_per_number]
	test	ebp, ebp
	jle	.label_875
	sub	eax, ebp
	movsxd	rbx, eax
	add	rbx, qword ptr [rip + number_buff]
	inc	ebp
	nop	word ptr cs:[rax + rax]
.label_872:
	movsx	edi, byte ptr [rbx]
	inc	rbx
	call	qword ptr [r14 + 0x20]
	dec	ebp
	cmp	ebp, 1
	jg	.label_872
.label_875:
	cmp	dword ptr [rip + columns],  2
	jl	.label_874
	mov	al, byte ptr [rip + number_separator]
	cmp	al, 9
	jne	.label_876
	mov	ebx, dword ptr [rip + number_width]
	mov	eax, dword ptr [rip + chars_per_number]
	cmp	ebx, eax
	jle	.label_870
	inc	ebx
	sub	ebx, eax
	nop	dword ptr [rax + rax]
.label_873:
	mov	edi, 0x20
	call	qword ptr [r14 + 0x20]
	dec	ebx
	cmp	ebx, 1
	jg	.label_873
	jmp	.label_870
.label_874:
	movsx	edi, byte ptr [rip + number_separator]
	call	qword ptr [r14 + 0x20]
	cmp	byte ptr [rip + number_separator],  9
	jne	.label_870
	mov	ecx, dword ptr [rip + output_position]
	mov	esi, dword ptr [rip + chars_per_output_tab]
	mov	eax, ecx
	cdq	
	idiv	esi
	add	esi, ecx
	sub	esi, edx
	mov	dword ptr [rip + output_position],  esi
	jmp	.label_870
.label_876:
	movsx	edi, al
	call	qword ptr [r14 + 0x20]
.label_870:
	cmp	byte ptr [rip + truncate_lines],  1
	jne	.label_871
	mov	al, byte ptr [rip + parallel_files]
	test	al, al
	jne	.label_871
	mov	eax, dword ptr [rip + number_width]
	add	dword ptr [rip + input_position],  eax
.label_871:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4095ee
	.globl sub_4095ee
	.type sub_4095ee, @function
sub_4095ee:

	nop	
.label_877:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4095f3
	.globl sub_4095f3
	.type sub_4095f3, @function
sub_4095f3:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4095fb
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_877
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x409610

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
	mov	rcx, qword ptr [rip + label_710]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_711]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_712]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
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
	#Procedure 0x40967d
	.globl sub_40967d
	.type sub_40967d, @function
sub_40967d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409680

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x40968d
	.globl sub_40968d
	.type sub_40968d, @function
sub_40968d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409690

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	32
	#Procedure 0x409697
	.globl sub_409697
	.type sub_409697, @function
sub_409697:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4096a0

	.globl init_store_cols
	.type init_store_cols, @function
init_store_cols:
	push	rbp
	push	r14
	push	rbx
	mov	ecx, dword ptr [rip + columns]
	test	ecx, ecx
	js	.label_884
	je	.label_880
	mov	esi, dword ptr [rip + lines_per_body]
	test	esi, esi
	js	.label_887
	mov	eax, 0x7fffffff
	xor	edx, edx
	div	ecx
	jmp	.label_890
.label_884:
	mov	esi, dword ptr [rip + lines_per_body]
	test	esi, esi
	js	.label_883
	cmp	ecx, -1
	je	.label_880
	mov	eax, 0x80000000
	cdq	
	idiv	ecx
.label_890:
	cmp	eax, esi
	jge	.label_880
	jmp	.label_881
.label_887:
	mov	eax, 0x80000000
	cdq	
	jmp	.label_885
.label_883:
	mov	eax, 0x7fffffff
	xor	edx, edx
.label_885:
	idiv	ecx
	cmp	esi, eax
	jl	.label_881
.label_880:
	mov	ebx, dword ptr [rip + columns]
	imul	ebx, dword ptr [rip + lines_per_body]
	cmp	ebx, 0x7fffffff
	je	.label_881
	mov	ebp, dword ptr [rip + chars_per_column]
	cmp	ebp, 0x7fffffff
	je	.label_881
	inc	ebp
	js	.label_886
	test	ebp, ebp
	je	.label_879
	test	ebx, ebx
	js	.label_888
	mov	eax, 0x7fffffff
	xor	edx, edx
	div	ebp
	jmp	.label_889
.label_886:
	test	ebx, ebx
	js	.label_878
	cmp	ebp, -1
	je	.label_879
	mov	eax, 0x80000000
	cdq	
	idiv	ebp
.label_889:
	cmp	eax, ebx
	jge	.label_879
	jmp	.label_881
.label_888:
	mov	eax, 0x80000000
	cdq	
	jmp	.label_882
.label_878:
	mov	eax, 0x7fffffff
	xor	edx, edx
.label_882:
	idiv	ebp
	cmp	ebx, eax
	jl	.label_881
.label_879:
	lea	r14d, [rbx + 1]
	imul	ebp, ebx
	mov	rdi, qword ptr [rip + line_vector]
	call	free
	movsxd	rdi, r14d
	mov	esi, 4
	call	xnmalloc
	mov	qword ptr [rip + line_vector],  rax
	mov	rdi, qword ptr [rip + end_vector]
	call	free
	movsxd	rdi, ebx
	mov	esi, 4
	call	xnmalloc
	mov	qword ptr [rip + end_vector],  rax
	mov	rdi, qword ptr [rip + buff]
	call	free
	movsxd	rbx, ebp
	movzx	esi, byte ptr [rip + use_col_separator]
	inc	rsi
	mov	rdi, rbx
	call	xnmalloc
	mov	qword ptr [rip + buff],  rax
	movzx	eax, byte ptr [rip + use_col_separator]
	inc	rax
	imul	rax, rbx
	mov	qword ptr [rip + buff_allocated],  rax
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_881:
	call	integer_overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409810

	.globl getenv_TZ
	.type getenv_TZ, @function
getenv_TZ:
	mov	edi, OFFSET FLAT:label_545
	jmp	getenv
	.section	.text
	.align	32
	#Procedure 0x40981a
	.globl sub_40981a
	.type sub_40981a, @function
sub_40981a:

	nop	word ptr [rax + rax]
.label_891:
	call	integer_overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409830

	.globl separator_string
	.type separator_string, @function
separator_string:
	push	rbx
	mov	rbx, rdi
	call	strlen
	test	rax, -0x80000000
	jne	.label_891
	mov	dword ptr [rip + col_sep_length],  eax
	mov	qword ptr [rip + col_sep_string],  rbx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x409850

	.globl xstrtol_fatal
	.type xstrtol_fatal, @function
xstrtol_fatal:
	push	rax
	mov	r9d, dword ptr [rip + exit_failure]
	call	xstrtol_error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x409862
	.globl sub_409862
	.type sub_409862, @function
sub_409862:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409870
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
	#Procedure 0x40987d
	.globl sub_40987d
	.type sub_40987d, @function
sub_40987d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409880
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40988a
	.globl sub_40988a
	.type sub_40988a, @function
sub_40988a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409890

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
	je	.label_892
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_893:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale_0
	or	ebp, eax
	dec	ebx
	jne	.label_893
.label_892:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4098ce
	.globl sub_4098ce
	.type sub_4098ce, @function
sub_4098ce:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4098d0

	.globl first_last_page
	.type first_last_page, @function
first_last_page:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rdx
	mov	r15d, esi
	mov	r14d, edi
	mov	qword ptr [rsp + 8], -1
	lea	rsi, [rsp]
	lea	rcx, [rsp + 0x10]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_34
	mov	rdi, rbx
	call	xstrtoumax
	mov	ecx, eax
	or	ecx, 2
	cmp	ecx, 2
	jne	.label_896
	mov	rbp, qword ptr [rsp]
	xor	eax, eax
	cmp	rbp, rbx
	je	.label_894
	mov	rcx, qword ptr [rsp + 0x10]
	test	rcx, rcx
	je	.label_894
	cmp	byte ptr [rbp], 0x3a
	jne	.label_897
	inc	rbp
	lea	rsi, [rsp]
	lea	rcx, [rsp + 8]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_34
	mov	rdi, rbp
	call	xstrtoumax
	test	eax, eax
	jne	.label_896
	cmp	rbp, qword ptr [rsp]
	je	.label_898
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, qword ptr [rsp + 0x10]
	jb	.label_898
.label_897:
	mov	rax, qword ptr [rsp]
	cmp	byte ptr [rax], 0
	je	.label_895
.label_898:
	xor	eax, eax
	jmp	.label_894
.label_895:
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rip + first_page_number],  rax
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rip + last_page_number],  rax
	mov	al, 1
.label_894:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_896:
	movsx	edx, r15b
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, eax
	mov	esi, r14d
	mov	r8, rbx
	call	xstrtol_fatal
	.section	.text
	.align	32
	#Procedure 0x4099ae
	.globl sub_4099ae
	.type sub_4099ae, @function
sub_4099ae:

	nop	
.label_903:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4099b5
	.globl sub_4099b5
	.type sub_4099b5, @function
sub_4099b5:

	nop	word ptr cs:[rax + rax]
.label_901:
	lea	rbx, [rsp + 6]
	mov	ebp, OFFSET FLAT:label_899
	sub	rbp, rax
	mov	byte ptr [rsp + 6], dl
	mov	byte ptr [rsp + 7], 0
.label_902:
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, r15d
	mov	rdx, rcx
	mov	rcx, rbp
	mov	r8, rbx
	mov	r9, r14
	call	error
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409a0a

	.globl xstrtol_error
	.type xstrtol_error, @function
xstrtol_error:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15d, r9d
	mov	r14, r8
	mov	eax, esi
	dec	edi
	cmp	edi, 4
	jae	.label_903
	movsxd	rsi, edi
	mov	rsi, qword ptr [(rsi * 8) + label_900]
	cdqe	
	test	eax, eax
	js	.label_901
	shl	rax, 5
	mov	rbx, qword ptr [rcx + rax]
	mov	ebp, OFFSET FLAT:label_899
	jmp	.label_902
	.section	.text
	.align	32
	#Procedure 0x409a40

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_904
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_904:
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
	ja	.label_906
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_905
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_907
	test	esi, esi
	jne	.label_906
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_911
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_914
.label_906:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_912
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_907
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_909
.label_905:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_907:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_915
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_917
.label_915:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_917:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_909:
	cmp	eax, 6
	jne	.label_912
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_913
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_916
.label_912:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_910
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_908
.label_911:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_914:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_913:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_916:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_910:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_908:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	32
	#Procedure 0x409bf4
	.globl sub_409bf4
	.type sub_409bf4, @function
sub_409bf4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409c00

	.globl skip_read
	.type skip_read, @function
skip_read:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, esi
	mov	r15, rdi
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	call	getc_unlocked
	mov	ebp, eax
	cmp	ebp, 0xc
	jne	.label_922
	mov	ebp, 0xc
	cmp	byte ptr [r15 + 0x39], 0
	je	.label_922
	mov	rdi, rbx
	call	getc_unlocked
	mov	ebp, eax
	cmp	ebp, 0xa
	jne	.label_922
	mov	rdi, rbx
	call	getc_unlocked
	mov	ebp, eax
.label_922:
	mov	al, byte ptr [rip + last_line]
	mov	byte ptr [r15 + 0x39], al
	mov	eax, ebp
	jmp	.label_920
	.section	.text
	.align	32
	#Procedure 0x409c52
	.globl sub_409c52
	.type sub_409c52, @function
sub_409c52:

	nop	word ptr cs:[rax + rax]
.label_926:
	mov	rdi, r15
	call	close_file
	jmp	.label_925
.label_927:
	mov	rdi, rbx
	call	getc_unlocked
.label_920:
	cmp	eax, -1
	je	.label_926
	cmp	eax, 0xa
	je	.label_925
	cmp	eax, 0xc
	jne	.label_927
	cmp	byte ptr [rip + last_line],  1
	jne	.label_918
	mov	al, byte ptr [rip + parallel_files]
	test	al, al
	je	.label_921
	mov	byte ptr [r15 + 0x39], 0
	jmp	.label_918
.label_921:
	mov	eax, dword ptr [rip + columns]
	test	eax, eax
	je	.label_918
	mov	rcx, qword ptr [rip + column_vector]
	add	rcx, 0x39
.label_924:
	mov	byte ptr [rcx], 0
	add	rcx, 0x40
	dec	eax
	jne	.label_924
.label_918:
	mov	rdi, rbx
	call	getc_unlocked
	cmp	eax, 0xa
	je	.label_919
	mov	edi, eax
	mov	rsi, rbx
	call	ungetc
.label_919:
	mov	rdi, r15
	call	hold_file
.label_925:
	mov	al, byte ptr [rip + skip_count]
	test	al, al
	jne	.label_923
	cmp	r14d, 1
	setne	al
	cmp	ebp, 0xc
	je	.label_923
	and	al, byte ptr [rip + parallel_files]
	jne	.label_923
	inc	dword ptr [rip + line_count]
.label_923:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409d09
	.globl sub_409d09
	.type sub_409d09, @function
sub_409d09:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409d10
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x409d1a
	.globl sub_409d1a
	.type sub_409d1a, @function
sub_409d1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409d20

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_928
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_928
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_928:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x409d46
	.globl sub_409d46
	.type sub_409d46, @function
sub_409d46:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409d50

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
	#Procedure 0x409d87
	.globl sub_409d87
	.type sub_409d87, @function
sub_409d87:

	nop	word ptr [rax + rax]
.label_929:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x409d93
	.globl sub_409d93
	.type sub_409d93, @function
sub_409d93:

	nop	
	.section	.text
	.align	32
	#Procedure 0x409d95
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_929
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x409db0

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
	jne	.label_931
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
	je	.label_930
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_935
	mov	eax, OFFSET FLAT:label_936
	jmp	.label_934
.label_937:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_165
	mov	eax, OFFSET FLAT:label_148
.label_934:
	cmove	rax, rcx
.label_931:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409e2f
	.globl sub_409e2f
	.type sub_409e2f, @function
sub_409e2f:

	nop	dword ptr [rax]
.label_930:
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
	je	.label_937
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_932
	mov	eax, OFFSET FLAT:label_933
	jmp	.label_934
	.section	.text
	.align	32
	#Procedure 0x409e70

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x409e73
	.globl sub_409e73
	.type sub_409e73, @function
sub_409e73:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409e80

	.globl xstrtoimax
	.type xstrtoimax, @function
xstrtoimax:
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
	jae	.label_938
	test	rsi, rsi
	lea	r15, [rsp + 0x10]
	cmovne	r15, rsi
	call	__errno_location
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	mov	rdi, r12
	mov	rsi, r15
	mov	edx, ebx
	call	strtoimax
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [r15]
	cmp	rax, r12
	je	.label_946
	mov	eax, dword ptr [rbp]
	xor	r12d, r12d
	test	eax, eax
	je	.label_948
	mov	r12d, 4
	cmp	eax, 0x22
	jne	.label_939
	mov	r12d, 1
.label_948:
	test	r13, r13
	jne	.label_951
	jmp	.label_945
.label_946:
	mov	r12d, 4
	test	r13, r13
	je	.label_939
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_939
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_939
	mov	qword ptr [rsp + 8], 1
	xor	r12d, r12d
.label_951:
	mov	rax, qword ptr [r15]
	movsx	ebp, byte ptr [rax]
	test	ebp, ebp
	je	.label_945
	mov	rdi, r13
	mov	esi, ebp
	call	strchr
	test	rax, rax
	je	.label_947
	mov	esi, 0x400
	mov	ebx, 1
	add	ebp, -0x45
	cmp	ebp, 0x2f
	ja	.label_944
	movabs	rax, 0x814400308945
	bt	rax, rbp
	jae	.label_944
	mov	esi, 0x30
	mov	rdi, r13
	call	strchr
	mov	ebx, 1
	test	rax, rax
	je	.label_940
	mov	rax, qword ptr [r15]
	movsx	ecx, byte ptr [rax + 1]
	mov	ebx, 1
	cmp	ecx, 0x42
	mov	esi, 0x400
	je	.label_941
	cmp	ecx, 0x44
	je	.label_941
	cmp	ecx, 0x69
	jne	.label_944
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	rbx, [rcx + rcx + 1]
	jmp	.label_944
.label_940:
	mov	esi, 0x400
	jmp	.label_944
.label_941:
	mov	esi, 0x3e8
	mov	ebx, 2
.label_944:
	mov	rax, qword ptr [r15]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_947
	xor	eax, eax
	jmp	qword ptr [(rcx * 8) + label_949]
.label_1152:
	lea	rdi, [rsp + 8]
	mov	edx, 3
	call	bkm_scale_by_power_1
	jmp	.label_942
.label_947:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
	or	r12d, 2
	jmp	.label_939
.label_1153:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	call	bkm_scale_by_power_1
	jmp	.label_942
.label_1154:
	lea	rdi, [rsp + 8]
	mov	edx, 2
	call	bkm_scale_by_power_1
	jmp	.label_942
.label_1156:
	lea	rdi, [rsp + 8]
	mov	edx, 4
	call	bkm_scale_by_power_1
	jmp	.label_942
.label_1150:
	lea	rdi, [rsp + 8]
	mov	esi, 0x400
	jmp	.label_943
.label_1151:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	call	bkm_scale_by_power_1
	jmp	.label_942
.label_1155:
	lea	rdi, [rsp + 8]
	mov	edx, 5
	call	bkm_scale_by_power_1
	jmp	.label_942
.label_1157:
	lea	rdi, [rsp + 8]
	mov	edx, 8
	call	bkm_scale_by_power_1
	jmp	.label_942
.label_1158:
	lea	rdi, [rsp + 8]
	mov	edx, 7
	call	bkm_scale_by_power_1
	jmp	.label_942
.label_1159:
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_943
.label_1160:
	lea	rdi, [rsp + 8]
	mov	esi, 2
.label_943:
	call	bkm_scale_1
.label_942:
	or	eax, r12d
	mov	rcx, qword ptr [r15]
	lea	rdx, [rcx + rbx]
	mov	qword ptr [r15], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + rbx], 0
	cmove	r12d, eax
.label_945:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
.label_939:
	mov	eax, r12d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_938:
	mov	edi, OFFSET FLAT:label_651
	mov	esi, OFFSET FLAT:label_652
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_950
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x40a0fe
	.globl sub_40a0fe
	.type sub_40a0fe, @function
sub_40a0fe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40a100

	.globl setenv_TZ
	.type setenv_TZ, @function
setenv_TZ:
	mov	rax, rdi
	mov	edi, OFFSET FLAT:label_545
	test	rax, rax
	je	.label_952
	mov	edx, 1
	mov	rsi, rax
	jmp	setenv
.label_952:
	jmp	unsetenv
	.section	.text
	.align	32
	#Procedure 0x40a11f
	.globl sub_40a11f
	.type sub_40a11f, @function
sub_40a11f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40a120

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
	#Procedure 0x40a169
	.globl sub_40a169
	.type sub_40a169, @function
sub_40a169:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a170

	.globl bkm_scale_by_power_1
	.type bkm_scale_by_power_1, @function
bkm_scale_by_power_1:
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
	je	.label_953
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_954:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale_1
	or	ebp, eax
	dec	ebx
	jne	.label_954
.label_953:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a1ae
	.globl sub_40a1ae
	.type sub_40a1ae, @function
sub_40a1ae:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40a1b0

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_955
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x40a1d2
	.globl sub_40a1d2
	.type sub_40a1d2, @function
sub_40a1d2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a245
	.globl sub_40a245
	.type sub_40a245, @function
sub_40a245:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a252
	.globl sub_40a252
	.type sub_40a252, @function
sub_40a252:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a276
	.globl sub_40a276
	.type sub_40a276, @function
sub_40a276:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a289
	.globl sub_40a289
	.type sub_40a289, @function
sub_40a289:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a290

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
