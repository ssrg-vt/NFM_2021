	.section	.text
	.align	16
	#Procedure 0x4017f0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	lea	rsi, [rsi]
	push	rax
	nop	
	mov	ebp, edi
	lea	rdi, [rdi]
	test	ebp, ebp
	lea	rsi, [rsi]
	jne	.label_7
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1
	mov	rsp, rsp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	__printf_chk
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.4
	nop	
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.6
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.8
	nop	
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.10
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	call	emit_ancillary_info
	mov	rbp, rbp
	mov	edi, ebp
	call	exit
.label_7:
	lea	rdi, [rdi]
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	rbp, rbp
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	nop	
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x401a10

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	mov	rbp, rbp
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.31
	nop	word ptr cs:[rax + rax]
.label_10:
	mov	edi, OFFSET FLAT:.str.11
	call	strcmp
	nop	
	test	eax, eax
	je	.label_9
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	mov	rbp, rbp
	test	rsi, rsi
	jne	.label_10
.label_9:
	mov	rax, qword ptr [rbx + 8]
	nop	
	test	rax, rax
	lea	rdi, [rdi]
	mov	ebx, OFFSET FLAT:.str.11
	lea	rdi, [rdi]
	cmovne	rbx, rax
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.39
	mov	rsp, rsp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	nop	
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	lea	rsi, [rsi]
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	lea	rsi, [rsi]
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_8
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.41
	mov	rbp, rbp
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	je	.label_8
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
.label_8:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi, rax
	mov	rbp, rbp
	mov	r14d, OFFSET FLAT:.str.11
	mov	edi, 1
	nop	
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.11
	xor	eax, eax
	lea	rsi, [rsi]
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
	mov	rsp, rsp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.45
	mov	ecx, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	cmove	rcx, rax
	nop	
	mov	edi, 1
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rsi, rdx
	mov	rdx, rbx
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	jmp	__printf_chk
	.section	.text
	.align	16
	#Procedure 0x401b90

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	sub	rsp, 0x28
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	ebp, edi
	mov	dword ptr [rsp + 0x20], 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], 0
	mov	dword ptr [rsp + 0xc], 0
	nop	
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	nop	
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.13
	mov	esi, OFFSET FLAT:.str.14
	lea	rsi, [rsi]
	call	bindtextdomain
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.13
	call	textdomain
	lea	rdi, [rdi]
	mov	edi, 3
	call	hard_locale
	mov	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  al
	mov	edi, OFFSET FLAT:close_stdout
	mov	rbp, rbp
	call	atexit
	mov	edi, OFFSET FLAT:free_spareline
	lea	rsi, [rsi]
	call	atexit
	mov	byte ptr [byte ptr [rip + print_pairables]],  1
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + seen_unpairable]],  0
	mov	byte ptr [byte ptr [rip + label_20]],  0
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + issued_disorder_warning]],  0
	mov	dword ptr [dword ptr [rip + check_input_order]],  0
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.15
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:longopts
	lea	rsi, [rsi]
	xor	r8d, r8d
	mov	rsp, rsp
	mov	edi, ebp
	mov	rsi, rbx
	mov	rbp, rbp
	call	getopt_long
	lea	rdi, [rdi]
	cmp	eax, -1
	je	.label_44
	lea	rsi, [rsi]
	lea	r15, [rsp + 0x18]
	lea	r12, [rsp + 0x10]
	lea	r13, [rsp + 0xc]
	mov	rsp, rsp
	lea	r14, [rsp + 0x20]
	jmp	.label_37
.label_43:
	lea	rsi, [rsi]
	movzx	eax, al
	cmp	eax, 0x32
	sete	al
	mov	rsp, rsp
	movzx	eax, al
	nop	
	inc	dword ptr [rsp + rax*4 + 0x10]
	inc	eax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x24], eax
	jmp	.label_13
	nop	dword ptr [rax]
.label_37:
	mov	dword ptr [rsp + 0x24], 0
	lea	rsi, [rsi]
	cmp	eax, 0x6e
	lea	rdi, [rdi]
	jg	.label_52
	cmp	eax, 0x30
	jle	.label_55
	lea	ecx, [rax - 0x61]
	cmp	ecx, 9
	ja	.label_56
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_59]]
.label_579:
	mov	rdi,  qword ptr [word ptr [rip + empty_filler]]
	test	rdi, rdi
	je	.label_11
	nop	
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	nop	
	jne	.label_17
.label_11:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + empty_filler]],  rax
	lea	rsi, [rsi]
	jmp	.label_13
.label_52:
	lea	ecx, [rax - 0x74]
	lea	rdi, [rdi]
	cmp	ecx, 0xe
	ja	.label_39
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_30]]
.label_536:
	nop	
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	dl, byte ptr [rax]
	mov	rsp, rsp
	mov	cl, 0xa
	lea	rsi, [rsi]
	test	dl, dl
	je	.label_32
	mov	cl, byte ptr [rax + 1]
	lea	rsi, [rsi]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_47
	lea	rdi, [rdi]
	movzx	edx, dl
	cmp	edx, 0x5c
	jne	.label_35
	mov	rbp, rbp
	movzx	ecx, cl
	cmp	ecx, 0x30
	jne	.label_35
	cmp	byte ptr [rax + 2], 0
	mov	rsp, rsp
	jne	.label_35
	nop	
	xor	ecx, ecx
	lea	rdi, [rdi]
	jmp	.label_32
	nop	word ptr [rax + rax]
.label_55:
	lea	rsi, [rsi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_51
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	rsi, r15
	mov	rbp, rbp
	mov	rdx, r12
	lea	rsi, [rsi]
	mov	rcx, r13
	mov	r8, r14
	lea	r9, [rsp + 0x24]
	call	add_file_name
	lea	rdi, [rdi]
	jmp	.label_13
.label_56:
	cmp	eax, 0x31
	lea	rsi, [rsi]
	je	.label_24
	cmp	eax, 0x32
	lea	rsi, [rsi]
	jne	.label_12
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	call	string_to_join_field
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:join_field_2
	mov	rbp, rbp
	jmp	.label_19
.label_39:
	nop	
	cmp	eax, 0x6f
	nop	
	jne	.label_12
	lea	rdi, [rdi]
	mov	r14, r12
	lea	rdi, [rdi]
	mov	r12, r15
	lea	rsi, [rsi]
	mov	r15, rbx
	mov	ebx, ebp
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.18_0
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	je	.label_36
	mov	rsp, rsp
	mov	rdi, rbp
	call	add_field_list
	mov	dword ptr [rsp + 0x24], 3
	nop	
	jmp	.label_45
.label_537:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + print_pairables]],  0
.label_578:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_0
	lea	rcx, [rsp]
	mov	rsp, rsp
	call	xstrtoul
	mov	rsp, rsp
	test	eax, eax
	jne	.label_50
	mov	rax, qword ptr [rsp]
	lea	rcx, [rax - 1]
	lea	rdi, [rdi]
	cmp	rcx, 2
	mov	rsp, rsp
	jae	.label_50
	mov	rbp, rbp
	cmp	rax, 1
	jne	.label_26
	nop	
	mov	byte ptr [byte ptr [rip + print_unpairables_1]],  1
	lea	rdi, [rdi]
	jmp	.label_13
.label_538:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + eolchar]],  1
	lea	rdi, [rdi]
	jmp	.label_13
.label_539:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + check_input_order]],  1
	jmp	.label_13
.label_540:
	mov	dword ptr [dword ptr [rip + check_input_order]],  2
	mov	rsp, rsp
	jmp	.label_13
.label_541:
	mov	byte ptr [byte ptr [rip + join_header_lines]],  1
	jmp	.label_13
.label_26:
	mov	byte ptr [byte ptr [rip + print_unpairables_2]],  1
	jmp	.label_13
.label_580:
	mov	byte ptr [byte ptr [rip + ignore_case]],  1
	jmp	.label_13
.label_581:
	mov	rcx,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	mov	al, byte ptr [rcx]
	lea	rdi, [rdi]
	mov	dl, al
	add	dl, 0xcf
	mov	rbp, rbp
	movzx	edx, dl
	cmp	edx, 1
	mov	rbp, rbp
	ja	.label_31
	cmp	byte ptr [rcx + 1], 0
	jne	.label_31
	movsxd	rdx,  dword ptr [dword ptr [rip + optind]]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + rdx*8 - 8]
	lea	rsi, [rsi]
	add	rdx, 2
	cmp	rcx, rdx
	nop	
	je	.label_43
.label_31:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	call	string_to_join_field
	mov	edi, OFFSET FLAT:join_field_1
	mov	rsi, rax
	call	set_join_field
	mov	rsi,  qword ptr [word ptr [rip + join_field_1]]
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:join_field_2
	call	set_join_field
	jmp	.label_13
.label_24:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	string_to_join_field
	mov	edi, OFFSET FLAT:join_field_1
.label_19:
	mov	rsi, rax
	lea	rsi, [rsi]
	call	set_join_field
	lea	rsi, [rsi]
	jmp	.label_13
.label_36:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + autoformat]],  1
.label_45:
	nop	
	mov	ebp, ebx
	mov	rbx, r15
	lea	rdi, [rdi]
	mov	r15, r12
	mov	r12, r14
	lea	rsi, [rsi]
	lea	r14, [rsp + 0x20]
	jmp	.label_13
.label_47:
	lea	rsi, [rsi]
	mov	cl, dl
.label_32:
	mov	edx,  dword ptr [dword ptr [rip + tab]]
	test	edx, edx
	mov	rsp, rsp
	movzx	eax, cl
	js	.label_18
	nop	
	cmp	edx, eax
	jne	.label_14
.label_18:
	mov	dword ptr [dword ptr [rip + tab]],  eax
	nop	dword ptr [rax]
.label_13:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x24]
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x20], eax
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.15
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsp, rsp
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, -1
	jne	.label_37
.label_44:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x20], 0
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	nop	
	cmp	eax, ebp
	jge	.label_42
	lea	r13, [rsp + 0x10]
	mov	rbp, rbp
	lea	r12, [rsp + 0xc]
	mov	rbp, rbp
	lea	r14, [rsp + 0x20]
	lea	rsi, [rsi]
	lea	r15, [rsp + 0x24]
	nop	word ptr [rax + rax]
.label_54:
	lea	ecx, [rax + 1]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rbp, rbp
	cdqe	
	mov	rdi, qword ptr [rbx + rax*8]
	nop	
	lea	rsi, [rsp + 0x18]
	mov	rdx, r13
	nop	
	mov	rcx, r12
	mov	r8, r14
	mov	r9, r15
	call	add_file_name
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	mov	rbp, rbp
	cmp	eax, ebp
	lea	rdi, [rdi]
	jl	.label_54
.label_42:
	mov	rbp, rbp
	mov	r14, rbx
	mov	ebx, ebp
	xor	ebp, ebp
	mov	eax, dword ptr [rsp + 0xc]
	mov	rsp, rsp
	cmp	eax, 2
	mov	rsp, rsp
	jne	.label_57
	nop	word ptr [rax + rax]
.label_22:
	lea	rdi, [rdi]
	cmp	dword ptr [rsp + rbp*4 + 0x10], 0
	je	.label_15
	mov	edi, OFFSET FLAT:join_field_1
	mov	rsi, rbp
	call	set_join_field
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:join_field_2
	lea	rsi, [rsi]
	mov	rsi, rbp
	call	set_join_field
.label_15:
	nop	
	inc	rbp
	cmp	rbp, 2
	jne	.label_22
	nop	
	cmp	qword ptr [word ptr [rip + join_field_1]],  -1
	mov	rsp, rsp
	jne	.label_25
	mov	qword ptr [word ptr [rip + join_field_1]],  0
.label_25:
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [rip + join_field_2]],  -1
	jne	.label_34
	mov	qword ptr [word ptr [rip + join_field_2]],  0
.label_34:
	mov	rax,  qword ptr [word ptr [rip + g_names]]
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2d
	jne	.label_41
	cmp	byte ptr [rax + 1], 0
	mov	rsp, rsp
	je	.label_23
.label_41:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + g_names]]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.27
	lea	rsi, [rsi]
	call	fopen_safer
	mov	rbx, rax
	jmp	.label_33
.label_23:
	mov	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + stdin]]
.label_33:
	lea	rsi, [rsi]
	test	rbx, rbx
	nop	
	je	.label_38
	mov	rax,  qword ptr [word ptr [rip + label_40]]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_49
	cmp	byte ptr [rax + 1], 0
	mov	rsp, rsp
	je	.label_53
