	.section	.text
	.align	32
	#Procedure 0x401740

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
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.39
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	call	__printf_chk
	mov	rbp, rbp
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	nop	
	je	.label_8
	mov	esi, OFFSET FLAT:.str.41
	mov	edx, 3
	lea	rsi, [rsi]
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	nop	
	je	.label_8
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	rsp, rsp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.11
	xor	eax, eax
	mov	rbp, rbp
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.11
	mov	ecx, OFFSET FLAT:.str.45
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	call	__printf_chk
	mov	edi, ebp
	nop	
	call	exit
.label_7:
	lea	rsi, [rsi]
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rdx, rax
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	rbp, rbp
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	lea	rsi, [rsi]
	call	exit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a60

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
	sub	rsp, 0x78
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	ebp, edi
	mov	dword ptr [rsp + 0x40], 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], 0
	mov	dword ptr [rsp + 0x44], 0
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
	mov	byte ptr [byte ptr [rip + label_44]],  0
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
	je	.label_99
	lea	rsi, [rsi]
	lea	r13, [rsp + 0x40]
	lea	r14, [rsp + 0x24]
	jmp	.label_101
.label_35:
	mov	rsp, rsp
	movzx	eax, al
	cmp	eax, 0x32
	lea	rsi, [rsi]
	sete	al
	movzx	eax, al
	inc	dword ptr [rsp + rax*4 + 0x68]
	mov	rsp, rsp
	inc	eax
	nop	
	mov	dword ptr [rsp + 0x24], eax
	jmp	.label_66
	nop	
.label_101:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x24], 0
	cmp	eax, 0x6e
	jg	.label_114
	lea	rsi, [rsi]
	cmp	eax, 0x30
	lea	rdi, [rdi]
	jle	.label_117
	lea	ecx, [rax - 0x61]
	cmp	ecx, 9
	ja	.label_121
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_41]]
.label_546:
	mov	r15, rbx
	mov	rbp, rbp
	mov	ebx, ebp
	mov	rdi,  qword ptr [word ptr [rip + empty_filler]]
	test	rdi, rdi
	je	.label_124
	nop	
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	mov	rsi, rbp
	mov	rbp, rbp
	call	strcmp
	nop	
	test	eax, eax
	je	.label_132
	mov	rsp, rsp
	jmp	.label_134
	nop	
.label_114:
	lea	rsi, [rsi]
	lea	ecx, [rax - 0x74]
	cmp	ecx, 0xe
	lea	rdi, [rdi]
	ja	.label_9
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_16]]
.label_573:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	nop	
	mov	dl, byte ptr [rax]
	mov	cl, 0xa
	mov	rsp, rsp
	test	dl, dl
	lea	rsi, [rsi]
	je	.label_20
	mov	cl, byte ptr [rax + 1]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_30
	lea	rsi, [rsi]
	movzx	edx, dl
	lea	rdi, [rdi]
	cmp	edx, 0x5c
	jne	.label_33
	movzx	ecx, cl
	mov	rbp, rbp
	cmp	ecx, 0x30
	jne	.label_33
	cmp	byte ptr [rax + 2], 0
	jne	.label_33
	mov	rsp, rsp
	xor	ecx, ecx
	nop	
	jmp	.label_20
	nop	word ptr [rax + rax]
.label_117:
	lea	rdi, [rdi]
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_52
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsp + 0x38]
	lea	rdx, [rsp + 0x68]
	mov	rbp, rbp
	lea	rcx, [rsp + 0x44]
	lea	rsi, [rsi]
	mov	r8, r13
	mov	r9, r14
	call	add_file_name
	mov	eax, dword ptr [rsp + 0x24]
	lea	rdi, [rdi]
	jmp	.label_66
.label_121:
	cmp	eax, 0x31
	lea	rsi, [rsi]
	je	.label_61
	cmp	eax, 0x32
	lea	rsi, [rsi]
	jne	.label_13
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	call	string_to_join_field
	lea	rsi, [rsi]
	mov	r15, rax
	mov	rbp, rbp
	jmp	.label_78
.label_9:
	nop	
	cmp	eax, 0x6f
	nop	
	jne	.label_13
	lea	rdi, [rdi]
	mov	r15, rbx
	lea	rdi, [rdi]
	mov	ebx, ebp
	lea	rsi, [rsi]
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	mov	esi, OFFSET FLAT:.str.18_0
	mov	rbp, rbp
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	strcmp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_91
	mov	rsp, rsp
	mov	rdi, rbp
	call	add_field_list
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x24], 3
	mov	eax, 3
	jmp	.label_97
.label_574:
	nop	
	mov	byte ptr [byte ptr [rip + print_pairables]],  0
.label_545:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_0
	lea	rcx, [rsp + 0x58]
	call	xstrtoul
	mov	rsp, rsp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_110
	mov	rax, qword ptr [rsp + 0x58]
	lea	rcx, [rax - 1]
	cmp	rcx, 2
	lea	rdi, [rdi]
	jae	.label_110
	mov	rsp, rsp
	cmp	rax, 1
	mov	rbp, rbp
	jne	.label_118
	mov	byte ptr [byte ptr [rip + print_unpairables_1]],  1
	nop	
	jmp	.label_12
.label_575:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + eolchar]],  1
	lea	rdi, [rdi]
	jmp	.label_12
.label_576:
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + check_input_order]],  1
	mov	rsp, rsp
	jmp	.label_12
.label_577:
	mov	dword ptr [dword ptr [rip + check_input_order]],  2
	jmp	.label_12
.label_578:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + join_header_lines]],  1
	jmp	.label_12
.label_118:
	mov	byte ptr [byte ptr [rip + print_unpairables_2]],  1
	jmp	.label_12
.label_547:
	mov	byte ptr [byte ptr [rip + ignore_case]],  1
	jmp	.label_12
.label_548:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	al, byte ptr [rdi]
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	add	cl, 0xcf
	movzx	ecx, cl
	mov	rbp, rbp
	cmp	ecx, 1
	ja	.label_23
	mov	rbp, rbp
	cmp	byte ptr [rdi + 1], 0
	jne	.label_23
	movsxd	rcx,  dword ptr [dword ptr [rip + optind]]
	mov	rcx, qword ptr [rbx + rcx*8 - 8]
	lea	rdi, [rdi]
	add	rcx, 2
	lea	rsi, [rsi]
	cmp	rdi, rcx
	je	.label_35
.label_23:
	nop	
	call	string_to_join_field
	lea	rsi, [rsi]
	mov	r15, rax
	mov	rbp, rbp
	mov	r12,  qword ptr [word ptr [rip + join_field_1]]
	cmp	r12, -1
	je	.label_45
	cmp	r12, r15
	jne	.label_53
.label_45:
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + join_field_1]],  r15
.label_78:
	mov	r12,  qword ptr [word ptr [rip + join_field_2]]
	cmp	r12, -1
	mov	rbp, rbp
	je	.label_59
	cmp	r12, r15
	jne	.label_53
.label_59:
	mov	qword ptr [word ptr [rip + join_field_2]],  r15
	lea	rsi, [rsi]
	jmp	.label_12
.label_61:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	call	string_to_join_field
	nop	
	mov	r15, rax
	mov	r12,  qword ptr [word ptr [rip + join_field_1]]
	lea	rdi, [rdi]
	cmp	r12, -1
	je	.label_70
	lea	rsi, [rsi]
	cmp	r12, r15
	jne	.label_53
.label_70:
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + join_field_1]],  r15
	jmp	.label_12
.label_91:
	mov	byte ptr [byte ptr [rip + autoformat]],  1
	mov	rsp, rsp
	jmp	.label_129
.label_124:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
.label_132:
	nop	
	mov	qword ptr [word ptr [rip + empty_filler]],  rbp
.label_129:
	xor	eax, eax
.label_97:
	mov	ebp, ebx
	lea	rdi, [rdi]
	mov	rbx, r15
	lea	rsi, [rsi]
	jmp	.label_66
.label_30:
	mov	rbp, rbp
	mov	cl, dl
.label_20:
	mov	rsp, rsp
	mov	edx,  dword ptr [dword ptr [rip + tab]]
	test	edx, edx
	movzx	eax, cl
	mov	rsp, rsp
	js	.label_89
	cmp	edx, eax
	jne	.label_93
.label_89:
	mov	dword ptr [dword ptr [rip + tab]],  eax
	nop	word ptr [rax + rax]
.label_12:
	lea	rsi, [rsi]
	xor	eax, eax
.label_66:
	mov	dword ptr [rsp + 0x40], eax
	nop	
	mov	edx, OFFSET FLAT:.str.15
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	rbp, rbp
	mov	edi, ebp
	mov	rbp, rbp
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	getopt_long
	cmp	eax, -1
	mov	rsp, rsp
	jne	.label_101
.label_99:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x40], 0
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	nop	
	cmp	eax, ebp
	jge	.label_111
	nop	
	lea	r12, [rsp + 0x68]
	lea	r14, [rsp + 0x44]
	lea	r15, [rsp + 0x40]
	lea	r13, [rsp + 0x24]
	nop	word ptr cs:[rax + rax]
.label_128:
	lea	ecx, [rax + 1]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	lea	rdi, [rdi]
	cdqe	
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + rax*8]
	lea	rsi, [rsp + 0x38]
	mov	rdx, r12
	mov	rcx, r14
	mov	rsp, rsp
	mov	r8, r15
	mov	rsp, rsp
	mov	r9, r13
	lea	rdi, [rdi]
	call	add_file_name
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, ebp
	jl	.label_128
.label_111:
	mov	eax, dword ptr [rsp + 0x44]
	lea	rsi, [rsi]
	cmp	eax, 2
	lea	rsi, [rsi]
	jne	.label_10
	cmp	dword ptr [rsp + 0x68], 0
	nop	
	je	.label_18
	mov	rbx,  qword ptr [word ptr [rip + join_field_1]]
	mov	ebp, 1
	nop	
	lea	rax, [rbx + 1]
	mov	rsp, rsp
	cmp	rax, 2
	jae	.label_22
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + join_field_1]],  0
	mov	ebx, 1
	mov	rbp,  qword ptr [word ptr [rip + join_field_2]]
	lea	rax, [rbp + 1]
	lea	rsi, [rsi]
	cmp	rax, 2
	lea	rsi, [rsi]
	jae	.label_31
	mov	qword ptr [word ptr [rip + join_field_2]],  0
.label_18:
	cmp	dword ptr [rsp + 0x6c], 0
	mov	rsp, rsp
	mov	rbx,  qword ptr [word ptr [rip + join_field_1]]
	lea	rdi, [rdi]
	je	.label_48
	mov	rsp, rsp
	mov	ebp, 2
	lea	rsi, [rsi]
	cmp	rbx, 1
	je	.label_57
	cmp	rbx, -1
	mov	rbp, rbp
	jne	.label_22
.label_57:
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + join_field_1]],  1
	nop	
	mov	ebx, 2
	mov	rbp,  qword ptr [word ptr [rip + join_field_2]]
	cmp	rbp, 1
	je	.label_63
	cmp	rbp, -1
	jne	.label_31
.label_63:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + join_field_2]],  1
	nop	
	jmp	.label_71
.label_48:
	lea	rdi, [rdi]
	cmp	rbx, -1
	lea	rsi, [rsi]
	jne	.label_105
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + join_field_1]],  0
.label_105:
	mov	rsp, rsp
	cmp	qword ptr [word ptr [rip + join_field_2]],  -1
	nop	
	jne	.label_71
	mov	qword ptr [word ptr [rip + join_field_2]],  0
.label_71:
	mov	rdi,  qword ptr [word ptr [rip + g_names]]
	movzx	eax, byte ptr [rdi]
	mov	rbp, rbp
	cmp	eax, 0x2d
	mov	rsp, rsp
	jne	.label_83
	cmp	byte ptr [rdi + 1], 0
	je	.label_80
.label_83:
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.27
	lea	rsi, [rsi]
	call	fopen_safer
	lea	rsi, [rsi]
	mov	rbp, rax
	jmp	.label_94
.label_80:
	mov	rbp,  qword ptr [word ptr [rip + stdin]]
.label_94:
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rbp
	mov	rbp, rbp
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_92
	mov	rdi,  qword ptr [word ptr [rip + label_79]]
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x2d
	lea	rsi, [rsi]
	jne	.label_104
	cmp	byte ptr [rdi + 1], 0
	je	.label_108
.label_104:
	nop	
	mov	esi, OFFSET FLAT:.str.27
	nop	
	call	fopen_safer
	lea	rdi, [rdi]
	mov	r13, rax
	mov	rbp, rbp
	jmp	.label_113
.label_108:
	mov	r13,  qword ptr [word ptr [rip + stdin]]
.label_113:
	mov	qword ptr [rsp + 0x60], r13
	mov	rbp, rbp
	test	r13, r13
	je	.label_115
	lea	rdi, [rdi]
	cmp	rbp, r13
	lea	rdi, [rdi]
	je	.label_120
	mov	esi, 2
	mov	rdi, rbp
	mov	rsp, rsp
	call	fadvise
	nop	
	mov	esi, 2
	lea	rsi, [rsi]
	mov	rdi, r13
	lea	rdi, [rdi]
	call	fadvise
	xor	edi, edi
	mov	esi, 0x80
	lea	rdi, [rdi]
	call	xrealloc
	mov	rbp, rbp
	mov	r12, rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x70], xmm0
	movups	xmmword ptr [r12 + 0x60], xmm0
	movups	xmmword ptr [r12 + 0x50], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [r12 + 0x40], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [r12 + 0x30], xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	movups	xmmword ptr [r12 + 0x10], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [r12], xmm0
	mov	edx, 1
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, r12
	call	get_line
	mov	bl, al
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 0x80
	nop	
	call	xrealloc
	mov	r14, rax
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [r14 + 0x70], xmm0
	nop	
	movups	xmmword ptr [r14 + 0x60], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [r14 + 0x50], xmm0
	movups	xmmword ptr [r14 + 0x40], xmm0
	movups	xmmword ptr [r14 + 0x30], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [r14 + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [r14 + 0x10], xmm0
	movups	xmmword ptr [r14], xmm0
	movzx	ebx, bl
	mov	edx, 2
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsi, r14
	call	get_line
	mov	rsp, rsp
	movzx	r15d, al
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + autoformat]]
	nop	
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	jne	.label_64
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_68
	mov	rsp, rsp
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x18]
.label_68:
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + autocount_1]],  rax
	lea	rdi, [rdi]
	xor	eax, eax
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_75
	mov	rax, qword ptr [r14]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x18]
.label_75:
	mov	qword ptr [word ptr [rip + autocount_2]],  rax
.label_64:
	movzx	eax,  byte ptr [byte ptr [rip + join_header_lines]]
	and	eax, 1
	cmp	eax, 1
	nop	
	jne	.label_36
	nop	
	test	rbx, rbx
	nop	
	je	.label_85
	mov	rdi, qword ptr [r12]
	nop	
	test	r15, r15
	lea	rsi, [rsi]
	jne	.label_87
	mov	esi, OFFSET FLAT:uni_blank
	call	prjoin
	xorps	xmm0, xmm0
	movaps	xmmword ptr [word ptr [rip + prevline]],  xmm0
	mov	edx, 1
	mov	rdi, rbp
	mov	rsi, r12
	call	get_line
	movzx	edx, al
	jmp	.label_100
.label_36:
	mov	rdx, rbx
	jmp	.label_100
.label_85:
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:uni_blank
	xor	edx, edx
	test	r15, r15
	je	.label_102
.label_87:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r14]
	call	prjoin
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [word ptr [rip + prevline]],  xmm0
	xor	eax, eax
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_106
	mov	edx, 1
	mov	rdi, rbp
	mov	rsi, r12
	mov	rbp, rbp
	call	get_line
	movzx	eax, al
.label_106:
	nop	
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	edx, 2
	mov	rdi, r13
	mov	rsi, r14
	call	get_line
	mov	rdx, rbx
	lea	rdi, [rdi]
	movzx	r15d, al
.label_100:
	mov	eax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], rax
	mov	rcx, rbp
	lea	rsi, [rsi]
	test	rdx, rdx
	lea	rdi, [rdi]
	je	.label_126
	mov	qword ptr [rsp + 8], rcx
	nop	
	mov	rbp, r15
	mov	eax, 0x10
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_130
	mov	qword ptr [rsp], rax
