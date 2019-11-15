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
	#Procedure 0x401620

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
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
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
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, 0xa
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
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
	#Procedure 0x4017a0

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4017d0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401800

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.23
	nop	
.label_10:
	mov	edi, OFFSET FLAT:.str.9
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
	mov	ebx, OFFSET FLAT:.str.9
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.31
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
	mov	esi, OFFSET FLAT:.str.33
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.34
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.9
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.9
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.37
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
	#Procedure 0x401920

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
	mov	r12, rsi
	mov	r15d, edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.12
	mov	esi, OFFSET FLAT:.str.13
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.12
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  0
	mov	byte ptr [byte ptr [rip + print_headers]],  0
	mov	byte ptr [byte ptr [rip + line_end]],  1
	mov	r14b, 1
	xor	ebp, ebp
	mov	r13d, 0xa
	cmp	r15d, 2
	jl	.label_34
	mov	rax, qword ptr [r12 + 8]
	mov	r13d, 0xa
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_33
	movsx	ecx, byte ptr [rax + 1]
	add	ecx, -0x30
	mov	r13d, 0xa
	cmp	ecx, 9
	ja	.label_35
	lea	rcx, [r12 + 8]
	mov	qword ptr [rsp + 8], rcx
	lea	rsi, [rax + 1]
	add	rax, 2
	nop	dword ptr [rax + rax]
.label_40:
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x30
	inc	rax
	cmp	ecx, 0xa
	jb	.label_40
	mov	cl, byte ptr [rax - 1]
	test	cl, cl
	je	.label_43
	xor	edx, edx
	mov	r14b, 1
	mov	rbx, rax
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_28:
	mov	dil, dl
	movsx	ecx, cl
	cmp	ecx, 0x70
	jg	.label_24
	add	ecx, -0x62
	cmp	ecx, 0xb
	ja	.label_16
	xor	r14d, r14d
	xor	edx, edx
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_17]]
.label_440:
	mov	dl, byte ptr [rbx - 1]
	xor	r14d, r14d
	jmp	.label_19
	nop	dword ptr [rax + rax]
.label_24:
	cmp	ecx, 0x71
	je	.label_22
	cmp	ecx, 0x76
	je	.label_21
	cmp	ecx, 0x7a
	jne	.label_16
	mov	byte ptr [byte ptr [rip + line_end]],  0
	mov	dl, dil
	jmp	.label_19
.label_441:
	mov	r14b, 1
	mov	dl, dil
	jmp	.label_19
.label_22:
	mov	ebp, 2
	mov	dl, dil
	jmp	.label_19
.label_21:
	mov	ebp, 1
	mov	dl, dil
	nop	dword ptr [rax]
.label_19:
	mov	cl, byte ptr [rbx]
	inc	rbx
	test	cl, cl
	jne	.label_28
	mov	byte ptr [rax - 1], dl
	test	dl, dl
	je	.label_30
	mov	byte ptr [rax], 0
	jmp	.label_30
.label_34:
	mov	qword ptr [rsp + 8], r12
	jmp	.label_32
.label_33:
	mov	qword ptr [rsp + 8], r12
	jmp	.label_32
.label_35:
	mov	qword ptr [rsp + 8], r12
	jmp	.label_32
.label_43:
	mov	byte ptr [rax - 1], 0
	mov	r14b, 1
	xor	ebp, ebp
.label_30:
	mov	al, r14b
	and	al, 1
	movzx	edi, al
	call	string_to_integer
	mov	r13, rax
	mov	rax, qword ptr [r12]
	mov	qword ptr [r12 + 8], rax
	dec	r15d
.label_32:
	xor	r12d, r12d
	jmp	.label_13
.label_27:
	mov	byte ptr [byte ptr [rip + presume_input_pipe]],  1
	nop	dword ptr [rax + rax]
.label_13:
	mov	edx, OFFSET FLAT:.str.15
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r15d
	mov	rsi, qword ptr [rsp + 8]
	call	getopt_long
	mov	ebx, eax
	cmp	ebx, 0x70
	jle	.label_45
	cmp	ebx, 0x79
	jg	.label_14
	mov	ebp, 2
	cmp	ebx, 0x71
	je	.label_13
	cmp	ebx, 0x76
	jne	.label_15
	mov	ebp, 1
	jmp	.label_13
.label_45:
	cmp	ebx, 0x62
	jle	.label_36
	cmp	ebx, 0x63
	je	.label_18
	cmp	ebx, 0x6e
	jne	.label_15
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	sete	r12b
	jne	.label_20
	inc	rax
	mov	qword ptr [word ptr [rip + optarg]],  rax
.label_20:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	edi, 1
	call	string_to_integer
	mov	r13, rax
	mov	r14b, 1
	jmp	.label_13
.label_14:
	cmp	ebx, 0x7a
	je	.label_26
	cmp	ebx, 0x80
	je	.label_27
	jmp	.label_15
.label_18:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	sete	r12b
	jne	.label_29
	inc	rax
	mov	qword ptr [word ptr [rip + optarg]],  rax
.label_29:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	xor	r14d, r14d
	xor	edi, edi
	call	string_to_integer
	mov	r13, rax
	jmp	.label_13
.label_26:
	mov	byte ptr [byte ptr [rip + line_end]],  0
	jmp	.label_13
.label_36:
	cmp	ebx, -1
	jne	.label_37
	cmp	ebp, 1
	je	.label_38
	test	ebp, ebp
	jne	.label_12
	lea	eax, [r15 - 1]
	cmp	dword ptr [dword ptr [rip + optind]],  eax
	jge	.label_12
.label_38:
	mov	byte ptr [byte ptr [rip + print_headers]],  1
.label_12:
	and	r14b, 1
	jne	.label_42
	test	r13, r13
	jns	.label_42
	test	r12b, r12b
	jne	.label_44
.label_42:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, r15d
	mov	rcx, qword ptr [rsp + 8]
	lea	rax, [rcx + rax*8]
	mov	ebp, OFFSET FLAT:main.default_file_list
	cmovl	rbp, rax
	mov	rdi, qword ptr [rbp]
	mov	bl, 1
	test	rdi, rdi
	je	.label_11
	add	rbp, 8
	mov	bl, 1
	nop	
.label_41:
	test	r12b, r12b
	setne	al
	test	r14b, r14b
	setne	cl
	movzx	edx, cl
	movzx	ecx, al
	mov	rsi, r13
	call	head_file
	and	bl, al
	mov	rdi, qword ptr [rbp]
	add	rbp, 8
	test	rdi, rdi
	jne	.label_41