.label_49:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + label_40]]
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.27
	lea	rsi, [rsi]
	call	fopen_safer
	lea	rsi, [rsi]
	mov	rbp, rax
	mov	rsp, rsp
	jmp	.label_60
.label_53:
	nop	
	mov	rbp,  qword ptr [word ptr [rip + stdin]]
.label_60:
	test	rbp, rbp
	je	.label_27
	cmp	rbx, rbp
	mov	rbp, rbp
	je	.label_16
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rsi, rbp
	call	system_join
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	rpl_fclose
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_38
	mov	rdi, rbp
	mov	rsp, rsp
	call	rpl_fclose
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_27
	mov	al,  byte ptr [byte ptr [rip + label_20]]
	or	al,  byte ptr [byte ptr [rip + issued_disorder_warning]]
	jne	.label_29
	lea	rsi, [rsi]
	xor	eax, eax
	add	rsp, 0x28
	pop	rbx
	nop	
	pop	r12
	nop	
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	ret	
.label_51:
	mov	rbp, rbp
	cmp	eax, 0xffffff7d
	je	.label_46
	lea	rdi, [rdi]
	cmp	eax, 0xffffff7e
	lea	rdi, [rdi]
	jne	.label_12
	xor	edi, edi
	call	usage
.label_46:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.11
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.23
	xor	r9d, r9d
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	call	version_etc
	xor	edi, edi
	call	exit
.label_12:
	mov	edi, 1
	call	usage
.label_50:
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.16
	jmp	.label_58
.label_38:
	call	__errno_location
	mov	rbp, rbp
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + g_names]]
	jmp	.label_28
.label_27:
	lea	rsi, [rsi]
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + label_40]]
.label_28:
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	nop	
	call	quotearg_n_style_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_1
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebx
	call	error
.label_14:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.21
	lea	rdi, [rdi]
	jmp	.label_21
.label_35:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
.label_58:
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	call	quote
	lea	rdi, [rdi]
	mov	rcx, rax
	nop	
	mov	edi, 1
	lea	rsi, [rsi]
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	error
.label_57:
	xor	edi, edi
	mov	rsp, rsp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_48
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.24
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 1
	nop	
	call	usage
.label_16:
	nop	
	call	__errno_location
	nop	
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.29
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_29:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
	jmp	.label_21
.label_17:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17_0
.label_21:
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	call	error
.label_48:
	mov	esi, OFFSET FLAT:.str.25
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, ebx
	mov	rdi, qword ptr [r14 + rax*8 - 8]
	mov	rbp, rbp
	call	quote
	mov	rcx, rax
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	edi, 1
	lea	rdi, [rdi]
	call	usage
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4024b0

	.globl free_spareline
	.type free_spareline, @function
free_spareline:
	mov	rbp, rbp
	push	rbx
	mov	rbx, -0x10
	nop	dword ptr [rax + rax]
.label_62:
	mov	rdi,  qword ptr [word ptr [rbx + outlist_head]]
	mov	rbp, rbp
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_61
	lea	rdi, [rdi]
	call	freeline
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rbx + outlist_head]]
	call	free
.label_61:
	add	rbx, 8
	lea	rdi, [rdi]
	jne	.label_62
	nop	
	pop	rbx
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402500

	.globl set_join_field
	.type set_join_field, @function
set_join_field:
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rsp, rsp
	mov	rbx, qword ptr [rdi]
	mov	rbp, rbp
	cmp	rbx, -1
	je	.label_63
	mov	rbp, rbp
	cmp	rbx, r14
	lea	rdi, [rdi]
	jne	.label_64
.label_63:
	mov	qword ptr [rdi], r14
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_64:
	mov	rbp, rbp
	inc	rbx
	inc	r14
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.53
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rbx
	lea	rsi, [rsi]
	mov	r8, r14
	nop	
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402580

	.globl string_to_join_field
	.type string_to_join_field, @function
string_to_join_field:
	push	r14
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	rbx, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_0
	call	xstrtoul
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_65
	mov	rsp, rsp
	mov	qword ptr [rsp], -1
	mov	rsp, rsp
	jmp	.label_66
.label_65:
	mov	rsp, rsp
	test	eax, eax
	jne	.label_67
	mov	rax, qword ptr [rsp]
	nop	
	test	rax, rax
	mov	rsp, rsp
	je	.label_67
.label_66:
	nop	
	mov	rax, qword ptr [rsp]
	dec	rax
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r14
	ret	
.label_67:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.16
	mov	rsp, rsp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	r14, rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	edi, 1
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, r14
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402630

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
	nop	
	mov	edx, 0x20
	mov	ecx, 9
	lea	rdi, [rdi]
	mov	rdi, r12
	call	__strpbrk_c3
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0
	mov	rbp, rbp
	je	.label_69
	mov	rbx, rax
	inc	rbx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0
.label_69:
	mov	rsp, rsp
	mov	rdi, r12
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, r15
	mov	rbp, rbp
	call	decode_field_spec
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0x14]
	nop	
	mov	rsi, qword ptr [rsp + 8]
	call	add_field
	test	rbx, rbx
	nop	
	mov	r12, rbx
	mov	rbp, rbp
	jne	.label_68
	add	rsp, 0x18
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026d0

	.globl add_file_name
	.type add_file_name, @function
add_file_name:
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r14, r9
	mov	rbp, rbp
	mov	r12, r8
	mov	r13, rcx
	mov	rbx, rsi
	mov	r15, rdi
	mov	rbp, rbp
	mov	eax, dword ptr [r13]
	nop	
	cmp	eax, 2
	nop	
	jne	.label_72
	mov	ebp, dword ptr [rbx]
	test	ebp, ebp
	sete	al
	lea	rsi, [rsi]
	movzx	eax, al
	mov	ecx, dword ptr [rbx + rax*4]
	nop	
	cmp	rcx, 3
	ja	.label_71
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [+ (rax * 8) + g_names]]
	nop	
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_74]]
.label_548:
	dec	dword ptr [rdx]
	call	string_to_join_field
	mov	edi, OFFSET FLAT:join_field_1
	jmp	.label_73
.label_549:
	dec	dword ptr [rdx + 4]
	call	string_to_join_field
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:join_field_2
.label_73:
	mov	rsi, rax
	mov	rbp, rbp
	call	set_join_field
	jmp	.label_71
.label_550:
	call	add_field_list
.label_71:
	mov	eax, 1
	test	ebp, ebp
	je	.label_72
	mov	ecx, dword ptr [rbx + 4]
	lea	rdi, [rdi]
	mov	dword ptr [rbx], ecx
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + label_40]]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + g_names]],  rcx
.label_72:
	mov	rsp, rsp
	mov	ecx, dword ptr [r12]
	lea	rsi, [rsi]
	cdqe	
	mov	dword ptr [rbx + rax*4], ecx
	mov	qword ptr [word ptr [+ (rax * 8) + g_names]],  r15
	inc	eax
	mov	dword ptr [r13], eax
	lea	rsi, [rsi]
	cmp	dword ptr [r12], 3
	jne	.label_70
	nop	
	mov	dword ptr [r14], 3
.label_70:
	mov	rsp, rsp
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	ret	
.label_547:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.60
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	edi, 4
	nop	
	mov	rsi, r15
	mov	rbp, rbp
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	nop	
	mov	rdx, rbx
	call	error
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	call	usage
	nop	
	.section	.text
	.align	16
	#Procedure 0x402820

	.globl system_join
	.type system_join, @function
system_join:
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	r14, rsi
	mov	qword ptr [rsp + 0x20], r14
	mov	r12, rdi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], r12
	mov	esi, 2
	call	fadvise
	mov	esi, 2
	nop	
	mov	rdi, r14
	call	fadvise
	lea	r15, [rsp + 0x60]
	lea	rdi, [rdi]
	mov	rdi, r15
	call	initseq
	lea	rdi, [rdi]
	mov	edx, 1
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rsi, r15
	call	getseq
	lea	r15, [rsp + 0x48]
	lea	rsi, [rsi]
	mov	rdi, r15
	call	initseq
	mov	edx, 2
	mov	rdi, r14
	nop	
	mov	rsi, r15
	call	getseq
	movzx	eax,  byte ptr [byte ptr [rip + autoformat]]
	nop	
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	jne	.label_102
	xor	eax, eax
	cmp	qword ptr [rsp + 0x60], 0
	mov	rbp, rbp
	je	.label_105
	mov	rax, qword ptr [rsp + 0x70]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + 0x18]
.label_105:
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + autocount_1]],  rax
	xor	eax, eax
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x48], 0
	mov	rsp, rsp
	je	.label_112
	mov	rax, qword ptr [rsp + 0x58]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x18]
.label_112:
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + autocount_2]],  rax
.label_102:
	mov	rbp, rbp
	movzx	eax,  byte ptr [byte ptr [rip + join_header_lines]]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_76
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x60], 0
	mov	rsp, rsp
	jne	.label_80
	nop	
	cmp	qword ptr [rsp + 0x48], 0
	lea	rsi, [rsi]
	je	.label_76
	mov	edi, OFFSET FLAT:uni_blank
	cmp	qword ptr [rsp + 0x60], 0
	mov	rsp, rsp
	je	.label_87
.label_80:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x70]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax]
.label_87:
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:uni_blank
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x48], 0
	je	.label_90
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsi, qword ptr [rax]
.label_90:
	lea	rsi, [rsi]
	call	prjoin
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [word ptr [rip + prevline]],  xmm0
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_97
	lea	rsi, [rsp + 0x60]
	mov	edx, 1
	mov	rbp, rbp
	mov	ecx, 1
	mov	rdi, r12
	call	advance_seq
.label_97:
	nop	
	cmp	qword ptr [rsp + 0x48], 0
	je	.label_76
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x48]
	mov	edx, 1
	mov	ecx, 2
	mov	rdi, r14
	mov	rbp, rbp
	call	advance_seq
.label_76:
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x60], 0
	mov	rbp, rbp
	je	.label_99
	mov	rax, qword ptr [rsp + 0x48]
	test	rax, rax
	je	.label_99
	mov	rsp, rsp
	lea	r15, [rsp + 0x60]
	lea	rbp, [rsp + 0x48]
	mov	rsp, rsp
	jmp	.label_96
	nop	word ptr [rax + rax]
.label_109:
	mov	rbx, qword ptr [rsp + 0x58]
	nop	word ptr cs:[rax + rax]
.label_93:
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rdi, [rdi]
	mov	ecx, 1
	mov	rdi, r12
	mov	rsi, r15
	lea	rsi, [rsi]
	call	advance_seq
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	test	al, al
	je	.label_86
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x70]
	mov	rdi, qword ptr [rax + rcx*8 - 8]
	mov	rsi, qword ptr [rbx]
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + join_field_1]]
	mov	rcx,  qword ptr [word ptr [rip + join_field_2]]
	lea	rdi, [rdi]
	call	keycmp
	mov	rsp, rsp
	test	eax, eax
	je	.label_93
	nop	
	mov	dword ptr [rsp + 0x2c], 0
	lea	rdi, [rdi]
	jmp	.label_94
.label_86:
	inc	rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x60], rcx
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x2c], eax
.label_94:
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_75:
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	ecx, 2
	mov	rdi, r14
	mov	rsi, rbp
	call	advance_seq
	lea	rsi, [rsi]
	test	al, al
	nop	
	je	.label_110
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	mov	rax, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsi, qword ptr [rcx + rax*8 - 8]
	mov	rdx,  qword ptr [word ptr [rip + join_field_1]]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + join_field_2]]
	mov	rsp, rsp
	call	keycmp
	mov	rbp, rbp
	test	eax, eax
	je	.label_75
	nop	
	mov	dword ptr [rsp + 0x28], 0
	jmp	.label_77
.label_110:
	lea	rsi, [rsi]
	inc	qword ptr [rsp + 0x48]
	mov	al, 1
	mov	dword ptr [rsp + 0x28], eax
.label_77:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x60], 1
	mov	rsp, rsp
	je	.label_83
	mov	al,  byte ptr [byte ptr [rip + print_pairables]]
	lea	rsi, [rsi]
	xor	al, 1
	test	al, 1
	nop	
	jne	.label_83
	nop	
	mov	r13, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 0x38], rax
	mov	r15, qword ptr [rsp + 0x60]
	mov	r12, qword ptr [rsp + 0x70]
	mov	rsp, rsp
	dec	r15
	nop	
	lea	rax, [r13 - 1]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rax
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_106:
	mov	rbp, rbp
	cmp	r13, 1
	je	.label_92
	mov	r14, qword ptr [rsp + 0x30]
	nop	
	mov	rbp, qword ptr [rsp + 0x38]
	nop	word ptr cs:[rax + rax]