.label_131:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rdx
	nop	dword ptr [rax]
.label_84:
	mov	rdi, qword ptr [r12]
	mov	rsi, qword ptr [r14]
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [rip + join_field_1]]
	mov	rcx,  qword ptr [word ptr [rip + join_field_2]]
	mov	rsp, rsp
	call	keycmp
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	js	.label_28
	mov	qword ptr [rsp + 0x10], rbp
	lea	rdi, [rdi]
	jle	.label_32
	movzx	eax,  byte ptr [byte ptr [rip + print_unpairables_2]]
	mov	rsp, rsp
	and	eax, 1
	cmp	eax, 1
	jne	.label_37
	mov	rbp, rbp
	mov	rsi, qword ptr [r14]
	mov	edi, OFFSET FLAT:uni_blank
	nop	
	call	prjoin
.label_37:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x50], 0
	lea	rsi, [rsi]
	jne	.label_46
	test	r14, r14
	mov	rbp, rbp
	mov	ebp, 8
	mov	eax, 0x80
	mov	rbp, rbp
	cmove	rbp, rax
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, rbp
	lea	rsi, [rsi]
	call	xrealloc
	mov	rbx, rax
	test	r14, r14
	lea	rsi, [rsi]
	mov	qword ptr [rbx], 0
	mov	r14, rbx
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	jne	.label_46
	mov	rdi, rbx
	nop	
	add	rdi, 8
	mov	rsp, rsp
	add	rbp, -8
	mov	rsp, rsp
	xor	esi, esi
	mov	rsp, rsp
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	memset
	mov	r14, rbx
	nop	
	mov	eax, 0x10
	nop	
	mov	qword ptr [rsp + 0x50], rax
	nop	dword ptr [rax]
.label_46:
	mov	edx, 2
	lea	rdi, [rdi]
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rsi, r14
	call	get_line
	lea	rdi, [rdi]
	movzx	ebp, al
	mov	byte ptr [byte ptr [rip + seen_unpairable]],  1
	test	bpl, bpl
	jne	.label_84
	lea	rdi, [rdi]
	jmp	.label_90
	nop	word ptr cs:[rax + rax]
.label_28:
	mov	rbp, rbp
	movzx	eax,  byte ptr [byte ptr [rip + print_unpairables_1]]
	mov	rsp, rsp
	and	eax, 1
	nop	
	cmp	eax, 1
	jne	.label_95
	mov	rbp, rbp
	mov	rdi, qword ptr [r12]
	nop	
	mov	esi, OFFSET FLAT:uni_blank
	mov	rsp, rsp
	call	prjoin
.label_95:
	mov	rax, qword ptr [rsp]
	mov	r15, r14
	nop	
	test	rax, rax
	mov	rbp, rbp
	jne	.label_55
	mov	esi, 8
	mov	rdi, r12
	call	xrealloc
	nop	
	mov	r12, rax
	mov	qword ptr [r12], 0
	mov	eax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rax
.label_55:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 8]
	mov	edx, 1
	mov	rbp, rbp
	mov	rsi, r12
	mov	rbx, rdi
	mov	rsp, rsp
	call	get_line
	mov	rsp, rsp
	movzx	edx, al
	mov	rcx, rbx
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + seen_unpairable]],  1
	jmp	.label_49
	nop	word ptr cs:[rax + rax]
.label_32:
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x30]
	nop	
	mov	rbx, rcx
	lea	rdi, [rdi]
	movabs	rax, 0x1fffffffffffffff
	xor	rbx, rax
	inc	rbx
	lea	rbp, [rcx*8 + 8]
	nop	word ptr [rax + rax]
.label_51:
	mov	qword ptr [rsp + 0x48], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jne	.label_40
	mov	qword ptr [rsp + 0x30], r14
	movabs	rcx, 0xaaaaaaaaaaaaaaa
	cmp	rax, rcx
	jae	.label_24
	lea	rdi, [rdi]
	mov	r15, rax
	shr	r15, 1
	lea	r13, [rax + r15 + 1]
	lea	rsi, [r13*8]
	mov	rsp, rsp
	mov	rdi, r12
	mov	r14, rax
	call	xrealloc
	nop	
	mov	r12, rax
	nop	
	cmp	r14, r13
	jae	.label_42
	lea	rsi, [rsi]
	lea	rax, [r14 + 1]
	mov	qword ptr [r12 + r14*8], 0
	lea	rsi, [rsi]
	cmp	rax, r13
	lea	rsi, [rsi]
	jae	.label_42
	mov	rbp, rbp
	add	r14, r15
	mov	rsp, rsp
	add	r14, rbx
	shl	r14, 3
	lea	rsi, [rsi]
	mov	rdi, r12
	add	rdi, rbp
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rdx, r14
	lea	rsi, [rsi]
	call	memset
.label_42:
	mov	qword ptr [rsp], r13
	mov	r13, qword ptr [rsp + 0x60]
	mov	r14, qword ptr [rsp + 0x30]
.label_40:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	lea	rsi, [r12 + rbp - 8]
	mov	qword ptr [rsp + 0x18], rsi
	lea	rsi, [rsi]
	mov	edx, 1
	call	get_line
	mov	rbp, rbp
	test	al, al
	mov	rbp, rbp
	je	.label_15
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x48]
	lea	r15, [rax + 1]
	mov	rdi, qword ptr [r12 + rax*8]
	mov	rsi, qword ptr [r14]
	nop	
	mov	rdx,  qword ptr [word ptr [rip + join_field_1]]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + join_field_2]]
	call	keycmp
	nop	
	mov	rcx, r15
	lea	rdi, [rdi]
	dec	rbx
	lea	rsi, [rsi]
	add	rbp, 8
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_51
	mov	qword ptr [rsp + 0x60], r13
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], r12
	mov	qword ptr [rsp + 0x30], r14
	nop	
	mov	dword ptr [rsp + 0x74], 0
	lea	rsi, [rsi]
	jmp	.label_88
.label_15:
	mov	qword ptr [rsp + 0x60], r13
	mov	qword ptr [rsp + 0x28], r12
	mov	qword ptr [rsp + 0x30], r14
	mov	al, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x74], eax
.label_88:
	mov	rbp, qword ptr [rsp + 0x10]
	mov	r15, rbp
	lea	rdi, [rdi]
	movabs	rax, 0x1fffffffffffffff
	xor	r15, rax
	lea	rdi, [rdi]
	lea	r13, [rbp*8 + 8]
	nop	dword ptr [rax]
.label_127:
	mov	r12, rbp
	mov	rbp, rbp
	cmp	r12, qword ptr [rsp + 0x50]
	jne	.label_65
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_116
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x50]
	movabs	rax, 0xaaaaaaaaaaaaaaa
	lea	rdi, [rdi]
	cmp	rbp, rax
	jae	.label_14
	mov	rax, rbp
	mov	rbp, rbp
	shr	rax, 1
	lea	rsi, [rsi]
	lea	rbx, [rbp + rax + 1]
	jmp	.label_81
	nop	
.label_65:
	nop	
	mov	r14, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	jmp	.label_96
.label_116:
	mov	rbp, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	test	rbp, rbp
	mov	rsp, rsp
	mov	ebx, 0x10
	nop	
	cmovne	rbx, rbp
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_19
.label_81:
	lea	rsi, [rbx*8]
	mov	rbp, rbp
	call	xrealloc
	mov	rbp, rbp
	mov	r14, rax
	cmp	rbp, rbx
	nop	
	jae	.label_25
	nop	
	mov	qword ptr [r14 + rbp*8], 0
	inc	rbp
	lea	rdi, [rdi]
	cmp	rbp, rbx
	lea	rsi, [rsi]
	jae	.label_25
	lea	rdx, [r15 + rbx]
	shl	rdx, 3
	lea	rdi, [rdi]
	mov	rdi, r14
	add	rdi, r13
	xor	esi, esi
	nop	
	call	memset
.label_25:
	mov	qword ptr [rsp + 0x50], rbx
.label_96:
	nop	
	mov	rbx, r14
	mov	rbp, rbp
	lea	r14, [rbx + r13 - 8]
	mov	edx, 2
	mov	rdi, qword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	mov	rsi, r14
	call	get_line
	mov	rbp, rbp
	test	al, al
	je	.label_54
	lea	rbp, [r12 + 1]
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx + r12*8]
	mov	qword ptr [rsp + 0x30], rbx
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [rip + join_field_1]]
	mov	rcx,  qword ptr [word ptr [rip + join_field_2]]
	mov	rbp, rbp
	call	keycmp
	dec	r15
	add	r13, 8
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_127
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x10], 0
	jmp	.label_72
.label_54:
	mov	qword ptr [rsp + 0x30], rbx
	lea	rdi, [rdi]
	mov	al, 1
	mov	dword ptr [rsp + 0x10], eax
.label_72:
	cmp	qword ptr [rsp + 0x48], 0
	mov	rsp, rsp
	je	.label_47
	nop	
	test	byte ptr [byte ptr [rip + print_pairables]],  1
	mov	rbp, rbp
	je	.label_47
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_125:
	test	r12, r12
	mov	r13, qword ptr [rsp + 0x28]
	je	.label_82
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	r15, r12
	nop	dword ptr [rax + rax]
.label_112:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r13 + rbx*8]
	mov	rsi, qword ptr [rbp]
	call	prjoin
	nop	
	add	rbp, 8
	dec	r15
	jne	.label_112
.label_82:
	inc	rbx
	cmp	rbx, qword ptr [rsp + 0x48]
	jne	.label_125
.label_47:
	mov	eax, dword ptr [rsp + 0x74]
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	mov	edx, 0
	jne	.label_98
	nop	
	mov	rdx, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsi]
	mov	qword ptr [rdx], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsi], rax
	mov	edx, 1
.label_98:
	mov	eax, dword ptr [rsp + 0x10]
	test	al, al
	mov	r13, qword ptr [rsp + 0x60]
	jne	.label_29
	mov	rsp, rsp
	mov	r12, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r14]
	mov	qword ptr [r12], rcx
	mov	r15, r12
	lea	rdi, [rdi]
	mov	qword ptr [r14], rax
	lea	rsi, [rsi]
	mov	ebp, 1
	nop	
	mov	rax, qword ptr [rsp + 8]
	nop	
	mov	r12, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	mov	rcx, rax
.label_49:
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_26
	mov	rsp, rsp
	test	rbp, rbp
	mov	r14, r15
	jne	.label_131
	jmp	.label_21
.label_90:
	mov	rcx, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	jmp	.label_21
.label_126:
	mov	eax, 0x10
	mov	qword ptr [rsp], rax
	mov	rbp, r15
	jmp	.label_21
.label_130:
	mov	qword ptr [rsp], rax
	nop	
	jmp	.label_21
.label_102:
	mov	rsp, rsp
	mov	eax, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	mov	rcx, rbp
	xor	ebp, ebp
	mov	eax, 0x10
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], rax
.label_21:
	mov	r15, rbp
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x58], 0
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [rip + check_input_order]],  2
	jne	.label_34
	lea	rsi, [rsi]
	xor	ebp, ebp
	jmp	.label_60
.label_34:
	cmp	byte ptr [byte ptr [rip + issued_disorder_warning]],  0
	sete	al
	mov	rbp, rbp
	cmp	byte ptr [byte ptr [rip + label_44]],  0
	nop	
	sete	bpl
	lea	rsi, [rsi]
	or	bpl, al
.label_60:
	mov	qword ptr [rsp + 8], rcx
	lea	rsi, [rsi]
	test	rdx, rdx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rdx
	je	.label_56
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + print_unpairables_1]]
	mov	rsp, rsp
	mov	cl, bpl
	lea	rsi, [rsi]
	or	cl, al
	mov	rsp, rsp
	xor	cl, 1
	mov	rbp, rbp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_56
	test	al, 1
	lea	rsi, [rsi]
	je	.label_69
	mov	rsp, rsp
	mov	rdi, qword ptr [r12]
	mov	esi, OFFSET FLAT:uni_blank
	lea	rsi, [rsi]
	call	prjoin
.label_69:
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_76
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + seen_unpairable]],  1
.label_76:
	lea	rsi, [rsp + 0x58]
	lea	rsi, [rsi]
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 8]
	call	get_line
	mov	rbp, rbp
	test	al, al
	nop	
	je	.label_56
	lea	rbx, [rsp + 0x58]
	nop	dword ptr [rax]
.label_107:
	movzx	eax,  byte ptr [byte ptr [rip + print_unpairables_1]]
	and	eax, 1
	cmp	eax, 1
	nop	
	jne	.label_86
	mov	rdi, qword ptr [rsp + 0x58]
	mov	esi, OFFSET FLAT:uni_blank
	call	prjoin
.label_86:
	cmp	byte ptr [byte ptr [rip + issued_disorder_warning]],  0
	nop	
	je	.label_67
	mov	rbp, rbp
	movzx	eax,  byte ptr [byte ptr [rip + print_unpairables_1]]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_56
.label_67:
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rsi, rbx
	call	get_line
	test	al, al
	mov	rbp, rbp
	jne	.label_107
.label_56:
	test	r15, r15
	mov	rbp, rbp
	je	.label_27
	mov	al,  byte ptr [byte ptr [rip + print_unpairables_2]]
	lea	rsi, [rsi]
	or	bpl, al
	lea	rdi, [rdi]
	xor	bpl, 1
	lea	rdi, [rdi]
	test	bpl, 1
	jne	.label_27
	test	al, 1
	je	.label_119
	mov	rsi, qword ptr [r14]
	mov	edi, OFFSET FLAT:uni_blank
	mov	rsp, rsp
	call	prjoin
.label_119:
	nop	
	cmp	qword ptr [rsp + 0x30], 0
	lea	rdi, [rdi]
	je	.label_123
	mov	byte ptr [byte ptr [rip + seen_unpairable]],  1
.label_123:
	lea	rsi, [rsp + 0x58]
	nop	
	mov	edx, 2
	lea	rdi, [rdi]
	mov	rdi, r13
	nop	
	call	get_line
	test	al, al
	je	.label_27
	lea	rbp, [rsp + 0x58]
.label_122:
	movzx	eax,  byte ptr [byte ptr [rip + print_unpairables_2]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_133
	nop	
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:uni_blank
	call	prjoin
.label_133:
	mov	rsp, rsp
	cmp	byte ptr [byte ptr [rip + label_44]],  0
	mov	rsp, rsp
	je	.label_109
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + print_unpairables_2]]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	jne	.label_27
.label_109:
	mov	edx, 2
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, rbp
	call	get_line
	test	al, al
	jne	.label_122
.label_27:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x58]
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_38
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x28]
	mov	rbp, rbp
	call	free
	mov	qword ptr [rbx + 0x28], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
.label_38:
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	free
	nop	
	mov	r15, qword ptr [rsp]
	mov	rbp, rbp
	test	r15, r15
	je	.label_58
	lea	rsi, [rsi]
	mov	rbx, r12
	nop	
.label_77:
	mov	rbp, qword ptr [rbx]
	test	rbp, rbp
	mov	rsp, rsp
	mov	edi, 0
	lea	rdi, [rdi]
	je	.label_62
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp + 0x28]
	call	free
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 0x28], 0
	mov	rdi, qword ptr [rbp + 0x10]
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	mov	qword ptr [rbp + 0x10], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx]
.label_62:
	mov	rsp, rsp
	call	free
	add	rbx, 8
	mov	rsp, rsp
	dec	r15
	jne	.label_77
.label_58:
	mov	rdi, r12
	call	free
	mov	rsp, rsp
	mov	r12, qword ptr [rsp + 0x50]
	test	r12, r12
	mov	rbp, rbp
	je	.label_17
	mov	rbx, r14
	nop	word ptr cs:[rax + rax]
.label_103:
	mov	rsp, rsp
	mov	rbp, qword ptr [rbx]
	nop	
	test	rbp, rbp
	mov	rbp, rbp
	mov	edi, 0
	je	.label_39
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp + 0x28]
	call	free
	mov	qword ptr [rbp + 0x28], 0
	nop	
	mov	rdi, qword ptr [rbp + 0x10]
	call	free
	mov	qword ptr [rbp + 0x10], 0
	mov	rdi, qword ptr [rbx]
