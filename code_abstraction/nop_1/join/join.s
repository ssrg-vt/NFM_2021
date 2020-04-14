	.section	.text
	.align	16
	#Procedure 0x4017f0

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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401990

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.31
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
	mov	esi, OFFSET FLAT:.str.39
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
	mov	esi, OFFSET FLAT:.str.41
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
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
	mov	esi, OFFSET FLAT:.str.44
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.45
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
	#Procedure 0x401ab0

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
	mov	rbx, rsi
	mov	ebp, edi
	mov	dword ptr [rsp + 0x20], 0
	mov	qword ptr [rsp + 0x10], 0
	mov	dword ptr [rsp + 0xc], 0
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.13
	mov	esi, OFFSET FLAT:.str.14
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.13
	call	textdomain
	mov	edi, 3
	call	hard_locale
	mov	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  al
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	edi, OFFSET FLAT:free_spareline
	call	atexit
	mov	byte ptr [byte ptr [rip + print_pairables]],  1
	mov	byte ptr [byte ptr [rip + seen_unpairable]],  0
	mov	byte ptr [byte ptr [rip + label_21]],  0
	mov	byte ptr [byte ptr [rip + issued_disorder_warning]],  0
	mov	dword ptr [dword ptr [rip + check_input_order]],  0
	mov	edx, OFFSET FLAT:.str.15
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, -1
	je	.label_31
	lea	r15, [rsp + 0x18]
	lea	r12, [rsp + 0x10]
	lea	r13, [rsp + 0xc]
	lea	r14, [rsp + 0x20]
	jmp	.label_34
.label_48:
	movzx	eax, al
	cmp	eax, 0x32
	sete	al
	movzx	eax, al
	inc	dword ptr [rsp + rax*4 + 0x10]
	inc	eax
	mov	dword ptr [rsp + 0x24], eax
	jmp	.label_12
	nop	word ptr [rax + rax]
.label_34:
	mov	dword ptr [rsp + 0x24], 0
	cmp	eax, 0x6e
	jg	.label_42
	cmp	eax, 0x30
	jle	.label_46
	lea	ecx, [rax - 0x61]
	cmp	ecx, 9
	ja	.label_49
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_52]]
.label_522:
	mov	rdi,  qword ptr [word ptr [rip + empty_filler]]
	test	rdi, rdi
	je	.label_54
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	call	strcmp
	test	eax, eax
	jne	.label_57
.label_54:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + empty_filler]],  rax
	jmp	.label_12
	nop	dword ptr [rax]
.label_42:
	lea	ecx, [rax - 0x74]
	cmp	ecx, 0xe
	ja	.label_13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_14]]
.label_514:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	dl, byte ptr [rax]
	mov	cl, 0xa
	test	dl, dl
	je	.label_16
	mov	cl, byte ptr [rax + 1]
	test	cl, cl
	je	.label_25
	movzx	edx, dl
	cmp	edx, 0x5c
	jne	.label_24
	movzx	ecx, cl
	cmp	ecx, 0x30
	jne	.label_24
	cmp	byte ptr [rax + 2], 0
	jne	.label_24
	xor	ecx, ecx
	jmp	.label_16
	nop	word ptr [rax + rax]
.label_46:
	cmp	eax, 1
	jne	.label_33
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	rsi, r15
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, r14
	lea	r9, [rsp + 0x24]
	call	add_file_name
	jmp	.label_12
.label_49:
	cmp	eax, 0x31
	je	.label_39
	cmp	eax, 0x32
	jne	.label_18
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	string_to_join_field
	mov	edi, OFFSET FLAT:join_field_2
	jmp	.label_45
.label_13:
	cmp	eax, 0x6f
	jne	.label_18
	mov	r14, r12
	mov	r12, r15
	mov	r15, rbx
	mov	ebx, ebp
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	mov	esi, OFFSET FLAT:.str.18_0
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_56
	mov	rdi, rbp
	call	add_field_list
	mov	dword ptr [rsp + 0x24], 3
	jmp	.label_59
.label_515:
	mov	byte ptr [byte ptr [rip + print_pairables]],  0
.label_521:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_0
	lea	rcx, [rsp]
	call	xstrtoul
	test	eax, eax
	jne	.label_20
	mov	rax, qword ptr [rsp]
	lea	rcx, [rax - 1]
	cmp	rcx, 2
	jae	.label_20
	cmp	rax, 1
	jne	.label_26
	mov	byte ptr [byte ptr [rip + print_unpairables_1]],  1
	jmp	.label_12
.label_516:
	mov	byte ptr [byte ptr [rip + eolchar]],  1
	jmp	.label_12
.label_517:
	mov	dword ptr [dword ptr [rip + check_input_order]],  1
	jmp	.label_12
.label_518:
	mov	dword ptr [dword ptr [rip + check_input_order]],  2
	jmp	.label_12
.label_519:
	mov	byte ptr [byte ptr [rip + join_header_lines]],  1
	jmp	.label_12
.label_26:
	mov	byte ptr [byte ptr [rip + print_unpairables_2]],  1
	jmp	.label_12
.label_523:
	mov	byte ptr [byte ptr [rip + ignore_case]],  1
	jmp	.label_12
.label_524:
	mov	rcx,  qword ptr [word ptr [rip + optarg]]
	mov	al, byte ptr [rcx]
	mov	dl, al
	add	dl, 0xcf
	movzx	edx, dl
	cmp	edx, 1
	ja	.label_41
	cmp	byte ptr [rcx + 1], 0
	jne	.label_41
	movsxd	rdx,  dword ptr [dword ptr [rip + optind]]
	mov	rdx, qword ptr [rbx + rdx*8 - 8]
	add	rdx, 2
	cmp	rcx, rdx
	je	.label_48
.label_41:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	string_to_join_field
	mov	edi, OFFSET FLAT:join_field_1
	mov	rsi, rax
	call	set_join_field
	mov	rsi,  qword ptr [word ptr [rip + join_field_1]]
	mov	edi, OFFSET FLAT:join_field_2
	call	set_join_field
	jmp	.label_12
.label_39:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	string_to_join_field
	mov	edi, OFFSET FLAT:join_field_1
.label_45:
	mov	rsi, rax
	call	set_join_field
	jmp	.label_12
.label_56:
	mov	byte ptr [byte ptr [rip + autoformat]],  1
.label_59:
	mov	ebp, ebx
	mov	rbx, r15
	mov	r15, r12
	mov	r12, r14
	lea	r14, [rsp + 0x20]
	jmp	.label_12
.label_25:
	mov	cl, dl
.label_16:
	mov	edx,  dword ptr [dword ptr [rip + tab]]
	test	edx, edx
	movzx	eax, cl
	js	.label_22
	cmp	edx, eax
	jne	.label_27
.label_22:
	mov	dword ptr [dword ptr [rip + tab]],  eax
	nop	dword ptr [rax + rax]
.label_12:
	mov	eax, dword ptr [rsp + 0x24]
	mov	dword ptr [rsp + 0x20], eax
	mov	edx, OFFSET FLAT:.str.15
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, -1
	jne	.label_34
.label_31:
	mov	dword ptr [rsp + 0x20], 0
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, ebp
	jge	.label_37
	lea	r13, [rsp + 0x10]
	lea	r12, [rsp + 0xc]
	lea	r14, [rsp + 0x20]
	lea	r15, [rsp + 0x24]
	nop	
.label_53:
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	cdqe	
	mov	rdi, qword ptr [rbx + rax*8]
	lea	rsi, [rsp + 0x18]
	mov	rdx, r13
	mov	rcx, r12
	mov	r8, r14
	mov	r9, r15
	call	add_file_name
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, ebp
	jl	.label_53
.label_37:
	mov	r14, rbx
	mov	ebx, ebp
	xor	ebp, ebp
	mov	eax, dword ptr [rsp + 0xc]
	cmp	eax, 2
	jne	.label_55
	nop	word ptr cs:[rax + rax]
.label_50:
	cmp	dword ptr [rsp + rbp*4 + 0x10], 0
	je	.label_11
	mov	edi, OFFSET FLAT:join_field_1
	mov	rsi, rbp
	call	set_join_field
	mov	edi, OFFSET FLAT:join_field_2
	mov	rsi, rbp
	call	set_join_field
.label_11:
	inc	rbp
	cmp	rbp, 2
	jne	.label_50
	cmp	qword ptr [word ptr [rip + join_field_1]],  -1
	jne	.label_19
	mov	qword ptr [word ptr [rip + join_field_1]],  0
.label_19:
	cmp	qword ptr [word ptr [rip + join_field_2]],  -1
	jne	.label_23
	mov	qword ptr [word ptr [rip + join_field_2]],  0
.label_23:
	mov	rax,  qword ptr [word ptr [rip + g_names]]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_28
	cmp	byte ptr [rax + 1], 0
	je	.label_29
.label_28:
	mov	rdi,  qword ptr [word ptr [rip + g_names]]
	mov	esi, OFFSET FLAT:.str.27
	call	fopen_safer
	mov	rbx, rax
	jmp	.label_35
.label_29:
	mov	rbx,  qword ptr [word ptr [rip + stdin]]
.label_35:
	test	rbx, rbx
	je	.label_17
	mov	rax,  qword ptr [word ptr [rip + label_30]]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_38
	cmp	byte ptr [rax + 1], 0
	je	.label_40