.label_104:
	mov	rdi, qword ptr [r12 + rbx*8]
	mov	rsi, qword ptr [rbp]
	call	prjoin
	mov	rsp, rsp
	add	rbp, 8
	dec	r14
	lea	rdi, [rdi]
	jne	.label_104
.label_92:
	inc	rbx
	lea	rsi, [rsi]
	cmp	rbx, r15
	jb	.label_106
.label_83:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x2c]
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	mov	eax, 0
	lea	rsi, [rsi]
	jne	.label_100
	mov	rax, qword ptr [rsp + 0x60]
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx]
	mov	rsi, qword ptr [rcx + rax*8 - 8]
	mov	qword ptr [rcx], rsi
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x70]
	mov	qword ptr [rcx + rax*8 - 8], rdx
	mov	eax, 1
.label_100:
	mov	qword ptr [rsp + 0x60], rax
	nop	
	mov	eax, dword ptr [rsp + 0x28]
	test	al, al
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x18]
	lea	rbp, [rsp + 0x60]
	nop	
	mov	r15, rbp
	lea	rbp, [rsp + 0x48]
	je	.label_78
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x48], 0
	jmp	.label_84
.label_78:
	nop	
	mov	rax, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx]
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx + rax*8 - 8]
	nop	
	mov	qword ptr [rcx], rsi
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	mov	qword ptr [rcx + rax*8 - 8], rdx
	mov	qword ptr [rsp + 0x48], 1
	lea	rsi, [rsi]
	jmp	.label_84
	nop	word ptr cs:[rax + rax]
.label_96:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x70]
	mov	rdi, qword ptr [rax]
	nop	
	mov	rax, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + join_field_1]]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + join_field_2]]
	call	keycmp
	test	eax, eax
	lea	rsi, [rsi]
	js	.label_107
	mov	rbp, rbp
	jle	.label_109
	mov	rbp, rbp
	movzx	eax,  byte ptr [byte ptr [rip + print_unpairables_2]]
	lea	rdi, [rdi]
	and	eax, 1
	nop	
	cmp	eax, 1
	nop	
	jne	.label_111
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax]
	mov	edi, OFFSET FLAT:uni_blank
	call	prjoin
.label_111:
	mov	rsp, rsp
	mov	edx, 1
	mov	ecx, 2
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsi, rbp
	jmp	.label_115
	nop	word ptr cs:[rax + rax]
.label_107:
	movzx	eax,  byte ptr [byte ptr [rip + print_unpairables_1]]
	mov	rbp, rbp
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	jne	.label_108
	mov	rax, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax]
	mov	esi, OFFSET FLAT:uni_blank
	mov	rbp, rbp
	call	prjoin
.label_108:
	mov	rbp, rbp
	mov	edx, 1
	mov	rbp, rbp
	mov	ecx, 1
	mov	rdi, r12
	mov	rsi, r15
.label_115:
	nop	
	call	advance_seq
	mov	byte ptr [byte ptr [rip + seen_unpairable]],  1
.label_84:
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_99
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x48]
	test	rax, rax
	jne	.label_96
.label_99:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x40], 0
	cmp	dword ptr [dword ptr [rip + check_input_order]],  2
	jne	.label_98
	nop	
	xor	ebx, ebx
	jmp	.label_101
.label_98:
	lea	rdi, [rdi]
	cmp	byte ptr [byte ptr [rip + issued_disorder_warning]],  0
	sete	al
	mov	rsp, rsp
	cmp	byte ptr [byte ptr [rip + label_20]],  0
	nop	
	sete	bl
	mov	rbp, rbp
	or	bl, al
.label_101:
	cmp	qword ptr [rsp + 0x60], 0
	lea	rdi, [rdi]
	je	.label_85
	mov	al,  byte ptr [byte ptr [rip + print_unpairables_1]]
	mov	cl, bl
	mov	rsp, rsp
	or	cl, al
	xor	cl, 1
	test	cl, 1
	nop	
	jne	.label_85
	lea	rdi, [rdi]
	test	al, 1
	nop	
	je	.label_114
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x70]
	mov	rdi, qword ptr [rax]
	nop	
	mov	esi, OFFSET FLAT:uni_blank
	nop	
	call	prjoin
.label_114:
	nop	
	cmp	qword ptr [rsp + 0x48], 0
	je	.label_79
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + seen_unpairable]],  1
.label_79:
	nop	
	lea	rsi, [rsp + 0x40]
	lea	rsi, [rsi]
	mov	edx, 1
	mov	rdi, r12
	lea	rsi, [rsi]
	call	get_line
	test	al, al
	lea	rdi, [rdi]
	je	.label_85
	lea	rdi, [rdi]
	lea	r15, [rsp + 0x40]
	nop	dword ptr [rax]
.label_103:
	movzx	eax,  byte ptr [byte ptr [rip + print_unpairables_1]]
	mov	rsp, rsp
	and	eax, 1
	nop	
	cmp	eax, 1
	nop	
	jne	.label_88
	nop	
	mov	rdi, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:uni_blank
	mov	rbp, rbp
	call	prjoin
.label_88:
	cmp	byte ptr [byte ptr [rip + issued_disorder_warning]],  0
	je	.label_95
	movzx	eax,  byte ptr [byte ptr [rip + print_unpairables_1]]
	mov	rsp, rsp
	and	eax, 1
	cmp	eax, 1
	jne	.label_85
.label_95:
	lea	rdi, [rdi]
	mov	edx, 1
	mov	rdi, r12
	mov	rsi, r15
	lea	rsi, [rsi]
	call	get_line
	test	al, al
	mov	rbp, rbp
	jne	.label_103
.label_85:
	nop	
	cmp	qword ptr [rsp + 0x48], 0
	lea	rsi, [rsi]
	je	.label_81
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + print_unpairables_2]]
	mov	rsp, rsp
	or	bl, al
	xor	bl, 1
	test	bl, 1
	lea	rsi, [rsi]
	jne	.label_81
	test	al, 1
	lea	rdi, [rdi]
	je	.label_113
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	nop	
	mov	edi, OFFSET FLAT:uni_blank
	call	prjoin
.label_113:
	cmp	qword ptr [rsp + 0x60], 0
	mov	rbp, rbp
	je	.label_116
	mov	byte ptr [byte ptr [rip + seen_unpairable]],  1
.label_116:
	lea	rsi, [rsp + 0x40]
	mov	edx, 2
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	call	get_line
	test	al, al
	je	.label_81
	lea	rsi, [rsi]
	lea	rbx, [rsp + 0x40]
.label_91:
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + print_unpairables_2]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_82
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:uni_blank
	call	prjoin
.label_82:
	mov	rsp, rsp
	cmp	byte ptr [byte ptr [rip + label_20]],  0
	mov	rbp, rbp
	je	.label_89
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + print_unpairables_2]]
	and	eax, 1
	nop	
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_81
.label_89:
	mov	edx, 2
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	get_line
	test	al, al
	jne	.label_91
.label_81:
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdi, rbx
	nop	
	call	freeline
	mov	rdi, rbx
	call	free
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x60]
	mov	rbp, rbp
	call	delseq
	lea	rdi, [rsp + 0x48]
	lea	rsi, [rsi]
	call	delseq
	lea	rdi, [rdi]
	add	rsp, 0x78
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ff0

	.globl freeline
	.type freeline, @function
freeline:
	nop	
	push	rbx
	mov	rsp, rsp
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_117
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x28]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x10], 0
.label_117:
	mov	rbp, rbp
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403030

	.globl decode_field_spec
	.type decode_field_spec, @function
decode_field_spec:
	push	r14
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	nop	
	movsx	eax, byte ptr [rbx]
	lea	ecx, [rax - 0x31]
	lea	rsi, [rsi]
	cmp	ecx, 2
	jae	.label_120
	nop	
	movzx	eax, byte ptr [rbx + 1]
	mov	rbp, rbp
	cmp	eax, 0x2e
	lea	rdi, [rdi]
	jne	.label_118
	movsx	eax, byte ptr [rbx]
	add	eax, -0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsi], eax
	add	rbx, 2
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	string_to_join_field
	lea	rsi, [rsi]
	jmp	.label_121
.label_120:
	nop	
	cmp	eax, 0x30
	mov	rbp, rbp
	jne	.label_122
	cmp	byte ptr [rbx + 1], 0
	lea	rdi, [rdi]
	jne	.label_118
	mov	dword ptr [rsi], 0
	lea	rdi, [rdi]
	xor	eax, eax
.label_121:
	mov	qword ptr [r14], rax
	add	rsp, 8
	nop	
	pop	rbx
	mov	rbp, rbp
	pop	r14
	ret	
.label_122:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.56
	jmp	.label_119
.label_118:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.55
.label_119:
	nop	
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rdi, [rdi]
	mov	r14, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	edi, 1
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4030f0

	.globl add_field
	.type add_field, @function
add_field:
	push	rbp
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	rbx, rsi
	mov	rbp, rbp
	mov	ebp, edi
	nop	
	cmp	ebp, 2
	je	.label_123
	mov	rsp, rsp
	mov	eax, ebp
	or	eax, 1
	cmp	eax, 1
	nop	
	jne	.label_125
.label_123:
	test	ebp, ebp
	jne	.label_124
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_126
.label_124:
	mov	edi, 0x18
	call	xmalloc
	mov	dword ptr [rax], ebp
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rbx
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x10], 0
	mov	rcx,  qword ptr [word ptr [rip + outlist_end]]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x10], rax
	mov	qword ptr [word ptr [rip + outlist_end]],  rax
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	rbp
	ret	
.label_125:
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.57
	mov	esi, OFFSET FLAT:.str.58
	lea	rsi, [rsi]
	mov	edx, 0x333
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.add_field
	call	__assert_fail
.label_126:
	mov	edi, OFFSET FLAT:.str.59
	mov	esi, OFFSET FLAT:.str.58
	nop	
	mov	edx, 0x334
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.add_field
	lea	rsi, [rsi]
	call	__assert_fail
	nop	
	.section	.text
	.align	16
	#Procedure 0x4031a0

	.globl initseq
	.type initseq, @function
initseq:
	mov	rbp, rbp
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi], xmm0
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x10], 0
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4031c0

	.globl getseq
	.type getseq, @function
getseq:
	nop	
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	r14d, edx
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rax, qword ptr [rbx]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_127
	nop	
	lea	r15, [rbx + 8]
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	edx, 8
	mov	rsi, r15
	mov	rbp, rbp
	call	x2nrealloc
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x10], rax
	nop	
	mov	rax, qword ptr [rbx]
	cmp	rax, qword ptr [rbx + 8]
	mov	rsp, rsp
	jae	.label_127
	mov	rcx, qword ptr [r15]
	nop	dword ptr [rax]
.label_128:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rdx + rax*8], 0
	lea	rdi, [rdi]
	inc	rax
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rsi, [rsi]
	jb	.label_128
.label_127:
	mov	rsi, qword ptr [rbx]
	lea	rsi, [rsi]
	shl	rsi, 3
	mov	rsp, rsp
	add	rsi, qword ptr [rbx + 0x10]
	mov	rdi, rbp
	mov	rbp, rbp
	mov	edx, r14d
	lea	rdi, [rdi]
	call	get_line
	mov	rsp, rsp
	test	al, al
	je	.label_129
	inc	qword ptr [rbx]
	mov	rsp, rsp
	mov	al, 1
	jmp	.label_130
.label_129:
	xor	eax, eax
.label_130:
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032a0

	.globl prjoin
	.type prjoin, @function
prjoin:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	rsp, rsp
	mov	r14, rsi
	nop	
	mov	r13, rdi
	mov	rbx,  qword ptr [word ptr [rip + label_131]]
	test	rbx, rbx
	je	.label_132
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [rip + tab]]
	mov	ecx, OFFSET FLAT:uni_blank
	nop	
	cmp	r13, rcx
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:join_field_2
	mov	r12d, OFFSET FLAT:join_field_1
	cmove	r12, rcx
	mov	r15, r13
	cmove	r15, r14
	test	eax, eax
	movsx	eax, al
	mov	ebp, 0x20
	cmovns	ebp, eax
	lea	rsi, [rsi]
	jmp	.label_135
	nop	dword ptr [rax + rax]
.label_134:
	lea	rsi, [rsi]
	mov	edi, ebp
	call	putchar_unlocked
