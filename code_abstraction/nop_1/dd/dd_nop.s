	.section	.text
	.align	32
	#Procedure 0x401d80

	.globl usage
	.type usage, @function
usage:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	push	rax
	lea	rdi, [rdi]
	mov	ebp, edi
	test	ebp, ebp
	nop	
	jne	.label_7
	nop	
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.1
	nop	
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rsp, rsp
	mov	rcx, rdx
	call	__printf_chk
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.8
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.11
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.17
	nop	
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	nop	
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.22
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	nop	
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.24
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	nop	
	call	exit
.label_7:
	mov	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	rsp, rsp
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	nop	
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4021c0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	mov	rsp, rsp
	push	r14
	nop	
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.39
	nop	word ptr cs:[rax + rax]
.label_9:
	mov	edi, OFFSET FLAT:.str.25
	call	strcmp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_10
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	add	rbx, 0x10
	test	rsi, rsi
	mov	rbp, rbp
	jne	.label_9
.label_10:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:.str.25
	mov	rbp, rbp
	cmovne	rbx, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.47
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.17_0
	mov	ecx, OFFSET FLAT:.str.18_0
	xor	eax, eax
	nop	
	call	__printf_chk
	nop	
	mov	edi, 5
	nop	
	xor	esi, esi
	lea	rdi, [rdi]
	call	setlocale
	test	rax, rax
	je	.label_8
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 3
	mov	rdi, rax
	mov	rsp, rsp
	call	strncmp
	test	eax, eax
	nop	
	je	.label_8
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
.label_8:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	r14d, OFFSET FLAT:.str.25
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.18_0
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.25
	xor	eax, eax
	call	__printf_chk
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.53
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rsp, rsp
	cmp	rbx, r14
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:.str.54
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str_0
	cmove	rcx, rax
	mov	edi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsi, rdx
	mov	rdx, rbx
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	jmp	__printf_chk
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402350

	.globl main
	.type main, @function
main:
	lea	rsi, [rsi]
	push	rbp
	push	r14
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0xc0
	nop	
	mov	rbx, rsi
	mov	rbp, rbp
	mov	r14d, edi
	call	install_signal_handlers
	mov	rdi, qword ptr [rbx]
	nop	
	call	set_program_name
	lea	rsi, [rsi]
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.27
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.28
	mov	rbp, rbp
	call	bindtextdomain
	nop	
	mov	edi, OFFSET FLAT:.str.27
	call	textdomain
	mov	edi, OFFSET FLAT:maybe_close_stdout
	lea	rdi, [rdi]
	call	atexit
	call	getpagesize
	cdqe	
	nop	
	mov	qword ptr [word ptr [rip + page_size]],  rax
	mov	rbp, rbp
	mov	r8,  qword ptr [word ptr [rip + Version]]
	nop	
	mov	qword ptr [rsp + 0x20], 0
	mov	qword ptr [word ptr [rsp + 24]], OFFSET FLAT:.str.31
	mov	rbp, rbp
	mov	qword ptr [word ptr [rsp + 16]], OFFSET FLAT:.str.30
	mov	rsp, rsp
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:.str.29
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:usage
	xor	ebp, ebp
	mov	edx, OFFSET FLAT:.str.25
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.27
	mov	r9d, 1
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, r14d
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	parse_gnu_standard_options_only
	nop	
	mov	byte ptr [byte ptr [rip + close_stdout_required]],  1
	nop	word ptr [rax + rax]
.label_21:
	mov	byte ptr [byte ptr [rbp + trans_table]],  bpl
	lea	rsi, [rsi]
	inc	rbp
	cmp	rbp, 0x100
	jne	.label_21
	nop	
	mov	edi, r14d
	mov	rsi, rbx
	mov	rsp, rsp
	call	scanargs
	call	apply_translations
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + input_file]]
	test	rsi, rsi
	mov	rbp, rbp
	je	.label_28
	mov	edx,  dword ptr [dword ptr [rip + input_flags]]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	xor	ecx, ecx
	call	ifd_reopen
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsp, rsp
	jns	.label_13
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rax]
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rax
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + input_file]]
	lea	rsi, [rsi]
	jmp	.label_30
.label_28:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [word ptr [rip + input_file]],  rax
	mov	esi,  dword ptr [dword ptr [rip + input_flags]]
	xor	edi, edi
	mov	rdx, rax
	call	set_fd_flags
.label_13:
	mov	rbp, rbp
	xor	ebp, ebp
	xor	edi, edi
	nop	
	xor	esi, esi
	mov	edx, 1
	nop	
	call	lseek
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	setns	byte ptr [byte ptr [rip + input_seekable]]
	cmovs	rax, rbp
	mov	qword ptr [word ptr [rip + input_offset]],  rax
	mov	rsp, rsp
	call	__errno_location
	nop	
	mov	r14, rax
	mov	eax, dword ptr [r14]
	mov	dword ptr [dword ptr [rip + input_seek_errno]],  eax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	test	rsi, rsi
	je	.label_19
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	nop	
	mov	ecx, eax
	mov	rbp, rbp
	shr	ecx, 6
	mov	edx, ecx
	not	edx
	lea	rsi, [rsi]
	and	edx, 0x40
	and	ecx, 0x80
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + seek_records]]
	lea	rsi, [rsi]
	cmp	rdi, 0
	sete	bl
	movzx	ebx, bl
	lea	rdi, [rdi]
	shl	ebx, 9
	lea	rdi, [rdi]
	test	ah, 2
	cmovne	ebx, ebp
	lea	rdi, [rdi]
	or	ecx,  dword ptr [dword ptr [rip + output_flags]]
	nop	
	or	ebx, edx
	or	ebx, ecx
	mov	rbp, rbp
	cmp	rdi, 0
	je	.label_24
	mov	rbp, rbp
	mov	edx, ebx
	lea	rsi, [rsi]
	or	edx, 2
	mov	edi, 1
	mov	ecx, 0x1b6
	mov	rsp, rsp
	call	ifd_reopen
	mov	rsp, rsp
	test	eax, eax
	jns	.label_23
.label_24:
	nop	
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	nop	
	or	ebx, 1
	mov	rsp, rsp
	mov	edi, 1
	mov	rbp, rbp
	mov	ecx, 0x1b6
	mov	edx, ebx
	call	ifd_reopen
	mov	rsp, rsp
	test	eax, eax
	js	.label_29
.label_23:
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + seek_records]]
	mov	rsp, rsp
	test	rcx, rcx
	je	.label_11
	mov	rbp, rbp
	test	byte ptr [byte ptr [rip + label_16]],  2
	jne	.label_11
	mov	rbx,  qword ptr [word ptr [rip + output_blocksize]]
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_18
	imul	rbx, rcx
	lea	rdi, [rdi]
	add	rbx,  qword ptr [word ptr [rip + seek_bytes]]
	mov	rdi, rbx
	call	iftruncate
	nop	
	test	eax, eax
	je	.label_11
	lea	rsi, [rsi]
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x30]
	mov	edi, 1
	lea	rsi, [rsi]
	call	__fstat
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_25
	lea	rdi, [rdi]
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	cmp	eax, 0x8000
	mov	rsp, rsp
	je	.label_14
	cmp	eax, 0x4000
	jne	.label_11
.label_14:
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	rsp, rsp
	mov	edi, 4
	call	quotearg_style
	mov	rsp, rsp
	mov	r8, rax
	mov	edi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r14
	mov	rcx, rbx
	mov	rbp, rbp
	call	nl_error
.label_19:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.34
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [word ptr [rip + output_file]],  rax
	mov	esi,  dword ptr [dword ptr [rip + output_flags]]
	mov	edi, 1
	mov	rdx, rax
	lea	rdi, [rdi]
	call	set_fd_flags
.label_11:
	mov	rsp, rsp
	call	gethrxtime
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + start_time]],  rax
	mov	rsp, rsp
	add	rax, 0x3b9aca00
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + next_time]],  rax
	call	dd_copy
	lea	rsi, [rsi]
	mov	ebx, eax
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + max_bytes]]
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + i_nocache]]
	nop	
	or	rcx,  qword ptr [word ptr [rip + max_records]]
	nop	
	je	.label_27
	lea	rdi, [rdi]
	cmp	byte ptr [byte ptr [rip + i_nocache_eof]],  0
	jne	.label_12
	xor	al, 1
	test	al, 1
	jne	.label_15
.label_12:
	xor	edi, edi
	xor	esi, esi
	nop	
	call	invalidate_cache
.label_15:
	lea	rdi, [rdi]
	cmp	byte ptr [byte ptr [rip + o_nocache_eof]],  0
	mov	rsp, rsp
	jne	.label_17
	mov	al,  byte ptr [byte ptr [rip + o_nocache]]
	nop	
	xor	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_20
.label_17:
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	mov	rsp, rsp
	call	invalidate_cache
	jmp	.label_20
.label_27:
	test	al, 1
	je	.label_22
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	nop	
	call	invalidate_cache
	test	al, al
	jne	.label_22
	mov	ebx, dword ptr [r14]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdx,  qword ptr [word ptr [rip + input_file]]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	mov	rbp, rbp
	call	quotearg_n_style_colon
	mov	rbp, rbp
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	nl_error
	mov	ebx, 1
.label_22:
	movzx	eax,  byte ptr [byte ptr [rip + o_nocache]]
	mov	rbp, rbp
	and	eax, 1
	cmp	eax, 1
	nop	
	jne	.label_20
	mov	edi, 1
	nop	
	xor	esi, esi
	call	invalidate_cache
	test	al, al
	mov	rsp, rsp
	jne	.label_20
	mov	rbp, rbp
	mov	ebx, dword ptr [r14]
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rbp, rax
	mov	rdx,  qword ptr [word ptr [rip + output_file]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebx
	mov	rbp, rbp
	mov	rdx, rbp
	mov	rbp, rbp
	call	nl_error
	mov	ebx, 1
.label_20:
	lea	rsi, [rsi]
	call	finish_up
	mov	eax, ebx
	lea	rdi, [rdi]
	add	rsp, 0xc0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_29:
	mov	rsp, rsp
	mov	ebx, dword ptr [r14]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.33
	nop	
	jmp	.label_26
.label_18:
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.35
	nop	
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rbp
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + seek_records]]
	lea	rsi, [rsi]
	mov	edi, 1
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	r8, rbx
	call	nl_error
.label_25:
	mov	ebx, dword ptr [r14]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
.label_26:
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
.label_30:
	mov	edi, 4
	nop	
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebx
	lea	rdi, [rdi]
	mov	rdx, rbp
	mov	rsp, rsp
	call	nl_error
	nop	
	.section	.text
	.align	32
	#Procedure 0x402990

	.globl install_signal_handlers
	.type install_signal_handlers, @function
install_signal_handlers:
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0xa0
	nop	
	mov	edi, OFFSET FLAT:.str.9_0
	call	getenv
	mov	rbp, rbp
	mov	rbx, rax
	mov	edi, OFFSET FLAT:caught_signals
	call	sigemptyset
	test	rbx, rbx
	nop	
	jne	.label_40
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xa
	lea	rsi, [rsi]
	call	sigaddset
.label_40:
	lea	rdx, [rsp + 8]
	lea	rdi, [rdi]
	mov	edi, 2
	mov	rsp, rsp
	xor	esi, esi
	mov	rbp, rbp
	call	sigaction
	mov	rsp, rsp
	cmp	qword ptr [rsp + 8], 1
	mov	rsp, rsp
	je	.label_32
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:caught_signals
	mov	rsp, rsp
	mov	esi, 2
	call	sigaddset
.label_32:
	movups	xmm0,  xmmword ptr [word ptr [rip + label_33]]
	nop	
	movups	xmmword ptr [rsp + 0x80], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_34]]
	movups	xmmword ptr [rsp + 0x70], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_35]]
	movups	xmmword ptr [rsp + 0x60], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_36]]
	lea	rsi, [rsi]
	movups	xmmword ptr [rsp + 0x50], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_37]]
	lea	rsi, [rsi]
	movups	xmmword ptr [rsp + 0x40], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_38]]
	nop	
	movups	xmmword ptr [rsp + 0x30], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_39]]
	movups	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + caught_signals]]
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0x10], xmm0
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xa
	call	sigismember
	test	eax, eax
	je	.label_41
	mov	rsp, rsp
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:siginfo_handler
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x90], 0
	lea	rsi, [rsp + 8]
	mov	rsp, rsp
	mov	edi, 0xa
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rsi, [rsi]
	call	sigaction
.label_41:
	nop	
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 2
	lea	rdi, [rdi]
	call	sigismember
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_31
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:interrupt_handler
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x90], 0xc0000000
	lea	rsi, [rsp + 8]
	mov	rsp, rsp
	mov	edi, 2
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	call	sigaction
.label_31:
	nop	
	add	rsp, 0xa0
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b30

	.globl maybe_close_stdout
	.type maybe_close_stdout, @function
maybe_close_stdout:
	mov	rbp, rbp
	push	rax
	mov	al,  byte ptr [byte ptr [rip + close_stdout_required]]
	and	al, 1
	je	.label_42
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	nop	
	call	close_stream
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_43
	lea	rsi, [rsi]
	pop	rax
	ret	
.label_42:
	lea	rdi, [rdi]
	pop	rax
	jmp	close_stdout
.label_43:
	mov	edi, 1
	mov	rbp, rbp
	call	_exit
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402b70

	.globl scanargs
	.type scanargs, @function
scanargs:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	mov	rbp, rbp
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rbx, rsi
	nop	
	movsxd	r14,  dword ptr [dword ptr [rip + optind]]
	mov	r12, -1
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	r14d, edi
	mov	esi, 0
	jge	.label_65
	movsxd	r15, edi
	mov	rbp, rbp
	mov	r12, -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rax
	lea	rdi, [rdi]
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	nop	dword ptr [rax]
.label_77:
	mov	r13, qword ptr [rbx + r14*8]
	mov	esi, 0x3d
	mov	rsp, rsp
	mov	rdi, r13
	lea	rsi, [rsi]
	call	strchr
	nop	
	mov	rbp, rax
	mov	rbp, rbp
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_83
	inc	rbp
	mov	esi, OFFSET FLAT:.str.57
	mov	rsp, rsp
	mov	rdi, r13
	call	operand_is
	test	al, al
	je	.label_50
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + input_file]],  rbp
	jmp	.label_44
.label_50:
	mov	esi, OFFSET FLAT:.str.58
	mov	rdi, r13
	call	operand_is
	test	al, al
	lea	rsi, [rsi]
	je	.label_56
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + output_file]],  rbp
	nop	
	jmp	.label_44
	nop	word ptr cs:[rax + rax]
.label_56:
	nop	
	mov	esi, OFFSET FLAT:.str.59
	mov	rdi, r13
	mov	rbp, rbp
	call	operand_is
	nop	
	test	al, al
	je	.label_79
	mov	esi, OFFSET FLAT:conversions
	lea	rsi, [rsi]
	xor	edx, edx
	mov	ecx, OFFSET FLAT:.str.60
	mov	rdi, rbp
	call	parse_symbols
	mov	rsp, rsp
	or	dword ptr [dword ptr [rip + conversions_mask]],  eax
	jmp	.label_44
.label_79:
	nop	
	mov	esi, OFFSET FLAT:.str.61
	lea	rsi, [rsi]
	mov	rdi, r13
	call	operand_is
	test	al, al
	nop	
	je	.label_80
	mov	esi, OFFSET FLAT:flags
	xor	edx, edx
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.62
	nop	
	mov	rdi, rbp
	call	parse_symbols
	or	dword ptr [dword ptr [rip + input_flags]],  eax
	nop	
	jmp	.label_44
.label_80:
	mov	esi, OFFSET FLAT:.str.63
	lea	rdi, [rdi]
	mov	rdi, r13
	nop	
	call	operand_is
	test	al, al
	je	.label_87
	mov	esi, OFFSET FLAT:flags
	xor	edx, edx
	mov	ecx, OFFSET FLAT:.str.64
	mov	rdi, rbp
	mov	rbp, rbp
	call	parse_symbols
	mov	rsp, rsp
	or	dword ptr [dword ptr [rip + output_flags]],  eax
	lea	rsi, [rsi]
	jmp	.label_44
.label_87:
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.65
	mov	rsp, rsp
	mov	rdi, r13
	lea	rdi, [rdi]
	call	operand_is
	lea	rsi, [rsi]
	test	al, al
	je	.label_52
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:statuses
	mov	edx, 1
	mov	ecx, OFFSET FLAT:.str.66
	nop	
	mov	rdi, rbp
	mov	rsp, rsp
	call	parse_symbols
	mov	dword ptr [dword ptr [rip + status_level]],  eax
	jmp	.label_44
.label_52:
	mov	dword ptr [rsp + 0x34], 0
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x34]
	nop	
	call	parse_integer
	nop	
	mov	qword ptr [rsp + 8], rax
	mov	esi, OFFSET FLAT:.str.67
	mov	rdi, r13
	call	operand_is
	lea	rdi, [rdi]
	test	al, al
	lea	rsi, [rsi]
	je	.label_71
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], r12
	nop	
	mov	rax,  qword ptr [word ptr [rip + page_size]]
	add	rax, rax
	mov	r12, -4
	lea	rdi, [rdi]
	sub	r12, rax
	movabs	rax, 0x7fffffffffffffff
	cmp	r12, rax
	mov	rbp, rbp
	cmovae	r12, rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + input_blocksize]],  rcx
	mov	eax, 1
	jmp	.label_46
.label_71:
	mov	esi, OFFSET FLAT:.str.68
	lea	rsi, [rsi]
	mov	rdi, r13
	call	operand_is
	test	al, al
	mov	rsp, rsp
	je	.label_82
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], r12
	nop	
	mov	r12,  qword ptr [word ptr [rip + page_size]]
	mov	rbp, rbp
	neg	r12
	movabs	rax, 0x7fffffffffffffff
	cmp	r12, rax
	cmovae	r12, rax
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [word ptr [rip + output_blocksize]],  rcx
	mov	eax, 1
	mov	rbp, rbp
	jmp	.label_46
.label_82:
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.69
	mov	rdi, r13
	lea	rdi, [rdi]
	call	operand_is
	lea	rsi, [rsi]
	test	al, al
	je	.label_59
	mov	qword ptr [rsp + 0x10], r12
	mov	rax,  qword ptr [word ptr [rip + page_size]]
	add	rax, rax
	mov	r12, -4
	lea	rdi, [rdi]
	sub	r12, rax
	movabs	rax, 0x7fffffffffffffff
	cmp	r12, rax
	cmovae	r12, rax
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], rax
	mov	eax, 1
	jmp	.label_46
.label_59:
	mov	qword ptr [rsp + 0x10], r12
	nop	
	mov	esi, OFFSET FLAT:.str.70
	nop	
	mov	rdi, r13
	lea	rsi, [rsi]
	call	operand_is
	mov	rsp, rsp
	test	al, al
	je	.label_73
	mov	rcx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + conversion_blocksize]],  rcx
	lea	rsi, [rsi]
	mov	r12, -1
	mov	eax, 1
	mov	rsp, rsp
	jmp	.label_46
.label_73:
	mov	esi, OFFSET FLAT:.str.71
	mov	rdi, r13
	mov	rbp, rbp
	call	operand_is
	mov	r12, -1
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	je	.label_58
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, rcx
	nop	
	mov	qword ptr [rsp + 0x20], rax
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_46
.label_58:
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.72
	mov	rdi, r13
	mov	rbp, rbp
	call	operand_is
	test	al, al
	nop	
	je	.label_86
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, rcx
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_46
.label_86:
	mov	esi, OFFSET FLAT:.str.73
	mov	rdi, r13
	call	operand_is
	test	al, al
	mov	rcx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rcx
	mov	eax, 0
	mov	rbp, rbp
	je	.label_83
.label_46:
	lea	rdi, [rdi]
	cmp	rcx, rax
	jb	.label_64
	mov	rbp, rbp
	cmp	r12, rcx
	mov	rsp, rsp
	jb	.label_67
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x34]
	mov	rsp, rsp
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x10]
	jne	.label_53
	nop	
.label_44:
	lea	rsi, [rsi]
	inc	r14
	cmp	r14, r15
	nop	
	jl	.label_77
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_81
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + output_blocksize]],  rax
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + input_blocksize]],  rax
	mov	rsi, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x20]
	jmp	.label_48
.label_81:
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x20]
.label_65:
	or	byte ptr [byte ptr [rip + label_16]],  8
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [rip + input_blocksize]],  0
	lea	rdi, [rdi]
	jne	.label_89
	mov	qword ptr [word ptr [rip + input_blocksize]],  0x200
.label_89:
	cmp	qword ptr [word ptr [rip + output_blocksize]],  0
	lea	rsi, [rsi]
	jne	.label_48
	nop	
	mov	qword ptr [word ptr [rip + output_blocksize]],  0x200
.label_48:
	cmp	qword ptr [word ptr [rip + conversion_blocksize]],  0
	jne	.label_90
	nop	
	and	byte ptr [byte ptr [rip + conversions_mask]],  0xe7
.label_90:
	mov	ecx,  dword ptr [dword ptr [rip + input_flags]]
	lea	rsi, [rsi]
	test	ecx, 0x101000
	nop	
	je	.label_55
	lea	rsi, [rsi]
	or	ecx, 0x101000
	mov	dword ptr [dword ptr [rip + input_flags]],  ecx
.label_55:
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [rip + output_flags]]
	test	cl, 1
	nop	
	jne	.label_61
	lea	rsi, [rsi]
	mov	edx,  dword ptr [dword ptr [rip + input_flags]]
	test	dl, 0x10
	jne	.label_74
	lea	rdi, [rdi]
	test	cl, 0xc
	nop	
	jne	.label_69
	nop	
	test	rax, rax
	mov	rbp, rbp
	je	.label_72
	and	edx, 8
	mov	rbp, rbp
	je	.label_72
	xor	edx, edx
	div	qword ptr [word ptr [rip + input_blocksize]]
	nop	
	mov	qword ptr [word ptr [rip + skip_records]],  rax
	mov	qword ptr [word ptr [rip + skip_bytes]],  rdx
	nop	
	jmp	.label_76
.label_72:
	mov	rsp, rsp
	test	rax, rax
	je	.label_76
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + skip_records]],  rax
.label_76:
	cmp	r12, -1
	lea	rdi, [rdi]
	je	.label_85
	mov	eax,  dword ptr [dword ptr [rip + input_flags]]
	lea	rdi, [rdi]
	and	eax, 4
	je	.label_85
	nop	
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r12
	div	qword ptr [word ptr [rip + input_blocksize]]
	mov	qword ptr [word ptr [rip + max_records]],  rax
	mov	qword ptr [word ptr [rip + max_bytes]],  rdx
	jmp	.label_45
.label_85:
	cmp	r12, -1
	nop	
	je	.label_45
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + max_records]],  r12
.label_45:
	test	rsi, rsi
	je	.label_49
	mov	eax,  dword ptr [dword ptr [rip + output_flags]]
	and	eax, 0x10
	lea	rdi, [rdi]
	je	.label_49
	xor	edx, edx
	nop	
	mov	rax, rsi
	lea	rdi, [rdi]
	div	qword ptr [word ptr [rip + output_blocksize]]
	mov	qword ptr [word ptr [rip + seek_records]],  rax
	mov	qword ptr [word ptr [rip + seek_bytes]],  rdx
	nop	
	jmp	.label_51
.label_49:
	lea	rsi, [rsi]
	test	rsi, rsi
	je	.label_51
	mov	qword ptr [word ptr [rip + seek_records]],  rsi
.label_51:
	test	byte ptr [byte ptr [rip + label_16]],  8
	mov	rbp, rbp
	jne	.label_60
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [rip + input_flags]]
	nop	
	test	cl, 1
	jne	.label_63
	mov	al, 1
	cmp	qword ptr [word ptr [rip + skip_records]],  0
	jne	.label_66
	mov	rdx,  qword ptr [word ptr [rip + max_records]]
	inc	rdx
	nop	
	cmp	rdx, 1
	nop	
	ja	.label_66
	mov	rbp, rbp
	or	ecx,  dword ptr [dword ptr [rip + output_flags]]
	lea	rsi, [rsi]
	and	ecx, 0x4000
	lea	rsi, [rsi]
	shr	ecx, 0xe
	lea	rsi, [rsi]
	mov	al, cl
	jmp	.label_66
.label_60:
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_66
.label_63:
	mov	rsp, rsp
	xor	eax, eax
.label_66:
	mov	byte ptr [byte ptr [rip + warn_partial_read]],  al
	mov	ebp,  dword ptr [dword ptr [rip + input_flags]]
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:iread_fullblock
	mov	ecx, OFFSET FLAT:iread
	lea	rsi, [rsi]
	test	bpl, 1
	cmovne	rcx, rax
	mov	qword ptr [word ptr [rip + iread_fnc]],  rcx
	mov	eax, ebp
	and	eax, 0xfffffffe
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + input_flags]],  eax
	mov	ebx,  dword ptr [dword ptr [rip + conversions_mask]]
	mov	rbp, rbp
	mov	edi, ebx
	and	edi, 7
	call	multiple_bits_set
	lea	rdi, [rdi]
	test	al, al
	jne	.label_47
	mov	edi, ebx
	mov	rsp, rsp
	and	edi, 0x18
	lea	rsi, [rsi]
	call	multiple_bits_set
	lea	rsi, [rsi]
	test	al, al
	mov	rbp, rbp
	jne	.label_84
	lea	rdi, [rdi]
	mov	edi, ebx
	lea	rsi, [rsi]
	and	edi, 0x60
	call	multiple_bits_set
	test	al, al
	lea	rdi, [rdi]
	jne	.label_68
	lea	rdi, [rdi]
	and	ebx, 0x3000
	mov	edi, ebx
	lea	rsi, [rsi]
	call	multiple_bits_set
	nop	
	test	al, al
	lea	rdi, [rdi]
	jne	.label_62
	mov	edi, ebp
	and	edi, 0x4002
	call	multiple_bits_set
	test	al, al
	mov	rsp, rsp
	jne	.label_70
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + output_flags]]
	nop	
	and	edi, 0x4002
	call	multiple_bits_set
	lea	rdi, [rdi]
	test	al, al
	nop	
	jne	.label_70
	test	bpl, 2
	je	.label_78
	mov	byte ptr [byte ptr [rip + i_nocache]],  1
	mov	rax,  qword ptr [word ptr [rip + max_bytes]]
	lea	rdi, [rdi]
	or	rax,  qword ptr [word ptr [rip + max_records]]
	sete	byte ptr [byte ptr [rip + i_nocache_eof]]
	lea	rdi, [rdi]
	and	byte ptr [byte ptr [rip + input_flags]],  0xfd
