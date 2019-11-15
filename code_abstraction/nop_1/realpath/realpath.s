	.section	.text
	.align	16
	#Procedure 0x4015b0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_8
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
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_8:
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4016b0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.15
	nop	
.label_11:
	mov	edi, OFFSET FLAT:.str.6
	call	strcmp
	test	eax, eax
	je	.label_10
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_11
.label_10:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:.str.6
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
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
	je	.label_9
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_9
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_9:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.6
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.6
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.29
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
	#Procedure 0x4017d0

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
	mov	r14, rsi
	mov	r12d, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.8
	mov	esi, OFFSET FLAT:.str.9
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.8
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r15d, 1
	xor	r13d, r13d
	xor	ebx, ebx
	jmp	.label_18
.label_12:
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	nop	
.label_18:
	mov	edx, OFFSET FLAT:.str.10
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r12d
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x70
	jg	.label_28
	cmp	eax, 0x4f
	jle	.label_29
	cmp	eax, 0x50
	je	.label_30
	cmp	eax, 0x65
	je	.label_31
	cmp	eax, 0x6d
	jne	.label_13
	and	r15d, 0xfffffffc
	or	r15d, 2
	jmp	.label_18
	nop	
.label_28:
	cmp	eax, 0x79
	jle	.label_35
	cmp	eax, 0x7a
	je	.label_26
	cmp	eax, 0x80
	je	.label_37
	cmp	eax, 0x81
	je	.label_12
	jmp	.label_13
	nop	dword ptr [rax]
.label_29:
	cmp	eax, 0x4b
	jle	.label_17
	cmp	eax, 0x4c
	jne	.label_13
	or	r15d, 4
	mov	byte ptr [byte ptr [rip + logical]],  1
	jmp	.label_18
.label_35:
	cmp	eax, 0x71
	je	.label_21
	cmp	eax, 0x73
	jne	.label_13
	or	r15d, 4
	mov	byte ptr [byte ptr [rip + logical]],  0
	jmp	.label_18
.label_30:
	and	r15d, 0xfffffffb
	mov	byte ptr [byte ptr [rip + logical]],  0
	jmp	.label_18
.label_31:
	and	r15d, 0xfffffffc
	jmp	.label_18
.label_26:
	mov	byte ptr [byte ptr [rip + use_nuls]],  1
	jmp	.label_18
.label_37:
	mov	r13,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_18
.label_21:
	mov	byte ptr [byte ptr [rip + verbose]],  1
	jmp	.label_18
.label_17:
	cmp	eax, -1
	jne	.label_20
	cmp	dword ptr [dword ptr [rip + optind]],  r12d
	jge	.label_16
	test	rbx, rbx
	mov	rbp, rbx
	cmove	rbp, r13
	test	r13, r13
	cmovne	rbp, r13
	mov	r13d, r15d
	and	r13d, 3
	test	rbp, rbp
	je	.label_19
	mov	rdi, rbp
	mov	esi, r15d
	call	realpath_canon
	mov	qword ptr [word ptr [rip + can_relative_to]],  rax
	test	rax, rax
	je	.label_27
	test	r13d, r13d
	jne	.label_19
	mov	rdi, rax
	call	isdir
	test	al, al
	je	.label_33
.label_19:
	cmp	rbx, rbp
	je	.label_36
	test	rbx, rbx
	je	.label_22
	mov	rdi, rbx
	mov	esi, r15d
	call	realpath_canon
	mov	rbp, rax
	test	rbp, rbp
	je	.label_38
	test	r13d, r13d
	jne	.label_14
	mov	rdi, rbp
	call	isdir
	test	al, al
	je	.label_15
.label_14:
	mov	rsi,  qword ptr [word ptr [rip + can_relative_to]]
	mov	rdi, rbp
	call	path_prefix
	test	al, al
	je	.label_23
	mov	qword ptr [word ptr [rip + can_relative_base]],  rbp
	jmp	.label_22
.label_36:
	mov	rax,  qword ptr [word ptr [rip + can_relative_to]]
	mov	qword ptr [word ptr [rip + can_relative_base]],  rax
	jmp	.label_22
.label_23:
	mov	rdi, rbp
	call	free
	mov	rax,  qword ptr [word ptr [rip + can_relative_to]]
	mov	qword ptr [word ptr [rip + can_relative_base]],  rax
	mov	qword ptr [word ptr [rip + can_relative_to]],  0
.label_22:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	mov	bl, 1
	jmp	.label_34
	nop	word ptr cs:[rax + rax]
.label_32:
	cdqe	
	mov	rdi, qword ptr [r14 + rax*8]
	mov	esi, r15d
	call	process_path
	and	bl, al
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	inc	eax
	mov	dword ptr [dword ptr [rip + optind]],  eax
.label_34:
	cmp	eax, r12d
	jl	.label_32
	movzx	eax, bl
	xor	eax, 1
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_20:
	cmp	eax, 0xffffff7d
	je	.label_24
	cmp	eax, 0xffffff7e
	jne	.label_13
	xor	edi, edi
	call	usage
.label_24:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.12
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_13:
	mov	edi, 1
	call	usage
.label_16:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
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
.label_27:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_38:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_33:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
	jmp	.label_25
.label_15:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
.label_25:
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	esi, 0x14
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	call	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x401b40

	.globl realpath_canon
	.type realpath_canon, @function
