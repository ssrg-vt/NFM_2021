	.section	.text
	.align	32
	#Procedure 0x401620

	.globl usage
	.type usage, @function
usage:
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	mov	rsp, rsp
	jne	.label_7
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.1
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	rbp, rbp
	mov	edi, 1
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	edi, 1
	mov	edx, 0xa
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	nop	
	call	emit_stdin_note
	lea	rsi, [rsi]
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rcx, rax
	mov	rbp, rbp
	mov	edi, 1
	mov	edx, 0xa
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	call	__printf_chk
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	nop	
	mov	edi, ebp
	call	exit
.label_7:
	mov	rsp, rsp
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rdx, rax
	nop	
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	nop	
	call	__fprintf_chk
	mov	rbp, rbp
	mov	edi, ebp
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401810

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	mov	rsp, rsp
	push	rax
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401840

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.22
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401880

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	lea	rdi, [rdi]
	push	r14
	lea	rdi, [rdi]
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.23
	nop	word ptr [rax + rax]
.label_10:
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.9
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	je	.label_9
	nop	
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	lea	rdi, [rdi]
	test	rsi, rsi
	jne	.label_10
.label_9:
	mov	rax, qword ptr [rbx + 8]
	nop	
	test	rax, rax
	mov	ebx, OFFSET FLAT:.str.9
	mov	rsp, rsp
	cmovne	rbx, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.31
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.17
	nop	
	mov	ecx, OFFSET FLAT:.str.18
	lea	rsi, [rsi]
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	nop	
	xor	esi, esi
	call	setlocale
	mov	rsp, rsp
	test	rax, rax
	mov	rsp, rsp
	je	.label_8
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.33
	lea	rdi, [rdi]
	mov	edx, 3
	lea	rsi, [rsi]
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.34
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
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
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rdi, [rdi]
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.37
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str_0
	cmove	rcx, rax
	mov	rbp, rbp
	mov	edi, 1
	nop	
	xor	eax, eax
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	jmp	__printf_chk
	nop	
	.section	.text
	.align	32
	#Procedure 0x401a00

	.globl main
	.type main, @function
main:
	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x28
	mov	rbp, rbp
	mov	r12, rsi
	mov	r15d, edi
	mov	rsp, rsp
	mov	rdi, qword ptr [r12]
	lea	rdi, [rdi]
	call	set_program_name
	mov	rbp, rbp
	mov	edi, 6
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.12
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.13
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.12
	nop	
	call	textdomain
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  0
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + print_headers]],  0
	mov	byte ptr [byte ptr [rip + line_end]],  1
	lea	rdi, [rdi]
	mov	r14b, 1
	nop	
	xor	ebp, ebp
	lea	rdi, [rdi]
	mov	r13d, 0xa
	mov	rsp, rsp
	cmp	r15d, 2
	jl	.label_39
	mov	rax, qword ptr [r12 + 8]
	mov	r13d, 0xa
	movzx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2d
	lea	rdi, [rdi]
	jne	.label_36
	movsx	ecx, byte ptr [rax + 1]
	add	ecx, -0x30
	lea	rsi, [rsi]
	mov	r13d, 0xa
	cmp	ecx, 9
	mov	rsp, rsp
	ja	.label_34
	lea	rcx, [r12 + 8]
	mov	qword ptr [rsp + 8], rcx
	mov	rsp, rsp
	lea	rsi, [rax + 1]
	nop	
	add	rax, 2
	nop	word ptr [rax + rax]
.label_11:
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x30
	mov	rsp, rsp
	inc	rax
	nop	
	cmp	ecx, 0xa
	nop	
	jb	.label_11
	mov	cl, byte ptr [rax - 1]
	mov	rsp, rsp
	test	cl, cl
	nop	
	je	.label_14
	mov	rbp, rbp
	xor	edx, edx
	nop	
	mov	r14b, 1
	mov	rbp, rbp
	mov	rbx, rax
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_41:
	mov	dil, dl
	mov	rbp, rbp
	movsx	ecx, cl
	cmp	ecx, 0x70
	lea	rsi, [rsi]
	jg	.label_19
	add	ecx, -0x62
	lea	rdi, [rdi]
	cmp	ecx, 0xb
	ja	.label_23
	xor	r14d, r14d
	xor	edx, edx
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_25]]
.label_453:
	mov	dl, byte ptr [rbx - 1]
	mov	rbp, rbp
	xor	r14d, r14d
	nop	
	jmp	.label_26
	nop	dword ptr [rax + rax]
.label_19:
	cmp	ecx, 0x71
	je	.label_31
	lea	rdi, [rdi]
	cmp	ecx, 0x76
	je	.label_32
	nop	
	cmp	ecx, 0x7a
	jne	.label_23
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + line_end]],  0
	mov	dl, dil
	jmp	.label_26
.label_454:
	nop	
	mov	r14b, 1
	mov	dl, dil
	jmp	.label_26
.label_31:
	mov	ebp, 2
	mov	dl, dil
	mov	rbp, rbp
	jmp	.label_26
.label_32:
	lea	rdi, [rdi]
	mov	ebp, 1
	mov	rbp, rbp
	mov	dl, dil
	nop	word ptr [rax + rax]
.label_26:
	nop	
	mov	cl, byte ptr [rbx]
	inc	rbx
	test	cl, cl
	jne	.label_41
	nop	
	mov	byte ptr [rax - 1], dl
	test	dl, dl
	mov	rsp, rsp
	je	.label_45
	mov	rbp, rbp
	mov	byte ptr [rax], 0
	jmp	.label_45
.label_39:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], r12
	mov	rsp, rsp
	jmp	.label_12
.label_36:
	mov	qword ptr [rsp + 8], r12
	lea	rdi, [rdi]
	jmp	.label_12
.label_34:
	mov	qword ptr [rsp + 8], r12
	lea	rdi, [rdi]
	jmp	.label_12
.label_14:
	lea	rdi, [rdi]
	mov	byte ptr [rax - 1], 0
	lea	rsi, [rsi]
	mov	r14b, 1
	nop	
	xor	ebp, ebp
.label_45:
	mov	al, r14b
	nop	
	and	al, 1
	movzx	edi, al
	call	string_to_integer
	mov	r13, rax
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 8], rax
	dec	r15d
.label_12:
	nop	
	xor	r12d, r12d
	nop	
	jmp	.label_15
.label_18:
	mov	byte ptr [byte ptr [rip + presume_input_pipe]],  1
.label_15:
	mov	edx, OFFSET FLAT:.str.15
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	nop	
	mov	edi, r15d
	mov	rsi, qword ptr [rsp + 8]
	mov	rbp, rbp
	call	getopt_long
	nop	
	mov	ebx, eax
	mov	rsp, rsp
	cmp	ebx, 0x70
	jle	.label_27
	cmp	ebx, 0x79
	mov	rsp, rsp
	jg	.label_30
	mov	rbp, rbp
	mov	ebp, 2
	cmp	ebx, 0x71
	nop	
	je	.label_15
	cmp	ebx, 0x76
	mov	rbp, rbp
	jne	.label_20
	mov	rbp, rbp
	mov	ebp, 1
	mov	rbp, rbp
	jmp	.label_15
	nop	
.label_27:
	lea	rsi, [rsi]
	cmp	ebx, 0x62
	jle	.label_37
	cmp	ebx, 0x63
	mov	rbp, rbp
	je	.label_38
	nop	
	cmp	ebx, 0x6e
	lea	rdi, [rdi]
	jne	.label_20
	nop	
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	movzx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	lea	rdi, [rdi]
	sete	r12b
	mov	rsp, rsp
	jne	.label_44
	inc	rax
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + optarg]],  rax
.label_44:
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	call	string_to_integer
	mov	r13, rax
	mov	r14b, 1
	mov	rsp, rsp
	jmp	.label_15
	nop	word ptr [rax + rax]
.label_30:
	nop	
	cmp	ebx, 0x7a
	je	.label_16
	nop	
	cmp	ebx, 0x80
	je	.label_18
	jmp	.label_20
.label_38:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	sete	r12b
	jne	.label_22
	inc	rax
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + optarg]],  rax
.label_22:
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	xor	r14d, r14d
	xor	edi, edi
	call	string_to_integer
	mov	r13, rax
	jmp	.label_15
.label_16:
	mov	byte ptr [byte ptr [rip + line_end]],  0
	nop	
	jmp	.label_15
.label_37:
	lea	rsi, [rsi]
	cmp	ebx, -1
	jne	.label_33
	cmp	ebp, 1
	lea	rsi, [rsi]
	je	.label_35
	test	ebp, ebp
	jne	.label_28
	mov	rbp, rbp
	lea	eax, [r15 - 1]
	cmp	dword ptr [dword ptr [rip + optind]],  eax
	jge	.label_28
.label_35:
	mov	byte ptr [byte ptr [rip + print_headers]],  1
.label_28:
	lea	rsi, [rsi]
	and	r14b, 1
	jne	.label_40
	nop	
	test	r13, r13
	jns	.label_40
	test	r12b, r12b
	nop	
	jne	.label_43
.label_40:
	nop	
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	nop	
	cmp	eax, r15d
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 8]
	lea	rax, [rcx + rax*8]
	mov	ebp, OFFSET FLAT:main.default_file_list
	nop	
	cmovl	rbp, rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp]
	lea	rsi, [rsi]
	mov	bl, 1
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_17
	mov	rsp, rsp
	add	rbp, 8
	mov	bl, 1
	nop	dword ptr [rax]
.label_21:
	test	r12b, r12b
	setne	al
	lea	rsi, [rsi]
	test	r14b, r14b
	mov	rbp, rbp
	setne	cl
	movzx	edx, cl
	movzx	ecx, al
	mov	rbp, rbp
	mov	rsi, r13
	mov	rsp, rsp
	call	head_file
	lea	rsi, [rsi]
	and	bl, al
	mov	rdi, qword ptr [rbp]
	add	rbp, 8
	lea	rsi, [rsi]
	test	rdi, rdi
	jne	.label_21
.label_17:
	movzx	eax,  byte ptr [byte ptr [rip + have_read_stdin]]
	lea	rdi, [rdi]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_24
	xor	edi, edi
	call	close
	test	eax, eax
	js	.label_29
.label_24:
	movzx	eax, bl
	lea	rsi, [rsi]
	xor	eax, 1
	add	rsp, 0x28
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_33:
	lea	rsi, [rsi]
	cmp	ebx, 0xffffff7d
	je	.label_42
	mov	rbp, rbp
	cmp	ebx, 0xffffff7e
	mov	rbp, rbp
	jne	.label_20
	xor	edi, edi
	mov	rsp, rsp
	call	usage
.label_42:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], 0
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.17_0
	mov	r9d, OFFSET FLAT:.str.18_0
	xor	eax, eax
	mov	rsp, rsp
	call	version_etc
	mov	rbp, rbp
	xor	edi, edi
	call	exit
