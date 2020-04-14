	.section	.text
	.align	32
	#Procedure 0x401a60

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_9
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18_0
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_8
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.31
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.6
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.6
	mov	ecx, OFFSET FLAT:.str.34
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_9:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c60

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
	mov	r15, rsi
	mov	r14d, edi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.9
	mov	esi, OFFSET FLAT:.str.10
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.9
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	qword ptr [rip + separator], OFFSET FLAT:.str.11
	mov	qword ptr [rip + sentinel_length],  1
	mov	byte ptr [rip + separator_ends_record],  1
	jmp	.label_12
.label_52:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + separator],  rax
	nop	dword ptr [rax + rax]
.label_12:
	mov	edx, OFFSET FLAT:.str.12
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r14d
	mov	rsi, r15
	call	getopt_long
	cmp	eax, 0x61
	jle	.label_54
	cmp	eax, 0x73
	je	.label_52
	cmp	eax, 0x72
	je	.label_10
	cmp	eax, 0x62
	jne	.label_11
	mov	byte ptr [rip + separator_ends_record],  0
	jmp	.label_12
.label_10:
	mov	qword ptr [rip + sentinel_length],  0
	jmp	.label_12
.label_54:
	cmp	eax, -1
	jne	.label_50
	mov	rbp, qword ptr [rip + separator]
	mov	cl, byte ptr [rbp]
	cmp	qword ptr [rip + sentinel_length],  0
	je	.label_19
	mov	eax, 1
	test	cl, cl
	je	.label_36
	mov	rdi, rbp
	call	strlen
.label_36:
	mov	qword ptr [rip + sentinel_length],  rax
	mov	qword ptr [rip + match_length],  rax
	jmp	.label_25
.label_19:
	test	cl, cl
	je	.label_28
	xorps	xmm0, xmm0
	movups	xmmword ptr [rip + compiled_separator],  xmm0
	mov	eax, OFFSET FLAT:compiled_separator_fastmap
	movq	xmm0, rax
	movups	xmmword ptr [rip + label_31],  xmm0
	mov	rdi, rbp
	call	strlen
	mov	edx, OFFSET FLAT:compiled_separator
	mov	rdi, rbp
	mov	rsi, rax
	call	rpl_re_compile_pattern
	mov	rcx, rax
	test	rcx, rcx
	jne	.label_40
	mov	rax, qword ptr [rip + sentinel_length]
.label_25:
	mov	qword ptr [rip + read_size],  0x2000
	mov	edx, 0x2000
	cmp	rax, 0x1000
	jae	.label_42
	mov	ecx, 0x2000
	jmp	.label_47
.label_42:
	movabs	rsi, 0x7ffffffffffffffe
	nop	dword ptr [rax + rax]
.label_51:
	test	rdx, rdx
	js	.label_16
	lea	rcx, [rdx + rdx]
	mov	qword ptr [rip + read_size],  rcx
	and	rdx, rsi
	cmp	rax, rdx
	mov	rdx, rcx
	jae	.label_51
.label_47:
	mov	rdx, rcx
	or	rdx, 1
	add	rdx, rax
	lea	rdi, [rdx + rdx]
	mov	qword ptr [rip + G_buffer_size],  rdi
	cmp	rdx, rdi
	jae	.label_16
	cmp	rcx, rdx
	jae	.label_16
	call	xmalloc
	mov	rbp, rax
	mov	qword ptr [rip + G_buffer],  rbp
	mov	rbx, qword ptr [rip + sentinel_length]
	test	rbx, rbx
	je	.label_18
	mov	rsi, qword ptr [rip + separator]
	lea	rdx, [rbx + 1]
	mov	rdi, rbp
	call	memcpy
	add	rbp, rbx
	jmp	.label_53
.label_18:
	inc	rbp
.label_53:
	mov	qword ptr [rip + G_buffer],  rbp
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, r14d
	lea	rax, [r15 + rax*8]
	mov	ecx, OFFSET FLAT:main.default_file_list
	cmovl	rcx, rax
	mov	qword ptr [rsp + 0x18], rcx
	mov	r14, qword ptr [rcx]
	mov	r13b, 1
	xor	r15d, r15d
	test	r14, r14
	jne	.label_27
	mov	bl, 1
	jmp	.label_35
.label_29:
	test	rbp, rbp
	js	.label_37
	mov	rdi, r13
	call	fileno
	mov	edi, eax
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, rbp
	call	tac_seekable
	mov	r13b, al
	mov	ebp, dword ptr [rsp + 0x20]
	jmp	.label_13
.label_27:
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2d
	jne	.label_33
	cmp	byte ptr [r14 + 1], 0
	je	.label_46
.label_33:
	xor	ebp, ebp
	xor	esi, esi
	xor	eax, eax
	mov	rdi, r14
	call	open
	mov	r12d, eax
	test	r12d, r12d
	jns	.label_49
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, rbp
	call	error
	jmp	.label_17
.label_46:
	mov	byte ptr [rip + have_read_stdin],  1
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	bpl, 1
.label_49:
	xor	esi, esi
	mov	edx, 2
	mov	edi, r12d
	call	lseek
	mov	rbx, rax
	test	rbx, rbx
	js	.label_26
	mov	edi, r12d
	call	isatty
	test	eax, eax
	je	.label_30
.label_26:
	mov	dword ptr [rsp + 0x20], ebp
	cmp	qword ptr [rip + temp_stream.tempfile],  0
	je	.label_32
	mov	byte ptr [rsp + 0x27], r13b
	mov	rdi, qword ptr [rip + temp_stream.tmp_fp]
	call	clearerr_unlocked
	mov	rdi, qword ptr [rip + temp_stream.tmp_fp]
	xor	esi, esi
	xor	edx, edx
	call	rpl_fseeko
	test	eax, eax
	js	.label_44
	mov	rdi, qword ptr [rip + temp_stream.tmp_fp]
	call	fileno
	xor	esi, esi
	mov	edi, eax
	call	ftruncate
	test	eax, eax
	jns	.label_43
.label_44:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [rip + temp_stream.tempfile]
	mov	edi, 4
	call	quotearg_style
	jmp	.label_39
.label_32:
	mov	edi, OFFSET FLAT:.str.44
	call	getenv
	mov	rbp, rax
	test	rbp, rbp
	mov	eax, OFFSET FLAT:.str.45
	cmove	rbp, rax
	mov	esi, OFFSET FLAT:.str.46
	xor	edx, edx
	mov	rdi, rbp
	call	mfile_name_concat
	mov	qword ptr [rip + temp_stream.tempfile],  rax
	test	rbp, rbp
	je	.label_15
	mov	byte ptr [rsp + 0x27], r13b
	mov	rdi, rax
	call	mkstemp_safer
	mov	ebx, eax
	test	ebx, ebx
	js	.label_21
	mov	esi, OFFSET FLAT:.str.49
	mov	edi, ebx
	call	fdopen
	mov	qword ptr [rip + temp_stream.tmp_fp],  rax
	test	rax, rax
	je	.label_22
	mov	rdi, qword ptr [rip + temp_stream.tempfile]
	call	unlink
.label_43:
	mov	r13, qword ptr [rip + temp_stream.tmp_fp]
	mov	rax, qword ptr [rip + temp_stream.tempfile]
	mov	qword ptr [rsp + 0x10], rax
	xor	ebp, ebp
.label_45:
	mov	rsi, qword ptr [rip + G_buffer]
	mov	rdx, qword ptr [rip + read_size]
	mov	edi, r12d
	call	safe_read
	mov	rbx, rax
	test	rbx, rbx
	je	.label_38
	cmp	rbx, -1
	je	.label_41
	mov	rdi, qword ptr [rip + G_buffer]
	mov	esi, 1
	mov	rdx, rbx
	mov	rcx, r13
	call	fwrite_unlocked
	add	rbp, rbx
	cmp	rax, rbx
	je	.label_45
	jmp	.label_48
.label_30:
	mov	byte ptr [rsp + 0x27], r13b
	mov	edi, r12d
	mov	rsi, r14
	mov	rdx, rbx
	call	tac_seekable
	mov	r13b, al
	jmp	.label_13
.label_15:
	mov	byte ptr [rsp + 0x27], r13b
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	ebp, dword ptr [rsp + 0x20]
	jmp	.label_13
.label_21:
	call	__errno_location
	mov	r13d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, rbx
	call	error
	jmp	.label_14
.label_38:
	mov	rdi, r13
	call	fflush_unlocked
	test	eax, eax
	je	.label_29
.label_48:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x10]
	jmp	.label_34
.label_41:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
.label_34:
	call	quotearg_n_style_colon
.label_39:
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	ebp, dword ptr [rsp + 0x20]
	jmp	.label_13
.label_22:
	call	__errno_location
	mov	r13d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [rip + temp_stream.tempfile]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, rbp
	call	error
	mov	edi, ebx
	call	close
	mov	rdi, qword ptr [rip + temp_stream.tempfile]
	call	unlink
.label_14:
	mov	rdi, qword ptr [rip + temp_stream.tempfile]
	call	free
	mov	qword ptr [rip + temp_stream.tempfile],  0
.label_37:
	xor	r13d, r13d
	mov	ebp, dword ptr [rsp + 0x20]
	nop	
.label_13:
	test	bpl, bpl
	jne	.label_23
	mov	edi, r12d
	call	close
	test	eax, eax
	je	.label_23
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_23:
	test	r13b, r13b
	setne	bl
	mov	r13b, byte ptr [rsp + 0x27]
.label_17:
	and	bl, r13b
	mov	rax, qword ptr [rsp + 0x18]
	mov	r14, qword ptr [rax + r15*8 + 8]
	inc	r15
	test	r14, r14
	mov	r13b, bl
	jne	.label_27
.label_35:
	mov	rdx, qword ptr [rip + output.bytes_in_buffer]
	mov	rcx, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:output.buffer
	mov	esi, 1
	call	fwrite_unlocked
	mov	qword ptr [rip + output.bytes_in_buffer],  0
	mov	al, byte ptr [rip + have_read_stdin]
	and	al, 1
	je	.label_24
	xor	edi, edi
	call	close
	test	eax, eax
	jns	.label_24
	call	__errno_location
	mov	esi, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.7
	xor	eax, eax
	call	error
.label_24:
	not	bl
	and	bl, 1
	movzx	eax, bl
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_16:
	call	xalloc_die
.label_50:
	cmp	eax, 0xffffff7d
	je	.label_20
	cmp	eax, 0xffffff7e
	jne	.label_11
	xor	edi, edi
	call	usage
.label_20:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.14
	mov	r9d, OFFSET FLAT:.str.15
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_11:
	mov	edi, 1
	call	usage
.label_28:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_40:
	mov	edi, 1
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023d0

	.globl tac_seekable
	.type tac_seekable, @function
tac_seekable:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rcx, rdx
	mov	r15, rsi
	mov	ebp, edi
	mov	r12, qword ptr [rip + separator]
	mov	r13b, byte ptr [r12]
	mov	rax, qword ptr [rip + match_length]
	mov	qword ptr [rsp + 0x20], rax
	xor	edx, edx
	mov	rax, rcx
	div	qword ptr [rip + read_size]
	test	rdx, rdx
	je	.label_96
	sub	rcx, rdx
	mov	qword ptr [rsp + 0x30], rcx
	xor	edx, edx
	mov	edi, ebp
	mov	rsi, rcx
	call	lseek
	test	rax, rax
	jns	.label_60
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	call	dcgettext
	mov	ebx, ebp
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	mov	ebp, ebx
	call	error
	jmp	.label_60
.label_96:
	mov	qword ptr [rsp + 0x30], rcx
.label_60:
	mov	rsi, qword ptr [rip + G_buffer]
	mov	rdx, qword ptr [rip + read_size]
	mov	edi, ebp
	call	safe_read
	mov	r14, rax
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_82
	nop	word ptr cs:[rax + rax]
.label_58:
	test	r14, r14
	jne	.label_82
	mov	rsi, qword ptr [rip + read_size]
	neg	rsi
	mov	edx, 1
	mov	edi, ebp
	call	lseek
	test	rax, rax
	jns	.label_93
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	call	dcgettext
	mov	ebx, ebp
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	mov	ebp, ebx
	call	error
.label_93:
	mov	rbx, qword ptr [rip + read_size]
	mov	rsi, qword ptr [rip + G_buffer]
	mov	edi, ebp
	mov	rdx, rbx
	call	safe_read
	mov	r14, rax
	sub	qword ptr [rsp + 0x30], rbx
	jne	.label_58
.label_82:
	cmp	r14, qword ptr [rip + read_size]
	jne	.label_62
	mov	qword ptr [rsp], r15
	mov	rbx, r12
	nop	dword ptr [rax + rax]
.label_76:
	mov	rsi, qword ptr [rip + G_buffer]
	mov	edi, ebp
	mov	rdx, r14
	call	safe_read
	mov	r12, rax
	cmp	r12, -1
	je	.label_69
	test	r12, r12
	je	.label_71
	add	qword ptr [rsp + 0x30], r12
	cmp	r12, qword ptr [rip + read_size]
	mov	r14, r12
	je	.label_76
	jmp	.label_79
.label_62:
	mov	qword ptr [rsp], r15
	mov	rbx, r12
.label_71:
	cmp	r14, -1
	mov	r12, r14
	je	.label_69
.label_79:
	mov	dword ptr [rsp + 0x14], ebp
	inc	rbx
	mov	qword ptr [rsp + 0x18], rbx
	add	r12, qword ptr [rip + G_buffer]
	mov	rax, qword ptr [rip + sentinel_length]
	mov	ebp, 1
	mov	rcx, qword ptr [rsp + 0x20]
	sub	rbp, rcx
	dec	rcx
	mov	qword ptr [rsp + 0x20], rcx
	add	rbp, r12
	test	rax, rax
	cmove	rbp, r12
	mov	cl, 1
	mov	dword ptr [rsp + 0x2c], ecx
	jmp	.label_77
	nop	dword ptr [rax + rax]
.label_72:
	mov	rax, qword ptr [rip + sentinel_length]
	mov	rcx, qword ptr [rip + match_length]
	xor	edx, edx
	sub	rdx, rcx
	test	rax, rax
	lea	rbp, [r14 + rdx + 1]
	cmove	rbp, r14
.label_77:
	test	rax, rax
	je	.label_100
	dec	rbp
	mov	r14, rbp
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_91
	nop	word ptr cs:[rax + rax]
.label_63:
	dec	r14
.label_91:
	movzx	eax, r13b
	movzx	ecx, byte ptr [r14]
	cmp	ecx, eax
	jne	.label_63
	test	rbp, rbp
	je	.label_59
	lea	rdi, [r14 + 1]
	mov	rsi, rbx
	mov	rdx, rbp
	call	strncmp
	test	eax, eax
	jne	.label_63
.label_59:
	mov	rbp, qword ptr [rip + G_buffer]
	jmp	.label_65
.label_100:
	mov	rsi, qword ptr [rip + G_buffer]
	mov	rax, rbp
	sub	rax, rsi
	mov	r8d, 1
	sub	r8, rax
	mov	rdx, rbp
	sub	rdx, rsi
	js	.label_81
	je	.label_75
	mov	rcx, rdx
	dec	rcx
	mov	edi, OFFSET FLAT:compiled_separator
	mov	r9d, OFFSET FLAT:regs
	call	rpl_re_search
	cmp	rax, -1
	je	.label_80
	cmp	rax, -2
	je	.label_83
	mov	rbp, qword ptr [rip + G_buffer]
	mov	rax, qword ptr [rip + label_85]
	mov	rax, qword ptr [rax]
	lea	r14, [rbp + rax]
	mov	rcx, qword ptr [rip + label_86]
	mov	rcx, qword ptr [rcx]
	sub	rcx, rax
	mov	qword ptr [rip + match_length],  rcx
.label_65:
	cmp	r14, rbp
	jb	.label_75
	movzx	eax, byte ptr [rip + separator_ends_record]
	and	eax, 1
	cmp	eax, 1
	jne	.label_94
	mov	rcx, qword ptr [rip + match_length]
	add	rcx, r14
	mov	eax, dword ptr [rsp + 0x2c]
	test	al, 1
	je	.label_98
	cmp	rcx, r12
	jne	.label_98
	mov	dword ptr [rsp + 0x2c], 0
	jmp	.label_72
.label_94:
	mov	r15, qword ptr [rip + output.bytes_in_buffer]
	test	r14, r14
	je	.label_55
	sub	r12, r14
	mov	ebx, 0x2000
	sub	rbx, r15
	cmp	r12, rbx
	lea	rdi, qword ptr [r15 + output.buffer]
	mov	rbp, r14
	jb	.label_74
	nop	word ptr [rax + rax]
.label_61:
	mov	rsi, rbp
	mov	rdx, rbx
	call	memcpy
	sub	r12, rbx
	add	rbp, rbx
	mov	rcx, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:output.buffer
	mov	esi, 1
	mov	edx, 0x2000
	call	fwrite_unlocked
	mov	qword ptr [rip + output.bytes_in_buffer],  0
	cmp	r12, 0x1fff
	mov	edi, OFFSET FLAT:output.buffer
	mov	ebx, 0x2000
	mov	r15d, 0
	ja	.label_61
.label_74:
	mov	rsi, rbp
	mov	rdx, r12
	call	memcpy
	add	r15, r12
	mov	rbx, qword ptr [rsp + 0x18]
	jmp	.label_84
.label_98:
	mov	r15, qword ptr [rip + output.bytes_in_buffer]
	test	rcx, rcx
	je	.label_87
	sub	r12, rcx
	mov	ebx, 0x2000
	sub	rbx, r15
	cmp	r12, rbx
	lea	rdi, qword ptr [r15 + output.buffer]
	mov	rbp, rcx
	mov	qword ptr [rsp + 8], rcx
	jb	.label_78
	nop	word ptr [rax + rax]
.label_101:
	mov	rsi, rbp
	mov	rdx, rbx
	call	memcpy
	sub	r12, rbx
	add	rbp, rbx
	mov	rcx, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:output.buffer
	mov	esi, 1
	mov	edx, 0x2000
	call	fwrite_unlocked
	mov	qword ptr [rip + output.bytes_in_buffer],  0
	cmp	r12, 0x1fff
	mov	edi, OFFSET FLAT:output.buffer
	mov	ebx, 0x2000
	mov	r15d, 0
	ja	.label_101
.label_78:
	mov	rsi, rbp
	mov	rdx, r12
	call	memcpy
	add	r15, r12
	mov	rbx, qword ptr [rsp + 0x18]
	jmp	.label_97
.label_80:
	mov	rbp, qword ptr [rip + G_buffer]
.label_75:
	sub	r12, rbp
	mov	r14, qword ptr [rsp + 0x30]
	test	r14, r14
	je	.label_66
	mov	rax, qword ptr [rip + read_size]
	cmp	r12, rax
	jbe	.label_68
	mov	rcx, qword ptr [rip + sentinel_length]
	test	rcx, rcx
	mov	ebx, 1
	cmovne	rbx, rcx
	mov	rdx, qword ptr [rip + G_buffer_size]
	lea	rsi, [rax + rax]
	mov	qword ptr [rip + read_size],  rsi
	lea	rsi, [rcx + rax*4 + 2]
	mov	qword ptr [rip + G_buffer_size],  rsi
	cmp	rsi, rdx
	jb	.label_70
	sub	rbp, rbx
	mov	rdi, rbp
	call	xrealloc
	add	rax, rbx
	mov	qword ptr [rip + G_buffer],  rax
	mov	rax, qword ptr [rip + read_size]
.label_68:
	mov	rcx, r14
	sub	rcx, rax
	mov	edi, dword ptr [rsp + 0x14]
	jae	.label_90
	mov	qword ptr [rip + read_size],  r14
	xor	esi, esi
	jmp	.label_92
.label_55:
	mov	rcx, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:output.buffer
	mov	esi, 1
	mov	rdx, r15
	call	fwrite_unlocked
	xor	r15d, r15d
.label_84:
	mov	qword ptr [rip + output.bytes_in_buffer],  r15
	mov	r12, r14
	jmp	.label_72
.label_90:
	mov	rsi, rcx
.label_92:
	mov	qword ptr [rsp + 0x30], rsi
	xor	edx, edx
	call	lseek
	test	rax, rax
	jns	.label_56
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_56:
	mov	rbp, qword ptr [rip + G_buffer]
	mov	r14, qword ptr [rip + read_size]
	lea	rbx, [rbp + r14]
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r12
	call	memmove
	mov	r15, qword ptr [rip + sentinel_length]
	mov	edi, dword ptr [rsp + 0x14]
	mov	rsi, rbp
	mov	rdx, r14
	call	safe_read
	cmp	rax, qword ptr [rip + read_size]
	jne	.label_69
	add	r12, rbx
	test	r15, r15
	mov	rbp, r12
	je	.label_57
	mov	rbp, rbx
.label_57:
	mov	rax, qword ptr [rip + sentinel_length]
	mov	rbx, qword ptr [rsp + 0x18]
	jmp	.label_77
.label_87:
	mov	qword ptr [rsp + 8], rcx
	mov	rcx, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:output.buffer
	mov	esi, 1
	mov	rdx, r15
	call	fwrite_unlocked
	xor	r15d, r15d
.label_97:
	mov	qword ptr [rip + output.bytes_in_buffer],  r15
	mov	dword ptr [rsp + 0x2c], 0
	mov	r12, qword ptr [rsp + 8]
	jmp	.label_72
.label_69:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
	jmp	.label_89
.label_66:
	mov	r14, qword ptr [rip + output.bytes_in_buffer]
	mov	ebx, 0x2000
	test	rbp, rbp
	je	.label_95
	sub	rbx, r14
	cmp	r12, rbx
	lea	rdi, qword ptr [r14 + output.buffer]
	jae	.label_64
	mov	r15, rdi
	jmp	.label_67
.label_95:
	mov	rcx, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:output.buffer
	mov	esi, 1
	mov	rdx, r14
	call	fwrite_unlocked
	xor	r14d, r14d
	jmp	.label_73
.label_64:
	mov	r15d, OFFSET FLAT:output.buffer
	xor	r14d, r14d
	nop	
.label_88:
	mov	rsi, rbp
	mov	rdx, rbx
	call	memcpy
	sub	r12, rbx
	add	rbp, rbx
	mov	rcx, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:output.buffer
	mov	esi, 1
	mov	edx, 0x2000
	call	fwrite_unlocked
	mov	qword ptr [rip + output.bytes_in_buffer],  0
	cmp	r12, 0x1fff
	mov	edi, OFFSET FLAT:output.buffer
	mov	ebx, 0x2000
	ja	.label_88
.label_67:
	mov	rdi, r15
	mov	rsi, rbp
	mov	rdx, r12
	call	memcpy
	add	r14, r12
.label_73:
	mov	qword ptr [rip + output.bytes_in_buffer],  r14
	mov	bl, 1
.label_89:
	mov	al, bl
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_81:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	jmp	.label_99
.label_83:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.54
.label_99:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_70:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b20
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b30
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b40

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_105
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_102
	cmp	dword ptr [rbp], 0x20
	jne	.label_102
.label_105:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_104
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_102:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_103
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_104:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_103:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_1
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c00

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
	mov	r14, rsi
	mov	r13, rdi
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	base_len
	mov	rbp, rax
	sub	rbx, r13
	add	rbx, rbp
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	test	rbp, rbp
	je	.label_113
	movzx	ecx, byte ptr [rbx + r13 - 1]
	cmp	ecx, 0x2f
	jne	.label_106
	mov	qword ptr [rsp + 8], r14
	xor	r12d, r12d
	jmp	.label_109
.label_113:
	movzx	ecx, byte ptr [r14]
	mov	r12b, 0x2e
	cmp	ecx, 0x2f
	je	.label_110
	jmp	.label_107
.label_106:
	movzx	ecx, byte ptr [r14]
	cmp	ecx, 0x2f
	jne	.label_108
.label_107:
	xor	r12d, r12d
	jmp	.label_110
.label_108:
	mov	r12b, 0x2f
.label_110:
	mov	qword ptr [rsp + 8], r14
.label_109:
	test	r12b, r12b
	setne	cl
	movzx	ebp, cl
	lea	rcx, [r15 + rbx]
	lea	rdi, [rbp + rcx + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_112
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	add	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_111
	mov	qword ptr [rax], rbp
.label_111:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r15
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	mov	rax, r14
.label_112:
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
	#Procedure 0x402cf0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_115
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_114
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_114
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_116
	add	r14, 3
	mov	qword ptr [rip + program_invocation_short_name],  r14
.label_116:
	mov	rbx, r14
.label_114:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_115:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:.str_3
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402da0
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402de0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x402df0
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x402e00
	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:

	mov	ecx, esi
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	cmovne	rsi, rdi
	mov	al, cl
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e40
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	test	rdi, rdi
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	dword ptr [rcx + 4], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e60
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_117
	test	rdx, rdx
	je	.label_117
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_117:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e90
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x20], rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	r8, qword ptr [rbp]
	mov	rax, qword ptr [rbp + 0x28]
	mov	r9, r8
	shr	r9, 0x20
	mov	rcx, qword ptr [rbp + 0x30]
	add	rbp, 8
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rbp
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402f10

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x108
	mov	ebx, r9d
	mov	dword ptr [rsp + 0x6c], ebx
	mov	r15d, r8d
	mov	r13, rcx
	mov	qword ptr [rsp + 0xa8], rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp + 0x98], rax
	mov	rax, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0xa0], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0x60], rax
	mov	r12b, bl
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x5c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x58], ebx
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x90], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xc8], rax
	mov	eax, 0
	mov	dword ptr [rsp + 0xd8], 0
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
.label_186:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_236
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [(rcx * 8) + label_238]
.label_2237:
	mov	edi, OFFSET FLAT:.str.11_0
	mov	esi, r15d
	mov	r14, r10
	mov	bl, r8b
	call	gettext_quote
	mov	qword ptr [rsp + 0xa0], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r15d
	call	gettext_quote
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x98], rax
.label_2238:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_137
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_137
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_170:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_196
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_196:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_170
.label_137:
	mov	rbp, qword ptr [rsp + 0x98]
	mov	rdi, rbp
	mov	rbx, r10
	call	strlen
	mov	r10, rbx
	mov	qword ptr [rsp + 0xc8], rax
	mov	r9d, r15d
	mov	qword ptr [rsp + 0xb8], rbp
	mov	dil, 1
	mov	sil, r12b
	mov	rbp, r13
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r11, qword ptr [rsp + 0xa8]
	jmp	.label_183
.label_2230:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_183
.label_2233:
	mov	al, 1
.label_2231:
	mov	r12b, 1
.label_2234:
	test	r12b, 1
	mov	cl, 1
	je	.label_199
	mov	cl, al
.label_199:
	mov	al, cl
.label_2232:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_202
	test	r10, r10
	je	.label_205
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_206
.label_202:
	xor	ecx, ecx
	jmp	.label_206
.label_2235:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_214
	test	r10, r10
	je	.label_221
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_223
.label_2236:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_183
.label_205:
	mov	ecx, 1
	nop	dword ptr [rax]
.label_206:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_183
.label_214:
	xor	eax, eax
	jmp	.label_223
.label_221:
	mov	eax, 1
.label_223:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_183:
	mov	qword ptr [rsp + 0x80], rsi
	mov	byte ptr [rsp + 0x8f], dil
	cmp	qword ptr [rsp + 0x140], 0
	setne	dl
	cmp	r9d, 2
	setne	r15b
	sete	al
	mov	cl, dil
	and	cl, 1
	mov	byte ptr [rsp + 0xb6], cl
	sete	byte ptr [rsp + 0x6b]
	mov	bl, r15b
	and	bl, cl
	mov	byte ptr [rsp + 0xd7], bl
	cmp	qword ptr [rsp + 0xc8], 0
	setne	r13b
	mov	r12b, r13b
	and	r12b, bl
	mov	byte ptr [rsp + 0xc6], r12b
	mov	bl, sil
	and	bl, 1
	mov	byte ptr [rsp + 0xc7], bl
	sete	cl
	and	al, bl
	mov	byte ptr [rsp + 0x7f], al
	and	dl, bl
	mov	byte ptr [rsp + 0xc5], dl
	or	cl, r15b
	mov	byte ptr [rsp + 0xb7], cl
	and	dil, sil
	and	dil, r13b
	mov	byte ptr [rsp + 0x6a], dil
	xor	edi, edi
	mov	r14d, dword ptr [rsp + 0xd8]
	jmp	.label_150
.label_188:
	inc	rdi
.label_150:
	cmp	rbp, -1
	je	.label_167
	cmp	rdi, rbp
	jne	.label_178
	jmp	.label_179
	nop	word ptr cs:[rax + rax]
.label_167:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_185
.label_178:
	test	r12b, r12b
	je	.label_189
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_191
	cmp	rbp, -1
	jne	.label_191
	mov	eax, r14d
	mov	r14, rdi
	mov	rdi, r11
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r9
	mov	dword ptr [rsp + 0xd8], eax
	mov	r12, r11
	call	strlen
	mov	rdi, r14
	mov	r11, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	r14d, dword ptr [rsp + 0xd8]
	mov	r9, r13
	mov	r8b, r15b
	mov	r10, rbp
	mov	rbp, rax
.label_191:
	cmp	rbx, rbp
	jbe	.label_210
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_213
	nop	word ptr [rax + rax]
.label_189:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_213
.label_210:
	mov	dword ptr [rsp + 0xd8], r14d
	mov	r12, rbp
	mov	r13, r9
	mov	r15b, r8b
	mov	rbx, r10
	mov	r14, rdi
	lea	rdi, [r11 + r14]
	mov	rbp, r11
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	rdx, qword ptr [rsp + 0xc8]
	call	memcmp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xec], eax
	jne	.label_233
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_213
	jmp	.label_154
.label_233:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_213:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_124
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_129]
.label_2281:
	test	rdi, rdi
	jne	.label_136
	jmp	.label_139
.label_2285:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_141
	test	rdi, rdi
	jne	.label_145
	cmp	rbp, 1
	je	.label_139
	xor	r13d, r13d
	jmp	.label_133
.label_2274:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_152
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_154
	cmp	r9d, 2
	jne	.label_158
	mov	al, r14b
	and	al, 1
	jne	.label_163
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_168
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_168:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_198
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_198:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_144
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_144:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_175
.label_2275:
	mov	bl, 0x62
	jmp	.label_197
.label_2276:
	mov	cl, 0x74
	jmp	.label_184
.label_2277:
	mov	bl, 0x76
	jmp	.label_197
.label_2278:
	mov	bl, 0x66
	jmp	.label_197
.label_2279:
	mov	cl, 0x72
	jmp	.label_184
.label_2282:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_203
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_207
	test	r10, r10
	sete	al
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r10
	mov	qword ptr [rsp + 0x90], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_234
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_234:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_230
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_230:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_130
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_130:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_203:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_133
.label_2283:
	cmp	r9d, 5
	je	.label_218
	cmp	r9d, 2
	jne	.label_136
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_136
	jmp	.label_120
.label_2284:
	cmp	r9d, 2
	jne	.label_122
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_125
	jmp	.label_131
.label_124:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_132
	mov	r13d, r14d
	mov	r14, r11
	mov	rbx, rdi
	call	__ctype_b_loc
	mov	rdi, rbx
	mov	r11, r14
	mov	r14d, r13d
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	eax, 1
.label_134:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_153
	test	cl, cl
	je	.label_153
	xor	eax, eax
	jmp	.label_133
.label_141:
	test	rdi, rdi
	jne	.label_169
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_169
.label_139:
	mov	dl, 1
.label_2280:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_147
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_133
.label_152:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_188
	jmp	.label_136
.label_122:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_184
.label_125:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_192
.label_184:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_193
.label_197:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_133
	jmp	.label_200
.label_132:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_201
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_201:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_138:
	mov	qword ptr [rsp + 0xd8], rax
	mov	qword ptr [rsp + 0x50], rdi
	lea	rax, [rax + rdi]
	mov	qword ptr [rsp + 0x38], rax
	lea	rsi, [r11 + rax]
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xfc]
	mov	rcx, rbx
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_229
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_232
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_235
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_176
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_121:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_240
	bt	rsi, rdx
	jb	.label_242
.label_240:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_121
.label_176:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_162
	xor	r13d, r13d
.label_162:
	mov	rax, qword ptr [rsp + 0xd8]
	add	rax, rbp
	mov	rdi, rbx
	mov	rbp, rax
	call	mbsinit
	test	eax, eax
	mov	rax, rbp
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_138
	jmp	.label_134
.label_169:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_133
.label_218:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_136
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_136
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_136
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_164
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_172
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_181
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_160
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_160:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_187
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_187:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_195
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_195:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_166
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_166:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_133
.label_136:
	xor	eax, eax
	xor	r13d, r13d
.label_133:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_217
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_220
	jmp	.label_174
	nop	word ptr [rax + rax]
.label_217:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_174
.label_220:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_226
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_231
	nop	word ptr cs:[rax + rax]
.label_174:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_231:
	mov	bl, r15b
	je	.label_192
	jmp	.label_200
.label_226:
	mov	bl, r15b
.label_200:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_154
	cmp	r9d, 2
	jne	.label_237
	mov	al, r14b
	and	al, 1
	jne	.label_237
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_215
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_215:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_118
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_118:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_128
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_128:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_237:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_143
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_143:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_148
.label_145:
	xor	r13d, r13d
	jmp	.label_133
.label_153:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_155
	nop	word ptr [rax + rax]
.label_149:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_155:
	test	cl, cl
	je	.label_173
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_159
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_177
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_177:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_159
	nop	word ptr [rax + rax]
.label_173:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_154
	cmp	r9d, 2
	jne	.label_126
	mov	al, r14b
	and	al, 1
	jne	.label_126
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_142
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_142:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_194
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_194:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_212
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_212:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_126:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_225
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_225:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_228
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_228:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_171
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_171:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_159:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_192
	test	r14b, 1
	je	.label_119
	mov	bl, al
	and	bl, 1
	jne	.label_119
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_140
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_140:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_135
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_135:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_119:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_149
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_149
	nop	dword ptr [rax]
.label_192:
	test	r14b, 1
	je	.label_165
	and	al, 1
	jne	.label_165
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_241
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_241:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_227
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_227:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_165:
	mov	bl, r15b
.label_148:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_190
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_190:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_188
.label_158:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_175
.label_163:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_175:
	cmp	rcx, r10
	jae	.label_204
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_204:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_209
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_219
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_222
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_224
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_224:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_211
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_211:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_133
.label_209:
	xor	r13d, r13d
	jmp	.label_133
.label_219:
	xor	r13d, r13d
	jmp	.label_133
.label_222:
	xor	r13d, r13d
	jmp	.label_133
.label_232:
	xor	r13d, r13d
.label_229:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_134
.label_235:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_239
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_156:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_123
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_156
	xor	r13d, r13d
	jmp	.label_134
.label_239:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_134
.label_123:
	xor	r13d, r13d
	jmp	.label_134
.label_164:
	xor	r13d, r13d
	jmp	.label_133
.label_172:
	xor	r13d, r13d
	jmp	.label_133
	nop	dword ptr [rax]
.label_179:
	mov	r13, rdi
.label_185:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_151
	or	al, dl
	je	.label_157
.label_151:
	mov	dword ptr [rsp + 0xd8], r14d
	mov	qword ptr [rsp + 0xa8], r11
	cmp	r9d, 2
	setne	al
	cmp	byte ptr [rsp + 0xc7], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x8f]
	mov	rsi, qword ptr [rsp + 0x80]
	je	.label_161
	or	al, dl
	jne	.label_161
	test	r8b, 1
	jne	.label_182
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_161
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_186
.label_161:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_146
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_146
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_146
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_208:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_180
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_180:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_208
.label_146:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_216
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_216
.label_147:
	mov	r9d, 2
	jmp	.label_154
.label_242:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_154
.label_157:
	mov	rbp, r13
	jmp	.label_154
.label_193:
	mov	r9d, 2
.label_154:
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r8d, 4
	cmove	r8d, r9d
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x6c]
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, r10
	mov	rdx, r11
	mov	rcx, rbp
.label_127:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_216:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_182:
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0x90]
	mov	rdx, qword ptr [rsp + 0xa8]
	mov	rcx, r13
	mov	r9d, dword ptr [rsp + 0x6c]
	jmp	.label_127
.label_207:
	mov	r9d, 2
	jmp	.label_154
.label_131:
	mov	r9d, 2
	jmp	.label_154
.label_120:
	mov	r9d, 2
	jmp	.label_154
.label_181:
	mov	r9d, 5
	jmp	.label_154
.label_236:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4040a0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x20], rbx
	test	rdx, rdx
	mov	r14d, OFFSET FLAT:default_quoting_options
	cmovne	r14, rdx
	call	__errno_location
	mov	qword ptr [rsp + 0x28], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 0x34], ecx
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	or	ebp, 1
	lea	r15, [r14 + 8]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r15
	xor	edi, edi
	xor	esi, esi
	mov	rdx, rbx
	mov	rcx, r12
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rbx, rax
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	r13, rax
	mov	r8d, dword ptr [r14]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r15
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, r12
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	eax, dword ptr [rsp + 0x34]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404170
	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x30], rbx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x28], r14
	mov	r15, rdi
	mov	qword ptr [rsp + 0x20], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	cmovne	r12, rcx
	call	__errno_location
	mov	qword ptr [rsp + 0x38], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 0x44], ecx
	test	rbx, rbx
	sete	al
	movzx	ebp, al
	or	ebp, dword ptr [r12 + 4]
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r13
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rbx, rax
	lea	r15, [rbx + 1]
	mov	rdi, r15
	call	xmalloc
	mov	r14, rax
	mov	r8d, dword ptr [r12]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r13
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rax, qword ptr [rsp + 0x30]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x44]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	dword ptr [rdx], ecx
	je	.label_243
	mov	qword ptr [rax], rbx
.label_243:
	mov	rax, r14
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404270
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_244
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_246:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_246
.label_244:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_247
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_248], OFFSET FLAT:slot0
.label_247:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_245
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_245:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404310
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x404320

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r12, rcx
	mov	r14, rdx
	mov	qword ptr [rsp + 0x40], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_249
	mov	ecx, dword ptr [rax]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  ebx
	jle	.label_252
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_255
.label_252:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_251
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	mov	r13d, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, r13
	cmovne	rdi, rbp
	lea	r15d, [rbx + 1]
	movsxd	rsi, ebx
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, r13
	mov	qword ptr [rip + slotvec],  r14
	jne	.label_250
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_250:
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
	mov	r14, qword ptr [rsp + 0x38]
.label_255:
	mov	qword ptr [rsp + 0x38], r14
	movsxd	r13, ebx
	shl	r13, 4
	mov	r15, qword ptr [rbp + r13]
	mov	rbx, qword ptr [rbp + r13 + 8]
	mov	rcx, r12
	mov	qword ptr [rsp + 0x20], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	lea	rdx, [rcx + 8]
	mov	qword ptr [rsp + 0x18], rdx
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rdx
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, r14
	mov	r9d, r12d
	call	quotearg_buffer_restyled
	mov	r14, rax
	cmp	r15, r14
	ja	.label_253
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_254
	mov	rdi, rbx
	call	free
.label_254:
	mov	rdi, r14
	call	xmalloc
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rcx]
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	call	quotearg_buffer_restyled
.label_253:
	mov	rax, qword ptr [rsp + 0x30]
	mov	ecx, dword ptr [rsp + 0x2c]
	mov	dword ptr [rax], ecx
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_249:
	call	abort
.label_251:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044f0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404500
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404520
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404540
	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:

	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	esi, 0xa
	je	.label_256
	mov	dword ptr [rsp + 8], esi
	mov	ecx, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_256:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x4045b0
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	esi, 0xa
	je	.label_257
	mov	dword ptr [rsp + 8], esi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rax, [rsp + 8]
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_257:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404620

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	edi, 0xa
	je	.label_258
	mov	dword ptr [rsp + 8], edi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_258:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404690
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	edi, 0xa
	je	.label_259
	mov	dword ptr [rsp + 8], edi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	xor	edi, edi
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_259:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404700
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_260]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_261]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_262]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	al, cl
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
	nop	
	.section	.text
	.align	32
	#Procedure 0x404770
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_260]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_261]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_262]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dl, cl
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
	nop	
	.section	.text
	.align	32
	#Procedure 0x4047e0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_260]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_261]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_262]
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404840
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_260]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_261]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_262]
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048a0

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	sub	rsp, 0xa8
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	dword ptr [rsp + 0xa0], 0
	cmp	esi, 0xa
	je	.label_263
	mov	ecx, dword ptr [rsp + 0xa0]
	mov	dword ptr [rsp + 0x30], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x70]
	movaps	xmm1, xmmword ptr [rsp + 0x80]
	movaps	xmm2, xmmword ptr [rsp + 0x90]
	movaps	xmmword ptr [rsp + 0x20], xmm2
	movaps	xmmword ptr [rsp + 0x10], xmm1
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x38], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x6c], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x5c], xmm2
	movups	xmmword ptr [rsp + 0x4c], xmm1
	movups	xmmword ptr [rsp + 0x3c], xmm0
	or	byte ptr [rsp + 0x47], 4
	lea	rcx, [rsp + 0x38]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0xa8
	ret	
.label_263:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x404950
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_260]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_261]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_262]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_264
	test	rdx, rdx
	je	.label_264
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_264:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x4049c0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_260]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_261]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_262]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_265
	test	rdx, rdx
	je	.label_265
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_265:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a30
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_260]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_261]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_262]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_266
	test	rsi, rsi
	je	.label_266
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_266:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404aa0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_260]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_261]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_262]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_267
	test	rsi, rsi
	je	.label_267
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
.label_267:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404b10
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b20
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b40
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b60
	.globl quote
	.type quote, @function
quote:

	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404b80

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
	jne	.label_269
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_270
	cmp	ecx, 0x55
	jne	.label_268
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_268
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_268
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_268
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_268
	cmp	byte ptr [rax + 5], 0
	jne	.label_268
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_269
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_269
.label_270:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_268
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_268
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_268
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_268
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_268
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_268
	cmp	byte ptr [rax + 7], 0
	je	.label_271
.label_268:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_269:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_271:
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_269
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_269
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c70

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
.label_273:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_272
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_273
	cmp	rbx, 0x7ff00001
	jb	.label_272
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_273
.label_272:
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404cd0

	.globl mkstemp_safer
	.type mkstemp_safer, @function
mkstemp_safer:
	push	rax
	call	mkstemp
	mov	edi, eax
	pop	rax
	jmp	fd_safer
	nop	
	.section	.text
	.align	32
	#Procedure 0x404ce0
	.globl mkostemp_safer
	.type mkostemp_safer, @function
mkostemp_safer:

	push	rbx
	mov	ebx, esi
	call	mkostemp
	mov	edi, eax
	mov	esi, ebx
	pop	rbx
	jmp	fd_safer_flag
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404d00

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
	ja	.label_274
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
	jmp	.label_275
.label_274:
	mov	eax, ebx
.label_275:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d50

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, r9
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_278
	mov	edx, OFFSET FLAT:.str_4
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_277
.label_278:
	mov	edx, OFFSET FLAT:.str.1_3
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_277:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_1
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
	mov	esi, OFFSET FLAT:.str.3_0
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_283
	jmp	qword ptr [(r12 * 8) + label_284]
.label_2250:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_283:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	jmp	.label_282
.label_2251:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_2252:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_2253:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_285
.label_2254:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_280
.label_2255:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_276
.label_2256:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x18], rbx
.label_276:
	mov	qword ptr [rsp + 0x10], rdi
.label_280:
	mov	qword ptr [rsp + 8], rsi
.label_285:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_281
.label_2258:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_282:
	mov	edx, 5
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	r11, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	rax, qword ptr [r15 + 0x40]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], r11
	jmp	.label_279
.label_2257:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_1
	mov	edx, 5
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], rax
.label_279:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_281:
	call	__fprintf_chk
.label_2249:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405040
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_286:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_286
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405070
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_289:
	cmp	r10d, 0x28
	ja	.label_287
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_288
	nop	word ptr cs:[rax + rax]
.label_287:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_288:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_290
	inc	r9
	cmp	r9, 0xa
	jb	.label_289
.label_290:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4050d0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x128
	test	al, al
	je	.label_291
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_291:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0x130]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x20
	xor	r9d, r9d
	mov	r8d, dword ptr [rsp + 0xb0]
	nop	word ptr cs:[rax + rax]
.label_295:
	cmp	r8d, 0x28
	ja	.label_292
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_294
	nop	
.label_292:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_294:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_293
	inc	r9
	cmp	r9, 0xa
	jb	.label_295
.label_293:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051d0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_0
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19_0
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x405250
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_296
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_297
	test	rax, rax
	je	.label_296
.label_297:
	pop	rbx
	ret	
.label_296:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405290

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_298
	test	rax, rax
	je	.label_299
.label_298:
	pop	rbx
	ret	
.label_299:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052b0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_300
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_301
	test	rbx, rbx
	jne	.label_301
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_301:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_302
	test	rax, rax
	je	.label_300
.label_302:
	pop	rbx
	ret	
.label_300:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405300

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_303
	test	rbx, rbx
	jne	.label_303
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_303:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_305
	test	rax, rax
	je	.label_304
.label_305:
	pop	rbx
	ret	
.label_304:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405330
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_310
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_311
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_306
.label_310:
	test	rcx, rcx
	jne	.label_312
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_312:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_308
.label_306:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_307
	test	rbx, rbx
	jne	.label_307
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_307:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_309
	test	rax, rax
	je	.label_311
.label_309:
	pop	rbx
	ret	
.label_311:
	call	xalloc_die
.label_308:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053d0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_313
	test	rax, rax
	je	.label_314
.label_313:
	pop	rbx
	ret	
.label_314:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053f0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_317
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_319
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_316
	call	free
	xor	eax, eax
	jmp	.label_318
.label_317:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_315
	mov	qword ptr [rsi], rbx
.label_316:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_318
	test	rax, rax
	je	.label_315
.label_318:
	pop	rbx
	ret	
.label_315:
	call	xalloc_die
.label_319:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405460
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
	je	.label_321
	test	r14, r14
	je	.label_320
.label_321:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_320:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054a0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_322
	call	rpl_calloc
	test	rax, rax
	je	.label_322
	pop	rcx
	ret	
.label_322:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054d0

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
	je	.label_323
	test	r15, r15
	je	.label_324
.label_323:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_324:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405510
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
	je	.label_326
	test	r15, r15
	je	.label_325
.label_326:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_325:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405560

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405590

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_327
	test	rsi, rsi
	mov	ecx, 1
	je	.label_328
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_328
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_327:
	mov	ecx, 1
.label_328:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055e0

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
	jne	.label_329
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_329
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_330
.label_329:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_330:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_331
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_331:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405650

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
	je	.label_332
	cmp	r15, -2
	jb	.label_332
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_332
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_332:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4056b0

	.globl rpl_re_compile_pattern
	.type rpl_re_compile_pattern, @function
rpl_re_compile_pattern:
	push	rax
	mov	r8, rsi
	mov	rsi, rdi
	mov	rcx, qword ptr [rip + rpl_re_syntax_options]
	mov	al, byte ptr [rdx + 0x38]
	shr	rcx, 0x15
	and	cl, 0x10
	and	al, 0x6f
	or	al, cl
	or	al, 0x80
	mov	byte ptr [rdx + 0x38], al
	mov	rcx, qword ptr [rip + rpl_re_syntax_options]
	mov	rdi, rdx
	mov	rdx, r8
	call	re_compile_internal
	test	eax, eax
	je	.label_333
	cdqe	
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi, qword ptr [(rax * 8) + __re_error_msgid_idx]
	xor	edi, edi
	mov	edx, 5
	pop	rax
	jmp	dcgettext
.label_333:
	xor	eax, eax
	pop	rcx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405710

	.globl re_compile_internal
	.type re_compile_internal, @function
re_compile_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xf8
	mov	qword ptr [rsp + 0x18], rcx
	mov	r13, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	dword ptr [rsp + 0xcc], 0
	mov	al, byte ptr [r15 + 0x38]
	mov	qword ptr [r15 + 0x18], rcx
	mov	qword ptr [r15 + 0x10], 0
	mov	qword ptr [r15 + 0x30], 0
	and	al, 0x90
	mov	byte ptr [r15 + 0x38], al
	mov	r12, qword ptr [r15]
	cmp	qword ptr [r15 + 8], 0xe7
	jbe	.label_463
.label_433:
	mov	qword ptr [r15 + 0x10], 0xe8
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r12 + 0xd0], xmm0
	movdqu	xmmword ptr [r12 + 0xc0], xmm0
	movdqu	xmmword ptr [r12 + 0xb0], xmm0
	movdqu	xmmword ptr [r12 + 0xa0], xmm0
	movdqu	xmmword ptr [r12 + 0x90], xmm0
	movdqu	xmmword ptr [r12 + 0x80], xmm0
	movdqu	xmmword ptr [r12 + 0x70], xmm0
	movdqu	xmmword ptr [r12 + 0x60], xmm0
	movdqu	xmmword ptr [r12 + 0x50], xmm0
	movdqu	xmmword ptr [r12 + 0x40], xmm0
	movdqu	xmmword ptr [r12 + 0x30], xmm0
	movdqu	xmmword ptr [r12 + 0x20], xmm0
	movdqu	xmmword ptr [r12 + 0x10], xmm0
	movdqu	xmmword ptr [r12], xmm0
	mov	qword ptr [r12 + 0xe0], 0
	mov	dword ptr [r12 + 0x80], 0xf
	movabs	rax, 0x555555555555554
	cmp	r13, rax
	ja	.label_390
	lea	rdi, [r13 + 1]
	mov	qword ptr [rsp + 0x20], rdi
	mov	qword ptr [r12 + 8], rdi
	shl	rdi, 4
	call	malloc
	mov	qword ptr [r12], rax
	mov	eax, 1
	nop	word ptr cs:[rax + rax]
.label_347:
	mov	rbx, rax
	lea	rax, [rbx + rbx]
	cmp	rbx, r13
	jbe	.label_347
	mov	edi, 0x18
	mov	rsi, rbx
	call	rpl_calloc
	mov	qword ptr [r12 + 0x40], rax
	dec	rbx
	mov	qword ptr [r12 + 0x88], rbx
	call	__ctype_get_mb_cur_max
	mov	dword ptr [r12 + 0xb4], eax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	mov	cl, byte ptr [rax]
	or	cl, 0x20
	movzx	ecx, cl
	cmp	ecx, 0x75
	jne	.label_362
	mov	cl, byte ptr [rax + 1]
	or	cl, 0x20
	movzx	ecx, cl
	cmp	ecx, 0x74
	jne	.label_362
	mov	cl, byte ptr [rax + 2]
	or	cl, 0x20
	movzx	ecx, cl
	cmp	ecx, 0x66
	jne	.label_362
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	sete	cl
	movzx	ecx, cl
	movzx	edx, byte ptr [rax + rcx + 3]
	cmp	edx, 0x38
	jne	.label_362
	cmp	byte ptr [rax + rcx + 4], 0
	jne	.label_362
	or	byte ptr [r12 + 0xb0], 4
.label_362:
	mov	rax, qword ptr [r12 + 0xb0]
	mov	cl, al
	and	cl, 0xf7
	mov	byte ptr [r12 + 0xb0], cl
	mov	rcx, rax
	shr	rcx, 0x20
	cmp	ecx, 2
	jl	.label_376
	test	al, 4
	jne	.label_385
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [r12 + 0x78], rax
	xor	ebx, ebx
	test	rax, rax
	je	.label_390
	xor	ebp, ebp
	nop	
.label_462:
	mov	edi, ebx
	call	btowc
	cmp	eax, -1
	je	.label_392
	mov	edx, 1
	mov	cl, bl
	shl	rdx, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx], rdx
.label_392:
	cmp	ebx, 0x7f
	ja	.label_398
	cmp	ebx, eax
	je	.label_398
	or	byte ptr [r12 + 0xb0], 8
.label_398:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_462
	mov	qword ptr [rsp + 0x28], r15
	xor	ebx, ebx
.label_406:
	lea	r15, [rbp + 0x40]
	mov	edi, r15d
	call	btowc
	cmp	eax, -1
	je	.label_365
	mov	edx, 1
	mov	cl, bpl
	shl	rdx, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 8], rdx
.label_365:
	cmp	r15d, eax
	je	.label_356
	or	byte ptr [r12 + 0xb0], 8
.label_356:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_406
	xor	ebp, ebp
	mov	r15, qword ptr [rsp + 0x28]
	nop	word ptr cs:[rax + rax]
.label_459:
	lea	edi, [rbx + 0x80]
	call	btowc
	cmp	eax, -1
	je	.label_416
	mov	eax, 1
	mov	cl, bl
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x10], rax
.label_416:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_459
	nop	dword ptr [rax]
.label_427:
	lea	edi, [rbp + 0xc0]
	call	btowc
	cmp	eax, -1
	je	.label_424
	mov	eax, 1
	mov	cl, bpl
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x18], rax
.label_424:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_427
	jmp	.label_376
.label_385:
	mov	qword ptr [r12 + 120], OFFSET FLAT:utf8_sb_map
.label_376:
	cmp	qword ptr [r12], 0
	je	.label_390
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_390
	mov	dword ptr [rsp + 0xcc], 0
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rcx, qword ptr [rsp + 0x18]
	and	ecx, 0x400000
	mov	qword ptr [rsp + 0x10], rcx
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0xb0], xmm0
	movdqa	xmmword ptr [rsp + 0xa0], xmm0
	movdqa	xmmword ptr [rsp + 0x90], xmm0
	movdqa	xmmword ptr [rsp + 0x80], xmm0
	movdqa	xmmword ptr [rsp + 0x70], xmm0
	movdqa	xmmword ptr [rsp + 0x60], xmm0
	movdqa	xmmword ptr [rsp + 0x50], xmm0
	movdqa	xmmword ptr [rsp + 0x40], xmm0
	movdqa	xmmword ptr [rsp + 0x30], xmm0
	mov	qword ptr [rsp + 0xc0], 0
	mov	qword ptr [rsp + 0x30], r14
	mov	qword ptr [rsp + 0x88], r13
	mov	qword ptr [rsp + 0x80], r13
	mov	qword ptr [rsp + 0xa8], rbx
	mov	rax, rcx
	shr	rax, 0x16
	mov	byte ptr [rsp + 0xb8], al
	mov	rax, rcx
	or	rax, rbx
	setne	bpl
	setne	byte ptr [rsp + 0xbb]
	mov	edx, dword ptr [r12 + 0xb4]
	mov	dword ptr [rsp + 0xc0], edx
	mov	al, byte ptr [r12 + 0xb0]
	shr	al, 2
	and	al, 1
	mov	byte ptr [rsp + 0xb9], al
	mov	rcx, qword ptr [r12 + 0xb0]
	mov	al, cl
	shr	al, 3
	and	al, 1
	mov	byte ptr [rsp + 0xba], al
	mov	qword ptr [rsp + 0x98], r13
	mov	qword ptr [rsp + 0x90], r13
	xor	eax, eax
	test	r13, r13
	jle	.label_431
	cmp	edx, 2
	jl	.label_468
	mov	qword ptr [rsp + 0x28], r15
	mov	r15d, 0xc
	mov	rax, qword ptr [rsp + 0x20]
	movabs	rcx, 0x1fffffffffffffff
	cmp	rax, rcx
	ja	.label_339
	lea	rsi, [rax*4]
	xor	edi, edi
	call	realloc
	test	rax, rax
	je	.label_339
	mov	qword ptr [rsp + 0x40], rax
	mov	r15, qword ptr [rsp + 0x28]
.label_468:
	xor	eax, eax
	test	bpl, bpl
	je	.label_478
	mov	qword ptr [rsp + 0x28], r15
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x20]
	call	realloc
	mov	r15d, 0xc
	test	rax, rax
	je	.label_339
	mov	qword ptr [rsp + 0x38], rax
	mov	r15, qword ptr [rsp + 0x28]
.label_478:
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x70], rcx
	mov	ecx, dword ptr [r12 + 0xb4]
	jmp	.label_482
.label_390:
	mov	dword ptr [rsp + 0xcc], 0xc
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
	mov	eax, 0xc
	jmp	.label_354
.label_431:
	shr	rcx, 0x20
	xor	edx, edx
	mov	qword ptr [rsp + 0x20], rdx
.label_482:
	test	bpl, bpl
	cmove	rax, r14
	mov	qword ptr [rsp + 0x38], rax
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_488
	cmp	ecx, 2
	jl	.label_334
	mov	qword ptr [rsp + 0x28], r15
	lea	rdi, [rsp + 0x30]
	call	build_wcs_upper_buffer
	mov	r15d, eax
	test	r15d, r15d
	jne	.label_339
	lea	r14, [rsp + 0x30]
.label_384:
	cmp	qword ptr [rsp + 0x68], r13
	jge	.label_344
	mov	rbp, qword ptr [rsp + 0x70]
	movsxd	rax, dword ptr [r12 + 0xb4]
	add	rax, qword ptr [rsp + 0x60]
	cmp	rbp, rax
	jg	.label_344
	lea	rbx, [rbp + rbp]
	cmp	dword ptr [rsp + 0xc0], 2
	jl	.label_352
	mov	r15d, 0xc
	movabs	rax, 0x1fffffffffffffff
	cmp	rbx, rax
	ja	.label_339
	mov	rdi, qword ptr [rsp + 0x40]
	lea	rsi, [rbp*8]
	call	realloc
	test	rax, rax
	je	.label_339
	mov	qword ptr [rsp + 0x40], rax
	mov	rdi, qword ptr [rsp + 0x48]
	test	rdi, rdi
	je	.label_352
	shl	rbp, 4
	mov	rsi, rbp
	call	realloc
	test	rax, rax
	je	.label_339
	mov	qword ptr [rsp + 0x48], rax
.label_352:
	cmp	byte ptr [rsp + 0xbb], 0
	je	.label_349
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, rbx
	call	realloc
	mov	r15d, 0xc
	test	rax, rax
	je	.label_339
	mov	qword ptr [rsp + 0x38], rax
.label_349:
	mov	qword ptr [rsp + 0x70], rbx
	mov	rdi, r14
	call	build_wcs_upper_buffer
	mov	r15d, eax
	test	r15d, r15d
	je	.label_384
.label_339:
	mov	dword ptr [rsp + 0xcc], r15d
	jmp	.label_336
.label_488:
	cmp	ecx, 2
	jl	.label_389
	mov	qword ptr [rsp + 0x28], r15
	lea	rdi, [rsp + 0x30]
	call	build_wcs_buffer
	jmp	.label_344
.label_334:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	rax, r13
	cmovg	rax, r13
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	jle	.label_391
	xor	eax, eax
	mov	ebp, 1
	jmp	.label_397
	nop	word ptr cs:[rax + rax]
.label_399:
	mov	r14, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbx, qword ptr [rsp + 0xa8]
	inc	rbp
.label_397:
	add	r14, rax
	mov	al, byte ptr [rbp + r14 - 1]
	movzx	ecx, al
	test	rbx, rbx
	jne	.label_401
.label_408:
	movzx	ebx, al
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	ja	.label_443
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_443:
	mov	rax, qword ptr [rsp + 0x38]
	mov	byte ptr [rax + rbp - 1], bl
	cmp	rbp, r13
	jl	.label_399
	jmp	.label_407
.label_401:
	mov	al, byte ptr [rbx + rcx]
	jmp	.label_408
.label_389:
	test	rbx, rbx
	je	.label_411
	mov	rcx, qword ptr [rsp + 0x20]
	cmp	rcx, r13
	cmovg	rcx, r13
	mov	rdi, rcx
	xor	ecx, ecx
	test	rdi, rdi
	jle	.label_413
	movzx	ecx, byte ptr [r14]
	mov	cl, byte ptr [rbx + rcx]
	mov	byte ptr [rax], cl
	mov	ecx, 1
	cmp	rdi, 2
	jl	.label_413
	nop	dword ptr [rax + rax]
.label_422:
	mov	rax, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x38]
	add	rax, qword ptr [rsp + 0x58]
	movzx	eax, byte ptr [rcx + rax]
	mov	rsi, qword ptr [rsp + 0xa8]
	mov	al, byte ptr [rsi + rax]
	mov	byte ptr [rdx + rcx], al
	inc	rcx
	cmp	rcx, rdi
	jl	.label_422
	mov	rcx, rdi
.label_413:
	mov	qword ptr [rsp + 0x28], r15
	mov	qword ptr [rsp + 0x60], rcx
	mov	qword ptr [rsp + 0x68], rcx
	jmp	.label_344
.label_463:
	mov	esi, 0xe8
	mov	rdi, r12
	call	realloc
	mov	r12, rax
	mov	eax, 0xc
	test	r12, r12
	je	.label_354
	mov	qword ptr [r15 + 8], 0xe8
	mov	qword ptr [r15], r12
	jmp	.label_433
.label_407:
	mov	rax, r13
.label_391:
	mov	qword ptr [rsp + 0x28], r15
	jmp	.label_434
.label_411:
	mov	qword ptr [rsp + 0x28], r15
	mov	rax, qword ptr [rsp + 0x20]
.label_434:
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x68], rax
.label_344:
	mov	dword ptr [rsp + 0xcc], 0
	mov	r15, qword ptr [rsp + 0x28]
	mov	qword ptr [r15 + 0x30], 0
	mov	rbx, qword ptr [r15]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx + 0xd8], rbp
	mov	rdx, rbp
	or	rdx, 0x800000
	lea	r14, [rsp + 0xd0]
	lea	r13, [rsp + 0x30]
	mov	rdi, r14
	mov	rsi, r13
	call	peek_token
	cdqe	
	add	qword ptr [rsp + 0x78], rax
	lea	r9, [rsp + 0xcc]
	xor	r8d, r8d
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	mov	rcx, rbp
	call	parse_reg_exp
	mov	r14, rax
	test	r14, r14
	jne	.label_453
	mov	eax, dword ptr [rsp + 0xcc]
	test	eax, eax
	jne	.label_454
.label_453:
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	je	.label_456
	mov	rax, qword ptr [rbx + 0x70]
.label_484:
	lea	ecx, [rbp + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 2
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_483:
	test	r14, r14
	mov	rcx, rbp
	je	.label_469
	mov	ecx, dword ptr [rbx + 0x80]
	cmp	ecx, 0xf
	je	.label_470
	mov	rax, qword ptr [rbx + 0x70]
.label_341:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbx + 0x80], edx
	movsxd	rdx, ecx
	shl	rdx, 6
	lea	rcx, [rax + rdx + 8]
	mov	qword ptr [rax + rdx + 8], 0
	mov	qword ptr [rax + rdx + 0x10], r14
	mov	qword ptr [rax + rdx + 0x18], rbp
	mov	dword ptr [rax + rdx + 0x38], 0x10
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rdx + 0x20], xmm0
	mov	qword ptr [rax + rdx + 0x40], -1
	mov	qword ptr [r14], rcx
	test	rbp, rbp
	je	.label_338
	mov	qword ptr [rbp], rcx
.label_469:
	test	rbp, rbp
	je	.label_338
	test	rcx, rcx
	je	.label_338
	mov	qword ptr [r12 + 0x68], rcx
	mov	r15, qword ptr [r15]
	mov	rdi, qword ptr [r15 + 8]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r15 + 0x18], rax
	mov	rdi, qword ptr [r15 + 8]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r15 + 0x20], rax
	mov	rax, qword ptr [r15 + 8]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [r15 + 0x28], rax
	mov	rax, qword ptr [r15 + 8]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [r15 + 0x30], rax
	cmp	qword ptr [r15 + 0x18], 0
	je	.label_337
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_371
	test	rax, rax
	je	.label_340
	mov	rax, qword ptr [r15 + 0x28]
	test	rax, rax
	je	.label_343
	mov	rax, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rax + 0x30]
	lea	rdi, [rbx*8]
	call	malloc
	mov	qword ptr [r15 + 0xe0], rax
	test	rax, rax
	je	.label_351
	test	rbx, rbx
	je	.label_355
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	cmp	rcx, 1
	mov	edx, 1
	cmova	rdx, rcx
	xor	edi, edi
	cmp	rdx, 4
	jb	.label_357
	xor	edi, edi
	mov	rsi, rdx
	and	rsi, 0xfffffffffffffffc
	je	.label_357
	cmp	rcx, 1
	mov	ebp, 1
	cmova	rbp, rcx
	add	rbp, -4
	mov	rbx, rbp
	shr	rbx, 2
	xor	edi, edi
	bt	rbp, 2
	jb	.label_369
	mov	edi, 1
	movq	xmm0, rdi
	pslldq	xmm0, 8
	movdqu	xmmword ptr [rax], xmm0
	movdqa	xmm0, xmmword ptr [rip + label_361]
	movdqu	xmmword ptr [rax + 0x10], xmm0
	mov	edi, 4
.label_369:
	test	rbx, rbx
	je	.label_381
	mov	ebp, 1
	movq	xmm0, rbp
	pslldq	xmm0, 8
	movdqa	xmm1, xmmword ptr [rip + label_361]
.label_388:
	movq	xmm2, rdi
	pshufd	xmm2, xmm2, 0x44
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	paddq	xmm2, xmm1
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	lea	rbp, [rdi + 4]
	movq	xmm2, rbp
	pshufd	xmm2, xmm2, 0x44
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	paddq	xmm2, xmm1
	movdqu	xmmword ptr [rax + rdi*8 + 0x20], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x30], xmm2
	add	rdi, 8
	cmp	rdi, rsi
	jne	.label_388
.label_381:
	cmp	rdx, rsi
	mov	rdi, rsi
	je	.label_355
	nop	dword ptr [rax + rax]
.label_357:
	mov	qword ptr [rax + rdi*8], rdi
	inc	rdi
	cmp	rdi, rcx
	jb	.label_357
.label_355:
	mov	rbx, qword ptr [r15 + 0x68]
	mov	rdi, r15
	mov	rsi, rbx
	call	optimize_subexps
	test	eax, eax
	jne	.label_396
.label_414:
	mov	rbp, qword ptr [rbx + 8]
	test	rbp, rbp
	mov	eax, 0
	jne	.label_403
	nop	dword ptr [rax]
.label_409:
	mov	rcx, rax
	mov	rax, rbx
	mov	rbp, qword ptr [rax + 0x10]
	cmp	rbp, rcx
	je	.label_405
	test	rbp, rbp
	jne	.label_403
.label_405:
	mov	rbx, qword ptr [rax]
	test	rbx, rbx
	jne	.label_409
	jmp	.label_396
.label_403:
	mov	rdi, r15
	mov	rsi, rbp
	call	optimize_subexps
	test	eax, eax
	mov	rbx, rbp
	je	.label_414
.label_396:
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax + 0x30]
	xor	ecx, ecx
	test	rax, rax
	je	.label_417
	mov	rdx, qword ptr [r15 + 0xe0]
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_474:
	cmp	rcx, qword ptr [rdx + rcx*8]
	jne	.label_417
	inc	rcx
	cmp	rcx, rax
	jb	.label_474
.label_417:
	lea	r14, [r15 + 0x68]
	cmp	rcx, rax
	jne	.label_426
	mov	rdi, qword ptr [r15 + 0xe0]
	call	free
	mov	qword ptr [r15 + 0xe0], 0
	jmp	.label_426
.label_337:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_336
.label_371:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_336
.label_351:
	lea	r14, [r15 + 0x68]
.label_426:
	mov	rax, qword ptr [r14]
	lea	rbx, [rsp + 0xd0]
	nop	word ptr cs:[rax + rax]
.label_435:
	mov	rbp, rax
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	jne	.label_435
	mov	rax, qword ptr [rbp + 0x10]
	test	rax, rax
	mov	edx, 0
	jne	.label_435
	jmp	.label_436
	nop	dword ptr [rax]
.label_460:
	mov	rdx, qword ptr [rcx + 8]
	mov	rbp, rcx
.label_436:
	mov	dword ptr [rsp + 0xd0], 0
	test	rdx, rdx
	je	.label_439
	movzx	eax, byte ptr [rdx + 0x30]
	cmp	eax, 0x11
	jne	.label_439
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x28]
	call	lower_subexp
	mov	qword ptr [rbp + 8], rax
	test	rax, rax
	je	.label_439
	mov	qword ptr [rax], rbp
	nop	dword ptr [rax]
.label_439:
	mov	rdx, qword ptr [rbp + 0x10]
	test	rdx, rdx
	je	.label_445
	movzx	eax, byte ptr [rdx + 0x30]
	cmp	eax, 0x11
	jne	.label_445
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x28]
	call	lower_subexp
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_445
	mov	qword ptr [rax], rbp
	nop	dword ptr [rax + rax]
.label_445:
	mov	eax, dword ptr [rsp + 0xd0]
	test	eax, eax
	jne	.label_393
	mov	rcx, qword ptr [rbp]
	test	rcx, rcx
	je	.label_458
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbp
	je	.label_460
	test	rax, rax
	je	.label_460
	jmp	.label_435
.label_458:
	mov	rax, qword ptr [r14]
	mov	ebx, 0xfffc00ff
.label_465:
	mov	rbp, rax
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	jne	.label_465
	mov	rax, qword ptr [rbp + 0x10]
	test	rax, rax
	jne	.label_465
.label_419:
	movzx	eax, byte ptr [rbp + 0x30]
	cmp	eax, 0x10
	jne	.label_467
	mov	rax, qword ptr [rbp + 8]
	mov	rcx, qword ptr [rax + 0x18]
	mov	qword ptr [rbp + 0x18], rcx
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp + 0x38], rax
	jmp	.label_348
.label_467:
	mov	qword ptr [rbp + 0x18], rbp
	mov	rsi, qword ptr [rbp + 0x28]
	mov	rdx, qword ptr [rbp + 0x30]
	mov	rdi, r15
	call	re_dfa_add_node
	mov	qword ptr [rbp + 0x38], rax
	cmp	rax, -1
	je	.label_472
	movzx	ecx, byte ptr [rbp + 0x30]
	cmp	ecx, 0xc
	jne	.label_348
	mov	ecx, dword ptr [rbp + 0x28]
	mov	rdx, qword ptr [r15]
	shl	rax, 4
	shl	ecx, 8
	and	ecx, 0x3ff00
	mov	esi, dword ptr [rdx + rax + 8]
	and	esi, ebx
	or	esi, ecx
	mov	dword ptr [rdx + rax + 8], esi
.label_348:
	mov	rcx, qword ptr [rbp]
	test	rcx, rcx
	je	.label_481
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbp
	mov	rbp, rcx
	je	.label_419
	test	rax, rax
	mov	rbp, rcx
	je	.label_419
	jmp	.label_465
.label_456:
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_483
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_484
.label_481:
	mov	rbx, qword ptr [r14]
	movzx	eax, byte ptr [rbx + 0x30]
	cmp	eax, 0x10
	je	.label_487
	cmp	eax, 0xb
	jne	.label_490
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rax + 0x20], rbx
	jmp	.label_363
.label_472:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_336
.label_470:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_338
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	xor	ecx, ecx
	jmp	.label_341
.label_338:
	mov	dword ptr [rsp + 0xcc], 0xc
.label_454:
	mov	qword ptr [r12 + 0x68], 0
	jmp	.label_350
.label_487:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rcx + 0x18]
	mov	qword ptr [rax + 0x20], rdx
	jmp	.label_353
.label_490:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	je	.label_446
	mov	rcx, qword ptr [rbx + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_446:
	mov	rcx, qword ptr [rbx + 0x10]
	test	rcx, rcx
	je	.label_363
.label_353:
	mov	rdx, qword ptr [rbx + 0x20]
	mov	qword ptr [rcx + 0x20], rdx
.label_363:
	mov	rdx, rbx
	jmp	.label_367
.label_380:
	mov	rax, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rsi, qword ptr [rdx + 0x18]
	mov	qword ptr [rax + 0x20], rsi
	mov	rsi, qword ptr [rcx + 0x20]
	mov	qword ptr [rdx + 0x20], rsi
	mov	rdx, rcx
.label_367:
	xor	esi, esi
	test	rax, rax
	mov	rcx, rax
	jne	.label_373
	nop	
.label_377:
	mov	rax, rsi
	mov	rsi, rdx
	mov	rcx, qword ptr [rsi + 0x10]
	cmp	rcx, rax
	je	.label_375
	test	rcx, rcx
	jne	.label_373
.label_375:
	mov	rdx, qword ptr [rsi]
	test	rdx, rdx
	jne	.label_377
	jmp	.label_379
.label_373:
	movzx	eax, byte ptr [rcx + 0x30]
	cmp	eax, 0x10
	je	.label_380
	cmp	eax, 0xb
	jne	.label_383
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rax + 0x20], rcx
	mov	rdx, rcx
	jmp	.label_367
.label_383:
	mov	rax, qword ptr [rcx + 8]
	test	rax, rax
	je	.label_386
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rax + 0x20], rdx
.label_386:
	mov	rsi, qword ptr [rcx + 0x10]
	test	rsi, rsi
	mov	rdx, rcx
	je	.label_367
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rdx, rcx
	jmp	.label_367
.label_379:
	mov	rdi, r15
	mov	rsi, rbx
	call	link_nfa_nodes
	test	eax, eax
	jne	.label_393
.label_402:
	mov	rbp, qword ptr [rbx + 8]
	test	rbp, rbp
	mov	eax, 0
	jne	.label_395
	nop	word ptr cs:[rax + rax]
.label_400:
	mov	rcx, rax
	mov	rax, rbx
	mov	rbp, qword ptr [rax + 0x10]
	cmp	rbp, rcx
	je	.label_486
	test	rbp, rbp
	jne	.label_395
.label_486:
	mov	rbx, qword ptr [rax]
	test	rbx, rbx
	jne	.label_400
	jmp	.label_421
.label_395:
	mov	rdi, r15
	mov	rsi, rbp
	call	link_nfa_nodes
	test	eax, eax
	mov	rbx, rbp
	je	.label_402
	jmp	.label_393
.label_421:
	xor	eax, eax
	lea	r14, [rsp + 0xd0]
	xor	r13d, r13d
	jmp	.label_404
	nop	word ptr cs:[rax + rax]
.label_418:
	inc	rbp
	mov	rax, rbp
.label_404:
	cmp	rax, qword ptr [r15 + 0x10]
	jne	.label_410
	xor	ebp, ebp
	test	r13b, 1
	mov	r13d, 0
	jne	.label_412
	jmp	.label_415
.label_410:
	mov	rbp, rax
.label_412:
	mov	rax, qword ptr [r15 + 0x30]
	lea	rbx, [rbp + rbp*2]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	jne	.label_418
	mov	ecx, 1
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbp
	call	calc_eclosure_iter
	test	eax, eax
	jne	.label_393
	mov	rax, qword ptr [r15 + 0x30]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	jne	.label_418
	mov	rdi, qword ptr [rsp + 0xe0]
	call	free
	mov	r13b, 1
	jmp	.label_418
.label_393:
	mov	dword ptr [rsp + 0xcc], eax
.label_336:
	mov	r15, qword ptr [rsp + 0x28]
.label_350:
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_428
.label_430:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_430
.label_428:
	mov	qword ptr [rbx + 0x70], 0
	mov	dword ptr [rbx + 0x80], 0xf
	mov	qword ptr [rbx + 0x68], 0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	mov	rdi, qword ptr [rsp + 0x48]
	call	free
	cmp	byte ptr [rsp + 0xbb], 0
	je	.label_438
	mov	rdi, qword ptr [rsp + 0x38]
	call	free
.label_438:
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
.label_370:
	mov	eax, dword ptr [rsp + 0xcc]
.label_354:
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_415:
	mov	rcx, qword ptr [rsp + 0x28]
	test	byte ptr [rcx + 0x38], 0x10
	jne	.label_444
	mov	rcx, qword ptr [rsp + 0x28]
	cmp	qword ptr [rcx + 0x30], 0
	je	.label_444
	test	byte ptr [r15 + 0xb0], 1
	jne	.label_450
.label_444:
	cmp	qword ptr [r15 + 0x98], 0
	je	.label_452
.label_450:
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [r15 + 0x38], rax
	test	rax, rax
	je	.label_449
	cmp	qword ptr [r15 + 0x10], 0
	je	.label_452
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [r15 + 0x10]
	mov	ecx, 1
	mov	edx, 0x18
	cmp	rax, 1
	jbe	.label_461
.label_466:
	mov	rax, qword ptr [r15 + 0x38]
	movdqu	xmmword ptr [rax + rdx], xmm0
	mov	qword ptr [rax + rdx + 0x10], 0
	inc	rcx
	mov	rax, qword ptr [r15 + 0x10]
	add	rdx, 0x18
	cmp	rcx, rax
	jb	.label_466
.label_461:
	test	rax, rax
	je	.label_452
	mov	r8, qword ptr [r15 + 0x30]
	xor	r10d, r10d
.label_335:
	mov	qword ptr [rsp + 0x18], r10
	lea	r9, [r10 + r10*2]
	mov	qword ptr [rsp + 0x20], r9
	cmp	qword ptr [r8 + r9*8 + 8], 0
	jle	.label_471
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	mov	qword ptr [rsp + 8], rdi
	xor	ebx, ebx
.label_480:
	mov	r13, qword ptr [r15 + 0x38]
	mov	rax, qword ptr [rdi + rbx*8]
	lea	rbp, [rax + rax*2]
	mov	rax, qword ptr [r13 + rbp*8]
	lea	r14, [r13 + rbp*8 + 8]
	mov	rdx, qword ptr [r13 + rbp*8 + 8]
	cmp	rax, rdx
	jne	.label_479
	lea	rcx, [r13 + rbp*8]
	lea	rdx, [rax + rax + 2]
	lea	rax, [rax + rax]
	mov	qword ptr [rcx], rdx
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_457
	lea	rcx, [r13 + rbp*8 + 0x10]
	mov	qword ptr [rcx], rax
	mov	rdx, qword ptr [r14]
	mov	r8, qword ptr [r15 + 0x30]
	mov	r10, qword ptr [rsp + 0x18]
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_447
.label_479:
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_447:
	lea	rsi, [rdx + 1]
	mov	qword ptr [r14], rsi
	mov	qword ptr [rax + rdx*8], r10
	inc	rbx
	cmp	rbx, qword ptr [r8 + r9*8 + 8]
	jl	.label_480
	mov	rax, qword ptr [r15 + 0x10]
.label_471:
	inc	r10
	cmp	r10, rax
	jb	.label_335
.label_452:
	mov	dword ptr [rsp + 0xcc], 0
	cmp	qword ptr [rsp + 0x10], 0
	jne	.label_342
	mov	al, byte ptr [r12 + 0xb0]
	mov	cl, al
	and	cl, 4
	je	.label_342
	mov	rcx, qword ptr [rsp + 0x28]
	cmp	qword ptr [rcx + 0x28], 0
	jne	.label_342
	mov	rdx, qword ptr [r12 + 0x10]
	test	rdx, rdx
	je	.label_423
	mov	rbx, qword ptr [r12]
	xor	r9d, r9d
	movabs	r8, 0x1000000010001
	mov	rcx, rbx
	xor	r10d, r10d
	xor	ebp, ebp
.label_378:
	movzx	esi, byte ptr [rcx + 8]
	dec	esi
	cmp	esi, 0xb
	ja	.label_359
	jmp	qword ptr [(rsi * 8) + label_364]
.label_2292:
	mov	sil, 1
	cmp	byte ptr [rcx], 0
	js	.label_366
	mov	sil, r10b
.label_366:
	mov	r10b, sil
	jmp	.label_368
.label_2293:
	mov	rsi, qword ptr [rcx]
	cmp	qword ptr [rsi + 0x10], 0
	jne	.label_342
	cmp	qword ptr [rsi + 0x18], 0
	je	.label_368
	jmp	.label_342
.label_2294:
	mov	r9b, 1
	jmp	.label_368
.label_2295:
	mov	esi, dword ptr [rcx]
	lea	edi, [rsi - 0x10]
	cmp	edi, 0x30
	ja	.label_374
	bt	r8, rdi
	jb	.label_368
.label_374:
	cmp	esi, 0x80
	jne	.label_342
.label_368:
	inc	rbp
	add	rcx, 0x10
	cmp	rbp, rdx
	jb	.label_378
	mov	cl, r9b
	and	cl, 1
	or	r10b, r9b
	xor	edx, edx
	mov	esi, 8
	test	r10b, 1
	je	.label_382
	jmp	.label_387
.label_340:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_336
.label_343:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_336
.label_346:
	add	rsi, 0x10
	mov	rbx, qword ptr [r12]
.label_387:
	mov	eax, dword ptr [rbx + rsi]
	movzx	edi, al
	cmp	edi, 5
	je	.label_455
	cmp	edi, 1
	jne	.label_394
	cmp	byte ptr [rbx + rsi - 8], 0
	jns	.label_394
	and	eax, 0xffdfffff
	jmp	.label_476
.label_455:
	and	eax, 0xffffff00
	or	eax, 7
.label_476:
	mov	dword ptr [rbx + rsi], eax
.label_394:
	inc	rdx
	cmp	rdx, qword ptr [r12 + 0x10]
	jb	.label_346
	mov	al, byte ptr [r12 + 0xb0]
	jmp	.label_382
.label_457:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_336
.label_423:
	xor	ecx, ecx
.label_382:
	mov	dword ptr [r12 + 0xb4], 1
	cmp	qword ptr [r12 + 0x98], 0
	setg	dl
	or	dl, cl
	add	dl, dl
	and	al, 0xf9
	or	al, dl
	mov	byte ptr [r12 + 0xb0], al
.label_342:
	mov	rax, qword ptr [r12 + 0x68]
	mov	rax, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [r12 + 0x90], rax
	mov	rbx, qword ptr [r12 + 0x30]
	lea	r13, [rax + rax*2]
	mov	r15, qword ptr [rbx + r13*8 + 8]
	mov	qword ptr [rsp + 0xd8], r15
	mov	r14, qword ptr [rbx + r13*8 + 8]
	test	r14, r14
	jle	.label_489
	mov	qword ptr [rsp + 0xd0], r15
	lea	rdi, [r15*8]
	call	malloc
	mov	rbp, rax
	mov	qword ptr [rsp + 0xe0], rbp
	test	rbp, rbp
	je	.label_425
	mov	rsi, qword ptr [rbx + r13*8 + 0x10]
	shl	r14, 3
	mov	rdi, rbp
	mov	rdx, r14
	call	memcpy
	mov	dword ptr [rsp + 0xf4], 0
	test	r15, r15
	jle	.label_429
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	jle	.label_429
	xor	eax, eax
	lea	r14, [rsp + 0xd0]
	jmp	.label_432
.label_464:
	mov	rbp, qword ptr [rsp + 0xe0]
.label_432:
	mov	r8, qword ptr [rbp + rax*8]
	mov	rdx, qword ptr [r12]
	mov	rsi, r8
	shl	rsi, 4
	movzx	ecx, byte ptr [rdx + rsi + 8]
	cmp	ecx, 4
	jne	.label_420
	test	r15, r15
	mov	edi, 0
	jle	.label_437
	add	rsi, rdx
	xor	edi, edi
.label_441:
	mov	rcx, qword ptr [rbp + rdi*8]
	shl	rcx, 4
	movzx	ebx, byte ptr [rdx + rcx + 8]
	cmp	ebx, 9
	jne	.label_440
	mov	rcx, qword ptr [rdx + rcx]
	cmp	rcx, qword ptr [rsi]
	je	.label_437
.label_440:
	inc	rdi
	cmp	rdi, r15
	jl	.label_441
.label_437:
	cmp	rdi, r15
	je	.label_420
	mov	rcx, qword ptr [r12 + 0x28]
	lea	rdx, [r8 + r8*2]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	mov	rcx, qword ptr [rcx]
	test	r15, r15
	jle	.label_442
	mov	rsi, r15
	dec	rsi
	mov	edx, 0
	je	.label_448
.label_451:
	lea	rdi, [rdx + rsi]
	shr	rdi, 1
	cmp	qword ptr [rbp + rdi*8], rcx
	lea	rbx, [rdi + 1]
	cmovl	rdx, rbx
	cmovge	rsi, rdi
	cmp	rdx, rsi
	jb	.label_451
.label_448:
	cmp	rdx, -1
	je	.label_442
	cmp	qword ptr [rbp + rdx*8], rcx
	je	.label_420
.label_442:
	mov	rax, qword ptr [r12 + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r14
	call	re_node_set_merge
	test	eax, eax
	jne	.label_372
	mov	r15, qword ptr [rsp + 0xd8]
	xor	eax, eax
.label_420:
	inc	rax
	cmp	rax, r15
	jl	.label_464
	jmp	.label_429
.label_489:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0xd0], xmm0
	mov	qword ptr [rsp + 0xe0], 0
	mov	dword ptr [rsp + 0xf4], 0
.label_429:
	lea	rdi, [rsp + 0xf4]
	lea	rdx, [rsp + 0xd0]
	xor	ecx, ecx
	mov	rsi, r12
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x48], rax
	test	rax, rax
	je	.label_473
	cmp	byte ptr [rax + 0x68], 0
	js	.label_475
	mov	qword ptr [r12 + 0x60], rax
	mov	qword ptr [r12 + 0x58], rax
	mov	qword ptr [r12 + 0x50], rax
	jmp	.label_477
.label_475:
	lea	rbx, [rsp + 0xf4]
	lea	rbp, [rsp + 0xd0]
	mov	ecx, 1
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x50], rax
	mov	ecx, 2
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x58], rax
	mov	ecx, 6
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x60], rax
	cmp	qword ptr [r12 + 0x50], 0
	je	.label_485
	test	rax, rax
	je	.label_485
	mov	rax, qword ptr [r12 + 0x58]
	test	rax, rax
	je	.label_485
.label_477:
	mov	rdi, qword ptr [rsp + 0xe0]
	call	free
	xor	eax, eax
.label_372:
	mov	dword ptr [rsp + 0xcc], eax
	mov	r14, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [r14]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_358
.label_345:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_345
.label_358:
	mov	qword ptr [rbx + 0x70], 0
	mov	dword ptr [rbx + 0x80], 0xf
	mov	qword ptr [rbx + 0x68], 0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	mov	rdi, qword ptr [rsp + 0x48]
	call	free
	cmp	byte ptr [rsp + 0xbb], 0
	je	.label_360
	mov	rdi, qword ptr [rsp + 0x38]
	call	free
.label_360:
	xor	eax, eax
	cmp	dword ptr [rsp + 0xcc], 0
	je	.label_354
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	jmp	.label_370
.label_485:
	mov	eax, dword ptr [rsp + 0xf4]
	jmp	.label_372
.label_449:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_336
.label_473:
	mov	eax, dword ptr [rsp + 0xf4]
	jmp	.label_372
.label_425:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0xd0], xmm0
	mov	dword ptr [rsp + 0xf4], 0xc
	mov	eax, 0xc
	jmp	.label_372
.label_359:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d10
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	mov	rax, qword ptr [rip + rpl_re_syntax_options]
	mov	qword ptr [rip + rpl_re_syntax_options],  rdi
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406d20

	.globl rpl_re_compile_fastmap
	.type rpl_re_compile_fastmap, @function
rpl_re_compile_fastmap:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	r15, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 0x20]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0xf0], xmm0
	movups	xmmword ptr [rbx + 0xe0], xmm0
	movups	xmmword ptr [rbx + 0xd0], xmm0
	movups	xmmword ptr [rbx + 0xc0], xmm0
	movups	xmmword ptr [rbx + 0xb0], xmm0
	movups	xmmword ptr [rbx + 0xa0], xmm0
	movups	xmmword ptr [rbx + 0x90], xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	rsi, qword ptr [r15 + 0x48]
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
	mov	rsi, qword ptr [r15 + 0x50]
	cmp	rax, rsi
	je	.label_492
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
.label_492:
	mov	rsi, qword ptr [r15 + 0x58]
	cmp	rax, rsi
	je	.label_491
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
.label_491:
	mov	rsi, qword ptr [r15 + 0x60]
	cmp	rax, rsi
	je	.label_493
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_493:
	or	byte ptr [r14 + 0x38], 8
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406df0

	.globl re_compile_fastmap_iter
	.type re_compile_fastmap_iter, @function
re_compile_fastmap_iter:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x148
	mov	r15, rdx
	mov	qword ptr [rsp + 0x18], rsi
	mov	r13, rdi
	mov	qword ptr [rsp + 0x10], r13
	mov	rax, qword ptr [r13]
	cmp	dword ptr [rax + 0xb4], 1
	jne	.label_521
	mov	qword ptr [rsp + 0x28], rax
	mov	r14b, byte ptr [r13 + 0x1a]
	and	r14b, 0x40
	shr	r14b, 6
	jmp	.label_501
.label_521:
	mov	qword ptr [rsp + 0x28], rax
	xor	r14d, r14d
.label_501:
	cmp	qword ptr [rsi + 0x10], 0
	jle	.label_504
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_516:
	mov	rax, qword ptr [rsi + 0x18]
	mov	rbp, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	r12, rbp
	shl	r12, 4
	lea	rcx, [rax + r12]
	movzx	ebx, byte ptr [rax + r12 + 8]
	cmp	ebx, 1
	je	.label_530
	mov	qword ptr [rsp + 0x20], rdx
	cmp	ebx, 6
	je	.label_514
	cmp	ebx, 3
	jne	.label_518
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_528:
	bt	rbp, rbx
	jae	.label_520
	mov	byte ptr [r15 + rbx], 1
	test	r14b, r14b
	je	.label_520
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x180
	jae	.label_502
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4]
	jmp	.label_525
.label_502:
	mov	eax, ebx
.label_525:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_520:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_528
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax + 8]
	xor	ebx, ebx
	nop	
.label_503:
	bt	rbp, rbx
	jae	.label_531
	mov	byte ptr [r15 + rbx + 0x40], 1
	test	r14b, r14b
	je	.label_531
	lea	eax, [rbx + 0xc0]
	cmp	eax, 0x180
	jae	.label_495
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x100]
	jmp	.label_498
.label_495:
	lea	rax, [rbx + 0x40]
.label_498:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_531:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_503
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax + 0x10]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_508:
	bt	rbp, rbx
	jae	.label_506
	mov	byte ptr [r15 + rbx + 0x80], 1
	test	r14b, r14b
	je	.label_506
	lea	eax, [rbx + 0x100]
	cmp	eax, 0x180
	jae	.label_509
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x200]
	jmp	.label_527
.label_509:
	lea	rax, [rbx + 0x80]
.label_527:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_506:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_508
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax + 0x18]
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_523:
	bt	rbp, rbx
	jae	.label_513
	mov	byte ptr [r15 + rbx + 0xc0], 1
	test	r14b, r14b
	je	.label_513
	lea	eax, [rbx + 0x140]
	cmp	eax, 0x180
	jae	.label_526
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x300]
	jmp	.label_529
.label_526:
	lea	rax, [rbx + 0xc0]
.label_529:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_513:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_523
	jmp	.label_507
	nop	
.label_514:
	mov	r12, qword ptr [rcx]
	mov	rax, qword ptr [rsp + 0x28]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_494
	cmp	qword ptr [r12 + 0x48], 0
	jne	.label_499
	test	byte ptr [r12 + 0x20], 1
	jne	.label_499
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_494
.label_499:
	mov	byte ptr [rsp + 0x138], 0
	lea	rbx, [rsp + 0x30]
	lea	rbp, [rsp + 0x138]
	nop	word ptr cs:[rax + rax]
.label_515:
	mov	qword ptr [rsp + 0x30], 0
	xor	edi, edi
	mov	edx, 1
	mov	rsi, rbp
	mov	rcx, rbx
	call	rpl_mbrtowc
	movzx	ecx, byte ptr [rsp + 0x138]
	cmp	rax, -2
	jne	.label_510
	mov	byte ptr [r15 + rcx], 1
.label_510:
	inc	cl
	mov	byte ptr [rsp + 0x138], cl
	jne	.label_515
	jmp	.label_507
	nop	
.label_530:
	mov	qword ptr [rsp + 0x20], rdx
	movzx	ebx, byte ptr [rcx]
	mov	byte ptr [r15 + rbx], 1
	test	r14b, r14b
	je	.label_519
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	ja	.label_522
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_522:
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
.label_519:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_507
	mov	rax, qword ptr [rsp + 0x28]
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_507
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rcx]
	mov	al, byte ptr [rax + r12]
	mov	byte ptr [rsp + 0x30], al
	mov	rdx, rcx
	inc	rbp
	cmp	rbp, qword ptr [rdx + 0x10]
	lea	r13, [rsp + 0x31]
	mov	esi, 0x2000ff
	jae	.label_497
	add	r12, 0x18
	lea	r13, [rsp + 0x31]
	nop	
.label_511:
	mov	rax, qword ptr [rdx]
	mov	ecx, dword ptr [rax + r12]
	and	ecx, esi
	cmp	ecx, 0x200001
	jne	.label_497
	mov	al, byte ptr [rax + r12 - 8]
	mov	byte ptr [r13], al
	inc	r13
	inc	rbp
	add	r12, 0x10
	cmp	rbp, qword ptr [rdx + 0x10]
	jb	.label_511
.label_497:
	mov	qword ptr [rsp + 0x28], rdx
	mov	qword ptr [rsp + 0x138], 0
	lea	rbp, [rsp + 0x30]
	sub	r13, rbp
	lea	rdi, [rsp + 0x144]
	mov	rsi, rbp
	mov	rdx, r13
	lea	rbx, [rsp + 0x138]
	mov	rcx, rbx
	call	rpl_mbrtowc
	cmp	rax, r13
	jne	.label_512
	mov	edi, dword ptr [rsp + 0x144]
	call	towlower
	mov	rdi, rbp
	mov	esi, eax
	mov	rdx, rbx
	call	wcrtomb
	cmp	rax, -1
	je	.label_512
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
.label_512:
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_507
	nop	dword ptr [rax]
.label_518:
	cmp	ebx, 2
	je	.label_524
	mov	eax, ebx
	or	eax, 2
	cmp	eax, 7
	jne	.label_507
	jmp	.label_524
.label_494:
	cmp	qword ptr [r12 + 0x28], 0
	jle	.label_507
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_517:
	mov	qword ptr [rsp + 0x138], 0
	mov	rax, qword ptr [r12]
	mov	esi, dword ptr [rax + rbp*4]
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 0x138]
	call	wcrtomb
	cmp	rax, -1
	je	.label_496
	movzx	ebx, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rbx], 1
	test	r14b, r14b
	je	.label_496
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	ja	.label_500
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_500:
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
.label_496:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_505
	mov	rax, qword ptr [rsp + 0x28]
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_505
	mov	rax, qword ptr [r12]
	mov	edi, dword ptr [rax + rbp*4]
	call	towlower
	lea	rdi, [rsp + 0x30]
	mov	esi, eax
	lea	rdx, [rsp + 0x138]
	call	wcrtomb
	cmp	rax, -1
	je	.label_505
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
	nop	
.label_505:
	inc	rbp
	cmp	rbp, qword ptr [r12 + 0x28]
	jl	.label_517
	nop	
.label_507:
	mov	rdx, qword ptr [rsp + 0x20]
	inc	rdx
	mov	rsi, qword ptr [rsp + 0x18]
	cmp	rdx, qword ptr [rsi + 0x10]
	jl	.label_516
.label_504:
	add	rsp, 0x148
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_524:
	mov	esi, 1
	mov	edx, 0x100
	mov	rdi, r15
	call	memset
	cmp	ebx, 2
	jne	.label_504
	or	byte ptr [r13 + 0x38], 1
	jmp	.label_504
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4072e0
	.globl rpl_regcomp
	.type rpl_regcomp, @function
rpl_regcomp:

	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	mov	r14, rsi
	mov	r15, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15], xmm0
	mov	qword ptr [r15 + 0x10], 0
	mov	edi, 0x100
	call	malloc
	mov	qword ptr [r15 + 0x20], rax
	mov	ebx, 0xc
	test	rax, rax
	je	.label_532
	test	bpl, 1
	mov	eax, 0x3b2fc
	mov	ecx, 0x10102c6
	cmovne	rcx, rax
	mov	ebx, ebp
	and	ebx, 2
	shl	rbx, 0x15
	or	rbx, rcx
	test	bpl, 4
	jne	.label_534
	mov	al, byte ptr [r15 + 0x38]
	and	al, 0x7f
	jmp	.label_535
.label_534:
	and	ebx, 0x143b2be
	or	rbx, 0x100
	mov	al, byte ptr [r15 + 0x38]
	or	al, 0x80
.label_535:
	mov	byte ptr [r15 + 0x38], al
	add	ebp, ebp
	and	bpl, 0x10
	and	al, 0xef
	or	al, bpl
	mov	byte ptr [r15 + 0x38], al
	mov	qword ptr [r15 + 0x28], 0
	mov	rdi, r14
	call	strlen
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rax
	mov	rcx, rbx
	call	re_compile_internal
	cmp	eax, 0x10
	mov	ebx, 8
	cmovne	ebx, eax
	test	ebx, ebx
	jne	.label_533
	mov	rdi, r15
	call	rpl_re_compile_fastmap
	xor	ebx, ebx
.label_532:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_533:
	mov	rdi, qword ptr [r15 + 0x20]
	call	free
	mov	qword ptr [r15 + 0x20], 0
	jmp	.label_532
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4073d0
	.globl rpl_regerror
	.type rpl_regerror, @function
rpl_regerror:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	r14, rdx
	cmp	edi, 0x11
	jae	.label_536
	movsxd	rax, edi
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi, qword ptr [(rax * 8) + __re_error_msgid_idx]
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rdi, r12
	call	strlen
	mov	rbx, rax
	inc	rbx
	test	r15, r15
	je	.label_538
	cmp	rbx, r15
	mov	rdx, rbx
	ja	.label_539
.label_537:
	mov	rdi, r14
	mov	rsi, r12
	call	memcpy
.label_538:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_539:
	mov	byte ptr [r14 + r15 - 1], 0
	dec	r15
	mov	rdx, r15
	jmp	.label_537
.label_536:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407450
	.globl rpl_regfree
	.type rpl_regfree, @function
rpl_regfree:

	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_540
	call	free_dfa_content
.label_540:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rbx + 0x28]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407490

	.globl free_dfa_content
	.type free_dfa_content, @function
free_dfa_content:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rax, qword ptr [r14]
	test	rax, rax
	je	.label_543
	xor	ebx, ebx
	mov	r12d, 8
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_543
	mov	ebp, 0x400ff
	jmp	.label_548
	nop	dword ptr [rax]
.label_545:
	add	r12, 0x10
	mov	rax, qword ptr [r14]
.label_548:
	mov	ecx, dword ptr [rax + r12]
	and	ecx, ebp
	cmp	ecx, 3
	je	.label_550
	cmp	ecx, 6
	jne	.label_553
	mov	r15, qword ptr [rax + r12 - 8]
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	jmp	.label_558
	nop	word ptr cs:[rax + rax]
.label_550:
	mov	rdi, qword ptr [rax + r12 - 8]
.label_558:
	call	free
.label_553:
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	jb	.label_545
.label_543:
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_547
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
	lea	r13, [r14 + 0x28]
	xor	ebp, ebp
	mov	ebx, 0x10
	nop	word ptr cs:[rax + rax]
.label_541:
	mov	rax, qword ptr [r12]
	test	rax, rax
	je	.label_552
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_552:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_555
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_555:
	mov	rax, qword ptr [r13]
	test	rax, rax
	je	.label_556
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_556:
	inc	rbp
	add	rbx, 0x18
	cmp	rbp, qword ptr [r14 + 0x10]
	jb	.label_541
	jmp	.label_544
.label_547:
	lea	r13, [r14 + 0x28]
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
.label_544:
	mov	rdi, qword ptr [r13]
	call	free
	mov	rdi, qword ptr [r12]
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, qword ptr [r14 + 0x40]
	test	rdi, rdi
	je	.label_549
	xor	r15d, r15d
	jmp	.label_551
.label_542:
	mov	rdi, qword ptr [r14 + 0x40]
.label_551:
	lea	rax, [r15 + r15*2]
	lea	r12, [rdi + rax*8 + 0x10]
	cmp	qword ptr [rdi + rax*8], 0
	jle	.label_554
	lea	rbx, [rdi + rax*8]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_557:
	mov	rax, qword ptr [r12]
	mov	rdi, qword ptr [rax + rbp*8]
	call	free_state
	inc	rbp
	cmp	rbp, qword ptr [rbx]
	jl	.label_557
.label_554:
	mov	rdi, qword ptr [r12]
	call	free
	inc	r15
	cmp	r15, qword ptr [r14 + 0x88]
	jbe	.label_542
	mov	rdi, qword ptr [r14 + 0x40]
.label_549:
	call	free
	mov	rdi, qword ptr [r14 + 0x78]
	mov	eax, OFFSET FLAT:utf8_sb_map
	cmp	rdi, rax
	je	.label_546
	call	free
.label_546:
	mov	rdi, qword ptr [r14 + 0xe0]
	call	free
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	free
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407660
	.globl rpl_regexec
	.type rpl_regexec, @function
rpl_regexec:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	ebp, r8d
	mov	r12, rcx
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, 2
	cmp	ebp, 7
	ja	.label_559
	test	bpl, 4
	jne	.label_561
	mov	rdi, r14
	call	strlen
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.label_560
.label_561:
	mov	rcx, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
.label_560:
	test	byte ptr [rbx + 0x38], 0x10
	jne	.label_562
	mov	dword ptr [rsp + 0x10], ebp
	mov	qword ptr [rsp + 8], r12
	mov	qword ptr [rsp], r15
	jmp	.label_563
.label_562:
	mov	dword ptr [rsp + 0x10], ebp
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [rsp], 0
.label_563:
	mov	rdi, rbx
	mov	rsi, r14
	mov	r8, rdx
	mov	r9, rdx
	call	re_search_internal
	test	eax, eax
	setne	al
	movzx	eax, al
.label_559:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407700

	.globl re_search_internal
	.type re_search_internal, @function
re_search_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x258
	mov	r13, r9
	mov	rbp, rcx
	mov	r9, qword ptr [rsp + 0x290]
	mov	r11, qword ptr [rdi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x1e0], xmm0
	movaps	xmmword ptr [rsp + 0x1d0], xmm0
	movaps	xmmword ptr [rsp + 0x1c0], xmm0
	movaps	xmmword ptr [rsp + 0x1b0], xmm0
	movaps	xmmword ptr [rsp + 0x1a0], xmm0
	movaps	xmmword ptr [rsp + 0x190], xmm0
	movaps	xmmword ptr [rsp + 0x180], xmm0
	movaps	xmmword ptr [rsp + 0x170], xmm0
	movaps	xmmword ptr [rsp + 0x160], xmm0
	movaps	xmmword ptr [rsp + 0x150], xmm0
	movaps	xmmword ptr [rsp + 0x140], xmm0
	movaps	xmmword ptr [rsp + 0x130], xmm0
	movaps	xmmword ptr [rsp + 0x120], xmm0
	movaps	xmmword ptr [rsp + 0x110], xmm0
	movaps	xmmword ptr [rsp + 0x100], xmm0
	movaps	xmmword ptr [rsp + 0xf0], xmm0
	mov	qword ptr [rsp + 0x188], r11
	mov	rax, qword ptr [rdi + 0x20]
	xor	r12d, r12d
	test	rax, rax
	je	.label_709
	mov	cl, byte ptr [rdi + 0x38]
	and	cl, 9
	movzx	ecx, cl
	xor	ebx, ebx
	cmp	ecx, 8
	cmovne	rax, rbx
	cmp	rbp, r8
	cmove	rax, rbx
	mov	r12, rax
.label_709:
	mov	rax, qword ptr [rdi + 0x30]
	lea	r14, [r9 - 1]
	mov	rcx, r14
	sub	rcx, rax
	xor	ebx, ebx
	cmp	rax, r9
	cmovb	rbx, rcx
	mov	eax, 1
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_568
	mov	r15, qword ptr [r11 + 0x48]
	test	r15, r15
	je	.label_568
	mov	rcx, qword ptr [r11 + 0x50]
	test	rcx, rcx
	je	.label_568
	mov	r10, qword ptr [r11 + 0x58]
	test	r10, r10
	je	.label_571
	cmp	qword ptr [r11 + 0x60], 0
	je	.label_571
	mov	rax, r13
	mov	r13, qword ptr [rdi + 0x28]
	mov	qword ptr [rsp + 0xd0], r13
	cmp	qword ptr [r15 + 0x10], 0
	je	.label_576
	mov	rcx, r8
	mov	r13, rax
	jmp	.label_575
.label_571:
	mov	eax, 1
	jmp	.label_568
.label_576:
	cmp	qword ptr [rcx + 0x10], 0
	mov	r13, rax
	je	.label_583
	mov	rcx, r8
.label_575:
	mov	qword ptr [rsp + 0xb0], rcx
	mov	qword ptr [rsp + 0xd8], r12
	mov	qword ptr [rsp + 0x68], r14
	mov	al, 1
	cmp	rbx, r9
	mov	qword ptr [rsp + 0xa0], rbx
	jne	.label_587
	cmp	qword ptr [r11 + 0x98], 0
	setne	al
.label_587:
	mov	byte ptr [rsp + 0xbe], al
	mov	r12, qword ptr [r11 + 0x10]
	inc	r12
	mov	rcx, qword ptr [rdi + 0x18]
	movsxd	rax, dword ptr [r11 + 0xb4]
	cmp	rax, r12
	cmovge	r12, rax
	lea	rbx, [rdx + 1]
	cmp	rbx, r12
	cmovle	r12, rbx
	mov	qword ptr [rsp + 0xf0], rsi
	mov	qword ptr [rsp + 0x148], rdx
	mov	qword ptr [rsp + 0x140], rdx
	mov	rbx, qword ptr [rsp + 0xd0]
	mov	qword ptr [rsp + 0x168], rbx
	shr	rcx, 0x16
	and	cl, 1
	mov	byte ptr [rsp + 0x178], cl
	test	rbx, rbx
	setne	bl
	or	bl, cl
	mov	byte ptr [rsp + 0x17b], bl
	mov	dword ptr [rsp + 0x180], eax
	mov	cl, byte ptr [r11 + 0xb0]
	shr	cl, 2
	and	cl, 1
	mov	byte ptr [rsp + 0x179], cl
	mov	cl, byte ptr [r11 + 0xb0]
	shr	cl, 3
	and	cl, 1
	cmp	rax, 2
	mov	byte ptr [rsp + 0x17a], cl
	mov	qword ptr [rsp + 0x158], rdx
	mov	qword ptr [rsp + 0x150], rdx
	jl	.label_596
	mov	qword ptr [rsp + 0xe8], r11
	movabs	rax, 0x1ffffffffffffffe
	inc	rax
	mov	ecx, 0xc
	cmp	r12, rax
	ja	.label_584
	mov	qword ptr [rsp + 0xc0], rsi
	mov	qword ptr [rsp + 0xe0], rdx
	mov	r14, rdi
	lea	rsi, [r12*4]
	xor	edi, edi
	call	realloc
	mov	ecx, 0xc
	test	rax, rax
	je	.label_584
	mov	qword ptr [rsp + 0x100], rax
	mov	r11, qword ptr [rsp + 0xe8]
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xc0]
.label_596:
	mov	qword ptr [rsp + 0xc0], rsi
	mov	qword ptr [rsp + 0xe0], rdx
	test	bl, bl
	je	.label_652
	mov	r14, rdi
	mov	qword ptr [rsp + 0xe8], r11
	xor	edi, edi
	mov	rsi, r12
	call	realloc
	mov	ecx, 0xc
	test	rax, rax
	je	.label_584
	mov	qword ptr [rsp + 0xf8], rax
	mov	r11, qword ptr [rsp + 0xe8]
	mov	rdi, r14
.label_652:
	mov	edx, dword ptr [rsp + 0x2a0]
	mov	qword ptr [rsp + 0x130], r12
	lea	rax, [r11 + 0xb8]
	mov	qword ptr [rsp + 0x170], rax
	mov	rax, qword ptr [r11 + 0xb0]
	mov	cl, al
	shr	cl, 4
	and	cl, 1
	mov	byte ptr [rsp + 0x17e], cl
	xor	ecx, ecx
	test	bl, bl
	jne	.label_667
	shr	rax, 0x20
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	qword ptr [rsp + 0xf8], rcx
	xor	ecx, ecx
	cmp	eax, 1
	cmovle	rcx, qword ptr [rsp + 0xe0]
.label_667:
	mov	qword ptr [rsp + 0x120], rcx
	mov	qword ptr [rsp + 0x128], rcx
	mov	qword ptr [rsp + 0x158], r13
	mov	qword ptr [rsp + 0x150], r13
	mov	al, byte ptr [rdi + 0x38]
	mov	qword ptr [rsp + 0x80], rdi
	shr	al, 7
	mov	byte ptr [rsp + 0x17d], al
	mov	rbx, qword ptr [r11 + 0x98]
	mov	qword ptr [rsp + 0xe8], r11
	lea	r14, [rbx + rbx]
	mov	dword ptr [rsp + 0x190], edx
	mov	qword ptr [rsp + 0x198], -1
	test	rbx, rbx
	jle	.label_681
	mov	ecx, 0xc
	movabs	rax, 0x666666666666666
	cmp	r14, rax
	ja	.label_584
	shl	rbx, 4
	lea	rdi, [rbx + rbx*4]
	call	malloc
	mov	r13, rax
	mov	qword ptr [rsp + 0x1c8], r13
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [rsp + 0x1e8], rax
	test	r13, r13
	je	.label_567
	test	rax, rax
	mov	ecx, 0xc
	je	.label_584
.label_681:
	mov	rax, qword ptr [rsp + 0x290]
	mov	rcx, rax
	mov	rax, qword ptr [rsp + 0xa0]
	sub	rcx, rax
	mov	qword ptr [rsp + 0x58], rcx
	mov	qword ptr [rsp + 0x1c0], r14
	mov	dword ptr [rsp + 0x1d0], 1
	mov	qword ptr [rsp + 0x1e0], r14
	cmp	rcx, 1
	mov	rax, qword ptr [rsp + 0xe8]
	ja	.label_573
	mov	rdi, qword ptr [rax + 0xb0]
	test	dil, 2
	jne	.label_573
	shr	rdi, 0x20
	mov	qword ptr [rsp + 0x1a8], 0
	jmp	.label_724
.label_573:
	mov	ecx, 0xc
	movabs	rax, 0x1ffffffffffffffe
	cmp	r12, rax
	ja	.label_584
	lea	rdi, [r12*8 + 8]
	call	malloc
	mov	ecx, 0xc
	mov	qword ptr [rsp + 0x1a8], rax
	test	rax, rax
	je	.label_584
	mov	rax, qword ptr [rsp + 0xe8]
	mov	edi, dword ptr [rax + 0xb4]
.label_724:
	mov	r13, qword ptr [rsp + 0xd8]
	mov	qword ptr [rsp + 0xc8], rdi
	mov	qword ptr [rsp + 0xe8], rax
	mov	qword ptr [rsp + 0x1f8], rbp
	mov	eax, dword ptr [rsp + 0x2a0]
	lea	eax, [rax + rax]
	and	eax, 2
	xor	eax, 6
	mov	dword ptr [rsp + 0x160], eax
	mov	rbx, qword ptr [rsp + 0xb0]
	cmp	rbx, rbp
	mov	rax, rbp
	cmovle	rax, rbx
	mov	qword ptr [rsp + 0x78], rax
	mov	r8, rax
	mov	r14, rbx
	cmovl	r14, rbp
	mov	qword ptr [rsp + 0x70], r14
	mov	edx, 8
	test	r13, r13
	je	.label_740
	cmp	edi, 1
	je	.label_615
	mov	ecx, 0x400000
	xor	eax, eax
	cmp	qword ptr [rsp + 0xd0], 0
	mov	rdx, qword ptr [rsp + 0x80]
	jne	.label_577
	and	rcx, qword ptr [rdx + 0x18]
	jne	.label_577
.label_615:
	mov	eax, 4
.label_577:
	cmp	qword ptr [rsp + 0xd0], 0
	setne	cl
	cmp	rbp, rbx
	setle	dl
	movzx	ecx, cl
	movzx	edx, dl
	lea	edx, [rcx + rdx*2]
	or	edx, eax
.label_740:
	mov	qword ptr [rsp + 0xc8], rdi
	xor	eax, eax
	cmp	rbp, rbx
	setle	byte ptr [rsp + 0xbf]
	lea	rcx, [rsp + 0x1f8]
	cmovg	rcx, rax
	mov	qword ptr [rsp + 0x88], rcx
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	cmp	rbx, rbp
	mov	eax, 1
	mov	rcx, -1
	cmovge	rcx, rax
	mov	qword ptr [rsp + 0xd8], rcx
	add	edx, -4
	mov	qword ptr [rsp + 0xb0], rdx
	mov	rbx, r8
	jmp	.label_591
.label_713:
	mov	r12, qword ptr [rsp + 0xc8]
	cmp	r12d, 1
	je	.label_605
	mov	rax, qword ptr [rsp + 0x120]
	test	rax, rax
	je	.label_605
	mov	rax, qword ptr [rsp + 0x100]
	cmp	dword ptr [rax], -1
	je	.label_610
.label_605:
	mov	dword ptr [rsp + 0x1d0], 0
	lea	rax, [rsp + 0x1b0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	r15, qword ptr [rsp + 0x188]
	mov	r14, qword ptr [rsp + 0x138]
	mov	dword ptr [rsp + 0x254], 0
	mov	rbx, qword ptr [r15 + 0x48]
	cmp	byte ptr [rbx + 0x68], 0
	js	.label_616
	mov	r12b, byte ptr [rsp + 0xbe]
	jmp	.label_631
.label_616:
	test	r14, r14
	jle	.label_635
	lea	rax, [r14 - 1]
	cmp	qword ptr [rsp + 0x148], rax
	je	.label_637
	cmp	dword ptr [rsp + 0x180], 2
	mov	r12b, byte ptr [rsp + 0xbe]
	jl	.label_639
	mov	rax, qword ptr [rsp + 0x100]
	mov	rcx, r14
	nop	dword ptr [rax]
.label_645:
	mov	ebp, dword ptr [rax + rcx*4 - 4]
	cmp	ebp, -1
	jne	.label_643
	dec	rcx
	jg	.label_645
	mov	ecx, dword ptr [rsp + 0x160]
	jmp	.label_646
.label_639:
	mov	rcx, qword ptr [rsp + 0xf8]
	mov	rdx, qword ptr [rsp + 0x170]
	movzx	eax, byte ptr [rcx + rax]
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	mov	rcx, qword ptr [rdx + rcx*8]
	bt	rcx, rax
	jb	.label_671
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_631
	jmp	.label_679
.label_643:
	cmp	byte ptr [rsp + 0x17e], 0
	jne	.label_657
.label_686:
	cmp	ebp, 0xa
	jne	.label_631
.label_679:
	mov	ecx, 2
	cmp	byte ptr [rsp + 0x17d], 0
	jne	.label_646
	xor	ecx, ecx
	jmp	.label_646
.label_635:
	mov	ecx, dword ptr [rsp + 0x160]
	mov	r12b, byte ptr [rsp + 0xbe]
	jmp	.label_646
.label_637:
	mov	ecx, dword ptr [rsp + 0x190]
	and	ecx, 2
	xor	ecx, 0xa
	mov	r12b, byte ptr [rsp + 0xbe]
.label_646:
	test	cl, 1
	jne	.label_671
	test	ecx, ecx
	je	.label_631
	mov	eax, ecx
	and	eax, 4
	sete	sil
	mov	edx, ecx
	and	edx, 2
	je	.label_672
	test	sil, sil
	jne	.label_672
	mov	rbx, qword ptr [r15 + 0x60]
	jmp	.label_631
.label_672:
	test	edx, edx
	jne	.label_678
	test	eax, eax
	je	.label_631
	mov	rdx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 0x254]
	mov	rsi, r15
	call	re_acquire_state_context
	mov	rbx, rax
	jmp	.label_631
.label_678:
	mov	rbx, qword ptr [r15 + 0x58]
	jmp	.label_631
.label_657:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	je	.label_671
	test	eax, eax
	je	.label_686
.label_671:
	mov	rbx, qword ptr [r15 + 0x50]
.label_631:
	mov	cl, byte ptr [rsp + 0xbf]
	test	rbx, rbx
	je	.label_687
	mov	rax, qword ptr [rsp + 0x1a8]
	test	rax, rax
	mov	dl, cl
	mov	dword ptr [rsp + 0x90], edx
	je	.label_690
	mov	qword ptr [rax + r14*8], rbx
	cmp	qword ptr [r15 + 0x98], 0
	mov	al, cl
	mov	dword ptr [rsp + 0x90], eax
	jne	.label_697
.label_690:
	mov	byte ptr [rsp + 0xbf], cl
	mov	cl, byte ptr [rbx + 0x68]
	mov	r15, -1
	test	cl, 0x10
	mov	eax, 0
	jne	.label_702
.label_708:
	mov	rbp, qword ptr [rsp + 0x138]
	mov	rcx, qword ptr [rsp + 0x88]
.label_707:
	mov	qword ptr [rsp + 0x60], rcx
	mov	qword ptr [rsp + 0xa8], r14
	cmp	qword ptr [rsp + 0x158], rbp
	jle	.label_668
	test	rax, rax
	sete	al
	or	al, r12b
	mov	byte ptr [rsp + 0x57], al
	mov	r14, rbx
	jmp	.label_705
.label_723:
	mov	qword ptr [rsp + 0x40], r15
	cmp	qword ptr [r14 + 0x10], 0
	jle	.label_712
	mov	rsi, qword ptr [rsp + 0x188]
	mov	qword ptr [rsp + 0x30], rsi
	xor	r15d, r15d
	jmp	.label_585
.label_641:
	mov	rax, qword ptr [rsp + 0x138]
	test	rax, rax
	jle	.label_718
	lea	rdx, [rax - 1]
	mov	ecx, 0xa
	cmp	qword ptr [rsp + 0x148], rdx
	je	.label_569
	cmp	dword ptr [rsp + 0x180], 2
	jl	.label_725
	mov	rcx, qword ptr [rsp + 0x100]
.label_731:
	mov	ebx, dword ptr [rcx + rax*4 - 4]
	cmp	ebx, -1
	jne	.label_730
	dec	rax
	jg	.label_731
	mov	ecx, dword ptr [rsp + 0x160]
	jmp	.label_569
.label_733:
	cmp	r14, rbx
	je	.label_735
	mov	dword ptr [rsp + 0x90], 0
.label_735:
	mov	r14, qword ptr [rsp + 0xa8]
	cmove	r14, qword ptr [rsp + 0x98]
	jmp	.label_737
.label_725:
	mov	rax, qword ptr [rsp + 0xf8]
	mov	rcx, qword ptr [rsp + 0x170]
	movzx	eax, byte ptr [rax + rdx]
	mov	dl, al
	shr	dl, 6
	movzx	edx, dl
	mov	rdx, qword ptr [rcx + rdx*8]
	mov	ecx, 1
	bt	rdx, rax
	jb	.label_569
	xor	ecx, ecx
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_569
	jmp	.label_564
.label_730:
	cmp	byte ptr [rsp + 0x17e], 0
	jne	.label_566
.label_606:
	xor	ecx, ecx
	cmp	ebx, 0xa
	jne	.label_569
.label_564:
	mov	ecx, 2
	cmp	byte ptr [rsp + 0x17d], 0
	jne	.label_569
	xor	ecx, ecx
	jmp	.label_569
.label_642:
	mov	dword ptr [rsp + 0x2c], eax
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rsi
	mov	edi, ebx
	call	iswalnum
	xor	edx, edx
	cmp	ebx, 0x5f
	mov	edi, 1
	je	.label_653
	test	eax, eax
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	eax, dword ptr [rsp + 0x2c]
	je	.label_669
	jmp	.label_600
.label_689:
	mov	edi, ebx
	call	iswalnum
	cmp	ebx, 0x5f
	mov	ecx, 1
	je	.label_715
	test	eax, eax
	lea	rdi, [rsp + 0x238]
	je	.label_661
	jmp	.label_570
.label_653:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	eax, dword ptr [rsp + 0x2c]
	jmp	.label_600
.label_715:
	lea	rdi, [rsp + 0x238]
	jmp	.label_570
.label_585:
	mov	rax, qword ptr [r14 + 0x18]
	mov	rbp, qword ptr [rax + r15*8]
	mov	rax, qword ptr [rsi]
	mov	rcx, rbp
	shl	rcx, 4
	mov	eax, dword ptr [rax + rcx + 8]
	test	eax, 0x100000
	je	.label_578
	mov	r12d, eax
	shr	r12d, 8
	test	r12w, 0x3ff
	mov	rcx, qword ptr [rsp + 0x138]
	je	.label_572
	test	rcx, rcx
	js	.label_613
	cmp	qword ptr [rsp + 0x148], rcx
	je	.label_617
	mov	r8d, eax
	cmp	dword ptr [rsp + 0x180], 2
	jl	.label_620
	mov	rax, qword ptr [rsp + 0x100]
	lea	rdx, [rcx + 1]
.label_628:
	mov	ebx, dword ptr [rax + rdx*4 - 4]
	cmp	ebx, -1
	jne	.label_625
	dec	rdx
	test	rdx, rdx
	jg	.label_628
	mov	edi, dword ptr [rsp + 0x160]
	jmp	.label_630
.label_620:
	mov	rax, qword ptr [rsp + 0xf8]
	mov	rdi, qword ptr [rsp + 0x170]
	movzx	eax, byte ptr [rax + rcx]
	mov	dl, al
	shr	dl, 6
	movzx	edx, dl
	mov	rdx, qword ptr [rdi + rdx*8]
	xor	edi, edi
	bt	rdx, rax
	jae	.label_633
	mov	edi, 1
	xor	edx, edx
	mov	eax, r8d
	jmp	.label_600
.label_625:
	cmp	byte ptr [rsp + 0x17e], 0
	mov	eax, r8d
	jne	.label_642
.label_669:
	mov	r8d, eax
	xor	edi, edi
	cmp	ebx, 0xa
	je	.label_644
	jmp	.label_630
.label_633:
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_630
.label_644:
	mov	edi, 2
	cmp	byte ptr [rsp + 0x17d], 0
	jne	.label_630
	xor	edi, edi
	jmp	.label_630
.label_613:
	mov	r8d, eax
	mov	edi, dword ptr [rsp + 0x160]
	jmp	.label_630
.label_617:
	mov	r8d, eax
	mov	edi, dword ptr [rsp + 0x190]
	and	edi, 2
	xor	edi, 0xa
.label_630:
	mov	eax, edi
	and	eax, 1
	sete	dl
	test	r12b, 4
	je	.label_654
	test	eax, eax
	mov	eax, r8d
	je	.label_578
	jmp	.label_600
.label_654:
	mov	eax, r8d
.label_600:
	test	ah, 8
	je	.label_660
	test	dl, dl
	je	.label_578
.label_660:
	test	ah, 0x20
	je	.label_664
	mov	eax, edi
	and	eax, 2
	je	.label_578
.label_664:
	test	r12b, r12b
	jns	.label_572
	and	edi, 8
	je	.label_578
.label_572:
	mov	rbx, rsi
	mov	rdi, rbx
	mov	rsi, rbp
	lea	rdx, [rsp + 0xf0]
	call	check_node_accept_bytes
	mov	rsi, rbx
	test	eax, eax
	je	.label_578
	movsxd	r12, eax
	add	r12, qword ptr [rsp + 0x138]
	mov	ecx, dword ptr [rsp + 0x1d0]
	cmp	ecx, eax
	cmovl	ecx, eax
	mov	dword ptr [rsp + 0x1d0], ecx
	mov	rbx, qword ptr [rsp + 0x1b0]
	mov	rcx, qword ptr [rsp + 0x130]
	mov	rax, qword ptr [rsp + 0x148]
	cmp	rcx, r12
	jg	.label_674
	cmp	rcx, rax
	jl	.label_622
.label_674:
	mov	rcx, qword ptr [rsp + 0x120]
	cmp	rcx, r12
	jg	.label_685
	cmp	rcx, rax
	jge	.label_685
.label_622:
	lea	esi, [r12 + 1]
	lea	rdi, [rsp + 0xf0]
	call	extend_buffers
	test	eax, eax
	jne	.label_691
.label_685:
	mov	rdx, r12
	sub	rdx, rbx
	jle	.label_693
	mov	rax, qword ptr [rsp + 0x1a8]
	lea	rdi, [rax + rbx*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	call	memset
	mov	qword ptr [rsp + 0x1b0], r12
.label_693:
	mov	dword ptr [rsp + 0x238], 0
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rax + rbp*8]
	lea	rdx, [rax + rax*2]
	shl	rdx, 3
	add	rdx, qword ptr [rcx + 0x30]
	mov	rax, qword ptr [rsp + 0x1a8]
	mov	rbx, qword ptr [rax + r12*8]
	mov	rbp, rcx
	test	rbx, rbx
	je	.label_703
	mov	rsi, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 0x200]
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x238], eax
	test	eax, eax
	je	.label_682
	jmp	.label_582
.label_703:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x210], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x200], xmm0
.label_682:
	mov	qword ptr [rsp + 0x38], rbx
	test	r12, r12
	jle	.label_597
	lea	rax, [r12 - 1]
	cmp	qword ptr [rsp + 0x148], rax
	lea	rdi, [rsp + 0x238]
	je	.label_675
	cmp	dword ptr [rsp + 0x180], 2
	jl	.label_722
	mov	rax, qword ptr [rsp + 0x100]
	mov	rcx, r12
.label_614:
	mov	ebx, dword ptr [rax + rcx*4 - 4]
	cmp	ebx, -1
	jne	.label_726
	dec	rcx
	jg	.label_614
	mov	ecx, dword ptr [rsp + 0x160]
	jmp	.label_570
.label_722:
	mov	rcx, qword ptr [rsp + 0xf8]
	mov	rdx, qword ptr [rsp + 0x170]
	movzx	eax, byte ptr [rcx + rax]
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	mov	rdx, qword ptr [rdx + rcx*8]
	mov	ecx, 1
	bt	rdx, rax
	jb	.label_570
	xor	ecx, ecx
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_570
	jmp	.label_688
.label_726:
	cmp	byte ptr [rsp + 0x17e], 0
	jne	.label_689
.label_661:
	xor	ecx, ecx
	cmp	ebx, 0xa
	jne	.label_570
.label_688:
	mov	ecx, 2
	cmp	byte ptr [rsp + 0x17d], 0
	jne	.label_570
	xor	ecx, ecx
	jmp	.label_570
.label_597:
	mov	ecx, dword ptr [rsp + 0x160]
	lea	rdi, [rsp + 0x238]
	jmp	.label_570
.label_675:
	mov	ecx, dword ptr [rsp + 0x190]
	and	ecx, 2
	xor	ecx, 0xa
.label_570:
	mov	rsi, rbp
	lea	rdx, [rsp + 0x200]
	call	re_acquire_state_context
	cmp	qword ptr [rsp + 0x38], 0
	mov	rcx, qword ptr [rsp + 0x1a8]
	mov	qword ptr [rcx + r12*8], rax
	je	.label_599
	mov	rdi, qword ptr [rsp + 0x210]
	call	free
.label_599:
	mov	rax, qword ptr [rsp + 0x1a8]
	cmp	qword ptr [rax + r12*8], 0
	mov	rsi, rbp
	jne	.label_578
	mov	eax, dword ptr [rsp + 0x238]
	test	eax, eax
	jne	.label_582
.label_578:
	inc	r15
	cmp	r15, qword ptr [r14 + 0x10]
	jl	.label_585
.label_712:
	mov	dword ptr [rsp + 0x254], 0
	mov	r12b, byte ptr [rsp + 0xbe]
	mov	r15, qword ptr [rsp + 0x40]
	jmp	.label_589
.label_718:
	mov	ecx, dword ptr [rsp + 0x160]
.label_569:
	and	ecx, 1
	shl	rcx, 8
	or	rcx, rbp
	mov	rbx, qword ptr [r15 + rcx*8]
	mov	r15, qword ptr [rsp + 0x40]
	jmp	.label_595
.label_691:
	mov	dword ptr [rsp + 0x238], eax
.label_582:
	mov	dword ptr [rsp + 0x254], eax
	xor	ebx, ebx
	mov	r12b, byte ptr [rsp + 0xbe]
	mov	r15, qword ptr [rsp + 0x40]
	jmp	.label_595
.label_566:
	mov	edi, ebx
	call	iswalnum
	cmp	ebx, 0x5f
	mov	ecx, 1
	je	.label_569
	test	eax, eax
	je	.label_606
	jmp	.label_569
.label_705:
	lea	rdx, [rbp + 1]
	mov	qword ptr [rsp + 0x98], rdx
	mov	rcx, qword ptr [rsp + 0x130]
	mov	rax, qword ptr [rsp + 0x148]
	cmp	rdx, rcx
	jl	.label_609
	cmp	rcx, rax
	jl	.label_665
.label_609:
	mov	rcx, qword ptr [rsp + 0x120]
	cmp	qword ptr [rsp + 0x98], rcx
	jl	.label_619
	cmp	rcx, rax
	jge	.label_619
.label_665:
	add	ebp, 2
	lea	rdi, [rsp + 0xf0]
	mov	esi, ebp
	call	extend_buffers
	mov	dword ptr [rsp + 0x254], eax
	test	eax, eax
	jne	.label_627
.label_619:
	test	byte ptr [r14 + 0x68], 0x20
	jne	.label_723
.label_589:
	mov	rax, qword ptr [rsp + 0x138]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x138], rcx
	mov	rcx, qword ptr [rsp + 0xf8]
	movzx	ebp, byte ptr [rcx + rax]
.label_647:
	mov	rax, qword ptr [r14 + 0x58]
	test	rax, rax
	jne	.label_640
	mov	qword ptr [rsp + 0x40], r15
	mov	r15, qword ptr [r14 + 0x60]
	test	r15, r15
	jne	.label_641
	mov	rdi, qword ptr [rsp + 0x188]
	mov	rsi, r14
	call	build_trtable
	test	al, al
	mov	r15, qword ptr [rsp + 0x40]
	jne	.label_647
	mov	dword ptr [rsp + 0x254], 0xc
	xor	ebx, ebx
	jmp	.label_595
.label_640:
	mov	rbx, qword ptr [rax + rbp*8]
.label_595:
	cmp	qword ptr [rsp + 0x1a8], 0
	je	.label_650
	lea	rdi, [rsp + 0x254]
	lea	rsi, [rsp + 0xf0]
	mov	rdx, rbx
	call	merge_state_with_log
	mov	rbx, rax
.label_650:
	test	rbx, rbx
	jne	.label_658
	cmp	dword ptr [rsp + 0x254], 0
	jne	.label_567
	mov	rax, qword ptr [rsp + 0x1a8]
	test	rax, rax
	setne	cl
	and	cl, byte ptr [rsp + 0x57]
	movzx	ecx, cl
	cmp	ecx, 1
	je	.label_728
	jmp	.label_668
.label_684:
	mov	rax, qword ptr [rsp + 0x1a8]
.label_728:
	mov	rdx, qword ptr [rsp + 0x138]
	mov	rcx, qword ptr [rsp + 0x1b0]
	nop	word ptr cs:[rax + rax]
.label_677:
	cmp	rdx, rcx
	jge	.label_668
	lea	rsi, [rdx + 1]
	mov	qword ptr [rsp + 0x138], rsi
	cmp	qword ptr [rax + rdx*8 + 8], 0
	mov	rdx, rsi
	je	.label_677
	xor	edx, edx
	lea	rdi, [rsp + 0x254]
	lea	rsi, [rsp + 0xf0]
	call	merge_state_with_log
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_581
	mov	eax, dword ptr [rsp + 0x254]
	test	eax, eax
	je	.label_684
.label_581:
	test	rbx, rbx
	je	.label_668
.label_658:
	mov	eax, dword ptr [rsp + 0x90]
	test	al, 1
	jne	.label_733
	mov	r14, qword ptr [rsp + 0xa8]
.label_737:
	mov	al, byte ptr [rbx + 0x68]
	test	al, 0x10
	jne	.label_692
	mov	qword ptr [rsp + 0xa8], r14
	mov	rbp, qword ptr [rsp + 0x138]
	jmp	.label_695
.label_692:
	mov	rbp, qword ptr [rsp + 0x138]
	test	al, al
	jns	.label_699
	lea	rdi, [rsp + 0xf0]
	mov	rsi, rbx
	mov	rdx, rbp
	call	check_halt_state_context
	test	rax, rax
	jne	.label_699
	mov	qword ptr [rsp + 0xa8], r14
.label_695:
	cmp	qword ptr [rsp + 0x158], rbp
	mov	r14, rbx
	jg	.label_705
	jmp	.label_668
.label_699:
	test	r12b, r12b
	mov	r15, rbp
	mov	eax, 1
	mov	ecx, 0
	jne	.label_707
	jmp	.label_608
.label_668:
	mov	rcx, qword ptr [rsp + 0x60]
	test	rcx, rcx
	je	.label_710
	mov	rax, qword ptr [rsp + 0xa8]
	add	qword ptr [rcx], rax
	mov	rbp, r15
	jmp	.label_608
.label_710:
	mov	rbp, r15
.label_608:
	mov	byte ptr [rsp + 0xbe], r12b
	cmp	rbp, -1
	mov	r12, qword ptr [rsp + 0xc8]
	mov	rbx, qword ptr [rsp + 0x78]
	mov	r14, qword ptr [rsp + 0x70]
	je	.label_604
	mov	ecx, 0xc
	cmp	rbp, -2
	je	.label_584
	cmp	qword ptr [rsp + 0x58], 1
	seta	al
	mov	qword ptr [rsp + 0x198], rbp
	mov	rcx, qword ptr [rsp + 0x80]
	test	byte ptr [rcx + 0x38], 0x10
	sete	bl
	and	bl, al
	je	.label_721
	mov	rax, qword ptr [rsp + 0x1a8]
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rsp + 0xf0]
	mov	rdx, rbp
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x1a0], rax
	mov	r12, qword ptr [rsp + 0xe8]
	jmp	.label_734
.label_721:
	mov	r12, qword ptr [rsp + 0xe8]
	cmp	qword ptr [r12 + 0x98], 0
	je	.label_602
	mov	rax, qword ptr [rsp + 0x1a8]
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rsp + 0xf0]
	mov	rdx, rbp
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x1a0], rax
	test	bl, 1
	je	.label_745
.label_734:
	test	byte ptr [r12 + 0xb0], 1
	jne	.label_746
.label_745:
	cmp	qword ptr [r12 + 0x98], 0
	je	.label_602
.label_746:
	mov	qword ptr [rsp + 0xe8], r12
	movabs	rax, 0x1ffffffffffffffe
	cmp	rbp, rax
	ja	.label_567
	mov	r14, qword ptr [rsp + 0x188]
	mov	rax, qword ptr [rsp + 0x1a0]
	mov	qword ptr [rsp + 0x98], rax
	lea	r12, [rbp*8 + 8]
	mov	rdi, r12
	call	malloc
	test	rax, rax
	mov	rbx, rax
	mov	r15d, 0
	je	.label_580
	cmp	qword ptr [r14 + 0x98], 0
	je	.label_586
	mov	qword ptr [rsp + 0x90], r14
	mov	rdi, r12
	call	malloc
	mov	r15, rax
	test	r15, r15
	je	.label_593
	xor	esi, esi
	mov	rdi, r15
	mov	rdx, r12
	call	memset
	mov	r12, rbx
	mov	qword ptr [rsp + 0xa8], r12
	mov	qword ptr [rsp + 0x200], r12
	mov	qword ptr [rsp + 0x208], r15
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x210], rax
	mov	qword ptr [rsp + 0x218], rbp
	lea	rax, [rsp + 0x220]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0xf0]
	lea	rsi, [rsp + 0x200]
	call	sift_states_backward
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x78]
	mov	r14, qword ptr [rsp + 0x70]
	jne	.label_612
.label_662:
	mov	rsi, qword ptr [r12]
	test	rsi, rsi
	jne	.label_621
	cmp	qword ptr [r15], 0
	mov	esi, 0
	jne	.label_621
	mov	r12, r15
	test	rbp, rbp
	jle	.label_624
	mov	rax, qword ptr [rsp + 0x1a8]
	dec	rbp
	nop	word ptr cs:[rax + rax]
.label_743:
	mov	rsi, qword ptr [rax + rbp*8]
	test	rsi, rsi
	je	.label_729
	test	byte ptr [rsi + 0x68], 0x10
	jne	.label_636
.label_729:
	lea	rcx, [rbp - 1]
	inc	rbp
	cmp	rbp, 2
	mov	rbp, rcx
	jge	.label_743
	jmp	.label_624
.label_636:
	lea	r15, [rsp + 0xf0]
	mov	rdi, r15
	mov	rdx, rbp
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x98], rax
	lea	rdx, [rbp*8 + 8]
	xor	esi, esi
	mov	rdi, r12
	call	memset
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	qword ptr [rsp + 0x200], rcx
	mov	qword ptr [rsp + 0x208], r12
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x210], rax
	mov	qword ptr [rsp + 0x218], rbp
	lea	rax, [rsp + 0x220]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rdi, r15
	mov	r15, r12
	mov	r12, rcx
	lea	rsi, [rsp + 0x200]
	call	sift_states_backward
	test	eax, eax
	je	.label_662
	mov	r12, r15
	jmp	.label_574
.label_586:
	mov	qword ptr [rsp + 0xa8], rbx
	mov	qword ptr [rsp + 0x200], rbx
	mov	qword ptr [rsp + 0x208], 0
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x210], rax
	mov	qword ptr [rsp + 0x218], rbp
	lea	rax, [rsp + 0x220]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0xf0]
	lea	rsi, [rsp + 0x200]
	call	sift_states_backward
	test	eax, eax
	mov	r12d, 0
	mov	rbx, qword ptr [rsp + 0x78]
	mov	r14, qword ptr [rsp + 0x70]
	jne	.label_574
	mov	rax, qword ptr [rsp + 0xa8]
	cmp	qword ptr [rax], 0
	mov	r12d, 0
	jne	.label_590
.label_624:
	mov	rdi, qword ptr [rsp + 0xa8]
	call	free
	mov	rdi, r12
	call	free
	mov	r12, qword ptr [rsp + 0xc8]
.label_604:
	lea	rdi, [rsp + 0xf0]
	call	match_ctx_clean
.label_610:
	mov	rbp, qword ptr [rsp + 0x1f8]
	add	rbp, qword ptr [rsp + 0xd8]
	mov	qword ptr [rsp + 0x1f8], rbp
	cmp	rbp, rbx
	mov	ecx, 1
	jl	.label_584
	mov	qword ptr [rsp + 0xc8], r12
	cmp	r14, rbp
	jge	.label_591
	jmp	.label_584
.label_702:
	test	cl, cl
	js	.label_603
	test	r12b, r12b
	mov	r15, r14
	mov	eax, 1
	jne	.label_708
	mov	rbp, r14
	jmp	.label_608
.label_697:
	mov	byte ptr [rsp + 0xbf], cl
	lea	rbp, [rbx + 8]
	xor	edx, edx
	lea	rdi, [rsp + 0xf0]
	mov	rsi, rbp
	call	check_subexp_matching_top
	mov	dword ptr [rsp + 0x254], eax
	test	eax, eax
	jne	.label_714
	test	byte ptr [rbx + 0x68], 0x40
	je	.label_727
	lea	rdi, [rsp + 0xf0]
	mov	rsi, rbp
	call	transit_state_bkref
	mov	dword ptr [rsp + 0x254], eax
	test	eax, eax
	jne	.label_720
.label_727:
	mov	dword ptr [rsp + 0x90], 0
	mov	cl, byte ptr [rsp + 0xbf]
	jmp	.label_690
.label_603:
	lea	rdi, [rsp + 0xf0]
	mov	rsi, rbx
	mov	rdx, r14
	call	check_halt_state_context
	cmp	rax, 1
	sbb	r15, r15
	test	rax, rax
	sete	cl
	setne	al
	movzx	eax, al
	or	cl, r12b
	je	.label_732
	or	r15, r14
	jmp	.label_708
.label_732:
	mov	rbp, r14
	jmp	.label_608
.label_621:
	mov	qword ptr [rsp + 0xa8], r12
	test	rbp, rbp
	js	.label_738
	xor	r12d, r12d
	jmp	.label_651
.label_626:
	mov	rax, qword ptr [rsp + 0xa8]
	mov	rsi, qword ptr [rax + r12*8 + 8]
	inc	r12
.label_651:
	mov	rdx, qword ptr [r15 + r12*8]
	test	rsi, rsi
	je	.label_744
	test	rdx, rdx
	je	.label_579
	add	rsi, 8
	add	rdx, 8
	lea	rbx, [rsp + 0x238]
	mov	rdi, rbx
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x254], eax
	test	eax, eax
	jne	.label_565
	lea	rdi, [rsp + 0x254]
	mov	rsi, qword ptr [rsp + 0x90]
	mov	rdx, rbx
	call	re_acquire_state
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	qword ptr [rcx + r12*8], rax
	mov	rdi, qword ptr [rsp + 0x248]
	call	free
	mov	eax, dword ptr [rsp + 0x254]
	test	eax, eax
	je	.label_579
	jmp	.label_565
.label_744:
	mov	rax, qword ptr [rsp + 0xa8]
	mov	qword ptr [rax + r12*8], rdx
.label_579:
	cmp	r12, rbp
	jl	.label_626
.label_738:
	xor	eax, eax
.label_565:
	mov	rdi, r15
	mov	ebx, eax
	call	free
	mov	eax, ebx
	test	eax, eax
	mov	r12d, 0
	mov	r14, qword ptr [rsp + 0x70]
	mov	rbx, qword ptr [rsp + 0x78]
	je	.label_590
	jmp	.label_574
.label_612:
	mov	qword ptr [rsp + 0xa8], r12
	mov	r12, r15
.label_574:
	mov	r15, rbx
	mov	rdi, qword ptr [rsp + 0xa8]
	mov	ebp, eax
	call	free
	mov	rdi, r12
	call	free
	test	ebp, ebp
	mov	eax, ebp
	mov	r12, qword ptr [rsp + 0xe8]
	je	.label_602
	mov	ecx, eax
	cmp	ecx, 1
	mov	r12, qword ptr [rsp + 0xc8]
	mov	rbx, r15
	je	.label_604
	jmp	.label_584
.label_714:
	movsxd	rbp, eax
	jmp	.label_608
.label_720:
	movsxd	rbp, eax
	jmp	.label_608
.label_591:
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	eax, 4
	ja	.label_611
	jmp	qword ptr [(rax * 8) + label_655]
.label_2241:
	cmp	rbp, rbx
	mov	rax, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0xd0]
	jl	.label_618
	nop	word ptr cs:[rax + rax]
.label_638:
	xor	eax, eax
	cmp	rbp, rcx
	jge	.label_629
	movzx	eax, byte ptr [rdx + rbp]
.label_629:
	test	rsi, rsi
	je	.label_632
	movzx	eax, byte ptr [rsi + rax]
.label_632:
	cmp	byte ptr [r13 + rax], 0
	jne	.label_634
	lea	rax, [rbp - 1]
	mov	qword ptr [rsp + 0x1f8], rax
	cmp	rbp, rbx
	mov	rbp, rax
	jg	.label_638
	jmp	.label_618
.label_611:
	mov	rax, qword ptr [rsp + 0x118]
	jmp	.label_592
	nop	word ptr cs:[rax + rax]
.label_670:
	add	rbp, qword ptr [rsp + 0xd8]
	mov	qword ptr [rsp + 0x1f8], rbp
	cmp	rbp, rbx
	mov	ecx, 1
	jl	.label_584
	cmp	rbp, r14
	jle	.label_592
	jmp	.label_584
.label_663:
	lea	rdi, [rsp + 0xf0]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x2a0]
	call	re_string_reconstruct
	mov	ecx, eax
	test	ecx, ecx
	jne	.label_584
	mov	rbp, qword ptr [rsp + 0x1f8]
	mov	rax, qword ptr [rsp + 0x118]
	mov	rcx, rbp
	sub	rcx, rax
	jmp	.label_700
	nop	word ptr cs:[rax + rax]
.label_592:
	mov	rcx, rbp
	sub	rcx, rax
	cmp	rcx, qword ptr [rsp + 0x128]
	jae	.label_663
.label_700:
	mov	rdx, qword ptr [rsp + 0xe0]
	cmp	rbp, rdx
	mov	edx, 0
	jge	.label_666
	mov	rdx, qword ptr [rsp + 0xf8]
	movzx	edx, byte ptr [rdx + rcx]
.label_666:
	cmp	byte ptr [r13 + rdx], 0
	je	.label_670
	jmp	.label_588
.label_2242:
	cmp	rbp, r14
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	rdx, qword ptr [rsp + 0xd0]
	jge	.label_673
	nop	word ptr cs:[rax + rax]
.label_680:
	movzx	eax, byte ptr [rcx + rbp]
	cmp	byte ptr [r13 + rax], 0
	jne	.label_673
	inc	rbp
	mov	qword ptr [rsp + 0x1f8], rbp
	cmp	rbp, r14
	jl	.label_680
	jmp	.label_673
.label_2243:
	cmp	rbp, r14
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	rdx, qword ptr [rsp + 0xd0]
	jge	.label_673
	nop	word ptr cs:[rax + rax]
.label_694:
	movzx	eax, byte ptr [rcx + rbp]
	movzx	eax, byte ptr [rdx + rax]
	cmp	byte ptr [r13 + rax], 0
	jne	.label_673
	inc	rbp
	mov	qword ptr [rsp + 0x1f8], rbp
	cmp	rbp, r14
	jl	.label_694
.label_673:
	mov	qword ptr [rsp + 0xd0], rdx
	mov	qword ptr [rsp + 0xc0], rcx
	cmp	rbp, r14
	jne	.label_588
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0xe0]
	cmp	r14, rcx
	mov	rcx, qword ptr [rsp + 0xc0]
	jge	.label_701
	movzx	eax, byte ptr [rcx + r14]
.label_701:
	mov	rcx, qword ptr [rsp + 0xd0]
	test	rcx, rcx
	je	.label_706
	movzx	eax, byte ptr [rcx + rax]
.label_706:
	mov	ecx, 1
	cmp	byte ptr [r13 + rax], 0
	mov	rbp, r14
	jne	.label_588
	jmp	.label_584
.label_634:
	mov	rax, rbp
.label_618:
	mov	ecx, 1
	cmp	rax, rbx
	mov	rbp, rax
	jl	.label_584
.label_588:
	lea	rdi, [rsp + 0xf0]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x2a0]
	call	re_string_reconstruct
	mov	ecx, eax
	test	ecx, ecx
	je	.label_713
	jmp	.label_584
.label_627:
	cmp	eax, 0xc
	jne	.label_716
.label_567:
	mov	ecx, 0xc
.label_584:
	mov	ebx, ecx
	mov	rdi, qword ptr [rsp + 0x1a8]
	call	free
	mov	rax, qword ptr [rsp + 0xe8]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_719
	lea	rdi, [rsp + 0xf0]
	call	match_ctx_clean
	mov	rdi, qword ptr [rsp + 0x1e8]
	call	free
	mov	rdi, qword ptr [rsp + 0x1c8]
	call	free
.label_719:
	mov	rdi, qword ptr [rsp + 0x100]
	call	free
	mov	rdi, qword ptr [rsp + 0x108]
	call	free
	cmp	byte ptr [rsp + 0x17b], 0
	je	.label_736
	mov	rdi, qword ptr [rsp + 0xf8]
	call	free
.label_736:
	mov	eax, ebx
.label_568:
	add	rsp, 0x258
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_583:
	cmp	qword ptr [r10 + 0x10], 0
	je	.label_741
	cmp	byte ptr [rdi + 0x38], 0
	js	.label_742
.label_741:
	xor	ecx, ecx
	test	rbp, rbp
	je	.label_717
	test	r8, r8
	mov	ebp, 0
	mov	eax, 1
	jne	.label_568
	jmp	.label_575
.label_687:
	cmp	dword ptr [rsp + 0x254], 0xc
	je	.label_567
	mov	edi, OFFSET FLAT:.str.25
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 0x435
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	call	__assert_fail
.label_742:
	mov	rcx, r8
	jmp	.label_575
.label_717:
	xor	ebp, ebp
	jmp	.label_575
.label_590:
	mov	rdi, qword ptr [rsp + 0x1a8]
	call	free
	mov	rax, qword ptr [rsp + 0xa8]
	mov	qword ptr [rsp + 0x1a8], rax
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x1a0], rax
	mov	qword ptr [rsp + 0x198], rbp
	mov	r12, qword ptr [rsp + 0xe8]
.label_602:
	mov	qword ptr [rsp + 0xe8], r12
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0x290]
	cmp	qword ptr [rsp + 0xa0], rax
	mov	r14, qword ptr [rsp + 0x298]
	je	.label_584
	cmp	qword ptr [rsp + 0x58], 2
	jb	.label_598
	mov	rsi, qword ptr [rsp + 0x290]
	lea	edx, [rsi + 7]
	mov	rdi, qword ptr [rsp + 0xa0]
	sub	edx, edi
	lea	rax, [rsi - 2]
	sub	rax, rdi
	mov	ecx, 1
	test	dl, 7
	je	.label_601
	lea	rdx, [r14 + 0x10]
	lea	esi, [rsi + 7]
	sub	esi, edi
	and	esi, 7
	xor	edi, edi
.label_607:
	mov	rcx, rdi
	mov	qword ptr [rdx + 8], -1
	mov	qword ptr [rdx], -1
	lea	rdi, [rcx + 1]
	add	rdx, 0x10
	cmp	rsi, rdi
	jne	.label_607
	add	rcx, 2
.label_601:
	cmp	rax, 7
	jb	.label_598
	mov	rax, qword ptr [rsp + 0x58]
	sub	rax, rcx
	shl	rcx, 4
	lea	rcx, [rcx + r14 + 0x70]
.label_623:
	mov	qword ptr [rcx - 0x68], -1
	mov	qword ptr [rcx - 0x70], -1
	mov	qword ptr [rcx - 0x58], -1
	mov	qword ptr [rcx - 0x60], -1
	mov	qword ptr [rcx - 0x48], -1
	mov	qword ptr [rcx - 0x50], -1
	mov	qword ptr [rcx - 0x38], -1
	mov	qword ptr [rcx - 0x40], -1
	mov	qword ptr [rcx - 0x28], -1
	mov	qword ptr [rcx - 0x30], -1
	mov	qword ptr [rcx - 0x18], -1
	mov	qword ptr [rcx - 0x20], -1
	mov	qword ptr [rcx - 8], -1
	mov	qword ptr [rcx - 0x10], -1
	mov	qword ptr [rcx + 8], -1
	mov	qword ptr [rcx], -1
	add	rcx, 0x80
	add	rax, -8
	jne	.label_623
.label_598:
	mov	qword ptr [r14], 0
	mov	rax, qword ptr [rsp + 0x198]
	mov	qword ptr [r14 + 8], rax
	cmp	qword ptr [rsp + 0x58], 2
	jb	.label_594
	mov	rax, qword ptr [rsp + 0x80]
	mov	al, byte ptr [rax + 0x38]
	and	al, 0x10
	jne	.label_594
	mov	rax, qword ptr [rsp + 0xe8]
	test	byte ptr [rax + 0xb0], 1
	jne	.label_656
	xor	eax, eax
	jmp	.label_659
.label_593:
	mov	rax, rbx
	mov	qword ptr [rsp + 0x48], rax
.label_580:
	mov	rdi, qword ptr [rsp + 0x48]
	call	free
	mov	rdi, r15
	call	free
	jmp	.label_567
.label_656:
	cmp	qword ptr [rax + 0x98], 0
	setg	al
.label_659:
	mov	rdi, qword ptr [rsp + 0x80]
	movzx	r8d, al
	lea	rsi, [rsp + 0xf0]
	mov	rdx, qword ptr [rsp + 0x58]
	mov	rcx, r14
	call	set_regs
	mov	ecx, eax
	test	ecx, ecx
	jne	.label_584
.label_594:
	mov	r10b, byte ptr [rsp + 0x17c]
	mov	r8, qword ptr [rsp + 0x108]
	lea	rdx, [r14 + 8]
	xor	ecx, ecx
	mov	r9, qword ptr [rsp + 0xa0]
	mov	rax, qword ptr [rsp + 0x290]
	lea	r11, [rsp + 0x128]
	jmp	.label_676
.label_698:
	mov	rbx, qword ptr [rsp + 0x120]
	cmp	rdi, rbx
	lea	rdi, [r8 + rdi*8]
	cmove	rdi, r11
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rdx - 8], rdi
	mov	rsi, rcx
	shl	rsi, 4
	lea	rbp, [r14 + rsi + 8]
	mov	rsi, qword ptr [rdx]
	cmp	rsi, rbx
	lea	rsi, [r8 + rsi*8]
	cmove	rsi, r11
	mov	rbx, qword ptr [rsi]
	mov	qword ptr [rdx], rbx
	jmp	.label_683
.label_676:
	mov	rdi, qword ptr [rdx - 8]
	cmp	rdi, -1
	je	.label_696
	test	r10b, r10b
	jne	.label_698
	mov	rbx, qword ptr [rdx]
	mov	rbp, rdx
.label_683:
	mov	rsi, qword ptr [rsp + 0x1f8]
	add	rdi, rsi
	mov	qword ptr [rdx - 8], rdi
	add	rbx, rsi
	mov	qword ptr [rbp], rbx
.label_696:
	inc	rcx
	add	rdx, 0x10
	dec	rax
	cmp	r9, rax
	jne	.label_676
	test	r9, r9
	mov	rdi, qword ptr [rsp + 0xe8]
	jle	.label_704
	lea	rcx, [r9 - 1]
	xor	eax, eax
	test	r9b, 3
	je	.label_648
	mov	rdx, qword ptr [rsp + 0x58]
	shl	rdx, 4
	add	rdx, r14
	mov	esi, r9d
	and	esi, 3
	xor	eax, eax
.label_711:
	inc	rax
	mov	qword ptr [rdx + 8], -1
	mov	qword ptr [rdx], -1
	add	rdx, 0x10
	cmp	rsi, rax
	jne	.label_711
.label_648:
	cmp	rcx, 3
	jb	.label_704
	mov	rcx, r9
	sub	rcx, rax
	mov	rdx, qword ptr [rsp + 0x58]
	shl	rdx, 4
	add	rdx, r14
	shl	rax, 4
	add	rax, rdx
	xor	edx, edx
.label_739:
	mov	qword ptr [rax + rdx + 8], -1
	mov	qword ptr [rax + rdx], -1
	mov	qword ptr [rax + rdx + 0x18], -1
	mov	qword ptr [rax + rdx + 0x10], -1
	mov	qword ptr [rax + rdx + 0x28], -1
	mov	qword ptr [rax + rdx + 0x20], -1
	mov	qword ptr [rax + rdx + 0x38], -1
	mov	qword ptr [rax + rdx + 0x30], -1
	add	rdx, 0x40
	add	rcx, -4
	jne	.label_739
.label_704:
	mov	rax, qword ptr [rdi + 0xe0]
	xor	ecx, ecx
	test	rax, rax
	je	.label_584
	cmp	qword ptr [rsp + 0x58], 2
	jb	.label_584
	sub	qword ptr [rsp + 0x68], r9
	lea	rdi, [r14 + 0x18]
	xor	edx, edx
.label_747:
	mov	rsi, qword ptr [rax + rdx*8]
	cmp	rdx, rsi
	je	.label_649
	shl	rsi, 4
	mov	rsi, qword ptr [rsi + r14 + 0x10]
	mov	qword ptr [rdi - 8], rsi
	mov	rsi, qword ptr [rsp + 0xe8]
	mov	rsi, qword ptr [rsi + 0xe0]
	mov	rsi, qword ptr [rsi + rdx*8]
	shl	rsi, 4
	mov	rsi, qword ptr [rsi + r14 + 0x18]
	mov	qword ptr [rdi], rsi
.label_649:
	inc	rdx
	add	rdi, 0x10
	xor	ecx, ecx
	cmp	qword ptr [rsp + 0x68], rdx
	jne	.label_747
	jmp	.label_584
.label_716:
	mov	edi, OFFSET FLAT:.str.25
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 0x46c
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409430
	.globl rpl_re_match
	.type rpl_re_match, @function
rpl_re_match:

	sub	rsp, 0x18
	mov	qword ptr [rsp], r8
	mov	dword ptr [rsp + 8], 1
	xor	r8d, r8d
	mov	r9, rdx
	call	re_search_stub
	add	rsp, 0x18
	ret	
	.section	.text
	.align	32
	#Procedure 0x409450

	.globl re_search_stub
	.type re_search_stub, @function
re_search_stub:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rdi
	test	rcx, rcx
	mov	r14, -1
	js	.label_765
	mov	qword ptr [rsp + 0x30], rsi
	mov	qword ptr [rsp + 0x38], r9
	cmp	rcx, rdx
	jg	.label_765
	mov	r14, qword ptr [rsp + 0x80]
	xor	r12d, r12d
	add	r8, rcx
	cmovns	r12, r8
	cmp	r8, rdx
	cmovg	r12, rdx
	movzx	r13d, byte ptr [rbx + 0x38]
	cmp	r12, rcx
	mov	al, r13b
	jle	.label_749
	test	r13b, 8
	mov	al, r13b
	jne	.label_749
	mov	rax, qword ptr [rbx + 0x20]
	test	rax, rax
	mov	al, r13b
	je	.label_749
	mov	rdi, rbx
	mov	rbp, rcx
	mov	r15, rdx
	call	rpl_re_compile_fastmap
	mov	rdx, r15
	mov	rcx, rbp
	mov	al, byte ptr [rbx + 0x38]
.label_749:
	xor	esi, esi
	test	r14, r14
	mov	ebp, 1
	je	.label_769
	mov	qword ptr [rsp + 0x40], rdx
	mov	r15, rcx
	mov	cl, al
	and	cl, 0x10
	jne	.label_757
	and	al, 6
	movzx	eax, al
	cmp	eax, 4
	jne	.label_760
	mov	rax, qword ptr [r14]
	mov	rbp, qword ptr [rbx + 0x30]
	cmp	rax, rbp
	ja	.label_772
	xor	ecx, ecx
	test	rax, rax
	cmovle	r14, rcx
	mov	ebp, 1
	cmovg	rbp, rax
	jmp	.label_750
.label_769:
	mov	qword ptr [rsp + 0x40], rdx
	mov	r15, rcx
	jmp	.label_757
.label_760:
	mov	rbp, qword ptr [rbx + 0x30]
.label_772:
	inc	rbp
.label_750:
	mov	rsi, r14
.label_757:
	mov	qword ptr [rsp + 0x28], rsi
	mov	rdi, rbp
	shl	rdi, 4
	call	malloc
	mov	rdi, rbx
	mov	r14, -2
	test	rax, rax
	mov	rdx, qword ptr [rsp + 0x40]
	je	.label_765
	mov	cl, r13b
	shr	cl, 5
	and	cl, 1
	and	r13d, 0x40
	movzx	ecx, cl
	shr	r13d, 5
	or	r13d, ecx
	mov	dword ptr [rsp + 0x10], r13d
	mov	qword ptr [rsp + 8], rax
	mov	r13, rax
	mov	qword ptr [rsp], rbp
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rcx, r15
	mov	r8, r12
	mov	r14, rdi
	mov	r9, qword ptr [rsp + 0x38]
	call	re_search_internal
	test	eax, eax
	je	.label_756
	cmp	eax, 1
	sete	al
	movzx	r14d, al
	or	r14, 0xfffffffffffffffe
	mov	rdi, r13
	jmp	.label_748
.label_756:
	mov	qword ptr [rsp + 0x40], r15
	mov	r12, qword ptr [rsp + 0x28]
	test	r12, r12
	mov	rdi, r13
	je	.label_762
	mov	r8, r14
	mov	al, byte ptr [r8 + 0x38]
	shr	al, 1
	and	al, 3
	movzx	eax, al
	cmp	eax, 2
	je	.label_768
	lea	rbx, [rbp + 1]
	cmp	eax, 1
	je	.label_770
	mov	r13, r12
	mov	qword ptr [rsp + 0x38], rdi
	mov	r15, r8
	test	eax, eax
	jne	.label_773
	lea	r12, [rbx*8]
	mov	rdi, r12
	call	malloc
	mov	r14, rax
	mov	rax, r13
	mov	qword ptr [rax + 8], r14
	xor	r13d, r13d
	test	r14, r14
	je	.label_752
	mov	rdi, r12
	mov	r12, rax
	call	malloc
	mov	qword ptr [r12 + 0x10], rax
	test	rax, rax
	je	.label_751
	mov	qword ptr [r12], rbx
	mov	r14d, 1
	mov	r8, r15
	mov	rdi, qword ptr [rsp + 0x38]
	jmp	.label_763
.label_768:
	mov	rbx, qword ptr [r12]
	mov	r14d, 2
	cmp	rbx, rbp
	jae	.label_763
	mov	edi, OFFSET FLAT:.str.24
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 0x1fb
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
.label_770:
	mov	r15, rdi
	mov	rax, qword ptr [r12]
	mov	r14d, 1
	cmp	rbx, rax
	ja	.label_774
	mov	rbx, rax
	mov	rdi, r15
.label_763:
	test	rbp, rbp
	jle	.label_754
	mov	rdx, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r12 + 0x10]
	xor	esi, esi
	test	bpl, 1
	je	.label_758
	mov	rax, qword ptr [rdi]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rdi + 8]
	mov	qword ptr [rcx], rax
	mov	esi, 1
.label_758:
	cmp	rbp, 1
	je	.label_764
	mov	rax, rbp
	sub	rax, rsi
	lea	rcx, [rcx + rsi*8 + 8]
	lea	rdx, [rdx + rsi*8 + 8]
	shl	rsi, 4
	lea	rsi, [rsi + rdi + 0x18]
	nop	
.label_771:
	mov	rbx, qword ptr [rsi - 0x18]
	mov	qword ptr [rdx - 8], rbx
	mov	rbx, qword ptr [rsi - 0x10]
	mov	qword ptr [rcx - 8], rbx
	mov	rbx, qword ptr [rsi - 8]
	mov	qword ptr [rdx], rbx
	mov	rbx, qword ptr [rsi]
	mov	qword ptr [rcx], rbx
	add	rcx, 0x10
	add	rsi, 0x20
	add	rdx, 0x10
	add	rax, -2
	jne	.label_771
.label_764:
	mov	rbx, qword ptr [r12]
	jmp	.label_753
.label_754:
	xor	ebp, ebp
.label_753:
	cmp	rbp, rbx
	jae	.label_755
	mov	rax, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r12 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_761:
	mov	qword ptr [rcx + rbp*8], -1
	mov	qword ptr [rax + rbp*8], -1
	inc	rbp
	cmp	rbp, qword ptr [r12]
	jb	.label_761
.label_755:
	mov	r13d, r14d
.label_759:
	mov	al, byte ptr [r8 + 0x38]
	add	r13b, r13b
	and	al, 0xf9
	mov	cl, r13b
	and	cl, 6
	or	cl, al
	and	r13b, 6
	mov	byte ptr [r8 + 0x38], cl
	mov	r14, -2
	je	.label_748
.label_762:
	mov	al, byte ptr [rsp + 0x88]
	mov	r14, qword ptr [rdi]
	test	al, al
	je	.label_748
	mov	rax, qword ptr [rsp + 0x40]
	cmp	r14, rax
	jne	.label_775
	mov	r14, qword ptr [rdi + 8]
	sub	r14, rax
.label_748:
	call	free
.label_765:
	mov	rax, r14
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_774:
	mov	qword ptr [rsp + 0x38], r8
	mov	rdi, qword ptr [r12 + 8]
	lea	rsi, [rbx*8]
	mov	qword ptr [rsp + 0x30], rsi
	call	realloc
	xor	r13d, r13d
	test	rax, rax
	je	.label_767
	mov	qword ptr [rsp + 0x20], rax
	mov	rdi, qword ptr [r12 + 0x10]
	mov	rsi, qword ptr [rsp + 0x30]
	call	realloc
	test	rax, rax
	je	.label_766
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [r12 + 8], rcx
	mov	qword ptr [r12 + 0x10], rax
	mov	qword ptr [r12], rbx
	mov	r8, qword ptr [rsp + 0x38]
	mov	rdi, r15
	jmp	.label_763
.label_751:
	mov	rdi, r14
	call	free
.label_752:
	mov	r8, r15
	mov	rdi, qword ptr [rsp + 0x38]
	jmp	.label_759
.label_766:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
.label_767:
	mov	r8, qword ptr [rsp + 0x38]
	mov	rdi, r15
	jmp	.label_759
.label_773:
	mov	edi, OFFSET FLAT:.str.23
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 0x1f9
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
.label_775:
	mov	edi, OFFSET FLAT:.str.21
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 0x1be
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_search_stub
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409870

	.globl rpl_re_search
	.type rpl_re_search, @function
rpl_re_search:
	sub	rsp, 0x18
	mov	qword ptr [rsp], r9
	mov	dword ptr [rsp + 8], 0
	mov	r9, rdx
	call	re_search_stub
	add	rsp, 0x18
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409890
	.globl rpl_re_match_2
	.type rpl_re_match_2, @function
rpl_re_match_2:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, qword ptr [rsp + 0x68]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_778
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_781
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_778
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_777
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [rsp + 0x20], r9
	xor	r12d, r12d
	test	r14, r14
	jle	.label_779
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], rdx
	call	malloc
	mov	r12, rax
	test	r12, r12
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_778
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	mov	r13, rax
	call	memcpy
	mov	rdi, r12
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp + 0x68]
	mov	r9, r13
	mov	r13, r12
	mov	rdx, qword ptr [rsp + 0x10]
	jmp	.label_777
.label_781:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_780
.label_778:
	mov	rax, -2
	jmp	.label_776
.label_780:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_777
.label_779:
	mov	r13, r15
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x18]
.label_777:
	mov	rax, qword ptr [rsp + 0x60]
	mov	qword ptr [rsp], rax
	mov	dword ptr [rsp + 8], 1
	xor	r8d, r8d
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	call	re_search_stub
	mov	rbx, rax
	mov	rdi, r12
	call	free
	mov	rax, rbx
.label_776:
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
	#Procedure 0x4099c0
	.globl rpl_re_search_2
	.type rpl_re_search_2, @function
rpl_re_search_2:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_782
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_785
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_782
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_784
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [rsp + 0x20], r9
	xor	r12d, r12d
	test	r14, r14
	jle	.label_787
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], rdx
	call	malloc
	mov	r12, rax
	test	r12, r12
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_782
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	mov	r13, rax
	call	memcpy
	mov	rdi, r12
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp + 0x70]
	mov	r9, r13
	mov	r13, r12
	mov	rdx, qword ptr [rsp + 0x10]
	jmp	.label_784
.label_785:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_783
.label_782:
	mov	rax, -2
	jmp	.label_786
.label_783:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_784
.label_787:
	mov	r13, r15
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x18]
.label_784:
	mov	rax, qword ptr [rsp + 0x68]
	mov	r8, qword ptr [rsp + 0x60]
	mov	qword ptr [rsp], rax
	mov	dword ptr [rsp + 8], 0
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	call	re_search_stub
	mov	rbx, rax
	mov	rdi, r12
	call	free
	mov	rax, rbx
.label_786:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409b00
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	mov	al, byte ptr [rdi + 0x38]
	and	al, 0xf9
	mov	r9b, al
	or	r9b, 2
	test	rdx, rdx
	je	.label_788
	mov	al, r9b
.label_788:
	cmove	r8, rdx
	cmove	rcx, rdx
	mov	byte ptr [rdi + 0x38], al
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 0x10], r8
	mov	qword ptr [rsi + 8], rcx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409b30

	.globl free_state
	.type free_state, @function
free_state:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x30]
	call	free
	mov	rdi, qword ptr [rbx + 0x48]
	call	free
	mov	rax, qword ptr [rbx + 0x50]
	lea	rcx, [rbx + 8]
	cmp	rax, rcx
	je	.label_789
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x50]
	call	free
.label_789:
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, qword ptr [rbx + 0x60]
	call	free
	mov	rdi, qword ptr [rbx + 0x58]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409b90

	.globl re_string_realloc_buffers
	.type re_string_realloc_buffers, @function
re_string_realloc_buffers:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_791
	mov	rax, r14
	shr	rax, 0x3d
	mov	ebp, 0xc
	jne	.label_790
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [r14*4]
	call	realloc
	test	rax, rax
	je	.label_790
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_791
	lea	rsi, [r14*8]
	call	realloc
	test	rax, rax
	je	.label_790
	mov	qword ptr [rbx + 0x18], rax
.label_791:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_792
	mov	rdi, qword ptr [rbx + 8]
	mov	rsi, r14
	call	realloc
	mov	ebp, 0xc
	test	rax, rax
	je	.label_790
	mov	qword ptr [rbx + 8], rax
.label_792:
	mov	qword ptr [rbx + 0x40], r14
	xor	ebp, ebp
.label_790:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409c20

	.globl build_wcs_upper_buffer
	.type build_wcs_upper_buffer, @function
build_wcs_upper_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	r12, rdi
	mov	r15, qword ptr [r12 + 0x30]
	mov	r13, qword ptr [r12 + 0x40]
	mov	rax, qword ptr [r12 + 0x58]
	cmp	r13, rax
	cmovg	r13, rax
	cmp	byte ptr [r12 + 0x8a], 0
	jne	.label_800
	cmp	qword ptr [r12 + 0x78], 0
	jne	.label_800
	cmp	byte ptr [r12 + 0x8c], 0
	je	.label_817
.label_800:
	mov	rbx, qword ptr [r12 + 0x38]
	jmp	.label_819
.label_817:
	cmp	r13, r15
	jle	.label_822
	lea	rax, [r12 + 0x78]
	mov	qword ptr [rsp + 0x10], rax
	lea	r14, [r12 + 0x20]
	jmp	.label_808
.label_807:
	lea	rax, [rbp + 1]
	cmp	rax, 2
	jb	.label_829
	cmp	rbp, -2
	jne	.label_831
	mov	rax, qword ptr [r12 + 0x40]
	cmp	rax, qword ptr [r12 + 0x58]
	jl	.label_831
.label_829:
	mov	rax, qword ptr [r12 + 0x28]
	add	rax, r15
	mov	rcx, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdx + r15], al
	mov	rcx, qword ptr [r12 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	rbp, -1
	je	.label_835
.label_847:
	mov	rax, r15
	jmp	.label_793
.label_835:
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [r14], rax
	jmp	.label_847
	nop	word ptr [rax + rax]
.label_808:
	mov	qword ptr [rsp + 0x20], r13
	mov	rbp, qword ptr [r12]
	mov	rbx, qword ptr [r12 + 0x28]
	lea	rax, [rbx + r15]
	movzx	r13d, byte ptr [rbp + rax]
	test	r13b, r13b
	js	.label_798
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_798
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	al, byte ptr [rax + r13*4]
	mov	rcx, qword ptr [r12 + 8]
	mov	byte ptr [rcx + r15], al
	mov	rax, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r12 + 0x10]
	movzx	eax, byte ptr [rax + r15]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	mov	rax, r15
	mov	r13, qword ptr [rsp + 0x20]
	jmp	.label_793
	nop	word ptr cs:[rax + rax]
.label_798:
	mov	r13, qword ptr [rsp + 0x20]
	mov	rdx, r13
	sub	rdx, r15
	mov	rax, qword ptr [r14]
	mov	qword ptr [rsp + 0x70], rax
	add	rbp, rbx
	add	rbp, r15
	lea	rdi, [rsp + 0x2c]
	mov	rsi, rbp
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	rbp, rax
	lea	rax, [rbp - 1]
	cmp	rax, -4
	ja	.label_807
	mov	edi, dword ptr [rsp + 0x2c]
	call	towupper
	mov	ebx, eax
	cmp	ebx, dword ptr [rsp + 0x2c]
	jne	.label_834
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	mov	rsi, qword ptr [r12]
	add	rsi, qword ptr [r12 + 0x28]
	add	rsi, r15
	mov	rdx, rbp
	call	memcpy
	jmp	.label_841
.label_834:
	mov	esi, ebx
	mov	dword ptr [rsp + 0x18], esi
	mov	rbx, rbp
	lea	rbp, [rsp + 0x30]
	mov	rdi, rbp
	lea	rdx, [rsp + 0x70]
	call	wcrtomb
	cmp	rbx, rax
	jne	.label_804
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	mov	rsi, rbp
	mov	rdx, rbx
	call	memcpy
	mov	rbp, rbx
	mov	ebx, dword ptr [rsp + 0x18]
.label_841:
	mov	rax, qword ptr [r12 + 0x10]
	mov	dword ptr [rax + r15*4], ebx
	lea	rbx, [rbp + r15]
	lea	rax, [r15 + 1]
	cmp	rax, rbx
	jge	.label_793
	mov	rax, qword ptr [r12 + 0x10]
	lea	rdi, [rax + r15*4 + 4]
	lea	rdx, [rbp*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rax, rbx
.label_793:
	cmp	r13, rax
	mov	r15, rax
	jg	.label_808
	jmp	.label_813
.label_804:
	mov	rbx, r15
	mov	rcx, qword ptr [rsp + 0x10]
	jmp	.label_814
.label_831:
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [r14], rax
.label_822:
	mov	rax, r15
.label_813:
	mov	qword ptr [r12 + 0x30], rax
	mov	qword ptr [r12 + 0x38], rax
	jmp	.label_818
.label_819:
	cmp	r15, r13
	jge	.label_820
	lea	r14, [r12 + 0x20]
	lea	rcx, [r12 + 0x78]
.label_814:
	mov	rdx, r13
	sub	rdx, r15
	mov	rax, qword ptr [r14]
	mov	qword ptr [rsp + 0x70], rax
	mov	rax, qword ptr [rcx]
	test	rax, rax
	jne	.label_827
	mov	rbp, qword ptr [r12]
	add	rbp, qword ptr [r12 + 0x28]
	add	rbp, rbx
.label_799:
	lea	rdi, [rsp + 0x28]
	mov	rsi, rbp
	mov	rcx, r14
	mov	qword ptr [rsp + 0x18], r14
	call	rpl_mbrtowc
	mov	r14, rax
	lea	rax, [r14 - 1]
	cmp	rax, -4
	ja	.label_838
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x20], r13
	mov	edi, dword ptr [rsp + 0x28]
	call	towupper
	mov	r13d, eax
	cmp	r13d, dword ptr [rsp + 0x28]
	je	.label_846
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 0x70]
	mov	esi, r13d
	call	wcrtomb
	mov	r8, rax
	mov	rcx, r8
	sub	rcx, r14
	jne	.label_851
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	jmp	.label_796
.label_827:
	lea	rbp, [rsp + 0x30]
	movsxd	rcx, dword ptr [r12 + 0x90]
	test	rcx, rcx
	jle	.label_799
	mov	r8, rbx
	xor	esi, esi
	nop	dword ptr [rax]
.label_815:
	cmp	rsi, rdx
	jge	.label_810
	mov	rdi, qword ptr [r12]
	add	rdi, qword ptr [r12 + 0x28]
	add	rdi, r8
	movzx	edi, byte ptr [rsi + rdi]
	mov	bl, byte ptr [rax + rdi]
	mov	byte ptr [rsp + rsi + 0x30], bl
	inc	rsi
	cmp	rsi, rcx
	jl	.label_815
	mov	rbx, r8
	jmp	.label_799
.label_838:
	lea	rax, [r14 + 1]
	cmp	rax, 2
	jb	.label_833
	cmp	r14, -2
	jne	.label_826
	mov	rax, qword ptr [r12 + 0x40]
	cmp	rax, qword ptr [r12 + 0x58]
	jl	.label_826
.label_833:
	mov	rax, qword ptr [r12 + 0x28]
	add	rax, rbx
	mov	rdx, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 0x78]
	mov	al, byte ptr [rdx + rax]
	movzx	edx, al
	test	rcx, rcx
	jne	.label_830
.label_795:
	movzx	eax, al
	mov	rcx, qword ptr [r12 + 8]
	mov	byte ptr [rcx + r15], al
	cmp	byte ptr [r12 + 0x8c], 0
	jne	.label_837
.label_797:
	inc	rbx
	mov	rcx, qword ptr [r12 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	r14, -1
	je	.label_842
.label_840:
	mov	rbp, r15
	jmp	.label_819
.label_851:
	cmp	r8, -1
	je	.label_846
	lea	rbp, [r8 + r15]
	mov	rdi, qword ptr [r12 + 0x40]
	cmp	rbp, rdi
	jbe	.label_850
.label_826:
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [rcx], rax
.label_820:
	mov	qword ptr [r12 + 0x30], r15
	mov	qword ptr [r12 + 0x38], rbx
.label_818:
	xor	eax, eax
.label_805:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_846:
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	mov	rsi, rbp
.label_796:
	mov	rdx, r14
	call	memcpy
	cmp	byte ptr [r12 + 0x8c], 0
	je	.label_809
	mov	rax, qword ptr [r12 + 0x18]
	xor	esi, esi
	cmp	r14, 4
	jb	.label_816
	xor	esi, esi
	mov	rcx, r14
	and	rcx, 0xfffffffffffffffc
	je	.label_816
	movq	xmm0, rbx
	pshufd	xmm0, xmm0, 0x44
	lea	rdi, [r14 - 4]
	mov	rsi, rdi
	shr	rsi, 2
	xor	edx, edx
	bt	rdi, 2
	jb	.label_821
	mov	edx, 1
	movq	xmm1, rdx
	pslldq	xmm1, 8
	paddq	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_361]
	paddq	xmm2, xmm0
	movdqu	xmmword ptr [rax + r15*8], xmm1
	movdqu	xmmword ptr [rax + r15*8 + 0x10], xmm2
	mov	edx, 4
.label_821:
	test	rsi, rsi
	je	.label_839
	lea	rsi, [rax + r15*8 + 0x30]
	mov	edi, 1
	movq	xmm1, rdi
	pslldq	xmm1, 8
	movdqa	xmm2, xmmword ptr [rip + label_361]
	nop	word ptr cs:[rax + rax]
.label_803:
	movq	xmm3, rdx
	pshufd	xmm3, xmm3, 0x44
	paddq	xmm3, xmm0
	movdqa	xmm4, xmm3
	paddq	xmm4, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rsi + rdx*8 - 0x30], xmm4
	movdqu	xmmword ptr [rsi + rdx*8 - 0x20], xmm3
	lea	rdi, [rdx + 4]
	movq	xmm3, rdi
	pshufd	xmm3, xmm3, 0x44
	paddq	xmm3, xmm0
	movdqa	xmm4, xmm3
	paddq	xmm4, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rsi + rdx*8 - 0x10], xmm4
	movdqu	xmmword ptr [rsi + rdx*8], xmm3
	add	rdx, 8
	cmp	rdx, rcx
	jne	.label_803
.label_839:
	cmp	r14, rcx
	mov	rsi, rcx
	je	.label_809
.label_816:
	mov	rcx, r14
	sub	rcx, rsi
	lea	rdx, [rsi + rbx]
	add	rsi, r15
	lea	rax, [rax + rsi*8]
	nop	word ptr cs:[rax + rax]
.label_823:
	mov	qword ptr [rax], rdx
	inc	rdx
	add	rax, 8
	dec	rcx
	jne	.label_823
.label_809:
	add	rbx, r14
	mov	rax, qword ptr [r12 + 0x10]
	mov	dword ptr [rax + r15*4], r13d
	lea	rbp, [r14 + r15]
	inc	r15
	cmp	r15, rbp
	jge	.label_828
	mov	rax, qword ptr [r12 + 0x10]
	lea	rdi, [rax + r15*4]
	lea	rdx, [r14*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	r13, qword ptr [rsp + 0x20]
	mov	r15, rbp
	jmp	.label_819
.label_828:
	mov	rbp, r15
	mov	r13, qword ptr [rsp + 0x20]
	jmp	.label_819
.label_810:
	mov	rbx, r8
	jmp	.label_799
.label_850:
	mov	rax, qword ptr [r12 + 0x18]
	test	rax, rax
	jne	.label_844
	shl	rdi, 3
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 0x20], r8
	call	malloc
	mov	r8, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [r12 + 0x18], rax
	test	rax, rax
	je	.label_849
.label_844:
	mov	qword ptr [rsp + 8], rcx
	cmp	byte ptr [r12 + 0x8c], 0
	jne	.label_794
	test	r15, r15
	je	.label_836
	xor	edx, edx
	cmp	r15, 4
	jb	.label_802
	xor	edx, edx
	mov	rcx, r15
	and	rcx, 0xfffffffffffffffc
	je	.label_802
	lea	rdi, [r15 - 4]
	mov	rsi, rdi
	shr	rsi, 2
	xor	edx, edx
	bt	rdi, 2
	jb	.label_811
	mov	edx, 1
	movq	xmm0, rdx
	pslldq	xmm0, 8
	movdqu	xmmword ptr [rax], xmm0
	movdqa	xmm0, xmmword ptr [rip + label_361]
	movdqu	xmmword ptr [rax + 0x10], xmm0
	mov	edx, 4
.label_811:
	test	rsi, rsi
	je	.label_801
	mov	esi, 1
	movq	xmm0, rsi
	pslldq	xmm0, 8
	movdqa	xmm1, xmmword ptr [rip + label_361]
.label_832:
	movq	xmm2, rdx
	pshufd	xmm2, xmm2, 0x44
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	paddq	xmm2, xmm1
	movdqu	xmmword ptr [rax + rdx*8], xmm3
	movdqu	xmmword ptr [rax + rdx*8 + 0x10], xmm2
	lea	rsi, [rdx + 4]
	movq	xmm2, rsi
	pshufd	xmm2, xmm2, 0x44
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	paddq	xmm2, xmm1
	movdqu	xmmword ptr [rax + rdx*8 + 0x20], xmm3
	movdqu	xmmword ptr [rax + rdx*8 + 0x30], xmm2
	add	rdx, 8
	cmp	rdx, rcx
	jne	.label_832
.label_801:
	cmp	r15, rcx
	mov	rdx, rcx
	je	.label_836
.label_802:
	mov	qword ptr [rax + rdx*8], rdx
	inc	rdx
	cmp	r15, rdx
	jne	.label_802
.label_836:
	mov	byte ptr [r12 + 0x8c], 1
.label_794:
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	mov	rdx, r8
	mov	qword ptr [rsp + 0x20], r8
	call	memcpy
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [r12 + 0x10]
	mov	dword ptr [rax + r15*4], r13d
	mov	rax, qword ptr [r12 + 0x18]
	mov	qword ptr [rax + r15*8], rbx
	cmp	rdi, 2
	mov	r11, qword ptr [rsp + 0x10]
	jb	.label_806
	mov	r9, qword ptr [r12 + 0x10]
	mov	r8, qword ptr [r12 + 0x18]
	lea	r10, [rdi - 1]
	mov	eax, 1
	cmp	r10, 4
	jb	.label_812
	mov	rcx, r10
	and	rcx, 0xfffffffffffffffc
	mov	r13, r10
	and	r13, 0xfffffffffffffffc
	mov	eax, 1
	je	.label_812
	mov	rax, rcx
	or	rax, 1
	movq	xmm0, r14
	pshufd	xmm3, xmm0, 0x44
	movq	xmm1, r11
	mov	rdi, r11
	pshufd	xmm11, xmm1, 0x44
	movq	xmm2, rbx
	mov	r11, rbx
	pshufd	xmm12, xmm2, 0x44
	lea	rcx, [r8 + r15*8 + 0x18]
	lea	rdx, [r9 + r15*4 + 0xc]
	xor	esi, esi
	mov	ebx, 1
	movq	xmm10, rbx
	pslldq	xmm10, 8
	movdqa	xmm8, xmmword ptr [rip + label_361]
	movdqa	xmm9, xmmword ptr [rip + label_824]
	pxor	xmm3, xmm9
	pshufd	xmm6, xmmword ptr [rip + label_825],  0xe8
.label_848:
	lea	rbx, [rsi + 1]
	movq	xmm4, rbx
	pshufd	xmm7, xmm4, 0x44
	movdqa	xmm5, xmm7
	paddq	xmm5, xmm10
	paddq	xmm7, xmm8
	movdqa	xmm4, xmm5
	pxor	xmm4, xmm9
	movdqa	xmm0, xmm3
	pcmpgtd	xmm0, xmm4
	pshufd	xmm1, xmm0, 0xa0
	pcmpeqd	xmm4, xmm3
	pshufd	xmm4, xmm4, 0xf5
	pand	xmm4, xmm1
	pshufd	xmm0, xmm0, 0xf5
	por	xmm0, xmm4
	movdqa	xmm1, xmm7
	pxor	xmm1, xmm9
	movdqa	xmm4, xmm3
	pcmpgtd	xmm4, xmm1
	pshufd	xmm2, xmm4, 0xa0
	pcmpeqd	xmm1, xmm3
	pshufd	xmm1, xmm1, 0xf5
	pand	xmm1, xmm2
	pshufd	xmm2, xmm4, 0xf5
	por	xmm2, xmm1
	pand	xmm5, xmm0
	pandn	xmm0, xmm11
	por	xmm0, xmm5
	pand	xmm7, xmm2
	pandn	xmm2, xmm11
	por	xmm2, xmm7
	paddq	xmm0, xmm12
	paddq	xmm2, xmm12
	movdqu	xmmword ptr [rcx + rsi*8 - 0x10], xmm0
	movdqu	xmmword ptr [rcx + rsi*8], xmm2
	movq	qword ptr [rdx + rsi*4 - 8], xmm6
	movq	qword ptr [rdx + rsi*4], xmm6
	add	rsi, 4
	cmp	r13, rsi
	jne	.label_848
	cmp	r10, r13
	mov	rbx, r11
	mov	r11, rdi
	mov	rdi, qword ptr [rsp + 0x20]
	je	.label_806
.label_812:
	lea	rcx, [r9 + r15*4]
	lea	rdx, [r8 + r15*8]
.label_843:
	cmp	rax, r14
	mov	rsi, r11
	cmovb	rsi, rax
	add	rsi, rbx
	mov	qword ptr [rdx + rax*8], rsi
	mov	dword ptr [rcx + rax*4], 0xffffffff
	inc	rax
	cmp	rdi, rax
	jne	.label_843
.label_806:
	mov	rax, qword ptr [r12 + 0x58]
	mov	rcx, qword ptr [rsp + 8]
	add	rax, rcx
	mov	qword ptr [r12 + 0x58], rax
	cmp	qword ptr [r12 + 0x60], rbx
	jle	.label_845
	add	qword ptr [r12 + 0x68], rcx
.label_845:
	mov	r13, qword ptr [r12 + 0x40]
	cmp	r13, rax
	cmovg	r13, rax
	add	rbx, r14
	mov	r15, rbp
	jmp	.label_819
.label_830:
	mov	al, byte ptr [rcx + rdx]
	jmp	.label_795
.label_837:
	mov	rcx, qword ptr [r12 + 0x18]
	mov	qword ptr [rcx + r15*8], rbx
	jmp	.label_797
.label_842:
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [rcx], rax
	jmp	.label_840
.label_849:
	mov	eax, 0xc
	jmp	.label_805
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a540

	.globl build_wcs_buffer
	.type build_wcs_buffer, @function
build_wcs_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	rbx, rdi
	mov	r13, qword ptr [rbx + 0x30]
	mov	r12, qword ptr [rbx + 0x40]
	mov	rax, qword ptr [rbx + 0x58]
	cmp	r12, rax
	cmovg	r12, rax
	cmp	r12, r13
	jle	.label_852
	lea	r14, [rbx + 0x20]
	lea	r15, [rsp + 0xc]
	jmp	.label_861
	nop	dword ptr [rax + rax]
.label_858:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r13
	mov	rcx, qword ptr [rbx]
	movzx	ecx, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], ecx
	mov	rax, qword ptr [rbx + 0x78]
	test	rax, rax
	jne	.label_853
.label_855:
	mov	qword ptr [r14], rbp
	mov	eax, 1
	jmp	.label_859
.label_862:
	mov	ecx, dword ptr [rsp + 0xc]
	nop	dword ptr [rax]
.label_859:
	mov	rdx, qword ptr [rbx + 0x10]
	mov	dword ptr [rdx + r13*4], ecx
	lea	rbp, [rax + r13]
	lea	rcx, [r13 + 1]
	cmp	rcx, rbp
	jge	.label_860
	mov	rcx, qword ptr [rbx + 0x10]
	lea	rdi, [rcx + r13*4 + 4]
	lea	rdx, [rax*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rcx, rbp
.label_860:
	cmp	r12, rcx
	mov	r13, rcx
	jg	.label_861
	jmp	.label_863
.label_864:
	cmp	dword ptr [rbx + 0x90], 0
	mov	eax, 0
	lea	rsi, [rsp + 0x10]
	jle	.label_854
	nop	dword ptr [rax + rax]
.label_857:
	cmp	rax, rdx
	jge	.label_856
	mov	rcx, qword ptr [rbx]
	mov	rsi, qword ptr [rbx + 0x78]
	add	rcx, qword ptr [rbx + 0x28]
	add	rcx, r13
	movzx	ecx, byte ptr [rax + rcx]
	mov	cl, byte ptr [rsi + rcx]
	mov	rsi, qword ptr [rbx + 8]
	add	rsi, r13
	mov	byte ptr [rax + rsi], cl
	mov	byte ptr [rsp + rax + 0x10], cl
	inc	rax
	movsxd	rcx, dword ptr [rbx + 0x90]
	cmp	rax, rcx
	jl	.label_857
	lea	rsi, [rsp + 0x10]
	jmp	.label_854
.label_853:
	movzx	ecx, byte ptr [rax + rcx]
	mov	dword ptr [rsp + 0xc], ecx
	jmp	.label_855
.label_856:
	lea	rsi, [rsp + 0x10]
	jmp	.label_854
	nop	word ptr cs:[rax + rax]
.label_861:
	mov	rdx, r12
	sub	rdx, r13
	mov	rbp, qword ptr [rbx + 0x20]
	cmp	qword ptr [rbx + 0x78], 0
	jne	.label_864
	mov	rsi, qword ptr [rbx]
	add	rsi, qword ptr [rbx + 0x28]
	add	rsi, r13
.label_854:
	mov	rdi, r15
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_858
	cmp	rax, -2
	jne	.label_862
	mov	rax, qword ptr [rbx + 0x40]
	cmp	rax, qword ptr [rbx + 0x58]
	jge	.label_858
	mov	qword ptr [r14], rbp
.label_852:
	mov	rcx, r13
.label_863:
	mov	qword ptr [rbx + 0x30], rcx
	mov	qword ptr [rbx + 0x38], rcx
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a6e0

	.globl parse_reg_exp
	.type parse_reg_exp, @function
parse_reg_exp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x18], r9
	mov	qword ptr [rsp + 0x28], r8
	mov	qword ptr [rsp + 0x10], rcx
	mov	r13, rdx
	mov	qword ptr [rsp + 8], rsi
	mov	r12, rdi
	mov	r14, qword ptr [rsi]
	mov	rax, qword ptr [r14 + 0xa8]
	mov	qword ptr [rsp], rax
	call	parse_branch
	mov	rbx, rax
	xor	ebp, ebp
	test	rbx, rbx
	jne	.label_873
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax]
	test	eax, eax
	jne	.label_874
.label_873:
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 0xa
	jne	.label_876
	mov	rax, qword ptr [rsp + 0x10]
	or	rax, 0x800000
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_868
.label_872:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_879
	mov	rcx, qword ptr [r14 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x70], rax
	mov	dword ptr [r14 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_880
	nop	word ptr cs:[rax + rax]
.label_868:
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x30]
	call	peek_token
	cdqe	
	add	qword ptr [r12 + 0x48], rax
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	ecx, 8
	cmp	ecx, 0xa
	mov	r15d, 0
	je	.label_871
	cmp	qword ptr [rsp + 0x28], 0
	je	.label_877
	cmp	eax, 9
	mov	r15d, 0
	je	.label_871
.label_877:
	mov	rax, qword ptr [r14 + 0xa8]
	mov	qword ptr [rsp + 0x20], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [r14 + 0xa8], rax
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r9, rbp
	call	parse_branch
	mov	r15, rax
	test	r15, r15
	jne	.label_865
	mov	eax, dword ptr [rbp]
	test	eax, eax
	jne	.label_867
.label_865:
	mov	rax, qword ptr [rsp + 0x20]
	or	qword ptr [r14 + 0xa8], rax
	nop	word ptr [rax + rax]
.label_871:
	mov	ecx, dword ptr [r14 + 0x80]
	cmp	ecx, 0xf
	je	.label_872
	mov	rax, qword ptr [r14 + 0x70]
.label_880:
	lea	edx, [rcx + 1]
	mov	dword ptr [r14 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0xa
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbx, rbx
	je	.label_869
	mov	qword ptr [rbx], rbp
.label_869:
	test	r15, r15
	je	.label_866
	mov	qword ptr [r15], rbp
.label_866:
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 0xa
	mov	rbx, rbp
	je	.label_868
	jmp	.label_874
.label_876:
	mov	rbp, rbx
.label_874:
	mov	rax, rbp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_867:
	xor	ebp, ebp
	test	rbx, rbx
	je	.label_874
	mov	r14d, 0x400ff
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_878:
	mov	r15, rbx
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	jne	.label_878
	mov	rbx, qword ptr [r15 + 0x10]
	test	rbx, rbx
	jne	.label_878
	nop	word ptr cs:[rax + rax]
.label_870:
	mov	eax, dword ptr [r15 + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_881
	cmp	eax, 6
	jne	.label_882
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_875
	nop	dword ptr [rax]
.label_881:
	mov	rdi, qword ptr [r15 + 0x28]
.label_875:
	call	free
.label_882:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_874
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, r15
	mov	r15, rax
	je	.label_870
	test	rbx, rbx
	mov	r15, rax
	je	.label_870
	jmp	.label_878
.label_879:
	mov	rax, qword ptr [rsp + 0x18]
	mov	dword ptr [rax], 0xc
	xor	ebp, ebp
	jmp	.label_874
	.section	.text
	.align	32
	#Procedure 0x40a970

	.globl peek_token
	.type peek_token, @function
peek_token:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbp, rsi
	mov	r15, rdi
	mov	rax, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rax
	jle	.label_904
	mov	r13, rdx
	mov	rcx, qword ptr [rbp + 8]
	movzx	r12d, byte ptr [rcx + rax]
	mov	byte ptr [r15], r12b
	mov	ebx, dword ptr [r15 + 8]
	mov	eax, ebx
	and	eax, 0xff9fffff
	mov	dword ptr [r15 + 8], eax
	mov	edx, dword ptr [rbp + 0x90]
	cmp	edx, 2
	jl	.label_906
	mov	rax, qword ptr [rbp + 0x48]
	cmp	rax, qword ptr [rbp + 0x30]
	je	.label_906
	mov	rcx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_913
.label_906:
	cmp	r12d, 0x5c
	jne	.label_916
	mov	rcx, qword ptr [rbp + 0x48]
	lea	rax, [rcx + 1]
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_917
	cmp	byte ptr [rbp + 0x8b], 0
	jne	.label_921
.label_911:
	mov	rcx, qword ptr [rbp + 8]
	mov	r14b, byte ptr [rcx + rax]
.label_883:
	mov	byte ptr [r15], r14b
	and	ebx, 0xff9fff00
	or	ebx, 1
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_885
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	ebp, dword ptr [rax + rcx*4 + 4]
	mov	edi, ebp
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	ebp, 0x5f
	sete	cl
	or	cl, al
	movzx	ecx, cl
	shl	ecx, 0x16
	mov	eax, 0xffbfffff
	and	eax, dword ptr [r15 + 8]
	or	eax, ecx
	jmp	.label_892
.label_904:
	mov	byte ptr [r15 + 8], 2
	xor	r14d, r14d
	jmp	.label_886
.label_916:
	and	ebx, 0xff9fff00
	or	ebx, 1
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_898
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	ebx, dword ptr [rax + rcx*4]
	mov	edi, ebx
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	ebx, 0x5f
	sete	cl
	or	cl, al
	movzx	ecx, cl
	shl	ecx, 0x16
	mov	eax, 0xffbfffff
	and	eax, dword ptr [r15 + 8]
	or	eax, ecx
	jmp	.label_905
.label_917:
	and	ebx, 0xff9fff00
	or	ebx, 0x24
	jmp	.label_912
.label_898:
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + r12*2]
	cmp	r12d, 0x5f
	sete	cl
	movzx	ecx, cl
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	or	eax, ebx
.label_905:
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 1
	cmp	r12d, 0x3e
	jg	.label_893
	lea	ecx, [r12 - 0x24]
	cmp	ecx, 0xa
	ja	.label_920
	jmp	qword ptr [(rcx * 8) + label_919]
.label_2171:
	mov	rdx, r13
	test	dl, 8
	jne	.label_884
	mov	rcx, qword ptr [rbp + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rbp + 0x58]
	je	.label_884
	mov	qword ptr [rbp + 0x48], rcx
	lea	rdi, [rsp + 8]
	mov	rsi, rbp
	call	peek_token
	dec	qword ptr [rbp + 0x48]
	movzx	eax, byte ptr [rsp + 0x10]
	add	eax, -9
	cmp	eax, 1
	ja	.label_886
	mov	eax, dword ptr [r15 + 8]
.label_884:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x20
	jmp	.label_886
.label_893:
	cmp	r12d, 0x7a
	jg	.label_899
	cmp	r12d, 0x3f
	je	.label_901
	cmp	r12d, 0x5b
	mov	rdx, r13
	je	.label_903
	cmp	r12d, 0x5e
	jne	.label_886
	test	edx, 0x800008
	jne	.label_889
	mov	rcx, qword ptr [rbp + 0x48]
	test	rcx, rcx
	je	.label_889
	test	dh, 8
	je	.label_886
	mov	rdx, qword ptr [rbp + 8]
	movzx	ecx, byte ptr [rcx + rdx - 1]
	cmp	ecx, 0xa
	jne	.label_886
.label_889:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x10
	jmp	.label_886
.label_885:
	movzx	ebp, r14b
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	cmp	ebp, 0x5f
	sete	cl
	movzx	ecx, cl
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	or	eax, ebx
.label_892:
	mov	dword ptr [r15 + 8], eax
	movzx	ecx, r14b
	mov	r14d, 2
	cmp	ecx, 0x5f
	jg	.label_908
	lea	edx, [rcx - 0x27]
	cmp	edx, 0x2c
	ja	.label_887
	jmp	qword ptr [(rdx * 8) + label_888]
.label_2310:
	mov	rdx, r13
	test	dh, 0x40
	jne	.label_886
	and	eax, 0xffffff00
	or	eax, 4
	mov	dword ptr [r15 + 8], eax
	add	ecx, -0x31
	movsxd	rax, ecx
	mov	qword ptr [r15], rax
	jmp	.label_886
.label_899:
	cmp	r12d, 0x7b
	je	.label_894
	cmp	r12d, 0x7c
	mov	rcx, r13
	je	.label_896
	cmp	r12d, 0x7d
	jne	.label_886
	and	ecx, 0x1200
	cmp	rcx, 0x1200
	je	.label_897
	jmp	.label_886
.label_913:
	and	ebx, 0xff9fff00
	or	ebx, 0x200001
.label_912:
	mov	dword ptr [r15 + 8], ebx
	mov	r14d, 1
.label_886:
	mov	eax, r14d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_908:
	lea	edx, [rcx - 0x73]
	cmp	edx, 0xa
	ja	.label_902
	jmp	qword ptr [(rdx * 8) + label_909]
.label_2188:
	test	r13d, 0x80000
	jne	.label_886
	and	eax, 0xffffff00
	or	eax, 0x22
	mov	dword ptr [r15 + 8], eax
	jmp	.label_886
.label_920:
	cmp	r12d, 0xa
	jne	.label_886
	mov	rcx, r13
	test	ch, 8
	jne	.label_900
	jmp	.label_886
.label_2172:
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_915
	jmp	.label_886
.label_2173:
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_918
	jmp	.label_886
.label_2174:
	and	eax, 0xffffff00
	or	eax, 0xb
	mov	dword ptr [r15 + 8], eax
	jmp	.label_886
.label_2175:
	test	r13w, 0x402
	jne	.label_886
	jmp	.label_890
.label_2176:
	and	eax, 0xffffff00
	or	eax, 5
	mov	dword ptr [r15 + 8], eax
	jmp	.label_886
.label_901:
	test	r13w, 0x402
	jne	.label_886
	jmp	.label_891
.label_903:
	and	eax, 0xffffff00
	or	eax, 0x14
	mov	dword ptr [r15 + 8], eax
	jmp	.label_886
.label_894:
	and	r13d, 0x1200
	cmp	r13, 0x1200
	je	.label_895
	jmp	.label_886
.label_896:
	test	ch, 4
	jne	.label_886
	test	cx, cx
	js	.label_900
	jmp	.label_886
.label_902:
	cmp	ecx, 0x60
	je	.label_907
	cmp	ecx, 0x62
	jne	.label_886
	test	r13d, 0x80000
	jne	.label_886
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x100
	jmp	.label_886
.label_921:
	cmp	edx, 2
	jl	.label_910
	mov	rdx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rdx + rcx*4 + 4], -1
	je	.label_911
	lea	rsi, [rcx + 2]
	cmp	qword ptr [rbp + 0x30], rsi
	je	.label_910
	cmp	dword ptr [rdx + rcx*4 + 8], -1
	je	.label_911
.label_910:
	mov	dl, byte ptr [rbp + 0x8c]
	test	dl, dl
	mov	rsi, rax
	je	.label_914
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rsi, qword ptr [rsi + rcx*8 + 8]
.label_914:
	add	rsi, qword ptr [rbp + 0x28]
	test	dl, dl
	mov	rcx, qword ptr [rbp]
	mov	r14b, byte ptr [rcx + rsi]
	je	.label_883
	test	r14b, r14b
	js	.label_911
	jmp	.label_883
.label_887:
	cmp	ecx, 0x57
	jne	.label_886
	test	r13d, 0x80000
	jne	.label_886
	and	eax, 0xffffff00
	or	eax, 0x21
	mov	dword ptr [r15 + 8], eax
	jmp	.label_886
.label_2189:
	test	r13d, 0x80000
	jne	.label_886
	and	eax, 0xffffff00
	or	eax, 0x20
	mov	dword ptr [r15 + 8], eax
	jmp	.label_886
.label_2190:
	and	r13d, 0x1200
	cmp	r13, 0x200
	jne	.label_886
.label_895:
	and	eax, 0xffffff00
	or	eax, 0x17
	mov	dword ptr [r15 + 8], eax
	jmp	.label_886
.label_2191:
	mov	rcx, r13
	test	ch, 4
	jne	.label_886
	test	cx, cx
	js	.label_886
.label_900:
	and	eax, 0xffffff00
	or	eax, 0xa
	mov	dword ptr [r15 + 8], eax
	jmp	.label_886
.label_2192:
	and	r13d, 0x1200
	cmp	r13, 0x200
	jne	.label_886
.label_897:
	and	eax, 0xffffff00
	or	eax, 0x18
	mov	dword ptr [r15 + 8], eax
	jmp	.label_886
.label_907:
	test	r13d, 0x80000
	jne	.label_886
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x40
	jmp	.label_886
.label_2306:
	test	r13d, 0x80000
	jne	.label_886
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x80
	jmp	.label_886
.label_2307:
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_886
.label_915:
	and	eax, 0xffffff00
	or	eax, 8
	mov	dword ptr [r15 + 8], eax
	jmp	.label_886
.label_2308:
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_886
.label_918:
	and	eax, 0xffffff00
	or	eax, 9
	mov	dword ptr [r15 + 8], eax
	jmp	.label_886
.label_2309:
	and	r13d, 0x402
	cmp	r13, 2
	jne	.label_886
.label_890:
	and	eax, 0xffffff00
	or	eax, 0x12
	mov	dword ptr [r15 + 8], eax
	jmp	.label_886
.label_2311:
	test	r13d, 0x80000
	jne	.label_886
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 6
	jmp	.label_886
.label_2312:
	test	r13d, 0x80000
	jne	.label_886
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 9
	jmp	.label_886
.label_2313:
	and	r13d, 0x402
	cmp	r13, 2
	jne	.label_886
.label_891:
	and	eax, 0xffffff00
	or	eax, 0x13
	mov	dword ptr [r15 + 8], eax
	jmp	.label_886
.label_2314:
	test	r13d, 0x80000
	jne	.label_886
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x200
	jmp	.label_886
.label_2315:
	test	r13d, 0x80000
	jne	.label_886
	and	eax, 0xffffff00
	or	eax, 0x23
	mov	dword ptr [r15 + 8], eax
	jmp	.label_886
	.section	.text
	.align	32
	#Procedure 0x40b010

	.globl parse_branch
	.type parse_branch, @function
parse_branch:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r9
	mov	r15, r8
	mov	qword ptr [rsp + 0x10], rcx
	mov	r13, rdx
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], rdi
	mov	r14, qword ptr [rsi]
	call	parse_expression
	mov	rbp, rbx
	mov	rbx, rax
	xor	r12d, r12d
	test	rbx, rbx
	jne	.label_936
	mov	eax, dword ptr [rbp]
	test	eax, eax
	je	.label_936
	jmp	.label_941
	nop	word ptr [rax + rax]
.label_935:
	test	rbx, rbx
	cmove	rbx, r12
.label_936:
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	ecx, 8
	cmp	ecx, 0xa
	je	.label_945
	test	r15, r15
	je	.label_948
	cmp	eax, 9
	je	.label_946
.label_948:
	mov	rdi, qword ptr [rsp]
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, r15
	mov	r9, rbp
	call	parse_expression
	mov	r12, rax
	test	r12, r12
	jne	.label_928
	mov	eax, dword ptr [rbp]
	test	eax, eax
	jne	.label_933
.label_928:
	test	rbx, rbx
	je	.label_935
	test	r12, r12
	je	.label_935
	mov	ecx, dword ptr [r14 + 0x80]
	cmp	ecx, 0xf
	je	.label_938
	mov	rax, qword ptr [r14 + 0x70]
.label_934:
	lea	edx, [rcx + 1]
	mov	dword ptr [r14 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r12], rdx
	mov	rbx, rdx
	jmp	.label_936
.label_938:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_930
	mov	rcx, qword ptr [r14 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x70], rax
	mov	dword ptr [r14 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_934
.label_933:
	xor	r12d, r12d
	test	rbx, rbx
	je	.label_941
	mov	r14d, 0x400ff
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_947:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_947
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_947
	nop	word ptr cs:[rax + rax]
.label_944:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_943
	cmp	eax, 6
	jne	.label_926
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_939
	nop	dword ptr [rax]
.label_943:
	mov	rdi, qword ptr [rbp + 0x28]
.label_939:
	call	free
.label_926:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_941
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rbp
	mov	rbp, rax
	je	.label_944
	test	rbx, rbx
	mov	rbp, rax
	je	.label_944
	jmp	.label_947
.label_945:
	mov	r12, rbx
	jmp	.label_941
.label_946:
	mov	r12, rbx
.label_941:
	mov	rax, r12
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_930:
	mov	r14d, 0x400ff
	mov	rcx, rbp
.label_927:
	mov	rbp, r12
	mov	r12, qword ptr [rbp + 8]
	test	r12, r12
	jne	.label_927
	mov	r12, qword ptr [rbp + 0x10]
	test	r12, r12
	jne	.label_927
	nop	word ptr cs:[rax + rax]
.label_923:
	mov	r12, rcx
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_937
	cmp	eax, 6
	jne	.label_940
	mov	r15, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	jmp	.label_942
.label_937:
	mov	rdi, qword ptr [rbp + 0x28]
.label_942:
	call	free
.label_940:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	mov	rcx, r12
	je	.label_932
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rbp
	mov	rbp, rax
	je	.label_923
	test	r12, r12
	mov	rbp, rax
	je	.label_923
	jmp	.label_927
.label_932:
	mov	r14d, 0x400ff
.label_924:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_924
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_924
	nop	dword ptr [rax + rax]
.label_931:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_925
	cmp	eax, 6
	jne	.label_922
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	mov	r15, rcx
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	call	free
	mov	rcx, r15
	jmp	.label_922
.label_925:
	mov	rdi, qword ptr [rbp + 0x28]
	mov	rbx, rcx
	call	free
	mov	rcx, rbx
.label_922:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_929
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rbp
	mov	rbp, rax
	je	.label_931
	test	rbx, rbx
	mov	rbp, rax
	je	.label_931
	jmp	.label_924
.label_929:
	mov	dword ptr [rcx], 0xc
	xor	r12d, r12d
	jmp	.label_941
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b360

	.globl parse_expression
	.type parse_expression, @function
parse_expression:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xe8
	mov	r12, r9
	mov	qword ptr [rsp + 0x18], r12
	mov	r13, r8
	mov	qword ptr [rsp + 0x48], rcx
	mov	qword ptr [rsp + 0x40], rdx
	mov	rbx, rsi
	mov	qword ptr [rsp + 0x38], rdi
	mov	eax, dword ptr [rdx + 8]
	movzx	ecx, al
	xor	r15d, r15d
	lea	edx, [rcx - 1]
	cmp	edx, 0x23
	ja	.label_974
	mov	r9, qword ptr [rbx]
	jmp	qword ptr [(rdx * 8) + label_1178]
.label_2206:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rax + 0x78]
	cmp	ecx, 0x21
	sete	al
	movzx	r8d, al
	mov	edx, OFFSET FLAT:.str.1_4
	mov	ecx, OFFSET FLAT:.str.2_2
	mov	rdi, r9
	mov	rbx, r9
	mov	r9, r12
	call	build_charclass_op
	mov	rbp, rax
	xor	r15d, r15d
	test	rbp, rbp
	je	.label_1185
	mov	r9, rbx
	jmp	.label_968
.label_2207:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rax + 0x78]
	cmp	ecx, 0x23
	sete	al
	movzx	r8d, al
	mov	edx, OFFSET FLAT:.str.3_1
	mov	ecx, OFFSET FLAT:.str_0
	mov	rdi, r9
	mov	rbx, r9
	mov	r9, r12
	call	build_charclass_op
	mov	rbp, rax
	xor	r15d, r15d
	test	rbp, rbp
	jne	.label_959
.label_1185:
	mov	eax, dword ptr [r12]
	test	eax, eax
	mov	r9, rbx
	je	.label_968
	jmp	.label_974
.label_2197:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_976
	mov	rax, qword ptr [r9 + 0x70]
.label_1088:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rdx, qword ptr [rsp + 0x40]
	movdqu	xmm1, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [r9 + 0xb4], 2
	jl	.label_984
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rcx + 0x48]
	cmp	qword ptr [rcx + 0x68], rax
	jg	.label_1007
	mov	rbp, r15
	jmp	.label_968
.label_1113:
	mov	rbp, r9
	mov	rcx, qword ptr [rbx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1018
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x48]
	call	peek_token
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	mov	r9, rbp
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1030
	mov	rax, qword ptr [r9 + 0x70]
.label_1100:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm1, xmm1
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rdx, qword ptr [rsp + 0x40]
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1096:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1065
	mov	rax, qword ptr [r9 + 0x70]
.label_1015:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r15
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r15], rdx
	test	rbp, rbp
	je	.label_991
	mov	qword ptr [rbp], rdx
	mov	rax, qword ptr [rbx + 0x48]
	cmp	qword ptr [rbx + 0x68], rax
	mov	r15, rdx
	mov	rbp, rdx
	jg	.label_1007
	jmp	.label_968
.label_1030:
	mov	edi, 0x3c8
	mov	rbp, r9
	call	malloc
	mov	r9, rbp
	test	rax, rax
	mov	ebp, 0
	je	.label_1096
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1100
.label_1065:
	mov	edi, 0x3c8
	mov	r13, r9
	call	malloc
	mov	r9, r13
	test	rax, rax
	je	.label_991
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1015
.label_1007:
	mov	rbx, qword ptr [rsp + 0x38]
	cmp	rax, qword ptr [rbx + 0x30]
	jne	.label_1113
	mov	rbp, r15
	jmp	.label_968
.label_2198:
	mov	rbx, qword ptr [rsp + 0x40]
	mov	cl, byte ptr [rbx]
	mov	eax, 1
	shl	eax, cl
	cdqe	
	test	qword ptr [r9 + 0xa8], rax
	je	.label_1116
	or	qword ptr [r9 + 0xa0], rax
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1121
	mov	rax, qword ptr [r9 + 0x70]
.label_1109:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [rbx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	inc	qword ptr [r9 + 0x98]
	or	byte ptr [r9 + 0xb0], 2
	jmp	.label_968
.label_2199:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1141
	mov	rax, qword ptr [r9 + 0x70]
	mov	rsi, qword ptr [rsp + 0x40]
.label_1098:
	mov	qword ptr [rsp + 0x40], rsi
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [rsi]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [r9 + 0xb4], 1
	jle	.label_968
	or	byte ptr [r9 + 0xb0], 2
	jmp	.label_968
.label_2200:
	mov	qword ptr [rsp + 0x20], r9
	mov	r15, qword ptr [rbx + 0x30]
	lea	rax, [r15 + 1]
	mov	qword ptr [rbx + 0x30], rax
	mov	rdx, qword ptr [rsp + 0x48]
	or	rdx, 0x800000
	mov	r14, qword ptr [rsp + 0x40]
	mov	rdi, r14
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rsi, rbp
	call	peek_token
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	movzx	eax, byte ptr [r14 + 8]
	xor	esi, esi
	cmp	eax, 9
	je	.label_1081
	mov	rbp, r15
	inc	r13
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, r13
	mov	r9, r12
	call	parse_reg_exp
	mov	rsi, rax
	xor	r15d, r15d
	cmp	dword ptr [r12], 0
	jne	.label_974
	movzx	eax, byte ptr [r14 + 8]
	cmp	eax, 9
	jne	.label_1188
	mov	r15, rbp
.label_1081:
	cmp	r15, 8
	mov	r9, qword ptr [rsp + 0x20]
	mov	rbx, r15
	ja	.label_1171
	mov	eax, 1
	mov	cl, bl
	shl	eax, cl
	cdqe	
	or	qword ptr [r9 + 0xa8], rax
.label_1171:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_954
	mov	rax, qword ptr [r9 + 0x70]
.label_1118:
	mov	qword ptr [rsp + 0x40], r14
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rsi
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0x11
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rsi, rsi
	je	.label_966
	mov	qword ptr [rsi], rbp
.label_966:
	mov	qword ptr [rax + rcx + 0x30], rbx
	jmp	.label_968
.label_2201:
	mov	rcx, qword ptr [rsp + 0x48]
	test	ecx, 0x20000
	jne	.label_998
	mov	dword ptr [r12], 0x10
	jmp	.label_1001
.label_2203:
	mov	r15, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [r15]
	test	ax, 0x30f
	je	.label_1005
	mov	al, byte ptr [r9 + 0xb0]
	test	al, 0x10
	jne	.label_1009
	mov	cl, al
	or	cl, 0x10
	mov	byte ptr [r9 + 0xb0], cl
	xor	ebx, ebx
	test	al, 8
	mov	ebp, 0
	jne	.label_1014
	movdqa	xmm0, xmmword ptr [rip + label_1025]
	movdqu	xmmword ptr [r9 + 0xb8], xmm0
	mov	ebp, 2
	mov	ebx, 0x80
	test	al, 4
	je	.label_1014
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r9 + 0xc8], xmm0
.label_1009:
	mov	eax, dword ptr [r15]
.label_1005:
	cmp	eax, 0x200
	je	.label_1039
	cmp	eax, 0x100
	jne	.label_1041
	mov	dword ptr [r15], 6
	mov	r13, r15
	lea	r15, [r9 + 0x80]
	mov	ebp, dword ptr [r9 + 0x80]
	cmp	ebp, 0xf
	je	.label_1045
	mov	rax, qword ptr [r9 + 0x70]
.label_992:
	lea	ecx, [rbp + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r13]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbp, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	ecx, 9
	jmp	.label_1057
.label_2205:
	mov	rcx, qword ptr [rsp + 0x48]
	test	ecx, 0x1000000
	jne	.label_967
.label_2202:
	mov	rcx, qword ptr [rsp + 0x48]
	test	cl, 0x20
	jne	.label_967
	test	cl, 0x10
	jne	.label_1091
.label_998:
	and	eax, 0xffffff00
	or	eax, 1
	mov	rbx, qword ptr [rsp + 0x40]
	mov	dword ptr [rbx + 8], eax
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1126
	mov	rax, qword ptr [r9 + 0x70]
.label_1046:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [rbx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
.label_1142:
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	jmp	.label_968
.label_2208:
	mov	dword ptr [r12], 5
	jmp	.label_1001
.label_2204:
	mov	qword ptr [rsp + 0x20], r9
	mov	qword ptr [rsp + 0xe0], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	rbx, rax
	test	r13, r13
	je	.label_1119
	test	rbx, rbx
	je	.label_1119
	mov	qword ptr [rsp + 0x58], rbx
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rbx, qword ptr [rsp + 0x48]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	ecx, dword ptr [rbp + 8]
	movzx	edx, cl
	cmp	edx, 0x19
	je	.label_1130
	cmp	edx, 2
	je	.label_1133
	mov	dword ptr [rsp + 0x50], 0
	jmp	.label_1135
.label_959:
	mov	r9, rbx
	jmp	.label_968
.label_1091:
	mov	r15, qword ptr [rsp + 0x40]
	mov	rdi, r15
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rsi, rbp
	mov	r14, qword ptr [rsp + 0x48]
	mov	rdx, r14
	call	peek_token
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r15
	mov	rcx, r14
	mov	r8, r13
	mov	r9, r12
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	parse_expression
.label_984:
	mov	rbp, r15
	jmp	.label_968
.label_1130:
	mov	rcx, qword ptr [rsp + 0x58]
	or	byte ptr [rcx + 0x20], 1
	test	bh, 1
	je	.label_1125
	or	byte ptr [r13 + 1], 4
.label_1125:
	cdqe	
	mov	rsi, qword ptr [rsp + 0x38]
	add	qword ptr [rsi + 0x48], rax
	mov	rdi, rbp
	mov	rdx, rbx
	call	peek_token_bracket
	mov	ecx, dword ptr [rbp + 8]
	movzx	edx, cl
	cmp	edx, 2
	je	.label_1133
	mov	dl, 1
	mov	dword ptr [rsp + 0x50], edx
.label_1135:
	mov	qword ptr [rsp + 0x60], r13
	movzx	edx, cl
	cmp	edx, 0x15
	jne	.label_1166
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rbp + 8], ecx
.label_1166:
	lea	rcx, [rsp + 0xa0]
	mov	qword ptr [rsp + 0xd8], rcx
	mov	dword ptr [rsp + 0xd0], 3
	lea	rdi, [rsp + 0xd0]
	mov	r9d, 1
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, rbp
	mov	ecx, eax
	mov	rbx, qword ptr [rsp + 0x48]
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_975
	mov	eax, ebx
	and	eax, 0x10000
	mov	qword ptr [rsp + 0x30], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_971
.label_1020:
	cmp	eax, 2
	je	.label_1184
	mov	qword ptr [rsp + 0x58], r15
	mov	qword ptr [rsp + 0x60], r13
	mov	qword ptr [rsp + 0x20], r9
	lea	rax, [rsp + 0xa0]
	mov	qword ptr [rsp + 0xd8], rax
	mov	dword ptr [rsp + 0xd0], 3
	xor	r9d, r9d
	lea	rdi, [rsp + 0xd0]
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdx, rbp
	mov	ecx, ebx
	mov	rbx, qword ptr [rsp + 0x48]
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	je	.label_971
	jmp	.label_975
.label_2225:
	mov	cl, byte ptr [rsp + 0xd8]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	r13, qword ptr [rsp + 0x60]
	or	qword ptr [r13 + rcx*8], rax
	jmp	.label_977
.label_2226:
	mov	r15, qword ptr [rsp + 0x58]
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rbp, qword ptr [rsp + 0x28]
	cmp	rbp, rcx
	je	.label_988
	mov	rax, qword ptr [r15]
.label_952:
	mov	r9, qword ptr [rsp + 0x20]
	mov	r13, qword ptr [rsp + 0x60]
	mov	edx, dword ptr [rsp + 0xd8]
	lea	rsi, [rcx + 1]
	mov	qword ptr [r15 + 0x28], rsi
	mov	dword ptr [rax + rcx*4], edx
	jmp	.label_994
.label_1023:
	mov	rax, qword ptr [rsp + 0xd8]
	mov	al, byte ptr [rax]
	jmp	.label_993
.label_978:
	xor	eax, eax
.label_993:
	cmp	ebx, 3
	je	.label_1008
	test	ebx, ebx
	jne	.label_1010
	mov	bpl, byte ptr [rsp + 0xc8]
	jmp	.label_1012
.label_1008:
	mov	rcx, qword ptr [rsp + 0xc8]
	mov	bpl, byte ptr [rcx]
	jmp	.label_1012
.label_1010:
	xor	ebp, ebp
.label_1012:
	cmp	r15d, 3
	je	.label_1082
	test	r15d, r15d
	jne	.label_1024
.label_1082:
	test	r12, r12
	movzx	edx, al
	je	.label_1026
	mov	edi, edx
	call	btowc
	mov	edx, eax
	jmp	.label_1026
.label_1024:
	mov	edx, dword ptr [rsp + 0xd8]
.label_1026:
	cmp	ebx, 3
	je	.label_1083
	test	ebx, ebx
	jne	.label_1034
.label_1083:
	test	r12, r12
	movzx	ebp, bpl
	je	.label_1036
	mov	edi, ebp
	mov	ebx, edx
	call	btowc
	mov	edx, ebx
	mov	ebp, eax
	jmp	.label_1036
.label_1034:
	mov	ebp, dword ptr [rsp + 0xc8]
.label_1036:
	cmp	edx, -1
	mov	ecx, 3
	je	.label_950
	cmp	ebp, -1
	je	.label_950
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_1052
	cmp	edx, ebp
	mov	ecx, 0xb
	ja	.label_950
.label_1052:
	test	r12, r12
	je	.label_1058
	mov	rax, qword ptr [r12 + 0x40]
	cmp	qword ptr [rsp + 0x10], rax
	je	.label_1061
	mov	rdi, qword ptr [r12 + 8]
	mov	r14, qword ptr [r12 + 0x10]
	mov	r9, r13
	mov	r15, qword ptr [rsp + 0x58]
	mov	ebx, dword ptr [rsp + 0xc]
.label_1101:
	mov	dword ptr [rdi + rax*4], edx
	lea	rcx, [rax + 1]
	mov	qword ptr [r12 + 0x40], rcx
	mov	dword ptr [r14 + rax*4], ebp
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_987
.label_1058:
	mov	r12, qword ptr [rsp + 0x18]
	mov	r9, r13
	mov	r15, qword ptr [rsp + 0x58]
	mov	ebx, dword ptr [rsp + 0xc]
.label_987:
	mov	eax, ebp
	mov	edx, edx
	xor	ecx, ecx
	mov	r13, qword ptr [rsp + 0x60]
.label_1124:
	cmp	rdx, rcx
	ja	.label_1085
	cmp	rcx, rax
	ja	.label_1085
	mov	esi, 1
	shl	rsi, cl
	mov	rdi, rcx
	sar	rdi, 0x3f
	shr	rdi, 0x3a
	add	rdi, rcx
	sar	rdi, 6
	or	qword ptr [r13 + rdi*8], rsi
.label_1085:
	inc	rcx
	cmp	rcx, 0x100
	jne	.label_1124
	mov	dword ptr [r12], 0
	jmp	.label_994
.label_988:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [r15]
	lea	rsi, [rax*4 + 4]
	call	realloc
	test	rax, rax
	je	.label_962
	lea	rbp, [rbp + rbp + 1]
	mov	qword ptr [rsp + 0x28], rbp
	mov	qword ptr [r15], rax
	mov	rcx, qword ptr [r15 + 0x28]
	jmp	.label_952
.label_1061:
	mov	dword ptr [rsp + 8], edx
	mov	rax, qword ptr [rsp + 0x10]
	lea	rax, [rax + rax]
	mov	rdi, qword ptr [r12 + 8]
	lea	rbx, [rax*4 + 4]
	mov	rsi, rbx
	call	realloc
	mov	r14, rax
	mov	rdi, qword ptr [r12 + 0x10]
	mov	rsi, rbx
	call	realloc
	mov	rdi, r14
	mov	r14, rax
	test	rdi, rdi
	mov	r15, qword ptr [rsp + 0x58]
	je	.label_1112
	test	r14, r14
	je	.label_1112
	mov	rax, qword ptr [rsp + 0x10]
	lea	rax, [rax + rax + 1]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [r12 + 8], rdi
	mov	qword ptr [r12 + 0x10], r14
	mov	rax, qword ptr [r12 + 0x40]
	mov	r9, r13
	mov	ebx, dword ptr [rsp + 0xc]
	mov	edx, dword ptr [rsp + 8]
	jmp	.label_1101
.label_971:
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	ebx, eax
	mov	r15d, dword ptr [rsp + 0xd0]
	cmp	r15d, 2
	je	.label_1132
	cmp	r15d, 4
	jne	.label_1137
	mov	rax, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rax + 0x78]
	mov	r8, qword ptr [rsp + 0xd8]
	mov	r13, qword ptr [rsp + 0x60]
	mov	rsi, r13
	mov	r15, qword ptr [rsp + 0x58]
	mov	rdx, r15
	lea	rcx, [rsp + 0xe0]
	mov	r9, qword ptr [rsp + 0x48]
	call	build_charclass
	mov	dword ptr [r12], eax
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x20]
	je	.label_994
	jmp	.label_1147
.label_1137:
	movzx	eax, byte ptr [rbp + 8]
	cmp	eax, 0x16
	mov	r9, qword ptr [rsp + 0x20]
	je	.label_1148
	cmp	eax, 2
	jne	.label_1151
	jmp	.label_1152
.label_1148:
	mov	r13, r9
	movsxd	rax, ebx
	mov	rbp, qword ptr [rsp + 0x38]
	add	qword ptr [rbp + 0x48], rax
	lea	rdi, [rsp + 0x70]
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp + 0x48]
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x78]
	cmp	ecx, 0x15
	je	.label_1161
	cmp	ecx, 2
	je	.label_1193
	lea	rcx, [rsp + 0x80]
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dword ptr [rsp + 0xc0], 3
	mov	r9d, 1
	lea	rdi, [rsp + 0xc0]
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rsi, rbp
	lea	rdx, [rsp + 0x70]
	mov	ecx, eax
	mov	rbx, qword ptr [rsp + 0x48]
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_1176
	mov	qword ptr [rsp + 0x18], r12
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, rbp
	mov	rdx, rbx
	call	peek_token_bracket
	cmp	dword ptr [r13 + 0xb4], 1
	mov	r12, qword ptr [rsp + 0x58]
	jg	.label_1110
	xor	r12d, r12d
.label_1110:
	mov	ecx, 0xb
	mov	ebx, dword ptr [rsp + 0xc0]
	cmp	ebx, 2
	je	.label_950
	mov	dword ptr [rsp + 0xc], eax
	cmp	ebx, 4
	je	.label_950
	cmp	r15d, 3
	jne	.label_1194
	mov	rdi, qword ptr [rsp + 0xd8]
	call	strlen
	mov	ecx, 3
	cmp	rax, 1
	ja	.label_950
.label_1194:
	cmp	ebx, 3
	jne	.label_956
	mov	rdi, qword ptr [rsp + 0xc8]
	call	strlen
	mov	ecx, 3
	cmp	rax, 1
	ja	.label_950
.label_956:
	cmp	r15d, 3
	je	.label_1023
	test	r15d, r15d
	jne	.label_978
	mov	al, byte ptr [rsp + 0xd8]
	jmp	.label_993
.label_1161:
	mov	eax, ebx
	neg	eax
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	mov	rax, qword ptr [rsp + 0x40]
	mov	byte ptr [rax + 8], 1
	mov	r9, r13
.label_1151:
	mov	qword ptr [rsp + 0x20], r9
	mov	eax, r15d
	cmp	r15d, 3
	ja	.label_990
	jmp	qword ptr [(rax * 8) + label_995]
.label_1132:
	mov	rbp, qword ptr [rsp + 0xd8]
	mov	rdi, rbp
	call	strlen
	cmp	rax, 1
	jne	.label_1002
	mov	cl, byte ptr [rbp]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	r13, qword ptr [rsp + 0x60]
	or	qword ptr [r13 + rcx*8], rax
	mov	dword ptr [r12], 0
.label_977:
	mov	r9, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 0x58]
.label_994:
	mov	rax, qword ptr [rsp + 0x40]
	movzx	eax, byte ptr [rax + 8]
	cmp	eax, 0x15
	jne	.label_1020
	movsxd	rax, ebx
	mov	rcx, qword ptr [rsp + 0x38]
	add	qword ptr [rcx + 0x48], rax
	mov	eax, dword ptr [rsp + 0x50]
	test	al, al
	je	.label_1028
	movdqu	xmm0, xmmword ptr [r13]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r13], xmm0
	movdqu	xmm0, xmmword ptr [r13 + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r13 + 0x10], xmm0
.label_1028:
	mov	eax, dword ptr [r9 + 0xb4]
	cmp	eax, 2
	jl	.label_1042
	mov	rcx, qword ptr [r9 + 0x78]
	mov	rdx, qword ptr [rcx]
	and	qword ptr [r13], rdx
	mov	rdx, qword ptr [rcx + 8]
	and	qword ptr [r13 + 8], rdx
	mov	rdx, qword ptr [rcx + 0x10]
	and	qword ptr [r13 + 0x10], rdx
	mov	rcx, qword ptr [rcx + 0x18]
	and	qword ptr [r13 + 0x18], rcx
.label_1042:
	cmp	qword ptr [r15 + 0x28], 0
	jne	.label_1064
	cmp	qword ptr [r15 + 0x30], 0
	jne	.label_1064
	cmp	qword ptr [r15 + 0x38], 0
	jne	.label_1064
	cmp	qword ptr [r15 + 0x40], 0
	jne	.label_1064
	cmp	eax, 2
	jl	.label_1037
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_1064
	test	byte ptr [r15 + 0x20], 1
	jne	.label_1064
.label_1037:
	mov	rdi, qword ptr [r15]
	mov	rbp, r9
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	mov	r9, rbp
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1077
	mov	rax, qword ptr [r9 + 0x70]
.label_1102:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	qword ptr [rax + rcx + 0x30], r13
	mov	dword ptr [rax + rcx + 0x38], 3
	jmp	.label_1142
.label_1064:
	or	byte ptr [r9 + 0xb0], 2
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1106
	mov	rax, qword ptr [r9 + 0x70]
.label_1174:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdi, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	qword ptr [rax + rcx + 0x30], r15
	mov	dword ptr [rax + rcx + 0x38], 6
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	qword ptr [r13], 0
	jne	.label_1108
	cmp	qword ptr [r13 + 8], 0
	jne	.label_1108
	cmp	qword ptr [r13 + 0x10], 0
	jne	.label_1108
	cmp	qword ptr [r13 + 0x18], 0
	je	.label_1145
.label_1108:
	mov	qword ptr [rsp + 0x60], r13
	mov	eax, dword ptr [r9 + 0x80]
	cmp	eax, 0xf
	je	.label_1127
	mov	rbp, qword ptr [r9 + 0x70]
.label_1165:
	lea	ecx, [rax + 1]
	mov	dword ptr [r9 + 0x80], ecx
	movsxd	rbx, eax
	shl	rbx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	rax, qword ptr [rsp + 0x60]
	mov	qword ptr [rbp + rbx + 0x30], rax
	mov	dword ptr [rbp + rbx + 0x38], 3
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	mov	qword ptr [rbp + rbx + 0x40], -1
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1054
	mov	rax, qword ptr [r9 + 0x70]
.label_1022:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rcx + 1]
	mov	dword ptr [r9 + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rdx
	mov	qword ptr [rax + rcx + 0x18], rdi
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rdx], rbp
	mov	qword ptr [rdi], rbp
	jmp	.label_968
.label_1039:
	mov	dword ptr [r15], 5
	mov	r13, r15
	lea	r15, [r9 + 0x80]
	mov	ebp, dword ptr [r9 + 0x80]
	cmp	ebp, 0xf
	je	.label_1163
	mov	rax, qword ptr [r9 + 0x70]
.label_1013:
	lea	ecx, [rbp + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r13]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbp, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	ecx, 0xa
.label_1057:
	mov	dword ptr [r13], ecx
	mov	ebx, dword ptr [r15]
	cmp	ebx, 0xf
	je	.label_1181
	mov	rax, qword ptr [r9 + 0x70]
.label_1131:
	lea	ecx, [rbx + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, ebx
	shl	rcx, 6
	lea	rbx, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r13]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1129:
	mov	ecx, dword ptr [r15]
	cmp	ecx, 0xf
	je	.label_961
	mov	rax, qword ptr [r9 + 0x70]
.label_1139:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbp
	mov	qword ptr [rax + rcx + 0x18], rbx
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbp, rbp
	je	.label_969
	mov	qword ptr [rbp], r15
.label_969:
	test	rbx, rbx
	mov	rdx, qword ptr [rsp + 0x48]
	je	.label_991
	mov	qword ptr [rbx], r15
	test	rbp, rbp
	jne	.label_997
	jmp	.label_991
.label_1041:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1000
	mov	r13, r15
	mov	rax, qword ptr [r9 + 0x70]
.label_1031:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r13]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	rdx, qword ptr [rsp + 0x48]
.label_997:
	mov	rdi, r13
	mov	rbx, qword ptr [rsp + 0x38]
	mov	rsi, rbx
	call	peek_token
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	jmp	.label_974
.label_1126:
	mov	rbp, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_991
	mov	r9, rbp
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1046
.label_975:
	mov	qword ptr [rsp + 0x48], rbx
	mov	dword ptr [r12], eax
	mov	r9, qword ptr [rsp + 0x20]
	jmp	.label_982
.label_1133:
	mov	dword ptr [r12], 2
	jmp	.label_1066
.label_1184:
	mov	dword ptr [r12], 7
.label_1147:
	mov	qword ptr [rsp + 0x20], r9
	jmp	.label_1074
.label_1018:
	mov	r9, rbp
	mov	rbp, r15
	jmp	.label_968
.label_976:
	mov	rbx, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_991
	mov	r9, rbx
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1088
.label_1116:
	mov	dword ptr [r12], 6
	jmp	.label_1001
.label_1141:
	mov	rbx, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	rsi, qword ptr [rsp + 0x40]
	je	.label_991
	mov	r9, rbx
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1098
.label_1119:
	mov	rdi, r13
	call	free
	mov	rdi, rbx
	call	free
	jmp	.label_991
.label_1121:
	mov	rbp, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_991
	mov	r9, rbp
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1109
.label_954:
	mov	r15, rsi
	mov	rbp, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_991
	mov	r9, rbp
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rsi, r15
	jmp	.label_1118
.label_1181:
	mov	edi, 0x3c8
	mov	rbx, r9
	call	malloc
	mov	r9, rbx
	xor	ebx, ebx
	test	rax, rax
	je	.label_1129
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r15], 0
	jmp	.label_1131
.label_961:
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_991
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rdx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdx + 0x70], rax
	mov	dword ptr [r15], 0
	xor	ecx, ecx
	jmp	.label_1139
.label_1002:
	mov	dword ptr [r12], 3
	mov	r9, qword ptr [rsp + 0x20]
	jmp	.label_982
.label_1014:
	mov	r13, r9
	call	__ctype_b_loc
	mov	r9, r13
	mov	rdx, qword ptr [rax]
	inc	rbx
.label_1167:
	mov	rsi, rbx
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1156:
	test	byte ptr [rdx + rsi*2 - 2], 8
	je	.label_1153
	mov	edi, 1
	mov	cl, al
	shl	rdi, cl
	or	qword ptr [r9 + rbp*8 + 0xb8], rdi
.label_1153:
	cmp	esi, 0x5f
	je	.label_1159
	movzx	ecx, word ptr [rdx + rsi*2]
	and	ecx, 8
	test	cx, cx
	je	.label_1160
.label_1159:
	lea	ecx, [rax + 1]
	mov	edi, 1
	shl	rdi, cl
	or	qword ptr [r9 + rbp*8 + 0xb8], rdi
.label_1160:
	add	rax, 2
	add	rsi, 2
	cmp	rax, 0x40
	jne	.label_1156
	inc	rbp
	add	rbx, 0x40
	cmp	ebp, 4
	jne	.label_1167
	jmp	.label_1009
.label_1106:
	mov	qword ptr [rsp + 0x60], r13
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_962
	mov	r9, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	r13, qword ptr [rsp + 0x60]
	mov	r15, qword ptr [rsp + 0x58]
	jmp	.label_1174
.label_1127:
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_962
	mov	r9, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [r9 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r9 + 0x70], rbp
	mov	dword ptr [r9 + 0x80], 0
	xor	eax, eax
	mov	rdi, rbx
	jmp	.label_1165
.label_1054:
	mov	r15, rdi
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_962
	mov	r9, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rdi, r15
	jmp	.label_1022
.label_1152:
	mov	dword ptr [r12], 7
	jmp	.label_982
.label_1045:
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	mov	ecx, 9
	xor	ebp, ebp
	test	rax, rax
	je	.label_989
	mov	r9, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	jmp	.label_992
.label_1163:
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	mov	ecx, 0xa
	xor	ebp, ebp
	test	rax, rax
	je	.label_1186
	mov	r9, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	jmp	.label_1013
.label_1000:
	mov	rbx, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_991
	mov	r13, r15
	mov	r9, rbx
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1031
.label_991:
	mov	dword ptr [r12], 0xc
	jmp	.label_1001
.label_1193:
	mov	dword ptr [r12], 7
	jmp	.label_1044
.label_1145:
	mov	rbp, rdi
	mov	rdi, r13
	mov	rbx, r9
	call	free
	mov	r9, rbx
	jmp	.label_968
.label_1188:
	test	rsi, rsi
	je	.label_1055
	mov	r14d, 0x400ff
.label_1059:
	mov	rbp, rsi
	mov	rsi, qword ptr [rbp + 8]
	test	rsi, rsi
	jne	.label_1059
	mov	rsi, qword ptr [rbp + 0x10]
	test	rsi, rsi
	jne	.label_1059
.label_1087:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_960
	cmp	eax, 6
	jne	.label_1070
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_1080
.label_960:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1080:
	call	free
.label_1070:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1055
	mov	rsi, qword ptr [rax + 0x10]
	cmp	rsi, rbp
	mov	rbp, rax
	je	.label_1087
	test	rsi, rsi
	mov	rbp, rax
	je	.label_1087
	jmp	.label_1059
.label_1055:
	mov	dword ptr [r12], 8
	jmp	.label_1001
.label_989:
	mov	r9, qword ptr [rsp + 0x20]
	jmp	.label_1057
.label_1186:
	mov	r9, qword ptr [rsp + 0x20]
	jmp	.label_1057
.label_1176:
	mov	dword ptr [r12], eax
	jmp	.label_1044
.label_1077:
	mov	qword ptr [rsp + 0x60], r13
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_962
	mov	r9, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	r13, qword ptr [rsp + 0x60]
	jmp	.label_1102
.label_962:
	mov	dword ptr [r12], 0xc
	mov	r13, qword ptr [rsp + 0x60]
.label_1066:
	mov	r15, qword ptr [rsp + 0x58]
	jmp	.label_1074
.label_1112:
	call	free
	mov	rdi, r14
	call	free
	mov	ecx, 0xc
.label_950:
	mov	r12, qword ptr [rsp + 0x18]
	mov	dword ptr [r12], ecx
.label_1044:
	mov	r9, r13
.label_982:
	mov	r13, qword ptr [rsp + 0x60]
	mov	r15, qword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 0x20], r9
.label_1074:
	mov	rdi, r13
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	cmp	dword ptr [r12], 0
	mov	r15d, 0
	mov	r9, qword ptr [rsp + 0x20]
	mov	ebp, 0
	jne	.label_974
.label_968:
	mov	qword ptr [rsp + 0x20], r9
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdi, rbx
	mov	r13, qword ptr [rsp + 0x38]
	mov	rsi, r13
	mov	r14, qword ptr [rsp + 0x48]
	mov	rdx, r14
	call	peek_token
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	mov	eax, r14d
	and	eax, 0x1000000
	mov	qword ptr [rsp + 0x30], rax
	and	r14d, 0x200000
	mov	qword ptr [rsp + 0x10], r14
	nop	word ptr cs:[rax + rax]
.label_1060:
	movzx	eax, byte ptr [rbx + 8]
	cmp	eax, 0x17
	ja	.label_1104
	mov	ecx, 0x8c0800
	bt	ecx, eax
	jae	.label_1150
	mov	r14, qword ptr [r13 + 0x48]
	movdqu	xmm0, xmmword ptr [rbx]
	movdqa	xmmword ptr [rsp + 0xa0], xmm0
	mov	rdx, -1
	cmp	eax, 0x17
	je	.label_1143
	mov	r14, rbp
	cmp	eax, 0x12
	sete	cl
	movzx	r15d, cl
	cmp	eax, 0x13
	mov	rcx, -1
	mov	eax, 1
	cmove	rcx, rax
	jmp	.label_1158
.label_1093:
	lea	rax, [r15 + r15*4]
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, 0x8000
	mov	edx, 0x8000
	cmovle	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_1143:
	mov	r15, rdx
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x48]
	call	peek_token
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	mov	dl, byte ptr [rbx]
	movzx	ecx, dl
	movzx	eax, byte ptr [rbx + 8]
	mov	esi, 0x18
	cmp	eax, 0x18
	je	.label_1172
	cmp	eax, 2
	je	.label_965
	mov	dl, 0x2c
	cmp	ecx, 0x2c
	je	.label_1179
	cmp	ecx, 0x30
	mov	rdx, -2
	jb	.label_1143
	cmp	eax, 1
	jne	.label_1143
	cmp	r15, -2
	je	.label_1143
	cmp	ecx, 0x39
	ja	.label_1143
	cmp	r15, -1
	jne	.label_1093
	lea	rdx, [rcx - 0x30]
	jmp	.label_1143
.label_1179:
	mov	esi, eax
	nop	word ptr [rax + rax]
.label_1172:
	cmp	r15, -1
	jne	.label_1177
	movzx	eax, dl
	cmp	eax, 0x2c
	jne	.label_1195
	cmp	esi, 1
	mov	r15d, 0
	je	.label_1196
.label_1195:
	mov	qword ptr [rsp + 0x50], rbp
	jmp	.label_953
	nop	word ptr cs:[rax + rax]
.label_1177:
	cmp	r15, -2
	je	.label_965
	cmp	esi, 0x18
	je	.label_970
	cmp	esi, 1
	jne	.label_965
	movzx	ecx, dl
	cmp	ecx, 0x2c
	jne	.label_965
.label_1196:
	mov	qword ptr [rsp + 0x60], r14
	mov	r14, rbp
	mov	rbp, r12
	mov	rdx, -1
	jmp	.label_980
.label_970:
	mov	r14, rbp
	mov	rcx, r15
	jmp	.label_986
.label_1032:
	lea	rax, [r12 + r12*4]
	lea	rdx, [rcx + rax*2 - 0x30]
	cmp	rdx, 0x8000
	mov	eax, 0x8000
	cmovg	rdx, rax
	nop	dword ptr [rax]
.label_980:
	mov	r12, rdx
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x48]
	call	peek_token
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	movzx	ecx, byte ptr [rbx]
	movzx	eax, byte ptr [rbx + 8]
	cmp	eax, 0x18
	je	.label_1011
	cmp	eax, 2
	je	.label_1006
	cmp	ecx, 0x2c
	je	.label_1011
	cmp	ecx, 0x30
	mov	rdx, -2
	jb	.label_980
	cmp	eax, 1
	jne	.label_980
	cmp	r12, -2
	je	.label_980
	movzx	eax, cl
	cmp	eax, 0x39
	ja	.label_980
	cmp	r12, -1
	jne	.label_1032
	add	rcx, -0x30
	mov	rdx, rcx
	jmp	.label_980
.label_1011:
	mov	rcx, r12
	cmp	rcx, -2
	je	.label_1006
	cmp	rcx, -1
	mov	r12, rbp
	je	.label_986
	cmp	r15, rcx
	jg	.label_1035
.label_986:
	cmp	eax, 0x18
	jne	.label_1035
	cmp	rcx, -1
	mov	rax, rcx
	cmove	rax, r15
	cmp	rax, 0x8000
	jge	.label_1040
.label_1158:
	mov	rbp, rcx
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x48]
	call	peek_token
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	test	r14, r14
	mov	qword ptr [rsp + 0x50], r14
	mov	ecx, 0
	je	.label_996
	mov	r9, rbp
	mov	qword ptr [rsp + 0x58], r9
	mov	rax, r9
	or	rax, r15
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, rdi
	je	.label_1063
	test	r15, r15
	mov	eax, 0
	mov	qword ptr [rsp + 0x28], rax
	mov	r12, rdi
	mov	r8, qword ptr [rsp + 0x20]
	pxor	xmm1, xmm1
	jg	.label_1072
.label_1004:
	movzx	eax, byte ptr [r12 + 0x30]
	cmp	eax, 0x11
	jne	.label_1050
	mov	rax, qword ptr [r12 + 0x28]
	mov	rdx, r12
	nop	word ptr [rax + rax]
.label_1090:
	mov	rcx, rdx
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_1090
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_1090
	nop	word ptr cs:[rax + rax]
.label_1099:
	mov	edx, dword ptr [rcx + 0x30]
	movzx	esi, dl
	cmp	esi, 0x11
	jne	.label_1094
	cmp	qword ptr [rcx + 0x28], rax
	jne	.label_1094
	or	edx, 0x80000
	mov	dword ptr [rcx + 0x30], edx
.label_1094:
	mov	rsi, qword ptr [rcx]
	test	rsi, rsi
	je	.label_1050
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	rdx, rcx
	mov	rcx, rsi
	je	.label_1099
	test	rdx, rdx
	mov	rcx, rsi
	je	.label_1099
	jmp	.label_1090
	nop	dword ptr [rax + rax]
.label_1050:
	mov	qword ptr [rsp + 0x50], rdi
	cmp	r9, -1
	sete	bl
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1103
	mov	rax, qword ptr [r8 + 0x70]
.label_1168:
	movzx	edx, bl
	or	edx, 0xa
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], edx
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	test	r12, r12
	je	.label_1017
	mov	qword ptr [r12], r13
.label_1017:
	add	r15, 2
	cmp	r15, r9
	jg	.label_1120
	jmp	.label_985
	nop	word ptr cs:[rax + rax]
.label_1063:
	mov	rbx, rax
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jne	.label_1063
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_1063
	nop	word ptr cs:[rax + rax]
.label_1033:
	mov	eax, dword ptr [rbx + 0x30]
	mov	ecx, 0x400ff
	and	eax, ecx
	cmp	eax, 3
	je	.label_1136
	cmp	eax, 6
	jne	.label_1138
	mov	rbp, qword ptr [rbx + 0x28]
	mov	rdi, qword ptr [rbp]
	call	free
	mov	rdi, qword ptr [rbp + 8]
	call	free
	mov	rdi, qword ptr [rbp + 0x10]
	call	free
	mov	rdi, qword ptr [rbp + 0x18]
	call	free
	mov	rdi, rbp
	jmp	.label_1079
	nop	word ptr cs:[rax + rax]
.label_1136:
	mov	rdi, qword ptr [rbx + 0x28]
.label_1079:
	call	free
.label_1138:
	mov	rdx, qword ptr [rbx]
	test	rdx, rdx
	mov	ecx, 0
	je	.label_996
	mov	rax, qword ptr [rdx + 0x10]
	cmp	rax, rbx
	mov	rbx, rdx
	je	.label_1033
	test	rax, rax
	mov	rbx, rdx
	je	.label_1033
	jmp	.label_1063
.label_972:
	mov	qword ptr [rsp + 0x58], r9
	mov	qword ptr [rsp + 0x60], r15
	mov	r15, r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1051
	mov	r8, r15
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 0x58]
	jmp	.label_1162
.label_1123:
	mov	qword ptr [rsp + 0x60], r15
	mov	r15, r8
	mov	r12, rbx
	jmp	.label_1170
.label_1027:
	mov	edi, 0x3c8
	mov	rbp, r8
	mov	r14, r9
	call	malloc
	mov	r9, r14
	pxor	xmm1, xmm1
	mov	r8, rbp
	test	rax, rax
	je	.label_979
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1048
.label_1051:
	mov	qword ptr [rsp + 0x80], 0
	jmp	.label_1182
.label_1075:
	mov	qword ptr [r14], 0
.label_1182:
	xor	r12d, r12d
.label_1170:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	r8, r15
	pxor	xmm1, xmm1
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 0x58]
	je	.label_979
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_951
	nop	word ptr cs:[rax + rax]
.label_985:
	mov	rbp, qword ptr [r12]
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_972
	mov	rax, qword ptr [r8 + 0x70]
.label_1162:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbx, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x80], rbx
	mov	rcx, rbx
	lea	r14, [rsp + 0x80]
	jmp	.label_981
	nop	word ptr cs:[rax + rax]
.label_1078:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rsi, ecx
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [r14], rcx
.label_981:
	mov	qword ptr [rcx], rbp
	mov	rax, qword ptr [r14]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rbp, qword ptr [r14]
	mov	rax, qword ptr [r12 + 8]
	test	rax, rax
	je	.label_1038
	lea	r14, [rbp + 8]
	mov	r12, rax
	jmp	.label_1043
	nop	
.label_1038:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_999:
	mov	rcx, rax
	mov	rax, r12
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rcx
	je	.label_1154
	test	r12, r12
	jne	.label_1056
.label_1154:
	mov	r12, qword ptr [rax]
	mov	rbp, qword ptr [rbp]
	test	r12, r12
	jne	.label_999
	jmp	.label_1191
.label_1056:
	lea	r14, [rbp + 0x10]
.label_1043:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1067
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_1078
.label_1067:
	mov	qword ptr [rsp + 0x60], r15
	mov	r15, r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1075
	mov	r8, r15
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 0x58]
	jmp	.label_1078
	nop	word ptr cs:[rax + rax]
.label_1191:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1123
	mov	rax, qword ptr [r8 + 0x70]
	mov	r12, rbx
.label_951:
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r13
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r13], rbx
	test	r12, r12
	je	.label_979
	mov	qword ptr [r12], rbx
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1027
	mov	rax, qword ptr [r8 + 0x70]
.label_1048:
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0xa
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], r13
	cmp	r15, r9
	lea	r15, [r15 + 1]
	jl	.label_985
.label_1120:
	mov	rax, qword ptr [rsp + 0x28]
	test	rax, rax
	je	.label_1169
	mov	rbx, rax
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	mov	r12, qword ptr [rsp + 0x18]
	je	.label_1175
	mov	rax, qword ptr [r8 + 0x70]
.label_1140:
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r13
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r13], rdx
	mov	r13, rdx
	jmp	.label_1190
.label_1169:
	mov	r12, qword ptr [rsp + 0x18]
.label_1190:
	xor	eax, eax
	mov	rcx, r13
	jmp	.label_1111
.label_1035:
	mov	qword ptr [rsp + 0x50], r14
.label_953:
	mov	dword ptr [r12], 0xa
	xor	ecx, ecx
	jmp	.label_996
.label_1072:
	cmp	r15, 2
	mov	r13, rdi
	mov	rbp, rdi
	jl	.label_1155
	mov	rax, qword ptr [rsp + 0x50]
	mov	rbp, qword ptr [rax]
	mov	r13, rax
	mov	ebx, 2
	mov	rdi, rax
	jmp	.label_1157
.label_1103:
	mov	edi, 0x3c8
	mov	rbp, r8
	mov	r14, r9
	call	malloc
	mov	r9, r14
	pxor	xmm1, xmm1
	mov	r8, rbp
	test	rax, rax
	je	.label_979
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1168
.label_1006:
	mov	r12, rbp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x60]
.label_965:
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_1173
	mov	qword ptr [r13 + 0x48], r14
	movdqa	xmm0, xmmword ptr [rsp + 0xa0]
	movdqu	xmmword ptr [rbx], xmm0
	mov	byte ptr [rbx + 8], 1
	mov	rcx, rbp
	mov	qword ptr [rsp + 0x50], rbp
	jmp	.label_996
.label_1146:
	mov	qword ptr [rsp + 0x60], rdi
	mov	qword ptr [rsp + 0x58], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1187
	mov	r14, rbp
	mov	r8, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rsp + 0x60]
	jmp	.label_1189
.label_1122:
	mov	qword ptr [rsp + 0x60], rdi
	mov	r13, rbp
	jmp	.label_1128
.label_1187:
	mov	qword ptr [rsp + 0x80], 0
	jmp	.label_963
.label_1097:
	mov	qword ptr [r12], 0
.label_963:
	xor	r13d, r13d
.label_1128:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	r8, qword ptr [rsp + 0x20]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x58]
	je	.label_979
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	mov	rdi, qword ptr [rsp + 0x60]
	jmp	.label_1016
	nop	dword ptr [rax + rax]
.label_1157:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1146
	mov	r14, rbp
	mov	rax, qword ptr [r8 + 0x70]
.label_1189:
	lea	rdx, [r13 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbp, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x80], rbp
	mov	rcx, rbp
	lea	r12, [rsp + 0x80]
	jmp	.label_1003
	nop	word ptr cs:[rax + rax]
.label_1095:
	lea	rdx, [r13 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rsi, ecx
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [r12], rcx
.label_1003:
	mov	qword ptr [rcx], r14
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rdx, qword ptr [r12]
	mov	rax, qword ptr [r13 + 8]
	test	rax, rax
	je	.label_1062
	mov	r14, rdx
	lea	r12, [r14 + 8]
	mov	r13, rax
	jmp	.label_1071
	nop	word ptr cs:[rax + rax]
.label_1062:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1086:
	mov	rcx, rax
	mov	rax, r13
	mov	r13, qword ptr [rax + 0x10]
	cmp	r13, rcx
	je	.label_1069
	test	r13, r13
	jne	.label_1084
.label_1069:
	mov	r13, qword ptr [rax]
	mov	rdx, qword ptr [rdx]
	test	r13, r13
	jne	.label_1086
	jmp	.label_1092
.label_1084:
	mov	r14, rdx
	lea	r12, [r14 + 0x10]
.label_1071:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1115
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_1095
.label_1115:
	mov	qword ptr [rsp + 0x60], rdi
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1097
	mov	r8, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rsp + 0x60]
	jmp	.label_1095
	nop	word ptr cs:[rax + rax]
.label_1092:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1122
	mov	rax, qword ptr [r8 + 0x70]
	mov	r13, rbp
.label_1016:
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rdi
	mov	qword ptr [rax + rcx + 0x18], r13
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rdi, rdi
	je	.label_1049
	mov	qword ptr [rdi], rdx
.label_1049:
	test	r13, r13
	je	.label_979
	mov	rbp, rdx
	mov	qword ptr [r13], rbp
	cmp	rbx, r15
	lea	rbx, [rbx + 1]
	mov	rdi, rbp
	jl	.label_1157
.label_1155:
	cmp	r15, r9
	jne	.label_1180
	mov	qword ptr [rsp + 0x20], r8
	mov	rcx, rbp
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_996
.label_1175:
	mov	qword ptr [rsp + 0x20], r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	ecx, 0
	je	.label_996
	mov	r8, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	jmp	.label_1140
.label_1180:
	mov	rbx, qword ptr [r13]
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1144
	mov	qword ptr [rsp + 0x28], rbp
	mov	rax, qword ptr [r8 + 0x70]
.label_1021:
	lea	rdx, [r13 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r12, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x80], r12
	mov	rcx, r12
	lea	rbp, [rsp + 0x80]
	jmp	.label_1164
	nop	word ptr cs:[rax + rax]
.label_973:
	lea	rdx, [r13 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rsi, ecx
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [rbp], rcx
.label_1164:
	mov	qword ptr [rcx], rbx
	mov	rax, qword ptr [rbp]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rbx, qword ptr [rbp]
	mov	rax, qword ptr [r13 + 8]
	test	rax, rax
	je	.label_1183
	lea	rbp, [rbx + 8]
	mov	r13, rax
	jmp	.label_1192
.label_1183:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_957:
	mov	rcx, rax
	mov	rax, r13
	mov	r13, qword ptr [rax + 0x10]
	cmp	r13, rcx
	je	.label_949
	test	r13, r13
	jne	.label_955
.label_949:
	mov	r13, qword ptr [rax]
	mov	rbx, qword ptr [rbx]
	test	r13, r13
	jne	.label_957
	jmp	.label_964
.label_955:
	lea	rbp, [rbx + 0x10]
.label_1192:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1029
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_973
.label_1029:
	mov	qword ptr [rsp + 0x58], r9
	mov	r14, r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_983
	mov	r8, r14
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x58]
	jmp	.label_973
.label_1173:
	mov	qword ptr [rsp + 0x50], rbp
	cmp	eax, 2
	setne	al
	movzx	eax, al
	add	eax, 9
	mov	dword ptr [r12], eax
	xor	ecx, ecx
	jmp	.label_996
.label_964:
	mov	rdi, qword ptr [rsp + 0x50]
	jmp	.label_1004
.label_1040:
	mov	qword ptr [rsp + 0x50], r14
	mov	dword ptr [r12], 0xf
	xor	ecx, ecx
	jmp	.label_996
.label_1144:
	mov	r14, r9
	mov	r12, r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1019
	mov	qword ptr [rsp + 0x28], rbp
	mov	r8, r12
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r9, r14
	jmp	.label_1021
.label_1019:
	mov	qword ptr [rsp + 0x80], 0
	jmp	.label_979
.label_983:
	mov	qword ptr [rbp], 0
.label_979:
	mov	r12, qword ptr [rsp + 0x18]
	mov	dword ptr [r12], 0xc
	xor	ecx, ecx
.label_996:
	test	rcx, rcx
	sete	al
	jne	.label_1111
	mov	edx, dword ptr [r12]
	test	edx, edx
	mov	rbx, qword ptr [rsp + 0x40]
	je	.label_1047
	jmp	.label_1053
	nop	word ptr cs:[rax + rax]
.label_1111:
	mov	rbx, qword ptr [rsp + 0x40]
.label_1047:
	cmp	qword ptr [rsp + 0x30], 0
	mov	rbp, rcx
	mov	r13, qword ptr [rsp + 0x38]
	je	.label_1060
	movzx	edx, byte ptr [rbx + 8]
	cmp	edx, 0x17
	je	.label_1068
	cmp	edx, 0xb
	mov	rbp, rcx
	jne	.label_1060
.label_1068:
	test	al, al
	jne	.label_967
	mov	r14d, 0x400ff
	nop	dword ptr [rax]
.label_1076:
	mov	rbp, rcx
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	jne	.label_1076
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	jne	.label_1076
	nop	word ptr cs:[rax + rax]
.label_1105:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1107
	cmp	eax, 6
	jne	.label_1089
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_1149
	nop	dword ptr [rax]
.label_1107:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1149:
	call	free
.label_1089:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_967
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_1105
	test	rcx, rcx
	mov	rbp, rax
	je	.label_1105
	jmp	.label_1076
.label_1053:
	xor	r15d, r15d
	mov	rcx, qword ptr [rsp + 0x50]
	test	rcx, rcx
	je	.label_974
	mov	r14d, 0x400ff
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1073:
	mov	rbp, rcx
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	jne	.label_1073
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	jne	.label_1073
	nop	word ptr cs:[rax + rax]
.label_958:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1114
	cmp	eax, 6
	jne	.label_1117
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_1134
	nop	dword ptr [rax]
.label_1114:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1134:
	call	free
.label_1117:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_974
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_958
	test	rcx, rcx
	mov	rbp, rax
	je	.label_958
	jmp	.label_1073
.label_967:
	mov	dword ptr [r12], 0xd
.label_1001:
	xor	r15d, r15d
	jmp	.label_974
.label_1104:
	mov	r15, rbp
	jmp	.label_974
.label_1150:
	mov	r15, rbp
.label_974:
	mov	rax, r15
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_990:
	mov	edi, OFFSET FLAT:.str.5_1
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0xced
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.parse_bracket_exp
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x40db00

	.globl build_charclass_op
	.type build_charclass_op, @function
build_charclass_op:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, r9
	mov	dword ptr [rsp + 0xc], r8d
	mov	rbp, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	r12, rdi
	mov	qword ptr [rsp + 0x10], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1212
	mov	qword ptr [rsp], r15
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	test	r15, r15
	je	.label_1210
	mov	al, byte ptr [r15 + 0x20]
	and	al, 0xfe
	mov	ecx, dword ptr [rsp + 0xc]
	or	al, cl
	mov	byte ptr [r15 + 0x20], al
	lea	rcx, [rsp + 0x10]
	xor	r9d, r9d
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, r15
	mov	r8, r14
	call	build_charclass
	mov	r14d, eax
	test	r14d, r14d
	jne	.label_1199
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_1203
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_1198:
	movsx	rcx, al
	mov	eax, 1
	shl	rax, cl
	mov	rdx, rcx
	sar	rdx, 0x3f
	shr	rdx, 0x3a
	add	rdx, rcx
	sar	rdx, 6
	or	qword ptr [rbx + rdx*8], rax
	mov	al, byte ptr [rbp]
	inc	rbp
	test	al, al
	jne	.label_1198
.label_1203:
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_1211
	movdqu	xmm0, xmmword ptr [rbx]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx], xmm0
	movdqu	xmm0, xmmword ptr [rbx + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx + 0x10], xmm0
.label_1211:
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_1197
	mov	rax, qword ptr [r12 + 0x78]
	mov	rcx, qword ptr [rax]
	and	qword ptr [rbx], rcx
	mov	rcx, qword ptr [rax + 8]
	and	qword ptr [rbx + 8], rcx
	mov	rcx, qword ptr [rax + 0x10]
	and	qword ptr [rbx + 0x10], rcx
	mov	rax, qword ptr [rax + 0x18]
	and	qword ptr [rbx + 0x18], rax
.label_1197:
	mov	ecx, dword ptr [r12 + 0x80]
	cmp	ecx, 0xf
	je	.label_1205
	mov	rax, qword ptr [r12 + 0x70]
.label_1214:
	lea	edx, [rcx + 1]
	mov	dword ptr [r12 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r14, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	qword ptr [rax + rcx + 0x30], rbx
	mov	dword ptr [rax + rcx + 0x38], 3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_1208
	or	byte ptr [r12 + 0xb0], 2
	mov	eax, dword ptr [r12 + 0x80]
	cmp	eax, 0xf
	je	.label_1204
	mov	rbp, qword ptr [r12 + 0x70]
.label_1200:
	lea	ecx, [rax + 1]
	mov	dword ptr [r12 + 0x80], ecx
	movsxd	rbx, eax
	shl	rbx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	qword ptr [rbp + rbx + 0x30], r15
	mov	dword ptr [rbp + rbx + 0x38], 6
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	mov	qword ptr [rbp + rbx + 0x40], -1
	mov	eax, dword ptr [r12 + 0x80]
	cmp	eax, 0xf
	je	.label_1207
	mov	rcx, qword ptr [r12 + 0x70]
.label_1206:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rax + 1]
	mov	dword ptr [r12 + 0x80], esi
	movsxd	rsi, eax
	shl	rsi, 6
	lea	rax, [rcx + rsi + 8]
	mov	qword ptr [rcx + rsi + 8], 0
	mov	qword ptr [rcx + rsi + 0x10], r14
	mov	qword ptr [rcx + rsi + 0x18], rdx
	mov	dword ptr [rcx + rsi + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rcx + rsi + 0x20], xmm0
	mov	qword ptr [rcx + rsi + 0x40], -1
	mov	qword ptr [r14], rax
	mov	qword ptr [rdx], rax
	jmp	.label_1201
.label_1208:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	mov	rax, r14
	jmp	.label_1201
.label_1212:
	mov	dword ptr [r15], 0xc
	jmp	.label_1202
.label_1210:
	mov	rdi, rbx
	jmp	.label_1213
.label_1199:
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], r14d
	jmp	.label_1202
.label_1205:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1209
	mov	rcx, qword ptr [r12 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r12 + 0x70], rax
	mov	dword ptr [r12 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1214
.label_1204:
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1209
	mov	rax, qword ptr [r12 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r12 + 0x70], rbp
	mov	dword ptr [r12 + 0x80], 0
	xor	eax, eax
	jmp	.label_1200
.label_1209:
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
.label_1213:
	call	free
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
.label_1202:
	xor	eax, eax
.label_1201:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1207:
	mov	edi, 0x3c8
	call	malloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_1201
	mov	rdx, qword ptr [r12 + 0x70]
	mov	qword ptr [rcx], rdx
	mov	qword ptr [r12 + 0x70], rcx
	mov	dword ptr [r12 + 0x80], 0
	jmp	.label_1206
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ded0

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	mov	rax, qword ptr [rsi + 0x48]
	cmp	qword ptr [rsi + 0x68], rax
	jle	.label_1221
	mov	rcx, qword ptr [rsi + 8]
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	dword ptr [rsi + 0x90], 2
	jl	.label_1224
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, qword ptr [rsi + 0x30]
	je	.label_1224
	mov	rcx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rcx + r8*4], -1
	je	.label_1223
.label_1224:
	test	dl, 1
	je	.label_1216
	movzx	ecx, al
	cmp	ecx, 0x5c
	jne	.label_1216
	mov	rcx, qword ptr [rsi + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rsi + 0x58]
	jge	.label_1216
	mov	qword ptr [rsi + 0x48], rcx
	mov	rax, qword ptr [rsi + 8]
	mov	al, byte ptr [rax + rcx]
	mov	byte ptr [rdi], al
	jmp	.label_1223
.label_1221:
	mov	byte ptr [rdi + 8], 2
	xor	eax, eax
	ret	
.label_1216:
	cmp	eax, 0x5b
	jne	.label_1226
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	cmp	rax, qword ptr [rsi + 0x58]
	jge	.label_1218
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	jmp	.label_1217
.label_1226:
	cmp	eax, 0x5e
	je	.label_1219
	cmp	eax, 0x5d
	je	.label_1222
	cmp	eax, 0x2d
	jne	.label_1223
	mov	byte ptr [rdi + 8], 0x16
	mov	eax, 1
	ret	
.label_1223:
	mov	byte ptr [rdi + 8], 1
	mov	eax, 1
	ret	
.label_1218:
	xor	eax, eax
.label_1217:
	mov	byte ptr [rdi], al
	movzx	eax, al
	cmp	eax, 0x3d
	je	.label_1225
	cmp	eax, 0x3a
	je	.label_1227
	cmp	eax, 0x2e
	jne	.label_1215
	mov	byte ptr [rdi + 8], 0x1a
	mov	eax, 2
	ret	
.label_1222:
	mov	byte ptr [rdi + 8], 0x15
	mov	eax, 1
	ret	
.label_1227:
	test	dl, 4
	jne	.label_1220
.label_1215:
	mov	byte ptr [rdi + 8], 1
	mov	byte ptr [rdi], 0x5b
	mov	eax, 1
	ret	
.label_1219:
	mov	byte ptr [rdi + 8], 0x19
	mov	eax, 1
	ret	
.label_1225:
	mov	byte ptr [rdi + 8], 0x1c
	mov	eax, 2
	ret	
.label_1220:
	mov	byte ptr [rdi + 8], 0x1e
	mov	eax, 2
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dfd0

	.globl parse_bracket_element
	.type parse_bracket_element, @function
parse_bracket_element:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, rdx
	mov	r14, rdi
	mov	rdx, qword ptr [rsi + 0x48]
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_1238
	lea	rax, [rdx + 1]
	mov	rbx, qword ptr [rsi + 0x30]
	cmp	rax, rbx
	jge	.label_1238
	mov	r10, qword ptr [rsi + 0x10]
	lea	r11, [r10 + rdx*4]
	mov	edi, 1
	nop	dword ptr [rax + rax]
.label_1237:
	cmp	dword ptr [r11 + rdi*4], -1
	jne	.label_1232
	lea	rax, [rdx + rdi + 1]
	inc	rdi
	cmp	rax, rbx
	jl	.label_1237
.label_1232:
	cmp	edi, 2
	jl	.label_1238
	mov	dword ptr [r14], 1
	mov	eax, dword ptr [r10 + rdx*4]
	mov	dword ptr [r14 + 8], eax
	movsxd	rax, edi
	add	rax, rdx
	mov	qword ptr [rsi + 0x48], rax
	jmp	.label_1239
.label_1238:
	movsxd	rax, ecx
	add	rdx, rax
	mov	qword ptr [rsi + 0x48], rdx
	movzx	edi, byte ptr [r15 + 8]
	lea	eax, [rdi - 0x16]
	cmp	eax, 8
	ja	.label_1235
	jmp	qword ptr [(rax * 8) + label_1245]
.label_2229:
	mov	eax, 7
	cmp	qword ptr [rsi + 0x68], rdx
	jle	.label_1228
	mov	r11b, byte ptr [r15]
	xor	r12d, r12d
	jmp	.label_1247
.label_1246:
	inc	r12
	movzx	edi, byte ptr [r15 + 8]
.label_1247:
	movzx	edi, dil
	cmp	edi, 0x1e
	jne	.label_1230
	cmp	byte ptr [rsi + 0x8b], 0
	jne	.label_1233
	mov	rbx, qword ptr [rsi + 0x48]
	lea	rdi, [rbx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + rbx]
	jmp	.label_1236
	nop	
.label_1230:
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbx, qword ptr [rsi + 8]
.label_1249:
	mov	bl, byte ptr [rbx + rdx]
.label_1236:
	cmp	qword ptr [rsi + 0x68], rdi
	jle	.label_1228
	movzx	edx, r11b
	movzx	ecx, bl
	cmp	ecx, edx
	jne	.label_1243
	mov	rcx, qword ptr [rsi + 8]
	movzx	ecx, byte ptr [rcx + rdi]
	cmp	ecx, 0x5d
	je	.label_1244
.label_1243:
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + r12], bl
	cmp	r12, 0x1e
	jle	.label_1246
	jmp	.label_1228
.label_1233:
	cmp	byte ptr [rsi + 0x8c], 0
	je	.label_1248
	mov	r9, qword ptr [rsi + 0x30]
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, r9
	je	.label_1229
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rdx + r8*4], -1
	je	.label_1234
.label_1229:
	mov	rdx, qword ptr [rsi]
	mov	rdi, qword ptr [rsi + 0x18]
	mov	rbx, qword ptr [rsi + 0x28]
	add	rbx, qword ptr [rdi + r8*8]
	mov	bl, byte ptr [rdx + rbx]
	test	bl, bl
	js	.label_1234
	mov	edi, 1
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_1241
	lea	rdx, [r8 + 1]
	cmp	rdx, r9
	jge	.label_1241
	lea	r10, [r8*4]
	add	r10, qword ptr [rsi + 0x10]
	mov	edi, 1
.label_1231:
	cmp	dword ptr [r10 + rdi*4], -1
	jne	.label_1241
	lea	rdx, [r8 + rdi + 1]
	inc	rdi
	cmp	rdx, r9
	jl	.label_1231
.label_1241:
	movsxd	rdi, edi
	add	rdi, r8
	mov	qword ptr [rsi + 0x48], rdi
	jmp	.label_1236
.label_1248:
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	add	rdx, qword ptr [rsi + 0x28]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbx, qword ptr [rsi]
	jmp	.label_1249
.label_1234:
	lea	rdi, [r8 + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + r8]
	jmp	.label_1236
.label_1244:
	inc	rdi
	mov	qword ptr [rsi + 0x48], rdi
	movsxd	rax, r12d
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rax], 0
	movzx	ecx, byte ptr [r15 + 8]
	xor	eax, eax
	cmp	ecx, 0x1e
	je	.label_1240
	cmp	ecx, 0x1c
	je	.label_1242
	cmp	ecx, 0x1a
	jne	.label_1228
	mov	dword ptr [r14], 3
	jmp	.label_1228
.label_1240:
	mov	dword ptr [r14], 4
	jmp	.label_1228
.label_1242:
	mov	dword ptr [r14], 2
	jmp	.label_1228
.label_2228:
	test	r9b, r9b
	jne	.label_1235
	lea	rdi, [rsp + 8]
	mov	rdx, r8
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x10]
	mov	eax, 0xb
	cmp	ecx, 0x15
	jne	.label_1228
.label_1235:
	mov	dword ptr [r14], 0
	mov	al, byte ptr [r15]
	mov	byte ptr [r14 + 8], al
.label_1239:
	xor	eax, eax
.label_1228:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e230

	.globl build_charclass
	.type build_charclass, @function
build_charclass:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, r8
	mov	r13, rcx
	mov	rbx, rdx
	mov	r15, rsi
	mov	r14, rdi
	test	r9d, 0x400000
	je	.label_1263
	mov	esi, OFFSET FLAT:.str.7_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1275
	mov	esi, OFFSET FLAT:.str.8_0
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	jne	.label_1263
.label_1275:
	mov	r12d, OFFSET FLAT:.str.9_1
.label_1263:
	mov	rbp, qword ptr [r13]
	cmp	rbp, qword ptr [rbx + 0x48]
	je	.label_1308
.label_1260:
	mov	rdi, r12
	call	wctype
	mov	rcx, qword ptr [rbx + 0x48]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x48], rdx
	mov	rdx, qword ptr [rbx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	esi, OFFSET FLAT:.str.1_4
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1298
	mov	esi, OFFSET FLAT:.str.10_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1302
	mov	esi, OFFSET FLAT:.str.8_0
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1306
	mov	esi, OFFSET FLAT:.str.3_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1310
	mov	esi, OFFSET FLAT:.str.9_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1253
	mov	esi, OFFSET FLAT:.str.11_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1257
	mov	esi, OFFSET FLAT:.str.12_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1311
	mov	esi, OFFSET FLAT:.str.7_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1290
	mov	esi, OFFSET FLAT:.str.13_0
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1274
	mov	esi, OFFSET FLAT:.str.14_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1280
	mov	esi, OFFSET FLAT:.str.15_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1288
	mov	esi, OFFSET FLAT:.str.16_1
	mov	rdi, r12
	call	strcmp
	mov	ecx, eax
	mov	eax, 4
	test	ecx, ecx
	jne	.label_1252
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1270
.label_1292:
	test	byte ptr [rsi + rdx*2 + 1], 0x10
	je	.label_1301
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1301:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1292
	jmp	.label_1252
.label_1298:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1278
	nop	word ptr cs:[rax + rax]
.label_1265:
	test	byte ptr [rsi + rdx*2], 8
	je	.label_1276
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1276:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1265
	jmp	.label_1252
	nop	dword ptr [rax]
.label_1278:
	test	byte ptr [rsi + rdx*2], 8
	je	.label_1285
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1285:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1278
	jmp	.label_1252
.label_1302:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1283
	nop	
.label_1299:
	test	byte ptr [rsi + rdx*2], 2
	je	.label_1254
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1254:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1299
	jmp	.label_1252
	nop	dword ptr [rax]
.label_1283:
	test	byte ptr [rsi + rdx*2], 2
	je	.label_1305
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1305:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1283
	jmp	.label_1252
.label_1306:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1256
	nop	
.label_1266:
	test	byte ptr [rsi + rdx*2 + 1], 2
	je	.label_1255
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1255:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1266
	jmp	.label_1252
	nop	word ptr [rax + rax]
.label_1256:
	test	byte ptr [rsi + rdx*2 + 1], 2
	je	.label_1271
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1271:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1256
	jmp	.label_1252
.label_1310:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1284
	nop	
.label_1300:
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	je	.label_1287
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1287:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1300
	jmp	.label_1252
.label_1284:
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	je	.label_1303
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1303:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1284
	jmp	.label_1252
.label_1308:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1252
	lea	rax, [rbp + rbp + 1]
	mov	qword ptr [rbx + 0x18], rcx
	mov	qword ptr [r13], rax
	jmp	.label_1260
.label_1253:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1272
	nop	word ptr cs:[rax + rax]
.label_1281:
	test	byte ptr [rsi + rdx*2 + 1], 4
	je	.label_1307
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1307:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1281
	jmp	.label_1252
.label_1272:
	test	byte ptr [rsi + rdx*2 + 1], 4
	je	.label_1286
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1286:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1272
	jmp	.label_1252
.label_1257:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1261
	nop	dword ptr [rax]
.label_1312:
	test	byte ptr [rsi + rdx*2 + 1], 8
	je	.label_1289
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1289:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1312
	jmp	.label_1252
.label_1261:
	test	byte ptr [rsi + rdx*2 + 1], 8
	je	.label_1267
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1267:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1261
	jmp	.label_1252
.label_1311:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1268
	nop	dword ptr [rax]
.label_1304:
	test	byte ptr [rsi + rdx*2 + 1], 0x40
	je	.label_1291
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1291:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1304
	jmp	.label_1252
.label_1268:
	test	byte ptr [rsi + rdx*2 + 1], 0x40
	je	.label_1279
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1279:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1268
	jmp	.label_1252
.label_1290:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1294
	nop	dword ptr [rax]
.label_1251:
	test	byte ptr [rsi + rdx*2 + 1], 1
	je	.label_1293
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1293:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1251
	jmp	.label_1252
.label_1294:
	test	byte ptr [rsi + rdx*2 + 1], 1
	je	.label_1313
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1313:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1294
	jmp	.label_1252
.label_1274:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1295
	nop	dword ptr [rax]
.label_1258:
	test	byte ptr [rsi + rdx*2], 1
	je	.label_1282
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1282:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1258
	jmp	.label_1252
.label_1295:
	test	byte ptr [rsi + rdx*2], 1
	je	.label_1273
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1273:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1295
	jmp	.label_1252
.label_1280:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1259
.label_1309:
	cmp	word ptr [rsi + rdx*2], 0
	jns	.label_1296
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1296:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1309
	jmp	.label_1252
.label_1259:
	cmp	word ptr [rsi + rdx*2], 0
	jns	.label_1250
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1250:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1259
	jmp	.label_1252
.label_1270:
	test	byte ptr [rsi + rdx*2 + 1], 0x10
	je	.label_1262
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1262:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1270
	jmp	.label_1252
.label_1288:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1269
.label_1264:
	test	byte ptr [rsi + rdx*2], 4
	je	.label_1277
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1277:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1264
.label_1252:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1269:
	test	byte ptr [rsi + rdx*2], 4
	je	.label_1297
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1297:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1269
	jmp	.label_1252
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e9e0

	.globl optimize_subexps
	.type optimize_subexps, @function
optimize_subexps:
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 0x11
	je	.label_1314
	cmp	eax, 4
	jne	.label_1315
	mov	rax, qword ptr [rdi + 0xe0]
	test	rax, rax
	je	.label_1315
	movsxd	rcx, dword ptr [rsi + 0x28]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	qword ptr [rsi + 0x28], rcx
	mov	eax, 1
	shl	eax, cl
	cdqe	
	or	qword ptr [rdi + 0xa0], rax
	xor	eax, eax
	ret	
.label_1314:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_1315
	movzx	ecx, byte ptr [rax + 0x30]
	cmp	ecx, 0x11
	jne	.label_1315
	mov	rdx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rax + 0x28]
	mov	qword ptr [rsi + 8], rdx
	test	rdx, rdx
	je	.label_1316
	mov	qword ptr [rdx], rsi
.label_1316:
	mov	rax, qword ptr [rsi + 0x28]
	mov	rdx, qword ptr [rdi + 0xe0]
	mov	rax, qword ptr [rdx + rax*8]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	rcx, 0x3f
	jg	.label_1315
	mov	rax, -2
	rol	rax, cl
	and	qword ptr [rdi + 0xa0], rax
.label_1315:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ea70

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rcx, qword ptr [rsi + 0x38]
	movzx	edx, byte ptr [rsi + 0x30]
	lea	ebx, [rdx - 2]
	cmp	ebx, 0xe
	ja	.label_1325
	xor	eax, eax
	jmp	qword ptr [(rbx * 8) + label_1318]
.label_2246:
	mov	r14, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	rax, qword ptr [rsi + 0x20]
	mov	r15, qword ptr [rax + 0x38]
	movaps	xmm0, xmmword ptr [rip + label_1321]
	movups	xmmword ptr [r14 + rbx*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + rbx*8 + 0x10], rax
	test	rax, rax
	je	.label_1328
	mov	qword ptr [rax], r15
	jmp	.label_1319
.label_2247:
	or	byte ptr [rdi + 0xb0], 1
	mov	rax, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	add	rsi, 0x20
	test	rax, rax
	lea	rax, [rax + 0x18]
	cmove	rax, rsi
	mov	rax, qword ptr [rax]
	mov	r14, qword ptr [rax + 0x38]
	test	rdx, rdx
	lea	rax, [rdx + 0x18]
	cmove	rax, rsi
	test	r14, r14
	js	.label_1320
	mov	rax, qword ptr [rax]
	mov	r15, qword ptr [rax + 0x38]
	test	r15, r15
	js	.label_1329
	mov	r12, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	qword ptr [r12 + rbx*8], 2
	mov	edi, 0x10
	call	malloc
	mov	rcx, rax
	mov	qword ptr [r12 + rbx*8 + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1323
	lea	rax, [r12 + rbx*8 + 8]
	cmp	r14, r15
	jne	.label_1324
	mov	qword ptr [rax], 1
	mov	qword ptr [rcx], r14
	jmp	.label_1319
.label_2244:
	cmp	qword ptr [rsi + 0x20], 0
	mov	eax, 0
	je	.label_1323
	mov	edi, OFFSET FLAT:.str.17_1
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x59f
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_2245:
	mov	rax, qword ptr [rsi + 0x20]
	mov	rbx, qword ptr [rax + 0x38]
	mov	rax, qword ptr [rdi + 0x18]
	mov	qword ptr [rax + rcx*8], rbx
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 4
	jne	.label_1319
	mov	r14, qword ptr [rdi + 0x28]
	lea	r15, [rcx + rcx*2]
	movaps	xmm0, xmmword ptr [rip + label_1321]
	movups	xmmword ptr [r14 + r15*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + r15*8 + 0x10], rax
	test	rax, rax
	je	.label_1317
	mov	qword ptr [rax], rbx
	jmp	.label_1319
.label_1325:
	test	dl, 8
	jne	.label_1322
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_1319
.label_1324:
	mov	qword ptr [rax], 2
	jge	.label_1326
	mov	qword ptr [rcx], r14
	mov	qword ptr [rcx + 8], r15
	jmp	.label_1319
.label_1326:
	mov	qword ptr [rcx], r15
	mov	qword ptr [rcx + 8], r14
.label_1319:
	xor	eax, eax
.label_1323:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1328:
	lea	rax, [r14 + rbx*8]
.label_1327:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	eax, 0xc
	jmp	.label_1323
.label_1317:
	lea	rax, [r14 + r15*8]
	jmp	.label_1327
.label_1320:
	mov	edi, OFFSET FLAT:.str.18_2
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5af
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_1329:
	mov	edi, OFFSET FLAT:.str.19_1
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5b0
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_1322:
	mov	edi, OFFSET FLAT:.str.20
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ec80

	.globl lower_subexp
	.type lower_subexp, @function
lower_subexp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbp, rdi
	mov	rbx, qword ptr [rsi]
	mov	r13, qword ptr [r14 + 8]
	test	r13, r13
	je	.label_1330
	mov	al, byte ptr [rsi + 0x38]
	and	al, 0x10
	je	.label_1330
	mov	rax, qword ptr [r14 + 0x28]
	cmp	rax, 0x3f
	jg	.label_1339
	mov	rcx, qword ptr [rbx + 0xa0]
	bt	rcx, rax
	jae	.label_1339
.label_1330:
	mov	r12d, dword ptr [rbx + 0x80]
	cmp	r12d, 0xf
	je	.label_1331
	mov	rax, qword ptr [rbx + 0x70]
.label_1345:
	lea	ecx, [r12 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r12d
	shl	rcx, 6
	lea	r12, [rax + rcx + 8]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 8
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1342:
	mov	qword ptr [rsp], rbp
	mov	r15d, dword ptr [rbx + 0x80]
	cmp	r15d, 0xf
	je	.label_1332
	mov	rax, qword ptr [rbx + 0x70]
.label_1341:
	lea	ecx, [r15 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r15d
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 9
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1338:
	test	r13, r13
	mov	rbp, r15
	je	.label_1333
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	je	.label_1343
	mov	rax, qword ptr [rbx + 0x70]
.label_1344:
	lea	ecx, [rbp + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r13
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r13], rbp
	test	r15, r15
	je	.label_1333
	mov	qword ptr [r15], rbp
.label_1333:
	mov	r13d, dword ptr [rbx + 0x80]
	cmp	r13d, 0xf
	je	.label_1334
	mov	rax, qword ptr [rbx + 0x70]
.label_1337:
	lea	ecx, [r13 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r13d
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	r12, r12
	je	.label_1340
	mov	qword ptr [r12], r13
.label_1340:
	test	rbp, rbp
	je	.label_1335
	mov	qword ptr [rbp], r13
.label_1335:
	test	r15, r15
	je	.label_1336
	test	r12, r12
	je	.label_1336
	test	rbp, rbp
	je	.label_1336
	test	r13, r13
	je	.label_1336
	mov	rax, qword ptr [r14 + 0x28]
	mov	qword ptr [r15 + 0x28], rax
	mov	qword ptr [r12 + 0x28], rax
	mov	eax, 0x80000
	and	eax, dword ptr [r14 + 0x30]
	mov	ecx, 0xfff7ffff
	mov	edx, dword ptr [r15 + 0x30]
	and	edx, ecx
	or	edx, eax
	mov	dword ptr [r15 + 0x30], edx
	and	ecx, dword ptr [r12 + 0x30]
	or	ecx, eax
	mov	dword ptr [r12 + 0x30], ecx
.label_1339:
	mov	rax, r13
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1331:
	mov	edi, 0x3c8
	call	malloc
	xor	r12d, r12d
	test	rax, rax
	je	.label_1342
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1345
.label_1332:
	mov	edi, 0x3c8
	call	malloc
	xor	r15d, r15d
	test	rax, rax
	je	.label_1338
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1341
.label_1334:
	mov	edi, 0x3c8
	call	malloc
	xor	r13d, r13d
	test	rax, rax
	je	.label_1335
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1337
.label_1336:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	xor	r13d, r13d
	jmp	.label_1339
.label_1343:
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_1333
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1344
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ef80

	.globl re_dfa_add_node
	.type re_dfa_add_node, @function
re_dfa_add_node:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rdx
	mov	r12, rsi
	mov	rbx, rdi
	mov	r13, qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, r13
	jae	.label_1346
.label_1351:
	mov	rcx, qword ptr [rbx]
	shl	rax, 4
	mov	qword ptr [rcx + rax], r12
	mov	qword ptr [rcx + rax + 8], r14
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x10]
	shl	rcx, 4
	and	dword ptr [rax + rcx + 8], 0xfffc00ff
	movzx	eax, r14b
	cmp	eax, 5
	jne	.label_1350
	mov	cl, 1
	cmp	dword ptr [rbx + 0xb4], 1
	jg	.label_1349
.label_1350:
	cmp	eax, 6
	sete	cl
.label_1349:
	movzx	eax, cl
	mov	rcx, qword ptr [rbx]
	mov	rdx, qword ptr [rbx + 0x10]
	shl	rdx, 4
	shl	eax, 0x14
	mov	esi, 0xffefffff
	and	esi, dword ptr [rcx + rdx + 8]
	or	esi, eax
	mov	dword ptr [rcx + rdx + 8], esi
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	qword ptr [rcx + rax*8], -1
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x28]
	lea	rax, [rax + rax*2]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rcx + rax*8], xmm0
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x30]
	lea	rax, [rax + rax*2]
	movups	xmmword ptr [rcx + rax*8], xmm0
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	mov	r15, qword ptr [rbx + 0x10]
	lea	rax, [r15 + 1]
	mov	qword ptr [rbx + 0x10], rax
.label_1348:
	mov	rax, r15
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1346:
	lea	rbp, [r13 + r13]
	mov	r15, -1
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rbp, rax
	ja	.label_1348
	mov	rdi, qword ptr [rbx]
	mov	rsi, r13
	shl	rsi, 5
	call	realloc
	test	rax, rax
	je	.label_1348
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rbx], rax
	mov	rdi, qword ptr [rbx + 0x18]
	shl	r13, 4
	mov	rsi, r13
	call	realloc
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsi, r13
	call	realloc
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rbp, [r13 + r13*2]
	mov	rsi, rbp
	call	realloc
	mov	r13, rax
	mov	rdi, qword ptr [rbx + 0x30]
	mov	rsi, rbp
	call	realloc
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x10]
	test	rdi, rdi
	je	.label_1347
	test	rax, rax
	je	.label_1347
	test	r13, r13
	je	.label_1347
	test	rbp, rbp
	je	.label_1347
	mov	qword ptr [rbx + 0x18], rdi
	mov	qword ptr [rbx + 0x20], rax
	mov	qword ptr [rbx + 0x28], r13
	mov	qword ptr [rbx + 0x30], rbp
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	jmp	.label_1351
.label_1347:
	mov	rbx, rax
	call	free
	mov	rdi, rbx
	call	free
	mov	rdi, r13
	call	free
	mov	rdi, rbp
	call	free
	jmp	.label_1348
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f150

	.globl calc_eclosure_iter
	.type calc_eclosure_iter, @function
calc_eclosure_iter:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	dword ptr [rsp + 4], ecx
	mov	r12, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	r15, qword ptr [rbp + 0x28]
	lea	r14, [r12 + r12*2]
	mov	rax, qword ptr [r15 + r14*8 + 8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x38], 0
	lea	rdi, [rax*8 + 8]
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rsp + 0x40], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1354
	mov	qword ptr [rsp + 8], rbx
	mov	rax, qword ptr [rbp + 0x30]
	mov	qword ptr [rax + r14*8 + 8], -1
	mov	rcx, qword ptr [rbp]
	mov	rbx, r12
	shl	rbx, 4
	mov	eax, dword ptr [rcx + rbx + 8]
	mov	r8d, eax
	shr	r8d, 8
	and	r8d, 0x3ff
	je	.label_1360
	lea	rdx, [r15 + r14*8 + 8]
	cmp	qword ptr [rdx], 0
	je	.label_1360
	mov	rdx, qword ptr [r15 + r14*8 + 0x10]
	mov	rdx, qword ptr [rdx]
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 0xa], 4
	jne	.label_1360
	mov	rdi, rbp
	mov	rsi, r12
	mov	rdx, r12
	mov	rcx, r12
	call	duplicate_node_closure
	test	eax, eax
	jne	.label_1354
	mov	rax, qword ptr [rbp]
	mov	eax, dword ptr [rax + rbx + 8]
.label_1360:
	mov	rbx, r12
	test	al, 8
	jne	.label_1359
	xor	r15d, r15d
	jmp	.label_1361
.label_1359:
	mov	rax, qword ptr [rbp + 0x28]
	cmp	qword ptr [rax + r14*8 + 8], 0
	jle	.label_1355
	xor	r15d, r15d
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_1358:
	mov	rax, qword ptr [rax + r14*8 + 0x10]
	mov	rdx, qword ptr [rax + r13*8]
	mov	rax, qword ptr [rbp + 0x30]
	lea	r12, [rdx + rdx*2]
	mov	rcx, qword ptr [rax + r12*8 + 8]
	cmp	rcx, -1
	je	.label_1356
	test	rcx, rcx
	jne	.label_1362
	xor	ecx, ecx
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbp
	call	calc_eclosure_iter
	test	eax, eax
	je	.label_1352
	jmp	.label_1354
	nop	dword ptr [rax]
.label_1362:
	mov	rcx, qword ptr [rax + r12*8 + 0x10]
	mov	qword ptr [rsp + 0x20], rcx
	movups	xmm0, xmmword ptr [rax + r12*8]
	movaps	xmmword ptr [rsp + 0x10], xmm0
.label_1352:
	lea	rdi, [rsp + 0x30]
	lea	rsi, [rsp + 0x10]
	call	re_node_set_merge
	test	eax, eax
	jne	.label_1354
	mov	rax, qword ptr [rbp + 0x30]
	cmp	qword ptr [rax + r12*8 + 8], 0
	jne	.label_1363
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
.label_1356:
	mov	r15b, 1
.label_1363:
	inc	r13
	mov	rax, qword ptr [rbp + 0x28]
	cmp	r13, qword ptr [rax + r14*8 + 8]
	jl	.label_1358
	jmp	.label_1361
.label_1355:
	xor	r15d, r15d
.label_1361:
	lea	rdi, [rsp + 0x30]
	mov	rsi, rbx
	call	re_node_set_insert
	test	al, al
	mov	eax, 0xc
	je	.label_1354
	test	r15b, 1
	mov	rax, qword ptr [rbp + 0x30]
	je	.label_1353
	mov	ecx, dword ptr [rsp + 4]
	test	cl, cl
	jne	.label_1353
	mov	qword ptr [rax + r14*8 + 8], 0
	jmp	.label_1357
.label_1353:
	mov	rcx, qword ptr [rsp + 0x40]
	mov	qword ptr [rax + r14*8 + 0x10], rcx
	movups	xmm0, xmmword ptr [rsp + 0x30]
	movups	xmmword ptr [rax + r14*8], xmm0
.label_1357:
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [rcx + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x30]
	movups	xmmword ptr [rcx], xmm0
	xor	eax, eax
.label_1354:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f360

	.globl duplicate_node_closure
	.type duplicate_node_closure, @function
duplicate_node_closure:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13d, r8d
	mov	qword ptr [rsp + 8], rcx
	mov	rbx, rdx
	mov	r12, rsi
	mov	r14, rdi
.label_1377:
	mov	dword ptr [rsp + 0x14], r13d
	mov	eax, r13d
	shl	eax, 8
	and	eax, 0x3ff00
	mov	dword ptr [rsp + 0x20], eax
	mov	r15, r12
	nop	word ptr cs:[rax + rax]
.label_1367:
	mov	rax, qword ptr [r14]
	mov	rdx, r15
	shl	rdx, 4
	movzx	ecx, byte ptr [rax + rdx + 8]
	cmp	ecx, 4
	jne	.label_1371
	mov	rcx, qword ptr [r14 + 0x18]
	mov	rdx, qword ptr [r14 + 0x28]
	mov	r13, qword ptr [rcx + r15*8]
	lea	r12, [rbx + rbx*2]
	mov	qword ptr [rdx + r12*8 + 8], 0
	mov	rbp, r13
	shl	rbp, 4
	mov	rsi, qword ptr [rax + rbp]
	mov	rdx, qword ptr [rax + rbp + 8]
	mov	rdi, r14
	mov	qword ptr [rsp + 0x18], rbx
	call	re_dfa_add_node
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_1379
	mov	dword ptr [rsp + 0x24], 0xc
	mov	rax, qword ptr [r14]
	mov	rcx, rbx
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0x20]
	mov	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r14]
	mov	edx, dword ptr [rax + rbp + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r14]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rax + rbx*8], r13
	mov	rax, qword ptr [r14 + 0x18]
	mov	rcx, qword ptr [rax + r15*8]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	qword ptr [rax + rdx*8], rcx
	mov	rax, qword ptr [r14 + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, rbx
	call	re_node_set_insert
	test	al, al
	mov	r15, r13
	mov	r13d, dword ptr [rsp + 0x14]
	jne	.label_1367
	jmp	.label_1369
	nop	dword ptr [rax + rax]
.label_1371:
	mov	rcx, qword ptr [r14 + 0x28]
	lea	rbp, [r15 + r15*2]
	mov	rsi, qword ptr [rcx + rbp*8 + 8]
	test	rsi, rsi
	je	.label_1364
	mov	rdi, qword ptr [rcx + rbp*8 + 0x10]
	mov	r12, qword ptr [rdi]
	lea	rdi, [rbx + rbx*2]
	mov	qword ptr [rcx + rdi*8 + 8], 0
	cmp	rsi, 1
	je	.label_1368
	mov	qword ptr [rsp + 0x18], rbp
	mov	r15, rdi
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi - 1]
	test	rsi, rsi
	jle	.label_1365
	mov	rdx, rsi
	shl	rdx, 4
	mov	ebp, dword ptr [rax + rdx + 8]
	mov	edx, ebp
	and	edx, 0x40000
	je	.label_1365
	mov	rdx, qword ptr [r14 + 0x20]
	shl	rdi, 4
	lea	rdi, [rax + rdi - 0x18]
.label_1366:
	cmp	qword ptr [rdx + rsi*8], r12
	jne	.label_1372
	shr	ebp, 8
	and	ebp, 0x3ff
	cmp	ebp, r13d
	je	.label_1380
.label_1372:
	dec	rsi
	test	rsi, rsi
	jle	.label_1365
	mov	ebp, dword ptr [rdi]
	mov	ebx, ebp
	and	ebx, 0x40000
	add	rdi, -0x10
	test	ebx, ebx
	jne	.label_1366
	jmp	.label_1365
.label_1380:
	cmp	rsi, -1
	je	.label_1365
	mov	rbp, r15
	lea	rdi, [rcx + rbp*8]
	call	re_node_set_insert
	mov	dword ptr [rsp + 0x24], 0xc
	test	al, al
	jne	.label_1375
	jmp	.label_1369
	nop	word ptr [rax + rax]
.label_1365:
	mov	rbp, r12
	shl	rbp, 4
	mov	rsi, qword ptr [rax + rbp]
	mov	rdx, qword ptr [rax + rbp + 8]
	mov	rdi, r14
	call	re_dfa_add_node
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_1378
	mov	dword ptr [rsp + 0x24], 0xc
	mov	rax, qword ptr [r14]
	mov	rcx, rbx
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0x20]
	mov	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r14]
	mov	edx, dword ptr [rax + rbp + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r14]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rax + rbx*8], r12
	mov	rax, qword ptr [r14 + 0x28]
	mov	rbp, r15
	lea	rdi, [rax + rbp*8]
	mov	rsi, rbx
	call	re_node_set_insert
	test	al, al
	je	.label_1369
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 8]
	mov	r8d, r13d
	call	duplicate_node_closure
	mov	dword ptr [rsp + 0x24], eax
	test	eax, eax
	jne	.label_1369
.label_1375:
	mov	rax, qword ptr [r14]
	mov	rcx, qword ptr [r14 + 0x28]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	mov	r15, qword ptr [rcx + 8]
	mov	rbx, r15
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r14
	call	re_dfa_add_node
	cmp	rax, -1
	je	.label_1374
	mov	dword ptr [rsp + 0x24], 0xc
	mov	rdi, qword ptr [r14]
	mov	rcx, rax
	shl	rcx, 4
	mov	edx, dword ptr [rdi + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0x20]
	mov	dword ptr [rdi + rcx + 8], edx
	mov	rdi, qword ptr [r14]
	mov	edx, dword ptr [rdi + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rdi + rcx + 8], edx
	mov	rdx, qword ptr [r14]
	or	dword ptr [rdx + rcx + 8], 0x40000
	mov	rcx, qword ptr [r14 + 0x20]
	mov	qword ptr [rcx + rax*8], r15
	mov	rcx, qword ptr [r14 + 0x28]
	lea	rdi, [rcx + rbp*8]
	mov	rsi, rax
	mov	rbx, rax
	call	re_node_set_insert
	test	al, al
	jne	.label_1367
	jmp	.label_1369
.label_1368:
	cmp	r15, qword ptr [rsp + 8]
	jne	.label_1370
	cmp	rbx, r15
	jne	.label_1373
.label_1370:
	mov	r15, rdi
	lea	rcx, [rax + rdx + 8]
	mov	ebp, dword ptr [rcx]
	mov	rbx, r12
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r14
	call	re_dfa_add_node
	mov	dword ptr [rsp + 0x24], 0xc
	cmp	rax, -1
	je	.label_1369
	shr	ebp, 8
	and	ebp, 0x3ff
	or	r13d, ebp
	mov	rbp, qword ptr [r14]
	mov	rcx, rax
	shl	rcx, 4
	mov	edx, r13d
	shl	edx, 8
	and	edx, 0x3ff00
	mov	esi, dword ptr [rbp + rcx + 8]
	mov	edi, 0xfffc00ff
	and	esi, edi
	or	esi, edx
	mov	dword ptr [rbp + rcx + 8], esi
	mov	rdi, qword ptr [r14]
	mov	edx, dword ptr [rdi + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rdi + rcx + 8], edx
	mov	rdx, qword ptr [r14]
	or	dword ptr [rdx + rcx + 8], 0x40000
	mov	rcx, qword ptr [r14 + 0x20]
	mov	qword ptr [rcx + rax*8], r12
	mov	rcx, qword ptr [r14 + 0x28]
	lea	rdi, [rcx + r15*8]
	mov	rsi, rax
	mov	rbx, rax
	call	re_node_set_insert
	test	al, al
	jne	.label_1377
	jmp	.label_1369
.label_1379:
	mov	dword ptr [rsp + 0x24], 0xc
	jmp	.label_1369
.label_1378:
	mov	dword ptr [rsp + 0x24], 0xc
	jmp	.label_1369
.label_1374:
	mov	dword ptr [rsp + 0x24], 0xc
	jmp	.label_1369
.label_1364:
	mov	rax, qword ptr [r14 + 0x18]
	mov	rcx, qword ptr [rax + r15*8]
	mov	qword ptr [rax + rbx*8], rcx
.label_1376:
	mov	dword ptr [rsp + 0x24], 0
.label_1369:
	mov	eax, dword ptr [rsp + 0x24]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1373:
	lea	rdi, [rcx + rdi*8]
	mov	rsi, r12
	call	re_node_set_insert
	mov	dword ptr [rsp + 0x24], 0xc
	test	al, al
	je	.label_1369
	jmp	.label_1376
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f7c0

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	test	r15, r15
	je	.label_1381
	mov	rax, qword ptr [r15 + 8]
	test	rax, rax
	je	.label_1381
	mov	rbx, qword ptr [r14]
	mov	rcx, qword ptr [r14 + 8]
	lea	rdx, [rcx + rax*2]
	cmp	rbx, rdx
	jge	.label_1388
	add	rbx, rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, rbx
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1383
	add	rbx, rbx
	mov	qword ptr [r14 + 0x10], rcx
	mov	qword ptr [r14], rbx
	mov	rcx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 8]
.label_1388:
	test	rcx, rcx
	je	.label_1390
	lea	rbx, [rcx + rax*2]
	dec	rax
	dec	rcx
	mov	rdx, rax
	or	rdx, rcx
	js	.label_1392
	mov	rdx, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	jmp	.label_1382
.label_1387:
	dec	rax
.label_1391:
	dec	rcx
	jmp	.label_1386
	nop	word ptr cs:[rax + rax]
.label_1382:
	mov	rdi, qword ptr [rsi + rax*8]
	cmp	qword ptr [rdx + rcx*8], rdi
	je	.label_1387
	jge	.label_1391
	dec	rax
	mov	qword ptr [rdx + rbx*8 - 8], rdi
	dec	rbx
.label_1386:
	mov	rdi, rax
	or	rdi, rcx
	jns	.label_1382
.label_1392:
	test	rax, rax
	js	.label_1394
	lea	rcx, [rax + 1]
	sub	rbx, rcx
	lea	rdi, [rbx*8]
	add	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	lea	rdx, [rax*8 + 8]
	call	memcpy
.label_1394:
	mov	r10, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 8]
	lea	rcx, [r10 + rax*2 - 1]
	mov	rdx, rcx
	sub	rdx, rbx
	inc	rdx
	je	.label_1381
	lea	rax, [rdx + r10]
	mov	qword ptr [r14 + 8], rax
	lea	r9, [r10 - 1]
.label_1385:
	lea	r8, [r10 - 1]
	mov	rdi, qword ptr [r14 + 0x10]
	lea	r11, [rdi + r9*8]
	nop	dword ptr [rax + rax]
.label_1393:
	mov	rax, qword ptr [rdi + rcx*8]
	mov	rsi, qword ptr [rdi + r10*8 - 8]
	cmp	rax, rsi
	jle	.label_1384
	dec	rcx
	mov	qword ptr [r11 + rdx*8], rax
	dec	rdx
	jne	.label_1393
	jmp	.label_1381
	nop	dword ptr [rax]
.label_1384:
	lea	rax, [rdx + r8]
	mov	qword ptr [rdi + rax*8], rsi
	dec	r9
	cmp	r10, 1
	mov	r10, r8
	jg	.label_1385
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi + rbx*8]
	jmp	.label_1389
.label_1390:
	mov	qword ptr [r14 + 8], rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [r15 + 8]
	mov	rsi, qword ptr [r15 + 0x10]
.label_1389:
	shl	rdx, 3
	call	memcpy
.label_1381:
	xor	eax, eax
.label_1383:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40f940

	.globl re_node_set_insert
	.type re_node_set_insert, @function
re_node_set_insert:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14]
	test	rsi, rsi
	je	.label_1395
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	je	.label_1397
	cmp	rsi, rcx
	jne	.label_1399
	lea	rax, [rsi + rsi]
	mov	qword ptr [r14], rax
	mov	rdi, qword ptr [r14 + 0x10]
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_1406
	mov	qword ptr [r14 + 0x10], rax
	mov	rcx, qword ptr [r14 + 8]
	jmp	.label_1408
.label_1395:
	movaps	xmm0, xmmword ptr [rip + label_1321]
	movups	xmmword ptr [r14], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1400
	mov	qword ptr [rax], rbx
	jmp	.label_1403
.label_1397:
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax], rbx
	jmp	.label_1405
.label_1399:
	mov	rax, qword ptr [r14 + 0x10]
.label_1408:
	cmp	qword ptr [rax], rbx
	jle	.label_1407
	test	rcx, rcx
	jle	.label_1402
	nop	word ptr cs:[rax + rax]
.label_1396:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	mov	qword ptr [rax + rcx*8], rdx
	cmp	rcx, 1
	lea	rcx, [rcx - 1]
	jg	.label_1396
	jmp	.label_1402
.label_1407:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	jmp	.label_1401
	nop	dword ptr [rax]
.label_1404:
	mov	qword ptr [rax + rcx*8], rdx
	mov	rdx, qword ptr [rax + rcx*8 - 0x10]
	dec	rcx
.label_1401:
	cmp	rdx, rbx
	jg	.label_1404
.label_1402:
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax + rcx*8], rbx
.label_1405:
	inc	qword ptr [r14 + 8]
.label_1403:
	mov	al, 1
.label_1398:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1400:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	xor	eax, eax
	jmp	.label_1398
.label_1406:
	xor	eax, eax
	jmp	.label_1398
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fa30

	.globl re_acquire_state_context
	.type re_acquire_state_context, @function
re_acquire_state_context:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r13d, ecx
	mov	r8, qword ptr [rdx + 8]
	test	r8, r8
	je	.label_1428
	mov	qword ptr [rsp + 0x10], rdi
	mov	r14d, r13d
	add	r14, r8
	test	r8, r8
	jle	.label_1436
	mov	rcx, qword ptr [rdx + 0x10]
	xor	ebx, ebx
	cmp	r8, 4
	jb	.label_1419
	mov	rbx, r8
	and	rbx, 0xfffffffffffffffc
	je	.label_1444
	movq	xmm0, r14
	lea	r9, [r8 - 4]
	mov	eax, r9d
	shr	eax, 2
	inc	eax
	xor	edi, edi
	test	al, 3
	je	.label_1415
	lea	ebp, [r8 - 4]
	shr	ebp, 2
	inc	ebp
	and	ebp, 3
	neg	rbp
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	word ptr [rax + rax]
.label_1423:
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	add	rdi, 4
	inc	rbp
	jne	.label_1423
	jmp	.label_1434
.label_1428:
	mov	dword ptr [rdi], 0
	jmp	.label_1435
.label_1444:
	xor	ebx, ebx
	jmp	.label_1419
.label_1415:
	pxor	xmm1, xmm1
.label_1434:
	cmp	r9, 0xc
	jb	.label_1441
	mov	rax, r8
	and	rax, 0xfffffffffffffffc
	sub	rax, rdi
	lea	rdi, [rcx + rdi*8 + 0x70]
	nop	dword ptr [rax]
.label_1440:
	movdqu	xmm2, xmmword ptr [rdi - 0x70]
	movdqu	xmm3, xmmword ptr [rdi - 0x60]
	movdqu	xmm4, xmmword ptr [rdi - 0x50]
	movdqu	xmm5, xmmword ptr [rdi - 0x40]
	paddq	xmm2, xmm0
	paddq	xmm3, xmm1
	paddq	xmm2, xmm4
	paddq	xmm3, xmm5
	movdqu	xmm4, xmmword ptr [rdi - 0x30]
	movdqu	xmm5, xmmword ptr [rdi - 0x20]
	paddq	xmm4, xmm2
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rdi - 0x10]
	movdqu	xmm1, xmmword ptr [rdi]
	paddq	xmm0, xmm4
	paddq	xmm1, xmm5
	add	rdi, 0x80
	add	rax, -0x10
	jne	.label_1440
.label_1441:
	paddq	xmm1, xmm0
	pshufd	xmm0, xmm1, 0x4e
	paddq	xmm0, xmm1
	movq	r14, xmm0
	cmp	r8, rbx
	je	.label_1436
.label_1419:
	mov	rax, r8
	sub	rax, rbx
	lea	rcx, [rcx + rbx*8]
	nop	word ptr cs:[rax + rax]
.label_1409:
	add	r14, qword ptr [rcx]
	add	rcx, 8
	dec	rax
	jne	.label_1409
.label_1436:
	mov	rax, qword ptr [rsi + 0x40]
	mov	rcx, qword ptr [rsi + 0x88]
	and	rcx, r14
	lea	rcx, [rcx + rcx*2]
	mov	r10, qword ptr [rax + rcx*8]
	test	r10, r10
	jle	.label_1414
	mov	r9, qword ptr [rax + rcx*8 + 0x10]
	xor	ebx, ebx
	nop	
.label_1416:
	mov	r15, qword ptr [r9 + rbx*8]
	cmp	qword ptr [r15], r14
	jne	.label_1427
	movzx	eax, byte ptr [r15 + 0x68]
	and	eax, 0xf
	cmp	eax, r13d
	jne	.label_1427
	test	rdx, rdx
	je	.label_1427
	mov	rdi, qword ptr [r15 + 0x50]
	test	rdi, rdi
	je	.label_1427
	cmp	qword ptr [rdi + 8], r8
	jne	.label_1427
	mov	rax, r8
	nop	dword ptr [rax]
.label_1442:
	test	rax, rax
	jle	.label_1411
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rbp, qword ptr [rcx + rax*8 - 8]
	mov	rcx, qword ptr [rdx + 0x10]
	cmp	rbp, qword ptr [rcx + rax*8 - 8]
	lea	rax, [rax - 1]
	je	.label_1442
	nop	word ptr cs:[rax + rax]
.label_1427:
	inc	rbx
	cmp	rbx, r10
	jl	.label_1416
.label_1414:
	mov	rbx, rdx
	mov	r12, rsi
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	mov	qword ptr [rsp + 0x18], r15
	test	r15, r15
	je	.label_1426
	mov	r10, r15
	add	r10, 8
	mov	qword ptr [rsp + 0x28], r10
	mov	r9, rbx
	mov	qword ptr [rsp + 0x30], r9
	mov	rdi, qword ptr [r9 + 8]
	mov	qword ptr [r15 + 0x10], rdi
	mov	rbx, qword ptr [r9 + 8]
	test	rbx, rbx
	jle	.label_1431
	mov	qword ptr [rsp + 0x28], r10
	mov	rbp, r15
	mov	r15, r9
	mov	qword ptr [rbp + 8], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbp + 0x18], rax
	test	rax, rax
	je	.label_1445
	mov	rsi, qword ptr [r15 + 0x10]
	shl	rbx, 3
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	mov	r9, r15
	mov	rdi, r12
	mov	r15, rbp
	mov	r10, qword ptr [rsp + 0x28]
	jmp	.label_1422
.label_1431:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r10], xmm0
	mov	qword ptr [r10 + 0x10], 0
	mov	rdi, r12
.label_1422:
	mov	al, byte ptr [r15 + 0x68]
	mov	cl, r13b
	and	cl, 0xf
	and	al, 0xf0
	or	al, cl
	mov	byte ptr [r15 + 0x68], al
	mov	qword ptr [r15 + 0x50], r10
	cmp	qword ptr [r9 + 8], 0
	jle	.label_1432
	mov	ebp, r13d
	and	ebp, 1
	mov	eax, r13d
	and	eax, 2
	mov	dword ptr [rsp + 0xc], eax
	and	r13d, 4
	mov	dword ptr [rsp + 8], r13d
	xor	r12d, r12d
	xor	r8d, r8d
	nop	
.label_1417:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [r9 + 0x10]
	mov	rcx, qword ptr [rcx + r12*8]
	shl	rcx, 4
	mov	esi, dword ptr [rax + rcx + 8]
	movzx	edx, sil
	mov	r13d, esi
	shr	r13d, 8
	mov	ecx, r13d
	and	ecx, 0x3ff
	cmp	edx, 1
	jne	.label_1410
	test	ecx, ecx
	je	.label_1425
.label_1410:
	shr	esi, 0x14
	mov	bl, byte ptr [r15 + 0x68]
	mov	al, bl
	shr	al, 5
	movzx	eax, al
	or	eax, esi
	shl	al, 5
	and	al, 0x20
	and	bl, 0xdf
	or	bl, al
	mov	byte ptr [r15 + 0x68], bl
	cmp	edx, 4
	je	.label_1429
	cmp	edx, 2
	jne	.label_1437
	or	bl, 0x10
	jmp	.label_1439
.label_1429:
	or	bl, 0x40
.label_1439:
	mov	byte ptr [r15 + 0x68], bl
.label_1437:
	test	ecx, ecx
	je	.label_1425
	cmp	qword ptr [r15 + 0x50], r10
	jne	.label_1443
	mov	qword ptr [rsp + 0x20], rdi
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	mov	qword ptr [r15 + 0x50], rbx
	test	rbx, rbx
	je	.label_1413
	mov	rax, qword ptr [rsp + 0x30]
	mov	r15, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], r15
	test	r15, r15
	jle	.label_1446
	mov	qword ptr [rbx], r15
	shl	r15, 3
	mov	rdi, r15
	call	malloc
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_1430
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	jmp	.label_1438
.label_1446:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
.label_1438:
	mov	r15, qword ptr [rsp + 0x18]
	or	byte ptr [r15 + 0x68], 0x80
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x28]
.label_1443:
	test	ebp, ebp
	mov	r9, qword ptr [rsp + 0x30]
	jne	.label_1412
	mov	eax, r13d
	and	eax, 1
	jne	.label_1421
.label_1412:
	test	ebp, ebp
	je	.label_1418
	mov	eax, r13d
	and	eax, 2
	jne	.label_1421
.label_1418:
	cmp	dword ptr [rsp + 0xc], 0
	jne	.label_1424
	mov	eax, r13d
	and	eax, 0x10
	jne	.label_1421
.label_1424:
	cmp	dword ptr [rsp + 8], 0
	jne	.label_1425
	and	r13d, 0x40
	je	.label_1425
	nop	
.label_1421:
	mov	rax, r12
	sub	rax, r8
	js	.label_1433
	mov	rcx, qword ptr [r15 + 0x10]
	cmp	rcx, rax
	jle	.label_1433
	dec	rcx
	mov	qword ptr [r15 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_1433
	lea	rax, [r12*8]
	add	rax, qword ptr [r15 + 0x18]
	mov	rcx, r8
	neg	rcx
	nop	
.label_1420:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [r12 + rcx + 1]
	inc	rcx
	cmp	rdx, qword ptr [r15 + 0x10]
	jl	.label_1420
	nop	word ptr [rax + rax]
.label_1433:
	inc	r8
.label_1425:
	inc	r12
	cmp	r12, qword ptr [r9 + 8]
	jl	.label_1417
.label_1432:
	mov	rsi, r15
	mov	rdx, r14
	call	register_state
	test	eax, eax
	je	.label_1411
.label_1413:
	mov	rdi, r15
	call	free_state
	jmp	.label_1426
.label_1430:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbx], xmm0
	jmp	.label_1426
.label_1445:
	mov	rdi, rbp
	call	free
.label_1426:
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], 0xc
.label_1435:
	xor	r15d, r15d
.label_1411:
	mov	rax, r15
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fef0

	.globl register_state
	.type register_state, @function
register_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	qword ptr [rbx], r15
	mov	r13, qword ptr [rbx + 0x10]
	mov	qword ptr [rbx + 0x20], r13
	mov	qword ptr [rbx + 0x28], 0
	lea	rdi, [r13*8]
	call	malloc
	mov	qword ptr [rbx + 0x30], rax
	mov	ecx, 0xc
	test	rax, rax
	je	.label_1450
	test	r13, r13
	jle	.label_1452
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1448:
	mov	rcx, qword ptr [rbx + 0x18]
	mov	r14, qword ptr [rcx + rbp*8]
	mov	rcx, qword ptr [r12]
	mov	rdx, r14
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 8], 8
	jne	.label_1447
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rcx, qword ptr [rbx + 0x28]
	cmp	rdx, rcx
	jne	.label_1453
	lea	rcx, [rdx + rdx + 2]
	lea	rdx, [rdx + rdx]
	mov	qword ptr [rbx + 0x20], rcx
	lea	rsi, [rdx*8 + 0x10]
	mov	rdi, rax
	call	realloc
	test	rax, rax
	je	.label_1449
	mov	qword ptr [rbx + 0x30], rax
	mov	rcx, qword ptr [rbx + 0x28]
.label_1453:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x28], rdx
	mov	qword ptr [rax + rcx*8], r14
	mov	r13, qword ptr [rbx + 0x10]
.label_1447:
	inc	rbp
	cmp	rbp, r13
	jl	.label_1448
.label_1452:
	mov	r13, qword ptr [r12 + 0x40]
	and	r15, qword ptr [r12 + 0x88]
	lea	rbp, [r15 + r15*2]
	lea	r14, [r13 + rbp*8]
	mov	r15, qword ptr [r13 + rbp*8]
	cmp	qword ptr [r13 + rbp*8 + 8], r15
	jle	.label_1451
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_1454:
	lea	rcx, [r15 + 1]
	mov	qword ptr [r14], rcx
	mov	qword ptr [rax + r15*8], rbx
	xor	ecx, ecx
	jmp	.label_1450
.label_1449:
	mov	ecx, 0xc
.label_1450:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1451:
	lea	rax, [r15 + r15]
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
.label_2259:
	call	realloc
	test	rax, rax
	mov	ecx, 0xc
	je	.label_1450
	lea	rcx, [r13 + rbp*8 + 8]
	lea	rdx, [r15 + r15 + 2]
	lea	rsi, [r13 + rbp*8 + 0x10]
	mov	qword ptr [rsi], rax
	mov	qword ptr [rcx], rdx
	mov	r15, qword ptr [r14]
	jmp	.label_1454
	nop	
	.section	.text
	.align	32
	#Procedure 0x410030

	.globl re_string_reconstruct
	.type re_string_reconstruct, @function
re_string_reconstruct:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r15d, edx
	mov	r13, rsi
	mov	rbx, rdi
	lea	rbp, [rbx + 0x28]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, r13
	jle	.label_1475
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1488
	mov	qword ptr [rbx + 0x20], 0
.label_1488:
	mov	rax, qword ptr [rbx + 0x50]
	mov	qword ptr [rbx + 0x58], rax
	mov	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	lea	eax, [r15 + r15]
	and	eax, 2
	xor	eax, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], 0
	mov	dword ptr [rbx + 0x70], eax
	xor	eax, eax
	cmp	byte ptr [rbx + 0x8b], 0
	mov	r14, r13
	jne	.label_1493
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbx + 8], rax
	xor	eax, eax
	mov	r14, r13
.label_1493:
	test	r14, r14
	je	.label_1470
	mov	r12, qword ptr [rbx + 0x38]
	cmp	r14, r12
	jge	.label_1494
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_1513
	lea	rsi, [r14 - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1520
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x30]
	lea	rsi, [rdi + r14*4]
	sub	rdx, r14
	shl	rdx, 2
	call	memmove
.label_1520:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1461
.label_1465:
	sub	qword ptr [rbx + 0x30], r14
	sub	qword ptr [rbx + 0x38], r14
.label_1480:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1470
	add	qword ptr [rbx + 8], r14
.label_1470:
	mov	qword ptr [rbx + 0x28], r13
	mov	rdx, qword ptr [rbx + 0x58]
	sub	rdx, r14
	mov	qword ptr [rbx + 0x58], rdx
	sub	qword ptr [rbx + 0x68], r14
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1474
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1482
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_1489
	jmp	.label_1485
.label_1474:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1491
	mov	qword ptr [rbx + 0x30], rdx
	jmp	.label_1485
.label_1482:
	mov	rdi, rbx
	call	build_wcs_buffer
.label_1485:
	mov	qword ptr [rbx + 0x48], 0
	xor	eax, eax
.label_1489:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1475:
	mov	r14, r13
	sub	r14, rax
	jmp	.label_1493
.label_1494:
	mov	r10, qword ptr [rbx + 0x30]
	mov	cx, word ptr [rbx + 0x8c]
	test	cl, cl
	jne	.label_1504
.label_1517:
	mov	qword ptr [rbx + 0x30], 0
	movsxd	rsi, dword ptr [rbx + 0x90]
	cmp	rsi, 2
	jl	.label_1510
	mov	qword ptr [rsp + 8], rbp
	cmp	byte ptr [rbx + 0x89], 0
	je	.label_1455
	mov	rdi, qword ptr [rbx]
	lea	r8, [rdi + rax]
	mov	rdx, r14
	sub	rdx, rsi
	add	rdx, r8
	cmp	rdx, rdi
	cmovb	rdx, rdi
	lea	r11, [r8 + r14]
	lea	rsi, [r14 + rax]
	lea	rsi, [rdi + rsi - 1]
.label_1463:
	mov	rbp, rsi
	cmp	rbp, rdx
	jb	.label_1455
	mov	cl, byte ptr [rbp]
	and	cl, 0xc0
	movzx	ecx, cl
	lea	rsi, [rbp - 1]
	cmp	ecx, 0x80
	je	.label_1463
	add	r8, qword ptr [rbx + 0x58]
	mov	rdx, r8
	sub	rdx, rbp
	mov	r9, qword ptr [rbx + 0x78]
	test	r9, r9
	jne	.label_1516
	mov	qword ptr [rsp + 0x18], r11
	mov	r12, r10
	mov	rsi, rbp
.label_1514:
	mov	qword ptr [rsp + 0x30], 0
	lea	rdi, [rsp + 0x2c]
	lea	rcx, [rsp + 0x30]
	call	rpl_mbrtowc
	mov	rdx, qword ptr [rsp + 0x18]
	sub	rdx, rbp
	mov	esi, 0xffffffff
	mov	rcx, rax
	sub	rcx, rdx
	jb	.label_1490
	cmp	rax, -3
	mov	r10, r12
	ja	.label_1460
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], rcx
	mov	esi, dword ptr [rsp + 0x2c]
	jmp	.label_1460
.label_1513:
	mov	qword ptr [rsp + 8], rbp
	mov	rbp, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x18], rdx
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_1462:
	lea	rsi, [rcx + rdx]
	mov	rax, rsi
	shr	rax, 0x3f
	add	rax, rsi
	sar	rax, 1
	mov	rsi, qword ptr [rbp + rax*8]
	cmp	rsi, r14
	mov	rdi, rax
	jg	.label_1509
	jge	.label_1518
	lea	rcx, [rax + 1]
	mov	rdi, rdx
.label_1509:
	cmp	rcx, rdi
	mov	rdx, rdi
	jl	.label_1462
.label_1518:
	cmp	rsi, r14
	setl	cl
	movzx	ecx, cl
	lea	r12, [rcx + rax]
	lea	rsi, [rcx + rax - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, rsi
	sub	rdx, r14
	jle	.label_1466
	cmp	r12, r14
	jne	.label_1466
	cmp	qword ptr [rbp + r14*8], r14
	jne	.label_1466
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rdi + r14*4]
	shl	rdx, 2
	call	memmove
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r14
	lea	rsi, [rdi + r14]
	call	memmove
	movdqu	xmm0, xmmword ptr [rbx + 0x30]
	movq	xmm1, r14
	pshufd	xmm1, xmm1, 0x44
	psubq	xmm0, xmm1
	movdqu	xmmword ptr [rbx + 0x30], xmm0
	movq	rax, xmm0
	test	rax, rax
	mov	rbp, qword ptr [rsp + 8]
	jle	.label_1480
	mov	rax, qword ptr [rbx + 0x18]
	lea	rcx, [rax + r14*8]
	xor	edx, edx
	nop	
.label_1499:
	mov	rsi, qword ptr [rcx + rdx*8]
	sub	rsi, r14
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	cmp	rdx, qword ptr [rbx + 0x30]
	jl	.label_1499
	jmp	.label_1480
.label_1461:
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r14
	lea	rsi, [rdi + r14]
	call	memmove
	jmp	.label_1465
.label_1466:
	mov	rax, r14
	sub	rax, r13
	mov	rcx, qword ptr [rbx + 0x50]
	add	rcx, rax
	mov	qword ptr [rbx + 0x58], rcx
	add	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	nop	word ptr cs:[rax + rax]
.label_1486:
	mov	rax, r12
	test	rax, rax
	jle	.label_1519
	lea	r12, [rax - 1]
	cmp	qword ptr [rbp + rax*8 - 8], r14
	je	.label_1486
.label_1519:
	cmp	rax, rsi
	jge	.label_1456
	mov	rcx, qword ptr [rbx + 0x10]
	nop	dword ptr [rax]
.label_1459:
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1456
	inc	rax
	cmp	rax, rsi
	jl	.label_1459
.label_1456:
	cmp	rax, rsi
	jne	.label_1464
	mov	qword ptr [rbx + 0x30], 0
	xor	ebp, ebp
	jmp	.label_1469
.label_1491:
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1473
	mov	r15, qword ptr [rbx + 0x30]
	mov	r14, qword ptr [rbx + 0x40]
	cmp	r14, rdx
	cmovg	r14, rdx
	cmp	r15, r14
	jge	.label_1477
	jmp	.label_1483
	nop	dword ptr [rax]
.label_1500:
	mov	rbp, r12
	mov	r13, qword ptr [rbp]
.label_1483:
	inc	r15
	mov	r12, rbp
	add	r13, qword ptr [rbx]
	mov	al, byte ptr [r15 + r13 - 1]
	movzx	ecx, al
	mov	rdx, qword ptr [rbx + 0x78]
	test	rdx, rdx
	jne	.label_1487
.label_1512:
	movzx	ebp, al
	lea	eax, [rbp + 0x80]
	cmp	eax, 0x17f
	ja	.label_1495
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebp, dword ptr [rax + rbp*4]
.label_1495:
	mov	rax, qword ptr [rbx + 8]
	mov	byte ptr [rax + r15 - 1], bpl
	cmp	r15, r14
	jl	.label_1500
	jmp	.label_1503
.label_1487:
	mov	al, byte ptr [rdx + rcx]
	jmp	.label_1512
.label_1510:
	add	rax, r14
	mov	rdx, qword ptr [rbx]
	mov	al, byte ptr [rdx + rax - 1]
	movzx	edx, al
	mov	qword ptr [rbx + 0x38], 0
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_1507
	mov	al, byte ptr [rsi + rdx]
.label_1507:
	mov	rsi, qword ptr [rbx + 0x80]
	movzx	edx, al
	shr	al, 6
	movzx	eax, al
	mov	rsi, qword ptr [rsi + rax*8]
	mov	eax, 1
	bt	rsi, rdx
	jb	.label_1515
	xor	eax, eax
	cmp	edx, 0xa
	jne	.label_1515
	movzx	eax, cx
	cmp	eax, 0xff
	seta	al
	movzx	eax, al
	add	eax, eax
.label_1515:
	mov	dword ptr [rbx + 0x70], eax
	jmp	.label_1480
.label_1464:
	mov	rbp, qword ptr [rbp + rax*8]
	sub	rbp, r14
	mov	qword ptr [rbx + 0x30], rbp
	je	.label_1469
	test	rbp, rbp
	jle	.label_1467
	mov	rdi, qword ptr [rbx + 0x10]
	mov	edx, 1
	cmovg	rdx, rbp
	shl	rdx, 2
	mov	esi, 0xff
	call	memset
.label_1467:
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, rbp
	call	memset
	mov	rbp, qword ptr [rbx + 0x30]
.label_1469:
	mov	qword ptr [rbx + 0x38], rbp
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_1480
.label_1473:
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_1485
	mov	rax, qword ptr [rbx + 0x30]
	mov	rcx, qword ptr [rbx + 0x40]
	cmp	rcx, rdx
	cmovg	rcx, rdx
	cmp	rax, rcx
	jge	.label_1481
	add	r13, rax
	mov	rdx, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	movzx	edx, byte ptr [rdx + r13]
	mov	dl, byte ptr [rsi + rdx]
	jmp	.label_1496
.label_1505:
	mov	rdx, qword ptr [rbx + 0x78]
	mov	rsi, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	add	rsi, qword ptr [rbx + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	mov	dl, byte ptr [rdx + rsi]
.label_1496:
	mov	byte ptr [rdi + rax], dl
	inc	rax
	cmp	rax, rcx
	jl	.label_1505
	mov	rax, rcx
.label_1481:
	mov	qword ptr [rbx + 0x30], rax
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1485
.label_1503:
	mov	r15, r14
.label_1477:
	mov	qword ptr [rbx + 0x30], r15
	mov	qword ptr [rbx + 0x38], r15
	jmp	.label_1485
.label_1504:
	mov	rdx, r14
	sub	rdx, r13
	mov	rsi, qword ptr [rbx + 0x50]
	add	rsi, rdx
	mov	qword ptr [rbx + 0x58], rsi
	add	rdx, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rdx
	mov	byte ptr [rbx + 0x8c], 0
	jmp	.label_1517
.label_1490:
	mov	r10, r12
.label_1460:
	cmp	esi, -1
	jne	.label_1501
	mov	rax, qword ptr [rbx + 0x28]
	mov	r12, qword ptr [rbx + 0x38]
.label_1455:
	add	r12, rax
	mov	rbp, r12
	sub	rbp, r13
	jge	.label_1458
	mov	qword ptr [rsp], r10
	lea	rax, [rbx + 0x20]
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_1468
.label_1497:
	xor	esi, esi
	cmp	rbp, r12
	je	.label_1471
	test	rax, rax
	mov	rcx, qword ptr [rsp + 0x10]
	je	.label_1476
	mov	rax, qword ptr [rbx]
	movzx	esi, byte ptr [rax + r12]
	jmp	.label_1476
.label_1471:
	mov	rcx, qword ptr [rsp + 0x10]
.label_1476:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rcx
	mov	eax, 1
	jmp	.label_1479
.label_1468:
	mov	rax, qword ptr [rbx + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, qword ptr [rbx + 0x50]
	mov	rdx, rbp
	sub	rdx, r12
	mov	rsi, qword ptr [rbx]
	add	rsi, r12
	lea	rdi, [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x18]
	call	rpl_mbrtowc
	test	rax, rax
	je	.label_1497
	mov	rcx, rax
	or	rcx, 1
	cmp	rcx, -1
	je	.label_1497
	mov	esi, dword ptr [rsp + 0x30]
.label_1479:
	add	r12, rax
	mov	rbp, r12
	sub	rbp, r13
	jl	.label_1468
	mov	qword ptr [rbx + 0x30], rbp
	cmp	esi, -1
	mov	r10, qword ptr [rsp]
	je	.label_1502
.label_1501:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1508
.label_1498:
	xor	ecx, ecx
	cmp	esi, 0xa
	jne	.label_1478
	mov	ecx, 2
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_1478
	xor	ecx, ecx
.label_1478:
	mov	dword ptr [rbx + 0x70], ecx
	mov	rbp, qword ptr [rbx + 0x30]
	jmp	.label_1484
.label_1458:
	mov	qword ptr [rbx + 0x30], rbp
.label_1502:
	dec	r10
	mov	rdi, rbx
	mov	rsi, r10
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
.label_1484:
	test	rbp, rbp
	jne	.label_1521
.label_1472:
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x38], rax
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_1480
.label_1521:
	jle	.label_1457
	mov	rdi, qword ptr [rbx + 0x10]
	test	rbp, rbp
	mov	edx, 1
	cmovg	rdx, rbp
	shl	rdx, 2
	mov	esi, 0xff
	call	memset
.label_1457:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_1472
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, rbp
	call	memset
	jmp	.label_1472
.label_1508:
	mov	ebp, esi
	mov	edi, ebp
	call	iswalnum
	mov	esi, ebp
	cmp	esi, 0x5f
	mov	ecx, 1
	je	.label_1478
	test	eax, eax
	je	.label_1498
	jmp	.label_1478
.label_1516:
	lea	rsi, [rsp + 0x26]
	cmp	rdx, 6
	mov	ecx, 6
	cmovl	ecx, edx
	test	ecx, ecx
	jle	.label_1492
	mov	qword ptr [rsp + 0x18], r11
	lea	rdi, [rbp - 1]
	sub	rdi, r8
	cmp	rdi, -8
	mov	rcx, -7
	cmovg	rcx, rdi
	xor	rcx, 0xffffffffffffffff
	shl	rcx, 0x20
	sar	rcx, 0x20
	inc	rcx
.label_1506:
	movzx	edi, byte ptr [rbp + rcx - 2]
	mov	al, byte ptr [r9 + rdi]
	mov	byte ptr [rsp + rcx + 0x24], al
	dec	rcx
	cmp	rcx, 1
	jg	.label_1506
	jmp	.label_1511
.label_1492:
	mov	qword ptr [rsp + 0x18], r11
.label_1511:
	mov	r12, r10
	jmp	.label_1514
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4107d0

	.globl check_halt_state_context
	.type check_halt_state_context, @function
check_halt_state_context:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0xa0]
	mov	rsi, rdx
	mov	edx, eax
	call	re_string_context_at
	mov	r10, qword ptr [r14 + 0x10]
	xor	ecx, ecx
	test	r10, r10
	jle	.label_1524
	mov	rcx, qword ptr [rbx + 0x98]
	mov	r11, qword ptr [r14 + 0x18]
	mov	rdi, qword ptr [rcx]
	mov	r9d, eax
	and	r9d, 1
	mov	r8d, eax
	and	r8d, 2
	and	eax, 8
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_1523:
	mov	rcx, qword ptr [r11 + rbx*8]
	mov	rdx, rcx
	shl	rdx, 4
	mov	edx, dword ptr [rdi + rdx + 8]
	movzx	esi, dl
	cmp	esi, 2
	jne	.label_1522
	shr	edx, 8
	test	dx, 0x3ff
	je	.label_1524
	test	r9d, r9d
	jne	.label_1525
	mov	esi, edx
	and	esi, 4
	jne	.label_1522
.label_1525:
	test	r9d, r9d
	je	.label_1526
	mov	esi, edx
	and	esi, 8
	jne	.label_1522
.label_1526:
	test	r8d, r8d
	jne	.label_1527
	mov	esi, edx
	and	esi, 0x20
	jne	.label_1522
.label_1527:
	test	eax, eax
	jne	.label_1524
	test	dl, dl
	jns	.label_1524
	nop	dword ptr [rax]
.label_1522:
	inc	rbx
	cmp	rbx, r10
	mov	ecx, 0
	jl	.label_1523
.label_1524:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410890

	.globl match_ctx_clean
	.type match_ctx_clean, @function
match_ctx_clean:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0xe8], 0
	jle	.label_1530
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_1532:
	mov	rax, qword ptr [r14 + 0xf8]
	mov	r15, qword ptr [rax + r12*8]
	cmp	qword ptr [r15 + 0x20], 0
	mov	ebx, 0
	jle	.label_1528
	nop	word ptr [rax + rax]
.label_1529:
	mov	rax, qword ptr [r15 + 0x28]
	mov	r13, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
	mov	rdi, r13
	call	free
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x20]
	jl	.label_1529
.label_1528:
	mov	rdi, qword ptr [r15 + 0x28]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	je	.label_1531
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
.label_1531:
	mov	rdi, r15
	call	free
	inc	r12
	cmp	r12, qword ptr [r14 + 0xe8]
	jl	.label_1532
.label_1530:
	mov	qword ptr [r14 + 0xe8], 0
	mov	qword ptr [r14 + 0xc8], 0
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410950

	.globl set_regs
	.type set_regs, @function
set_regs:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rcx
	mov	qword ptr [rbp - 0x78], rbx
	mov	r14, rdx
	mov	qword ptr [rbp - 0x98], r14
	mov	r12, rsi
	mov	qword ptr [rbp - 0x80], r12
	mov	rcx, qword ptr [rdi]
	mov	rax, qword ptr [rip + label_1557]
	mov	qword ptr [rbp - 0x50], rax
	movups	xmm0, xmmword ptr [rip + label_1558]
	movaps	xmmword ptr [rbp - 0x60], xmm0
	xor	r13d, r13d
	test	r8b, r8b
	je	.label_1559
	mov	qword ptr [rbp - 0x88], rcx
	mov	r15, r14
	mov	edi, 0x60
	call	malloc
	mov	qword ptr [rbp - 0x50], rax
	mov	r14d, 0xc
	test	rax, rax
	je	.label_1548
	lea	r13, [rbp - 0x60]
	mov	r14, r15
	mov	rcx, qword ptr [rbp - 0x88]
.label_1559:
	mov	qword ptr [rbp - 0x88], rcx
	mov	qword ptr [rbp - 0x70], r13
	mov	r15, qword ptr [rcx + 0x90]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 0x40], xmm0
	mov	qword ptr [rbp - 0x30], 0
	mov	rdx, r14
	shl	rdx, 4
	cmp	rdx, 0xfbf
	ja	.label_1595
	mov	rax, rsp
	lea	rcx, [rdx + 0xf]
	and	rcx, 0xfffffffffffffff0
	sub	rax, rcx
	mov	rsp, rax
	mov	dword ptr [rbp - 0xa4], 0
	jmp	.label_1535
.label_1595:
	mov	rdi, rdx
	mov	qword ptr [rbp - 0x90], rdx
	call	malloc
	test	rax, rax
	je	.label_1544
	mov	cl, 1
	mov	dword ptr [rbp - 0xa4], ecx
	mov	rdx, qword ptr [rbp - 0x90]
.label_1535:
	mov	qword ptr [rbp - 0x90], rdx
	mov	qword ptr [rbp - 0xa0], rax
	mov	rdi, rax
	mov	rsi, rbx
	call	memcpy
	mov	rsi, qword ptr [rbx]
	xor	edi, edi
	cmp	rsi, qword ptr [rbx + 8]
	jg	.label_1564
	lea	rax, [rbx + 8]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1540
.label_1544:
	mov	r14d, 0xc
	test	r13, r13
	je	.label_1548
	xor	ebx, ebx
	cmp	qword ptr [r13], 0
	jle	.label_1575
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_1567:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r13]
	jl	.label_1567
	jmp	.label_1575
.label_1568:
	mov	rdx, qword ptr [rbp - 0x68]
	mov	r14, rax
	jmp	.label_1571
	nop	word ptr [rax + rax]
.label_1540:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rax]
	mov	rdx, r15
	shl	rdx, 4
	lea	rax, [rcx + rdx]
	mov	ecx, dword ptr [rcx + rdx + 8]
	movzx	edx, cl
	cmp	edx, 9
	je	.label_1562
	cmp	edx, 8
	jne	.label_1536
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, r14
	jge	.label_1536
	shl	rax, 4
	mov	qword ptr [rbx + rax], rsi
	mov	qword ptr [rbx + rax + 8], -1
	jmp	.label_1536
	nop	dword ptr [rax]
.label_1562:
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, r14
	jge	.label_1536
	shl	rax, 4
	cmp	qword ptr [rbx + rax], rsi
	jge	.label_1552
	mov	qword ptr [rbx + rax + 8], rsi
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	r13, rsi
	mov	rsi, rbx
	jmp	.label_1555
.label_1552:
	test	ecx, 0x80000
	je	.label_1563
	mov	rcx, qword ptr [rbp - 0xa0]
	cmp	qword ptr [rcx + rax], -1
	je	.label_1563
	mov	rdi, rbx
	mov	r13, rsi
	mov	rsi, qword ptr [rbp - 0xa0]
.label_1555:
	mov	rdx, qword ptr [rbp - 0x90]
	call	memcpy
	mov	rsi, r13
	jmp	.label_1536
.label_1563:
	mov	qword ptr [rbx + rax + 8], rsi
	nop	word ptr cs:[rax + rax]
.label_1536:
	mov	qword ptr [rbp - 0x68], rsi
	cmp	rsi, qword ptr [rbx + 8]
	jne	.label_1543
	cmp	r15, qword ptr [r12 + 0xb0]
	jne	.label_1543
	mov	r13, r12
	mov	r12, qword ptr [rbp - 0x70]
	test	r12, r12
	je	.label_1589
	test	r14, r14
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	eax, 0
	mov	rdx, qword ptr [rbp - 0x90]
	je	.label_1593
	nop	word ptr cs:[rax + rax]
.label_1598:
	cmp	qword ptr [rcx - 8], 0
	js	.label_1596
	cmp	qword ptr [rcx], -1
	je	.label_1593
.label_1596:
	inc	rax
	add	rcx, 0x10
	cmp	rax, r14
	jb	.label_1598
.label_1593:
	cmp	rax, r14
	je	.label_1570
	mov	rcx, qword ptr [r12]
	lea	rax, [rcx - 1]
	mov	qword ptr [r12], rax
	test	rcx, rcx
	jle	.label_1539
	mov	rcx, qword ptr [r12 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	rax, qword ptr [rcx + rbx]
	mov	qword ptr [rbp - 0x68], rax
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	mov	rdi, qword ptr [rbp - 0x78]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [rbp - 0x30], rcx
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movaps	xmmword ptr [rbp - 0x40], xmm0
	mov	r15, qword ptr [rax + rbx + 8]
	mov	r12, r13
.label_1543:
	mov	rbx, qword ptr [r12 + 0x98]
	mov	rsi, qword ptr [rbx]
	mov	r13, r15
	shl	r13, 4
	mov	eax, dword ptr [rsi + r13 + 8]
	test	al, 8
	jne	.label_1573
	test	eax, 0x100000
	jne	.label_1546
	movzx	eax, al
	cmp	eax, 4
	jne	.label_1587
	mov	rax, qword ptr [rsi + r13]
	shl	rax, 4
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdi, qword ptr [rax + rcx + 0x10]
	mov	r14, qword ptr [rax + rcx + 0x18]
	mov	rdx, r14
	sub	rdx, rdi
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_1560
	cmp	r14, -1
	je	.label_1542
	cmp	rdi, -1
	je	.label_1542
	cmp	r14, rdi
	je	.label_1560
	mov	rax, qword ptr [r12 + 0x30]
	sub	rax, qword ptr [rbp - 0x68]
	cmp	rax, rdx
	jl	.label_1542
	mov	rsi, qword ptr [r12 + 8]
	mov	r12, rdi
	lea	rdi, [rsi + r12]
	add	rsi, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xb8], rdx
	call	memcmp
	mov	rdi, r12
	mov	rdx, qword ptr [rbp - 0xb8]
	test	eax, eax
	jne	.label_1542
.label_1560:
	cmp	r14, rdi
	jne	.label_1551
	lea	rdi, [rbp - 0x40]
	mov	rsi, r15
	mov	r14, rdx
	call	re_node_set_insert
	mov	rdx, r14
	test	al, al
	je	.label_1533
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_1551
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rsi, [r15 + r15*2]
	mov	rsi, qword ptr [rdi + rsi*8 + 0x10]
	mov	r14, qword ptr [rsi]
	dec	rax
	mov	r8, qword ptr [rcx + 0x18]
	mov	ecx, 0
	je	.label_1577
	nop	word ptr cs:[rax + rax]
.label_1545:
	lea	rsi, [rcx + rax]
	shr	rsi, 1
	cmp	qword ptr [r8 + rsi*8], r14
	lea	rdi, [rsi + 1]
	cmovl	rcx, rdi
	cmovge	rax, rsi
	cmp	rcx, rax
	jb	.label_1545
.label_1577:
	cmp	rcx, -1
	je	.label_1551
	cmp	qword ptr [r8 + rcx*8], r14
	je	.label_1584
	jmp	.label_1551
	nop	word ptr cs:[rax + rax]
.label_1573:
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	r12, qword ptr [rax + rcx*8]
	mov	rbx, qword ptr [rbx + 0x28]
	lea	rdi, [rbp - 0x40]
	mov	rsi, r15
	call	re_node_set_insert
	test	al, al
	je	.label_1533
	lea	rax, [r15 + r15*2]
	mov	r9, qword ptr [rbx + rax*8 + 8]
	test	r9, r9
	jle	.label_1537
	mov	r8, qword ptr [rbx + rax*8 + 0x10]
	mov	r10, qword ptr [r12 + 0x10]
	lea	r11, [r10 - 1]
	mov	r14, -1
	xor	r15d, r15d
	mov	r13, qword ptr [rbp - 0x70]
	nop	word ptr cs:[rax + rax]
.label_1580:
	test	r10, r10
	jle	.label_1553
	mov	rbx, qword ptr [r8 + r15*8]
	test	r11, r11
	mov	rcx, qword ptr [r12 + 0x18]
	mov	rsi, r11
	mov	eax, 0
	je	.label_1582
	nop	dword ptr [rax + rax]
.label_1565:
	lea	rdx, [rax + rsi]
	shr	rdx, 1
	cmp	qword ptr [rcx + rdx*8], rbx
	lea	rdi, [rdx + 1]
	cmovl	rax, rdi
	cmovge	rsi, rdx
	cmp	rax, rsi
	jb	.label_1565
.label_1582:
	cmp	rax, -1
	je	.label_1553
	cmp	qword ptr [rcx + rax*8], rbx
	jne	.label_1553
	cmp	r14, -1
	jne	.label_1549
	mov	r14, rbx
.label_1553:
	inc	r15
	cmp	r15, r9
	jl	.label_1580
	mov	rdx, qword ptr [rbp - 0x68]
	jmp	.label_1571
	nop	word ptr cs:[rax + rax]
.label_1546:
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r12
	mov	rcx, qword ptr [rbp - 0x68]
	call	check_node_accept_bytes
	movsxd	rdx, eax
.label_1551:
	test	rdx, rdx
	jne	.label_1592
	mov	rsi, qword ptr [rbx]
	mov	r12, qword ptr [rbp - 0x80]
.label_1587:
	add	rsi, r13
	mov	rdi, r12
	mov	rdx, qword ptr [rbp - 0x68]
	call	check_node_accept
	test	al, al
	mov	edx, 1
	je	.label_1537
.label_1592:
	add	rdx, qword ptr [rbp - 0x68]
	cmp	qword ptr [rbp - 0x70], 0
	mov	rax, qword ptr [rbx + 0x18]
	mov	r14, qword ptr [rax + r15*8]
	je	.label_1578
	mov	rax, qword ptr [rbp - 0x80]
	cmp	rdx, qword ptr [rax + 0xa8]
	jg	.label_1542
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rax + rdx*8]
	test	rcx, rcx
	je	.label_1542
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_1542
	dec	rax
	mov	rcx, qword ptr [rcx + 0x18]
	mov	ebx, 0
	je	.label_1550
.label_1554:
	lea	rsi, [rbx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], r14
	lea	rdi, [rsi + 1]
	cmovl	rbx, rdi
	cmovge	rax, rsi
	cmp	rbx, rax
	jb	.label_1554
.label_1550:
	cmp	rbx, -1
	je	.label_1537
	cmp	qword ptr [rcx + rbx*8], r14
	jne	.label_1537
.label_1578:
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_1569
.label_1549:
	mov	r15, qword ptr [rbp - 0x38]
	test	r15, r15
	jle	.label_1572
	mov	rcx, r15
	dec	rcx
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, 0
	je	.label_1574
	nop	word ptr [rax + rax]
.label_1579:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r14
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_1579
.label_1574:
	cmp	rdx, -1
	setne	cl
	cmp	qword ptr [rax + rdx*8], r14
	sete	dl
	and	dl, cl
	mov	rax, r14
	cmovne	rax, rbx
	test	dl, dl
	jne	.label_1568
	test	r13, r13
	mov	rdx, qword ptr [rbp - 0x68]
	jne	.label_1547
	mov	r14, rax
	jmp	.label_1571
.label_1572:
	test	r13, r13
	mov	rdx, qword ptr [rbp - 0x68]
	je	.label_1571
.label_1547:
	mov	rcx, r13
	mov	r13, qword ptr [rcx]
	lea	rax, [r13 + 1]
	mov	qword ptr [rcx], rax
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_1591
	mov	rdi, qword ptr [rcx + 0x10]
	shl	rax, 5
	lea	rsi, [rax + rax*2]
	call	realloc
	mov	r12, rax
	test	r12, r12
	je	.label_1533
	mov	rax, qword ptr [rbp - 0x70]
	shl	qword ptr [rax + 8], 1
	mov	qword ptr [rax + 0x10], r12
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0x68]
	jmp	.label_1556
.label_1591:
	mov	r12, qword ptr [rcx + 0x10]
	mov	rdi, qword ptr [rbp - 0x90]
.label_1556:
	mov	qword ptr [rbp - 0x90], rdi
	lea	r13, [r13 + r13*2]
	shl	r13, 4
	mov	qword ptr [r12 + r13], rdx
	mov	qword ptr [r12 + r13 + 8], rbx
	call	malloc
	mov	qword ptr [r12 + r13 + 0x10], rax
	test	rax, rax
	je	.label_1533
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x90]
	call	memcpy
	lea	rbx, [r12 + r13 + 0x18]
	mov	qword ptr [r12 + r13 + 0x20], r15
	test	r15, r15
	jle	.label_1576
	mov	qword ptr [rbx], r15
	shl	r15, 3
	mov	rdi, r15
	call	malloc
	mov	qword ptr [r12 + r13 + 0x28], rax
	test	rax, rax
	je	.label_1586
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	jmp	.label_1584
.label_1576:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
.label_1584:
	mov	rdx, qword ptr [rbp - 0x68]
.label_1569:
	mov	r13, qword ptr [rbp - 0x70]
.label_1571:
	test	r14, r14
	js	.label_1594
	mov	r12, qword ptr [rbp - 0x78]
	jmp	.label_1581
.label_1594:
	mov	qword ptr [rbp - 0x70], r13
	cmp	r14, -2
	je	.label_1533
	nop	dword ptr [rax + rax]
.label_1537:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_1534
.label_1542:
	mov	r13, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [r13]
	lea	rax, [rcx - 1]
	mov	qword ptr [r13], rax
	test	rcx, rcx
	jle	.label_1539
	mov	rcx, qword ptr [r13 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	r14, qword ptr [rcx + rbx]
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	mov	r12, qword ptr [rbp - 0x78]
	mov	rdi, r12
	mov	rdx, qword ptr [rbp - 0x90]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	rdx, r14
	mov	rax, qword ptr [r13 + 0x10]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [rbp - 0x30], rcx
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movaps	xmmword ptr [rbp - 0x40], xmm0
	mov	r14, qword ptr [rax + rbx + 8]
.label_1581:
	cmp	rdx, qword ptr [r12 + 8]
	mov	r15, r14
	mov	rsi, rdx
	mov	rbx, r12
	mov	r14, qword ptr [rbp - 0x98]
	mov	r12, qword ptr [rbp - 0x80]
	jle	.label_1540
	mov	rdi, qword ptr [rbp - 0x30]
.label_1564:
	call	free
	mov	eax, dword ptr [rbp - 0xa4]
	test	al, al
	je	.label_1585
	mov	rdi, qword ptr [rbp - 0xa0]
	call	free
.label_1585:
	xor	r14d, r14d
	test	r13, r13
	je	.label_1548
	xor	r14d, r14d
	cmp	qword ptr [r13], 0
	jle	.label_1575
	xor	ebx, ebx
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_1597:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r13]
	jl	.label_1597
.label_1575:
	mov	rdi, qword ptr [r13 + 0x10]
	jmp	.label_1538
.label_1534:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	r14d, 1
	jmp	.label_1590
.label_1589:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	xor	r14d, r14d
.label_1590:
	mov	eax, dword ptr [rbp - 0xa4]
	test	al, al
	je	.label_1548
	mov	rdi, qword ptr [rbp - 0xa0]
	jmp	.label_1538
.label_1570:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	eax, dword ptr [rbp - 0xa4]
	test	al, al
	je	.label_1561
	mov	rdi, qword ptr [rbp - 0xa0]
	call	free
.label_1561:
	xor	r14d, r14d
	cmp	qword ptr [r12], 0
	jle	.label_1566
	xor	ebx, ebx
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_1588:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	jl	.label_1588
	jmp	.label_1566
.label_1586:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
.label_1533:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	eax, dword ptr [rbp - 0xa4]
	test	al, al
	je	.label_1583
	mov	rdi, qword ptr [rbp - 0xa0]
	call	free
.label_1583:
	mov	r14d, 0xc
	mov	r12, qword ptr [rbp - 0x70]
	test	r12, r12
	je	.label_1548
	xor	ebx, ebx
	cmp	qword ptr [r12], 0
	jle	.label_1566
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1541:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	jl	.label_1541
.label_1566:
	mov	rdi, qword ptr [r12 + 0x10]
.label_1538:
	call	free
.label_1548:
	mov	eax, r14d
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1539:
	mov	edi, OFFSET FLAT:.str.26
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 0x555
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.pop_fail_stack
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x411350

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rsi, rsi
	js	.label_1604
	cmp	qword ptr [rbx + 0x58], rsi
	je	.label_1607
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1603
	mov	rax, qword ptr [rbx + 0x10]
	inc	rsi
	nop	dword ptr [rax]
.label_1606:
	mov	ebp, dword ptr [rax + rsi*4 - 4]
	cmp	ebp, -1
	jne	.label_1599
	dec	rsi
	test	rsi, rsi
	jg	.label_1606
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_1600
.label_1603:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x80]
	movzx	eax, byte ptr [rax + rsi]
	mov	dl, al
	shr	dl, 6
	movzx	edx, dl
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	edx, 1
	bt	rcx, rax
	jb	.label_1600
	xor	edx, edx
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_1600
	jmp	.label_1601
.label_1599:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1602
.label_1605:
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_1600
.label_1601:
	mov	edx, 2
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_1600
	xor	edx, edx
	jmp	.label_1600
.label_1604:
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_1600
.label_1607:
	and	edx, 2
	xor	edx, 0xa
.label_1600:
	mov	eax, edx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1602:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	edx, 1
	je	.label_1600
	test	eax, eax
	jne	.label_1600
	jmp	.label_1605
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411420

	.globl check_subexp_matching_top
	.type check_subexp_matching_top, @function
check_subexp_matching_top:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	qword ptr [rsp], rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	rcx, qword ptr [r12 + 8]
	xor	eax, eax
	test	rcx, rcx
	jle	.label_1608
	mov	r13, qword ptr [r15 + 0x98]
	xor	ebx, ebx
	jmp	.label_1609
.label_1610:
	mov	rdi, qword ptr [r15 + 0xf8]
	mov	rsi, r14
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1608
	add	r14, r14
	mov	qword ptr [r15 + 0xf8], rcx
	mov	qword ptr [r15 + 0xf0], r14
	jmp	.label_1612
	nop	word ptr [rax + rax]
.label_1609:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rbp, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r13]
	mov	rdx, rbp
	shl	rdx, 4
	movzx	esi, byte ptr [rax + rdx + 8]
	cmp	esi, 8
	jne	.label_1611
	mov	rax, qword ptr [rax + rdx]
	cmp	rax, 0x3f
	jg	.label_1611
	mov	rdx, qword ptr [r13 + 0xa0]
	bt	rdx, rax
	jae	.label_1611
	mov	r14, qword ptr [r15 + 0xe8]
	cmp	r14, qword ptr [r15 + 0xf0]
	je	.label_1610
.label_1612:
	mov	edi, 1
	mov	esi, 0x30
	call	rpl_calloc
	mov	rcx, qword ptr [r15 + 0xe8]
	mov	rdx, qword ptr [r15 + 0xf8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [r15 + 0xf8]
	mov	rdx, qword ptr [rax + rcx*8]
	mov	eax, 0xc
	test	rdx, rdx
	je	.label_1608
	mov	qword ptr [rdx + 8], rbp
	inc	rcx
	mov	qword ptr [r15 + 0xe8], rcx
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rdx], rax
	mov	rcx, qword ptr [r12 + 8]
	nop	dword ptr [rax]
.label_1611:
	inc	rbx
	xor	eax, eax
	cmp	rbx, rcx
	jl	.label_1609
.label_1608:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411550

	.globl transit_state_bkref
	.type transit_state_bkref, @function
transit_state_bkref:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	qword ptr [rsp + 0x50], rsi
	mov	r13, rdi
	cmp	qword ptr [rsi + 8], 0
	jle	.label_1646
	mov	r15, qword ptr [r13 + 0x98]
	mov	qword ptr [rsp + 0x20], r15
	mov	r8, qword ptr [r13 + 0x48]
	mov	qword ptr [rsp + 0x58], r8
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1648:
	mov	qword ptr [rsp + 0x48], rcx
	mov	rax, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rax + 0x10]
	mov	r14, qword ptr [rax + rcx*8]
	mov	qword ptr [rsp + 0x80], r14
	mov	rax, qword ptr [r15]
	shl	r14, 4
	mov	ebx, dword ptr [rax + r14 + 8]
	movzx	eax, bl
	cmp	eax, 4
	jne	.label_1616
	mov	ebp, ebx
	shr	ebp, 8
	test	bp, 0x3ff
	je	.label_1620
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	mov	rsi, r8
	mov	r12, r8
	call	re_string_context_at
	mov	r8, r12
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_1663
	test	ecx, ecx
	je	.label_1616
.label_1663:
	test	bh, 8
	je	.label_1652
	test	ecx, ecx
	jne	.label_1616
.label_1652:
	test	bh, 0x20
	je	.label_1615
	mov	ecx, eax
	and	ecx, 2
	je	.label_1616
.label_1615:
	test	bpl, bpl
	jns	.label_1620
	and	eax, 8
	je	.label_1616
	nop	word ptr cs:[rax + rax]
.label_1620:
	mov	r12, qword ptr [r13 + 0xc8]
	mov	qword ptr [rsp + 0x40], r12
	mov	rax, qword ptr [r13 + 8]
	mov	qword ptr [rsp + 0x70], rax
	mov	r9, qword ptr [r13 + 0x98]
	mov	qword ptr [rsp + 0x30], r9
	test	r12, r12
	mov	eax, 0
	jle	.label_1626
	mov	rcx, qword ptr [r13 + 0xd8]
	xor	eax, eax
	mov	rdx, r12
	nop	word ptr [rax + rax]
.label_1641:
	lea	rsi, [rdx + rax]
	mov	rdi, rsi
	shr	rdi, 0x3f
	add	rdi, rsi
	sar	rdi, 1
	lea	rsi, [rdi + rdi*4]
	cmp	qword ptr [rcx + rsi*8 + 8], r8
	cmovge	rdx, rdi
	lea	rsi, [rdi + 1]
	cmovl	rax, rsi
	cmp	rax, rdx
	jl	.label_1641
.label_1626:
	cmp	rax, r12
	jge	.label_1647
	cmp	rax, -1
	je	.label_1647
	mov	rcx, qword ptr [r13 + 0xd8]
	lea	rax, [rax + rax*4]
	cmp	qword ptr [rcx + rax*8 + 8], r8
	jne	.label_1647
	lea	rax, [rcx + rax*8]
	nop	dword ptr [rax]
.label_1659:
	mov	rcx, qword ptr [rsp + 0x80]
	cmp	qword ptr [rax], rcx
	je	.label_1655
	cmp	byte ptr [rax + 0x20], 0
	lea	rax, [rax + 0x28]
	jne	.label_1659
.label_1647:
	cmp	qword ptr [r13 + 0xe8], 0
	mov	rax, r12
	jle	.label_1660
	mov	qword ptr [rsp + 0x20], r15
	mov	rax, qword ptr [r9]
	mov	r10, qword ptr [rax + r14]
	mov	qword ptr [rsp + 0x18], r10
	xor	r11d, r11d
	jmp	.label_1664
	nop	word ptr cs:[rax + rax]
.label_1661:
	mov	rax, qword ptr [r9]
.label_1664:
	mov	rcx, qword ptr [r13 + 0xf8]
	mov	r14, qword ptr [rcx + r11*8]
	mov	qword ptr [rsp + 0x28], r14
	mov	rcx, qword ptr [r14 + 8]
	shl	rcx, 4
	cmp	qword ptr [rax + rcx], r10
	jne	.label_1618
	mov	qword ptr [rsp + 0x38], r11
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 0x20]
	test	rax, rax
	jle	.label_1628
	mov	rbx, r8
	xor	r12d, r12d
	jmp	.label_1630
.label_1628:
	mov	rdx, r8
	mov	rdi, r15
	xor	r12d, r12d
	jmp	.label_1633
.label_1627:
	mov	r9, qword ptr [r13 + 0x58]
	cmp	rdi, r9
	jg	.label_1637
	mov	qword ptr [rsp + 0x60], rdx
	mov	rax, qword ptr [r13 + 0x40]
	mov	r8, qword ptr [r13 + 0xc0]
	cmp	rax, rdi
	mov	qword ptr [rsp + 0x68], rdi
	mov	rdi, r13
	mov	rdx, r14
	jg	.label_1640
	cmp	rax, r9
	jl	.label_1644
.label_1640:
	cmp	rcx, qword ptr [rsp + 0x68]
	jg	.label_1645
	cmp	rcx, r9
	jge	.label_1645
.label_1644:
	mov	rax, qword ptr [rsp + 0x68]
	lea	esi, [rax + 1]
	mov	r14, rdi
	mov	r13, r8
	call	extend_buffers
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rdi, r14
	mov	r8, r13
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_1614
.label_1645:
	mov	r14, rdx
	mov	rdx, qword ptr [rsp + 0x68]
	sub	rdx, r8
	mov	r13, rdi
	jle	.label_1657
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rax + r8*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	call	memset
	mov	rax, qword ptr [rsp + 0x68]
	mov	qword ptr [r13 + 0xc0], rax
.label_1657:
	mov	rax, qword ptr [r13 + 8]
	mov	qword ptr [rsp + 0x70], rax
	jmp	.label_1666
	nop	word ptr cs:[rax + rax]
.label_1630:
	mov	rcx, qword ptr [r14 + 0x28]
	mov	rdx, qword ptr [rcx + r12*8]
	mov	rcx, qword ptr [rdx + 8]
	mov	qword ptr [rsp + 0x78], rcx
	mov	rdi, rcx
	sub	rdi, r15
	add	rdi, rbx
	mov	rbp, rcx
	sub	rbp, r15
	jle	.label_1638
	mov	rcx, qword ptr [r13 + 0x30]
	cmp	rdi, rcx
	jg	.label_1627
	mov	qword ptr [rsp + 0x60], rdx
	mov	qword ptr [rsp + 0x68], rdi
.label_1666:
	mov	rax, qword ptr [rsp + 0x70]
	lea	rdi, [rax + rbx]
	lea	rsi, [rax + r15]
	mov	rdx, rbp
	call	memcmp
	test	eax, eax
	mov	r8, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0x60]
	jne	.label_1636
.label_1638:
	mov	rbx, rdi
	mov	rdi, r13
	mov	rsi, r14
	mov	rcx, qword ptr [rsp + 0x80]
	mov	rbp, r8
	call	get_subexp_sub
	mov	rcx, r13
	mov	r13d, eax
	cmp	r13d, 1
	ja	.label_1614
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rsp + 0x70], rax
	inc	r12
	mov	rax, qword ptr [r14 + 0x20]
	cmp	r12, rax
	mov	rdx, rbx
	mov	rdi, qword ptr [rsp + 0x78]
	mov	r15, rdi
	mov	r13, rcx
	mov	r8, rbp
	jl	.label_1630
	jmp	.label_1633
.label_1636:
	mov	rax, qword ptr [r14 + 0x20]
.label_1637:
	mov	rdx, rbx
	mov	rdi, r15
.label_1633:
	cmp	r12, rax
	jge	.label_1658
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x30]
	mov	r10, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_1618
.label_1658:
	test	r12, r12
	setg	al
	movzx	ebp, al
	add	rbp, rdi
	cmp	rbp, r8
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x30]
	mov	r10, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp + 0x38]
	jg	.label_1618
	jmp	.label_1621
.label_1642:
	cmp	r14, -1
	je	.label_1623
	mov	qword ptr [rsp + 0x38], r11
	mov	qword ptr [rsp + 0x30], r9
	mov	qword ptr [rsp + 0x40], r12
	mov	qword ptr [rsp + 0x58], r8
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	mov	rbx, r13
	jne	.label_1625
	lea	rsi, [rbp + 1]
	sub	rsi, qword ptr [r15]
	mov	edi, 0x18
	call	rpl_calloc
	mov	qword ptr [r15 + 0x10], rax
	test	rax, rax
	mov	r13d, 0xc
	je	.label_1614
.label_1625:
	mov	rcx, qword ptr [r15]
	mov	rdx, qword ptr [r15 + 8]
	mov	dword ptr [rsp], 9
	mov	rdi, rbx
	mov	rsi, rax
	mov	r8, r14
	mov	r9, rbp
	call	check_arrival
	mov	r13d, eax
	cmp	r13d, 1
	mov	r8, qword ptr [rsp + 0x58]
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x30]
	mov	r10, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x68]
	je	.label_1643
	test	r13d, r13d
	jne	.label_1614
	mov	qword ptr [rsp + 0x78], rbx
	mov	rbx, qword ptr [r15 + 0x20]
	cmp	rbx, qword ptr [r15 + 0x18]
	mov	r12, r15
	je	.label_1653
.label_1665:
	mov	edi, 1
	mov	esi, 0x28
	call	rpl_calloc
	mov	r13d, 0xc
	test	rax, rax
	mov	rbx, qword ptr [rsp + 0x78]
	je	.label_1614
	mov	rcx, qword ptr [r12 + 0x20]
	mov	rdx, qword ptr [r12 + 0x28]
	mov	qword ptr [rdx + rcx*8], rax
	mov	qword ptr [rax], r14
	mov	qword ptr [rax + 8], rbp
	inc	rcx
	mov	qword ptr [r12 + 0x20], rcx
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rax
	mov	rcx, qword ptr [rsp + 0x80]
	mov	r8, qword ptr [rsp + 0x58]
	call	get_subexp_sub
	mov	r13d, eax
	cmp	r13d, 1
	ja	.label_1614
	mov	r15, r12
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rsp + 0x70], rax
	mov	r8, qword ptr [rsp + 0x58]
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x30]
	mov	r10, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_1639
.label_1619:
	cmp	rdx, qword ptr [r13 + 0x58]
	jge	.label_1618
	mov	qword ptr [rsp + 0x38], r11
	mov	qword ptr [rsp + 0x18], r10
	mov	qword ptr [rsp + 0x30], r9
	mov	qword ptr [rsp + 0x40], r12
	mov	qword ptr [rsp + 0x58], r8
	lea	rbx, [rdx + 1]
	mov	r15, rdx
	mov	rdi, r13
	mov	esi, ebx
	call	extend_buffers
	mov	rcx, r13
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_1614
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rsp + 0x70], rax
	mov	r13, rcx
	mov	r8, qword ptr [rsp + 0x58]
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x30]
	mov	r10, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp + 0x38]
	mov	rdx, r15
	jmp	.label_1650
.label_1653:
	lea	rax, [rbx + rbx]
	mov	rdi, qword ptr [r12 + 0x28]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	r13d, 0xc
	test	rax, rax
	je	.label_1614
	lea	rcx, [rbx + rbx + 1]
	mov	qword ptr [r12 + 0x28], rax
	mov	qword ptr [r12 + 0x18], rcx
	jmp	.label_1665
	nop	dword ptr [rax + rax]
.label_1621:
	cmp	rbp, qword ptr [r14]
	jle	.label_1654
	cmp	rdx, qword ptr [r13 + 0x30]
	jge	.label_1619
	lea	rbx, [rdx + 1]
.label_1650:
	mov	rcx, qword ptr [rsp + 0x70]
	movzx	eax, byte ptr [rbp + rcx - 1]
	movzx	ecx, byte ptr [rcx + rdx]
	cmp	ecx, eax
	mov	rdx, rbx
	jne	.label_1618
.label_1654:
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rcx, qword ptr [rax + rbp*8]
	test	rcx, rcx
	je	.label_1629
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_1629
	mov	qword ptr [rsp + 0x68], rdx
	mov	r15, r14
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [r9]
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_1649:
	mov	r14, qword ptr [rcx + rsi*8]
	mov	rdi, r14
	shl	rdi, 4
	movzx	ebx, byte ptr [rdx + rdi + 8]
	cmp	ebx, 9
	jne	.label_1613
	cmp	qword ptr [rdx + rdi], r10
	je	.label_1642
.label_1613:
	inc	rsi
	cmp	rsi, rax
	jl	.label_1649
.label_1623:
	mov	rbx, r13
.label_1639:
	mov	rdx, qword ptr [rsp + 0x68]
	jmp	.label_1643
	nop	word ptr cs:[rax + rax]
.label_1629:
	mov	r15, r14
	mov	rbx, r13
.label_1643:
	cmp	rbp, r8
	lea	rbp, [rbp + 1]
	mov	r13, rbx
	mov	r14, r15
	jl	.label_1621
	nop	dword ptr [rax]
.label_1618:
	inc	r11
	cmp	r11, qword ptr [r13 + 0xe8]
	jl	.label_1661
	mov	rax, qword ptr [r13 + 0xc8]
	mov	r15, qword ptr [rsp + 0x20]
	jmp	.label_1660
.label_1655:
	mov	rax, r12
.label_1660:
	mov	dword ptr [rsp + 0xa4], 0
	cmp	r12, rax
	jge	.label_1616
	lea	rax, [r12 + r12*4]
	lea	rbp, [rax*8 + 0x18]
	nop	word ptr cs:[rax + rax]
.label_1632:
	mov	rax, qword ptr [r13 + 0xd8]
	mov	rbx, r13
	mov	rcx, qword ptr [rsp + 0x80]
	cmp	qword ptr [rax + rbp - 0x18], rcx
	jne	.label_1624
	cmp	qword ptr [rax + rbp - 0x10], r8
	jne	.label_1624
	mov	rdx, qword ptr [rax + rbp - 8]
	mov	rsi, qword ptr [rax + rbp]
	mov	r13, qword ptr [r15 + 0x30]
	cmp	rsi, rdx
	jne	.label_1631
	mov	qword ptr [rsp + 0x40], r12
	mov	rax, qword ptr [r15 + 0x28]
	mov	rcx, qword ptr [rsp + 0x80]
	lea	rcx, [rcx + rcx*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	jmp	.label_1635
.label_1631:
	mov	qword ptr [rsp + 0x40], r12
	mov	rax, qword ptr [rsp + 0x80]
	lea	rax, [rax*8]
	add	rax, qword ptr [r15 + 0x18]
.label_1635:
	mov	rax, qword ptr [rax]
	lea	r15, [rax + rax*2]
	lea	r14, [rsi + r8]
	mov	qword ptr [rsp + 0x70], rsi
	sub	r14, rdx
	mov	qword ptr [rsp + 0x78], rdx
	lea	rsi, [r14 - 1]
	mov	r12, rbx
	mov	edx, dword ptr [r12 + 0xa0]
	mov	rdi, r12
	mov	rbx, r8
	call	re_string_context_at
	mov	rdx, rbx
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	rsi, qword ptr [rcx + r14*8]
	mov	rcx, qword ptr [rcx + rdx*8]
	test	rcx, rcx
	mov	edx, 0
	je	.label_1656
	mov	rdx, qword ptr [rcx + 0x10]
.label_1656:
	mov	qword ptr [rsp + 0x68], rdx
	lea	rdx, [r13 + r15*8]
	test	rsi, rsi
	lea	rdi, [rsp + 0x88]
	je	.label_1662
	mov	r15d, eax
	mov	rsi, qword ptr [rsi + 0x50]
	mov	qword ptr [rsp + 0x60], rdx
	mov	rbx, rdi
	call	re_node_set_init_union
	mov	r13d, eax
	mov	dword ptr [rsp + 0xa4], r13d
	test	r13d, r13d
	jne	.label_1617
	lea	rdi, [rsp + 0xa4]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, rbx
	mov	ecx, r15d
	call	re_acquire_state_context
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rdi, qword ptr [rsp + 0x98]
	call	free
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rbx, r12
	cmp	qword ptr [rax + r14*8], 0
	jne	.label_1634
	mov	r13d, dword ptr [rsp + 0xa4]
	test	r13d, r13d
	je	.label_1634
	jmp	.label_1622
.label_1662:
	lea	rdi, [rsp + 0xa4]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x60], rdx
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rbx, r12
	cmp	qword ptr [rax + r14*8], 0
	jne	.label_1634
	mov	r13d, dword ptr [rsp + 0xa4]
	test	r13d, r13d
	mov	r15, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x58]
	mov	r12, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x70]
	je	.label_1651
	jmp	.label_1622
.label_1634:
	mov	r15, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x58]
	mov	r12, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x70]
.label_1651:
	cmp	rdx, rcx
	jne	.label_1624
	mov	rax, qword ptr [rax + r8*8]
	mov	rcx, qword ptr [rsp + 0x68]
	cmp	qword ptr [rax + 0x10], rcx
	jle	.label_1624
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rdx, r8
	mov	r14, r8
	call	check_subexp_matching_top
	mov	rcx, r14
	mov	r13d, eax
	mov	dword ptr [rsp + 0xa4], r13d
	test	r13d, r13d
	jne	.label_1622
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x60]
	mov	r14, rcx
	call	transit_state_bkref
	mov	r8, r14
	mov	r13d, eax
	mov	dword ptr [rsp + 0xa4], r13d
	test	r13d, r13d
	jne	.label_1622
	nop	
.label_1624:
	inc	r12
	add	rbp, 0x28
	mov	r13, rbx
	cmp	r12, qword ptr [r13 + 0xc8]
	jl	.label_1632
	nop	word ptr [rax + rax]
.label_1616:
	mov	rcx, qword ptr [rsp + 0x48]
	inc	rcx
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rcx, qword ptr [rax + 8]
	jl	.label_1648
.label_1646:
	mov	dword ptr [rsp + 0xa4], 0
	xor	r13d, r13d
	jmp	.label_1622
.label_1614:
	mov	dword ptr [rsp + 0xa4], r13d
.label_1622:
	mov	eax, r13d
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1617:
	mov	rdi, qword ptr [rsp + 0x98]
	call	free
	jmp	.label_1622
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411ed0

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	ecx, esi
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x40]
	mov	eax, 0xc
	movabs	rdx, 0xffffffffffffffe
	cmp	rsi, rdx
	ja	.label_1671
	movsxd	rax, ecx
	mov	rcx, qword ptr [r14 + 0x58]
	add	rsi, rsi
	cmp	rcx, rsi
	cmovle	rsi, rcx
	cmp	rax, rsi
	cmovge	rsi, rax
	mov	rdi, r14
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_1671
	mov	rdi, qword ptr [r14 + 0xb8]
	test	rdi, rdi
	je	.label_1675
	mov	rax, qword ptr [r14 + 0x40]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	test	rcx, rcx
	mov	eax, 0xc
	je	.label_1671
	mov	qword ptr [r14 + 0xb8], rcx
.label_1675:
	cmp	byte ptr [r14 + 0x88], 0
	mov	eax, dword ptr [r14 + 0x90]
	je	.label_1672
	cmp	eax, 2
	jl	.label_1676
	mov	rdi, r14
	call	build_wcs_upper_buffer
	test	eax, eax
	je	.label_1670
	jmp	.label_1671
.label_1672:
	cmp	eax, 2
	jl	.label_1668
	mov	rdi, r14
	call	build_wcs_buffer
	jmp	.label_1670
.label_1676:
	mov	rbx, qword ptr [r14 + 0x30]
	mov	r15, qword ptr [r14 + 0x40]
	mov	rax, qword ptr [r14 + 0x58]
	cmp	r15, rax
	cmovg	r15, rax
	cmp	rbx, r15
	jge	.label_1673
	jmp	.label_1677
.label_1667:
	mov	cl, byte ptr [rax + rdx]
	jmp	.label_1678
	nop	word ptr cs:[rax + rax]
.label_1677:
	mov	rcx, qword ptr [r14]
	mov	rax, qword ptr [r14 + 0x78]
	add	rcx, qword ptr [r14 + 0x28]
	mov	cl, byte ptr [rbx + rcx]
	movzx	edx, cl
	test	rax, rax
	jne	.label_1667
.label_1678:
	movzx	r12d, cl
	lea	eax, [r12 + 0x80]
	cmp	eax, 0x17f
	ja	.label_1669
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	r12d, dword ptr [rax + r12*4]
.label_1669:
	mov	rax, qword ptr [r14 + 8]
	mov	byte ptr [rax + rbx], r12b
	inc	rbx
	cmp	rbx, r15
	jl	.label_1677
	mov	rbx, r15
.label_1673:
	mov	qword ptr [r14 + 0x30], rbx
	mov	qword ptr [r14 + 0x38], rbx
	jmp	.label_1670
.label_1668:
	mov	rdx, qword ptr [r14 + 0x78]
	test	rdx, rdx
	je	.label_1670
	mov	rax, qword ptr [r14 + 0x30]
	mov	rcx, qword ptr [r14 + 0x40]
	mov	rsi, qword ptr [r14 + 0x58]
	cmp	rcx, rsi
	cmovg	rcx, rsi
	cmp	rax, rcx
	jge	.label_1674
	mov	rsi, qword ptr [r14 + 0x28]
	add	rsi, rax
	mov	rdi, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 8]
	movzx	esi, byte ptr [rdi + rsi]
	mov	dl, byte ptr [rdx + rsi]
	mov	byte ptr [rbx + rax], dl
	jmp	.label_1679
	nop	dword ptr [rax]
.label_1680:
	mov	rdx, qword ptr [r14 + 0x78]
	mov	rsi, qword ptr [r14]
	mov	rdi, qword ptr [r14 + 8]
	add	rsi, qword ptr [r14 + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	mov	dl, byte ptr [rdx + rsi]
	mov	byte ptr [rdi + rax], dl
.label_1679:
	inc	rax
	cmp	rax, rcx
	jl	.label_1680
	mov	rax, rcx
.label_1674:
	mov	qword ptr [r14 + 0x30], rax
	mov	qword ptr [r14 + 0x38], rax
.label_1670:
	xor	eax, eax
.label_1671:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412090

	.globl merge_state_with_log
	.type merge_state_with_log, @function
merge_state_with_log:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rdx
	mov	r13, rsi
	mov	r15, rdi
	mov	r14, qword ptr [r13 + 0x48]
	mov	r12, qword ptr [r13 + 0x98]
	mov	rax, qword ptr [r13 + 0xb8]
	cmp	r14, qword ptr [r13 + 0xc0]
	jle	.label_1683
	mov	qword ptr [rax + r14*8], rbx
	mov	qword ptr [r13 + 0xc0], r14
	jmp	.label_1681
.label_1683:
	mov	rcx, qword ptr [rax + r14*8]
	test	rcx, rcx
	je	.label_1684
	mov	rdx, qword ptr [rcx + 0x50]
	test	rbx, rbx
	je	.label_1685
	mov	rbx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp]
	mov	rsi, rbx
	call	re_node_set_init_union
	mov	dword ptr [r15], eax
	test	eax, eax
	jne	.label_1688
	mov	rsi, qword ptr [r13 + 0x48]
	test	rbx, rbx
	sete	bpl
	jmp	.label_1689
.label_1684:
	mov	qword ptr [rax + r14*8], rbx
	jmp	.label_1681
.label_1685:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp], xmm0
	mov	bpl, 1
	mov	rsi, r14
.label_1689:
	dec	rsi
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	call	re_string_context_at
	lea	rdx, [rsp]
	mov	rdi, r15
	mov	rsi, r12
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rbx, rax
	mov	rax, qword ptr [r13 + 0xb8]
	mov	qword ptr [rax + r14*8], rbx
	test	bpl, bpl
	jne	.label_1681
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_1681:
	test	rbx, rbx
	je	.label_1686
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	je	.label_1687
	lea	r12, [rbx + 8]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	check_subexp_matching_top
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1682
	test	byte ptr [rbx + 0x68], 0x40
	mov	rax, rbx
	je	.label_1682
	mov	rdi, r13
	mov	rsi, r12
	call	transit_state_bkref
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1682
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + r14*8]
	jmp	.label_1682
.label_1686:
	mov	rax, rbx
	jmp	.label_1682
.label_1687:
	mov	rax, rbx
.label_1682:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1688:
	xor	eax, eax
	jmp	.label_1682
	nop	
	.section	.text
	.align	32
	#Procedure 0x4121e0

	.globl re_node_set_init_union
	.type re_node_set_init_union, @function
re_node_set_init_union:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	rbp, rdi
	test	r12, r12
	je	.label_1693
	mov	r13, qword ptr [r12 + 8]
	test	r15, r15
	je	.label_1692
	test	r13, r13
	jle	.label_1692
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_1692
	add	rdi, r13
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	mov	ecx, 0xc
	je	.label_1699
	mov	qword ptr [rsp], rbp
	xor	r14d, r14d
	xor	ebx, ebx
	xor	ebp, ebp
	mov	rcx, rbx
	jmp	.label_1700
.label_1692:
	test	r13, r13
	jle	.label_1693
	mov	qword ptr [rbp + 8], r13
	mov	r15, qword ptr [r12 + 8]
	test	r15, r15
	jle	.label_1694
	mov	qword ptr [rbp], r13
	shl	r13, 3
	mov	rdi, r13
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_1702
	mov	rsi, qword ptr [r12 + 0x10]
	shl	r15, 3
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	jmp	.label_1695
.label_1693:
	test	r15, r15
	je	.label_1694
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_1694
	mov	qword ptr [rbp + 8], rdi
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	jle	.label_1694
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_1702
	mov	rsi, qword ptr [r15 + 0x10]
	shl	rbx, 3
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_1695
.label_1694:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], 0
	jmp	.label_1695
.label_1701:
	mov	rcx, rbx
	nop	dword ptr [rax + rax]
.label_1700:
	cmp	rcx, qword ptr [r15 + 8]
	jge	.label_1690
	mov	rdx, qword ptr [r12 + 0x10]
	mov	rdx, qword ptr [rdx + rbp*8]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [rsi + rcx*8]
	cmp	rdx, rsi
	jle	.label_1691
	inc	rcx
	mov	qword ptr [rax + r14*8], rsi
	inc	r14
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	jl	.label_1700
	jmp	.label_1690
.label_1691:
	sete	bl
	movzx	ebx, bl
	add	rbx, rcx
	inc	rbp
	mov	qword ptr [rax + r14*8], rdx
	inc	r14
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	jl	.label_1701
	jmp	.label_1698
.label_1690:
	mov	rbx, rcx
.label_1698:
	sub	r13, rbp
	jle	.label_1696
	lea	rdi, [rax + r14*8]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rax + rbp*8]
	shl	r13, 3
	mov	rdx, r13
	call	memcpy
	sub	r14, rbp
	add	r14, qword ptr [r12 + 8]
	jmp	.label_1697
.label_1696:
	mov	rdx, qword ptr [r15 + 8]
	sub	rdx, rbx
	jle	.label_1697
	lea	rdi, [rax + r14*8]
	mov	rax, qword ptr [r15 + 0x10]
	lea	rsi, [rax + rbx*8]
	shl	rdx, 3
	call	memcpy
	sub	r14, rbx
	add	r14, qword ptr [r15 + 8]
.label_1697:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + 8], r14
.label_1695:
	xor	ecx, ecx
.label_1699:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1702:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	ecx, 0xc
	jmp	.label_1699
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4123d0

	.globl get_subexp_sub
	.type get_subexp_sub, @function
get_subexp_sub:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	rbx, rcx
	mov	r12, rdx
	mov	r15, rsi
	mov	r13, rdi
	lea	rsi, [r12 + 0x10]
	mov	rdx, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 8]
	mov	dword ptr [rsp], 8
	mov	r8, rbx
	mov	r9, r14
	call	check_arrival
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1705
	mov	rsi, qword ptr [r15]
	mov	qword ptr [rsp + 0x20], r15
	mov	rdi, qword ptr [r12 + 8]
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rax, qword ptr [r13 + 0xd0]
	cmp	r15, rax
	jl	.label_1708
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 0x18], rdi
	mov	rdi, qword ptr [r13 + 0xd8]
	shl	rax, 4
	lea	rsi, [rax + rax*4]
	call	realloc
	test	rax, rax
	je	.label_1706
	mov	qword ptr [r13 + 0xd8], rax
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rbp, qword ptr [r13 + 0xd0]
	lea	rcx, [r15 + r15*4]
	lea	rdi, [rax + rcx*8]
	lea	rax, [rbp*8]
	lea	rdx, [rax + rax*4]
	xor	esi, esi
	call	memset
	add	rbp, rbp
	mov	qword ptr [r13 + 0xd0], rbp
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x10]
.label_1708:
	test	r15, r15
	jle	.label_1709
	lea	rcx, [r15 - 1]
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rcx, [rcx + rcx*4]
	cmp	qword ptr [rax + rcx*8 + 8], r14
	jne	.label_1710
	mov	byte ptr [rax + rcx*8 + 0x20], 1
	jmp	.label_1710
.label_1709:
	mov	rax, qword ptr [r13 + 0xd8]
.label_1710:
	lea	rcx, [r15 + r15*4]
	mov	qword ptr [rax + rcx*8], rbx
	mov	qword ptr [rax + rcx*8 + 8], r14
	mov	qword ptr [rax + rcx*8 + 0x10], rsi
	mov	qword ptr [rax + rcx*8 + 0x18], rdi
	xor	edx, edx
	sub	rdi, rsi
	mov	si, 0xffff
	cmovne	si, dx
	mov	word ptr [rax + rcx*8 + 0x22], si
	inc	r15
	mov	qword ptr [r13 + 0xc8], r15
	mov	byte ptr [rax + rcx*8 + 0x20], 0
	movsxd	rax, dword ptr [r13 + 0xe0]
	cmp	rax, rdi
	jge	.label_1704
	mov	dword ptr [r13 + 0xe0], edi
.label_1704:
	add	r14, qword ptr [r12 + 8]
	mov	rax, qword ptr [rsp + 0x20]
	sub	r14, qword ptr [rax]
	mov	rax, qword ptr [r13 + 0x40]
	mov	r15, qword ptr [r13 + 0xc0]
	cmp	rax, r14
	jg	.label_1707
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_1711
.label_1707:
	mov	rax, qword ptr [r13 + 0x30]
	cmp	rax, r14
	jg	.label_1703
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_1703
.label_1711:
	lea	esi, [r14 + 1]
	mov	rdi, r13
	call	extend_buffers
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1705
.label_1703:
	xor	ebp, ebp
	mov	rdx, r14
	sub	rdx, r15
	jle	.label_1705
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rax + r15*8 + 8]
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
	mov	qword ptr [r13 + 0xc0], r14
.label_1705:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1706:
	mov	rdi, qword ptr [r13 + 0xd8]
	call	free
	mov	ebp, 0xc
	jmp	.label_1705
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4125b0

	.globl check_arrival
	.type check_arrival, @function
check_arrival:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	qword ptr [rsp + 0x48], r9
	mov	rbp, rcx
	mov	r15, rsi
	mov	rax, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x58], rax
	mov	dword ptr [rsp + 0x8c], 0
	mov	rax, qword ptr [rax]
	mov	rcx, rdx
	shl	rcx, 4
	mov	rax, qword ptr [rax + rcx]
	mov	qword ptr [rsp + 0x40], rax
	mov	rbx, qword ptr [r15 + 8]
	movsxd	rax, dword ptr [rdi + 0xe0]
	lea	rcx, [rax + r9]
	cmp	rbx, rcx
	jle	.label_1739
	mov	qword ptr [rsp + 0x68], rdx
	mov	qword ptr [rsp + 0x18], r8
	mov	r12, rdi
	mov	r13, qword ptr [r15 + 0x10]
.label_1740:
	mov	qword ptr [rsp + 0x50], r12
	mov	r14, qword ptr [r15]
	test	r14, r14
	cmove	r14, rbp
	mov	rdi, r12
	mov	r12, qword ptr [rdi + 0x48]
	mov	rbx, qword ptr [rdi + 0xb8]
	mov	qword ptr [rdi + 0xb8], r13
	mov	qword ptr [rdi + 0x48], r14
	lea	rsi, [r14 - 1]
	mov	edx, dword ptr [rdi + 0xa0]
	call	re_string_context_at
	cmp	r14, rbp
	jne	.label_1728
	mov	dword ptr [rsp + 0x60], eax
	mov	rbp, r14
	movaps	xmm0, xmmword ptr [rip + label_1321]
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x80], rax
	test	rax, rax
	je	.label_1733
	mov	qword ptr [rsp + 0x28], rbx
	mov	qword ptr [rsp + 0x30], r15
	mov	rcx, qword ptr [rsp + 0x68]
	mov	qword ptr [rax], rcx
	mov	dword ptr [rsp + 0x8c], 0
	lea	rsi, [rsp + 0x70]
	mov	r15, qword ptr [rsp + 0x58]
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 0x40]
	mov	ecx, dword ptr [rsp + 0xf0]
	call	check_arrival_expand_ecl
	mov	r14d, eax
	mov	dword ptr [rsp + 0x8c], r14d
	test	r14d, r14d
	jne	.label_1743
	mov	qword ptr [rsp + 0x20], r12
	mov	rbx, qword ptr [rsp + 0x78]
	mov	r13, qword ptr [rsp + 0x50]
	mov	r8, rbp
	jmp	.label_1744
.label_1728:
	mov	rbp, qword ptr [r13 + r14*8]
	mov	rcx, r14
	test	rbp, rbp
	je	.label_1747
	mov	qword ptr [rsp + 0x28], rbx
	mov	qword ptr [rsp + 0x20], r12
	mov	qword ptr [rsp + 0x30], r15
	test	byte ptr [rbp + 0x68], 0x40
	jne	.label_1712
	mov	dword ptr [rsp + 0x60], eax
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	qword ptr [rsp + 0x80], 0
	xor	ebx, ebx
	mov	r13, qword ptr [rsp + 0x50]
	mov	r15, qword ptr [rsp + 0x58]
	mov	r8, rcx
	jmp	.label_1718
.label_1747:
	mov	qword ptr [rsp + 0x28], rbx
	mov	qword ptr [rsp + 0x20], r12
	mov	qword ptr [rsp + 0x30], r15
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	qword ptr [rsp + 0x80], 0
	xor	ebp, ebp
	mov	r13, qword ptr [rsp + 0x50]
	mov	r8, rcx
	jmp	.label_1734
.label_1712:
	mov	rbx, qword ptr [rbp + 0x10]
	mov	qword ptr [rsp + 0x78], rbx
	mov	r14, qword ptr [rbp + 0x10]
	test	r14, r14
	mov	r15, qword ptr [rsp + 0x58]
	mov	r8, rcx
	jle	.label_1732
	mov	r12, r8
	mov	dword ptr [rsp + 0x60], eax
	mov	qword ptr [rsp + 0x70], rbx
	lea	rdi, [rbx*8]
	call	malloc
	mov	qword ptr [rsp + 0x80], rax
	test	rax, rax
	je	.label_1733
	mov	rsi, qword ptr [rbp + 0x18]
	shl	r14, 3
	mov	rdi, rax
	mov	rdx, r14
	call	memcpy
	mov	dword ptr [rsp + 0x8c], 0
	mov	r13, qword ptr [rsp + 0x50]
	mov	r8, r12
	jmp	.label_1718
.label_1739:
	movabs	rsi, 0x7fffffffffffffff
	sub	rsi, rbx
	mov	r14d, 0xc
	cmp	rsi, rcx
	jle	.label_1714
	mov	qword ptr [rsp + 0x18], r8
	mov	rcx, qword ptr [rsp + 0x48]
	lea	rcx, [rax + rcx + 1]
	lea	rsi, [rcx + rbx]
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_1714
	mov	qword ptr [rsp + 0x60], rcx
	mov	qword ptr [rsp + 0x68], rdx
	mov	r12, rdi
	mov	rdi, qword ptr [r15 + 0x10]
	mov	qword ptr [rsp + 0x38], rsi
	lea	rsi, [rsi*8]
	call	realloc
	mov	r13, rax
	test	r13, r13
	je	.label_1714
	mov	qword ptr [r15 + 0x10], r13
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [r15 + 8], rax
	lea	rdi, [r13 + rbx*8]
	mov	rdx, qword ptr [rsp + 0x60]
	shl	rdx, 3
	xor	esi, esi
	call	memset
	jmp	.label_1740
.label_1732:
	mov	dword ptr [rsp + 0x60], eax
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	qword ptr [rsp + 0x80], 0
	xor	ebx, ebx
	mov	dword ptr [rsp + 0x8c], 0
	mov	r13, qword ptr [rsp + 0x50]
.label_1718:
	test	byte ptr [rbp + 0x68], 0x40
	je	.label_1734
.label_1744:
	test	rbx, rbx
	mov	rcx, qword ptr [rsp + 0x40]
	je	.label_1738
	lea	rsi, [rsp + 0x70]
	mov	rdi, r13
	mov	rdx, r8
	mov	rbx, r8
	mov	r8d, dword ptr [rsp + 0xf0]
	call	expand_bkref_cache
	mov	r8, rbx
	mov	r14d, eax
	mov	dword ptr [rsp + 0x8c], r14d
	test	r14d, r14d
	jne	.label_1743
.label_1738:
	mov	rbx, r8
	lea	rdi, [rsp + 0x8c]
	lea	rdx, [rsp + 0x70]
	mov	rsi, r15
	mov	ecx, dword ptr [rsp + 0x60]
	call	re_acquire_state_context
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1725
	mov	eax, dword ptr [rsp + 0x8c]
	test	eax, eax
	jne	.label_1715
.label_1725:
	mov	rax, qword ptr [r13 + 0xb8]
	mov	r8, rbx
	mov	qword ptr [rax + r8*8], rbp
.label_1734:
	mov	r15, qword ptr [rsp + 0x48]
	cmp	r8, r15
	jge	.label_1721
	lea	rbx, [rsp + 0x70]
	xor	ecx, ecx
.label_1719:
	mov	qword ptr [rsp + 0x68], r8
	mov	qword ptr [rsp + 0x60], rbp
	movsxd	rax, dword ptr [r13 + 0xe0]
	cmp	rcx, rax
	jg	.label_1723
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x78], 0
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rsi, qword ptr [rax + r8*8 + 8]
	test	rsi, rsi
	mov	r15, rbx
	je	.label_1727
	add	rsi, 8
	mov	rdi, r15
	mov	rbx, r8
	call	re_node_set_merge
	mov	r8, rbx
	mov	dword ptr [rsp + 0x8c], eax
	test	eax, eax
	jne	.label_1715
.label_1727:
	test	rbp, rbp
	je	.label_1735
	mov	rbx, qword ptr [r13 + 0x98]
	mov	dword ptr [rsp + 0xb4], 0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	mov	qword ptr [rsp + 0xa0], 0
	cmp	qword ptr [rbp + 0x28], 0
	mov	edi, 0
	jle	.label_1737
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_1724:
	mov	rax, qword ptr [rbp + 0x30]
	mov	r15, qword ptr [rax + r12*8]
	mov	rsi, qword ptr [rbx]
	mov	rbp, r15
	shl	rbp, 4
	test	byte ptr [rsi + rbp + 0xa], 0x10
	je	.label_1745
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r13
	mov	rcx, r8
	mov	r14, r8
	call	check_node_accept_bytes
	cmp	eax, 2
	jl	.label_1731
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rdx, r14
	mov	r14, rbx
	mov	rcx, qword ptr [rcx + r15*8]
	movsxd	rbp, eax
	add	rbp, rdx
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	qword ptr [rsp + 0x98], 0
	test	rsi, rsi
	lea	r13, [rsp + 0x90]
	je	.label_1720
	add	rsi, 8
	mov	rdi, r13
	mov	rbx, rcx
	call	re_node_set_merge
	mov	rcx, rbx
	mov	ebx, eax
	mov	dword ptr [rsp + 0xb4], ebx
	test	ebx, ebx
	jne	.label_1730
.label_1720:
	mov	rdi, r13
	mov	rsi, rcx
	call	re_node_set_insert
	test	al, al
	je	.label_1717
	lea	rdi, [rsp + 0xb4]
	mov	rsi, r14
	mov	rdx, r13
	call	re_acquire_state
	mov	r13, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [r13 + 0xb8]
	mov	qword ptr [rcx + rbp*8], rax
	mov	rax, qword ptr [r13 + 0xb8]
	cmp	qword ptr [rax + rbp*8], 0
	jne	.label_1736
	mov	ebx, dword ptr [rsp + 0xb4]
	test	ebx, ebx
	je	.label_1736
	jmp	.label_1730
	nop	dword ptr [rax]
.label_1731:
	mov	r14, rbx
	test	eax, eax
	jne	.label_1736
	mov	rsi, qword ptr [r14]
	mov	r8, qword ptr [rsp + 0x68]
	mov	rbx, r14
	nop	word ptr cs:[rax + rax]
.label_1745:
	mov	r14, rbx
	add	rsi, rbp
	mov	rdi, r13
	mov	rdx, r8
	call	check_node_accept
	test	al, al
	je	.label_1713
.label_1736:
	mov	rax, qword ptr [r14 + 0x18]
	mov	rsi, qword ptr [rax + r15*8]
	lea	rdi, [rsp + 0x70]
	call	re_node_set_insert
	test	al, al
	je	.label_1717
.label_1713:
	inc	r12
	mov	rbp, qword ptr [rsp + 0x60]
	cmp	r12, qword ptr [rbp + 0x28]
	mov	r8, qword ptr [rsp + 0x68]
	mov	rbx, r14
	jl	.label_1724
	mov	rdi, qword ptr [rsp + 0xa0]
	lea	r15, [rsp + 0x70]
.label_1737:
	mov	rbx, r8
	call	free
	mov	r8, rbx
	mov	dword ptr [rsp + 0x8c], 0
.label_1735:
	lea	r14, [r8 + 1]
	cmp	qword ptr [rsp + 0x78], 0
	je	.label_1729
	mov	r12, r8
	mov	rdi, qword ptr [rsp + 0x58]
	mov	rsi, r15
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdx, rbx
	mov	ebp, dword ptr [rsp + 0xf0]
	mov	ecx, ebp
	call	check_arrival_expand_ecl
	mov	dword ptr [rsp + 0x8c], eax
	test	eax, eax
	jne	.label_1715
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	mov	rcx, rbx
	mov	r8d, ebp
	call	expand_bkref_cache
	mov	dword ptr [rsp + 0x8c], eax
	test	eax, eax
	mov	r8, r12
	jne	.label_1715
.label_1729:
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	mov	rsi, r8
	mov	r12, r8
	call	re_string_context_at
	lea	rdi, [rsp + 0x8c]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, r15
	mov	rbx, r15
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1746
	mov	eax, dword ptr [rsp + 0x8c]
	test	eax, eax
	jne	.label_1715
.label_1746:
	mov	rcx, qword ptr [rsp + 0x38]
	inc	rcx
	test	rbp, rbp
	mov	rax, qword ptr [r13 + 0xb8]
	mov	qword ptr [rax + r12*8 + 8], rbp
	mov	eax, 0
	cmovne	rcx, rax
	mov	r15, qword ptr [rsp + 0x48]
	cmp	r14, r15
	mov	r8, r14
	jl	.label_1719
	jmp	.label_1722
.label_1721:
	mov	r14, r8
.label_1722:
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rcx, qword ptr [rax + r15*8]
	lea	rax, [rcx + 8]
	test	rcx, rcx
	cmove	rax, rcx
	mov	rcx, qword ptr [rsp + 0x30]
	mov	qword ptr [rcx], r14
	mov	rcx, qword ptr [rsp + 0x28]
	mov	qword ptr [r13 + 0xb8], rcx
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [r13 + 0x48], rcx
	je	.label_1716
	mov	rcx, qword ptr [rax + 8]
	test	rcx, rcx
	jle	.label_1716
	xor	r14d, r14d
	dec	rcx
	mov	rax, qword ptr [rax + 0x10]
	je	.label_1726
	xor	edx, edx
	mov	rbp, qword ptr [rsp + 0x18]
.label_1742:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], rbp
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_1742
	jmp	.label_1741
.label_1717:
	mov	rdi, qword ptr [rsp + 0xa0]
	call	free
	mov	ebx, 0xc
	mov	dword ptr [rsp + 0x8c], ebx
	jmp	.label_1715
.label_1730:
	mov	rdi, qword ptr [rsp + 0xa0]
	call	free
	mov	dword ptr [rsp + 0x8c], ebx
.label_1715:
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
	mov	r14d, dword ptr [rsp + 0x8c]
	jmp	.label_1714
.label_1726:
	xor	edx, edx
	mov	rbp, qword ptr [rsp + 0x18]
.label_1741:
	cmp	rdx, -1
	je	.label_1716
	cmp	qword ptr [rax + rdx*8], rbp
	je	.label_1714
.label_1716:
	mov	r14d, 1
.label_1714:
	mov	eax, r14d
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1743:
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
	jmp	.label_1714
.label_1733:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	dword ptr [rsp + 0x8c], 0xc
	mov	r14d, 0xc
	jmp	.label_1714
.label_1723:
	mov	r14, r8
	jmp	.label_1722
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412d70

	.globl check_arrival_expand_ecl
	.type check_arrival_expand_ecl, @function
check_arrival_expand_ecl:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15d, ecx
	mov	r13, rdx
	mov	r14, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	r12, qword ptr [r14 + 8]
	mov	qword ptr [rsp + 0x10], r12
	mov	qword ptr [rsp + 0x18], 0
	lea	rdi, [r12*8]
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	mov	ebx, 0xc
	test	rax, rax
	je	.label_1752
	test	r12, r12
	jle	.label_1755
	xor	r12d, r12d
	jmp	.label_1750
	nop	dword ptr [rax]
.label_1756:
	inc	r12
	cmp	r12, qword ptr [r14 + 8]
	jl	.label_1750
	jmp	.label_1755
	nop	
.label_1751:
	cmp	rbp, -1
	je	.label_1754
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsp + 0x10]
	mov	rcx, r13
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	jmp	.label_1753
	nop	dword ptr [rax]
.label_1750:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rsp + 8]
	mov	r8, qword ptr [rax + 0x30]
	lea	r9, [rdx + rdx*2]
	mov	r10, qword ptr [r8 + r9*8 + 8]
	test	r10, r10
	jle	.label_1754
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	mov	rax, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rax]
	xor	eax, eax
	nop	
.label_1749:
	mov	rbp, qword ptr [rdi + rax*8]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	esi, byte ptr [rbx + rcx + 8]
	cmp	esi, r15d
	jne	.label_1748
	cmp	qword ptr [rbx + rcx], r13
	je	.label_1751
.label_1748:
	inc	rax
	cmp	rax, r10
	jl	.label_1749
.label_1754:
	lea	rsi, [r8 + r9*8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_merge
.label_1753:
	mov	ebx, eax
	test	ebx, ebx
	je	.label_1756
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_1752
.label_1755:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [r14 + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14], xmm0
	xor	ebx, ebx
.label_1752:
	mov	eax, ebx
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412eb0

	.globl expand_bkref_cache
	.type expand_bkref_cache, @function
expand_bkref_cache:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	r15, rdx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x28], r14
	mov	r10, rdi
	mov	qword ptr [rsp + 0x30], r10
	mov	rax, qword ptr [r10 + 0x98]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9, qword ptr [r10 + 0xc8]
	xor	eax, eax
	test	r9, r9
	mov	edx, 0
	jle	.label_1771
	mov	rsi, qword ptr [r10 + 0xd8]
	xor	edx, edx
	mov	rdi, r9
	nop	dword ptr [rax]
.label_1758:
	lea	rbp, [rdi + rdx]
	mov	rbx, rbp
	shr	rbx, 0x3f
	add	rbx, rbp
	sar	rbx, 1
	lea	rbp, [rbx + rbx*4]
	cmp	qword ptr [rsi + rbp*8 + 8], r15
	cmovge	rdi, rbx
	lea	rbp, [rbx + 1]
	cmovl	rdx, rbp
	cmp	rdx, rdi
	jl	.label_1758
.label_1771:
	cmp	rdx, r9
	jge	.label_1761
	cmp	rdx, -1
	je	.label_1761
	mov	qword ptr [rsp + 0x10], rcx
	mov	dword ptr [rsp + 0x1c], r8d
	mov	rcx, qword ptr [r10 + 0xd8]
	lea	rdx, [rdx + rdx*4]
	mov	qword ptr [rsp + 8], rdx
	cmp	qword ptr [rcx + rdx*8 + 8], r15
	jne	.label_1761
	mov	dword ptr [rsp + 0x24], eax
	jmp	.label_1783
.label_1765:
	mov	rcx, qword ptr [r10 + 0xd8]
.label_1783:
	mov	rax, qword ptr [rsp + 8]
	lea	r13, [rcx + rax*8]
	nop	dword ptr [rax]
.label_1773:
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	jle	.label_1757
	mov	rdx, qword ptr [r13]
	dec	rcx
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdi, rcx
	mov	esi, 0
	je	.label_1763
	nop	word ptr cs:[rax + rax]
.label_1768:
	lea	rbp, [rsi + rdi]
	shr	rbp, 1
	cmp	qword ptr [rax + rbp*8], rdx
	lea	rbx, [rbp + 1]
	cmovl	rsi, rbx
	cmovge	rdi, rbp
	cmp	rsi, rdi
	jb	.label_1768
.label_1763:
	cmp	rsi, -1
	je	.label_1757
	cmp	qword ptr [rax + rsi*8], rdx
	jne	.label_1757
	mov	r12, qword ptr [r13 + 0x18]
	add	r12, r15
	sub	r12, qword ptr [r13 + 0x10]
	cmp	r12, r15
	jne	.label_1781
	test	rcx, rcx
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	lea	rdx, [rdx + rdx*2]
	mov	rdx, qword ptr [rsi + rdx*8 + 0x10]
	mov	rbx, qword ptr [rdx]
	mov	edx, 0
	je	.label_1786
	nop	
.label_1764:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], rbx
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_1764
.label_1786:
	cmp	rdx, -1
	je	.label_1762
	mov	ecx, 4
	cmp	qword ptr [rax + rdx*8], rbx
	jne	.label_1762
	mov	rbp, r14
	jmp	.label_1777
.label_1781:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rax + 0x18]
	mov	r14, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [r10 + 0xb8]
	mov	rbx, qword ptr [rax + r12*8]
	test	rbx, rbx
	je	.label_1779
	mov	rdi, qword ptr [rbx + 0x10]
	test	rdi, rdi
	jle	.label_1769
	mov	rcx, rdi
	dec	rcx
	mov	rax, qword ptr [rbx + 0x18]
	mov	edx, 0
	je	.label_1788
	nop	dword ptr [rax + rax]
.label_1782:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r14
	lea	rbp, [rsi + 1]
	cmovl	rdx, rbp
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_1782
.label_1788:
	cmp	rdx, -1
	je	.label_1769
	mov	ecx, 4
	cmp	qword ptr [rax + rdx*8], r14
	je	.label_1772
.label_1769:
	mov	qword ptr [rsp + 0x48], rdi
	mov	rbp, qword ptr [rbx + 0x10]
	test	rbp, rbp
	jle	.label_1776
	mov	qword ptr [rsp + 0x40], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rsp + 0x50], rax
	test	rax, rax
	je	.label_1778
	mov	rsi, qword ptr [rbx + 0x18]
	shl	rbp, 3
	mov	rdi, rax
	mov	rdx, rbp
	call	memcpy
	jmp	.label_1759
.label_1762:
	mov	qword ptr [rsp + 0x30], r10
	movaps	xmm0, xmmword ptr [rip + label_1321]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x50], rax
	test	rax, rax
	je	.label_1767
	mov	qword ptr [rax], rbx
	xor	eax, eax
.label_1760:
	mov	dword ptr [rsp + 0x20], eax
	mov	dword ptr [rsp + 0x64], eax
	mov	rdi, qword ptr [rsp + 0x38]
	lea	r12, [rsp + 0x40]
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x10]
	mov	ecx, dword ptr [rsp + 0x1c]
	call	check_arrival_expand_ecl
	mov	ebx, eax
	mov	rdi, r14
	mov	rbp, r14
	mov	rsi, r12
	call	re_node_set_merge
	mov	r14d, eax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	edx, dword ptr [rsp + 0x20]
	mov	eax, ebx
	or	eax, edx
	mov	ecx, 2
	or	eax, r14d
	mov	r10, qword ptr [rsp + 0x30]
	jne	.label_1775
.label_1784:
	mov	r14, rbp
	jmp	.label_1777
.label_1779:
	movaps	xmm0, xmmword ptr [rip + label_1321]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x50], rax
	test	rax, rax
	je	.label_1770
	mov	qword ptr [rax], r14
	mov	dword ptr [rsp + 0x64], 0
	jmp	.label_1774
.label_1776:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	qword ptr [rsp + 0x50], 0
.label_1759:
	xor	ebx, ebx
.label_1787:
	mov	dword ptr [rsp + 0x64], ebx
	lea	rdi, [rsp + 0x40]
	mov	rsi, r14
	call	re_node_set_insert
	test	ebx, ebx
	jne	.label_1785
	xor	al, 1
	jne	.label_1785
.label_1774:
	lea	rdi, [rsp + 0x64]
	mov	rsi, qword ptr [rsp + 0x38]
	lea	rdx, [rsp + 0x40]
	call	re_acquire_state
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + r12*8], rax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	r10, rbx
	mov	rax, qword ptr [r10 + 0xb8]
	cmp	qword ptr [rax + r12*8], 0
	sete	al
	mov	edx, dword ptr [rsp + 0x64]
	test	edx, edx
	setne	cl
	and	cl, al
	movzx	ecx, cl
	mov	eax, dword ptr [rsp + 0x24]
	cmovne	eax, edx
	mov	dword ptr [rsp + 0x24], eax
.label_1772:
	mov	r14, qword ptr [rsp + 0x28]
.label_1777:
	test	ecx, ecx
	je	.label_1757
	cmp	ecx, 4
	jne	.label_1780
	nop	dword ptr [rax + rax]
.label_1757:
	xor	eax, eax
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	jne	.label_1773
	jmp	.label_1761
.label_1767:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	eax, 0xc
	jmp	.label_1760
.label_1775:
	test	ebx, ebx
	cmovne	r14d, ebx
	test	edx, edx
	cmovne	r14d, edx
	mov	dword ptr [rsp + 0x64], r14d
	mov	ecx, 1
	mov	dword ptr [rsp + 0x24], r14d
	jmp	.label_1784
.label_1785:
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	test	ebx, ebx
	mov	eax, 0xc
	cmove	ebx, eax
	mov	dword ptr [rsp + 0x64], ebx
	mov	ecx, 1
	mov	dword ptr [rsp + 0x24], ebx
	jmp	.label_1766
.label_1770:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x64], 0xc
	mov	dword ptr [rsp + 0x24], 0xc
	mov	ecx, 1
.label_1766:
	mov	r14, qword ptr [rsp + 0x28]
	mov	r10, qword ptr [rsp + 0x30]
	jmp	.label_1777
.label_1778:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	ebx, 0xc
	jmp	.label_1787
.label_1780:
	cmp	ecx, 2
	je	.label_1765
	mov	eax, dword ptr [rsp + 0x24]
.label_1761:
	add	rsp, 0x68
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413340

	.globl check_arrival_expand_ecl_sub
	.type check_arrival_expand_ecl_sub, @function
check_arrival_expand_ecl_sub:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15d, r8d
	mov	r14, rcx
	mov	rbp, rdx
	mov	rbx, rsi
	mov	r12, rdi
	jmp	.label_1789
	nop	dword ptr [rax]
.label_1795:
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rbp, qword ptr [rax]
.label_1789:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jle	.label_1793
	dec	rax
	mov	rcx, qword ptr [rbx + 0x10]
	mov	edx, 0
	je	.label_1798
	nop	
.label_1796:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], rbp
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_1796
.label_1798:
	cmp	rdx, -1
	je	.label_1793
	cmp	qword ptr [rcx + rdx*8], rbp
	je	.label_1791
.label_1793:
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, r15d
	jne	.label_1797
	cmp	qword ptr [rax + rcx], r14
	je	.label_1790
.label_1797:
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	je	.label_1792
	mov	rax, qword ptr [r12 + 0x28]
	lea	rbp, [rbp + rbp*2]
	mov	rcx, qword ptr [rax + rbp*8 + 8]
	cmp	rcx, 2
	je	.label_1794
	test	rcx, rcx
	jne	.label_1795
	jmp	.label_1791
	nop	dword ptr [rax]
.label_1794:
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rdx, qword ptr [rax + 8]
	mov	rdi, r12
	mov	rsi, rbx
	mov	rcx, r14
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	test	eax, eax
	jne	.label_1792
	mov	rax, qword ptr [r12 + 0x28]
	jmp	.label_1795
.label_1790:
	cmp	r15d, 9
	jne	.label_1791
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	je	.label_1792
.label_1791:
	xor	eax, eax
.label_1792:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x413450

	.globl re_acquire_state
	.type re_acquire_state, @function
re_acquire_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdx
	mov	r14, rdi
	mov	r8, qword ptr [r12 + 8]
	test	r8, r8
	je	.label_1816
	mov	r15, r8
	jle	.label_1799
	mov	rcx, qword ptr [r12 + 0x10]
	xor	eax, eax
	cmp	r8, 4
	mov	r15, r8
	jb	.label_1801
	xor	eax, eax
	mov	rdx, r8
	and	rdx, 0xfffffffffffffffc
	mov	r15, r8
	je	.label_1801
	movq	xmm0, r8
	lea	rbx, [r8 - 4]
	mov	eax, ebx
	shr	eax, 2
	inc	eax
	xor	edi, edi
	test	al, 3
	je	.label_1809
	lea	ebp, [r8 - 4]
	shr	ebp, 2
	inc	ebp
	and	ebp, 3
	neg	rbp
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	dword ptr [rax]
.label_1820:
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	add	rdi, 4
	inc	rbp
	jne	.label_1820
	jmp	.label_1822
.label_1809:
	pxor	xmm1, xmm1
.label_1822:
	cmp	rbx, 0xc
	jb	.label_1812
	mov	rax, r8
	and	rax, 0xfffffffffffffffc
	sub	rax, rdi
	lea	rdi, [rcx + rdi*8 + 0x70]
	nop	word ptr [rax + rax]
.label_1802:
	movdqu	xmm2, xmmword ptr [rdi - 0x70]
	movdqu	xmm3, xmmword ptr [rdi - 0x60]
	movdqu	xmm4, xmmword ptr [rdi - 0x50]
	movdqu	xmm5, xmmword ptr [rdi - 0x40]
	paddq	xmm2, xmm0
	paddq	xmm3, xmm1
	paddq	xmm2, xmm4
	paddq	xmm3, xmm5
	movdqu	xmm4, xmmword ptr [rdi - 0x30]
	movdqu	xmm5, xmmword ptr [rdi - 0x20]
	paddq	xmm4, xmm2
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rdi - 0x10]
	movdqu	xmm1, xmmword ptr [rdi]
	paddq	xmm0, xmm4
	paddq	xmm1, xmm5
	add	rdi, 0x80
	add	rax, -0x10
	jne	.label_1802
.label_1812:
	paddq	xmm1, xmm0
	pshufd	xmm0, xmm1, 0x4e
	paddq	xmm0, xmm1
	movq	r15, xmm0
	cmp	r8, rdx
	mov	rax, rdx
	je	.label_1799
.label_1801:
	mov	rdx, r8
	sub	rdx, rax
	lea	rcx, [rcx + rax*8]
	nop	dword ptr [rax + rax]
.label_1803:
	add	r15, qword ptr [rcx]
	add	rcx, 8
	dec	rdx
	jne	.label_1803
.label_1799:
	mov	rdx, qword ptr [rsi + 0x40]
	mov	rcx, qword ptr [rsi + 0x88]
	and	rcx, r15
	lea	rax, [rcx + rcx*2]
	mov	rcx, qword ptr [rdx + rax*8]
	test	rcx, rcx
	jle	.label_1807
	mov	rdx, qword ptr [rdx + rax*8 + 0x10]
	xor	ebx, ebx
	nop	
.label_1805:
	test	r12, r12
	je	.label_1814
	mov	r13, qword ptr [rdx + rbx*8]
	cmp	r15, qword ptr [r13]
	jne	.label_1814
	cmp	qword ptr [r13 + 0x10], r8
	jne	.label_1814
	mov	rdi, r8
	nop	dword ptr [rax + rax]
.label_1821:
	test	rdi, rdi
	jle	.label_1817
	mov	rbp, qword ptr [r13 + 0x18]
	mov	rbp, qword ptr [rbp + rdi*8 - 8]
	mov	rax, qword ptr [r12 + 0x10]
	cmp	rbp, qword ptr [rax + rdi*8 - 8]
	lea	rdi, [rdi - 1]
	je	.label_1821
	nop	word ptr cs:[rax + rax]
.label_1814:
	inc	rbx
	cmp	rbx, rcx
	jl	.label_1805
.label_1807:
	mov	qword ptr [rsp + 0x10], rsi
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	test	r13, r13
	je	.label_1811
	mov	rbp, r13
	add	rbp, 8
	mov	rdi, qword ptr [r12 + 8]
	mov	qword ptr [r13 + 0x10], rdi
	mov	rbx, qword ptr [r12 + 8]
	test	rbx, rbx
	jle	.label_1813
	mov	qword ptr [r13 + 8], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_1819
	mov	qword ptr [rsp + 8], r14
	lea	r14, [r12 + 0x10]
	mov	rsi, qword ptr [r12 + 0x10]
	shl	rbx, 3
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	mov	qword ptr [r13 + 0x50], rbp
	mov	rdi, qword ptr [rsp + 0x10]
	jmp	.label_1800
.label_1813:
	mov	qword ptr [rsp + 8], r14
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], 0
	cmp	qword ptr [r12 + 8], 0
	mov	qword ptr [r13 + 0x50], rbp
	mov	rdi, qword ptr [rsp + 0x10]
	jle	.label_1804
	lea	r14, [r12 + 0x10]
.label_1800:
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_1815:
	mov	r8, qword ptr [rdi]
	mov	rcx, qword ptr [r14]
	mov	rdx, qword ptr [rcx + rax*8]
	shl	rdx, 4
	mov	ebp, dword ptr [r8 + rdx + 8]
	mov	ecx, ebp
	and	ecx, 0x3ffff
	cmp	ecx, 1
	je	.label_1818
	movzx	esi, bpl
	shr	ebp, 0x14
	mov	bl, byte ptr [r13 + 0x68]
	mov	cl, bl
	shr	cl, 5
	movzx	ecx, cl
	or	ecx, ebp
	shl	cl, 5
	and	cl, 0x20
	and	bl, 0xdf
	or	bl, cl
	mov	byte ptr [r13 + 0x68], bl
	cmp	esi, 0xc
	je	.label_1823
	cmp	esi, 4
	je	.label_1806
	cmp	esi, 2
	jne	.label_1808
	or	bl, 0x10
	jmp	.label_1810
.label_1806:
	or	bl, 0x40
	jmp	.label_1810
.label_1808:
	lea	rcx, [r8 + rdx + 8]
	test	dword ptr [rcx], 0x3ff00
	je	.label_1818
.label_1823:
	or	bl, 0x80
.label_1810:
	mov	byte ptr [r13 + 0x68], bl
.label_1818:
	inc	rax
	cmp	rax, qword ptr [r12 + 8]
	jl	.label_1815
.label_1804:
	mov	rsi, r13
	mov	rdx, r15
	call	register_state
	test	eax, eax
	je	.label_1817
	mov	rdi, r13
	call	free_state
	mov	r14, qword ptr [rsp + 8]
	jmp	.label_1811
.label_1816:
	mov	dword ptr [r14], 0
	jmp	.label_1824
.label_1819:
	mov	rdi, r13
	call	free
.label_1811:
	mov	dword ptr [r14], 0xc
.label_1824:
	xor	r13d, r13d
.label_1817:
	mov	rax, r13
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4137a0

	.globl check_node_accept_bytes
	.type check_node_accept_bytes, @function
check_node_accept_bytes:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r9, qword ptr [rdi]
	shl	rsi, 4
	movzx	r10d, byte ptr [r9 + rsi + 8]
	cmp	r10d, 7
	je	.label_1845
	mov	r8d, dword ptr [rdx + 0x90]
	mov	ebx, 1
	cmp	r8d, 1
	je	.label_1841
	lea	rax, [rcx + 1]
	mov	r11, qword ptr [rdx + 0x30]
	cmp	rax, r11
	jge	.label_1841
	lea	rax, [rcx*4]
	add	rax, qword ptr [rdx + 0x10]
	mov	ebx, 1
	nop	
.label_1848:
	cmp	dword ptr [rax + rbx*4], -1
	jne	.label_1841
	lea	rbp, [rcx + rbx + 1]
	inc	rbx
	cmp	rbp, r11
	jl	.label_1848
.label_1841:
	cmp	r10d, 5
	jne	.label_1827
	xor	r14d, r14d
	cmp	ebx, 2
	jl	.label_1828
	mov	rax, qword ptr [rdi + 0xd8]
	test	al, 0x40
	jne	.label_1851
	mov	rsi, qword ptr [rdx + 8]
	movzx	esi, byte ptr [rsi + rcx]
	cmp	esi, 0xa
	je	.label_1828
.label_1851:
	test	al, al
	js	.label_1838
	mov	r14d, ebx
	jmp	.label_1828
.label_1827:
	cmp	ebx, 1
	setg	al
	xor	r14d, r14d
	cmp	r10d, 6
	jne	.label_1828
	test	al, al
	je	.label_1828
	mov	r15, qword ptr [r9 + rsi]
	mov	rsi, qword ptr [r15 + 0x40]
	test	rsi, rsi
	jne	.label_1844
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_1844
	xor	r12d, r12d
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_1825
.label_1844:
	cmp	r8d, 1
	jne	.label_1849
	mov	rax, qword ptr [rdx + 8]
	movzx	r12d, byte ptr [rax + rcx]
	jmp	.label_1825
.label_1849:
	mov	rax, qword ptr [rdx + 0x10]
	mov	r12d, dword ptr [rax + rcx*4]
.label_1825:
	mov	rax, qword ptr [r15 + 0x28]
	test	rax, rax
	jle	.label_1831
	mov	rcx, qword ptr [r15]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1839:
	cmp	r12d, dword ptr [rcx + rdx*4]
	je	.label_1837
	inc	rdx
	cmp	rdx, rax
	jl	.label_1839
.label_1831:
	cmp	qword ptr [r15 + 0x48], 0
	jle	.label_1840
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1846:
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	edi, r12d
	call	iswctype
	test	eax, eax
	jne	.label_1837
	inc	rbp
	cmp	rbp, qword ptr [r15 + 0x48]
	jl	.label_1846
	mov	rsi, qword ptr [r15 + 0x40]
.label_1840:
	xor	ecx, ecx
	test	rsi, rsi
	jle	.label_1833
	mov	rax, qword ptr [r15 + 8]
	xor	edx, edx
	nop	
.label_1830:
	cmp	dword ptr [rax + rdx*4], r12d
	jg	.label_1826
	mov	rcx, qword ptr [r15 + 0x10]
	cmp	r12d, dword ptr [rcx + rdx*4]
	jle	.label_1829
.label_1826:
	inc	rdx
	xor	ecx, ecx
	cmp	rdx, rsi
	jl	.label_1830
	jmp	.label_1833
.label_1837:
	mov	ecx, ebx
.label_1833:
	test	byte ptr [r15 + 0x20], 1
	jne	.label_1834
	mov	r14d, ecx
	jmp	.label_1828
.label_1834:
	test	ecx, ecx
	jg	.label_1828
	test	ebx, ebx
	mov	r14d, 1
	cmovg	r14d, ebx
	jmp	.label_1828
.label_1838:
	mov	rax, qword ptr [rdx + 8]
	cmp	byte ptr [rax + rcx], 0
	je	.label_1828
	mov	r14d, ebx
	jmp	.label_1828
.label_1845:
	mov	rax, qword ptr [rdx + 8]
	movzx	esi, byte ptr [rax + rcx]
	xor	r14d, r14d
	cmp	esi, 0xc2
	jae	.label_1843
.label_1828:
	mov	eax, r14d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1829:
	mov	ecx, ebx
	jmp	.label_1833
.label_1843:
	lea	rdi, [rcx + 2]
	mov	rdx, qword ptr [rdx + 0x58]
	cmp	rdi, rdx
	jg	.label_1828
	mov	bl, byte ptr [rcx + rax + 1]
	movzx	edi, sil
	cmp	edi, 0xdf
	ja	.label_1850
	movzx	eax, bl
	cmp	eax, 0xc0
	sbb	eax, eax
	and	eax, 2
	xor	r14d, r14d
	test	bl, bl
	cmovs	r14d, eax
	jmp	.label_1828
.label_1850:
	cmp	edi, 0xef
	ja	.label_1836
	mov	esi, 3
	cmp	edi, 0xe0
	jne	.label_1835
	movzx	edi, bl
	cmp	edi, 0xa0
	jb	.label_1828
	jmp	.label_1835
.label_1836:
	cmp	edi, 0xf7
	ja	.label_1842
	mov	esi, 4
	cmp	edi, 0xf0
	jne	.label_1835
	movzx	edi, bl
	cmp	edi, 0x90
	jb	.label_1828
	jmp	.label_1835
.label_1842:
	cmp	edi, 0xfb
	ja	.label_1847
	mov	esi, 5
	cmp	edi, 0xf8
	jne	.label_1835
	movzx	edi, bl
	cmp	edi, 0x88
	jb	.label_1828
	jmp	.label_1835
.label_1847:
	cmp	edi, 0xfd
	ja	.label_1828
	mov	esi, 6
	cmp	edi, 0xfc
	jne	.label_1835
	movzx	edi, bl
	cmp	edi, 0x84
	jb	.label_1828
.label_1835:
	mov	edi, esi
	lea	rbp, [rdi + rcx]
	cmp	rbp, rdx
	jg	.label_1828
	add	rax, rcx
	mov	ecx, 1
.label_1832:
	mov	dl, byte ptr [rax + rcx]
	test	dl, dl
	jns	.label_1828
	movzx	edx, dl
	cmp	edx, 0xbf
	ja	.label_1828
	inc	rcx
	cmp	rcx, rdi
	jl	.label_1832
	mov	r14d, esi
	jmp	.label_1828
	nop	
	.section	.text
	.align	32
	#Procedure 0x413a80

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	push	rbp
	push	rbx
	push	rax
	mov	rax, qword ptr [rdi + 8]
	movzx	ecx, byte ptr [rax + rdx]
	mov	ebx, dword ptr [rsi + 8]
	movzx	ebp, bl
	xor	eax, eax
	dec	ebp
	cmp	ebp, 6
	ja	.label_1852
	jmp	qword ptr [(rbp * 8) + label_1857]
.label_2262:
	movzx	eax, byte ptr [rsi]
	cmp	eax, ecx
	je	.label_1856
	xor	eax, eax
	jmp	.label_1852
.label_2263:
	mov	rsi, qword ptr [rsi]
	mov	al, cl
	shr	al, 6
	movzx	eax, al
	mov	rax, qword ptr [rsi + rax*8]
	bt	rax, rcx
	jb	.label_1856
	xor	eax, eax
	jmp	.label_1852
.label_2265:
	test	cl, cl
	js	.label_1854
.label_2264:
	test	cl, cl
	je	.label_1855
	movzx	eax, cl
	cmp	eax, 0xa
	jne	.label_1856
	mov	rax, qword ptr [rdi + 0x98]
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_1856
	xor	eax, eax
	jmp	.label_1852
.label_1855:
	mov	rax, qword ptr [rdi + 0x98]
	cmp	byte ptr [rax + 0xd8], 0
	js	.label_1859
.label_1856:
	mov	ebp, ebx
	shr	ebp, 8
	mov	al, 1
	test	bp, 0x3ff
	je	.label_1852
	mov	eax, dword ptr [rdi + 0xa0]
	mov	rsi, rdx
	mov	edx, eax
	call	re_string_context_at
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_1858
	test	ecx, ecx
	jne	.label_1858
	xor	eax, eax
	jmp	.label_1852
.label_1858:
	test	bh, 8
	je	.label_1860
	test	ecx, ecx
	je	.label_1860
	xor	eax, eax
	jmp	.label_1852
.label_1854:
	xor	eax, eax
	jmp	.label_1852
.label_1860:
	test	bh, 0x20
	je	.label_1853
	mov	ecx, eax
	and	ecx, 2
	jne	.label_1853
	xor	eax, eax
	jmp	.label_1852
.label_1859:
	xor	eax, eax
	jmp	.label_1852
.label_1853:
	and	eax, 8
	test	bpl, bpl
	setns	cl
	shr	eax, 3
	or	al, cl
.label_1852:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x413b70

	.globl build_trtable
	.type build_trtable, @function
build_trtable:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xd8
	mov	r13, rsi
	mov	qword ptr [rbp - 0xb8], r13
	mov	r12, rdi
	mov	qword ptr [rbp - 0xd8], r12
	mov	edi, 0x3800
	call	malloc
	mov	rsi, rax
	mov	qword ptr [rbp - 0xc0], rsi
	test	rsi, rsi
	je	.label_1942
	lea	rax, [r13 + 0x58]
	mov	qword ptr [rbp - 0xe8], rax
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r13 + 0x58], xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	xor	r14d, r14d
	cmp	qword ptr [r13 + 0x10], 0
	jle	.label_1900
	lea	rax, [rsi + 0x1800]
	mov	qword ptr [rbp - 0xc8], rax
	xor	ebx, ebx
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_1897:
	mov	qword ptr [rbp - 0x98], rbx
	mov	rax, qword ptr [r13 + 0x18]
	mov	rax, qword ptr [rax + rbx*8]
	mov	rcx, qword ptr [r12]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	mov	qword ptr [rbp - 0xa0], rdx
	mov	eax, dword ptr [rcx + rax + 8]
	movzx	r10d, al
	cmp	r10d, 1
	jne	.label_1861
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	cl, byte ptr [rcx]
	mov	edx, 1
	shl	rdx, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [rbp + rcx*8 - 0x50], rdx
	jmp	.label_1870
	nop	word ptr cs:[rax + rax]
.label_1861:
	cmp	r10d, 7
	je	.label_1882
	cmp	r10d, 5
	je	.label_1884
	cmp	r10d, 3
	jne	.label_1863
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rcx]
	movups	xmm0, xmmword ptr [rcx]
	orps	xmm0, xmmword ptr [rbp - 0x50]
	movaps	xmmword ptr [rbp - 0x50], xmm0
	movdqu	xmm0, xmmword ptr [rcx + 0x10]
	por	xmm0, xmmword ptr [rbp - 0x40]
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	jmp	.label_1870
.label_1882:
	mov	qword ptr [rbp - 0x48], -1
	mov	qword ptr [rbp - 0x50], -1
	mov	rcx, qword ptr [r12 + 0xd8]
	mov	rdx, -2
	test	cl, 0x40
	jne	.label_1894
	mov	qword ptr [rbp - 0x50], -0x401
	mov	rdx, -0x402
.label_1894:
	test	cl, cl
	jns	.label_1870
	mov	qword ptr [rbp - 0x50], rdx
	jmp	.label_1870
.label_1884:
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_1930
	mov	rcx, qword ptr [r12 + 0x78]
	movdqu	xmm0, xmmword ptr [rcx]
	por	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqu	xmm1, xmmword ptr [rcx + 0x10]
	por	xmm1, xmmword ptr [rbp - 0x40]
	movdqa	xmmword ptr [rbp - 0x40], xmm1
	movq	rcx, xmm0
	jmp	.label_1911
.label_1930:
	mov	qword ptr [rbp - 0x38], -1
	mov	qword ptr [rbp - 0x40], -1
	mov	qword ptr [rbp - 0x48], -1
	mov	qword ptr [rbp - 0x50], -1
	mov	rcx, -1
.label_1911:
	mov	rdx, qword ptr [r12 + 0xd8]
	test	dl, 0x40
	jne	.label_1924
	and	rcx, 0xfffffffffffffbff
	mov	qword ptr [rbp - 0x50], rcx
.label_1924:
	test	dl, dl
	jns	.label_1870
	and	rcx, 0xfffffffffffffffe
	mov	qword ptr [rbp - 0x50], rcx
	nop	word ptr cs:[rax + rax]
.label_1870:
	mov	ecx, eax
	shr	ecx, 8
	mov	edx, ecx
	and	edx, 0x3ff
	je	.label_1895
	test	cl, 0x20
	je	.label_1927
	mov	rdx, qword ptr [rbp - 0x50]
	test	dh, 4
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	je	.label_1863
	mov	qword ptr [rbp - 0x50], 0x400
.label_1927:
	test	cl, cl
	js	.label_1944
	test	cl, 4
	je	.label_1947
	mov	edx, eax
	and	edx, 0x4000ff
	cmp	edx, 1
	je	.label_1944
	cmp	dword ptr [r12 + 0xb4], 1
	jle	.label_1952
	mov	rdx, qword ptr [r12 + 0x78]
	movdqu	xmm0, xmmword ptr [r12 + 0xb8]
	movdqu	xmm1, xmmword ptr [rdx]
	pcmpeqd	xmm2, xmm2
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	pand	xmm1, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm1
	movq	r8, xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	r9, xmm0
	movdqu	xmm0, xmmword ptr [r12 + 0xc8]
	movdqu	xmm1, xmmword ptr [rdx + 0x10]
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	pand	xmm1, xmmword ptr [rbp - 0x40]
	mov	rdi, rbx
	movq	rbx, xmm1
	or	rbx, r8
	or	rbx, r9
	movdqa	xmmword ptr [rbp - 0x40], xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rdx, xmm0
	or	rdx, rbx
	mov	rbx, rdi
	jmp	.label_1956
.label_1952:
	movdqu	xmm0, xmmword ptr [r12 + 0xb8]
	pand	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movq	rdx, xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	r8, xmm0
	movdqu	xmm0, xmmword ptr [r12 + 0xc8]
	pand	xmm0, xmmword ptr [rbp - 0x40]
	movq	rdi, xmm0
	or	rdi, rdx
	or	rdi, r8
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rdx, xmm0
	or	rdx, rdi
.label_1956:
	test	rdx, rdx
	je	.label_1863
.label_1947:
	test	cl, 8
	je	.label_1895
	cmp	r10d, 1
	setne	cl
	test	eax, 0x400000
	je	.label_1890
	test	cl, cl
	jne	.label_1890
	nop	word ptr cs:[rax + rax]
.label_1944:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	jmp	.label_1863
.label_1890:
	cmp	dword ptr [r12 + 0xb4], 1
	jle	.label_1906
	mov	rax, qword ptr [r12 + 0x78]
	movdqu	xmm0, xmmword ptr [r12 + 0xb8]
	movdqu	xmm1, xmmword ptr [rax]
	pand	xmm1, xmm0
	pandn	xmm1, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm1
	movq	rcx, xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rdx, xmm0
	movdqu	xmm0, xmmword ptr [r12 + 0xc8]
	movdqu	xmm1, xmmword ptr [rax + 0x10]
	pand	xmm1, xmm0
	pandn	xmm1, xmmword ptr [rbp - 0x40]
	movq	rdi, xmm1
	or	rdi, rcx
	or	rdi, rdx
	movdqa	xmmword ptr [rbp - 0x40], xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rax, xmm0
	or	rax, rdi
	jmp	.label_1940
.label_1906:
	movdqu	xmm0, xmmword ptr [r12 + 0xb8]
	pandn	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movq	rax, xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	movdqu	xmm0, xmmword ptr [r12 + 0xc8]
	pandn	xmm0, xmmword ptr [rbp - 0x40]
	movq	rdx, xmm0
	or	rdx, rax
	or	rdx, rcx
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rax, xmm0
	or	rax, rdx
.label_1940:
	test	rax, rax
	je	.label_1863
	nop	dword ptr [rax]
.label_1895:
	test	r14, r14
	jle	.label_1946
	mov	qword ptr [rbp - 0x80], rsi
	mov	r13, qword ptr [rbp - 0xc8]
	xor	edi, edi
	mov	edx, r10d
	mov	dword ptr [rbp - 0xb0], edx
	nop	
.label_1958:
	cmp	edx, 1
	jne	.label_1953
	mov	rax, qword ptr [rbp - 0xa0]
	movzx	eax, byte ptr [rax]
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	mov	rcx, qword ptr [r13 + rcx*8]
	bt	rcx, rax
	jae	.label_1921
.label_1953:
	mov	qword ptr [rbp - 0x88], rdi
	mov	qword ptr [rbp - 0x78], r14
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r12, qword ptr [r13]
	mov	r14, qword ptr [r13 + 8]
	mov	r9, r12
	and	r9, rax
	mov	r10, r14
	and	r10, rcx
	mov	rbx, r10
	or	rbx, r9
	mov	rdi, qword ptr [rbp - 0x40]
	mov	r15, qword ptr [r13 + 0x10]
	mov	r11, r15
	and	r11, rdi
	or	rbx, r11
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x90], rdx
	mov	rsi, qword ptr [r13 + 0x18]
	mov	r8, rsi
	and	r8, rdx
	or	rbx, r8
	je	.label_1959
	mov	rbx, rax
	not	rbx
	and	rbx, r12
	not	r12
	and	r12, rax
	mov	qword ptr [rbp - 0xa8], r12
	mov	qword ptr [rbp - 0x50], r12
	mov	rdx, rcx
	not	rdx
	and	rdx, r14
	mov	rax, rdx
	or	rax, rbx
	not	r14
	and	r14, rcx
	mov	qword ptr [rbp - 0x48], r14
	mov	rcx, rdi
	not	rcx
	and	rcx, r15
	or	rax, rcx
	not	r15
	and	r15, rdi
	mov	qword ptr [rbp - 0x40], r15
	mov	r12, qword ptr [rbp - 0x90]
	mov	rdi, r12
	not	rdi
	and	rdi, rsi
	not	rsi
	and	rsi, r12
	mov	qword ptr [rbp - 0x38], rsi
	or	rax, rdi
	mov	r12, rsi
	je	.label_1880
	mov	qword ptr [rbp - 0x90], r12
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rax, rsi
	shl	rax, 5
	mov	r12, qword ptr [rbp - 0xc8]
	mov	qword ptr [r12 + rax], rbx
	mov	qword ptr [r12 + rax + 8], rdx
	mov	qword ptr [r12 + rax + 0x10], rcx
	mov	qword ptr [r12 + rax + 0x18], rdi
	mov	qword ptr [r13], r9
	mov	qword ptr [r13 + 8], r10
	mov	qword ptr [r13 + 0x10], r11
	mov	qword ptr [r13 + 0x18], r8
	lea	r12, [rsi + rsi*2]
	mov	rbx, qword ptr [rbp - 0xc0]
	lea	rcx, [rbx + r12*8]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rax + 8]
	mov	qword ptr [rbx + r12*8 + 8], rdi
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jle	.label_1891
	mov	qword ptr [rbp - 0xd0], rax
	mov	qword ptr [rcx], rdi
	mov	qword ptr [rbp - 0xe0], rcx
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + r12*8 + 0x10], rax
	test	rax, rax
	mov	r12, qword ptr [rbp - 0x90]
	je	.label_1923
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0xd0]
	shl	rdx, 3
	mov	rdi, rax
	call	memcpy
	jmp	.label_1935
	nop	
.label_1959:
	mov	r14, qword ptr [rbp - 0x78]
	mov	rbx, qword ptr [rbp - 0x98]
	mov	rdi, qword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0xb0]
	jmp	.label_1921
.label_1891:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rcx], xmm0
	mov	qword ptr [rcx + 0x10], 0
	mov	r12, qword ptr [rbp - 0x90]
.label_1935:
	inc	qword ptr [rbp - 0x78]
.label_1880:
	mov	rbx, qword ptr [rbp - 0x98]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rsi, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [rbp - 0x80]
	call	re_node_set_insert
	test	al, al
	je	.label_1949
	or	r14, qword ptr [rbp - 0xa8]
	or	r15, r12
	or	r15, r14
	mov	r14, qword ptr [rbp - 0x78]
	mov	edx, dword ptr [rbp - 0xb0]
	mov	rdi, qword ptr [rbp - 0x88]
	je	.label_1862
.label_1921:
	inc	rdi
	add	r13, 0x20
	add	qword ptr [rbp - 0x80], 0x18
	cmp	rdi, r14
	jl	.label_1958
	jmp	.label_1862
.label_1946:
	xor	edi, edi
.label_1862:
	cmp	rdi, r14
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	r12, qword ptr [rbp - 0xd8]
	mov	r13, qword ptr [rbp - 0xb8]
	jne	.label_1863
	mov	rax, rdi
	shl	rax, 5
	movaps	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmm1, xmmword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0xc8]
	movdqu	xmmword ptr [rcx + rax + 0x10], xmm1
	movups	xmmword ptr [rcx + rax], xmm0
	mov	r15, rbx
	lea	rbx, [rdi + rdi*2]
	mov	rax, qword ptr [r13 + 0x18]
	mov	r14, qword ptr [rax + r15*8]
	movdqa	xmm0, xmmword ptr [rip + label_1321]
	movdqu	xmmword ptr [rsi + rbx*8], xmm0
	mov	r12, rdi
	mov	edi, 8
	call	malloc
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	qword ptr [rsi + rbx*8 + 0x10], rax
	test	rax, rax
	je	.label_1885
	mov	qword ptr [rax], r14
	inc	r12
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	mov	r14, r12
	mov	rbx, r15
	mov	r12, qword ptr [rbp - 0xd8]
	nop	word ptr cs:[rax + rax]
.label_1863:
	inc	rbx
	cmp	rbx, qword ptr [r13 + 0x10]
	jl	.label_1897
	test	r14, r14
	jle	.label_1900
	mov	r15, rsi
	lea	rax, [r14 + 1]
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x68], 0
	lea	rdi, [r14*8 + 8]
	call	malloc
	mov	qword ptr [rbp - 0x60], rax
	xor	ecx, ecx
	test	rax, rax
	mov	edx, 0xc
	cmovne	edx, ecx
	mov	dword ptr [rbp - 0x54], edx
	movabs	rcx, 0xaaaaaaaaaaaa855
	cmp	r14, rcx
	ja	.label_1909
	test	rax, rax
	je	.label_1909
	lea	rax, [r14*8]
	lea	rdi, [rax + rax*2]
	lea	rax, [rax + rax*2 + 0x3800]
	cmp	rax, 0xfbf
	ja	.label_1917
	mov	qword ptr [rbp - 0xb8], r13
	mov	rax, rsp
	add	rdi, 0xf
	and	rdi, 0xfffffffffffffff0
	sub	rax, rdi
	mov	rsp, rax
	mov	dword ptr [rbp - 0xd0], 0
	jmp	.label_1922
.label_1923:
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0xe0]
	movdqu	xmmword ptr [rax], xmm0
.label_1949:
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	r12, qword ptr [rbp - 0x78]
.label_1871:
	mov	r14, -1
	test	r12, r12
	jle	.label_1900
	mov	rbx, rsi
	mov	r15, rsi
	add	rbx, 0x10
	nop	dword ptr [rax]
.label_1939:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r12
	jne	.label_1939
	mov	rsi, r15
.label_1900:
	mov	rdi, rsi
	call	free
	test	r14, r14
	je	.label_1945
	xor	eax, eax
	jmp	.label_1874
.label_1945:
	mov	edi, 8
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xe8]
	mov	qword ptr [rcx], rax
	test	rax, rax
	setne	al
	jmp	.label_1874
.label_1942:
	xor	eax, eax
	jmp	.label_1874
.label_1917:
	call	malloc
	test	rax, rax
	je	.label_1909
	mov	qword ptr [rbp - 0xb8], r13
	mov	cl, 1
	mov	dword ptr [rbp - 0xd0], ecx
.label_1922:
	mov	qword ptr [rbp - 0x80], rax
	lea	rax, [rax + r14*8]
	mov	qword ptr [rbp - 0xa8], rax
	lea	rax, [rax + r14*8]
	mov	qword ptr [rbp - 0xb0], rax
	mov	qword ptr [rbp - 0x78], r14
	xor	edx, edx
	xor	eax, eax
	mov	qword ptr [rbp - 0x90], rax
	xor	esi, esi
	xor	eax, eax
	mov	qword ptr [rbp - 0x88], rax
	xor	r14d, r14d
	xor	eax, eax
	mov	qword ptr [rbp - 0xe0], rax
.label_1941:
	mov	qword ptr [rbp - 0xa0], rsi
	mov	qword ptr [rbp - 0x98], rdx
	mov	qword ptr [rbp - 0x68], 0
	lea	rcx, [r14 + r14*2]
	mov	rax, qword ptr [r15 + rcx*8 + 8]
	mov	qword ptr [rbp - 0xc0], r15
	test	rax, rax
	jle	.label_1876
	mov	rdx, qword ptr [rbp - 0xc0]
	lea	rbx, [rdx + rcx*8 + 8]
	mov	r13, qword ptr [rdx + rcx*8 + 0x10]
	xor	r15d, r15d
	nop	
.label_1898:
	mov	rcx, qword ptr [r13 + r15*8]
	mov	rdx, qword ptr [r12 + 0x18]
	mov	rcx, qword ptr [rdx + rcx*8]
	cmp	rcx, -1
	je	.label_1889
	mov	rax, qword ptr [r12 + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	lea	rdi, [rbp - 0x70]
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x54], eax
	test	eax, eax
	jne	.label_1868
	mov	rax, qword ptr [rbx]
.label_1889:
	inc	r15
	cmp	r15, rax
	jl	.label_1898
.label_1876:
	xor	ecx, ecx
	lea	rdi, [rbp - 0x54]
	mov	rsi, r12
	lea	rdx, [rbp - 0x70]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rcx + r14*8], rax
	test	rax, rax
	jne	.label_1910
	mov	ecx, dword ptr [rbp - 0x54]
	test	ecx, ecx
	jne	.label_1868
.label_1910:
	cmp	byte ptr [rax + 0x68], 0
	js	.label_1879
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + r14*8]
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + r14*8], rax
	jmp	.label_1913
.label_1879:
	mov	ecx, 1
	lea	rdi, [rbp - 0x54]
	mov	rsi, r12
	lea	rdx, [rbp - 0x70]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx + r14*8], rax
	test	rax, rax
	jne	.label_1920
	mov	ecx, dword ptr [rbp - 0x54]
	test	ecx, ecx
	jne	.label_1868
.label_1920:
	mov	rcx, qword ptr [rbp - 0x80]
	cmp	qword ptr [rcx + r14*8], rax
	je	.label_1925
	mov	al, 1
	cmp	dword ptr [r12 + 0xb4], 1
	jg	.label_1928
	mov	rax, qword ptr [rbp - 0xe0]
.label_1928:
	mov	qword ptr [rbp - 0xe0], rax
.label_1925:
	mov	ecx, 2
	lea	rdi, [rbp - 0x54]
	mov	rsi, r12
	lea	rdx, [rbp - 0x70]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + r14*8], rax
	test	rax, rax
	jne	.label_1913
	mov	eax, dword ptr [rbp - 0x54]
	test	eax, eax
	jne	.label_1868
.label_1913:
	mov	rax, r14
	shl	rax, 5
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rdx, qword ptr [rbp - 0x88]
	or	rdx, qword ptr [rcx + rax]
	mov	qword ptr [rbp - 0x88], rdx
	mov	rsi, qword ptr [rbp - 0xa0]
	or	rsi, qword ptr [rcx + rax + 8]
	mov	rdx, qword ptr [rbp - 0x90]
	or	rdx, qword ptr [rcx + rax + 0x10]
	mov	qword ptr [rbp - 0x90], rdx
	mov	rdx, qword ptr [rbp - 0x98]
	or	rdx, qword ptr [rcx + rax + 0x18]
	inc	r14
	cmp	r14, qword ptr [rbp - 0x78]
	mov	r15, qword ptr [rbp - 0xc0]
	jl	.label_1941
	mov	r15, rsi
	mov	r13, rdx
	mov	rax, qword ptr [rbp - 0xe0]
	and	al, 1
	mov	qword ptr [rbp - 0xe0], rax
	mov	edi, 8
	jne	.label_1960
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xe8]
	mov	qword ptr [rcx], rax
	test	rax, rax
	je	.label_1868
	mov	rcx, qword ptr [rbp - 0x88]
	test	rcx, rcx
	mov	r14, qword ptr [rbp - 0xc0]
	mov	r10, qword ptr [rbp - 0x80]
	je	.label_1872
	lea	r8, [r14 + 0x1800]
	mov	edx, 1
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x88]
	jmp	.label_1877
.label_1883:
	mov	rsi, rbx
	lea	rbx, [rsi + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_1883
	test	qword ptr [r12 + 0xb8], rdx
	je	.label_1887
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rcx + rsi*8 + 8]
	jmp	.label_1888
.label_1887:
	mov	rcx, qword ptr [r10 + rsi*8 + 8]
.label_1888:
	mov	qword ptr [rax + r9*8], rcx
	jmp	.label_1893
.label_1877:
	mov	rbx, -1
	test	dil, 1
	mov	rcx, r8
	jne	.label_1883
.label_1893:
	add	rdx, rdx
	shr	rdi, 1
	inc	r9
	test	rdi, rdi
	jne	.label_1877
.label_1872:
	mov	rsi, r15
	test	rsi, rsi
	mov	r15, qword ptr [rbp - 0x78]
	je	.label_1875
	lea	r8, [r14 + 0x1808]
	mov	edx, 1
	mov	r9d, 0x40
	jmp	.label_1901
.label_1904:
	mov	rbx, rdi
	lea	rdi, [rbx + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_1904
	test	qword ptr [r12 + 0xc0], rdx
	je	.label_1908
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	jmp	.label_1912
.label_1908:
	mov	rcx, qword ptr [r10 + rbx*8 + 8]
.label_1912:
	mov	qword ptr [rax + r9*8], rcx
	jmp	.label_1916
.label_1901:
	mov	rdi, -1
	test	sil, 1
	mov	rcx, r8
	jne	.label_1904
.label_1916:
	add	rdx, rdx
	shr	rsi, 1
	inc	r9
	test	rsi, rsi
	jne	.label_1901
.label_1875:
	mov	r9, r10
	mov	r10, qword ptr [rbp - 0x90]
	test	r10, r10
	mov	r11d, dword ptr [rbp - 0xd0]
	je	.label_1919
	lea	r8, [r14 + 0x1810]
	mov	edx, 1
	mov	esi, 0x80
	jmp	.label_1932
.label_1929:
	mov	rbx, rdi
	lea	rdi, [rbx + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_1929
	test	qword ptr [r12 + 0xc8], rdx
	je	.label_1931
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	jmp	.label_1892
.label_1931:
	mov	rcx, qword ptr [r9 + rbx*8 + 8]
.label_1892:
	mov	qword ptr [rax + rsi*8], rcx
	jmp	.label_1937
.label_1932:
	mov	rdi, -1
	test	r10b, 1
	mov	rcx, r8
	jne	.label_1929
.label_1937:
	add	rdx, rdx
	shr	r10, 1
	inc	rsi
	test	r10, r10
	jne	.label_1932
.label_1919:
	test	r13, r13
	je	.label_1914
	lea	r8, [r14 + 0x1818]
	mov	edx, 1
	mov	esi, 0xc0
	jmp	.label_1943
.label_1955:
	mov	rbx, rdi
	lea	rdi, [rbx + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_1955
	test	qword ptr [r12 + 0xd0], rdx
	je	.label_1950
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	jmp	.label_1954
.label_1950:
	mov	rcx, qword ptr [r9 + rbx*8 + 8]
.label_1954:
	mov	qword ptr [rax + rsi*8], rcx
	jmp	.label_1957
.label_1943:
	mov	rdi, -1
	test	r13b, 1
	mov	rcx, r8
	jne	.label_1955
.label_1957:
	add	rdx, rdx
	shr	r13, 1
	inc	rsi
	test	r13, r13
	jne	.label_1943
.label_1914:
	mov	rcx, qword ptr [rbp - 0x88]
	test	ch, 4
	je	.label_1865
	lea	rdx, [r14 + 0x1800]
	xor	ecx, ecx
.label_1905:
	test	byte ptr [rdx + 1], 4
	jne	.label_1867
	inc	rcx
	add	rdx, 0x20
	cmp	rcx, r15
	jl	.label_1905
	jmp	.label_1865
.label_1885:
	lea	rax, [rsi + rbx*8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	jmp	.label_1871
.label_1909:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	jmp	.label_1951
.label_1867:
	mov	rdx, qword ptr [rbp - 0xe0]
	test	dl, dl
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rax + 0x50], rcx
	je	.label_1865
	mov	qword ptr [rax + 0x850], rcx
.label_1865:
	test	r11b, r11b
	je	.label_1886
	mov	rdi, r9
	call	free
.label_1886:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	rbx, r14
	add	rbx, 0x10
.label_1938:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_1938
	mov	rdi, r14
	call	free
	mov	al, 1
	jmp	.label_1874
.label_1960:
	mov	esi, 0x200
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	qword ptr [rcx + 0x60], rax
	test	rax, rax
	je	.label_1868
	mov	rcx, qword ptr [rbp - 0x88]
	test	rcx, rcx
	mov	r14, qword ptr [rbp - 0xc0]
	mov	r10, qword ptr [rbp - 0x80]
	je	.label_1902
	lea	r8, [r14 + 0x1800]
	mov	edx, 1
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x88]
	jmp	.label_1907
.label_1868:
	mov	eax, dword ptr [rbp - 0xd0]
	test	al, al
	je	.label_1915
	mov	rdi, qword ptr [rbp - 0x80]
	call	free
.label_1915:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	r14, qword ptr [rbp - 0x78]
	test	r14, r14
	mov	r15, qword ptr [rbp - 0xc0]
	jle	.label_1918
.label_1951:
	mov	rbx, r15
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_1926:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r14
	jne	.label_1926
.label_1918:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_1874:
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1933:
	mov	rsi, rbx
	lea	rbx, [rsi + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_1933
	mov	rcx, qword ptr [r10 + rsi*8 + 8]
	mov	qword ptr [rax + r9*8], rcx
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rcx + rsi*8 + 8]
	mov	qword ptr [rax + r9*8 + 0x800], rcx
	jmp	.label_1936
.label_1907:
	mov	rbx, -1
	test	dil, 1
	mov	rcx, r8
	jne	.label_1933
.label_1936:
	add	rdx, rdx
	shr	rdi, 1
	inc	r9
	test	rdi, rdi
	jne	.label_1907
.label_1902:
	mov	rsi, r15
	test	rsi, rsi
	mov	r15, qword ptr [rbp - 0x78]
	je	.label_1948
	lea	r8, [r14 + 0x1808]
	mov	edx, 1
	mov	r9d, 0x40
	jmp	.label_1866
.label_1864:
	mov	rcx, rbx
	lea	rbx, [rcx + 1]
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi + 0x20]
	je	.label_1864
	mov	rdi, qword ptr [r10 + rcx*8 + 8]
	mov	qword ptr [rax + r9*8], rdi
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	mov	qword ptr [rax + r9*8 + 0x800], rcx
	jmp	.label_1934
.label_1866:
	mov	rbx, -1
	test	sil, 1
	mov	rdi, r8
	jne	.label_1864
.label_1934:
	add	rdx, rdx
	shr	rsi, 1
	inc	r9
	test	rsi, rsi
	jne	.label_1866
.label_1948:
	mov	r9, r10
	mov	rcx, qword ptr [rbp - 0x90]
	test	rcx, rcx
	mov	r11d, dword ptr [rbp - 0xd0]
	je	.label_1869
	lea	r8, [r14 + 0x1810]
	mov	edx, 1
	mov	esi, 0x80
	jmp	.label_1873
.label_1878:
	mov	rcx, rbx
	lea	rbx, [rcx + 1]
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi + 0x20]
	je	.label_1878
	mov	rdi, qword ptr [r9 + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8], rdi
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	jmp	.label_1881
.label_1873:
	mov	rbx, -1
	test	cl, 1
	mov	r10, rcx
	mov	rdi, r8
	jne	.label_1878
.label_1881:
	add	rdx, rdx
	mov	rcx, r10
	shr	rcx, 1
	inc	rsi
	test	rcx, rcx
	jne	.label_1873
.label_1869:
	test	r13, r13
	je	.label_1914
	lea	r8, [r14 + 0x1818]
	mov	edx, 1
	mov	esi, 0xc0
	jmp	.label_1896
.label_1899:
	mov	rcx, rbx
	lea	rbx, [rcx + 1]
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi + 0x20]
	je	.label_1899
	mov	rdi, qword ptr [r9 + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8], rdi
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	jmp	.label_1903
.label_1896:
	mov	rbx, -1
	test	r13b, 1
	mov	rdi, r8
	jne	.label_1899
.label_1903:
	add	rdx, rdx
	shr	r13, 1
	inc	rsi
	test	r13, r13
	je	.label_1914
	jmp	.label_1896
	nop	
	.section	.text
	.align	32
	#Procedure 0x414b10

	.globl sift_states_backward
	.type sift_states_backward, @function
sift_states_backward:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r15, rsi
	mov	r14, rdi
	mov	r13, qword ptr [r15 + 0x18]
	mov	rbx, qword ptr [r15 + 0x10]
	movaps	xmm0, xmmword ptr [rip + label_1321]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x50], rax
	test	rax, rax
	je	.label_1971
	mov	qword ptr [rax], rbx
	lea	rcx, [rsp + 0x40]
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r13
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1964
	lea	rax, [r15 + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 0xc], 0
	nop	word ptr cs:[rax + rax]
.label_1974:
	mov	rdx, r13
	test	rdx, rdx
	jle	.label_1966
	mov	rdi, qword ptr [r15]
	cmp	qword ptr [rdi + rdx*8], 0
	je	.label_1965
	xor	eax, eax
	jmp	.label_1977
	nop	word ptr [rax + rax]
.label_1965:
	mov	eax, dword ptr [rsp + 0xc]
	inc	eax
.label_1977:
	cmp	eax, dword ptr [r14 + 0xe0]
	jg	.label_1969
	mov	dword ptr [rsp + 0xc], eax
	mov	qword ptr [rsp + 0x48], 0
	lea	r13, [rdx - 1]
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rax, qword ptr [rax + rdx*8 - 8]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x18], rdx
	test	rax, rax
	je	.label_1972
	cmp	qword ptr [rax + 0x28], 0
	jle	.label_1972
	mov	rcx, qword ptr [r14 + 0x98]
	mov	qword ptr [rsp + 0x30], rcx
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_1979:
	mov	rax, qword ptr [rax + 0x30]
	mov	r12, qword ptr [rax + rbx*8]
	mov	qword ptr [rsp + 0x38], r12
	mov	rax, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	shl	r12, 4
	test	byte ptr [rax + r12 + 0xa], 0x10
	je	.label_1961
	mov	rax, r15
	mov	rcx, qword ptr [rax + 0x18]
	mov	qword ptr [rsp + 0x20], rcx
	mov	rdx, r14
	mov	r14, rax
	mov	rbp, qword ptr [rdx + 0x98]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x38]
	mov	r15, r13
	mov	r13, rdx
	mov	rcx, r15
	call	check_node_accept_bytes
	test	eax, eax
	jle	.label_1976
	movsxd	rcx, eax
	add	rcx, r15
	cmp	rcx, qword ptr [rsp + 0x20]
	jle	.label_1978
	mov	rcx, r14
	mov	r14, r13
	mov	r13, r15
	mov	r15, rcx
	jmp	.label_1962
.label_1976:
	mov	rcx, r14
	mov	r14, r13
	mov	r13, r15
	mov	r15, rcx
	jne	.label_1962
	jmp	.label_1961
.label_1978:
	mov	rsi, r14
	mov	rdx, qword ptr [rsi]
	mov	rdx, qword ptr [rdx + rcx*8]
	test	rdx, rdx
	mov	r14, r13
	mov	r13, r15
	mov	r15, rsi
	je	.label_1961
	mov	rsi, qword ptr [rdx + 0x10]
	test	rsi, rsi
	jle	.label_1961
	mov	rcx, qword ptr [rbp + 0x18]
	mov	rdi, qword ptr [rsp + 0x38]
	mov	r8, qword ptr [rcx + rdi*8]
	dec	rsi
	mov	rdx, qword ptr [rdx + 0x18]
	mov	edi, 0
	je	.label_1970
	nop	word ptr cs:[rax + rax]
.label_1975:
	lea	rbp, [rdi + rsi]
	shr	rbp, 1
	cmp	qword ptr [rdx + rbp*8], r8
	lea	rcx, [rbp + 1]
	cmovl	rdi, rcx
	cmovge	rsi, rbp
	cmp	rdi, rsi
	jb	.label_1975
.label_1970:
	test	eax, eax
	je	.label_1961
	cmp	rdi, -1
	je	.label_1961
	cmp	qword ptr [rdx + rdi*8], r8
	je	.label_1962
.label_1961:
	mov	rax, qword ptr [rsp + 0x30]
	add	r12, qword ptr [rax]
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, r13
	call	check_node_accept
	test	al, al
	je	.label_1963
	mov	rax, qword ptr [r15]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rax + rcx*8]
	test	rdx, rdx
	je	.label_1963
	mov	rax, qword ptr [rdx + 0x10]
	test	rax, rax
	jle	.label_1963
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rcx + rsi*8]
	dec	rax
	mov	rdx, qword ptr [rdx + 0x18]
	mov	esi, 0
	je	.label_1980
.label_1968:
	lea	rdi, [rsi + rax]
	shr	rdi, 1
	cmp	qword ptr [rdx + rdi*8], rcx
	lea	rbp, [rdi + 1]
	cmovl	rsi, rbp
	cmovge	rax, rdi
	cmp	rsi, rax
	jb	.label_1968
.label_1980:
	cmp	rsi, -1
	je	.label_1963
	mov	eax, 1
	cmp	qword ptr [rdx + rsi*8], rcx
	jne	.label_1963
	nop	dword ptr [rax]
.label_1962:
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_1967
	movsxd	rcx, eax
	add	rcx, r13
	mov	rax, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax + 0x18]
	mov	r8, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rax + r8*8]
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x10]
	mov	r9, r13
	call	check_dst_limits
	test	al, al
	jne	.label_1963
.label_1967:
	lea	rdi, [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x38]
	call	re_node_set_insert
	mov	ebp, 0xc
	test	al, al
	je	.label_1964
.label_1963:
	inc	rbx
	mov	rax, qword ptr [rsp + 0x28]
	cmp	rbx, qword ptr [rax + 0x28]
	jl	.label_1979
.label_1972:
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r13
	lea	rcx, [rsp + 0x40]
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	je	.label_1974
	jmp	.label_1964
.label_1966:
	xor	ebp, ebp
	jmp	.label_1964
.label_1969:
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
.label_1964:
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
.label_1973:
	mov	eax, ebp
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1971:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	ebp, 0xc
	jmp	.label_1973
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414e60

	.globl update_cur_sifted_state
	.type update_cur_sifted_state, @function
update_cur_sifted_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	r11, rcx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0x58], rbp
	mov	r13, rdi
	mov	r12, qword ptr [r13 + 0x98]
	mov	dword ptr [rsp + 0x6c], 0
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rbx, qword ptr [rax + rdx*8]
	lea	rax, [rbx + 8]
	test	rbx, rbx
	cmove	rax, rbx
	mov	qword ptr [rsp + 0x60], rax
	cmp	qword ptr [r11 + 8], 0
	je	.label_2001
	mov	qword ptr [rsp + 0x50], rdx
	test	rbx, rbx
	je	.label_2033
	mov	qword ptr [rsp + 0x38], rbx
	mov	dword ptr [rsp + 0x70], 0
	lea	rdi, [rsp + 0x70]
	mov	rsi, r12
	mov	qword ptr [rsp + 0x48], r12
	mov	rdx, r11
	mov	rbx, r11
	call	re_acquire_state
	mov	r14, rax
	mov	r12d, dword ptr [rsp + 0x70]
	test	r12d, r12d
	jne	.label_2038
	mov	r15, r14
	add	r15, 0x38
	cmp	qword ptr [r14 + 0x38], 0
	jne	.label_2004
	mov	rdi, qword ptr [rbx + 8]
	mov	qword ptr [r14 + 0x38], rdi
	mov	qword ptr [r14 + 0x40], 0
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r14 + 0x48], rax
	xor	ecx, ecx
	test	rax, rax
	mov	r12d, 0xc
	cmove	ecx, r12d
	mov	dword ptr [rsp + 0x70], ecx
	je	.label_2038
	cmp	qword ptr [rbx + 8], 0
	jle	.label_2004
	mov	r14, rbp
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_2039:
	mov	rax, qword ptr [rsp + 0x48]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r15
	call	re_node_set_merge
	test	eax, eax
	jne	.label_2019
	inc	rbp
	cmp	rbp, qword ptr [rbx + 8]
	jl	.label_2039
	mov	dword ptr [rsp + 0x70], 0
	mov	rbp, r14
.label_2004:
	mov	rdi, rbx
	mov	r14, rbx
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rdx, r15
	call	re_node_set_add_intersect
	mov	r12d, eax
	mov	dword ptr [rsp + 0x6c], r12d
	test	r12d, r12d
	mov	rbx, qword ptr [rsp + 0x38]
	jne	.label_1991
	mov	rax, qword ptr [rbp + 0x28]
	test	rax, rax
	mov	r11, r14
	mov	r12, qword ptr [rsp + 0x48]
	je	.label_2033
	mov	qword ptr [rsp + 0x30], r13
	mov	r10, qword ptr [rsp + 0x50]
	jle	.label_2037
	mov	rax, qword ptr [rsp + 0x30]
	mov	r13, qword ptr [rax + 0xd8]
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_2014:
	mov	rax, qword ptr [rbp + 0x30]
	mov	rax, qword ptr [rax + r15*8]
	lea	rax, [rax + rax*4]
	cmp	qword ptr [r13 + rax*8 + 0x10], r10
	jge	.label_1983
	cmp	qword ptr [r13 + rax*8 + 8], r10
	jl	.label_1983
	mov	rdx, qword ptr [r13 + rax*8]
	mov	rcx, qword ptr [r12]
	shl	rdx, 4
	mov	r8, qword ptr [rcx + rdx]
	mov	qword ptr [rsp + 0x40], r8
	cmp	qword ptr [r13 + rax*8 + 0x18], r10
	mov	rax, qword ptr [r11 + 8]
	jne	.label_1987
	test	rax, rax
	jle	.label_1983
	mov	qword ptr [rsp + 0x48], r12
	mov	rdx, qword ptr [r11 + 0x10]
	mov	r14, -1
	mov	rsi, -1
	nop	word ptr [rax + rax]
.label_2027:
	mov	rbp, qword ptr [rdx]
	mov	rdi, rbp
	shl	rdi, 4
	movzx	ebx, byte ptr [rcx + rdi + 8]
	cmp	ebx, 9
	je	.label_2013
	cmp	ebx, 8
	jne	.label_2015
	cmp	r8, qword ptr [rcx + rdi]
	je	.label_2020
	mov	rbp, rsi
.label_2020:
	mov	rsi, rbp
	jmp	.label_2015
	nop	word ptr [rax + rax]
.label_2013:
	cmp	r8, qword ptr [rcx + rdi]
	je	.label_2023
	mov	rbp, r14
.label_2023:
	mov	r14, rbp
.label_2015:
	add	rdx, 8
	dec	rax
	jne	.label_2027
	test	rsi, rsi
	mov	rbp, r11
	js	.label_2031
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rbx, r10
	call	sub_epsilon_src_nodes
	mov	r10, rbx
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1995
.label_2031:
	test	r14, r14
	mov	r11, rbp
	mov	r12, qword ptr [rsp + 0x48]
	js	.label_1983
	mov	r8, qword ptr [r11 + 8]
	test	r8, r8
	mov	ebp, 0
	jle	.label_1983
	nop	word ptr cs:[rax + rax]
.label_2043:
	mov	rax, qword ptr [r11 + 0x10]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [r12 + 0x38]
	lea	r9, [rsi + rsi*2]
	mov	rdx, qword ptr [rax + r9*8 + 8]
	test	rdx, rdx
	jle	.label_1981
	dec	rdx
	mov	rdi, qword ptr [rax + r9*8 + 0x10]
	mov	eax, 0
	je	.label_1992
	nop	word ptr [rax + rax]
.label_1999:
	lea	rbx, [rax + rdx]
	shr	rbx, 1
	cmp	qword ptr [rdi + rbx*8], r14
	lea	rcx, [rbx + 1]
	cmovl	rax, rcx
	cmovge	rdx, rbx
	cmp	rax, rdx
	jb	.label_1999
.label_1992:
	cmp	rax, -1
	je	.label_1981
	cmp	qword ptr [rdi + rax*8], r14
	je	.label_2010
.label_1981:
	mov	rax, qword ptr [r12 + 0x30]
	mov	rdx, qword ptr [rax + r9*8 + 8]
	test	rdx, rdx
	jle	.label_2011
	dec	rdx
	mov	rcx, qword ptr [rax + r9*8 + 0x10]
	mov	eax, 0
	je	.label_2022
	nop	word ptr [rax + rax]
.label_2021:
	lea	rdi, [rax + rdx]
	shr	rdi, 1
	cmp	qword ptr [rcx + rdi*8], r14
	lea	rbx, [rdi + 1]
	cmovl	rax, rbx
	cmovge	rdx, rdi
	cmp	rax, rdx
	jb	.label_2021
.label_2022:
	cmp	rax, -1
	je	.label_2011
	cmp	qword ptr [rcx + rax*8], r14
	je	.label_2010
.label_2011:
	mov	qword ptr [rsp + 0x48], r15
	mov	r15, r13
	mov	rdi, r12
	mov	r13, r12
	mov	rdx, r11
	mov	rcx, qword ptr [rsp + 0x60]
	mov	r12, r10
	mov	rbx, r11
	call	sub_epsilon_src_nodes
	mov	r10, r12
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1995
	dec	rbp
	mov	r8, qword ptr [rbx + 8]
	mov	r11, rbx
	mov	r12, r13
	mov	r13, r15
	mov	r15, qword ptr [rsp + 0x48]
.label_2010:
	inc	rbp
	cmp	rbp, r8
	jl	.label_2043
	jmp	.label_1983
.label_1987:
	test	rax, rax
	mov	ebp, 0
	jg	.label_2046
	jmp	.label_1983
	nop	dword ptr [rax]
.label_2044:
	mov	rcx, qword ptr [r12]
.label_2046:
	mov	rdx, qword ptr [r11 + 0x10]
	mov	rsi, qword ptr [rdx + rbp*8]
	mov	rdx, rsi
	shl	rdx, 4
	mov	edi, dword ptr [rcx + rdx + 8]
	mov	ebx, 0xfe
	and	edi, ebx
	or	edi, 1
	cmp	edi, 9
	jne	.label_1988
	cmp	r8, qword ptr [rcx + rdx]
	jne	.label_1988
	mov	r14, r15
	mov	r15, r13
	mov	rdi, r12
	mov	r13, r12
	mov	rdx, r11
	mov	rcx, qword ptr [rsp + 0x60]
	mov	r12, r10
	mov	rbx, r11
	call	sub_epsilon_src_nodes
	mov	r10, r12
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1995
	mov	rax, qword ptr [rbx + 8]
	mov	r11, rbx
	mov	r12, r13
	mov	r13, r15
	mov	r15, r14
	mov	r8, qword ptr [rsp + 0x40]
.label_1988:
	inc	rbp
	cmp	rbp, rax
	jl	.label_2044
	nop	word ptr [rax + rax]
.label_1983:
	inc	r15
	mov	rbp, qword ptr [rsp + 0x58]
	cmp	r15, qword ptr [rbp + 0x28]
	jl	.label_2014
.label_2037:
	mov	qword ptr [rsp + 0x50], r10
	mov	dword ptr [rsp + 0x6c], 0
	mov	r13, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x38]
.label_2033:
	lea	rdi, [rsp + 0x6c]
	mov	rsi, r12
	mov	rdx, r11
	call	re_acquire_state
	mov	rcx, qword ptr [rbp]
	mov	rdx, qword ptr [rsp + 0x50]
	mov	qword ptr [rcx + rdx*8], rax
	mov	r12d, dword ptr [rsp + 0x6c]
	test	r12d, r12d
	je	.label_2036
	jmp	.label_1991
.label_2001:
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rax + rdx*8], 0
.label_2036:
	test	rbx, rbx
	je	.label_1998
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + rdx*8]
	test	byte ptr [rax + 0x68], 0x40
	je	.label_1998
	mov	rbx, rbp
	mov	r11, qword ptr [r13 + 0x98]
	mov	rbp, qword ptr [r13 + 0xc8]
	xor	r15d, r15d
	test	rbp, rbp
	jle	.label_1986
	mov	rcx, qword ptr [r13 + 0xd8]
	xor	r15d, r15d
	mov	rax, rbp
	nop	word ptr cs:[rax + rax]
.label_1994:
	lea	rsi, [rax + r15]
	mov	rdi, rsi
	shr	rdi, 0x3f
	add	rdi, rsi
	sar	rdi, 1
	lea	rsi, [rdi + rdi*4]
	cmp	qword ptr [rcx + rsi*8 + 8], rdx
	cmovge	rax, rdi
	lea	rsi, [rdi + 1]
	cmovl	r15, rsi
	cmp	r15, rax
	jl	.label_1994
.label_1986:
	cmp	r15, rbp
	jge	.label_2016
	cmp	r15, -1
	je	.label_2016
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rcx, [r15 + r15*4]
	mov	qword ptr [rsp + 0x20], rcx
	cmp	qword ptr [rax + rcx*8 + 8], rdx
	jne	.label_2016
	mov	qword ptr [rsp + 0x70], 0
	mov	rax, qword ptr [rsp + 0x60]
	cmp	qword ptr [rax + 8], 0
	jle	.label_2024
	mov	rdi, r13
	mov	qword ptr [rsp + 0x30], rdi
	mov	qword ptr [rsp + 0x50], rdx
	mov	r10, rbx
	mov	qword ptr [rsp + 0x58], r10
	lea	rax, [r10 + 0x20]
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	shl	qword ptr [rsp + 0x20], 3
	xor	r13d, r13d
.label_2035:
	mov	qword ptr [rsp + 0x28], r13
	mov	rax, qword ptr [rsp + 0x60]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, qword ptr [rax + r13*8]
	mov	qword ptr [rsp + 0x48], rbp
	mov	rax, qword ptr [r11]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	eax, byte ptr [rax + rcx + 8]
	cmp	rbp, qword ptr [r10 + 0x10]
	jne	.label_2041
	cmp	eax, 4
	mov	rcx, rdx
	jne	.label_1985
	cmp	qword ptr [r10 + 0x18], rcx
	jne	.label_1989
	jmp	.label_1985
.label_2041:
	cmp	eax, 4
	mov	rcx, rdx
	jne	.label_1985
.label_1989:
	mov	rbx, qword ptr [rdi + 0xd8]
	add	rbx, qword ptr [rsp + 0x20]
	mov	r14, r15
	nop	
.label_2032:
	cmp	qword ptr [rbx], rbp
	jne	.label_1996
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x18]
	mov	r9, rdx
	sub	r9, rax
	add	r9, rcx
	cmp	rdx, rax
	jne	.label_2006
	mov	rax, qword ptr [r11 + 0x28]
	lea	rdx, [rbp + rbp*2]
	mov	rsi, qword ptr [rax + rdx*8 + 0x10]
	jmp	.label_2012
	nop	
.label_2006:
	lea	rsi, [rbp*8]
	add	rsi, qword ptr [r11 + 0x18]
.label_2012:
	cmp	r9, qword ptr [r10 + 0x18]
	jg	.label_1996
	mov	rax, qword ptr [r10]
	mov	rdx, qword ptr [rax + r9*8]
	test	rdx, rdx
	je	.label_1996
	mov	rax, qword ptr [rdx + 0x10]
	test	rax, rax
	jle	.label_1996
	mov	r12, r10
	mov	r8, qword ptr [rsi]
	dec	rax
	mov	r10, qword ptr [rdx + 0x18]
	mov	edx, 0
	je	.label_2030
	nop	word ptr [rax + rax]
.label_2034:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [r10 + rsi*8], r8
	lea	rbp, [rsi + 1]
	cmovl	rdx, rbp
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_2034
.label_2030:
	cmp	rdx, -1
	je	.label_2008
	cmp	qword ptr [r10 + rdx*8], r8
	jne	.label_2008
	mov	qword ptr [rsp + 0x40], r11
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x48]
	call	check_dst_limits
	test	al, al
	mov	r10, r12
	je	.label_2045
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x40]
	jmp	.label_1982
.label_2008:
	mov	r10, r12
	jmp	.label_1982
.label_2045:
	cmp	qword ptr [rsp + 0x38], 0
	jne	.label_1993
	mov	rax, qword ptr [r10 + 0x30]
	mov	qword ptr [rsp + 0xa0], rax
	movups	xmm0, xmmword ptr [r10]
	movups	xmm1, xmmword ptr [r10 + 0x10]
	movups	xmm2, xmmword ptr [r10 + 0x20]
	movaps	xmmword ptr [rsp + 0x90], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	rbx, qword ptr [r10 + 0x28]
	mov	qword ptr [rsp + 0x98], rbx
	test	rbx, rbx
	jle	.label_1997
	mov	rbp, r10
	mov	qword ptr [rsp + 0x90], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [rsp + 0xa0], rax
	test	rax, rax
	je	.label_2018
	mov	rsi, qword ptr [rbp + 0x30]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	mov	r10, rbp
	jmp	.label_1993
.label_1997:
	lea	rax, [rsp + 0x90]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
.label_1993:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rsp + 0x80], rax
	mov	rax, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x88], rax
	lea	rdi, [rsp + 0x90]
	mov	rsi, r14
	mov	rbx, r10
	call	re_node_set_insert
	mov	rdx, rbx
	mov	r12d, 0xc
	test	al, al
	mov	rax, qword ptr [rsp + 0x40]
	je	.label_2003
	mov	rbx, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rbx + rcx*8]
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, qword ptr [rsp + 0x30]
	lea	rsi, [rsp + 0x70]
	mov	r12, rax
	mov	rbp, rdx
	call	sift_states_backward
	mov	r10, rbp
	mov	r11, r12
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2003
	mov	rdi, qword ptr [r10 + 8]
	test	rdi, rdi
	mov	rcx, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x38], rbx
	je	.label_2002
	mov	r13, -1
	test	rcx, rcx
	lea	rbp, [rsp + 0xa8]
	js	.label_2009
	nop	dword ptr [rax]
.label_2042:
	mov	rsi, qword ptr [rdi + r13*8 + 8]
	mov	rdx, qword ptr [rbx + r13*8 + 8]
	test	rsi, rsi
	je	.label_2029
	test	rdx, rdx
	je	.label_2026
	mov	rbx, rdi
	add	rsi, 8
	add	rdx, 8
	mov	rdi, rbp
	call	re_node_set_init_union
	mov	r12d, eax
	mov	dword ptr [rsp + 0xc4], r12d
	test	r12d, r12d
	jne	.label_2003
	lea	rdi, [rsp + 0xc4]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, rbp
	call	re_acquire_state
	mov	qword ptr [rbx + r13*8 + 8], rax
	mov	rdi, qword ptr [rsp + 0xb8]
	call	free
	mov	rdi, rbx
	mov	r12d, dword ptr [rsp + 0xc4]
	test	r12d, r12d
	mov	rcx, qword ptr [rsp + 0x50]
	mov	r10, qword ptr [rsp + 0x58]
	mov	rbx, qword ptr [rsp + 0x38]
	je	.label_2026
	jmp	.label_2003
.label_2029:
	mov	qword ptr [rdi + r13*8 + 8], rdx
.label_2026:
	inc	r13
	cmp	r13, rcx
	jl	.label_2042
.label_2009:
	mov	r11, qword ptr [rsp + 0x40]
	mov	r13, qword ptr [rsp + 0x28]
.label_2002:
	mov	qword ptr [rsp + 0x38], rbx
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + rcx*8], rdx
	mov	r12, qword ptr [rsp + 0x98]
	test	r12, r12
	jle	.label_1984
	mov	rbp, r12
	dec	rbp
	mov	rax, qword ptr [rsp + 0xa0]
	mov	rdi, rbp
	mov	edx, 0
	je	.label_2000
	nop	dword ptr [rax + rax]
.label_2025:
	lea	rbx, [rdx + rdi]
	shr	rbx, 1
	cmp	qword ptr [rax + rbx*8], r14
	lea	rsi, [rbx + 1]
	cmovl	rdx, rsi
	cmovge	rdi, rbx
	cmp	rdx, rdi
	jb	.label_2025
.label_2000:
	cmp	qword ptr [rax + rdx*8], r14
	mov	rdi, rdx
	je	.label_2017
	mov	rdi, -1
.label_2017:
	test	rdi, rdi
	js	.label_1984
	cmp	r12, rdi
	jle	.label_1984
	mov	qword ptr [rsp + 0x98], rbp
	cmp	rbp, rdi
	jle	.label_1984
	dec	r12
	lea	rdi, [rdx + 1]
	cmp	r12, rdi
	mov	rbx, rdi
	cmovge	rbx, r12
	sub	rbx, rdx
	cmp	rbx, 4
	jb	.label_2028
	mov	r8, rbx
	and	r8, 0xfffffffffffffffc
	mov	r9, rbx
	and	r9, 0xfffffffffffffffc
	je	.label_2028
	mov	qword ptr [rsp + 0x58], r10
	mov	qword ptr [rsp + 0x40], r11
	cmp	r12, rdi
	mov	rsi, rdi
	cmovge	rsi, r12
	sub	rsi, rdx
	add	rsi, -4
	mov	r11, rsi
	shr	r11, 2
	bt	rsi, 2
	mov	r10d, 0
	jb	.label_2005
	movups	xmm0, xmmword ptr [rax + rdx*8 + 8]
	movups	xmm1, xmmword ptr [rax + rdx*8 + 0x18]
	movups	xmmword ptr [rax + rdx*8], xmm0
	movups	xmmword ptr [rax + rdx*8 + 0x10], xmm1
	mov	r10d, 4
.label_2005:
	test	r11, r11
	je	.label_1990
	cmp	r12, rdi
	cmovge	rdi, r12
	sub	rdi, rdx
	and	rdi, 0xfffffffffffffffc
	sub	rdi, r10
	add	r10, rdx
	lea	rsi, [rax + r10*8 + 0x38]
.label_2007:
	movups	xmm0, xmmword ptr [rsi - 0x30]
	movups	xmm1, xmmword ptr [rsi - 0x20]
	movups	xmmword ptr [rsi - 0x38], xmm0
	movups	xmmword ptr [rsi - 0x28], xmm1
	movups	xmm0, xmmword ptr [rsi - 0x10]
	movups	xmm1, xmmword ptr [rsi]
	movups	xmmword ptr [rsi - 0x18], xmm0
	movups	xmmword ptr [rsi - 8], xmm1
	add	rsi, 0x40
	add	rdi, -8
	jne	.label_2007
.label_1990:
	cmp	rbx, r9
	mov	r11, qword ptr [rsp + 0x40]
	mov	r10, qword ptr [rsp + 0x58]
	je	.label_1984
	add	rdx, r8
	nop	word ptr cs:[rax + rax]
.label_2028:
	mov	rsi, qword ptr [rax + rdx*8 + 8]
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	cmp	rdx, rbp
	jl	.label_2028
.label_1984:
	lea	rbx, [r14 + r14*4]
	shl	rbx, 3
	mov	rdi, qword ptr [rsp + 0x30]
	add	rbx, qword ptr [rdi + 0xd8]
.label_1982:
	mov	rbp, qword ptr [rsp + 0x48]
	nop	word ptr [rax + rax]
.label_1996:
	inc	r14
	cmp	byte ptr [rbx + 0x20], 0
	lea	rbx, [rbx + 0x28]
	jne	.label_2032
.label_1985:
	mov	rdx, rcx
	inc	r13
	xor	r12d, r12d
	mov	rax, qword ptr [rsp + 0x60]
	cmp	r13, qword ptr [rax + 8]
	jl	.label_2035
.label_2003:
	cmp	qword ptr [rsp + 0x70], 0
	je	.label_2040
	mov	rdi, qword ptr [rsp + 0xa0]
	call	free
.label_2040:
	mov	dword ptr [rsp + 0x6c], r12d
	test	r12d, r12d
	je	.label_1998
	jmp	.label_1991
.label_2016:
	mov	dword ptr [rsp + 0x6c], 0
.label_1998:
	xor	r12d, r12d
.label_1991:
	mov	eax, r12d
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1995:
	mov	dword ptr [rsp + 0x6c], r12d
	jmp	.label_1991
.label_2019:
	mov	dword ptr [rsp + 0x70], eax
.label_2038:
	mov	dword ptr [rsp + 0x6c], r12d
	jmp	.label_1991
.label_2024:
	mov	dword ptr [rsp + 0x6c], 0
	jmp	.label_1998
.label_2018:
	xorps	xmm0, xmm0
	lea	rax, [rsp + 0x90]
	movups	xmmword ptr [rax], xmm0
	mov	r12d, 0xc
	jmp	.label_2003
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x415950

	.globl re_node_set_add_intersect
	.type re_node_set_add_intersect, @function
re_node_set_add_intersect:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	rdx, qword ptr [r15 + 8]
	xor	eax, eax
	test	rdx, rdx
	je	.label_2053
	mov	r10, qword ptr [r14 + 8]
	test	r10, r10
	je	.label_2053
	lea	rax, [r10 + rdx]
	mov	rbx, qword ptr [r12]
	mov	rsi, qword ptr [r12 + 8]
	lea	rcx, [rsi + rax]
	cmp	rcx, rbx
	jle	.label_2065
	add	rbx, rax
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [rbx*8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2053
	lea	r8, [r12 + 0x10]
	mov	qword ptr [r12 + 0x10], rcx
	mov	qword ptr [r12], rbx
	mov	rsi, qword ptr [r12 + 8]
	mov	rdx, qword ptr [r15 + 8]
	mov	r10, qword ptr [r14 + 8]
	jmp	.label_2064
.label_2065:
	lea	r8, [r12 + 0x10]
.label_2064:
	lea	r9, [rdx + rsi]
	add	r9, r10
	dec	rsi
.label_2062:
	dec	rdx
	mov	rbx, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r14 + 0x10]
	mov	rdi, r10
.label_2056:
	lea	r10, [rdi - 1]
	mov	rax, qword ptr [rcx + rdi*8 - 8]
	nop	dword ptr [rax]
.label_2049:
	cmp	qword ptr [rbx + rdx*8], rax
	je	.label_2047
	jl	.label_2051
	test	rdx, rdx
	lea	rdx, [rdx - 1]
	jg	.label_2049
	jmp	.label_2054
	nop	word ptr cs:[rax + rax]
.label_2051:
	cmp	rdi, 2
	mov	rdi, r10
	jge	.label_2056
	jmp	.label_2054
	nop	dword ptr [rax + rax]
.label_2047:
	mov	rbx, qword ptr [r8]
	test	rsi, rsi
	js	.label_2055
	nop	dword ptr [rax + rax]
.label_2050:
	mov	rcx, qword ptr [rbx + rsi*8]
	cmp	rcx, rax
	jle	.label_2048
	test	rsi, rsi
	lea	rsi, [rsi - 1]
	jg	.label_2050
	jmp	.label_2055
.label_2048:
	test	rsi, rsi
	js	.label_2055
	cmp	rcx, rax
	je	.label_2057
	nop	
.label_2055:
	mov	qword ptr [rbx + r9*8 - 8], rax
	dec	r9
.label_2057:
	test	rdx, rdx
	jle	.label_2054
	cmp	rdi, 2
	jge	.label_2062
.label_2054:
	mov	rcx, qword ptr [r12 + 8]
	mov	r11, qword ptr [r15 + 8]
	mov	rdx, qword ptr [r14 + 8]
	lea	r14, [rcx + r11 - 1]
	add	r14, rdx
	mov	rax, r14
	sub	rax, r9
	lea	r10, [rax + 1]
	lea	rsi, [rax + rcx + 1]
	mov	qword ptr [r12 + 8], rsi
	test	rcx, rcx
	jle	.label_2060
	test	rax, rax
	js	.label_2060
	add	r11, rdx
	add	r11, rcx
	dec	rcx
	sub	r11, r9
	xor	edx, edx
.label_2061:
	mov	rdi, qword ptr [r8]
	lea	rax, [rdi + r11*8]
	nop	
.label_2052:
	mov	rsi, qword ptr [rdi + r14*8]
	mov	rbx, qword ptr [rdi + rcx*8]
	cmp	rsi, rbx
	jg	.label_2059
	mov	qword ptr [rax + rcx*8], rbx
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_2052
	jmp	.label_2058
.label_2059:
	dec	r14
	dec	r11
	lea	rax, [r10 + rcx]
	dec	r10
	mov	qword ptr [rdi + rax*8], rsi
	jne	.label_2061
	jmp	.label_2063
.label_2060:
	mov	rdi, qword ptr [r8]
.label_2058:
	mov	rdx, r10
.label_2063:
	lea	rsi, [rdi + r9*8]
	shl	rdx, 3
	call	memcpy
	xor	eax, eax
.label_2053:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415b20

	.globl sub_epsilon_src_nodes
	.type sub_epsilon_src_nodes, @function
sub_epsilon_src_nodes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x10], rcx
	mov	r12, rdx
	mov	r15, rsi
	mov	rcx, qword ptr [rdi + 0x38]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	qword ptr [rsp + 0x30], 0
	lea	rdx, [r15 + r15*2]
	mov	r9, qword ptr [rcx + rdx*8 + 8]
	test	r9, r9
	jle	.label_2073
	lea	rax, [rcx + rdx*8 + 8]
	mov	qword ptr [rsp + 0x18], rax
	lea	r14, [rcx + rdx*8 + 0x10]
	mov	qword ptr [rsp], rdx
	mov	qword ptr [rsp + 8], rcx
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_2074:
	mov	r11, qword ptr [r14]
	mov	rcx, qword ptr [r11 + r13*8]
	cmp	rcx, r15
	je	.label_2066
	mov	rdx, qword ptr [rdi]
	mov	rax, rcx
	shl	rax, 4
	test	byte ptr [rdx + rax + 8], 8
	je	.label_2066
	mov	rbp, qword ptr [rdi + 0x28]
	lea	r8, [rcx + rcx*2]
	mov	rcx, qword ptr [rbp + r8*8 + 0x10]
	mov	rsi, qword ptr [rcx]
	mov	r10, -1
	cmp	qword ptr [rbp + r8*8 + 8], 2
	jl	.label_2075
	mov	r10, qword ptr [rcx + 8]
.label_2075:
	test	r9, r9
	jle	.label_2083
	mov	rcx, r9
	dec	rcx
	mov	ebp, 0
	je	.label_2084
	nop	word ptr [rax + rax]
.label_2081:
	lea	rbx, [rbp + rcx]
	shr	rbx, 1
	cmp	qword ptr [r11 + rbx*8], rsi
	lea	rax, [rbx + 1]
	cmovl	rbp, rax
	cmovge	rcx, rbx
	cmp	rbp, rcx
	jb	.label_2081
.label_2084:
	cmp	rbp, -1
	je	.label_2083
	cmp	qword ptr [r11 + rbp*8], rsi
	je	.label_2068
.label_2083:
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	jle	.label_2068
	dec	rbp
	mov	rbx, qword ptr [r12 + 0x10]
	mov	ecx, 0
	je	.label_2070
	nop	word ptr cs:[rax + rax]
.label_2077:
	lea	rax, [rcx + rbp]
	shr	rax, 1
	cmp	qword ptr [rbx + rax*8], rsi
	lea	rdx, [rax + 1]
	cmovl	rcx, rdx
	cmovge	rbp, rax
	cmp	rcx, rbp
	jb	.label_2077
.label_2070:
	cmp	rcx, -1
	je	.label_2068
	cmp	qword ptr [rbx + rcx*8], rsi
	je	.label_2087
.label_2068:
	test	r10, r10
	jle	.label_2066
	test	r9, r9
	jle	.label_2072
	mov	rbp, r9
	dec	rbp
	mov	ecx, 0
	je	.label_2089
	nop	word ptr [rax + rax]
.label_2067:
	lea	rax, [rcx + rbp]
	shr	rax, 1
	cmp	qword ptr [r11 + rax*8], r10
	lea	rdx, [rax + 1]
	cmovl	rcx, rdx
	cmovge	rbp, rax
	cmp	rcx, rbp
	jb	.label_2067
.label_2089:
	cmp	rcx, -1
	je	.label_2072
	cmp	qword ptr [r11 + rcx*8], r10
	je	.label_2066
.label_2072:
	mov	rsi, qword ptr [r12 + 8]
	test	rsi, rsi
	jle	.label_2066
	dec	rsi
	mov	rbp, qword ptr [r12 + 0x10]
	mov	ecx, 0
	je	.label_2079
	nop	word ptr cs:[rax + rax]
.label_2085:
	lea	rax, [rcx + rsi]
	shr	rax, 1
	cmp	qword ptr [rbp + rax*8], r10
	lea	rdx, [rax + 1]
	cmovl	rcx, rdx
	cmovge	rsi, rax
	cmp	rcx, rsi
	jb	.label_2085
.label_2079:
	cmp	rcx, -1
	je	.label_2066
	cmp	qword ptr [rbp + rcx*8], r10
	jne	.label_2066
.label_2087:
	mov	rax, qword ptr [rdi + 0x38]
	mov	rbx, rdi
	lea	rdx, [rax + r8*8]
	lea	rdi, [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x10]
	call	re_node_set_add_intersect
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2071
	mov	rax, qword ptr [rsp + 0x18]
	mov	r9, qword ptr [rax]
	mov	rdi, rbx
	nop	dword ptr [rax]
.label_2066:
	inc	r13
	cmp	r13, r9
	jl	.label_2074
	test	r9, r9
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	jle	.label_2073
	lea	r8, [rsp + 0x30]
	mov	r9, qword ptr [rax + rcx*8 + 0x10]
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x30]
	lea	r11, [r10 - 1]
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_2080:
	test	r10, r10
	mov	rax, qword ptr [r9 + r13*8]
	jle	.label_2076
	test	r11, r11
	mov	rdx, r11
	mov	ecx, 0
	je	.label_2092
	nop	word ptr cs:[rax + rax]
.label_2088:
	lea	rdi, [rcx + rdx]
	shr	rdi, 1
	cmp	qword ptr [rsi + rdi*8], rax
	lea	rbx, [rdi + 1]
	cmovl	rcx, rbx
	cmovge	rdx, rdi
	cmp	rcx, rdx
	jb	.label_2088
.label_2092:
	cmp	rcx, -1
	je	.label_2076
	cmp	qword ptr [rsi + rcx*8], rax
	je	.label_2069
.label_2076:
	mov	r14, qword ptr [r12 + 8]
	test	r14, r14
	jle	.label_2069
	mov	r15, r14
	dec	r15
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rdi, r15
	mov	edx, 0
	je	.label_2082
	nop	dword ptr [rax + rax]
.label_2078:
	lea	rbx, [rdx + rdi]
	shr	rbx, 1
	cmp	qword ptr [rcx + rbx*8], rax
	lea	rbp, [rbx + 1]
	cmovl	rdx, rbp
	cmovge	rdi, rbx
	cmp	rdx, rdi
	jb	.label_2078
.label_2082:
	cmp	qword ptr [rcx + rdx*8], rax
	mov	rax, rdx
	je	.label_2093
	mov	rax, -1
.label_2093:
	test	rax, rax
	js	.label_2069
	cmp	r14, rax
	jle	.label_2069
	mov	qword ptr [r12 + 8], r15
	cmp	r15, rax
	jle	.label_2069
.label_2090:
	mov	rax, qword ptr [rcx + rdx*8 + 8]
	mov	qword ptr [rcx + rdx*8], rax
	inc	rdx
	cmp	rdx, qword ptr [r12 + 8]
	jl	.label_2090
	nop	word ptr cs:[rax + rax]
.label_2069:
	inc	r13
	mov	rax, qword ptr [rsp + 0x18]
	cmp	r13, qword ptr [rax]
	jl	.label_2080
	jmp	.label_2086
.label_2073:
	lea	r8, [rsp + 0x30]
.label_2086:
	mov	rdi, qword ptr [r8]
	call	free
	xor	ebp, ebp
.label_2091:
	mov	eax, ebp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2071:
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	jmp	.label_2091
	nop	
	.section	.text
	.align	32
	#Procedure 0x415e80

	.globl check_dst_limits
	.type check_dst_limits, @function
check_dst_limits:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x10], r8
	mov	qword ptr [rsp + 0x28], rcx
	mov	qword ptr [rsp + 8], rdx
	mov	r10, rsi
	mov	qword ptr [rsp + 0x20], rdi
	mov	rax, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rdi + 0xc8]
	xor	r14d, r14d
	test	rax, rax
	jle	.label_2094
	mov	rbp, qword ptr [rdi + 0xd8]
	xor	r14d, r14d
	mov	rdx, rax
	nop	dword ptr [rax]
.label_2102:
	lea	rsi, [rdx + r14]
	mov	rbx, rsi
	shr	rbx, 0x3f
	add	rbx, rsi
	sar	rbx, 1
	lea	rsi, [rbx + rbx*4]
	cmp	qword ptr [rbp + rsi*8 + 8], rcx
	cmovge	rdx, rbx
	lea	rsi, [rbx + 1]
	cmovl	r14, rsi
	cmp	r14, rdx
	jl	.label_2102
.label_2094:
	cmp	r14, rax
	jge	.label_2106
	mov	rsi, qword ptr [rdi + 0xd8]
	lea	rdx, [r14 + r14*4]
	cmp	qword ptr [rsi + rdx*8 + 8], rcx
	je	.label_2107
.label_2106:
	mov	r14, -1
.label_2107:
	xor	r12d, r12d
	test	rax, rax
	jle	.label_2100
	mov	rbp, qword ptr [rdi + 0xd8]
	xor	r12d, r12d
	mov	rdx, rax
	nop	
.label_2104:
	lea	rsi, [rdx + r12]
	mov	rbx, rsi
	shr	rbx, 0x3f
	add	rbx, rsi
	sar	rbx, 1
	lea	rsi, [rbx + rbx*4]
	cmp	qword ptr [rbp + rsi*8 + 8], r9
	cmovge	rdx, rbx
	lea	rsi, [rbx + 1]
	cmovl	r12, rsi
	cmp	r12, rdx
	jl	.label_2104
.label_2100:
	cmp	r12, rax
	jge	.label_2101
	mov	rax, qword ptr [rdi + 0xd8]
	lea	rdx, [r12 + r12*4]
	cmp	qword ptr [rax + rdx*8 + 8], r9
	je	.label_2103
.label_2101:
	mov	r12, -1
.label_2103:
	cmp	qword ptr [r10 + 8], 0
	jle	.label_2105
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_2095:
	mov	rax, qword ptr [rdi + 0xd8]
	mov	rdx, qword ptr [r10 + 0x10]
	mov	rbp, qword ptr [rdx + r15*8]
	lea	rsi, [rbp + rbp*4]
	mov	rdx, qword ptr [rax + rsi*8]
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rbx]
	shl	rdx, 4
	mov	rdx, qword ptr [rbx + rdx]
	mov	r11, qword ptr [rax + rsi*8 + 0x10]
	mov	r13d, 0xffffffff
	cmp	r11, rcx
	jle	.label_2099
	mov	ebx, 0xffffffff
	jmp	.label_2096
	nop	word ptr cs:[rax + rax]
.label_2099:
	mov	rsi, qword ptr [rax + rsi*8 + 0x18]
	mov	ebx, 1
	cmp	rsi, rcx
	jl	.label_2096
	cmp	r11, rcx
	sete	bl
	movzx	r8d, bl
	cmp	rsi, rcx
	sete	bl
	movzx	esi, bl
	add	esi, esi
	xor	ebx, ebx
	or	esi, r8d
	je	.label_2096
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x18], rdx
	mov	r8, r14
	mov	rbx, r9
	mov	rbp, r10
	call	check_dst_limits_calc_pos_1
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r10, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9, rbx
	mov	ebx, eax
	mov	rax, qword ptr [r10 + 0x10]
	mov	rbp, qword ptr [rax + r15*8]
	mov	rax, qword ptr [rdi + 0xd8]
	lea	rsi, [rbp + rbp*4]
	mov	r11, qword ptr [rax + rsi*8 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_2096:
	cmp	r11, r9
	jg	.label_2097
	lea	rsi, [rbp + rbp*4]
	mov	rax, qword ptr [rax + rsi*8 + 0x18]
	mov	r13d, 1
	cmp	rax, r9
	jl	.label_2097
	cmp	r11, r9
	mov	esi, ebx
	sete	bl
	movzx	ebp, bl
	mov	ebx, esi
	cmp	rax, r9
	sete	al
	movzx	esi, al
	add	esi, esi
	xor	r13d, r13d
	or	esi, ebp
	je	.label_2097
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, r12
	mov	rbp, r9
	mov	r13, r10
	call	check_dst_limits_calc_pos_1
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r10, r13
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9, rbp
	mov	r13d, eax
	nop	
.label_2097:
	cmp	r13d, ebx
	mov	al, 1
	jne	.label_2098
	inc	r15
	cmp	r15, qword ptr [r10 + 8]
	jl	.label_2095
	xor	eax, eax
	jmp	.label_2098
.label_2105:
	xor	eax, eax
.label_2098:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4160f0

	.globl check_dst_limits_calc_pos_1
	.type check_dst_limits_calc_pos_1, @function
check_dst_limits_calc_pos_1:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	rbx, rdx
	mov	r13d, esi
	mov	qword ptr [rsp + 0x38], rdi
	mov	rbp, qword ptr [rdi + 0x98]
	mov	rax, qword ptr [rbp + 0x30]
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	jle	.label_2120
	lea	rdx, [rax + rcx*8 + 8]
	mov	qword ptr [rsp + 0x20], rdx
	lea	rax, [rax + rcx*8 + 0x10]
	mov	qword ptr [rsp + 0x28], rax
	mov	eax, 1
	mov	cl, bl
	shl	rax, cl
	mov	qword ptr [rsp + 0x18], rax
	xor	rax, 0xffff
	mov	qword ptr [rsp + 0x10], rax
	mov	eax, r13d
	and	eax, 2
	mov	dword ptr [rsp + 8], eax
	shr	eax, 1
	cmp	rbx, 0x3f
	setg	cl
	or	cl, al
	mov	byte ptr [rsp + 0xf], cl
	mov	eax, r13d
	and	eax, 1
	mov	dword ptr [rsp + 4], eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_2111:
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	r12, qword ptr [rax + r15*8]
	mov	rax, qword ptr [rbp]
	mov	rdx, r12
	shl	rdx, 4
	lea	rcx, [rax + rdx]
	movzx	eax, byte ptr [rax + rdx + 8]
	cmp	eax, 9
	je	.label_2114
	cmp	eax, 8
	je	.label_2109
	cmp	eax, 4
	jne	.label_2110
	cmp	qword ptr [rsp + 0x40], -1
	je	.label_2110
	mov	rax, qword ptr [rsp + 0x40]
	lea	r14, [rax + rax*4]
	shl	r14, 3
	mov	rax, qword ptr [rsp + 0x38]
	add	r14, qword ptr [rax + 0xd8]
.label_2108:
	cmp	qword ptr [r14], r12
	jne	.label_2116
	cmp	rbx, 0x3f
	jg	.label_2121
	movzx	eax, word ptr [r14 + 0x22]
	test	qword ptr [rsp + 0x18], rax
	je	.label_2116
.label_2121:
	mov	rax, qword ptr [rbp + 0x28]
	lea	rcx, [r12 + r12*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	cmp	rcx, qword ptr [rsp + 0x30]
	je	.label_2113
	mov	rdi, qword ptr [rsp + 0x38]
	mov	esi, r13d
	mov	rdx, rbx
	mov	r8, qword ptr [rsp + 0x40]
	call	check_dst_limits_calc_pos_1
	mov	ecx, eax
	test	ecx, ecx
	je	.label_2117
	mov	eax, 0xffffffff
	cmp	ecx, -1
	je	.label_2119
	cmp	rbx, 0x3f
	jg	.label_2116
	jmp	.label_2112
.label_2117:
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_2112
	xor	eax, eax
	cmp	dword ptr [rsp + 8], 0
	je	.label_2116
	jmp	.label_2119
.label_2112:
	movzx	eax, word ptr [r14 + 0x22]
	mov	rcx, qword ptr [rsp + 0x10]
	and	eax, ecx
	mov	word ptr [r14 + 0x22], ax
	nop	dword ptr [rax]
.label_2116:
	cmp	byte ptr [r14 + 0x20], 0
	lea	r14, [r14 + 0x28]
	jne	.label_2108
	jmp	.label_2110
	nop	word ptr cs:[rax + rax]
.label_2114:
	cmp	dword ptr [rsp + 8], 0
	je	.label_2110
	xor	eax, eax
	jmp	.label_2118
	nop	dword ptr [rax + rax]
.label_2109:
	cmp	dword ptr [rsp + 4], 0
	je	.label_2110
	mov	eax, 0xffffffff
.label_2118:
	cmp	qword ptr [rcx], rbx
	je	.label_2119
.label_2110:
	inc	r15
	mov	rax, qword ptr [rsp + 0x20]
	cmp	r15, qword ptr [rax]
	jl	.label_2111
.label_2120:
	shr	r13d, 1
	and	r13d, 1
	jmp	.label_2115
.label_2113:
	shl	r13d, 0x1f
	sar	r13d, 0x1f
.label_2115:
	mov	eax, r13d
.label_2119:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x416300

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
	jne	.label_2123
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_2122
	test	cl, cl
	jne	.label_2122
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_2122
.label_2123:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_2122
	call	__errno_location
	mov	dword ptr [rax], 0
.label_2122:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416360

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_2124:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	edx, 0x2f
	je	.label_2124
	xor	r8d, r8d
	mov	rax, rdi
	jmp	.label_2128
	nop	word ptr cs:[rax + rax]
.label_2126:
	mov	dl, byte ptr [rax + 1]
	inc	rax
	mov	r8b, cl
.label_2128:
	mov	cl, 1
	movzx	esi, dl
	cmp	esi, 0x2f
	je	.label_2126
	test	dl, dl
	je	.label_2125
	mov	cl, r8b
	and	cl, 1
	je	.label_2127
	xor	r8d, r8d
.label_2127:
	test	cl, cl
	cmovne	rdi, rax
	mov	cl, r8b
	jmp	.label_2126
.label_2125:
	mov	rax, rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4163d0

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_2129:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_2130
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_2129
.label_2130:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x416400

	.globl fd_safer_flag
	.type fd_safer_flag, @function
fd_safer_flag:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	cmp	ebx, 2
	ja	.label_2131
	mov	edi, ebx
	call	dup_safer_flag
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_2132
.label_2131:
	mov	eax, ebx
.label_2132:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416450

	.globl dup_safer_flag
	.type dup_safer_flag, @function
dup_safer_flag:
	and	esi, 0x80000
	mov	eax, 0x406
	cmovne	esi, eax
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416470

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_2134
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_2135
	cmp	byte ptr [rax + 1], 0
	je	.label_2133
.label_2135:
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_2134
.label_2133:
	xor	ebx, ebx
.label_2134:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x4164b0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_6
	cmp	byte ptr [rcx], 0
	je	.label_2136
	mov	rax, rcx
.label_2136:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4164e0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop	
	.section	.text
	.align	32
	#Procedure 0x4164f0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_2137
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_2139
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_2137
.label_2139:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_2137
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_2138
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_2138:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_2137:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x416570

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_2158
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_2158:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	cmp	esi, 0xb
	ja	.label_2144
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_2159
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_2140
	test	esi, esi
	jne	.label_2144
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_2145
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_2147
.label_2144:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_2149
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_2140
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_2154
.label_2159:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_2152
.label_2140:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_2157
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_2142
.label_2157:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_2142:
	mov	edx, dword ptr [rax]
.label_2148:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
.label_2152:
	mov	ebp, eax
.label_2146:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_2154:
	cmp	eax, 6
	jne	.label_2149
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_2150
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_2153
.label_2149:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_2143
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_2160
.label_2145:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_2147:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	jmp	.label_2148
.label_2150:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_2153:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_2151
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_2156
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_2156
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_2146
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_2155
.label_2156:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_2146
.label_2143:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_2160:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_2152
.label_2151:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_2155:
	test	al, al
	je	.label_2146
	test	ebp, ebp
	js	.label_2146
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_2141
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_2146
.label_2141:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_2146
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416850

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_2161
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_2161
	test	byte ptr [rbx + 1], 1
	je	.label_2161
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_2161:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section .text
	.align	32
	#Procedure 0x416890

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]