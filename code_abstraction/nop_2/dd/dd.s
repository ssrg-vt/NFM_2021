	.section	.text
	hlt	
	nop	word ptr [rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr [rax + rax]
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d80

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_7
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.22
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_7:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4020d0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.39
	nop	
.label_10:
	mov	edi, OFFSET FLAT:.str.25
	call	strcmp
	test	eax, eax
	je	.label_9
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_10
.label_9:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:.str.25
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.47
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17_0
	mov	ecx, OFFSET FLAT:.str.18_0
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_8
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.25
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18_0
	mov	ecx, OFFSET FLAT:.str.25
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.54
	mov	ecx, OFFSET FLAT:.str_0
	cmove	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rdx
	mov	rdx, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4021f0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xc0
	mov	rbx, rsi
	mov	r14d, edi
	call	install_signal_handlers
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.27
	mov	esi, OFFSET FLAT:.str.28
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.27
	call	textdomain
	mov	edi, OFFSET FLAT:maybe_close_stdout
	call	atexit
	call	getpagesize
	cdqe	
	mov	qword ptr [word ptr [rip + page_size]],  rax
	mov	r8,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp + 0x20], 0
	mov	qword ptr [word ptr [rsp + 24]], OFFSET FLAT:.str.31
	mov	qword ptr [word ptr [rsp + 16]], OFFSET FLAT:.str.30
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:.str.29
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:usage
	xor	ebp, ebp
	mov	edx, OFFSET FLAT:.str.25
	mov	ecx, OFFSET FLAT:.str.27
	mov	r9d, 1
	xor	eax, eax
	mov	edi, r14d
	mov	rsi, rbx
	call	parse_gnu_standard_options_only
	mov	byte ptr [byte ptr [rip + close_stdout_required]],  1
	nop	word ptr [rax + rax]
.label_21:
	mov	byte ptr [byte ptr [rbp + trans_table]],  bpl
	inc	rbp
	cmp	rbp, 0x100
	jne	.label_21
	mov	edi, r14d
	mov	rsi, rbx
	call	scanargs
	call	apply_translations
	mov	rsi,  qword ptr [word ptr [rip + input_file]]
	test	rsi, rsi
	je	.label_24
	mov	edx,  dword ptr [dword ptr [rip + input_flags]]
	xor	edi, edi
	xor	ecx, ecx
	call	ifd_reopen
	test	eax, eax
	jns	.label_28
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + input_file]]
	jmp	.label_14
.label_24:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [word ptr [rip + input_file]],  rax
	mov	esi,  dword ptr [dword ptr [rip + input_flags]]
	xor	edi, edi
	mov	rdx, rax
	call	set_fd_flags
.label_28:
	xor	ebp, ebp
	xor	edi, edi
	xor	esi, esi
	mov	edx, 1
	call	lseek
	test	rax, rax
	setns	byte ptr [byte ptr [rip + input_seekable]]
	cmovs	rax, rbp
	mov	qword ptr [word ptr [rip + input_offset]],  rax
	call	__errno_location
	mov	r14, rax
	mov	eax, dword ptr [r14]
	mov	dword ptr [dword ptr [rip + input_seek_errno]],  eax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	test	rsi, rsi
	je	.label_26
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	mov	ecx, eax
	shr	ecx, 6
	mov	edx, ecx
	not	edx
	and	edx, 0x40
	and	ecx, 0x80
	mov	rdi,  qword ptr [word ptr [rip + seek_records]]
	cmp	rdi, 0
	sete	bl
	movzx	ebx, bl
	shl	ebx, 9
	test	ah, 2
	cmovne	ebx, ebp
	or	ecx,  dword ptr [dword ptr [rip + output_flags]]
	or	ebx, edx
	or	ebx, ecx
	cmp	rdi, 0
	je	.label_13
	mov	edx, ebx
	or	edx, 2
	mov	edi, 1
	mov	ecx, 0x1b6
	call	ifd_reopen
	test	eax, eax
	jns	.label_25
.label_13:
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	or	ebx, 1
	mov	edi, 1
	mov	ecx, 0x1b6
	mov	edx, ebx
	call	ifd_reopen
	test	eax, eax
	js	.label_30
.label_25:
	mov	rcx,  qword ptr [word ptr [rip + seek_records]]
	test	rcx, rcx
	je	.label_12
	test	byte ptr [byte ptr [rip + label_17]],  2
	jne	.label_12
	mov	rbx,  qword ptr [word ptr [rip + output_blocksize]]
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_18
	imul	rbx, rcx
	add	rbx,  qword ptr [word ptr [rip + seek_bytes]]
	mov	rdi, rbx
	call	iftruncate
	test	eax, eax
	je	.label_12
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsp + 0x30]
	mov	edi, 1
	call	__fstat
	test	eax, eax
	jne	.label_27
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x48]
	cmp	eax, 0x8000
	je	.label_29
	cmp	eax, 0x4000
	jne	.label_12
.label_29:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	edi, 4
	call	quotearg_style
	mov	r8, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r14
	mov	rcx, rbx
	call	nl_error
.label_26:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.34
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [word ptr [rip + output_file]],  rax
	mov	esi,  dword ptr [dword ptr [rip + output_flags]]
	mov	edi, 1
	mov	rdx, rax
	call	set_fd_flags
.label_12:
	call	gethrxtime
	mov	qword ptr [word ptr [rip + start_time]],  rax
	add	rax, 0x3b9aca00
	mov	qword ptr [word ptr [rip + next_time]],  rax
	call	dd_copy
	mov	ebx, eax
	mov	rcx,  qword ptr [word ptr [rip + max_bytes]]
	mov	al,  byte ptr [byte ptr [rip + i_nocache]]
	or	rcx,  qword ptr [word ptr [rip + max_records]]
	je	.label_16
	cmp	byte ptr [byte ptr [rip + i_nocache_eof]],  0
	jne	.label_19
	xor	al, 1
	test	al, 1
	jne	.label_22
.label_19:
	xor	edi, edi
	xor	esi, esi
	call	invalidate_cache
.label_22:
	cmp	byte ptr [byte ptr [rip + o_nocache_eof]],  0
	jne	.label_15
	mov	al,  byte ptr [byte ptr [rip + o_nocache]]
	xor	al, 1
	test	al, 1
	jne	.label_23
.label_15:
	mov	edi, 1
	xor	esi, esi
	call	invalidate_cache
	jmp	.label_23
.label_16:
	test	al, 1
	je	.label_11
	xor	edi, edi
	xor	esi, esi
	call	invalidate_cache
	test	al, al
	jne	.label_11
	mov	ebx, dword ptr [r14]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdx,  qword ptr [word ptr [rip + input_file]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	mov	ebx, 1
.label_11:
	movzx	eax,  byte ptr [byte ptr [rip + o_nocache]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_23
	mov	edi, 1
	xor	esi, esi
	call	invalidate_cache
	test	al, al
	jne	.label_23
	mov	ebx, dword ptr [r14]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdx,  qword ptr [word ptr [rip + output_file]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	mov	ebx, 1
.label_23:
	call	finish_up
	mov	eax, ebx
	add	rsp, 0xc0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_30:
	mov	ebx, dword ptr [r14]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
	jmp	.label_20
.label_18:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + seek_records]]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	r8, rbx
	call	nl_error
.label_27:
	mov	ebx, dword ptr [r14]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
.label_20:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
.label_14:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026b0

	.globl install_signal_handlers
	.type install_signal_handlers, @function
install_signal_handlers:
	push	rbx
	sub	rsp, 0xa0
	mov	edi, OFFSET FLAT:.str.9_0
	call	getenv
	mov	rbx, rax
	mov	edi, OFFSET FLAT:caught_signals
	call	sigemptyset
	test	rbx, rbx
	jne	.label_38
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xa
	call	sigaddset
.label_38:
	lea	rdx, [rsp + 8]
	mov	edi, 2
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 8], 1
	je	.label_40
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 2
	call	sigaddset
.label_40:
	movups	xmm0,  xmmword ptr [word ptr [rip + label_31]]
	movups	xmmword ptr [rsp + 0x80], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_32]]
	movups	xmmword ptr [rsp + 0x70], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_33]]
	movups	xmmword ptr [rsp + 0x60], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_34]]
	movups	xmmword ptr [rsp + 0x50], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_35]]
	movups	xmmword ptr [rsp + 0x40], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_36]]
	movups	xmmword ptr [rsp + 0x30], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_37]]
	movups	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + caught_signals]]
	movups	xmmword ptr [rsp + 0x10], xmm0
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xa
	call	sigismember
	test	eax, eax
	je	.label_41
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:siginfo_handler
	mov	dword ptr [rsp + 0x90], 0
	lea	rsi, [rsp + 8]
	mov	edi, 0xa
	xor	edx, edx
	call	sigaction
.label_41:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 2
	call	sigismember
	test	eax, eax
	je	.label_39
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:interrupt_handler
	mov	dword ptr [rsp + 0x90], 0xc0000000
	lea	rsi, [rsp + 8]
	mov	edi, 2
	xor	edx, edx
	call	sigaction
.label_39:
	add	rsp, 0xa0
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4027f0

	.globl maybe_close_stdout
	.type maybe_close_stdout, @function
maybe_close_stdout:
	push	rax
	mov	al,  byte ptr [byte ptr [rip + close_stdout_required]]
	and	al, 1
	je	.label_42
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_43
	pop	rax
	ret	
.label_42:
	pop	rax
	jmp	close_stdout
.label_43:
	mov	edi, 1
	call	_exit
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402820

	.globl scanargs
	.type scanargs, @function
scanargs:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbx, rsi
	movsxd	r14,  dword ptr [dword ptr [rip + optind]]
	mov	r12, -1
	xor	eax, eax
	cmp	r14d, edi
	mov	esi, 0
	jge	.label_52
	movsxd	r15, edi
	mov	r12, -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	nop	
.label_62:
	mov	r13, qword ptr [rbx + r14*8]
	mov	esi, 0x3d
	mov	rdi, r13
	call	strchr
	mov	rbp, rax
	test	rbp, rbp
	je	.label_71
	inc	rbp
	mov	esi, OFFSET FLAT:.str.57
	mov	rdi, r13
	call	operand_is
	test	al, al
	je	.label_76
	mov	qword ptr [word ptr [rip + input_file]],  rbp
	jmp	.label_53
	nop	dword ptr [rax]
.label_76:
	mov	esi, OFFSET FLAT:.str.58
	mov	rdi, r13
	call	operand_is
	test	al, al
	je	.label_67
	mov	qword ptr [word ptr [rip + output_file]],  rbp
	jmp	.label_53
	nop	dword ptr [rax]
.label_67:
	mov	esi, OFFSET FLAT:.str.59
	mov	rdi, r13
	call	operand_is
	test	al, al
	je	.label_85
	mov	esi, OFFSET FLAT:conversions
	xor	edx, edx
	mov	ecx, OFFSET FLAT:.str.60
	mov	rdi, rbp
	call	parse_symbols
	or	dword ptr [dword ptr [rip + conversions_mask]],  eax
	jmp	.label_53
.label_85:
	mov	esi, OFFSET FLAT:.str.61
	mov	rdi, r13
	call	operand_is
	test	al, al
	je	.label_46
	mov	esi, OFFSET FLAT:flags
	xor	edx, edx
	mov	ecx, OFFSET FLAT:.str.62
	mov	rdi, rbp
	call	parse_symbols
	or	dword ptr [dword ptr [rip + input_flags]],  eax
	jmp	.label_53
.label_46:
	mov	esi, OFFSET FLAT:.str.63
	mov	rdi, r13
	call	operand_is
	test	al, al
	je	.label_56
	mov	esi, OFFSET FLAT:flags
	xor	edx, edx
	mov	ecx, OFFSET FLAT:.str.64
	mov	rdi, rbp
	call	parse_symbols
	or	dword ptr [dword ptr [rip + output_flags]],  eax
	jmp	.label_53
.label_56:
	mov	esi, OFFSET FLAT:.str.65
	mov	rdi, r13
	call	operand_is
	test	al, al
	je	.label_65
	mov	esi, OFFSET FLAT:statuses
	mov	edx, 1
	mov	ecx, OFFSET FLAT:.str.66
	mov	rdi, rbp
	call	parse_symbols
	mov	dword ptr [dword ptr [rip + status_level]],  eax
	jmp	.label_53
.label_65:
	mov	dword ptr [rsp + 0x34], 0
	mov	rdi, rbp
	lea	rsi, [rsp + 0x34]
	call	parse_integer
	mov	qword ptr [rsp + 8], rax
	mov	esi, OFFSET FLAT:.str.67
	mov	rdi, r13
	call	operand_is
	test	al, al
	je	.label_79
	mov	qword ptr [rsp + 0x10], r12
	mov	rax,  qword ptr [word ptr [rip + page_size]]
	add	rax, rax
	mov	r12, -4
	sub	r12, rax
	movabs	rax, 0x7fffffffffffffff
	cmp	r12, rax
	cmovae	r12, rax
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [word ptr [rip + input_blocksize]],  rcx
	mov	eax, 1
	jmp	.label_47
.label_79:
	mov	esi, OFFSET FLAT:.str.68
	mov	rdi, r13
	call	operand_is
	test	al, al
	je	.label_45
	mov	qword ptr [rsp + 0x10], r12
	mov	r12,  qword ptr [word ptr [rip + page_size]]
	neg	r12
	movabs	rax, 0x7fffffffffffffff
	cmp	r12, rax
	cmovae	r12, rax
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [word ptr [rip + output_blocksize]],  rcx
	mov	eax, 1
	jmp	.label_47
.label_45:
	mov	esi, OFFSET FLAT:.str.69
	mov	rdi, r13
	call	operand_is
	test	al, al
	je	.label_86
	mov	qword ptr [rsp + 0x10], r12
	mov	rax,  qword ptr [word ptr [rip + page_size]]
	add	rax, rax
	mov	r12, -4
	sub	r12, rax
	movabs	rax, 0x7fffffffffffffff
	cmp	r12, rax
	cmovae	r12, rax
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, rcx
	mov	qword ptr [rsp + 0x28], rax
	mov	eax, 1
	jmp	.label_47
.label_86:
	mov	qword ptr [rsp + 0x10], r12
	mov	esi, OFFSET FLAT:.str.70
	mov	rdi, r13
	call	operand_is
	test	al, al
	je	.label_77
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [word ptr [rip + conversion_blocksize]],  rcx
	mov	r12, -1
	mov	eax, 1
	jmp	.label_47
.label_77:
	mov	esi, OFFSET FLAT:.str.71
	mov	rdi, r13
	call	operand_is
	mov	r12, -1
	test	al, al
	je	.label_82
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, rcx
	mov	qword ptr [rsp + 0x20], rax
	xor	eax, eax
	jmp	.label_47
.label_82:
	mov	esi, OFFSET FLAT:.str.72
	mov	rdi, r13
	call	operand_is
	test	al, al
	je	.label_90
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, rcx
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	jmp	.label_47
.label_90:
	mov	esi, OFFSET FLAT:.str.73
	mov	rdi, r13
	call	operand_is
	test	al, al
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x10], rcx
	mov	eax, 0
	je	.label_71
.label_47:
	cmp	rcx, rax
	jb	.label_78
	cmp	r12, rcx
	jb	.label_57
	mov	eax, dword ptr [rsp + 0x34]
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x10]
	jne	.label_58
	nop	dword ptr [rax]
.label_53:
	inc	r14
	cmp	r14, r15
	jl	.label_62
	mov	rax, qword ptr [rsp + 0x28]
	test	rax, rax
	je	.label_64
	mov	qword ptr [word ptr [rip + output_blocksize]],  rax
	mov	qword ptr [word ptr [rip + input_blocksize]],  rax
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rsp + 0x20]
	jmp	.label_69
.label_64:
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rsp + 0x20]
.label_52:
	or	byte ptr [byte ptr [rip + label_17]],  8
	cmp	qword ptr [word ptr [rip + input_blocksize]],  0
	jne	.label_75
	mov	qword ptr [word ptr [rip + input_blocksize]],  0x200
.label_75:
	cmp	qword ptr [word ptr [rip + output_blocksize]],  0
	jne	.label_69
	mov	qword ptr [word ptr [rip + output_blocksize]],  0x200
.label_69:
	cmp	qword ptr [word ptr [rip + conversion_blocksize]],  0
	jne	.label_81
	and	byte ptr [byte ptr [rip + conversions_mask]],  0xe7
.label_81:
	mov	ecx,  dword ptr [dword ptr [rip + input_flags]]
	test	ecx, 0x101000
	je	.label_84
	or	ecx, 0x101000
	mov	dword ptr [dword ptr [rip + input_flags]],  ecx
.label_84:
	mov	ecx,  dword ptr [dword ptr [rip + output_flags]]
	test	cl, 1
	jne	.label_88
	mov	edx,  dword ptr [dword ptr [rip + input_flags]]
	test	dl, 0x10
	jne	.label_51
	test	cl, 0xc
	jne	.label_48
	test	rax, rax
	je	.label_50
	and	edx, 8
	je	.label_50
	xor	edx, edx
	div	qword ptr [word ptr [rip + input_blocksize]]
	mov	qword ptr [word ptr [rip + skip_records]],  rax
	mov	qword ptr [word ptr [rip + skip_bytes]],  rdx
	jmp	.label_54
