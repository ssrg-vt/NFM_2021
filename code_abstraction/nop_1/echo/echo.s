	.section	.text
	.align	16
	#Procedure 0x401310

	.globl usage
	.type usage, @function
usage:
	push	rbx
	mov	ebx, edi
	test	ebx, ebx
	jne	.label_7
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
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
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.11
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	call	emit_ancillary_info
	mov	edi, ebx
	call	exit
.label_7:
	mov	edi, OFFSET FLAT:.str
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 0x28
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.usage
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401480

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.22
	nop	
.label_10:
	mov	edi, OFFSET FLAT:.str.11
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
	mov	ebx, OFFSET FLAT:.str.11
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
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
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.34
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.11
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.11
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.36
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
	.align	16
	#Procedure 0x4015a0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rsi
	mov	r15d, edi
	mov	edi, OFFSET FLAT:.str.12
	call	getenv
	mov	r14, rax
	mov	bl, 1
	test	r14, r14
	je	.label_37
	cmp	r15d, 2
	jl	.label_41
	mov	rcx, qword ptr [r12 + 8]
	movzx	edx, byte ptr [rcx]
	mov	eax, 0x2d
	sub	eax, edx
	jne	.label_43
	movzx	edx, byte ptr [rcx + 1]
	mov	eax, 0x6e
	sub	eax, edx
	jne	.label_43
	movzx	eax, byte ptr [rcx + 2]
	neg	eax
.label_43:
	test	eax, eax
	sete	bl
	jmp	.label_37
.label_41:
	xor	ebx, ebx
.label_37:
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.15
	mov	esi, OFFSET FLAT:.str.16
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.15
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	cmp	r15d, 2
	jne	.label_19
	test	bl, bl
	je	.label_19
	mov	rbp, qword ptr [r12 + 8]
	mov	esi, OFFSET FLAT:.str.17_0
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_21
	mov	esi, OFFSET FLAT:.str.18_0
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_25
.label_19:
	lea	ecx, [r15 - 1]
	add	r12, 8
	cmp	r15d, 1
	setg	dl
	and	dl, bl
	mov	r8b, 1
	xor	eax, eax
	movzx	edx, dl
	cmp	edx, 1
	jne	.label_36
	movabs	rdx, 0x20100000001
.label_15:
	mov	rdi, qword ptr [r12]
	movzx	esi, byte ptr [rdi]
	cmp	esi, 0x2d
	jne	.label_33
	mov	bl, byte ptr [rdi + 1]
	test	bl, bl
	je	.label_35
	lea	rsi, [rdi + 1]
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_44:
	movsx	ebx, bl
	add	ebx, -0x45
	cmp	ebx, 0x29
	ja	.label_38
	bt	rdx, rbx
	jae	.label_46
	mov	bl, byte ptr [rdi + rbp + 2]
	inc	rbp
	test	bl, bl
	jne	.label_44
	test	rbp, rbp
	jne	.label_13
	jmp	.label_47
.label_34:
	mov	al, 1
.label_13:
	movsx	edi, byte ptr [rsi]
	test	edi, edi
	je	.label_49
	inc	rsi
	cmp	edi, 0x6e
	je	.label_50
	cmp	edi, 0x65
	je	.label_34
	cmp	edi, 0x45
	jne	.label_13
	xor	eax, eax
	jmp	.label_13
.label_50:
	xor	r8d, r8d
	jmp	.label_13
	nop	word ptr cs:[rax + rax]
.label_49:
	lea	r13d, [rcx - 1]
	add	r12, 8
	cmp	ecx, 1
	mov	ecx, r13d
	jg	.label_15
	jmp	.label_18
.label_36:
	mov	r13d, ecx
	jmp	.label_18
.label_25:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.20
	mov	r9d, OFFSET FLAT:.str.21
	xor	eax, eax
	call	version_etc
	jmp	.label_27
.label_38:
	mov	r13d, ecx
	jmp	.label_18
.label_46:
	mov	r13d, ecx