.label_38:
	mov	rdi,  qword ptr [word ptr [rip + label_30]]
	mov	esi, OFFSET FLAT:.str.27
	call	fopen_safer
	mov	rbp, rax
	jmp	.label_43
.label_40:
	mov	rbp,  qword ptr [word ptr [rip + stdin]]
.label_43:
	test	rbp, rbp
	je	.label_47
	cmp	rbx, rbp
	je	.label_51
	mov	rdi, rbx
	mov	rsi, rbp
	call	system_join
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_17
	mov	rdi, rbp
	call	rpl_fclose
	test	eax, eax
	jne	.label_47
	mov	al,  byte ptr [byte ptr [rip + label_21]]
	or	al,  byte ptr [byte ptr [rip + issued_disorder_warning]]
	jne	.label_60
	xor	eax, eax
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_33:
	cmp	eax, 0xffffff7d
	je	.label_15
	cmp	eax, 0xffffff7e
	jne	.label_18
	xor	edi, edi
	call	usage
.label_15:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.23
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_18:
	mov	edi, 1
	call	usage
.label_20:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	jmp	.label_32
.label_17:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + g_names]]
	jmp	.label_36
.label_47:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + label_30]]
.label_36:
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_27:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	jmp	.label_44
.label_24:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
.label_32:
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
.label_55:
	xor	edi, edi
	test	eax, eax
	jne	.label_58
	mov	esi, OFFSET FLAT:.str.24
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
.label_51:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_60:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
	jmp	.label_44
.label_57:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17_0
.label_44:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_58:
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, ebx
	mov	rdi, qword ptr [r14 + rax*8 - 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x4021c0

	.globl free_spareline
	.type free_spareline, @function
free_spareline:
	push	rbx
	mov	rbx, -0x10
	nop	dword ptr [rax + rax]
.label_62:
	mov	rdi,  qword ptr [word ptr [rbx + outlist_head]]
	test	rdi, rdi
	je	.label_61
	call	freeline
	mov	rdi,  qword ptr [word ptr [rbx + outlist_head]]
	call	free
.label_61:
	add	rbx, 8
	jne	.label_62
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402200

	.globl set_join_field
	.type set_join_field, @function
set_join_field:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, qword ptr [rdi]
	cmp	rbx, -1
	je	.label_63
	cmp	rbx, r14
	jne	.label_64
.label_63:
	mov	qword ptr [rdi], r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_64:
	inc	rbx
	inc	r14
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
	mov	r8, r14
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402260

	.globl string_to_join_field
	.type string_to_join_field, @function
string_to_join_field:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_0
	call	xstrtoul
	cmp	eax, 1
	jne	.label_67
	mov	qword ptr [rsp], -1
	jmp	.label_66
.label_67:
	test	eax, eax
	jne	.label_65
	mov	rax, qword ptr [rsp]
	test	rax, rax
	je	.label_65
.label_66:
	mov	rax, qword ptr [rsp]
	dec	rax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_65:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022e0

	.globl add_field_list
	.type add_field_list, @function
add_field_list:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdi
	lea	r14, [rsp + 0x14]
	lea	r15, [rsp + 8]
	nop	dword ptr [rax + rax]
.label_68:
	mov	esi, 0x2c
	mov	edx, 0x20
	mov	ecx, 9
	mov	rdi, r12
	call	__strpbrk_c3
	test	rax, rax
	mov	ebx, 0
	je	.label_69
	mov	rbx, rax
	inc	rbx
	mov	byte ptr [rax], 0
.label_69:
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	call	decode_field_spec
	mov	edi, dword ptr [rsp + 0x14]
	mov	rsi, qword ptr [rsp + 8]
	call	add_field
	test	rbx, rbx
	mov	r12, rbx
	jne	.label_68
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402360

	.globl add_file_name
	.type add_file_name, @function
add_file_name:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r12, r8
	mov	r13, rcx
	mov	rbx, rsi
	mov	r15, rdi
	mov	eax, dword ptr [r13]
	cmp	eax, 2
	jne	.label_70
	mov	ebp, dword ptr [rbx]
	test	ebp, ebp
	sete	al
	movzx	eax, al
	mov	ecx, dword ptr [rbx + rax*4]
	cmp	rcx, 3
	ja	.label_71
	mov	rdi,  qword ptr [word ptr [+ (rax * 8) + g_names]]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_74]]
.label_530:
	dec	dword ptr [rdx]
	call	string_to_join_field
	mov	edi, OFFSET FLAT:join_field_1
	jmp	.label_73
.label_531:
	dec	dword ptr [rdx + 4]
	call	string_to_join_field
	mov	edi, OFFSET FLAT:join_field_2
.label_73:
	mov	rsi, rax
	call	set_join_field
	jmp	.label_71
.label_532:
	call	add_field_list
.label_71:
	mov	eax, 1
	test	ebp, ebp
	je	.label_70
	mov	ecx, dword ptr [rbx + 4]
	mov	dword ptr [rbx], ecx
	mov	rcx,  qword ptr [word ptr [rip + label_30]]
	mov	qword ptr [word ptr [rip + g_names]],  rcx
.label_70:
	mov	ecx, dword ptr [r12]
	cdqe	
	mov	dword ptr [rbx + rax*4], ecx
	mov	qword ptr [word ptr [+ (rax * 8) + g_names]],  r15
	inc	eax
	mov	dword ptr [r13], eax
	cmp	dword ptr [r12], 3
	jne	.label_72
	mov	dword ptr [r14], 3
.label_72:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_529:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402460

	.globl system_join
	.type system_join, @function
system_join:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	r14, rsi
	mov	qword ptr [rsp + 0x20], r14
	mov	r12, rdi
	mov	qword ptr [rsp + 0x18], r12
	mov	esi, 2
	call	fadvise
	mov	esi, 2
	mov	rdi, r14
	call	fadvise
	lea	r15, [rsp + 0x60]
	mov	rdi, r15
	call	initseq
	mov	edx, 1
	mov	rdi, r12
	mov	rsi, r15
	call	getseq
	lea	r15, [rsp + 0x48]
	mov	rdi, r15
	call	initseq
	mov	edx, 2
	mov	rdi, r14
	mov	rsi, r15
	call	getseq
	movzx	eax,  byte ptr [byte ptr [rip + autoformat]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_110
	xor	eax, eax
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_111
	mov	rax, qword ptr [rsp + 0x70]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + 0x18]
.label_111:
	mov	qword ptr [word ptr [rip + autocount_1]],  rax
	xor	eax, eax
	cmp	qword ptr [rsp + 0x48], 0
	je	.label_115
	mov	rax, qword ptr [rsp + 0x58]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + 0x18]
.label_115:
	mov	qword ptr [word ptr [rip + autocount_2]],  rax
.label_110:
	movzx	eax,  byte ptr [byte ptr [rip + join_header_lines]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_81
	cmp	qword ptr [rsp + 0x60], 0
	jne	.label_77
	cmp	qword ptr [rsp + 0x48], 0
	je	.label_81
	mov	edi, OFFSET FLAT:uni_blank
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_85
.label_77:
	mov	rax, qword ptr [rsp + 0x70]
	mov	rdi, qword ptr [rax]
.label_85:
	mov	esi, OFFSET FLAT:uni_blank
	cmp	qword ptr [rsp + 0x48], 0
	je	.label_91
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsi, qword ptr [rax]
.label_91:
	call	prjoin
	xorps	xmm0, xmm0
	movaps	xmmword ptr [word ptr [rip + prevline]],  xmm0
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_97
	lea	rsi, [rsp + 0x60]
	mov	edx, 1
	mov	ecx, 1
	mov	rdi, r12
	call	advance_seq
.label_97:
	cmp	qword ptr [rsp + 0x48], 0
	je	.label_81
	lea	rsi, [rsp + 0x48]
	mov	edx, 1
	mov	ecx, 2
	mov	rdi, r14
	call	advance_seq
.label_81:
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_86
	mov	rax, qword ptr [rsp + 0x48]
	test	rax, rax
	je	.label_86
	lea	r15, [rsp + 0x60]
	lea	rbp, [rsp + 0x48]
	jmp	.label_90
	nop	dword ptr [rax + rax]
.label_108:
	mov	rbx, qword ptr [rsp + 0x58]
	nop	word ptr cs:[rax + rax]
.label_82:
	xor	edx, edx
	mov	ecx, 1
	mov	rdi, r12
	mov	rsi, r15
	call	advance_seq
	mov	rcx, qword ptr [rsp + 0x60]
	test	al, al
	je	.label_76
	mov	rax, qword ptr [rsp + 0x70]
	mov	rdi, qword ptr [rax + rcx*8 - 8]
	mov	rsi, qword ptr [rbx]
	mov	rdx,  qword ptr [word ptr [rip + join_field_1]]
	mov	rcx,  qword ptr [word ptr [rip + join_field_2]]
	call	keycmp
	test	eax, eax
	je	.label_82
	mov	dword ptr [rsp + 0x2c], 0
	jmp	.label_83
.label_76:
	inc	rcx
	mov	qword ptr [rsp + 0x60], rcx
	mov	al, 1
	mov	dword ptr [rsp + 0x2c], eax
.label_83:
	mov	rbx, qword ptr [rsp + 0x70]
	nop	dword ptr [rax]
.label_89:
	xor	edx, edx
	mov	ecx, 2
	mov	rdi, r14
	mov	rsi, rbp
	call	advance_seq
	test	al, al
	je	.label_94
	mov	rdi, qword ptr [rbx]
	mov	rax, qword ptr [rsp + 0x48]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsi, qword ptr [rcx + rax*8 - 8]
	mov	rdx,  qword ptr [word ptr [rip + join_field_1]]
	mov	rcx,  qword ptr [word ptr [rip + join_field_2]]
	call	keycmp
	test	eax, eax
	je	.label_89
	mov	dword ptr [rsp + 0x28], 0
	jmp	.label_101
.label_94:
	inc	qword ptr [rsp + 0x48]
	mov	al, 1
	mov	dword ptr [rsp + 0x28], eax
.label_101:
	cmp	qword ptr [rsp + 0x60], 1
	je	.label_104
	mov	al,  byte ptr [byte ptr [rip + print_pairables]]
	xor	al, 1
	test	al, 1
	jne	.label_104
	mov	r13, qword ptr [rsp + 0x48]
	mov	rax, qword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 0x38], rax
	mov	r15, qword ptr [rsp + 0x60]
	mov	r12, qword ptr [rsp + 0x70]
	dec	r15
	lea	rax, [r13 - 1]
	mov	qword ptr [rsp + 0x30], rax
	xor	ebx, ebx
	nop	