.label_50:
	test	rax, rax
	je	.label_54
	mov	qword ptr [word ptr [rip + skip_records]],  rax
.label_54:
	cmp	r12, -1
	je	.label_59
	mov	eax,  dword ptr [dword ptr [rip + input_flags]]
	and	eax, 4
	je	.label_59
	xor	edx, edx
	mov	rax, r12
	div	qword ptr [word ptr [rip + input_blocksize]]
	mov	qword ptr [word ptr [rip + max_records]],  rax
	mov	qword ptr [word ptr [rip + max_bytes]],  rdx
	jmp	.label_61
.label_59:
	cmp	r12, -1
	je	.label_61
	mov	qword ptr [word ptr [rip + max_records]],  r12
.label_61:
	test	rsi, rsi
	je	.label_72
	mov	eax,  dword ptr [dword ptr [rip + output_flags]]
	and	eax, 0x10
	je	.label_72
	xor	edx, edx
	mov	rax, rsi
	div	qword ptr [word ptr [rip + output_blocksize]]
	mov	qword ptr [word ptr [rip + seek_records]],  rax
	mov	qword ptr [word ptr [rip + seek_bytes]],  rdx
	jmp	.label_74
.label_72:
	test	rsi, rsi
	je	.label_74
	mov	qword ptr [word ptr [rip + seek_records]],  rsi
.label_74:
	test	byte ptr [byte ptr [rip + label_17]],  8
	jne	.label_68
	mov	ecx,  dword ptr [dword ptr [rip + input_flags]]
	test	cl, 1
	jne	.label_80
	mov	al, 1
	cmp	qword ptr [word ptr [rip + skip_records]],  0
	jne	.label_44
	mov	rdx,  qword ptr [word ptr [rip + max_records]]
	inc	rdx
	cmp	rdx, 1
	ja	.label_44
	or	ecx,  dword ptr [dword ptr [rip + output_flags]]
	and	ecx, 0x4000
	shr	ecx, 0xe
	mov	al, cl
	jmp	.label_44
.label_68:
	xor	eax, eax
	jmp	.label_44
.label_80:
	xor	eax, eax
.label_44:
	mov	byte ptr [byte ptr [rip + warn_partial_read]],  al
	mov	ebp,  dword ptr [dword ptr [rip + input_flags]]
	mov	eax, OFFSET FLAT:iread_fullblock
	mov	ecx, OFFSET FLAT:iread
	test	bpl, 1
	cmovne	rcx, rax
	mov	qword ptr [word ptr [rip + iread_fnc]],  rcx
	mov	eax, ebp
	and	eax, 0xfffffffe
	mov	dword ptr [dword ptr [rip + input_flags]],  eax
	mov	ebx,  dword ptr [dword ptr [rip + conversions_mask]]
	mov	edi, ebx
	and	edi, 7
	call	multiple_bits_set
	test	al, al
	jne	.label_83
	mov	edi, ebx
	and	edi, 0x18
	call	multiple_bits_set
	test	al, al
	jne	.label_60
	mov	edi, ebx
	and	edi, 0x60
	call	multiple_bits_set
	test	al, al
	jne	.label_63
	and	ebx, 0x3000
	mov	edi, ebx
	call	multiple_bits_set
	test	al, al
	jne	.label_70
	mov	edi, ebp
	and	edi, 0x4002
	call	multiple_bits_set
	test	al, al
	jne	.label_49
	mov	edi,  dword ptr [dword ptr [rip + output_flags]]
	and	edi, 0x4002
	call	multiple_bits_set
	test	al, al
	jne	.label_49
	test	bpl, 2
	je	.label_87
	mov	byte ptr [byte ptr [rip + i_nocache]],  1
	mov	rax,  qword ptr [word ptr [rip + max_bytes]]
	or	rax,  qword ptr [word ptr [rip + max_records]]
	sete	byte ptr [byte ptr [rip + i_nocache_eof]]
	and	byte ptr [byte ptr [rip + input_flags]],  0xfd
.label_87:
	test	byte ptr [byte ptr [rip + output_flags]],  2
	je	.label_89
	mov	byte ptr [byte ptr [rip + o_nocache]],  1
	mov	rax,  qword ptr [word ptr [rip + max_bytes]]
	or	rax,  qword ptr [word ptr [rip + max_records]]
	sete	byte ptr [byte ptr [rip + o_nocache_eof]]
	and	byte ptr [byte ptr [rip + output_flags]],  0xfd
.label_89:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_71:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.56
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r13
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	nl_error
	mov	edi, 1
	call	usage
.label_49:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.84
	jmp	.label_73
.label_88:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.64
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, OFFSET FLAT:.str.76
	jmp	.label_66
.label_51:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.62
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, OFFSET FLAT:.str.77
	jmp	.label_66
.label_48:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.64
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	eax,  dword ptr [dword ptr [rip + output_flags]]
	mov	ecx, OFFSET FLAT:.str.78
	mov	edi, OFFSET FLAT:.str.79
	test	al, 4
	cmovne	rdi, rcx
.label_66:
	call	quote
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str.1_0
	xor	eax, eax
	mov	rcx, rbx
	mov	r8, rbp
	call	nl_error
	mov	edi, 1
	call	usage
.label_83:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	jmp	.label_73
.label_60:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.81
	jmp	.label_73
.label_63:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.82
	jmp	.label_73
.label_70:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
.label_73:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	nl_error
.label_78:
	mov	dword ptr [rsp + 0x34], 4
	xor	r14d, r14d
	jmp	.label_55
.label_57:
	mov	dword ptr [rsp + 0x34], 1
	mov	r14d, 0x4b
	jmp	.label_55
.label_58:
	xor	ecx, ecx
	cmp	eax, 1
	mov	r14d, 0x4b
	cmovne	r14d, ecx
.label_55:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.75
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, rbp
	call	quote
	mov	rbp, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.1_0
	xor	eax, eax
	mov	esi, r14d
	mov	rcx, rbx
	mov	r8, rbp
	call	nl_error
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f90

	.globl apply_translations
	.type apply_translations, @function
apply_translations:
	push	rax
	test	byte ptr [byte ptr [rip + conversions_mask]],  1
	je	.label_98
	mov	edi, OFFSET FLAT:ebcdic_to_ascii
	call	translate_charset
.label_98:
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	test	al, 0x40
	jne	.label_93
	test	al, 0x20
	je	.label_97
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	rcx, -0x100
	nop	word ptr cs:[rax + rax]
.label_92:
	movzx	edx,  byte ptr [byte ptr [rcx + input_file]]
	mov	dl, byte ptr [rax + rdx*4]
	mov	byte ptr [byte ptr [rcx + input_file]],  dl
	inc	rcx
	jne	.label_92
	jmp	.label_94
.label_93:
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	rcx, -0x100
	nop	word ptr cs:[rax + rax]
.label_91:
	movzx	edx,  byte ptr [byte ptr [rcx + input_file]]
	mov	dl, byte ptr [rax + rdx*4]
	mov	byte ptr [byte ptr [rcx + input_file]],  dl
	inc	rcx
	jne	.label_91
.label_94:
	mov	byte ptr [byte ptr [rip + translation_needed]],  1
.label_97:
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	test	al, 2
	jne	.label_99
	test	al, 4
	je	.label_95
	mov	edi, OFFSET FLAT:ascii_to_ibm
	jmp	.label_96
.label_99:
	mov	edi, OFFSET FLAT:ascii_to_ebcdic
.label_96:
	call	translate_charset
	mov	byte ptr [byte ptr [rip + newline_character]],  1
	mov	byte ptr [byte ptr [rip + space_character]],  1
.label_95:
	pop	rax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403050

	.globl set_fd_flags
	.type set_fd_flags, @function
set_fd_flags:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x90
	mov	r14, rdx
	mov	ebp, esi
	mov	r15d, edi
	and	ebp, 0xfffdfeff
	je	.label_101
	mov	esi, 3
	xor	eax, eax
	mov	edi, r15d
	call	rpl_fcntl
	mov	ebx, eax
	test	ebx, ebx
	js	.label_100
	or	ebp, ebx
	cmp	ebx, ebp
	je	.label_101
	mov	r12b, 1
	test	ebp, 0x10000
	je	.label_102
	lea	rsi, [rsp]
	mov	edi, r15d
	call	__fstat
	test	eax, eax
	jne	.label_106
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	mov	r12b, 1
	cmp	eax, 0x4000
	je	.label_104
	call	__errno_location
	mov	dword ptr [rax], 0x14
.label_106:
	xor	r12d, r12d
.label_104:
	and	ebp, 0xfffeffff
.label_102:
	cmp	ebx, ebp
	je	.label_103
	test	r12b, r12b
	je	.label_103
	xor	ebx, ebx
	mov	esi, 4
	xor	eax, eax
	mov	edi, r15d
	mov	edx, ebp
	call	rpl_fcntl
	cmp	eax, -1
	je	.label_105
	mov	bl, r12b
.label_105:
	mov	r12b, bl
.label_103:
	test	r12b, 1
	je	.label_100
.label_101:
	add	rsp, 0x90
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_100:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.105
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403150

	.globl ifd_reopen
	.type ifd_reopen, @function
ifd_reopen:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14d, ecx
	mov	r15d, edx
	mov	r12, rsi
	mov	ebp, edi
	nop	word ptr cs:[rax + rax]
.label_107:
	call	process_signals
	mov	edi, ebp
	mov	rsi, r12
	mov	edx, r15d
	mov	ecx, r14d
	call	fd_reopen
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_108
	call	__errno_location
	cmp	dword ptr [rax], 4
	je	.label_107
.label_108:
	mov	eax, ebx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4031a0

	.globl nl_error
	.type nl_error, @function
nl_error:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	r14, rdx
	mov	ebp, esi
	mov	ebx, edi
	test	al, al
	je	.label_109
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_109:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	cmp	dword ptr [dword ptr [rip + progress_len]],  0
	jle	.label_110
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xa
	call	fputc_unlocked
	mov	dword ptr [dword ptr [rip + progress_len]],  0
.label_110:
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x18
	lea	rcx, [rsp + 0xb0]
	mov	edi, ebx
	mov	esi, ebp
	mov	rdx, r14
	call	verror
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403270

	.globl iftruncate
	.type iftruncate, @function
iftruncate:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	nop	word ptr cs:[rax + rax]
.label_112:
	call	process_signals
	mov	edi, 1
	mov	rsi, rbx
	call	ftruncate
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_111
	call	__errno_location
	cmp	dword ptr [rax], 4
	je	.label_112
.label_111:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4032b0

	.globl dd_copy
	.type dd_copy, @function
dd_copy:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx,  qword ptr [word ptr [rip + skip_records]]
	mov	rbp,  qword ptr [word ptr [rip + skip_bytes]]
	mov	rax, rbp
	or	rax, rbx
	je	.label_116
	mov	r15,  qword ptr [word ptr [rip + input_offset]]
	mov	r14,  qword ptr [word ptr [rip + input_blocksize]]
	mov	rsi,  qword ptr [word ptr [rip + input_file]]
	xor	edi, edi
	mov	r8d, OFFSET FLAT:skip_bytes
	mov	rdx, rbx
	mov	rcx, r14
	call	skip
	test	rax, rax
	jne	.label_113
	imul	r14, rbx
	add	r15, rbp
	add	r15, r14
	cmp	r15,  qword ptr [word ptr [rip + input_offset]]
	je	.label_116
	mov	al,  byte ptr [byte ptr [rip + input_offset_overflow]]
	test	al, al
	jne	.label_116
.label_113:
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	je	.label_116
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.106
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdx,  qword ptr [word ptr [rip + input_file]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	nl_error
.label_116:
	mov	rax,  qword ptr [word ptr [rip + seek_bytes]]
	or	rax,  qword ptr [word ptr [rip + seek_records]]
	je	.label_141
	mov	rax,  qword ptr [word ptr [rip + seek_bytes]]
	mov	qword ptr [rsp], rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	rdx,  qword ptr [word ptr [rip + seek_records]]
	mov	rcx,  qword ptr [word ptr [rip + output_blocksize]]
	lea	r14, [rsp]
	mov	edi, 1
	mov	r8, r14
	call	skip
	mov	rbp, rax
	mov	rdx, qword ptr [rsp]
	mov	rax, rdx
	or	rax, rbp
	je	.label_141
	test	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + obuf]]
	cmovne	rdx,  qword ptr [word ptr [rip + output_blocksize]]
	xor	esi, esi
	call	memset
	mov	r15d, OFFSET FLAT:output_blocksize
	nop	dword ptr [rax]
.label_123:
	test	rbp, rbp
	mov	rax, r14
	cmovne	rax, r15
	mov	rbx, qword ptr [rax]
	mov	rdi,  qword ptr [word ptr [rip + obuf]]
	mov	rsi, rbx
	call	iwrite
	cmp	rax, rbx
	jne	.label_165
	test	rbp, rbp
	je	.label_115
	dec	rbp
	jmp	.label_117
	nop	
.label_115:
	mov	qword ptr [rsp], 0
	xor	ebp, ebp
.label_117:
	mov	rax, qword ptr [rsp]
	or	rax, rbp
	jne	.label_123
.label_141:
	mov	rax,  qword ptr [word ptr [rip + max_bytes]]
	xor	ebp, ebp
	or	rax,  qword ptr [word ptr [rip + max_records]]
	je	.label_126
	call	alloc_ibuf
	call	alloc_obuf
	mov	r13d, 0x400
	xor	r12d, r12d
	xor	r14d, r14d
	jmp	.label_114
.label_162:
	mov	rsi, qword ptr [rsp + 0x90]
	call	copy_with_block
	nop	
.label_114:
	cmp	dword ptr [dword ptr [rip + status_level]],  4
	jne	.label_139
	call	gethrxtime
	cmp	qword ptr [word ptr [rip + next_time]],  rax
	jg	.label_139
	mov	rdi, rax
	call	print_xfer_stats
	add	qword ptr [word ptr [rip + next_time]],  0x3b9aca00
.label_139:
	mov	rax,  qword ptr [word ptr [rip + r_full]]
	add	rax,  qword ptr [word ptr [rip + r_partial]]
	mov	rcx,  qword ptr [word ptr [rip + max_records]]
	cmp	qword ptr [word ptr [rip + max_bytes]],  1
	sbb	rcx, -1
	cmp	rax, rcx
	jae	.label_147
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	mov	ecx, eax
	and	ecx, 0x500
	cmp	ecx, 0x500
	jne	.label_157
	mov	rdi,  qword ptr [word ptr [rip + ibuf]]
	test	al, 0x18
	setne	al
	shl	al, 5
	mov	rdx,  qword ptr [word ptr [rip + input_blocksize]]
	movzx	esi, al
	call	memset
.label_157:
	mov	rax,  qword ptr [word ptr [rip + r_full]]
	add	rax,  qword ptr [word ptr [rip + r_partial]]
	cmp	rax,  qword ptr [word ptr [rip + max_records]]
	mov	rax,  qword ptr [word ptr [rip + iread_fnc]]
	mov	rsi,  qword ptr [word ptr [rip + ibuf]]
	jae	.label_163
	mov	rdx,  qword ptr [word ptr [rip + input_blocksize]]
	jmp	.label_119
	nop	word ptr cs:[rax + rax]
.label_163:
	mov	rdx,  qword ptr [word ptr [rip + max_bytes]]
.label_119:
	xor	edi, edi
	call	rax
	mov	r15, rax
	test	r15, r15
	jg	.label_127
	je	.label_132
	test	byte ptr [byte ptr [rip + label_17]],  1
	je	.label_134
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	je	.label_135
.label_134:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.108
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + input_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	nl_error
.label_135:
	mov	ebp, 1
	test	byte ptr [byte ptr [rip + label_17]],  1
	je	.label_149
	call	print_stats
	mov	rbx,  qword ptr [word ptr [rip + input_blocksize]]
	sub	rbx, r14
	xor	edi, edi
	mov	rsi, rbx
	call	invalidate_cache
	mov	rdi, rbx
	call	advance_input_after_read_error
	test	al, al
	jne	.label_122
	mov	byte ptr [byte ptr [rip + input_seekable]],  0
	mov	dword ptr [dword ptr [rip + input_seek_errno]],  0x1d
	mov	r12d, 1
.label_122:
	test	r14, r14
	jne	.label_114
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	and	eax, r13d
	test	eax, eax
	je	.label_114
	mov	eax, 0
	cmove	rax, r15
	test	r14, r14
	cmove	r15, rax
	jmp	.label_120