.label_11:
	movzx	eax,  byte ptr [byte ptr [rip + have_read_stdin]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_23
	xor	edi, edi
	call	close
	test	eax, eax
	js	.label_25
.label_23:
	movzx	eax, bl
	xor	eax, 1
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_37:
	cmp	ebx, 0xffffff7d
	je	.label_31
	cmp	ebx, 0xffffff7e
	jne	.label_15
	xor	edi, edi
	call	usage
.label_31:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.17_0
	mov	r9d, OFFSET FLAT:.str.18_0
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_15:
	lea	eax, [rbx - 0x30]
	cmp	eax, 9
	ja	.label_39
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
.label_39:
	mov	edi, 1
	call	usage
.label_16:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	movsx	ecx, byte ptr [rbx - 1]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	call	error
	mov	edi, 1
	call	usage
.label_44:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	lea	rsi, [rsp + 0x10]
	mov	rdi, r13
	call	umaxtostr
	mov	rdi, rax
	call	quote
	mov	rbx, rax
	mov	edi, 1
	mov	esi, 0x4b
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	rcx, r14
	mov	r8, rbx
	call	error
.label_25:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.10
	xor	eax, eax
	call	error
	.section	.text
	.align	32
	#Procedure 0x401da0

	.globl string_to_integer
	.type string_to_integer, @function
string_to_integer:
	push	rbx
	mov	rbx, rsi
	test	dil, dil
	je	.label_46
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
	jmp	.label_47
.label_46:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
.label_47:
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.38
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	pop	rbx
	jmp	xdectoumax
	.section	.text
	.align	32
	#Procedure 0x401de0

	.globl head_file
	.type head_file, @function
head_file:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15d, ecx
	mov	r12d, edx
	mov	r14, rsi
	mov	rbx, rdi
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	jne	.label_48
	cmp	byte ptr [rbx + 1], 0
	je	.label_52
.label_48:
	xor	esi, esi
	xor	eax, eax
	mov	rdi, rbx
	call	open
	mov	ebp, eax
	test	ebp, ebp
	js	.label_51
	movzx	ecx, r12b
	movzx	r8d, r15b
	mov	rdi, rbx
	mov	esi, ebp
	mov	rdx, r14
	call	head
	mov	r14b, al
	mov	edi, ebp
	call	close
	test	eax, eax
	je	.label_50
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
	jmp	.label_49
.label_51:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.50
.label_49:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	call	error
	jmp	.label_50
.label_52:
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.49
	mov	edx, 5
	call	dcgettext
	movzx	ecx, r12b
	movzx	r8d, r15b
	xor	esi, esi
	mov	rdi, rax
	mov	rdx, r14
	call	head
	mov	r14b, al
.label_50:
	mov	al, r14b
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x401ed0

	.globl head
	.type head, @function
head:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	ebp, r8d
	mov	r15d, ecx
	mov	r14, rdx
	mov	r12d, esi
	mov	rbx, rdi
	movzx	eax,  byte ptr [byte ptr [rip + print_headers]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_59
	mov	rdi, rbx
	call	write_header
.label_59:
	test	bpl, bpl
	je	.label_53
	lea	rsi, [rsp + 8]
	mov	edi, r12d
	call	__fstat
	test	eax, eax
	je	.label_56
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
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
	jmp	.label_57
.label_53:
	mov	rdi, rbx
	mov	esi, r12d
	mov	rdx, r14
	test	r15b, r15b
	je	.label_58
	call	head_lines
	jmp	.label_54
.label_58:
	call	head_bytes
	jmp	.label_54
.label_56:
	mov	al,  byte ptr [byte ptr [rip + presume_input_pipe]]
	and	al, 1
	mov	r13, -1
	jne	.label_55
	lea	rdi, [rsp + 8]
	call	usable_st_size
	test	al, al
	je	.label_55
	xor	ebp, ebp
	xor	esi, esi
	mov	edx, 1
	mov	edi, r12d
	mov	rcx, rbx
	call	elseek
	mov	r13, rax
	test	r13, r13
	js	.label_57
.label_55:
	lea	rcx, [rsp + 8]
	mov	rdi, rbx
	mov	esi, r12d
	mov	rdx, r14
	mov	r8, r13
	test	r15b, r15b
	je	.label_60
	call	elide_tail_lines_file
	jmp	.label_54
.label_60:
	call	elide_tail_bytes_file
.label_54:
	mov	bpl, al
.label_57:
	mov	al, bpl
	add	rsp, 0x98
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
	#Procedure 0x401ff0

	.globl write_header
	.type write_header, @function
write_header:
	push	rax
	mov	rcx, rdi
	mov	al,  byte ptr [byte ptr [rip + write_header.first_file]]
	and	al, 1
	mov	eax, OFFSET FLAT:.str.54
	mov	edx, OFFSET FLAT:.str_0
	cmovne	rdx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.53
	xor	eax, eax
	call	__printf_chk
	mov	byte ptr [byte ptr [rip + write_header.first_file]],  1
	pop	rax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402030

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	mov	eax, 0x2000
	or	eax, dword ptr [rdi + 0x18]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_61
	mov	al, 1
	ret	
.label_61:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402050

	.globl elseek
	.type elseek, @function
elseek:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, rcx
	mov	ebp, edx
	mov	r14, rsi
	call	lseek
	mov	rbx, rax
	test	rbx, rbx
	jns	.label_62
	call	__errno_location
	mov	r12d, dword ptr [rax]
	test	ebp, ebp
	mov	eax, OFFSET FLAT:.str.55
	mov	esi, OFFSET FLAT:.str.56
	cmove	rsi, rax
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	r15, rax
	lea	rsi, [rsp]
	mov	rdi, r14
	call	offtostr
	mov	rbp, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, r13
	mov	rcx, r15
	mov	r8, rbp
	call	error
.label_62:
	mov	rax, rbx
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
	#Procedure 0x4020f0

	.globl elide_tail_lines_file
	.type elide_tail_lines_file, @function
elide_tail_lines_file:
	push	rax
	test	r8, r8
	js	.label_63
	test	byte ptr [byte ptr [rip + presume_input_pipe]],  1
	jne	.label_63
	mov	r9, qword ptr [rcx + 0x30]
	mov	rax, qword ptr [rcx + 0x38]
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	r10d, 0x200
	mov	ecx, 0x200
	cmovb	rcx, rax
	test	rax, rax
	cmovle	rcx, r10
	cmp	r9, rcx
	jle	.label_63
	mov	al, 1
	cmp	r9, r8
	jle	.label_64
	mov	rcx, r8
	mov	r8, r9
	call	elide_tail_lines_seekable
.label_64:
	pop	rcx
	ret	
.label_63:
	mov	rcx, r8
	call	elide_tail_lines_pipe
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402150

	.globl elide_tail_bytes_file
	.type elide_tail_bytes_file, @function
elide_tail_bytes_file:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	test	r8, r8
	js	.label_65
	test	byte ptr [byte ptr [rip + presume_input_pipe]],  1
	jne	.label_65
	mov	rdi, qword ptr [rcx + 0x30]
	mov	rax, qword ptr [rcx + 0x38]
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	ecx, 0x200
	mov	ebp, 0x200
	cmovb	rbp, rax
	test	rax, rax
	cmovle	rbp, rcx
	cmp	rdi, rbp
	jle	.label_65
	xor	eax, eax
	sub	rdi, r8
	cmovns	rax, rdi
	mov	bpl, 1
	sub	rax, rdx
	jbe	.label_66
	mov	edi, esi
	mov	rsi, rax
	call	copy_fd
	test	eax, eax
	je	.label_66
	mov	edi, eax
	mov	rsi, rbx
	call	diagnose_copy_fd_failure
	xor	ebp, ebp
	jmp	.label_66
.label_65:
	mov	rdi, rbx
	mov	rcx, r8
	call	elide_tail_bytes_pipe
	mov	bpl, al
.label_66:
	mov	al, bpl
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4021e0

	.globl head_lines
	.type head_lines, @function
head_lines:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x20a8
	mov	rbp, rdx
	mov	r12d, esi
	mov	r15b, 1
	test	rbp, rbp
	je	.label_67
	mov	qword ptr [rsp + 8], rdi
	lea	r13, [rsp + 0xa0]
	mov	r14d, 0xa
	nop	word ptr cs:[rax + rax]
.label_69:
	mov	edx, 0x2000
	mov	edi, r12d
	mov	rsi, r13
	call	safe_read
	cmp	rax, -1
	je	.label_74
	test	rax, rax
	je	.label_67
	mov	cl,  byte ptr [byte ptr [rip + line_end]]
	and	cl, 1
	mov	ecx, 0
	cmovne	ecx, r14d
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_72:
	cmp	rbx, rax
	jae	.label_71
	movsx	edx, byte ptr [rsp + rbx + 0xa0]
	inc	rbx
	cmp	edx, ecx
	jne	.label_72
	dec	rbp
	jne	.label_72
	jmp	.label_70
	nop	dword ptr [rax + rax]
.label_71:
	mov	rdi, r13
	mov	rsi, rbx
	call	xwrite_stdout
	test	rbp, rbp
	jne	.label_69
	jmp	.label_67
.label_70:
	mov	rbp, rbx
	sub	rbp, rax
	mov	edx, 1
	mov	edi, r12d
	mov	rsi, rbp
	call	lseek
	test	rax, rax
	jns	.label_68
	lea	rsi, [rsp + 0x10]
	mov	edi, r12d
	call	__fstat
	test	eax, eax
	jne	.label_73
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x28]
	cmp	eax, 0x8000
	jne	.label_68
.label_73:
	mov	edx, 1
	mov	edi, r12d
	mov	rsi, rbp
	mov	rcx, qword ptr [rsp + 8]
	call	elseek
.label_68:
	lea	rdi, [rsp + 0xa0]
	mov	rsi, rbx
	call	xwrite_stdout
	jmp	.label_67
.label_74:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
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
	call	error
.label_67:
	mov	al, r15b
	add	rsp, 0x20a8
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
	#Procedure 0x402350

	.globl head_bytes
	.type head_bytes, @function
head_bytes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x2018
	mov	rbx, rdx
	mov	r12d, esi
	mov	r15b, 1
	mov	ebp, 0x2000
	test	rbx, rbx
	je	.label_75
	mov	qword ptr [rsp + 8], rdi
	lea	r13, [rsp + 0x10]
	nop	
.label_76:
	cmp	rbx, rbp
	cmovb	rbp, rbx
	mov	edi, r12d
	mov	rsi, r13
	mov	rdx, rbp
	call	safe_read
	mov	r14, rax
	test	r14, r14
	je	.label_75
	cmp	r14, -1
	je	.label_77
	mov	rdi, r13
	mov	rsi, r14
	call	xwrite_stdout
	sub	rbx, r14
	jne	.label_76
	jmp	.label_75
.label_77:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
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
	call	error
.label_75:
	mov	al, r15b
	add	rsp, 0x2018
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
	#Procedure 0x402410

	.globl elide_tail_lines_pipe
	.type elide_tail_lines_pipe, @function
elide_tail_lines_pipe:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rcx
	mov	qword ptr [rsp], rbx
	mov	qword ptr [rsp + 0x18], rdx
	mov	dword ptr [rsp + 0x24], esi
	mov	qword ptr [rsp + 8], rdi
	mov	edi, 0x2018
	call	xmalloc
	mov	r14, rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14 + 0x2000], xmm0
	mov	qword ptr [r14 + 0x2010], 0
	mov	edi, 0x2018
	call	xmalloc
	xor	r13d, r13d
	mov	r12, r14
	jmp	.label_86