.label_135:
	nop	
	mov	eax, dword ptr [rbx]
	cmp	eax, 1
	lea	rsi, [rsi]
	mov	rsi, r14
	lea	rsi, [rsi]
	cmove	rsi, r13
	lea	rcx, [rbx + 8]
	test	eax, eax
	mov	rsp, rsp
	cmove	rcx, r12
	nop	
	cmove	rsi, r15
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rcx]
	call	prfield
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_134
	jmp	.label_133
.label_132:
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:uni_blank
	cmp	r13, rax
	nop	
	mov	rsi, r13
	cmove	rsi, r14
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:join_field_2
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:join_field_1
	mov	rsp, rsp
	cmove	rcx, rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rcx]
	mov	rbp, rbp
	call	prfield
	mov	rsi,  qword ptr [word ptr [rip + join_field_1]]
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + autocount_1]]
	mov	rdi, r13
	mov	rbp, rbp
	call	prfields
	nop	
	mov	rsi,  qword ptr [word ptr [rip + join_field_2]]
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + autocount_2]]
	mov	rdi, r14
	lea	rsi, [rsi]
	call	prfields
.label_133:
	mov	al,  byte ptr [byte ptr [rip + eolchar]]
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	and	al, 1
	mov	edi, 0xa
	mov	rbp, rbp
	cmovne	edi, ecx
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	nop	
	pop	rbp
	jmp	putchar_unlocked
	nop	
	.section	.text
	.align	16
	#Procedure 0x403400

	.globl advance_seq
	.type advance_seq, @function
advance_seq:
	test	dl, dl
	mov	rbp, rbp
	je	.label_136
	mov	qword ptr [rsi], 0
.label_136:
	mov	edx, ecx
	jmp	getseq
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403420

	.globl keycmp
	.type keycmp, @function
keycmp:
	push	r14
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	rax, rdi
	nop	
	xor	edi, edi
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x18], rdx
	nop	
	mov	r14d, 0
	nop	
	jbe	.label_137
	mov	rax, qword ptr [rax + 0x28]
	mov	rbp, rbp
	shl	rdx, 4
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + rdx]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rax + rdx + 8]
.label_137:
	xor	r8d, r8d
	mov	rbp, rbp
	cmp	qword ptr [rsi + 0x18], rcx
	mov	ebx, 0
	mov	rbp, rbp
	jbe	.label_142
	mov	rax, qword ptr [rsi + 0x28]
	shl	rcx, 4
	nop	
	mov	r8, qword ptr [rax + rcx]
	mov	rbx, qword ptr [rax + rcx + 8]
.label_142:
	mov	rsp, rsp
	test	r14, r14
	je	.label_141
	mov	eax, 1
	mov	rbp, rbp
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_139
	movzx	eax,  byte ptr [byte ptr [rip + ignore_case]]
	and	eax, 1
	cmp	eax, 1
	nop	
	jne	.label_143
	lea	rsi, [rsi]
	cmp	r14, rbx
	lea	rsi, [rsi]
	mov	rdx, rbx
	lea	rdi, [rdi]
	cmovb	rdx, r14
	mov	rsi, r8
	call	memcasecmp
	jmp	.label_138
.label_141:
	nop	
	neg	rbx
	nop	
	sbb	eax, eax
	jmp	.label_139
.label_143:
	mov	rsp, rsp
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	je	.label_140
	mov	rsp, rsp
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, r8
	mov	rsp, rsp
	mov	rcx, rbx
	lea	rsi, [rsi]
	add	rsp, 8
	nop	
	pop	rbx
	pop	r14
	jmp	xmemcoll
.label_140:
	cmp	r14, rbx
	mov	rdx, rbx
	cmovb	rdx, r14
	mov	rsp, rsp
	mov	rsi, r8
	lea	rsi, [rsi]
	call	memcmp
.label_138:
	mov	rsp, rsp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_139
	cmp	r14, rbx
	setne	al
	mov	rbp, rbp
	movzx	ecx, al
	nop	
	mov	eax, 0xffffffff
	cmovae	eax, ecx
.label_139:
	lea	rdi, [rdi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403550

	.globl get_line
	.type get_line, @function
get_line:
	push	rbp
	push	r15
	nop	
	push	r14
	push	rbx
	push	rax
	mov	r14d, edx
	mov	r15, rdi
	mov	rsp, rsp
	mov	rbx, qword ptr [rsi]
	movsxd	rax, r14d
	mov	rbp, rbp
	cmp	rbx,  qword ptr [word ptr [+ (rax * 8) + label_147]]
	mov	rbp, rbp
	lea	rbp, [rax - 1]
	lea	rsi, [rsi]
	jne	.label_148
	mov	rax,  qword ptr [word ptr [+ (rbp * 8) + spareline]]
	mov	qword ptr [word ptr [+ (rbp * 8) + spareline]],  rbx
	mov	qword ptr [rsi], rax
	mov	rbx, rax
.label_148:
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_149
	mov	rdi, rbx
	call	reset_line
	jmp	.label_150
.label_149:
	nop	
	mov	rdi, rsi
	lea	rdi, [rdi]
	call	init_linep
	nop	
	mov	rbx, rax
.label_150:
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + eolchar]]
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	jne	.label_153
	lea	rsi, [rsi]
	mov	al, 0xa
	lea	rdi, [rdi]
	jmp	.label_145
.label_153:
	lea	rdi, [rdi]
	xor	eax, eax
.label_145:
	mov	rbp, rbp
	movzx	edx, al
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rsi, r15
	call	readlinebuffer_delim
	mov	rbp, rbp
	test	rax, rax
	je	.label_152
	inc	qword ptr [word ptr [+ (rbp * 8) + line_no]]
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rsp, rsp
	call	xfields
	nop	
	mov	rdi,  qword ptr [word ptr [+ (rbp * 8) + prevline]]
	test	rdi, rdi
	je	.label_146
	mov	rsp, rsp
	mov	rsi, rbx
	mov	edx, r14d
	mov	rsp, rsp
	call	check_order
.label_146:
	nop	
	mov	qword ptr [word ptr [+ (rbp * 8) + prevline]],  rbx
	mov	rsp, rsp
	mov	al, 1
	jmp	.label_151
.label_152:
	lea	rsi, [rsi]
	mov	rdi, r15
	call	ferror_unlocked
	mov	rbp, rbp
	test	eax, eax
	jne	.label_144
	mov	rsp, rsp
	mov	rdi, rbx
	nop	
	call	freeline
	xor	eax, eax
.label_151:
	add	rsp, 8
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
.label_144:
	call	__errno_location
	nop	
	mov	ebx, dword ptr [rax]
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.61
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	nop	
	xor	eax, eax
	mov	esi, ebx
	nop	
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4036b0

	.globl delseq
	.type delseq, @function
delseq:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rsp, rsp
	xor	ebx, ebx
	cmp	qword ptr [r14 + 8], 0
	lea	rdi, [rdi]
	je	.label_154
	nop	word ptr cs:[rax + rax]
.label_155:
	mov	rax, qword ptr [r14 + 0x10]
	nop	
	mov	rdi, qword ptr [rax + rbx*8]
	lea	rsi, [rsi]
	call	freeline
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [rax + rbx*8]
	mov	rbp, rbp
	call	free
	nop	
	inc	rbx
	cmp	rbx, qword ptr [r14 + 8]
	mov	rbp, rbp
	jb	.label_155
.label_154:
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403720

	.globl prfield
	.type prfield, @function
prfield:
	cmp	qword ptr [rsi + 0x18], rdi
	mov	rbp, rbp
	jbe	.label_156
	nop	
	mov	rax, qword ptr [rsi + 0x28]
	shl	rdi, 4
	mov	rdx, qword ptr [rax + rdi + 8]
	test	rdx, rdx
	je	.label_158
	mov	rdi, qword ptr [rax + rdi]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rbp, rbp
	jmp	fwrite_unlocked
.label_156:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + empty_filler]]
	test	rdi, rdi
	je	.label_157
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	jmp	fputs_unlocked
.label_158:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + empty_filler]]
	nop	
	test	rdi, rdi
	je	.label_157
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	jmp	fputs_unlocked
.label_157:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4037a0

	.globl prfields
	.type prfields, @function
prfields:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	r15, rdi
	mov	al,  byte ptr [byte ptr [rip + autoformat]]
	mov	rbp, rbp
	and	al, 1
	lea	rsi, [rsi]
	jne	.label_159
	mov	rbp, rbp
	mov	r14, qword ptr [r15 + 0x18]
.label_159:
	nop	
	mov	eax,  dword ptr [dword ptr [rip + tab]]
	mov	rbp, rbp
	test	eax, eax
	mov	r13b, 0x20
	js	.label_163
	mov	rbp, rbp
	mov	r13b, al
.label_163:
	test	rbx, rbx
	je	.label_162
	mov	rbp, rbp
	test	r14, r14
	je	.label_162
	lea	rdi, [rdi]
	movsx	r12d, r13b
	lea	rsi, [rsi]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_161:
	mov	rsp, rsp
	mov	edi, r12d
	lea	rsi, [rsi]
	call	putchar_unlocked
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rsi, r15
	call	prfield
	lea	rsi, [rsi]
	inc	rbp
	cmp	rbp, rbx
	jae	.label_162
	cmp	rbp, r14
	jb	.label_161
.label_162:
	inc	rbx
	cmp	rbx, r14
	jae	.label_164
	nop	
	movsx	ebp, r13b
	nop	dword ptr [rax]
.label_160:
	lea	rsi, [rsi]
	mov	edi, ebp
	call	putchar_unlocked
	mov	rdi, rbx
	mov	rsi, r15
	call	prfield
	mov	rbp, rbp
	inc	rbx
	cmp	r14, rbx
	lea	rdi, [rdi]
	jne	.label_160
.label_164:
	nop	
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403890

	.globl reset_line
	.type reset_line, @function
reset_line:
	mov	qword ptr [rdi + 0x18], 0
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4038a0

	.globl init_linep
	.type init_linep, @function
init_linep:
	lea	rsi, [rsi]
	push	rbx
	nop	
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, 0x30
	mov	rbp, rbp
	call	xcalloc
	lea	rdi, [rdi]
	mov	qword ptr [rbx], rax
	pop	rbx
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038d0

	.globl xfields
	.type xfields, @function
xfields:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	nop	
	push	rax
	mov	r14, rdi
	lea	rsi, [rsi]
	mov	r13, qword ptr [r14 + 8]
	mov	rsp, rsp
	mov	rbp, qword ptr [r14 + 0x10]
	nop	
	lea	r15, [rbp + r13 - 1]
	lea	rdi, [rdi]
	cmp	rbp, r15
	je	.label_173
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [rip + tab]]
	test	eax, eax
	lea	rsi, [rsi]
	js	.label_165
	lea	rsi, [rsi]
	cmp	eax, 0xa
	jne	.label_170
.label_165:
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	jns	.label_172
	lea	rbx, [r13 - 1]
	mov	r12, rbp
	nop	word ptr cs:[rax + rax]
.label_171:
	movzx	edi, byte ptr [r12]
	call	field_sep
	nop	
	test	al, al
	mov	rbp, rbp
	je	.label_167
	inc	r12
	dec	rbx
	jne	.label_171
.label_173:
	mov	rsp, rsp
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
.label_177:
	mov	rsp, rsp
	mov	rdx, rbx
	mov	rsp, rsp
	sub	rdx, rbp
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, rbp
	call	extract_field
	nop	
	mov	rbp, rbx
	nop	
	inc	rbp
.label_170:
	mov	rsp, rsp
	mov	esi,  dword ptr [dword ptr [rip + tab]]
	mov	rbp, rbp
	mov	rdx, r15
	lea	rdi, [rdi]
	sub	rdx, rbp
	mov	rdi, rbp
	call	memchr
	mov	rbx, rax
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_177
.label_172:
	lea	rdi, [rdi]
	sub	r15, rbp
	mov	rdi, r14
	mov	rsi, rbp
	nop	
	mov	rdx, r15
.label_168:
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	nop	
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	nop	
	pop	rbp
	mov	rbp, rbp
	jmp	extract_field
.label_167:
	add	rbp, r13
.label_174:
	lea	rdx, [r12 + 2]
	lea	rcx, [r12 + 3]
	nop	dword ptr [rax + rax]