.label_20:
	lea	eax, [rbx - 0x30]
	nop	
	cmp	eax, 9
	mov	rbp, rbp
	ja	.label_13
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
.label_13:
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	call	usage
.label_23:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rbx - 1]
	mov	rbp, rbp
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	lea	rdi, [rdi]
	call	error
	mov	edi, 1
	call	usage
.label_43:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	r14, rax
	lea	rsi, [rsp + 0x10]
	mov	rdi, r13
	call	umaxtostr
	lea	rsi, [rsi]
	mov	rdi, rax
	call	quote
	mov	rbp, rbp
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, 0x4b
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	rcx, r14
	mov	rbp, rbp
	mov	r8, rbx
	call	error
.label_29:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	nop	
	mov	edx, OFFSET FLAT:.str.10
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402020

	.globl string_to_integer
	.type string_to_integer, @function
string_to_integer:
	push	rbx
	mov	rbx, rsi
	mov	rbp, rbp
	test	dil, dil
	mov	rsp, rsp
	je	.label_46
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.39
	lea	rsi, [rsi]
	jmp	.label_47
.label_46:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
.label_47:
	mov	rsp, rsp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	nop	
	xor	esi, esi
	mov	rdx, -1
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.38
	xor	r9d, r9d
	mov	rdi, rbx
	mov	rbp, rbp
	mov	r8, rax
	nop	
	pop	rbx
	lea	rdi, [rdi]
	jmp	xdectoumax
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402090

	.globl head_file
	.type head_file, @function
head_file:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15d, ecx
	mov	r12d, edx
	lea	rsi, [rsi]
	mov	r14, rsi
	mov	rbx, rdi
	nop	
	movzx	eax, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	jne	.label_50
	cmp	byte ptr [rbx + 1], 0
	je	.label_52
.label_50:
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	open
	mov	rsp, rsp
	mov	ebp, eax
	mov	rsp, rsp
	test	ebp, ebp
	js	.label_51
	movzx	ecx, r12b
	movzx	r8d, r15b
	mov	rdi, rbx
	mov	rbp, rbp
	mov	esi, ebp
	mov	rdx, r14
	call	head
	nop	
	mov	r14b, al
	mov	edi, ebp
	call	close
	test	eax, eax
	je	.label_48
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
	nop	
	jmp	.label_49
.label_51:
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	mov	r15d, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.50
.label_49:
	mov	rbp, rbp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, r15d
	nop	
	mov	rdx, rbp
	mov	rsp, rsp
	call	error
	jmp	.label_48
.label_52:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.49
	mov	edx, 5
	call	dcgettext
	movzx	ecx, r12b
	movzx	r8d, r15b
	mov	rsp, rsp
	xor	esi, esi
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rdx, r14
	call	head
	mov	rsp, rsp
	mov	r14b, al
.label_48:
	mov	al, r14b
	mov	rbp, rbp
	pop	rbx
	nop	
	pop	r12
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4021d0

	.globl head
	.type head, @function
head:
	push	rbp
	nop	
	push	r15
	push	r14
	nop	
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x98
	lea	rsi, [rsi]
	mov	ebp, r8d
	mov	r15d, ecx
	mov	rsp, rsp
	mov	r14, rdx
	mov	rsp, rsp
	mov	r12d, esi
	mov	rsp, rsp
	mov	rbx, rdi
	movzx	eax,  byte ptr [byte ptr [rip + print_headers]]
	nop	
	and	eax, 1
	nop	
	cmp	eax, 1
	jne	.label_55
	mov	rdi, rbx
	call	write_header
.label_55:
	lea	rsi, [rsi]
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_56
	lea	rsi, [rsi]
	lea	rsi, [rsp + 8]
	mov	rbp, rbp
	mov	edi, r12d
	lea	rdi, [rdi]
	call	__fstat
	test	eax, eax
	je	.label_60
	call	__errno_location
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	xor	ebp, ebp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	r15, rax
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, rbx
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	esi, r14d
	mov	rsp, rsp
	mov	rdx, r15
	lea	rdi, [rdi]
	call	error
	jmp	.label_54
.label_56:
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	esi, r12d
	mov	rdx, r14
	test	r15b, r15b
	mov	rsp, rsp
	je	.label_58
	nop	
	call	head_lines
	jmp	.label_53
.label_58:
	call	head_bytes
	mov	rbp, rbp
	jmp	.label_53
.label_60:
	mov	al,  byte ptr [byte ptr [rip + presume_input_pipe]]
	and	al, 1
	lea	rdi, [rdi]
	mov	r13, -1
	mov	rsp, rsp
	jne	.label_59
	lea	rdi, [rsp + 8]
	lea	rsi, [rsi]
	call	usable_st_size
	nop	
	test	al, al
	je	.label_59
	mov	rbp, rbp
	xor	ebp, ebp
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	edi, r12d
	lea	rdi, [rdi]
	mov	rcx, rbx
	call	elseek
	mov	r13, rax
	test	r13, r13
	js	.label_54
.label_59:
	mov	rbp, rbp
	lea	rcx, [rsp + 8]
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	esi, r12d
	mov	rdx, r14
	lea	rsi, [rsi]
	mov	r8, r13
	mov	rbp, rbp
	test	r15b, r15b
	je	.label_57
	lea	rdi, [rdi]
	call	elide_tail_lines_file
	jmp	.label_53
.label_57:
	lea	rsi, [rsi]
	call	elide_tail_bytes_file
.label_53:
	mov	rbp, rbp
	mov	bpl, al
.label_54:
	lea	rsi, [rsi]
	mov	al, bpl
	add	rsp, 0x98
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402390

	.globl write_header
	.type write_header, @function
write_header:
	lea	rdi, [rdi]
	push	rax
	nop	
	mov	rcx, rdi
	mov	al,  byte ptr [byte ptr [rip + write_header.first_file]]
	and	al, 1
	mov	eax, OFFSET FLAT:.str.54
	mov	edx, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	cmovne	rdx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.53
	mov	rsp, rsp
	xor	eax, eax
	call	__printf_chk
	mov	byte ptr [byte ptr [rip + write_header.first_file]],  1
	pop	rax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023e0

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	mov	rsp, rsp
	mov	eax, 0x2000
	or	eax, dword ptr [rdi + 0x18]
	nop	
	and	eax, 0xf000
	mov	rsp, rsp
	cmp	eax, 0xa000
	mov	rbp, rbp
	jne	.label_61
	nop	
	mov	al, 1
	ret	
.label_61:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402410

	.globl elseek
	.type elseek, @function
elseek:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x18
	lea	rdi, [rdi]
	mov	r15, rcx
	mov	rbp, rbp
	mov	ebp, edx
	mov	r14, rsi
	mov	rbp, rbp
	call	lseek
	mov	rbx, rax
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	rbp, rbp
	jns	.label_62
	call	__errno_location
	mov	r12d, dword ptr [rax]
	lea	rdi, [rdi]
	test	ebp, ebp
	mov	eax, OFFSET FLAT:.str.55
	mov	esi, OFFSET FLAT:.str.56
	mov	rsp, rsp
	cmove	rsi, rax
	xor	edi, edi
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	r13, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	mov	rsp, rsp
	call	quotearg_n_style_colon
	mov	rbp, rbp
	mov	r15, rax
	mov	rbp, rbp
	lea	rsi, [rsp]
	mov	rdi, r14
	nop	
	call	offtostr
	nop	
	mov	rbp, rax
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	esi, r12d
	nop	
	mov	rdx, r13
	nop	
	mov	rcx, r15
	mov	rbp, rbp
	mov	r8, rbp
	call	error
.label_62:
	mov	rax, rbx
	add	rsp, 0x18
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4024f0

	.globl elide_tail_lines_file
	.type elide_tail_lines_file, @function
elide_tail_lines_file:
	mov	rsp, rsp
	push	rax
	test	r8, r8
	js	.label_63
	mov	rsp, rsp
	test	byte ptr [byte ptr [rip + presume_input_pipe]],  1
	lea	rdi, [rdi]
	jne	.label_63
	mov	r9, qword ptr [rcx + 0x30]
	mov	rax, qword ptr [rcx + 0x38]
	movabs	rcx, 0x2000000000000001
	nop	
	cmp	rax, rcx
	lea	rdi, [rdi]
	mov	r10d, 0x200
	mov	rbp, rbp
	mov	ecx, 0x200
	nop	
	cmovb	rcx, rax
	lea	rsi, [rsi]
	test	rax, rax
	nop	
	cmovle	rcx, r10
	cmp	r9, rcx
	jle	.label_63
	mov	al, 1
	mov	rbp, rbp
	cmp	r9, r8
	jle	.label_64
	mov	rcx, r8
	mov	r8, r9
	nop	
	call	elide_tail_lines_seekable
.label_64:
	pop	rcx
	lea	rsi, [rsi]
	ret	
.label_63:
	mov	rcx, r8
	call	elide_tail_lines_pipe
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402570

	.globl elide_tail_bytes_file
	.type elide_tail_bytes_file, @function
elide_tail_bytes_file:
	mov	rsp, rsp
	push	rbp
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	rbx, rdi
	test	r8, r8
	lea	rdi, [rdi]
	js	.label_65
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [rip + presume_input_pipe]],  1
	jne	.label_65
	mov	rdi, qword ptr [rcx + 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + 0x38]
	movabs	rcx, 0x2000000000000001
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rdi, [rdi]
	mov	ecx, 0x200
	mov	rsp, rsp
	mov	ebp, 0x200
	cmovb	rbp, rax
	test	rax, rax
	cmovle	rbp, rcx
	lea	rdi, [rdi]
	cmp	rdi, rbp
	lea	rsi, [rsi]
	jle	.label_65
	xor	eax, eax
	sub	rdi, r8
	mov	rbp, rbp
	cmovns	rax, rdi
	nop	
	mov	bpl, 1
	sub	rax, rdx
	mov	rbp, rbp
	jbe	.label_66
	mov	edi, esi
	mov	rsi, rax
	mov	rsp, rsp
	call	copy_fd
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_66
	mov	edi, eax
	mov	rsi, rbx
	mov	rsp, rsp
	call	diagnose_copy_fd_failure
	xor	ebp, ebp
	nop	
	jmp	.label_66
.label_65:
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rcx, r8
	mov	rsp, rsp
	call	elide_tail_bytes_pipe
	lea	rsi, [rsi]
	mov	bpl, al
.label_66:
	mov	rbp, rbp
	mov	al, bpl
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402650

	.globl head_lines
	.type head_lines, @function
head_lines:
	nop	
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x20a8
	lea	rdi, [rdi]
	mov	rbp, rdx
	mov	rsp, rsp
	mov	r12d, esi
	mov	rbp, rbp
	mov	r15b, 1
	lea	rdi, [rdi]
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_67
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rdi
	nop	
	lea	r13, [rsp + 0xa0]
	mov	rsp, rsp
	mov	r14d, 0xa
	nop	word ptr cs:[rax + rax]