.label_81:
	mov	edi, 0x2018
	call	xmalloc
	nop	word ptr cs:[rax + rax]
.label_86:
	mov	qword ptr [rsp + 0x10], r14
	mov	r14, rax
	lea	r15, [r14 + 0x2008]
	jmp	.label_78
	nop	word ptr cs:[rax + rax]
.label_89:
	add	rbx, rbp
	mov	rdi, r14
	mov	rsi, rbp
	call	xwrite_stdout
.label_78:
	mov	edx, 0x2000
	mov	edi, dword ptr [rsp + 0x24]
	mov	rsi, r14
	call	safe_read
	mov	rbp, rax
	lea	rax, [rbp + 1]
	cmp	rax, 2
	jb	.label_97
	cmp	qword ptr [rsp + 0x18], 0
	je	.label_89
	mov	qword ptr [r14 + 0x2000], rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15], xmm0
	mov	al,  byte ptr [byte ptr [rip + line_end]]
	and	al, 1
	mov	esi, 0
	mov	eax, 0xa
	cmovne	esi, eax
	mov	rdi, r14
	mov	rdx, rbp
	call	memchr
	test	rax, rax
	je	.label_80
	add	rbp, r14
	nop	
.label_91:
	inc	rax
	inc	qword ptr [r15]
	mov	cl,  byte ptr [byte ptr [rip + line_end]]
	and	cl, 1
	mov	esi, 0
	mov	ecx, 0xa
	cmovne	esi, ecx
	mov	rdx, rbp
	sub	rdx, rax
	mov	rdi, rax
	call	memchr
	test	rax, rax
	jne	.label_91
.label_80:
	add	r13, qword ptr [r14 + 0x2008]
	mov	rdx, qword ptr [r14 + 0x2000]
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rbp + 0x2000]
	lea	rax, [rdi + rdx]
	cmp	rax, 0x1fff
	ja	.label_92
	add	rdi, rbp
	mov	rsi, r14
	call	memcpy
	mov	rax, qword ptr [r14 + 0x2000]
	add	qword ptr [rbp + 0x2000], rax
	mov	rax, qword ptr [r14 + 0x2008]
	add	qword ptr [rbp + 0x2008], rax
	jmp	.label_78
.label_92:
	mov	qword ptr [rbp + 0x2010], r14
	mov	rax, r13
	sub	rax, qword ptr [r12 + 0x2008]
	cmp	rax, qword ptr [rsp + 0x18]
	jbe	.label_81
	mov	rsi, qword ptr [r12 + 0x2000]
	add	rbx, rsi
	mov	rdi, r12
	call	xwrite_stdout
	sub	r13, qword ptr [r12 + 0x2008]
	mov	rax, r12
	mov	r12, qword ptr [r12 + 0x2010]
	jmp	.label_86
.label_97:
	mov	rdi, r14
	call	free
	cmp	rbp, -1
	je	.label_93
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rsi + 0x2000]
	test	rax, rax
	je	.label_83
	movsx	eax, byte ptr [rax + rsi - 1]
	mov	cl,  byte ptr [byte ptr [rip + line_end]]
	xor	edx, edx
	and	cl, 1
	mov	ecx, 0xa
	cmove	ecx, edx
	cmp	eax, ecx
	je	.label_83
	inc	qword ptr [rsi + 0x2008]
	inc	r13
.label_83:
	mov	r14, qword ptr [rsp + 0x18]
	lea	rbp, [r12 + 0x2008]
	mov	rax, r13
	sub	rax, qword ptr [r12 + 0x2008]
	mov	r15, r12
	jmp	.label_82
	nop	
.label_95:
	mov	rsi, qword ptr [r15 + 0x2000]
	add	rbx, rsi
	mov	rdi, r15
	call	xwrite_stdout
	sub	r13, qword ptr [rbp]
	mov	r15, qword ptr [r15 + 0x2010]
	lea	rbp, [r15 + 0x2008]
	mov	rax, r13
	sub	rax, qword ptr [r15 + 0x2008]
.label_82:
	cmp	rax, r14
	ja	.label_95
	cmp	r13, r14
	jbe	.label_96
	mov	rsi, r15
	je	.label_87
	mov	rax, qword ptr [r15 + 0x2000]
	add	rax, r15
	mov	qword ptr [rsp + 0x18], rax
	sub	r14, r13
	mov	r13d, 0xa
	mov	rax, r15
	nop	dword ptr [rax + rax]
.label_88:
	mov	cl,  byte ptr [byte ptr [rip + line_end]]
	and	cl, 1
	mov	esi, 0
	cmovne	esi, r13d
	mov	rdx, qword ptr [rsp + 0x18]
	sub	rdx, rax
	mov	rdi, rax
	call	memchr
	test	rax, rax
	mov	esi, 0
	je	.label_87
	inc	rax
	inc	qword ptr [rbp]
	inc	r14
	mov	rsi, rax
	jne	.label_88
.label_87:
	sub	rsi, r15
	add	rbx, rsi
	mov	rdi, r15
	call	xwrite_stdout