.label_78:
	mov	rsp, rsp
	test	byte ptr [byte ptr [rip + output_flags]],  2
	mov	rbp, rbp
	je	.label_88
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + o_nocache]],  1
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + max_bytes]]
	lea	rdi, [rdi]
	or	rax,  qword ptr [word ptr [rip + max_records]]
	sete	byte ptr [byte ptr [rip + o_nocache_eof]]
	mov	rsp, rsp
	and	byte ptr [byte ptr [rip + output_flags]],  0xfd
.label_88:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	nop	
	ret	
.label_83:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.56
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbx, rax
	mov	rsp, rsp
	mov	rdi, r13
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rbx
	nop	
	call	nl_error
	nop	
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_70:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.84
	jmp	.label_54
.label_61:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.64
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.76
	jmp	.label_57
.label_74:
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.62
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	nop	
	mov	edi, OFFSET FLAT:.str.77
	jmp	.label_57
.label_69:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.64
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [rip + output_flags]]
	mov	ecx, OFFSET FLAT:.str.78
	mov	edi, OFFSET FLAT:.str.79
	lea	rdi, [rdi]
	test	al, 4
	mov	rbp, rbp
	cmovne	rdi, rcx
.label_57:
	nop	
	call	quote
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.1_0
	xor	eax, eax
	mov	rcx, rbx
	mov	r8, rbp
	mov	rsp, rsp
	call	nl_error
	lea	rdi, [rdi]
	mov	edi, 1
	call	usage
.label_47:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	mov	rsp, rsp
	jmp	.label_54
.label_84:
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.81
	lea	rdi, [rdi]
	jmp	.label_54
.label_68:
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.82
	lea	rsi, [rsi]
	jmp	.label_54
.label_62:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
.label_54:
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rcx, rax
	nop	
	mov	edi, 1
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	nl_error
.label_64:
	mov	dword ptr [rsp + 0x34], 4
	mov	rsp, rsp
	xor	r14d, r14d
	jmp	.label_75
.label_67:
	mov	dword ptr [rsp + 0x34], 1
	nop	
	mov	r14d, 0x4b
	lea	rdi, [rdi]
	jmp	.label_75
.label_53:
	xor	ecx, ecx
	lea	rsi, [rsi]
	cmp	eax, 1
	mov	r14d, 0x4b
	cmovne	r14d, ecx
.label_75:
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.75
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbx, rax
	mov	rdi, rbp
	mov	rbp, rbp
	call	quote
	lea	rsi, [rsi]
	mov	rbp, rax
	mov	rbp, rbp
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.1_0
	lea	rdi, [rdi]
	xor	eax, eax
	mov	esi, r14d
	mov	rcx, rbx
	nop	
	mov	r8, rbp
	mov	rsp, rsp
	call	nl_error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403530

	.globl apply_translations
	.type apply_translations, @function
apply_translations:
	nop	
	push	rax
	test	byte ptr [byte ptr [rip + conversions_mask]],  1
	nop	
	je	.label_95
	mov	edi, OFFSET FLAT:ebcdic_to_ascii
	call	translate_charset
.label_95:
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	mov	rsp, rsp
	test	al, 0x40
	lea	rsi, [rsi]
	jne	.label_92
	test	al, 0x20
	lea	rdi, [rdi]
	je	.label_97
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, -0x100
	nop	dword ptr [rax]
.label_96:
	mov	rsp, rsp
	movzx	edx,  byte ptr [byte ptr [rcx + input_file]]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rax + rdx*4]
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rcx + input_file]],  dl
	mov	rsp, rsp
	inc	rcx
	jne	.label_96
	jmp	.label_99
.label_92:
	mov	rbp, rbp
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	rcx, -0x100
	nop	word ptr cs:[rax + rax]
.label_91:
	movzx	edx,  byte ptr [byte ptr [rcx + input_file]]
	mov	rsp, rsp
	mov	dl, byte ptr [rax + rdx*4]
	nop	
	mov	byte ptr [byte ptr [rcx + input_file]],  dl
	lea	rsi, [rsi]
	inc	rcx
	mov	rsp, rsp
	jne	.label_91
.label_99:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + translation_needed]],  1
.label_97:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	mov	rbp, rbp
	test	al, 2
	nop	
	jne	.label_98
	test	al, 4
	lea	rsi, [rsi]
	je	.label_93
	nop	
	mov	edi, OFFSET FLAT:ascii_to_ibm
	lea	rdi, [rdi]
	jmp	.label_94
.label_98:
	mov	edi, OFFSET FLAT:ascii_to_ebcdic
.label_94:
	call	translate_charset
	nop	
	mov	byte ptr [byte ptr [rip + newline_character]],  1
	mov	byte ptr [byte ptr [rip + space_character]],  1
.label_93:
	lea	rsi, [rsi]
	pop	rax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403620

	.globl set_fd_flags
	.type set_fd_flags, @function
set_fd_flags:
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r12
	push	rbx
	nop	
	sub	rsp, 0x90
	mov	rbp, rbp
	mov	r14, rdx
	mov	rbp, rbp
	mov	ebp, esi
	mov	rsp, rsp
	mov	r15d, edi
	lea	rsi, [rsi]
	and	ebp, 0xfffdfeff
	mov	rsp, rsp
	je	.label_102
	nop	
	mov	esi, 3
	mov	rsp, rsp
	xor	eax, eax
	mov	edi, r15d
	lea	rsi, [rsi]
	call	rpl_fcntl
	mov	rsp, rsp
	mov	ebx, eax
	lea	rdi, [rdi]
	test	ebx, ebx
	js	.label_103
	nop	
	or	ebp, ebx
	mov	rsp, rsp
	cmp	ebx, ebp
	je	.label_102
	mov	r12b, 1
	mov	rbp, rbp
	test	ebp, 0x10000
	je	.label_100
	mov	rbp, rbp
	lea	rsi, [rsp]
	lea	rsi, [rsi]
	mov	edi, r15d
	call	__fstat
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_105
	lea	rsi, [rsi]
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	mov	r12b, 1
	mov	rsp, rsp
	cmp	eax, 0x4000
	je	.label_106
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0x14
.label_105:
	xor	r12d, r12d
.label_106:
	mov	rsp, rsp
	and	ebp, 0xfffeffff
.label_100:
	cmp	ebx, ebp
	mov	rsp, rsp
	je	.label_104
	nop	
	test	r12b, r12b
	mov	rbp, rbp
	je	.label_104
	xor	ebx, ebx
	mov	esi, 4
	xor	eax, eax
	mov	rbp, rbp
	mov	edi, r15d
	lea	rsi, [rsi]
	mov	edx, ebp
	call	rpl_fcntl
	mov	rbp, rbp
	cmp	eax, -1
	lea	rdi, [rdi]
	je	.label_101
	mov	rbp, rbp
	mov	bl, r12b
.label_101:
	mov	r12b, bl
.label_104:
	mov	rsp, rsp
	test	r12b, 1
	je	.label_103
.label_102:
	add	rsp, 0x90
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	ret	
.label_103:
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.105
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsp, rsp
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 1
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	esi, ebx
	lea	rsi, [rsi]
	mov	rdx, rbp
	mov	rsp, rsp
	call	nl_error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4037a0

	.globl ifd_reopen
	.type ifd_reopen, @function
ifd_reopen:
	nop	
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r12
	push	rbx
	mov	r14d, ecx
	mov	r15d, edx
	mov	rbp, rbp
	mov	r12, rsi
	lea	rsi, [rsi]
	mov	ebp, edi
	nop	dword ptr [rax]
.label_108:
	mov	rsp, rsp
	call	process_signals
	lea	rsi, [rsi]
	mov	edi, ebp
	nop	
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	edx, r15d
	mov	ecx, r14d
	lea	rdi, [rdi]
	call	fd_reopen
	mov	ebx, eax
	test	ebx, ebx
	mov	rbp, rbp
	jns	.label_107
	nop	
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 4
	mov	rsp, rsp
	je	.label_108
.label_107:
	mov	eax, ebx
	pop	rbx
	pop	r12
	pop	r14
	nop	
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403810

	.globl nl_error
	.type nl_error, @function
nl_error:
	push	rbp
	mov	rbp, rbp
	push	r14
	nop	
	push	rbx
	sub	rsp, 0xd0
	mov	r14, rdx
	nop	
	mov	ebp, esi
	mov	ebx, edi
	lea	rdi, [rdi]
	test	al, al
	mov	rbp, rbp
	je	.label_109
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x70], xmm4
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_109:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], r9
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], r8
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rcx
	cmp	dword ptr [dword ptr [rip + progress_len]],  0
	jle	.label_110
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, 0xa
	call	fputc_unlocked
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + progress_len]],  0
.label_110:
	mov	rbp, rbp
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	mov	rbp, rbp
	lea	rax, [rsp + 0xf0]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb8], rax
	nop	
	mov	dword ptr [rsp + 0xb4], 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], 0x18
	lea	rcx, [rsp + 0xb0]
	mov	edi, ebx
	lea	rsi, [rsi]
	mov	esi, ebp
	mov	rdx, r14
	lea	rdi, [rdi]
	call	verror
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403920

	.globl iftruncate
	.type iftruncate, @function
iftruncate:
	mov	rbp, rbp
	push	rbp
	push	rbx
	nop	
	push	rax
	mov	rbx, rdi
	nop	word ptr [rax + rax]
.label_111:
	call	process_signals
	mov	rsp, rsp
	mov	edi, 1
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rbp, rbp
	call	ftruncate
	mov	ebp, eax
	mov	rbp, rbp
	test	ebp, ebp
	jns	.label_112
	call	__errno_location
	cmp	dword ptr [rax], 4
	lea	rsi, [rsi]
	je	.label_111
.label_112:
	lea	rdi, [rdi]
	mov	eax, ebp
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403980

	.globl dd_copy
	.type dd_copy, @function
dd_copy:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x98
	mov	rbx,  qword ptr [word ptr [rip + skip_records]]
	lea	rdi, [rdi]
	mov	rbp,  qword ptr [word ptr [rip + skip_bytes]]
	mov	rax, rbp
	or	rax, rbx
	mov	rsp, rsp
	je	.label_119
	mov	rsp, rsp
	mov	r15,  qword ptr [word ptr [rip + input_offset]]
	mov	rbp, rbp
	mov	r14,  qword ptr [word ptr [rip + input_blocksize]]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + input_file]]
	xor	edi, edi
	mov	r8d, OFFSET FLAT:skip_bytes
	lea	rdi, [rdi]
	mov	rdx, rbx
	mov	rcx, r14
	mov	rsp, rsp
	call	skip
	lea	rdi, [rdi]
	test	rax, rax
	jne	.label_153
	imul	r14, rbx
	add	r15, rbp
	lea	rsi, [rsi]
	add	r15, r14
	cmp	r15,  qword ptr [word ptr [rip + input_offset]]
	mov	rbp, rbp
	je	.label_119
	nop	
	mov	al,  byte ptr [byte ptr [rip + input_offset_overflow]]
	lea	rdi, [rdi]
	test	al, al
	lea	rdi, [rdi]
	jne	.label_119
.label_153:
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	je	.label_119
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.106
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rbx, rax
	mov	rdx,  qword ptr [word ptr [rip + input_file]]
	xor	edi, edi
	mov	esi, 3
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rdx, rbx
	mov	rbp, rbp
	call	nl_error
.label_119:
	mov	rax,  qword ptr [word ptr [rip + seek_bytes]]
	or	rax,  qword ptr [word ptr [rip + seek_records]]
	mov	rsp, rsp
	je	.label_121
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + seek_bytes]]
	nop	
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [rip + seek_records]]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + output_blocksize]]
	mov	rbp, rbp
	lea	r14, [rsp]
	nop	
	mov	edi, 1
	mov	r8, r14
	call	skip
	mov	rbp, rax
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp]
	mov	rax, rdx
	or	rax, rbp
	je	.label_121
	mov	rsp, rsp
	test	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + obuf]]
	lea	rdi, [rdi]
	cmovne	rdx,  qword ptr [word ptr [rip + output_blocksize]]
	lea	rsi, [rsi]
	xor	esi, esi
	call	memset
	mov	r15d, OFFSET FLAT:output_blocksize
	nop	dword ptr [rax + rax]
.label_136:
	lea	rdi, [rdi]
	test	rbp, rbp
	nop	
	mov	rax, r14
	cmovne	rax, r15
	mov	rbp, rbp
	mov	rbx, qword ptr [rax]
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + obuf]]
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rsp, rsp
	call	iwrite
	cmp	rax, rbx
	nop	
	jne	.label_152
	test	rbp, rbp
	je	.label_132
	dec	rbp
	jmp	.label_122
.label_132:
	mov	qword ptr [rsp], 0
	lea	rdi, [rdi]
	xor	ebp, ebp
.label_122:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	or	rax, rbp
	mov	rsp, rsp
	jne	.label_136
.label_121:
	nop	
	mov	rax,  qword ptr [word ptr [rip + max_bytes]]
	mov	rbp, rbp
	xor	ebp, ebp
	or	rax,  qword ptr [word ptr [rip + max_records]]
	je	.label_114
	mov	rsp, rsp
	call	alloc_ibuf
	call	alloc_obuf
	nop	
	mov	r13d, 0x400
	lea	rdi, [rdi]
	xor	r12d, r12d
	nop	
	xor	r14d, r14d
	jmp	.label_120
.label_164:
	mov	rsi, qword ptr [rsp + 0x90]
	mov	rsp, rsp
	call	copy_with_block
	nop	dword ptr [rax]
.label_120:
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + status_level]],  4
	mov	rbp, rbp
	jne	.label_155
	call	gethrxtime
	cmp	qword ptr [word ptr [rip + next_time]],  rax
	nop	
	jg	.label_155
	mov	rdi, rax
	mov	rsp, rsp
	call	print_xfer_stats
	add	qword ptr [word ptr [rip + next_time]],  0x3b9aca00
.label_155:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + r_full]]
	mov	rsp, rsp
	add	rax,  qword ptr [word ptr [rip + r_partial]]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + max_records]]
	mov	rbp, rbp
	cmp	qword ptr [word ptr [rip + max_bytes]],  1
	lea	rdi, [rdi]
	sbb	rcx, -1
	mov	rbp, rbp
	cmp	rax, rcx
	mov	rsp, rsp
	jae	.label_115
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	mov	ecx, eax
	mov	rbp, rbp
	and	ecx, 0x500
	mov	rbp, rbp
	cmp	ecx, 0x500
	jne	.label_128
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + ibuf]]
	lea	rdi, [rdi]
	test	al, 0x18
	setne	al
	lea	rdi, [rdi]
	shl	al, 5
	mov	rdx,  qword ptr [word ptr [rip + input_blocksize]]
	movzx	esi, al
	call	memset
.label_128:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + r_full]]
	add	rax,  qword ptr [word ptr [rip + r_partial]]
	lea	rdi, [rdi]
	cmp	rax,  qword ptr [word ptr [rip + max_records]]
	mov	rax,  qword ptr [word ptr [rip + iread_fnc]]
	mov	rsi,  qword ptr [word ptr [rip + ibuf]]
	jae	.label_143
	mov	rdx,  qword ptr [word ptr [rip + input_blocksize]]
	mov	rbp, rbp
	jmp	.label_149
.label_143:
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [rip + max_bytes]]
.label_149:
	xor	edi, edi
	call	rax
	mov	r15, rax
	test	r15, r15
	jg	.label_154
	je	.label_157
	test	byte ptr [byte ptr [rip + label_16]],  1
	je	.label_159
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	je	.label_161
.label_159:
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.108
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbx, rax
	nop	
	mov	rsi,  qword ptr [word ptr [rip + input_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebp
	mov	rdx, rbx
	call	nl_error
.label_161:
	mov	rsp, rsp
	mov	ebp, 1
	test	byte ptr [byte ptr [rip + label_16]],  1
	je	.label_127
	lea	rdi, [rdi]
	call	print_stats
	mov	rbx,  qword ptr [word ptr [rip + input_blocksize]]
	sub	rbx, r14
	xor	edi, edi
	nop	
	mov	rsi, rbx
	mov	rsp, rsp
	call	invalidate_cache
	mov	rdi, rbx
	mov	rbp, rbp
	call	advance_input_after_read_error
	test	al, al
	jne	.label_156
	mov	byte ptr [byte ptr [rip + input_seekable]],  0
	mov	dword ptr [dword ptr [rip + input_seek_errno]],  0x1d
	lea	rsi, [rsi]
	mov	r12d, 1
.label_156:
	nop	
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_120
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	and	eax, r13d
	test	eax, eax
	je	.label_120
	lea	rsi, [rsi]
	mov	eax, 0
	cmove	rax, r15
	mov	rsp, rsp
	test	r14, r14
	cmove	r15, rax
	jmp	.label_139
.label_154:
	mov	rdi, r15
	call	advance_input_offset
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + i_nocache]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_139
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsi, r15
	call	invalidate_cache
.label_139:
	mov	qword ptr [rsp + 0x90], r15
	nop	
	cmp	r15,  qword ptr [word ptr [rip + input_blocksize]]
	lea	rdi, [rdi]
	jae	.label_165
	mov	rsp, rsp
	inc	qword ptr [word ptr [rip + r_partial]]
	mov	r14, qword ptr [rsp + 0x90]
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	test	ah, 4
	je	.label_117
	lea	rdi, [rdi]
	test	ah, 1
	jne	.label_126
	mov	rdi,  qword ptr [word ptr [rip + ibuf]]
	add	rdi, r14
	lea	rsi, [rsi]
	test	al, 0x18
	mov	rsp, rsp
	setne	al
	nop	
	shl	al, 5
	mov	rdx,  qword ptr [word ptr [rip + input_blocksize]]
	mov	rsp, rsp
	sub	rdx, r14
	lea	rdi, [rdi]
	movzx	esi, al
	lea	rsi, [rsi]
	call	memset
.label_126:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + input_blocksize]]
	mov	qword ptr [rsp + 0x90], rax
	jmp	.label_117
.label_165:
	mov	rbp, rbp
	inc	qword ptr [word ptr [rip + r_full]]
	nop	
	xor	r14d, r14d
.label_117:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + ibuf]]
	mov	rax,  qword ptr [word ptr [rip + obuf]]
	cmp	rdi, rax
	je	.label_144
	mov	rbp, rbp
	movzx	eax,  byte ptr [byte ptr [rip + translation_needed]]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 1
	jne	.label_147
	mov	rsi, qword ptr [rsp + 0x90]
	lea	rdi, [rdi]
	call	translate_buffer
.label_147:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + ibuf]]
	lea	rsi, [rsi]
	cmp	byte ptr [byte ptr [rip + conversions_mask]],  0
	jns	.label_151
	mov	rbp, rbp
	lea	rsi, [rsp + 0x90]
	lea	rdi, [rdi]
	call	swab_buffer
	mov	rdi, rax
.label_151:
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	test	al, 8
	lea	rsi, [rsi]
	jne	.label_164
	test	al, 0x10
	mov	rsi, qword ptr [rsp + 0x90]
	lea	rdi, [rdi]
	jne	.label_116
	call	copy_simple
	lea	rdi, [rdi]
	jmp	.label_120
.label_144:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x90]
	mov	rdi, rax
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	iwrite
	lea	rdi, [rdi]
	add	qword ptr [word ptr [rip + w_bytes]],  rax
	cmp	rax, rbx
	jne	.label_134
	cmp	rbx,  qword ptr [word ptr [rip + input_blocksize]]
	lea	rsi, [rsi]
	jne	.label_130
	inc	qword ptr [word ptr [rip + w_full]]
	mov	rbp, rbp
	jmp	.label_120
.label_130:
	nop	
	inc	qword ptr [word ptr [rip + w_partial]]
	jmp	.label_120
.label_116:
	mov	rbp, rbp
	call	copy_with_unblock
	jmp	.label_120
.label_157:
	mov	al,  byte ptr [byte ptr [rip + i_nocache]]
	lea	rsi, [rsi]
	and	al, 1
	or	byte ptr [byte ptr [rip + i_nocache_eof]],  al
	movzx	eax,  byte ptr [byte ptr [rip + o_nocache]]
	mov	rbp, rbp
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_141
	test	byte ptr [byte ptr [rip + label_16]],  2
	mov	rbp, rbp
	sete	al
	mov	rbp, rbp
	jmp	.label_148
.label_141:
	mov	rsp, rsp
	xor	eax, eax
.label_148:
	or	byte ptr [byte ptr [rip + o_nocache_eof]],  al
.label_115:
	mov	ebp, r12d
.label_127:
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + char_is_saved]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_123
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	test	al, 8
	jne	.label_158
	test	al, 0x10
	jne	.label_137
	mov	al,  byte ptr [byte ptr [rip + saved_char]]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + oc]]
	lea	rsi, [rsi]
	lea	rdx, [rcx + 1]
	nop	
	mov	qword ptr [word ptr [rip + oc]],  rdx
	mov	rsi,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rsi + rcx], al
	lea	rdi, [rdi]
	cmp	rdx,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_123
	call	write_output
	nop	
	jmp	.label_123
.label_158:
	mov	edi, OFFSET FLAT:saved_char
	nop	
	mov	esi, 1
	call	copy_with_block
	jmp	.label_123
.label_137:
	mov	edi, OFFSET FLAT:saved_char
	mov	esi, 1
	lea	rdi, [rdi]
	call	copy_with_unblock
.label_123:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	lea	rdi, [rdi]
	mov	rbx,  qword ptr [word ptr [rip + col]]
	lea	rsi, [rsi]
	test	al, 8
	je	.label_129
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_163
	mov	rsp, rsp
	jmp	.label_129
	nop	dword ptr [rax + rax]
.label_145:
	lea	rdi, [rdi]
	inc	rbx
.label_163:
	nop	
	cmp	rbx,  qword ptr [word ptr [rip + conversion_blocksize]]
	mov	rsp, rsp
	jae	.label_142
	mov	al,  byte ptr [byte ptr [rip + space_character]]
	and	al, 1
	mov	rsp, rsp
	mov	al, 0x40
	lea	rsi, [rsi]
	jne	.label_138
	mov	rbp, rbp
	mov	al, 0x20
.label_138:
	mov	rcx,  qword ptr [word ptr [rip + oc]]
	lea	rdx, [rcx + 1]
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + oc]],  rdx
	mov	rsi,  qword ptr [word ptr [rip + obuf]]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rcx], al
	mov	rsp, rsp
	cmp	rdx,  qword ptr [word ptr [rip + output_blocksize]]
	lea	rdi, [rdi]
	jb	.label_145
	call	write_output
	lea	rdi, [rdi]
	jmp	.label_145
.label_142:
	mov	rsp, rsp
	mov	rbx,  qword ptr [word ptr [rip + col]]
.label_129:
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_162
	test	byte ptr [byte ptr [rip + conversions_mask]],  0x10
	je	.label_162
	mov	al,  byte ptr [byte ptr [rip + newline_character]]
	and	al, 1
	mov	rbp, rbp
	mov	al, 0x25
	jne	.label_113
	lea	rsi, [rsi]
	mov	al, 0xa
.label_113:
	mov	rcx,  qword ptr [word ptr [rip + oc]]
	lea	rsi, [rsi]
	lea	rsi, [rcx + 1]
	nop	
	mov	qword ptr [word ptr [rip + oc]],  rsi
	mov	rdx,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rdx + rcx], al
	lea	rsi, [rsi]
	cmp	rsi,  qword ptr [word ptr [rip + output_blocksize]]
	mov	rsp, rsp
	jb	.label_118
	lea	rsi, [rsi]
	call	write_output
.label_162:
	mov	rsi,  qword ptr [word ptr [rip + oc]]
.label_118:
	nop	
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_131
	nop	
	mov	rdi,  qword ptr [word ptr [rip + obuf]]
	lea	rdi, [rdi]
	call	iwrite
	mov	rbp, rbp
	add	qword ptr [word ptr [rip + w_bytes]],  rax
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_135
	mov	rbp, rbp
	inc	qword ptr [word ptr [rip + w_partial]]
.label_135:
	cmp	rax,  qword ptr [word ptr [rip + oc]]
	jne	.label_134
.label_131:
	movzx	eax,  byte ptr [byte ptr [rip + final_op_was_seek]]
	and	eax, 1
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_125
	mov	rbp, rbp
	lea	rsi, [rsp]
	mov	edi, 1
	lea	rdi, [rdi]
	call	__fstat
	test	eax, eax
	mov	rbp, rbp
	je	.label_150
	lea	rsi, [rsi]
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.36
	jmp	.label_160
.label_134:
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.109
	mov	rsp, rsp
	jmp	.label_160