.label_127:
	mov	rdi, r15
	call	advance_input_offset
	movzx	eax,  byte ptr [byte ptr [rip + i_nocache]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_120
	xor	edi, edi
	mov	rsi, r15
	call	invalidate_cache
.label_120:
	mov	qword ptr [rsp + 0x90], r15
	cmp	r15,  qword ptr [word ptr [rip + input_blocksize]]
	jae	.label_164
	inc	qword ptr [word ptr [rip + r_partial]]
	mov	r14, qword ptr [rsp + 0x90]
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	test	ah, 4
	je	.label_136
	test	ah, 1
	jne	.label_137
	mov	rdi,  qword ptr [word ptr [rip + ibuf]]
	add	rdi, r14
	test	al, 0x18
	setne	al
	shl	al, 5
	mov	rdx,  qword ptr [word ptr [rip + input_blocksize]]
	sub	rdx, r14
	movzx	esi, al
	call	memset
.label_137:
	mov	rax,  qword ptr [word ptr [rip + input_blocksize]]
	mov	qword ptr [rsp + 0x90], rax
	jmp	.label_136
.label_164:
	inc	qword ptr [word ptr [rip + r_full]]
	xor	r14d, r14d
.label_136:
	mov	rdi,  qword ptr [word ptr [rip + ibuf]]
	mov	rax,  qword ptr [word ptr [rip + obuf]]
	cmp	rdi, rax
	je	.label_151
	movzx	eax,  byte ptr [byte ptr [rip + translation_needed]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_155
	mov	rsi, qword ptr [rsp + 0x90]
	call	translate_buffer
.label_155:
	mov	rdi,  qword ptr [word ptr [rip + ibuf]]
	cmp	byte ptr [byte ptr [rip + conversions_mask]],  0
	jns	.label_153
	lea	rsi, [rsp + 0x90]
	call	swab_buffer
	mov	rdi, rax
.label_153:
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	test	al, 8
	jne	.label_162
	test	al, 0x10
	mov	rsi, qword ptr [rsp + 0x90]
	jne	.label_125
	call	copy_simple
	jmp	.label_114
.label_151:
	mov	rbx, qword ptr [rsp + 0x90]
	mov	rdi, rax
	mov	rsi, rbx
	call	iwrite
	add	qword ptr [word ptr [rip + w_bytes]],  rax
	cmp	rax, rbx
	jne	.label_124
	cmp	rbx,  qword ptr [word ptr [rip + input_blocksize]]
	jne	.label_150
	inc	qword ptr [word ptr [rip + w_full]]
	jmp	.label_114
.label_150:
	inc	qword ptr [word ptr [rip + w_partial]]
	jmp	.label_114
.label_125:
	call	copy_with_unblock
	jmp	.label_114
.label_132:
	mov	al,  byte ptr [byte ptr [rip + i_nocache]]
	and	al, 1
	or	byte ptr [byte ptr [rip + i_nocache_eof]],  al
	movzx	eax,  byte ptr [byte ptr [rip + o_nocache]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_138
	test	byte ptr [byte ptr [rip + label_17]],  2
	sete	al
	jmp	.label_143
.label_138:
	xor	eax, eax
.label_143:
	or	byte ptr [byte ptr [rip + o_nocache_eof]],  al
.label_147:
	mov	ebp, r12d
.label_149:
	movzx	eax,  byte ptr [byte ptr [rip + char_is_saved]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_148
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	test	al, 8
	jne	.label_152
	test	al, 0x10
	jne	.label_154
	mov	al,  byte ptr [byte ptr [rip + saved_char]]
	mov	rcx,  qword ptr [word ptr [rip + oc]]
	lea	rdx, [rcx + 1]
	mov	qword ptr [word ptr [rip + oc]],  rdx
	mov	rsi,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rsi + rcx], al
	cmp	rdx,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_148
	call	write_output
	jmp	.label_148
.label_152:
	mov	edi, OFFSET FLAT:saved_char
	mov	esi, 1
	call	copy_with_block
	jmp	.label_148
.label_154:
	mov	edi, OFFSET FLAT:saved_char
	mov	esi, 1
	call	copy_with_unblock
.label_148:
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	mov	rbx,  qword ptr [word ptr [rip + col]]
	test	al, 8
	je	.label_140
	test	rbx, rbx
	jne	.label_118
	jmp	.label_140
	nop	word ptr cs:[rax + rax]
.label_133:
	inc	rbx
.label_118:
	cmp	rbx,  qword ptr [word ptr [rip + conversion_blocksize]]
	jae	.label_161
	mov	al,  byte ptr [byte ptr [rip + space_character]]
	and	al, 1
	mov	al, 0x40
	jne	.label_128
	mov	al, 0x20
.label_128:
	mov	rcx,  qword ptr [word ptr [rip + oc]]
	lea	rdx, [rcx + 1]
	mov	qword ptr [word ptr [rip + oc]],  rdx
	mov	rsi,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rsi + rcx], al
	cmp	rdx,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_133
	call	write_output
	jmp	.label_133
.label_161:
	mov	rbx,  qword ptr [word ptr [rip + col]]
.label_140:
	test	rbx, rbx
	je	.label_142
	test	byte ptr [byte ptr [rip + conversions_mask]],  0x10
	je	.label_142
	mov	al,  byte ptr [byte ptr [rip + newline_character]]
	and	al, 1
	mov	al, 0x25
	jne	.label_144
	mov	al, 0xa
.label_144:
	mov	rcx,  qword ptr [word ptr [rip + oc]]
	lea	rsi, [rcx + 1]
	mov	qword ptr [word ptr [rip + oc]],  rsi
	mov	rdx,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rdx + rcx], al
	cmp	rsi,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_146
	call	write_output
.label_142:
	mov	rsi,  qword ptr [word ptr [rip + oc]]
.label_146:
	test	rsi, rsi
	je	.label_159
	mov	rdi,  qword ptr [word ptr [rip + obuf]]
	call	iwrite
	add	qword ptr [word ptr [rip + w_bytes]],  rax
	test	rax, rax
	je	.label_160
	inc	qword ptr [word ptr [rip + w_partial]]
.label_160:
	cmp	rax,  qword ptr [word ptr [rip + oc]]
	jne	.label_124
.label_159:
	movzx	eax,  byte ptr [byte ptr [rip + final_op_was_seek]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_130
	lea	rsi, [rsp]
	mov	edi, 1
	call	__fstat
	test	eax, eax
	je	.label_129
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	jmp	.label_121
.label_124:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.109
	jmp	.label_121
.label_129:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0x8000
	jne	.label_130
	mov	edi, 1
	xor	esi, esi
	mov	edx, 1
	call	lseek
	mov	rbx, rax
	test	rbx, rbx
	js	.label_130
	cmp	qword ptr [rsp + 0x30], rbx
	jge	.label_130
	mov	rdi, rbx
	call	iftruncate
	test	eax, eax
	je	.label_130
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.110
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rbp, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r15
	mov	rcx, rbx
	mov	r8, rbp
	call	nl_error
	jmp	.label_131
.label_130:
	test	byte ptr [byte ptr [rip + label_17]],  0x40
	je	.label_158
	mov	edi, 1
	call	fdatasync
	test	eax, eax
	je	.label_158
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x16
	je	.label_145
	cmp	ebx, 0x26
	je	.label_145
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.111
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	mov	ebp, 1
.label_145:
	or	byte ptr [byte ptr [rip + label_17]],  0x80
.label_158:
	cmp	word ptr [word ptr [rip + conversions_mask]],  0
	jns	.label_126
	nop	dword ptr [rax]
.label_156:
	mov	edi, 1
	call	fsync
	test	eax, eax
	je	.label_126
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 4
	je	.label_156
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.112
.label_121:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
.label_131:
	mov	ebp, 1
.label_126:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_165:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.107
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	call	quit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ae0

	.globl invalidate_cache
	.type invalidate_cache, @function
invalidate_cache:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbp, rsi
	mov	r14d, edi
	mov	r12b,  byte ptr [byte ptr [rip + i_nocache_eof]]
	mov	bl,  byte ptr [byte ptr [rip + o_nocache_eof]]
	call	cache_round
	mov	r13, rax
	test	rbp, rbp
	mov	al, 1
	je	.label_166
	test	r13, r13
	je	.label_168
.label_166:
	test	r14d, r14d
	je	.label_170
	mov	r12b, bl
.label_170:
	test	r12b, r12b
	jne	.label_173
	mov	rcx, r13
	or	rcx, rbp
	je	.label_168
.label_173:
	xor	r15d, r15d
	test	rbp, rbp
	je	.label_176
	xor	esi, esi
	mov	edi, r14d
	call	cache_round
	mov	r15, rax
.label_176:
	test	r14d, r14d
	je	.label_167
	mov	eax, OFFSET FLAT:invalidate_cache.output_offset
	mov	rcx,  qword ptr [word ptr [rip + invalidate_cache.output_offset]]
	cmp	rcx, -1
	je	.label_169
	test	rcx, rcx
	js	.label_171
	mov	eax, OFFSET FLAT:invalidate_cache.output_offset
	test	rbp, rbp
	je	.label_169
	lea	rax, [r15 + r13]
	add	rax, rcx
	jmp	.label_174
.label_167:
	mov	eax, OFFSET FLAT:input_offset
	cmp	byte ptr [byte ptr [rip + input_seekable]],  0
	jne	.label_169
	call	__errno_location
	mov	dword ptr [rax], 0x1d
	xor	eax, eax
	jmp	.label_168
.label_171:
	xor	esi, esi
	mov	edx, 1
	mov	edi, r14d
	call	lseek
.label_174:
	mov	qword ptr [word ptr [rip + invalidate_cache.output_offset]],  rax
	mov	eax, OFFSET FLAT:invalidate_cache.output_offset
.label_169:
	mov	rsi, qword ptr [rax]
	test	rsi, rsi
	js	.label_175
	test	r12b, r12b
	sete	al
	test	r13, r13
	sete	cl
	test	rbp, rbp
	setne	dl
	or	dl, cl
	xor	ebp, ebp
	or	dl, al
	cmovne	rbp, r13
	cmove	r15, r13
	sub	rsi, rbp
	sub	rsi, r15
	test	rbp, rbp
	jne	.label_172
	xor	edx, edx
	mov	rax, rsi
	div	qword ptr [word ptr [rip + page_size]]
	sub	rsi, rdx
.label_172:
	mov	ecx, 4
	mov	edi, r14d
	mov	rdx, rbp
	call	posix_fadvise
	cmp	eax, -1
	setne	al
	jmp	.label_168
.label_175:
	xor	eax, eax
.label_168:
	add	rsp, 8
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
	#Procedure 0x403c20

	.globl finish_up
	.type finish_up, @function
finish_up:
	push	rax
	call	cleanup
	call	print_stats
	pop	rax
	jmp	process_signals
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c40

	.globl siginfo_handler
	.type siginfo_handler, @function
siginfo_handler:
	inc	dword ptr [dword ptr [rip + info_signal_count]]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c50

	.globl interrupt_handler
	.type interrupt_handler, @function
interrupt_handler:
	mov	dword ptr [dword ptr [rip + interrupt_signal]],  edi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c60

	.globl operand_is
	.type operand_is, @function
operand_is:
	mov	edx, 0x3d
	jmp	operand_matches
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c70

	.globl parse_symbols
	.type parse_symbols, @function
parse_symbols:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	qword ptr [rsp], rcx
	mov	r12d, edx
	mov	r13, rsi
	mov	rbx, rdi
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_177:
	mov	esi, 0x2c
	mov	rdi, rbx
	call	strchr
	mov	r15, rax
	mov	r14, r13
	nop	word ptr cs:[rax + rax]
.label_180:
	mov	edx, 0x2c
	mov	rdi, rbx
	mov	rsi, r14
	call	operand_matches
	test	al, al
	je	.label_183
	mov	eax, dword ptr [r14 + 0xc]
	test	eax, eax
	jne	.label_178
.label_183:
	cmp	byte ptr [r14], 0
	lea	r14, [r14 + 0x10]
	jne	.label_180
	jmp	.label_182
	nop	dword ptr [rax + rax]
.label_178:
	test	r12b, r12b
	mov	ecx, 0
	cmovne	ebp, ecx
	or	ebp, eax
	test	r15, r15
	lea	rbx, [r15 + 1]
	jne	.label_177
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_182:
	test	r15, r15
	jne	.label_179
	mov	rdi, rbx
	call	strlen
	mov	r15, rax
	jmp	.label_181
.label_179:
	sub	r15, rbx
.label_181:
	xor	edi, edi
	mov	edx, 5
	mov	rsi, qword ptr [rsp]
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, rbx
	mov	rcx, r15
	call	quotearg_n_style_mem
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str.1_0
	xor	eax, eax
	mov	rcx, rbp
	mov	r8, rbx
	call	nl_error
	mov	edi, 1
	call	usage
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d70

	.globl parse_integer
	.type parse_integer, @function
parse_integer:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, rsi
	mov	rbx, rdi
	lea	rsi, [rsp + 8]
	lea	rcx, [rsp + 0x10]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str.85
	call	xstrtoumax
	test	eax, eax
	je	.label_189
	cmp	eax, 2
	jne	.label_185
	mov	rdi, qword ptr [rsp + 8]
	movzx	ecx, byte ptr [rdi]
	cmp	ecx, 0x78
	jne	.label_185
	inc	rdi
	mov	rsi, r15
	call	parse_integer
	mov	r14, rax
	test	r14, r14
	mov	rcx, qword ptr [rsp + 0x10]
	je	.label_186
	mov	rax, r14
	imul	rax, rcx
	xor	edx, edx
	div	r14
	cmp	rax, rcx
	jne	.label_188
.label_186:
	test	rcx, rcx
	jne	.label_184
	mov	esi, OFFSET FLAT:.str.86
	mov	edx, 2
	mov	rdi, rbx
	call	strncmp
	test	eax, eax
	jne	.label_184
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.87
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.86
	call	quote_n
	mov	r12, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.88
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, r12
	mov	r8, rbx
	call	nl_error
.label_184:
	mov	rax, qword ptr [rsp + 0x10]
	imul	rax, r14
	mov	qword ptr [rsp + 0x10], rax
.label_189:
	mov	rax, qword ptr [rsp + 0x10]
	jmp	.label_187
.label_185:
	mov	dword ptr [r15], eax
	xor	eax, eax
.label_187:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_188:
	mov	dword ptr [r15], 1
	xor	eax, eax
	jmp	.label_187
	nop	
	.section	.text
	.align	32
	#Procedure 0x403e80

	.globl iread_fullblock
	.type iread_fullblock, @function
iread_fullblock:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
	xor	ebp, ebp
	test	rbx, rbx
	je	.label_190
	nop	word ptr [rax + rax]
.label_193:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	iread
	test	rax, rax
	js	.label_192
	je	.label_191
	add	rbp, rax
	add	r14, rax
	sub	rbx, rax
	mov	rax, rbp
	jne	.label_193
	jmp	.label_192
.label_190:
	xor	eax, eax
	jmp	.label_192
.label_191:
	mov	rax, rbp
.label_192:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ee0

	.globl iread
	.type iread, @function
iread:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	ebp, edi
	nop	
.label_199:
	call	process_signals
	mov	edi, ebp
	mov	rsi, r15
	mov	rdx, r14
	call	read
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_194
	test	rbx, rbx
	js	.label_196
	jmp	.label_201
	nop	word ptr cs:[rax + rax]
.label_194:
	call	__errno_location
	mov	rcx,  qword ptr [word ptr [rip + iread.prev_nread]]
	mov	rbx, -1
	cmp	rcx, r14
	jae	.label_196
	cmp	dword ptr [rax], 0x16
	jne	.label_196
	test	rcx, rcx
	jle	.label_196
	test	byte ptr [byte ptr [rip + label_197]],  0x40
	jne	.label_198
	nop	
.label_196:
	call	__errno_location
	cmp	dword ptr [rax], 4
	mov	rax, rbx
	je	.label_199
	jmp	.label_200
.label_201:
	jle	.label_202
	cmp	rbx, r14
	jae	.label_202
	call	process_signals
.label_202:
	xor	eax, eax
	test	rbx, rbx
	jle	.label_200
	mov	rbp,  qword ptr [word ptr [rip + iread.prev_nread]]
	cmp	rbp, r14
	jae	.label_195
	mov	al,  byte ptr [byte ptr [rip + warn_partial_read]]
	test	al, al
	je	.label_195
	test	rbp, rbp
	jle	.label_195
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	je	.label_203
	mov	rdi, rbp
	call	select_plural
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.89
	mov	edx, OFFSET FLAT:.str.90
	mov	r8d, 5
	mov	rcx, rax
	call	dcngettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	call	nl_error
.label_203:
	mov	byte ptr [byte ptr [rip + warn_partial_read]],  0
.label_195:
	mov	rax, rbx
	jmp	.label_200
.label_198:
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_200:
	mov	qword ptr [word ptr [rip + iread.prev_nread]],  rax
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404000

	.globl multiple_bits_set
	.type multiple_bits_set, @function
multiple_bits_set:
	lea	eax, [rdi - 1]
	test	eax, edi
	setne	al
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404010

	.globl operand_matches
	.type operand_matches, @function
operand_matches:
	mov	al, byte ptr [rsi]
	test	al, al
	je	.label_204
	inc	rsi
	movzx	eax, al
	movzx	ecx, byte ptr [rdi]
	inc	rdi
	cmp	ecx, eax
	je	operand_matches
	xor	eax, eax
	ret	
.label_204:
	movzx	eax, byte ptr [rdi]
	test	al, al
	sete	cl
	movzx	edx, dl
	cmp	eax, edx
	sete	al
	or	al, cl
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404040

	.globl process_signals
	.type process_signals, @function
process_signals:
	push	rbp
	push	rbx
	sub	rsp, 0x88
	lea	rbx, [rsp + 8]
	jmp	.label_205
.label_208:
	call	cleanup
	call	print_stats
	mov	edi, ebp
	call	raise
.label_205:
	cmp	dword ptr [dword ptr [rip + interrupt_signal]],  0
	jne	.label_206
	cmp	dword ptr [dword ptr [rip + info_signal_count]],  0
	je	.label_209
.label_206:
	xor	edi, edi
	mov	esi, OFFSET FLAT:caught_signals
	mov	rdx, rbx
	call	sigprocmask
	mov	ebp,  dword ptr [dword ptr [rip + interrupt_signal]]
	mov	eax,  dword ptr [dword ptr [rip + info_signal_count]]
	test	eax, eax
	je	.label_207
	dec	eax
	mov	dword ptr [dword ptr [rip + info_signal_count]],  eax
.label_207:
	mov	edi, 2
	xor	edx, edx
	mov	rsi, rbx
	call	sigprocmask
	test	ebp, ebp
	jne	.label_208
	call	print_stats
	jmp	.label_205
.label_209:
	add	rsp, 0x88
	pop	rbx
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4040c0

	.globl select_plural
	.type select_plural, @function
select_plural:
	mov	rax, rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040d0

	.globl cleanup
	.type cleanup, @function
cleanup:
	push	rbp
	push	rbx
	push	rax
	xor	edi, edi
	call	close
	test	eax, eax
	js	.label_211
	mov	edi, 1
	call	close
	test	eax, eax
	js	.label_210
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_211:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.91
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + input_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	nl_error
.label_210:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.92
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404180

	.globl print_stats
	.type print_stats, @function
print_stats:
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	je	.label_212
	push	rbx
	sub	rsp, 0x10
	cmp	dword ptr [dword ptr [rip + progress_len]],  0
	jle	.label_215
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xa
	call	fputc_unlocked
	mov	dword ptr [dword ptr [rip + progress_len]],  0
.label_215:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.93
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + r_full]]
	mov	r8,  qword ptr [word ptr [rip + r_partial]]
	mov	r9,  qword ptr [word ptr [rip + w_full]]
	mov	rax,  qword ptr [word ptr [rip + w_partial]]
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	rdi,  qword ptr [word ptr [rip + r_truncate]]
	test	rdi, rdi
	je	.label_213
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	call	select_plural
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.94
	mov	edx, OFFSET FLAT:.str.95
	mov	r8d, 5
	mov	rcx, rax
	call	dcngettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + r_truncate]]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_213:
	cmp	dword ptr [dword ptr [rip + status_level]],  2
	lea	rsp, [rsp + 0x10]
	pop	rbx
	jne	.label_214