.label_96:
	mov	r14, qword ptr [rsp + 8]
	mov	r15, qword ptr [rsp]
	mov	r13b, 1
	jmp	.label_94
.label_93:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	r14, qword ptr [rsp + 8]
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	call	error
	mov	r15, qword ptr [rsp]
.label_94:
	test	r12, r12
	je	.label_84
	nop	word ptr cs:[rax + rax]
.label_79:
	mov	rbp, qword ptr [r12 + 0x2010]
	mov	rdi, r12
	call	free
	test	rbp, rbp
	mov	r12, rbp
	jne	.label_79
.label_84:
	test	r15, r15
	js	.label_85
	xor	ebp, ebp
	xor	edx, edx
	mov	edi, dword ptr [rsp + 0x24]
	mov	rsi, rbx
	mov	rcx, r14
	call	elseek
	test	rax, rax
	js	.label_90
	mov	bpl, r13b
.label_90:
	mov	r13b, bpl
.label_85:
	and	r13b, 1
	mov	al, r13b
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
	#Procedure 0x4027b0

	.globl elide_tail_lines_seekable
	.type elide_tail_lines_seekable, @function
elide_tail_lines_seekable:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x2028
	mov	qword ptr [rsp + 8], rcx
	mov	r13, rdx
	mov	r12d, esi
	mov	rbp, rdi
	mov	qword ptr [rsp + 0x10], rbp
	mov	rax, r8
	sub	rax, rcx
	mov	rcx, rax
	sar	rcx, 0x3f
	shr	rcx, 0x33
	add	rcx, rax
	and	rcx, 0xffffffffffffe000
	sub	rax, rcx
	mov	ebx, 0x2000
	cmovne	rbx, rax
	sub	r8, rbx
	mov	qword ptr [rsp + 0x18], r8
	xor	r15d, r15d
	xor	edx, edx
	mov	edi, r12d
	mov	rsi, r8
	mov	rcx, rbp
	call	elseek
	test	rax, rax
	js	.label_98
	lea	r14, [rsp + 0x20]
	mov	edi, r12d
	mov	rsi, r14
	mov	rdx, rbx
	call	safe_read
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_107
	mov	dword ptr [rsp + 4], r12d
	test	r13, r13
	mov	r12, r13
	je	.label_100
	test	rbx, rbx
	mov	r12, r13
	je	.label_100
	movsx	eax, byte ptr [rbx + r14 - 1]
	mov	cl,  byte ptr [byte ptr [rip + line_end]]
	xor	edx, edx
	and	cl, 1
	mov	ecx, 0xa
	cmove	ecx, edx
	cmp	eax, ecx
	setne	al
	movzx	eax, al
	mov	r12, r13
	sub	r12, rax
.label_100:
	mov	ecx, 0xa
.label_99:
	mov	al,  byte ptr [byte ptr [rip + line_end]]
	and	al, 1
	mov	ebp, 0
	cmovne	ebp, ecx
	neg	r12
	nop	word ptr cs:[rax + rax]
.label_101:
	test	rbx, rbx
	je	.label_103
	test	r13, r13
	je	.label_104
	mov	rdi, r14
	mov	esi, ebp
	mov	rdx, rbx
	call	memrchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_103
	sub	rbx, r14
	jmp	.label_105
	nop	word ptr cs:[rax + rax]
.label_104:
	dec	rbx
.label_105:
	inc	r12
	cmp	r12, 1
	jne	.label_101
	jmp	.label_102
	nop	word ptr cs:[rax + rax]
.label_103:
	mov	rsi, qword ptr [rsp + 0x18]
	cmp	rsi, qword ptr [rsp + 8]
	mov	r15b, 1
	je	.label_98
	add	rsi, -0x2000
	mov	qword ptr [rsp + 0x18], rsi
	xor	r15d, r15d
	xor	edx, edx
	mov	ebx, dword ptr [rsp + 4]
	mov	edi, ebx
	mov	rcx, qword ptr [rsp + 0x10]
	call	elseek
	test	rax, rax
	js	.label_98
	mov	edx, 0x2000
	mov	edi, ebx
	mov	rsi, r14
	call	safe_read
	mov	rbx, rax
	test	rbx, rbx
	mov	r15b, 1
	je	.label_98
	neg	r12
	cmp	rbx, -1
	mov	ecx, 0xa
	jne	.label_99
.label_107:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
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
	jmp	.label_98
.label_102:
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 8]
	sub	rbp, rsi
	mov	r14d, dword ptr [rsp + 4]
	jle	.label_106
	xor	r15d, r15d
	xor	edx, edx
	mov	edi, r14d
	mov	rcx, qword ptr [rsp + 0x10]
	call	elseek
	test	rax, rax
	js	.label_98
	mov	edi, r14d
	mov	rsi, rbp
	call	copy_fd
	test	eax, eax
	je	.label_106
	mov	edi, eax
	mov	rsi, qword ptr [rsp + 0x10]
	call	diagnose_copy_fd_failure
	xor	r15d, r15d
	jmp	.label_98
.label_106:
	lea	rsi, [rbx + 1]
	lea	rdi, [rsp + 0x20]
	call	xwrite_stdout
	mov	rax, qword ptr [rsp + 0x18]
	lea	rsi, [rax + rbx + 1]
	xor	edx, edx
	mov	edi, r14d
	mov	rcx, qword ptr [rsp + 0x10]
	call	elseek
	test	rax, rax
	setns	r15b
.label_98:
	mov	al, r15b
	add	rsp, 0x2028
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
	#Procedure 0x402a30

	.globl xwrite_stdout
	.type xwrite_stdout, @function
xwrite_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rsi
	test	rbx, rbx
	je	.label_108
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
	cmp	rax, rbx
	jb	.label_109
.label_108:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_109:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	clearerr_unlocked
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.58
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:.str.59
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ab0

	.globl copy_fd
	.type copy_fd, @function
copy_fd:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x2000
	mov	rbx, rsi
	mov	r15d, edi
	test	rbx, rbx
	je	.label_110
	mov	r12d, 0x2000
	lea	r14, [rsp]
	nop	word ptr cs:[rax + rax]
.label_113:
	cmp	rbx, 0x2000
	mov	rdx, rbx
	cmova	rdx, r12
	mov	edi, r15d
	mov	rsi, r14
	call	safe_read
	mov	rbp, rax
	mov	eax, 1
	cmp	rbp, -1
	je	.label_112
	test	rbp, rbp
	jne	.label_111
	mov	eax, 2
	cmp	rbx, rbp
	jne	.label_112
.label_111:
	mov	rdi, r14
	mov	rsi, rbp
	call	xwrite_stdout
	sub	rbx, rbp
	jne	.label_113
.label_110:
	xor	eax, eax
.label_112:
	add	rsp, 0x2000
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b40

	.globl diagnose_copy_fd_failure
	.type diagnose_copy_fd_failure, @function
diagnose_copy_fd_failure:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rsi
	cmp	edi, 2
	je	.label_114
	cmp	edi, 1
	jne	.label_115
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	jmp	.label_116
.label_114:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
.label_116:
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	pop	rbx
	pop	r14
	pop	rbp
	jmp	error
.label_115:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402bd0

	.globl elide_tail_bytes_pipe
	.type elide_tail_bytes_pipe, @function