.label_39:
	call	free
	nop	
	add	rbx, 8
	lea	rdi, [rdi]
	dec	r12
	mov	rbp, rbp
	jne	.label_103
.label_17:
	mov	rdi, r14
	call	free
	nop	
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, rbp
	call	rpl_fclose
	test	eax, eax
	jne	.label_92
	mov	rdi, r13
	nop	
	call	rpl_fclose
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_115
	mov	al,  byte ptr [byte ptr [rip + label_44]]
	mov	rbp, rbp
	or	al,  byte ptr [byte ptr [rip + issued_disorder_warning]]
	lea	rsi, [rsi]
	jne	.label_73
	nop	
	xor	eax, eax
	add	rsp, 0x78
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
.label_26:
	lea	rsi, [rsi]
	mov	r14, r15
	jmp	.label_21
.label_29:
	xor	ebp, ebp
	mov	rcx, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x30]
	mov	r12, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	jmp	.label_21
.label_52:
	cmp	eax, 0xffffff7d
	mov	rsp, rsp
	je	.label_11
	mov	rsp, rsp
	cmp	eax, 0xffffff7e
	jne	.label_13
	mov	rsp, rsp
	xor	edi, edi
	call	usage
.label_11:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.23
	mov	rsp, rsp
	xor	r9d, r9d
	mov	rsp, rsp
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_13:
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rdi, [rdi]
	call	usage
.label_110:
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.16
	lea	rdi, [rdi]
	jmp	.label_43
.label_53:
	inc	r12
	mov	rsp, rsp
	inc	r15
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.53
	nop	
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, r12
	lea	rsi, [rsi]
	mov	r8, r15
	mov	rbp, rbp
	call	error
.label_24:
	lea	rdi, [rdi]
	call	xalloc_die
.label_14:
	call	xalloc_die
.label_92:
	nop	
	call	__errno_location
	nop	
	mov	ebx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [rip + g_names]]
	mov	rbp, rbp
	jmp	.label_74
.label_115:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + label_79]]
.label_74:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, 3
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_1
	nop	
	xor	eax, eax
	nop	
	mov	esi, ebx
	mov	rsp, rsp
	call	error
.label_93:
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.21
	jmp	.label_50
.label_19:
	call	xalloc_die
.label_22:
	inc	rbx
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.53
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rdx, rcx
	nop	
	mov	rcx, rbx
	lea	rsi, [rsi]
	mov	r8, rbp
	call	error
.label_31:
	inc	rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	nop	
	mov	r8, rbx
	call	error
.label_33:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
.label_43:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	nop	
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	nop	
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_10:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	test	eax, eax
	jne	.label_135
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.24
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 1
	call	usage
.label_120:
	call	__errno_location
	nop	
	mov	ebx, dword ptr [rax]
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 1
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebx
	mov	rdx, rcx
	mov	rsp, rsp
	call	error
.label_73:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.30
	mov	rsp, rsp
	jmp	.label_50
.label_134:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17_0
.label_50:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	nop	
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	rsp, rsp
	call	error
.label_135:
	mov	esi, OFFSET FLAT:.str.25
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	r14, rax
	movsxd	rax, ebp
	mov	rdi, qword ptr [rbx + rax*8 - 8]
	mov	rsp, rsp
	call	quote
	mov	rsp, rsp
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, r14
	call	error
	mov	edi, 1
	mov	rsp, rsp
	call	usage
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403110

	.globl free_spareline
	.type free_spareline, @function
free_spareline:
	mov	rbp, rbp
	push	rbx
	mov	rbx,  qword ptr [word ptr [rip + spareline]]
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_136
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x28], 0
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x10], 0
	nop	
	mov	rdi,  qword ptr [word ptr [rip + spareline]]
	nop	
	call	free
.label_136:
	nop	
	mov	rbx,  qword ptr [word ptr [rip + label_137]]
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_138
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x28], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	qword ptr [rbx + 0x10], 0
	nop	
	mov	rdi,  qword ptr [word ptr [rip + label_137]]
	pop	rbx
	nop	
	jmp	free
.label_138:
	nop	
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4031b0

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
	jne	.label_139
	mov	rsp, rsp
	mov	qword ptr [rsp], -1
	mov	rsp, rsp
	mov	rax, -1
	mov	rsp, rsp
	jmp	.label_141
.label_139:
	test	eax, eax
	jne	.label_140
	nop	
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	test	rax, rax
	nop	
	je	.label_140
.label_141:
	dec	rax
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r14
	ret	
.label_140:
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
	.align	32
	#Procedure 0x403260

	.globl add_field_list
	.type add_field_list, @function
add_field_list:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	nop	dword ptr [rax + rax]
.label_148:
	mov	r15, r14
	mov	rdx, r15
	nop	word ptr cs:[rax + rax]
.label_147:
	mov	rax, rdx
	nop	
	mov	cl, byte ptr [rax]
	mov	dl, cl
	lea	rdi, [rdi]
	or	dl, 0x20
	movzx	edx, dl
	mov	rbp, rbp
	cmp	edx, 0x20
	je	.label_142
	mov	rbp, rbp
	movzx	esi, cl
	cmp	esi, 0x2c
	je	.label_142
	lea	rsi, [rsi]
	lea	rdx, [rax + 1]
	mov	rsp, rsp
	cmp	esi, 9
	jne	.label_147
.label_142:
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_151
	lea	rdi, [rdi]
	test	cl, cl
	nop	
	mov	r14d, 0
	je	.label_144
	mov	byte ptr [rax], 0
	nop	
	inc	rax
	mov	rbp, rbp
	mov	r14, rax
	jmp	.label_144
	nop	dword ptr [rax + rax]
.label_151:
	xor	r14d, r14d
.label_144:
	movsx	ebx, byte ptr [r15]
	lea	rdi, [rdi]
	lea	eax, [rbx - 0x31]
	cmp	eax, 2
	jae	.label_146
	nop	
	movzx	eax, byte ptr [r15 + 1]
	cmp	eax, 0x2e
	jne	.label_143
	lea	rsi, [rsi]
	add	ebx, -0x30
	mov	rbp, rbp
	add	r15, 2
	nop	
	mov	rdi, r15
	call	string_to_join_field
	lea	rsi, [rsi]
	mov	r12, rax
	lea	rsi, [rsi]
	cmp	ebx, 2
	je	.label_145
	mov	eax, ebx
	or	eax, 1
	cmp	eax, 1
	je	.label_145
	jmp	.label_150
	nop	word ptr cs:[rax + rax]
.label_146:
	mov	rsp, rsp
	cmp	ebx, 0x30
	nop	
	jne	.label_149
	lea	rsi, [rsi]
	xor	r12d, r12d
	cmp	byte ptr [r15 + 1], 0
	mov	ebx, 0
	jne	.label_143
.label_145:
	lea	rsi, [rsi]
	mov	edi, 0x18
	call	xmalloc
	lea	rdi, [rdi]
	mov	dword ptr [rax], ebx
	mov	rsp, rsp
	mov	qword ptr [rax + 8], r12
	mov	rsp, rsp
	mov	qword ptr [rax + 0x10], 0
	mov	rcx,  qword ptr [word ptr [rip + outlist_end]]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x10], rax
	mov	qword ptr [word ptr [rip + outlist_end]],  rax
	lea	rdi, [rdi]
	test	r14, r14
	jne	.label_148
	mov	rsp, rsp
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rsp, rsp
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	ret	
.label_149:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.56
	nop	
	jmp	.label_152
.label_143:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.55
.label_152:
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rbx, rax
	mov	rdi, r15
	mov	rbp, rbp
	call	quote
	mov	rcx, rax
	mov	edi, 1
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rbx
	mov	rsp, rsp
	call	error
.label_150:
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.57
	mov	esi, OFFSET FLAT:.str.58
	mov	rsp, rsp
	mov	edx, 0x333
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.add_field
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403440

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
	jne	.label_153
	mov	ebp, dword ptr [rbx]
	test	ebp, ebp
	sete	al
	lea	rsi, [rsi]
	movzx	eax, al
	mov	ecx, dword ptr [rbx + rax*4]
	nop	
	cmp	rcx, 3
	ja	.label_159
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [+ (rax * 8) + g_names]]
	nop	
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_154]]
.label_554:
	dec	dword ptr [rdx]
	call	string_to_join_field
	mov	rcx,  qword ptr [word ptr [rip + join_field_1]]
	cmp	rcx, -1
	je	.label_158
	cmp	rcx, rax
	mov	rbp, rbp
	jne	.label_156
.label_158:
	mov	qword ptr [word ptr [rip + join_field_1]],  rax
	mov	rbp, rbp
	jmp	.label_159
.label_555:
	dec	dword ptr [rdx + 4]
	call	string_to_join_field
	mov	rcx,  qword ptr [word ptr [rip + join_field_2]]
	cmp	rcx, -1
	je	.label_155
	cmp	rcx, rax
	lea	rdi, [rdi]
	jne	.label_156
.label_155:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + join_field_2]],  rax
	lea	rdi, [rdi]
	jmp	.label_159
.label_556:
	mov	rsp, rsp
	call	add_field_list
.label_159:
	lea	rsi, [rsi]
	mov	eax, 1
	test	ebp, ebp
	je	.label_153
	mov	ecx, dword ptr [rbx + 4]
	mov	dword ptr [rbx], ecx
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_79]]
	mov	qword ptr [word ptr [rip + g_names]],  rcx
.label_153:
	nop	
	mov	ecx, dword ptr [r12]
	mov	rsp, rsp
	cdqe	
	mov	rsp, rsp
	mov	dword ptr [rbx + rax*4], ecx
	mov	qword ptr [word ptr [+ (rax * 8) + g_names]],  r15
	mov	rbp, rbp
	inc	eax
	mov	dword ptr [r13], eax
	mov	rbp, rbp
	cmp	dword ptr [r12], 3
	jne	.label_157
	mov	dword ptr [r14], 3
.label_157:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
.label_553:
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.60
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rbx, rax
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, r15
	mov	rsp, rsp
	call	quotearg_style
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	error
	mov	edi, 1
	mov	rbp, rbp
	call	usage
.label_156:
	mov	rbp, rbp
	inc	rcx
	inc	rax
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.53
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rbx, rax
	mov	rbp, rcx
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	edi, 1
	nop	
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	mov	rsp, rsp
	mov	r8, rbx
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403620

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
	mov	r12, rdi
	mov	rbp,  qword ptr [word ptr [rip + label_166]]
	test	rbp, rbp
	je	.label_167
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [rip + tab]]
	mov	ecx, OFFSET FLAT:uni_blank
	nop	
	cmp	r12, rcx
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:join_field_2
	mov	r13d, OFFSET FLAT:join_field_1
	cmove	r13, rcx
	mov	rbx, r12
	cmove	rbx, r14
	test	eax, eax
	movsx	edx, al
	mov	ecx, 0x20
	cmovns	ecx, edx
	lea	rsi, [rsi]
	mov	r15b, 0x20
	lea	rsi, [rsi]
	js	.label_162
	mov	r15b, al
.label_162:
	nop	
	movzx	eax, cl
	mov	dword ptr [rsp + 4], eax
	lea	rsi, [rsi]
	jmp	.label_161
	nop	word ptr cs:[rax + rax]
.label_168:
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r15b
.label_161:
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp]
	nop	
	cmp	ecx, 1
	lea	rdi, [rdi]
	mov	rax, r14
	cmove	rax, r12
	lea	rdi, [rdi]
	lea	rdx, [rbp + 8]
	test	ecx, ecx
	lea	rsi, [rsi]
	cmove	rdx, r13
	cmove	rax, rbx
	mov	rbp, rbp
	mov	rcx, qword ptr [rdx]
	cmp	qword ptr [rax + 0x18], rcx
	nop	
	jbe	.label_169
	mov	rax, qword ptr [rax + 0x28]
	mov	rsp, rsp
	shl	rcx, 4
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + rcx + 8]
	mov	rsp, rsp
	test	rdx, rdx
	mov	rsp, rsp
	je	.label_169
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + rcx]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	esi, 1
	call	fwrite_unlocked
	mov	rbp, rbp
	jmp	.label_160
	nop	word ptr cs:[rax + rax]
.label_169:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + empty_filler]]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_160
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
.label_160:
	nop	
	mov	rbp, qword ptr [rbp + 0x10]
	mov	rbp, rbp
	test	rbp, rbp
	je	.label_165
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jb	.label_168
	mov	esi, dword ptr [rsp + 4]
	call	__overflow
	lea	rsi, [rsi]
	jmp	.label_161
.label_167:
	nop	
	mov	eax, OFFSET FLAT:uni_blank
	cmp	r12, rax
	mov	rax, r12
	cmove	rax, r14
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:join_field_2
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:join_field_1
	lea	rsi, [rsi]
	cmove	rdx, rcx
	nop	
	mov	rcx, qword ptr [rdx]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x18], rcx
	jbe	.label_164
	mov	rax, qword ptr [rax + 0x28]
	shl	rcx, 4
	mov	rdx, qword ptr [rax + rcx + 8]
	test	rdx, rdx
	je	.label_164
	mov	rdi, qword ptr [rax + rcx]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	esi, 1
	call	fwrite_unlocked
	jmp	.label_170
.label_164:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + empty_filler]]
	lea	rsi, [rsi]
	test	rdi, rdi
	je	.label_170
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
.label_170:
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + join_field_1]]
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [rip + autocount_1]]
	mov	rdi, r12
	lea	rsi, [rsi]
	call	prfields
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + join_field_2]]
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + autocount_2]]
	nop	
	mov	rdi, r14
	call	prfields
.label_165:
	mov	al,  byte ptr [byte ptr [rip + eolchar]]
	lea	rdi, [rdi]
	xor	ecx, ecx
	and	al, 1
	lea	rsi, [rsi]
	mov	esi, 0xa
	cmovne	esi, ecx
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_163
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_163:
	add	rsp, 8
	nop	
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	mov	rbp, rbp
	pop	rbp
	nop	
	jmp	__overflow
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4038d0

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
	jbe	.label_175
	mov	rax, qword ptr [rax + 0x28]
	mov	rbp, rbp
	shl	rdx, 4
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + rdx]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rax + rdx + 8]
.label_175:
	xor	r8d, r8d
	mov	rbp, rbp
	cmp	qword ptr [rsi + 0x18], rcx
	mov	ebx, 0
	mov	rbp, rbp
	jbe	.label_173
	mov	rax, qword ptr [rsi + 0x28]
	shl	rcx, 4
	nop	
	mov	r8, qword ptr [rax + rcx]
	mov	rbx, qword ptr [rax + rcx + 8]
.label_173:
	mov	rsp, rsp
	test	r14, r14
	je	.label_176
	mov	eax, 1
	mov	rbp, rbp
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_172
	movzx	eax,  byte ptr [byte ptr [rip + ignore_case]]
	and	eax, 1
	cmp	eax, 1
	nop	
	jne	.label_174
	lea	rsi, [rsi]
	cmp	r14, rbx
	lea	rsi, [rsi]
	mov	rdx, rbx
	lea	rdi, [rdi]
	cmovb	rdx, r14
	mov	rsi, r8
	call	memcasecmp
	jmp	.label_177
.label_176:
	nop	
	neg	rbx
	nop	
	sbb	eax, eax
	jmp	.label_172
.label_174:
	mov	rsp, rsp
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	je	.label_171
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
.label_171:
	cmp	r14, rbx
	mov	rdx, rbx
	cmovb	rdx, r14
	mov	rsp, rsp
	mov	rsi, r8
	lea	rsi, [rsi]
	call	memcmp
.label_177:
	mov	rsp, rsp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_172
	cmp	r14, rbx
	setne	al
	mov	rbp, rbp
	movzx	ecx, al
	nop	
	mov	eax, 0xffffffff
	cmovae	eax, ecx