.label_212:
	ret	
.label_214:
	xor	edi, edi
	jmp	print_xfer_stats
	nop	
	.section	.text
	.align	32
	#Procedure 0x404260

	.globl print_xfer_stats
	.type print_xfer_stats, @function
print_xfer_stats:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x7f8
	mov	r15, rdi
	test	r15, r15
	mov	rbx, r15
	jne	.label_224
	call	gethrxtime
	mov	rbx, rax
.label_224:
	mov	rdi,  qword ptr [word ptr [rip + w_bytes]]
	lea	rsi, [rsp + 0x40]
	mov	edx, 0x1d1
	mov	ecx, 1
	mov	r8d, 1
	call	human_readable
	mov	r14, rax
	mov	rdi,  qword ptr [word ptr [rip + w_bytes]]
	lea	rsi, [rsp + 0x2ce]
	mov	edx, 0x1f1
	mov	ecx, 1
	mov	r8d, 1
	call	human_readable
	mov	r12, rax
	lea	r13, [rsp + 0x55c]
	sub	rbx,  qword ptr [word ptr [rip + start_time]]
	jle	.label_217
	movq	xmm0, rbx
	punpckldq	xmm0,  xmmword ptr [word ptr [rip + label_221]]
	subpd	xmm0,  xmmword ptr [word ptr [rip + label_222]]
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	divsd	xmm1,  qword ptr [word ptr [rip + label_223]]
	movapd	xmmword ptr [rsp + 0x10], xmm1
	mov	rdi,  qword ptr [word ptr [rip + w_bytes]]
	mov	edx, 0x1d1
	mov	ecx, 0x3b9aca00
	mov	rsi, r13
	mov	r8, rbx
	call	human_readable
	mov	r13, rax
	mov	rdi, r13
	call	strlen
	mov	byte ptr [r13 + rax + 2], 0
	mov	word ptr [r13 + rax], 0x732f
	jmp	.label_228
.label_217:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.97
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	esi, 0x28e
	mov	edx, 1
	mov	ecx, 0x28e
	mov	r8d, OFFSET FLAT:.str.96
	xor	eax, eax
	mov	rdi, r13
	mov	r9, rbp
	call	__snprintf_chk
	xorpd	xmm0, xmm0
	movapd	xmmword ptr [rsp + 0x10], xmm0
.label_228:
	test	r15, r15
	je	.label_218
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xd
	call	fputc_unlocked
.label_218:
	test	r15, r15
	mov	eax, OFFSET FLAT:.str.98
	mov	r8d, OFFSET FLAT:.str.99
	cmovne	r8, rax
	lea	rbp, [rsp + 0x20]
	mov	esi, 0x18
	mov	edx, 1
	mov	ecx, 0x18
	mov	al, 1
	mov	rdi, rbp
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	call	__snprintf_chk
	mov	rdi, r14
	call	abbreviation_lacks_prefix
	test	al, al
	je	.label_220
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi,  qword ptr [word ptr [rip + w_bytes]]
	call	select_plural
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.100
	mov	edx, OFFSET FLAT:.str.101
	mov	r8d, 5
	mov	rcx, rax
	call	dcngettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + w_bytes]]
	lea	r8, [rsp + 0x20]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	r9, r13
	jmp	.label_216
.label_220:
	mov	rdi, r12
	call	abbreviation_lacks_prefix
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	test	al, al
	je	.label_227
	mov	esi, OFFSET FLAT:.str.102
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + w_bytes]]
	mov	qword ptr [rsp], r13
	lea	r9, [rsp + 0x20]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	r8, r14
	jmp	.label_216
.label_227:
	mov	esi, OFFSET FLAT:.str.103
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + w_bytes]]
	mov	qword ptr [rsp + 8], r13
	mov	qword ptr [rsp], rbp
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	r8, r14
	mov	r9, r12
.label_216:
	call	__fprintf_chk
	mov	ebx, eax
	test	r15, r15
	je	.label_225
	test	ebx, ebx
	js	.label_226
	mov	ecx,  dword ptr [dword ptr [rip + progress_len]]
	sub	ecx, ebx
	jle	.label_226
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.104
	mov	r8d, OFFSET FLAT:.str_0
	xor	eax, eax
	call	__fprintf_chk
.label_226:
	mov	dword ptr [dword ptr [rip + progress_len]],  ebx
	jmp	.label_219
.label_225:
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xa
	call	fputc_unlocked
.label_219:
	add	rsp, 0x7f8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404500

	.globl abbreviation_lacks_prefix
	.type abbreviation_lacks_prefix, @function
abbreviation_lacks_prefix:
	push	rbx
	mov	rbx, rdi
	call	strlen
	movzx	eax, byte ptr [rax + rbx - 2]
	cmp	eax, 0x20
	sete	al
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404520

	.globl translate_charset
	.type translate_charset, @function
translate_charset:
	mov	rax, -0x100
	nop	word ptr [rax + rax]
.label_229:
	movzx	ecx,  byte ptr [byte ptr [rax + input_file]]
	mov	cl, byte ptr [rdi + rcx]
	mov	byte ptr [byte ptr [rax + input_file]],  cl
	inc	rax
	jne	.label_229
	mov	byte ptr [byte ptr [rip + translation_needed]],  1
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404550

	.globl skip
	.type skip, @function
skip:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r13, r8
	mov	r12, rcx
	mov	rbx, rdx
	mov	r14, rsi
	mov	ebp, edi
	mov	r15, qword ptr [r13]
	call	__errno_location
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rax], 0
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r12
	cmp	rax, rbx
	jb	.label_238
	mov	rax, r12
	imul	rax, rbx
	add	r15, rax
	mov	ecx, 1
	mov	rdi, r14
	mov	esi, ebp
	mov	rdx, r15
	call	skip_via_lseek
	test	rax, rax
	js	.label_238
	test	ebp, ebp
	jne	.label_236
	lea	rsi, [rsp + 0x18]
	xor	edi, edi
	call	__fstat
	test	eax, eax
	jne	.label_242
	lea	rdi, [rsp + 0x18]
	call	usable_st_size
	xor	r14d, r14d
	test	al, al
	je	.label_244
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rsi,  qword ptr [word ptr [rip + input_offset]]
	lea	rax, [rsi + r15]
	xor	r14d, r14d
	cmp	rcx, rax
	jae	.label_244
	sub	r15, rcx
	xor	edx, edx
	mov	rax, r15
	div	r12
	mov	r14, rax
	sub	rcx, rsi
	mov	r15, rcx
.label_244:
	mov	rdi, r15
	call	advance_input_offset
	jmp	.label_233
.label_238:
	mov	rax, qword ptr [rsp + 0x10]
	mov	r15d, dword ptr [rax]
	xor	edx, edx
	mov	ecx, 2
	mov	rdi, r14
	mov	esi, ebp
	call	skip_via_lseek
	test	rax, rax
	jns	.label_239
	test	ebp, ebp
	je	.label_240
	mov	dword ptr [rsp + 4], r15d
	mov	qword ptr [rsp + 8], r14
	call	alloc_obuf
	mov	eax, OFFSET FLAT:obuf
	jmp	.label_243
.label_240:
	mov	dword ptr [rsp + 4], r15d
	mov	qword ptr [rsp + 8], r14
	call	alloc_ibuf
	mov	eax, OFFSET FLAT:ibuf
.label_243:
	mov	r15, qword ptr [rax]
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_237:
	mov	rax,  qword ptr [word ptr [rip + iread_fnc]]
	test	rbx, rbx
	mov	rdx, r12
	jne	.label_230
	mov	rdx, qword ptr [r13]
.label_230:
	mov	edi, ebp
	mov	rsi, r15
	call	rax
	test	rax, rax
	js	.label_232
	je	.label_234
	test	ebp, ebp
	jne	.label_241
	mov	rdi, rax
	call	advance_input_offset
.label_241:
	test	rbx, rbx
	je	.label_236
	dec	rbx
	jne	.label_237
	cmp	qword ptr [r13], 0
	mov	ebx, 0
	jne	.label_237
	jmp	.label_233
.label_236:
	mov	qword ptr [r13], 0
	xor	r14d, r14d
	jmp	.label_233
.label_234:
	mov	r14, rbx
.label_233:
	mov	rax, r14
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_232:
	test	ebp, ebp
	jne	.label_245
	mov	rax, qword ptr [rsp + 0x10]
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.108
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	test	byte ptr [byte ptr [rip + label_17]],  1
	je	.label_235
	call	print_stats
	call	quit
.label_245:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.114
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 8]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rsp + 4]
	mov	rdx, rbx
	call	nl_error
.label_235:
	call	quit
.label_239:
	test	r15d, r15d
	mov	ebx, 0x4b
	cmovne	ebx, r15d
	xor	edi, edi
	test	ebp, ebp
	jne	.label_246
	mov	esi, OFFSET FLAT:.str.113
	jmp	.label_231
.label_246:
	mov	esi, OFFSET FLAT:.str.114
.label_231:
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
	call	nl_error
	call	quit
.label_242:
	mov	rax, qword ptr [rsp + 0x10]
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404810

	.globl iwrite
	.type iwrite, @function