elide_tail_bytes_pipe:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	rbx, rcx
	mov	dword ptr [rsp + 0x6c], esi
	mov	qword ptr [rsp + 0x10], rdi
	cmp	rdx, 0x100000
	ja	.label_132
	lea	r15, [rdx + 0x2000]
	mov	r13, rdx
	mov	edi, 2
	mov	rsi, r15
	call	xnmalloc
	mov	qword ptr [rsp + 0x70], rax
	add	rax, r15
	mov	qword ptr [rsp + 0x78], rax
	mov	r12b, 1
	mov	qword ptr [rsp + 0x40], rbx
	mov	qword ptr [rsp + 0x18], rbx
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_142:
	movzx	ebx, bl
	mov	rsi, qword ptr [rsp + rbx*8 + 0x70]
	mov	edi, dword ptr [rsp + 0x6c]
	mov	rdx, r15
	call	full_read
	mov	rbp, rax
	cmp	rbp, r15
	mov	eax, 0
	mov	r14, r13
	jae	.label_133
	call	__errno_location
	mov	r13d, dword ptr [rax]
	test	r13d, r13d
	jne	.label_128
	mov	rax, r14
	sub	rax, rbp
	mov	ecx, 0
	cmovb	rax, rcx
	test	r12b, r12b
	cmovne	rax, rcx
	mov	cl, 1
	mov	qword ptr [rsp + 0x60], rcx
.label_133:
	test	r12b, r12b
	jne	.label_122
	mov	rsi, r14
	sub	rsi, rax
	add	qword ptr [rsp + 0x40], rsi
	mov	rax, rbx
	xor	rax, 1
	mov	rdi, qword ptr [rsp + rax*8 + 0x70]
	add	rdi, 0x2000
	call	xwrite_stdout
.label_122:
	mov	r13, r14
	sub	rbp, r14
	jbe	.label_130
	add	qword ptr [rsp + 0x40], rbp
	mov	rdi, qword ptr [rsp + rbx*8 + 0x70]
	mov	rsi, rbp
	call	xwrite_stdout
.label_130:
	xor	bl, 1
	mov	r14b, 1
	xor	r12d, r12d
	mov	rax, qword ptr [rsp + 0x60]
	test	al, 1
	je	.label_142
	jmp	.label_138
.label_132:
	mov	ecx, edx
	and	ecx, 0x1fff
	mov	qword ptr [rsp], rcx
	mov	eax, 0x2000
	sub	rax, rcx
	mov	qword ptr [rsp + 8], rax
	add	rdx, rax
	shr	rdx, 0xd
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rdx + 1]
	mov	qword ptr [rsp + 0x38], rax
	cmp	rax, 0x10
	mov	ecx, 0x10
	cmovb	rcx, rax
	mov	qword ptr [rsp + 0x28], rcx
	shr	rax, 1
	mov	qword ptr [rsp + 0x20], rax
	xor	edx, edx
	mov	r12d, 1
	mov	qword ptr [rsp + 0x40], rbx
	mov	qword ptr [rsp + 0x18], rbx
	mov	r13d, 0
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	xor	ebx, ebx
	xor	r14d, r14d
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	nop	word ptr cs:[rax + rax]
.label_131:
	cmp	rdx, rbx
	jne	.label_139
	mov	qword ptr [rsp + 0x58], r12
	test	rdx, rdx
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdi, qword ptr [rsp + 0x60]
	je	.label_127
	cmp	rdx, qword ptr [rsp + 0x20]
	lea	rbp, [rdx + rdx]
	cmova	rbp, qword ptr [rsp + 0x38]
.label_127:
	mov	edx, 8
	mov	rsi, rbp
	call	xnrealloc
	mov	r12, rax
	mov	qword ptr [rsp + 0x50], rbp
	jmp	.label_126
	nop	
.label_139:
	mov	qword ptr [rsp + 0x50], rdx
	mov	qword ptr [rsp + 0x58], r12
	mov	r12, qword ptr [rsp + 0x60]
.label_126:
	test	r14b, 1
	jne	.label_134
	mov	edi, 0x2000
	call	xmalloc
	mov	qword ptr [r12 + rbx*8], rax
	lea	r13, [rbx + 1]
.label_134:
	mov	rsi, qword ptr [r12 + rbx*8]
	mov	edx, 0x2000
	mov	edi, dword ptr [rsp + 0x6c]
	call	full_read
	mov	r15, rax
	cmp	r15, 0x1fff
	ja	.label_137
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	al, 1
	mov	qword ptr [rsp + 0x48], rax
	test	ebp, ebp
	jne	.label_143
.label_137:
	cmp	rbx, qword ptr [rsp + 0x30]
	mov	bpl, 1
	je	.label_120
	mov	bpl, r14b
.label_120:
	test	bpl, 1
	mov	rcx, qword ptr [rsp + 0x58]
	jne	.label_123
	mov	qword ptr [rsp + 0x60], r12
	jmp	.label_125
	nop	word ptr [rax + rax]
.label_123:
	add	qword ptr [rsp + 0x40], r15
	mov	rdi, qword ptr [r12 + rcx*8]
	mov	qword ptr [rsp + 0x60], r12
	mov	rsi, r15
	mov	rbx, rcx
	call	xwrite_stdout
	mov	rcx, rbx
.label_125:
	lea	rax, [rcx + 1]
	xor	edx, edx
	div	qword ptr [rsp + 0x38]
	mov	r12, rdx
	mov	rax, qword ptr [rsp + 0x48]
	test	al, 1
	mov	rbx, rcx
	mov	r14b, bpl
	mov	rdx, qword ptr [rsp + 0x50]
	je	.label_131
	mov	r14b, 1
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_140
	test	bpl, 1
	jne	.label_119
	cmp	rcx, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x18]
	jne	.label_117
	sub	r15, qword ptr [rsp]
	add	qword ptr [rsp + 0x40], r15
	mov	rax, qword ptr [rsp + 0x60]
	mov	rdi, qword ptr [rax + r12*8]
	mov	r12, rax
	mov	rsi, r15
	call	xwrite_stdout
	jmp	.label_121
.label_128:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x10]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, rbp
	call	error
.label_138:
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
	mov	rbp, qword ptr [rsp + 0x18]
	jmp	.label_118
.label_143:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x10]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r15
	call	error
	mov	rbp, qword ptr [rsp + 0x18]
	jmp	.label_121
.label_140:
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r12, qword ptr [rsp + 0x60]
	jmp	.label_121
.label_119:
	mov	esi, 0x2000
	sub	rsi, r15
	add	qword ptr [rsp + 0x40], rax
	mov	rbx, qword ptr [rsp + 0x60]
	mov	rdi, qword ptr [rbx + rcx*8]
	add	rdi, r15
	mov	rbp, rax
	sub	rbp, rsi
	jae	.label_144
	mov	rsi, rax
	jmp	.label_141
.label_117:
	mov	r12, qword ptr [rsp + 0x60]
	jmp	.label_121
.label_144:
	call	xwrite_stdout
	mov	rdi, qword ptr [rbx + r12*8]
	mov	rsi, rbp
.label_141:
	call	xwrite_stdout
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r12, rbx
.label_121:
	test	r13, r13
	je	.label_124
	mov	rbx, r12
	nop	word ptr cs:[rax + rax]
.label_129:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 8
	dec	r13
	jne	.label_129
.label_124:
	mov	rdi, r12
	call	free
.label_118:
	test	rbp, rbp
	js	.label_136
	xor	ebx, ebx
	xor	edx, edx
	mov	edi, dword ptr [rsp + 0x6c]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x10]
	call	elseek
	test	rax, rax
	js	.label_135
	mov	bl, r14b
.label_135:
	mov	r14b, bl
.label_136:
	and	r14b, 1
	mov	al, r14b
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403010
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403020
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403030

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_145
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_147
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_147
.label_145:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_146
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_147:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_148
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_146:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_148:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
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
	#Procedure 0x4030f0

	.globl full_read
	.type full_read, @function
full_read:
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
	je	.label_149
	nop	word ptr [rax + rax]