.label_78:
	cmp	r13, 1
	je	.label_88
	mov	r14, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x38]
.label_116:
	mov	rdi, qword ptr [r12 + rbx*8]
	mov	rsi, qword ptr [rbp]
	call	prjoin
	add	rbp, 8
	dec	r14
	jne	.label_116
.label_88:
	inc	rbx
	cmp	rbx, r15
	jb	.label_78
.label_104:
	mov	eax, dword ptr [rsp + 0x2c]
	test	al, al
	mov	eax, 0
	jne	.label_99
	mov	rax, qword ptr [rsp + 0x60]
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rcx]
	mov	rsi, qword ptr [rcx + rax*8 - 8]
	mov	qword ptr [rcx], rsi
	mov	rcx, qword ptr [rsp + 0x70]
	mov	qword ptr [rcx + rax*8 - 8], rdx
	mov	eax, 1
.label_99:
	mov	qword ptr [rsp + 0x60], rax
	mov	eax, dword ptr [rsp + 0x28]
	test	al, al
	mov	r14, qword ptr [rsp + 0x20]
	mov	r12, qword ptr [rsp + 0x18]
	lea	rbp, [rsp + 0x60]
	mov	r15, rbp
	lea	rbp, [rsp + 0x48]
	je	.label_87
	mov	qword ptr [rsp + 0x48], 0
	jmp	.label_95
.label_87:
	mov	rax, qword ptr [rsp + 0x48]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rcx]
	mov	rsi, qword ptr [rcx + rax*8 - 8]
	mov	qword ptr [rcx], rsi
	mov	rcx, qword ptr [rsp + 0x58]
	mov	qword ptr [rcx + rax*8 - 8], rdx
	mov	qword ptr [rsp + 0x48], 1
	jmp	.label_95
	nop	