.label_175:
	mov	rbp, rbp
	mov	r13, rdx
	mov	rbx, rcx
	nop	
	cmp	rbp, r13
	lea	rdi, [rdi]
	je	.label_176
	nop	
	movzx	edi, byte ptr [r13 - 1]
	lea	rsi, [rsi]
	call	field_sep
	lea	rdi, [rdi]
	lea	rdx, [r13 + 1]
	lea	rcx, [rbx + 1]
	lea	rsi, [rsi]
	test	al, al
	je	.label_175
	add	rdx, -2
	lea	rdi, [rdi]
	sub	rdx, r12
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r12
	mov	rbp, rbp
	call	extract_field
	lea	rdi, [rdi]
	cmp	rbp, r13
	mov	rbp, rbp
	je	.label_173
	nop	word ptr cs:[rax + rax]
.label_166:
	lea	rsi, [rsi]
	mov	r13, rbx
	mov	rbp, rbp
	cmp	rbp, r13
	mov	rbp, rbp
	je	.label_169
	mov	rbp, rbp
	movzx	edi, byte ptr [r13 - 1]
	lea	rsi, [rsi]
	call	field_sep
	lea	rbx, [r13 + 1]
	test	al, al
	jne	.label_166
.label_169:
	lea	rsi, [rsi]
	lea	r12, [r13 - 1]
	lea	rsi, [rsi]
	cmp	rbp, r13
	mov	rbp, rbp
	jne	.label_174
	lea	rsi, [rsi]
	dec	r13
	mov	rsp, rsp
	mov	rbp, r13
	jmp	.label_172
.label_176:
	dec	r13
	lea	rsi, [rsi]
	sub	r13, r12
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r12
	mov	rsp, rsp
	mov	rdx, r13
	jmp	.label_168
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403af0

	.globl check_order
	.type check_order, @function
check_order:
	push	rbp
	nop	
	push	r15
	nop	
	push	r14
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	rbp, rbp
	mov	rbx, rsi
	mov	eax,  dword ptr [dword ptr [rip + check_input_order]]
	nop	
	cmp	eax, 1
	je	.label_180
	cmp	eax, 2
	je	.label_179
	movzx	eax,  byte ptr [byte ptr [rip + seen_unpairable]]
	and	eax, 1
	nop	
	cmp	eax, 1
	jne	.label_179
.label_180:
	mov	rbp, rbp
	movsxd	r14, edx
	cmp	byte ptr [byte ptr [r14 + seen_unpairable]],  0
	jne	.label_179
	mov	rsp, rsp
	cmp	edx, 1
	mov	eax, OFFSET FLAT:join_field_1
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:join_field_2
	cmove	rcx, rax
	mov	rdx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	rsi, rbx
	lea	rdi, [rdi]
	mov	rcx, rdx
	call	keycmp
	test	eax, eax
	jle	.label_179
	mov	rax, qword ptr [rbx + 8]
	xor	r15d, r15d
	nop	
	test	rax, rax
	je	.label_181
	mov	rcx, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rcx + rax - 1]
	mov	rbp, rbp
	cmp	ecx, 0xa
	nop	
	jne	.label_182
	mov	rsp, rsp
	dec	rax
.label_182:
	mov	r15, rax
.label_181:
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + check_input_order]],  1
	sete	bpl
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.62
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rbp
	mov	rdx, rax
	mov	rsp, rsp
	cmp	r15, 0x7fffffff
	lea	rdi, [rdi]
	movzx	edi, bpl
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [+ (r14 * 8) + ignore_case]]
	lea	rsi, [rsi]
	mov	r8,  qword ptr [word ptr [+ (r14 * 8) + label_178]]
	lea	rsi, [rsi]
	mov	r9d, 0x7fffffff
	mov	rbp, rbp
	cmovbe	r9d, r15d
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	esi, 0
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	call	error
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [r14 + seen_unpairable]],  1
.label_179:
	lea	rdi, [rdi]
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	nop	
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403c40

	.globl extract_field
	.type extract_field, @function
extract_field:
	lea	rdi, [rdi]
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	rbx
	mov	rsp, rsp
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	r15, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x18]
	nop	
	cmp	rax, qword ptr [rbx + 0x20]
	nop	
	jb	.label_183
	mov	rsp, rsp
	lea	rsi, [rbx + 0x20]
	nop	
	mov	rdi, qword ptr [rbx + 0x28]
	mov	edx, 0x10
	lea	rdi, [rdi]
	call	x2nrealloc
	mov	qword ptr [rbx + 0x28], rax
.label_183:
	mov	rax, qword ptr [rbx + 0x18]
	mov	rcx, qword ptr [rbx + 0x28]
	mov	rbp, rbp
	shl	rax, 4
	mov	rsp, rsp
	mov	qword ptr [rcx + rax], r15
	mov	rax, qword ptr [rbx + 0x18]
	mov	rcx, qword ptr [rbx + 0x28]
	mov	rbp, rbp
	shl	rax, 4
	nop	
	mov	qword ptr [rcx + rax + 8], r14
	mov	rsp, rsp
	inc	qword ptr [rbx + 0x18]
	mov	rsp, rsp
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x403cc0

	.globl field_sep
	.type field_sep, @function
field_sep:
	lea	rdi, [rdi]
	push	rbx
	mov	ebx, edi
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	cmp	ebx, 0xa
	sete	cl
	mov	al, byte ptr [rax + rbx*2]
	lea	rsi, [rsi]
	and	al, 1
	or	al, cl
	pop	rbx
	mov	rbp, rbp
	ret	
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403cf0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + file_name]],  rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x403d00
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d10

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
	je	.label_185
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_184
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	jne	.label_184
.label_185:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_187
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	rbp
	ret	
.label_184:
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
	jne	.label_186
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
.label_187:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_186:
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
	.align	16
	#Procedure 0x403e10

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e20

	.globl fadvise
	.type fadvise, @function
fadvise:
	lea	rdi, [rdi]
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_188
	call	fileno
	mov	rsp, rsp
	xor	esi, esi
	xor	edx, edx
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_188:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e50

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	lea	rdi, [rdi]
	push	rbp
	push	r14
	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rsp, rsp
	call	fopen
	lea	rsi, [rsi]
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_189
	mov	rsp, rsp
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_190
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	call	dup_safer
	mov	rsp, rsp
	mov	ebp, eax
	test	ebp, ebp
	js	.label_192
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fclose
	mov	rbp, rbp
	test	eax, eax
	jne	.label_191
	mov	rsp, rsp
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r14
	call	fdopen
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_189
.label_191:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbx], r14d
	mov	rbp, rbp
	jmp	.label_193
.label_190:
	mov	rax, rbx
	mov	rsp, rsp
	jmp	.label_189
.label_192:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_193:
	xor	eax, eax
.label_189:
	mov	rbp, rbp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403f30

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
	je	.label_195
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_194
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_196
.label_194:
	nop	
	mov	esi, OFFSET FLAT:.str.1_1
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_195
.label_196:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_195:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x403f80
	.globl initbuffer
	.type initbuffer, @function
initbuffer:

	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [rdi], xmm0
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x10], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fa0
	.globl readlinebuffer
	.type readlinebuffer, @function
readlinebuffer:

	mov	edx, 0xa
	jmp	readlinebuffer_delim
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fb0

	.globl readlinebuffer_delim
	.type readlinebuffer_delim, @function
readlinebuffer_delim:
	push	rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x18
	mov	ebp, edx
	mov	rbp, rbp
	mov	r15, rsi
	nop	
	mov	r14, rdi
	nop	
	mov	r12, qword ptr [r14 + 0x10]
	mov	rdi, r15
	mov	rsp, rsp
	call	feof_unlocked
	nop	
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rcx
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	jne	.label_200
	lea	rdi, [rdi]
	mov	r13, qword ptr [r14]
	add	r13, r12
	movsx	ecx, bpl
	mov	dword ptr [rsp + 0x14], ecx
	mov	rsp, rsp
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	movzx	eax, cl
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 4], eax
	mov	rbx, r12
	nop	
.label_199:
	nop	
	mov	rdi, r15
	mov	rbp, rbp
	call	getc_unlocked
	mov	ebp, eax
	nop	
	cmp	ebp, -1
	lea	rsi, [rsi]
	jne	.label_198
	lea	rsi, [rsi]
	cmp	rbx, r12
	je	.label_200
	mov	rdi, r15
	call	ferror_unlocked
	test	eax, eax
	nop	
	jne	.label_200
	nop	
	movzx	eax, byte ptr [rbx - 1]
	nop	
	cmp	eax, dword ptr [rsp + 4]
	mov	ebp, dword ptr [rsp + 0x14]
	lea	rdi, [rdi]
	je	.label_197
.label_198:
	mov	rbp, rbp
	cmp	rbx, r13
	jne	.label_201
	mov	rsp, rsp
	mov	rbx, qword ptr [r14]
	mov	rdi, r12
	mov	rsi, r14
	mov	rsp, rsp
	call	x2realloc
	mov	rbp, rbp
	mov	r12, rax
	add	rbx, r12
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x10], r12
	mov	r13, r12
	add	r13, qword ptr [r14]
.label_201:
	mov	byte ptr [rbx], bpl
	nop	
	inc	rbx
	cmp	ebp, dword ptr [rsp + 0x14]
	jne	.label_199
.label_197:
	lea	rsi, [rsi]
	sub	rbx, r12
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 8], rbx
	mov	qword ptr [rsp + 8], r14
.label_200:
	mov	rax, qword ptr [rsp + 8]
	add	rsp, 0x18
	pop	rbx
	nop	
	pop	r12
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040d0
	.globl freebuffer
	.type freebuffer, @function
freebuffer:

	nop
	mov	rdi, qword ptr [rdi + 0x10]
	jmp	free
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040e0

	.globl memcasecmp
	.type memcasecmp, @function
memcasecmp:
	mov	rsp, rsp
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdx
	mov	r14, rsi
	mov	rbp, rbp
	mov	r15, rdi
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_202
	mov	rbp, rbp
	call	__ctype_toupper_loc
	mov	rsp, rsp
	mov	rcx, qword ptr [rax]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_203:
	movzx	eax, byte ptr [r15 + rdx]
	mov	eax, dword ptr [rcx + rax*4]
	lea	rdi, [rdi]
	movzx	esi, byte ptr [r14 + rdx]
	lea	rdi, [rdi]
	sub	eax, dword ptr [rcx + rsi*4]
	lea	rsi, [rsi]
	jne	.label_202
	lea	rsi, [rsi]
	inc	rdx
	xor	eax, eax
	mov	rsp, rsp
	cmp	rdx, rbx
	lea	rsi, [rsi]
	jb	.label_203
.label_202:
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404160

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
	je	.label_204
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
	jl	.label_206
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_206
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
	jne	.label_205
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_205:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_206:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_204:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	esi, 0x37
	lea	rsi, [rsi]
	mov	edx, 1
	call	fwrite
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404250
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
	.align	16
	#Procedure 0x4042a0
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
	.align	16
	#Procedure 0x4042c0
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
	.align	16
	#Procedure 0x4042e0

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
	.align	16
	#Procedure 0x404350
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
	.align	16
	#Procedure 0x404370

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
	je	.label_207
	test	rdx, rdx
	nop	
	je	.label_207
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_207:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4043b0
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
	.align	16
	#Procedure 0x404450

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
.label_305:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rsi, [rsi]
	mov	ecx, r13d
	lea	rdi, [rdi]
	cmp	r13d, 0xa
	ja	.label_282
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	rsp, rsp
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_293]]
.label_531:
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
	mov	edi, OFFSET FLAT:.str.12
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
.label_532:
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
	jne	.label_208
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rsp, rsp
	je	.label_208
	mov	rsp, rsp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_235:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_276
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rsi], al
.label_276:
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
	jne	.label_235
.label_208:
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
	jmp	.label_250
.label_524:
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
	jmp	.label_250
.label_527:
	mov	rsp, rsp
	mov	al, 1
.label_525:
	mov	r15b, 1
.label_528:
	test	r15b, 1
	mov	rsp, rsp
	mov	cl, 1
	je	.label_271
	mov	cl, al
.label_271:
	lea	rdi, [rdi]
	mov	al, cl
.label_526:
	mov	r14d, 2
	mov	rsp, rsp
	test	r15b, 1
	mov	rsp, rsp
	jne	.label_274
	test	r10, r10
	je	.label_280
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	lea	rdi, [rdi]
	jmp	.label_283
.label_274:
	xor	ecx, ecx
	jmp	.label_283
.label_529:
	mov	r14d, 5
	mov	rsp, rsp
	test	r15b, 1
	jne	.label_295
	test	r10, r10
	je	.label_247
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	lea	rsi, [rsi]
	jmp	.label_212
.label_530:
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
	jmp	.label_250
.label_280:
	nop	
	mov	ecx, 1
	nop	dword ptr [rax]
.label_283:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], rcx
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	mov	rbp, rbp
	jmp	.label_250
.label_295:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_212
.label_247:
	mov	rbp, rbp
	mov	eax, 1
.label_212:
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
.label_250:
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
	jmp	.label_294
	nop	word ptr [rax + rax]
.label_266:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	lea	rsi, [rsi]
	sar	r15b, 7
	and	r15b, r8b
	lea	rdi, [rdi]
	mov	r8b, r15b
	nop	
	inc	rsi
.label_294:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_288
	cmp	rsi, rbp
	jne	.label_290
	jmp	.label_291
	nop	word ptr cs:[rax + rax]
.label_288:
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + rsi], 0
	nop	
	je	.label_291
.label_290:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_299
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_303
	mov	rsp, rsp
	cmp	rbp, -1
	lea	rdi, [rdi]
	jne	.label_303
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
.label_303:
	lea	rsi, [rsi]
	cmp	rbx, rbp
	jbe	.label_329
.label_299:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xec], 0
.label_259:
	mov	rsp, rsp
	movzx	r13d, byte ptr [r9 + rsi]
	mov	rsp, rsp
	cmp	r13, 0x7e
	nop	
	ja	.label_216
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	r15b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	bl, 0x61
	nop	
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_223]]
.label_566:
	test	rsi, rsi
	jne	.label_233
	jmp	.label_234
	nop	word ptr [rax + rax]
.label_329:
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
	jne	.label_254
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
	je	.label_259
	mov	rsp, rsp
	jmp	.label_238
.label_254:
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
	jmp	.label_259
.label_570:
	xor	eax, eax
	cmp	rbp, -1
	lea	rsi, [rsi]
	je	.label_261
	test	rsi, rsi
	nop	
	jne	.label_228
	cmp	rbp, 1
	lea	rsi, [rsi]
	je	.label_234
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_213
.label_559:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_227
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xcf], 0
	nop	
	jne	.label_238
	cmp	edi, 2
	nop	
	jne	.label_328
	lea	rdi, [rdi]
	mov	al, r11b
	and	al, 1
	nop	
	jne	.label_302
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_307
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], 0x27
.label_307:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_319
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_319:
	nop	
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_264
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_264:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	rsp, rsp
	mov	r11b, 1
	nop	
	mov	rcx, rax
	jmp	.label_244
.label_560:
	mov	bl, 0x62
	lea	rsi, [rsi]
	jmp	.label_215
.label_561:
	mov	cl, 0x74
	jmp	.label_219
.label_562:
	mov	bl, 0x76
	lea	rdi, [rdi]
	jmp	.label_215
.label_563:
	mov	bl, 0x66
	jmp	.label_215
.label_564:
	nop	
	mov	cl, 0x72
	mov	rsp, rsp
	jmp	.label_219
.label_567:
	lea	rsi, [rsi]
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 2
	jne	.label_230
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_239
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
	jae	.label_242
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_242:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_260
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x5c
.label_260:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_267
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_267:
	nop	
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	mov	rbp, rbp
	jmp	.label_275
.label_568:
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 5
	mov	rsp, rsp
	je	.label_281
	cmp	r14d, 2
	lea	rdi, [rdi]
	jne	.label_289
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_239
.label_289:
	mov	rdi, r14
	jmp	.label_233
.label_569:
	mov	r14, rdi
	nop	
	cmp	r14d, 2
	mov	rsp, rsp
	jne	.label_297
	nop	
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_239
	mov	rdi, r14
	jmp	.label_306
.label_216:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	lea	rsi, [rsi]
	jne	.label_309
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
.label_256:
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
	ja	.label_225
	test	dl, dl
	mov	rsp, rsp
	je	.label_225
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_213
.label_261:
	test	rsi, rsi
	jne	.label_231
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_231
.label_234:
	mov	rbp, rbp
	mov	dl, 1
.label_565:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_238
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r15b, dl
	mov	rbp, rbp
	jmp	.label_213
.label_227:
	cmp	dword ptr [rsp + 0x5c], 0
	mov	rbp, rbp
	je	.label_233
	lea	rsi, [rsi]
	mov	r14, rdi
	inc	rsi
	jmp	.label_294
.label_230:
	mov	rdi, r14
.label_275:
	xor	eax, eax
	nop	
	mov	r15b, 1
	lea	rdi, [rdi]
	jmp	.label_213
.label_297:
	mov	rdi, r14
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x6a], 0
	nop	
	mov	cl, r13b
	nop	
	je	.label_219
.label_306:
	lea	rsi, [rsi]
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_236
.label_219:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xa7], 0
	lea	rsi, [rsi]
	mov	bl, cl
	nop	
	je	.label_238
.label_215:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_213
	lea	rsi, [rsi]
	jmp	.label_258
.label_309:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_292
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
.label_292:
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
.label_246:
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
	je	.label_311
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
	je	.label_316
	cmp	rbp, -2
	nop	
	je	.label_327
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_322
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	lea	rsi, [rsi]
	mov	ecx, 1
.label_229:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	mov	rsp, rsp
	cmp	edx, 0x21
	lea	rsi, [rsi]
	ja	.label_301
	mov	rbp, rbp
	bt	rsi, rdx
	jb	.label_226
.label_301:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jb	.label_229
.label_322:
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_220
	xor	r15d, r15d
.label_220:
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
	je	.label_246
	jmp	.label_256
.label_231:
	mov	rbp, -1
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_213
.label_281:
	mov	rdi, r14
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x58], 0
	lea	rdi, [rdi]
	je	.label_233
	lea	rcx, [rsi + 2]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jae	.label_233
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_233
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	mov	rsp, rsp
	cmp	edx, 0x3e
	ja	.label_268
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	nop	
	bt	rsi, rdx
	lea	rdi, [rdi]
	jae	.label_224
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_238
	lea	rsi, [rsi]
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_296
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_296:
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, r10
	jae	.label_221
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 0x22
.label_221:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_286
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x22
.label_286:
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
	jmp	.label_213
.label_233:
	xor	eax, eax
	mov	rsp, rsp
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_213:
	test	r12b, r12b
	je	.label_209
	cmp	qword ptr [rsp + 0x140], 0
	nop	
	jne	.label_211
	jmp	.label_214
	nop	word ptr cs:[rax + rax]
.label_209:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xb7], 0
	lea	rdi, [rdi]
	je	.label_214
.label_211:
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
	jne	.label_222
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_236
	jmp	.label_258
	nop	word ptr cs:[rax + rax]
.label_214:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_258
	jmp	.label_236
.label_222:
	mov	bl, r13b
	mov	rsi, r14
.label_258:
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_238
	mov	rsp, rsp
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_255
	nop	
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_255
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_317
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_317:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_263
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x24
.label_263:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_272
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_272:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_255:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_285
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_285:
	lea	rdi, [rdi]
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_232
.label_228:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_213
.label_225:
	mov	rsp, rsp
	add	rcx, rsi
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_262
	nop	word ptr cs:[rax + rax]
.label_245:
	mov	rbp, rbp
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_262:
	mov	rbp, rbp
	test	dl, dl
	mov	rbp, rbp
	je	.label_315
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	lea	rdi, [rdi]
	je	.label_318
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_323
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	lea	rsi, [rsi]
	mov	rsi, rbx
.label_323:
	nop	
	inc	qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xec], 0
	mov	rsp, rsp
	jmp	.label_318
	nop	dword ptr [rax]
.label_315:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_239
	cmp	r14d, 2
	jne	.label_325
	mov	rsp, rsp
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_325
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_273
	mov	rax, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	byte ptr [rax + rdx], 0x27
.label_273:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_241
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_241:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	nop	
	lea	rax, [rax + 2]
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_251
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_251:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_325:
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_257
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_257:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rdi, [rdi]
	inc	rax
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_304
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
.label_304:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_277
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
.label_277:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	rsp, rsp
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_318:
	mov	rsp, rsp
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_236
	test	r11b, 1
	lea	rdi, [rdi]
	je	.label_308
	mov	bl, al
	lea	rdi, [rdi]
	and	bl, 1
	mov	r14, rdi
	jne	.label_310
	lea	rsi, [rsi]
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_314
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_314:
	mov	rsi, qword ptr [rsp + 0xf0]
	nop	
	inc	rsi
	cmp	rsi, r10
	nop	
	jae	.label_324
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rdi + rsi], 0x27
.label_324:
	add	qword ptr [rsp + 0xf0], 2
	mov	rbp, rbp
	xor	r11d, r11d
	mov	rsi, rbx
	lea	rdi, [rdi]
	jmp	.label_310
	nop	word ptr cs:[rax + rax]
.label_308:
	lea	rsi, [rsi]
	mov	r14, rdi
.label_310:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_245
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rsi + rbx], r13b
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	jmp	.label_245
	nop	word ptr cs:[rax + rax]
.label_236:
	lea	rsi, [rsi]
	test	r11b, 1
	je	.label_240
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_240
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_253
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rax + rcx], 0x27
.label_253:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_249
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_249:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 2
	lea	rdi, [rdi]
	xor	r11d, r11d
	nop	
	mov	bl, r13b
	lea	rsi, [rsi]
	jmp	.label_232
	nop	word ptr cs:[rax + rax]
.label_240:
	lea	rsi, [rsi]
	mov	bl, r13b
	mov	r14, rdi
.label_232:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_266
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], bl
	lea	rdi, [rdi]
	jmp	.label_266
.label_328:
	nop	
	mov	rcx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	jmp	.label_244
.label_302:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_244:
	cmp	rcx, r10
	jae	.label_278
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_278:
	lea	rsi, [rsi]
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	lea	rsi, [rsi]
	mov	r13b, 0x30
	cmp	edi, 2
	lea	rsi, [rsi]
	je	.label_287
	lea	rdx, [rsi + 1]
	lea	rsi, [rsi]
	cmp	rdx, rbp
	jae	.label_243
	nop	
	mov	dl, byte ptr [r9 + rdx]
	mov	rbp, rbp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	mov	rbp, rbp
	cmp	edx, 9
	mov	rsp, rsp
	ja	.label_300
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_312
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	nop	
	mov	rsi, rbx
.label_312:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_321
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsp, rsp
	mov	rsi, rbx
.label_321:
	mov	rsp, rsp
	add	rcx, 3
	xor	r15d, r15d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rdi, [rdi]
	jmp	.label_213
.label_287:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_213
.label_243:
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_213
.label_300:
	xor	r15d, r15d
	jmp	.label_213
.label_311:
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_218
.label_316:
	xor	r15d, r15d
	nop	
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	jmp	.label_313
.label_327:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	jae	.label_237
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_248:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	byte ptr [rax + rbx], 0
	nop	
	je	.label_270
	lea	rax, [rsi + rbx + 1]
	lea	rsi, [rsi]
	inc	rbx
	cmp	rax, rbp
	jb	.label_248
	xor	r15d, r15d
	nop	
	jmp	.label_218
.label_237:
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_313:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_218:
	mov	byte ptr [rsp + 0xa6], r8b
	lea	rdi, [rdi]
	jmp	.label_256
.label_270:
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_218
.label_268:
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_213
.label_224:
	mov	rsp, rsp
	xor	r15d, r15d
	nop	
	mov	rsi, rbx
	jmp	.label_213
	nop	word ptr cs:[rax + rax]
.label_291:
	cmp	qword ptr [rsp + 0xf0], 0
	mov	rbp, rbp
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	and	cl, 1
	je	.label_269
	lea	rdi, [rdi]
	or	dl, al
	lea	rdi, [rdi]
	je	.label_239
.label_269:
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
	je	.label_284
	lea	rdi, [rdi]
	or	dl, al
	jne	.label_284
	lea	rdi, [rdi]
	test	r8b, 1
	jne	.label_298
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_284
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
	je	.label_305
.label_284:
	nop	
	mov	rdx, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	test	rdx, rdx
	je	.label_320
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_320
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_320
	inc	rdx
	nop	dword ptr [rax + rax]
.label_210:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_326
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_326:
	nop	
	inc	qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	inc	rdx
	test	al, al
	jne	.label_210
.label_320:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_217
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_217
.label_238:
	lea	rdi, [rdi]
	mov	rdx, r9
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_265:
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
.label_279:
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_217:
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
.label_226:
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_265
.label_239:
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rbp, rbp
	jmp	.label_265
.label_298:
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
	jmp	.label_279
.label_282:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ba0
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
	.align	16
	#Procedure 0x405bc0

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
	je	.label_330
	mov	qword ptr [rax], rbx
.label_330:
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
	.align	16
	#Procedure 0x405d10
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_331
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_335:
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
	jl	.label_335
.label_331:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_334
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_333]], OFFSET FLAT:slot0
.label_334:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_332
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_332:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405dd0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x405de0

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
	js	.label_341
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_340
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_337
.label_340:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_342
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
	jne	.label_338
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_338:
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
.label_337:
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
	ja	.label_336
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
	je	.label_339
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_339:
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
.label_336:
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
.label_341:
	lea	rdi, [rdi]
	call	abort
.label_342:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x406050

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406060
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
	.align	16
	#Procedure 0x406080
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
	.align	16
	#Procedure 0x4060a0

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
	.align	16
	#Procedure 0x406100

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
	je	.label_343
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
.label_343:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406170

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
	.align	16
	#Procedure 0x4061d0

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
	.align	16
	#Procedure 0x4061f0
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
	.align	16
	#Procedure 0x406210

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
	mov	rcx,  qword ptr [word ptr [rip + label_344]]
	mov	qword ptr [rsp + 0x30], rcx
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_345]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_346]]
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
	.align	16
	#Procedure 0x4062b0

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
	.align	16
	#Procedure 0x4062d0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	mov	esi, 0x3a
	mov	rbp, rbp
	jmp	quotearg_char
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4062e0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4062f0

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
	.align	16
	#Procedure 0x406360

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	lea	rsi, [rsi]
	mov	r8, -1
	nop	
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406370

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
	mov	rax,  qword ptr [word ptr [rip + label_344]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_345]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_346]]
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
	.align	16
	#Procedure 0x406400
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
	.align	16
	#Procedure 0x406430
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
	.align	16
	#Procedure 0x406460

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406470
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
	.align	16
	#Procedure 0x406490

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4064a0

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
	.align	16
	#Procedure 0x4064b0

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
	jne	.label_347
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
	je	.label_348
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	ecx, 0x60
	je	.label_347
	nop	
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_347
.label_348:
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
	je	.label_349
	nop	
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x60
	lea	rdi, [rdi]
	je	.label_347
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_347
.label_349:
	cmp	r14d, 9
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12
	lea	rsi, [rsi]
	cmove	rax, rcx
.label_347:
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
	.align	16
	#Procedure 0x4065e0

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
	je	.label_351
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	lea	rdi, [rdi]
	je	.label_350
	jmp	.label_352
.label_351:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rdi, [rdi]
	jne	.label_352
.label_350:
	mov	rsp, rsp
	mov	eax, 1
	test	bpl, bpl
	mov	rsp, rsp
	je	.label_352
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
.label_352:
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
	.align	16
	#Procedure 0x4066a0

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
	je	.label_355
	nop	
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	nop	
	je	.label_354
	lea	rsi, [rsi]
	jmp	.label_353
.label_355:
	lea	rsi, [rsi]
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_353
.label_354:
	lea	rdi, [rdi]
	mov	eax, 1
	test	bpl, bpl
	lea	rdi, [rdi]
	je	.label_353
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
.label_353:
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
	.align	16
	#Procedure 0x406790

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
	je	.label_358
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_357
	jmp	.label_356
.label_358:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	movzx	edx, bpl
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_356
.label_357:
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_356
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
.label_356:
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
	.align	16
	#Procedure 0x406860

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
	je	.label_361
	lea	rsi, [rsi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_360
	jmp	.label_359
.label_361:
	xor	eax, eax
	mov	rsp, rsp
	movzx	edx, bpl
	movzx	ecx, cl
	nop	
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_359
.label_360:
	lea	rsi, [rsi]
	mov	eax, 1
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_359
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
.label_359:
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
	.align	16
	#Procedure 0x406900

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
	je	.label_364
	lea	rdi, [rdi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	mov	rsp, rsp
	je	.label_363
	nop	
	jmp	.label_362
.label_364:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_362
.label_363:
	mov	eax, 1
	test	bpl, bpl
	je	.label_362
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
.label_362:
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
	.align	16
	#Procedure 0x4069a0

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
	je	.label_367
	mov	rsp, rsp
	and	ecx, 0xffffffdf
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ecx, ebp
	lea	rsi, [rsi]
	je	.label_366
	lea	rsi, [rsi]
	jmp	.label_365
.label_367:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	nop	
	jne	.label_365
.label_366:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	test	bpl, bpl
	nop	
	je	.label_365
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
.label_365:
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a30

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
	je	.label_370
	and	ecx, 0xffffffdf
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_369
	jmp	.label_368
.label_370:
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_368
.label_369:
	mov	eax, 1
	nop	
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_368
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_368:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406aa0

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
	je	.label_371
	mov	eax, 1
	mov	rsp, rsp
	test	ecx, 0xffffffdf
	lea	rdi, [rdi]
	jne	.label_373
	mov	rbp, rbp
	jmp	.label_372
.label_371:
	mov	eax, 1
	lea	rsi, [rsi]
	test	cl, cl
	je	.label_372
.label_373:
	xor	eax, eax
.label_372:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406af0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 3
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	rpl_fcntl
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x406b10

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
	je	.label_378
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_4
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_377
.label_378:
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
.label_377:
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
	ja	.label_380
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_381]]
.label_515:
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
.label_380:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_383
.label_516:
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
.label_517:
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
.label_518:
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
	jmp	.label_375
.label_519:
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
	jmp	.label_374
.label_520:
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
	jmp	.label_382
.label_521:
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
.label_382:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_374:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_375:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_379
.label_523:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_0
.label_383:
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
	jmp	.label_376
.label_522:
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
.label_376:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_379:
	mov	rbp, rbp
	call	__fprintf_chk
.label_514:
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
	.align	16
	#Procedure 0x406f00
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_384:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_384
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f30

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_388:
	nop	
	movsxd	r10, dword ptr [r8]
	lea	rdi, [rdi]
	cmp	r10, 0x28
	ja	.label_385
	mov	r11, r10
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	rbp, rbp
	mov	dword ptr [r8], eax
	mov	rsp, rsp
	jmp	.label_387
	nop	word ptr cs:[rax + rax]
.label_385:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_387:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_386
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_388
.label_386:
	lea	rdi, [rdi]
	lea	r8, [rsp]
	mov	rsp, rsp
	call	version_etc_arn
	add	rsp, 0x58
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406fc0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	nop	
	je	.label_389
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
.label_389:
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
	.align	16
	#Procedure 0x407070
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
	.align	16
	#Procedure 0x407100
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
	jb	.label_390
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_390:
	nop	
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407140

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_391
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_392
.label_391:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_392:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407170
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
	jb	.label_393
	imul	rcx, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	jmp	xrealloc
.label_393:
	push	rax
	mov	rsp, rsp
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4071b0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_394
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_394
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_394:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_395
	test	rax, rax
	nop	
	je	.label_396
.label_395:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_396:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407200

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	nop	
	mov	r8, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_397
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_398
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_399
.label_397:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_400
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_400:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_401
.label_399:
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
.label_398:
	call	xalloc_die
.label_401:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4072a0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	jmp	xmalloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4072b0

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	mov	edx, 1
	mov	rsp, rsp
	jmp	x2nrealloc
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4072c0
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
	.align	16
	#Procedure 0x407300

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
	jb	.label_402
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_402
	pop	rcx
	ret	
.label_402:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x407330

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
	.align	16
	#Procedure 0x407380
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
	.align	16
	#Procedure 0x4073a0

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
	.align	16
	#Procedure 0x4073f0

	.globl xmemcoll
	.type xmemcoll, @function
xmemcoll:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	nop	
	push	r14
	mov	rbp, rbp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rsp, rsp
	mov	r14, rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	rbp, rbp
	mov	rbx, rdi
	call	memcoll
	mov	ebp, eax
	lea	rsi, [rsi]
	call	__errno_location
	mov	edi, dword ptr [rax]
	test	edi, edi
	lea	rsi, [rsi]
	je	.label_403
	lea	rsi, [rsi]
	mov	rsi, rbx
	lea	rdi, [rdi]
	mov	rdx, r12
	mov	rsp, rsp
	mov	rcx, r15
	mov	r8, r14
	lea	rsi, [rsi]
	call	collate_error
.label_403:
	mov	eax, ebp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407460

	.globl collate_error
	.type collate_error, @function
collate_error:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	push	r15
	lea	rsi, [rsi]
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	qword ptr [rsp], r8
	mov	rsp, rsp
	mov	rbx, rcx
	mov	r12, rdx
	mov	rbp, rbp
	mov	r13, rsi
	mov	ebp, edi
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str_5
	mov	rsp, rsp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, ebp
	mov	rdx, rcx
	call	error
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rbp, rbp
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	nop	
	call	error
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.2_2
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	nop	
	mov	r15, rax
	xor	edi, edi
	mov	esi, 8
	mov	rsp, rsp
	mov	rdx, r13
	mov	rsp, rsp
	mov	rcx, r12
	call	quotearg_n_style_mem
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 8
	mov	rsp, rsp
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp]
	call	quotearg_n_style_mem
	mov	rbx, rax
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	edi, r14d
	mov	rdx, r15
	mov	rcx, rbp
	mov	rsp, rsp
	mov	r8, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	jmp	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407590
	.globl xmemcoll0
	.type xmemcoll0, @function
xmemcoll0:

	mov	rsp, rsp
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r12
	push	rbx
	mov	rsp, rsp
	mov	r15, rcx
	lea	rsi, [rsi]
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	rbx, rsi
	lea	rdi, [rdi]
	mov	r12, rdi
	lea	rsi, [rsi]
	call	memcoll0
	mov	ebp, eax
	lea	rsi, [rsi]
	call	__errno_location
	mov	edi, dword ptr [rax]
	test	edi, edi
	nop	
	je	.label_404
	dec	rbx
	mov	rbp, rbp
	dec	r15
	lea	rdi, [rdi]
	mov	rsi, r12
	mov	rdx, rbx
	mov	rsp, rsp
	mov	rcx, r14
	mov	rsp, rsp
	mov	r8, r15
	nop	
	call	collate_error
.label_404:
	mov	eax, ebp
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x407610

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
	push	rbp
	push	r15
	nop	
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	lea	rsi, [rsi]
	mov	r13, r8
	nop	
	mov	r14d, edx
	mov	rbp, rsi
	mov	rsp, rsp
	mov	rbx, rdi
	cmp	r14d, 0x25
	lea	rsi, [rsi]
	jae	.label_410
	mov	rsp, rsp
	mov	qword ptr [rsp], rcx
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	r12, rax
	mov	rbp, rbp
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	
.label_427:
	mov	rbp, rbp
	movzx	eax, byte ptr [rdx]
	inc	rdx
	mov	rbp, rbp
	test	byte ptr [rcx + rax*2 + 1], 0x20
	lea	rdi, [rdi]
	jne	.label_427
	mov	rbp, rbp
	test	rbp, rbp
	lea	rdi, [rdi]
	lea	rcx, [rsp + 0x10]
	lea	rsi, [rsi]
	cmovne	rcx, rbp
	movzx	eax, al
	mov	rsp, rsp
	mov	r15d, 4
	cmp	eax, 0x2d
	lea	rsi, [rsi]
	je	.label_406
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rcx
	mov	rsi, rbp
	mov	edx, r14d
	call	strtoul
	mov	rcx, rbp
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rcx]
	mov	rbp, rbp
	cmp	rax, rbx
	je	.label_422
	lea	rsi, [rsi]
	mov	eax, dword ptr [r12]
	lea	rsi, [rsi]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	lea	rsi, [rsi]
	je	.label_425
	cmp	eax, 0x22
	jne	.label_406
	mov	r12d, 1
.label_425:
	mov	rbp, rbp
	test	rbp, rbp
	mov	rsp, rsp
	jne	.label_419
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	jmp	.label_411
.label_422:
	lea	rdi, [rdi]
	mov	rbp, r13
	nop	
	test	rbp, rbp
	mov	rsp, rsp
	je	.label_406
	mov	rbx, rcx
	nop	
	movsx	esi, byte ptr [rax]
	mov	rbp, rbp
	test	esi, esi
	mov	rbp, rbp
	je	.label_406
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	nop	
	mov	rcx, rbx
	mov	rsp, rsp
	je	.label_406
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], 1
	nop	
	xor	r12d, r12d
.label_419:
	mov	rax, qword ptr [rcx]
	mov	rsp, rsp
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_415
	mov	rsp, rsp
	mov	r13, rcx
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_412
	lea	rsi, [rsi]
	mov	r15d, 0x400
	lea	rdi, [rdi]
	mov	r14d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	lea	rdi, [rdi]
	ja	.label_416
	nop	
	movabs	rax, 0x814400308945
	mov	rbp, rbp
	bt	rax, rbx
	jae	.label_420
	mov	esi, 0x30
	mov	rdi, rbp
	mov	rsp, rsp
	call	strchr
	mov	r14d, 1
	mov	rbx, r13
	nop	
	test	rax, rax
	nop	
	je	.label_414
	mov	rax, qword ptr [rbx]
	movsx	ecx, byte ptr [rax + 1]
	mov	r14d, 1
	mov	rbp, rbp
	cmp	ecx, 0x42
	lea	rsi, [rsi]
	je	.label_409
	cmp	ecx, 0x44
	je	.label_409
	cmp	ecx, 0x69
	lea	rdi, [rdi]
	jne	.label_414
	mov	rsp, rsp
	movzx	eax, byte ptr [rax + 2]
	mov	r14d, 3
	nop	
	cmp	eax, 0x42
	je	.label_414
	mov	r14d, 1
	jmp	.label_414
.label_409:
	mov	rbp, rbp
	mov	r15d, 0x3e8
	mov	r14d, 2
.label_414:
	mov	rax, qword ptr [rbx]
	nop	
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x59
	jg	.label_421
	mov	rsp, rsp
	lea	ecx, [rax - 0x42]
	cmp	ecx, 0xe
	ja	.label_424
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_418]]
.label_502:
	lea	rdi, [rsp + 8]
	mov	esi, 0x400
	jmp	.label_408
.label_421:
	cmp	eax, 0x73
	jg	.label_428
	nop	
	lea	ecx, [rax - 0x62]
	cmp	ecx, 0xb
	ja	.label_429
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_405]]
.label_593:
	mov	rbp, rbp
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	lea	rdi, [rdi]
	jmp	.label_408
.label_424:
	cmp	eax, 0x54
	je	.label_417
	lea	rdi, [rdi]
	cmp	eax, 0x59
	lea	rdi, [rdi]
	jne	.label_412
	mov	rbp, rbp
	lea	rdi, [rsp + 8]
	mov	edx, 8
	mov	rsp, rsp
	jmp	.label_407
.label_428:
	cmp	eax, 0x74
	nop	
	je	.label_417
	mov	rsp, rsp
	cmp	eax, 0x77
	jne	.label_412
	nop	
	lea	rdi, [rsp + 8]
	nop	
	mov	esi, 2
.label_408:
	lea	rsi, [rsi]
	call	bkm_scale
	lea	rdi, [rdi]
	jmp	.label_426
.label_504:
	lea	rdi, [rsp + 8]
	mov	edx, 3
	jmp	.label_407
.label_505:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	lea	rsi, [rsi]
	jmp	.label_407
.label_506:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 2
	jmp	.label_407
.label_417:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	edx, 4
	nop	
	jmp	.label_407
.label_429:
	lea	rdi, [rdi]
	cmp	eax, 0x5a
	jne	.label_412
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	edx, 7
	jmp	.label_407
.label_412:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	or	r12d, 2
	lea	rdi, [rdi]
	jmp	.label_423
.label_503:
	lea	rdi, [rsp + 8]
	lea	rsi, [rsi]
	mov	edx, 6
	lea	rsi, [rsi]
	jmp	.label_407
.label_507:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	mov	edx, 5
.label_407:
	nop	
	mov	esi, r15d
	call	bkm_scale_by_power
.label_426:
	nop	
	or	eax, r12d
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx]
	nop	
	lea	rdx, [rcx + r14]
	lea	rsi, [rsi]
	mov	qword ptr [rbx], rdx
	nop	
	cmp	byte ptr [rcx + r14], 0
	je	.label_413
	nop	
	or	eax, 2
.label_413:
	mov	r12d, eax
.label_415:
	nop	
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rsp + 8]
.label_411:
	mov	qword ptr [rcx], rax
.label_423:
	lea	rsi, [rsi]
	mov	r15d, r12d
.label_406:
	mov	eax, r15d
	nop	
	add	rsp, 0x18
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
.label_416:
	mov	rbp, rbp
	mov	rbx, r13
	nop	
	jmp	.label_414
.label_420:
	mov	rbp, rbp
	mov	rbx, r13
	mov	rsp, rsp
	jmp	.label_414
.label_410:
	mov	edi, OFFSET FLAT:.str_6
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_6
	lea	rsi, [rsi]
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoul
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407a30

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	movsxd	rcx, esi
	mov	rsp, rsp
	mov	rsi, -1
	mov	rax, -1
	xor	edx, edx
	div	rcx
	mov	rdx, qword ptr [rdi]
	imul	rcx, rdx
	mov	rbp, rbp
	cmp	rax, rdx
	cmovb	rcx, rsi
	lea	rsi, [rsi]
	sbb	eax, eax
	and	eax, 1
	mov	rbp, rbp
	mov	qword ptr [rdi], rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407a70

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	nop	
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	mov	rbp, rbp
	mov	r14d, esi
	mov	rbp, rbp
	mov	r15, rdi
	mov	rsp, rsp
	xor	ebx, ebx
	mov	rbp, rbp
	test	ebp, ebp
	je	.label_430
	nop	word ptr cs:[rax + rax]
.label_431:
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	esi, r14d
	nop	
	call	bkm_scale
	lea	rdi, [rdi]
	or	ebx, eax
	dec	ebp
	lea	rdi, [rdi]
	jne	.label_431
.label_430:
	mov	rsp, rsp
	mov	eax, ebx
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ae0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_432
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_433
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
	je	.label_433
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
.label_432:
	mov	ecx, 1
.label_433:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b50

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
	js	.label_434
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_436
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
	je	.label_434
.label_436:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_434
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	lea	rsi, [rsi]
	test	ebp, ebp
	je	.label_435
	call	__errno_location
	mov	dword ptr [rax], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_435:
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_434:
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
	.align	16
	#Procedure 0x407c10

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xc8
	test	al, al
	mov	rbp, rbp
	je	.label_443
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
.label_443:
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
	ja	.label_446
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	lea	rsi, [rsi]
	jb	.label_445
	mov	rsp, rsp
	mov	eax, 0x514
	lea	rsi, [rsi]
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_437
	mov	rbp, rbp
	test	esi, esi
	jne	.label_446
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_448
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	mov	rbp, rbp
	lea	ecx, [rcx + 8]
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], ecx
	lea	rdi, [rdi]
	jmp	.label_441
.label_446:
	lea	eax, [rsi - 0x400]
	lea	rdi, [rdi]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_438
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_437
	lea	rdi, [rdi]
	mov	ecx, 0x102
	bt	ecx, eax
	mov	rbp, rbp
	jae	.label_442
.label_445:
	lea	rsi, [rsi]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_437:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_447
	mov	rax, rcx
	mov	rbp, rbp
	add	rax, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_449
.label_447:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_449:
	mov	edx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_442:
	nop	
	cmp	eax, 6
	jne	.label_438
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_440
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	lea	rsi, [rsi]
	jmp	.label_444
.label_438:
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_450
	mov	rbp, rbp
	mov	rax, rcx
	mov	rsp, rsp
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_439
.label_448:
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_441:
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	call	rpl_fcntl_DUPFD
	add	rsp, 0xc8
	lea	rsi, [rsi]
	ret	
.label_440:
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_444:
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xc8
	lea	rsi, [rsi]
	ret	
.label_450:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_439:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	rsp, rsp
	call	fcntl
	lea	rsi, [rsi]
	add	rsp, 0xc8
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407eb0

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
	.align	16
	#Procedure 0x407ed0

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
	js	.label_455
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
	jns	.label_452
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	nop	
	jne	.label_452
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_451
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_454
.label_452:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	mov	rbp, rbp
	jmp	.label_454
.label_455:
	mov	rbp, rbp
	mov	edi, ebp
	mov	rbp, rbp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_454:
	test	ebx, ebx
	js	.label_451
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_451
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_453
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
	jne	.label_451
.label_453:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	lea	rdi, [rdi]
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_451:
	lea	rdi, [rdi]
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407fe0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_456
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_456
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_456:
	mov	rsp, rsp
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	
	.section	.text
	.align	16
	#Procedure 0x408010

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	jne	.label_457
	mov	rbp, rbp
	ret	
.label_457:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, 1
	lea	rdi, [rdi]
	jmp	rpl_fseeko
	nop	
	.section	.text
	.align	16
	#Procedure 0x408030

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
	jne	.label_458
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_458
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_459
.label_458:
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
.label_459:
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
	je	.label_460
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_460:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4080e0

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
	je	.label_461
	nop	
	cmp	r15, -2
	jb	.label_461
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_461
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_461:
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
	.align	16
	#Procedure 0x408170
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
	#Procedure 0x4081a0
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
	#Procedure 0x4081c0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4081d0
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
	#Procedure 0x4081e0
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
	#Procedure 0x408200
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
	#Procedure 0x408210
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
	#Procedure 0x408220
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
	#Procedure 0x408230
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
	#Procedure 0x408240
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
	#Procedure 0x408270
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
	#Procedure 0x408290

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
	#Procedure 0x4082a0
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
	#Procedure 0x4082c0
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
	#Procedure 0x4082d0
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
	#Procedure 0x4082e0

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
	je	.label_472
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	test	eax, eax
	jne	.label_471
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	jmp	.label_471
.label_472:
	test	eax, eax
	mov	rbp, rbp
	sete	cl
	neg	eax
	nop	
	sbb	ebx, ebx
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_471
	test	cl, cl
	jne	.label_471
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	nop	
	cmove	ebx, ecx
.label_471:
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
	.align	16
	#Procedure 0x408380

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
	mov	eax, OFFSET FLAT:.str.1_7
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_473
	nop	
	mov	rax, rcx
.label_473:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4083c0

	.globl memcoll
	.type memcoll, @function
memcoll:
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	push	rax
	nop	
	mov	r15, rcx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	nop	
	cmp	rbx, r15
	mov	rbp, rbp
	jne	.label_474
	mov	rdi, r12
	nop	
	mov	rsi, r14
	mov	rdx, rbx
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_476
.label_474:
	mov	rsp, rsp
	mov	bpl, byte ptr [r12 + rbx]
	mov	r13b, byte ptr [r14 + r15]
	mov	byte ptr [r12 + rbx], 0
	mov	rsp, rsp
	mov	byte ptr [r14 + r15], 0
	lea	rsi, [rbx + 1]
	nop	
	lea	rcx, [r15 + 1]
	mov	rdi, r12
	lea	rdi, [rdi]
	mov	rdx, r14
	mov	rbp, rbp
	call	strcoll_loop
	nop	
	mov	byte ptr [r12 + rbx], bpl
	mov	byte ptr [r14 + r15], r13b
	lea	rsi, [rsi]
	jmp	.label_475
.label_476:
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_475:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408470

	.globl strcoll_loop
	.type strcoll_loop, @function
strcoll_loop:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	nop	
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	r14, rcx
	mov	r12, rdx
	lea	rsi, [rsi]
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	mov	r13, rax
	nop	word ptr cs:[rax + rax]
.label_478:
	mov	dword ptr [r13], 0
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, r12
	call	strcoll
	mov	rbp, rbp
	test	eax, eax
	nop	
	jne	.label_477
	mov	rdi, rbx
	call	strlen
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rbp, rbp
	inc	rbp
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rbp, rbp
	call	strlen
	inc	rax
	sub	r15, rbp
	mov	rsp, rsp
	je	.label_479
	mov	rbp, rbp
	add	r12, rax
	add	rbx, rbp
	mov	rsp, rsp
	sub	r14, rax
	mov	eax, 1
	jne	.label_478
	nop	
	jmp	.label_477
.label_479:
	lea	rsi, [rsi]
	xor	ecx, ecx
	cmp	r14, rax
	nop	
	mov	eax, 0xffffffff
	cmove	eax, ecx
.label_477:
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408540

	.globl memcoll0
	.type memcoll0, @function
memcoll0:
	push	r15
	push	r14
	nop	
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r15, rcx
	lea	rsi, [rsi]
	mov	r14, rdx
	nop	
	mov	rbx, rsi
	mov	r12, rdi
	nop	
	cmp	rbx, r15
	nop	
	jne	.label_480
	nop	
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, r14
	mov	rdx, rbx
	call	memcmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_481
.label_480:
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, rbx
	lea	rdi, [rdi]
	mov	rdx, r14
	mov	rsp, rsp
	mov	rcx, r15
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	pop	r12
	nop	
	pop	r14
	pop	r15
	jmp	strcoll_loop
.label_481:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
	lea	rdi, [rdi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section .text
	.align	16
	#Procedure 0x4085d0

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
