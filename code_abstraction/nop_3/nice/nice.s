	.section	.text
	.align	32
	#Procedure 0x401460

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
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, 0xffffffec
	mov	ecx, 0x13
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
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
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.7
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29
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
	mov	esi, OFFSET FLAT:.str.31
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.7
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.34
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.7
	mov	ecx, OFFSET FLAT:.str.35
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_9:
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401670

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	ebx, edi
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
	mov	dword ptr [dword ptr [rip + exit_failure]],  0x7d
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r12d, 0xa
	mov	ebp, 1
	cmp	ebx, 2
	jl	.label_19
	xor	r14d, r14d
	mov	r13d, 2
.label_25:
	movsxd	rax, ebp
	mov	rax, qword ptr [r15 + rax*8]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_16
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x2b
	sete	dl
	movzx	edx, dl
	inc	rdx
	cmp	ecx, 0x2d
	cmove	rdx, r13
	movsx	ecx, byte ptr [rax + rdx]
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_16
	inc	rax
	inc	ebp
	mov	r14, rax
	jmp	.label_13
	nop	dword ptr [rax]
.label_16:
	dec	ebp
	mov	edi, ebx
	sub	edi, ebp
	movsxd	rbp, ebp
	lea	rsi, [r15 + rbp*8]
	mov	rax, qword ptr [r15]
	mov	qword ptr [r15 + rbp*8], rax
	mov	dword ptr [dword ptr [rip + optind]],  0
	mov	edx, OFFSET FLAT:.str.11
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	call	getopt_long
	add	ebp,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, 0x6d
	jle	.label_20
	cmp	eax, 0x6e
	jne	.label_21
	mov	r14,  qword ptr [word ptr [rip + optarg]]
.label_13:
	cmp	ebp, ebx
	jl	.label_25
	jmp	.label_26
.label_19:
	xor	eax, eax
	jmp	.label_27
.label_20:
	cmp	eax, -1
	jne	.label_28
.label_26:
	test	r14, r14
	je	.label_11
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_0
	mov	rdi, r14
	call	xstrtol
	cmp	eax, 2
	jae	.label_14
	mov	rax, qword ptr [rsp]
	cmp	rax, 0x28
	mov	ecx, 0x27
	cmovl	rcx, rax
	cmp	rax, 0x27
	mov	edx, 0x27
	cmovl	edx, eax
	cmp	rcx, -0x27
	mov	r12d, 0xffffffd9
	cmovg	r12d, edx
	mov	al, 1
	jmp	.label_27
.label_11:
	xor	eax, eax
.label_27:
	cmp	ebp, ebx
	jne	.label_22
	test	al, al
	jne	.label_23
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	xor	r13d, r13d
	xor	edi, edi
	xor	esi, esi
	call	getpriority
	mov	ecx, eax
	cmp	ecx, -1
	jne	.label_10
	mov	ebx, dword ptr [rbx]
	test	ebx, ebx
	jne	.label_15
.label_10:
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.17_0
	xor	eax, eax
	mov	edx, ecx
	call	__printf_chk
	jmp	.label_17
.label_22:
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	edi, edi
	xor	esi, esi
	call	getpriority
	cmp	eax, -1
	jne	.label_18
	mov	ebx, dword ptr [r14]
	test	ebx, ebx
	jne	.label_15
.label_18:
	add	eax, r12d
	xor	edi, edi
	xor	esi, esi
	mov	edx, eax
	call	setpriority
	test	eax, eax
	je	.label_24
	mov	r12d, dword ptr [r14]
	cmp	r12d, 1
	mov	r13d, 0x7d
	mov	eax, 0
	mov	ebx, 0x7d
	cmove	ebx, eax
	cmp	r12d, 0xd
	cmove	ebx, eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	edi, ebx
	mov	esi, r12d
	mov	rdx, rcx
	call	error
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	test	byte ptr [rax], 0x20
	jne	.label_17