.label_90:
	mov	rax, qword ptr [rsp + 0x70]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsi, qword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + join_field_1]]
	mov	rcx,  qword ptr [word ptr [rip + join_field_2]]
	call	keycmp
	test	eax, eax
	js	.label_107
	jle	.label_108
	movzx	eax,  byte ptr [byte ptr [rip + print_unpairables_2]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_109
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsi, qword ptr [rax]
	mov	edi, OFFSET FLAT:uni_blank
	call	prjoin
.label_109:
	mov	edx, 1
	mov	ecx, 2
	mov	rdi, r14
	mov	rsi, rbp
	jmp	.label_113
.label_107:
	movzx	eax,  byte ptr [byte ptr [rip + print_unpairables_1]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_75
	mov	rax, qword ptr [rsp + 0x70]
	mov	rdi, qword ptr [rax]
	mov	esi, OFFSET FLAT:uni_blank
	call	prjoin
.label_75:
	mov	edx, 1
	mov	ecx, 1
	mov	rdi, r12
	mov	rsi, r15
.label_113:
	call	advance_seq
	mov	byte ptr [byte ptr [rip + seen_unpairable]],  1
.label_95:
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_86
	mov	rax, qword ptr [rsp + 0x48]
	test	rax, rax
	jne	.label_90
.label_86:
	mov	qword ptr [rsp + 0x40], 0
	cmp	dword ptr [dword ptr [rip + check_input_order]],  2
	jne	.label_92
	xor	ebx, ebx
	jmp	.label_96
.label_92:
	cmp	byte ptr [byte ptr [rip + issued_disorder_warning]],  0
	sete	al
	cmp	byte ptr [byte ptr [rip + label_21]],  0
	sete	bl
	or	bl, al
.label_96:
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_80
	mov	al,  byte ptr [byte ptr [rip + print_unpairables_1]]
	mov	cl, bl
	or	cl, al
	xor	cl, 1
	test	cl, 1
	jne	.label_80
	test	al, 1
	je	.label_102
	mov	rax, qword ptr [rsp + 0x70]
	mov	rdi, qword ptr [rax]
	mov	esi, OFFSET FLAT:uni_blank
	call	prjoin
.label_102:
	cmp	qword ptr [rsp + 0x48], 0
	je	.label_105
	mov	byte ptr [byte ptr [rip + seen_unpairable]],  1
.label_105:
	lea	rsi, [rsp + 0x40]
	mov	edx, 1
	mov	rdi, r12
	call	get_line
	test	al, al
	je	.label_80
	lea	r15, [rsp + 0x40]
	nop	word ptr cs:[rax + rax]
.label_103:
	movzx	eax,  byte ptr [byte ptr [rip + print_unpairables_1]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_114
	mov	rdi, qword ptr [rsp + 0x40]
	mov	esi, OFFSET FLAT:uni_blank
	call	prjoin
.label_114:
	cmp	byte ptr [byte ptr [rip + issued_disorder_warning]],  0
	je	.label_79
	movzx	eax,  byte ptr [byte ptr [rip + print_unpairables_1]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_80
.label_79:
	mov	edx, 1
	mov	rdi, r12
	mov	rsi, r15
	call	get_line
	test	al, al
	jne	.label_103
.label_80:
	cmp	qword ptr [rsp + 0x48], 0
	je	.label_84
	mov	al,  byte ptr [byte ptr [rip + print_unpairables_2]]
	or	bl, al
	xor	bl, 1
	test	bl, 1
	jne	.label_84
	test	al, 1
	je	.label_93
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsi, qword ptr [rax]
	mov	edi, OFFSET FLAT:uni_blank
	call	prjoin
.label_93:
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_98
	mov	byte ptr [byte ptr [rip + seen_unpairable]],  1
.label_98:
	lea	rsi, [rsp + 0x40]
	mov	edx, 2
	mov	rdi, r14
	call	get_line
	test	al, al
	je	.label_84
	lea	rbx, [rsp + 0x40]
	nop	word ptr [rax + rax]
.label_112:
	movzx	eax,  byte ptr [byte ptr [rip + print_unpairables_2]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_106
	mov	rsi, qword ptr [rsp + 0x40]
	mov	edi, OFFSET FLAT:uni_blank
	call	prjoin
.label_106:
	cmp	byte ptr [byte ptr [rip + label_21]],  0
	je	.label_100
	movzx	eax,  byte ptr [byte ptr [rip + print_unpairables_2]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_84
.label_100:
	mov	edx, 2
	mov	rdi, r14
	mov	rsi, rbx
	call	get_line
	test	al, al
	jne	.label_112
.label_84:
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdi, rbx
	call	freeline
	mov	rdi, rbx
	call	free
	lea	rdi, [rsp + 0x60]
	call	delseq
	lea	rdi, [rsp + 0x48]
	call	delseq
	add	rsp, 0x78
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
	#Procedure 0x402a30

	.globl freeline
	.type freeline, @function
freeline:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_117
	mov	rdi, qword ptr [rbx + 0x28]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	qword ptr [rbx + 0x10], 0
.label_117:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402a60

	.globl decode_field_spec
	.type decode_field_spec, @function
decode_field_spec:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	movsx	eax, byte ptr [rbx]
	lea	ecx, [rax - 0x31]
	cmp	ecx, 2
	jae	.label_118
	movzx	eax, byte ptr [rbx + 1]
	cmp	eax, 0x2e
	jne	.label_122
	movsx	eax, byte ptr [rbx]
	add	eax, -0x30
	mov	dword ptr [rsi], eax
	add	rbx, 2
	mov	rdi, rbx
	call	string_to_join_field
	jmp	.label_119
.label_118:
	cmp	eax, 0x30
	jne	.label_121
	cmp	byte ptr [rbx + 1], 0
	jne	.label_122
	mov	dword ptr [rsi], 0
	xor	eax, eax
.label_119:
	mov	qword ptr [r14], rax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_121:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.56
	jmp	.label_120
.label_122:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.55
.label_120:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402af0

	.globl add_field
	.type add_field, @function
add_field:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	ebp, edi
	cmp	ebp, 2
	je	.label_123
	mov	eax, ebp
	or	eax, 1
	cmp	eax, 1
	jne	.label_126
.label_123:
	test	ebp, ebp
	jne	.label_124
	test	rbx, rbx
	jne	.label_125
.label_124:
	mov	edi, 0x18
	call	xmalloc
	mov	dword ptr [rax], ebp
	mov	qword ptr [rax + 8], rbx
	mov	qword ptr [rax + 0x10], 0
	mov	rcx,  qword ptr [word ptr [rip + outlist_end]]
	mov	qword ptr [rcx + 0x10], rax
	mov	qword ptr [word ptr [rip + outlist_end]],  rax
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_126:
	mov	edi, OFFSET FLAT:.str.57
	mov	esi, OFFSET FLAT:.str.58
	mov	edx, 0x333
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.add_field
	call	__assert_fail
.label_125:
	mov	edi, OFFSET FLAT:.str.59
	mov	esi, OFFSET FLAT:.str.58
	mov	edx, 0x334
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.add_field
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b80

	.globl initseq
	.type initseq, @function
initseq:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi], xmm0
	mov	qword ptr [rdi + 0x10], 0
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402b90

	.globl getseq
	.type getseq, @function
getseq:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, edx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rax, qword ptr [rbx]
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_127
	lea	r15, [rbx + 8]
	mov	rdi, qword ptr [rbx + 0x10]
	mov	edx, 8
	mov	rsi, r15
	call	x2nrealloc
	mov	qword ptr [rbx + 0x10], rax
	mov	rax, qword ptr [rbx]
	cmp	rax, qword ptr [rbx + 8]
	jae	.label_127
	mov	rcx, qword ptr [r15]
	nop	
.label_128:
	mov	rdx, qword ptr [rbx + 0x10]
	mov	qword ptr [rdx + rax*8], 0
	inc	rax
	cmp	rax, rcx
	jb	.label_128
.label_127:
	mov	rsi, qword ptr [rbx]
	shl	rsi, 3
	add	rsi, qword ptr [rbx + 0x10]
	mov	rdi, rbp
	mov	edx, r14d
	call	get_line
	test	al, al
	je	.label_130
	inc	qword ptr [rbx]
	mov	al, 1
	jmp	.label_129
.label_130:
	xor	eax, eax
.label_129:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c20

	.globl prjoin
	.type prjoin, @function
prjoin:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r13, rdi
	mov	rbx,  qword ptr [word ptr [rip + label_131]]
	test	rbx, rbx
	je	.label_132
	mov	eax,  dword ptr [dword ptr [rip + tab]]
	mov	ecx, OFFSET FLAT:uni_blank
	cmp	r13, rcx
	mov	ecx, OFFSET FLAT:join_field_2
	mov	r12d, OFFSET FLAT:join_field_1
	cmove	r12, rcx
	mov	r15, r13
	cmove	r15, r14
	test	eax, eax
	movsx	eax, al
	mov	ebp, 0x20
	cmovns	ebp, eax
	jmp	.label_135
.label_134:
	mov	edi, ebp
	call	putchar_unlocked
.label_135:
	mov	eax, dword ptr [rbx]
	cmp	eax, 1
	mov	rsi, r14
	cmove	rsi, r13
	lea	rcx, [rbx + 8]
	test	eax, eax
	cmove	rcx, r12
	cmove	rsi, r15
	mov	rdi, qword ptr [rcx]
	call	prfield
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_134
	jmp	.label_133
.label_132:
	mov	eax, OFFSET FLAT:uni_blank
	cmp	r13, rax
	mov	rsi, r13
	cmove	rsi, r14
	mov	eax, OFFSET FLAT:join_field_2
	mov	ecx, OFFSET FLAT:join_field_1
	cmove	rcx, rax
	mov	rdi, qword ptr [rcx]
	call	prfield
	mov	rsi,  qword ptr [word ptr [rip + join_field_1]]
	mov	rdx,  qword ptr [word ptr [rip + autocount_1]]
	mov	rdi, r13
	call	prfields
	mov	rsi,  qword ptr [word ptr [rip + join_field_2]]
	mov	rdx,  qword ptr [word ptr [rip + autocount_2]]
	mov	rdi, r14
	call	prfields
.label_133:
	mov	al,  byte ptr [byte ptr [rip + eolchar]]
	xor	ecx, ecx
	and	al, 1
	mov	edi, 0xa
	cmovne	edi, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	putchar_unlocked
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d20

	.globl advance_seq
	.type advance_seq, @function
advance_seq:
	test	dl, dl
	je	.label_136
	mov	qword ptr [rsi], 0
.label_136:
	mov	edx, ecx
	jmp	getseq
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d40

	.globl keycmp
	.type keycmp, @function
keycmp:
	push	r14
	push	rbx
	push	rax
	mov	rax, rdi
	xor	edi, edi
	cmp	qword ptr [rax + 0x18], rdx
	mov	r14d, 0
	jbe	.label_137
	mov	rax, qword ptr [rax + 0x28]
	shl	rdx, 4
	mov	rdi, qword ptr [rax + rdx]
	mov	r14, qword ptr [rax + rdx + 8]
.label_137:
	xor	r8d, r8d
	cmp	qword ptr [rsi + 0x18], rcx
	mov	ebx, 0
	jbe	.label_139
	mov	rax, qword ptr [rsi + 0x28]
	shl	rcx, 4
	mov	r8, qword ptr [rax + rcx]
	mov	rbx, qword ptr [rax + rcx + 8]
.label_139:
	test	r14, r14
	je	.label_138
	mov	eax, 1
	test	rbx, rbx
	je	.label_140
	movzx	eax,  byte ptr [byte ptr [rip + ignore_case]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_141
	cmp	r14, rbx
	mov	rdx, rbx
	cmovb	rdx, r14
	mov	rsi, r8
	call	memcasecmp
	jmp	.label_143
.label_138:
	neg	rbx
	sbb	eax, eax
	jmp	.label_140
.label_141:
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	je	.label_142
	mov	rsi, r14
	mov	rdx, r8
	mov	rcx, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	xmemcoll
.label_142:
	cmp	r14, rbx
	mov	rdx, rbx
	cmovb	rdx, r14
	mov	rsi, r8
	call	memcmp
.label_143:
	test	eax, eax
	jne	.label_140
	cmp	r14, rbx
	setne	al
	movzx	ecx, al
	mov	eax, 0xffffffff
	cmovae	eax, ecx
.label_140:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e10

	.globl get_line
	.type get_line, @function
get_line:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, edx
	mov	r15, rdi
	mov	rbx, qword ptr [rsi]
	movsxd	rax, r14d
	cmp	rbx,  qword ptr [word ptr [+ (rax * 8) + label_146]]
	lea	rbp, [rax - 1]
	jne	.label_147
	mov	rax,  qword ptr [word ptr [+ (rbp * 8) + spareline]]
	mov	qword ptr [word ptr [+ (rbp * 8) + spareline]],  rbx
	mov	qword ptr [rsi], rax
	mov	rbx, rax
.label_147:
	test	rbx, rbx
	je	.label_145
	mov	rdi, rbx
	call	reset_line
	jmp	.label_148
.label_145:
	mov	rdi, rsi
	call	init_linep
	mov	rbx, rax
.label_148:
	mov	al,  byte ptr [byte ptr [rip + eolchar]]
	and	al, 1
	jne	.label_149
	mov	al, 0xa
	jmp	.label_150
.label_149:
	xor	eax, eax
.label_150:
	movzx	edx, al
	mov	rdi, rbx
	mov	rsi, r15
	call	readlinebuffer_delim
	test	rax, rax
	je	.label_153
	inc	qword ptr [word ptr [+ (rbp * 8) + line_no]]
	mov	rdi, rbx
	call	xfields
	mov	rdi,  qword ptr [word ptr [+ (rbp * 8) + prevline]]
	test	rdi, rdi
	je	.label_152
	mov	rsi, rbx
	mov	edx, r14d
	call	check_order
.label_152:
	mov	qword ptr [word ptr [+ (rbp * 8) + prevline]],  rbx
	mov	al, 1
	jmp	.label_151
.label_153:
	mov	rdi, r15
	call	ferror_unlocked
	test	eax, eax
	jne	.label_144
	mov	rdi, rbx
	call	freeline
	xor	eax, eax
.label_151:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_144:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.61
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
	#Procedure 0x402f10

	.globl delseq
	.type delseq, @function
delseq:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	xor	ebx, ebx
	cmp	qword ptr [r14 + 8], 0
	je	.label_154
.label_155:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [rax + rbx*8]
	call	freeline
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [rax + rbx*8]
	call	free
	inc	rbx
	cmp	rbx, qword ptr [r14 + 8]
	jb	.label_155
.label_154:
	mov	rdi, qword ptr [r14 + 0x10]
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f60

	.globl prfield
	.type prfield, @function
prfield:
	cmp	qword ptr [rsi + 0x18], rdi
	jbe	.label_156
	mov	rax, qword ptr [rsi + 0x28]
	shl	rdi, 4
	mov	rdx, qword ptr [rax + rdi + 8]
	test	rdx, rdx
	je	.label_158
	mov	rdi, qword ptr [rax + rdi]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	jmp	fwrite_unlocked
.label_156:
	mov	rdi,  qword ptr [word ptr [rip + empty_filler]]
	test	rdi, rdi
	je	.label_157
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	jmp	fputs_unlocked
.label_158:
	mov	rdi,  qword ptr [word ptr [rip + empty_filler]]
	test	rdi, rdi
	je	.label_157
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	jmp	fputs_unlocked
.label_157:
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402fc0

	.globl prfields
	.type prfields, @function
prfields:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	al,  byte ptr [byte ptr [rip + autoformat]]
	and	al, 1
	jne	.label_159
	mov	r14, qword ptr [r15 + 0x18]
.label_159:
	mov	eax,  dword ptr [dword ptr [rip + tab]]
	test	eax, eax
	mov	r13b, 0x20
	js	.label_160
	mov	r13b, al
.label_160:
	test	rbx, rbx
	je	.label_161
	test	r14, r14
	je	.label_161
	movsx	r12d, r13b
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_162:
	mov	edi, r12d
	call	putchar_unlocked
	mov	rdi, rbp
	mov	rsi, r15
	call	prfield
	inc	rbp
	cmp	rbp, rbx
	jae	.label_161
	cmp	rbp, r14
	jb	.label_162
.label_161:
	inc	rbx
	cmp	rbx, r14
	jae	.label_164
	movsx	ebp, r13b
	nop	dword ptr [rax]
.label_163:
	mov	edi, ebp
	call	putchar_unlocked
	mov	rdi, rbx
	mov	rsi, r15
	call	prfield
	inc	rbx
	cmp	r14, rbx
	jne	.label_163
.label_164:
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
	#Procedure 0x403070

	.globl reset_line
	.type reset_line, @function
reset_line:
	mov	qword ptr [rdi + 0x18], 0
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403080

	.globl init_linep
	.type init_linep, @function
init_linep:
	push	rbx
	mov	rbx, rdi
	mov	edi, 1
	mov	esi, 0x30
	call	xcalloc
	mov	qword ptr [rbx], rax
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030a0

	.globl xfields
	.type xfields, @function
xfields:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	r13, qword ptr [r14 + 8]
	mov	rbp, qword ptr [r14 + 0x10]
	lea	r15, [rbp + r13 - 1]
	cmp	rbp, r15
	je	.label_171
	mov	eax,  dword ptr [dword ptr [rip + tab]]
	test	eax, eax
	js	.label_165
	cmp	eax, 0xa
	jne	.label_168
.label_165:
	test	eax, eax
	jns	.label_169
	lea	rbx, [r13 - 1]
	mov	r12, rbp
	nop	word ptr [rax + rax]
.label_174:
	movzx	edi, byte ptr [r12]
	call	field_sep
	test	al, al
	je	.label_173
	inc	r12
	dec	rbx
	jne	.label_174
.label_171:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
.label_172:
	mov	rdx, rbx
	sub	rdx, rbp
	mov	rdi, r14
	mov	rsi, rbp
	call	extract_field
	mov	rbp, rbx
	inc	rbp
.label_168:
	mov	esi,  dword ptr [dword ptr [rip + tab]]
	mov	rdx, r15
	sub	rdx, rbp
	mov	rdi, rbp
	call	memchr
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_172
.label_169:
	sub	r15, rbp
	mov	rdi, r14
	mov	rsi, rbp
	mov	rdx, r15
.label_170:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	extract_field
.label_173:
	add	rbp, r13
.label_177:
	lea	rdx, [r12 + 2]
	lea	rcx, [r12 + 3]
	nop	
.label_167:
	mov	r13, rdx
	mov	rbx, rcx
	cmp	rbp, r13
	je	.label_175
	movzx	edi, byte ptr [r13 - 1]
	call	field_sep
	lea	rdx, [r13 + 1]
	lea	rcx, [rbx + 1]
	test	al, al
	je	.label_167
	add	rdx, -2
	sub	rdx, r12
	mov	rdi, r14
	mov	rsi, r12
	call	extract_field
	cmp	rbp, r13
	je	.label_171
	nop	dword ptr [rax]
.label_166:
	mov	r13, rbx
	cmp	rbp, r13
	je	.label_176
	movzx	edi, byte ptr [r13 - 1]
	call	field_sep
	lea	rbx, [r13 + 1]
	test	al, al
	jne	.label_166
.label_176:
	lea	r12, [r13 - 1]
	cmp	rbp, r13
	jne	.label_177
	dec	r13
	mov	rbp, r13
	jmp	.label_169
.label_175:
	dec	r13
	sub	r13, r12
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, r13
	jmp	.label_170
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403200

	.globl check_order
	.type check_order, @function
check_order:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	eax,  dword ptr [dword ptr [rip + check_input_order]]
	cmp	eax, 1
	je	.label_178
	cmp	eax, 2
	je	.label_179
	movzx	eax,  byte ptr [byte ptr [rip + seen_unpairable]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_179
.label_178:
	movsxd	r14, edx
	cmp	byte ptr [byte ptr [r14 + seen_unpairable]],  0
	jne	.label_179
	cmp	edx, 1
	mov	eax, OFFSET FLAT:join_field_1
	mov	ecx, OFFSET FLAT:join_field_2
	cmove	rcx, rax
	mov	rdx, qword ptr [rcx]
	mov	rsi, rbx
	mov	rcx, rdx
	call	keycmp
	test	eax, eax
	jle	.label_179
	mov	rax, qword ptr [rbx + 8]
	xor	r15d, r15d
	test	rax, rax
	je	.label_181
	mov	rcx, qword ptr [rbx + 0x10]
	movzx	ecx, byte ptr [rcx + rax - 1]
	cmp	ecx, 0xa
	jne	.label_182
	dec	rax
.label_182:
	mov	r15, rax
.label_181:
	cmp	dword ptr [dword ptr [rip + check_input_order]],  1
	sete	bpl
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.62
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	r15, 0x7fffffff
	movzx	edi, bpl
	mov	rcx,  qword ptr [word ptr [+ (r14 * 8) + ignore_case]]
	mov	r8,  qword ptr [word ptr [+ (r14 * 8) + label_180]]
	mov	r9d, 0x7fffffff
	cmovbe	r9d, r15d
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rsp], rax
	mov	esi, 0
	xor	eax, eax
	call	error
	mov	byte ptr [byte ptr [r14 + seen_unpairable]],  1
.label_179:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403300

	.globl extract_field
	.type extract_field, @function
extract_field:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x18]
	cmp	rax, qword ptr [rbx + 0x20]
	jb	.label_183
	lea	rsi, [rbx + 0x20]
	mov	rdi, qword ptr [rbx + 0x28]
	mov	edx, 0x10
	call	x2nrealloc
	mov	qword ptr [rbx + 0x28], rax
.label_183:
	mov	rax, qword ptr [rbx + 0x18]
	mov	rcx, qword ptr [rbx + 0x28]
	shl	rax, 4
	mov	qword ptr [rcx + rax], r15
	mov	rax, qword ptr [rbx + 0x18]
	mov	rcx, qword ptr [rbx + 0x28]
	shl	rax, 4
	mov	qword ptr [rcx + rax + 8], r14
	inc	qword ptr [rbx + 0x18]
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403360

	.globl field_sep
	.type field_sep, @function
field_sep:
	push	rbx
	mov	ebx, edi
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	cmp	ebx, 0xa
	sete	cl
	mov	al, byte ptr [rax + rbx*2]
	and	al, 1
	or	al, cl
	pop	rbx
	ret	
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403380
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403390
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033a0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_186
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_184
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_184
.label_186:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_187
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_184:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_185
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_187:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_185:
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
	#Procedure 0x403460

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403470

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_188
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_188:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403490

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
	je	.label_190
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_192
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_193
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_189
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_190
.label_189:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_191
.label_192:
	mov	rax, rbx
	jmp	.label_190
.label_193:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_191:
	xor	eax, eax
.label_190:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403520

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_195
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_196
	cmp	byte ptr [rax + 1], 0
	je	.label_194
.label_196:
	mov	esi, OFFSET FLAT:.str.1_1
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_195
.label_194:
	xor	ebx, ebx
.label_195:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x403560
	.globl initbuffer
	.type initbuffer, @function
initbuffer:

	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi], xmm0
	mov	qword ptr [rdi + 0x10], 0
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x403570
	.globl readlinebuffer
	.type readlinebuffer, @function
readlinebuffer:

	mov	edx, 0xa
	jmp	readlinebuffer_delim
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403580

	.globl readlinebuffer_delim
	.type readlinebuffer_delim, @function
readlinebuffer_delim:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	ebp, edx
	mov	r15, rsi
	mov	r14, rdi
	mov	r12, qword ptr [r14 + 0x10]
	mov	rdi, r15
	call	feof_unlocked
	xor	ecx, ecx
	mov	qword ptr [rsp + 8], rcx
	test	eax, eax
	jne	.label_198
	mov	r13, qword ptr [r14]
	add	r13, r12
	movsx	ecx, bpl
	mov	dword ptr [rsp + 0x14], ecx
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	movzx	eax, cl
	mov	dword ptr [rsp + 4], eax
	mov	rbx, r12
.label_197:
	mov	rdi, r15
	call	getc_unlocked
	mov	ebp, eax
	cmp	ebp, -1
	jne	.label_200
	cmp	rbx, r12
	je	.label_198
	mov	rdi, r15
	call	ferror_unlocked
	test	eax, eax
	jne	.label_198
	movzx	eax, byte ptr [rbx - 1]
	cmp	eax, dword ptr [rsp + 4]
	mov	ebp, dword ptr [rsp + 0x14]
	je	.label_199
.label_200:
	cmp	rbx, r13
	jne	.label_201
	mov	rbx, qword ptr [r14]
	mov	rdi, r12
	mov	rsi, r14
	call	x2realloc
	mov	r12, rax
	add	rbx, r12
	mov	qword ptr [r14 + 0x10], r12
	mov	r13, r12
	add	r13, qword ptr [r14]
.label_201:
	mov	byte ptr [rbx], bpl
	inc	rbx
	cmp	ebp, dword ptr [rsp + 0x14]
	jne	.label_197
.label_199:
	sub	rbx, r12
	mov	qword ptr [r14 + 8], rbx
	mov	qword ptr [rsp + 8], r14
.label_198:
	mov	rax, qword ptr [rsp + 8]
	add	rsp, 0x18
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
	#Procedure 0x403650
	.globl freebuffer
	.type freebuffer, @function
freebuffer:

	mov	rdi, qword ptr [rdi + 0x10]
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403660

	.globl memcasecmp
	.type memcasecmp, @function
memcasecmp:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	xor	eax, eax
	test	rbx, rbx
	je	.label_202
	call	__ctype_toupper_loc
	mov	rcx, qword ptr [rax]
	xor	edx, edx
	nop	
.label_203:
	movzx	eax, byte ptr [r15 + rdx]
	mov	eax, dword ptr [rcx + rax*4]
	movzx	esi, byte ptr [r14 + rdx]
	sub	eax, dword ptr [rcx + rsi*4]
	jne	.label_202
	inc	rdx
	xor	eax, eax
	cmp	rdx, rbx
	jb	.label_203
.label_202:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4036b0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_205
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_204
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_204
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_206
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_206:
	mov	rbx, r14
.label_204:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_205:
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
	#Procedure 0x403760
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
	#Procedure 0x4037a0
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
	#Procedure 0x4037b0
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
	#Procedure 0x4037c0

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
	#Procedure 0x403800
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
	#Procedure 0x403820

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_207
	test	rdx, rdx
	je	.label_207
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_207:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403850
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
	#Procedure 0x4038d0

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
.label_229:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r13d
	cmp	r13d, 0xa
	ja	.label_274
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_313]]
.label_504:
	mov	r12d, r11d
	mov	edi, OFFSET FLAT:.str.11_0
	mov	esi, r13d
	mov	r14, r10
	mov	bl, r8b
	mov	rbp, r9
	call	gettext_quote
	mov	qword ptr [rsp + 0x90], rax
	mov	edi, OFFSET FLAT:.str.12
	mov	esi, r13d
	call	gettext_quote
	mov	r11d, r12d
	mov	r9, rbp
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x88], rax
.label_505:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	test	r15b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_219
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_219
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
.label_237:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_224
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_224:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_237
.label_219:
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
	jmp	.label_248
.label_497:
	xor	r14d, r14d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	xor	edi, edi
	jmp	.label_248
.label_500:
	mov	al, 1
.label_498:
	mov	r15b, 1
.label_501:
	test	r15b, 1
	mov	cl, 1
	je	.label_272
	mov	cl, al
.label_272:
	mov	al, cl
.label_499:
	mov	r14d, 2
	test	r15b, 1
	jne	.label_310
	test	r10, r10
	je	.label_275
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_276
.label_310:
	xor	ecx, ecx
	jmp	.label_276
.label_502:
	mov	r14d, 5
	test	r15b, 1
	jne	.label_283
	test	r10, r10
	je	.label_267
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_290
.label_503:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	dil, 1
	jmp	.label_248
.label_275:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_276:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12
	mov	qword ptr [rsp + 0xa8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	jmp	.label_248
.label_283:
	xor	eax, eax
	jmp	.label_290
.label_267:
	mov	eax, 1
.label_290:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	sil, 1
	mov	dil, r15b
	nop	dword ptr [rax + rax]
.label_248:
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
	jmp	.label_263
	nop	dword ptr [rax + rax]
.label_296:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	sar	r15b, 7
	and	r15b, r8b
	mov	r8b, r15b
	inc	rsi
.label_263:
	cmp	rbp, -1
	je	.label_252
	cmp	rsi, rbp
	jne	.label_254
	jmp	.label_258
	nop	dword ptr [rax]
.label_252:
	cmp	byte ptr [r9 + rsi], 0
	je	.label_258
.label_254:
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_262
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_278
	cmp	rbp, -1
	jne	.label_278
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
.label_278:
	cmp	rbx, rbp
	jbe	.label_288
.label_262:
	mov	rdi, r14
	mov	dword ptr [rsp + 0xec], 0
.label_301:
	movzx	r13d, byte ptr [r9 + rsi]
	cmp	r13, 0x7e
	ja	.label_292
	xor	edx, edx
	mov	r15b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_294]]