.label_150:
	mov	eax, 0xf000
	lea	rdi, [rdi]
	and	eax, dword ptr [rsp + 0x18]
	mov	rbp, rbp
	cmp	eax, 0x8000
	lea	rsi, [rsi]
	jne	.label_125
	mov	edi, 1
	xor	esi, esi
	mov	edx, 1
	call	lseek
	mov	rbx, rax
	test	rbx, rbx
	nop	
	js	.label_125
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x30], rbx
	jge	.label_125
	lea	rdi, [rdi]
	mov	rdi, rbx
	nop	
	call	iftruncate
	nop	
	test	eax, eax
	je	.label_125
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.110
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	nop	
	mov	r15, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	lea	rsi, [rsi]
	mov	edi, 4
	nop	
	call	quotearg_style
	mov	rbp, rax
	xor	edi, edi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, r14d
	mov	rdx, r15
	mov	rcx, rbx
	mov	rbp, rbp
	mov	r8, rbp
	nop	
	call	nl_error
	nop	
	jmp	.label_124
.label_125:
	test	byte ptr [byte ptr [rip + label_16]],  0x40
	lea	rsi, [rsi]
	je	.label_146
	mov	edi, 1
	lea	rdi, [rdi]
	call	fdatasync
	nop	
	test	eax, eax
	je	.label_146
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	ebx, 0x16
	je	.label_133
	lea	rsi, [rsi]
	cmp	ebx, 0x26
	lea	rsi, [rsi]
	je	.label_133
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.111
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	edi, 4
	call	quotearg_style
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	mov	rbp, rbp
	call	nl_error
	nop	
	mov	ebp, 1
.label_133:
	or	byte ptr [byte ptr [rip + label_16]],  0x80
.label_146:
	mov	rbp, rbp
	cmp	word ptr [word ptr [rip + conversions_mask]],  0
	lea	rdi, [rdi]
	jns	.label_114
	nop	word ptr cs:[rax + rax]
.label_140:
	nop	
	mov	edi, 1
	call	fsync
	test	eax, eax
	mov	rbp, rbp
	je	.label_114
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	ebx, dword ptr [rax]
	cmp	ebx, 4
	je	.label_140
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.112
.label_160:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	edi, 4
	call	quotearg_style
	nop	
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, ebx
	mov	rsp, rsp
	mov	rdx, rbp
	mov	rbp, rbp
	call	nl_error
.label_124:
	mov	ebp, 1
.label_114:
	lea	rsi, [rsi]
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	pop	r15
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
.label_152:
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.107
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	rsp, rsp
	mov	edi, 4
	nop	
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	mov	rbp, rbp
	call	quit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404440

	.globl invalidate_cache
	.type invalidate_cache, @function
invalidate_cache:
	push	rbp
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbp, rsi
	mov	r14d, edi
	nop	
	mov	r12b,  byte ptr [byte ptr [rip + i_nocache_eof]]
	mov	bl,  byte ptr [byte ptr [rip + o_nocache_eof]]
	call	cache_round
	mov	r13, rax
	nop	
	test	rbp, rbp
	mov	rbp, rbp
	mov	al, 1
	je	.label_176
	mov	rbp, rbp
	test	r13, r13
	je	.label_170
.label_176:
	test	r14d, r14d
	lea	rsi, [rsi]
	je	.label_167
	mov	r12b, bl
.label_167:
	nop	
	test	r12b, r12b
	jne	.label_169
	mov	rcx, r13
	or	rcx, rbp
	lea	rsi, [rsi]
	je	.label_170
.label_169:
	lea	rdi, [rdi]
	xor	r15d, r15d
	test	rbp, rbp
	je	.label_174
	lea	rdi, [rdi]
	xor	esi, esi
	mov	edi, r14d
	mov	rsp, rsp
	call	cache_round
	mov	r15, rax
.label_174:
	test	r14d, r14d
	je	.label_166
	mov	eax, OFFSET FLAT:invalidate_cache.output_offset
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + invalidate_cache.output_offset]]
	cmp	rcx, -1
	je	.label_173
	test	rcx, rcx
	nop	
	js	.label_175
	mov	eax, OFFSET FLAT:invalidate_cache.output_offset
	lea	rsi, [rsi]
	test	rbp, rbp
	je	.label_173
	lea	rax, [r15 + r13]
	lea	rsi, [rsi]
	add	rax, rcx
	mov	rbp, rbp
	jmp	.label_171
.label_166:
	nop	
	mov	eax, OFFSET FLAT:input_offset
	mov	rbp, rbp
	cmp	byte ptr [byte ptr [rip + input_seekable]],  0
	jne	.label_173
	mov	rbp, rbp
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0x1d
	nop	
	xor	eax, eax
	jmp	.label_170
.label_175:
	xor	esi, esi
	mov	edx, 1
	mov	edi, r14d
	mov	rsp, rsp
	call	lseek
.label_171:
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + invalidate_cache.output_offset]],  rax
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:invalidate_cache.output_offset
.label_173:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	test	rsi, rsi
	mov	rsp, rsp
	js	.label_168
	lea	rsi, [rsi]
	test	r12b, r12b
	nop	
	sete	al
	test	r13, r13
	lea	rdi, [rdi]
	sete	cl
	test	rbp, rbp
	lea	rdi, [rdi]
	setne	dl
	nop	
	or	dl, cl
	xor	ebp, ebp
	nop	
	or	dl, al
	mov	rbp, rbp
	cmovne	rbp, r13
	nop	
	cmove	r15, r13
	sub	rsi, rbp
	sub	rsi, r15
	test	rbp, rbp
	jne	.label_172
	xor	edx, edx
	mov	rax, rsi
	lea	rdi, [rdi]
	div	qword ptr [word ptr [rip + page_size]]
	sub	rsi, rdx
.label_172:
	mov	ecx, 4
	mov	edi, r14d
	mov	rdx, rbp
	call	posix_fadvise
	cmp	eax, -1
	mov	rsp, rsp
	setne	al
	lea	rsi, [rsi]
	jmp	.label_170
.label_168:
	mov	rbp, rbp
	xor	eax, eax
.label_170:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045f0

	.globl finish_up
	.type finish_up, @function
finish_up:
	mov	rsp, rsp
	push	rax
	mov	rbp, rbp
	call	cleanup
	lea	rdi, [rdi]
	call	print_stats
	lea	rsi, [rsi]
	pop	rax
	lea	rsi, [rsi]
	jmp	process_signals
	.section	.text
	.align	32
	#Procedure 0x404610

	.globl siginfo_handler
	.type siginfo_handler, @function
siginfo_handler:
	inc	dword ptr [dword ptr [rip + info_signal_count]]
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404620

	.globl interrupt_handler
	.type interrupt_handler, @function
interrupt_handler:
	mov	dword ptr [dword ptr [rip + interrupt_signal]],  edi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404630

	.globl operand_is
	.type operand_is, @function
operand_is:
	lea	rsi, [rsi]
	mov	edx, 0x3d
	jmp	operand_matches
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404640

	.globl parse_symbols
	.type parse_symbols, @function
parse_symbols:
	mov	rbp, rbp
	push	rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	qword ptr [rsp], rcx
	mov	r12d, edx
	mov	r13, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_183:
	mov	esi, 0x2c
	mov	rdi, rbx
	mov	rbp, rbp
	call	strchr
	mov	r15, rax
	mov	r14, r13
	nop	word ptr cs:[rax + rax]
.label_177:
	lea	rdi, [rdi]
	mov	edx, 0x2c
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	call	operand_matches
	lea	rsi, [rsi]
	test	al, al
	mov	rbp, rbp
	je	.label_178
	mov	eax, dword ptr [r14 + 0xc]
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	jne	.label_180
.label_178:
	cmp	byte ptr [r14], 0
	lea	r14, [r14 + 0x10]
	lea	rsi, [rsi]
	jne	.label_177
	lea	rdi, [rdi]
	jmp	.label_181
	nop	word ptr cs:[rax + rax]
.label_180:
	test	r12b, r12b
	nop	
	mov	ecx, 0
	mov	rbp, rbp
	cmovne	ebp, ecx
	or	ebp, eax
	mov	rsp, rsp
	test	r15, r15
	lea	rsi, [rsi]
	lea	rbx, [r15 + 1]
	nop	
	jne	.label_183
	lea	rdi, [rdi]
	mov	eax, ebp
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_181:
	test	r15, r15
	jne	.label_179
	mov	rdi, rbx
	nop	
	call	strlen
	nop	
	mov	r15, rax
	mov	rbp, rbp
	jmp	.label_182
.label_179:
	mov	rbp, rbp
	sub	r15, rbx
.label_182:
	xor	edi, edi
	mov	edx, 5
	mov	rsi, qword ptr [rsp]
	nop	
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, rax
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 8
	mov	rdx, rbx
	nop	
	mov	rcx, r15
	lea	rsi, [rsi]
	call	quotearg_n_style_mem
	nop	
	mov	rbx, rax
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str.1_0
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	rcx, rbp
	mov	rbp, rbp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	nl_error
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047c0

	.globl parse_integer
	.type parse_integer, @function
parse_integer:
	mov	rbp, rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x18
	lea	rsi, [rsi]
	mov	r15, rsi
	mov	rbp, rbp
	mov	rbx, rdi
	nop	
	lea	rsi, [rsp + 8]
	mov	rsp, rsp
	lea	rcx, [rsp + 0x10]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str.85
	nop	
	call	xstrtoumax
	test	eax, eax
	mov	rbp, rbp
	je	.label_184
	cmp	eax, 2
	nop	
	jne	.label_186
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 8]
	movzx	ecx, byte ptr [rdi]
	cmp	ecx, 0x78
	jne	.label_186
	inc	rdi
	lea	rsi, [rsi]
	mov	rsi, r15
	lea	rdi, [rdi]
	call	parse_integer
	lea	rdi, [rdi]
	mov	r14, rax
	mov	rbp, rbp
	test	r14, r14
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	je	.label_189
	lea	rdi, [rdi]
	mov	rax, r14
	imul	rax, rcx
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	div	r14
	cmp	rax, rcx
	jne	.label_188
.label_189:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_187
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.86
	mov	edx, 2
	mov	rsp, rsp
	mov	rdi, rbx
	call	strncmp
	nop	
	test	eax, eax
	jne	.label_187
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.87
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	r15, rax
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.86
	mov	rsp, rsp
	call	quote_n
	mov	rsp, rsp
	mov	r12, rax
	nop	
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.88
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	nop	
	xor	esi, esi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, r15
	mov	rbp, rbp
	mov	rcx, r12
	mov	r8, rbx
	lea	rsi, [rsi]
	call	nl_error
.label_187:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	imul	rax, r14
	mov	qword ptr [rsp + 0x10], rax
.label_184:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x10]
	jmp	.label_185
.label_186:
	lea	rsi, [rsi]
	mov	dword ptr [r15], eax
	xor	eax, eax
.label_185:
	add	rsp, 0x18
	nop	
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_188:
	mov	rsp, rsp
	mov	dword ptr [r15], 1
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_185
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404940

	.globl iread_fullblock
	.type iread_fullblock, @function
iread_fullblock:
	nop
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	rbx, rdx
	nop	
	mov	r14, rsi
	mov	r15d, edi
	xor	ebp, ebp
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_190
	nop	word ptr cs:[rax + rax]
.label_193:
	lea	rsi, [rsi]
	mov	edi, r15d
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rdx, rbx
	call	iread
	test	rax, rax
	js	.label_191
	je	.label_192
	add	rbp, rax
	add	r14, rax
	sub	rbx, rax
	mov	rax, rbp
	jne	.label_193
	jmp	.label_191
.label_190:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_191
.label_192:
	mov	rsp, rsp
	mov	rax, rbp
.label_191:
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4049c0

	.globl iread
	.type iread, @function
iread:
	nop	
	push	rbp
	push	r15
	nop	
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rsp, rsp
	mov	r15, rsi
	mov	ebp, edi
	nop	word ptr cs:[rax + rax]
.label_203:
	call	process_signals
	nop	
	mov	edi, ebp
	mov	rsp, rsp
	mov	rsi, r15
	lea	rdi, [rdi]
	mov	rdx, r14
	call	read
	mov	rsp, rsp
	mov	rbx, rax
	nop	
	cmp	rbx, -1
	mov	rsp, rsp
	je	.label_201
	test	rbx, rbx
	lea	rdi, [rdi]
	js	.label_196
	mov	rbp, rbp
	jmp	.label_198
	nop	word ptr cs:[rax + rax]
.label_201:
	call	__errno_location
	mov	rcx,  qword ptr [word ptr [rip + iread.prev_nread]]
	nop	
	mov	rbx, -1
	nop	
	cmp	rcx, r14
	jae	.label_196
	cmp	dword ptr [rax], 0x16
	jne	.label_196
	test	rcx, rcx
	nop	
	jle	.label_196
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [rip + label_194]],  0x40
	jne	.label_195
	nop	word ptr cs:[rax + rax]
.label_196:
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 4
	mov	rax, rbx
	lea	rsi, [rsi]
	je	.label_203
	jmp	.label_197
.label_198:
	lea	rdi, [rdi]
	jle	.label_202
	cmp	rbx, r14
	jae	.label_202
	mov	rsp, rsp
	call	process_signals
.label_202:
	xor	eax, eax
	lea	rdi, [rdi]
	test	rbx, rbx
	jle	.label_197
	mov	rbp,  qword ptr [word ptr [rip + iread.prev_nread]]
	cmp	rbp, r14
	mov	rbp, rbp
	jae	.label_200
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + warn_partial_read]]
	mov	rsp, rsp
	test	al, al
	mov	rbp, rbp
	je	.label_200
	test	rbp, rbp
	lea	rdi, [rdi]
	jle	.label_200
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	mov	rsp, rsp
	je	.label_199
	mov	rdi, rbp
	nop	
	call	select_plural
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.89
	mov	edx, OFFSET FLAT:.str.90
	mov	r8d, 5
	mov	rcx, rax
	mov	rbp, rbp
	call	dcngettext
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rcx
	nop	
	mov	rcx, rbp
	call	nl_error
.label_199:
	mov	byte ptr [byte ptr [rip + warn_partial_read]],  0
.label_200:
	mov	rax, rbx
	jmp	.label_197
.label_195:
	nop	
	mov	dword ptr [rax], 0
	mov	rbp, rbp
	xor	eax, eax
.label_197:
	mov	qword ptr [word ptr [rip + iread.prev_nread]],  rax
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404b50

	.globl multiple_bits_set
	.type multiple_bits_set, @function
multiple_bits_set:
	mov	rbp, rbp
	lea	eax, [rdi - 1]
	lea	rsi, [rsi]
	test	eax, edi
	setne	al
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404b60

	.globl operand_matches
	.type operand_matches, @function
operand_matches:
	mov	al, byte ptr [rsi]
	nop	
	test	al, al
	je	.label_204
	inc	rsi
	movzx	eax, al
	movzx	ecx, byte ptr [rdi]
	nop	
	inc	rdi
	nop	
	cmp	ecx, eax
	je	operand_matches
	xor	eax, eax
	ret	
.label_204:
	mov	rsp, rsp
	movzx	eax, byte ptr [rdi]
	lea	rdi, [rdi]
	test	al, al
	sete	cl
	movzx	edx, dl
	cmp	eax, edx
	sete	al
	lea	rsi, [rsi]
	or	al, cl
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ba0

	.globl process_signals
	.type process_signals, @function
process_signals:
	push	rbp
	nop	
	push	rbx
	sub	rsp, 0x88
	lea	rbx, [rsp + 8]
	jmp	.label_205
	nop	word ptr cs:[rax + rax]
.label_208:
	call	cleanup
	call	print_stats
	lea	rsi, [rsi]
	mov	edi, ebp
	nop	
	call	raise
.label_205:
	cmp	dword ptr [dword ptr [rip + interrupt_signal]],  0
	jne	.label_206
	cmp	dword ptr [dword ptr [rip + info_signal_count]],  0
	mov	rsp, rsp
	je	.label_209
.label_206:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:caught_signals
	mov	rdx, rbx
	call	sigprocmask
	mov	ebp,  dword ptr [dword ptr [rip + interrupt_signal]]
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [rip + info_signal_count]]
	test	eax, eax
	mov	rbp, rbp
	je	.label_207
	nop	
	dec	eax
	mov	dword ptr [dword ptr [rip + info_signal_count]],  eax
.label_207:
	mov	edi, 2
	xor	edx, edx
	mov	rsi, rbx
	call	sigprocmask
	lea	rdi, [rdi]
	test	ebp, ebp
	lea	rdi, [rdi]
	jne	.label_208
	lea	rsi, [rsi]
	call	print_stats
	jmp	.label_205
.label_209:
	lea	rsi, [rsi]
	add	rsp, 0x88
	pop	rbx
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c60

	.globl select_plural
	.type select_plural, @function
select_plural:
	mov	rax, rdi
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c70

	.globl cleanup
	.type cleanup, @function
cleanup:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	push	rbx
	push	rax
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	call	close
	test	eax, eax
	js	.label_210
	mov	edi, 1
	call	close
	test	eax, eax
	mov	rbp, rbp
	js	.label_211
	add	rsp, 8
	nop	
	pop	rbx
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_210:
	nop	
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.91
	nop	
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + input_file]]
	mov	rbp, rbp
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	nop	
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	nl_error
.label_211:
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.92
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsp, rsp
	call	quotearg_style
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 1
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	nop	
	.section	.text
	.align	32
	#Procedure 0x404d50

	.globl print_stats
	.type print_stats, @function
print_stats:
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	je	.label_215
	push	rbx
	sub	rsp, 0x10
	cmp	dword ptr [dword ptr [rip + progress_len]],  0
	jle	.label_212
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	lea	rsi, [rsi]
	mov	edi, 0xa
	call	fputc_unlocked
	mov	dword ptr [dword ptr [rip + progress_len]],  0
.label_212:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.93
	nop	
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + r_full]]
	mov	r8,  qword ptr [word ptr [rip + r_partial]]
	mov	r9,  qword ptr [word ptr [rip + w_full]]
	mov	rax,  qword ptr [word ptr [rip + w_partial]]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + r_truncate]]
	test	rdi, rdi
	je	.label_214
	mov	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	call	select_plural
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.94
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.95
	mov	r8d, 5
	mov	rcx, rax
	call	dcngettext
	mov	rbp, rbp
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + r_truncate]]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_214:
	cmp	dword ptr [dword ptr [rip + status_level]],  2
	mov	rbp, rbp
	lea	rsp, [rsp + 0x10]
	lea	rdi, [rdi]
	pop	rbx
	jne	.label_213
.label_215:
	lea	rsi, [rsi]
	ret	
.label_213:
	xor	edi, edi
	jmp	print_xfer_stats
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404e60

	.globl print_xfer_stats
	.type print_xfer_stats, @function
print_xfer_stats:
	push	rbp
	push	r15
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x7f8
	mov	r15, rdi
	lea	rsi, [rsi]
	test	r15, r15
	mov	rbx, r15
	jne	.label_220
	nop	
	call	gethrxtime
	mov	rbx, rax
.label_220:
	mov	rdi,  qword ptr [word ptr [rip + w_bytes]]
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x40]
	mov	rsp, rsp
	mov	edx, 0x1d1
	nop	
	mov	ecx, 1
	mov	rsp, rsp
	mov	r8d, 1
	lea	rdi, [rdi]
	call	human_readable
	mov	rsp, rsp
	mov	r14, rax
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + w_bytes]]
	lea	rsi, [rsp + 0x2ce]
	nop	
	mov	edx, 0x1f1
	mov	ecx, 1
	mov	r8d, 1
	call	human_readable
	lea	rsi, [rsi]
	mov	r12, rax
	lea	rsi, [rsi]
	lea	r13, [rsp + 0x55c]
	sub	rbx,  qword ptr [word ptr [rip + start_time]]
	nop	
	jle	.label_223
	movq	xmm0, rbx
	punpckldq	xmm0,  xmmword ptr [word ptr [rip + label_224]]
	subpd	xmm0,  xmmword ptr [word ptr [rip + label_225]]
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	lea	rsi, [rsi]
	divsd	xmm1,  qword ptr [word ptr [rip + label_226]]
	lea	rsi, [rsi]
	movapd	xmmword ptr [rsp + 0x10], xmm1
	nop	
	mov	rdi,  qword ptr [word ptr [rip + w_bytes]]
	lea	rsi, [rsi]
	mov	edx, 0x1d1
	nop	
	mov	ecx, 0x3b9aca00
	mov	rsi, r13
	mov	r8, rbx
	call	human_readable
	mov	r13, rax
	mov	rdi, r13
	mov	rbp, rbp
	call	strlen
	mov	byte ptr [r13 + rax + 2], 0
	lea	rdi, [rdi]
	mov	word ptr [r13 + rax], 0x732f
	jmp	.label_222
.label_223:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.97
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rax
	mov	esi, 0x28e
	mov	edx, 1
	lea	rdi, [rdi]
	mov	ecx, 0x28e
	mov	rsp, rsp
	mov	r8d, OFFSET FLAT:.str.96
	xor	eax, eax
	mov	rdi, r13
	lea	rdi, [rdi]
	mov	r9, rbp
	call	__snprintf_chk
	mov	rbp, rbp
	xorpd	xmm0, xmm0
	movapd	xmmword ptr [rsp + 0x10], xmm0
.label_222:
	mov	rbp, rbp
	test	r15, r15
	je	.label_218
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xd
	call	fputc_unlocked
.label_218:
	mov	rsp, rsp
	test	r15, r15
	mov	eax, OFFSET FLAT:.str.98
	mov	r8d, OFFSET FLAT:.str.99
	cmovne	r8, rax
	mov	rbp, rbp
	lea	rbp, [rsp + 0x20]
	mov	esi, 0x18
	nop	
	mov	edx, 1
	nop	
	mov	ecx, 0x18
	mov	al, 1
	mov	rdi, rbp
	mov	rbp, rbp
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	call	__snprintf_chk
	mov	rdi, r14
	mov	rbp, rbp
	call	abbreviation_lacks_prefix
	lea	rdi, [rdi]
	test	al, al
	je	.label_227
	nop	
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + w_bytes]]
	call	select_plural
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.100
	mov	edx, OFFSET FLAT:.str.101
	lea	rdi, [rdi]
	mov	r8d, 5
	mov	rcx, rax
	lea	rsi, [rsi]
	call	dcngettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + w_bytes]]
	lea	r8, [rsp + 0x20]
	mov	esi, 1
	mov	rsp, rsp
	xor	eax, eax
	mov	rdi, rbx
	mov	r9, r13
	jmp	.label_217
.label_227:
	mov	rdi, r12
	call	abbreviation_lacks_prefix
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	test	al, al
	je	.label_221
	mov	esi, OFFSET FLAT:.str.102
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + w_bytes]]
	mov	rbp, rbp
	mov	qword ptr [rsp], r13
	lea	r9, [rsp + 0x20]
	mov	esi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rsp, rsp
	mov	r8, r14
	nop	
	jmp	.label_217
.label_221:
	mov	esi, OFFSET FLAT:.str.103
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + w_bytes]]
	mov	qword ptr [rsp + 8], r13
	mov	rbp, rbp
	mov	qword ptr [rsp], rbp
	nop	
	mov	esi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rsp, rsp
	mov	r8, r14
	mov	rbp, rbp
	mov	r9, r12
.label_217:
	call	__fprintf_chk
	mov	rsp, rsp
	mov	ebx, eax
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_228
	nop	
	test	ebx, ebx
	lea	rsi, [rsi]
	js	.label_219
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [rip + progress_len]]
	sub	ecx, ebx
	mov	rsp, rsp
	jle	.label_219
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.104
	mov	r8d, OFFSET FLAT:.str_0
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	call	__fprintf_chk
.label_219:
	mov	dword ptr [dword ptr [rip + progress_len]],  ebx
	jmp	.label_216
.label_228:
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	lea	rdi, [rdi]
	mov	edi, 0xa
	call	fputc_unlocked
.label_216:
	mov	rsp, rsp
	add	rsp, 0x7f8
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051d0

	.globl abbreviation_lacks_prefix
	.type abbreviation_lacks_prefix, @function
abbreviation_lacks_prefix:
	nop	
	push	rbx
	mov	rbx, rdi
	nop	
	call	strlen
	movzx	eax, byte ptr [rax + rbx - 2]
	cmp	eax, 0x20
	sete	al
	pop	rbx
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4051f0

	.globl translate_charset
	.type translate_charset, @function
translate_charset:
	nop	
	mov	rax, -0x100
	nop	dword ptr [rax + rax]
.label_229:
	lea	rdi, [rdi]
	movzx	ecx,  byte ptr [byte ptr [rax + input_file]]
	mov	rbp, rbp
	mov	cl, byte ptr [rdi + rcx]
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rax + input_file]],  cl
	inc	rax
	mov	rsp, rsp
	jne	.label_229
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + translation_needed]],  1
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405230

	.globl skip
	.type skip, @function
skip:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0xa8
	mov	r13, r8
	mov	rbp, rbp
	mov	r12, rcx
	lea	rdi, [rdi]
	mov	rbx, rdx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	ebp, edi
	lea	rsi, [rsi]
	mov	r15, qword ptr [r13]
	lea	rsi, [rsi]
	call	__errno_location
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rax], 0
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	xor	edx, edx
	nop	
	div	r12
	cmp	rax, rbx
	jb	.label_240
	mov	rax, r12
	mov	rbp, rbp
	imul	rax, rbx
	add	r15, rax
	mov	rsp, rsp
	mov	ecx, 1
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	esi, ebp
	mov	rsp, rsp
	mov	rdx, r15
	lea	rdi, [rdi]
	call	skip_via_lseek
	test	rax, rax
	js	.label_240
	lea	rdi, [rdi]
	test	ebp, ebp
	lea	rsi, [rsi]
	jne	.label_231
	lea	rsi, [rsp + 0x18]
	xor	edi, edi
	lea	rsi, [rsi]
	call	__fstat
	test	eax, eax
	mov	rsp, rsp
	jne	.label_243
	mov	rbp, rbp
	lea	rdi, [rsp + 0x18]
	nop	
	call	usable_st_size
	xor	r14d, r14d
	test	al, al
	je	.label_230
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rsi,  qword ptr [word ptr [rip + input_offset]]
	lea	rax, [rsi + r15]
	nop	
	xor	r14d, r14d
	cmp	rcx, rax
	jae	.label_230
	mov	rsp, rsp
	sub	r15, rcx
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r15
	mov	rsp, rsp
	div	r12
	mov	r14, rax
	sub	rcx, rsi
	mov	r15, rcx