.label_18:
	mov	dword ptr [rsp + 0x14], r8d
	test	r14, r14
	jne	.label_30
	and	al, 1
	jne	.label_30
	test	r13d, r13d
	jle	.label_31
	mov	rdi, qword ptr [r12]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	cmp	r13d, 2
	jl	.label_31
	add	r12, 8
.label_42:
	dec	r13d
	mov	edi, 0x20
	call	putchar_unlocked
	mov	rdi, qword ptr [r12]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	add	r12, 8
	cmp	r13d, 1
	jg	.label_42
	jmp	.label_31
.label_30:
	test	r13d, r13d
	jg	.label_16
	jmp	.label_31
	nop	word ptr cs:[rax + rax]
.label_32:
	add	r12, 8
	dec	r13d
	mov	edi, 0x20
	call	putchar_unlocked
.label_16:
	mov	rbx, qword ptr [r12]
	jmp	.label_11
	nop	word ptr [rax + rax]
.label_12:
	movzx	edi, bpl
	call	putchar_unlocked
	mov	rbx, r14
.label_11:
	lea	r14, [rbx + 1]
	movzx	ebp, byte ptr [rbx]
	cmp	ebp, 0x5c
	je	.label_14
	test	bpl, bpl
	jne	.label_12
	jmp	.label_17
	nop	word ptr cs:[rax + rax]
.label_14:
	movzx	eax, byte ptr [r14]
	test	eax, eax
	mov	bpl, 0x5c
	je	.label_12
	mov	bpl, al
	lea	r14, [rbx + 2]
	cmp	eax, 0x5b
	jle	.label_20
	lea	ecx, [rax - 0x5c]
	cmp	ecx, 0xa
	ja	.label_22
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_24]]
.label_377:
	mov	bpl, 7
	jmp	.label_12
.label_20:
	lea	ecx, [rax - 0x31]
	cmp	ecx, 7
	jae	.label_26
.label_48:
	add	bpl, 0xd0
	mov	al, byte ptr [r14]
	mov	cl, al
	and	cl, 0xf8
	movzx	ecx, cl
	cmp	ecx, 0x30
	jne	.label_28
	shl	bpl, 3
	inc	r14
	add	al, bpl
	add	al, 0xd0
	mov	bpl, al
.label_28:
	mov	al, byte ptr [r14]
	mov	cl, al
	and	cl, 0xf8
	movzx	ecx, cl
	cmp	ecx, 0x30
	jne	.label_12
	shl	bpl, 3
	inc	r14
	add	al, bpl
	add	al, 0xd0
	mov	bpl, al
	jmp	.label_12
.label_22:
	add	eax, -0x6e
	cmp	eax, 0xa
	ja	.label_29
	jmp	qword ptr [word ptr [+ (rax * 8) + label_40]]
.label_345:
	mov	bpl, 0xa
	jmp	.label_12
.label_26:
	cmp	eax, 0x30
	jne	.label_29
	mov	bpl, byte ptr [r14]
	mov	al, bpl
	and	al, 0xf8
	movzx	eax, al
	cmp	eax, 0x30
	jne	.label_45
	add	rbx, 3
	mov	r14, rbx
	jmp	.label_48
.label_378:
	mov	bpl, 8
	jmp	.label_12
.label_379:
	mov	bpl, 0x1b
	jmp	.label_12
.label_380:
	mov	bpl, 0xc
	jmp	.label_12
.label_346:
	mov	bpl, 0xd
	jmp	.label_12
.label_347:
	mov	bpl, 9
	jmp	.label_12
.label_348:
	mov	bpl, 0xb
	jmp	.label_12
.label_349:
	movzx	r15d, byte ptr [r14]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + r15*2 + 1], 0x10
	jne	.label_39
.label_29:
	mov	edi, 0x5c
	call	putchar_unlocked
	jmp	.label_12
.label_45:
	xor	ebp, ebp
	jmp	.label_12