.label_571:
	test	rsi, rsi
	jne	.label_243
	jmp	.label_265
	nop	word ptr cs:[rax + rax]
.label_288:
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
	jne	.label_317
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_301
	jmp	.label_225
.label_317:
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	jmp	.label_301
.label_575:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_212
	test	rsi, rsi
	jne	.label_218
	cmp	rbp, 1
	je	.label_265
	xor	r15d, r15d
	jmp	.label_217
.label_564:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_221
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_225
	cmp	edi, 2
	jne	.label_231
	mov	al, r11b
	and	al, 1
	jne	.label_236
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_239
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_239:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_282
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_282:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_253
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_253:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r11b, 1
	mov	rcx, rax
	jmp	.label_238
.label_565:
	mov	bl, 0x62
	jmp	.label_223
.label_566:
	mov	cl, 0x74
	jmp	.label_270
.label_567:
	mov	bl, 0x76
	jmp	.label_223
.label_568:
	mov	bl, 0x66
	jmp	.label_223
.label_569:
	mov	cl, 0x72
	jmp	.label_270
.label_572:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_322
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_281
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
	jae	.label_285
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_285:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_300
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_300:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_308
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_308:
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	jmp	.label_316
.label_573:
	mov	r14, rdi
	cmp	r14d, 5
	je	.label_319
	cmp	r14d, 2
	jne	.label_321
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_281
.label_321:
	mov	rdi, r14
	jmp	.label_243