.label_151:
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r15
	call	safe_read
	cmp	rax, -1
	je	.label_149
	test	rax, rax
	je	.label_150
	add	r14, rax
	add	rbx, rax
	sub	r15, rax
	jne	.label_151
	jmp	.label_149
.label_150:
	call	__errno_location
	mov	dword ptr [rax], 0
.label_149:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x403150

	.globl offtostr
	.type offtostr, @function
offtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_152
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_153:
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
	ja	.label_153
	jmp	.label_155
.label_152:
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_154:
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
	ja	.label_154
	mov	byte ptr [rsi], 0x2d
.label_155:
	mov	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403210

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_156:
	mov	rax, rcx
	mul	r8
	shr	rdx, 3
	lea	eax, [rdx + rdx]
	lea	eax, [rax + rax*4]
	mov	edi, ecx
	sub	edi, eax
	or	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	cmp	rcx, 9
	mov	rcx, rdx
	ja	.label_156
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403260

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_157
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_158
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_158
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_159
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_159:
	mov	rbx, r14
.label_158:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_157:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_4
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403310
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
	#Procedure 0x403350
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
	#Procedure 0x403360
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
	#Procedure 0x403370

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
	#Procedure 0x4033b0
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
	#Procedure 0x4033d0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_160
	test	rdx, rdx
	je	.label_160
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_160:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403400
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
	#Procedure 0x403480

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
.label_219:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r13d
	cmp	r13d, 0xa
	ja	.label_231
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_249]]
.label_466:
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
.label_467:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	test	r15b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_266
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_266
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
.label_166:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_280
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_280:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_166
.label_266:
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
	jmp	.label_177
.label_459:
	xor	r14d, r14d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	xor	edi, edi
	jmp	.label_177
.label_462:
	mov	al, 1
.label_460:
	mov	r15b, 1
.label_463:
	test	r15b, 1
	mov	cl, 1
	je	.label_200
	mov	cl, al
.label_200:
	mov	al, cl
.label_461:
	mov	r14d, 2
	test	r15b, 1
	jne	.label_267
	test	r10, r10
	je	.label_281
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_207
.label_267:
	xor	ecx, ecx
	jmp	.label_207
.label_464:
	mov	r14d, 5
	test	r15b, 1
	jne	.label_209
	test	r10, r10
	je	.label_224
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_217
.label_465:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	dil, 1
	jmp	.label_177
.label_281:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_207:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xa8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	jmp	.label_177
.label_209:
	xor	eax, eax
	jmp	.label_217
.label_224:
	mov	eax, 1
.label_217:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	sil, 1
	mov	dil, r15b
	nop	dword ptr [rax + rax]
.label_177:
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
	jmp	.label_194
	nop	dword ptr [rax + rax]
.label_226:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	sar	r15b, 7
	and	r15b, r8b
	mov	r8b, r15b
	inc	rsi
.label_194:
	cmp	rbp, -1
	je	.label_183
	cmp	rsi, rbp
	jne	.label_185
	jmp	.label_187
	nop	dword ptr [rax]
.label_183:
	cmp	byte ptr [r9 + rsi], 0
	je	.label_187
.label_185:
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_191
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_193
	cmp	rbp, -1
	jne	.label_193
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
.label_193:
	cmp	rbx, rbp
	jbe	.label_213
.label_191:
	mov	rdi, r14
	mov	dword ptr [rsp + 0xec], 0
.label_257:
	movzx	r13d, byte ptr [r9 + rsi]
	cmp	r13, 0x7e
	ja	.label_218
	xor	edx, edx
	mov	r15b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_223]]
.label_480:
	test	rsi, rsi
	jne	.label_172
	jmp	.label_222
	nop	word ptr cs:[rax + rax]
.label_213:
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
	jne	.label_253
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_257
	jmp	.label_195
.label_253:
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	jmp	.label_257
.label_484:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_274
	test	rsi, rsi
	jne	.label_277
	cmp	rbp, 1
	je	.label_222
	xor	r15d, r15d
	jmp	.label_169
.label_473:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_255
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_195
	cmp	edi, 2
	jne	.label_161
	mov	al, r11b
	and	al, 1
	jne	.label_165
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_168
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_168:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_240
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_240:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_184
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_184:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r11b, 1
	mov	rcx, rax
	jmp	.label_190
.label_474:
	mov	bl, 0x62
	jmp	.label_202
.label_475:
	mov	cl, 0x74
	jmp	.label_198
.label_476:
	mov	bl, 0x76
	jmp	.label_202
.label_477:
	mov	bl, 0x66
	jmp	.label_202
.label_478:
	mov	cl, 0x72
	jmp	.label_198
.label_481:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_205
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_204
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
	jae	.label_211
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_211:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_229
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_229:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_243
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_243:
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	jmp	.label_279
.label_482:
	mov	r14, rdi
	cmp	r14d, 5
	je	.label_256
	cmp	r14d, 2
	jne	.label_259
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_204
.label_259:
	mov	rdi, r14
	jmp	.label_172
.label_483:
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_262
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_204
	mov	rdi, r14
	jmp	.label_264
.label_218:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_269
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
.label_167:
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
	ja	.label_174
	test	dl, dl
	je	.label_174
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_169
.label_274:
	test	rsi, rsi
	jne	.label_179
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_179
.label_222:
	mov	dl, 1
.label_479:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_195
	xor	eax, eax
	mov	r15b, dl
	jmp	.label_169
.label_255:
	cmp	dword ptr [rsp + 0x5c], 0
	je	.label_172
	mov	r14, rdi
	inc	rsi
	jmp	.label_194
.label_205:
	mov	rdi, r14
.label_279:
	xor	eax, eax
	mov	r15b, 1
	jmp	.label_169
.label_262:
	mov	rdi, r14
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r13b
	je	.label_198
.label_264:
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_203
.label_198:
	cmp	byte ptr [rsp + 0xa7], 0
	mov	bl, cl
	je	.label_195
.label_202:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	je	.label_169
	jmp	.label_212
.label_269:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_214
	mov	rdi, r9
	mov	rbx, r9
	mov	rbp, rsi
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_214:
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	r15b, 1
	xor	ebx, ebx
	lea	r14, [rsp + 0x100]
.label_235:
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
	je	.label_247
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x40]
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8b, byte ptr [rsp + 0xa6]
	je	.label_252
	cmp	rbp, -2
	je	.label_260
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_261
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_238:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_270
	bt	rsi, rdx
	jb	.label_273
.label_270:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_238
.label_261:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_233
	xor	r15d, r15d
.label_233:
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	add	rbx, rbp
	mov	r14, rdi
	call	mbsinit
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_235
	jmp	.label_167
.label_179:
	mov	rbp, -1
	xor	r15d, r15d
	jmp	.label_169
.label_256:
	mov	rdi, r14
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_172
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_172
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_172
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_186
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_189
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_195
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_197
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_197:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_268
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_268:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_210
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_210:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_248
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_248:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r15d, r15d
	jmp	.label_169
.label_172:
	xor	eax, eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_169:
	test	r12b, r12b
	je	.label_275
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_237
	jmp	.label_234
	nop	word ptr cs:[rax + rax]
.label_275:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_234
.label_237:
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_250
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_203
	jmp	.label_212
	nop	word ptr cs:[rax + rax]
.label_234:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_212
	jmp	.label_203
.label_250:
	mov	bl, r13b
	mov	rsi, r14
.label_212:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_195
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_272
	mov	al, r11b
	and	al, 1
	jne	.label_272
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_276
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_276:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_216
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_216:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_162
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_162:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_272:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_173
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_173:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_182
.label_277:
	xor	r15d, r15d
	jmp	.label_169
.label_174:
	add	rcx, rsi
	xor	eax, eax
	jmp	.label_188
	nop	word ptr cs:[rax + rax]