realpath_canon:
	push	r14
	push	rbx
	push	rax
	mov	ebx, esi
	call	canonicalize_filename_mode
	mov	r14, rax
	movzx	eax,  byte ptr [byte ptr [rip + logical]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_40
	test	r14, r14
	je	.label_40
	and	ebx, 0xfffffffb
	mov	rdi, r14
	mov	esi, ebx
	call	canonicalize_filename_mode
	mov	rbx, rax
	mov	rdi, r14
	call	free
	mov	rax, rbx
	jmp	.label_39
.label_40:
	mov	rax, r14
.label_39:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b90

	.globl isdir
	.type isdir, @function
isdir:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rsi, [rsp]
	call	stat
	test	eax, eax
	jne	.label_41
	mov	eax, dword ptr [rsp + 0x18]
	and	eax, 0xf000
	cmp	eax, 0x4000
	sete	al
	add	rsp, 0x90
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_41:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
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
	.section	.text
	.align	16
	#Procedure 0x401c10

	.globl path_prefix
	.type path_prefix, @function
path_prefix:
	inc	rsi
	mov	al, byte ptr [rdi + 1]
	test	al, al
	je	.label_46
	movzx	ecx, al
	cmp	ecx, 0x2f
	jne	.label_47
	cmp	byte ptr [rdi + 2], 0
	je	.label_44
	mov	al, byte ptr [rdi + 1]
.label_47:
	test	al, al
	je	.label_45
	add	rdi, 2
	nop	word ptr cs:[rax + rax]
.label_43:
	mov	cl, byte ptr [rsi]
	test	cl, cl
	je	.label_42
	movzx	ecx, cl
	movzx	eax, al
	cmp	eax, ecx
	jne	.label_42
	inc	rsi
	mov	al, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_43
	jmp	.label_45
.label_46:
	movzx	eax, byte ptr [rsi]
	cmp	eax, 0x2f
	setne	al
	ret	
.label_42:
	cmp	byte ptr [rdi - 1], 0
	je	.label_45
	xor	eax, eax
	ret	
.label_45:
	movzx	eax, byte ptr [rsi]
	cmp	eax, 0x2f
	sete	cl
	test	al, al
	sete	al
	or	al, cl
	ret	
.label_44:
	movzx	eax, byte ptr [rsi]
	cmp	eax, 0x2f
	sete	al
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401c90

	.globl process_path
	.type process_path, @function
process_path:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	realpath_canon
	mov	r14, rax
	test	r14, r14
	je	.label_53
	cmp	qword ptr [word ptr [rip + can_relative_to]],  0
	je	.label_48
	mov	rdi,  qword ptr [word ptr [rip + can_relative_base]]
	test	rdi, rdi
	je	.label_51
	mov	rsi, r14
	call	path_prefix
	test	al, al
	je	.label_48
.label_51:
	mov	rsi,  qword ptr [word ptr [rip + can_relative_to]]
	test	rsi, rsi
	je	.label_49
	xor	edx, edx
	xor	ecx, ecx
	mov	rdi, r14
	call	relpath
	test	al, al
	jne	.label_49
.label_48:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, r14
	call	fputs_unlocked
.label_49:
	mov	al,  byte ptr [byte ptr [rip + use_nuls]]
	xor	ecx, ecx
	and	al, 1
	mov	edi, 0xa
	cmovne	edi, ecx
	call	putchar_unlocked
	mov	rdi, r14
	call	free
	mov	bpl, 1
	jmp	.label_50
.label_53:
	mov	al,  byte ptr [byte ptr [rip + verbose]]
	and	al, 1
	je	.label_52
	xor	ebp, ebp
	jmp	.label_50
.label_52:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, r14d
	call	error
.label_50:
	mov	al, bpl
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d60

	.globl relpath
	.type relpath, @function
relpath:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rsi
	mov	r14, rdi
	mov	qword ptr [rsp + 8], rdx
	mov	qword ptr [rsp], rcx
	mov	rdi, rbx
	mov	rsi, r14
	call	path_common_prefix
	test	eax, eax
	je	.label_54
	cdqe	
	add	r14, rax
	movzx	ecx, byte ptr [rbx + rax]
	cmp	ecx, 0x2f
	jne	.label_55
	lea	rbx, [rbx + rax + 1]
	jmp	.label_58
.label_54:
	xor	eax, eax
	jmp	.label_62
.label_55:
	add	rbx, rax
.label_58:
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2f
	jne	.label_64
	inc	r14
.label_64:
	cmp	byte ptr [rbx], 0
	je	.label_66
	lea	r15, [rsp + 8]
	lea	r12, [rsp]
	mov	edi, OFFSET FLAT:.str_3
	mov	rsi, r15
	mov	rdx, r12
	call	buffer_or_output
	mov	bpl, al
	jmp	.label_60
	nop	dword ptr [rax]
.label_57:
	inc	rbx
.label_60:
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2f
	je	.label_63
	test	al, al
	jne	.label_57
	jmp	.label_61
	nop	word ptr cs:[rax + rax]
.label_63:
	mov	edi, OFFSET FLAT:.str.1_0
	mov	rsi, r15
	mov	rdx, r12
	call	buffer_or_output
	and	bpl, 1
	or	bpl, al
	jmp	.label_57
.label_61:
	cmp	byte ptr [r14], 0
	je	.label_56
	lea	rbx, [rsp + 8]
	lea	r15, [rsp]
	mov	edi, OFFSET FLAT:.str_2
	mov	rsi, rbx
	mov	rdx, r15
	call	buffer_or_output
	and	bpl, 1
	or	bpl, al
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, r15
	call	buffer_or_output
	or	bpl, al
	jmp	.label_56
.label_66:
	cmp	byte ptr [r14], 0
	jne	.label_59
	mov	r14d, OFFSET FLAT:.str.3_0
.label_59:
	lea	rsi, [rsp + 8]
	lea	rdx, [rsp]
	mov	rdi, r14
	call	buffer_or_output
	mov	bpl, al
.label_56:
	and	bpl, 1
	je	.label_65
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x24
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	call	error
.label_65:
	test	bpl, bpl
	sete	al
.label_62:
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ec0

	.globl path_common_prefix
	.type path_common_prefix, @function
path_common_prefix:
	movzx	eax, byte ptr [rdi + 1]
	cmp	eax, 0x2f
	sete	cl
	movzx	eax, byte ptr [rsi + 1]
	cmp	eax, 0x2f
	sete	dl
	xor	eax, eax
	xor	dl, cl
	jne	.label_67
	mov	dl, byte ptr [rdi]
	xor	r8d, r8d
	xor	eax, eax
	test	dl, dl
	je	.label_72
	nop	word ptr cs:[rax + rax]
.label_68:
	mov	cl, byte ptr [rsi + r8]
	test	cl, cl
	je	.label_73
	movzx	ecx, cl
	movzx	edx, dl
	cmp	edx, ecx
	jne	.label_73
	lea	rcx, [r8 + 1]
	cmp	edx, 0x2f
	cmove	eax, ecx
	mov	dl, byte ptr [rdi + r8 + 1]
	test	dl, dl
	mov	r8, rcx
	jne	.label_68
	add	rsi, rcx
	add	rdi, rcx
	mov	r8d, ecx
	jmp	.label_72
.label_73:
	add	rsi, r8
	cmp	byte ptr [rdi + r8], 0
	lea	rdi, [rdi + r8]
	jne	.label_69
.label_72:
	cmp	byte ptr [rsi], 0
	je	.label_70
	cmp	byte ptr [rdi], 0
	je	.label_74
.label_69:
	mov	dl, byte ptr [rsi]
.label_71:
	test	dl, dl
	jne	.label_67
	movzx	ecx, byte ptr [rdi]
	cmp	ecx, 0x2f
	jne	.label_67
	jmp	.label_70
.label_74:
	movzx	edx, byte ptr [rsi]
	cmp	edx, 0x2f
	jne	.label_71
.label_70:
	mov	eax, r8d
.label_67:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f60

	.globl buffer_or_output
	.type buffer_or_output, @function
buffer_or_output:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	r13, qword ptr [r15]
	test	r13, r13
	je	.label_75
	mov	rdi, r12
	call	strlen
	mov	rbx, rax
	mov	al, 1
	cmp	rbx, qword ptr [r14]
	jae	.label_76
	mov	rdx, rbx
	inc	rdx
	mov	rdi, r13
	mov	rsi, r12
	call	memcpy
	add	qword ptr [r15], rbx
	sub	qword ptr [r14], rbx
	jmp	.label_77
.label_75:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, r12
	call	fputs_unlocked
.label_77:
	xor	eax, eax
.label_76:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401fc0

	.globl canonicalize_filename_mode
	.type canonicalize_filename_mode, @function
canonicalize_filename_mode:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xe8
	mov	ebx, esi
	mov	r15, rdi
	mov	qword ptr [rsp + 0xe0], 0
	mov	r13d, ebx
	and	r13d, 3
	lea	eax, [rbx + 3]
	test	eax, r13d
	jne	.label_125
	test	r15, r15
	je	.label_125
	movzx	eax, byte ptr [r15]
	cmp	eax, 0x2f
	je	.label_129
	test	al, al
	jne	.label_132
	call	__errno_location
	mov	dword ptr [rax], 2
	jmp	.label_82
.label_125:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_82:
	xor	ebp, ebp
.label_99:
	mov	rax, rbp
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_129:
	mov	edi, 0x1000
	call	xmalloc
	mov	rdi, rax
	mov	byte ptr [rdi], 0x2f
	lea	rsi, [rdi + 0x1000]
	lea	r14, [rdi + 1]
	jmp	.label_94
.label_132:
	call	xgetcwd
	xor	ebp, ebp
	test	rax, rax
	je	.label_99
	xor	esi, esi
	mov	rbp, rax
	mov	rdi, rbp
	call	__rawmemchr
	mov	rdi, rbp
	mov	rsi, rax
	mov	r14, rsi
	sub	r14, rdi
	cmp	r14, 0xfff
	jg	.label_104
	mov	esi, 0x1000
	call	xrealloc
	mov	rdi, rax
	add	r14, rdi
	mov	rsi, rdi
	add	rsi, 0x1000
	jmp	.label_94
.label_104:
	mov	r14, rsi
.label_94:
	cmp	byte ptr [r15], 0
	je	.label_115
	mov	eax, ebx
	and	eax, 4
	mov	dword ptr [rsp + 0x14], eax
	and	ebx, 7
	mov	qword ptr [rsp + 0x20], rbx
	cmp	r13d, 2
	setne	al
	movzx	eax, al
	lea	eax, [rax + rax*8 + 4]
	mov	dword ptr [rsp + 0x10], eax
	xor	eax, eax
	mov	qword ptr [rsp + 0x40], rax
	mov	rbx, r15
	mov	qword ptr [rsp + 0x18], r15
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 0x3c], eax
.label_92:
	lea	rax, [rdi + 1]
	mov	r12, r14
	mov	rbp, rbx