iwrite:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	r14, rdi
	mov	eax,  dword ptr [dword ptr [rip + output_flags]]
	test	ah, 0x40
	je	.label_250
	cmp	qword ptr [word ptr [rip + output_blocksize]],  r12
	jbe	.label_250
	mov	edi, 1
	mov	esi, 3
	xor	eax, eax
	call	rpl_fcntl
	mov	ecx, eax
	and	ecx, 0xffffbfff
	mov	edi, 1
	mov	esi, 4
	xor	eax, eax
	mov	edx, ecx
	call	rpl_fcntl
	test	eax, eax
	je	.label_253
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	je	.label_253
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.116
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdx,  qword ptr [word ptr [rip + output_file]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	nl_error
.label_253:
	mov	byte ptr [byte ptr [rip + o_nocache_eof]],  1
	mov	edi, 1
	xor	esi, esi
	call	invalidate_cache
	or	byte ptr [byte ptr [rip + label_17]],  0x80
.label_250:
	xor	eax, eax
.label_247:
	mov	r15, rax
	lea	r13, [r14 + r15]
	mov	rbx, r12
	sub	rbx, r15
	cmp	r15, r12
	jae	.label_249
	setae	bpl
	nop	dword ptr [rax + rax]
.label_254:
	call	process_signals
	mov	byte ptr [byte ptr [rip + final_op_was_seek]],  0
	test	byte ptr [byte ptr [rip + label_257]],  1
	je	.label_256
	mov	rdi, r14
	mov	rsi, r12
	call	is_nul
	test	al, al
	je	.label_256
	mov	edi, 1
	mov	edx, 1
	mov	rsi, r12
	call	lseek
	test	rax, rax
	js	.label_248
	mov	byte ptr [byte ptr [rip + final_op_was_seek]],  1
	test	r12, r12
	mov	rax, r12
	jne	.label_255
	jmp	.label_256
.label_248:
	and	byte ptr [byte ptr [rip + label_257]],  0xfe
	nop	word ptr cs:[rax + rax]
.label_256:
	mov	edi, 1
	mov	rsi, r13
	mov	rdx, rbx
	call	write
.label_255:
	test	rax, rax
	jns	.label_252
	call	__errno_location
	cmp	dword ptr [rax], 4
	setne	al
	or	al, bpl
	je	.label_254
	jmp	.label_249
	nop	dword ptr [rax + rax]
.label_252:
	test	rax, rax
	lea	rax, [rax + r15]
	jne	.label_247
	call	__errno_location
	mov	dword ptr [rax], 0x1c
.label_249:
	test	r15, r15
	je	.label_251
	test	byte ptr [byte ptr [rip + o_nocache]],  1
	je	.label_251
	mov	edi, 1
	mov	rsi, r15
	call	invalidate_cache
.label_251:
	mov	rax, r15
	add	rsp, 8
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
	#Procedure 0x4049d0

	.globl quit
	.type quit, @function
quit:
	push	rax
	call	finish_up
	mov	edi, 1
	call	exit
	.section	.text
	.align	32
	#Procedure 0x4049e0

	.globl alloc_ibuf
	.type alloc_ibuf, @function
alloc_ibuf:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x290
	cmp	qword ptr [word ptr [rip + ibuf]],  0
	jne	.label_258
	mov	rax,  qword ptr [word ptr [rip + input_blocksize]]
	mov	rcx,  qword ptr [word ptr [rip + page_size]]
	lea	rdi, [rax + rcx*2 + 3]
	call	malloc
	test	rax, rax
	je	.label_259
	add	rax, 2
	mov	rsi,  qword ptr [word ptr [rip + page_size]]
	mov	rdi, rax
	call	ptr_align
	mov	qword ptr [word ptr [rip + ibuf]],  rax
.label_258:
	add	rsp, 0x290
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_259:
	mov	r14,  qword ptr [word ptr [rip + input_blocksize]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.117
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rdi,  qword ptr [word ptr [rip + input_blocksize]]
	lea	rsi, [rsp]
	mov	edx, 0x1f1
	mov	ecx, 1
	mov	r8d, 1
	call	human_readable
	mov	rbx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, r14
	mov	r8, rbx
	call	nl_error
	nop	
	.section	.text
	.align	32
	#Procedure 0x404a90

	.globl alloc_obuf
	.type alloc_obuf, @function
alloc_obuf:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x290
	cmp	qword ptr [word ptr [rip + obuf]],  0
	jne	.label_261
	test	byte ptr [byte ptr [rip + label_17]],  8
	jne	.label_260
	call	alloc_ibuf
	mov	rax,  qword ptr [word ptr [rip + ibuf]]
	jmp	.label_262
.label_260:
	mov	rax,  qword ptr [word ptr [rip + output_blocksize]]
	mov	rcx,  qword ptr [word ptr [rip + page_size]]
	lea	rdi, [rax + rcx - 1]
	call	malloc
	test	rax, rax
	je	.label_263
	mov	rsi,  qword ptr [word ptr [rip + page_size]]
	mov	rdi, rax
	call	ptr_align
.label_262:
	mov	qword ptr [word ptr [rip + obuf]],  rax
.label_261:
	add	rsp, 0x290
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_263:
	mov	r14,  qword ptr [word ptr [rip + output_blocksize]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.118
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rdi,  qword ptr [word ptr [rip + output_blocksize]]
	lea	rsi, [rsp]
	mov	edx, 0x1f1
	mov	ecx, 1
	mov	r8d, 1
	call	human_readable
	mov	rbx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, r14
	mov	r8, rbx
	call	nl_error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b60

	.globl advance_input_offset
	.type advance_input_offset, @function
advance_input_offset:
	add	rdi,  qword ptr [word ptr [rip + input_offset]]
	mov	qword ptr [word ptr [rip + input_offset]],  rdi
	jae	.label_264
	mov	byte ptr [byte ptr [rip + input_offset_overflow]],  1
.label_264:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b80

	.globl advance_input_after_read_error
	.type advance_input_after_read_error, @function
advance_input_after_read_error:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	cmp	byte ptr [byte ptr [rip + input_seekable]],  0
	je	.label_265
	mov	rdi, rbx
	call	advance_input_offset
	mov	rax,  qword ptr [word ptr [rip + input_offset]]
	shr	rax, 0x3f
	or	al,  byte ptr [byte ptr [rip + input_offset_overflow]]
	mov	byte ptr [byte ptr [rip + input_offset_overflow]],  al
	je	.label_267
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.119
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + input_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	jmp	.label_268
.label_265:
	mov	ebx,  dword ptr [dword ptr [rip + input_seek_errno]]
	mov	r15b, 1
	cmp	ebx, 0x1d
	je	.label_269
	call	__errno_location
	mov	dword ptr [rax], ebx
	jmp	.label_266
.label_267:
	xor	edi, edi
	xor	esi, esi
	mov	edx, 1
	call	lseek
	test	rax, rax
	js	.label_266
	mov	r14,  qword ptr [word ptr [rip + input_offset]]
	mov	r15b, 1
	sub	r14, rax
	je	.label_269
	js	.label_270
	cmp	r14, rbx
	jbe	.label_271
.label_270:
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	je	.label_271
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.120
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	nl_error
.label_271:
	mov	rdi,  qword ptr [word ptr [rip + input_file]]
	xor	esi, esi
	mov	ecx, 1
	mov	rdx, r14
	call	skip_via_lseek
	test	rax, rax
	jns	.label_269
	call	__errno_location
	cmp	dword ptr [rax], 0
	jne	.label_266
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.121
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	nl_error
.label_266:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.114
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdx,  qword ptr [word ptr [rip + input_file]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
.label_268:
	mov	rdx, rbx
	call	nl_error
.label_269:
	mov	al, r15b
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d00

	.globl translate_buffer
	.type translate_buffer, @function
translate_buffer:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	test	r14, r14
	je	.label_272
	nop	
.label_273:
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	mov	al,  byte ptr [byte ptr [rax + trans_table]]
	mov	byte ptr [rbx], al
	inc	rbx
	dec	r14
	jne	.label_273
.label_272:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d40

	.globl swab_buffer
	.type swab_buffer, @function
swab_buffer:
	movzx	eax,  byte ptr [byte ptr [rip + char_is_saved]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_274
	mov	al,  byte ptr [byte ptr [rip + saved_char]]
	mov	byte ptr [rdi - 1], al
	dec	rdi
	inc	qword ptr [rsi]
	mov	byte ptr [byte ptr [rip + char_is_saved]],  0
.label_274:
	mov	rax, qword ptr [rsi]
	test	al, 1
	je	.label_277
	lea	rcx, [rax - 1]
	mov	qword ptr [rsi], rcx
	mov	al, byte ptr [rdi + rax - 1]
	mov	byte ptr [byte ptr [rip + saved_char]],  al
	mov	byte ptr [byte ptr [rip + char_is_saved]],  1
.label_277:
	mov	rax, qword ptr [rsi]
	test	rax, -2
	je	.label_276
	lea	rcx, [rdi + rax]
	shr	rax, 1
	neg	rax
	nop	dword ptr [rax]
.label_275:
	mov	dl, byte ptr [rcx - 2]
	mov	byte ptr [rcx], dl
	lea	rcx, [rcx - 2]
	inc	rax
	jne	.label_275
.label_276:
	inc	rdi
	mov	rax, rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404dc0

	.globl copy_with_block
	.type copy_with_block, @function
copy_with_block:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	test	r14, r14
	je	.label_278
	mov	r15d, 0x25
	nop	dword ptr [rax]
.label_285:
	movsx	eax, byte ptr [rbx]
	mov	cl,  byte ptr [byte ptr [rip + newline_character]]
	and	cl, 1
	mov	edx, 0xa
	cmovne	edx, r15d
	mov	rbp,  qword ptr [word ptr [rip + col]]
	mov	rcx,  qword ptr [word ptr [rip + conversion_blocksize]]
	cmp	eax, edx
	jne	.label_279
	cmp	rbp, rcx
	jb	.label_283
	xor	eax, eax
	jmp	.label_281
	nop	word ptr cs:[rax + rax]
.label_282:
	inc	rbp
.label_283:
	cmp	rbp,  qword ptr [word ptr [rip + conversion_blocksize]]
	mov	eax, 0
	jae	.label_281
	mov	al,  byte ptr [byte ptr [rip + space_character]]
	and	al, 1
	mov	al, 0x40
	jne	.label_286
	mov	al, 0x20
.label_286:
	mov	rcx,  qword ptr [word ptr [rip + oc]]
	lea	rdx, [rcx + 1]
	mov	qword ptr [word ptr [rip + oc]],  rdx
	mov	rsi,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rsi + rcx], al
	cmp	rdx,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_282
	call	write_output
	jmp	.label_282
	nop	
.label_279:
	cmp	rbp, rcx
	jne	.label_284
	inc	qword ptr [word ptr [rip + r_truncate]]
	jmp	.label_280
	nop	
.label_284:
	jae	.label_280
	mov	rcx,  qword ptr [word ptr [rip + oc]]
	lea	rdx, [rcx + 1]
	mov	qword ptr [word ptr [rip + oc]],  rdx
	mov	rsi,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rsi + rcx], al
	cmp	rdx,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_280
	call	write_output
	nop	dword ptr [rax]
.label_280:
	mov	rax,  qword ptr [word ptr [rip + col]]
	inc	rax
.label_281:
	mov	qword ptr [word ptr [rip + col]],  rax
	inc	rbx
	dec	r14
	jne	.label_285
.label_278:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ee0

	.globl copy_with_unblock
	.type copy_with_unblock, @function
copy_with_unblock:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	xor	ebx, ebx
	test	r15, r15
	je	.label_287
	mov	ebp, 0x40
	nop	
.label_295:
	mov	r12b, byte ptr [r14 + rbx]
	mov	rax,  qword ptr [word ptr [rip + col]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + col]],  rcx
	cmp	rax,  qword ptr [word ptr [rip + conversion_blocksize]]
	jae	.label_288
	movsx	eax, r12b
	mov	cl,  byte ptr [byte ptr [rip + space_character]]
	and	cl, 1
	mov	ecx, 0x20
	cmovne	ecx, ebp
	cmp	eax, ecx
	mov	rax,  qword ptr [word ptr [rip + copy_with_unblock.pending_spaces]]
	jne	.label_294
	inc	rax
	mov	qword ptr [word ptr [rip + copy_with_unblock.pending_spaces]],  rax
	jmp	.label_290
	nop	
.label_288:
	mov	qword ptr [word ptr [rip + copy_with_unblock.pending_spaces]],  0
	mov	qword ptr [word ptr [rip + col]],  0
	mov	al,  byte ptr [byte ptr [rip + newline_character]]
	and	al, 1
	mov	al, 0x25
	jne	.label_291
	mov	al, 0xa
.label_291:
	dec	rbx
	mov	rcx,  qword ptr [word ptr [rip + oc]]
	lea	rdx, [rcx + 1]
	mov	qword ptr [word ptr [rip + oc]],  rdx
	mov	rsi,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rsi + rcx], al
	cmp	rdx,  qword ptr [word ptr [rip + output_blocksize]]
	jae	.label_292
	jmp	.label_290
	nop	
.label_294:
	test	rax, rax
	je	.label_289
	nop	word ptr cs:[rax + rax]
.label_296:
	mov	al,  byte ptr [byte ptr [rip + space_character]]
	and	al, 1
	mov	al, 0x40
	jne	.label_293
	mov	al, 0x20
.label_293:
	mov	rcx,  qword ptr [word ptr [rip + oc]]
	lea	rdx, [rcx + 1]
	mov	qword ptr [word ptr [rip + oc]],  rdx
	mov	rsi,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rsi + rcx], al
	cmp	rdx,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_297
	call	write_output
.label_297:
	dec	qword ptr [word ptr [rip + copy_with_unblock.pending_spaces]]
	jne	.label_296
.label_289:
	mov	rax,  qword ptr [word ptr [rip + oc]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + oc]],  rcx
	mov	rdx,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rdx + rax], r12b
	cmp	rcx,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_290
.label_292:
	call	write_output
.label_290:
	inc	rbx
	cmp	rbx, r15
	jb	.label_295
.label_287:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405040

	.globl copy_simple
	.type copy_simple, @function
copy_simple:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	nop	dword ptr [rax + rax]
.label_298:
	mov	rbx,  qword ptr [word ptr [rip + output_blocksize]]
	mov	rdi,  qword ptr [word ptr [rip + oc]]
	sub	rbx, rdi
	cmp	r15, rbx
	cmovb	rbx, r15
	add	rdi,  qword ptr [word ptr [rip + obuf]]
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax,  qword ptr [word ptr [rip + oc]]
	add	rax, rbx
	mov	qword ptr [word ptr [rip + oc]],  rax
	cmp	rax,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_299
	call	write_output
.label_299:
	mov	rax, r15
	sub	rax, rbx
	add	r14, rbx
	cmp	r15, rbx
	mov	r15, rax
	jne	.label_298
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4050b0

	.globl write_output
	.type write_output, @function
write_output:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + obuf]]
	mov	rsi,  qword ptr [word ptr [rip + output_blocksize]]
	call	iwrite
	mov	rbx, rax
	add	qword ptr [word ptr [rip + w_bytes]],  rbx
	cmp	rbx,  qword ptr [word ptr [rip + output_blocksize]]
	jne	.label_300
	inc	qword ptr [word ptr [rip + w_full]]
	mov	qword ptr [word ptr [rip + oc]],  0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_300:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.107
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	nl_error
	test	rbx, rbx
	je	.label_301
	inc	qword ptr [word ptr [rip + w_partial]]
.label_301:
	call	quit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405150

	.globl skip_via_lseek
	.type skip_via_lseek, @function
skip_via_lseek:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x60
	mov	r15d, ecx
	mov	r12, rdx
	mov	ebp, esi
	mov	r14, rdi
	lea	rdx, [rsp + 0x30]
	mov	esi, 0x80306d02
	xor	eax, eax
	mov	edi, ebp
	call	ioctl
	mov	ebx, eax
	mov	edi, ebp
	mov	rsi, r12
	mov	edx, r15d
	call	lseek
	mov	r15, rax
	test	ebx, ebx
	jne	.label_302
	test	r15, r15
	js	.label_302
	lea	rdx, [rsp]
	mov	esi, 0x80306d02
	xor	eax, eax
	mov	edi, ebp
	call	ioctl
	test	eax, eax
	jne	.label_302
	mov	rax, qword ptr [rsp + 0x38]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_302
	mov	eax, dword ptr [rsp + 0x58]
	cmp	eax, dword ptr [rsp + 0x28]
	jne	.label_302
	mov	eax, dword ptr [rsp + 0x5c]
	cmp	eax, dword ptr [rsp + 0x2c]
	jne	.label_302
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	je	.label_303
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.115
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	r8, qword ptr [rsp]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r14
	call	nl_error
.label_303:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	r15, -1
.label_302:
	mov	rax, r15
	add	rsp, 0x60
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405220

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	mov	eax, 0x2000
	or	eax, dword ptr [rdi + 0x18]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_304
	mov	al, 1
	ret	
.label_304:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405240

	.globl is_nul
	.type is_nul, @function
is_nul:
	mov	rcx, rsi
	mov	al, 1
	test	rcx, rcx
	je	.label_305
	dec	rcx
	mov	rsi, rdi
.label_307:
	cmp	byte ptr [rsi], 0
	jne	.label_306
	test	rcx, rcx
	je	.label_305
	inc	rsi
	mov	dl, cl
	dec	rcx
	test	dl, 0xf
	jne	.label_307
	push	rax
	inc	rcx
	mov	rdx, rcx
	call	memcmp
	test	eax, eax
	sete	al
	add	rsp, 8
.label_305:
	ret	
.label_306:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x405280

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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052a0

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	movzx	eax, dil
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052b0

	.globl cache_round
	.type cache_round, @function
cache_round:
	test	edi, edi
	mov	eax, OFFSET FLAT:cache_round.i_pending
	mov	ecx, OFFSET FLAT:cache_round.o_pending
	cmove	rcx, rax
	test	rsi, rsi
	mov	rax, qword ptr [rcx]
	je	.label_308
	add	rax, rsi
	mov	edx, eax
	and	edx, 0x1ffff
	mov	qword ptr [rcx], rdx
	xor	ecx, ecx
	sub	rax, rdx
	cmovbe	rax, rcx
.label_308:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4052e0

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
	je	.label_309
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_310
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_310
.label_309:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_310
	test	cl, cl
	jne	.label_310
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_310:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405350
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405360
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405370

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_311
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_313
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_313
.label_311:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_312
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_313:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_1
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_314
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_312:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_314:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_0
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405430

	.globl fd_reopen
	.type fd_reopen, @function
fd_reopen:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edi
	xor	eax, eax
	mov	rdi, rsi
	mov	esi, edx
	mov	edx, ecx
	call	open
	mov	ebx, eax
	cmp	ebx, ebp
	je	.label_316
	test	ebx, ebx
	js	.label_316
	mov	edi, ebx
	mov	esi, ebp
	call	dup2
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_315
.label_316:
	mov	eax, ebx
.label_315:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405490

	.globl gethrxtime
	.type gethrxtime, @function
gethrxtime:
	sub	rsp, 0x18
	lea	rsi, [rsp + 8]
	mov	edi, 1
	call	clock_gettime
	test	eax, eax
	je	.label_317
	lea	rdi, [rsp + 8]
	call	gettime
.label_317:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x10]
	call	xtime_make
	add	rsp, 0x18
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x4054d0

	.globl xtime_make
	.type xtime_make, @function
xtime_make:
	movabs	rcx, 0x112e0be826d694b3
	mov	rax, rsi
	imul	rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0x1a
	add	rdx, rax
	add	rdi, rdx
	imul	rax, rdx, 0x3b9aca00
	sub	rsi, rax
	imul	rax, rdi, 0x3b9aca00
	add	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405510

	.globl xtime_nonnegative_sec
	.type xtime_nonnegative_sec, @function
xtime_nonnegative_sec:
	movabs	rcx, 0x112e0be826d694b3
	mov	rax, rdi
	imul	rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0x1a
	lea	rax, [rdx + rax]
	ret	
	.section	.text
	.align	32
	#Procedure 0x405530
	.globl xtime_sec
	.type xtime_sec, @function
xtime_sec:

	test	rdi, rdi
	js	.label_318
	jmp	xtime_nonnegative_sec
.label_318:
	add	rdi, 0x3b9ac9ff
	movabs	rcx, 0x112e0be826d694b3
	mov	rax, rdi
	imul	rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0x1a
	lea	rax, [rdx + rax - 1]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405560
	.globl xtime_nonnegative_nsec
	.type xtime_nonnegative_nsec, @function
xtime_nonnegative_nsec:

	mov	rcx, rdi
	movabs	rdx, 0x112e0be826d694b3
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0x1a
	add	rdx, rax
	imul	rax, rdx, 0x3b9aca00
	sub	rcx, rax
	mov	rax, rcx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405590
	.globl xtime_nsec
	.type xtime_nsec, @function
xtime_nsec:

	mov	rcx, rdi
	movabs	rdx, 0x112e0be826d694b3
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0x1a
	add	rdx, rax
	imul	rax, rdx, 0x3b9aca00
	mov	rdx, rcx
	sub	rdx, rax
	add	rdx, 0x3b9aca00
	sub	rcx, rax
	cmovs	rcx, rdx
	mov	rax, rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4055d0

	.globl gettime
	.type gettime, @function
gettime:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	clock_gettime
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4055e0
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405600

	.globl human_readable
	.type human_readable, @function
human_readable:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r13, r8
	mov	r15, rcx
	mov	r12d, edx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x50], rdi
	mov	eax, r12d
	and	eax, 3
	mov	dword ptr [rsp + 0x64], eax
	mov	eax, r12d
	and	eax, 0x20
	mov	dword ptr [rsp + 0x4c], eax
	mov	eax, 0x400
	mov	ecx, 0x3e8
	cmovne	ecx, eax
	mov	dword ptr [rsp + 0x74], ecx
	call	localeconv
	mov	rbx, rax
	mov	rbp, qword ptr [rbx]
	mov	rdi, rbp
	call	strlen
	lea	rcx, [rax - 1]
	cmp	rcx, 0x10
	mov	ecx, 1
	cmovb	rcx, rax
	mov	qword ptr [rsp + 0x40], rcx
	mov	eax, OFFSET FLAT:.str_3
	cmovb	rax, rbp
	mov	qword ptr [rsp + 0x20], rax
	mov	rbp, qword ptr [rbx + 8]
	mov	rbx, qword ptr [rbx + 0x10]
	mov	rdi, rbp
	call	strlen
	cmp	rax, 0x11
	mov	ecx, OFFSET FLAT:.str_0
	cmovb	rcx, rbp
	lea	rax, [r14 + 0x287]
	mov	qword ptr [rsp + 0x68], rax
	cmp	r13, r15
	jbe	.label_340
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x58], r14
	test	r15, r15
	mov	r8d, r12d
	mov	r12, r13
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_327
	xor	edx, edx
	mov	rax, r12
	div	r15
	test	rdx, rdx
	jne	.label_327
	xor	edx, edx
	mov	rax, r12
	div	r15
	mov	rsi, rax
	xor	edx, edx
	mov	rax, rdi
	div	rsi
	mov	r14, rax
	add	rdx, rdx
	lea	rax, [rdx + rdx*4]
	xor	edx, edx
	div	rsi
	mov	rcx, rax
	add	rdx, rdx
	setne	al
	cmp	rsi, rdx
	sbb	edi, edi
	and	edi, 1
	or	edi, 2
	cmp	rdx, rsi
	movzx	ebp, al
	cmovae	ebp, edi
	jmp	.label_352