.label_230:
	mov	rdi, r15
	mov	rbp, rbp
	call	advance_input_offset
	jmp	.label_235
.label_240:
	mov	rax, qword ptr [rsp + 0x10]
	mov	r15d, dword ptr [rax]
	xor	edx, edx
	mov	rbp, rbp
	mov	ecx, 2
	mov	rsp, rsp
	mov	rdi, r14
	mov	esi, ebp
	lea	rsi, [rsi]
	call	skip_via_lseek
	mov	rbp, rbp
	test	rax, rax
	jns	.label_234
	mov	rsp, rsp
	test	ebp, ebp
	je	.label_246
	mov	dword ptr [rsp + 4], r15d
	mov	qword ptr [rsp + 8], r14
	mov	rbp, rbp
	call	alloc_obuf
	mov	eax, OFFSET FLAT:obuf
	lea	rdi, [rdi]
	jmp	.label_233
.label_246:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 4], r15d
	mov	qword ptr [rsp + 8], r14
	call	alloc_ibuf
	mov	eax, OFFSET FLAT:ibuf
.label_233:
	mov	r15, qword ptr [rax]
	xor	r14d, r14d
	nop	
.label_232:
	mov	rax,  qword ptr [word ptr [rip + iread_fnc]]
	test	rbx, rbx
	mov	rbp, rbp
	mov	rdx, r12
	lea	rsi, [rsi]
	jne	.label_239
	nop	
	mov	rdx, qword ptr [r13]
.label_239:
	lea	rsi, [rsi]
	mov	edi, ebp
	mov	rsi, r15
	mov	rbp, rbp
	call	rax
	nop	
	test	rax, rax
	js	.label_242
	je	.label_244
	test	ebp, ebp
	mov	rsp, rsp
	jne	.label_245
	mov	rbp, rbp
	mov	rdi, rax
	call	advance_input_offset
.label_245:
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_231
	lea	rsi, [rsi]
	dec	rbx
	jne	.label_232
	cmp	qword ptr [r13], 0
	mov	ebx, 0
	lea	rdi, [rdi]
	jne	.label_232
	mov	rsp, rsp
	jmp	.label_235
.label_231:
	nop	
	mov	qword ptr [r13], 0
	lea	rsi, [rsi]
	xor	r14d, r14d
	jmp	.label_235
.label_244:
	mov	r14, rbx
.label_235:
	mov	rbp, rbp
	mov	rax, r14
	add	rsp, 0xa8
	lea	rdi, [rdi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rbp, rbp
	pop	r13
	nop	
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
.label_242:
	mov	rsp, rsp
	test	ebp, ebp
	mov	rbp, rbp
	jne	.label_241
	nop	
	mov	rax, qword ptr [rsp + 0x10]
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.108
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebx
	lea	rsi, [rsi]
	mov	rdx, rbp
	call	nl_error
	test	byte ptr [byte ptr [rip + label_16]],  1
	je	.label_237
	call	print_stats
	call	quit
.label_241:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.114
	mov	rbp, rbp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	nop	
	xor	edi, edi
	mov	esi, 3
	nop	
	mov	rdx, qword ptr [rsp + 8]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, dword ptr [rsp + 4]
	mov	rbp, rbp
	mov	rdx, rbx
	call	nl_error
.label_237:
	lea	rdi, [rdi]
	call	quit
.label_234:
	test	r15d, r15d
	nop	
	mov	ebx, 0x4b
	mov	rbp, rbp
	cmovne	ebx, r15d
	mov	rbp, rbp
	xor	edi, edi
	nop	
	test	ebp, ebp
	mov	rbp, rbp
	jne	.label_236
	mov	esi, OFFSET FLAT:.str.113
	mov	rsp, rsp
	jmp	.label_238
.label_236:
	mov	esi, OFFSET FLAT:.str.114
.label_238:
	mov	rsp, rsp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rax
	nop	
	xor	edi, edi
	mov	esi, 3
	lea	rdi, [rdi]
	mov	rdx, r14
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rsp, rsp
	mov	rdx, rbp
	mov	rbp, rbp
	call	nl_error
	call	quit
.label_243:
	nop	
	mov	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	nop	
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
	nop	
	.section	.text
	.align	32
	#Procedure 0x4055e0

	.globl iwrite
	.type iwrite, @function
iwrite:
	mov	rsp, rsp
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	push	rax
	lea	rdi, [rdi]
	mov	r12, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	mov	eax,  dword ptr [dword ptr [rip + output_flags]]
	nop	
	test	ah, 0x40
	nop	
	je	.label_250
	mov	rsp, rsp
	cmp	qword ptr [word ptr [rip + output_blocksize]],  r12
	mov	rbp, rbp
	jbe	.label_250
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, 3
	xor	eax, eax
	mov	rbp, rbp
	call	rpl_fcntl
	mov	ecx, eax
	nop	
	and	ecx, 0xffffbfff
	mov	rsp, rsp
	mov	edi, 1
	mov	esi, 4
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, ecx
	call	rpl_fcntl
	test	eax, eax
	je	.label_255
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	mov	rbp, rbp
	je	.label_255
	nop	
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.116
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rbx, rax
	mov	rdx,  qword ptr [word ptr [rip + output_file]]
	nop	
	xor	edi, edi
	nop	
	mov	esi, 3
	nop	
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebp
	nop	
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	nl_error
.label_255:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + o_nocache_eof]],  1
	mov	edi, 1
	xor	esi, esi
	lea	rdi, [rdi]
	call	invalidate_cache
	lea	rdi, [rdi]
	or	byte ptr [byte ptr [rip + label_16]],  0x80
.label_250:
	mov	rsp, rsp
	xor	eax, eax
.label_247:
	mov	r15, rax
	lea	r13, [r14 + r15]
	mov	rbx, r12
	sub	rbx, r15
	cmp	r15, r12
	nop	
	jae	.label_249
	setae	bpl
	nop	dword ptr [rax]
.label_256:
	call	process_signals
	mov	byte ptr [byte ptr [rip + final_op_was_seek]],  0
	test	byte ptr [byte ptr [rip + label_257]],  1
	je	.label_248
	lea	rsi, [rsi]
	mov	rdi, r14
	nop	
	mov	rsi, r12
	call	is_nul
	lea	rsi, [rsi]
	test	al, al
	mov	rbp, rbp
	je	.label_248
	mov	edi, 1
	mov	rsp, rsp
	mov	edx, 1
	mov	rsi, r12
	nop	
	call	lseek
	test	rax, rax
	mov	rbp, rbp
	js	.label_252
	mov	byte ptr [byte ptr [rip + final_op_was_seek]],  1
	mov	rbp, rbp
	test	r12, r12
	nop	
	mov	rax, r12
	jne	.label_253
	jmp	.label_248
.label_252:
	and	byte ptr [byte ptr [rip + label_257]],  0xfe
	nop	dword ptr [rax + rax]
.label_248:
	mov	edi, 1
	mov	rbp, rbp
	mov	rsi, r13
	mov	rdx, rbx
	call	write
.label_253:
	test	rax, rax
	jns	.label_251
	call	__errno_location
	cmp	dword ptr [rax], 4
	setne	al
	lea	rsi, [rsi]
	or	al, bpl
	je	.label_256
	jmp	.label_249
	nop	word ptr cs:[rax + rax]
.label_251:
	lea	rdi, [rdi]
	test	rax, rax
	lea	rax, [rax + r15]
	nop	
	jne	.label_247
	nop	
	call	__errno_location
	mov	dword ptr [rax], 0x1c
.label_249:
	test	r15, r15
	je	.label_254
	nop	
	test	byte ptr [byte ptr [rip + o_nocache]],  1
	je	.label_254
	mov	edi, 1
	mov	rsi, r15
	mov	rsp, rsp
	call	invalidate_cache
.label_254:
	mov	rax, r15
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405820

	.globl quit
	.type quit, @function
quit:
	mov	rbp, rbp
	push	rax
	call	finish_up
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rsp, rsp
	call	exit
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405840

	.globl alloc_ibuf
	.type alloc_ibuf, @function
alloc_ibuf:
	push	r15
	mov	rbp, rbp
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x290
	cmp	qword ptr [word ptr [rip + ibuf]],  0
	mov	rbp, rbp
	jne	.label_258
	mov	rax,  qword ptr [word ptr [rip + input_blocksize]]
	mov	rcx,  qword ptr [word ptr [rip + page_size]]
	mov	rbp, rbp
	lea	rdi, [rax + rcx*2 + 3]
	lea	rsi, [rsi]
	call	malloc
	test	rax, rax
	je	.label_259
	lea	rdi, [rdi]
	add	rax, 2
	mov	rsi,  qword ptr [word ptr [rip + page_size]]
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	call	ptr_align
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + ibuf]],  rax
.label_258:
	add	rsp, 0x290
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	r15
	ret	
.label_259:
	nop	
	mov	r14,  qword ptr [word ptr [rip + input_blocksize]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.117
	mov	rsp, rsp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	r15, rax
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + input_blocksize]]
	lea	rsi, [rsp]
	mov	rsp, rsp
	mov	edx, 0x1f1
	lea	rsi, [rsi]
	mov	ecx, 1
	mov	r8d, 1
	call	human_readable
	lea	rsi, [rsi]
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	lea	rdi, [rdi]
	mov	rcx, r14
	mov	r8, rbx
	lea	rdi, [rdi]
	call	nl_error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405930

	.globl alloc_obuf
	.type alloc_obuf, @function
alloc_obuf:
	mov	rbp, rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x290
	cmp	qword ptr [word ptr [rip + obuf]],  0
	jne	.label_263
	mov	rbp, rbp
	test	byte ptr [byte ptr [rip + label_16]],  8
	jne	.label_262
	nop	
	call	alloc_ibuf
	mov	rax,  qword ptr [word ptr [rip + ibuf]]
	mov	rsp, rsp
	jmp	.label_260
.label_262:
	mov	rax,  qword ptr [word ptr [rip + output_blocksize]]
	nop	
	mov	rcx,  qword ptr [word ptr [rip + page_size]]
	lea	rdi, [rax + rcx - 1]
	call	malloc
	nop	
	test	rax, rax
	je	.label_261
	mov	rsi,  qword ptr [word ptr [rip + page_size]]
	mov	rdi, rax
	call	ptr_align
.label_260:
	mov	qword ptr [word ptr [rip + obuf]],  rax
.label_263:
	nop	
	add	rsp, 0x290
	pop	rbx
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	ret	
.label_261:
	nop	
	mov	r14,  qword ptr [word ptr [rip + output_blocksize]]
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.118
	mov	edx, 5
	nop	
	call	dcgettext
	mov	r15, rax
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + output_blocksize]]
	lea	rdi, [rdi]
	lea	rsi, [rsp]
	mov	edx, 0x1f1
	mov	ecx, 1
	lea	rsi, [rsi]
	mov	r8d, 1
	lea	rdi, [rdi]
	call	human_readable
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, r14
	mov	r8, rbx
	call	nl_error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405a20

	.globl advance_input_offset
	.type advance_input_offset, @function
advance_input_offset:
	mov	rsp, rsp
	add	rdi,  qword ptr [word ptr [rip + input_offset]]
	mov	qword ptr [word ptr [rip + input_offset]],  rdi
	nop	
	jae	.label_264
	mov	byte ptr [byte ptr [rip + input_offset_overflow]],  1
.label_264:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405a40

	.globl advance_input_after_read_error
	.type advance_input_after_read_error, @function
advance_input_after_read_error:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	rsp, rsp
	mov	rbx, rdi
	lea	rsi, [rsi]
	cmp	byte ptr [byte ptr [rip + input_seekable]],  0
	mov	rsp, rsp
	je	.label_265
	mov	rbp, rbp
	mov	rdi, rbx
	call	advance_input_offset
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + input_offset]]
	shr	rax, 0x3f
	lea	rdi, [rdi]
	or	al,  byte ptr [byte ptr [rip + input_offset_overflow]]
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + input_offset_overflow]],  al
	je	.label_270
	lea	rsi, [rsi]
	xor	r15d, r15d
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.119
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + input_file]]
	mov	rbp, rbp
	mov	edi, 4
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_267
.label_265:
	lea	rsi, [rsi]
	mov	ebx,  dword ptr [dword ptr [rip + input_seek_errno]]
	nop	
	mov	r15b, 1
	cmp	ebx, 0x1d
	je	.label_268
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], ebx
	jmp	.label_269
.label_270:
	xor	edi, edi
	xor	esi, esi
	mov	edx, 1
	lea	rsi, [rsi]
	call	lseek
	test	rax, rax
	lea	rsi, [rsi]
	js	.label_269
	mov	r14,  qword ptr [word ptr [rip + input_offset]]
	mov	r15b, 1
	sub	r14, rax
	je	.label_268
	js	.label_271
	nop	
	cmp	r14, rbx
	jbe	.label_266
.label_271:
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	nop	
	je	.label_266
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.120
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rcx
	call	nl_error
.label_266:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + input_file]]
	lea	rdi, [rdi]
	xor	esi, esi
	mov	ecx, 1
	mov	rdx, r14
	call	skip_via_lseek
	test	rax, rax
	mov	rbp, rbp
	jns	.label_268
	nop	
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0
	mov	rsp, rsp
	jne	.label_269
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.121
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	nl_error
.label_269:
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.114
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdx,  qword ptr [word ptr [rip + input_file]]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
.label_267:
	mov	rdx, rbx
	mov	rbp, rbp
	call	nl_error
.label_268:
	mov	al, r15b
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405c50

	.globl translate_buffer
	.type translate_buffer, @function
translate_buffer:
	push	r14
	nop	
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rbp, rbp
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	test	r14, r14
	je	.label_272
	nop	dword ptr [rax]
.label_273:
	lea	rdi, [rdi]
	movsx	edi, byte ptr [rbx]
	mov	rbp, rbp
	call	to_uchar
	nop	
	movzx	eax, al
	mov	al,  byte ptr [byte ptr [rax + trans_table]]
	mov	rbp, rbp
	mov	byte ptr [rbx], al
	nop	
	inc	rbx
	mov	rbp, rbp
	dec	r14
	nop	
	jne	.label_273
.label_272:
	add	rsp, 8
	nop	
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405cb0

	.globl swab_buffer
	.type swab_buffer, @function
swab_buffer:
	mov	rbp, rbp
	movzx	eax,  byte ptr [byte ptr [rip + char_is_saved]]
	nop	
	and	eax, 1
	cmp	eax, 1
	jne	.label_274
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + saved_char]]
	mov	byte ptr [rdi - 1], al
	dec	rdi
	mov	rbp, rbp
	inc	qword ptr [rsi]
	mov	byte ptr [byte ptr [rip + char_is_saved]],  0
.label_274:
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	mov	rsp, rsp
	test	al, 1
	je	.label_277
	mov	rsp, rsp
	lea	rcx, [rax - 1]
	mov	qword ptr [rsi], rcx
	mov	rsp, rsp
	mov	al, byte ptr [rdi + rax - 1]
	mov	byte ptr [byte ptr [rip + saved_char]],  al
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + char_is_saved]],  1
.label_277:
	mov	rax, qword ptr [rsi]
	lea	rsi, [rsi]
	test	rax, -2
	je	.label_276
	lea	rcx, [rdi + rax]
	mov	rsp, rsp
	shr	rax, 1
	mov	rbp, rbp
	neg	rax
	nop	dword ptr [rax + rax]
.label_275:
	mov	dl, byte ptr [rcx - 2]
	lea	rsi, [rsi]
	mov	byte ptr [rcx], dl
	lea	rsi, [rsi]
	lea	rcx, [rcx - 2]
	mov	rsp, rsp
	inc	rax
	mov	rbp, rbp
	jne	.label_275
.label_276:
	inc	rdi
	mov	rax, rdi
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d60

	.globl copy_with_block
	.type copy_with_block, @function
copy_with_block:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	push	r15
	mov	rbp, rbp
	push	r14
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	test	r14, r14
	mov	rbp, rbp
	je	.label_278
	nop	
	mov	r15d, 0x25
	nop	word ptr cs:[rax + rax]
.label_286:
	lea	rsi, [rsi]
	movsx	eax, byte ptr [rbx]
	lea	rsi, [rsi]
	mov	cl,  byte ptr [byte ptr [rip + newline_character]]
	lea	rdi, [rdi]
	and	cl, 1
	mov	edx, 0xa
	cmovne	edx, r15d
	mov	rbp,  qword ptr [word ptr [rip + col]]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + conversion_blocksize]]
	lea	rsi, [rsi]
	cmp	eax, edx
	nop	
	jne	.label_279
	lea	rsi, [rsi]
	cmp	rbp, rcx
	lea	rdi, [rdi]
	jb	.label_285
	mov	rbp, rbp
	xor	eax, eax
	jmp	.label_280
	nop	dword ptr [rax]
.label_282:
	inc	rbp
.label_285:
	nop	
	cmp	rbp,  qword ptr [word ptr [rip + conversion_blocksize]]
	mov	eax, 0
	nop	
	jae	.label_280
	mov	al,  byte ptr [byte ptr [rip + space_character]]
	and	al, 1
	mov	al, 0x40
	nop	
	jne	.label_281
	mov	al, 0x20
.label_281:
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + oc]]
	lea	rdx, [rcx + 1]
	mov	qword ptr [word ptr [rip + oc]],  rdx
	mov	rsi,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rsi + rcx], al
	cmp	rdx,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_282
	call	write_output
	jmp	.label_282
	nop	word ptr cs:[rax + rax]
.label_279:
	nop	
	cmp	rbp, rcx
	jne	.label_283
	mov	rsp, rsp
	inc	qword ptr [word ptr [rip + r_truncate]]
	jmp	.label_284
	nop	word ptr cs:[rax + rax]
.label_283:
	jae	.label_284
	mov	rcx,  qword ptr [word ptr [rip + oc]]
	lea	rdx, [rcx + 1]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + oc]],  rdx
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rsi + rcx], al
	mov	rsp, rsp
	cmp	rdx,  qword ptr [word ptr [rip + output_blocksize]]
	lea	rdi, [rdi]
	jb	.label_284
	lea	rdi, [rdi]
	call	write_output
	nop	dword ptr [rax + rax]
.label_284:
	mov	rax,  qword ptr [word ptr [rip + col]]
	inc	rax
.label_280:
	mov	qword ptr [word ptr [rip + col]],  rax
	lea	rsi, [rsi]
	inc	rbx
	mov	rbp, rbp
	dec	r14
	lea	rsi, [rsi]
	jne	.label_286
.label_278:
	mov	rbp, rbp
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405ef0

	.globl copy_with_unblock
	.type copy_with_unblock, @function
copy_with_unblock:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r12
	push	rbx
	nop	
	mov	r15, rsi
	mov	r14, rdi
	lea	rdi, [rdi]
	xor	ebx, ebx
	mov	rbp, rbp
	test	r15, r15
	mov	rsp, rsp
	je	.label_293
	mov	ebp, 0x40
	nop	
.label_294:
	mov	rsp, rsp
	mov	r12b, byte ptr [r14 + rbx]
	mov	rax,  qword ptr [word ptr [rip + col]]
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	nop	
	mov	qword ptr [word ptr [rip + col]],  rcx
	cmp	rax,  qword ptr [word ptr [rip + conversion_blocksize]]
	jae	.label_287
	movsx	eax, r12b
	mov	rsp, rsp
	mov	cl,  byte ptr [byte ptr [rip + space_character]]
	nop	
	and	cl, 1
	mov	rbp, rbp
	mov	ecx, 0x20
	cmovne	ecx, ebp
	cmp	eax, ecx
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + copy_with_unblock.pending_spaces]]
	jne	.label_290
	lea	rsi, [rsi]
	inc	rax
	mov	qword ptr [word ptr [rip + copy_with_unblock.pending_spaces]],  rax
	mov	rsp, rsp
	jmp	.label_289
	nop	dword ptr [rax]
.label_287:
	mov	qword ptr [word ptr [rip + copy_with_unblock.pending_spaces]],  0
	mov	qword ptr [word ptr [rip + col]],  0
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + newline_character]]
	and	al, 1
	nop	
	mov	al, 0x25
	jne	.label_288
	mov	al, 0xa
.label_288:
	mov	rbp, rbp
	dec	rbx
	mov	rcx,  qword ptr [word ptr [rip + oc]]
	nop	
	lea	rdx, [rcx + 1]
	nop	
	mov	qword ptr [word ptr [rip + oc]],  rdx
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + obuf]]
	mov	rbp, rbp
	mov	byte ptr [rsi + rcx], al
	cmp	rdx,  qword ptr [word ptr [rip + output_blocksize]]
	mov	rbp, rbp
	jae	.label_296
	mov	rsp, rsp
	jmp	.label_289
	nop	word ptr [rax + rax]
.label_290:
	mov	rbp, rbp
	test	rax, rax
	je	.label_295
	nop	dword ptr [rax + rax]
.label_297:
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [rip + space_character]]
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	mov	al, 0x40
	jne	.label_291
	lea	rdi, [rdi]
	mov	al, 0x20
.label_291:
	mov	rcx,  qword ptr [word ptr [rip + oc]]
	lea	rdx, [rcx + 1]
	nop	
	mov	qword ptr [word ptr [rip + oc]],  rdx
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + obuf]]
	mov	rbp, rbp
	mov	byte ptr [rsi + rcx], al
	cmp	rdx,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_292
	call	write_output
.label_292:
	dec	qword ptr [word ptr [rip + copy_with_unblock.pending_spaces]]
	jne	.label_297
.label_295:
	mov	rax,  qword ptr [word ptr [rip + oc]]
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + oc]],  rcx
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rdx + rax], r12b
	lea	rsi, [rsi]
	cmp	rcx,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_289
.label_296:
	call	write_output
.label_289:
	inc	rbx
	lea	rdi, [rdi]
	cmp	rbx, r15
	jb	.label_294
.label_293:
	pop	rbx
	pop	r12
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4060c0

	.globl copy_simple
	.type copy_simple, @function
copy_simple:
	mov	rsp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	nop	
	push	rbx
	mov	rbp, rbp
	mov	r15, rsi
	mov	r14, rdi
	nop	word ptr cs:[rax + rax]
.label_298:
	mov	rbx,  qword ptr [word ptr [rip + output_blocksize]]
	mov	rdi,  qword ptr [word ptr [rip + oc]]
	sub	rbx, rdi
	mov	rsp, rsp
	cmp	r15, rbx
	mov	rbp, rbp
	cmovb	rbx, r15
	mov	rbp, rbp
	add	rdi,  qword ptr [word ptr [rip + obuf]]
	mov	rsi, r14
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	memcpy
	mov	rax,  qword ptr [word ptr [rip + oc]]
	lea	rsi, [rsi]
	add	rax, rbx
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + oc]],  rax
	lea	rdi, [rdi]
	cmp	rax,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_299
	mov	rsp, rsp
	call	write_output
.label_299:
	lea	rdi, [rdi]
	mov	rax, r15
	sub	rax, rbx
	lea	rdi, [rdi]
	add	r14, rbx
	cmp	r15, rbx
	mov	rsp, rsp
	mov	r15, rax
	jne	.label_298
	pop	rbx
	nop	
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406170

	.globl write_output
	.type write_output, @function
write_output:
	push	rbp
	lea	rsi, [rsi]
	push	r14
	push	rbx
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + obuf]]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + output_blocksize]]
	call	iwrite
	lea	rsi, [rsi]
	mov	rbx, rax
	add	qword ptr [word ptr [rip + w_bytes]],  rbx
	cmp	rbx,  qword ptr [word ptr [rip + output_blocksize]]
	jne	.label_300
	inc	qword ptr [word ptr [rip + w_full]]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + oc]],  0
	pop	rbx
	mov	rbp, rbp
	pop	r14
	pop	rbp
	nop	
	ret	
.label_300:
	lea	rsi, [rsi]
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.107
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, rax
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	rbp, rbp
	mov	edi, 4
	call	quotearg_style
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	eax, eax
	nop	
	mov	esi, r14d
	nop	
	mov	rdx, rbp
	mov	rsp, rsp
	call	nl_error
	mov	rbp, rbp
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_301
	inc	qword ptr [word ptr [rip + w_partial]]
.label_301:
	call	quit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406240

	.globl skip_via_lseek
	.type skip_via_lseek, @function
skip_via_lseek:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	push	r15
	mov	rbp, rbp
	push	r14
	mov	rsp, rsp
	push	r12
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x60
	mov	r15d, ecx
	mov	r12, rdx
	mov	rsp, rsp
	mov	ebp, esi
	nop	
	mov	r14, rdi
	nop	
	lea	rdx, [rsp + 0x30]
	mov	esi, 0x80306d02
	xor	eax, eax
	mov	edi, ebp
	call	ioctl
	lea	rdi, [rdi]
	mov	ebx, eax
	mov	rsp, rsp
	mov	edi, ebp
	mov	rsi, r12
	nop	
	mov	edx, r15d
	call	lseek
	mov	r15, rax
	mov	rsp, rsp
	test	ebx, ebx
	jne	.label_303
	test	r15, r15
	js	.label_303
	lea	rdx, [rsp]
	mov	esi, 0x80306d02
	xor	eax, eax
	mov	rsp, rsp
	mov	edi, ebp
	mov	rsp, rsp
	call	ioctl
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_303
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x38]
	cmp	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jne	.label_303
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x58]
	mov	rsp, rsp
	cmp	eax, dword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	jne	.label_303
	mov	eax, dword ptr [rsp + 0x5c]
	cmp	eax, dword ptr [rsp + 0x2c]
	jne	.label_303
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	je	.label_302
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.115
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp]
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r14
	mov	rsp, rsp
	call	nl_error