.label_39:
	movzx	edi, r15b
	mov	r14, rax
	call	hextobin
	mov	ebp, eax
	movzx	eax, byte ptr [rbx + 3]
	test	byte ptr [r14 + rax*2 + 1], 0x10
	jne	.label_23
	add	rbx, 3
	mov	r14, rbx
	jmp	.label_12
.label_23:
	add	rbx, 4
	shl	ebp, 4
	movzx	edi, al
	call	hextobin
	add	ebp, eax
	mov	r14, rbx
	jmp	.label_12
	nop	dword ptr [rax]
.label_17:
	cmp	r13d, 2
	jge	.label_32
.label_31:
	mov	eax, dword ptr [rsp + 0x14]
	test	al, 1
	je	.label_27
	mov	edi, 0xa
	call	putchar_unlocked
.label_27:
	xor	eax, eax
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_33:
	mov	r13d, ecx
	jmp	.label_18
.label_35:
	mov	r13d, ecx
	jmp	.label_18
.label_47:
	mov	r13d, ecx
	jmp	.label_18
.label_21:
	xor	edi, edi
	call	usage
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4019e0

	.globl hextobin
	.type hextobin, @function
hextobin:
	mov	eax, 0xa
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 5
	jbe	.label_51
	lea	ecx, [rdi - 0x61]
	cmp	ecx, 5
	ja	.label_54
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_52]]
.label_51:
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_53]]
.label_322:
	mov	eax, 0xb
	ret	
.label_323:
	mov	eax, 0xc
	ret	
.label_324:
	mov	eax, 0xd
	ret	
.label_325:
	mov	eax, 0xe
	ret	
.label_326:
	mov	eax, 0xf
.label_321:
	ret	
.label_54:
	add	edi, -0x30
	mov	eax, edi
	ret	
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a30
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a40
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a50

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_55
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_57
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_57
.label_55:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_56
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_57:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_1
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_58
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_56:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_58:
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
	.align	16
	#Procedure 0x401b10

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_61
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_59
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_59
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_60
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_60:
	mov	rbx, r14
.label_59:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_61:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_3
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401bc0
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
	.align	16
	#Procedure 0x401c00
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
	.align	16
	#Procedure 0x401c10
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
	.align	16
	#Procedure 0x401c20

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
	.align	16
	#Procedure 0x401c60
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
	.align	16
	#Procedure 0x401c80

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_62
	test	rdx, rdx
	je	.label_62
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_62:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401cb0
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
	.align	16
	#Procedure 0x401d30

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
.label_105:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r13d
	cmp	r13d, 0xa
	ja	.label_85
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_181]]
.label_316:
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
.label_317:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	test	r15b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_77
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_77
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
.label_113:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_169
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_169:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_113
.label_77:
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
	jmp	.label_123
.label_309:
	xor	r14d, r14d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	xor	edi, edi
	jmp	.label_123
.label_312:
	mov	al, 1
.label_310:
	mov	r15b, 1
.label_313:
	test	r15b, 1
	mov	cl, 1
	je	.label_147
	mov	cl, al
.label_147:
	mov	al, cl
.label_311:
	mov	r14d, 2
	test	r15b, 1
	jne	.label_150
	test	r10, r10
	je	.label_68
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_98
.label_150:
	xor	ecx, ecx
	jmp	.label_98
.label_314:
	mov	r14d, 5
	test	r15b, 1
	jne	.label_157
	test	r10, r10
	je	.label_140
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_66
.label_315:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	dil, 1
	jmp	.label_123
.label_68:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_98:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xa8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	jmp	.label_123
.label_157:
	xor	eax, eax
	jmp	.label_66
.label_140:
	mov	eax, 1
.label_66:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	sil, 1
	mov	dil, r15b
	nop	dword ptr [rax + rax]
.label_123:
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
	jmp	.label_79
	nop	dword ptr [rax + rax]
.label_166:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	sar	r15b, 7
	and	r15b, r8b
	mov	r8b, r15b
	inc	rsi
.label_79:
	cmp	rbp, -1
	je	.label_128
	cmp	rsi, rbp
	jne	.label_131
	jmp	.label_133
	nop	dword ptr [rax]
.label_128:
	cmp	byte ptr [r9 + rsi], 0
	je	.label_133
.label_131:
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_141
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_143
	cmp	rbp, -1
	jne	.label_143
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
.label_143:
	cmp	rbx, rbp
	jbe	.label_126
.label_141:
	mov	rdi, r14
	mov	dword ptr [rsp + 0xec], 0
.label_80:
	movzx	r13d, byte ptr [r9 + rsi]
	cmp	r13, 0x7e
	ja	.label_164
	xor	edx, edx
	mov	r15b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_172]]
.label_296:
	test	rsi, rsi
	jne	.label_76
	jmp	.label_95
	nop	word ptr cs:[rax + rax]
.label_126:
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
	jne	.label_64
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_80
	jmp	.label_69
.label_64:
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	jmp	.label_80
.label_300:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_88
	test	rsi, rsi
	jne	.label_94
	cmp	rbp, 1
	je	.label_95
	xor	r15d, r15d
	jmp	.label_74
.label_289:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_97
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_69
	cmp	edi, 2
	jne	.label_108
	mov	al, r11b
	and	al, 1
	jne	.label_112
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_115
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_115:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_151
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_151:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_130
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_130:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r11b, 1
	mov	rcx, rax
	jmp	.label_100
.label_290:
	mov	bl, 0x62
	jmp	.label_99
.label_291:
	mov	cl, 0x74
	jmp	.label_146
.label_292:
	mov	bl, 0x76
	jmp	.label_99
.label_293:
	mov	bl, 0x66
	jmp	.label_99
.label_294:
	mov	cl, 0x72
	jmp	.label_146
.label_297:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_152
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_73
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
	jae	.label_159
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_159:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_171
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_171:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_177
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_177:
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	jmp	.label_184
.label_298:
	mov	r14, rdi
	cmp	r14d, 5
	je	.label_67
	cmp	r14d, 2
	jne	.label_72
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_73
.label_72:
	mov	rdi, r14
	jmp	.label_76
.label_299:
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_78
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_73
	mov	rdi, r14
	jmp	.label_81
.label_164:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_83
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
.label_114:
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
	ja	.label_102
	test	dl, dl
	je	.label_102
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_74
.label_88:
	test	rsi, rsi
	jne	.label_124
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_124
.label_95:
	mov	dl, 1
.label_295:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_69
	xor	eax, eax
	mov	r15b, dl
	jmp	.label_74
.label_97:
	cmp	dword ptr [rsp + 0x5c], 0
	je	.label_76
	mov	r14, rdi
	inc	rsi
	jmp	.label_79
.label_152:
	mov	rdi, r14
.label_184:
	xor	eax, eax
	mov	r15b, 1
	jmp	.label_74
.label_78:
	mov	rdi, r14
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r13b
	je	.label_146
.label_81:
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_70
.label_146:
	cmp	byte ptr [rsp + 0xa7], 0
	mov	bl, cl
	je	.label_69
.label_99:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	je	.label_74
	jmp	.label_142
.label_83:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_162
	mov	rdi, r9
	mov	rbx, r9
	mov	rbp, rsi
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_162:
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	r15b, 1
	xor	ebx, ebx
	lea	r14, [rsp + 0x100]
.label_104:
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
	je	.label_180
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x40]
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8b, byte ptr [rsp + 0xa6]
	je	.label_63
	cmp	rbp, -2
	je	.label_75
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_163
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_92:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_84
	bt	rsi, rdx
	jb	.label_87
.label_84:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_92
.label_163:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_135
	xor	r15d, r15d
.label_135:
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	add	rbx, rbp
	mov	r14, rdi
	call	mbsinit
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_104
	jmp	.label_114
.label_124:
	mov	rbp, -1
	xor	r15d, r15d
	jmp	.label_74
.label_67:
	mov	rdi, r14
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_76
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_76
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_76
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_132
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_139
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_69
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_145
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_145:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_174
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_174:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_158
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_158:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_125
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_125:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r15d, r15d
	jmp	.label_74
.label_76:
	xor	eax, eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_74:
	test	r12b, r12b
	je	.label_121
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_173
	jmp	.label_176
	nop	word ptr cs:[rax + rax]
.label_121:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_176
.label_173:
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_182
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_70
	jmp	.label_142
	nop	word ptr cs:[rax + rax]
.label_176:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_142
	jmp	.label_70
.label_182:
	mov	bl, r13b
	mov	rsi, r14
.label_142:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_69
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_86
	mov	al, r11b
	and	al, 1
	jne	.label_86
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_93
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_93:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_161
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_161:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_109
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_109:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_86:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_118
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_118:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_127
.label_94:
	xor	r15d, r15d
	jmp	.label_74
.label_102:
	add	rcx, rsi
	xor	eax, eax
	jmp	.label_138
	nop	word ptr cs:[rax + rax]
.label_89:
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_138:
	test	dl, dl
	je	.label_149
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	je	.label_154
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_90
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	mov	rsi, rbx
.label_90:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_154
	nop	word ptr [rax + rax]
.label_149:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_73
	cmp	r14d, 2
	jne	.label_165
	mov	al, r11b
	and	al, 1
	jne	.label_165
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_167
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_167:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_91
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_91:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_178
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_178:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_165:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_129
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_129:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_136
	mov	dl, r13b
	shr	dl, 6
	or	dl, 0x30
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rdi
.label_136:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_82
	mov	dl, r13b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_82:
	add	qword ptr [rsp + 0xf0], 3
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_154:
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_70
	test	r11b, 1
	je	.label_103
	mov	bl, al
	and	bl, 1
	mov	r14, rdi
	jne	.label_106
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_111
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_111:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_155
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
.label_155:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	rsi, rbx
	jmp	.label_106
	nop	word ptr cs:[rax + rax]
.label_103:
	mov	r14, rdi
.label_106:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_89
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rbx], r13b
	mov	rsi, rdi
	jmp	.label_89
.label_70:
	test	r11b, 1
	je	.label_120
	and	al, 1
	jne	.label_120
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_170
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_170:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_156
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_156:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	bl, r13b
	jmp	.label_127
	nop	dword ptr [rax + rax]
.label_120:
	mov	bl, r13b
	mov	r14, rdi
.label_127:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_166
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
	jmp	.label_166
.label_108:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_100
.label_112:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_100:
	cmp	rcx, r10
	jae	.label_175
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_175:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r13b, 0x30
	cmp	edi, 2
	je	.label_179
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_65
	mov	dl, byte ptr [r9 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_137
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_107
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	mov	rsi, rbx
.label_107:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_134
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsi, rbx
.label_134:
	add	rcx, 3
	xor	r15d, r15d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_74
.label_179:
	xor	r15d, r15d
	jmp	.label_74
.label_65:
	xor	r15d, r15d
	jmp	.label_74
.label_137:
	xor	r15d, r15d
	jmp	.label_74
.label_180:
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_96
.label_63:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_101
.label_75:
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	jae	.label_110
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_119:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax + rbx], 0
	je	.label_117
	lea	rax, [rsi + rbx + 1]
	inc	rbx
	cmp	rax, rbp
	jb	.label_119
	xor	r15d, r15d
	jmp	.label_96
.label_110:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_101:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_96:
	mov	byte ptr [rsp + 0xa6], r8b
	jmp	.label_114
.label_117:
	xor	r15d, r15d
	jmp	.label_96
.label_132:
	xor	r15d, r15d
	jmp	.label_74
.label_139:
	xor	r15d, r15d
	mov	rsi, rbx
	jmp	.label_74
	nop	dword ptr [rax + rax]
.label_133:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	and	cl, 1
	je	.label_144
	or	dl, al
	je	.label_73
.label_144:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12, r9
	test	cl, cl
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	je	.label_153
	or	dl, al
	jne	.label_153
	test	r8b, 1
	jne	.label_160
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_153
	test	r10, r10
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	r15b, dl
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_105
.label_153:
	mov	rdx, qword ptr [rsp + 0xa8]
	test	rdx, rdx
	je	.label_168
	test	cl, cl
	jne	.label_168
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_168
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_183:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_148
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_148:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_183
.label_168:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_71
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_71
.label_69:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_116:
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
.label_122:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_71:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_87:
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_116
.label_73:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	jmp	.label_116
.label_160:
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
	jmp	.label_122
.label_85:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f40
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f50

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
	je	.label_185
	mov	qword ptr [rax], rbx
.label_185:
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
	.align	16
	#Procedure 0x403050
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_186
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_189:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_189
.label_186:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_190
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_187]], OFFSET FLAT:slot0
.label_190:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_188
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_188:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030f0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x403100

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
	js	.label_191
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_194
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_197
.label_194:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_193
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
	jne	.label_192
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_192:
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
.label_197:
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
	ja	.label_195
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_196
	mov	rdi, rbx
	call	free
.label_196:
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
.label_195:
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
.label_191:
	call	abort
.label_193:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032d0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032e0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4032f0
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
	#Procedure 0x403300

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
	.align	16
	#Procedure 0x403340

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
	je	.label_198
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
.label_198:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033a0

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
	.align	16
	#Procedure 0x4033e0
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
	.align	16
	#Procedure 0x403400
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
	.align	16
	#Procedure 0x403420

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
	mov	rcx,  qword ptr [word ptr [rip + label_199]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_200]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_201]]
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
	.align	16
	#Procedure 0x403490

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4034a0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034b0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034c0
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
	.align	16
	#Procedure 0x403510

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403520

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
	mov	rax,  qword ptr [word ptr [rip + label_199]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_200]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_201]]
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
	.align	16
	#Procedure 0x403590
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
	.align	16
	#Procedure 0x4035b0
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
	.align	16
	#Procedure 0x4035d0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4035e0
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
	#Procedure 0x4035f0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403600
	.globl quote
	.type quote, @function
quote:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403610

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
	jne	.label_203
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
	je	.label_202
	mov	eax, OFFSET FLAT:.str.14
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_203
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_203
.label_202:
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
	je	.label_204
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_203
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_203
.label_204:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_203:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4036f0

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
	je	.label_206
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_207
	jmp	.label_205
.label_206:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_205
.label_207:
	mov	eax, 1
	test	bpl, bpl
	je	.label_205
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
.label_205:
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
	.align	16
	#Procedure 0x403780

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
	je	.label_209
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_208
	jmp	.label_210
.label_209:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_210
.label_208:
	mov	eax, 1
	test	bpl, bpl
	je	.label_210
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
.label_210:
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
	.align	16
	#Procedure 0x403810

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
	je	.label_211
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_213
	jmp	.label_212
.label_211:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_212
.label_213:
	mov	eax, 1
	test	bpl, bpl
	je	.label_212
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
.label_212:
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
	.align	16
	#Procedure 0x403890

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
	je	.label_216
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_215
	jmp	.label_214
.label_216:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_214
.label_215:
	mov	eax, 1
	test	bpl, bpl
	je	.label_214
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
.label_214:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403900

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
	je	.label_219
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_217
	jmp	.label_218
.label_219:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_218
.label_217:
	mov	eax, 1
	test	bpl, bpl
	je	.label_218
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_218:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403970

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
	je	.label_220
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_222
	jmp	.label_221
.label_220:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_221
.label_222:
	mov	eax, 1
	test	bpl, bpl
	je	.label_221
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_221:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4039c0

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
	je	.label_225
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_224
	jmp	.label_223
.label_225:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_223
.label_224:
	mov	eax, 1
	test	bpl, bpl
	je	.label_223
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_223:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a10

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_228
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_227
	jmp	.label_226