.label_340:
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x58], r14
	xor	edx, edx
	mov	rax, r15
	div	r13
	test	rdx, rdx
	mov	r8d, r12d
	mov	r12, r13
	mov	rdi, qword ptr [rsp + 0x50]
	jne	.label_327
	xor	ebp, ebp
	xor	edx, edx
	mov	rax, r15
	div	r12
	mov	rcx, rax
	mov	r14, rcx
	imul	r14, rdi
	xor	edx, edx
	mov	rax, r14
	div	rcx
	cmp	rax, rdi
	mov	ecx, 0
	jne	.label_327
.label_352:
	mov	qword ptr [rsp + 0x38], rbx
	mov	r15d, r8d
	and	r15d, 0x10
	mov	ebx, 0xffffffff
	je	.label_337
	mov	r9d, dword ptr [rsp + 0x74]
	mov	edi, r9d
	xor	ebx, ebx
	cmp	rdi, r14
	jbe	.label_335
	mov	r13, qword ptr [rsp + 0x68]
	jmp	.label_330
	nop	dword ptr [rax]
.label_335:
	xor	edx, edx
	mov	rax, r14
	div	rdi
	lea	edx, [rdx + rdx*4]
	lea	ecx, [rcx + rdx*2]
	mov	esi, ebp
	sar	esi, 1
	xor	edx, edx
	mov	r14, rax
	mov	eax, ecx
	div	r9d
	lea	edx, [rsi + rdx*2]
	cmp	edx, r9d
	mov	ecx, eax
	jae	.label_342
	add	edx, ebp
	setne	al
	movzx	ebp, al
	jmp	.label_350
.label_342:
	add	edx, ebp
	cmp	r9d, edx
	sbb	ebp, ebp
	and	ebp, 1
	or	ebp, 2
.label_350:
	inc	ebx
	cmp	ebx, 7
	jg	.label_353
	cmp	rdi, r14
	jbe	.label_335
.label_353:
	cmp	r14, 9
	ja	.label_354
	mov	eax, dword ptr [rsp + 0x64]
	cmp	eax, 1
	jne	.label_347
	mov	eax, ecx
	and	eax, 1
	add	eax, ebp
	cmp	eax, 2
	ja	.label_355
	jmp	.label_323
.label_327:
	mov	qword ptr [rsp + 0x80], r12
	test	r12, r12
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0x80]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_324]]
	mov	qword ptr [rsp + 0x88], rdi
	test	rdi, rdi
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0x88]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_324]]
	mov	qword ptr [rsp + 0x90], r15
	test	r15, r15
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0x90]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_324]]
	fdivrp	st(2)
	fmulp	st(1)
	test	r8b, 0x10
	jne	.label_325
	mov	qword ptr [rsp + 0x40], r12
	mov	qword ptr [rsp + 0x38], rbx
	mov	dword ptr [rsp + 0x50], r8d
	fstp	xword ptr [rsp]
	mov	edi, dword ptr [rsp + 0x64]
	call	adjust_value
	fstp	xword ptr [rsp]
	xor	r12d, r12d
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.2_0
	xor	eax, eax
	mov	r14, qword ptr [rsp + 0x58]
	mov	rdi, r14
	call	__sprintf_chk
	mov	rdi, r14
	call	strlen
	mov	ebx, 0xffffffff
	mov	r15, qword ptr [rsp + 0x68]
	jmp	.label_349
.label_325:
	mov	qword ptr [rsp + 0x38], rbx
	mov	dword ptr [rsp + 0x50], r8d
	mov	eax, dword ptr [rsp + 0x74]
	mov	eax, eax
	mov	qword ptr [rsp + 0x78], rax
	fld1	
	xor	ebx, ebx
	fild	qword ptr [rsp + 0x78]
	fldz	
	nop	word ptr cs:[rax + rax]
.label_322:
	fstp	st(0)
	fmul	st(1), st(0)
	inc	ebx
	fld	st(0)
	fmul	st(2)
	cmp	ebx, 7
	jg	.label_319
	fxch	st(3)
	fucomi	st(3)
	fstp	st(3)
	fldz	
	jae	.label_322
.label_319:
	fstp	st(1)
	fstp	st(0)
	fdivp	st(1)
	fld	st(0)
	fstp	xword ptr [rsp + 0x20]
	fstp	xword ptr [rsp]
	mov	ebp, dword ptr [rsp + 0x64]
	mov	edi, ebp
	call	adjust_value
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.3_0
	xor	eax, eax
	mov	r14, qword ptr [rsp + 0x58]
	mov	rdi, r14
	call	__sprintf_chk
	mov	rdi, r14
	call	strlen
	mov	ecx, dword ptr [rsp + 0x4c]
	shr	ecx, 5
	xor	ecx, 1
	or	rcx, 2
	mov	rdx, qword ptr [rsp + 0x40]
	add	rcx, rdx
	cmp	rcx, rax
	mov	r15, qword ptr [rsp + 0x68]
	jb	.label_336
	fld	xword ptr [rsp + 0x20]
	inc	rdx
	mov	ecx, dword ptr [rsp + 0x50]
	test	cl, 8
	jne	.label_339
	fstp	st(0)
	jmp	.label_333
.label_337:
	mov	r13, qword ptr [rsp + 0x68]
	jmp	.label_330
.label_339:
	movzx	ecx, byte ptr [rax + r14 - 1]
	cmp	ecx, 0x30
	fstp	xword ptr [rsp + 0x20]
	jne	.label_333
.label_336:
	mov	qword ptr [rsp + 0x40], r12
	fld	dword ptr [dword ptr [rip + label_344]]
	fld	st(0)
	fstp	xword ptr [rsp + 0x14]
	fld	xword ptr [rsp + 0x20]
	fmulp	st(1)
	fstp	xword ptr [rsp]
	mov	edi, ebp
	call	adjust_value
	fld	xword ptr [rsp + 0x14]
	fdivp	st(1)
	fstp	xword ptr [rsp]
	xor	r12d, r12d
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.2_0
	xor	eax, eax
	mov	rdi, r14
	call	__sprintf_chk
	mov	rdi, r14
	call	strlen
	jmp	.label_349
.label_333:
	mov	qword ptr [rsp + 0x40], r12
	mov	r12, rdx
.label_349:
	mov	rbp, r15
	sub	rbp, rax
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rax
	call	memmove
	mov	r13, r15
	sub	r13, r12
	mov	r8d, dword ptr [rsp + 0x50]
	mov	r12, qword ptr [rsp + 0x40]
	jmp	.label_326
.label_354:
	mov	r13, qword ptr [rsp + 0x68]
	jmp	.label_330
.label_347:
	test	eax, eax
	jne	.label_323
	test	ebp, ebp
	je	.label_323
.label_355:
	inc	ecx
	xor	ebp, ebp
	cmp	ecx, 0xa
	jne	.label_323
	inc	r14
	xor	ecx, ecx
	cmp	r14, 9
	mov	ebp, 0
	ja	.label_332
.label_323:
	test	r8b, 8
	je	.label_334
	test	ecx, ecx
	jne	.label_334
	mov	r13, qword ptr [rsp + 0x68]
	jmp	.label_330
.label_334:
	add	ecx, 0x30
	mov	rax, qword ptr [rsp + 0x58]
	lea	r13, [rax + 0x286]
	mov	byte ptr [rax + 0x286], cl
	mov	rdx, qword ptr [rsp + 0x40]
	sub	r13, rdx
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x20]
	mov	ebp, r8d
	call	memcpy
	mov	r8d, ebp
	xor	ebp, ebp
	xor	ecx, ecx
	jmp	.label_330
.label_332:
	xor	ebp, ebp
	mov	r13, qword ptr [rsp + 0x68]
	mov	r14d, 0xa
.label_330:
	mov	eax, dword ptr [rsp + 0x64]
	test	eax, eax
	je	.label_343
	cmp	eax, 1
	jne	.label_346
	movsxd	rax, ebp
	mov	edx, r14d
	and	edx, 1
	add	rdx, rax
	setne	al
	movzx	eax, al
	add	eax, ecx
	cmp	eax, 5
	jg	.label_348
	jmp	.label_346
.label_343:
	add	ecx, ebp
	jle	.label_346
.label_348:
	inc	r14
	mov	eax, dword ptr [rsp + 0x74]
	cmp	ebx, 7
	jg	.label_346
	test	r15d, r15d
	je	.label_346
	cmp	r14, rax
	jne	.label_346
	inc	ebx
	mov	r14d, 1
	test	r8b, 8
	jne	.label_346
	mov	byte ptr [r13 - 1], 0x30
	dec	r13
	mov	rdx, qword ptr [rsp + 0x40]
	sub	r13, rdx
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x20]
	mov	ebp, r8d
	call	memcpy
	mov	r8d, ebp
	mov	r14d, 1
.label_346:
	mov	r15, qword ptr [rsp + 0x68]
	movabs	rcx, 0xcccccccccccccccd
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_331:
	mov	rax, r14
	mul	rcx
	mov	eax, edx
	shr	eax, 2
	and	eax, 0x3ffffffe
	lea	eax, [rax + rax*4]
	mov	esi, r14d
	sub	esi, eax
	or	sil, 0x30
	mov	byte ptr [rbp - 1], sil
	dec	rbp
	shr	rdx, 3
	cmp	r14, 9
	mov	r14, rdx
	ja	.label_331
	mov	r14, qword ptr [rsp + 0x58]
.label_326:
	test	r8b, 4
	je	.label_338
	sub	r13, rbp
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x30]
	mov	ebp, r8d
	call	group_number
	mov	r8d, ebp
	mov	rbp, rax
.label_338:
	mov	eax, dword ptr [rsp + 0x74]
	test	r8b, r8b
	jns	.label_328
	test	ebx, ebx
	jns	.label_345
	xor	ebx, ebx
	cmp	r12, 2
	jb	.label_345
	mov	eax, eax
	xor	ecx, ecx
	mov	edx, 1
	nop	
.label_341:
	mov	ebx, 8
	cmp	ecx, 7
	je	.label_345
	inc	ecx
	imul	rdx, rax
	cmp	rdx, r12
	mov	ebx, ecx
	jb	.label_341
.label_345:
	mov	eax, r8d
	and	eax, 0x100
	test	r8b, 0x40
	je	.label_351
	mov	ecx, ebx
	or	ecx, eax
	je	.label_351
	mov	byte ptr [r14 + 0x287], 0x20
	add	r14, 0x288
	mov	r15, r14
.label_351:
	test	ebx, ebx
	je	.label_356
	cmp	dword ptr [rsp + 0x4c], 0
	jne	.label_320
	mov	cl, 0x6b
	cmp	ebx, 1
	je	.label_321
.label_320:
	movsxd	rcx, ebx
	mov	cl,  byte ptr [byte ptr [rcx + power_letter]]
.label_321:
	mov	byte ptr [r15], cl
	inc	r15
.label_356:
	test	eax, eax
	je	.label_328
	cmp	dword ptr [rsp + 0x4c], 0
	je	.label_329
	test	ebx, ebx
	je	.label_329
	mov	byte ptr [r15], 0x69
	inc	r15
.label_329:
	mov	byte ptr [r15], 0x42
	inc	r15
.label_328:
	mov	byte ptr [r15], 0
	mov	rax, rbp
	add	rsp, 0x98
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
	#Procedure 0x405c60

	.globl adjust_value
	.type adjust_value, @function
adjust_value:
	fld	xword ptr [rsp + 8]
	cmp	edi, 1
	je	.label_357
	fld	xword ptr [word ptr [rip + label_359]]
	fucomip	st(1)
	jbe	.label_357
	fld	dword ptr [dword ptr [rip + label_358]]
	fld	st(1)
	fsub	st(1)
	fnstcw	word ptr [rsp - 0x22]
	mov	ax, word ptr [rsp - 0x22]
	mov	word ptr [rsp - 0x22], 0xc7f
	fldcw	word ptr [rsp - 0x22]
	mov	word ptr [rsp - 0x22], ax
	fistp	qword ptr [rsp - 0x18]
	fldcw	word ptr [rsp - 0x22]
	fnstcw	word ptr [rsp - 0x24]
	mov	ax, word ptr [rsp - 0x24]
	mov	word ptr [rsp - 0x24], 0xc7f
	fldcw	word ptr [rsp - 0x24]
	mov	word ptr [rsp - 0x24], ax
	fld	st(1)
	fistp	qword ptr [rsp - 0x20]
	fldcw	word ptr [rsp - 0x24]
	movabs	rax, 0x8000000000000000
	xor	rax, qword ptr [rsp - 0x18]
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	cmovb	rax, qword ptr [rsp - 0x20]
	test	edi, edi
	sete	sil
	mov	qword ptr [rsp - 0x10], rax
	test	rax, rax
	setns	dl
	movzx	edx, dl
	fild	qword ptr [rsp - 0x10]
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_324]]
	fucomip	st(1)
	fstp	st(0)
	setp	dl
	setne	cl
	or	cl, dl
	and	cl, sil
	movzx	ecx, cl
	add	rcx, rax
	mov	qword ptr [rsp - 8], rcx
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp - 8]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_324]]
.label_357:
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405d30

	.globl group_number
	.type group_number, @function
group_number:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	qword ptr [rsp + 8], rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	rbx, rdi
	mov	rdi, rcx
	call	strlen
	mov	r14, rax
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbx
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	mov	r13, r14
	neg	r13
	mov	rbp, -1
	jmp	.label_362
	nop	dword ptr [rax]
.label_360:
	add	rbx, r13
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r14
	call	memcpy
.label_362:
	movzx	eax, byte ptr [r15]
	test	rax, rax
	je	.label_361
	cmp	eax, 0x7f
	cmovae	rax, r12
	inc	r15
	mov	rbp, rax
.label_361:
	cmp	r12, rbp
	cmovb	rbp, r12
	sub	rbx, rbp
	mov	rax, r12
	sub	rax, rbp
	lea	rsi, [rsp + rax + 0x10]
	mov	rdi, rbx
	mov	rdx, rbp
	call	memcpy
	sub	r12, rbp
	jne	.label_360
	mov	rax, rbx
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
	#Procedure 0x405de0
	.globl human_options
	.type human_options, @function
human_options:

	push	rbx
	mov	rbx, rdx
	mov	rax, rsi
	mov	rsi, rbx
	mov	rdx, rax
	call	humblock
	cmp	qword ptr [rbx], 0
	jne	.label_363
	call	default_block_size
	mov	qword ptr [rbx], rax
	mov	eax, 4
.label_363:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e10

	.globl humblock
	.type humblock, @function
humblock:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	test	rdi, rdi
	jne	.label_368
	mov	edi, OFFSET FLAT:.str.4_0
	call	getenv
	mov	rdi, rax
	test	rdi, rdi
	jne	.label_368
	mov	edi, OFFSET FLAT:.str.5_0
	call	getenv
	mov	rdi, rax
	test	rdi, rdi
	je	.label_372
.label_368:
	movzx	eax, byte ptr [rdi]
	lea	rbx, [rdi + 1]
	cmp	eax, 0x27
	sete	al
	cmovne	rbx, rdi
	movzx	ebp, al
	shl	ebp, 2
	mov	esi, OFFSET FLAT:block_size_args
	mov	edx, OFFSET FLAT:block_size_opts
	mov	ecx, 4
	mov	rdi, rbx
	call	argmatch
	test	eax, eax
	js	.label_370
	cdqe	
	or	ebp,  dword ptr [dword ptr [+ (rax * 4) + block_size_opts]]
	mov	qword ptr [r15], 1
.label_364:
	mov	dword ptr [r14], ebp
	xor	eax, eax
	jmp	.label_365
.label_370:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	r8d, OFFSET FLAT:.str.6_0
	mov	rdi, rbx
	mov	rcx, r15
	call	xstrtoumax
	test	eax, eax
	je	.label_369
	mov	dword ptr [r14], 0
.label_365:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_369:
	mov	al, byte ptr [rbx]
	add	al, 0xd0
	movzx	eax, al
	cmp	eax, 0xa
	jb	.label_364
	mov	rax, qword ptr [rsp]
.label_367:
	cmp	rax, rbx
	je	.label_366
	mov	cl, byte ptr [rbx + 1]
	inc	rbx
	add	cl, 0xd0
	movzx	ecx, cl
	cmp	ecx, 0xa
	jae	.label_367
	jmp	.label_364
.label_372:
	call	default_block_size
	mov	qword ptr [r15], rax
	xor	ebp, ebp
	jmp	.label_364
.label_366:
	mov	ecx, ebp
	or	ecx, 0x80
	or	ebp, 0x180
	movzx	edx, byte ptr [rax - 1]
	cmp	edx, 0x42
	cmove	ecx, ebp
	jne	.label_371
	movzx	eax, byte ptr [rax - 2]
	cmp	eax, 0x69
	jne	.label_364
.label_371:
	or	ecx, 0x20
	mov	ebp, ecx
	jmp	.label_364
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f30

	.globl default_block_size
	.type default_block_size, @function
default_block_size:
	push	rax
	mov	edi, OFFSET FLAT:.str.9_0
	call	getenv
	test	rax, rax
	mov	ecx, 0x200
	mov	eax, 0x400
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405f50
	.globl parse_long_options
	.type parse_long_options, @function