.label_302:
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0
	mov	r15, -1
.label_303:
	mov	rax, r15
	add	rsp, 0x60
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rsp, rsp
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406380

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	lea	rsi, [rsi]
	mov	eax, 0x2000
	or	eax, dword ptr [rdi + 0x18]
	mov	rsp, rsp
	and	eax, 0xf000
	cmp	eax, 0xa000
	mov	rsp, rsp
	jne	.label_304
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	ret	
.label_304:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4063b0

	.globl is_nul
	.type is_nul, @function
is_nul:
	mov	rsp, rsp
	mov	rcx, rsi
	lea	rsi, [rsi]
	mov	al, 1
	lea	rdi, [rdi]
	test	rcx, rcx
	je	.label_305
	lea	rdi, [rdi]
	dec	rcx
	mov	rsp, rsp
	mov	rsi, rdi
	nop	
.label_307:
	cmp	byte ptr [rsi], 0
	mov	rbp, rbp
	jne	.label_306
	test	rcx, rcx
	je	.label_305
	inc	rsi
	nop	
	mov	dl, cl
	nop	
	dec	rcx
	test	dl, 0xf
	jne	.label_307
	push	rax
	lea	rdi, [rdi]
	inc	rcx
	lea	rdi, [rdi]
	mov	rdx, rcx
	call	memcmp
	lea	rsi, [rsi]
	test	eax, eax
	sete	al
	nop	
	add	rsp, 8
.label_305:
	mov	rsp, rsp
	ret	
.label_306:
	xor	eax, eax
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406420

	.globl ptr_align
	.type ptr_align, @function
ptr_align:
	lea	rcx, [rdi + rsi - 1]
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, rcx
	nop	
	div	rsi
	sub	rcx, rdx
	mov	rax, rcx
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406440

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	lea	rsi, [rsi]
	movzx	eax, dil
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406450

	.globl cache_round
	.type cache_round, @function
cache_round:
	mov	rsp, rsp
	test	edi, edi
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:cache_round.i_pending
	mov	ecx, OFFSET FLAT:cache_round.o_pending
	lea	rsi, [rsi]
	cmove	rcx, rax
	test	rsi, rsi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx]
	je	.label_308
	add	rax, rsi
	mov	edx, eax
	and	edx, 0x1ffff
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rdx
	xor	ecx, ecx
	mov	rbp, rbp
	sub	rax, rdx
	lea	rdi, [rdi]
	cmovbe	rax, rcx
.label_308:
	ret	
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4064a0

	.globl close_stream
	.type close_stream, @function
close_stream:
	mov	rsp, rsp
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	lea	rsi, [rsi]
	call	__fpending
	nop	
	mov	r14, rax
	mov	rdi, rbx
	mov	rbp, rbp
	call	ferror_unlocked
	mov	ebp, eax
	mov	rdi, rbx
	nop	
	call	rpl_fclose
	mov	rbp, rbp
	test	ebp, ebp
	nop	
	je	.label_309
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	test	eax, eax
	jne	.label_310
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	jmp	.label_310
.label_309:
	test	eax, eax
	mov	rbp, rbp
	sete	cl
	neg	eax
	nop	
	sbb	ebx, ebx
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_310
	test	cl, cl
	jne	.label_310
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	nop	
	cmove	ebx, ecx
.label_310:
	mov	rsp, rsp
	mov	eax, ebx
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x406540
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + file_name]],  rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406550
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406560

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	call	close_stream
	test	eax, eax
	je	.label_314
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_311
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	jne	.label_311
.label_314:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_312
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	rbp
	ret	
.label_311:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	lea	rdi, [rdi]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_313
	xor	edi, edi
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str_1
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, ebp
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_312:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_313:
	mov	rbp, rbp
	mov	rdi, rbx
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_0
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	r8, r14
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406660

	.globl fd_reopen
	.type fd_reopen, @function
fd_reopen:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edi
	nop	
	xor	eax, eax
	nop	
	mov	rdi, rsi
	nop	
	mov	esi, edx
	nop	
	mov	edx, ecx
	call	open
	mov	ebx, eax
	cmp	ebx, ebp
	je	.label_315
	test	ebx, ebx
	nop	
	js	.label_315
	mov	edi, ebx
	mov	esi, ebp
	call	dup2
	nop	
	mov	r14d, eax
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rbp, rbp
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_316
.label_315:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_316:
	mov	rsp, rsp
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4066e0

	.globl gethrxtime
	.type gethrxtime, @function
gethrxtime:
	mov	rbp, rbp
	sub	rsp, 0x18
	lea	rdi, [rdi]
	lea	rsi, [rsp + 8]
	mov	edi, 1
	call	clock_gettime
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_317
	mov	rbp, rbp
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	call	gettime
.label_317:
	nop	
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x10]
	call	xtime_make
	add	rsp, 0x18
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406730

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
	#Procedure 0x406770

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
	#Procedure 0x406790
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
	#Procedure 0x4067c0
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
	#Procedure 0x4067f0
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
	#Procedure 0x406830

	.globl gettime
	.type gettime, @function
gettime:
	mov	rsp, rsp
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	clock_gettime
	.section	.text
	.align	32
	#Procedure 0x406840
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	lea	rsi, [rsi]
	sub	rsp, 0x18
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	call	gettime
	nop	
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	add	rsp, 0x18
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406870

	.globl human_readable
	.type human_readable, @function
human_readable:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x98
	mov	r13, r8
	mov	rbp, rbp
	mov	r15, rcx
	mov	r12d, edx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], rdi
	mov	eax, r12d
	and	eax, 3
	mov	dword ptr [rsp + 0x64], eax
	mov	eax, r12d
	and	eax, 0x20
	mov	dword ptr [rsp + 0x4c], eax
	lea	rsi, [rsi]
	mov	eax, 0x400
	mov	ecx, 0x3e8
	lea	rsi, [rsi]
	cmovne	ecx, eax
	mov	dword ptr [rsp + 0x74], ecx
	call	localeconv
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rbx]
	mov	rdi, rbp
	call	strlen
	lea	rcx, [rax - 1]
	mov	rbp, rbp
	cmp	rcx, 0x10
	mov	ecx, 1
	cmovb	rcx, rax
	mov	qword ptr [rsp + 0x40], rcx
	mov	eax, OFFSET FLAT:.str_3
	cmovb	rax, rbp
	mov	qword ptr [rsp + 0x20], rax
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rbx + 8]
	mov	rsp, rsp
	mov	rbx, qword ptr [rbx + 0x10]
	nop	
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	strlen
	cmp	rax, 0x11
	mov	ecx, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	cmovb	rcx, rbp
	nop	
	lea	rax, [r14 + 0x287]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x68], rax
	cmp	r13, r15
	lea	rdi, [rdi]
	jbe	.label_327
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x58], r14
	lea	rdi, [rdi]
	test	r15, r15
	nop	
	mov	r8d, r12d
	mov	r12, r13
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	je	.label_325
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r12
	mov	rbp, rbp
	div	r15
	mov	rsp, rsp
	test	rdx, rdx
	jne	.label_325
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r12
	div	r15
	mov	rsi, rax
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, rdi
	div	rsi
	lea	rsi, [rsi]
	mov	r14, rax
	add	rdx, rdx
	nop	
	lea	rax, [rdx + rdx*4]
	nop	
	xor	edx, edx
	div	rsi
	mov	rcx, rax
	add	rdx, rdx
	setne	al
	mov	rsp, rsp
	cmp	rsi, rdx
	sbb	edi, edi
	and	edi, 1
	or	edi, 2
	nop	
	cmp	rdx, rsi
	movzx	ebp, al
	cmovae	ebp, edi
	nop	
	jmp	.label_346
.label_327:
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x58], r14
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r15
	div	r13
	test	rdx, rdx
	lea	rdi, [rdi]
	mov	r8d, r12d
	mov	r12, r13
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	jne	.label_325
	lea	rdi, [rdi]
	xor	ebp, ebp
	mov	rbp, rbp
	xor	edx, edx
	mov	rax, r15
	div	r12
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	r14, rcx
	imul	r14, rdi
	xor	edx, edx
	mov	rax, r14
	mov	rsp, rsp
	div	rcx
	lea	rdi, [rdi]
	cmp	rax, rdi
	mov	ecx, 0
	mov	rsp, rsp
	jne	.label_325
.label_346:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], rbx
	nop	
	mov	r15d, r8d
	and	r15d, 0x10
	nop	
	mov	ebx, 0xffffffff
	mov	rsp, rsp
	je	.label_338
	nop	
	mov	r9d, dword ptr [rsp + 0x74]
	mov	edi, r9d
	mov	rbp, rbp
	xor	ebx, ebx
	mov	rbp, rbp
	cmp	rdi, r14
	nop	
	jbe	.label_323
	mov	r13, qword ptr [rsp + 0x68]
	jmp	.label_334
	nop	dword ptr [rax]
.label_323:
	mov	rbp, rbp
	xor	edx, edx
	mov	rax, r14
	lea	rsi, [rsi]
	div	rdi
	lea	edx, [rdx + rdx*4]
	lea	ecx, [rcx + rdx*2]
	lea	rsi, [rsi]
	mov	esi, ebp
	lea	rsi, [rsi]
	sar	esi, 1
	lea	rdi, [rdi]
	xor	edx, edx
	mov	r14, rax
	mov	eax, ecx
	lea	rsi, [rsi]
	div	r9d
	mov	rbp, rbp
	lea	edx, [rsi + rdx*2]
	lea	rsi, [rsi]
	cmp	edx, r9d
	mov	ecx, eax
	nop	
	jae	.label_350
	add	edx, ebp
	setne	al
	movzx	ebp, al
	mov	rsp, rsp
	jmp	.label_356
	nop	dword ptr [rax]
.label_350:
	nop	
	add	edx, ebp
	lea	rsi, [rsi]
	cmp	r9d, edx
	nop	
	sbb	ebp, ebp
	lea	rdi, [rdi]
	and	ebp, 1
	lea	rsi, [rsi]
	or	ebp, 2
.label_356:
	mov	rsp, rsp
	inc	ebx
	cmp	ebx, 7
	jg	.label_322
	cmp	rdi, r14
	jbe	.label_323
.label_322:
	nop	
	cmp	r14, 9
	ja	.label_324
	mov	eax, dword ptr [rsp + 0x64]
	mov	rsp, rsp
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_353
	lea	rdi, [rdi]
	mov	eax, ecx
	lea	rdi, [rdi]
	and	eax, 1
	mov	rsp, rsp
	add	eax, ebp
	mov	rsp, rsp
	cmp	eax, 2
	lea	rdi, [rdi]
	ja	.label_321
	jmp	.label_328
.label_325:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x80], r12
	nop	
	test	r12, r12
	mov	rsp, rsp
	setns	al
	movzx	eax, al
	lea	rsi, [rsi]
	fild	qword ptr [rsp + 0x80]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_335]]
	mov	qword ptr [rsp + 0x88], rdi
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	setns	al
	lea	rdi, [rdi]
	movzx	eax, al
	fild	qword ptr [rsp + 0x88]
	nop	
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_335]]
	nop	
	mov	qword ptr [rsp + 0x90], r15
	test	r15, r15
	mov	rbp, rbp
	setns	al
	nop	
	movzx	eax, al
	fild	qword ptr [rsp + 0x90]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_335]]
	fdivrp	st(2)
	fmulp	st(1)
	lea	rdi, [rdi]
	test	r8b, 0x10
	mov	rsp, rsp
	jne	.label_336
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], r12
	mov	qword ptr [rsp + 0x38], rbx
	mov	dword ptr [rsp + 0x50], r8d
	nop	
	fstp	xword ptr [rsp]
	mov	edi, dword ptr [rsp + 0x64]
	call	adjust_value
	mov	rbp, rbp
	fstp	xword ptr [rsp]
	xor	r12d, r12d
	nop	
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.2_0
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	rdi, r14
	call	__sprintf_chk
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strlen
	mov	rbp, rbp
	mov	ebx, 0xffffffff
	nop	
	mov	r15, qword ptr [rsp + 0x68]
	jmp	.label_330
.label_336:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x38], rbx
	nop	
	mov	dword ptr [rsp + 0x50], r8d
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x74]
	mov	eax, eax
	mov	qword ptr [rsp + 0x78], rax
	mov	rsp, rsp
	fld1	
	xor	ebx, ebx
	fild	qword ptr [rsp + 0x78]
	mov	rsp, rsp
	fldz	
	nop	dword ptr [rax]
.label_348:
	fstp	st(0)
	lea	rsi, [rsi]
	fmul	st(1), st(0)
	lea	rdi, [rdi]
	inc	ebx
	fld	st(0)
	fmul	st(2)
	nop	
	cmp	ebx, 7
	mov	rbp, rbp
	jg	.label_343
	fxch	st(3)
	fucomi	st(3)
	mov	rsp, rsp
	fstp	st(3)
	lea	rdi, [rdi]
	fldz	
	lea	rdi, [rdi]
	jae	.label_348
.label_343:
	mov	rsp, rsp
	fstp	st(1)
	mov	rbp, rbp
	fstp	st(0)
	fdivp	st(1)
	lea	rdi, [rdi]
	fld	st(0)
	fstp	xword ptr [rsp + 0x20]
	fstp	xword ptr [rsp]
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rsp + 0x64]
	mov	rbp, rbp
	mov	edi, ebp
	call	adjust_value
	fstp	xword ptr [rsp]
	nop	
	mov	esi, 1
	mov	rdx, -1
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.3_0
	mov	rsp, rsp
	xor	eax, eax
	mov	r14, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsp, rsp
	call	__sprintf_chk
	mov	rdi, r14
	call	strlen
	mov	ecx, dword ptr [rsp + 0x4c]
	shr	ecx, 5
	xor	ecx, 1
	lea	rsi, [rsi]
	or	rcx, 2
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x40]
	add	rcx, rdx
	mov	rsp, rsp
	cmp	rcx, rax
	lea	rsi, [rsi]
	mov	r15, qword ptr [rsp + 0x68]
	jb	.label_333
	fld	xword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	inc	rdx
	mov	rbp, rbp
	mov	ecx, dword ptr [rsp + 0x50]
	test	cl, 8
	jne	.label_329
	fstp	st(0)
	jmp	.label_340
.label_338:
	mov	r13, qword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	jmp	.label_334
.label_329:
	movzx	ecx, byte ptr [rax + r14 - 1]
	nop	
	cmp	ecx, 0x30
	fstp	xword ptr [rsp + 0x20]
	nop	
	jne	.label_340
.label_333:
	mov	qword ptr [rsp + 0x40], r12
	mov	rsp, rsp
	fld	dword ptr [dword ptr [rip + label_342]]
	fld	st(0)
	fstp	xword ptr [rsp + 0x14]
	fld	xword ptr [rsp + 0x20]
	fmulp	st(1)
	fstp	xword ptr [rsp]
	mov	edi, ebp
	mov	rbp, rbp
	call	adjust_value
	mov	rbp, rbp
	fld	xword ptr [rsp + 0x14]
	fdivp	st(1)
	lea	rsi, [rsi]
	fstp	xword ptr [rsp]
	mov	rbp, rbp
	xor	r12d, r12d
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.2_0
	xor	eax, eax
	mov	rdi, r14
	lea	rdi, [rdi]
	call	__sprintf_chk
	mov	rdi, r14
	call	strlen
	jmp	.label_330
.label_340:
	nop	
	mov	qword ptr [rsp + 0x40], r12
	mov	rbp, rbp
	mov	r12, rdx
.label_330:
	mov	rsp, rsp
	mov	rbp, r15
	sub	rbp, rax
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rax
	mov	rbp, rbp
	call	memmove
	mov	r13, r15
	mov	rsp, rsp
	sub	r13, r12
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rsp + 0x50]
	mov	r12, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	jmp	.label_319
.label_324:
	mov	r13, qword ptr [rsp + 0x68]
	jmp	.label_334
.label_353:
	test	eax, eax
	jne	.label_328
	nop	
	test	ebp, ebp
	nop	
	je	.label_328
.label_321:
	mov	rbp, rbp
	inc	ecx
	xor	ebp, ebp
	cmp	ecx, 0xa
	jne	.label_328
	mov	rsp, rsp
	inc	r14
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	cmp	r14, 9
	lea	rsi, [rsi]
	mov	ebp, 0
	ja	.label_331
.label_328:
	test	r8b, 8
	je	.label_337
	test	ecx, ecx
	lea	rdi, [rdi]
	jne	.label_337
	mov	r13, qword ptr [rsp + 0x68]
	jmp	.label_334
.label_337:
	add	ecx, 0x30
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	lea	r13, [rax + 0x286]
	nop	
	mov	byte ptr [rax + 0x286], cl
	mov	rdx, qword ptr [rsp + 0x40]
	sub	r13, rdx
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x20]
	mov	ebp, r8d
	call	memcpy
	nop	
	mov	r8d, ebp
	lea	rsi, [rsi]
	xor	ebp, ebp
	nop	
	xor	ecx, ecx
	jmp	.label_334
.label_331:
	mov	rbp, rbp
	xor	ebp, ebp
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x68]
	mov	rsp, rsp
	mov	r14d, 0xa
.label_334:
	mov	eax, dword ptr [rsp + 0x64]
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_352
	nop	
	cmp	eax, 1
	jne	.label_320
	movsxd	rax, ebp
	lea	rdi, [rdi]
	mov	edx, r14d
	mov	rsp, rsp
	and	edx, 1
	lea	rsi, [rsi]
	add	rdx, rax
	mov	rsp, rsp
	setne	al
	movzx	eax, al
	nop	
	add	eax, ecx
	cmp	eax, 5
	jg	.label_354
	nop	
	jmp	.label_320
.label_352:
	mov	rbp, rbp
	add	ecx, ebp
	nop	
	jle	.label_320
.label_354:
	inc	r14
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x74]
	mov	rbp, rbp
	cmp	ebx, 7
	lea	rdi, [rdi]
	jg	.label_320
	lea	rdi, [rdi]
	test	r15d, r15d
	lea	rsi, [rsi]
	je	.label_320
	cmp	r14, rax
	lea	rdi, [rdi]
	jne	.label_320
	inc	ebx
	mov	r14d, 1
	lea	rsi, [rsi]
	test	r8b, 8
	jne	.label_320
	mov	rsp, rsp
	mov	byte ptr [r13 - 1], 0x30
	dec	r13
	nop	
	mov	rdx, qword ptr [rsp + 0x40]
	sub	r13, rdx
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x20]
	mov	ebp, r8d
	call	memcpy
	mov	r8d, ebp
	lea	rdi, [rdi]
	mov	r14d, 1
.label_320:
	mov	r15, qword ptr [rsp + 0x68]
	movabs	rcx, 0xcccccccccccccccd
	mov	rbp, rbp
	mov	rbp, r13
	nop	dword ptr [rax + rax]
.label_345:
	mov	rbp, rbp
	mov	rax, r14
	mul	rcx
	nop	
	mov	eax, edx
	shr	eax, 2
	and	eax, 0x3ffffffe
	lea	eax, [rax + rax*4]
	mov	rbp, rbp
	mov	esi, r14d
	lea	rdi, [rdi]
	sub	esi, eax
	lea	rdi, [rdi]
	or	sil, 0x30
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], sil
	lea	rsi, [rsi]
	dec	rbp
	lea	rdi, [rdi]
	shr	rdx, 3
	cmp	r14, 9
	mov	r14, rdx
	ja	.label_345
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x58]
.label_319:
	lea	rdi, [rdi]
	test	r8b, 4
	nop	
	je	.label_355
	nop	
	sub	r13, rbp
	nop	
	mov	rdi, rbp
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x38]
	nop	
	mov	rcx, qword ptr [rsp + 0x30]
	mov	ebp, r8d
	lea	rsi, [rsi]
	call	group_number
	mov	r8d, ebp
	mov	rbp, rax
.label_355:
	nop	
	mov	eax, dword ptr [rsp + 0x74]
	test	r8b, r8b
	mov	rbp, rbp
	jns	.label_341
	test	ebx, ebx
	jns	.label_326
	lea	rsi, [rsi]
	xor	ebx, ebx
	cmp	r12, 2
	nop	
	jb	.label_326
	mov	eax, eax
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, 1
	nop	
.label_332:
	mov	ebx, 8
	nop	
	cmp	ecx, 7
	nop	
	je	.label_326
	inc	ecx
	mov	rsp, rsp
	imul	rdx, rax
	lea	rdi, [rdi]
	cmp	rdx, r12
	lea	rsi, [rsi]
	mov	ebx, ecx
	jb	.label_332
.label_326:
	mov	eax, r8d
	and	eax, 0x100
	test	r8b, 0x40
	mov	rsp, rsp
	je	.label_339
	mov	ecx, ebx
	or	ecx, eax
	je	.label_339
	mov	byte ptr [r14 + 0x287], 0x20
	nop	
	add	r14, 0x288
	lea	rsi, [rsi]
	mov	r15, r14
.label_339:
	mov	rsp, rsp
	test	ebx, ebx
	je	.label_344
	cmp	dword ptr [rsp + 0x4c], 0
	jne	.label_347
	mov	rsp, rsp
	mov	cl, 0x6b
	cmp	ebx, 1
	je	.label_349
.label_347:
	lea	rdi, [rdi]
	movsxd	rcx, ebx
	lea	rsi, [rsi]
	mov	cl,  byte ptr [byte ptr [rcx + power_letter]]
.label_349:
	mov	byte ptr [r15], cl
	inc	r15
.label_344:
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	je	.label_341
	mov	rbp, rbp
	cmp	dword ptr [rsp + 0x4c], 0
	lea	rdi, [rdi]
	je	.label_351
	mov	rsp, rsp
	test	ebx, ebx
	nop	
	je	.label_351
	mov	byte ptr [r15], 0x69
	mov	rsp, rsp
	inc	r15
.label_351:
	mov	rbp, rbp
	mov	byte ptr [r15], 0x42
	inc	r15
.label_341:
	mov	byte ptr [r15], 0
	mov	rax, rbp
	add	rsp, 0x98
	pop	rbx
	mov	rsp, rsp
	pop	r12
	nop	
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407120

	.globl adjust_value
	.type adjust_value, @function
adjust_value:
	lea	rsi, [rsi]
	fld	xword ptr [rsp + 8]
	lea	rsi, [rsi]
	cmp	edi, 1
	nop	
	je	.label_357
	mov	rsp, rsp
	fld	xword ptr [word ptr [rip + label_359]]
	lea	rdi, [rdi]
	fucomip	st(1)
	lea	rdi, [rdi]
	jbe	.label_357
	lea	rdi, [rdi]
	fld	dword ptr [dword ptr [rip + label_358]]
	nop	
	fld	st(1)
	lea	rsi, [rsi]
	fsub	st(1)
	fnstcw	word ptr [rsp - 0x22]
	mov	ax, word ptr [rsp - 0x22]
	mov	word ptr [rsp - 0x22], 0xc7f
	fldcw	word ptr [rsp - 0x22]
	mov	word ptr [rsp - 0x22], ax
	nop	
	fistp	qword ptr [rsp - 0x18]
	fldcw	word ptr [rsp - 0x22]
	mov	rbp, rbp
	fnstcw	word ptr [rsp - 0x24]
	mov	ax, word ptr [rsp - 0x24]
	mov	rsp, rsp
	mov	word ptr [rsp - 0x24], 0xc7f
	fldcw	word ptr [rsp - 0x24]
	mov	word ptr [rsp - 0x24], ax
	fld	st(1)
	fistp	qword ptr [rsp - 0x20]
	fldcw	word ptr [rsp - 0x24]
	movabs	rax, 0x8000000000000000
	xor	rax, qword ptr [rsp - 0x18]
	mov	rbp, rbp
	fxch	st(1)
	nop	
	fucomi	st(1)
	mov	rbp, rbp
	fstp	st(1)
	lea	rdi, [rdi]
	cmovb	rax, qword ptr [rsp - 0x20]
	mov	rsp, rsp
	test	edi, edi
	sete	sil
	mov	rbp, rbp
	mov	qword ptr [rsp - 0x10], rax
	test	rax, rax
	lea	rdi, [rdi]
	setns	dl
	mov	rbp, rbp
	movzx	edx, dl
	nop	
	fild	qword ptr [rsp - 0x10]
	lea	rdi, [rdi]
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_335]]
	fucomip	st(1)
	mov	rsp, rsp
	fstp	st(0)
	lea	rsi, [rsi]
	setp	dl
	setne	cl
	lea	rsi, [rsi]
	or	cl, dl
	lea	rsi, [rsi]
	and	cl, sil
	movzx	ecx, cl
	add	rcx, rax
	nop	
	mov	qword ptr [rsp - 8], rcx
	setns	al
	mov	rbp, rbp
	movzx	eax, al
	nop	
	fild	qword ptr [rsp - 8]
	lea	rdi, [rdi]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_335]]
.label_357:
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407240

	.globl group_number
	.type group_number, @function
group_number:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	nop	
	push	r14
	lea	rsi, [rsi]
	push	r13
	lea	rdi, [rdi]
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	qword ptr [rsp + 8], rcx
	mov	r15, rdx
	mov	r12, rsi
	nop	
	mov	rbx, rdi
	mov	rsp, rsp
	mov	rdi, rcx
	call	strlen
	lea	rdi, [rdi]
	mov	r14, rax
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, r12
	mov	rbp, rbp
	call	memcpy
	add	rbx, r12
	mov	r13, r14
	lea	rsi, [rsi]
	neg	r13
	lea	rdi, [rdi]
	mov	rbp, -1
	nop	
	jmp	.label_361
	nop	dword ptr [rax]
.label_362:
	add	rbx, r13
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r14
	call	memcpy
.label_361:
	movzx	eax, byte ptr [r15]
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_360
	cmp	eax, 0x7f
	mov	rbp, rbp
	cmovae	rax, r12
	lea	rsi, [rsi]
	inc	r15
	mov	rbp, rbp
	mov	rbp, rax
.label_360:
	cmp	r12, rbp
	lea	rsi, [rsi]
	cmovb	rbp, r12
	nop	
	sub	rbx, rbp
	mov	rax, r12
	lea	rdi, [rdi]
	sub	rax, rbp
	lea	rdi, [rdi]
	lea	rsi, [rsp + rax + 0x10]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rdx, rbp
	mov	rsp, rsp
	call	memcpy
	mov	rbp, rbp
	sub	r12, rbp
	mov	rsp, rsp
	jne	.label_362
	lea	rdi, [rdi]
	mov	rax, rbx
	add	rsp, 0x48
	mov	rbp, rbp
	pop	rbx
	pop	r12
	nop	
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407350
	.globl human_options
	.type human_options, @function
human_options:

	lea	rdi, [rdi]
	push	rbx
	nop	
	mov	rbx, rdx
	mov	rsp, rsp
	mov	rax, rsi
	mov	rsi, rbx
	mov	rdx, rax
	call	humblock
	mov	rbp, rbp
	cmp	qword ptr [rbx], 0
	lea	rdi, [rdi]
	jne	.label_363
	nop	
	call	default_block_size
	mov	rbp, rbp
	mov	qword ptr [rbx], rax
	nop	
	mov	eax, 4
.label_363:
	lea	rdi, [rdi]
	pop	rbx
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407390

	.globl humblock
	.type humblock, @function
humblock:
	push	rbp
	push	r15
	push	r14
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rsp, rsp
	mov	r14, rdx
	nop	
	mov	r15, rsi
	test	rdi, rdi
	nop	
	jne	.label_367
	mov	edi, OFFSET FLAT:.str.4_0
	nop	
	call	getenv
	lea	rdi, [rdi]
	mov	rdi, rax
	test	rdi, rdi
	mov	rsp, rsp
	jne	.label_367
	mov	edi, OFFSET FLAT:.str.5_0
	mov	rsp, rsp
	call	getenv
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	test	rdi, rdi
	je	.label_365
.label_367:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rdi]
	lea	rbx, [rdi + 1]
	cmp	eax, 0x27
	sete	al
	nop	
	cmovne	rbx, rdi
	nop	
	movzx	ebp, al
	lea	rdi, [rdi]
	shl	ebp, 2
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:block_size_args
	mov	edx, OFFSET FLAT:block_size_opts
	mov	ecx, 4
	nop	
	mov	rdi, rbx
	call	argmatch
	test	eax, eax
	js	.label_366
	mov	rbp, rbp
	cdqe	
	or	ebp,  dword ptr [dword ptr [+ (rax * 4) + block_size_opts]]
	mov	qword ptr [r15], 1
.label_364:
	mov	rbp, rbp
	mov	dword ptr [r14], ebp
	nop	
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_371
.label_366:
	mov	rbp, rbp
	lea	rsi, [rsp]
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rdi, [rdi]
	mov	r8d, OFFSET FLAT:.str.6_0
	nop	
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rcx, r15
	mov	rsp, rsp
	call	xstrtoumax
	test	eax, eax
	je	.label_368
	mov	rbp, rbp
	mov	dword ptr [r14], 0
.label_371:
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_368:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbx]
	mov	rsp, rsp
	add	al, 0xd0
	mov	rbp, rbp
	movzx	eax, al
	cmp	eax, 0xa
	lea	rdi, [rdi]
	jb	.label_364
	mov	rax, qword ptr [rsp]
	nop	word ptr cs:[rax + rax]
.label_372:
	cmp	rax, rbx
	je	.label_370
	lea	rdi, [rdi]
	mov	cl, byte ptr [rbx + 1]
	inc	rbx
	nop	
	add	cl, 0xd0
	movzx	ecx, cl
	cmp	ecx, 0xa
	mov	rbp, rbp
	jae	.label_372
	mov	rsp, rsp
	jmp	.label_364
.label_365:
	lea	rsi, [rsi]
	call	default_block_size
	mov	qword ptr [r15], rax
	xor	ebp, ebp
	jmp	.label_364
.label_370:
	mov	ecx, ebp
	or	ecx, 0x80
	or	ebp, 0x180
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rax - 1]
	lea	rdi, [rdi]
	cmp	edx, 0x42
	mov	rsp, rsp
	cmove	ecx, ebp
	lea	rdi, [rdi]
	jne	.label_369
	movzx	eax, byte ptr [rax - 2]
	mov	rsp, rsp
	cmp	eax, 0x69
	jne	.label_364
.label_369:
	lea	rdi, [rdi]
	or	ecx, 0x20
	nop	
	mov	ebp, ecx
	lea	rsi, [rsi]
	jmp	.label_364
	nop	
	.section	.text
	.align	32
	#Procedure 0x407530

	.globl default_block_size
	.type default_block_size, @function
default_block_size:
	lea	rsi, [rsi]
	push	rax
	nop	
	mov	edi, OFFSET FLAT:.str.9_0
	call	getenv
	nop	
	test	rax, rax
	mov	ecx, 0x200
	lea	rsi, [rsi]
	mov	eax, 0x400
	cmovne	rax, rcx
	lea	rsi, [rsi]
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407560
	.globl parse_long_options
	.type parse_long_options, @function
parse_long_options:

	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0xd0
	mov	rbx, r9
	mov	r14, r8
	mov	r15, rcx
	mov	r12, rdx
	lea	rdi, [rdi]
	test	al, al
	je	.label_373
	movaps	xmmword ptr [rsp + 0x30], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x60], xmm3
	mov	rsp, rsp
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
	nop	
	xor	r8d, r8d
	lea	rsi, [rsi]
	call	getopt_long
	mov	rbp, rbp
	cmp	eax, 0x68
	mov	rsp, rsp
	je	.label_375
	cmp	eax, 0x76
	mov	rbp, rbp
	jne	.label_374
	mov	rbp, rbp
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0x100]
	nop	
	mov	qword ptr [rsp + 0xb8], rax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x30
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	r8, [rsp + 0xb0]
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, r15
	nop	
	mov	rcx, r14
	mov	rsp, rsp
	call	version_etc_va
	nop	
	xor	edi, edi
	call	exit
.label_375:
	xor	edi, edi
	call	rbx
.label_374:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	mov	dword ptr [dword ptr [rip + optind]],  0
	lea	rdi, [rdi]
	add	rsp, 0xd0
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4076a0

	.globl parse_gnu_standard_options_only
	.type parse_gnu_standard_options_only, @function
parse_gnu_standard_options_only:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xc8
	lea	rsi, [rsi]
	mov	r14, r8
	nop	
	mov	r15, rcx
	lea	rsi, [rsi]
	mov	rbx, rdx
	mov	rbp, rbp
	test	al, al
	je	.label_376
	movaps	xmmword ptr [rsp + 0x30], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_376:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  1
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_0
	mov	edx, OFFSET FLAT:.str_4
	test	r9b, r9b
	cmovne	rdx, rax
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, -1
	je	.label_378
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	cmp	eax, 0x68
	je	.label_379
	mov	rsp, rsp
	cmp	eax, 0x76
	nop	
	je	.label_380
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	lea	rdi, [rdi]
	jmp	.label_377
.label_379:
	lea	rdi, [rdi]
	xor	edi, edi
.label_377:
	call	rcx
.label_378:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	add	rsp, 0xc8
	pop	rbx
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_380:
	lea	rdi, [rdi]
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rsi, [rsi]
	lea	rax, [rsp + 0xf8]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], 0x30
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	lea	r8, [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rdx, r15
	mov	rcx, r14
	mov	rbp, rbp
	call	version_etc_va
	nop	
	xor	edi, edi
	mov	rsp, rsp
	call	exit
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4077f0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	lea	rsi, [rsi]
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_381
	mov	esi, 0x2f
	mov	rbp, rbp
	mov	rdi, rbx
	call	strrchr
	mov	rbp, rbp
	test	rax, rax
	lea	rsi, [rsi]
	lea	r14, [rax + 1]
	lea	rdi, [rdi]
	cmove	r14, rbx
	mov	rax, r14
	nop	
	sub	rax, rbx
	mov	rbp, rbp
	cmp	rax, 7
	lea	rsi, [rsi]
	jl	.label_383
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_383
	mov	esi, OFFSET FLAT:.str.2_1
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_382
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_382:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_383:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_381:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_5
	mov	rbp, rbp
	mov	esi, 0x37
	lea	rsi, [rsi]
	mov	edx, 1
	call	fwrite
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4078e0
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	nop
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	mov	rbp, rbp
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmove	rbx, rax
	mov	rsp, rsp
	mov	esi, 0x38
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	xmemdup
	nop	
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x407930
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407950
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	nop	
	cmovne	rax, rdi
	lea	rdi, [rdi]
	mov	dword ptr [rax], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407970

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	lea	rsi, [rsi]
	mov	ecx, esi
	nop	
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	cmovne	rsi, rdi
	mov	al, cl
	lea	rdi, [rdi]
	shr	al, 5
	mov	rbp, rbp
	movzx	r8d, al
	mov	rsp, rsp
	mov	r9d, dword ptr [rsi + r8*4 + 8]
	mov	rsp, rsp
	mov	edi, r9d
	mov	rsp, rsp
	shr	edi, cl
	lea	rdi, [rdi]
	mov	eax, edi
	mov	rsp, rsp
	and	eax, 1
	mov	rsp, rsp
	xor	edi, edx
	mov	rbp, rbp
	and	edi, 1
	mov	rsp, rsp
	shl	edi, cl
	lea	rsi, [rsi]
	xor	edi, r9d
	mov	rbp, rbp
	mov	dword ptr [rsi + r8*4 + 8], edi
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4079e0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	mov	rbp, rbp
	test	rdi, rdi
	nop	
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	rsp, rsp
	mov	dword ptr [rcx + 4], esi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a00

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	lea	rdi, [rdi]
	cmovne	rax, rdi
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_384
	test	rdx, rdx
	nop	
	je	.label_384
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_384:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407a40
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rcx
	nop	
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	lea	rdi, [rdi]
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbp, rbp
	mov	rbx, rax
	nop	
	mov	r14d, dword ptr [rbx]
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
	mov	rax, qword ptr [rbp + 0x28]
	mov	rcx, qword ptr [rbp + 0x30]
	lea	rsi, [rsi]
	lea	rdx, [rbp + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rdx
	nop	
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	nop	
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407ae0

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	nop	
	sub	rsp, 0x108
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x6c], ebx
	mov	r13d, r8d
	mov	qword ptr [rsp + 0xc0], rcx
	mov	r12, rdx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x150]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0x90], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], rax
	mov	r15b, bl
	mov	rbp, rbp
	shr	r15b, 1
	mov	rbp, rbp
	and	r15b, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x5c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x58], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x80], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa8], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xd0], rax
	mov	eax, 0
	mov	rbp, rbp
	xor	r11d, r11d
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
.label_395:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rsi, [rsi]
	mov	ecx, r13d
	lea	rdi, [rdi]
	cmp	r13d, 0xa
	ja	.label_430
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	rsp, rsp
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_501]]
.label_697:
	lea	rsi, [rsi]
	mov	r12d, r11d
	nop	
	mov	edi, OFFSET FLAT:.str.11_0
	mov	esi, r13d
	nop	
	mov	r14, r10
	mov	bl, r8b
	mov	rbp, rbp
	mov	rbp, r9
	call	gettext_quote
	mov	qword ptr [rsp + 0x90], rax
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r13d
	mov	rsp, rsp
	call	gettext_quote
	mov	rsp, rsp
	mov	r11d, r12d
	mov	r9, rbp
	mov	r8b, bl
	nop	
	mov	r10, r14
	nop	
	mov	qword ptr [rsp + 0x88], rax
.label_698:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	rbp, rbp
	test	r15b, 1
	mov	rbp, rbp
	mov	eax, 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xf0], rax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_413
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rsp, rsp
	je	.label_413
	mov	rsp, rsp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_454:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_441
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rsi], al
.label_441:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	al, byte ptr [rdx + rcx + 1]
	lea	rdi, [rdi]
	inc	rcx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rbp, rbp
	test	al, al
	jne	.label_454
.label_413:
	mov	rbx, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	mov	rdi, rbx
	mov	r12, r10
	nop	
	call	strlen
	mov	r10, r12
	mov	qword ptr [rsp + 0xd0], rax
	lea	rdi, [rdi]
	mov	r14d, r13d
	mov	qword ptr [rsp + 0xa8], rbx
	mov	sil, 1
	mov	rbp, rbp
	mov	dil, r15b
	mov	r8b, byte ptr [rsp + 0x69]
	mov	rsp, rsp
	mov	r9, rbp
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	mov	r11d, dword ptr [rsp + 0xb8]
	nop	
	jmp	.label_398
.label_690:
	lea	rsi, [rsi]
	xor	r14d, r14d
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	jmp	.label_398
.label_693:
	mov	rsp, rsp
	mov	al, 1
.label_691:
	mov	r15b, 1
.label_694:
	test	r15b, 1
	mov	rsp, rsp
	mov	cl, 1
	je	.label_485
	mov	cl, al
.label_485:
	lea	rdi, [rdi]
	mov	al, cl
.label_692:
	mov	r14d, 2
	mov	rsp, rsp
	test	r15b, 1
	mov	rsp, rsp
	jne	.label_488
	test	r10, r10
	je	.label_492
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	lea	rdi, [rdi]
	jmp	.label_494
.label_488:
	xor	ecx, ecx
	jmp	.label_494
.label_695:
	mov	r14d, 5
	mov	rsp, rsp
	test	r15b, 1
	jne	.label_503
	test	r10, r10
	je	.label_505
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	lea	rsi, [rsi]
	jmp	.label_387
.label_696:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	nop	
	mov	qword ptr [rsp + 0xa8], rax
	nop	
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	rbp, rbp
	mov	dil, 1
	jmp	.label_398
.label_492:
	nop	
	mov	ecx, 1
	nop	dword ptr [rax]
.label_494:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], rcx
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	mov	rbp, rbp
	jmp	.label_398
.label_503:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_387
.label_505:
	mov	rbp, rbp
	mov	eax, 1
.label_387:
	nop	
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	rsp, rsp
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	lea	rsi, [rsi]
	mov	sil, 1
	mov	dil, r15b
	nop	word ptr cs:[rax + rax]
.label_398:
	mov	qword ptr [rsp + 0x98], rdi
	mov	byte ptr [rsp + 0xa6], sil
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x140], 0
	lea	rsi, [rsi]
	setne	bl
	cmp	r14d, 2
	lea	rsi, [rsi]
	setne	r15b
	mov	rsp, rsp
	sete	dl
	mov	rbp, rbp
	mov	cl, sil
	and	cl, 1
	mov	byte ptr [rsp + 0xa5], cl
	sete	byte ptr [rsp + 0x6b]
	lea	rdi, [rdi]
	mov	r12b, r15b
	and	r12b, cl
	mov	byte ptr [rsp + 0xbf], r12b
	cmp	qword ptr [rsp + 0xd0], 0
	mov	rsp, rsp
	setne	r13b
	mov	al, r13b
	and	al, r12b
	mov	rbp, rbp
	mov	byte ptr [rsp + 0xdf], al
	mov	al, dil
	mov	rsp, rsp
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xcf], al
	mov	rsp, rsp
	sete	cl
	lea	rdi, [rdi]
	and	dl, al
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x7f], dl
	and	bl, al
	mov	byte ptr [rsp + 0xb7], bl
	or	cl, r15b
	mov	byte ptr [rsp + 0xa7], cl
	nop	
	and	sil, dil
	mov	rsp, rsp
	and	sil, r13b
	mov	byte ptr [rsp + 0x6a], sil
	nop	
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_439
	nop	word ptr [rax + rax]
.label_432:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	lea	rsi, [rsi]
	sar	r15b, 7
	and	r15b, r8b
	lea	rdi, [rdi]
	mov	r8b, r15b
	nop	
	inc	rsi
.label_439:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_497
	cmp	rsi, rbp
	jne	.label_499
	jmp	.label_500
	nop	word ptr cs:[rax + rax]
.label_497:
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + rsi], 0
	nop	
	je	.label_500
.label_499:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_506
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_394
	mov	rsp, rsp
	cmp	rbp, -1
	lea	rdi, [rdi]
	jne	.label_394
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, rbp
	mov	rdi, r9
	mov	rbp, rbp
	mov	rbp, r10
	nop	
	mov	r15b, r8b
	lea	rsi, [rsi]
	mov	r13, r14
	lea	rsi, [rsi]
	mov	r12, r9
	mov	r14, rsi
	lea	rdi, [rdi]
	call	strlen
	mov	rsp, rsp
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	r11d, dword ptr [rsp + 0xb8]
	mov	r9, r12
	mov	r12b, byte ptr [rsp + 0xbf]
	nop	
	mov	r14, r13
	lea	rdi, [rdi]
	mov	r8b, r15b
	mov	rbp, rbp
	mov	r10, rbp
	mov	rbp, rax
.label_394:
	lea	rsi, [rsi]
	cmp	rbx, rbp
	jbe	.label_426
.label_506:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xec], 0
.label_472:
	mov	rsp, rsp
	movzx	r13d, byte ptr [r9 + rsi]
	mov	rsp, rsp
	cmp	r13, 0x7e
	nop	
	ja	.label_434
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	r15b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	bl, 0x61
	nop	
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_442]]
.label_800:
	test	rsi, rsi
	jne	.label_417
	jmp	.label_453
	nop	word ptr [rax + rax]
.label_426:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12d, r11d
	lea	rsi, [rsi]
	mov	r13, r14
	lea	rdi, [rdi]
	mov	r15b, r8b
	mov	rbx, r10
	lea	rdi, [r9 + rsi]
	mov	r14, rsi
	mov	rbp, r9
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xa8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xd0]
	mov	rbp, rbp
	call	memcmp
	mov	rsp, rsp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xec], eax
	jne	.label_468
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	nop	
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_472
	mov	rsp, rsp
	jmp	.label_458
.label_468:
	mov	rbp, rbp
	mov	r10, rbx
	mov	rbp, rbp
	mov	r8b, r15b
	mov	rbp, rbp
	mov	rdi, r13
	nop	
	mov	r9, rbp
	nop	
	mov	r11d, r12d
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0xc0]
	nop	
	mov	r12b, byte ptr [rsp + 0xbf]
	nop	
	mov	rsi, r14
	jmp	.label_472
.label_804:
	xor	eax, eax
	cmp	rbp, -1
	lea	rsi, [rsi]
	je	.label_489
	test	rsi, rsi
	nop	
	jne	.label_493
	cmp	rbp, 1
	lea	rsi, [rsi]
	je	.label_453
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_431
.label_793:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_475
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xcf], 0
	nop	
	jne	.label_458
	cmp	edi, 2
	nop	
	jne	.label_396
	lea	rdi, [rdi]
	mov	al, r11b
	and	al, 1
	nop	
	jne	.label_392
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_436
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], 0x27
.label_436:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_409
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_409:
	nop	
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_479
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_479:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	rsp, rsp
	mov	r11b, 1
	nop	
	mov	rcx, rax
	jmp	.label_424
.label_794:
	mov	bl, 0x62
	lea	rsi, [rsi]
	jmp	.label_433
.label_795:
	mov	cl, 0x74
	jmp	.label_438
.label_796:
	mov	bl, 0x76
	lea	rdi, [rdi]
	jmp	.label_433
.label_797:
	mov	bl, 0x66
	jmp	.label_433
.label_798:
	nop	
	mov	cl, 0x72
	mov	rsp, rsp
	jmp	.label_438
.label_801:
	lea	rsi, [rsi]
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 2
	jne	.label_449
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_390
	nop	
	test	r10, r10
	sete	al
	mov	rcx, qword ptr [rsp + 0x80]
	mov	rdx, rcx
	lea	rdi, [rdi]
	test	rdx, rdx
	nop	
	setne	cl
	nop	
	or	cl, al
	cmove	rdx, r10
	mov	qword ptr [rsp + 0x80], rdx
	mov	eax, 0
	mov	rsp, rsp
	cmove	r10, rax
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_462
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_462:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_476
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x5c
.label_476:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_481
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_481:
	nop	
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	mov	rbp, rbp
	jmp	.label_393
.label_802:
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 5
	mov	rsp, rsp
	je	.label_425
	cmp	r14d, 2
	lea	rdi, [rdi]
	jne	.label_498
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_390
.label_498:
	mov	rdi, r14
	jmp	.label_417
.label_803:
	mov	r14, rdi
	nop	
	cmp	r14d, 2
	mov	rsp, rsp
	jne	.label_504
	nop	
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_390
	mov	rdi, r14
	jmp	.label_397
.label_434:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	lea	rsi, [rsi]
	jne	.label_401
	mov	rbp, rbp
	mov	r14, r9
	mov	rbx, rsi
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rsi, rbx
	nop	
	mov	r9, r14
	mov	rax, qword ptr [rax]
	movzx	r15d, word ptr [rax + r13*2]
	mov	rsp, rsp
	shr	r15d, 0xe
	lea	rdi, [rdi]
	and	r15b, 1
	lea	rsi, [rsi]
	mov	ebx, 1
.label_471:
	lea	rdi, [rdi]
	and	r15b, 1
	mov	dl, r15b
	or	dl, byte ptr [rsp + 0x6b]
	mov	byte ptr [rsp + 0xc0], dl
	cmp	rbx, 1
	mov	rcx, rbx
	mov	r10, qword ptr [rsp + 0x40]
	mov	r8b, byte ptr [rsp + 0x69]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	mov	r11d, dword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	ja	.label_423
	test	dl, dl
	mov	rsp, rsp
	je	.label_423
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_431
.label_489:
	test	rsi, rsi
	jne	.label_450
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_450
.label_453:
	mov	rbp, rbp
	mov	dl, 1
.label_799:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_458
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r15b, dl
	mov	rbp, rbp
	jmp	.label_431
.label_475:
	cmp	dword ptr [rsp + 0x5c], 0
	mov	rbp, rbp
	je	.label_417
	lea	rsi, [rsi]
	mov	r14, rdi
	inc	rsi
	jmp	.label_439
.label_449:
	mov	rdi, r14
.label_393:
	xor	eax, eax
	nop	
	mov	r15b, 1
	lea	rdi, [rdi]
	jmp	.label_431
.label_504:
	mov	rdi, r14
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x6a], 0
	nop	
	mov	cl, r13b
	nop	
	je	.label_438
.label_397:
	lea	rsi, [rsi]
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_455
.label_438:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xa7], 0
	lea	rsi, [rsi]
	mov	bl, cl
	nop	
	je	.label_458
.label_433:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_431
	lea	rsi, [rsi]
	jmp	.label_444
.label_401:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_484
	mov	rsp, rsp
	mov	rdi, r9
	mov	rbx, r9
	lea	rdi, [rdi]
	mov	rbp, rsi
	mov	rsp, rsp
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_484:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	nop	
	mov	r15b, 1
	xor	ebx, ebx
	lea	rsi, [rsi]
	lea	r14, [rsp + 0x100]
.label_464:
	lea	rax, [rbx + rsi]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x30], rsi
	nop	
	lea	rsi, [r9 + rax]
	mov	qword ptr [rsp + 0x48], r9
	mov	rbp, rbp
	mov	rdx, rbp
	mov	rbp, rbp
	sub	rdx, rax
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0xfc]
	nop	
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rdi, [rdi]
	mov	rbp, rax
	test	rbp, rbp
	je	.label_403
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	lea	rsi, [rsi]
	mov	r10, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	nop	
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rdi, [rdi]
	je	.label_407
	cmp	rbp, -2
	nop	
	je	.label_420
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_459
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	lea	rsi, [rsi]
	mov	ecx, 1
.label_447:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	mov	rsp, rsp
	cmp	edx, 0x21
	lea	rsi, [rsi]
	ja	.label_451
	mov	rbp, rbp
	bt	rsi, rdx
	jb	.label_443
.label_451:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jb	.label_447
.label_459:
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_502
	xor	r15d, r15d
.label_502:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	add	rbx, rbp
	mov	r14, rdi
	nop	
	call	mbsinit
	mov	rsp, rsp
	test	eax, eax
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	je	.label_464
	jmp	.label_471
.label_450:
	mov	rbp, -1
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_431
.label_425:
	mov	rdi, r14
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x58], 0
	lea	rdi, [rdi]
	je	.label_417
	lea	rcx, [rsi + 2]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jae	.label_417
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_417
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	mov	rsp, rsp
	cmp	edx, 0x3e
	ja	.label_482
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	nop	
	bt	rsi, rdx
	lea	rdi, [rdi]
	jae	.label_487
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_458
	lea	rsi, [rsi]
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_440
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_440:
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, r10
	jae	.label_421
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 0x22
.label_421:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_474
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x22
.label_474:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	nop	
	cmp	rax, r10
	lea	rsi, [rsi]
	jae	.label_477
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_477:
	nop	
	add	qword ptr [rsp + 0xf0], 4
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_431
.label_417:
	xor	eax, eax
	mov	rsp, rsp
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_431:
	test	r12b, r12b
	je	.label_427
	cmp	qword ptr [rsp + 0x140], 0
	nop	
	jne	.label_429
	jmp	.label_400
	nop	word ptr cs:[rax + rax]
.label_427:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xb7], 0
	lea	rdi, [rdi]
	je	.label_400
.label_429:
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	lea	rsi, [rsi]
	movzx	edx, cl
	mov	esi, 1
	mov	rsp, rsp
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_445
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_455
	jmp	.label_444
	nop	word ptr cs:[rax + rax]
.label_400:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_444
	jmp	.label_455
.label_445:
	mov	bl, r13b
	mov	rsi, r14
.label_444:
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_458
	mov	rsp, rsp
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_470
	nop	
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_470
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_410
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_410:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_478
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x24
.label_478:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_486
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_486:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_470:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_495
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_495:
	lea	rdi, [rdi]
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_473
.label_493:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_431
.label_423:
	mov	rsp, rsp
	add	rcx, rsi
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_405
	nop	word ptr cs:[rax + rax]
.label_457:
	mov	rbp, rbp
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_405:
	mov	rbp, rbp
	test	dl, dl
	mov	rbp, rbp
	je	.label_406
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	lea	rdi, [rdi]
	je	.label_408
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_414
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	lea	rsi, [rsi]
	mov	rsi, rbx
.label_414:
	nop	
	inc	qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xec], 0
	mov	rsp, rsp
	jmp	.label_408
	nop	dword ptr [rax]
.label_406:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_390
	cmp	r14d, 2
	jne	.label_448
	mov	rsp, rsp
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_448
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_388
	mov	rax, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	byte ptr [rax + rdx], 0x27
.label_388:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_461
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_461:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	nop	
	lea	rax, [rax + 2]
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_467
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_467:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_448:
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_402
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_402:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rdi, [rdi]
	inc	rax
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_452
	mov	dl, r13b
	mov	rsp, rsp
	shr	dl, 6
	or	dl, 0x30
	mov	rsp, rsp
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	lea	rsi, [rsi]
	mov	rsi, rdi
.label_452:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_490
	mov	dl, r13b
	shr	dl, 3
	nop	
	and	dl, 7
	or	dl, 0x30
	nop	
	mov	rbx, rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_490:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	rsp, rsp
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_408:
	mov	rsp, rsp
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_455
	test	r11b, 1
	lea	rdi, [rdi]
	je	.label_399
	mov	bl, al
	lea	rdi, [rdi]
	and	bl, 1
	mov	r14, rdi
	jne	.label_422
	lea	rsi, [rsi]
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_404
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_404:
	mov	rsi, qword ptr [rsp + 0xf0]
	nop	
	inc	rsi
	cmp	rsi, r10
	nop	
	jae	.label_415
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rdi + rsi], 0x27
.label_415:
	add	qword ptr [rsp + 0xf0], 2
	mov	rbp, rbp
	xor	r11d, r11d
	mov	rsi, rbx
	lea	rdi, [rdi]
	jmp	.label_422
	nop	word ptr cs:[rax + rax]
.label_399:
	lea	rsi, [rsi]
	mov	r14, rdi
.label_422:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_457
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rsi + rbx], r13b
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	jmp	.label_457
	nop	word ptr cs:[rax + rax]
.label_455:
	lea	rsi, [rsi]
	test	r11b, 1
	je	.label_460
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_460
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_385
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rax + rcx], 0x27
.label_385:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_466
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_466:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 2
	lea	rdi, [rdi]
	xor	r11d, r11d
	nop	
	mov	bl, r13b
	lea	rsi, [rsi]
	jmp	.label_473
	nop	word ptr cs:[rax + rax]
.label_460:
	lea	rsi, [rsi]
	mov	bl, r13b
	mov	r14, rdi
.label_473:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_432
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], bl
	lea	rdi, [rdi]
	jmp	.label_432
.label_396:
	nop	
	mov	rcx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	jmp	.label_424
.label_392:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_424:
	cmp	rcx, r10
	jae	.label_491
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_491:
	lea	rsi, [rsi]
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	lea	rsi, [rsi]
	mov	r13b, 0x30
	cmp	edi, 2
	lea	rsi, [rsi]
	je	.label_496
	lea	rdx, [rsi + 1]
	lea	rsi, [rsi]
	cmp	rdx, rbp
	jae	.label_446
	nop	
	mov	dl, byte ptr [r9 + rdx]
	mov	rbp, rbp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	mov	rbp, rbp
	cmp	edx, 9
	mov	rsp, rsp
	ja	.label_386
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_469
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	nop	
	mov	rsi, rbx
.label_469:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_412
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsp, rsp
	mov	rsi, rbx
.label_412:
	mov	rsp, rsp
	add	rcx, 3
	xor	r15d, r15d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rdi, [rdi]
	jmp	.label_431
.label_496:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_431
.label_446:
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_431
.label_386:
	xor	r15d, r15d
	jmp	.label_431
.label_403:
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_437
.label_407:
	xor	r15d, r15d
	nop	
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	jmp	.label_463
.label_420:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	jae	.label_456
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_465:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	byte ptr [rax + rbx], 0
	nop	
	je	.label_416
	lea	rax, [rsi + rbx + 1]
	lea	rsi, [rsi]
	inc	rbx
	cmp	rax, rbp
	jb	.label_465
	xor	r15d, r15d
	nop	
	jmp	.label_437
.label_456:
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_463:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_437:
	mov	byte ptr [rsp + 0xa6], r8b
	lea	rdi, [rdi]
	jmp	.label_471
.label_416:
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_437
.label_482:
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_431
.label_487:
	mov	rsp, rsp
	xor	r15d, r15d
	nop	
	mov	rsi, rbx
	jmp	.label_431
	nop	word ptr cs:[rax + rax]
.label_500:
	cmp	qword ptr [rsp + 0xf0], 0
	mov	rbp, rbp
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	and	cl, 1
	je	.label_483
	lea	rdi, [rdi]
	or	dl, al
	lea	rdi, [rdi]
	je	.label_390
.label_483:
	nop	
	mov	qword ptr [rsp + 0xc0], rbp
	mov	rsp, rsp
	mov	r12, r9
	nop	
	test	cl, cl
	setne	al
	lea	rdi, [rdi]
	cmp	r14d, 2
	nop	
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	lea	rdi, [rdi]
	test	sil, 1
	lea	rdi, [rdi]
	je	.label_389
	lea	rdi, [rdi]
	or	dl, al
	jne	.label_389
	lea	rdi, [rdi]
	test	r8b, 1
	jne	.label_391
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_389
	lea	rdi, [rdi]
	test	r10, r10
	nop	
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	r15b, dl
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_395
.label_389:
	nop	
	mov	rdx, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	test	rdx, rdx
	je	.label_411
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_411
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_411
	inc	rdx
	nop	dword ptr [rax + rax]
.label_428:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_419
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_419:
	nop	
	inc	qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	inc	rdx
	test	al, al
	jne	.label_428
.label_411:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_435
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_435
.label_458:
	lea	rdi, [rdi]
	mov	rdx, r9
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_480:
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rsi, [rsi]
	mov	r8d, 4
	cmove	r8d, r14d
	lea	rsi, [rsi]
	cmp	r14d, 2
	mov	rbp, rbp
	cmovne	r8d, r14d
	nop	
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	mov	rax, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	rsi, r10
	mov	rcx, rbp
.label_418:
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_435:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	nop	
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
.label_443:
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_480
.label_390:
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rbp, rbp
	jmp	.label_480
.label_391:
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x80]
	lea	rdi, [rdi]
	mov	rdx, r12
	nop	
	mov	rcx, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	jmp	.label_418
.label_430:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409230
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	lea	rdi, [rdi]
	mov	rax, rdx
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rcx, rax
	mov	rbp, rbp
	jmp	quotearg_alloc_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409250

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	lea	rsi, [rsi]
	mov	rbx, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rbx
	mov	rsp, rsp
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], r14
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r12, rcx
	mov	rbp, rbp
	call	__errno_location
	mov	qword ptr [rsp + 0x38], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x44], ecx
	test	rbx, rbx
	lea	rsi, [rsi]
	sete	al
	movzx	ebp, al
	lea	rsi, [rsi]
	or	ebp, dword ptr [r12 + 4]
	mov	rbp, rbp
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	nop	
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], r13
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	lea	rsi, [rsi]
	mov	r9d, ebp
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	r15, [rbx + 1]
	lea	rsi, [rsi]
	mov	rdi, r15
	call	xcharalloc
	nop	
	mov	r14, rax
	lea	rsi, [rsi]
	mov	r8d, dword ptr [r12]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp], r13
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x44]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	dword ptr [rdx], ecx
	je	.label_507
	mov	qword ptr [rax], rbx
.label_507:
	mov	rax, r14
	mov	rsp, rsp
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
	#Procedure 0x4093a0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_508
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_512:
	mov	rdi, qword ptr [r15]
	nop	
	call	free
	mov	rbp, rbp
	inc	rbx
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	lea	rsi, [rsi]
	add	r15, 0x10
	cmp	rbx, rax
	mov	rsp, rsp
	jl	.label_512
.label_508:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_511
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_509]], OFFSET FLAT:slot0
.label_511:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_510
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_510:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409460

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x409470

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x48
	nop	
	mov	r12, rcx
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_519
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_514
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_517
.label_514:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_515
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	mov	r13d, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, r13
	cmovne	rdi, rbp
	mov	rsp, rsp
	lea	r15d, [rbx + 1]
	mov	rbp, rbp
	movsxd	rsi, ebx
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, r13
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_518
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_518:
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	lea	rdi, [rdi]
	add	rdi, rax
	lea	rsi, [rsi]
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [dword ptr [rip + nslots]],  ebp
	mov	rbp, rbp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x38]
.label_517:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	movsxd	r13, ebx
	mov	rsp, rsp
	shl	r13, 4
	mov	r15, qword ptr [rbp + r13]
	mov	rbx, qword ptr [rbp + r13 + 8]
	nop	
	mov	rcx, r12
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	mov	rsp, rsp
	lea	rdx, [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rdx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x40]
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	nop	
	mov	r14, rax
	cmp	r15, r14
	ja	.label_516
	nop	
	lea	rax, [rbp + r13]
	lea	rsi, [rsi]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	lea	rdi, [rdi]
	mov	qword ptr [rax], r14
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	mov	rbp, rbp
	je	.label_513
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_513:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	call	xcharalloc
	mov	rbx, rax
	nop	
	mov	qword ptr [rbp], rbx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rcx]
	nop	
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
.label_516:
	mov	rax, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x2c]
	mov	dword ptr [rax], ecx
	mov	rax, rbx
	add	rsp, 0x48
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_519:
	lea	rdi, [rdi]
	call	abort
.label_515:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x4096e0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4096f0
	.globl quotearg
	.type quotearg, @function
quotearg:

	nop
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rsi, rax
	jmp	quotearg_n
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409710
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rcx, rdi
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsi, rcx
	lea	rsi, [rsi]
	mov	rdx, rax
	jmp	quotearg_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409730

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r14
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x40
	mov	rsp, rsp
	mov	rbx, rdx
	mov	ebp, edi
	nop	
	lea	r14, [rsp + 8]
	lea	rdi, [rdi]
	mov	rdi, r14
	call	quoting_options_from_style
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, rbx
	mov	rcx, r14
	call	quotearg_n_options
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409790

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	mov	rbp, rbp
	sub	rsp, 0x38
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	mov	rbp, rbp
	je	.label_520
	mov	dword ptr [rdi], esi
	nop	
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rdi + 0x34], eax
	lea	rsi, [rsi]
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	nop	
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rdi + 0x24], xmm2
	movups	xmmword ptr [rdi + 0x14], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi + 4], xmm0
	lea	rdi, [rdi]
	mov	rax, rdi
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
.label_520:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409800

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x38
	nop	
	mov	r14, rcx
	lea	rdi, [rdi]
	mov	rbx, rdx
	lea	rsi, [rsi]
	mov	ebp, edi
	lea	rsi, [rsi]
	lea	r15, [rsp]
	nop	
	mov	rdi, r15
	call	quoting_options_from_style
	mov	edi, ebp
	nop	
	mov	rsi, rbx
	nop	
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r14
	nop	
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409860

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	mov	rax, rsi
	mov	rbp, rbp
	mov	ecx, edi
	xor	edi, edi
	mov	esi, ecx
	mov	rbp, rbp
	mov	rdx, rax
	jmp	quotearg_n_style
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409880
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	mov	rax, rdx
	mov	rcx, rsi
	lea	rsi, [rsi]
	mov	edx, edi
	xor	edi, edi
	mov	esi, edx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_style_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4098a0

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x40
	mov	eax, edx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rbx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_521]]
	mov	qword ptr [rsp + 0x30], rcx
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_522]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_523]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	lea	r15, [rsp]
	lea	rsi, [rsi]
	mov	edx, 1
	mov	rsp, rsp
	mov	rdi, r15
	mov	esi, eax
	mov	rbp, rbp
	call	set_char_quoting
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsi, rbx
	nop	
	mov	rdx, r14
	mov	rsp, rsp
	mov	rcx, r15
	call	quotearg_n_options
	nop	
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409940

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	lea	rdi, [rdi]
	mov	rsi, -1
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rbp, rbp
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409960

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	mov	esi, 0x3a
	mov	rbp, rbp
	jmp	quotearg_char
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409970
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409980

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r14, rdx
	mov	ebp, edi
	lea	rsi, [rsi]
	lea	rbx, [rsp + 8]
	mov	rdi, rbx
	mov	rbp, rbp
	call	quoting_options_from_style
	nop	
	mov	esi, 0x3a
	lea	rdi, [rdi]
	mov	edx, 1
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	call	set_char_quoting
	mov	rdx, -1
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rcx, rbx
	mov	rsp, rsp
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x40
	nop	
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4099f0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	lea	rsi, [rsi]
	mov	r8, -1
	nop	
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409a00

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	r14, r8
	mov	rbp, rbp
	mov	rbx, rcx
	mov	ebp, edi
	mov	rax,  qword ptr [word ptr [rip + label_521]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_522]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_523]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	rdi, r15
	call	set_custom_quoting
	mov	edi, ebp
	nop	
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, r14
	mov	rcx, r15
	mov	rsp, rsp
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409a90
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	mov	rax, rdx
	mov	rsp, rsp
	mov	rcx, rsi
	mov	rdx, rdi
	nop	
	xor	edi, edi
	mov	rsi, rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	jmp	quotearg_n_custom
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409ac0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	mov	rax, rcx
	mov	rcx, rdx
	mov	rbp, rbp
	mov	rdx, rsi
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	r8, rax
	mov	rsp, rsp
	jmp	quotearg_n_custom_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409af0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409b00
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	nop	
	mov	rcx, rdi
	xor	edi, edi
	lea	rdi, [rdi]
	mov	rsi, rcx
	mov	rdx, rax
	lea	rsi, [rsi]
	jmp	quote_n_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409b20

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409b30

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x409b40

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	nop	
	sub	rsp, 0x10
	mov	r14d, esi
	lea	rsi, [rsi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	mov	rbp, rbp
	call	dcgettext
	cmp	rax, rbx
	mov	rsp, rsp
	jne	.label_524
	mov	rsp, rsp
	call	locale_charset
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0
	mov	rsp, rsp
	mov	dword ptr [rsp], 0
	nop	
	mov	esi, 0x55
	mov	rbp, rbp
	mov	edx, 0x54
	mov	rsp, rsp
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	call	strcaseeq0
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_525
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	ecx, 0x60
	je	.label_524
	nop	
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_524
.label_525:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 8], 0x30
	mov	dword ptr [rsp], 0x33
	lea	rdi, [rdi]
	mov	esi, 0x47
	nop	
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	rbp, rbp
	mov	r8d, 0x38
	mov	rsp, rsp
	mov	r9d, 0x30
	mov	rdi, rbp
	call	strcaseeq0
	test	eax, eax
	mov	rbp, rbp
	je	.label_526
	nop	
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x60
	lea	rdi, [rdi]
	je	.label_524
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_524
.label_526:
	cmp	r14d, 9
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	lea	rsi, [rsi]
	cmove	rax, rcx
.label_524:
	add	rsp, 0x10
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409c70

	.globl strcaseeq0
	.type strcaseeq0, @function
strcaseeq0:
	mov	rsp, rsp
	push	rbp
	nop	
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	push	rax
	mov	rbp, rbp
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	nop	
	mov	r13d, edx
	lea	rsi, [rsi]
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	lea	rsi, [rsi]
	call	c_isupper
	movsx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_528
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	lea	rdi, [rdi]
	je	.label_527
	jmp	.label_529
.label_528:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rdi, [rdi]
	jne	.label_529
.label_527:
	mov	rsp, rsp
	mov	eax, 1
	test	bpl, bpl
	mov	rsp, rsp
	je	.label_529
	mov	al, byte ptr [rsp + 0x40]
	movsx	ecx, byte ptr [rsp + 0x48]
	lea	rsi, [rsi]
	mov	dword ptr [rsp], ecx
	movsx	esi, r13b
	movsx	edx, r12b
	nop	
	movsx	ecx, r15b
	nop	
	movsx	r8d, r14b
	mov	rbp, rbp
	movsx	r9d, al
	mov	rdi, rbx
	call	strcaseeq1
.label_529:
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409d30

	.globl strcaseeq1
	.type strcaseeq1, @function
strcaseeq1:
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rbp, rbp
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 4], r9d
	lea	rdi, [rdi]
	mov	r15d, r8d
	mov	rbp, rbp
	mov	r12d, ecx
	mov	r13d, edx
	mov	rsp, rsp
	mov	ebp, esi
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	r14b, byte ptr [rsp + 0x40]
	lea	rsi, [rsi]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 1]
	nop	
	test	al, al
	mov	rsp, rsp
	je	.label_532
	nop	
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	nop	
	je	.label_531
	lea	rsi, [rsi]
	jmp	.label_530
.label_532:
	lea	rsi, [rsi]
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_530
.label_531:
	lea	rdi, [rdi]
	mov	eax, 1
	test	bpl, bpl
	lea	rdi, [rdi]
	je	.label_530
	nop	
	movsx	esi, r13b
	mov	rbp, rbp
	movsx	edx, r12b
	lea	rdi, [rdi]
	movsx	ecx, r15b
	mov	eax, dword ptr [rsp + 4]
	movsx	r8d, al
	lea	rdi, [rdi]
	movsx	r9d, r14b
	mov	rbp, rbp
	mov	rdi, rbx
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	jmp	strcaseeq2
.label_530:
	add	rsp, 8
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409e20

	.globl strcaseeq2
	.type strcaseeq2, @function
strcaseeq2:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r14d, r9d
	lea	rdi, [rdi]
	mov	r15d, r8d
	mov	rbp, rbp
	mov	r12d, ecx
	mov	r13d, edx
	lea	rsi, [rsi]
	mov	ebp, esi
	mov	rbx, rdi
	nop	
	mov	edi, ebp
	call	c_isupper
	mov	rbp, rbp
	movsx	ecx, byte ptr [rbx + 2]
	test	al, al
	je	.label_535
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_534
	jmp	.label_533
.label_535:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	movzx	edx, bpl
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_533
.label_534:
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_533
	lea	rdi, [rdi]
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	jmp	strcaseeq3
.label_533:
	mov	rsp, rsp
	add	rsp, 8
	mov	rbp, rbp
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
	#Procedure 0x409ef0

	.globl strcaseeq3
	.type strcaseeq3, @function
strcaseeq3:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	r14d, r8d
	mov	r15d, ecx
	mov	rbp, rbp
	mov	r12d, edx
	lea	rdi, [rdi]
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	nop	
	call	c_isupper
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rbx + 3]
	nop	
	test	al, al
	je	.label_538
	lea	rsi, [rsi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_537
	jmp	.label_536
.label_538:
	xor	eax, eax
	mov	rsp, rsp
	movzx	edx, bpl
	movzx	ecx, cl
	nop	
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_536
.label_537:
	lea	rsi, [rsi]
	mov	eax, 1
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_536
	movsx	esi, r12b
	mov	rsp, rsp
	movsx	edx, r15b
	mov	rsp, rsp
	movsx	ecx, r14b
	nop	
	mov	rdi, rbx
	pop	rbx
	nop	
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
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409f90

	.globl strcaseeq4
	.type strcaseeq4, @function
strcaseeq4:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	r14d, ecx
	lea	rdi, [rdi]
	mov	r15d, edx
	nop	
	mov	ebp, esi
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	edi, ebp
	nop	
	call	c_isupper
	nop	
	movsx	ecx, byte ptr [rbx + 4]
	mov	rbp, rbp
	test	al, al
	mov	rbp, rbp
	je	.label_541
	lea	rdi, [rdi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	mov	rsp, rsp
	je	.label_540
	nop	
	jmp	.label_539
.label_541:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_539
.label_540:
	mov	eax, 1
	test	bpl, bpl
	je	.label_539
	lea	rdi, [rdi]
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	jmp	strcaseeq5
.label_539:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a030

	.globl strcaseeq5
	.type strcaseeq5, @function
strcaseeq5:
	push	rbp
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	mov	r14d, edx
	mov	rsp, rsp
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 5]
	lea	rsi, [rsi]
	test	al, al
	nop	
	je	.label_544
	mov	rsp, rsp
	and	ecx, 0xffffffdf
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ecx, ebp
	lea	rsi, [rsi]
	je	.label_543
	lea	rsi, [rsi]
	jmp	.label_542
.label_544:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	nop	
	jne	.label_542
.label_543:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	test	bpl, bpl
	nop	
	je	.label_542
	movsx	esi, r14b
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	rbp
	jmp	strcaseeq6
.label_542:
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a0c0

	.globl strcaseeq6
	.type strcaseeq6, @function
strcaseeq6:
	nop
	push	rbp
	mov	rbp, rbp
	push	rbx
	push	rax
	nop	
	mov	ebp, esi
	nop	
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	mov	rsp, rsp
	movsx	ecx, byte ptr [rbx + 6]
	test	al, al
	mov	rsp, rsp
	je	.label_547
	and	ecx, 0xffffffdf
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_546
	jmp	.label_545
.label_547:
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_545
.label_546:
	mov	eax, 1
	nop	
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_545
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_545:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a130

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	xor	edi, edi
	lea	rsi, [rsi]
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	je	.label_548
	mov	eax, 1
	mov	rsp, rsp
	test	ecx, 0xffffffdf
	lea	rdi, [rdi]
	jne	.label_550
	mov	rbp, rbp
	jmp	.label_549
.label_548:
	mov	eax, 1
	lea	rsi, [rsi]
	test	cl, cl
	je	.label_549
.label_550:
	xor	eax, eax
.label_549:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a180

	.globl verror
	.type verror, @function
verror:
	mov	rbp, rbp
	mov	r9, rcx
	mov	rax, rdx
	xor	edx, edx
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rbp, rbp
	mov	r8, rax
	jmp	verror_at_line
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a1a0

	.globl verror_at_line
	.type verror_at_line, @function
verror_at_line:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	nop	
	mov	r15d, ecx
	mov	rsp, rsp
	mov	rbp, rdx
	mov	r14d, esi
	mov	r12d, edi
	mov	rdi, r8
	mov	rsi, r9
	call	xvasprintf
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_552
	lea	rsi, [rsi]
	test	rbp, rbp
	mov	rsp, rsp
	je	.label_551
	lea	rsi, [rsi]
	mov	r8d, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, r12d
	lea	rsi, [rsi]
	mov	esi, r14d
	mov	rdx, rbp
	mov	rsp, rsp
	mov	ecx, r15d
	mov	r9, rbx
	call	error_at_line
	jmp	.label_553
.label_551:
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_1
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, r12d
	nop	
	mov	esi, r14d
	lea	rdi, [rdi]
	mov	rcx, rbx
	lea	rdi, [rdi]
	call	error
.label_553:
	mov	rdi, rbx
	nop	
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	jmp	free
.label_552:
	nop	
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.1_2
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rbp, rbp
	call	error
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a280

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	nop	
	push	r15
	push	r14
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x38
	mov	r12, r9
	lea	rdi, [rdi]
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	lea	rdi, [rdi]
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_554
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_6
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_556
.label_554:
	mov	edx, OFFSET FLAT:.str.1_3
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_556:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_2
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	esi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	r8d, 0x7e3
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, r14
	lea	rsi, [rsi]
	call	__fprintf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_1
	mov	rbp, rbp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsi, r14
	nop	
	call	fputs_unlocked
	nop	
	cmp	r12, 9
	mov	rbp, rbp
	ja	.label_558
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_559]]
.label_721:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4_1
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	add	rsp, 0x38
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_558:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_562
.label_722:
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5_1
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	lea	rdi, [rdi]
	mov	r8, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	jmp	__fprintf_chk
.label_723:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.6_1
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	mov	esi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, r14
	lea	rdi, [rdi]
	add	rsp, 0x38
	nop	
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	nop	
	pop	r15
	jmp	__fprintf_chk
.label_724:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.7_0
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	lea	rdi, [rdi]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_563
.label_725:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rdx, rax
	mov	rsp, rsp
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_561
.label_726:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_1
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	mov	rsp, rsp
	mov	r8, qword ptr [r15 + 8]
	mov	rbp, rbp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_560
.label_727:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_1
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbp, rbp
	mov	rbx, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x18], rbx
.label_560:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_561:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_563:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_557
.label_729:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_562:
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	rbp, rbp
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	rax, qword ptr [r15 + 0x40]
	mov	qword ptr [rsp + 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], r11
	jmp	.label_555
.label_728:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_1
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r10, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	nop	
	mov	rdx, qword ptr [r15 + 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	nop	
	mov	qword ptr [rsp + 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
.label_555:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_557:
	mov	rbp, rbp
	call	__fprintf_chk
.label_720:
	mov	rsp, rsp
	add	rsp, 0x38
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	nop	
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a670
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_564:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_564
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a6a0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_567:
	nop	
	movsxd	r10, dword ptr [r8]
	lea	rdi, [rdi]
	cmp	r10, 0x28
	ja	.label_565
	mov	r11, r10
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	rbp, rbp
	mov	dword ptr [r8], eax
	mov	rsp, rsp
	jmp	.label_568
	nop	word ptr cs:[rax + rax]
.label_565:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_568:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_566
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_567
.label_566:
	lea	rdi, [rdi]
	lea	r8, [rsp]
	mov	rsp, rsp
	call	version_etc_arn
	add	rsp, 0x58
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a730
	.globl version_etc
	.type version_etc, @function
version_etc:

	sub	rsp, 0xc8
	test	al, al
	nop	
	je	.label_569
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x30], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x40], xmm1
	nop	
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	nop	
	movaps	xmmword ptr [rsp + 0x70], xmm4
	nop	
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_569:
	mov	qword ptr [rsp + 0x28], r9
	nop	
	mov	qword ptr [rsp + 0x20], r8
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	mov	rbp, rbp
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], 0x20
	lea	r8, [rsp + 0xb0]
	mov	rsp, rsp
	call	version_etc_va
	lea	rdi, [rdi]
	add	rsp, 0xc8
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a7e0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_1
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_1
	xor	eax, eax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_0
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.17_0
	mov	ecx, OFFSET FLAT:.str.18_0
	mov	rsp, rsp
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19_0
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a870
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rsp, rsp
	div	rsi
	mov	rbp, rbp
	cmp	rax, rdi
	mov	rbp, rbp
	jb	.label_570
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_570:
	nop	
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a8b0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_571
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_572
.label_571:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_572:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a8e0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	lea	rdi, [rdi]
	mov	rcx, rdx
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	edx, edx
	nop	
	div	rcx
	cmp	rax, rsi
	mov	rbp, rbp
	jb	.label_573
	imul	rcx, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	jmp	xrealloc
.label_573:
	push	rax
	mov	rsp, rsp
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a920

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_574
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_574
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_574:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_575
	test	rax, rax
	nop	
	je	.label_576
.label_575:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_576:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a970

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	nop	
	mov	r8, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_577
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_578
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_581
.label_577:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_579
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_579:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_580
.label_581:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	r8, rcx
	nop	
	mov	rsi, r8
	mov	rbp, rbp
	pop	rax
	lea	rdi, [rdi]
	jmp	xrealloc
.label_578:
	call	xalloc_die
.label_580:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40aa10

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	jmp	xmalloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aa20
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	mov	rsp, rsp
	jmp	x2nrealloc
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40aa30
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	r14, rdi
	nop	
	call	xmalloc
	mov	rbx, rax
	xor	esi, esi
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rdx, r14
	call	memset
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aa70
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	mov	rbp, rbp
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	nop	
	cmp	rax, rdi
	mov	rsp, rsp
	jb	.label_582
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_582
	pop	rcx
	ret	
.label_582:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x40aaa0

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	rbx
	nop	
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rdi, r15
	call	xmalloc
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, r15
	lea	rdi, [rdi]
	call	memcpy
	mov	rax, rbx
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aaf0
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	rsp, rsp
	call	strlen
	lea	rsi, [rax + 1]
	mov	rdi, rbx
	mov	rbp, rbp
	pop	rbx
	jmp	xmemdup
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ab10

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_4
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ab60

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rsp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x18
	mov	r13, r8
	nop	
	mov	r14d, edx
	mov	rsp, rsp
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	cmp	r14d, 0x25
	jae	.label_605
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rcx
	call	__errno_location
	lea	rsi, [rsi]
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	dword ptr [rax]
.label_598:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	lea	rdi, [rdi]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_598
	mov	rbp, rbp
	test	rbp, rbp
	lea	rcx, [rsp + 0x10]
	cmovne	rcx, rbp
	nop	
	movzx	eax, al
	mov	rbp, rbp
	mov	r15d, 4
	cmp	eax, 0x2d
	mov	rsp, rsp
	je	.label_589
	mov	rdi, rbx
	mov	rbp, rcx
	mov	rsi, rbp
	lea	rsi, [rsi]
	mov	edx, r14d
	lea	rdi, [rdi]
	call	strtoumax
	mov	rcx, rbp
	nop	
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	cmp	rax, rbx
	nop	
	je	.label_587
	nop	
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rsp, rsp
	mov	rbp, r13
	mov	rsp, rsp
	je	.label_593
	cmp	eax, 0x22
	jne	.label_589
	lea	rsi, [rsi]
	mov	r12d, 1
.label_593:
	test	rbp, rbp
	lea	rdi, [rdi]
	jne	.label_602
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	lea	rsi, [rsi]
	jmp	.label_603
.label_587:
	mov	rbp, r13
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_589
	lea	rsi, [rsi]
	mov	rbx, rcx
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rax]
	nop	
	test	esi, esi
	mov	rsp, rsp
	je	.label_589
	mov	rdi, rbp
	mov	rsp, rsp
	call	strchr
	test	rax, rax
	mov	rcx, rbx
	je	.label_589
	mov	qword ptr [rsp + 8], 1
	lea	rdi, [rdi]
	xor	r12d, r12d
.label_602:
	mov	rbp, rbp
	mov	rax, qword ptr [rcx]
	mov	rsp, rsp
	movsx	ebx, byte ptr [rax]
	lea	rdi, [rdi]
	test	ebx, ebx
	lea	rdi, [rdi]
	je	.label_596
	mov	rbp, rbp
	mov	r13, rcx
	mov	rdi, rbp
	mov	rsp, rsp
	mov	esi, ebx
	mov	rsp, rsp
	call	strchr
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_583
	mov	r15d, 0x400
	mov	r14d, 1
	add	ebx, -0x45
	nop	
	cmp	ebx, 0x2f
	ja	.label_607
	movabs	rax, 0x814400308945
	lea	rdi, [rdi]
	bt	rax, rbx
	jae	.label_584
	lea	rdi, [rdi]
	mov	esi, 0x30
	mov	rbp, rbp
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	strchr
	mov	r14d, 1
	mov	rsp, rsp
	mov	rbx, r13
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_591
	nop	
	mov	rax, qword ptr [rbx]
	movsx	ecx, byte ptr [rax + 1]
	mov	r14d, 1
	cmp	ecx, 0x42
	nop	
	je	.label_600
	cmp	ecx, 0x44
	je	.label_600
	cmp	ecx, 0x69
	mov	rbp, rbp
	jne	.label_591
	movzx	eax, byte ptr [rax + 2]
	mov	r14d, 3
	lea	rdi, [rdi]
	cmp	eax, 0x42
	mov	rsp, rsp
	je	.label_591
	mov	r14d, 1
	jmp	.label_591
.label_600:
	mov	rsp, rsp
	mov	r15d, 0x3e8
	mov	r14d, 2
.label_591:
	mov	rax, qword ptr [rbx]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x59
	lea	rdi, [rdi]
	jg	.label_588
	mov	rsp, rsp
	lea	ecx, [rax - 0x42]
	nop	
	cmp	ecx, 0xe
	nop	
	ja	.label_592
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_595]]
.label_782:
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	mov	esi, 0x400
	jmp	.label_597
.label_588:
	cmp	eax, 0x73
	jg	.label_599
	lea	rsi, [rsi]
	lea	ecx, [rax - 0x62]
	mov	rsp, rsp
	cmp	ecx, 0xb
	mov	rbp, rbp
	ja	.label_601
	xor	eax, eax
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_604]]
.label_772:
	mov	rsp, rsp
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_597
.label_592:
	cmp	eax, 0x54
	lea	rsi, [rsi]
	je	.label_590
	nop	
	cmp	eax, 0x59
	jne	.label_583
	nop	
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 8
	jmp	.label_586
.label_599:
	lea	rdi, [rdi]
	cmp	eax, 0x74
	nop	
	je	.label_590
	cmp	eax, 0x77
	nop	
	jne	.label_583
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	mov	esi, 2
.label_597:
	nop	
	call	bkm_scale
	jmp	.label_585
.label_773:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	edx, 3
	mov	rbp, rbp
	jmp	.label_586
.label_774:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	edx, 1
	jmp	.label_586
.label_775:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	lea	rsi, [rsi]
	mov	edx, 2
	jmp	.label_586
.label_590:
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 4
	jmp	.label_586
.label_601:
	cmp	eax, 0x5a
	jne	.label_583
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 7
	mov	rbp, rbp
	jmp	.label_586
.label_583:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	or	r12d, 2
	jmp	.label_594
.label_783:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	jmp	.label_586
.label_784:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	edx, 5
.label_586:
	mov	esi, r15d
	lea	rdi, [rdi]
	call	bkm_scale_by_power
.label_585:
	mov	rsp, rsp
	or	eax, r12d
	mov	rcx, qword ptr [rbx]
	mov	rbp, rbp
	lea	rdx, [rcx + r14]
	mov	qword ptr [rbx], rdx
	nop	
	cmp	byte ptr [rcx + r14], 0
	je	.label_606
	lea	rdi, [rdi]
	or	eax, 2
.label_606:
	mov	r12d, eax
.label_596:
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rsp + 8]
.label_603:
	mov	qword ptr [rcx], rax
.label_594:
	mov	r15d, r12d
.label_589:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_607:
	lea	rsi, [rsi]
	mov	rbx, r13
	lea	rdi, [rdi]
	jmp	.label_591
.label_584:
	mov	rsp, rsp
	mov	rbx, r13
	lea	rsi, [rsi]
	jmp	.label_591
.label_605:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_7
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x40af70

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	mov	rsp, rsp
	movsxd	rcx, esi
	mov	rsi, -1
	mov	rax, -1
	xor	edx, edx
	lea	rdi, [rdi]
	div	rcx
	mov	rbp, rbp
	mov	rdx, qword ptr [rdi]
	mov	rsp, rsp
	imul	rcx, rdx
	cmp	rax, rdx
	mov	rsp, rsp
	cmovb	rcx, rsi
	sbb	eax, eax
	lea	rdi, [rdi]
	and	eax, 1
	mov	qword ptr [rdi], rcx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40afb0

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	lea	rsi, [rsi]
	mov	r14d, esi
	lea	rsi, [rsi]
	mov	r15, rdi
	lea	rsi, [rsi]
	xor	ebx, ebx
	lea	rsi, [rsi]
	test	ebp, ebp
	mov	rbp, rbp
	je	.label_608
	nop	word ptr [rax + rax]
.label_609:
	lea	rdi, [rdi]
	mov	rdi, r15
	nop	
	mov	esi, r14d
	lea	rdi, [rdi]
	call	bkm_scale
	or	ebx, eax
	lea	rdi, [rdi]
	dec	ebp
	mov	rsp, rsp
	jne	.label_609
.label_608:
	mov	rsp, rsp
	mov	eax, ebx
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b020

	.globl xvasprintf
	.type xvasprintf, @function
xvasprintf:
	nop	
	push	rax
	mov	rbp, rbp
	mov	rax, rsi
	lea	rsi, [rsi]
	mov	rcx, rdi
	xor	edi, edi
	mov	rbp, rbp
	jmp	.label_610
	nop	word ptr cs:[rax + rax]
.label_614:
	inc	rdi
.label_610:
	movzx	edx, byte ptr [rcx + rdi*2]
	cmp	edx, 0x25
	mov	rbp, rbp
	jne	.label_612
	movzx	edx, byte ptr [rcx + rdi*2 + 1]
	cmp	edx, 0x73
	lea	rdi, [rdi]
	je	.label_614
	lea	rdi, [rdi]
	jmp	.label_611
.label_612:
	test	dl, dl
	jne	.label_611
	mov	rsi, rax
	nop	
	call	xstrcat
	pop	rcx
	ret	
.label_611:
	mov	rbp, rbp
	lea	rdi, [rsp]
	lea	rdi, [rdi]
	mov	esi, 1
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rcx, rax
	call	__vasprintf_chk
	test	eax, eax
	mov	rsp, rsp
	js	.label_613
	mov	rax, qword ptr [rsp]
	jmp	.label_615
.label_613:
	call	__errno_location
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	dword ptr [rcx], 0xc
	je	.label_616
.label_615:
	pop	rcx
	ret	
.label_616:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b0c0

	.globl xstrcat
	.type xstrcat, @function
xstrcat:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x18
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	r12, rdi
	mov	rax, qword ptr [r14 + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	movups	xmm0, xmmword ptr [r14]
	movaps	xmmword ptr [rsp], xmm0
	test	r12, r12
	mov	rbp, rbp
	je	.label_617
	xor	ebx, ebx
	mov	rbp, r12
	nop	dword ptr [rax]
.label_623:
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp]
	mov	rsp, rsp
	cmp	rcx, 0x28
	lea	rdi, [rdi]
	ja	.label_621
	mov	rbp, rbp
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp], ecx
	mov	rsp, rsp
	jmp	.label_622
	nop	
.label_621:
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	lea	rcx, [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rcx
.label_622:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax]
	lea	rsi, [rsi]
	call	strlen
	mov	rdi, rbx
	mov	rsi, rax
	call	xsum
	mov	rbx, rax
	dec	rbp
	jne	.label_623
	nop	
	test	rbx, -0x80000000
	lea	rsi, [rsi]
	je	.label_625
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	lea	rsi, [rsi]
	xor	r15d, r15d
	lea	rsi, [rsi]
	jmp	.label_619
.label_617:
	lea	rsi, [rsi]
	mov	edi, 1
	call	xmalloc
	mov	r15, rax
	mov	rbx, r15
	jmp	.label_618
.label_625:
	nop	
	inc	rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	xmalloc
	mov	r15, rax
	nop	
	mov	rbx, r15
	test	r12, r12
	je	.label_618
	nop	dword ptr [rax + rax]
.label_626:
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [r14]
	lea	rsi, [rsi]
	cmp	rcx, 0x28
	nop	
	ja	.label_620
	mov	rax, rcx
	add	rax, qword ptr [r14 + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [r14], ecx
	lea	rdi, [rdi]
	jmp	.label_624
	nop	word ptr cs:[rax + rax]
.label_620:
	mov	rax, qword ptr [r14 + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [r14 + 8], rcx
.label_624:
	mov	r13, qword ptr [rax]
	mov	rbp, rbp
	mov	rdi, r13
	lea	rsi, [rsi]
	call	strlen
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rsi, r13
	mov	rsp, rsp
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	memcpy
	lea	rdi, [rdi]
	add	rbx, rbp
	dec	r12
	jne	.label_626
.label_618:
	lea	rsi, [rsi]
	mov	byte ptr [rbx], 0
.label_619:
	mov	rsp, rsp
	mov	rax, r15
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b280

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_627
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_628
	lea	rdi, [rdi]
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	mov	rsp, rsp
	cmp	rax, rdi
	nop	
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_628
	mov	rsp, rsp
	push	rax
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0xc
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	pop	rcx
	ret	
.label_627:
	mov	ecx, 1
.label_628:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b2f0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	rbx, rdi
	call	fileno
	mov	rbp, rbp
	test	eax, eax
	js	.label_629
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_631
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 1
	mov	rsp, rsp
	mov	edi, eax
	mov	rsp, rsp
	call	lseek
	lea	rsi, [rsi]
	cmp	rax, -1
	je	.label_629
.label_631:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_629
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	lea	rsi, [rsi]
	test	ebp, ebp
	je	.label_630
	call	__errno_location
	mov	dword ptr [rax], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_630:
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_629:
	lea	rsi, [rsi]
	mov	rdi, rbx
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	rbp
	nop	
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b3b0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xc8
	test	al, al
	mov	rbp, rbp
	je	.label_644
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x30], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm6
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_644:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	nop	
	lea	rax, [rsp + 0xd0]
	nop	
	mov	qword ptr [rsp + 0xb8], rax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xb4], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], 0x10
	nop	
	cmp	esi, 0xb
	mov	rsp, rsp
	ja	.label_632
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	lea	rsi, [rsi]
	jb	.label_638
	mov	rsp, rsp
	mov	eax, 0x514
	lea	rsi, [rsi]
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_639
	mov	rbp, rbp
	test	esi, esi
	jne	.label_632
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_635
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	mov	rbp, rbp
	lea	ecx, [rcx + 8]
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], ecx
	lea	rdi, [rdi]
	jmp	.label_642
.label_632:
	lea	eax, [rsi - 0x400]
	lea	rdi, [rdi]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_633
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_639
	lea	rdi, [rdi]
	mov	ecx, 0x102
	bt	ecx, eax
	mov	rbp, rbp
	jae	.label_643
.label_638:
	lea	rsi, [rsi]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_639:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_634
	mov	rax, rcx
	mov	rbp, rbp
	add	rax, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_637
.label_634:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_637:
	mov	edx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_643:
	nop	
	cmp	eax, 6
	jne	.label_633
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_641
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	lea	rsi, [rsi]
	jmp	.label_645
.label_633:
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_636
	mov	rbp, rbp
	mov	rax, rcx
	mov	rsp, rsp
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_640
.label_635:
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_642:
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	call	rpl_fcntl_DUPFD
	add	rsp, 0xc8
	lea	rsi, [rsi]
	ret	
.label_641:
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_645:
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xc8
	lea	rsi, [rsi]
	ret	
.label_636:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_640:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	rsp, rsp
	call	fcntl
	lea	rsi, [rsi]
	add	rsp, 0xc8
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b650

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	lea	rdi, [rdi]
	mov	ecx, esi
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	edx, ecx
	jmp	fcntl
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b670

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	mov	rsp, rsp
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	lea	rsi, [rsi]
	js	.label_650
	mov	esi, 0x406
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	lea	rsi, [rsi]
	test	ebx, ebx
	nop	
	jns	.label_647
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	nop	
	jne	.label_647
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_646
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_649
.label_647:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	mov	rbp, rbp
	jmp	.label_649
.label_650:
	mov	rbp, rbp
	mov	edi, ebp
	mov	rbp, rbp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_649:
	test	ebx, ebx
	js	.label_646
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_646
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_648
	or	ecx, 1
	nop	
	mov	esi, 2
	mov	rbp, rbp
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	mov	rsp, rsp
	call	fcntl
	mov	rbp, rbp
	cmp	eax, -1
	mov	rbp, rbp
	jne	.label_646
.label_648:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	lea	rdi, [rdi]
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_646:
	lea	rdi, [rdi]
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b780

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_651
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_651
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_651:
	mov	rsp, rsp
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b7b0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	jne	.label_652
	mov	rbp, rbp
	ret	
.label_652:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, 1
	lea	rdi, [rdi]
	jmp	rpl_fseeko
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b7d0

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	lea	rsi, [rsi]
	push	rbp
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	jne	.label_655
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_655
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_653
.label_655:
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, rbp
	mov	edx, r14d
	mov	rbp, rbp
	pop	rbx
	pop	r14
	pop	rbp
	nop	
	jmp	fseeko
.label_653:
	mov	rdi, rbx
	call	fileno
	mov	rbp, rbp
	mov	edi, eax
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	cmp	rcx, -1
	lea	rdi, [rdi]
	je	.label_654
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_654:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b880

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	r15
	mov	rsp, rsp
	push	r14
	lea	rsi, [rsi]
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	r12, rdx
	mov	r14, rsi
	test	rdi, rdi
	lea	rsi, [rsi]
	lea	rbx, [rsp + 4]
	cmovne	rbx, rdi
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	mbrtowc
	mov	r15, rax
	test	r12, r12
	mov	rsp, rsp
	je	.label_656
	nop	
	cmp	r15, -2
	jb	.label_656
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_656
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_656:
	mov	rbp, rbp
	mov	rax, r15
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b910

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	jmp	usage
	.section	.text
	.align	32
	#Procedure 0x40b920

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	nop	
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rsp, rsp
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	r13, rcx
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rbp
	lea	rsi, [rsi]
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_662
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], -1
	nop	
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_657:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	strncmp
	test	eax, eax
	jne	.label_659
	mov	rdi, r15
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	cmp	rax, rbx
	lea	rsi, [rsi]
	je	.label_658
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_663
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	test	rax, rax
	je	.label_661
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	lea	rdi, [rdi]
	add	rdi, rax
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, r13
	lea	rdi, [rdi]
	call	memcmp
	test	eax, eax
	je	.label_659
.label_661:
	mov	rsp, rsp
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_659
.label_663:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rbp
	nop	dword ptr [rax + rax]
.label_659:
	nop	
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	lea	rsi, [rsi]
	inc	rbp
	add	r14, r13
	test	r15, r15
	nop	
	jne	.label_657
	lea	rsi, [rsi]
	jmp	.label_660
.label_662:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], -1
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x10], rax
.label_660:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	mov	rsp, rsp
	cmove	rbp, qword ptr [rsp + 0x18]
.label_658:
	mov	rax, rbp
	add	rsp, 0x28
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40baa0

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	mov	rbp, rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r15, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	xor	edi, edi
	cmp	rdx, -1
	je	.label_664
	mov	esi, OFFSET FLAT:.str.1_6
	nop	
	jmp	.label_665
.label_664:
	nop	
	mov	esi, OFFSET FLAT:.str_8
.label_665:
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 8
	lea	rsi, [rsi]
	mov	rdx, r15
	call	quotearg_n_style
	nop	
	mov	r15, rax
	mov	edi, 1
	lea	rsi, [rsi]
	mov	rsi, r14
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r15
	nop	
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rsi, [rsi]
	jmp	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x40bb40

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	mov	rsp, rsp
	push	rbp
	push	r15
	nop	
	push	r14
	nop	
	push	r13
	push	r12
	push	rbx
	nop	
	push	rax
	mov	r14, rdx
	mov	rsp, rsp
	mov	r13, rsi
	mov	r15, rdi
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.2_3
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rsp, rsp
	mov	rbx, qword ptr [r15]
	lea	rsi, [rsi]
	test	rbx, rbx
	nop	
	je	.label_666
	xor	r12d, r12d
	lea	rdi, [rdi]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_667:
	test	rbp, rbp
	je	.label_669
	mov	rbp, rbp
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_668
.label_669:
	lea	rsi, [rsi]
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.3_2
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_670
	nop	
.label_668:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rsp, rsp
	mov	rcx, rax
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.4_2
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_670:
	mov	rsp, rsp
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	mov	rsp, rsp
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_667
.label_666:
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	jmp	putc_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bc90
	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:

	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	r14, r9
	lea	rsi, [rsi]
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rsp, rsp
	mov	rdx, r12
	mov	rcx, r15
	lea	rdi, [rdi]
	call	argmatch
	mov	rsp, rsp
	test	rax, rax
	jns	.label_671
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rdx, rax
	call	argmatch_invalid
	mov	rdi, r13
	mov	rsp, rsp
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, r15
	call	argmatch_valid
	mov	rsp, rsp
	call	r14
	lea	rsi, [rsi]
	mov	rax, -1
.label_671:
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	nop	
	pop	r14
	nop	
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bd30
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rbp, rbp
	push	rbx
	nop	
	mov	r14, rcx
	mov	r15, rdx
	lea	rdi, [rdi]
	mov	rbx, rsi
	nop	
	mov	r12, rdi
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	xor	eax, eax
	mov	rsp, rsp
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_672
	lea	rsi, [rsi]
	add	rbx, 8
	nop	dword ptr [rax]
.label_673:
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, r15
	nop	
	mov	rdx, r14
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	mov	rax, r13
	nop	
	je	.label_672
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	mov	rbp, rbp
	test	r13, r13
	mov	eax, 0
	jne	.label_673
.label_672:
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bdc0
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
	#Procedure 0x40bdf0
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
	#Procedure 0x40be10
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40be20
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
	#Procedure 0x40be30
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
	#Procedure 0x40be50
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
	#Procedure 0x40be60
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
	#Procedure 0x40be70
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
	#Procedure 0x40be80
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
	#Procedure 0x40be90
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
	#Procedure 0x40bec0
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
	#Procedure 0x40bee0

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
	#Procedure 0x40bef0
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
	#Procedure 0x40bf10
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
	#Procedure 0x40bf20
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
	#Procedure 0x40bf30

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	nop	
	push	rbx
	lea	rdi, [rdi]
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	mov	rsp, rsp
	test	rax, rax
	nop	
	je	.label_684
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_683
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_685
.label_683:
	nop	
	mov	esi, OFFSET FLAT:.str.1_7
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_684
.label_685:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_684:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40bf80

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	mov	rsp, rsp
	push	rax
	mov	rsp, rsp
	mov	edi, 0xe
	mov	rbp, rbp
	call	rpl_nl_langinfo
	test	rax, rax
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str_0
	nop	
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_8
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_686
	nop	
	mov	rax, rcx
.label_686:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bfc0

	.globl xsum
	.type xsum, @function
xsum:
	add	rsi, rdi
	cmp	rsi, rdi
	lea	rsi, [rsi]
	mov	rax, -1
	cmovae	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bfe0
	.globl xsum3
	.type xsum3, @function
xsum3:

	nop
	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	call	xsum
	nop	
	mov	rdi, rax
	mov	rsi, rbx
	mov	rbp, rbp
	pop	rbx
	jmp	xsum
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c000
	.globl xsum4
	.type xsum4, @function
xsum4:

	mov	rsp, rsp
	push	r14
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rbp, rbp
	mov	r14, rcx
	mov	rsp, rsp
	mov	rbx, rdx
	call	xsum
	nop	
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rbx
	call	xsum
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, r14
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	xsum
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c040
	.globl xmax
	.type xmax, @function
xmax:

	lea	rsi, [rsi]
	cmp	rdi, rsi
	lea	rdi, [rdi]
	cmovae	rsi, rdi
	mov	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c060

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	lea	rsi, [rsi]
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
	#Procedure 0x40c130

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