.label_73:
	mov	edx, 0x2000
	mov	edi, r12d
	mov	rsi, r13
	nop	
	call	safe_read
	cmp	rax, -1
	je	.label_68
	mov	rsp, rsp
	test	rax, rax
	je	.label_67
	mov	cl,  byte ptr [byte ptr [rip + line_end]]
	and	cl, 1
	lea	rdi, [rdi]
	mov	ecx, 0
	cmovne	ecx, r14d
	xor	ebx, ebx
	nop	
.label_70:
	cmp	rbx, rax
	nop	
	jae	.label_72
	movsx	edx, byte ptr [rsp + rbx + 0xa0]
	inc	rbx
	nop	
	cmp	edx, ecx
	lea	rsi, [rsi]
	jne	.label_70
	lea	rdi, [rdi]
	dec	rbp
	jne	.label_70
	jmp	.label_71
	nop	word ptr cs:[rax + rax]
.label_72:
	mov	rdi, r13
	mov	rsi, rbx
	call	xwrite_stdout
	mov	rbp, rbp
	test	rbp, rbp
	mov	rbp, rbp
	jne	.label_73
	lea	rdi, [rdi]
	jmp	.label_67
.label_71:
	mov	rbp, rbx
	sub	rbp, rax
	lea	rdi, [rdi]
	mov	edx, 1
	mov	rsp, rsp
	mov	edi, r12d
	mov	rsi, rbp
	call	lseek
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	jns	.label_69
	lea	rsi, [rsp + 0x10]
	lea	rsi, [rsi]
	mov	edi, r12d
	mov	rsp, rsp
	call	__fstat
	mov	rsp, rsp
	test	eax, eax
	jne	.label_74
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x28]
	nop	
	cmp	eax, 0x8000
	lea	rdi, [rdi]
	jne	.label_69
.label_74:
	lea	rdi, [rdi]
	mov	edx, 1
	mov	edi, r12d
	mov	rsi, rbp
	mov	rcx, qword ptr [rsp + 8]
	mov	rsp, rsp
	call	elseek
.label_69:
	lea	rdi, [rsp + 0xa0]
	mov	rsi, rbx
	call	xwrite_stdout
	jmp	.label_67
.label_68:
	nop	
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	nop	
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_67:
	mov	rsp, rsp
	mov	al, r15b
	lea	rsi, [rsi]
	add	rsp, 0x20a8
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x402830

	.globl head_bytes
	.type head_bytes, @function
head_bytes:
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	mov	rsp, rsp
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	sub	rsp, 0x2018
	mov	rbx, rdx
	mov	r12d, esi
	mov	r15b, 1
	mov	ebp, 0x2000
	test	rbx, rbx
	nop	
	je	.label_75
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rdi
	nop	
	lea	r13, [rsp + 0x10]
.label_76:
	mov	rsp, rsp
	cmp	rbx, rbp
	cmovb	rbp, rbx
	mov	edi, r12d
	nop	
	mov	rsi, r13
	mov	rsp, rsp
	mov	rdx, rbp
	call	safe_read
	lea	rdi, [rdi]
	mov	r14, rax
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_75
	cmp	r14, -1
	je	.label_77
	mov	rdi, r13
	mov	rsi, r14
	mov	rbp, rbp
	call	xwrite_stdout
	nop	
	sub	rbx, r14
	lea	rdi, [rdi]
	jne	.label_76
	nop	
	jmp	.label_75
.label_77:
	mov	rsp, rsp
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	r15d, r15d
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rbp, rbp
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	error
.label_75:
	mov	al, r15b
	lea	rdi, [rdi]
	add	rsp, 0x2018
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402930

	.globl elide_tail_lines_pipe
	.type elide_tail_lines_pipe, @function
elide_tail_lines_pipe:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	push	r12
	push	rbx
	nop	
	sub	rsp, 0x28
	mov	rbp, rbp
	mov	rbx, rcx
	mov	rsp, rsp
	mov	qword ptr [rsp], rbx
	mov	qword ptr [rsp + 0x18], rdx
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x24], esi
	nop	
	mov	qword ptr [rsp + 8], rdi
	mov	edi, 0x2018
	call	xmalloc
	mov	r14, rax
	mov	rbp, rbp
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [r14 + 0x2000], xmm0
	mov	qword ptr [r14 + 0x2010], 0
	mov	edi, 0x2018
	call	xmalloc
	xor	r13d, r13d
	mov	rsp, rsp
	mov	r12, r14
	mov	rsp, rsp
	jmp	.label_79
.label_80:
	mov	edi, 0x2018
	mov	rbp, rbp
	call	xmalloc
	nop	
.label_79:
	mov	qword ptr [rsp + 0x10], r14
	mov	r14, rax
	lea	r15, [r14 + 0x2008]
	jmp	.label_83
	nop	word ptr cs:[rax + rax]
.label_90:
	add	rbx, rbp
	mov	rdi, r14
	mov	rsi, rbp
	call	xwrite_stdout
.label_83:
	nop	
	mov	edx, 0x2000
	mov	edi, dword ptr [rsp + 0x24]
	mov	rsi, r14
	nop	
	call	safe_read
	mov	rbp, rbp
	mov	rbp, rax
	mov	rbp, rbp
	lea	rax, [rbp + 1]
	cmp	rax, 2
	lea	rdi, [rdi]
	jb	.label_95
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x18], 0
	lea	rdi, [rdi]
	je	.label_90
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x2000], rbp
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15], xmm0
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + line_end]]
	and	al, 1
	mov	esi, 0
	mov	rsp, rsp
	mov	eax, 0xa
	lea	rdi, [rdi]
	cmovne	esi, eax
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	mov	rdx, rbp
	call	memchr
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_94
	mov	rsp, rsp
	add	rbp, r14
	nop	dword ptr [rax + rax]
.label_86:
	inc	rax
	inc	qword ptr [r15]
	mov	cl,  byte ptr [byte ptr [rip + line_end]]
	lea	rdi, [rdi]
	and	cl, 1
	lea	rsi, [rsi]
	mov	esi, 0
	mov	ecx, 0xa
	lea	rdi, [rdi]
	cmovne	esi, ecx
	mov	rsp, rsp
	mov	rdx, rbp
	mov	rbp, rbp
	sub	rdx, rax
	mov	rdi, rax
	call	memchr
	nop	
	test	rax, rax
	jne	.label_86
.label_94:
	add	r13, qword ptr [r14 + 0x2008]
	mov	rdx, qword ptr [r14 + 0x2000]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp + 0x2000]
	lea	rsi, [rsi]
	lea	rax, [rdi + rdx]
	lea	rsi, [rsi]
	cmp	rax, 0x1fff
	ja	.label_87
	lea	rsi, [rsi]
	add	rdi, rbp
	mov	rsi, r14
	call	memcpy
	mov	rax, qword ptr [r14 + 0x2000]
	lea	rsi, [rsi]
	add	qword ptr [rbp + 0x2000], rax
	mov	rax, qword ptr [r14 + 0x2008]
	mov	rsp, rsp
	add	qword ptr [rbp + 0x2008], rax
	jmp	.label_83
.label_87:
	mov	qword ptr [rbp + 0x2010], r14
	mov	rax, r13
	nop	
	sub	rax, qword ptr [r12 + 0x2008]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rsp + 0x18]
	jbe	.label_80
	mov	rbp, rbp
	mov	rsi, qword ptr [r12 + 0x2000]
	mov	rsp, rsp
	add	rbx, rsi
	mov	rsp, rsp
	mov	rdi, r12
	call	xwrite_stdout
	sub	r13, qword ptr [r12 + 0x2008]
	mov	rbp, rbp
	mov	rax, r12
	mov	rbp, rbp
	mov	r12, qword ptr [r12 + 0x2010]
	jmp	.label_79
.label_95:
	lea	rsi, [rsi]
	mov	rdi, r14
	nop	
	call	free
	nop	
	cmp	rbp, -1
	mov	rsp, rsp
	je	.label_97
	nop	
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rsi + 0x2000]
	lea	rdi, [rdi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_78
	movsx	eax, byte ptr [rax + rsi - 1]
	mov	rsp, rsp
	mov	cl,  byte ptr [byte ptr [rip + line_end]]
	xor	edx, edx
	and	cl, 1
	mov	ecx, 0xa
	cmove	ecx, edx
	cmp	eax, ecx
	lea	rdi, [rdi]
	je	.label_78
	mov	rbp, rbp
	inc	qword ptr [rsi + 0x2008]
	inc	r13
.label_78:
	nop	
	mov	r14, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	lea	rbp, [r12 + 0x2008]
	mov	rax, r13
	sub	rax, qword ptr [r12 + 0x2008]
	mov	rbp, rbp
	mov	r15, r12
	jmp	.label_93
	nop	dword ptr [rax]
.label_88:
	mov	rsi, qword ptr [r15 + 0x2000]
	add	rbx, rsi
	mov	rdi, r15
	lea	rdi, [rdi]
	call	xwrite_stdout
	lea	rsi, [rsi]
	sub	r13, qword ptr [rbp]
	lea	rsi, [rsi]
	mov	r15, qword ptr [r15 + 0x2010]
	mov	rbp, rbp
	lea	rbp, [r15 + 0x2008]
	nop	
	mov	rax, r13
	mov	rbp, rbp
	sub	rax, qword ptr [r15 + 0x2008]
.label_93:
	lea	rsi, [rsi]
	cmp	rax, r14
	ja	.label_88
	cmp	r13, r14
	mov	rbp, rbp
	jbe	.label_91
	mov	rsi, r15
	mov	rsp, rsp
	je	.label_89
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x2000]
	add	rax, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rax
	mov	rbp, rbp
	sub	r14, r13
	mov	r13d, 0xa
	lea	rdi, [rdi]
	mov	rax, r15
	nop	word ptr cs:[rax + rax]
.label_92:
	mov	cl,  byte ptr [byte ptr [rip + line_end]]
	lea	rdi, [rdi]
	and	cl, 1
	nop	
	mov	esi, 0
	cmovne	esi, r13d
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	sub	rdx, rax
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	call	memchr
	mov	rbp, rbp
	test	rax, rax
	mov	esi, 0
	lea	rdi, [rdi]
	je	.label_89
	inc	rax
	mov	rbp, rbp
	inc	qword ptr [rbp]
	inc	r14
	mov	rsi, rax
	jne	.label_92
.label_89:
	sub	rsi, r15
	lea	rdi, [rdi]
	add	rbx, rsi
	mov	rdi, r15
	mov	rbp, rbp
	call	xwrite_stdout
.label_91:
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 8]
	mov	r15, qword ptr [rsp]
	mov	rsp, rsp
	mov	r13b, 1
	jmp	.label_96