.label_112:
	mov	rbx, rbp
.label_103:
	mov	rbp, rbx
	movzx	ecx, byte ptr [rbp]
	lea	rbx, [rbp + 1]
	cmp	ecx, 0x2f
	mov	r15d, 0
	je	.label_103
	jmp	.label_80
	nop	dword ptr [rax + rax]
.label_86:
	inc	r15
.label_80:
	mov	cl, byte ptr [rbp + r15]
	test	cl, cl
	je	.label_106
	movzx	ecx, cl
	cmp	ecx, 0x2f
	jne	.label_86
.label_106:
	test	r15, r15
	je	.label_88
	lea	rbx, [rbp + r15]
	cmp	r15, 2
	je	.label_90
	cmp	r15, 1
	jne	.label_93
	movzx	ecx, byte ptr [rbp]
	cmp	ecx, 0x2e
	je	.label_95
	jmp	.label_93
	nop	dword ptr [rax]
.label_90:
	movzx	ecx, byte ptr [rbp]
	cmp	ecx, 0x2e
	jne	.label_93
	movzx	ecx, byte ptr [rbp + 1]
	cmp	ecx, 0x2e
	jne	.label_93
	cmp	r12, rax
	ja	.label_102
.label_95:
	cmp	byte ptr [rbx], 0
	jne	.label_103
	jmp	.label_105
.label_102:
	add	rbp, r15
	dec	r12
	mov	rcx, r12
	nop	word ptr [rax + rax]
.label_111:
	mov	r12, rcx
	cmp	r12, rdi
	jbe	.label_108
	lea	rcx, [r12 - 1]
	movzx	edx, byte ptr [r12 - 1]
	cmp	edx, 0x2f
	jne	.label_111
.label_108:
	cmp	byte ptr [rbp], 0
	jne	.label_112
	jmp	.label_117
.label_93:
	movzx	eax, byte ptr [r12 - 1]
	cmp	eax, 0x2f
	je	.label_118
	mov	byte ptr [r12], 0x2f
	inc	r12
.label_118:
	lea	rax, [r12 + r15]
	cmp	rax, rsi
	jae	.label_124
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x48], rdi
	jmp	.label_126
.label_124:
	sub	r12, rdi
	sub	rsi, rdi
	lea	r14, [r15 + 1]
	cmp	r15, 0xfff
	mov	eax, 0x1000
	cmovle	r14, rax
	add	r14, rsi
	mov	rsi, r14
	call	xrealloc
	mov	qword ptr [rsp + 0x48], rax
	add	r14, rax
	add	r12, rax
	mov	qword ptr [rsp + 0x28], r14
.label_126:
	lea	rax, [rbp + r15]
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, r12
	mov	rsi, rbp
	mov	rdx, r15
	call	memcpy
	lea	r14, [r12 + r15]
	mov	byte ptr [r12 + r15], 0
	mov	rax, qword ptr [rsp + 0x20]
	cmp	eax, 6
	je	.label_119
	cmp	dword ptr [rsp + 0x14], 0
	jne	.label_91
	mov	rdi, qword ptr [rsp + 0x48]
	lea	rsi, [rsp + 0x50]
	call	__lstat
	jmp	.label_96
.label_91:
	mov	rdi, qword ptr [rsp + 0x48]
	lea	rsi, [rsp + 0x50]
	call	stat
.label_96:
	test	eax, eax
	je	.label_100
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	r13d, 1
	je	.label_101
	mov	dword ptr [rsp + 0x3c], eax
	test	r13d, r13d
	je	.label_110
.label_119:
	mov	dword ptr [rsp + 0x68], 0
.label_100:
	mov	eax, dword ptr [rsp + 0x68]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0xa000
	jne	.label_79
	lea	rdi, [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0x18]
	lea	rdx, [rsp + 0x50]
	call	seen_triple
	test	al, al
	je	.label_120
	cmp	r13d, 2
	mov	eax, dword ptr [rsp + 0x3c]
	mov	ecx, 0x28
	cmovne	eax, ecx
	mov	dword ptr [rsp + 0x3c], eax
	mov	eax, dword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x30]
	jmp	.label_122
.label_120:
	mov	rsi, qword ptr [rsp + 0x80]
	mov	rdi, qword ptr [rsp + 0x48]
	call	areadlink_with_size
	test	rax, rax
	jne	.label_128
	cmp	r13d, 2
	mov	rbx, qword ptr [rsp + 0x30]
	jne	.label_81
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_81
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x28]
	jmp	.label_131
.label_101:
	mov	esi, 0x2f
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rdi, rbx
	mov	r12d, eax
	call	__strspn_c1
	add	rbp, rax
	cmp	byte ptr [r15 + rbp], 0
	setne	al
	cmp	r12d, 2
	mov	dword ptr [rsp + 0x3c], r12d
	movzx	eax, al
	lea	eax, [rax + rax*8 + 4]
	mov	ecx, 0xd
	cmovne	eax, ecx
	mov	rsi, qword ptr [rsp + 0x28]
.label_122:
	cmp	eax, 4
	jne	.label_84
	mov	rdi, qword ptr [rsp + 0x48]
.label_131:
	cmp	byte ptr [rbx], 0
	jne	.label_92
	jmp	.label_78
.label_79:
	cmp	eax, 0x4000
	mov	rdi, qword ptr [rsp + 0x48]
	jne	.label_107
	add	rbp, r15
	mov	rax, qword ptr [rsp + 8]
	mov	rbx, rbp
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x18]
	jmp	.label_87
.label_107:
	lea	rbx, [rbp + r15]
	cmp	r13d, 2
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x18]
	je	.label_114
	mov	cl, byte ptr [rbp + r15]
	mov	eax, 0x14
	test	cl, cl
	jne	.label_121
	mov	rax, qword ptr [rsp + 8]
	jmp	.label_87
.label_128:
	mov	rdi, rax
	mov	qword ptr [rsp], rax
	call	strlen
	mov	qword ptr [rsp + 0x18], rax
	add	r15, rbp
	mov	rdi, r15
	call	strlen
	mov	rdx, rax
	mov	rax, qword ptr [rsp + 0x18]
	lea	rcx, [rax + rdx + 1]
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_127
	mov	qword ptr [rsp + 0x30], rdx
	cmp	rcx, rax
	jbe	.label_130
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, rcx
	mov	qword ptr [rsp + 8], rcx
	call	xrealloc
	jmp	.label_98
.label_114:
	mov	rax, qword ptr [rsp + 8]
	jmp	.label_87
.label_127:
	cmp	rcx, 0x1000
	mov	eax, 0x1000
	cmovbe	rcx, rax
	mov	qword ptr [rsp + 8], rcx
	mov	rdi, rcx
	mov	qword ptr [rsp + 0x30], rdx
	call	xmalloc
	jmp	.label_98
.label_130:
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x40]
.label_98:
	mov	rdx, qword ptr [rsp + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, qword ptr [rsp + 0x18]
	add	rdi, rax
	inc	rdx
	mov	rsi, r15
	call	memmove
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r15, qword ptr [rsp]
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x18]
	call	memcpy
	mov	rdx, qword ptr [rsp + 0x48]
	lea	rax, [rdx + 1]
	movzx	ecx, byte ptr [r15]
	cmp	ecx, 0x2f
	jne	.label_85
	mov	byte ptr [rdx], 0x2f
	mov	r14, rax
	jmp	.label_113
.label_85:
	cmp	r14, rax
	jbe	.label_113
	sub	rbx, rbp
	lea	rax, [r12 + rbx - 1]
.label_116:
	mov	r14, rax
	cmp	r14, rdx
	jbe	.label_113
	lea	rax, [r14 - 1]
	movzx	ecx, byte ptr [r14 - 1]
	cmp	ecx, 0x2f
	jne	.label_116
.label_113:
	mov	rbx, rdx
	mov	rdi, r15
	call	free
	mov	rdi, rbx
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rax, rbx
	mov	qword ptr [rsp + 0x40], rax
	mov	rdx, rbx
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rsp + 8]
.label_87:
	mov	qword ptr [rsp + 0x18], rdx
	cmp	byte ptr [rbx], 0
	mov	qword ptr [rsp + 8], rax
	jne	.label_92
	jmp	.label_78