.label_574:
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_303
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_281
	mov	rdi, r14
	jmp	.label_327
.label_292:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_329
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
.label_233:
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
	ja	.label_227
	test	dl, dl
	je	.label_227
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_217
.label_212:
	test	rsi, rsi
	jne	.label_249
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_249
.label_265:
	mov	dl, 1
.label_570:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_225
	xor	eax, eax
	mov	r15b, dl
	jmp	.label_217
.label_221:
	cmp	dword ptr [rsp + 0x5c], 0
	je	.label_243
	mov	r14, rdi
	inc	rsi
	jmp	.label_263
.label_322:
	mov	rdi, r14
.label_316:
	xor	eax, eax
	mov	r15b, 1
	jmp	.label_217
.label_303:
	mov	rdi, r14
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r13b
	je	.label_270
.label_327:
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_222
.label_270:
	cmp	byte ptr [rsp + 0xa7], 0
	mov	bl, cl
	je	.label_225
.label_223:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	je	.label_217
	jmp	.label_287
.label_329:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_289
	mov	rdi, r9
	mov	rbx, r9
	mov	rbp, rsi
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_289:
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	r15b, 1
	xor	ebx, ebx
	lea	r14, [rsp + 0x100]
.label_320:
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
	je	.label_312
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x40]
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8b, byte ptr [rsp + 0xa6]
	je	.label_323
	cmp	rbp, -2
	je	.label_324
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_325
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_215:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_208
	bt	rsi, rdx
	jb	.label_211
.label_208:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_215
.label_325:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_279
	xor	r15d, r15d
.label_279:
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	add	rbx, rbp
	mov	r14, rdi
	call	mbsinit
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_320
	jmp	.label_233
.label_249:
	mov	rbp, -1
	xor	r15d, r15d
	jmp	.label_217
.label_319:
	mov	rdi, r14
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_243
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_243
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_243
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_255
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_259
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_225
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_268
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_268:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_291
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_291:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_284
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_284:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_326
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_326:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r15d, r15d
	jmp	.label_217
.label_243:
	xor	eax, eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_217:
	test	r12b, r12b
	je	.label_234
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_304
	jmp	.label_307
	nop	word ptr cs:[rax + rax]
.label_234:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_307
.label_304:
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_314
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_222
	jmp	.label_287
	nop	word ptr cs:[rax + rax]
.label_307:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_287
	jmp	.label_222
.label_314:
	mov	bl, r13b
	mov	rsi, r14
.label_287:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_225
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_210
	mov	al, r11b
	and	al, 1
	jne	.label_210
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_216
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_216:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_293
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_293:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_232
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_232:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_210:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_244
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_244:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_251
.label_218:
	xor	r15d, r15d
	jmp	.label_217
.label_227:
	add	rcx, rsi
	xor	eax, eax
	jmp	.label_257
	nop	word ptr cs:[rax + rax]
.label_260:
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_257:
	test	dl, dl
	je	.label_269
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	je	.label_271
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_213
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	mov	rsi, rbx
.label_213:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_271
	nop	word ptr [rax + rax]
.label_269:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_281
	cmp	r14d, 2
	jne	.label_295
	mov	al, r11b
	and	al, 1
	jne	.label_295
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_298
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_298:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_302
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_302:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_309
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_309:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_295:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_250
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_250:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_264
	mov	dl, r13b
	shr	dl, 6
	or	dl, 0x30
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rdi
.label_264:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_328
	mov	dl, r13b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_328:
	add	qword ptr [rsp + 0xf0], 3
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_271:
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_222
	test	r11b, 1
	je	.label_228
	mov	bl, al
	and	bl, 1
	mov	r14, rdi
	jne	.label_230
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_235
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_235:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_266
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
.label_266:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	rsi, rbx
	jmp	.label_230
	nop	word ptr cs:[rax + rax]
.label_228:
	mov	r14, rdi
.label_230:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_260
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rbx], r13b
	mov	rsi, rdi
	jmp	.label_260
.label_222:
	test	r11b, 1
	je	.label_245
	and	al, 1
	jne	.label_245
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_305
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_305:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_280
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_280:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	bl, r13b
	jmp	.label_251
	nop	dword ptr [rax + rax]
.label_245:
	mov	bl, r13b
	mov	r14, rdi
.label_251:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_296
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
	jmp	.label_296
.label_231:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_238
.label_236:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_238:
	cmp	rcx, r10
	jae	.label_306
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_306:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r13b, 0x30
	cmp	edi, 2
	je	.label_311
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_318
	mov	dl, byte ptr [r9 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_256
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_241
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	mov	rsi, rbx
.label_241:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_297
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsi, rbx
.label_297:
	add	rcx, 3
	xor	r15d, r15d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_217
.label_311:
	xor	r15d, r15d
	jmp	.label_217
.label_318:
	xor	r15d, r15d
	jmp	.label_217
.label_256:
	xor	r15d, r15d
	jmp	.label_217
.label_312:
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_220
.label_323:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_226
.label_324:
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	jae	.label_209
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_246:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax + rbx], 0
	je	.label_242
	lea	rax, [rsi + rbx + 1]
	inc	rbx
	cmp	rax, rbp
	jb	.label_246
	xor	r15d, r15d
	jmp	.label_220
.label_209:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_226:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_220:
	mov	byte ptr [rsp + 0xa6], r8b
	jmp	.label_233
.label_242:
	xor	r15d, r15d
	jmp	.label_220
.label_255:
	xor	r15d, r15d
	jmp	.label_217
.label_259:
	xor	r15d, r15d
	mov	rsi, rbx
	jmp	.label_217
	nop	dword ptr [rax + rax]
.label_258:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	and	cl, 1
	je	.label_273
	or	dl, al
	je	.label_281
.label_273:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12, r9
	test	cl, cl
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	je	.label_286
	or	dl, al
	jne	.label_286
	test	r8b, 1
	jne	.label_261
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_286
	test	r10, r10
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	r15b, dl
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_229
.label_286:
	mov	rdx, qword ptr [rsp + 0xa8]
	test	rdx, rdx
	je	.label_299
	test	cl, cl
	jne	.label_299
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_299
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_315:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_277
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_277:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_315
.label_299:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_214
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_214
.label_225:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_240:
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
.label_247:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_214:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_211:
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_240
.label_281:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	jmp	.label_240
.label_261:
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
	jmp	.label_247
.label_274:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ae0
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
	#Procedure 0x404af0

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
	je	.label_330
	mov	qword ptr [rax], rbx
.label_330:
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
	#Procedure 0x404bf0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_331
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_333:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_333
.label_331:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_334
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_335]], OFFSET FLAT:slot0
.label_334:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_332
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_332:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c90

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x404ca0

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
	js	.label_336
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_339
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_342
.label_339:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_338
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
	jne	.label_337
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_337:
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
.label_342:
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
	ja	.label_341
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_340
	mov	rdi, rbx
	call	free
.label_340:
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
.label_341:
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
.label_336:
	call	abort
.label_338:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e70

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e80
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
	#Procedure 0x404e90
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
	#Procedure 0x404ea0

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
	#Procedure 0x404ee0

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
	je	.label_343
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
.label_343:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f40

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
	#Procedure 0x404f80

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
	#Procedure 0x404fa0
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
	#Procedure 0x404fc0

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
	mov	rcx,  qword ptr [word ptr [rip + label_344]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_345]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_346]]
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
	#Procedure 0x405030

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
	#Procedure 0x405040

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405050
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405060

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
	#Procedure 0x4050b0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4050c0

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
	mov	rax,  qword ptr [word ptr [rip + label_344]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_345]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_346]]
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
	#Procedure 0x405130
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
	#Procedure 0x405150
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
	#Procedure 0x405170

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405180
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
	#Procedure 0x405190

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4051a0

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
	#Procedure 0x4051b0

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
	jne	.label_348
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
	je	.label_347
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_348
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_348
.label_347:
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
	je	.label_349
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_348
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_348
.label_349:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12
	cmove	rax, rcx
.label_348:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405290

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
	je	.label_351
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_352
	jmp	.label_350
.label_351:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_350
.label_352:
	mov	eax, 1
	test	bpl, bpl
	je	.label_350
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
.label_350:
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
	#Procedure 0x405320

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
	je	.label_355
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_353
	jmp	.label_354
.label_355:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_354
.label_353:
	mov	eax, 1
	test	bpl, bpl
	je	.label_354
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
.label_354:
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
	#Procedure 0x4053b0

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
	je	.label_356
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_358
	jmp	.label_357
.label_356:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_357
.label_358:
	mov	eax, 1
	test	bpl, bpl
	je	.label_357
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
.label_357:
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
	#Procedure 0x405430

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
	je	.label_361
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_360
	jmp	.label_359
.label_361:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_359
.label_360:
	mov	eax, 1
	test	bpl, bpl
	je	.label_359
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
.label_359:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4054a0

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
	je	.label_364
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_362
	jmp	.label_363
.label_364:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_363
.label_362:
	mov	eax, 1
	test	bpl, bpl
	je	.label_363
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_363:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405510

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
	je	.label_366
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_367
	jmp	.label_365
.label_366:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_365
.label_367:
	mov	eax, 1
	test	bpl, bpl
	je	.label_365
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_365:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405560

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
	je	.label_370
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_369
	jmp	.label_368
.label_370:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_368
.label_369:
	mov	eax, 1
	test	bpl, bpl
	je	.label_368
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_368:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055b0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_372
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_373
	jmp	.label_371
.label_372:
	mov	eax, 1
	test	cl, cl
	je	.label_371
.label_373:
	xor	eax, eax
.label_371:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4055e0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop	
	.section	.text
	.align	16
	#Procedure 0x4055f0

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
	je	.label_380
	mov	edx, OFFSET FLAT:.str_4
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_379
.label_380:
	mov	edx, OFFSET FLAT:.str.1_3
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_379:
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
	ja	.label_375
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_376]]
.label_537:
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
.label_375:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_374
.label_538:
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
.label_539:
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
.label_540:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_381
.label_541:
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
	jmp	.label_383
.label_542:
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
	jmp	.label_378
.label_543:
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
.label_378:
	mov	qword ptr [rsp + 0x10], rdi
.label_383:
	mov	qword ptr [rsp + 8], rsi
.label_381:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_382
.label_545:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_0
.label_374:
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
	jmp	.label_377
.label_544:
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
.label_377:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_382:
	call	__fprintf_chk
.label_536:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058e0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_384:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_384
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405910

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_386:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_385
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_387
	nop	dword ptr [rax]
.label_385:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_387:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_388
	inc	r9
	cmp	r9, 0xa
	jb	.label_386
.label_388:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405970

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	je	.label_389
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_389:
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
	#Procedure 0x405a00
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
	.align	16
	#Procedure 0x405a80
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_390
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_390:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ab0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_391
	test	rax, rax
	je	.label_392
.label_391:
	pop	rbx
	ret	
.label_392:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ad0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_393
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_393:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b00

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_394
	test	rbx, rbx
	jne	.label_394
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_394:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_396
	test	rax, rax
	je	.label_395
.label_396:
	pop	rbx
	ret	
.label_395:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405b30

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_397
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_400
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_398
.label_397:
	test	rcx, rcx
	jne	.label_401
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_401:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_399
.label_398:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_400:
	call	xalloc_die
.label_399:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405bb0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405bc0

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405bd0
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
	#Procedure 0x405c00

	.globl xcalloc
	.type xcalloc, @function
xcalloc:
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_402
	call	rpl_calloc
	test	rax, rax
	je	.label_402
	pop	rcx
	ret	
.label_402:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c30

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
	#Procedure 0x405c60
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
	#Procedure 0x405c80

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
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405cb0

	.globl xmemcoll
	.type xmemcoll, @function
xmemcoll:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	rbx, rdi
	call	memcoll
	mov	ebp, eax
	call	__errno_location
	mov	edi, dword ptr [rax]
	test	edi, edi
	je	.label_403
	mov	rsi, rbx
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, r14
	call	collate_error
.label_403:
	mov	eax, ebp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d00

	.globl collate_error
	.type collate_error, @function
collate_error:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	qword ptr [rsp], r8
	mov	rbx, rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	ebp, edi
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_5
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_2
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r13
	mov	rcx, r12
	call	quotearg_n_style_mem
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 8
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp]
	call	quotearg_n_style_mem
	mov	rbx, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, r14d
	mov	rdx, r15
	mov	rcx, rbp
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405dd0
	.globl xmemcoll0
	.type xmemcoll0, @function
xmemcoll0:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15, rcx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	call	memcoll0
	mov	ebp, eax
	call	__errno_location
	mov	edi, dword ptr [rax]
	test	edi, edi
	je	.label_404
	dec	rbx
	dec	r15
	mov	rsi, r12
	mov	rdx, rbx
	mov	rcx, r14
	mov	r8, r15
	call	collate_error
.label_404:
	mov	eax, ebp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e20

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
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
	jae	.label_415
	mov	qword ptr [rsp], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_427:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_427
	test	rbp, rbp
	lea	rcx, [rsp + 0x10]
	cmovne	rcx, rbp
	movzx	eax, al
	mov	r15d, 4
	cmp	eax, 0x2d
	je	.label_409
	mov	rdi, rbx
	mov	rbp, rcx
	mov	rsi, rbp
	mov	edx, r14d
	call	strtoul
	mov	rcx, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_417
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_418
	cmp	eax, 0x22
	jne	.label_409
	mov	r12d, 1
.label_418:
	test	rbp, rbp
	jne	.label_421
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	jmp	.label_423
.label_417:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_409
	mov	rbx, rcx
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_409
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	mov	rcx, rbx
	je	.label_409
	mov	qword ptr [rsp + 8], 1
	xor	r12d, r12d
.label_421:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_416
	mov	r13, rcx
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_414
	mov	r15d, 0x400
	mov	r14d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_419
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_424
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r14d, 1
	mov	rbx, r13
	test	rax, rax
	je	.label_405
	mov	rax, qword ptr [rbx]
	movsx	ecx, byte ptr [rax + 1]
	mov	r14d, 1
	cmp	ecx, 0x42
	je	.label_410
	cmp	ecx, 0x44
	je	.label_410
	cmp	ecx, 0x69
	jne	.label_405
	movzx	eax, byte ptr [rax + 2]
	mov	r14d, 3
	cmp	eax, 0x42
	je	.label_405
	mov	r14d, 1
	jmp	.label_405
.label_410:
	mov	r15d, 0x3e8
	mov	r14d, 2
.label_405:
	mov	rax, qword ptr [rbx]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x59
	jg	.label_420
	lea	ecx, [rax - 0x42]
	cmp	ecx, 0xe
	ja	.label_422
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_425]]
.label_553:
	lea	rdi, [rsp + 8]
	mov	esi, 0x400
	jmp	.label_407
.label_420:
	cmp	eax, 0x73
	jg	.label_428
	lea	ecx, [rax - 0x62]
	cmp	ecx, 0xb
	ja	.label_429
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_412]]
.label_525:
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_407
.label_422:
	cmp	eax, 0x54
	je	.label_413
	cmp	eax, 0x59
	jne	.label_414
	lea	rdi, [rsp + 8]
	mov	edx, 8
	jmp	.label_406
.label_428:
	cmp	eax, 0x74
	je	.label_413
	cmp	eax, 0x77
	jne	.label_414
	lea	rdi, [rsp + 8]
	mov	esi, 2
.label_407:
	call	bkm_scale
	jmp	.label_411
.label_526:
	lea	rdi, [rsp + 8]
	mov	edx, 3
	jmp	.label_406
.label_527:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	jmp	.label_406
.label_528:
	lea	rdi, [rsp + 8]
	mov	edx, 2
	jmp	.label_406
.label_413:
	lea	rdi, [rsp + 8]
	mov	edx, 4
	jmp	.label_406
.label_429:
	cmp	eax, 0x5a
	jne	.label_414
	lea	rdi, [rsp + 8]
	mov	edx, 7
	jmp	.label_406
.label_414:
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_408
.label_554:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	jmp	.label_406
.label_555:
	lea	rdi, [rsp + 8]
	mov	edx, 5
.label_406:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_411:
	or	eax, r12d
	mov	rcx, qword ptr [rbx]
	lea	rdx, [rcx + r14]
	mov	qword ptr [rbx], rdx
	cmp	byte ptr [rcx + r14], 0
	je	.label_426
	or	eax, 2
.label_426:
	mov	r12d, eax
.label_416:
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rsp + 8]
.label_423:
	mov	qword ptr [rcx], rax
.label_408:
	mov	r15d, r12d
.label_409:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_419:
	mov	rbx, r13
	jmp	.label_405
.label_424:
	mov	rbx, r13
	jmp	.label_405
.label_415:
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_6
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoul
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406130

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
	.align	16
	#Procedure 0x406160

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
	je	.label_430
	nop	word ptr cs:[rax + rax]
.label_431:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebx, eax
	dec	ebp
	jne	.label_431
.label_430:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4061a0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_432
	test	rsi, rsi
	mov	ecx, 1
	je	.label_433
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_433
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_432:
	mov	ecx, 1
.label_433:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4061f0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_434
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_436
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_434
.label_436:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_434
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_435
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_435:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_434:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406270

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xc8
	test	al, al
	je	.label_447
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_447:
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
	ja	.label_439
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_444
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_437
	test	esi, esi
	jne	.label_439
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_440
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_438
.label_439:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_448
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_437
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_441
.label_444:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_437:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_445
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_443
.label_445:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_443:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_441:
	cmp	eax, 6
	jne	.label_448
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_449
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_450
.label_448:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_442
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_446
.label_440:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_438:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xc8
	ret	
.label_449:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_450:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xc8
	ret	
.label_442:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_446:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406480

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
	.align	16
	#Procedure 0x406490

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_453
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_455
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_455
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_452
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_451
.label_455:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_451
.label_453:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_451:
	test	ebx, ebx
	js	.label_452
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_452
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_454
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_452
.label_454:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_452:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406560

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_456
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_456
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_456:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406590

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_457
	ret	
.label_457:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4065b0

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
	jne	.label_458
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_458
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_459
.label_458:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_459:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_460
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_460:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406620

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
	je	.label_461
	cmp	r15, -2
	jb	.label_461
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_461
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_461:
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
	#Procedure 0x406680
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_462
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_462
.label_463:
	ret	
.label_462:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_463
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4066b0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_464
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_464:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4066d0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4066e0
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
	#Procedure 0x4066f0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_465
.label_466:
	ret	
.label_465:
	cmp	edi, 0x7f
	je	.label_466
	xor	eax, eax
	jmp	.label_466
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406710
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
	#Procedure 0x406720
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
	#Procedure 0x406730
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
	#Procedure 0x406740
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
	#Procedure 0x406750
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_467
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_467
.label_468:
	ret	
.label_467:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_468
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406780
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_469
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_469:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4067a0

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
	#Procedure 0x4067b0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_470
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_470:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4067d0
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
	#Procedure 0x4067e0
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
	#Procedure 0x4067f0

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
	je	.label_472
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_471
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_471
.label_472:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_471
	test	cl, cl
	jne	.label_471
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_471:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406860

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
	je	.label_473
	mov	rax, rcx
.label_473:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406890

	.globl memcoll
	.type memcoll, @function
memcoll:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	cmp	rbx, r15
	jne	.label_474
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbx
	call	memcmp
	test	eax, eax
	je	.label_476
.label_474:
	mov	bpl, byte ptr [r12 + rbx]
	mov	r13b, byte ptr [r14 + r15]
	mov	byte ptr [r12 + rbx], 0
	mov	byte ptr [r14 + r15], 0
	lea	rsi, [rbx + 1]
	lea	rcx, [r15 + 1]
	mov	rdi, r12
	mov	rdx, r14
	call	strcoll_loop
	mov	byte ptr [r12 + rbx], bpl
	mov	byte ptr [r14 + r15], r13b
	jmp	.label_475
.label_476:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_475:
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
	#Procedure 0x406910

	.globl strcoll_loop
	.type strcoll_loop, @function
strcoll_loop:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r12, rdx
	mov	r15, rsi
	mov	rbx, rdi
	call	__errno_location
	mov	r13, rax
	nop	
.label_478:
	mov	dword ptr [r13], 0
	mov	rdi, rbx
	mov	rsi, r12
	call	strcoll
	test	eax, eax
	jne	.label_477
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	inc	rbp
	mov	rdi, r12
	call	strlen
	inc	rax
	sub	r15, rbp
	je	.label_479
	add	r12, rax
	add	rbx, rbp
	sub	r14, rax
	mov	eax, 1
	jne	.label_478
	jmp	.label_477
.label_479:
	xor	ecx, ecx
	cmp	r14, rax
	mov	eax, 0xffffffff
	cmove	eax, ecx
.label_477:
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
	#Procedure 0x4069a0

	.globl memcoll0
	.type memcoll0, @function
memcoll0:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	cmp	rbx, r15
	jne	.label_480
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbx
	call	memcmp
	test	eax, eax
	je	.label_481
.label_480:
	mov	rdi, r12
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	strcoll_loop
.label_481:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section .text
	.align	16
	#Procedure 0x406a00

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