.label_97:
	call	__errno_location
	mov	rsp, rsp
	mov	r15d, dword ptr [rax]
	nop	
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	mov	rsp, rsp
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbp, rax
	nop	
	mov	edi, 4
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, r15d
	mov	rsp, rsp
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	error
	mov	r15, qword ptr [rsp]
.label_96:
	lea	rsi, [rsi]
	test	r12, r12
	nop	
	je	.label_82
	nop	dword ptr [rax + rax]
.label_81:
	nop	
	mov	rbp, qword ptr [r12 + 0x2010]
	mov	rsp, rsp
	mov	rdi, r12
	mov	rbp, rbp
	call	free
	test	rbp, rbp
	mov	rsp, rsp
	mov	r12, rbp
	nop	
	jne	.label_81
.label_82:
	test	r15, r15
	js	.label_84
	mov	rbp, rbp
	xor	ebp, ebp
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	edi, dword ptr [rsp + 0x24]
	mov	rsp, rsp
	mov	rsi, rbx
	nop	
	mov	rcx, r14
	call	elseek
	test	rax, rax
	js	.label_85
	mov	bpl, r13b
.label_85:
	mov	r13b, bpl
.label_84:
	and	r13b, 1
	mov	al, r13b
	mov	rsp, rsp
	add	rsp, 0x28
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e00

	.globl elide_tail_lines_seekable
	.type elide_tail_lines_seekable, @function
elide_tail_lines_seekable:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x2028
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rcx
	mov	r13, rdx
	mov	r12d, esi
	mov	rbp, rdi
	nop	
	mov	qword ptr [rsp + 0x10], rbp
	mov	rax, r8
	lea	rsi, [rsi]
	sub	rax, rcx
	mov	rcx, rax
	sar	rcx, 0x3f
	lea	rdi, [rdi]
	shr	rcx, 0x33
	nop	
	add	rcx, rax
	and	rcx, 0xffffffffffffe000
	mov	rbp, rbp
	sub	rax, rcx
	mov	ebx, 0x2000
	nop	
	cmovne	rbx, rax
	lea	rdi, [rdi]
	sub	r8, rbx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], r8
	lea	rsi, [rsi]
	xor	r15d, r15d
	xor	edx, edx
	mov	edi, r12d
	lea	rsi, [rsi]
	mov	rsi, r8
	lea	rsi, [rsi]
	mov	rcx, rbp
	call	elseek
	test	rax, rax
	js	.label_98
	lea	r14, [rsp + 0x20]
	mov	edi, r12d
	mov	rsi, r14
	mov	rdx, rbx
	call	safe_read
	nop	
	mov	rbx, rax
	lea	rsi, [rsi]
	cmp	rbx, -1
	je	.label_105
	mov	dword ptr [rsp + 4], r12d
	mov	rbp, rbp
	test	r13, r13
	mov	r12, r13
	je	.label_106
	test	rbx, rbx
	mov	r12, r13
	nop	
	je	.label_106
	mov	rbp, rbp
	movsx	eax, byte ptr [rbx + r14 - 1]
	mov	rsp, rsp
	mov	cl,  byte ptr [byte ptr [rip + line_end]]
	lea	rsi, [rsi]
	xor	edx, edx
	and	cl, 1
	mov	ecx, 0xa
	cmove	ecx, edx
	lea	rdi, [rdi]
	cmp	eax, ecx
	nop	
	setne	al
	mov	rsp, rsp
	movzx	eax, al
	mov	r12, r13
	sub	r12, rax
.label_106:
	mov	ecx, 0xa
.label_101:
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + line_end]]
	and	al, 1
	mov	ebp, 0
	mov	rbp, rbp
	cmovne	ebp, ecx
	neg	r12
	nop	word ptr cs:[rax + rax]
.label_100:
	test	rbx, rbx
	je	.label_104
	test	r13, r13
	lea	rdi, [rdi]
	je	.label_107
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	esi, ebp
	mov	rbp, rbp
	mov	rdx, rbx
	call	memrchr
	lea	rsi, [rsi]
	mov	rbx, rax
	test	rbx, rbx
	je	.label_104
	sub	rbx, r14
	nop	
	jmp	.label_102
	nop	word ptr cs:[rax + rax]
.label_107:
	lea	rdi, [rdi]
	dec	rbx
.label_102:
	inc	r12
	lea	rsi, [rsi]
	cmp	r12, 1
	lea	rsi, [rsi]
	jne	.label_100
	nop	
	jmp	.label_103
	nop	dword ptr [rax + rax]
.label_104:
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x18]
	cmp	rsi, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	r15b, 1
	lea	rdi, [rdi]
	je	.label_98
	lea	rdi, [rdi]
	add	rsi, -0x2000
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rsi
	lea	rdi, [rdi]
	xor	r15d, r15d
	xor	edx, edx
	mov	ebx, dword ptr [rsp + 4]
	lea	rdi, [rdi]
	mov	edi, ebx
	mov	rcx, qword ptr [rsp + 0x10]
	call	elseek
	mov	rbp, rbp
	test	rax, rax
	nop	
	js	.label_98
	mov	edx, 0x2000
	mov	rbp, rbp
	mov	edi, ebx
	mov	rbp, rbp
	mov	rsi, r14
	call	safe_read
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rbp, rbp
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	r15b, 1
	lea	rdi, [rdi]
	je	.label_98
	neg	r12
	lea	rsi, [rsi]
	cmp	rbx, -1
	lea	rsi, [rsi]
	mov	ecx, 0xa
	mov	rsp, rsp
	jne	.label_101
.label_105:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.57
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	call	quotearg_style
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_98
.label_103:
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 8]
	sub	rbp, rsi
	mov	rbp, rbp
	mov	r14d, dword ptr [rsp + 4]
	lea	rdi, [rdi]
	jle	.label_99
	xor	r15d, r15d
	mov	rsp, rsp
	xor	edx, edx
	mov	edi, r14d
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	call	elseek
	test	rax, rax
	lea	rsi, [rsi]
	js	.label_98
	mov	edi, r14d
	mov	rbp, rbp
	mov	rsi, rbp
	lea	rdi, [rdi]
	call	copy_fd
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	je	.label_99
	nop	
	mov	edi, eax
	mov	rsi, qword ptr [rsp + 0x10]
	call	diagnose_copy_fd_failure
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_98
.label_99:
	lea	rsi, [rbx + 1]
	lea	rdi, [rsp + 0x20]
	call	xwrite_stdout
	nop	
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	lea	rsi, [rax + rbx + 1]
	xor	edx, edx
	mov	rbp, rbp
	mov	edi, r14d
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	call	elseek
	lea	rdi, [rdi]
	test	rax, rax
	setns	r15b
.label_98:
	mov	rsp, rsp
	mov	al, r15b
	mov	rsp, rsp
	add	rsp, 0x2028
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403150

	.globl xwrite_stdout
	.type xwrite_stdout, @function
xwrite_stdout:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	rbx, rsi
	lea	rsi, [rsi]
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_108
	nop	
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	fwrite_unlocked
	cmp	rax, rbx
	jb	.label_109
.label_108:
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	rbp
	ret	
.label_109:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	nop	
	call	clearerr_unlocked
	call	__errno_location
	mov	rbp, rbp
	mov	ebp, dword ptr [rax]
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.58
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	mov	rsp, rsp
	mov	edi, 4
	mov	esi, OFFSET FLAT:.str.59
	nop	
	call	quotearg_style
	nop	
	mov	rcx, rax
	nop	
	mov	edi, 1
	nop	
	xor	eax, eax
	mov	esi, ebp
	mov	rbp, rbp
	mov	rdx, rbx
	nop	
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403200

	.globl copy_fd
	.type copy_fd, @function
copy_fd:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x2000
	mov	rsp, rsp
	mov	rbx, rsi
	mov	rsp, rsp
	mov	r15d, edi
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_110
	lea	rsi, [rsi]
	mov	r12d, 0x2000
	lea	r14, [rsp]
	nop	dword ptr [rax]
.label_113:
	lea	rdi, [rdi]
	cmp	rbx, 0x2000
	mov	rdx, rbx
	mov	rsp, rsp
	cmova	rdx, r12
	lea	rdi, [rdi]
	mov	edi, r15d
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rsp, rsp
	call	safe_read
	mov	rbp, rax
	mov	rbp, rbp
	mov	eax, 1
	mov	rsp, rsp
	cmp	rbp, -1
	lea	rdi, [rdi]
	je	.label_111
	test	rbp, rbp
	jne	.label_112
	mov	rbp, rbp
	mov	eax, 2
	cmp	rbx, rbp
	jne	.label_111
.label_112:
	mov	rdi, r14
	mov	rsi, rbp
	call	xwrite_stdout
	sub	rbx, rbp
	mov	rsp, rsp
	jne	.label_113
.label_110:
	xor	eax, eax
.label_111:
	add	rsp, 0x2000
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rsp, rsp
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4032c0

	.globl diagnose_copy_fd_failure
	.type diagnose_copy_fd_failure, @function
diagnose_copy_fd_failure:
	mov	rbp, rbp
	push	rbp
	push	r14
	lea	rdi, [rdi]
	push	rbx
	mov	rbx, rsi
	mov	rsp, rsp
	cmp	edi, 2
	je	.label_114
	lea	rsi, [rsi]
	cmp	edi, 1
	jne	.label_115
	nop	
	call	__errno_location
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
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
	lea	rsi, [rsi]
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
.label_116:
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	nop	
	mov	rdx, rbp
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	lea	rsi, [rsi]
	jmp	error
.label_115:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403370

	.globl elide_tail_bytes_pipe
	.type elide_tail_bytes_pipe, @function
elide_tail_bytes_pipe:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x88
	nop	
	mov	rbx, rcx
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x6c], esi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rdi
	cmp	rdx, 0x100000
	ja	.label_142
	lea	rsi, [rsi]
	lea	r15, [rdx + 0x2000]
	mov	rbp, rbp
	mov	r13, rdx
	mov	edi, 2
	mov	rbp, rbp
	mov	rsi, r15
	mov	rbp, rbp
	call	xnmalloc
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x70], rax
	lea	rsi, [rsi]
	add	rax, r15
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x78], rax
	lea	rdi, [rdi]
	mov	r12b, 1
	mov	qword ptr [rsp + 0x40], rbx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rbx
	nop	
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	mov	rbp, rbp
	xor	ebx, ebx