.label_115:
	xor	eax, eax
	mov	qword ptr [rsp + 0x40], rax
	jmp	.label_78
.label_88:
	mov	r14, r12
	jmp	.label_78
.label_105:
	mov	r14, r12
.label_78:
	lea	rax, [rdi + 1]
	cmp	r14, rax
	jbe	.label_83
	movzx	eax, byte ptr [r14 - 1]
	cmp	eax, 0x2f
	jne	.label_83
	dec	r14
.label_83:
	mov	byte ptr [r14], 0
	lea	rax, [r14 + 1]
	cmp	rsi, rax
	je	.label_89
	mov	esi, 1
	sub	rsi, rdi
	add	rsi, r14
	call	xrealloc
	mov	rbp, rax
	jmp	.label_97
.label_89:
	mov	rbp, rdi
.label_97:
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	mov	rdi, qword ptr [rsp + 0xe0]
	test	rdi, rdi
	je	.label_99
	call	hash_free
	jmp	.label_99
.label_81:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rdi, qword ptr [rsp + 0x48]
	jmp	.label_109
.label_84:
	cmp	eax, 0xd
	mov	rdi, qword ptr [rsp + 0x48]
	mov	r14d, dword ptr [rsp + 0x3c]
	je	.label_109
	jmp	.label_99
.label_110:
	mov	eax, dword ptr [rsp + 0x3c]
	mov	rdi, qword ptr [rsp + 0x48]
.label_121:
	mov	r14d, eax
.label_109:
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [rsp + 0xe0]
	test	rdi, rdi
	je	.label_123
	call	hash_free
.label_123:
	call	__errno_location
	mov	dword ptr [rax], r14d
	jmp	.label_82
.label_117:
	mov	r14, r12
	jmp	.label_78
	nop	
	.section	.text
	.align	16
	#Procedure 0x4025e0

	.globl seen_triple
	.type seen_triple, @function
seen_triple:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	cmp	qword ptr [rbx], 0
	jne	.label_133
	mov	edi, 7
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash
	mov	ecx, OFFSET FLAT:triple_compare_ino_str
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	mov	qword ptr [rbx], rax
	test	rax, rax
	je	.label_134
.label_133:
	mov	rdi, qword ptr [rbx]
	mov	rsi, r15
	mov	rdx, r14
	call	seen_file
	mov	cl, al
	mov	al, 1
	test	cl, cl
	jne	.label_135
	mov	rdi, qword ptr [rbx]
	mov	rsi, r15
	mov	rdx, r14
	call	record_file
	xor	eax, eax
.label_135:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_134:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402650
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402660
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402670

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_136
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_138
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_138
.label_136:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_137
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_138:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_4
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_139
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_137:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_139:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_1
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
	#Procedure 0x402730

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
	je	.label_140
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
	je	.label_141
	cmp	rax, rbx
	je	.label_140
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	triple_free
.label_140:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_141:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027b0

	.globl seen_file
	.type seen_file, @function
seen_file:
	test	rdi, rdi
	je	.label_142
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
.label_142:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x4027f0

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402800

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402810

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402820

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_143
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_145:
	cmp	qword ptr [rcx], 0
	mov	esi, 0
	mov	rdi, rcx
	je	.label_144
	nop	
.label_146:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_146
	cmp	rsi, rax
	cmova	rax, rsi
.label_144:
	add	rcx, 0x10
	cmp	rcx, rdx
	jb	.label_145
.label_143:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402870
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rsi, qword ptr [rdi]
	xor	ecx, ecx
	cmp	rsi, qword ptr [rdi + 8]
	mov	edx, 0
	jae	.label_147
	mov	r8, qword ptr [rdi + 8]
	xor	ecx, ecx
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_152:
	cmp	qword ptr [rsi], 0
	mov	rax, rsi
	je	.label_149
	nop	dword ptr [rax]
.label_150:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_150
	inc	rdx
.label_149:
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_152
.label_147:
	cmp	rdx, qword ptr [rdi + 0x18]
	jne	.label_148
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_151
.label_148:
	xor	eax, eax
.label_151:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4028d0
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
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, rbp
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_2
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_153]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_154]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_155]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.2_0
	mov	al, 1
	mov	rdi, r13
	mov	rcx, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_1
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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4029c0

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
	je	.label_156
	test	rbx, rbx
	je	.label_156
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_158:
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	je	.label_157
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_157
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_158
	jmp	.label_156
.label_157:
	mov	r15, qword ptr [rbx]
.label_156:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402a20

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
	jae	.label_159
	shl	rax, 4
	add	rax, qword ptr [rbx]
	pop	rbx
	ret	
.label_159:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a50
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_160
	mov	rcx, qword ptr [rdi]
	jmp	.label_162
	nop	
.label_163:
	add	rcx, 0x10
.label_162:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_161
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_163
.label_160:
	ret	
.label_161:
	push	rax
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402a80
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
.label_168:
	cmp	qword ptr [rcx], rbx
	jne	.label_164
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_165
.label_164:
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_168
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	
.label_167:
	cmp	rax, rdx
	mov	ecx, 0
	jae	.label_166
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_167
	jmp	.label_166
.label_165:
	mov	rcx, qword ptr [rdx]
.label_166:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402af0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r8, qword ptr [rdi]
	xor	eax, eax
	jmp	.label_169
	nop	word ptr [rax + rax]
.label_170:
	add	r8, 0x10
.label_169:
	cmp	r8, qword ptr [rdi + 8]
	jae	.label_171
	cmp	qword ptr [r8], 0
	je	.label_170
	test	r8, r8
	mov	r9, r8
	je	.label_170
	nop	dword ptr [rax + rax]
.label_172:
	cmp	rax, rdx
	jae	.label_171
	mov	rcx, qword ptr [r9]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r9, qword ptr [r9 + 8]
	test	r9, r9
	jne	.label_172
	jmp	.label_170
.label_171:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b40
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
	jmp	.label_173
	nop	dword ptr [rax]
.label_174:
	add	r13, 0x10
.label_173:
	cmp	r13, qword ptr [r12 + 8]
	jae	.label_175
	cmp	qword ptr [r13], 0
	je	.label_174
	test	r13, r13
	mov	rbp, r13
	je	.label_174
	nop	word ptr [rax + rax]
.label_176:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_175
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	jne	.label_176
	jmp	.label_174
.label_175:
	mov	rax, rbx
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
	#Procedure 0x402bb0
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_177
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_178:
	mov	rcx, rdx
	shl	rcx, 5
	sub	rcx, rdx
	movzx	eax, al
	add	rax, rcx
	xor	edx, edx
	div	rsi
	mov	al, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_178
.label_177:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402bf0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_179]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c10

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
	je	.label_181
	mov	qword ptr [rsp], rbx
	test	r12, r12
	mov	ebx, OFFSET FLAT:default_tuning
	cmovne	rbx, r12
	mov	qword ptr [r13 + 0x28], rbx
	mov	rdi, r13
	call	check_tuning
	test	al, al
	je	.label_180
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	je	.label_180
	mov	esi, 0x10
	mov	rdi, rax
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_180
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
	jmp	.label_181
.label_180:
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_181:
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
	.align	16
	#Procedure 0x402cf0

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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d10

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d20

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	je	.label_182
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_183]]
	jbe	.label_184
	movss	xmm1,  dword ptr [dword ptr [rip + label_187]]
	ucomiss	xmm1, xmm0
	jbe	.label_184
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_186]]
	jbe	.label_184
	movss	xmm1, dword ptr [rcx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_184
	addss	xmm1,  dword ptr [dword ptr [rip + label_183]]
	ucomiss	xmm0, xmm1
	jbe	.label_184
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_185]]
	ucomiss	xmm2, xmm0
	jb	.label_184
	ucomiss	xmm0, xmm1
	ja	.label_182
.label_184:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_182:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402da0

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_188
	mov	eax, edi
	and	eax, 1
	test	rdi, rdi
	js	.label_193
	cvtsi2ss	xmm0, rdi
	jmp	.label_189
.label_193:
	shr	rdi, 1
	or	rax, rdi
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_189:
	divss	xmm0, dword ptr [rsi + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_190]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rdi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rdi, rcx
	xor	eax, eax
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_191]]
	jae	.label_192
.label_188:
	push	rax
	call	next_prime
	mov	rcx, rax
	xor	eax, eax
	mov	rdx, rcx
	shr	rdx, 0x3c
	cmove	rax, rcx
	add	rsp, 8
.label_192:
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402e20
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	jmp	.label_194
	nop	dword ptr [rax]
.label_200:
	add	r14, 0x10
.label_194:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_198
	cmp	qword ptr [r14], 0
	je	.label_200
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_195
	nop	word ptr cs:[rax + rax]
.label_196:
	test	cl, 1
	je	.label_199
	mov	rdi, qword ptr [rbx]
	call	rax
.label_199:
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
	jne	.label_196
.label_195:
	test	cl, cl
	je	.label_197
	mov	rdi, qword ptr [r14]
	call	rax
.label_197:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_200
.label_198:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ec0

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_201
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_201
	mov	r14, qword ptr [r15]
	jmp	.label_208
	nop	dword ptr [rax + rax]
.label_204:
	add	r14, 0x10
.label_208:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_201
	cmp	qword ptr [r14], 0
	je	.label_204
	test	r14, r14
	mov	rbx, r14
	je	.label_204
	nop	dword ptr [rax + rax]
.label_202:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_202
	jmp	.label_204
.label_201:
	mov	r14, qword ptr [r15]
	jmp	.label_206
	nop	word ptr [rax + rax]
.label_205:
	add	r14, 0x10
.label_206:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_209
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_205
	nop	word ptr cs:[rax + rax]
.label_203:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_203
	jmp	.label_205
.label_209:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_207
	nop	dword ptr [rax]
.label_210:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_210
.label_207:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, r15
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f90

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
	je	.label_211
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	je	.label_212
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_211
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
	je	.label_213
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
	jmp	.label_212
.label_213:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	lea	rsi, [rsp]
	mov	edx, 1
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_214
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_214
	mov	rdi, qword ptr [rsp]
	call	free
.label_211:
	xor	r14d, r14d
.label_212:
	mov	al, r14b
	add	rsp, 0x50
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_214:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030c0

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
	mov	r12, rsi
	mov	r14, rdi
	mov	r15, qword ptr [r12]
	mov	al, 1
	cmp	r15, qword ptr [r12 + 8]
	jae	.label_215
	mov	dword ptr [rsp + 4], edx
	nop	word ptr cs:[rax + rax]
.label_222:
	cmp	qword ptr [r15], 0
	je	.label_219
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	je	.label_224
	nop	word ptr cs:[rax + rax]
.label_218:
	mov	r13, qword ptr [rbx]
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rax], 0
	je	.label_220
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	jmp	.label_221
	nop	word ptr cs:[rax + rax]
.label_220:
	mov	qword ptr [rax], r13
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	free_entry
.label_221:
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_218
.label_224:
	mov	r13, qword ptr [r15]
	mov	qword ptr [r15 + 8], 0
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	jne	.label_219
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbx, rax
	cmp	qword ptr [rbx], 0
	je	.label_223
	mov	rdi, r14
	call	allocate_entry
	test	rax, rax
	je	.label_216
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbx + 8], rax
	jmp	.label_217
.label_223:
	mov	qword ptr [rbx], r13
	inc	qword ptr [r14 + 0x18]
.label_217:
	mov	qword ptr [r15], 0
	dec	qword ptr [r12 + 0x18]
.label_219:
	add	r15, 0x10
	cmp	r15, qword ptr [r12 + 8]
	jb	.label_222
	mov	al, 1
	jmp	.label_215
.label_216:
	xor	eax, eax
.label_215:
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
	#Procedure 0x4031e0

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
	je	.label_226
	lea	rdx, [rsp]
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	je	.label_229
	test	rbx, rbx
	je	.label_228
	mov	qword ptr [rbx], rax
	jmp	.label_228
.label_229:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_235
	cvtsi2ss	xmm0, rcx
	jmp	.label_238
.label_235:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_238:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_227
	cvtsi2ss	xmm1, rax
	jmp	.label_232
.label_227:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_232:
	mulss	xmm1, dword ptr [rcx + 8]
	ucomiss	xmm0, xmm1
	jbe	.label_230
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_225
	cvtsi2ss	xmm2, rcx
	jmp	.label_231
.label_225:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_231:
	mov	rcx, qword ptr [r15 + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_236
	cvtsi2ss	xmm0, rax
	jmp	.label_239
.label_236:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_239:
	movaps	xmm3, xmm1
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	jbe	.label_230
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_234
	mulss	xmm0, xmm1
.label_234:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_191]]
	jae	.label_228
	movss	xmm1,  dword ptr [dword ptr [rip + label_190]]
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
	je	.label_228
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	jne	.label_226
.label_230:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_233
	mov	rdi, r15
	call	allocate_entry
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_228
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx + 8], rax
	inc	qword ptr [r15 + 0x20]
	jmp	.label_237
.label_233:
	mov	qword ptr [rax], r14
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_237:
	mov	ebp, 1
.label_228:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_226:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4033b0

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
	je	.label_243
	cmp	rsi, r13
	je	.label_241
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_244
.label_241:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	je	.label_243
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_246
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_242
.label_244:
	mov	rax, qword ptr [rbx + 8]
	xor	r15d, r15d
	test	rax, rax
	je	.label_243
	add	rbx, 8
	xor	r15d, r15d
	nop	
.label_245:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r13
	je	.label_240
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_240
	mov	rbx, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_245
	jmp	.label_243
.label_246:
	mov	qword ptr [rbx], 0
	jmp	.label_243
.label_240:
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_243
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_242:
	mov	rdi, r14
	call	free_entry
.label_243:
	mov	rax, r15
	add	rsp, 8
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
	#Procedure 0x403480

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	je	.label_247
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
.label_247:
	push	rax
	mov	edi, 0x10
	call	malloc
	add	rsp, 8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034b0

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
	je	.label_248
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_248:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4034e0
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
	je	.label_261
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	jne	.label_252
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_255
	cvtsi2ss	xmm0, rax
	jmp	.label_258
.label_255:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_258:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_256
	cvtsi2ss	xmm1, rcx
	jmp	.label_253
.label_256:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_253:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jbe	.label_252
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_250
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	jmp	.label_251
.label_250:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_251:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_259
	cvtsi2ss	xmm0, rax
	jmp	.label_249
.label_259:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_249:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_252
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	jne	.label_254
	mulss	xmm0, dword ptr [rcx + 8]
.label_254:
	movss	xmm1,  dword ptr [dword ptr [rip + label_190]]
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
	jne	.label_252
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_257
	nop	word ptr cs:[rax + rax]
.label_260:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_260
.label_257:
	mov	qword ptr [r15 + 0x48], 0
.label_252:
	mov	rax, r14
.label_261:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403670

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
	jmp	.label_262
	nop	
.label_263:
	add	rbx, 2
.label_262:
	cmp	rbx, -1
	je	.label_264
	mov	rdi, rbx
	call	is_prime
	test	al, al
	je	.label_263
	mov	r14, rbx
.label_264:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4036c0

	.globl is_prime
	.type is_prime, @function
is_prime:
	mov	r8, rdi
	mov	esi, 3
	mov	edi, 9
	mov	ecx, 0x10
	cmp	r8, 0xa
	jb	.label_265
	nop	dword ptr [rax + rax]
.label_266:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_265
	add	rdi, rcx
	add	rsi, 2
	add	rcx, 8
	cmp	rdi, r8
	jb	.label_266
.label_265:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	setne	al
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403710

	.globl free_entry
	.type free_entry, @function
free_entry:
	mov	qword ptr [rsi], 0
	mov	rax, qword ptr [rdi + 0x48]
	mov	qword ptr [rsi + 8], rax
	mov	qword ptr [rdi + 0x48], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x403730

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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403760
	.globl triple_hash_no_name
	.type triple_hash_no_name, @function
triple_hash_no_name:

	mov	rax, qword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403770
	.globl triple_compare
	.type triple_compare, @function
triple_compare:

	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_267
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_268
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	same_name
	add	rsp, 8
	ret	
.label_267:
	xor	eax, eax
	ret	
.label_268:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037a0

	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_269
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_270
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	test	eax, eax
	sete	al
	add	rsp, 8
	ret	
.label_269:
	xor	eax, eax
	ret	
.label_270:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4037d0

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
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x4037f0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_272
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_273
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_273
	mov	esi, OFFSET FLAT:.str.2_1
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_271
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_271:
	mov	rbx, r14
.label_273:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_272:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038a0
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
	#Procedure 0x4038e0
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
	#Procedure 0x4038f0
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
	#Procedure 0x403900

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
	#Procedure 0x403940
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
	#Procedure 0x403960

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_274
	test	rdx, rdx
	je	.label_274
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_274:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403990
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
	#Procedure 0x403a10

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
.label_320:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r13d
	cmp	r13d, 0xa
	ja	.label_324
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_332]]
.label_542:
	mov	r12d, r11d
	mov	edi, OFFSET FLAT:.str.11
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
.label_543:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	test	r15b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_351
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_351
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
.label_376:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_365
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_365:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_376
.label_351:
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
	jmp	.label_276
.label_535:
	xor	r14d, r14d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	xor	edi, edi
	jmp	.label_276
.label_538:
	mov	al, 1
.label_536:
	mov	r15b, 1
.label_539:
	test	r15b, 1
	mov	cl, 1
	je	.label_380
	mov	cl, al
.label_380:
	mov	al, cl
.label_537:
	mov	r14d, 2
	test	r15b, 1
	jne	.label_285
	test	r10, r10
	je	.label_290
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_291
.label_285:
	xor	ecx, ecx
	jmp	.label_291
.label_540:
	mov	r14d, 5
	test	r15b, 1
	jne	.label_298
	test	r10, r10
	je	.label_304
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_306
.label_541:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	dil, 1
	jmp	.label_276
.label_290:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_291:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xa8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	jmp	.label_276
.label_298:
	xor	eax, eax
	jmp	.label_306
.label_304:
	mov	eax, 1
.label_306:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	sil, 1
	mov	dil, r15b
	nop	dword ptr [rax + rax]
.label_276:
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
	jmp	.label_278
	nop	dword ptr [rax + rax]
.label_312:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	sar	r15b, 7
	and	r15b, r8b
	mov	r8b, r15b
	inc	rsi
.label_278:
	cmp	rbp, -1
	je	.label_388
	cmp	rsi, rbp
	jne	.label_390
	jmp	.label_392
	nop	dword ptr [rax]
.label_388:
	cmp	byte ptr [r9 + rsi], 0
	je	.label_392
.label_390:
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_396
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_277
	cmp	rbp, -1
	jne	.label_277
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
.label_277:
	cmp	rbx, rbp
	jbe	.label_363
.label_396:
	mov	rdi, r14
	mov	dword ptr [rsp + 0xec], 0
.label_340:
	movzx	r13d, byte ptr [r9 + rsi]
	cmp	r13, 0x7e
	ja	.label_307
	xor	edx, edx
	mov	r15b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_310]]
.label_574:
	test	rsi, rsi
	jne	.label_315
	jmp	.label_295
	nop	word ptr cs:[rax + rax]
.label_363:
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
	jne	.label_339
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_340
	jmp	.label_279
.label_339:
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	jmp	.label_340
.label_578:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_358
	test	rsi, rsi
	jne	.label_361
	cmp	rbp, 1
	je	.label_295
	xor	r15d, r15d
	jmp	.label_281
.label_567:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_364
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_279
	cmp	edi, 2
	jne	.label_371
	mov	al, r11b
	and	al, 1
	jne	.label_375
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_378
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_378:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_314
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_314:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_389
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_389:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r11b, 1
	mov	rcx, rax
	jmp	.label_319
.label_568:
	mov	bl, 0x62
	jmp	.label_280
.label_569:
	mov	cl, 0x74
	jmp	.label_283
.label_570:
	mov	bl, 0x76
	jmp	.label_280
.label_571:
	mov	bl, 0x66
	jmp	.label_280
.label_572:
	mov	cl, 0x72
	jmp	.label_283
.label_575:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_289
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_287
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
	jae	.label_300
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_300:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_387
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_387:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_327
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_327:
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	jmp	.label_337
.label_576:
	mov	r14, rdi
	cmp	r14d, 5
	je	.label_341
	cmp	r14d, 2
	jne	.label_344
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_287
.label_344:
	mov	rdi, r14
	jmp	.label_315
.label_577:
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_348
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_287
	mov	rdi, r14
	jmp	.label_349
.label_307:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_352
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
.label_377:
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
	ja	.label_367
	test	dl, dl
	je	.label_367
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_281
.label_358:
	test	rsi, rsi
	jne	.label_386
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_386
.label_295:
	mov	dl, 1
.label_573:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_279
	xor	eax, eax
	mov	r15b, dl
	jmp	.label_281
.label_364:
	cmp	dword ptr [rsp + 0x5c], 0
	je	.label_315
	mov	r14, rdi
	inc	rsi
	jmp	.label_278
.label_289:
	mov	rdi, r14
.label_337:
	xor	eax, eax
	mov	r15b, 1
	jmp	.label_281
.label_348:
	mov	rdi, r14
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r13b
	je	.label_283
.label_349:
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_342
.label_283:
	cmp	byte ptr [rsp + 0xa7], 0
	mov	bl, cl
	je	.label_279
.label_280:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	je	.label_281
	jmp	.label_294
.label_352:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_292
	mov	rdi, r9
	mov	rbx, r9
	mov	rbp, rsi
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_292:
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	r15b, 1
	xor	ebx, ebx
	lea	r14, [rsp + 0x100]
.label_369:
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
	je	.label_331
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x40]
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8b, byte ptr [rsp + 0xa6]
	je	.label_338
	cmp	rbp, -2
	je	.label_345
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_347
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_359:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_353
	bt	rsi, rdx
	jb	.label_357
.label_353:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_359
.label_347:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_309
	xor	r15d, r15d
.label_309:
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	add	rbx, rbp
	mov	r14, rdi
	call	mbsinit
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_369
	jmp	.label_377
.label_386:
	mov	rbp, -1
	xor	r15d, r15d
	jmp	.label_281
.label_341:
	mov	rdi, r14
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_315
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_315
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_315
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_391
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_394
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_279
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_282
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_282:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_323
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_323:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_299
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_299:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_317
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_317:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r15d, r15d
	jmp	.label_281
.label_315:
	xor	eax, eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_281:
	test	r12b, r12b
	je	.label_329
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_321
	jmp	.label_326
	nop	word ptr cs:[rax + rax]
.label_329:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_326
.label_321:
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_333
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_342
	jmp	.label_294
	nop	word ptr cs:[rax + rax]
.label_326:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_294
	jmp	.label_342
.label_333:
	mov	bl, r13b
	mov	rsi, r14
.label_294:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_279
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_355
	mov	al, r11b
	and	al, 1
	jne	.label_355
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_360
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_360:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_325
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_325:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_372
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_372:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_355:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_383
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_383:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_305
.label_361:
	xor	r15d, r15d
	jmp	.label_281
.label_367:
	add	rcx, rsi
	xor	eax, eax
	jmp	.label_393
	nop	word ptr cs:[rax + rax]
.label_275:
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_393:
	test	dl, dl
	je	.label_313
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	je	.label_297
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_346
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	mov	rsi, rbx
.label_346:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_297
	nop	word ptr [rax + rax]
.label_313:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_287
	cmp	r14d, 2
	jne	.label_311
	mov	al, r11b
	and	al, 1
	jne	.label_311
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_354
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_354:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_318
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_318:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_328
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_328:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_311:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_322
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_322:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_379
	mov	dl, r13b
	shr	dl, 6
	or	dl, 0x30
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rdi
.label_379:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_350
	mov	dl, r13b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_350:
	add	qword ptr [rsp + 0xf0], 3
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_297:
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_342
	test	r11b, 1
	je	.label_368
	mov	bl, al
	and	bl, 1
	mov	r14, rdi
	jne	.label_370
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_374
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_374:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_296
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
.label_296:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	rsi, rbx
	jmp	.label_370
	nop	word ptr cs:[rax + rax]
.label_368:
	mov	r14, rdi
.label_370:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_275
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rbx], r13b
	mov	rsi, rdi
	jmp	.label_275
.label_342:
	test	r11b, 1
	je	.label_284
	and	al, 1
	jne	.label_284
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_334
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_334:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_293
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_293:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	bl, r13b
	jmp	.label_305
	nop	dword ptr [rax + rax]
.label_284:
	mov	bl, r13b
	mov	r14, rdi
.label_305:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_312
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
	jmp	.label_312
.label_371:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_319
.label_375:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_319:
	cmp	rcx, r10
	jae	.label_308
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_308:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r13b, 0x30
	cmp	edi, 2
	je	.label_330
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_356
	mov	dl, byte ptr [r9 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_288
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_395
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	mov	rsi, rbx
.label_395:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_286
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsi, rbx
.label_286:
	add	rcx, 3
	xor	r15d, r15d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_281
.label_330:
	xor	r15d, r15d
	jmp	.label_281
.label_356:
	xor	r15d, r15d
	jmp	.label_281
.label_288:
	xor	r15d, r15d
	jmp	.label_281
.label_331:
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_362
.label_338:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_366
.label_345:
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	jae	.label_373
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_384:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax + rbx], 0
	je	.label_382
	lea	rax, [rsi + rbx + 1]
	inc	rbx
	cmp	rax, rbp
	jb	.label_384
	xor	r15d, r15d
	jmp	.label_362
.label_373:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_366:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_362:
	mov	byte ptr [rsp + 0xa6], r8b
	jmp	.label_377
.label_382:
	xor	r15d, r15d
	jmp	.label_362
.label_391:
	xor	r15d, r15d
	jmp	.label_281
.label_394:
	xor	r15d, r15d
	mov	rsi, rbx
	jmp	.label_281
	nop	dword ptr [rax + rax]
.label_392:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	and	cl, 1
	je	.label_303
	or	dl, al
	je	.label_287
.label_303:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12, r9
	test	cl, cl
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	je	.label_301
	or	dl, al
	jne	.label_301
	test	r8b, 1
	jne	.label_302
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_301
	test	r10, r10
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	r15b, dl
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_320
.label_301:
	mov	rdx, qword ptr [rsp + 0xa8]
	test	rdx, rdx
	je	.label_316
	test	cl, cl
	jne	.label_316
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_316
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_336:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_335
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_335:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_336
.label_316:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_343
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_343
.label_279:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_381:
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
.label_385:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_343:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_357:
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_381
.label_287:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	jmp	.label_381
.label_302:
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
	jmp	.label_385
.label_324:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c20
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
	#Procedure 0x404c30

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
	je	.label_397
	mov	qword ptr [rax], rbx
.label_397:
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
	#Procedure 0x404d30
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_398
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_400:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_400
.label_398:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_401
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_402]], OFFSET FLAT:slot0
.label_401:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_399
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_399:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404dd0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x404de0

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
	js	.label_403
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_406
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_409
.label_406:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_405
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
	jne	.label_404
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_404:
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
.label_409:
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
	ja	.label_407
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_408
	mov	rdi, rbx
	call	free
.label_408:
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
.label_407:
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
.label_403:
	call	abort
.label_405:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fb0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fc0
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
	#Procedure 0x404fd0
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
	#Procedure 0x404fe0

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
	#Procedure 0x405020

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
	je	.label_410
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
.label_410:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405080

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
	#Procedure 0x4050c0

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
	#Procedure 0x4050e0
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
	#Procedure 0x405100

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
	mov	rcx,  qword ptr [word ptr [rip + label_411]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_412]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_413]]
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
	#Procedure 0x405170

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
	#Procedure 0x405180

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405190
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051a0

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
	#Procedure 0x4051f0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405200

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
	mov	rax,  qword ptr [word ptr [rip + label_411]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_412]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_413]]
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
	#Procedure 0x405270
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
	#Procedure 0x405290
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
	#Procedure 0x4052b0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052c0
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
	#Procedure 0x4052d0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4052e0
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
	#Procedure 0x4052f0

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
	jne	.label_415
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
	je	.label_414
	mov	eax, OFFSET FLAT:.str.14
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_415
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_415
.label_414:
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
	je	.label_416
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_415
	mov	eax, OFFSET FLAT:.str.18_0
	jmp	.label_415
.label_416:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_415:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4053d0

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
	je	.label_418
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_419
	jmp	.label_417
.label_418:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_417
.label_419:
	mov	eax, 1
	test	bpl, bpl
	je	.label_417
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
.label_417:
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
	#Procedure 0x405460

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
	je	.label_422
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_420
	jmp	.label_421
.label_422:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_421
.label_420:
	mov	eax, 1
	test	bpl, bpl
	je	.label_421
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
.label_421:
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
	#Procedure 0x4054f0

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
	je	.label_424
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_425
	jmp	.label_423
.label_424:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_423
.label_425:
	mov	eax, 1
	test	bpl, bpl
	je	.label_423
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
.label_423:
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
	#Procedure 0x405570

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
	je	.label_428
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_427
	jmp	.label_426
.label_428:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_426
.label_427:
	mov	eax, 1
	test	bpl, bpl
	je	.label_426
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
.label_426:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4055e0

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
	je	.label_431
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_429
	jmp	.label_430
.label_431:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_430
.label_429:
	mov	eax, 1
	test	bpl, bpl
	je	.label_430
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_430:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405650

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
	je	.label_432
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_434
	jmp	.label_433
.label_432:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_433
.label_434:
	mov	eax, 1
	test	bpl, bpl
	je	.label_433
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_433:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4056a0

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
	je	.label_437
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_436
	jmp	.label_435
.label_437:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_435
.label_436:
	mov	eax, 1
	test	bpl, bpl
	je	.label_435
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_435:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4056f0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_440
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_439
	jmp	.label_438
.label_440:
	mov	eax, 1
	test	cl, cl
	je	.label_438
.label_439:
	xor	eax, eax
.label_438:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405720

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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405740

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
	mov	dword ptr [rsp + 0x14], edx
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
	jne	.label_441
	mov	qword ptr [rsp + 8], r15
	mov	r15d, dword ptr [rsp + 0x14]
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, rax
	call	memcmp
	test	eax, eax
	je	.label_446
	xor	ebp, ebp
	jmp	.label_447
.label_441:
	xor	ebp, ebp
	jmp	.label_447
.label_446:
	mov	rdi, r13
	call	dir_name
	mov	rbp, rax
	lea	rdx, [rsp + 0xa8]
	mov	ecx, 0x100
	mov	edi, r12d
	mov	rsi, rbp
	call	fstatat
	test	eax, eax
	je	.label_445
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	rcx, rbp
	call	error
.label_445:
	mov	rdi, rbp
	call	free
	mov	rdi, qword ptr [rsp + 8]
	call	dir_name
	mov	rbx, rax
	lea	rdx, [rsp + 0x18]
	mov	ecx, 0x100
	mov	edi, r15d
	mov	rsi, rbx
	call	fstatat
	test	eax, eax
	je	.label_442
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	rcx, rbx
	call	error
.label_442:
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_444
	mov	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [rsp + 0x18]
	sete	bpl
	jmp	.label_443
.label_444:
	xor	ebp, ebp
.label_443:
	mov	rdi, rbx
	call	free
.label_447:
	mov	al, bpl
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405890

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
	je	.label_450
	mov	edx, OFFSET FLAT:.str_7
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_449
.label_450:
	mov	edx, OFFSET FLAT:.str.1_4
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_449:
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
	mov	esi, OFFSET FLAT:.str.3_2
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_454
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_456]]
.label_594:
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
.label_454:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_453
.label_595:
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
.label_596:
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
.label_597:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_455
.label_598:
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
	jmp	.label_452
.label_599:
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
	jmp	.label_448
.label_600:
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
.label_448:
	mov	qword ptr [rsp + 0x10], rdi