.label_24:
	movsxd	rbp, ebp
	lea	rsi, [r15 + rbp*8]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	execvp
	mov	ebx, dword ptr [r14]
	cmp	ebx, 2
	sete	al
	movzx	r13d, al
	or	r13d, 0x7e
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_17:
	mov	eax, r13d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_28:
	cmp	eax, 0xffffff7d
	je	.label_12
	cmp	eax, 0xffffff7e
	jne	.label_21
	xor	edi, edi
	call	usage
.label_23:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 0x7d
	call	usage
.label_15:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_14:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	mov	edi, 0x7d
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_12:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.13
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_21:
	mov	edi, 0x7d
	call	usage
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4019e0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019f0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a00

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_32
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_29
	cmp	dword ptr [rbp], 0x20
	jne	.label_29
.label_32:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_31
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_29:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_30
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_31:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_30:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_0
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ac0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_33
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_34
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_34
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_35
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_35:
	mov	rbx, r14
.label_34:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_33:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_3
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b70
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
	#Procedure 0x401bb0
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
	#Procedure 0x401bc0
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
	#Procedure 0x401bd0
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
	#Procedure 0x401c10
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
	#Procedure 0x401c30
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_36
	test	rdx, rdx
	je	.label_36
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_36:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c60
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
	#Procedure 0x401ce0

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
.label_80:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_142
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_145]]
.label_336:
	mov	edi, OFFSET FLAT:.str.11_0
	mov	esi, r15d
	mov	r14, r10
	mov	bl, r8b
	call	gettext_quote
	mov	qword ptr [rsp + 0xa0], rax
	mov	edi, OFFSET FLAT:.str.12
	mov	esi, r15d
	call	gettext_quote
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x98], rax
.label_337:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_38
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_38
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_64:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_55
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_55:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_64
.label_38:
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
	jmp	.label_78
.label_329:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_78
.label_332:
	mov	al, 1
.label_330:
	mov	r12b, 1
.label_333:
	test	r12b, 1
	mov	cl, 1
	je	.label_98
	mov	cl, al
.label_98:
	mov	al, cl
.label_331:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_102
	test	r10, r10
	je	.label_105
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_74
.label_102:
	xor	ecx, ecx
	jmp	.label_74
.label_334:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_113
	test	r10, r10
	je	.label_121
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_123
.label_335:
	mov	dil, 1
	mov	r9d, 5
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_78
.label_105:
	mov	ecx, 1
.label_74:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_78
.label_113:
	xor	eax, eax
	jmp	.label_123
.label_121:
	mov	eax, 1
.label_123:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_78:
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
	jmp	.label_154
.label_97:
	inc	rdi
.label_154:
	cmp	rbp, -1
	je	.label_70
	cmp	rdi, rbp
	jne	.label_73
	jmp	.label_75
	nop	word ptr cs:[rax + rax]
.label_70:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_79
.label_73:
	test	r12b, r12b
	je	.label_83
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_85
	cmp	rbp, -1
	jne	.label_85
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
.label_85:
	cmp	rbx, rbp
	jbe	.label_109
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_112
	nop	word ptr [rax + rax]
.label_83:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_112
.label_109:
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
	jne	.label_137
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_112
	jmp	.label_52
.label_137:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_112:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_126
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_158]]
.label_348:
	test	rdi, rdi
	jne	.label_37
	jmp	.label_40
.label_352:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_41
	test	rdi, rdi
	jne	.label_45
	cmp	rbp, 1
	je	.label_40
	xor	r13d, r13d
	jmp	.label_44
.label_341:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_50
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_52
	cmp	r9d, 2
	jne	.label_57
	mov	al, r14b
	and	al, 1
	jne	.label_59
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_63
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_63:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_119
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_119:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_43
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_43:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_68
.label_342:
	mov	bl, 0x62
	jmp	.label_94
.label_343:
	mov	cl, 0x74
	jmp	.label_82
.label_344:
	mov	bl, 0x76
	jmp	.label_94
.label_345:
	mov	bl, 0x66
	jmp	.label_94
.label_346:
	mov	cl, 0x72
	jmp	.label_82