.label_135:
	nop	
	movzx	ebx, bl
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + rbx*8 + 0x70]
	lea	rsi, [rsi]
	mov	edi, dword ptr [rsp + 0x6c]
	mov	rdx, r15
	lea	rdi, [rdi]
	call	full_read
	mov	rsp, rsp
	mov	rbp, rax
	lea	rdi, [rdi]
	cmp	rbp, r15
	mov	eax, 0
	lea	rsi, [rsi]
	mov	r14, r13
	jae	.label_122
	call	__errno_location
	mov	r13d, dword ptr [rax]
	lea	rsi, [rsi]
	test	r13d, r13d
	jne	.label_140
	lea	rsi, [rsi]
	mov	rax, r14
	lea	rdi, [rdi]
	sub	rax, rbp
	mov	ecx, 0
	lea	rdi, [rdi]
	cmovb	rax, rcx
	mov	rsp, rsp
	test	r12b, r12b
	lea	rdi, [rdi]
	cmovne	rax, rcx
	mov	cl, 1
	mov	qword ptr [rsp + 0x60], rcx
.label_122:
	mov	rbp, rbp
	test	r12b, r12b
	mov	rsp, rsp
	jne	.label_143
	lea	rsi, [rsi]
	mov	rsi, r14
	sub	rsi, rax
	add	qword ptr [rsp + 0x40], rsi
	lea	rdi, [rdi]
	mov	rax, rbx
	nop	
	xor	rax, 1
	mov	rdi, qword ptr [rsp + rax*8 + 0x70]
	mov	rbp, rbp
	add	rdi, 0x2000
	mov	rbp, rbp
	call	xwrite_stdout
.label_143:
	mov	r13, r14
	sub	rbp, r14
	jbe	.label_127
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0x40], rbp
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + rbx*8 + 0x70]
	lea	rdi, [rdi]
	mov	rsi, rbp
	lea	rdi, [rdi]
	call	xwrite_stdout
.label_127:
	lea	rdi, [rdi]
	xor	bl, 1
	mov	r14b, 1
	mov	rbp, rbp
	xor	r12d, r12d
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x60]
	test	al, 1
	je	.label_135
	jmp	.label_123
.label_142:
	mov	rbp, rbp
	mov	ecx, edx
	lea	rdi, [rdi]
	and	ecx, 0x1fff
	mov	qword ptr [rsp], rcx
	mov	eax, 0x2000
	sub	rax, rcx
	nop	
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	add	rdx, rax
	shr	rdx, 0xd
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rdx + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], rax
	mov	rsp, rsp
	cmp	rax, 0x10
	mov	ecx, 0x10
	cmovb	rcx, rax
	mov	qword ptr [rsp + 0x28], rcx
	mov	rsp, rsp
	shr	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rax
	xor	edx, edx
	lea	rsi, [rsi]
	mov	r12d, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], rbx
	nop	
	mov	qword ptr [rsp + 0x18], rbx
	nop	
	mov	r13d, 0
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	rbp, rbp
	xor	ebx, ebx
	xor	r14d, r14d
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x48], rax
	nop	word ptr cs:[rax + rax]
.label_133:
	cmp	rdx, rbx
	jne	.label_124
	mov	qword ptr [rsp + 0x58], r12
	test	rdx, rdx
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x60]
	je	.label_137
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	lea	rbp, [rdx + rdx]
	lea	rdi, [rdi]
	cmova	rbp, qword ptr [rsp + 0x38]
.label_137:
	mov	edx, 8
	mov	rsi, rbp
	call	xnrealloc
	lea	rsi, [rsi]
	mov	r12, rax
	mov	qword ptr [rsp + 0x50], rbp
	jmp	.label_138
	nop	
.label_124:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], r12
	mov	r12, qword ptr [rsp + 0x60]
.label_138:
	lea	rdi, [rdi]
	test	r14b, 1
	jne	.label_118
	nop	
	mov	edi, 0x2000
	call	xmalloc
	mov	rsp, rsp
	mov	qword ptr [r12 + rbx*8], rax
	nop	
	lea	r13, [rbx + 1]
.label_118:
	nop	
	mov	rsi, qword ptr [r12 + rbx*8]
	nop	
	mov	edx, 0x2000
	mov	edi, dword ptr [rsp + 0x6c]
	lea	rsi, [rsi]
	call	full_read
	lea	rsi, [rsi]
	mov	r15, rax
	cmp	r15, 0x1fff
	ja	.label_131
	call	__errno_location
	mov	rbp, rbp
	mov	ebp, dword ptr [rax]
	mov	rsp, rsp
	mov	al, 1
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x48], rax
	test	ebp, ebp
	jne	.label_134
.label_131:
	lea	rsi, [rsi]
	cmp	rbx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	bpl, 1
	mov	rsp, rsp
	je	.label_141
	mov	bpl, r14b
.label_141:
	test	bpl, 1
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	jne	.label_117
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], r12
	nop	
	jmp	.label_120
	nop	word ptr [rax + rax]
.label_117:
	mov	rsp, rsp
	add	qword ptr [rsp + 0x40], r15
	mov	rsp, rsp
	mov	rdi, qword ptr [r12 + rcx*8]
	mov	qword ptr [rsp + 0x60], r12
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rbx, rcx
	nop	
	call	xwrite_stdout
	mov	rcx, rbx
.label_120:
	lea	rdi, [rdi]
	lea	rax, [rcx + 1]
	xor	edx, edx
	lea	rsi, [rsi]
	div	qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	r12, rdx
	mov	rax, qword ptr [rsp + 0x48]
	nop	
	test	al, 1
	mov	rbx, rcx
	lea	rsi, [rsi]
	mov	r14b, bpl
	mov	rdx, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	je	.label_133
	mov	r14b, 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_132
	test	bpl, 1
	mov	rsp, rsp
	jne	.label_121
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	jne	.label_144
	mov	rbp, rbp
	sub	r15, qword ptr [rsp]
	mov	rbp, rbp
	add	qword ptr [rsp + 0x40], r15
	nop	
	mov	rax, qword ptr [rsp + 0x60]
	mov	rdi, qword ptr [rax + r12*8]
	mov	r12, rax
	mov	rsi, r15
	lea	rsi, [rsi]
	call	xwrite_stdout
	jmp	.label_128
.label_140:
	lea	rsi, [rsi]
	xor	r14d, r14d
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x10]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, r13d
	mov	rdx, rbp
	call	error
.label_123:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x18]
	nop	
	jmp	.label_129
.label_134:
	xor	r14d, r14d
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.57
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rsp + 0x10]
	call	quotearg_style
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r15
	call	error
	nop	
	mov	rbp, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	jmp	.label_128
.label_132:
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r12, qword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	jmp	.label_128
.label_121:
	nop	
	mov	esi, 0x2000
	sub	rsi, r15
	mov	rsp, rsp
	add	qword ptr [rsp + 0x40], rax
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x60]
	mov	rdi, qword ptr [rbx + rcx*8]
	add	rdi, r15
	lea	rdi, [rdi]
	mov	rbp, rax
	lea	rdi, [rdi]
	sub	rbp, rsi
	nop	
	jae	.label_126
	mov	rsp, rsp
	mov	rsi, rax
	jmp	.label_136
.label_144:
	mov	r12, qword ptr [rsp + 0x60]
	jmp	.label_128
.label_126:
	call	xwrite_stdout
	mov	rdi, qword ptr [rbx + r12*8]
	mov	rsp, rsp
	mov	rsi, rbp
.label_136:
	mov	rsp, rsp
	call	xwrite_stdout
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r12, rbx
.label_128:
	lea	rdi, [rdi]
	test	r13, r13
	je	.label_119
	mov	rbx, r12
	nop	word ptr cs:[rax + rax]
.label_125:
	mov	rdi, qword ptr [rbx]
	call	free
	nop	
	add	rbx, 8
	dec	r13
	jne	.label_125
.label_119:
	mov	rsp, rsp
	mov	rdi, r12
	call	free
.label_129:
	mov	rbp, rbp
	test	rbp, rbp
	mov	rbp, rbp
	js	.label_130
	lea	rsi, [rsi]
	xor	ebx, ebx
	xor	edx, edx
	mov	edi, dword ptr [rsp + 0x6c]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x10]
	call	elseek
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	js	.label_139
	nop	
	mov	bl, r14b
.label_139:
	mov	r14b, bl
.label_130:
	and	r14b, 1
	lea	rdi, [rdi]
	mov	al, r14b
	add	rsp, 0x88
	nop	
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403920
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
	#Procedure 0x403930
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403940

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
	je	.label_148
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_145
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	jne	.label_145
.label_148:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_146
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	rbp
	ret	
.label_145:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
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
	jne	.label_147
	xor	edi, edi
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str_2
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
.label_146:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_147:
	mov	rbp, rbp
	mov	rdi, rbx
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
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
	#Procedure 0x403a40

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
	#Procedure 0x403aa0

	.globl offtostr
	.type offtostr, @function
offtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	mov	rsp, rsp
	test	rcx, rcx
	js	.label_152
	add	rsi, 0x14
	mov	rbp, rbp
	movabs	r8, 0x6666666666666667
.label_153:
	mov	rax, rcx
	mov	rsp, rsp
	imul	r8
	mov	rsp, rsp
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	rsi, [rsi]
	lea	edi, [rdx + rax]
	mov	rsp, rsp
	add	edi, edi
	mov	rbp, rbp
	lea	r9d, [rdi + rdi*4]
	lea	rdi, [rdi]
	mov	edi, ecx
	lea	rdi, [rdi]
	sub	edi, r9d
	add	edi, 0x30
	lea	rdi, [rdi]
	mov	byte ptr [rsi - 1], dil
	lea	rdi, [rdi]
	dec	rsi
	mov	rbp, rbp
	add	rdx, rax
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	mov	rbp, rbp
	ja	.label_153
	jmp	.label_154
.label_152:
	mov	rsp, rsp
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_155:
	mov	rax, rcx
	imul	r8
	mov	r10, rdx
	shr	r10, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + r10]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	nop	
	sub	edi, r9d
	mov	eax, 0x30
	nop	
	sub	eax, edi
	mov	byte ptr [rsi], al
	add	rdx, r10
	lea	rdi, [rdi]
	add	rcx, 9
	dec	rsi
	cmp	rcx, 0x12
	nop	
	mov	rcx, rdx
	lea	rsi, [rsi]
	ja	.label_155
	mov	byte ptr [rsi], 0x2d
.label_154:
	mov	rsp, rsp
	mov	rax, rsi
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403b90

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	lea	rdi, [rdi]
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	dword ptr [rax + rax]
.label_156:
	mov	rbp, rbp
	mov	rax, rcx
	lea	rdi, [rdi]
	mul	r8
	mov	rsp, rsp
	shr	rdx, 3
	lea	eax, [rdx + rdx]
	mov	rbp, rbp
	lea	eax, [rax + rax*4]
	mov	edi, ecx
	sub	edi, eax
	or	edi, 0x30
	lea	rsi, [rsi]
	mov	byte ptr [rsi - 1], dil
	mov	rbp, rbp
	dec	rsi
	cmp	rcx, 9
	mov	rcx, rdx
	ja	.label_156
	mov	rax, rsi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403bf0

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
	je	.label_157
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
	jl	.label_159
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_159
	mov	esi, OFFSET FLAT:.str.2_0
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_158
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_158:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_159:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_157:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_4
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
	#Procedure 0x403ce0
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
	#Procedure 0x403d30
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
	#Procedure 0x403d50
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
	#Procedure 0x403d70

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
	#Procedure 0x403de0
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
	#Procedure 0x403e00

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
	je	.label_160
	test	rdx, rdx
	nop	
	je	.label_160
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_160:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403e40
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
	#Procedure 0x403ee0

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
.label_170:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rsi, [rsi]
	mov	ecx, r13d
	lea	rdi, [rdi]
	cmp	r13d, 0xa
	ja	.label_270
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	rsp, rsp
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_214]]
.label_477:
	lea	rsi, [rsi]
	mov	r12d, r11d
	nop	
	mov	edi, OFFSET FLAT:.str.11
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
.label_478:
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
	jne	.label_191
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rsp, rsp
	je	.label_191
	mov	rsp, rsp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_227:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_216
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rsi], al
.label_216:
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
	jne	.label_227
.label_191:
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
	jmp	.label_175
.label_470:
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
	jmp	.label_175
.label_473:
	mov	rsp, rsp
	mov	al, 1
.label_471:
	mov	r15b, 1
.label_474:
	test	r15b, 1
	mov	rsp, rsp
	mov	cl, 1
	je	.label_261
	mov	cl, al
.label_261:
	lea	rdi, [rdi]
	mov	al, cl
.label_472:
	mov	r14d, 2
	mov	rsp, rsp
	test	r15b, 1
	mov	rsp, rsp
	jne	.label_264
	test	r10, r10
	je	.label_268
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	lea	rdi, [rdi]
	jmp	.label_271
.label_264:
	xor	ecx, ecx
	jmp	.label_271
.label_475:
	mov	r14d, 5
	mov	rsp, rsp
	test	r15b, 1
	jne	.label_279
	test	r10, r10
	je	.label_281
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	lea	rsi, [rsi]
	jmp	.label_163
.label_476:
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
	jmp	.label_175
.label_268:
	nop	
	mov	ecx, 1
	nop	dword ptr [rax]
.label_271:
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
	jmp	.label_175
.label_279:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_163
.label_281:
	mov	rbp, rbp
	mov	eax, 1
.label_163:
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
.label_175:
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
	jmp	.label_225
	nop	word ptr [rax + rax]
.label_215:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	lea	rsi, [rsi]
	sar	r15b, 7
	and	r15b, r8b
	lea	rdi, [rdi]
	mov	r8b, r15b
	nop	
	inc	rsi
.label_225:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_275
	cmp	rsi, rbp
	jne	.label_238
	jmp	.label_277
	nop	word ptr cs:[rax + rax]
.label_275:
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + rsi], 0
	nop	
	je	.label_277
.label_238:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_282
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_168
	mov	rsp, rsp
	cmp	rbp, -1
	lea	rdi, [rdi]
	jne	.label_168
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
.label_168:
	lea	rsi, [rsi]
	cmp	rbx, rbp
	jbe	.label_203
.label_282:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xec], 0
.label_247:
	mov	rsp, rsp
	movzx	r13d, byte ptr [r9 + rsi]
	mov	rsp, rsp
	cmp	r13, 0x7e
	nop	
	ja	.label_210
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	r15b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	bl, 0x61
	nop	
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_217]]
.label_490:
	test	rsi, rsi
	jne	.label_224
	jmp	.label_250
	nop	word ptr [rax + rax]
.label_203:
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
	jne	.label_243
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
	je	.label_247
	mov	rsp, rsp
	jmp	.label_230
.label_243:
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
	jmp	.label_247
.label_494:
	xor	eax, eax
	cmp	rbp, -1
	lea	rsi, [rsi]
	je	.label_265
	test	rsi, rsi
	nop	
	jne	.label_269
	cmp	rbp, 1
	lea	rsi, [rsi]
	je	.label_250
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_174
.label_483:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_278
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xcf], 0
	nop	
	jne	.label_230
	cmp	edi, 2
	nop	
	jne	.label_172
	lea	rdi, [rdi]
	mov	al, r11b
	and	al, 1
	nop	
	jne	.label_166
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_212
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], 0x27
.label_212:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_188
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_188:
	nop	
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_207
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_207:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	rsp, rsp
	mov	r11b, 1
	nop	
	mov	rcx, rax
	jmp	.label_201
.label_484:
	mov	bl, 0x62
	lea	rsi, [rsi]
	jmp	.label_209
.label_485:
	mov	cl, 0x74
	jmp	.label_213
.label_486:
	mov	bl, 0x76
	lea	rdi, [rdi]
	jmp	.label_209
.label_487:
	mov	bl, 0x66
	jmp	.label_209
.label_488:
	nop	
	mov	cl, 0x72
	mov	rsp, rsp
	jmp	.label_213
.label_491:
	lea	rsi, [rsi]
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 2
	jne	.label_236
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_165
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
	jae	.label_235
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_235:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_251
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x5c
.label_251:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_257
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_257:
	nop	
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	mov	rbp, rbp
	jmp	.label_167
.label_492:
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 5
	mov	rsp, rsp
	je	.label_202
	cmp	r14d, 2
	lea	rdi, [rdi]
	jne	.label_276
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_165
.label_276:
	mov	rdi, r14
	jmp	.label_224
.label_493:
	mov	r14, rdi
	nop	
	cmp	r14d, 2
	mov	rsp, rsp
	jne	.label_280
	nop	
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_165
	mov	rdi, r14
	jmp	.label_173
.label_210:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	lea	rsi, [rsi]
	jne	.label_178
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
.label_246:
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
	ja	.label_200
	test	dl, dl
	mov	rsp, rsp
	je	.label_200
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_174
.label_265:
	test	rsi, rsi
	jne	.label_222
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_222
.label_250:
	mov	rbp, rbp
	mov	dl, 1
.label_489:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_230
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r15b, dl
	mov	rbp, rbp
	jmp	.label_174
.label_278:
	cmp	dword ptr [rsp + 0x5c], 0
	mov	rbp, rbp
	je	.label_224
	lea	rsi, [rsi]
	mov	r14, rdi
	inc	rsi
	jmp	.label_225
.label_236:
	mov	rdi, r14
.label_167:
	xor	eax, eax
	nop	
	mov	r15b, 1
	lea	rdi, [rdi]
	jmp	.label_174
.label_280:
	mov	rdi, r14
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x6a], 0
	nop	
	mov	cl, r13b
	nop	
	je	.label_213
.label_173:
	lea	rsi, [rsi]
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_169
.label_213:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xa7], 0
	lea	rsi, [rsi]
	mov	bl, cl
	nop	
	je	.label_230
.label_209:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_174
	lea	rsi, [rsi]
	jmp	.label_194
.label_178:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_260
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
.label_260:
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
.label_239:
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
	je	.label_180
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
	je	.label_186
	cmp	rbp, -2
	nop	
	je	.label_199
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_231
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	lea	rsi, [rsi]
	mov	ecx, 1
.label_219:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	mov	rsp, rsp
	cmp	edx, 0x21
	lea	rsi, [rsi]
	ja	.label_233
	mov	rbp, rbp
	bt	rsi, rdx
	jb	.label_218
.label_233:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jb	.label_219
.label_231:
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_249
	xor	r15d, r15d
.label_249:
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
	je	.label_239
	jmp	.label_246
.label_222:
	mov	rbp, -1
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_174
.label_202:
	mov	rdi, r14
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x58], 0
	lea	rdi, [rdi]
	je	.label_224
	lea	rcx, [rsi + 2]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jae	.label_224
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_224
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	mov	rsp, rsp
	cmp	edx, 0x3e
	ja	.label_258
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	nop	
	bt	rsi, rdx
	lea	rdi, [rdi]
	jae	.label_263
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_230
	lea	rsi, [rsi]
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_195
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_195:
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, r10
	jae	.label_208
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 0x22
.label_208:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_253
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x22
.label_253:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	nop	
	cmp	rax, r10
	lea	rsi, [rsi]
	jae	.label_252
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_252:
	nop	
	add	qword ptr [rsp + 0xf0], 4
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_174
.label_224:
	xor	eax, eax
	mov	rsp, rsp
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_174:
	test	r12b, r12b
	je	.label_204
	cmp	qword ptr [rsp + 0x140], 0
	nop	
	jne	.label_206
	jmp	.label_177
	nop	word ptr cs:[rax + rax]
.label_204:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xb7], 0
	lea	rdi, [rdi]
	je	.label_177
.label_206:
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
	jne	.label_228
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_169
	jmp	.label_194
	nop	word ptr cs:[rax + rax]
.label_177:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_194
	jmp	.label_169
.label_228:
	mov	bl, r13b
	mov	rsi, r14
.label_194:
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_230
	mov	rsp, rsp
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_245
	nop	
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_245
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_196
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_196:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_254
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x24
.label_254:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_262
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_262:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_245:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_273
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_273:
	lea	rdi, [rdi]
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_248
.label_269:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_174
.label_200:
	mov	rsp, rsp
	add	rcx, rsi
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_184
	nop	word ptr cs:[rax + rax]
.label_237:
	mov	rbp, rbp
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_184:
	mov	rbp, rbp
	test	dl, dl
	mov	rbp, rbp
	je	.label_185
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	lea	rdi, [rdi]
	je	.label_187
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_192
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	lea	rsi, [rsi]
	mov	rsi, rbx
.label_192:
	nop	
	inc	qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xec], 0
	mov	rsp, rsp
	jmp	.label_187
	nop	dword ptr [rax]
.label_185:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_165
	cmp	r14d, 2
	jne	.label_220
	mov	rsp, rsp
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_220
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_223
	mov	rax, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	byte ptr [rax + rdx], 0x27
.label_223:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_234
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_234:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	nop	
	lea	rax, [rax + 2]
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_242
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_242:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_220:
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_171
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_171:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rdi, [rdi]
	inc	rax
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_226
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
.label_226:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_266
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
.label_266:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	rsp, rsp
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_187:
	mov	rsp, rsp
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_169
	test	r11b, 1
	lea	rdi, [rdi]
	je	.label_176
	mov	bl, al
	lea	rdi, [rdi]
	and	bl, 1
	mov	r14, rdi
	jne	.label_179
	lea	rsi, [rsi]
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_183
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_183:
	mov	rsi, qword ptr [rsp + 0xf0]
	nop	
	inc	rsi
	cmp	rsi, r10
	nop	
	jae	.label_193
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rdi + rsi], 0x27
.label_193:
	add	qword ptr [rsp + 0xf0], 2
	mov	rbp, rbp
	xor	r11d, r11d
	mov	rsi, rbx
	lea	rdi, [rdi]
	jmp	.label_179
	nop	word ptr cs:[rax + rax]
.label_176:
	lea	rsi, [rsi]
	mov	r14, rdi