parse_long_options:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0xd0
	mov	rbx, r9
	mov	r14, r8
	mov	r15, rcx
	mov	r12, rdx
	test	al, al
	je	.label_373
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_373:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  0
	cmp	edi, 2
	jne	.label_374
	mov	edx, OFFSET FLAT:.str_4
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, 0x68
	je	.label_375
	cmp	eax, 0x76
	jne	.label_374
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0x100]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x30
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	r8, [rsp + 0xb0]
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
.label_375:
	xor	edi, edi
	call	rbx
.label_374:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	mov	dword ptr [dword ptr [rip + optind]],  0
	add	rsp, 0xd0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406050

	.globl parse_gnu_standard_options_only
	.type parse_gnu_standard_options_only, @function
parse_gnu_standard_options_only:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xc8
	mov	r14, r8
	mov	r15, rcx
	mov	rbx, rdx
	test	al, al
	je	.label_379
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_379:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  1
	mov	eax, OFFSET FLAT:.str_0
	mov	edx, OFFSET FLAT:.str_4
	test	r9b, r9b
	cmovne	rdx, rax
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, -1
	je	.label_377
	mov	rcx, qword ptr [rsp + 0xf0]
	cmp	eax, 0x68
	je	.label_378
	cmp	eax, 0x76
	je	.label_380
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	jmp	.label_376
.label_378:
	xor	edi, edi
.label_376:
	call	rcx
.label_377:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	add	rsp, 0xc8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_380:
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xf8]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x30
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	r8, [rsp + 0xb0]
	mov	rsi, rbx
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406160

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_381
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_382
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_382
	mov	esi, OFFSET FLAT:.str.2_1
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_383
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_383:
	mov	rbx, r14
.label_382:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_381:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_5
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406210
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
	#Procedure 0x406250
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
	#Procedure 0x406260
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
	#Procedure 0x406270

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
	#Procedure 0x4062b0
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
	#Procedure 0x4062d0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_384
	test	rdx, rdx
	je	.label_384
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_384:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406300
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
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
	mov	rax, qword ptr [rbp + 0x28]
	mov	rcx, qword ptr [rbp + 0x30]
	lea	rdx, [rbp + 8]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rdx
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406380

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
	mov	r13d, r8d
	mov	qword ptr [rsp + 0xc0], rcx
	mov	r12, rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp + 0x88], rax
	mov	rax, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0x90], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0x60], rax
	mov	r15b, bl
	shr	r15b, 1
	and	r15b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x5c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x58], ebx
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x80], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xd0], rax
	mov	eax, 0
	xor	r11d, r11d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
.label_505:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r13d
	cmp	r13d, 0xa
	ja	.label_462
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_402]]
.label_746:
	mov	r12d, r11d
	mov	edi, OFFSET FLAT:.str.11_0
	mov	esi, r13d
	mov	r14, r10
	mov	bl, r8b
	mov	rbp, r9
	call	gettext_quote
	mov	qword ptr [rsp + 0x90], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r13d
	call	gettext_quote
	mov	r11d, r12d
	mov	r9, rbp
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x88], rax
.label_747:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	test	r15b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_430
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_430
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
.label_459:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_447
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_447:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_459
.label_430:
	mov	rbx, qword ptr [rsp + 0x88]
	mov	rdi, rbx
	mov	r12, r10
	call	strlen
	mov	r10, r12
	mov	qword ptr [rsp + 0xd0], rax
	mov	r14d, r13d
	mov	qword ptr [rsp + 0xa8], rbx
	mov	sil, 1
	mov	dil, r15b
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, rbp
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r11d, dword ptr [rsp + 0xb8]
	jmp	.label_443
.label_739:
	xor	r14d, r14d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	xor	edi, edi
	jmp	.label_443
.label_742:
	mov	al, 1
.label_740:
	mov	r15b, 1
.label_743:
	test	r15b, 1
	mov	cl, 1
	je	.label_486
	mov	cl, al
.label_486:
	mov	al, cl
.label_741:
	mov	r14d, 2
	test	r15b, 1
	jne	.label_488
	test	r10, r10
	je	.label_445
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_493
.label_488:
	xor	ecx, ecx
	jmp	.label_493
.label_744:
	mov	r14d, 5
	test	r15b, 1
	jne	.label_497
	test	r10, r10
	je	.label_502
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_409
.label_745:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	dil, 1
	jmp	.label_443
.label_445:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_493:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xa8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	jmp	.label_443
.label_497:
	xor	eax, eax
	jmp	.label_409
.label_502:
	mov	eax, 1
.label_409:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	sil, 1
	mov	dil, r15b
	nop	dword ptr [rax + rax]
.label_443:
	mov	qword ptr [rsp + 0x98], rdi
	mov	byte ptr [rsp + 0xa6], sil
	cmp	qword ptr [rsp + 0x140], 0
	setne	bl
	cmp	r14d, 2
	setne	r15b
	sete	dl
	mov	cl, sil
	and	cl, 1
	mov	byte ptr [rsp + 0xa5], cl
	sete	byte ptr [rsp + 0x6b]
	mov	r12b, r15b
	and	r12b, cl
	mov	byte ptr [rsp + 0xbf], r12b
	cmp	qword ptr [rsp + 0xd0], 0
	setne	r13b
	mov	al, r13b
	and	al, r12b
	mov	byte ptr [rsp + 0xdf], al
	mov	al, dil
	and	al, 1
	mov	byte ptr [rsp + 0xcf], al
	sete	cl
	and	dl, al
	mov	byte ptr [rsp + 0x7f], dl
	and	bl, al
	mov	byte ptr [rsp + 0xb7], bl
	or	cl, r15b
	mov	byte ptr [rsp + 0xa7], cl
	and	sil, dil
	and	sil, r13b
	mov	byte ptr [rsp + 0x6a], sil
	xor	esi, esi
	jmp	.label_424
	nop	dword ptr [rax + rax]
.label_386:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	sar	r15b, 7
	and	r15b, r8b
	mov	r8b, r15b
	inc	rsi
.label_424:
	cmp	rbp, -1
	je	.label_473
	cmp	rsi, rbp
	jne	.label_503
	jmp	.label_476
	nop	dword ptr [rax]
.label_473:
	cmp	byte ptr [r9 + rsi], 0
	je	.label_476
.label_503:
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_480
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_481
	cmp	rbp, -1
	jne	.label_481
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rdi, r9
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r14
	mov	r12, r9
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r11d, dword ptr [rsp + 0xb8]
	mov	r9, r12
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	r14, r13
	mov	r8b, r15b
	mov	r10, rbp
	mov	rbp, rax
.label_481:
	cmp	rbx, rbp
	jbe	.label_500
.label_480:
	mov	rdi, r14
	mov	dword ptr [rsp + 0xec], 0
.label_411:
	movzx	r13d, byte ptr [r9 + rsi]
	cmp	r13, 0x7e
	ja	.label_504
	xor	edx, edx
	mov	r15b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_490]]
.label_710:
	test	rsi, rsi
	jne	.label_385
	jmp	.label_389
	nop	word ptr cs:[rax + rax]
.label_500:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12d, r11d
	mov	r13, r14
	mov	r15b, r8b
	mov	rbx, r10
	lea	rdi, [r9 + rsi]
	mov	r14, rsi
	mov	rbp, r9
	mov	rsi, qword ptr [rsp + 0xa8]
	mov	rdx, qword ptr [rsp + 0xd0]
	call	memcmp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xec], eax
	jne	.label_407
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_411
	jmp	.label_425
.label_407:
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	jmp	.label_411
.label_714:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_436
	test	rsi, rsi
	jne	.label_441
	cmp	rbp, 1
	je	.label_389
	xor	r15d, r15d
	jmp	.label_440
.label_703:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_477
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_425
	cmp	edi, 2
	jne	.label_455
	mov	al, r11b
	and	al, 1
	jne	.label_458
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_461
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_461:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_466
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_466:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_474
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_474:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r11b, 1
	mov	rcx, rax
	jmp	.label_392
.label_704:
	mov	bl, 0x62
	jmp	.label_422
.label_705:
	mov	cl, 0x74
	jmp	.label_484
.label_706:
	mov	bl, 0x76
	jmp	.label_422
.label_707:
	mov	bl, 0x66
	jmp	.label_422
.label_708:
	mov	cl, 0x72
	jmp	.label_484
.label_711:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_491
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_416
	test	r10, r10
	sete	al
	mov	rcx, qword ptr [rsp + 0x80]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r10
	mov	qword ptr [rsp + 0x80], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_499
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_499:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_390
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_390:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_396
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_396:
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	jmp	.label_405
.label_712:
	mov	r14, rdi
	cmp	r14d, 5
	je	.label_410
	cmp	r14d, 2
	jne	.label_414
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_416
.label_414:
	mov	rdi, r14
	jmp	.label_385
.label_713:
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_420
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_416
	mov	rdi, r14
	jmp	.label_428
.label_504:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_432
	mov	r14, r9
	mov	rbx, rsi
	call	__ctype_b_loc
	mov	rsi, rbx
	mov	r9, r14
	mov	rax, qword ptr [rax]
	movzx	r15d, word ptr [rax + r13*2]
	shr	r15d, 0xe
	and	r15b, 1
	mov	ebx, 1
.label_460:
	and	r15b, 1
	mov	dl, r15b
	or	dl, byte ptr [rsp + 0x6b]
	mov	byte ptr [rsp + 0xc0], dl
	cmp	rbx, 1
	mov	rcx, rbx
	mov	r10, qword ptr [rsp + 0x40]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r14, qword ptr [rsp + 0x38]
	mov	r11d, dword ptr [rsp + 0xb8]
	ja	.label_450
	test	dl, dl
	je	.label_450
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_440
.label_436:
	test	rsi, rsi
	jne	.label_470
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_470
.label_389:
	mov	dl, 1
.label_709:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_425
	xor	eax, eax
	mov	r15b, dl
	jmp	.label_440
.label_477:
	cmp	dword ptr [rsp + 0x5c], 0
	je	.label_385
	mov	r14, rdi
	inc	rsi
	jmp	.label_424
.label_491:
	mov	rdi, r14
.label_405:
	xor	eax, eax
	mov	r15b, 1
	jmp	.label_440
.label_420:
	mov	rdi, r14
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r13b
	je	.label_484
.label_428:
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_413
.label_484:
	cmp	byte ptr [rsp + 0xa7], 0
	mov	bl, cl
	je	.label_425
.label_422:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	je	.label_440
	jmp	.label_418
.label_432:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_501
	mov	rdi, r9
	mov	rbx, r9
	mov	rbp, rsi
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_501:
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	r15b, 1
	xor	ebx, ebx
	lea	r14, [rsp + 0x100]
.label_453:
	lea	rax, [rbx + rsi]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x30], rsi
	lea	rsi, [r9 + rax]
	mov	qword ptr [rsp + 0x48], r9
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xfc]
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_400
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x40]
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8b, byte ptr [rsp + 0xa6]
	je	.label_406
	cmp	rbp, -2
	je	.label_417
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_419
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_438:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_433
	bt	rsi, rdx
	jb	.label_435
.label_433:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_438
.label_419:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_452
	xor	r15d, r15d
.label_452:
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	add	rbx, rbp
	mov	r14, rdi
	call	mbsinit
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_453
	jmp	.label_460
.label_470:
	mov	rbp, -1
	xor	r15d, r15d
	jmp	.label_440
.label_410:
	mov	rdi, r14
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_385
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_385
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_385
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_475
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_401
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_425
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_483
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_483:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_463
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_463:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_498
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_498:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_431
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_431:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r15d, r15d
	jmp	.label_440
.label_385:
	xor	eax, eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_440:
	test	r12b, r12b
	je	.label_469
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_393
	jmp	.label_399
	nop	word ptr cs:[rax + rax]
.label_469:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_399
.label_393:
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_403
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_413
	jmp	.label_418
	nop	word ptr cs:[rax + rax]
.label_399:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_418
	jmp	.label_413
.label_403:
	mov	bl, r13b
	mov	rsi, r14
.label_418:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_425
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_434
	mov	al, r11b
	and	al, 1
	jne	.label_434
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_439
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_439:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_496
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_496:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_387
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_387:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_434:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_465
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_465:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_472
.label_441:
	xor	r15d, r15d
	jmp	.label_440
.label_450:
	add	rcx, rsi
	xor	eax, eax
	jmp	.label_478
	nop	word ptr cs:[rax + rax]
.label_479:
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_478:
	test	dl, dl
	je	.label_437
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	je	.label_485
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_494
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	mov	rsi, rbx
.label_494:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_485
	nop	word ptr [rax + rax]
.label_437:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_416
	cmp	r14d, 2
	jne	.label_487
	mov	al, r11b
	and	al, 1
	jne	.label_487
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_506
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_506:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_391
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_391:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_471
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_471:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_487:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_421
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_421:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_446
	mov	dl, r13b
	shr	dl, 6
	or	dl, 0x30
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rdi
.label_446:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_429
	mov	dl, r13b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_429:
	add	qword ptr [rsp + 0xf0], 3
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_485:
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_413
	test	r11b, 1
	je	.label_451
	mov	bl, al
	and	bl, 1
	mov	r14, rdi
	jne	.label_454
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_457
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_457:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_448
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
.label_448:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	rsi, rbx
	jmp	.label_454
	nop	word ptr cs:[rax + rax]
.label_451:
	mov	r14, rdi
.label_454:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_479
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rbx], r13b
	mov	rsi, rdi
	jmp	.label_479
.label_413:
	test	r11b, 1
	je	.label_415
	and	al, 1
	jne	.label_415
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_489
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_489:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_495
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_495:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	bl, r13b
	jmp	.label_472
	nop	dword ptr [rax + rax]
.label_415:
	mov	bl, r13b
	mov	r14, rdi
.label_472:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_386
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
	jmp	.label_386
.label_455:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_392
.label_458:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_392:
	cmp	rcx, r10
	jae	.label_394
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_394:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r13b, 0x30
	cmp	edi, 2
	je	.label_398
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_408
	mov	dl, byte ptr [r9 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_427
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_423
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	mov	rsi, rbx
.label_423:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_426
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsi, rbx
.label_426:
	add	rcx, 3
	xor	r15d, r15d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_440
.label_398:
	xor	r15d, r15d
	jmp	.label_440
.label_408:
	xor	r15d, r15d
	jmp	.label_440
.label_427:
	xor	r15d, r15d
	jmp	.label_440
.label_400:
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_444
.label_406:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_449
.label_417:
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	jae	.label_456
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_467:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax + rbx], 0
	je	.label_464
	lea	rax, [rsi + rbx + 1]
	inc	rbx
	cmp	rax, rbp
	jb	.label_467
	xor	r15d, r15d
	jmp	.label_444
.label_456:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_449:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_444:
	mov	byte ptr [rsp + 0xa6], r8b
	jmp	.label_460
.label_464:
	xor	r15d, r15d
	jmp	.label_444
.label_475:
	xor	r15d, r15d
	jmp	.label_440
.label_401:
	xor	r15d, r15d
	mov	rsi, rbx
	jmp	.label_440
	nop	dword ptr [rax + rax]
.label_476:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	and	cl, 1
	je	.label_482
	or	dl, al
	je	.label_416
.label_482:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12, r9
	test	cl, cl
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	je	.label_492
	or	dl, al
	jne	.label_492
	test	r8b, 1
	jne	.label_442
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_492
	test	r10, r10
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	r15b, dl
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_505
.label_492:
	mov	rdx, qword ptr [rsp + 0xa8]
	test	rdx, rdx
	je	.label_388
	test	cl, cl
	jne	.label_388
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_388
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_404:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_395
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_395:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_404
.label_388:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_397
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_397
.label_425:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_412:
	test	r8b, 1
	mov	r8d, 4
	cmove	r8d, r14d
	cmp	r14d, 2
	cmovne	r8d, r14d
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, r10
	mov	rcx, rbp
.label_468:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_397:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_435:
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_412
.label_416:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	jmp	.label_412
.label_442:
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0x80]
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	r9d, dword ptr [rsp + 0x6c]
	jmp	.label_468
.label_462:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407590
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4075a0

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
	call	xcharalloc
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
	je	.label_507
	mov	qword ptr [rax], rbx
.label_507:
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
	#Procedure 0x4076a0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_508
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_511:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_511
.label_508:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_512
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_509]], OFFSET FLAT:slot0
.label_512:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_510
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_510:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407740

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x407750

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
	js	.label_513
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_517
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_514
.label_517:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_516
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
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_515
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_515:
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
	mov	r14, qword ptr [rsp + 0x38]
.label_514:
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
	ja	.label_519
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_518
	mov	rdi, rbx
	call	free
.label_518:
	mov	rdi, r14
	call	xcharalloc
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
.label_519:
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
.label_513:
	call	abort