.label_452:
	mov	qword ptr [rsp + 8], rsi
.label_455:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_457
.label_602:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_453:
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
	jmp	.label_451
.label_601:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_0
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
.label_451:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_457:
	call	__fprintf_chk
.label_593:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b80
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_458:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_458
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405bb0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_460:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_459
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_461
	nop	dword ptr [rax]
.label_459:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_461:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_462
	inc	r9
	cmp	r9, 0xa
	jb	.label_460
.label_462:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405c10

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	je	.label_463
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_463:
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
	#Procedure 0x405ca0
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
	mov	esi, OFFSET FLAT:.str.16
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
	#Procedure 0x405d20
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_464
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_464:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d50

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_465
	test	rax, rax
	je	.label_466
.label_465:
	pop	rbx
	ret	
.label_466:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d70
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_467
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_467:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405da0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_468
	test	rbx, rbx
	jne	.label_468
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_468:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_470
	test	rax, rax
	je	.label_469
.label_470:
	pop	rbx
	ret	
.label_469:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405dd0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_471
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_474
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_472
.label_471:
	test	rcx, rcx
	jne	.label_475
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_475:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_473
.label_472:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_474:
	call	xalloc_die
.label_473:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e50

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e60
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e70
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
	#Procedure 0x405ea0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_476
	call	rpl_calloc
	test	rax, rax
	je	.label_476
	pop	rcx
	ret	
.label_476:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ed0

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
	#Procedure 0x405f00

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
	#Procedure 0x405f20

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_5
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
	.align	16
	#Procedure 0x405f50

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	push	rbx
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_478
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_477
.label_478:
	mov	rax, rbx
	pop	rbx
	ret	
.label_477:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f80

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_479
	test	rsi, rsi
	mov	ecx, 1
	je	.label_480
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_480
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_479:
	mov	ecx, 1
.label_480:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405fd0

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
	je	.label_481
	cmp	r15, -2
	jb	.label_481
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_481
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_481:
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
	#Procedure 0x406030

	.globl areadlink_with_size
	.type areadlink_with_size, @function
areadlink_with_size:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], rdi
	cmp	rsi, 0x401
	lea	rax, [rsi + 1]
	mov	r12d, 0x401
	cmovb	r12, rax
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	test	rbx, rbx
	je	.label_487
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	movabs	r15, 0x7fffffffffffffff
	nop	word ptr cs:[rax + rax]
.label_490:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbx
	mov	rdx, r12
	call	readlink
	mov	r13, rax
	test	r13, r13
	jns	.label_482
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	jne	.label_489
.label_482:
	cmp	r13, r12
	jb	.label_486
	mov	rdi, rbx
	call	free
	mov	rax, r12
	shr	rax, 0x3e
	jne	.label_483
	add	r12, r12
	jmp	.label_488
	nop	word ptr cs:[rax + rax]
.label_483:
	cmp	r12, r15
	mov	r12, r15
	jae	.label_485
.label_488:
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_490
	jmp	.label_487
.label_486:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp + 8], rbx
	jmp	.label_487
.label_485:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_484
.label_489:
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
.label_484:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
.label_487:
	mov	rax, qword ptr [rsp + 8]
	add	rsp, 0x18
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
	#Procedure 0x406140
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	cl, sil
	rol	rdi, cl
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406150
	.globl rotr64
	.type rotr64, @function
rotr64:

	mov	cl, sil
	ror	rdi, cl
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406160
	.globl rotl32
	.type rotl32, @function
rotl32:

	mov	cl, sil
	rol	edi, cl
	mov	eax, edi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406170
	.globl rotr32
	.type rotr32, @function
rotr32:

	mov	cl, sil
	ror	edi, cl
	mov	eax, edi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406180
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	mov	cl, sil
	rol	rdi, cl
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406190

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	mov	cl, sil
	ror	rdi, cl
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4061a0
	.globl rotl16
	.type rotl16, @function
rotl16:

	mov	eax, edi
	mov	cl, sil
	shl	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	movzx	eax, di
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4061c0
	.globl rotr16
	.type rotr16, @function
rotr16:

	mov	eax, edi
	mov	cl, sil
	shr	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	movzx	eax, di
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4061e0
	.globl rotl8
	.type rotl8, @function
rotl8:

	mov	eax, edi
	mov	cl, sil
	shl	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	movzx	eax, dil
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406200
	.globl rotr8
	.type rotr8, @function
rotr8:

	mov	eax, edi
	mov	cl, sil
	shr	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	movzx	eax, dil
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406220
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_491
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_491
.label_492:
	ret	
.label_491:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_492
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406250
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_493
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_493:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406270
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406280
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
	#Procedure 0x406290
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_494
.label_495:
	ret	
.label_494:
	cmp	edi, 0x7f
	je	.label_495
	xor	eax, eax
	jmp	.label_495
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4062b0
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
	#Procedure 0x4062c0
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
	#Procedure 0x4062d0
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
	#Procedure 0x4062e0
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
	#Procedure 0x4062f0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_496
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_496
.label_497:
	ret	
.label_496:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_497
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406320
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_498
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_498:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406340

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
	#Procedure 0x406350
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_499
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_499:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406370
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
	#Procedure 0x406380
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
	#Procedure 0x406390

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
	je	.label_501
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_500
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_500
.label_501:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_500
	test	cl, cl
	jne	.label_500
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_500:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406400

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_502
	pop	rcx
	ret	
.label_502:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406420

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2f
	sete	al
	movzx	r14d, al
	call	last_component
	mov	rcx, rax
	sub	rcx, rbx
	nop	
.label_504:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_503
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_504
.label_503:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406460

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	call	dir_len
	mov	rbx, rax
	test	rbx, rbx
	sete	al
	movzx	eax, al
	lea	rdi, [rbx + rax + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_505
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	test	rbx, rbx
	jne	.label_506
	mov	byte ptr [r14 + rbx], 0x2e
	mov	ebx, 1
.label_506:
	mov	byte ptr [r14 + rbx], 0
	mov	rax, r14
.label_505:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4064c0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_507:
	movzx	eax, byte ptr [rdi + 1]
	inc	rdi
	cmp	eax, 0x2f
	je	.label_507
	xor	ecx, ecx
	mov	rax, rdi
	jmp	.label_510
	nop	word ptr cs:[rax + rax]
.label_509:
	inc	rax
	mov	cl, dl
.label_510:
	movzx	esi, byte ptr [rax]
	mov	dl, 1
	cmp	esi, 0x2f
	je	.label_509
	test	sil, sil
	je	.label_511
	mov	dl, cl
	and	dl, 1
	je	.label_508
	xor	ecx, ecx
.label_508:
	test	dl, dl
	cmovne	rdi, rax
	mov	dl, cl
	jmp	.label_509
.label_511:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406520

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_512:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_513
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_512
.label_513:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406550

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_515
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_516
	cmp	byte ptr [rax + 1], 0
	je	.label_514
.label_516:
	mov	esi, OFFSET FLAT:.str.1_6
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_515
.label_514:
	xor	ebx, ebx
.label_515:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x406590

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	mov	cl, byte ptr [rdi]
	xor	eax, eax
	test	cl, cl
	je	.label_517
	inc	rdi
	xor	eax, eax
	nop	dword ptr [rax]
.label_518:
	movsx	rcx, cl
	rol	rax, 9
	add	rax, rcx
	mov	cl, byte ptr [rdi]
	inc	rdi
	test	cl, cl
	jne	.label_518
.label_517:
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4065c0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_7
	cmp	byte ptr [rcx], 0
	je	.label_519
	mov	rax, rcx
.label_519:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4065f0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_520
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_522
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_520
.label_522:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_520
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_521
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_521:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_520:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406670

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_523
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_523
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_523:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4066a0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_524
	ret	
.label_524:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4066c0

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
	jne	.label_525
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_525
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_526
.label_525:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_526:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_527
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_527:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406730

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
	.section	.text
	.align	16
	#Procedure 0x406800

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	16
	#Procedure 0x406810

	.globl __lstat
	.type __lstat, @function
__lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section .text
	.align	16
	#Procedure 0x406820

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