.label_349:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_103
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_106
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
	jae	.label_76
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_76:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_133
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_133:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_139
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_139:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_103:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_44
.label_350:
	cmp	r9d, 5
	je	.label_146
	cmp	r9d, 2
	jne	.label_37
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_37
	jmp	.label_150
.label_351:
	cmp	r9d, 2
	jne	.label_153
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_155
	jmp	.label_159
.label_126:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_160
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
.label_62:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_51
	test	cl, cl
	je	.label_51
	xor	eax, eax
	jmp	.label_44
.label_41:
	test	rdi, rdi
	jne	.label_67
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_67
.label_40:
	mov	dl, 1
.label_347:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_72
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_44
.label_50:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_97
	jmp	.label_37
.label_153:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_82
.label_155:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_86
.label_82:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_89
.label_94:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_44
	jmp	.label_99
.label_160:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_100
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_100:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_39:
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
	je	.label_132
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_135
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_140
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_141
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_151:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_148
	bt	rsi, rdx
	jb	.label_149
.label_148:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_151
.label_141:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_138
	xor	r13d, r13d
.label_138:
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
	je	.label_39
	jmp	.label_62
.label_67:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_44
.label_146:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_37
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_37
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_37
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_60
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_65
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_110
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_117
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_117:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_81
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_81:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_92
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_92:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_136
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_136:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_44
.label_37:
	xor	eax, eax
	xor	r13d, r13d
.label_44:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_116
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_120
	jmp	.label_88
	nop	word ptr [rax + rax]
.label_116:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_88
.label_120:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_127
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_134
	nop	word ptr cs:[rax + rax]
.label_88:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_134:
	mov	bl, r15b
	je	.label_86
	jmp	.label_99
.label_127:
	mov	bl, r15b
.label_99:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_52
	cmp	r9d, 2
	jne	.label_144
	mov	al, r14b
	and	al, 1
	jne	.label_144
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_48
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_48:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_143
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_143:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_157
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_157:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_144:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_42
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_42:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_93
.label_45:
	xor	r13d, r13d
	jmp	.label_44
.label_51:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_54
	nop	word ptr [rax + rax]
.label_47:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_54:
	test	cl, cl
	je	.label_66
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_53
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_71
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_71:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_53
	nop	word ptr [rax + rax]
.label_66:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_52
	cmp	r9d, 2
	jne	.label_46
	mov	al, r14b
	and	al, 1
	jne	.label_46
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_118
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_118:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_152
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_152:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_111
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_111:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_46:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_125
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_125:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_131
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_131:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_56
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_56:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_53:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_86
	test	r14b, 1
	je	.label_129
	mov	bl, al
	and	bl, 1
	jne	.label_129
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_114
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_114:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_161
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_161:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_129:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_47
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_47
	nop	dword ptr [rax]
.label_86:
	test	r14b, 1
	je	.label_61
	and	al, 1
	jne	.label_61
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_69
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_69:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_87
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_87:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_61:
	mov	bl, r15b
.label_93:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_84
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_84:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_97
.label_57:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_68
.label_59:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_68:
	cmp	rcx, r10
	jae	.label_104
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_104:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_108
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_96
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_122
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_124
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_124:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_130
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_130:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_44
.label_108:
	xor	r13d, r13d
	jmp	.label_44
.label_96:
	xor	r13d, r13d
	jmp	.label_44
.label_122:
	xor	r13d, r13d
	jmp	.label_44
.label_135:
	xor	r13d, r13d
.label_132:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_62
.label_140:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_147
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_128:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_95
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_128
	xor	r13d, r13d
	jmp	.label_62
.label_147:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_62
.label_95:
	xor	r13d, r13d
	jmp	.label_62
.label_60:
	xor	r13d, r13d
	jmp	.label_44
.label_65:
	xor	r13d, r13d
	jmp	.label_44
	nop	dword ptr [rax]
.label_75:
	mov	r13, rdi
.label_79:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_49
	or	al, dl
	je	.label_91
.label_49:
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
	je	.label_58
	or	al, dl
	jne	.label_58
	test	r8b, 1
	jne	.label_77
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_58
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_80
.label_58:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_90
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_90
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_90
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_107:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_101
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_101:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_107
.label_90:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_115
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_115
.label_72:
	mov	r9d, 2
	jmp	.label_52
.label_149:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_52
.label_91:
	mov	rbp, r13
	jmp	.label_52
.label_89:
	mov	r9d, 2
.label_52:
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
.label_156:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_115:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_77:
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
	jmp	.label_156
.label_106:
	mov	r9d, 2
	jmp	.label_52
.label_159:
	mov	r9d, 2
	jmp	.label_52
.label_150:
	mov	r9d, 2
	jmp	.label_52
.label_110:
	mov	r9d, 5
	jmp	.label_52
.label_142:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402e70
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
	#Procedure 0x402f40
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
	je	.label_162
	mov	qword ptr [rax], rbx
.label_162:
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
	#Procedure 0x403040
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_163
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_166:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_166
.label_163:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_167
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_164]], OFFSET FLAT:slot0
.label_167:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_165
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_165:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030e0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x4030f0

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
	js	.label_168
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_173
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_169
.label_173:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_172
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
	jne	.label_171
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_171:
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
.label_169:
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
	ja	.label_174
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_170
	mov	rdi, rbx
	call	free
.label_170:
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
.label_174:
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
.label_168:
	call	abort
.label_172:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4032c0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4032d0
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
	#Procedure 0x4032f0
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
	#Procedure 0x403310
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
	je	.label_175
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
.label_175:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x403380
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
	je	.label_176
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
.label_176:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033f0
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
	je	.label_177
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
.label_177:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403460
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
	je	.label_178
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
.label_178:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034d0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_179]]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_180]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_181]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
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
	#Procedure 0x403540
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx,  qword ptr [word ptr [rip + label_179]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_180]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_181]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
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
	#Procedure 0x4035b0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_179]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_180]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_181]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
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
	#Procedure 0x403610
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_179]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_180]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_181]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
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
	#Procedure 0x403670
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
	je	.label_182
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
.label_182:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x403720
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_179]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_180]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_181]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_183
	test	rdx, rdx
	je	.label_183
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_183:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x403790
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_179]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_180]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_181]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_184
	test	rdx, rdx
	je	.label_184
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_184:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403800
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_179]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_180]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_181]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_185
	test	rsi, rsi
	je	.label_185
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_185:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403870
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_179]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_180]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_181]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_186
	test	rsi, rsi
	je	.label_186
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
.label_186:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4038e0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4038f0
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
	#Procedure 0x403910
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403930

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
	#Procedure 0x403950

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
	jne	.label_189
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_190
	cmp	ecx, 0x55
	jne	.label_187
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_187
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_187
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_187
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_187
	cmp	byte ptr [rax + 5], 0
	jne	.label_187
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_189
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_189
.label_190:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_187
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_187
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_187
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_187
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_187
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_187
	cmp	byte ptr [rax + 7], 0
	je	.label_188
.label_187:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12
	cmove	rax, rcx
.label_189:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_188:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_189
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_189
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a40

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
	je	.label_191
	mov	edx, OFFSET FLAT:.str_4
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_200
.label_191:
	mov	edx, OFFSET FLAT:.str.1_2
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_200:
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
	ja	.label_195
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_196]]
.label_399:
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
.label_195:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_193
.label_400:
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
.label_401:
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
.label_402:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_194
.label_403:
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
	jmp	.label_192
.label_404:
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
	jmp	.label_199
.label_405:
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
.label_199:
	mov	qword ptr [rsp + 0x10], rdi
.label_192:
	mov	qword ptr [rsp + 8], rsi
.label_194:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_197
.label_407:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_0
.label_193:
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
	jmp	.label_198
.label_406:
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
.label_198:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_197:
	call	__fprintf_chk
.label_398:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d30
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_201:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_201
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d60
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_204:
	cmp	r10d, 0x28
	ja	.label_202
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_203
	nop	word ptr cs:[rax + rax]
.label_202:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_203:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_205
	inc	r9
	cmp	r9, 0xa
	jb	.label_204
.label_205:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x403dc0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x128
	test	al, al
	je	.label_206
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_206:
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
.label_208:
	cmp	r8d, 0x28
	ja	.label_207
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_210
	nop	
.label_207:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_210:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_209
	inc	r9
	cmp	r9, 0xa
	jb	.label_208
.label_209:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ec0
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
	mov	esi, OFFSET FLAT:.str.19
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
	#Procedure 0x403f40
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_211
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_212
	test	rax, rax
	je	.label_211
.label_212:
	pop	rbx
	ret	
.label_211:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f80

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_213
	test	rax, rax
	je	.label_214
.label_213:
	pop	rbx
	ret	
.label_214:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403fa0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_215
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_216
	test	rbx, rbx
	jne	.label_216
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_216:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_217
	test	rax, rax
	je	.label_215
.label_217:
	pop	rbx
	ret	
.label_215:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ff0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_218
	test	rbx, rbx
	jne	.label_218
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_218:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_220
	test	rax, rax
	je	.label_219
.label_220:
	pop	rbx
	ret	
.label_219:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404020
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_221
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_225
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_222
.label_221:
	test	rcx, rcx
	jne	.label_226
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_226:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_223
.label_222:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_224
	test	rbx, rbx
	jne	.label_224
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_224:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_227
	test	rax, rax
	je	.label_225
.label_227:
	pop	rbx
	ret	
.label_225:
	call	xalloc_die
.label_223:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040c0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_228
	test	rax, rax
	je	.label_229
.label_228:
	pop	rbx
	ret	
.label_229:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040e0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_230
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_233
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_234
	call	free
	xor	eax, eax
	jmp	.label_231
.label_230:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_232
	mov	qword ptr [rsi], rbx
.label_234:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_231
	test	rax, rax
	je	.label_232
.label_231:
	pop	rbx
	ret	
.label_232:
	call	xalloc_die
.label_233:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404150
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
	je	.label_236
	test	r14, r14
	je	.label_235
.label_236:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_235:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404190
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_237
	call	rpl_calloc
	test	rax, rax
	je	.label_237
	pop	rcx
	ret	
.label_237:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4041c0

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
	je	.label_238
	test	r15, r15
	je	.label_239
.label_238:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_239:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404200
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
	je	.label_241
	test	r15, r15
	je	.label_240
.label_241:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_240:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404250

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_3
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
	#Procedure 0x404280

	.globl xstrtol
	.type xstrtol, @function
xstrtol:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	ebp, edx
	mov	r13, rdi
	cmp	ebp, 0x25
	jae	.label_275
	test	rsi, rsi
	lea	r15, [rsp + 0x20]
	cmovne	r15, rsi
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	mov	rdi, r13
	mov	rsi, r15
	mov	edx, ebp
	call	strtol
	mov	r12, rax
	mov	rcx, qword ptr [r15]
	cmp	rcx, r13
	je	.label_288
	mov	eax, dword ptr [rbx]
	xor	ebp, ebp
	test	eax, eax
	je	.label_291
	mov	ebp, 4
	cmp	eax, 0x22
	jne	.label_245
	mov	ebp, 1
.label_291:
	test	r14, r14
	je	.label_267
	mov	edx, ebp
	jmp	.label_298
.label_288:
	mov	ebp, 4
	test	r14, r14
	je	.label_245
	mov	rbx, rcx
	movsx	esi, byte ptr [r13]
	test	esi, esi
	je	.label_245
	mov	rdi, r14
	call	strchr
	xor	edx, edx
	mov	r12d, 1
	test	rax, rax
	mov	rcx, rbx
	je	.label_245
.label_298:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_255
	mov	dword ptr [rsp + 0xc], edx
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_254
	mov	r8d, 1
	mov	r11d, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_269
	movabs	rcx, 0x814400308945
	bt	rcx, rax
	jae	.label_269
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	r8d, 1
	mov	r11d, 0x400
	test	rax, rax
	je	.label_269
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	r8d, 1
	mov	r11d, 0x400
	cmp	eax, 0x42
	je	.label_281
	cmp	eax, 0x44
	je	.label_281
	cmp	eax, 0x69
	jne	.label_269
	mov	rax, qword ptr [rsp + 0x10]
	movzx	eax, byte ptr [rax + 2]
	cmp	eax, 0x42
	mov	r8d, 3
	je	.label_290
	mov	r8d, 1
.label_290:
	mov	r11d, 0x400
	jmp	.label_269
.label_267:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], r12
	jmp	.label_245
.label_255:
	mov	r13, r12
	mov	rax, qword ptr [rsp + 0x18]
	jmp	.label_242
.label_281:
	mov	r8d, 2
	mov	r11d, 0x3e8
.label_269:
	movabs	r10, 0x7fffffffffffffff
	cmp	r13d, 0x59
	jg	.label_247
	lea	eax, [r13 - 0x42]
	cmp	eax, 0xe
	ja	.label_251
	jmp	qword ptr [word ptr [+ (rax * 8) + label_253]]
.label_359:
	movabs	rax, 0xffe0000000000000
	cmp	r12, rax
	jl	.label_256
	mov	r13, r12
	shl	r13, 0xa
	movabs	rax, 0x1fffffffffffff
	jmp	.label_261
.label_247:
	cmp	r13d, 0x73
	jg	.label_262
	lea	eax, [r13 - 0x62]
	cmp	eax, 0xb
	ja	.label_272
	xor	ebx, ebx
	mov	r13, r12
	jmp	qword ptr [word ptr [+ (rax * 8) + label_274]]
.label_395:
	movabs	rax, 0xffc0000000000000
	cmp	r12, rax
	jl	.label_256
	mov	r13, r12
	shl	r13, 9
	movabs	rax, 0x3fffffffffffff
	jmp	.label_261
.label_251:
	cmp	r13d, 0x54
	je	.label_282
	cmp	r13d, 0x59
	jne	.label_254
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	mov	r9, rax
	cmp	r12, r9
	mov	ecx, 1
	mov	rbx, r13
	mov	edi, 1
	jl	.label_287
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbx, r12
	imul	rbx, r11
	cmp	rax, r12
	setl	al
	cmovl	rbx, r10
	movzx	edi, al
.label_287:
	cmp	rbx, r9
	mov	rsi, r13
	jl	.label_300
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbx
	imul	rsi, r11
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_300:
	or	ecx, edi
	cmp	rsi, r9
	mov	ebx, 1
	mov	rbp, r13
	mov	edi, 1
	jl	.label_250
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	movzx	edi, al
.label_250:
	or	edi, ecx
	cmp	rbp, r9
	mov	rsi, r13
	jl	.label_264
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbp
	imul	rsi, r11
	cmp	rax, rbp
	setl	al
	cmovl	rsi, r10
	movzx	ebx, al
.label_264:
	or	ebx, edi
	cmp	rsi, r9
	mov	edi, 1
	mov	rbp, r13
	mov	ecx, 1
	jl	.label_292
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	movzx	ecx, al
.label_292:
	or	ecx, ebx
	cmp	rbp, r9
	mov	rsi, r13
	jl	.label_280
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbp
	imul	rsi, r11
	cmp	rax, rbp
	setl	al
	cmovl	rsi, r10
	movzx	edi, al
.label_280:
	or	edi, ecx
	cmp	rsi, r9
	mov	ebx, 1
	mov	rbp, r13
	mov	ecx, 1
	jl	.label_293
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	movzx	ecx, al
.label_293:
	or	ecx, edi
	cmp	rbp, r9
	jl	.label_299
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rbp
	cmp	rax, rbp
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
.label_299:
	or	ebx, ecx
	jmp	.label_244
.label_262:
	cmp	r13d, 0x74
	je	.label_282
	cmp	r13d, 0x77
	jne	.label_254
	movabs	rax, 0xc000000000000000
	cmp	r12, rax
	jge	.label_258
.label_256:
	inc	r10
	mov	ebx, 1
	mov	r13, r10
	jmp	.label_244
.label_361:
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	mov	rdi, rax
	cmp	r12, rdi
	mov	ecx, 1
	mov	rbp, r13
	mov	ebx, 1
	jl	.label_268
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbp, r12
	imul	rbp, r11
	cmp	rax, r12
	setl	al
	cmovl	rbp, r10
	movzx	ebx, al
.label_268:
	cmp	rbp, rdi
	mov	rsi, r13
	jl	.label_278
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbp
	imul	rsi, r11
	cmp	rax, rbp
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_278:
	or	ecx, ebx
	cmp	rsi, rdi
	mov	ebx, 1
	jl	.label_286
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
.label_286:
	or	ebx, ecx
	jmp	.label_244
.label_362:
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	cmp	r12, rax
	mov	ebx, 1
	jl	.label_244
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, r12
	cmp	rax, r12
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
	jmp	.label_244
.label_363:
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	mov	rdi, rax
	cmp	r12, rdi
	mov	ebx, 1
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_252
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, r12
	imul	rsi, r11
	cmp	rax, r12
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_252:
	cmp	rsi, rdi
	jl	.label_271
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
.label_271:
	or	ebx, ecx
	jmp	.label_244
.label_282:
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	mov	r9, rax
	cmp	r12, r9
	mov	ecx, 1
	mov	rbx, r13
	mov	edi, 1
	jl	.label_276
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbx, r12
	imul	rbx, r11
	cmp	rax, r12
	setl	al
	cmovl	rbx, r10
	movzx	edi, al
.label_276:
	cmp	rbx, r9
	mov	rsi, r13
	jl	.label_289
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbx
	imul	rsi, r11
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_289:
	or	ecx, edi
	cmp	rsi, r9
	mov	ebx, 1
	mov	rbp, r13
	mov	edi, 1
	jl	.label_296
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	movzx	edi, al
.label_296:
	or	edi, ecx
	cmp	rbp, r9
	jl	.label_249
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rbp
	cmp	rax, rbp
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
.label_249:
	or	ebx, edi
	jmp	.label_244
.label_272:
	cmp	r13d, 0x5a
	jne	.label_254
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	mov	r9, rax
	cmp	r12, r9
	mov	ecx, 1
	mov	rbx, r13
	mov	edi, 1
	jl	.label_265
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbx, r12
	imul	rbx, r11
	cmp	rax, r12
	setl	al
	cmovl	rbx, r10
	movzx	edi, al
.label_265:
	cmp	rbx, r9
	mov	rsi, r13
	jl	.label_277
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbx
	imul	rsi, r11
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_277:
	or	ecx, edi
	cmp	rsi, r9
	mov	ebx, 1
	mov	rbp, r13
	mov	edi, 1
	jl	.label_283
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	movzx	edi, al
.label_283:
	or	edi, ecx
	cmp	rbp, r9
	mov	rsi, r13
	jl	.label_295
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbp
	imul	rsi, r11
	cmp	rax, rbp
	setl	al
	cmovl	rsi, r10
	movzx	ebx, al
.label_295:
	or	ebx, edi
	cmp	rsi, r9
	mov	edi, 1
	mov	rbp, r13
	mov	ecx, 1
	jl	.label_260
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	movzx	ecx, al
.label_260:
	or	ecx, ebx
	cmp	rbp, r9
	mov	rsi, r13
	jl	.label_257
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbp
	imul	rsi, r11
	cmp	rax, rbp
	setl	al
	cmovl	rsi, r10
	movzx	edi, al
.label_257:
	or	edi, ecx
	cmp	rsi, r9
	mov	ebx, 1
	jl	.label_246
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
.label_246:
	or	ebx, edi
	jmp	.label_244
.label_254:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], r12
	mov	eax, dword ptr [rsp + 0xc]
	or	eax, 2
	mov	ebp, eax
	jmp	.label_245
.label_360:
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	mov	r9, rax
	cmp	r12, r9
	mov	ebx, 1
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_279
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, r12
	imul	rsi, r11
	cmp	rax, r12
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_279:
	cmp	rsi, r9
	mov	rdi, r13
	jl	.label_294
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rdi, rsi
	imul	rdi, r11
	cmp	rax, rsi
	setl	al
	cmovl	rdi, r10
	movzx	ebx, al
.label_294:
	or	ebx, ecx
	cmp	rdi, r9
	mov	r14d, 1
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_243
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rdi
	imul	rsi, r11
	cmp	rax, rdi
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_243:
	or	ecx, ebx
	cmp	rsi, r9
	mov	rdi, r13
	jl	.label_266
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rdi, rsi
	imul	rdi, r11
	cmp	rax, rsi
	setl	al
	cmovl	rdi, r10
	movzx	r14d, al
.label_266:
	or	r14d, ecx
	cmp	rdi, r9
	mov	ebx, 1
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_259
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rdi
	imul	rsi, r11
	cmp	rax, rdi
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_259:
	or	ecx, r14d
	cmp	rsi, r9
	jl	.label_270
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
.label_270:
	or	ebx, ecx
	jmp	.label_244
.label_364:
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	mov	r9, rax
	cmp	r12, r9
	mov	ecx, 1
	mov	rbx, r13
	mov	edi, 1
	jl	.label_284
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbx, r12
	imul	rbx, r11
	cmp	rax, r12
	setl	al
	cmovl	rbx, r10
	movzx	edi, al
.label_284:
	cmp	rbx, r9
	mov	rsi, r13
	jl	.label_297
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbx
	imul	rsi, r11
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_297:
	or	ecx, edi
	cmp	rsi, r9
	mov	r14d, 1
	mov	rdi, r13
	mov	ebx, 1
	jl	.label_248
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rdi, rsi
	imul	rdi, r11
	cmp	rax, rsi
	setl	al
	cmovl	rdi, r10
	movzx	ebx, al
.label_248:
	or	ebx, ecx
	cmp	rdi, r9
	mov	rcx, r13
	jl	.label_263
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rcx, rdi
	imul	rcx, r11
	cmp	rax, rdi
	setl	al
	cmovl	rcx, r10
	movzx	r14d, al
.label_263:
	or	r14d, ebx
	cmp	rcx, r9
	mov	ebx, 1
	jl	.label_273
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rcx
	cmp	rax, rcx
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
.label_273:
	or	ebx, r14d
	jmp	.label_244
.label_258:
	lea	r13, [r12 + r12]
	movabs	rax, 0x3fffffffffffffff
.label_261:
	cmp	r12, rax
	setg	al
	cmovg	r13, r10
	movzx	ebx, al
.label_244:
	or	ebx, dword ptr [rsp + 0xc]
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rax, [rcx + r8]
	mov	qword ptr [r15], rax
	cmp	byte ptr [rcx + r8], 0
	je	.label_285
	or	ebx, 2
.label_285:
	mov	rax, qword ptr [rsp + 0x18]
	mov	edx, ebx
.label_242:
	mov	qword ptr [rax], r13
	mov	ebp, edx
.label_245:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_275:
	mov	edi, OFFSET FLAT:.str_5
	mov	esi, OFFSET FLAT:.str.1_4
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtol
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x404c10

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_301
	test	rsi, rsi
	mov	ecx, 1
	je	.label_302
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_302
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_301:
	mov	ecx, 1
.label_302:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c60

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
	je	.label_303
	cmp	r15, -2
	jb	.label_303
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_303
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_303:
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
	#Procedure 0x404cc0

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
	jne	.label_305
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_304
	test	cl, cl
	jne	.label_304
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_304
.label_305:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_304
	call	__errno_location
	mov	dword ptr [rax], 0
.label_304:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404d20

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_307
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_308
	cmp	byte ptr [rax + 1], 0
	je	.label_306
.label_308:
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_307
.label_306:
	xor	ebx, ebx
.label_307:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x404d60

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
	je	.label_309
	mov	rax, rcx
.label_309:
	add	rsp, 8
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404d90

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_310
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_312
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_310
.label_312:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_310
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_311
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_311:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_310:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x404e10

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_313
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_313
	test	byte ptr [rbx + 1], 1
	je	.label_313
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_313:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404e50

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
	jne	.label_314
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_314
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_315
.label_314:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_315:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_316
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_316:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	32
	#Procedure 0x404ec0

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