.label_228:
	mov	eax, 1
	test	cl, cl
	je	.label_226
.label_227:
	xor	eax, eax
.label_226:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
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
	je	.label_229
	mov	edx, OFFSET FLAT:.str_4
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_238
.label_229:
	mov	edx, OFFSET FLAT:.str.1_2
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_238:
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
	ja	.label_233
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_234]]
.label_364:
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
.label_233:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	jmp	.label_231
.label_365:
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
.label_366:
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
.label_367:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_232
.label_368:
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
	jmp	.label_230
.label_369:
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
	jmp	.label_237
.label_370:
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
.label_237:
	mov	qword ptr [rsp + 0x10], rdi
.label_230:
	mov	qword ptr [rsp + 8], rsi
.label_232:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_235
.label_372:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_231:
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
	jmp	.label_236
.label_371:
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
.label_236:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_235:
	call	__fprintf_chk
.label_363:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d30
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_239:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_239
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d60

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_241:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_240
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_242
	nop	dword ptr [rax]
.label_240:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_242:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_243
	inc	r9
	cmp	r9, 0xa
	jb	.label_241
.label_243:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x403dc0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	je	.label_244
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_244:
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
	.align	16
	#Procedure 0x403e50
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_0
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
	.align	16
	#Procedure 0x403ed0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_245
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_245:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f00

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_246
	test	rax, rax
	je	.label_247
.label_246:
	pop	rbx
	ret	
.label_247:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f20
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_248
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_248:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f50

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_249
	test	rbx, rbx
	jne	.label_249
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_249:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_251
	test	rax, rax
	je	.label_250
.label_251:
	pop	rbx
	ret	
.label_250:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403f80

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_252
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_255
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_253
.label_252:
	test	rcx, rcx
	jne	.label_256
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_256:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_254
.label_253:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_255:
	call	xalloc_die
.label_254:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404000

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404010
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404020
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
	.align	16
	#Procedure 0x404050
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_257
	call	rpl_calloc
	test	rax, rax
	je	.label_257
	pop	rcx
	ret	
.label_257:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404080

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
	.align	16
	#Procedure 0x4040b0
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
	.align	16
	#Procedure 0x4040d0

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
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404100

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_258
	test	rsi, rsi
	mov	ecx, 1
	je	.label_259
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_259
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_258:
	mov	ecx, 1
.label_259:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404150

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
	je	.label_260
	cmp	r15, -2
	jb	.label_260
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_260
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_260:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041b0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_261
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_261
.label_262:
	ret	
.label_261:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_262
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041e0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_263
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_263:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404200
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404210
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
	.align	16
	#Procedure 0x404220
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_264
.label_265:
	ret	
.label_264:
	cmp	edi, 0x7f
	je	.label_265
	xor	eax, eax
	jmp	.label_265
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404240
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404250
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404260
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404270
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404280
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_266
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_266
.label_267:
	ret	
.label_266:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_267
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042b0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_268
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_268:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4042d0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042e0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_269
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_269:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404300
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
	.align	16
	#Procedure 0x404310
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
	.align	16
	#Procedure 0x404320

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
	je	.label_270
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_271
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_271
.label_270:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_271
	test	cl, cl
	jne	.label_271
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_271:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404390

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_273
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_274
	cmp	byte ptr [rax + 1], 0
	je	.label_272
.label_274:
	mov	esi, OFFSET FLAT:.str.1_4
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_273
.label_272:
	xor	ebx, ebx
.label_273:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x4043d0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_5
	cmp	byte ptr [rcx], 0
	je	.label_275
	mov	rax, rcx
.label_275:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404400

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_276
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_278
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_276
.label_278:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_276
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_277
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_277:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_276:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404480

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_279
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_279
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_279:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044b0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_280
	ret	
.label_280:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4044d0

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
	jne	.label_281
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_281
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_282
.label_281:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_282:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_283
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_283:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	16
	#Procedure 0x404540

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