.label_172:
	lea	rdi, [rdi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a00

	.globl get_line
	.type get_line, @function
get_line:
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	rbp, rsi
	mov	rbx, rdi
	mov	rbp, rbp
	mov	r12, qword ptr [rbp]
	mov	rbp, rbp
	movsxd	r13, edx
	lea	rsi, [rsi]
	cmp	r12,  qword ptr [word ptr [+ (r13 * 8) + label_178]]
	jne	.label_179
	mov	rax,  qword ptr [word ptr [+ (r13 * 8) + label_190]]
	mov	qword ptr [word ptr [+ (r13 * 8) + label_190]],  r12
	mov	qword ptr [rbp], rax
	mov	rbp, rbp
	mov	r12, rax
.label_179:
	test	r12, r12
	je	.label_218
	mov	dword ptr [rsp + 0x24], edx
	mov	qword ptr [r12 + 0x18], 0
	nop	
	jmp	.label_196
.label_218:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x24], edx
	nop	
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, 0x30
	mov	rbp, rbp
	call	xcalloc
	mov	rsp, rsp
	mov	r12, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp], r12
.label_196:
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + eolchar]]
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	jne	.label_208
	lea	rdi, [rdi]
	mov	al, 0xa
	jmp	.label_212
.label_208:
	xor	eax, eax
.label_212:
	mov	rbp, rbp
	movzx	edx, al
	mov	rdi, r12
	mov	rsi, rbx
	mov	rsp, rsp
	call	readlinebuffer_delim
	mov	rsp, rsp
	test	rax, rax
	nop	
	je	.label_198
	inc	qword ptr [word ptr [+ (r13 * 8) + label_194]]
	mov	rbp, qword ptr [r12 + 8]
	mov	rsp, rsp
	mov	r14, qword ptr [r12 + 0x10]
	lea	rax, [r14 + rbp - 1]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rax
	nop	
	cmp	r14, rax
	mov	rsp, rsp
	je	.label_183
	mov	r15d,  dword ptr [dword ptr [rip + tab]]
	lea	rsi, [rsi]
	test	r15d, r15d
	js	.label_181
	mov	rbp, rbp
	cmp	r15d, 0xa
	je	.label_181
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x18]
	nop	
	sub	rdx, r14
	mov	rdi, r14
	mov	esi, r15d
	nop	
	call	memchr
	mov	rsp, rsp
	mov	rbx, rax
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_189
	mov	rsp, rsp
	mov	rbp, qword ptr [r12 + 0x18]
	nop	dword ptr [rax]
.label_192:
	mov	rsi, qword ptr [r12 + 0x20]
	nop	
	cmp	rbp, rsi
	nop	
	jae	.label_195
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x28]
	lea	rsi, [rsi]
	jmp	.label_197
	nop	dword ptr [rax]
.label_195:
	nop	
	mov	rdi, qword ptr [r12 + 0x28]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_201
	nop	
	movabs	rax, 0x555555555555555
	cmp	rsi, rax
	nop	
	jae	.label_205
	mov	rax, rsi
	mov	rsp, rsp
	shr	rax, 1
	lea	rsi, [rsi + rax + 1]
	mov	rsp, rsp
	jmp	.label_209
.label_201:
	test	rsi, rsi
	mov	eax, 8
	mov	rsp, rsp
	cmove	rsi, rax
	movabs	rax, 0x7ffffffffffffff
	cmp	rsi, rax
	ja	.label_215
.label_209:
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x20], rsi
	nop	
	shl	rsi, 4
	mov	rsp, rsp
	call	xrealloc
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x28], rax
	mov	rbp, qword ptr [r12 + 0x18]
	nop	
	mov	r15d,  dword ptr [dword ptr [rip + tab]]
.label_197:
	mov	rsp, rsp
	mov	rcx, rbx
	lea	rsi, [rsi]
	sub	rcx, r14
	mov	rdx, rbp
	lea	rdi, [rdi]
	shl	rdx, 4
	nop	
	mov	qword ptr [rax + rdx], r14
	nop	
	mov	qword ptr [rax + rdx + 8], rcx
	lea	rdi, [rdi]
	inc	rbp
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x18], rbp
	mov	r14, rbx
	lea	rdi, [rdi]
	inc	r14
	mov	rdx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	sub	rdx, r14
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	esi, r15d
	nop	
	call	memchr
	mov	rsp, rsp
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_192
	mov	rsp, rsp
	jmp	.label_189
.label_198:
	test	byte ptr [rbx], 0x20
	jne	.label_202
	lea	rsi, [rsi]
	test	r12, r12
	je	.label_200
	mov	rdi, qword ptr [r12 + 0x28]
	lea	rdi, [rdi]
	call	free
	mov	qword ptr [r12 + 0x28], 0
	mov	rdi, qword ptr [r12 + 0x10]
	mov	rbp, rbp
	call	free
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x10], 0
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_184
.label_181:
	test	r15d, r15d
	mov	rbp, rbp
	jns	.label_189
	lea	rdi, [rdi]
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	r8, rax
	mov	rax, qword ptr [r8]
	nop	
	lea	rcx, [rbp - 1]
	mov	rbx, r14
	nop	word ptr cs:[rax + rax]
.label_185:
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rbx]
	mov	rsp, rsp
	cmp	rdx, 0xa
	je	.label_222
	movzx	edx, word ptr [rax + rdx*2]
	mov	rbp, rbp
	and	edx, 1
	lea	rdi, [rdi]
	test	dx, dx
	lea	rsi, [rsi]
	je	.label_224
.label_222:
	mov	rbp, rbp
	inc	rbx
	lea	rdi, [rdi]
	dec	rcx
	jne	.label_185
	nop	
	jmp	.label_183
.label_200:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_184
.label_224:
	mov	qword ptr [rsp + 0x10], r13
	nop	
	add	r14, rbp
	lea	rdi, [rdi]
	jmp	.label_188
.label_219:
	dec	rbx
.label_188:
	lea	r15, [rbx + 2]
	nop	word ptr [rax + rax]
.label_199:
	lea	rdi, [rdi]
	mov	r13b, 1
	cmp	r14, r15
	nop	
	je	.label_191
	mov	rbp, rbp
	movzx	ecx, byte ptr [r15 - 1]
	lea	rdi, [rdi]
	inc	r15
	nop	
	cmp	rcx, 0xa
	mov	rsp, rsp
	je	.label_193
	lea	rsi, [rsi]
	movzx	ecx, word ptr [rax + rcx*2]
	and	ecx, 1
	mov	rsp, rsp
	test	cx, cx
	je	.label_199
.label_193:
	add	r15, -2
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_223
.label_191:
	mov	r15, qword ptr [rsp + 0x18]
.label_223:
	mov	rcx, qword ptr [r12 + 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [r12 + 0x20]
	cmp	rcx, rsi
	jae	.label_207
	mov	rax, qword ptr [r12 + 0x28]
	nop	
	jmp	.label_210
.label_207:
	nop	
	mov	rdi, qword ptr [r12 + 0x28]
	test	rdi, rdi
	je	.label_214
	movabs	rax, 0x555555555555555
	mov	rbp, rbp
	cmp	rsi, rax
	nop	
	jae	.label_203
	mov	rsp, rsp
	mov	rbp, r8
	mov	rax, rsi
	shr	rax, 1
	nop	
	lea	rsi, [rsi + rax + 1]
	jmp	.label_217
.label_214:
	mov	rbp, r8
	test	rsi, rsi
	mov	rsp, rsp
	mov	eax, 8
	cmove	rsi, rax
	movabs	rax, 0x7ffffffffffffff
	mov	rbp, rbp
	cmp	rsi, rax
	mov	rsp, rsp
	ja	.label_221
.label_217:
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x20], rsi
	mov	rsp, rsp
	shl	rsi, 4
	call	xrealloc
	mov	qword ptr [r12 + 0x28], rax
	mov	rcx, qword ptr [r12 + 0x18]
	lea	rdi, [rdi]
	mov	r8, rbp
.label_210:
	mov	rdx, r15
	sub	rdx, rbx
	mov	rsi, rcx
	lea	rdi, [rdi]
	shl	rsi, 4
	mov	qword ptr [rax + rsi], rbx
	lea	rsi, [rsi]
	mov	qword ptr [rax + rsi + 8], rdx
	inc	rcx
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x18], rcx
	mov	rbp, rbp
	test	r13b, r13b
	nop	
	mov	r13, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	jne	.label_183
	mov	rsp, rsp
	add	r15, 2
	nop	dword ptr [rax]
.label_206:
	nop	
	mov	rbx, r15
	lea	rsi, [rsi]
	cmp	r14, rbx
	lea	rsi, [rsi]
	je	.label_213
	nop	
	movzx	ecx, byte ptr [rbx - 1]
	lea	r15, [rbx + 1]
	nop	
	cmp	rcx, 0xa
	je	.label_206
	mov	rsp, rsp
	mov	rax, qword ptr [r8]
	mov	rbp, rbp
	movzx	ecx, word ptr [rax + rcx*2]
	and	ecx, 1
	test	cx, cx
	jne	.label_206
	nop	
	jmp	.label_219
.label_213:
	mov	r14, qword ptr [rsp + 0x18]
.label_189:
	mov	rcx, qword ptr [r12 + 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x20]
	cmp	rcx, rax
	jae	.label_186
	mov	rax, qword ptr [r12 + 0x28]
	lea	rsi, [rsi]
	jmp	.label_216
.label_186:
	mov	rdi, qword ptr [r12 + 0x28]
	test	rdi, rdi
	je	.label_220
	lea	rdi, [rdi]
	movabs	rcx, 0x555555555555555
	cmp	rax, rcx
	lea	rdi, [rdi]
	jae	.label_203
	lea	rdi, [rdi]
	mov	rcx, rax
	shr	rcx, 1
	mov	rbp, rbp
	lea	rsi, [rax + rcx + 1]
	jmp	.label_225
.label_220:
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	mov	esi, 8
	lea	rdi, [rdi]
	cmovne	rsi, rax
	mov	rbp, rbp
	movabs	rax, 0x7ffffffffffffff
	lea	rdi, [rdi]
	cmp	rsi, rax
	lea	rsi, [rsi]
	ja	.label_204
.label_225:
	mov	qword ptr [r12 + 0x20], rsi
	lea	rsi, [rsi]
	shl	rsi, 4
	call	xrealloc
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x28], rax
	mov	rcx, qword ptr [r12 + 0x18]
.label_216:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x18]
	sub	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	rbp, rbp
	shl	rdx, 4
	mov	qword ptr [rax + rdx], r14
	mov	rbp, rbp
	mov	qword ptr [rax + rdx + 8], rsi
	lea	rdi, [rdi]
	inc	rcx
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x18], rcx
.label_183:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [+ (r13 * 8) + label_178]]
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_180
	nop	
	mov	eax,  dword ptr [dword ptr [rip + check_input_order]]
	nop	
	cmp	eax, 1
	je	.label_211
	lea	rdi, [rdi]
	cmp	eax, 2
	lea	rsi, [rsi]
	je	.label_180
	movzx	eax,  byte ptr [byte ptr [rip + seen_unpairable]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_180
.label_211:
	cmp	byte ptr [byte ptr [r13 + seen_unpairable]],  0
	mov	rbp, rbp
	jne	.label_180
	lea	rdi, [rdi]
	cmp	dword ptr [rsp + 0x24], 1
	nop	
	mov	eax, OFFSET FLAT:join_field_1
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:join_field_2
	cmove	rcx, rax
	mov	rdx, qword ptr [rcx]
	mov	rbp, rbp
	mov	rsi, r12
	mov	rcx, rdx
	call	keycmp
	test	eax, eax
	jle	.label_180
	nop	
	mov	rax, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	xor	ebx, ebx
	test	rax, rax
	je	.label_182
	mov	rbp, rbp
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rcx + rax - 1]
	cmp	ecx, 0xa
	jne	.label_187
	dec	rax
.label_187:
	lea	rdi, [rdi]
	mov	rbx, rax
.label_182:
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [rip + check_input_order]],  1
	sete	bpl
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.62
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rdx, rax
	lea	rsi, [rsi]
	cmp	rbx, 0x7fffffff
	movzx	edi, bpl
	mov	rcx,  qword ptr [word ptr [+ (r13 * 8) + ignore_case]]
	lea	rsi, [rsi]
	mov	r8,  qword ptr [word ptr [+ (r13 * 8) + label_194]]
	lea	rdi, [rdi]
	mov	r9d, 0x7fffffff
	cmovbe	r9d, ebx
	mov	rax, qword ptr [r12 + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rax
	mov	esi, 0
	lea	rdi, [rdi]
	xor	eax, eax
	call	error
	mov	byte ptr [byte ptr [r13 + seen_unpairable]],  1
.label_180:
	mov	qword ptr [word ptr [+ (r13 * 8) + label_178]],  r12
	nop	
	mov	al, 1
.label_184:
	mov	rsp, rsp
	add	rsp, 0x28
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_205:
	mov	rsp, rsp
	call	xalloc_die
.label_215:
	call	xalloc_die
.label_202:
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.61
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebx
	mov	rdx, rcx
	mov	rbp, rbp
	call	error
.label_203:
	call	xalloc_die
.label_204:
	call	xalloc_die
.label_221:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404140

	.globl prfield
	.type prfield, @function
prfield:
	cmp	qword ptr [rsi + 0x18], rdi
	mov	rbp, rbp
	jbe	.label_226
	nop	
	mov	rax, qword ptr [rsi + 0x28]
	shl	rdi, 4
	mov	rdx, qword ptr [rax + rdi + 8]
	test	rdx, rdx
	je	.label_228
	mov	rdi, qword ptr [rax + rdi]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rbp, rbp
	jmp	fwrite_unlocked
.label_226:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + empty_filler]]
	test	rdi, rdi
	je	.label_227
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	jmp	fputs_unlocked
.label_228:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + empty_filler]]
	nop	
	test	rdi, rdi
	je	.label_227
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	jmp	fputs_unlocked
.label_227:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4041c0

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
	jne	.label_229
	mov	rbp, rbp
	mov	r14, qword ptr [r15 + 0x18]
.label_229:
	nop	
	mov	eax,  dword ptr [dword ptr [rip + tab]]
	mov	rbp, rbp
	test	eax, eax
	mov	r13b, 0x20
	js	.label_233
	mov	rbp, rbp
	mov	r13b, al
.label_233:
	test	rbx, rbx
	je	.label_232
	mov	rbp, rbp
	test	r14, r14
	je	.label_232
	lea	rdi, [rdi]
	movsx	r12d, r13b
	lea	rsi, [rsi]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_231:
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
	jae	.label_232
	cmp	rbp, r14
	jb	.label_231
.label_232:
	inc	rbx
	cmp	rbx, r14
	jae	.label_234
	nop	
	movsx	ebp, r13b
	nop	dword ptr [rax]
.label_230:
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
	jne	.label_230
.label_234:
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
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042b0
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
	#Procedure 0x4042c0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042d0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	call	close_stream
	test	eax, eax
	je	.label_236
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_235
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_235
.label_236:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_238
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_235:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_2
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_237
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rdi, [rdi]
	mov	rcx, rbx
	mov	rsp, rsp
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_238:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_237:
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
	mov	r8, rbx
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4043d0
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043e0

	.globl fadvise
	.type fadvise, @function
fadvise:
	lea	rdi, [rdi]
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_239
	call	fileno
	mov	rsp, rsp
	xor	esi, esi
	xor	edx, edx
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_239:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404410

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
	je	.label_240
	mov	rsp, rsp
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_241
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	call	dup_safer
	mov	rsp, rsp
	mov	ebp, eax
	test	ebp, ebp
	js	.label_243
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fclose
	mov	rbp, rbp
	test	eax, eax
	jne	.label_242
	mov	rsp, rsp
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r14
	call	fdopen
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_240
.label_242:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbx], r14d
	mov	rbp, rbp
	jmp	.label_244
.label_241:
	mov	rax, rbx
	mov	rsp, rsp
	jmp	.label_240
.label_243:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_244:
	xor	eax, eax
.label_240:
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
	.align	32
	#Procedure 0x4044f0

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
	je	.label_246
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_245
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_247
.label_245:
	nop	
	mov	esi, OFFSET FLAT:.str.1_1
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_246
.label_247:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_246:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404540
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
	.align	32
	#Procedure 0x404560
	.globl readlinebuffer
	.type readlinebuffer, @function
readlinebuffer:

	mov	edx, 0xa
	jmp	readlinebuffer_delim
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404570

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
	push	rax
	mov	rbp, rsi
	mov	rbp, rbp
	mov	r15, rdi
	nop	
	xor	eax, eax
	nop	
	test	byte ptr [rbp], 0x10
	jne	.label_251
	mov	rsp, rsp
	mov	r12, qword ptr [r15 + 0x10]
	nop	
	mov	r14, qword ptr [r15]
	lea	rsi, [rsi]
	add	r14, r12
	lea	rdi, [rdi]
	movsx	eax, dl
	mov	rbp, rbp
	mov	dword ptr [rsp], eax
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 4], edx
	mov	r13, r12
	nop	dword ptr [rax]
.label_250:
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rbp + 0x10]
	mov	rsp, rsp
	jae	.label_248
	lea	rcx, [rax + 1]
	mov	qword ptr [rbp + 8], rcx
	lea	rsi, [rsi]
	movzx	ebx, byte ptr [rax]
.label_249:
	cmp	r13, r14
	nop	
	jne	.label_253
	mov	rbp, rbp
	mov	r13, qword ptr [r15]
	mov	rdi, r12
	nop	
	mov	rsi, r15
	lea	rsi, [rsi]
	call	x2realloc
	lea	rsi, [rsi]
	mov	r12, rax
	add	r13, r12
	mov	qword ptr [r15 + 0x10], r12
	mov	r14, r12
	add	r14, qword ptr [r15]
.label_253:
	nop	
	mov	byte ptr [r13], bl
	nop	
	inc	r13
	nop	
	cmp	ebx, dword ptr [rsp]
	jne	.label_250
	lea	rdi, [rdi]
	jmp	.label_252
.label_248:
	mov	rbp, rbp
	mov	rdi, rbp
	call	__uflow
	mov	rsp, rsp
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_249
	mov	rsp, rsp
	cmp	r13, r12
	mov	rbp, rbp
	mov	ecx, dword ptr [rsp + 4]
	mov	eax, 0
	lea	rdi, [rdi]
	je	.label_251
	test	byte ptr [rbp], 0x20
	jne	.label_251
	mov	eax, ecx
	nop	
	movzx	eax, al
	movzx	ecx, byte ptr [r13 - 1]
	cmp	ecx, eax
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rsp]
	lea	rdi, [rdi]
	jne	.label_249
.label_252:
	sub	r13, r12
	mov	qword ptr [r15 + 8], r13
	mov	rax, r15
.label_251:
	add	rsp, 8
	nop	
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404690
	.globl freebuffer
	.type freebuffer, @function
freebuffer:

	nop
	mov	rdi, qword ptr [rdi + 0x10]
	jmp	free
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4046a0

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
	je	.label_254
	mov	rbp, rbp
	call	__ctype_toupper_loc
	mov	rsp, rsp
	mov	rcx, qword ptr [rax]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_255:
	movzx	eax, byte ptr [r15 + rdx]
	mov	eax, dword ptr [rcx + rax*4]
	lea	rdi, [rdi]
	movzx	esi, byte ptr [r14 + rdx]
	lea	rdi, [rdi]
	sub	eax, dword ptr [rcx + rsi*4]
	lea	rsi, [rsi]
	jne	.label_254
	lea	rsi, [rsi]
	inc	rdx
	xor	eax, eax
	mov	rsp, rsp
	cmp	rdx, rbx
	lea	rsi, [rsi]
	jb	.label_255
.label_254:
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404720

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
	je	.label_256
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
	jl	.label_258
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_258
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
	jne	.label_257
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_257:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_258:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_256:
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
	.align	32
	#Procedure 0x404810
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
	#Procedure 0x404860
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
	#Procedure 0x404880
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
	#Procedure 0x4048a0
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
	#Procedure 0x404910
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
	#Procedure 0x404930
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
	je	.label_259
	test	rdx, rdx
	nop	
	je	.label_259
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_259:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404970
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
	mov	r8, qword ptr [rbp]
	mov	rax, qword ptr [rbp + 0x28]
	mov	r9, r8
	shr	r9, 0x20
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + 0x30]
	mov	rsp, rsp
	add	rbp, 8
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	qword ptr [rsp], rbp
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
	add	rsp, 0x28
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a20

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
	sub	rsp, 0x118
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x38], ebx
	mov	r15d, r8d
	mov	r13, rcx
	mov	qword ptr [rsp + 0x88], rdx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xb0], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x160]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x100], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x158]
	mov	qword ptr [rsp + 0x78], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb8], rax
	mov	r12b, bl
	mov	rbp, rbp
	shr	r12b, 1
	mov	rbp, rbp
	and	r12b, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x3c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x44], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xd8], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, 0
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x68], rcx
.label_362:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	ecx, r15d
	lea	rdi, [rdi]
	cmp	r15d, 0xa
	ja	.label_341
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_347]]
.label_619:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11_0
	nop	
	mov	esi, r15d
	mov	r14, r10
	nop	
	mov	bl, r8b
	call	gettext_quote
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:.str.12
	mov	esi, r15d
	mov	rsp, rsp
	call	gettext_quote
	mov	r8b, bl
	mov	rsp, rsp
	mov	r10, r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x100], rax
.label_620:
	mov	byte ptr [rsp + 0x43], r8b
	mov	r13, rbp
	nop	
	test	r12b, 1
	nop	
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rdx, qword ptr [rsp + 0x78]
	jne	.label_364
	mov	rbp, rbp
	mov	al, byte ptr [rdx]
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	mov	ecx, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rcx
	je	.label_364
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	nop	dword ptr [rax]
.label_383:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_380
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rcx + rsi], al
.label_380:
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + rcx + 1]
	mov	rsp, rsp
	inc	rcx
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_383
.label_364:
	nop	
	mov	rbp, qword ptr [rsp + 0x100]
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rbx, r10
	mov	rbp, rbp
	call	strlen
	mov	r10, rbx
	mov	qword ptr [rsp + 0xf0], rax
	mov	rbp, rbp
	mov	r9d, r15d
	mov	qword ptr [rsp + 0x20], rbp
	nop	
	mov	dil, 1
	mov	sil, r12b
	mov	rbp, r13
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0x43]
	mov	r11, qword ptr [rsp + 0x88]
	jmp	.label_272
.label_612:
	mov	rbp, rbp
	xor	r9d, r9d
	xor	ecx, ecx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	dil, al
	lea	rsi, [rsi]
	xor	esi, esi
	nop	
	jmp	.label_272
.label_615:
	lea	rsi, [rsi]
	mov	al, 1
.label_613:
	mov	rbp, rbp
	mov	r12b, 1
.label_616:
	mov	rbp, rbp
	test	r12b, 1
	mov	cl, 1
	nop	
	je	.label_300
	lea	rsi, [rsi]
	mov	cl, al
.label_300:
	mov	rsp, rsp
	mov	al, cl
.label_614:
	mov	r9d, 2
	test	r12b, 1
	mov	rsp, rsp
	jne	.label_307
	test	r10, r10
	je	.label_313
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx], 0x27
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsp, rsp
	jmp	.label_314
.label_307:
	xor	ecx, ecx
	jmp	.label_314
.label_617:
	mov	rsp, rsp
	mov	r9d, 5
	test	r12b, 1
	jne	.label_326
	lea	rdi, [rdi]
	test	r10, r10
	je	.label_330
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 0x22
	mov	rsp, rsp
	mov	eax, 1
	jmp	.label_335
.label_618:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xf0], rax
	mov	sil, 1
	jmp	.label_272
.label_313:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_314:
	nop	
	mov	qword ptr [rsp + 0x58], rcx
	nop	
	mov	ecx, OFFSET FLAT:.str.12
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbp, rbp
	mov	ecx, 1
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
	mov	dil, al
	mov	sil, r12b
	jmp	.label_272
.label_326:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_335
.label_330:
	lea	rdi, [rdi]
	mov	eax, 1
.label_335:
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xf0], rax
	mov	rbp, rbp
	mov	dil, 1
	nop	
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_272:
	mov	qword ptr [rsp + 0x30], rsi
	mov	byte ptr [rsp + 0xa7], dil
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x150], 0
	setne	dl
	lea	rsi, [rsi]
	cmp	r9d, 2
	setne	r15b
	sete	al
	mov	cl, dil
	lea	rdi, [rdi]
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xc3], cl
	sete	byte ptr [rsp + 0x97]
	lea	rsi, [rsi]
	mov	bl, r15b
	mov	rsp, rsp
	and	bl, cl
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x65], bl
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r13b
	mov	r12b, r13b
	lea	rdi, [rdi]
	and	r12b, bl
	mov	byte ptr [rsp + 0x67], r12b
	mov	bl, sil
	and	bl, 1
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xe7], bl
	sete	cl
	and	al, bl
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x77], al
	and	dl, bl
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xd7], dl
	mov	rsp, rsp
	or	cl, r15b
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x66], cl
	lea	rdi, [rdi]
	and	dil, sil
	lea	rsi, [rsi]
	and	dil, r13b
	mov	byte ptr [rsp + 0x57], dil
	xor	edi, edi
	mov	r14d, dword ptr [rsp + 0xe8]
	jmp	.label_333
	nop	word ptr cs:[rax + rax]
.label_343:
	nop	
	inc	rdi
.label_333:
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_302
	nop	
	cmp	rdi, rbp
	mov	rsp, rsp
	jne	.label_371
	jmp	.label_309
	nop	dword ptr [rax + rax]
.label_302:
	mov	r13, -1
	lea	rsi, [rsi]
	cmp	byte ptr [r11 + rdi], 0
	je	.label_312
.label_371:
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_322
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_324
	cmp	rbp, -1
	lea	rsi, [rsi]
	jne	.label_324
	nop	
	mov	eax, r14d
	mov	rbp, rbp
	mov	r14, rdi
	mov	rdi, r11
	mov	rsp, rsp
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r9
	mov	dword ptr [rsp + 0xe8], eax
	mov	rsp, rsp
	mov	r12, r11
	lea	rdi, [rdi]
	call	strlen
	mov	rdi, r14
	mov	rbp, rbp
	mov	r11, r12
	mov	rbp, rbp
	mov	r12b, byte ptr [rsp + 0x67]
	nop	
	mov	r14d, dword ptr [rsp + 0xe8]
	lea	rsi, [rsi]
	mov	r9, r13
	lea	rsi, [rsi]
	mov	r8b, r15b
	mov	r10, rbp
	lea	rdi, [rdi]
	mov	rbp, rax
.label_324:
	mov	rsp, rsp
	cmp	rbx, rbp
	lea	rsi, [rsi]
	jbe	.label_358
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_306
	nop	dword ptr [rax + rax]
.label_322:
	nop	
	mov	dword ptr [rsp + 0x10c], 0
	lea	rdi, [rdi]
	jmp	.label_306
	nop	word ptr cs:[rax + rax]
.label_358:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], r14d
	mov	r12, rbp
	lea	rsi, [rsi]
	mov	r13, r9
	mov	r15b, r8b
	mov	rbp, rbp
	mov	rbx, r10
	mov	rsp, rsp
	mov	r14, rdi
	mov	rsp, rsp
	lea	rdi, [r11 + r14]
	mov	rsp, rsp
	mov	rbp, r11
	nop	
	mov	rsi, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0xf0]
	nop	
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	sete	al
	nop	
	mov	dword ptr [rsp + 0x10c], eax
	jne	.label_370
	cmp	byte ptr [rsp + 0xe7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	lea	rsi, [rsi]
	mov	rbp, r12
	lea	rdi, [rdi]
	mov	r12b, byte ptr [rsp + 0x67]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xe8]
	je	.label_306
	jmp	.label_260
.label_370:
	mov	rsp, rsp
	mov	r10, rbx
	mov	rsp, rsp
	mov	r8b, r15b
	mov	rbp, rbp
	mov	r9, r13
	mov	rsp, rsp
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0x67]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xe8]
	nop	dword ptr [rax + rax]
.label_306:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_382
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	nop	
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_285]]
.label_629:
	mov	rsp, rsp
	test	rdi, rdi
	mov	rbp, rbp
	jne	.label_292
	mov	rbp, rbp
	jmp	.label_298
.label_633:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	cmp	rbp, -1
	nop	
	je	.label_299
	lea	rdi, [rdi]
	test	rdi, rdi
	nop	
	jne	.label_303
	nop	
	cmp	rbp, 1
	je	.label_298
	xor	r13d, r13d
	jmp	.label_261
.label_622:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xc3], 0
	je	.label_315
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_260
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_327
	mov	al, r14b
	and	al, 1
	jne	.label_329
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x58], r10
	nop	
	jae	.label_378
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x27
.label_378:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	nop	
	jae	.label_344
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_344:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_351
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_351:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	add	rax, 3
	mov	rsp, rsp
	mov	r14b, 1
	mov	rbp, rbp
	mov	rcx, rax
	jmp	.label_350
.label_623:
	mov	rbp, rbp
	mov	bl, 0x62
	mov	rsp, rsp
	jmp	.label_361
.label_624:
	lea	rsi, [rsi]
	mov	cl, 0x74
	jmp	.label_317
.label_625:
	mov	rsp, rsp
	mov	bl, 0x76
	nop	
	jmp	.label_361
.label_626:
	mov	bl, 0x66
	jmp	.label_361
.label_627:
	lea	rsi, [rsi]
	mov	cl, 0x72
	jmp	.label_317
.label_630:
	mov	al, 1
	mov	qword ptr [rsp + 0x68], rax
	lea	rdi, [rdi]
	cmp	r9d, 2
	jne	.label_369
	cmp	byte ptr [rsp + 0xe7], 0
	nop	
	jne	.label_373
	mov	rsp, rsp
	test	r10, r10
	lea	rsi, [rsi]
	sete	al
	mov	rcx, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rdi, [rdi]
	test	rdx, rdx
	setne	cl
	or	cl, al
	lea	rdi, [rdi]
	cmove	rdx, r10
	nop	
	mov	qword ptr [rsp + 0xd8], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0x58], r10
	lea	rdi, [rdi]
	jae	.label_304
	nop	
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_304:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_282
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x5c
.label_282:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_278
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_278:
	add	qword ptr [rsp + 0x58], 3
	xor	r14d, r14d
.label_369:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_261
.label_631:
	cmp	r9d, 5
	lea	rdi, [rdi]
	je	.label_296
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_292
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_292
	mov	rbp, rbp
	jmp	.label_308
.label_632:
	lea	rdi, [rdi]
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_310
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_316
	lea	rdi, [rdi]
	jmp	.label_323
.label_382:
	mov	qword ptr [rsp + 0x80], r9
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x43], r8b
	mov	qword ptr [rsp + 0x110], r10
	cmp	qword ptr [rsp + 0xb8], 1
	jne	.label_339
	nop	
	mov	r13d, r14d
	mov	rsp, rsp
	mov	r14, r11
	nop	
	mov	rbx, rdi
	call	__ctype_b_loc
	mov	rdi, rbx
	mov	r11, r14
	lea	rsi, [rsi]
	mov	r14d, r13d
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	lea	rsi, [rsi]
	mov	eax, 1
.label_268:
	mov	rbp, rbp
	and	r13b, 1
	mov	cl, r13b
	mov	rsp, rsp
	or	cl, byte ptr [rsp + 0x97]
	cmp	rax, 1
	nop	
	mov	r10, qword ptr [rsp + 0x110]
	mov	r8b, byte ptr [rsp + 0x43]
	mov	r9, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	ja	.label_349
	lea	rdi, [rdi]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_349
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_261
.label_299:
	test	rdi, rdi
	jne	.label_354
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_354
.label_298:
	mov	dl, 1
.label_628:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x66], 0
	lea	rsi, [rsi]
	je	.label_367
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, dl
	mov	rsp, rsp
	jmp	.label_261
.label_315:
	cmp	dword ptr [rsp + 0x3c], 0
	jne	.label_343
	jmp	.label_292
.label_310:
	cmp	byte ptr [rsp + 0x57], 0
	mov	cl, r15b
	je	.label_317
.label_316:
	xor	eax, eax
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_377
.label_317:
	cmp	byte ptr [rsp + 0x66], 0
	mov	bl, cl
	lea	rdi, [rdi]
	je	.label_355
.label_361:
	xor	eax, eax
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc3], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_261
	lea	rsi, [rsi]
	jmp	.label_280
.label_339:
	mov	qword ptr [rsp + 0x98], 0
	cmp	rbp, -1
	jne	.label_269
	mov	rbp, rdi
	nop	
	mov	rdi, r11
	lea	rdi, [rdi]
	mov	rbx, r11
	call	strlen
	lea	rdi, [rdi]
	mov	rdi, rbp
	nop	
	mov	r11, rbx
	nop	
	mov	rbp, rax
.label_269:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc8], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	mov	r13b, 1
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	lea	rbx, [rsp + 0x98]
.label_372:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xe8], rax
	mov	qword ptr [rsp + 0xa8], rdi
	lea	rax, [rax + rdi]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	lea	rsi, [r11 + rax]
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xc4]
	mov	rsp, rsp
	mov	rcx, rbx
	call	rpl_mbrtowc
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_311
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	movabs	rsi, 0x20000002b
	je	.label_319
	lea	rsi, [rsi]
	cmp	rbp, -2
	nop	
	mov	rdi, qword ptr [rsp + 0xa8]
	je	.label_328
	lea	rsi, [rsi]
	cmp	rbp, 1
	seta	al
	lea	rdi, [rdi]
	and	al, byte ptr [rsp + 0x77]
	movzx	eax, al
	nop	
	cmp	eax, 1
	jne	.label_334
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	lea	rax, [rcx + rax]
	nop	
	mov	ecx, 1
	nop	
.label_357:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_348
	lea	rdi, [rdi]
	bt	rsi, rdx
	jb	.label_290
.label_348:
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	cmp	rcx, rbp
	jb	.label_357
.label_334:
	nop	
	mov	edi, dword ptr [rsp + 0xc4]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	nop	
	jne	.label_297
	xor	r13d, r13d
.label_297:
	mov	rax, qword ptr [rsp + 0xe8]
	add	rax, rbp
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rbp, rbp
	call	mbsinit
	test	eax, eax
	mov	rax, rbp
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	je	.label_372
	mov	rsp, rsp
	jmp	.label_268
.label_354:
	lea	rsi, [rsi]
	mov	rbp, -1
	mov	rbp, rbp
	xor	r13d, r13d
	jmp	.label_261
.label_296:
	cmp	dword ptr [rsp + 0x44], 0
	lea	rdi, [rdi]
	je	.label_292
	lea	rcx, [rdi + 2]
	mov	rsp, rsp
	cmp	rcx, rbp
	jae	.label_292
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_292
	lea	rsi, [rsi]
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	edx, 0x3e
	ja	.label_266
	nop	
	movabs	rsi, 0x7000a38200000000
	mov	rsp, rsp
	bt	rsi, rdx
	mov	rsp, rsp
	jae	.label_320
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_275
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_279
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rsi], 0x3f
.label_279:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_289
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x22
.label_289:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_346
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rsi + rax], 0x22
.label_346:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 3]
	cmp	rax, r10
	nop	
	jae	.label_265
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x3f
.label_265:
	mov	rbp, rbp
	add	qword ptr [rsp + 0x58], 4
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	lea	rdi, [rdi]
	xor	r13d, r13d
	jmp	.label_261
.label_292:
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_261:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x65], 0
	lea	rsi, [rsi]
	je	.label_331
	cmp	qword ptr [rsp + 0x150], 0
	mov	rsp, rsp
	jne	.label_338
	lea	rsi, [rsi]
	jmp	.label_342
.label_331:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_342
.label_338:
	mov	cl, r15b
	shr	cl, 5
	lea	rdi, [rdi]
	movzx	edx, cl
	nop	
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	nop	
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_345
	mov	rcx, qword ptr [rsp + 0x150]
	nop	
	and	esi, dword ptr [rcx + rdx*4]
	mov	rsp, rsp
	jmp	.label_353
	nop	word ptr cs:[rax + rax]
.label_342:
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rdi, [rdi]
	test	cl, cl
.label_353:
	mov	rbp, rbp
	mov	bl, r15b
	je	.label_377
	mov	rsp, rsp
	jmp	.label_280
.label_345:
	mov	bl, r15b
.label_280:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_260
	nop	
	cmp	r9d, 2
	jne	.label_301
	lea	rdi, [rdi]
	mov	al, r14b
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_301
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_281
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_281:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	cmp	rax, r10
	jae	.label_379
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_379:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_283
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_283:
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_301:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_263
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x5c
.label_263:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	jmp	.label_271
.label_303:
	xor	r13d, r13d
	nop	
	jmp	.label_261
.label_349:
	mov	rsp, rsp
	add	rax, rdi
	mov	qword ptr [rsp + 0xe8], rax
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_274
	nop	dword ptr [rax + rax]
.label_293:
	inc	qword ptr [rsp + 0x58]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_274:
	test	cl, cl
	je	.label_284
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x10c]
	test	dl, 1
	mov	rbp, rbp
	je	.label_286
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_294
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x5c
.label_294:
	lea	rsi, [rsi]
	inc	qword ptr [rsp + 0x58]
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_286
	nop	dword ptr [rax]
.label_284:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_260
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_318
	mov	al, r14b
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_318
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_336
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rdx], 0x27
.label_336:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	inc	rax
	cmp	rax, r10
	jae	.label_332
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], 0x24
.label_332:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_295
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rdx + rax], 0x27
.label_295:
	mov	rsp, rsp
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_318:
	cmp	qword ptr [rsp + 0x58], r10
	lea	rsi, [rsi]
	jae	.label_365
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rax + rdx], 0x5c
.label_365:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_360
	mov	dl, r15b
	shr	dl, 6
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], dl
.label_360:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_366
	lea	rsi, [rsi]
	mov	dl, r15b
	lea	rdi, [rdi]
	shr	dl, 3
	mov	rsp, rsp
	and	dl, 7
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rsi + rax], dl
.label_366:
	nop	
	add	qword ptr [rsp + 0x58], 3
	mov	rbp, rbp
	and	r15b, 7
	nop	
	or	r15b, 0x30
	mov	rsp, rsp
	mov	al, 1
.label_286:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xe8], rdx
	jbe	.label_377
	lea	rsi, [rsi]
	test	r14b, 1
	je	.label_384
	mov	bl, al
	nop	
	and	bl, 1
	lea	rdi, [rdi]
	jne	.label_384
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_264
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_264:
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	inc	rsi
	mov	rsp, rsp
	cmp	rsi, r10
	lea	rsi, [rsi]
	jae	.label_273
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdi + rsi], 0x27
	mov	rbp, rbp
	mov	rdi, rbx
.label_273:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_384:
	nop	
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_293
	mov	rsi, qword ptr [rsp + 0xb0]
	nop	
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rsi + rdi], r15b
	lea	rdi, [rdi]
	mov	rdi, rbx
	jmp	.label_293
	nop	word ptr cs:[rax + rax]
.label_377:
	test	r14b, 1
	lea	rsi, [rsi]
	je	.label_305
	mov	rsp, rsp
	and	al, 1
	jne	.label_305
	cmp	qword ptr [rsp + 0x58], r10
	mov	rsp, rsp
	jae	.label_270
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_270:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_321
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_321:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_305:
	mov	rsp, rsp
	mov	bl, r15b
.label_271:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_287
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], bl
.label_287:
	nop	
	inc	qword ptr [rsp + 0x58]
	nop	
	shl	r13b, 7
	mov	rsp, rsp
	sar	r13b, 7
	and	r13b, r8b
	mov	rbp, rbp
	mov	r8b, r13b
	jmp	.label_343
.label_327:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	jmp	.label_350
.label_329:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
.label_350:
	lea	rsi, [rsi]
	cmp	rcx, r10
	lea	rsi, [rsi]
	jae	.label_356
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax + rcx], 0x5c
.label_356:
	nop	
	lea	rax, [rcx + 1]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rax
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	r15b, 0x30
	cmp	r9d, 2
	lea	rsi, [rsi]
	je	.label_277
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_363
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	cmp	edx, 9
	lea	rsi, [rsi]
	ja	.label_352
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_368
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x30
.label_368:
	lea	rsi, [rsi]
	lea	rdx, [rcx + 2]
	lea	rdi, [rdi]
	cmp	rdx, r10
	nop	
	jae	.label_375
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rdx], 0x30
.label_375:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x58], rcx
	jmp	.label_261
.label_277:
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_261
.label_363:
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	
	jmp	.label_261
.label_352:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_261
.label_319:
	xor	r13d, r13d
.label_311:
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_268
.label_328:
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	rbp, rcx
	lea	rsi, [rsi]
	jbe	.label_276
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
.label_291:
	cmp	byte ptr [r11 + rcx], 0
	nop	
	je	.label_288
	mov	rbp, rbp
	lea	rcx, [rax + rdi + 1]
	nop	
	inc	rax
	mov	rbp, rbp
	cmp	rcx, rbp
	mov	rsp, rsp
	jb	.label_291
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_268
.label_276:
	mov	rsp, rsp
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_268
.label_288:
	nop	
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_268
.label_266:
	xor	r13d, r13d
	jmp	.label_261
.label_320:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_261
.label_309:
	nop	
	mov	r13, rdi
.label_312:
	mov	rsp, rsp
	cmp	r9d, 2
	mov	rsp, rsp
	setne	al
	cmp	qword ptr [rsp + 0x58], 0
	lea	rsi, [rsi]
	setne	dl
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_325
	mov	rsp, rsp
	or	al, dl
	mov	rbp, rbp
	je	.label_337
.label_325:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], r14d
	mov	qword ptr [rsp + 0x88], r11
	cmp	r9d, 2
	lea	rsi, [rsi]
	setne	al
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rdi, [rdi]
	setne	dl
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x68]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0xa7]
	nop	
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_340
	mov	rsp, rsp
	or	al, dl
	lea	rsi, [rsi]
	jne	.label_340
	test	r8b, 1
	mov	rbp, rbp
	jne	.label_267
	cmp	qword ptr [rsp + 0xd8], 0
	je	.label_340
	test	r10, r10
	mov	r15d, r9d
	mov	rbp, rbp
	mov	al, bl
	nop	
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0xd8]
	lea	rsi, [rsi]
	je	.label_362
.label_340:
	mov	rdx, qword ptr [rsp + 0x20]
	test	rdx, rdx
	je	.label_359
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rsi, [rsi]
	jne	.label_359
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	test	al, al
	je	.label_359
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_381:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_376
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rsi], al
.label_376:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	mov	rbp, rbp
	jne	.label_381
.label_359:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_262
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0
	lea	rdi, [rdi]
	jmp	.label_262
.label_367:
	lea	rdi, [rdi]
	mov	r9d, 2
	nop	
	jmp	.label_260
.label_290:
	mov	rsp, rsp
	mov	r9d, 2
	nop	
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rdi, [rdi]
	jmp	.label_260
.label_337:
	nop	
	mov	rbp, r13
	jmp	.label_260
.label_355:
	lea	rdi, [rdi]
	mov	r9d, 2
.label_260:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc3], 0
	lea	rdi, [rdi]
	mov	r8d, 4
	cmove	r8d, r9d
	lea	rdi, [rdi]
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x38]
	and	r9d, 0xfffffffd
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x100]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rsi, r10
	nop	
	mov	rdx, r11
	lea	rdi, [rdi]
	mov	rcx, rbp
.label_374:
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
.label_262:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	add	rsp, 0x118
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_267:
	mov	rax, qword ptr [rsp + 0x100]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp], rax
	nop	
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rcx, r13
	mov	r9d, dword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	jmp	.label_374
.label_373:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_260
.label_323:
	mov	r9d, 2
	lea	rsi, [rsi]
	jmp	.label_260
.label_308:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_260
.label_275:
	lea	rsi, [rsi]
	mov	r9d, 5
	mov	rbp, rbp
	jmp	.label_260
.label_341:
	nop	
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405fa0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rdi, [rdi]
	push	r12
	nop	
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x38
	lea	rsi, [rsi]
	mov	r12, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rbx
	mov	rbp, rbp
	test	rdx, rdx
	lea	rdi, [rdi]
	mov	r14d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r14, rdx
	lea	rsi, [rsi]
	call	__errno_location
	mov	qword ptr [rsp + 0x28], rax
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x24], ecx
	mov	rsp, rsp
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	mov	rbp, rbp
	or	ebp, 1
	mov	rbp, rbp
	lea	r15, [r14 + 8]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp], r15
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	rdx, rbx
	lea	rsi, [rsi]
	mov	rcx, r12
	lea	rdi, [rdi]
	mov	r9d, ebp
	nop	
	call	quotearg_buffer_restyled
	mov	rsp, rsp
	mov	rbx, rax
	lea	rdi, [rdi]
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	lea	rsi, [rsi]
	mov	r13, rax
	nop	
	mov	r8d, dword ptr [r14]
	mov	rax, qword ptr [r14 + 0x28]
	nop	
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], r15
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	rcx, r12
	mov	r9d, ebp
	lea	rsi, [rsi]
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x24]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	mov	rsp, rsp
	add	rsp, 0x38
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4060e0
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
	mov	qword ptr [rsp + 0x40], r14
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r12, rcx
	mov	rbp, rbp
	call	__errno_location
	mov	qword ptr [rsp + 0x20], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x3c], ecx
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
	call	xmalloc
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
	mov	rdx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x3c]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	dword ptr [rdx], ecx
	je	.label_385
	mov	qword ptr [rax], rbx
.label_385:
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
	#Procedure 0x406230
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_386
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_390:
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
	jl	.label_390
.label_386:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_389
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_387]], OFFSET FLAT:slot0
.label_389:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_388
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_388:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4062f0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x406300

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
	mov	qword ptr [rsp + 0x20], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_394
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_396
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_392
.label_396:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_397
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
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
	jne	.label_393
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_393:
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
.label_392:
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
	mov	qword ptr [rsp + 0x30], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	mov	rsp, rsp
	lea	rdx, [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], rdx
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
	mov	rdx, qword ptr [rsp + 0x20]
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	nop	
	mov	r14, rax
	cmp	r15, r14
	ja	.label_391
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
	je	.label_395
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_395:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	call	xmalloc
	mov	rbx, rax
	nop	
	mov	qword ptr [rbp], rbx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rcx]
	nop	
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
.label_391:
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x1c]
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
.label_394:
	lea	rdi, [rdi]
	call	abort
.label_397:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x406570
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406580
	.globl quotearg
	.type quotearg, @function
quotearg:

	nop
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	nop	
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4065b0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rdi, [rdi]
	xor	edi, edi
	mov	ecx, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	mov	rsi, rdx
	mov	rdx, rax
	lea	rdi, [rdi]
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4065e0
	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:

	nop
	sub	rsp, 0x78
	mov	rbp, rbp
	mov	rax, rdx
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp + 0x30], 0
	lea	rdi, [rdi]
	cmp	esi, 0xa
	je	.label_398
	mov	dword ptr [rsp + 0x40], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x64], xmm2
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x54], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [rsp + 0x44], xmm0
	mov	rbp, rbp
	lea	rcx, [rsp + 0x40]
	mov	rdx, -1
	mov	rsp, rsp
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_398:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406670

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	mov	rbp, rbp
	sub	rsp, 0x78
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp + 0x30], 0
	lea	rdi, [rdi]
	cmp	esi, 0xa
	lea	rsi, [rsi]
	je	.label_399
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x40], esi
	nop	
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	nop	
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	nop	
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0x44], xmm0
	mov	rsp, rsp
	lea	rax, [rsp + 0x40]
	mov	rbp, rbp
	mov	rsi, rdx
	nop	
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_399:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406710

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	sub	rsp, 0x78
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	mov	rsp, rsp
	je	.label_400
	mov	dword ptr [rsp + 0x40], edi
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x30]
	nop	
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	mov	rsp, rsp
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	nop	
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x78
	lea	rsi, [rsi]
	ret	
.label_400:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4067a0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	edi, 0xa
	je	.label_401
	mov	dword ptr [rsp + 8], edi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	mov	rsp, rsp
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	nop	
	lea	rcx, [rsp + 8]
	xor	edi, edi
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x78
	ret	
.label_401:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406810
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_402]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_403]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_404]]
	nop	
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp], xmm0
	lea	rsi, [rsi]
	mov	al, cl
	nop	
	shr	al, 5
	movzx	eax, al
	mov	rbp, rbp
	mov	esi, dword ptr [rsp + rax*4 + 8]
	lea	rsi, [rsi]
	mov	edi, esi
	mov	rsp, rsp
	shr	edi, cl
	not	edi
	mov	rbp, rbp
	and	edi, 1
	lea	rsi, [rsi]
	shl	edi, cl
	xor	edi, esi
	nop	
	mov	dword ptr [rsp + rax*4 + 8], edi
	mov	rsp, rsp
	lea	rcx, [rsp]
	xor	edi, edi
	nop	
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, r8
	nop	
	call	quotearg_n_options
	nop	
	add	rsp, 0x38
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4068b0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_402]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_403]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_404]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dl, cl
	mov	rbp, rbp
	shr	dl, 5
	lea	rsi, [rsi]
	movzx	edx, dl
	lea	rsi, [rsi]
	mov	esi, dword ptr [rsp + rdx*4 + 8]
	lea	rdi, [rdi]
	mov	edi, esi
	shr	edi, cl
	nop	
	not	edi
	mov	rsp, rsp
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rdx*4 + 8], edi
	mov	rsp, rsp
	lea	rcx, [rsp]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	rdx, -1
	mov	rbp, rbp
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406950

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_402]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_403]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_404]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	mov	rsp, rsp
	lea	rcx, [rsp]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rdx, -1
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	call	quotearg_n_options
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4069c0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_402]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_403]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_404]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rsi, [rsi]
	lea	rcx, [rsp]
	xor	edi, edi
	nop	
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rdi, [rdi]
	call	quotearg_n_options
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a30

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	sub	rsp, 0xb8
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	mov	rbp, rbp
	je	.label_405
	nop	
	mov	ecx, dword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x70], ecx
	mov	rsp, rsp
	movaps	xmm0, xmmword ptr [rsp]
	mov	rbp, rbp
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movaps	xmmword ptr [rsp + 0x60], xmm2
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x50], xmm1
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x80], esi
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x70]
	nop	
	mov	dword ptr [rsp + 0xb4], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	nop	
	movups	xmmword ptr [rsp + 0xa4], xmm2
	lea	rsi, [rsi]
	movups	xmmword ptr [rsp + 0x94], xmm1
	movups	xmmword ptr [rsp + 0x84], xmm0
	or	byte ptr [rsp + 0x8f], 4
	lea	rcx, [rsp + 0x80]
	mov	rdx, -1
	lea	rsi, [rsi]
	mov	rsi, rax
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0xb8
	mov	rsp, rsp
	ret	
.label_405:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406b10
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_402]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_403]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_404]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_406
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_406
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	lea	rsi, [rsi]
	mov	rdx, -1
	lea	rsi, [rsi]
	mov	rsi, rcx
	mov	rcx, rax
	mov	rbp, rbp
	call	quotearg_n_options
	nop	
	add	rsp, 0x38
	ret	
.label_406:
	nop	
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406ba0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_402]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_403]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_404]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_407
	test	rdx, rdx
	je	.label_407
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	nop	
	call	quotearg_n_options
	mov	rbp, rbp
	add	rsp, 0x38
	ret	
.label_407:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c30
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_402]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_403]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_404]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_408
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_408
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rdi, [rdi]
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rbp, rbp
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x38
	lea	rsi, [rsi]
	ret	
.label_408:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406cd0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_402]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_403]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_404]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_409
	test	rsi, rsi
	je	.label_409
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rsi, [rsi]
	lea	rax, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, rax
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x38
	mov	rsp, rsp
	ret	
.label_409:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d70
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d80
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	nop	
	mov	rdx, rdi
	xor	edi, edi
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x406da0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsp, rsp
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406dc0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rdx, -1
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:quote_quoting_options
	lea	rdi, [rdi]
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406df0

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	rbx
	push	rax
	nop	
	mov	ebp, esi
	mov	rbx, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	mov	rbp, rbp
	cmp	rax, rbx
	jne	.label_411
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_413
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_410
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_410
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_410
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_410
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_410
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_410
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_411
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_411
.label_413:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_410
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_410
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_410
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_410
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_410
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_410
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_412
.label_410:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12
	cmove	rax, rcx
.label_411:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_412:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_411
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_411
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406f60

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
	.align	32
	#Procedure 0x406f80

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
	je	.label_414
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
	jmp	.label_417
.label_414:
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
.label_417:
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
	ja	.label_419
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_420]]
.label_595:
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
.label_419:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_416
.label_596:
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
.label_597:
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
.label_598:
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
	jmp	.label_423
.label_599:
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
	jmp	.label_422
.label_600:
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
	jmp	.label_421
.label_601:
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
.label_421:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_422:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_423:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_418
.label_603:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_0
.label_416:
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
	jmp	.label_415
.label_602:
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
.label_415:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_418:
	mov	rbp, rbp
	call	__fprintf_chk
.label_594:
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
	#Procedure 0x407370
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_424:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_424
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4073a0
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_428:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_425
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_427
	nop	word ptr cs:[rax + rax]
.label_425:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_427:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_426
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_428
.label_426:
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
	#Procedure 0x407430

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_429
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x80], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm1
	nop	
	movaps	xmmword ptr [rsp + 0xa0], xmm2
	movaps	xmmword ptr [rsp + 0xb0], xmm3
	nop	
	movaps	xmmword ptr [rsp + 0xc0], xmm4
	nop	
	movaps	xmmword ptr [rsp + 0xd0], xmm5
	movaps	xmmword ptr [rsp + 0xe0], xmm6
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xf0], xmm7
.label_429:
	mov	qword ptr [rsp + 0x78], r9
	nop	
	mov	qword ptr [rsp + 0x70], r8
	lea	rax, [rsp + 0x50]
	mov	qword ptr [rsp + 0x110], rax
	mov	rbp, rbp
	lea	rax, [rsp + 0x120]
	mov	qword ptr [rsp + 0x108], rax
	mov	dword ptr [rsp + 0x104], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x100], 0x20
	xor	r9d, r9d
	mov	rsp, rsp
	mov	r8d, dword ptr [rsp + 0x100]
	nop	word ptr [rax + rax]
.label_431:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_430
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_432
	nop	dword ptr [rax + rax]
.label_430:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_432:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_433
	inc	r9
	cmp	r9, 0xa
	jb	.label_431
.label_433:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407570
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
	.align	32
	#Procedure 0x407600
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	div	rbx
	cmp	rax, rdi
	jb	.label_434
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_435
	test	rax, rax
	je	.label_434
.label_435:
	nop	
	pop	rbx
	ret	
.label_434:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407650

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_436
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_437
.label_436:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_437:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407680
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdx
	nop	
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	cmp	rax, rsi
	jb	.label_439
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_438
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_438
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_438:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_440
	test	rax, rax
	je	.label_439
.label_440:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_439:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407700

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_441
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_441
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_441:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_442
	test	rax, rax
	nop	
	je	.label_443
.label_442:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_443:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407750
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_448
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_444
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_450
.label_448:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_447
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_447:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_449
.label_450:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_446
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_446
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_446:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_445
	test	rax, rax
	mov	rbp, rbp
	je	.label_444
.label_445:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_444:
	call	xalloc_die
.label_449:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407830
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_451
	test	rax, rax
	mov	rbp, rbp
	je	.label_452
.label_451:
	pop	rbx
	ret	
.label_452:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x407850

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_456
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_457
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_455
	call	free
	xor	eax, eax
	jmp	.label_453
.label_456:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_454
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_455:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_453
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_454
.label_453:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_454:
	mov	rbp, rbp
	call	xalloc_die
.label_457:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4078e0
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	rbx, rdi
	nop	
	call	malloc
	mov	r14, rax
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_458
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_459
.label_458:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	memset
	lea	rdi, [rdi]
	mov	rax, r14
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	ret	
.label_459:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407940

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
	jb	.label_460
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_460
	pop	rcx
	ret	
.label_460:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x407970

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	rbx
	nop	
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rdi, rbx
	call	malloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_462
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_461
.label_462:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rbp, rbp
	call	memcpy
	mov	rax, r15
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
.label_461:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4079d0
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	r14, rdi
	call	strlen
	mov	rbp, rbp
	mov	rbx, rax
	lea	rdi, [rbx + 1]
	mov	rbp, rbp
	call	malloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rsp, rsp
	inc	rbx
	lea	rsi, [rsi]
	je	.label_463
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_464
.label_463:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	nop	
	pop	r15
	nop	
	ret	
.label_464:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x407a30

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
	#Procedure 0x407a80

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
	je	.label_465
	lea	rsi, [rsi]
	mov	rsi, rbx
	lea	rdi, [rdi]
	mov	rdx, r12
	mov	rsp, rsp
	mov	rcx, r15
	mov	r8, r14
	lea	rsi, [rsi]
	call	collate_error
.label_465:
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
	.align	32
	#Procedure 0x407af0

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
	.align	32
	#Procedure 0x407c20
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
	je	.label_466
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
.label_466:
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
	.align	32
	#Procedure 0x407ca0

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
	mov	r14, r8
	nop	
	mov	r12d, edx
	mov	rbp, rsi
	mov	rsp, rsp
	mov	rbx, rdi
	cmp	r12d, 0x25
	lea	rsi, [rsi]
	jae	.label_476
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	r15, rax
	mov	rbp, rbp
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	
.label_467:
	mov	rbp, rbp
	movzx	eax, byte ptr [rdx]
	inc	rdx
	mov	rbp, rbp
	test	byte ptr [rcx + rax*2 + 1], 0x20
	lea	rdi, [rdi]
	jne	.label_467
	mov	rbp, rbp
	test	rbp, rbp
	lea	rdi, [rdi]
	lea	rsi, [rsp + 8]
	lea	rsi, [rsi]
	cmovne	rsi, rbp
	movzx	eax, al
	mov	rsp, rsp
	mov	r13d, 4
	cmp	eax, 0x2d
	lea	rsi, [rsi]
	je	.label_474
	mov	rsp, rsp
	mov	rdi, rbx
	mov	edx, r12d
	mov	rbp, rsi
	call	strtoul
	mov	rcx, rbp
	mov	rbp, rax
	mov	rbp, rbp
	mov	r12, qword ptr [rcx]
	mov	rbp, rbp
	cmp	r12, rbx
	mov	rbp, rbp
	je	.label_484
	mov	eax, dword ptr [r15]
	lea	rsi, [rsi]
	xor	ebx, ebx
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_491
	cmp	eax, 0x22
	lea	rsi, [rsi]
	jne	.label_474
	mov	ebx, 1
.label_491:
	test	r14, r14
	jne	.label_472
	mov	rbp, rbp
	jmp	.label_473
.label_484:
	mov	rsp, rsp
	test	r14, r14
	je	.label_474
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	lea	rdi, [rdi]
	je	.label_474
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	mov	rbx, rcx
	call	strchr
	nop	
	mov	rcx, rbx
	mov	rbp, rbp
	xor	ebx, ebx
	mov	rbp, rbp
	mov	ebp, 1
	test	rax, rax
	je	.label_474
.label_472:
	movsx	r13d, byte ptr [r12]
	nop	
	test	r13d, r13d
	mov	rsp, rsp
	je	.label_473
	mov	rsp, rsp
	mov	qword ptr [rsp], rcx
	nop	
	mov	rdi, r14
	mov	esi, r13d
	mov	rsp, rsp
	call	strchr
	test	rax, rax
	je	.label_469
	mov	rsp, rsp
	mov	r15d, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_470
	movabs	rdx, 0x814400308945
	lea	rsi, [rsi]
	bt	rdx, rax
	lea	rdi, [rdi]
	jae	.label_470
	mov	esi, 0x30
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strchr
	nop	
	mov	r15d, 1
	mov	rbp, rbp
	mov	esi, 0x400
	test	rax, rax
	je	.label_470
	movsx	eax, byte ptr [r12 + 1]
	mov	rsp, rsp
	mov	r15d, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	nop	
	je	.label_488
	nop	
	cmp	eax, 0x44
	je	.label_488
	cmp	eax, 0x69
	jne	.label_470
	mov	rbp, rbp
	movzx	eax, byte ptr [r12 + 2]
	lea	rsi, [rsi]
	mov	r15d, 3
	cmp	eax, 0x42
	je	.label_471
	mov	r15d, 1
.label_471:
	lea	rdi, [rdi]
	mov	esi, 0x400
	mov	rsp, rsp
	jmp	.label_470
.label_488:
	mov	r15d, 2
	nop	
	mov	esi, 0x3e8
.label_470:
	cmp	r13d, 0x59
	jg	.label_481
	lea	eax, [r13 - 0x42]
	mov	rbp, rbp
	cmp	eax, 0xe
	ja	.label_482
	jmp	qword ptr [word ptr [+ (rax * 8) + label_483]]
.label_647:
	nop	
	mov	rax, rbp
	shr	rax, 0x36
	setne	dl
	mov	rsp, rsp
	shl	rbp, 0xa
	jmp	.label_486
.label_481:
	cmp	r13d, 0x73
	mov	rbp, rbp
	jg	.label_489
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	ja	.label_490
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_477]]
.label_540:
	nop	
	mov	rax, rbp
	shr	rax, 0x37
	setne	dl
	shl	rbp, 9
.label_486:
	cmp	rax, 1
	mov	rbp, rbp
	sbb	rax, rax
	not	rax
	lea	rdi, [rdi]
	or	rbp, rax
	movzx	eax, dl
	jmp	.label_475
.label_482:
	lea	rdi, [rdi]
	cmp	r13d, 0x54
	lea	rdi, [rdi]
	je	.label_479
	mov	rbp, rbp
	cmp	r13d, 0x59
	jne	.label_469
	mov	rsp, rsp
	mov	rdi, -1
	mov	rax, -1
	nop	
	xor	edx, edx
	mov	rsp, rsp
	div	rsi
	cmp	rax, rbp
	nop	
	sbb	r8b, r8b
	nop	
	mov	rcx, rbp
	lea	rsi, [rsi]
	imul	rcx, rsi
	lea	rdi, [rdi]
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	dl, dl
	mov	rbp, rcx
	imul	rbp, rsi
	lea	rsi, [rsi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	cmovb	rbp, rdi
	lea	rdi, [rdi]
	cmp	rax, rbp
	sbb	r9b, r9b
	lea	rdi, [rdi]
	mov	rcx, rbp
	mov	rbp, rbp
	imul	rcx, rsi
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	cmovb	rcx, rdi
	cmp	rax, rcx
	lea	rsi, [rsi]
	sbb	r10b, r10b
	mov	rbp, rbp
	mov	rbp, rcx
	imul	rbp, rsi
	lea	rdi, [rdi]
	cmp	rax, rcx
	cmovb	rbp, rdi
	mov	rsp, rsp
	cmp	rax, rbp
	mov	rsp, rsp
	sbb	r11b, r11b
	lea	rdi, [rdi]
	mov	rcx, rbp
	imul	rcx, rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rcx, rdi
	lea	rdi, [rdi]
	cmp	rax, rcx
	sbb	r14b, r14b
	nop	
	mov	rbp, rcx
	imul	rbp, rsi
	nop	
	cmp	rax, rcx
	mov	rsp, rsp
	cmovb	rbp, rdi
	nop	
	cmp	rax, rbp
	lea	rsi, [rsi]
	sbb	r13b, r13b
	nop	
	mov	rcx, rbp
	imul	rcx, rsi
	nop	
	cmp	rax, rbp
	cmovb	rcx, rdi
	nop	
	cmp	rax, rcx
	sbb	bpl, bpl
	imul	rsi, rcx
	lea	rsi, [rsi]
	cmp	rax, rcx
	cmovb	rsi, rdi
	nop	
	or	dl, r8b
	lea	rsi, [rsi]
	or	dl, r9b
	or	dl, r10b
	mov	rsp, rsp
	or	dl, r11b
	and	dl, 1
	or	dl, r14b
	mov	rbp, rbp
	or	dl, r13b
	nop	
	or	dl, bpl
	mov	rbp, rbp
	jmp	.label_485
.label_489:
	nop	
	cmp	r13d, 0x74
	mov	rbp, rbp
	je	.label_479
	mov	rsp, rsp
	cmp	r13d, 0x77
	jne	.label_469
	mov	rbp, rbp
	lea	rax, [rbp + rbp]
	lea	rsi, [rsi]
	test	rbp, rbp
	mov	rcx, -1
	cmovns	rcx, rax
	shr	rbp, 0x3f
	mov	rsp, rsp
	mov	eax, ebp
	mov	rbp, rcx
	jmp	.label_475
.label_541:
	lea	rsi, [rsi]
	mov	r8, -1
	mov	rbp, rbp
	mov	rax, -1
	nop	
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	mov	rbp, rbp
	sbb	r9b, r9b
	mov	rsp, rsp
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r8
	mov	rsp, rsp
	cmp	rax, rdi
	lea	rsi, [rsi]
	sbb	dl, dl
	lea	rdi, [rdi]
	mov	rbp, rdi
	imul	rbp, rsi
	lea	rsi, [rsi]
	cmp	rax, rdi
	nop	
	cmovb	rbp, r8
	lea	rsi, [rsi]
	cmp	rax, rbp
	sbb	dil, dil
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, r8
	nop	
	or	dl, r9b
	or	dl, dil
	nop	
	jmp	.label_468
.label_542:
	mov	rbp, rbp
	mov	rdi, -1
	lea	rdi, [rdi]
	mov	rax, -1
	xor	edx, edx
	lea	rsi, [rsi]
	div	rsi
	mov	rsp, rsp
	imul	rsi, rbp
	lea	rdi, [rdi]
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	mov	rsp, rsp
	and	eax, 1
	jmp	.label_478
.label_543:
	mov	r8, -1
	nop	
	mov	rax, -1
	lea	rsi, [rsi]
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	lea	rsi, [rsi]
	sbb	r9b, r9b
	mov	rdi, rbp
	lea	rsi, [rsi]
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r8
	mov	rsp, rsp
	cmp	rax, rdi
	sbb	dl, dl
	imul	rsi, rdi
	lea	rdi, [rdi]
	cmp	rax, rdi
	cmovb	rsi, r8
	or	dl, r9b
	nop	
	jmp	.label_468
.label_479:
	mov	rbp, rbp
	mov	r9, -1
	nop	
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	lea	rdi, [rdi]
	sbb	r8b, r8b
	lea	rdi, [rdi]
	mov	rdi, rbp
	imul	rdi, rsi
	nop	
	cmp	rax, rbp
	mov	rbp, rbp
	cmovb	rdi, r9
	lea	rsi, [rsi]
	cmp	rax, rdi
	mov	rbp, rbp
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	lea	rdi, [rdi]
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	mov	rsp, rsp
	imul	rdi, rsi
	mov	rbp, rbp
	cmp	rax, rbp
	cmovb	rdi, r9
	mov	rbp, rbp
	cmp	rax, rdi
	nop	
	sbb	cl, cl
	imul	rsi, rdi
	cmp	rax, rdi
	lea	rsi, [rsi]
	cmovb	rsi, r9
	lea	rdi, [rdi]
	or	dl, r8b
	mov	rbp, rbp
	or	dl, r10b
	or	dl, cl
	jmp	.label_468
.label_490:
	cmp	r13d, 0x5a
	lea	rdi, [rdi]
	jne	.label_469
	lea	rsi, [rsi]
	mov	rdi, -1
	nop	
	mov	rax, -1
	nop	
	xor	edx, edx
	div	rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	nop	
	sbb	r8b, r8b
	mov	rbp, rbp
	mov	rcx, rbp
	mov	rbp, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rdi, [rdi]
	sbb	dl, dl
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	nop	
	cmp	rax, rbp
	mov	rbp, rbp
	sbb	r9b, r9b
	mov	rcx, rbp
	nop	
	imul	rcx, rsi
	mov	rsp, rsp
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r10b, r10b
	mov	rbp, rbp
	mov	rbp, rcx
	lea	rdi, [rdi]
	imul	rbp, rsi
	lea	rsi, [rsi]
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rsp, rsp
	mov	rcx, rbp
	imul	rcx, rsi
	lea	rdi, [rdi]
	cmp	rax, rbp
	cmovb	rcx, rdi
	nop	
	cmp	rax, rcx
	sbb	r14b, r14b
	mov	rbp, rcx
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rdi, [rdi]
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	cl, cl
	imul	rsi, rbp
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rsi, rdi
	mov	rbp, rbp
	or	dl, r8b
	or	dl, r9b
	lea	rsi, [rsi]
	or	dl, r10b
	lea	rsi, [rsi]
	and	dl, 1
	or	dl, r11b
	mov	rbp, rbp
	or	dl, r14b
	or	dl, cl
.label_485:
	lea	rsi, [rsi]
	movzx	eax, dl
	and	eax, 1
	jmp	.label_478
.label_469:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rax], rbp
	or	ebx, 2
	mov	rsp, rsp
	jmp	.label_487
.label_648:
	lea	rdi, [rdi]
	mov	r9, -1
	mov	rbp, rbp
	mov	rax, -1
	xor	edx, edx
	mov	rbp, rbp
	div	rsi
	cmp	rax, rbp
	mov	rbp, rbp
	sbb	r8b, r8b
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rbp, rbp
	imul	rdi, rsi
	mov	rsp, rsp
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	nop	
	sbb	dl, dl
	mov	rbp, rdi
	lea	rsi, [rsi]
	imul	rbp, rsi
	mov	rsp, rsp
	cmp	rax, rdi
	cmovb	rbp, r9
	mov	rsp, rsp
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rbp, rbp
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	nop	
	cmp	rax, rdi
	sbb	r11b, r11b
	mov	rbp, rbp
	mov	rbp, rdi
	nop	
	imul	rbp, rsi
	cmp	rax, rdi
	nop	
	cmovb	rbp, r9
	mov	rbp, rbp
	cmp	rax, rbp
	sbb	r14b, r14b
	nop	
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	bpl, bpl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	or	dl, r10b
	lea	rsi, [rsi]
	or	dl, r11b
	lea	rsi, [rsi]
	or	dl, r14b
	lea	rdi, [rdi]
	or	dl, bpl
.label_468:
	lea	rdi, [rdi]
	and	dl, 1
	lea	rsi, [rsi]
	movzx	eax, dl
.label_478:
	mov	rbp, rsi
.label_475:
	or	eax, ebx
	nop	
	lea	rcx, [r12 + r15]
	mov	rdx, qword ptr [rsp]
	mov	rbp, rbp
	mov	qword ptr [rdx], rcx
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + r15], 0
	mov	rbp, rbp
	je	.label_480
	or	eax, 2
.label_480:
	mov	ebx, eax
.label_473:
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	qword ptr [rax], rbp
.label_487:
	mov	r13d, ebx
.label_474:
	mov	eax, r13d
	mov	rsp, rsp
	add	rsp, 0x18
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_649:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	mov	rbp, rbp
	sbb	r8b, r8b
	mov	rdx, rbp
	lea	rsi, [rsi]
	imul	rdx, rsi
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	cmovb	rdx, rdi
	cmp	rax, rdx
	sbb	cl, cl
	lea	rdi, [rdi]
	mov	rbp, rdx
	nop	
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rdx
	cmovb	rbp, rdi
	cmp	rax, rbp
	nop	
	sbb	r9b, r9b
	lea	rsi, [rsi]
	mov	rdx, rbp
	lea	rsi, [rsi]
	imul	rdx, rsi
	nop	
	cmp	rax, rbp
	mov	rbp, rbp
	cmovb	rdx, rdi
	nop	
	cmp	rax, rdx
	mov	rsp, rsp
	sbb	r10b, r10b
	mov	rbp, rbp
	mov	rbp, rdx
	mov	rbp, rbp
	imul	rbp, rsi
	lea	rdi, [rdi]
	cmp	rax, rdx
	cmovb	rbp, rdi
	nop	
	cmp	rax, rbp
	sbb	dl, dl
	lea	rsi, [rsi]
	imul	rsi, rbp
	cmp	rax, rbp
	lea	rdi, [rdi]
	cmovb	rsi, rdi
	mov	rbp, rbp
	or	cl, r8b
	or	cl, r9b
	or	cl, r10b
	nop	
	or	cl, dl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	jmp	.label_478
.label_476:
	mov	edi, OFFSET FLAT:.str_6
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_6
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoul
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408580

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_492
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_493
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
	je	.label_493
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
.label_492:
	mov	ecx, 1
.label_493:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4085f0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	call	fileno
	mov	rbp, rbp
	test	eax, eax
	js	.label_494
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_496
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
	je	.label_494
.label_496:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_494
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_495
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_495:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_494:
	lea	rsi, [rsi]
	mov	rdi, rbx
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	nop	
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x4086a0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0xd0
	mov	rsp, rsp
	mov	ebx, edi
	test	al, al
	je	.label_504
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x50], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm6
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_504:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	nop	
	mov	qword ptr [rsp + 0x18], rcx
	nop	
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	lea	rax, [rsp]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc0], rax
	nop	
	lea	rax, [rsp + 0xf0]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xb0], 0x10
	lea	rsi, [rsi]
	cmp	esi, 0xb
	mov	rsp, rsp
	ja	.label_517
	lea	rsi, [rsi]
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_512
	mov	eax, 0x514
	mov	rsp, rsp
	bt	eax, esi
	lea	rdi, [rdi]
	jb	.label_511
	mov	rsp, rsp
	test	esi, esi
	jne	.label_517
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	lea	rsi, [rsi]
	ja	.label_497
	lea	rdi, [rdi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_503
.label_517:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_509
	mov	ecx, 0x85
	mov	rbp, rbp
	bt	ecx, eax
	lea	rsi, [rsi]
	jb	.label_511
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_510
.label_512:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_508
.label_511:
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rsp, rsp
	cmp	rcx, 0x28
	nop	
	ja	.label_516
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_498
.label_516:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_498:
	mov	edx, dword ptr [rax]
.label_513:
	nop	
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
.label_508:
	mov	ebp, eax
.label_506:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_510:
	lea	rsi, [rsi]
	cmp	eax, 6
	jne	.label_509
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_515
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_514
.label_509:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_501
	mov	rax, rcx
	lea	rsi, [rsi]
	add	rax, qword ptr [rsp + 0xc0]
	nop	
	lea	ecx, [rcx + 8]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_505
.label_497:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_503:
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax]
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_513
.label_515:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_514:
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_502
	mov	esi, 0x406
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, ebx
	mov	edx, r14d
	lea	rsi, [rsi]
	call	fcntl
	lea	rdi, [rdi]
	mov	ebp, eax
	lea	rsi, [rsi]
	test	ebp, ebp
	jns	.label_507
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_507
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	nop	
	mov	edx, r14d
	lea	rdi, [rdi]
	call	fcntl
	nop	
	mov	ebp, eax
	lea	rdi, [rdi]
	test	ebp, ebp
	js	.label_506
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	rsp, rsp
	mov	al, 1
	jmp	.label_500
.label_507:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_506
.label_501:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_505:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	nop	
	mov	edi, ebx
	lea	rdi, [rdi]
	call	fcntl
	nop	
	jmp	.label_508
.label_502:
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, ebx
	nop	
	mov	edx, r14d
	lea	rsi, [rsi]
	call	fcntl
	mov	ebp, eax
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	sete	al
.label_500:
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_506
	test	ebp, ebp
	lea	rsi, [rsi]
	js	.label_506
	mov	esi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_499
	or	ecx, 1
	mov	esi, 2
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	edi, ebp
	nop	
	mov	edx, ecx
	lea	rsi, [rsi]
	call	fcntl
	lea	rdi, [rdi]
	cmp	eax, -1
	jne	.label_506
.label_499:
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	nop	
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	mov	rsp, rsp
	jmp	.label_506
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x408a70

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_518
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_518
	test	byte ptr [rbx + 1], 1
	je	.label_518
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_518:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408ab0

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
	jne	.label_519
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_519
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_520
.label_519:
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
.label_520:
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
	je	.label_521
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_521:
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
	#Procedure 0x408b60

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
	je	.label_522
	nop	
	cmp	r15, -2
	jb	.label_522
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_522
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_522:
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
	#Procedure 0x408bf0

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
	mov	ebp, dword ptr [rbx]
	mov	rbp, rbp
	mov	rdi, rbx
	call	rpl_fclose
	test	bpl, 0x20
	nop	
	jne	.label_523
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_524
	test	cl, cl
	mov	rsp, rsp
	jne	.label_524
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_524
.label_523:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_524
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_524:
	mov	eax, ebx
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408c80

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
	je	.label_525
	nop	
	mov	rax, rcx
.label_525:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408cc0

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
	sub	rsp, 0x38
	nop	
	mov	rbx, rcx
	mov	r14, rdx
	mov	rbp, rsi
	mov	r12, rdi
	nop	
	cmp	rbp, rbx
	mov	rbp, rbp
	jne	.label_526
	mov	rdi, r12
	nop	
	mov	rsi, r14
	mov	rdx, rbp
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_531
.label_526:
	mov	rsp, rsp
	mov	al, byte ptr [r12 + rbp]
	mov	byte ptr [rsp + 0x37], al
	mov	al, byte ptr [r14 + rbx]
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x17], al
	mov	byte ptr [r12 + rbp], 0
	nop	
	mov	byte ptr [r14 + rbx], 0
	lea	r13, [rbp + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	lea	r15, [rbx + 1]
	nop	
	mov	qword ptr [rsp + 0x18], rbx
	call	__errno_location
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rbp, r14
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r14
	mov	r14, r12
	mov	qword ptr [rsp + 0x20], r12
	nop	word ptr cs:[rax + rax]
.label_530:
	mov	dword ptr [rbx], 0
	mov	rdi, r14
	mov	rsi, rbp
	call	strcoll
	nop	
	test	eax, eax
	jne	.label_529
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strlen
	mov	r12, rax
	mov	rsp, rsp
	inc	r12
	mov	rdi, rbp
	call	strlen
	lea	rdi, [rdi]
	inc	rax
	mov	rbp, rbp
	sub	r13, r12
	nop	
	je	.label_528
	lea	rsi, [rsi]
	add	rbp, rax
	lea	rdi, [rdi]
	add	r14, r12
	lea	rdi, [rdi]
	sub	r15, rax
	mov	eax, 1
	jne	.label_530
	lea	rdi, [rdi]
	jmp	.label_529
.label_528:
	nop	
	xor	ecx, ecx
	cmp	r15, rax
	mov	rbp, rbp
	mov	eax, 0xffffffff
	cmove	eax, ecx
.label_529:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	bl, byte ptr [rsp + 0x37]
	mov	byte ptr [rdx + rcx], bl
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 8]
	mov	bl, byte ptr [rsp + 0x17]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], bl
	lea	rdi, [rdi]
	jmp	.label_527
.label_531:
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_527:
	lea	rsi, [rsi]
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	mov	rbp, rbp
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408e40

	.globl memcoll0
	.type memcoll0, @function
memcoll0:
	push	rbp
	push	r15
	nop	
	push	r14
	mov	rbp, rbp
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	lea	rsi, [rsi]
	push	rax
	nop	
	mov	r14, rcx
	mov	r12, rdx
	nop	
	mov	r15, rsi
	nop	
	mov	rbx, rdi
	nop	
	cmp	r15, r14
	mov	rsp, rsp
	jne	.label_532
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r15
	mov	rbp, rbp
	call	memcmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_536
.label_532:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	mov	r13, rax
	nop	word ptr [rax + rax]
.label_533:
	mov	rsp, rsp
	mov	dword ptr [r13], 0
	mov	rdi, rbx
	mov	rsi, r12
	nop	
	call	strcoll
	test	eax, eax
	jne	.label_534
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	lea	rdi, [rdi]
	inc	rbp
	lea	rsi, [rsi]
	mov	rdi, r12
	call	strlen
	lea	rsi, [rsi]
	inc	rax
	sub	r15, rbp
	lea	rdi, [rdi]
	je	.label_535
	nop	
	add	r12, rax
	nop	
	add	rbx, rbp
	lea	rsi, [rsi]
	sub	r14, rax
	nop	
	mov	eax, 1
	mov	rbp, rbp
	jne	.label_533
	nop	
	jmp	.label_534
.label_535:
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	r14, rax
	mov	eax, 0xffffffff
	lea	rdi, [rdi]
	cmove	eax, ecx
	mov	rsp, rsp
	jmp	.label_534
.label_536:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_534:
	mov	rbp, rbp
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	nop	
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section .text
	.align	32
	#Procedure 0x408f50

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