.label_179:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_237
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rsi + rbx], r13b
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	jmp	.label_237
	nop	word ptr cs:[rax + rax]
.label_169:
	lea	rsi, [rsi]
	test	r11b, 1
	je	.label_232
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_232
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_161
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rax + rcx], 0x27
.label_161:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_241
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_241:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 2
	lea	rdi, [rdi]
	xor	r11d, r11d
	nop	
	mov	bl, r13b
	lea	rsi, [rsi]
	jmp	.label_248
	nop	word ptr cs:[rax + rax]
.label_232:
	lea	rsi, [rsi]
	mov	bl, r13b
	mov	r14, rdi
.label_248:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_215
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], bl
	lea	rdi, [rdi]
	jmp	.label_215
.label_172:
	nop	
	mov	rcx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	jmp	.label_201
.label_166:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_201:
	cmp	rcx, r10
	jae	.label_267
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_267:
	lea	rsi, [rsi]
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	lea	rsi, [rsi]
	mov	r13b, 0x30
	cmp	edi, 2
	lea	rsi, [rsi]
	je	.label_274
	lea	rdx, [rsi + 1]
	lea	rsi, [rsi]
	cmp	rdx, rbp
	jae	.label_229
	nop	
	mov	dl, byte ptr [r9 + rdx]
	mov	rbp, rbp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	mov	rbp, rbp
	cmp	edx, 9
	mov	rsp, rsp
	ja	.label_162
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_272
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	nop	
	mov	rsi, rbx
.label_272:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_190
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsp, rsp
	mov	rsi, rbx
.label_190:
	mov	rsp, rsp
	add	rcx, 3
	xor	r15d, r15d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rdi, [rdi]
	jmp	.label_174
.label_274:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_174
.label_229:
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_174
.label_162:
	xor	r15d, r15d
	jmp	.label_174
.label_180:
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_182
.label_186:
	xor	r15d, r15d
	nop	
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	jmp	.label_221
.label_199:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	jae	.label_256
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_240:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	byte ptr [rax + rbx], 0
	nop	
	je	.label_244
	lea	rax, [rsi + rbx + 1]
	lea	rsi, [rsi]
	inc	rbx
	cmp	rax, rbp
	jb	.label_240
	xor	r15d, r15d
	nop	
	jmp	.label_182
.label_256:
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_221:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_182:
	mov	byte ptr [rsp + 0xa6], r8b
	lea	rdi, [rdi]
	jmp	.label_246
.label_244:
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_182
.label_258:
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_174
.label_263:
	mov	rsp, rsp
	xor	r15d, r15d
	nop	
	mov	rsi, rbx
	jmp	.label_174
	nop	word ptr cs:[rax + rax]
.label_277:
	cmp	qword ptr [rsp + 0xf0], 0
	mov	rbp, rbp
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	and	cl, 1
	je	.label_259
	lea	rdi, [rdi]
	or	dl, al
	lea	rdi, [rdi]
	je	.label_165
.label_259:
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
	je	.label_164
	lea	rdi, [rdi]
	or	dl, al
	jne	.label_164
	lea	rdi, [rdi]
	test	r8b, 1
	jne	.label_181
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_164
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
	je	.label_170
.label_164:
	nop	
	mov	rdx, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	test	rdx, rdx
	je	.label_189
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_189
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_189
	inc	rdx
	nop	dword ptr [rax + rax]
.label_205:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_198
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_198:
	nop	
	inc	qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	inc	rdx
	test	al, al
	jne	.label_205
.label_189:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_211
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_211
.label_230:
	lea	rdi, [rdi]
	mov	rdx, r9
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_255:
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
.label_197:
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_211:
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
.label_218:
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_255
.label_165:
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rbp, rbp
	jmp	.label_255
.label_181:
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
	jmp	.label_197
.label_270:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405630
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
	#Procedure 0x405650

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
	je	.label_283
	mov	qword ptr [rax], rbx
.label_283:
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
	#Procedure 0x4057a0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_284
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_287:
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
	jl	.label_287
.label_284:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_286
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_288]], OFFSET FLAT:slot0
.label_286:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_285
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_285:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405860

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x405870

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
	js	.label_295
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_290
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_293
.label_290:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_291
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
	jne	.label_294
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_294:
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
.label_293:
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
	ja	.label_292
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
	je	.label_289
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_289:
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
.label_292:
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
.label_295:
	lea	rdi, [rdi]
	call	abort
.label_291:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x405ae0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405af0
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
	#Procedure 0x405b10
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
	#Procedure 0x405b30

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
	#Procedure 0x405b90

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
	je	.label_296
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
.label_296:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405c00

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
	#Procedure 0x405c60

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
	#Procedure 0x405c80
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
	#Procedure 0x405ca0

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
	mov	rcx,  qword ptr [word ptr [rip + label_297]]
	mov	qword ptr [rsp + 0x30], rcx
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_298]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_299]]
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
	#Procedure 0x405d40

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
	#Procedure 0x405d60

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
	#Procedure 0x405d70
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d80

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
	#Procedure 0x405df0

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
	#Procedure 0x405e00

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
	mov	rax,  qword ptr [word ptr [rip + label_297]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_298]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_299]]
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
	#Procedure 0x405e90
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
	#Procedure 0x405ec0
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
	#Procedure 0x405ef0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f00
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
	#Procedure 0x405f20

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405f30

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
	#Procedure 0x405f40

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
	jne	.label_300
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
	je	.label_301
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	ecx, 0x60
	je	.label_300
	nop	
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_300
.label_301:
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
	je	.label_302
	nop	
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x60
	lea	rdi, [rdi]
	je	.label_300
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_300
.label_302:
	cmp	r14d, 9
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	lea	rsi, [rsi]
	cmove	rax, rcx
.label_300:
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
	#Procedure 0x406070

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
	je	.label_304
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	lea	rdi, [rdi]
	je	.label_303
	jmp	.label_305
.label_304:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rdi, [rdi]
	jne	.label_305
.label_303:
	mov	rsp, rsp
	mov	eax, 1
	test	bpl, bpl
	mov	rsp, rsp
	je	.label_305
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
.label_305:
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
	#Procedure 0x406130

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
	je	.label_308
	nop	
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	nop	
	je	.label_307
	lea	rsi, [rsi]
	jmp	.label_306
.label_308:
	lea	rsi, [rsi]
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_306
.label_307:
	lea	rdi, [rdi]
	mov	eax, 1
	test	bpl, bpl
	lea	rdi, [rdi]
	je	.label_306
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
.label_306:
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
	#Procedure 0x406220

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
	je	.label_311
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_310
	jmp	.label_309
.label_311:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	movzx	edx, bpl
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_309
.label_310:
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_309
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
.label_309:
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
	#Procedure 0x4062f0

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
	je	.label_314
	lea	rsi, [rsi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_313
	jmp	.label_312
.label_314:
	xor	eax, eax
	mov	rsp, rsp
	movzx	edx, bpl
	movzx	ecx, cl
	nop	
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_312
.label_313:
	lea	rsi, [rsi]
	mov	eax, 1
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_312
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
.label_312:
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
	#Procedure 0x406390

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
	je	.label_317
	lea	rdi, [rdi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	mov	rsp, rsp
	je	.label_316
	nop	
	jmp	.label_315
.label_317:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_315
.label_316:
	mov	eax, 1
	test	bpl, bpl
	je	.label_315
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
.label_315:
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
	#Procedure 0x406430

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
	je	.label_320
	mov	rsp, rsp
	and	ecx, 0xffffffdf
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ecx, ebp
	lea	rsi, [rsi]
	je	.label_319
	lea	rsi, [rsi]
	jmp	.label_318
.label_320:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	nop	
	jne	.label_318
.label_319:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	test	bpl, bpl
	nop	
	je	.label_318
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
.label_318:
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4064c0

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
	je	.label_323
	and	ecx, 0xffffffdf
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_322
	jmp	.label_321
.label_323:
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_321
.label_322:
	mov	eax, 1
	nop	
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_321
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_321:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406530

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
	je	.label_324
	mov	eax, 1
	mov	rsp, rsp
	test	ecx, 0xffffffdf
	lea	rdi, [rdi]
	jne	.label_326
	mov	rbp, rbp
	jmp	.label_325
.label_324:
	mov	eax, 1
	lea	rsi, [rsi]
	test	cl, cl
	je	.label_325
.label_326:
	xor	eax, eax
.label_325:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406580

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	nop	
	push	rax
	mov	rbp, rbp
	mov	rbx, rdx
	mov	rsp, rsp
	mov	r14, rsi
	mov	r15d, edi
	mov	r12d, 0x7ff00000
	nop	word ptr [rax + rax]
.label_327:
	lea	rsi, [rsi]
	mov	edi, r15d
	mov	rsp, rsp
	mov	rsi, r14
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_328
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	lea	rdi, [rdi]
	je	.label_327
	cmp	eax, 0x16
	lea	rsi, [rsi]
	sete	cl
	nop	
	cmp	rbx, 0x7ff00000
	seta	dl
	and	dl, cl
	mov	rbp, rbp
	mov	rcx, rbx
	lea	rsi, [rsi]
	cmovne	rcx, r12
	lea	rdi, [rdi]
	test	dl, dl
	mov	rsp, rsp
	cmovne	rbp, r13
	mov	rbp, rbp
	cmp	rbx, 0x7ff00001
	mov	rbp, rbp
	jb	.label_328
	lea	rsi, [rsi]
	cmp	eax, 0x16
	mov	rbx, rcx
	mov	r13, rbp
	mov	rsp, rsp
	je	.label_327
.label_328:
	mov	rax, rbp
	mov	rsp, rsp
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406660

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
	je	.label_333
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_5
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_335
.label_333:
	mov	edx, OFFSET FLAT:.str.1_1
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_335:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_1
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
	mov	esi, OFFSET FLAT:.str.3_0
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
	ja	.label_337
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_330]]
.label_443:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4_0
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
.label_337:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_329
.label_444:
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5_0
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
.label_445:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.6_0
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
.label_446:
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
	jmp	.label_336
.label_447:
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
	jmp	.label_332
.label_448:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
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
	jmp	.label_331
.label_449:
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
.label_331:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_332:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_336:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_338
.label_451:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_329:
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
	jmp	.label_334
.label_450:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_0
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
.label_334:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_338:
	mov	rbp, rbp
	call	__fprintf_chk
.label_442:
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
	#Procedure 0x406a50
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_339:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_339
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a80

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_343:
	nop	
	movsxd	r10, dword ptr [r8]
	lea	rdi, [rdi]
	cmp	r10, 0x28
	ja	.label_340
	mov	r11, r10
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	rbp, rbp
	mov	dword ptr [r8], eax
	mov	rsp, rsp
	jmp	.label_342
	nop	word ptr cs:[rax + rax]
.label_340:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_342:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_341
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_343
.label_341:
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
	#Procedure 0x406b10

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	nop	
	je	.label_344
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
.label_344:
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
	#Procedure 0x406bc0
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
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	mov	rsp, rsp
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
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
	#Procedure 0x406c50

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
	jb	.label_345
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_345:
	nop	
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c90

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_346
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_347
.label_346:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_347:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406cc0

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
	jb	.label_348
	imul	rcx, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	jmp	xrealloc
.label_348:
	push	rax
	mov	rsp, rsp
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d00

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_349
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_349
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_349:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_350
	test	rax, rax
	nop	
	je	.label_351
.label_350:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_351:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d50

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	nop	
	mov	r8, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_352
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_353
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_355
.label_352:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_354
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_354:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_356
.label_355:
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
.label_353:
	call	xalloc_die
.label_356:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406df0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	jmp	xmalloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e00
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	mov	rsp, rsp
	jmp	x2nrealloc
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406e10
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
	#Procedure 0x406e50
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
	jb	.label_357
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_357
	pop	rcx
	ret	
.label_357:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x406e80

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
	#Procedure 0x406ed0
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
	#Procedure 0x406ef0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_2
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406f40

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r14, r9
	mov	rbp, rbp
	mov	r15, rcx
	lea	rdi, [rdi]
	mov	r12, rdx
	mov	eax, esi
	mov	r13, rdi
	lea	rcx, [rsp]
	nop	
	xor	esi, esi
	mov	edx, eax
	call	xstrtoumax
	cmp	eax, 3
	je	.label_361
	cmp	eax, 1
	je	.label_363
	mov	rbp, rbp
	test	eax, eax
	nop	
	jne	.label_358
	mov	rbx, qword ptr [rsp]
	mov	rbp, rbp
	cmp	rbx, r12
	lea	rsi, [rsi]
	jb	.label_359
	cmp	rbx, r15
	jbe	.label_362
.label_359:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	cmp	rbx, 0x40000000
	jb	.label_360
	mov	dword ptr [rax], 0x4b
	lea	rdi, [rdi]
	jmp	.label_358
.label_361:
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
	lea	rsi, [rsi]
	jmp	.label_358
.label_363:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	mov	rbp, rbp
	jmp	.label_358
.label_360:
	mov	dword ptr [rax], 0x22
.label_358:
	nop	
	mov	eax, dword ptr [rsp + 0x40]
	test	eax, eax
	mov	ebp, 1
	nop	
	cmovne	ebp, eax
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	eax, eax
	cmp	ebx, 0x16
	cmove	ebx, eax
	mov	rdi, r13
	call	quote
	mov	r8, rax
	nop	
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, ebp
	mov	esi, ebx
	lea	rdi, [rdi]
	mov	rcx, r14
	nop	
	call	error
.label_362:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rbp, rbp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407060

	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:
	push	rax
	mov	r10, r8
	lea	rsi, [rsi]
	mov	rax, rcx
	mov	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	rsp, rsp
	mov	esi, 0xa
	lea	rdi, [rdi]
	mov	r8, rax
	mov	rsp, rsp
	mov	r9, r10
	mov	rsp, rsp
	call	xnumtoumax
	pop	rcx
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4070a0

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
	jae	.label_375
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
.label_364:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	lea	rdi, [rdi]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_364
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
	je	.label_372
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
	je	.label_382
	nop	
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rsp, rsp
	mov	rbp, r13
	mov	rsp, rsp
	je	.label_384
	cmp	eax, 0x22
	jne	.label_372
	lea	rsi, [rsi]
	mov	r12d, 1
.label_384:
	test	rbp, rbp
	lea	rdi, [rdi]
	jne	.label_371
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	lea	rsi, [rsi]
	jmp	.label_373
.label_382:
	mov	rbp, r13
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_372
	lea	rsi, [rsi]
	mov	rbx, rcx
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rax]
	nop	
	test	esi, esi
	mov	rsp, rsp
	je	.label_372
	mov	rdi, rbp
	mov	rsp, rsp
	call	strchr
	test	rax, rax
	mov	rcx, rbx
	je	.label_372
	mov	qword ptr [rsp + 8], 1
	lea	rdi, [rdi]
	xor	r12d, r12d
.label_371:
	mov	rbp, rbp
	mov	rax, qword ptr [rcx]
	mov	rsp, rsp
	movsx	ebx, byte ptr [rax]
	lea	rdi, [rdi]
	test	ebx, ebx
	lea	rdi, [rdi]
	je	.label_387
	mov	rbp, rbp
	mov	r13, rcx
	mov	rdi, rbp
	mov	rsp, rsp
	mov	esi, ebx
	mov	rsp, rsp
	call	strchr
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_376
	mov	r15d, 0x400
	mov	r14d, 1
	add	ebx, -0x45
	nop	
	cmp	ebx, 0x2f
	ja	.label_379
	movabs	rax, 0x814400308945
	lea	rdi, [rdi]
	bt	rax, rbx
	jae	.label_381
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
	je	.label_368
	nop	
	mov	rax, qword ptr [rbx]
	movsx	ecx, byte ptr [rax + 1]
	mov	r14d, 1
	cmp	ecx, 0x42
	nop	
	je	.label_369
	cmp	ecx, 0x44
	je	.label_369
	cmp	ecx, 0x69
	mov	rbp, rbp
	jne	.label_368
	movzx	eax, byte ptr [rax + 2]
	mov	r14d, 3
	lea	rdi, [rdi]
	cmp	eax, 0x42
	mov	rsp, rsp
	je	.label_368
	mov	r14d, 1
	jmp	.label_368
.label_369:
	mov	rsp, rsp
	mov	r15d, 0x3e8
	mov	r14d, 2
.label_368:
	mov	rax, qword ptr [rbx]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x59
	lea	rdi, [rdi]
	jg	.label_388
	mov	rsp, rsp
	lea	ecx, [rax - 0x42]
	nop	
	cmp	ecx, 0xe
	nop	
	ja	.label_383
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_386]]
.label_502:
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	mov	esi, 0x400
	jmp	.label_378
.label_388:
	cmp	eax, 0x73
	jg	.label_367
	lea	rsi, [rsi]
	lea	ecx, [rax - 0x62]
	mov	rsp, rsp
	cmp	ecx, 0xb
	mov	rbp, rbp
	ja	.label_370
	xor	eax, eax
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_374]]
.label_461:
	mov	rsp, rsp
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_378
.label_383:
	cmp	eax, 0x54
	lea	rsi, [rsi]
	je	.label_380
	nop	
	cmp	eax, 0x59
	jne	.label_376
	nop	
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 8
	jmp	.label_366
.label_367:
	lea	rdi, [rdi]
	cmp	eax, 0x74
	nop	
	je	.label_380
	cmp	eax, 0x77
	nop	
	jne	.label_376
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	mov	esi, 2
.label_378:
	nop	
	call	bkm_scale
	jmp	.label_365
.label_462:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	edx, 3
	mov	rbp, rbp
	jmp	.label_366
.label_463:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	edx, 1
	jmp	.label_366
.label_464:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	lea	rsi, [rsi]
	mov	edx, 2
	jmp	.label_366
.label_380:
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 4
	jmp	.label_366
.label_370:
	cmp	eax, 0x5a
	jne	.label_376
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 7
	mov	rbp, rbp
	jmp	.label_366
.label_376:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	or	r12d, 2
	jmp	.label_385
.label_503:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	jmp	.label_366
.label_504:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	edx, 5
.label_366:
	mov	esi, r15d
	lea	rdi, [rdi]
	call	bkm_scale_by_power
.label_365:
	mov	rsp, rsp
	or	eax, r12d
	mov	rcx, qword ptr [rbx]
	mov	rbp, rbp
	lea	rdx, [rcx + r14]
	mov	qword ptr [rbx], rdx
	nop	
	cmp	byte ptr [rcx + r14], 0
	je	.label_377
	lea	rdi, [rdi]
	or	eax, 2
.label_377:
	mov	r12d, eax
.label_387:
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rsp + 8]
.label_373:
	mov	qword ptr [rcx], rax
.label_385:
	mov	r15d, r12d
.label_372:
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
.label_379:
	lea	rsi, [rsi]
	mov	rbx, r13
	lea	rdi, [rdi]
	jmp	.label_368
.label_381:
	mov	rsp, rsp
	mov	rbx, r13
	lea	rsi, [rsi]
	jmp	.label_368
.label_375:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x4074b0

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
	#Procedure 0x4074f0

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
	je	.label_389
	nop	word ptr [rax + rax]
.label_390:
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
	jne	.label_390
.label_389:
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
	#Procedure 0x407560

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_391
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_392
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
	je	.label_392
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
.label_391:
	mov	ecx, 1
.label_392:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4075d0

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
	je	.label_393
	nop	
	cmp	r15, -2
	jb	.label_393
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_393
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_393:
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
	#Procedure 0x407660
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
	#Procedure 0x407690
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
	#Procedure 0x4076b0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4076c0
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
	#Procedure 0x4076d0
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
	#Procedure 0x4076f0
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
	#Procedure 0x407700
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
	#Procedure 0x407710
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
	#Procedure 0x407720
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
	#Procedure 0x407730
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
	#Procedure 0x407760
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
	#Procedure 0x407780

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
	#Procedure 0x407790
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
	#Procedure 0x4077b0
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
	#Procedure 0x4077c0
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
	#Procedure 0x4077d0

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
	je	.label_404
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	test	eax, eax
	jne	.label_403
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	jmp	.label_403
.label_404:
	test	eax, eax
	mov	rbp, rbp
	sete	cl
	neg	eax
	nop	
	sbb	ebx, ebx
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_403
	test	cl, cl
	jne	.label_403
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	nop	
	cmove	ebx, ecx
.label_403:
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
	#Procedure 0x407870

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
	je	.label_406
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_405
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_407
.label_405:
	nop	
	mov	esi, OFFSET FLAT:.str.1_4
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_406
.label_407:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_406:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4078c0

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
	mov	eax, OFFSET FLAT:.str.1_5
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_408
	nop	
	mov	rax, rcx
.label_408:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407900

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
	js	.label_409
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_410
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
	je	.label_409
.label_410:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_409
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	lea	rsi, [rsi]
	test	ebp, ebp
	je	.label_411
	call	__errno_location
	mov	dword ptr [rax], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_411:
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_409:
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
	#Procedure 0x4079c0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_412
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_412
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_412:
	mov	rsp, rsp
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	
	.section	.text
	.align	32
	#Procedure 0x4079f0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	jne	.label_413
	mov	rbp, rbp
	ret	
.label_413:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, 1
	lea	rdi, [rdi]
	jmp	rpl_fseeko
	nop	
	.section	.text
	.align	32
	#Procedure 0x407a10

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
	jne	.label_414
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_414
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_415
.label_414:
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
.label_415:
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
	je	.label_416
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_416:
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
	#Procedure 0x407ac0

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
	#Procedure 0x407b90

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