.label_192:
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_188:
	test	dl, dl
	je	.label_239
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	je	.label_199
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_271
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	mov	rsi, rbx
.label_271:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_199
	nop	word ptr [rax + rax]
.label_239:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_204
	cmp	r14d, 2
	jne	.label_225
	mov	al, r11b
	and	al, 1
	jne	.label_225
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_227
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_227:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_232
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_232:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_245
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_245:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_225:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_230
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_230:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_221
	mov	dl, r13b
	shr	dl, 6
	or	dl, 0x30
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rdi
.label_221:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_265
	mov	dl, r13b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_265:
	add	qword ptr [rsp + 0xf0], 3
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_199:
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_203
	test	r11b, 1
	je	.label_278
	mov	bl, al
	and	bl, 1
	mov	r14, rdi
	jne	.label_180
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_164
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_164:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_181
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
.label_181:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	rsi, rbx
	jmp	.label_180
	nop	word ptr cs:[rax + rax]
.label_278:
	mov	r14, rdi
.label_180:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_192
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rbx], r13b
	mov	rsi, rdi
	jmp	.label_192
.label_203:
	test	r11b, 1
	je	.label_201
	and	al, 1
	jne	.label_201
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_263
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_263:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_208
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_208:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	bl, r13b
	jmp	.label_182
	nop	dword ptr [rax + rax]
.label_201:
	mov	bl, r13b
	mov	r14, rdi
.label_182:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_226
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
	jmp	.label_226
.label_161:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_190
.label_165:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_190:
	cmp	rcx, r10
	jae	.label_241
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_241:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r13b, 0x30
	cmp	edi, 2
	je	.label_246
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_254
	mov	dl, byte ptr [r9 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_236
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_220
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	mov	rsi, rbx
.label_220:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_258
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsi, rbx
.label_258:
	add	rcx, 3
	xor	r15d, r15d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_169
.label_246:
	xor	r15d, r15d
	jmp	.label_169
.label_254:
	xor	r15d, r15d
	jmp	.label_169
.label_236:
	xor	r15d, r15d
	jmp	.label_169
.label_247:
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_178
.label_252:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_282
.label_260:
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	jae	.label_163
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_175:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax + rbx], 0
	je	.label_171
	lea	rax, [rsi + rbx + 1]
	inc	rbx
	cmp	rax, rbp
	jb	.label_175
	xor	r15d, r15d
	jmp	.label_178
.label_163:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_282:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_178:
	mov	byte ptr [rsp + 0xa6], r8b
	jmp	.label_167
.label_171:
	xor	r15d, r15d
	jmp	.label_178
.label_186:
	xor	r15d, r15d
	jmp	.label_169
.label_189:
	xor	r15d, r15d
	mov	rsi, rbx
	jmp	.label_169
	nop	dword ptr [rax + rax]
.label_187:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	and	cl, 1
	je	.label_196
	or	dl, al
	je	.label_204
.label_196:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12, r9
	test	cl, cl
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	je	.label_206
	or	dl, al
	jne	.label_206
	test	r8b, 1
	jne	.label_215
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_206
	test	r10, r10
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	r15b, dl
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_219
.label_206:
	mov	rdx, qword ptr [rsp + 0xa8]
	test	rdx, rdx
	je	.label_228
	test	cl, cl
	jne	.label_228
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_228
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_251:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_242
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_242:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_251
.label_228:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_244
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_244
.label_195:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_170:
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
.label_176:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_244:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_273:
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_170
.label_204:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	jmp	.label_170
.label_215:
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
	jmp	.label_176
.label_231:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404690
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
	#Procedure 0x4046a0

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
	je	.label_283
	mov	qword ptr [rax], rbx
.label_283:
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
	#Procedure 0x4047a0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_284
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_286:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_286
.label_284:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_287
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_288]], OFFSET FLAT:slot0
.label_287:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_285
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_285:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404840

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x404850

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
	js	.label_289
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_294
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_290
.label_294:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_293
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
	jne	.label_292
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_292:
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
.label_290:
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
	ja	.label_295
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_291
	mov	rdi, rbx
	call	free
.label_291:
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
.label_295:
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
.label_289:
	call	abort
.label_293:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a20

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a30
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
	#Procedure 0x404a40
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
	#Procedure 0x404a50

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
	#Procedure 0x404a90

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
	je	.label_296
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
.label_296:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404af0

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
	#Procedure 0x404b30

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
	#Procedure 0x404b50
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
	#Procedure 0x404b70

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
	mov	rcx,  qword ptr [word ptr [rip + label_297]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_298]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_299]]
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
	#Procedure 0x404be0

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
	#Procedure 0x404bf0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c00
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c10

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
	#Procedure 0x404c60

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404c70

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
	mov	rax,  qword ptr [word ptr [rip + label_297]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_298]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_299]]
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
	#Procedure 0x404ce0
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
	#Procedure 0x404d00
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
	#Procedure 0x404d20

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d30
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
	#Procedure 0x404d40

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404d50

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
	#Procedure 0x404d60

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
	jne	.label_301
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
	je	.label_300
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_301
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_301
.label_300:
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
	je	.label_302
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_301
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_301
.label_302:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_301:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404e40

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
	je	.label_304
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_305
	jmp	.label_303
.label_304:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_303
.label_305:
	mov	eax, 1
	test	bpl, bpl
	je	.label_303
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
.label_303:
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
	#Procedure 0x404ed0

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
	je	.label_308
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_306
	jmp	.label_307
.label_308:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_307
.label_306:
	mov	eax, 1
	test	bpl, bpl
	je	.label_307
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
.label_307:
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
	#Procedure 0x404f60

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
	je	.label_309
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_311
	jmp	.label_310
.label_309:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_310
.label_311:
	mov	eax, 1
	test	bpl, bpl
	je	.label_310
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
.label_310:
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
	#Procedure 0x404fe0

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
	je	.label_314
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_313
	jmp	.label_312
.label_314:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_312
.label_313:
	mov	eax, 1
	test	bpl, bpl
	je	.label_312
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
.label_312:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405050

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
	je	.label_317
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_315
	jmp	.label_316
.label_317:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_316
.label_315:
	mov	eax, 1
	test	bpl, bpl
	je	.label_316
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_316:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050c0

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
	je	.label_318
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_320
	jmp	.label_319
.label_318:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_319
.label_320:
	mov	eax, 1
	test	bpl, bpl
	je	.label_319
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_319:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405110

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
	je	.label_323
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_322
	jmp	.label_321
.label_323:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_321
.label_322:
	mov	eax, 1
	test	bpl, bpl
	je	.label_321
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_321:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405160

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_325
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_326
	jmp	.label_324
.label_325:
	mov	eax, 1
	test	cl, cl
	je	.label_324
.label_326:
	xor	eax, eax
.label_324:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405190

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
.label_328:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_327
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_328
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
	jb	.label_327
	cmp	eax, 0x16
	mov	rbx, rcx
	mov	r13, rbp
	je	.label_328
.label_327:
	mov	rax, rbp
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
	.align	32
	#Procedure 0x405220

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
	je	.label_335
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_333
.label_335:
	mov	edx, OFFSET FLAT:.str.1_1
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_333:
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
	ja	.label_338
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_329]]
.label_431:
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
.label_338:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_337
.label_432:
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
.label_433:
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
.label_434:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_334
.label_435:
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
	jmp	.label_336
.label_436:
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
	jmp	.label_332
.label_437:
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
.label_332:
	mov	qword ptr [rsp + 0x10], rdi
.label_336:
	mov	qword ptr [rsp + 8], rsi
.label_334:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_330
.label_439:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_337:
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
	jmp	.label_331
.label_438:
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
.label_331:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_330:
	call	__fprintf_chk
.label_430:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405510
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_339:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_339
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405540

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_341:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_340
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_342
	nop	dword ptr [rax]
.label_340:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_342:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_343
	inc	r9
	cmp	r9, 0xa
	jb	.label_341
.label_343:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4055a0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	je	.label_344
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_344:
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
	#Procedure 0x405630
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
	.align	32
	#Procedure 0x4056b0

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_345
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_345:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4056e0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_346
	test	rax, rax
	je	.label_347
.label_346:
	pop	rbx
	ret	
.label_347:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405700

	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:
	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_348
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_348:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405730

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_349
	test	rbx, rbx
	jne	.label_349
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_349:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_351
	test	rax, rax
	je	.label_350
.label_351:
	pop	rbx
	ret	
.label_350:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405760

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_352
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_355
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_353
.label_352:
	test	rcx, rcx
	jne	.label_356
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_356:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_354
.label_353:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_355:
	call	xalloc_die
.label_354:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057e0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057f0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405800
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
	#Procedure 0x405830
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_357
	call	rpl_calloc
	test	rax, rax
	je	.label_357
	pop	rcx
	ret	
.label_357:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405860

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
	#Procedure 0x405890
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
	#Procedure 0x4058b0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4058e0

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
	je	.label_359
	cmp	eax, 1
	je	.label_361
	test	eax, eax
	jne	.label_358
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r12
	jb	.label_363
	cmp	rbx, r15
	jbe	.label_362
.label_363:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_360
	mov	dword ptr [rax], 0x4b
	jmp	.label_358
.label_359:
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_358
.label_361:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_358
.label_360:
	mov	dword ptr [rax], 0x22
.label_358:
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
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, ebp
	mov	esi, ebx
	mov	rcx, r14
	call	error
.label_362:
	mov	rax, qword ptr [rsp]
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
	#Procedure 0x4059b0

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
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4059e0

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
	jae	.label_384
	mov	qword ptr [rsp], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_374:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_374
	test	rbp, rbp
	lea	rcx, [rsp + 0x10]
	cmovne	rcx, rbp
	movzx	eax, al
	mov	r15d, 4
	cmp	eax, 0x2d
	je	.label_365
	mov	rdi, rbx
	mov	rbp, rcx
	mov	rsi, rbp
	mov	edx, r14d
	call	strtoumax
	mov	rcx, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_386
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_387
	cmp	eax, 0x22
	jne	.label_365
	mov	r12d, 1
.label_387:
	test	rbp, rbp
	jne	.label_369
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	jmp	.label_371
.label_386:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_365
	mov	rbx, rcx
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_365
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	mov	rcx, rbx
	je	.label_365
	mov	qword ptr [rsp + 8], 1
	xor	r12d, r12d
.label_369:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_385
	mov	r13, rcx
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_364
	mov	r15d, 0x400
	mov	r14d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_378
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_372
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r14d, 1
	mov	rbx, r13
	test	rax, rax
	je	.label_376
	mov	rax, qword ptr [rbx]
	movsx	ecx, byte ptr [rax + 1]
	mov	r14d, 1
	cmp	ecx, 0x42
	je	.label_381
	cmp	ecx, 0x44
	je	.label_381
	cmp	ecx, 0x69
	jne	.label_376
	movzx	eax, byte ptr [rax + 2]
	mov	r14d, 3
	cmp	eax, 0x42
	je	.label_376
	mov	r14d, 1
	jmp	.label_376
.label_381:
	mov	r15d, 0x3e8
	mov	r14d, 2
.label_376:
	mov	rax, qword ptr [rbx]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x59
	jg	.label_367
	lea	ecx, [rax - 0x42]
	cmp	ecx, 0xe
	ja	.label_370
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_382]]
.label_486:
	lea	rdi, [rsp + 8]
	mov	esi, 0x400
	jmp	.label_373
.label_367:
	cmp	eax, 0x73
	jg	.label_375
	lea	ecx, [rax - 0x62]
	cmp	ecx, 0xb
	ja	.label_377
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_379]]
.label_449:
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_373
.label_370:
	cmp	eax, 0x54
	je	.label_383
	cmp	eax, 0x59
	jne	.label_364
	lea	rdi, [rsp + 8]
	mov	edx, 8
	jmp	.label_366
.label_375:
	cmp	eax, 0x74
	je	.label_383
	cmp	eax, 0x77
	jne	.label_364
	lea	rdi, [rsp + 8]
	mov	esi, 2
.label_373:
	call	bkm_scale
	jmp	.label_368
.label_450:
	lea	rdi, [rsp + 8]
	mov	edx, 3
	jmp	.label_366
.label_451:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	jmp	.label_366
.label_452:
	lea	rdi, [rsp + 8]
	mov	edx, 2
	jmp	.label_366
.label_383:
	lea	rdi, [rsp + 8]
	mov	edx, 4
	jmp	.label_366
.label_377:
	cmp	eax, 0x5a
	jne	.label_364
	lea	rdi, [rsp + 8]
	mov	edx, 7
	jmp	.label_366
.label_364:
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_380
.label_487:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	jmp	.label_366
.label_488:
	lea	rdi, [rsp + 8]
	mov	edx, 5
.label_366:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_368:
	or	eax, r12d
	mov	rcx, qword ptr [rbx]
	lea	rdx, [rcx + r14]
	mov	qword ptr [rbx], rdx
	cmp	byte ptr [rcx + r14], 0
	je	.label_388
	or	eax, 2
.label_388:
	mov	r12d, eax
.label_385:
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rsp + 8]
.label_371:
	mov	qword ptr [rcx], rax
.label_380:
	mov	r15d, r12d
.label_365:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_378:
	mov	rbx, r13
	jmp	.label_376
.label_372:
	mov	rbx, r13
	jmp	.label_376
.label_384:
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405cf0

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
	#Procedure 0x405d20

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
	je	.label_389
	nop	word ptr cs:[rax + rax]
.label_390:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebx, eax
	dec	ebp
	jne	.label_390
.label_389:
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
	#Procedure 0x405d60

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_391
	test	rsi, rsi
	mov	ecx, 1
	je	.label_392
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_392
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_391:
	mov	ecx, 1
.label_392:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405db0

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
	je	.label_393
	cmp	r15, -2
	jb	.label_393
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_393
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_393:
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
	#Procedure 0x405e10
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_394
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_394
.label_395:
	ret	
.label_394:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_395
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e40
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_396
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_396:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405e60
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e70
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
	#Procedure 0x405e80
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_397
.label_398:
	ret	
.label_397:
	cmp	edi, 0x7f
	je	.label_398
	xor	eax, eax
	jmp	.label_398
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ea0
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
	#Procedure 0x405eb0
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
	#Procedure 0x405ec0
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
	#Procedure 0x405ed0
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
	#Procedure 0x405ee0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_399
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_399
.label_400:
	ret	
.label_399:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_400
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f10
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_401
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_401:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405f30

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
	#Procedure 0x405f40
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_402
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_402:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405f60
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
	#Procedure 0x405f70
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
	#Procedure 0x405f80

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
	je	.label_403
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_404
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_404
.label_403:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_404
	test	cl, cl
	jne	.label_404
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_404:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ff0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_406
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_407
	cmp	byte ptr [rax + 1], 0
	je	.label_405
.label_407:
	mov	esi, OFFSET FLAT:.str.1_4
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_406
.label_405:
	xor	ebx, ebx
.label_406:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x406030

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
	je	.label_408
	mov	rax, rcx
.label_408:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406060

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_409
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_411
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_409
.label_411:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_409
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_410
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_410:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_409:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4060e0

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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406110

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_413
	ret	
.label_413:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406130

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
	jne	.label_414
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_414
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_415
.label_414:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_415:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_416
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_416:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4061a0

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
	#Procedure 0x406270

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat