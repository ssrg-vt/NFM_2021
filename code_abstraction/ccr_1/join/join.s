	.section	.text
	.align	16
	#Procedure 0x401890

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_10
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_10:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
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
	#Procedure 0x401a30

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_30
	nop	
.label_29:
	mov	edi, OFFSET FLAT:label_21
	call	strcmp
	test	eax, eax
	je	.label_27
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_29
.label_27:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_21
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_25
	mov	ecx, OFFSET FLAT:label_26
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_22
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_22
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_22:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_21
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_26
	mov	ecx, OFFSET FLAT:label_21
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_33
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b50

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
	mov	ebp, edi
	mov	dword ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0x10], 0
	mov	dword ptr [rsp + 0xc], 0
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_34
	call	setlocale
	mov	edi, OFFSET FLAT:label_74
	mov	esi, OFFSET FLAT:label_75
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_74
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
	mov	byte ptr [byte ptr [rip + label_82]],  0
	mov	byte ptr [byte ptr [rip + issued_disorder_warning]],  0
	mov	dword ptr [dword ptr [rip + check_input_order]],  0
	mov	edx, OFFSET FLAT:label_69
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r12
	call	getopt_long
	cmp	eax, -1
	je	.label_41
	lea	r13, [rsp + 8]
	lea	r14, [rsp + 4]
	lea	r15, [rsp + 0x18]
	jmp	.label_46
.label_59:
	xor	ecx, ecx
	cmp	al, 0x32
	sete	cl
	inc	dword ptr [rsp + rcx*4 + 0x10]
	inc	ecx
	mov	dword ptr [rsp + 4], ecx
	jmp	.label_45
	nop	
.label_46:
	mov	dword ptr [rsp + 4], 0
	lea	ecx, [rax - 1]
	cmp	ecx, 0x81
	ja	.label_70
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_61]]
.label_677:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsp + 0x20]
	lea	rdx, [rsp + 0x10]
	lea	rcx, [rsp + 0xc]
	mov	r8, r13
	mov	r9, r14
	call	add_file_name
	jmp	.label_45
.label_678:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	string_to_join_field
	mov	edi, OFFSET FLAT:join_field_1
	jmp	.label_73
.label_679:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	string_to_join_field
	mov	edi, OFFSET FLAT:join_field_2
.label_73:
	mov	rsi, rax
	call	set_join_field
	jmp	.label_45
.label_681:
	mov	rdi,  qword ptr [word ptr [rip + empty_filler]]
	test	rdi, rdi
	je	.label_85
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	call	strcmp
	test	eax, eax
	jne	.label_88
.label_85:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + empty_filler]],  rax
	jmp	.label_45
.label_682:
	mov	byte ptr [byte ptr [rip + ignore_case]],  1
	jmp	.label_45
.label_683:
	mov	rcx,  qword ptr [word ptr [rip + optarg]]
	movzx	eax, byte ptr [rcx]
	mov	edx, eax
	add	dl, 0xcf
	cmp	dl, 1
	ja	.label_39
	cmp	byte ptr [rcx + 1], 0
	jne	.label_39
	movsxd	rdx,  dword ptr [dword ptr [rip + optind]]
	mov	rdx, qword ptr [r12 + rdx*8 - 8]
	add	rdx, 2
	cmp	rcx, rdx
	je	.label_59
.label_39:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	string_to_join_field
	mov	edi, OFFSET FLAT:join_field_1
	mov	rsi, rax
	call	set_join_field
	mov	rsi,  qword ptr [word ptr [rip + join_field_1]]
	mov	edi, OFFSET FLAT:join_field_2
	call	set_join_field
	jmp	.label_45
.label_684:
	mov	ebx, ebp
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	mov	esi, OFFSET FLAT:label_60
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_72
	mov	rdi, rbp
	call	add_field_list
	mov	dword ptr [rsp + 4], 3
	mov	ebp, ebx
	jmp	.label_45
.label_685:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	movzx	edx, byte ptr [rax]
	mov	cl, 0xa
	test	dl, dl
	je	.label_65
	movzx	ecx, byte ptr [rax + 1]
	test	cl, cl
	je	.label_79
	cmp	dl, 0x5c
	jne	.label_67
	cmp	cl, 0x30
	jne	.label_67
	cmp	byte ptr [rax + 2], 0
	jne	.label_67
	xor	ecx, ecx
	jmp	.label_65
.label_686:
	mov	byte ptr [byte ptr [rip + print_pairables]],  0
.label_680:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_34
	mov	rcx, r15
	call	xstrtoul
	test	eax, eax
	jne	.label_80
	mov	rax, qword ptr [rsp + 0x18]
	lea	rcx, [rax - 1]
	cmp	rcx, 2
	jae	.label_80
	cmp	rax, 1
	jne	.label_40
	mov	byte ptr [byte ptr [rip + print_unpairables_1]],  1
	jmp	.label_45
.label_687:
	mov	byte ptr [byte ptr [rip + eolchar]],  1
	jmp	.label_45
.label_688:
	mov	dword ptr [dword ptr [rip + check_input_order]],  1
	jmp	.label_45
.label_689:
	mov	dword ptr [dword ptr [rip + check_input_order]],  2
	jmp	.label_45
.label_690:
	mov	byte ptr [byte ptr [rip + join_header_lines]],  1
	jmp	.label_45
.label_40:
	mov	byte ptr [byte ptr [rip + print_unpairables_2]],  1
	jmp	.label_45
.label_72:
	mov	byte ptr [byte ptr [rip + autoformat]],  1
	mov	ebp, ebx
	jmp	.label_45
.label_79:
	mov	cl, dl
.label_65:
	mov	edx,  dword ptr [dword ptr [rip + tab]]
	test	edx, edx
	movzx	eax, cl
	js	.label_62
	cmp	edx, eax
	jne	.label_66
.label_62:
	mov	dword ptr [dword ptr [rip + tab]],  eax
	nop	word ptr cs:[rax + rax]
.label_45:
	mov	eax, dword ptr [rsp + 4]
	mov	dword ptr [rsp + 8], eax
	mov	edx, OFFSET FLAT:label_69
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r12
	call	getopt_long
	cmp	eax, -1
	jne	.label_46
.label_41:
	mov	dword ptr [rsp + 8], 0
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, ebp
	mov	rbx, r12
	jge	.label_81
	lea	r15, [rsp + 0x10]
	lea	r13, [rsp + 0xc]
	lea	r14, [rsp + 8]
	lea	r12, [rsp + 4]
	nop	word ptr cs:[rax + rax]
.label_37:
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	cdqe	
	mov	rdi, qword ptr [rbx + rax*8]
	lea	rsi, [rsp + 0x20]
	mov	rdx, r15
	mov	rcx, r13
	mov	r8, r14
	mov	r9, r12
	call	add_file_name
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, ebp
	jl	.label_37
.label_81:
	mov	eax, dword ptr [rsp + 0xc]
	cmp	eax, 2
	jne	.label_42
	xor	ebx, ebx
	nop	
.label_55:
	cmp	dword ptr [rsp + rbx*4 + 0x10], 0
	je	.label_48
	mov	edi, OFFSET FLAT:join_field_1
	mov	rsi, rbx
	call	set_join_field
	mov	edi, OFFSET FLAT:join_field_2
	mov	rsi, rbx
	call	set_join_field
.label_48:
	inc	rbx
	cmp	rbx, 2
	jne	.label_55
	cmp	qword ptr [word ptr [rip + join_field_1]],  -1
	jne	.label_57
	mov	qword ptr [word ptr [rip + join_field_1]],  0
.label_57:
	cmp	qword ptr [word ptr [rip + join_field_2]],  -1
	jne	.label_63
	mov	qword ptr [word ptr [rip + join_field_2]],  0
.label_63:
	mov	rax,  qword ptr [word ptr [rip + g_names]]
	cmp	byte ptr [rax], 0x2d
	jne	.label_86
	cmp	byte ptr [rax + 1], 0
	je	.label_35
.label_86:
	mov	rdi,  qword ptr [word ptr [rip + g_names]]
	mov	esi, OFFSET FLAT:label_50
	call	fopen_safer
	mov	rbx, rax
.label_87:
	test	rbx, rbx
	je	.label_78
	mov	rax,  qword ptr [word ptr [rip + label_49]]
	cmp	byte ptr [rax], 0x2d
	jne	.label_76
	cmp	byte ptr [rax + 1], 0
	je	.label_84
.label_76:
	mov	rdi,  qword ptr [word ptr [rip + label_49]]
	mov	esi, OFFSET FLAT:label_50
	call	fopen_safer
	mov	rbp, rax
.label_54:
	test	rbp, rbp
	je	.label_38
	cmp	rbx, rbp
	je	.label_90
	mov	rdi, rbx
	mov	rsi, rbp
	call	system_join
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_78
	mov	rdi, rbp
	call	rpl_fclose
	test	eax, eax
	jne	.label_38
	mov	al,  byte ptr [byte ptr [rip + label_82]]
	or	al,  byte ptr [byte ptr [rip + issued_disorder_warning]]
	jne	.label_83
	xor	eax, eax
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_35:
	mov	rbx,  qword ptr [word ptr [rip + stdin]]
	jmp	.label_87
.label_84:
	mov	rbp,  qword ptr [word ptr [rip + stdin]]
	jmp	.label_54
.label_70:
	cmp	eax, 0xffffff7d
	je	.label_56
	cmp	eax, 0xffffff7e
	jne	.label_58
	xor	edi, edi
	call	usage
.label_58:
	mov	edi, 1
	call	usage
.label_80:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
.label_44:
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
.label_56:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_21
	mov	edx, OFFSET FLAT:label_25
	mov	r8d, OFFSET FLAT:label_77
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_78:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + g_names]]
	jmp	.label_89
.label_38:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + label_49]]
.label_89:
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_92
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_66:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_51
	jmp	.label_52
.label_67:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_43
	jmp	.label_44
.label_42:
	xor	edi, edi
	test	eax, eax
	jne	.label_47
	mov	esi, OFFSET FLAT:label_91
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
.label_90:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_53
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_83:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_68
	jmp	.label_52
.label_88:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_71
.label_52:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_47:
	mov	esi, OFFSET FLAT:label_36
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	movsxd	rax, ebp
	mov	rdi, qword ptr [rbx + rax*8 - 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	edi, 1
	call	usage
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021f0

	.globl free_spareline
	.type free_spareline, @function
free_spareline:
	push	rbx
	mov	rbx, -0x10
	nop	dword ptr [rax + rax]
.label_94:
	mov	rdi,  qword ptr [word ptr [rbx + outlist_head]]
	test	rdi, rdi
	je	.label_93
	call	freeline
	mov	rdi,  qword ptr [word ptr [rbx + outlist_head]]
	call	free
.label_93:
	add	rbx, 8
	jne	.label_94
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402230

	.globl set_join_field
	.type set_join_field, @function
set_join_field:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, qword ptr [rdi]
	cmp	rbx, -1
	je	.label_95
	cmp	rbx, r14
	jne	.label_96
.label_95:
	mov	qword ptr [rdi], r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_96:
	inc	rbx
	inc	r14
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_97
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
	#Procedure 0x402290

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
	mov	r8d, OFFSET FLAT:label_34
	call	xstrtoul
	cmp	eax, 1
	jne	.label_100
	mov	qword ptr [rsp], -1
	jmp	.label_99
.label_100:
	test	eax, eax
	jne	.label_98
	mov	rax, qword ptr [rsp]
	test	rax, rax
	je	.label_98
.label_99:
	mov	rax, qword ptr [rsp]
	dec	rax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_98:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
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
	#Procedure 0x402310

	.globl add_field_list
	.type add_field_list, @function
add_field_list:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdi
	lea	r14, [rsp + 0xc]
	lea	r15, [rsp + 0x10]
	nop	dword ptr [rax + rax]
.label_101:
	mov	esi, 0x2c
	mov	edx, 0x20
	mov	ecx, 9
	mov	rdi, r12
	call	__strpbrk_c3
	test	rax, rax
	mov	ebx, 0
	je	.label_102
	mov	rbx, rax
	inc	rbx
	mov	byte ptr [rax], 0
.label_102:
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	call	decode_field_spec
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, qword ptr [rsp + 0x10]
	call	add_field
	test	rbx, rbx
	mov	r12, rbx
	jne	.label_101
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402390

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
	jne	.label_106
	mov	ebp, dword ptr [rbx]
	xor	eax, eax
	test	ebp, ebp
	sete	al
	mov	ecx, dword ptr [rbx + rax*4]
	cmp	rcx, 3
	ja	.label_107
	mov	rdi,  qword ptr [word ptr [+ (rax * 8) + g_names]]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_104]]
.label_575:
	dec	dword ptr [rdx]
	call	string_to_join_field
	mov	edi, OFFSET FLAT:join_field_1
	jmp	.label_103
.label_576:
	dec	dword ptr [rdx + 4]
	call	string_to_join_field
	mov	edi, OFFSET FLAT:join_field_2
.label_103:
	mov	rsi, rax
	call	set_join_field
	jmp	.label_107
.label_577:
	call	add_field_list
.label_107:
	mov	eax, 1
	test	ebp, ebp
	je	.label_106
	mov	ecx, dword ptr [rbx + 4]
	mov	dword ptr [rbx], ecx
	mov	rcx,  qword ptr [word ptr [rip + label_49]]
	mov	qword ptr [word ptr [rip + g_names]],  rcx
.label_106:
	mov	ecx, dword ptr [r12]
	cdqe	
	mov	dword ptr [rbx + rax*4], ecx
	mov	qword ptr [word ptr [+ (rax * 8) + g_names]],  r15
	inc	eax
	mov	dword ptr [r13], eax
	cmp	dword ptr [r12], 3
	jne	.label_108
	mov	dword ptr [r14], 3
.label_108:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_574:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_105
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402490

	.globl system_join
	.type system_join, @function
system_join:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r14, rsi
	mov	rbx, rdi
	mov	esi, 2
	call	fadvise
	mov	esi, 2
	mov	rdi, r14
	call	fadvise
	lea	r15, [rsp + 0x20]
	mov	rdi, r15
	call	initseq
	mov	edx, 1
	mov	rdi, rbx
	mov	rsi, r15
	call	getseq
	lea	r15, [rsp + 8]
	mov	rdi, r15
	call	initseq
	mov	edx, 2
	mov	rdi, r14
	mov	rsi, r15
	call	getseq
	cmp	byte ptr [byte ptr [rip + autoformat]],  1
	jne	.label_139
	xor	eax, eax
	cmp	qword ptr [rsp + 0x20], 0
	je	.label_147
	mov	rax, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + 0x18]
.label_147:
	mov	qword ptr [word ptr [rip + autocount_1]],  rax
	xor	eax, eax
	cmp	qword ptr [rsp + 8], 0
	je	.label_113
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + 0x18]
.label_113:
	mov	qword ptr [word ptr [rip + autocount_2]],  rax
.label_139:
	cmp	byte ptr [byte ptr [rip + join_header_lines]],  1
	jne	.label_117
	cmp	qword ptr [rsp + 0x20], 0
	jne	.label_119
	cmp	qword ptr [rsp + 8], 0
	je	.label_117
	mov	edi, OFFSET FLAT:uni_blank
	cmp	qword ptr [rsp + 0x20], 0
	je	.label_148
.label_119:
	mov	rax, qword ptr [rsp + 0x30]
	mov	rdi, qword ptr [rax]
.label_148:
	mov	esi, OFFSET FLAT:uni_blank
	cmp	qword ptr [rsp + 8], 0
	je	.label_127
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rax]
.label_127:
	call	prjoin
	xorps	xmm0, xmm0
	movaps	xmmword ptr [word ptr [rip + prevline]],  xmm0
	cmp	qword ptr [rsp + 0x20], 0
	je	.label_132
	lea	rsi, [rsp + 0x20]
	mov	edx, 1
	mov	ecx, 1
	mov	rdi, rbx
	call	advance_seq
.label_132:
	cmp	qword ptr [rsp + 8], 0
	je	.label_117
	lea	rsi, [rsp + 8]
	mov	edx, 1
	mov	ecx, 2
	mov	rdi, r14
	call	advance_seq
.label_117:
	cmp	qword ptr [rsp + 0x20], 0
	je	.label_120
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_120
	lea	r15, [rsp + 0x20]
	lea	r12, [rsp + 8]
	jmp	.label_121
.label_140:
	inc	rcx
	mov	qword ptr [rsp + 0x20], rcx
	mov	al, 1
	mov	dword ptr [rsp + 0x44], eax
	nop	word ptr cs:[rax + rax]
.label_144:
	xor	edx, edx
	mov	ecx, 2
	mov	rdi, r14
	mov	rsi, r12
	call	advance_seq
	test	al, al
	je	.label_114
	mov	rax, qword ptr [rsp + 0x30]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rcx + rax*8 - 8]
	mov	rdx,  qword ptr [word ptr [rip + join_field_1]]
	mov	rcx,  qword ptr [word ptr [rip + join_field_2]]
	call	keycmp
	test	eax, eax
	je	.label_144
	mov	dword ptr [rsp + 0x40], 0
	jmp	.label_123
.label_114:
	inc	qword ptr [rsp + 8]
	mov	al, 1
	mov	dword ptr [rsp + 0x40], eax
.label_123:
	cmp	qword ptr [rsp + 0x20], 1
	je	.label_126
	mov	al,  byte ptr [byte ptr [rip + print_pairables]]
	xor	al, 1
	test	al, 1
	jne	.label_126
	xor	r13d, r13d
.label_137:
	cmp	qword ptr [rsp + 8], 1
	je	.label_131
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_136:
	mov	rax, qword ptr [rsp + 0x30]
	mov	rdi, qword ptr [rax + r13*8]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	call	prjoin
	inc	rbp
	mov	rax, qword ptr [rsp + 8]
	dec	rax
	cmp	rbp, rax
	jb	.label_136
.label_131:
	inc	r13
	mov	rax, qword ptr [rsp + 0x20]
	dec	rax
	cmp	r13, rax
	jb	.label_137
.label_126:
	mov	eax, dword ptr [rsp + 0x44]
	test	al, al
	mov	eax, 0
	jne	.label_142
	mov	rax, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rcx]
	mov	rax, qword ptr [rcx + rax*8 - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x30]
	mov	qword ptr [rcx + rax*8 - 8], rdx
	mov	eax, 1
.label_142:
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, dword ptr [rsp + 0x40]
	test	al, al
	je	.label_145
	mov	qword ptr [rsp + 8], 0
	jmp	.label_109
.label_145:
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rcx]
	mov	rax, qword ptr [rcx + rax*8 - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [rcx + rax*8 - 8], rdx
	mov	qword ptr [rsp + 8], 1
	jmp	.label_109
	nop	word ptr [rax + rax]
.label_121:
	mov	rax, qword ptr [rsp + 0x30]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + join_field_1]]
	mov	rcx,  qword ptr [word ptr [rip + join_field_2]]
	call	keycmp
	test	eax, eax
	js	.label_128
	je	.label_129
	cmp	byte ptr [byte ptr [rip + print_unpairables_2]],  1
	jne	.label_130
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rax]
	mov	edi, OFFSET FLAT:uni_blank
	call	prjoin
.label_130:
	mov	edx, 1
	mov	ecx, 2
	mov	rdi, r14
	mov	rsi, r12
	jmp	.label_133
	nop	dword ptr [rax]
.label_129:
	xor	edx, edx
	mov	ecx, 1
	mov	rdi, rbx
	mov	rsi, r15
	call	advance_seq
	mov	rcx, qword ptr [rsp + 0x20]
	test	al, al
	je	.label_140
	mov	rax, qword ptr [rsp + 0x30]
	mov	rdi, qword ptr [rax + rcx*8 - 8]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + join_field_1]]
	mov	rcx,  qword ptr [word ptr [rip + join_field_2]]
	call	keycmp
	test	eax, eax
	je	.label_129
	mov	dword ptr [rsp + 0x44], 0
	jmp	.label_144
	nop	word ptr cs:[rax + rax]
.label_128:
	cmp	byte ptr [byte ptr [rip + print_unpairables_1]],  1
	jne	.label_111
	mov	rax, qword ptr [rsp + 0x30]
	mov	rdi, qword ptr [rax]
	mov	esi, OFFSET FLAT:uni_blank
	call	prjoin
.label_111:
	mov	edx, 1
	mov	ecx, 1
	mov	rdi, rbx
	mov	rsi, r15
.label_133:
	call	advance_seq
	mov	byte ptr [byte ptr [rip + seen_unpairable]],  1
.label_109:
	cmp	qword ptr [rsp + 0x20], 0
	je	.label_120
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	jne	.label_121
.label_120:
	mov	qword ptr [rsp + 0x38], 0
	cmp	dword ptr [dword ptr [rip + check_input_order]],  2
	jne	.label_124
	xor	ebp, ebp
	jmp	.label_134
.label_124:
	cmp	byte ptr [byte ptr [rip + issued_disorder_warning]],  0
	sete	al
	cmp	byte ptr [byte ptr [rip + label_82]],  0
	sete	bpl
	or	bpl, al
.label_134:
	cmp	qword ptr [rsp + 0x20], 0
	je	.label_112
	mov	al,  byte ptr [byte ptr [rip + print_unpairables_1]]
	mov	ecx, ebp
	or	cl, al
	xor	cl, 1
	test	cl, 1
	jne	.label_112
	test	al, 1
	je	.label_110
	mov	rax, qword ptr [rsp + 0x30]
	mov	rdi, qword ptr [rax]
	mov	esi, OFFSET FLAT:uni_blank
	call	prjoin
.label_110:
	cmp	qword ptr [rsp + 8], 0
	je	.label_141
	mov	byte ptr [byte ptr [rip + seen_unpairable]],  1
.label_141:
	lea	rsi, [rsp + 0x38]
	mov	edx, 1
	mov	rdi, rbx
	call	get_line
	test	al, al
	je	.label_112
	lea	r15, [rsp + 0x38]
	nop	dword ptr [rax]
.label_115:
	cmp	byte ptr [byte ptr [rip + print_unpairables_1]],  1
	jne	.label_146
	mov	rdi, qword ptr [rsp + 0x38]
	mov	esi, OFFSET FLAT:uni_blank
	call	prjoin
.label_146:
	cmp	byte ptr [byte ptr [rip + issued_disorder_warning]],  0
	je	.label_118
	cmp	byte ptr [byte ptr [rip + print_unpairables_1]],  1
	jne	.label_112
.label_118:
	mov	edx, 1
	mov	rdi, rbx
	mov	rsi, r15
	call	get_line
	test	al, al
	jne	.label_115
.label_112:
	cmp	qword ptr [rsp + 8], 0
	je	.label_116
	mov	al,  byte ptr [byte ptr [rip + print_unpairables_2]]
	or	bpl, al
	xor	bpl, 1
	test	bpl, 1
	jne	.label_116
	test	al, 1
	je	.label_122
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rax]
	mov	edi, OFFSET FLAT:uni_blank
	call	prjoin
.label_122:
	cmp	qword ptr [rsp + 0x20], 0
	je	.label_125
	mov	byte ptr [byte ptr [rip + seen_unpairable]],  1
.label_125:
	lea	rsi, [rsp + 0x38]
	mov	edx, 2
	mov	rdi, r14
	call	get_line
	test	al, al
	je	.label_116
	lea	rbx, [rsp + 0x38]
	nop	word ptr cs:[rax + rax]
.label_143:
	cmp	byte ptr [byte ptr [rip + print_unpairables_2]],  1
	jne	.label_135
	mov	rsi, qword ptr [rsp + 0x38]
	mov	edi, OFFSET FLAT:uni_blank
	call	prjoin
.label_135:
	cmp	byte ptr [byte ptr [rip + label_82]],  0
	je	.label_138
	cmp	byte ptr [byte ptr [rip + print_unpairables_2]],  1
	jne	.label_116
.label_138:
	mov	edx, 2
	mov	rdi, r14
	mov	rsi, rbx
	call	get_line
	test	al, al
	jne	.label_143
.label_116:
	mov	rbx, qword ptr [rsp + 0x38]
	mov	rdi, rbx
	call	freeline
	mov	rdi, rbx
	call	free
	lea	rdi, [rsp + 0x20]
	call	delseq
	lea	rdi, [rsp + 8]
	call	delseq
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
	#Procedure 0x402a20

	.globl freeline
	.type freeline, @function
freeline:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_149
	mov	rdi, qword ptr [rbx + 0x28]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	qword ptr [rbx + 0x10], 0
.label_149:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402a50

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
	jae	.label_153
	cmp	byte ptr [rbx + 1], 0x2e
	jne	.label_151
	movsx	eax, byte ptr [rbx]
	add	eax, -0x30
	mov	dword ptr [rsi], eax
	add	rbx, 2
	mov	rdi, rbx
	call	string_to_join_field
	jmp	.label_156
.label_153:
	cmp	eax, 0x30
	jne	.label_150
	cmp	byte ptr [rbx + 1], 0
	jne	.label_151
	mov	dword ptr [rsi], 0
	xor	eax, eax
.label_156:
	mov	qword ptr [r14], rax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_150:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_154
	jmp	.label_155
.label_151:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_152
.label_155:
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
	#Procedure 0x402ae0

	.globl add_field
	.type add_field, @function
add_field:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	ebp, edi
	cmp	ebp, 3
	jae	.label_157
	test	ebp, ebp
	jne	.label_163
	test	rbx, rbx
	jne	.label_158
.label_163:
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
.label_157:
	mov	edi, OFFSET FLAT:label_159
	mov	esi, OFFSET FLAT:label_160
	mov	edx, 0x333
	mov	ecx, OFFSET FLAT:label_161
	call	__assert_fail
.label_158:
	mov	edi, OFFSET FLAT:label_162
	mov	esi, OFFSET FLAT:label_160
	mov	edx, 0x334
	mov	ecx, OFFSET FLAT:label_161
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402b60

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
	#Procedure 0x402b70

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
	jne	.label_164
	lea	r15, [rbx + 8]
	mov	rdi, qword ptr [rbx + 0x10]
	mov	edx, 8
	mov	rsi, r15
	call	x2nrealloc
	mov	qword ptr [rbx + 0x10], rax
	mov	rax, qword ptr [rbx]
	cmp	rax, qword ptr [rbx + 8]
	jae	.label_164
	mov	rcx, qword ptr [r15]
	nop	
.label_165:
	mov	rdx, qword ptr [rbx + 0x10]
	mov	qword ptr [rdx + rax*8], 0
	inc	rax
	cmp	rax, rcx
	jb	.label_165
.label_164:
	mov	rsi, qword ptr [rbx]
	shl	rsi, 3
	add	rsi, qword ptr [rbx + 0x10]
	mov	rdi, rbp
	mov	edx, r14d
	call	get_line
	test	al, al
	je	.label_167
	inc	qword ptr [rbx]
	mov	al, 1
	jmp	.label_166
.label_167:
	xor	eax, eax
.label_166:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c00

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
	mov	rbx,  qword ptr [word ptr [rip + label_168]]
	test	rbx, rbx
	je	.label_169
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
	jmp	.label_171
.label_172:
	mov	edi, ebp
	call	putchar_unlocked
.label_171:
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
	jne	.label_172
	jmp	.label_170
.label_169:
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
.label_170:
	mov	al,  byte ptr [byte ptr [rip + eolchar]]
	xor	ecx, ecx
	test	al, al
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
	#Procedure 0x402d00

	.globl advance_seq
	.type advance_seq, @function
advance_seq:
	test	dl, dl
	je	.label_173
	mov	qword ptr [rsi], 0
.label_173:
	mov	edx, ecx
	jmp	getseq
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d20

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
	jbe	.label_174
	mov	rax, qword ptr [rax + 0x28]
	shl	rdx, 4
	mov	rdi, qword ptr [rax + rdx]
	mov	r14, qword ptr [rax + rdx + 8]
.label_174:
	xor	r8d, r8d
	cmp	qword ptr [rsi + 0x18], rcx
	mov	ebx, 0
	jbe	.label_176
	mov	rax, qword ptr [rsi + 0x28]
	shl	rcx, 4
	mov	r8, qword ptr [rax + rcx]
	mov	rbx, qword ptr [rax + rcx + 8]
.label_176:
	test	r14, r14
	je	.label_175
	mov	eax, 1
	test	rbx, rbx
	je	.label_177
	cmp	byte ptr [byte ptr [rip + ignore_case]],  1
	jne	.label_180
	cmp	r14, rbx
	mov	rdx, rbx
	cmovb	rdx, r14
	mov	rsi, r8
	call	memcasecmp
	jmp	.label_178
.label_175:
	neg	rbx
	sbb	eax, eax
	jmp	.label_177
.label_180:
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	je	.label_179
	mov	rsi, r14
	mov	rdx, r8
	mov	rcx, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	xmemcoll
.label_179:
	cmp	r14, rbx
	mov	rdx, rbx
	cmovb	rdx, r14
	mov	rsi, r8
	call	memcmp
.label_178:
	test	eax, eax
	jne	.label_177
	xor	ecx, ecx
	cmp	r14, rbx
	setne	cl
	mov	eax, 0xffffffff
	cmovae	eax, ecx
.label_177:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402df0

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
	cmp	rbx,  qword ptr [word ptr [+ (rax * 8) + label_188]]
	lea	rbp, [rax - 1]
	jne	.label_189
	mov	rax,  qword ptr [word ptr [+ (rbp * 8) + spareline]]
	mov	qword ptr [word ptr [+ (rbp * 8) + spareline]],  rbx
	mov	qword ptr [rsi], rax
	mov	rbx, rax
.label_189:
	test	rbx, rbx
	je	.label_187
	mov	rdi, rbx
	call	reset_line
	jmp	.label_191
.label_187:
	mov	rdi, rsi
	call	init_linep
	mov	rbx, rax
.label_191:
	mov	al,  byte ptr [byte ptr [rip + eolchar]]
	test	al, al
	jne	.label_181
	mov	al, 0xa
	jmp	.label_182
.label_181:
	xor	eax, eax
.label_182:
	movzx	edx, al
	mov	rdi, rbx
	mov	rsi, r15
	call	readlinebuffer_delim
	test	rax, rax
	je	.label_184
	inc	qword ptr [word ptr [+ (rbp * 8) + line_no]]
	mov	rdi, rbx
	call	xfields
	mov	rdi,  qword ptr [word ptr [+ (rbp * 8) + prevline]]
	test	rdi, rdi
	je	.label_186
	mov	rsi, rbx
	mov	edx, r14d
	call	check_order
.label_186:
	mov	qword ptr [word ptr [+ (rbp * 8) + prevline]],  rbx
	mov	al, 1
	jmp	.label_183
.label_184:
	mov	rdi, r15
	call	ferror_unlocked
	test	eax, eax
	jne	.label_185
	mov	rdi, rbx
	call	freeline
	xor	eax, eax
.label_183:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_185:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_190
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
	#Procedure 0x402ef0

	.globl delseq
	.type delseq, @function
delseq:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	cmp	qword ptr [r14 + 8], 0
	je	.label_192
	xor	ebx, ebx
.label_193:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [rax + rbx*8]
	call	freeline
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [rax + rbx*8]
	call	free
	inc	rbx
	cmp	rbx, qword ptr [r14 + 8]
	jb	.label_193
.label_192:
	mov	rdi, qword ptr [r14 + 0x10]
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f40

	.globl prfield
	.type prfield, @function
prfield:
	cmp	qword ptr [rsi + 0x18], rdi
	jbe	.label_194
	mov	rax, qword ptr [rsi + 0x28]
	shl	rdi, 4
	mov	rdx, qword ptr [rax + rdi + 8]
	test	rdx, rdx
	je	.label_196
	mov	rdi, qword ptr [rax + rdi]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	jmp	fwrite_unlocked
.label_194:
	mov	rdi,  qword ptr [word ptr [rip + empty_filler]]
	test	rdi, rdi
	je	.label_195
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	jmp	fputs_unlocked
.label_196:
	mov	rdi,  qword ptr [word ptr [rip + empty_filler]]
	test	rdi, rdi
	je	.label_195
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	jmp	fputs_unlocked
.label_195:
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402fa0

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
	test	al, al
	jne	.label_197
	mov	r14, qword ptr [r15 + 0x18]
.label_197:
	mov	eax,  dword ptr [dword ptr [rip + tab]]
	test	eax, eax
	mov	r13b, 0x20
	js	.label_198
	mov	r13d, eax
.label_198:
	test	rbx, rbx
	je	.label_199
	test	r14, r14
	je	.label_199
	movsx	r12d, r13b
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_202:
	mov	edi, r12d
	call	putchar_unlocked
	mov	rdi, rbp
	mov	rsi, r15
	call	prfield
	inc	rbp
	cmp	rbp, rbx
	jae	.label_199
	cmp	rbp, r14
	jb	.label_202
.label_199:
	inc	rbx
	cmp	rbx, r14
	jae	.label_201
	movsx	ebp, r13b
	nop	dword ptr [rax]
.label_200:
	mov	edi, ebp
	call	putchar_unlocked
	mov	rdi, rbx
	mov	rsi, r15
	call	prfield
	inc	rbx
	cmp	r14, rbx
	jne	.label_200
.label_201:
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
	#Procedure 0x403050

	.globl reset_line
	.type reset_line, @function
reset_line:
	mov	qword ptr [rdi + 0x18], 0
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403060

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
	#Procedure 0x403080

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
	mov	rbx, qword ptr [r14 + 8]
	mov	r13, qword ptr [r14 + 0x10]
	lea	r15, [r13 + rbx - 1]
	cmp	r13, r15
	je	.label_203
	mov	eax,  dword ptr [dword ptr [rip + tab]]
	test	eax, eax
	js	.label_209
	cmp	eax, 0xa
	jne	.label_210
.label_209:
	test	eax, eax
	jns	.label_204
	lea	rbp, [r13 + rbx]
	dec	rbx
	nop	dword ptr [rax + rax]
.label_206:
	movzx	edi, byte ptr [r13]
	call	field_sep
	test	al, al
	je	.label_205
	inc	r13
	dec	rbx
	jne	.label_206
.label_203:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
.label_214:
	mov	rdx, rbx
	sub	rdx, r13
	mov	rdi, r14
	mov	rsi, r13
	call	extract_field
	mov	r13, rbx
	inc	r13
.label_210:
	mov	esi,  dword ptr [dword ptr [rip + tab]]
	mov	rdx, r15
	sub	rdx, r13
	mov	rdi, r13
	call	memchr
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_214
.label_204:
	sub	r15, r13
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, r15
.label_207:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	extract_field
.label_205:
	mov	qword ptr [rsp], rbp
.label_215:
	lea	r12, [r13 + 2]
	lea	rcx, [r13 + 3]
	mov	rbp, qword ptr [rsp]
	nop	word ptr cs:[rax + rax]
.label_213:
	mov	rbx, rcx
	cmp	rbp, r12
	je	.label_208
	movzx	edi, byte ptr [r12 - 1]
	call	field_sep
	inc	r12
	lea	rcx, [rbx + 1]
	test	al, al
	je	.label_213
	add	r12, -2
	sub	r12, r13
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, r12
	call	extract_field
	nop	word ptr cs:[rax + rax]
.label_212:
	mov	rbp, rbx
	cmp	qword ptr [rsp], rbp
	je	.label_211
	movzx	edi, byte ptr [rbp - 1]
	call	field_sep
	lea	rbx, [rbp + 1]
	test	al, al
	jne	.label_212
.label_211:
	lea	r13, [rbp - 1]
	cmp	qword ptr [rsp], rbp
	jne	.label_215
	dec	rbp
	mov	r13, rbp
	jmp	.label_204
.label_208:
	dec	r12
	sub	r12, r13
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, r12
	jmp	.label_207
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4031f0

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
	je	.label_220
	cmp	eax, 2
	je	.label_217
	cmp	byte ptr [byte ptr [rip + seen_unpairable]],  1
	jne	.label_217
.label_220:
	movsxd	rbp, edx
	cmp	byte ptr [byte ptr [rbp + seen_unpairable]],  0
	jne	.label_217
	cmp	edx, 1
	mov	eax, OFFSET FLAT:join_field_1
	mov	ecx, OFFSET FLAT:join_field_2
	cmove	rcx, rax
	mov	rdx, qword ptr [rcx]
	mov	rsi, rbx
	mov	rcx, rdx
	call	keycmp
	test	eax, eax
	jle	.label_217
	mov	rax, qword ptr [rbx + 8]
	xor	r15d, r15d
	test	rax, rax
	je	.label_219
	lea	r15, [rax - 1]
	mov	rcx, qword ptr [rbx + 0x10]
	cmp	byte ptr [rcx + rax - 1], 0xa
	cmovne	r15, rax
.label_219:
	xor	r14d, r14d
	cmp	dword ptr [dword ptr [rip + check_input_order]],  1
	sete	r14b
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_216
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	r15, 0x7fffffff
	mov	rcx,  qword ptr [word ptr [+ (rbp * 8) + ignore_case]]
	mov	r8,  qword ptr [word ptr [+ (rbp * 8) + label_218]]
	mov	r9d, 0x7fffffff
	cmovbe	r9d, r15d
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rsp], rax
	mov	esi, 0
	xor	eax, eax
	mov	edi, r14d
	call	error
	mov	byte ptr [byte ptr [rbp + seen_unpairable]],  1
.label_217:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032e0

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
	jb	.label_221
	lea	rsi, [rbx + 0x20]
	mov	rdi, qword ptr [rbx + 0x28]
	mov	edx, 0x10
	call	x2nrealloc
	mov	qword ptr [rbx + 0x28], rax
.label_221:
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
	#Procedure 0x403340

	.globl field_sep
	.type field_sep, @function
field_sep:
	push	rbx
	mov	ebx, edi
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	cmp	bl, 0xa
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
	#Procedure 0x403360
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403370
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403380

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_224
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_222
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_222
.label_224:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_225
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_222:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_227
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_223
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_92
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_225:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_223:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_226
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
	#Procedure 0x403440

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403450

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_228
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_228:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403470

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
	je	.label_230
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_232
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_233
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_229
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_230
.label_229:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_231
.label_232:
	mov	rax, rbx
	jmp	.label_230
.label_233:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_231:
	xor	eax, eax
.label_230:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403500

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_235
	cmp	byte ptr [rax], 0x43
	jne	.label_237
	cmp	byte ptr [rax + 1], 0
	je	.label_234
.label_237:
	mov	esi, OFFSET FLAT:label_236
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_235
.label_234:
	xor	ebx, ebx
.label_235:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403540
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
	#Procedure 0x403550
	.globl readlinebuffer
	.type readlinebuffer, @function
readlinebuffer:

	mov	edx, 0xa
	jmp	readlinebuffer_delim
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403560

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
	mov	dword ptr [rsp + 8], edx
	mov	r13, rsi
	mov	r14, rdi
	mov	rbx, qword ptr [r14]
	mov	r15, qword ptr [r14 + 0x10]
	mov	rdi, r13
	call	feof_unlocked
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x10], rcx
	test	eax, eax
	jne	.label_240
	add	rbx, r15
	mov	eax, dword ptr [rsp + 8]
	movsx	eax, al
	mov	dword ptr [rsp + 0xc], eax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	r12, r15
	nop	
.label_239:
	mov	rdi, r13
	call	getc_unlocked
	mov	ebp, eax
	cmp	ebp, -1
	jne	.label_241
	cmp	r12, r15
	je	.label_240
	mov	rdi, r13
	call	ferror_unlocked
	test	eax, eax
	jne	.label_240
	mov	eax, dword ptr [rsp + 8]
	cmp	byte ptr [r12 - 1], al
	mov	ebp, dword ptr [rsp + 0xc]
	je	.label_238
.label_241:
	cmp	r12, rbx
	jne	.label_242
	mov	r12, qword ptr [r14]
	mov	rdi, r15
	mov	rsi, r14
	call	x2realloc
	mov	r15, rax
	add	r12, r15
	mov	qword ptr [r14 + 0x10], r15
	mov	rbx, r15
	add	rbx, qword ptr [r14]
.label_242:
	mov	byte ptr [r12], bpl
	inc	r12
	cmp	ebp, dword ptr [rsp + 0xc]
	jne	.label_239
.label_238:
	sub	r12, r15
	mov	qword ptr [r14 + 8], r12
	mov	qword ptr [rsp + 0x10], r14
.label_240:
	mov	rax, qword ptr [rsp + 0x10]
	add	rsp, 0x18
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
	#Procedure 0x403630
	.globl freebuffer
	.type freebuffer, @function
freebuffer:

	mov	rdi, qword ptr [rdi + 0x10]
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403640

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
	je	.label_243
	call	__ctype_toupper_loc
	mov	rcx, qword ptr [rax]
	xor	edx, edx
	nop	
.label_244:
	movzx	eax, byte ptr [r15 + rdx]
	mov	eax, dword ptr [rcx + rax*4]
	movzx	esi, byte ptr [r14 + rdx]
	sub	eax, dword ptr [rcx + rsi*4]
	jne	.label_243
	inc	rdx
	xor	eax, eax
	cmp	rdx, rbx
	jb	.label_244
.label_243:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403690

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_248
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_250
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_245
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_250
	mov	esi, OFFSET FLAT:label_247
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_246
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_246:
	mov	rbx, r14
.label_250:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_248:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_249
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403740
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
	#Procedure 0x403780
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
	#Procedure 0x403790
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
	#Procedure 0x4037a0

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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037e0
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
	#Procedure 0x403800

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_251
	test	rdx, rdx
	je	.label_251
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_251:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403830
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038b0

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
.label_330:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_332
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_336]]
.label_621:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_340
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_286
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_622:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_352
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_352
	xor	r14d, r14d
.label_354:
	cmp	r14, r11
	jae	.label_360
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_360:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_354
.label_352:
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
	jmp	.label_269
.label_614:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_269
.label_617:
	mov	al, 1
.label_615:
	mov	r12b, 1
.label_618:
	test	r12b, 1
	mov	cl, 1
	je	.label_274
	mov	ecx, eax
.label_274:
	mov	al, cl
.label_616:
	test	r12b, 1
	jne	.label_277
	test	r11, r11
	je	.label_279
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_279:
	mov	r14d, 1
	jmp	.label_284
.label_277:
	xor	r14d, r14d
.label_284:
	mov	ecx, OFFSET FLAT:label_286
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_269
.label_619:
	test	r12b, 1
	jne	.label_293
	test	r11, r11
	je	.label_348
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_348:
	mov	r14d, 1
	jmp	.label_362
.label_620:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_299
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_269
.label_293:
	xor	r14d, r14d
.label_362:
	mov	eax, OFFSET FLAT:label_299
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_269:
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
	jmp	.label_313
	nop	dword ptr [rax]
.label_361:
	inc	rsi
.label_313:
	cmp	rbp, -1
	je	.label_343
	cmp	rsi, rbp
	jne	.label_358
	jmp	.label_349
	nop	word ptr cs:[rax + rax]
.label_343:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_349
.label_358:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_355
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_305
	cmp	rbp, -1
	jne	.label_305
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
.label_305:
	cmp	rbx, rbp
	jbe	.label_255
.label_355:
	xor	r8d, r8d
.label_285:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_257
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_262]]
.label_632:
	test	rsi, rsi
	jne	.label_254
	jmp	.label_270
	nop	
.label_255:
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
	jne	.label_282
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_285
	jmp	.label_294
.label_282:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_285
.label_636:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_300
	test	rsi, rsi
	jne	.label_301
	cmp	rbp, 1
	je	.label_270
	xor	r13d, r13d
	jmp	.label_263
.label_625:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_307
	cmp	byte ptr [rsp + 7], 0
	jne	.label_259
	cmp	r12d, 2
	jne	.label_312
	mov	eax, r9d
	and	al, 1
	jne	.label_312
	cmp	r14, r11
	jae	.label_268
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_268:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_318
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_318:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_323
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_323:
	add	r14, 3
	mov	r9b, 1
.label_312:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_341
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_341:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_331
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_331
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_331
	cmp	r14, r11
	jae	.label_317
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_317:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_267
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_267:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_263
.label_626:
	mov	bl, 0x62
	jmp	.label_351
.label_627:
	mov	cl, 0x74
	jmp	.label_353
.label_628:
	mov	bl, 0x76
	jmp	.label_351
.label_629:
	mov	bl, 0x66
	jmp	.label_351
.label_630:
	mov	cl, 0x72
	jmp	.label_353
.label_633:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_359
	cmp	byte ptr [rsp + 7], 0
	jne	.label_259
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
	jae	.label_365
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_365:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_266
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_266:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_271
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_271:
	add	r14, 3
	xor	r9d, r9d
.label_359:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_263
.label_634:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_280
	cmp	r12d, 2
	jne	.label_254
	cmp	byte ptr [rsp + 7], 0
	je	.label_254
	jmp	.label_259
.label_635:
	cmp	r12d, 2
	jne	.label_291
	cmp	byte ptr [rsp + 7], 0
	jne	.label_259
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_253
.label_257:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_297
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
.label_256:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_311
	test	r8b, r8b
	je	.label_311
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_263
.label_300:
	test	rsi, rsi
	jne	.label_329
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_329
.label_270:
	mov	dl, 1
.label_631:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_259
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_263:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_337
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_338
	jmp	.label_306
	nop	word ptr cs:[rax + rax]
.label_337:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_306
.label_338:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_344
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_253
	jmp	.label_309
	nop	dword ptr [rax]
.label_306:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_309
	jmp	.label_253
.label_344:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_309
.label_307:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_361
	xor	r15d, r15d
	jmp	.label_254
.label_291:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_353
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_253
.label_353:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_259
.label_351:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_263
	nop	word ptr cs:[rax + rax]
.label_309:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_259
	cmp	r12d, 2
	jne	.label_275
	mov	eax, r9d
	and	al, 1
	jne	.label_275
	cmp	r14, r11
	jae	.label_278
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_278:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_261
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_261:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_288
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_288:
	add	r14, 3
	mov	r9b, 1
.label_275:
	cmp	r14, r11
	jae	.label_292
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_292:
	inc	r14
	jmp	.label_295
.label_297:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_298
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_298:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_324:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_316
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_320
	cmp	rbp, -2
	je	.label_325
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_327
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_322:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_321
	bt	rsi, rdx
	jb	.label_294
.label_321:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_322
.label_327:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_346
	xor	r13d, r13d
.label_346:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_324
	jmp	.label_256
.label_331:
	xor	r13d, r13d
	jmp	.label_263
.label_329:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_263
.label_280:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_254
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_254
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_254
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_281
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_357
	cmp	byte ptr [rsp + 7], 0
	jne	.label_259
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_347
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_347:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_366
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_366:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_283
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_283:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_287
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_287:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_263
.label_254:
	xor	eax, eax
.label_301:
	xor	r13d, r13d
	jmp	.label_263
.label_311:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_296
	nop	word ptr cs:[rax + rax]
.label_363:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_296:
	test	r8b, r8b
	je	.label_302
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_303
	cmp	r14, r11
	jae	.label_252
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_252:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_303
	nop	dword ptr [rax]
.label_302:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_294
	cmp	r12d, 2
	jne	.label_315
	mov	eax, r9d
	and	al, 1
	jne	.label_315
	cmp	r14, r11
	jae	.label_319
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_319:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_308
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_308:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_328
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_328:
	add	r14, 3
	mov	r9b, 1
.label_315:
	cmp	r14, r11
	jae	.label_364
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_364:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_273
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_273:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_339
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_339:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_303:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_253
	test	r9b, 1
	je	.label_265
	mov	ebx, eax
	and	bl, 1
	jne	.label_265
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_356
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_356:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_290
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_290:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_265:
	cmp	r14, r11
	jae	.label_363
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_363
	nop	word ptr cs:[rax + rax]
.label_253:
	test	r9b, 1
	je	.label_258
	and	al, 1
	jne	.label_258
	cmp	r14, r11
	jae	.label_260
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_260:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_310
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_310:
	add	r14, 2
	xor	r9d, r9d
.label_258:
	mov	ebx, r15d
.label_295:
	cmp	r14, r11
	jae	.label_272
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_272:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_361
.label_320:
	xor	r13d, r13d
.label_316:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_256
.label_325:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_289
	mov	rsi, qword ptr [rsp + 0x50]
.label_350:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_334
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_350
	xor	r13d, r13d
	jmp	.label_256
.label_289:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_256
.label_334:
	xor	r13d, r13d
	jmp	.label_256
.label_281:
	xor	r13d, r13d
	jmp	.label_263
.label_357:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_263
	nop	dword ptr [rax + rax]
.label_349:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_304
	or	dl, al
	je	.label_294
.label_304:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_314
	or	dl, al
	jne	.label_314
	test	r10b, 1
	jne	.label_326
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_314
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_330
.label_314:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_333
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_335
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_335
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_345:
	cmp	r14, r11
	jae	.label_342
	mov	byte ptr [rcx + r14], al
.label_342:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_345
	jmp	.label_335
.label_259:
	mov	qword ptr [rsp + 0x20], rbp
.label_294:
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
.label_276:
	mov	r14, rax
.label_264:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_326:
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
	jmp	.label_276
.label_333:
	mov	rcx, qword ptr [rsp + 8]
.label_335:
	cmp	r14, r11
	jae	.label_264
	mov	byte ptr [rcx + r14], 0
	jmp	.label_264
.label_332:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404670
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
	#Procedure 0x404680

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
	je	.label_367
	mov	qword ptr [rax], rbx
.label_367:
	mov	rax, r14
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
	.align	16
	#Procedure 0x404770
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_368
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_370:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_370
.label_368:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_372
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_371]], OFFSET FLAT:slot0
.label_372:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_369
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_369:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404810

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x404820

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
	js	.label_373
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_376
	cmp	r12d, 0x7fffffff
	je	.label_378
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
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_374
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_374:
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
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 8]
.label_376:
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
	jbe	.label_379
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_375
.label_379:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_377
	mov	rdi, r14
	call	free
.label_377:
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
.label_375:
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
.label_373:
	call	abort
.label_378:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4049e0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049f0
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
	#Procedure 0x404a00
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
	#Procedure 0x404a10

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
	#Procedure 0x404a50

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
	je	.label_380
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
.label_380:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ab0

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
	#Procedure 0x404af0

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
	#Procedure 0x404b10
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
	#Procedure 0x404b30

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
	mov	rcx,  qword ptr [word ptr [rip + label_381]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_382]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_383]]
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
	#Procedure 0x404ba0

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
	#Procedure 0x404bb0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404bc0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404bd0

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
	#Procedure 0x404c20

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404c30

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
	mov	rax,  qword ptr [word ptr [rip + label_381]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_382]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_383]]
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
	#Procedure 0x404ca0
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
	#Procedure 0x404cc0
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
	#Procedure 0x404ce0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404cf0
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
	#Procedure 0x404d00

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404d10

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
	#Procedure 0x404d20

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
	jne	.label_389
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
	je	.label_385
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_390
	mov	eax, OFFSET FLAT:label_391
	jmp	.label_388
.label_385:
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
	je	.label_384
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_386
	mov	eax, OFFSET FLAT:label_387
	jmp	.label_388
.label_384:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_299
	mov	eax, OFFSET FLAT:label_286
.label_388:
	cmove	rax, rcx
.label_389:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404de0

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
	je	.label_392
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_394
	jmp	.label_393
.label_392:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_393
.label_394:
	mov	eax, 1
	test	bpl, bpl
	je	.label_393
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
.label_393:
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
	#Procedure 0x404e60

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
	je	.label_397
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_395
	jmp	.label_396
.label_397:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_396
.label_395:
	mov	eax, 1
	test	bpl, bpl
	je	.label_396
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
.label_396:
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
	.align	16
	#Procedure 0x404ef0

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
	je	.label_398
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_400
	jmp	.label_399
.label_398:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_399
.label_400:
	mov	eax, 1
	test	bpl, bpl
	je	.label_399
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
.label_399:
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
	#Procedure 0x404f70

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
	je	.label_403
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_402
	jmp	.label_401
.label_403:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_401
.label_402:
	mov	eax, 1
	test	bpl, bpl
	je	.label_401
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
.label_401:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fe0

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
	je	.label_406
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_404
	jmp	.label_405
.label_406:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_405
.label_404:
	mov	eax, 1
	test	bpl, bpl
	je	.label_405
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_405:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405040

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
	je	.label_407
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_409
	jmp	.label_408
.label_407:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_408
.label_409:
	mov	eax, 1
	test	bpl, bpl
	je	.label_408
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_408:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405090

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
	je	.label_412
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_411
	jmp	.label_410
.label_412:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_410
.label_411:
	mov	eax, 1
	test	bpl, bpl
	je	.label_410
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_410:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050e0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_415
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_414
	jmp	.label_413
.label_415:
	mov	eax, 1
	test	cl, cl
	je	.label_413
.label_414:
	xor	eax, eax
.label_413:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405110

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
	#Procedure 0x405120

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
	je	.label_428
	mov	edx, OFFSET FLAT:label_419
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_425
.label_428:
	mov	edx, OFFSET FLAT:label_426
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_425:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_430
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
	mov	esi, OFFSET FLAT:label_427
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_431
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_432]]
.label_563:
	add	rsp, 8
	jmp	.label_418
.label_431:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_422
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
	jmp	.label_418
.label_564:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_417
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
.label_565:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_423
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
.label_566:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_420
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
.label_567:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_434
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
	jmp	.label_418
.label_568:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_433
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
	jmp	.label_418
.label_569:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_416
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
	jmp	.label_418
.label_570:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_421
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
	jmp	.label_418
.label_572:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_424
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
	jmp	.label_418
.label_571:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_429
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
.label_418:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405480
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_435:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_435
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4054b0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_437:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_436
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_438
	nop	dword ptr [rax]
.label_436:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_438:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_439
	inc	r9
	cmp	r9, 0xa
	jb	.label_437
.label_439:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405510

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_440
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_440:
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055a0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_441
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_442
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_444
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_25
	mov	ecx, OFFSET FLAT:label_26
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_443
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405620
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_445
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_445:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405650

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_446
	test	rax, rax
	je	.label_447
.label_446:
	pop	rbx
	ret	
.label_447:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405670
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_448
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_448:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4056a0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_449
	test	rbx, rbx
	jne	.label_449
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_449:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_451
	test	rax, rax
	je	.label_450
.label_451:
	pop	rbx
	ret	
.label_450:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4056d0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_452
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_455
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_453
.label_452:
	test	rcx, rcx
	jne	.label_456
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_456:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_454
.label_453:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_455:
	call	xalloc_die
.label_454:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405750

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405760

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405770
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
	#Procedure 0x4057a0

	.globl xcalloc
	.type xcalloc, @function
xcalloc:
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_457
	call	rpl_calloc
	test	rax, rax
	je	.label_457
	pop	rcx
	ret	
.label_457:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057d0

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
	#Procedure 0x405800
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
	.section	.text
	.align	16
	#Procedure 0x405820

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_458
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_92
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405850

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
	je	.label_459
	mov	rsi, rbx
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, r14
	call	collate_error
.label_459:
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
	#Procedure 0x4058a0

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
	mov	esi, OFFSET FLAT:label_460
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_461
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
	mov	esi, OFFSET FLAT:label_462
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
	#Procedure 0x405970
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
	je	.label_463
	dec	rbx
	dec	r15
	mov	rsi, r12
	mov	rdx, rbx
	mov	rcx, r14
	mov	r8, r15
	call	collate_error
.label_463:
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
	#Procedure 0x4059c0

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
	jae	.label_472
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_467:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_467
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_466
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoul
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_473
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_478
	cmp	eax, 0x22
	jne	.label_466
	mov	r12d, 1
.label_478:
	test	rbp, rbp
	jne	.label_481
	jmp	.label_469
.label_473:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_466
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_466
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_466
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_481:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_469
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_471
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_477
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_477
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_464
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_468
	cmp	ecx, 0x44
	je	.label_468
	cmp	ecx, 0x69
	jne	.label_464
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_464
.label_468:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_464
.label_477:
	mov	rsi, r14
.label_464:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_471
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_479]]
.label_542:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_465
.label_471:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_480
.label_543:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_465
.label_544:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_465
.label_546:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_465
.label_540:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale
	jmp	.label_470
.label_541:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_465
.label_545:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_465
.label_547:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_465
.label_548:
	lea	rdi, [rsp]
	mov	edx, 7
.label_465:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_470:
	mov	rsi, r14
.label_550:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_469:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_480:
	mov	r15d, r12d
.label_466:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_549:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale
	jmp	.label_470
.label_551:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale
	jmp	.label_470
.label_472:
	mov	edi, OFFSET FLAT:label_474
	mov	esi, OFFSET FLAT:label_475
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_476
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c70

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
	#Procedure 0x405ca0

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
	je	.label_482
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_483:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebp, eax
	dec	ebx
	jne	.label_483
.label_482:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405ce0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_484
	test	rsi, rsi
	mov	ecx, 1
	je	.label_485
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_485
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_484:
	mov	ecx, 1
.label_485:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d30

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_486
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_488
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_486
.label_488:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_486
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_487
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_487:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_486:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405db0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_495
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_495:
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
	ja	.label_489
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_499
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_497
	test	esi, esi
	jne	.label_489
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_500
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_492
.label_489:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_490
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_497
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_502
.label_499:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_497:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_493
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_496
.label_493:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_496:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_502:
	cmp	eax, 6
	jne	.label_490
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_491
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_494
.label_490:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_498
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_501
.label_500:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_492:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_491:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_494:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_498:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_501:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f70

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
	#Procedure 0x405f80

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
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
	js	.label_506
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_507
.label_505:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_507
.label_503:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_507:
	test	ebx, ebx
	js	.label_506
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_506
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
	jne	.label_506
.label_504:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_506:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406050

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_508
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_508
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_508:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406080

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_509
	ret	
.label_509:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060a0

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
	jne	.label_510
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_510
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_511
.label_510:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_511:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_512
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_512:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406110

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
	je	.label_513
	cmp	r15, -2
	jb	.label_513
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_513
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_513:
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
	#Procedure 0x406170
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_514
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_514
.label_515:
	ret	
.label_514:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_515
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4061a0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_516
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_516:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4061c0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4061d0
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
	#Procedure 0x4061e0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_517
.label_518:
	ret	
.label_517:
	cmp	edi, 0x7f
	je	.label_518
	xor	eax, eax
	jmp	.label_518
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406200
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
	#Procedure 0x406210
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
	#Procedure 0x406220
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
	#Procedure 0x406230
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
	#Procedure 0x406240
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_519
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_520]]
.label_521:
	ret	
.label_519:
	xor	eax, eax
	jmp	.label_521
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406260
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_522
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_522:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406280

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
	#Procedure 0x406290
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_523
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_523:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4062b0
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
	#Procedure 0x4062c0
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
	#Procedure 0x4062d0

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
	je	.label_525
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_524
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_524
.label_525:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_524
	test	cl, cl
	jne	.label_524
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_524:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406340

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
	mov	eax, OFFSET FLAT:label_526
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406370

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
	jne	.label_527
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbx
	call	memcmp
	test	eax, eax
	je	.label_529
.label_527:
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
	jmp	.label_528
.label_529:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_528:
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
	#Procedure 0x4063f0

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
.label_531:
	mov	dword ptr [r13], 0
	mov	rdi, rbx
	mov	rsi, r12
	call	strcoll
	test	eax, eax
	jne	.label_530
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	inc	rbp
	mov	rdi, r12
	call	strlen
	inc	rax
	sub	r14, rax
	sub	r15, rbp
	je	.label_532
	add	r12, rax
	add	rbx, rbp
	mov	eax, 1
	test	r14, r14
	jne	.label_531
	jmp	.label_530
.label_532:
	neg	r14
	sbb	eax, eax
.label_530:
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
	#Procedure 0x406470

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
	jne	.label_533
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbx
	call	memcmp
	test	eax, eax
	je	.label_534
.label_533:
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
.label_534:
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
	#Procedure 0x4064d0

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
	nop	word ptr cs:[rax + rax]