.label_516:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407920

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407930
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407940
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
	#Procedure 0x407950

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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407990

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
	je	.label_520
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
.label_520:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4079f0

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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407a30

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	mov	rax, rsi
	mov	ecx, edi
	xor	edi, edi
	mov	esi, ecx
	mov	rdx, rax
	jmp	quotearg_n_style
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a50
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a70

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
	mov	rcx,  qword ptr [word ptr [rip + label_521]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_522]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_523]]
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407ae0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407af0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b00
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b10

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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407b60

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407b70

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
	mov	rax,  qword ptr [word ptr [rip + label_521]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_522]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_523]]
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407be0
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407c00
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c20

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c30
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
	#Procedure 0x407c40

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407c50

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c60

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r14d, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_525
	call	locale_charset
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0
	mov	dword ptr [rsp], 0
	mov	esi, 0x55
	mov	edx, 0x54
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	call	strcaseeq0
	test	eax, eax
	je	.label_524
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_525
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_525
.label_524:
	mov	dword ptr [rsp + 8], 0x30
	mov	dword ptr [rsp], 0x33
	mov	esi, 0x47
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	r8d, 0x38
	mov	r9d, 0x30
	mov	rdi, rbp
	call	strcaseeq0
	test	eax, eax
	je	.label_526
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_525
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_525
.label_526:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_525:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407d40

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
	je	.label_528
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_529
	jmp	.label_527
.label_528:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_527
.label_529:
	mov	eax, 1
	test	bpl, bpl
	je	.label_527
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
.label_527:
	add	rsp, 8
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
	#Procedure 0x407dd0

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
	je	.label_532
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_530
	jmp	.label_531
.label_532:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_531
.label_530:
	mov	eax, 1
	test	bpl, bpl
	je	.label_531
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
.label_531:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407e60

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
	je	.label_533
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_535
	jmp	.label_534
.label_533:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_534
.label_535:
	mov	eax, 1
	test	bpl, bpl
	je	.label_534
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
.label_534:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407ee0

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
	je	.label_538
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_537
	jmp	.label_536
.label_538:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_536
.label_537:
	mov	eax, 1
	test	bpl, bpl
	je	.label_536
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
.label_536:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407f50

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
	je	.label_541
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_539
	jmp	.label_540
.label_541:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_540
.label_539:
	mov	eax, 1
	test	bpl, bpl
	je	.label_540
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_540:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407fc0

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
	je	.label_542
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_544
	jmp	.label_543
.label_542:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_543
.label_544:
	mov	eax, 1
	test	bpl, bpl
	je	.label_543
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_543:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408010

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
	je	.label_547
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_546
	jmp	.label_545
.label_547:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_545
.label_546:
	mov	eax, 1
	test	bpl, bpl
	je	.label_545
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_545:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408060

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_550
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_549
	jmp	.label_548
.label_550:
	mov	eax, 1
	test	cl, cl
	je	.label_548
.label_549:
	xor	eax, eax
.label_548:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408090

	.globl verror
	.type verror, @function
verror:
	mov	r9, rcx
	mov	rax, rdx
	xor	edx, edx
	xor	ecx, ecx
	mov	r8, rax
	jmp	verror_at_line
	nop	
	.section	.text
	.align	32
	#Procedure 0x4080a0

	.globl verror_at_line
	.type verror_at_line, @function
verror_at_line:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15d, ecx
	mov	rbp, rdx
	mov	r14d, esi
	mov	r12d, edi
	mov	rdi, r8
	mov	rsi, r9
	call	xvasprintf
	mov	rbx, rax
	test	rbx, rbx
	je	.label_553
	test	rbp, rbp
	je	.label_551
	mov	r8d, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	edi, r12d
	mov	esi, r14d
	mov	rdx, rbp
	mov	ecx, r15d
	mov	r9, rbx
	call	error_at_line
	jmp	.label_552
.label_551:
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	edi, r12d
	mov	esi, r14d
	mov	rcx, rbx
	call	error
.label_552:
	mov	rdi, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	free
.label_553:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408140

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
	je	.label_554
	mov	edx, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_563
.label_554:
	mov	edx, OFFSET FLAT:.str.1_3
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_563:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_2
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
	mov	esi, OFFSET FLAT:.str.3_1
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_558
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_560]]
.label_784:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_1
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
.label_558:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_557
.label_785:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_1
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
.label_786:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6_1
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
.label_787:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_555
.label_788:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_556
.label_789:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_562
.label_790:
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
.label_562:
	mov	qword ptr [rsp + 0x10], rdi
.label_556:
	mov	qword ptr [rsp + 8], rsi
.label_555:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_559
.label_792:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_557:
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
	jmp	.label_561
.label_791:
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
.label_561:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_559:
	call	__fprintf_chk
.label_783:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408430
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_564:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_564
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408460

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_566:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_565
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_567
	nop	dword ptr [rax]
.label_565:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_567:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_568
	inc	r9
	cmp	r9, 0xa
	jb	.label_566
.label_568:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4084c0
	.globl version_etc
	.type version_etc, @function
version_etc:

	sub	rsp, 0xc8
	test	al, al
	je	.label_569
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_569:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x20
	lea	r8, [rsp + 0xb0]
	call	version_etc_va
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408550
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
	mov	edx, OFFSET FLAT:.str.17_0
	mov	ecx, OFFSET FLAT:.str.18_0
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19_0
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x4085d0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_570
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_570:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408600

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_571
	test	rax, rax
	je	.label_572
.label_571:
	pop	rbx
	ret	
.label_572:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408620
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_573
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_573:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408650

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_574
	test	rbx, rbx
	jne	.label_574
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_574:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_576
	test	rax, rax
	je	.label_575
.label_576:
	pop	rbx
	ret	
.label_575:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x408680

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_577
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_580
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_578
.label_577:
	test	rcx, rcx
	jne	.label_581
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_581:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_579
.label_578:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_580:
	call	xalloc_die
.label_579:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408700

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408710
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408750
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_582
	call	rpl_calloc
	test	rax, rax
	je	.label_582
	pop	rcx
	ret	
.label_582:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408780

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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4087b0
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
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4087d0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_4
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x408800

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
	jae	.label_583
	mov	qword ptr [rsp], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_601:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_601
	test	rbp, rbp
	lea	rcx, [rsp + 0x10]
	cmovne	rcx, rbp
	movzx	eax, al
	mov	r15d, 4
	cmp	eax, 0x2d
	je	.label_589
	mov	rdi, rbx
	mov	rbp, rcx
	mov	rsi, rbp
	mov	edx, r14d
	call	strtoumax
	mov	rcx, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_588
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_592
	cmp	eax, 0x22
	jne	.label_589
	mov	r12d, 1
.label_592:
	test	rbp, rbp
	jne	.label_596
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	jmp	.label_598
.label_588:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_589
	mov	rbx, rcx
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_589
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	mov	rcx, rbx
	je	.label_589
	mov	qword ptr [rsp + 8], 1
	xor	r12d, r12d
.label_596:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_586
	mov	r13, rcx
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_591
	mov	r15d, 0x400
	mov	r14d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_594
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_599
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r14d, 1
	mov	rbx, r13
	test	rax, rax
	je	.label_587
	mov	rax, qword ptr [rbx]
	movsx	ecx, byte ptr [rax + 1]
	mov	r14d, 1
	cmp	ecx, 0x42
	je	.label_585
	cmp	ecx, 0x44
	je	.label_585
	cmp	ecx, 0x69
	jne	.label_587
	movzx	eax, byte ptr [rax + 2]
	mov	r14d, 3
	cmp	eax, 0x42
	je	.label_587
	mov	r14d, 1
	jmp	.label_587
.label_585:
	mov	r15d, 0x3e8
	mov	r14d, 2
.label_587:
	mov	rax, qword ptr [rbx]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x59
	jg	.label_595
	lea	ecx, [rax - 0x42]
	cmp	ecx, 0xe
	ja	.label_597
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_590]]
.label_766:
	lea	rdi, [rsp + 8]
	mov	esi, 0x400
	jmp	.label_600
.label_595:
	cmp	eax, 0x73
	jg	.label_603
	lea	ecx, [rax - 0x62]
	cmp	ecx, 0xb
	ja	.label_604
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_602]]
.label_779:
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_600
.label_597:
	cmp	eax, 0x54
	je	.label_605
	cmp	eax, 0x59
	jne	.label_591
	lea	rdi, [rsp + 8]
	mov	edx, 8
	jmp	.label_584
.label_603:
	cmp	eax, 0x74
	je	.label_605
	cmp	eax, 0x77
	jne	.label_591
	lea	rdi, [rsp + 8]
	mov	esi, 2
.label_600:
	call	bkm_scale
	jmp	.label_607
.label_768:
	lea	rdi, [rsp + 8]
	mov	edx, 3
	jmp	.label_584
.label_769:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	jmp	.label_584
.label_770:
	lea	rdi, [rsp + 8]
	mov	edx, 2
	jmp	.label_584
.label_605:
	lea	rdi, [rsp + 8]
	mov	edx, 4
	jmp	.label_584
.label_604:
	cmp	eax, 0x5a
	jne	.label_591
	lea	rdi, [rsp + 8]
	mov	edx, 7
	jmp	.label_584
.label_591:
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_606
.label_767:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	jmp	.label_584
.label_771:
	lea	rdi, [rsp + 8]
	mov	edx, 5
.label_584:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_607:
	or	eax, r12d
	mov	rcx, qword ptr [rbx]
	lea	rdx, [rcx + r14]
	mov	qword ptr [rbx], rdx
	cmp	byte ptr [rcx + r14], 0
	je	.label_593
	or	eax, 2
.label_593:
	mov	r12d, eax
.label_586:
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rsp + 8]
.label_598:
	mov	qword ptr [rcx], rax
.label_606:
	mov	r15d, r12d
.label_589:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_594:
	mov	rbx, r13
	jmp	.label_587
.label_599:
	mov	rbx, r13
	jmp	.label_587
.label_583:
	mov	edi, OFFSET FLAT:.str_7
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408b10

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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408b40

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	mov	r14d, esi
	mov	r15, rdi
	xor	ebx, ebx
	test	ebp, ebp
	je	.label_608
	nop	word ptr cs:[rax + rax]
.label_609:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebx, eax
	dec	ebp
	jne	.label_609
.label_608:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408b80

	.globl xvasprintf
	.type xvasprintf, @function
xvasprintf:
	push	rax
	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	jmp	.label_610
	nop	dword ptr [rax + rax]
.label_616:
	inc	rdi
.label_610:
	movzx	edx, byte ptr [rcx + rdi*2]
	cmp	edx, 0x25
	jne	.label_614
	movzx	edx, byte ptr [rcx + rdi*2 + 1]
	cmp	edx, 0x73
	je	.label_616
	jmp	.label_611
.label_614:
	test	dl, dl
	jne	.label_611
	mov	rsi, rax
	call	xstrcat
	pop	rcx
	ret	
.label_611:
	lea	rdi, [rsp]
	mov	esi, 1
	mov	rdx, rcx
	mov	rcx, rax
	call	__vasprintf_chk
	test	eax, eax
	js	.label_612
	mov	rax, qword ptr [rsp]
	jmp	.label_613
.label_612:
	call	__errno_location
	mov	rcx, rax
	xor	eax, eax
	cmp	dword ptr [rcx], 0xc
	je	.label_615
.label_613:
	pop	rcx
	ret	
.label_615:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408bf0

	.globl xstrcat
	.type xstrcat, @function
xstrcat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rsi
	mov	r12, rdi
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [r14]
	movaps	xmmword ptr [rsp], xmm0
	test	r12, r12
	je	.label_623
	xor	ebx, ebx
	mov	rbp, r12
	nop	
.label_620:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_619
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_622
	nop	word ptr [rax + rax]
.label_619:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_622:
	mov	rdi, qword ptr [rax]
	call	strlen
	mov	rdi, rbx
	mov	rsi, rax
	call	xsum
	mov	rbx, rax
	dec	rbp
	jne	.label_620
	test	rbx, -0x80000000
	je	.label_621
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	xor	r15d, r15d
	jmp	.label_624
.label_623:
	mov	edi, 1
	call	xmalloc
	mov	r15, rax
	mov	rbx, r15
	jmp	.label_618
.label_621:
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	r15, rax
	mov	rbx, r15
	test	r12, r12
	je	.label_618
	nop	dword ptr [rax]
.label_625:
	movsxd	rcx, dword ptr [r14]
	cmp	rcx, 0x28
	ja	.label_617
	mov	rax, rcx
	add	rax, qword ptr [r14 + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [r14], ecx
	jmp	.label_626
	nop	dword ptr [rax + rax]
.label_617:
	mov	rax, qword ptr [r14 + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [r14 + 8], rcx
.label_626:
	mov	r13, qword ptr [rax]
	mov	rdi, r13
	call	strlen
	mov	rbp, rax
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, rbp
	call	memcpy
	add	rbx, rbp
	dec	r12
	jne	.label_625
.label_618:
	mov	byte ptr [rbx], 0
.label_624:
	mov	rax, r15
	add	rsp, 0x18
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
	#Procedure 0x408d20

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_627
	test	rsi, rsi
	mov	ecx, 1
	je	.label_628
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_628
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_627:
	mov	ecx, 1
.label_628:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408d70

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_629
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_631
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_629
.label_631:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_629
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_630
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_630:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_629:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408df0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xc8
	test	al, al
	je	.label_643
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_643:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	cmp	esi, 0xb
	ja	.label_634
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_640
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_632
	test	esi, esi
	jne	.label_634
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_635
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_633
.label_634:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_637
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_632
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_636
.label_640:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_632:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_641
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_639
.label_641:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_639:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_636:
	cmp	eax, 6
	jne	.label_637
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_644
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_645
.label_637:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_638
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_642
.label_635:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_633:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xc8
	ret	
.label_644:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_645:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xc8
	ret	
.label_638:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_642:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409000

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	mov	ecx, esi
	xor	esi, esi
	xor	eax, eax
	mov	edx, ecx
	jmp	fcntl
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409010

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_648
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_650
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_650
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_646
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_647
.label_650:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_647
.label_648:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_647:
	test	ebx, ebx
	js	.label_646
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_646
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_649
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_646
.label_649:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_646:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4090e0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_651
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_651
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_651:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409110

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_652
	ret	
.label_652:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409130

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
	jne	.label_653
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_653
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_654
.label_653:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_654:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_655
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_655:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4091a0

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
	je	.label_656
	cmp	r15, -2
	jb	.label_656
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_656
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_656:
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
	#Procedure 0x409200

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409210

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
	mov	qword ptr [rsp + 0x20], rbp
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_660
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	
.label_657:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_658
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_662
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_663
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_659
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_658
.label_659:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_658
.label_663:
	mov	qword ptr [rsp + 0x18], rbp
	nop	word ptr [rax + rax]
.label_658:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_657
	jmp	.label_661
.label_660:
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_661:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 0x18]
.label_662:
	mov	rax, rbp
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
	#Procedure 0x409310

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
	je	.label_664
	mov	esi, OFFSET FLAT:.str.1_6
	jmp	.label_665
.label_664:
	mov	esi, OFFSET FLAT:.str_8
.label_665:
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
	#Procedure 0x409380

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
	mov	esi, OFFSET FLAT:.str.2_3
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [r15]
	test	rbx, rbx
	je	.label_670
	xor	r12d, r12d
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_667:
	test	rbp, rbp
	je	.label_669
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_666
.label_669:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_2
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_668
	nop	word ptr cs:[rax + rax]
.label_666:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.4_2
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_668:
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	jne	.label_667
.label_670:
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
	nop	
	.section	.text
	.align	32
	#Procedure 0x409480
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
	jns	.label_671
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
.label_671:
	add	rsp, 8
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
	#Procedure 0x4094f0
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
	je	.label_672
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_673:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_672
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_673
.label_672:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409560
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_674
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_674
.label_675:
	ret	
.label_674:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_675
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409590
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_676
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_676:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4095b0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4095c0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	cmp	edi, 0x20
	sete	cl
	cmp	edi, 9
	sete	al
	or	al, cl
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4095d0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_677
.label_678:
	ret	
.label_677:
	cmp	edi, 0x7f
	je	.label_678
	xor	eax, eax
	jmp	.label_678
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4095f0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409600
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409610
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409620
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409630
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_679
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_679
.label_680:
	ret	
.label_679:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_680
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409660
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_681
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_681:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409680

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409690
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_682
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_682:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4096b0
	.globl c_tolower
	.type c_tolower, @function
c_tolower:

	lea	ecx, [rdi - 0x41]
	lea	eax, [rdi + 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4096c0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	lea	ecx, [rdi - 0x61]
	lea	eax, [rdi - 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4096d0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_684
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_685
	cmp	byte ptr [rax + 1], 0
	je	.label_683
.label_685:
	mov	esi, OFFSET FLAT:.str.1_7
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_684
.label_683:
	xor	ebx, ebx
.label_684:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x409710

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_8
	cmp	byte ptr [rcx], 0
	je	.label_686
	mov	rax, rcx
.label_686:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409740

	.globl xsum
	.type xsum, @function
xsum:
	add	rsi, rdi
	cmp	rsi, rdi
	mov	rax, -1
	cmovae	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409760
	.globl xsum3
	.type xsum3, @function
xsum3:

	push	rbx
	mov	rbx, rdx
	call	xsum
	mov	rdi, rax
	mov	rsi, rbx
	pop	rbx
	jmp	xsum
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409780
	.globl xsum4
	.type xsum4, @function
xsum4:

	push	r14
	push	rbx
	push	rax
	mov	r14, rcx
	mov	rbx, rdx
	call	xsum
	mov	rdi, rax
	mov	rsi, rbx
	call	xsum
	mov	rdi, rax
	mov	rsi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	xsum
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4097b0
	.globl xmax
	.type xmax, @function
xmax:

	cmp	rdi, rsi
	cmovae	rsi, rdi
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4097c0

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
	nop	dword ptr [rax]
	.section .text
	.align	32
	#Procedure 0x409890

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat