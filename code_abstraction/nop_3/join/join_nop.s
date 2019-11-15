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
	sub	rsp, 0x88
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	ebp, edi
	mov	dword ptr [rsp + 0x34], 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x78], 0
	mov	dword ptr [rsp + 0x4c], 0
	nop	
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	nop	
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_1
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
	mov	byte ptr [byte ptr [rip + label_86]],  0
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
	je	.label_138
	lea	rsi, [rsi]
	lea	r14, [rsp + 0x5c]
	lea	r15, [rsp + 0x50]
	jmp	.label_105
.label_103:
	mov	rsp, rsp
	movzx	eax, al
	cmp	eax, 0x32
	lea	rsi, [rsi]
	sete	al
	movzx	eax, al
	inc	dword ptr [rsp + rax*4 + 0x78]
	mov	rsp, rsp
	inc	eax
	nop	
	mov	dword ptr [rsp + 0x5c], eax
	jmp	.label_26
	nop	word ptr cs:[rax + rax]
.label_105:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x5c], 0
	cmp	eax, 0x6e
	jg	.label_121
	lea	rsi, [rsi]
	cmp	eax, 0x30
	lea	rdi, [rdi]
	jle	.label_125
	lea	ecx, [rax - 0x61]
	cmp	ecx, 9
	ja	.label_128
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_131]]
.label_607:
	mov	r12, rbx
	mov	rbp, rbp
	mov	ebx, ebp
	mov	rdi,  qword ptr [word ptr [rip + empty_filler]]
	test	rdi, rdi
	je	.label_81
	nop	
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	mov	rsi, rbp
	mov	rbp, rbp
	call	strcmp
	nop	
	test	eax, eax
	je	.label_142
	mov	rsp, rsp
	jmp	.label_10
	nop	
.label_121:
	lea	rsi, [rsi]
	lea	ecx, [rax - 0x74]
	cmp	ecx, 0xe
	lea	rdi, [rdi]
	ja	.label_15
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_72]]
.label_645:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	nop	
	mov	dl, byte ptr [rax]
	mov	cl, 0xa
	mov	rsp, rsp
	test	dl, dl
	lea	rsi, [rsi]
	je	.label_21
	mov	cl, byte ptr [rax + 1]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_27
	lea	rsi, [rsi]
	movzx	edx, dl
	lea	rdi, [rdi]
	cmp	edx, 0x5c
	jne	.label_30
	movzx	ecx, cl
	mov	rbp, rbp
	cmp	ecx, 0x30
	jne	.label_30
	cmp	byte ptr [rax + 2], 0
	jne	.label_30
	mov	rsp, rsp
	xor	ecx, ecx
	nop	
	jmp	.label_21
	nop	word ptr [rax + rax]
.label_125:
	lea	rdi, [rdi]
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_50
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsp + 0x68]
	lea	rdx, [rsp + 0x78]
	mov	rbp, rbp
	lea	rcx, [rsp + 0x4c]
	lea	rsi, [rsi]
	lea	r8, [rsp + 0x34]
	mov	r9, r14
	call	add_file_name
	mov	eax, dword ptr [rsp + 0x5c]
	lea	rdi, [rdi]
	jmp	.label_26
.label_128:
	cmp	eax, 0x31
	lea	rsi, [rsi]
	je	.label_76
	cmp	eax, 0x32
	lea	rsi, [rsi]
	jne	.label_79
	mov	r13,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 0xa
	mov	rbp, rbp
	mov	r8d, OFFSET FLAT:.str_1
	nop	
	mov	rdi, r13
	nop	
	mov	rcx, r15
	lea	rdi, [rdi]
	call	xstrtoul
	lea	rdi, [rdi]
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_91
	mov	qword ptr [rsp + 0x50], -1
	mov	rbp, rbp
	mov	r12, -1
	lea	rdi, [rdi]
	jmp	.label_95
.label_15:
	cmp	eax, 0x6f
	lea	rdi, [rdi]
	jne	.label_79
	mov	rsp, rsp
	mov	r12, rbx
	mov	ebx, ebp
	mov	rsp, rsp
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	mov	esi, OFFSET FLAT:.str.18_0
	mov	rdi, rbp
	nop	
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_111
	mov	rdi, rbp
	call	add_field_list
	mov	dword ptr [rsp + 0x5c], 3
	mov	eax, 3
	mov	rsp, rsp
	jmp	.label_115
.label_646:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + print_pairables]],  0
.label_606:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	mov	edx, 0xa
	lea	rdi, [rdi]
	mov	r8d, OFFSET FLAT:.str_1
	mov	rsp, rsp
	mov	rcx, r15
	mov	rbp, rbp
	call	xstrtoul
	test	eax, eax
	nop	
	jne	.label_69
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	lea	rcx, [rax - 1]
	lea	rdi, [rdi]
	cmp	rcx, 2
	mov	rsp, rsp
	jae	.label_69
	cmp	rax, 1
	jne	.label_139
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + print_unpairables_1]],  1
	jmp	.label_12
.label_647:
	mov	byte ptr [byte ptr [rip + eolchar]],  1
	jmp	.label_12
.label_648:
	mov	dword ptr [dword ptr [rip + check_input_order]],  1
	jmp	.label_12
.label_649:
	mov	dword ptr [dword ptr [rip + check_input_order]],  2
	jmp	.label_12
.label_650:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + join_header_lines]],  1
	lea	rdi, [rdi]
	jmp	.label_12
.label_139:
	mov	byte ptr [byte ptr [rip + print_unpairables_2]],  1
	mov	rbp, rbp
	jmp	.label_12
.label_608:
	mov	byte ptr [byte ptr [rip + ignore_case]],  1
	mov	rbp, rbp
	jmp	.label_12
.label_609:
	mov	r13,  qword ptr [word ptr [rip + optarg]]
	mov	al, byte ptr [r13]
	mov	cl, al
	lea	rdi, [rdi]
	add	cl, 0xcf
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, 1
	nop	
	ja	.label_34
	lea	rsi, [rsi]
	cmp	byte ptr [r13 + 1], 0
	mov	rbp, rbp
	jne	.label_34
	movsxd	rcx,  dword ptr [dword ptr [rip + optind]]
	mov	rcx, qword ptr [rbx + rcx*8 - 8]
	add	rcx, 2
	cmp	r13, rcx
	lea	rsi, [rsi]
	je	.label_103
.label_34:
	xor	esi, esi
	mov	edx, 0xa
	mov	rbp, rbp
	mov	r8d, OFFSET FLAT:.str_1
	mov	rdi, r13
	mov	rcx, r15
	call	xstrtoul
	lea	rsi, [rsi]
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_68
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], -1
	nop	
	mov	r12, -1
	jmp	.label_75
.label_76:
	lea	rdi, [rdi]
	mov	r13,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_1
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rcx, r15
	call	xstrtoul
	mov	rsp, rsp
	cmp	eax, 1
	jne	.label_90
	nop	
	mov	qword ptr [rsp + 0x50], -1
	mov	r12, -1
	jmp	.label_92
.label_111:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + autoformat]],  1
	lea	rsi, [rsi]
	jmp	.label_96
.label_91:
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_71
	mov	r12, qword ptr [rsp + 0x50]
	test	r12, r12
	mov	rsp, rsp
	je	.label_71
.label_95:
	lea	rax, [r12 - 1]
	jmp	.label_108
.label_90:
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_71
	mov	r12, qword ptr [rsp + 0x50]
	nop	
	test	r12, r12
	je	.label_71
.label_92:
	lea	rax, [r12 - 1]
	mov	rbp, rbp
	mov	r13,  qword ptr [word ptr [rip + join_field_1]]
	mov	rbp, rbp
	cmp	r13, -1
	lea	rsi, [rsi]
	je	.label_63
	cmp	r13, rax
	mov	rsp, rsp
	jne	.label_16
.label_63:
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + join_field_1]],  rax
	jmp	.label_12
.label_68:
	nop	
	test	eax, eax
	jne	.label_71
	nop	
	mov	r12, qword ptr [rsp + 0x50]
	test	r12, r12
	je	.label_71
.label_75:
	lea	rax, [r12 - 1]
	mov	r13,  qword ptr [word ptr [rip + join_field_1]]
	mov	rbp, rbp
	cmp	r13, -1
	lea	rdi, [rdi]
	je	.label_135
	mov	rbp, rbp
	cmp	r13, rax
	jne	.label_16
.label_135:
	mov	qword ptr [word ptr [rip + join_field_1]],  rax
.label_108:
	mov	r13,  qword ptr [word ptr [rip + join_field_2]]
	mov	rsp, rsp
	cmp	r13, -1
	mov	rsp, rsp
	je	.label_143
	lea	rdi, [rdi]
	cmp	r13, rax
	jne	.label_16
.label_143:
	mov	qword ptr [word ptr [rip + join_field_2]],  rax
	jmp	.label_12
.label_81:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
.label_142:
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + empty_filler]],  rbp
.label_96:
	lea	rsi, [rsi]
	xor	eax, eax
.label_115:
	mov	ebp, ebx
	nop	
	mov	rbx, r12
	jmp	.label_26
.label_27:
	mov	cl, dl
.label_21:
	nop	
	mov	edx,  dword ptr [dword ptr [rip + tab]]
	mov	rsp, rsp
	test	edx, edx
	movzx	eax, cl
	lea	rsi, [rsi]
	js	.label_28
	cmp	edx, eax
	jne	.label_32
.label_28:
	mov	dword ptr [dword ptr [rip + tab]],  eax
	nop	dword ptr [rax]
.label_12:
	lea	rsi, [rsi]
	xor	eax, eax
.label_26:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x34], eax
	mov	edx, OFFSET FLAT:.str.15
	mov	ecx, OFFSET FLAT:longopts
	mov	rsp, rsp
	xor	r8d, r8d
	lea	rdi, [rdi]
	mov	edi, ebp
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	getopt_long
	cmp	eax, -1
	jne	.label_105
.label_138:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x34], 0
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	nop	
	cmp	eax, ebp
	jge	.label_59
	lea	r13, [rsp + 0x78]
	lea	r15, [rsp + 0x4c]
	lea	r12, [rsp + 0x34]
	lea	r14, [rsp + 0x5c]
	nop	word ptr cs:[rax + rax]
.label_43:
	mov	rsp, rsp
	lea	ecx, [rax + 1]
	nop	
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	lea	rdi, [rdi]
	cdqe	
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + rax*8]
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x68]
	mov	rsp, rsp
	mov	rdx, r13
	nop	
	mov	rcx, r15
	mov	r8, r12
	mov	r9, r14
	call	add_file_name
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	mov	rsp, rsp
	cmp	eax, ebp
	jl	.label_43
.label_59:
	mov	eax, dword ptr [rsp + 0x4c]
	mov	rbp, rbp
	cmp	eax, 2
	lea	rsi, [rsi]
	jne	.label_93
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x78], 0
	je	.label_99
	mov	rbx,  qword ptr [word ptr [rip + join_field_1]]
	mov	rsp, rsp
	mov	ebp, 1
	mov	rbp, rbp
	lea	rax, [rbx + 1]
	lea	rsi, [rsi]
	cmp	rax, 2
	jae	.label_101
	mov	qword ptr [word ptr [rip + join_field_1]],  0
	mov	ebx, 1
	lea	rsi, [rsi]
	mov	rbp,  qword ptr [word ptr [rip + join_field_2]]
	lea	rax, [rbp + 1]
	cmp	rax, 2
	nop	
	jae	.label_109
	nop	
	mov	qword ptr [word ptr [rip + join_field_2]],  0
.label_99:
	lea	rdi, [rdi]
	cmp	dword ptr [rsp + 0x7c], 0
	mov	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + join_field_1]]
	je	.label_120
	mov	ebp, 2
	mov	rbp, rbp
	cmp	rbx, 1
	je	.label_124
	lea	rdi, [rdi]
	cmp	rbx, -1
	lea	rdi, [rdi]
	jne	.label_101
.label_124:
	mov	qword ptr [word ptr [rip + join_field_1]],  1
	mov	ebx, 2
	mov	rsp, rsp
	mov	rbp,  qword ptr [word ptr [rip + join_field_2]]
	nop	
	cmp	rbp, 1
	lea	rsi, [rsi]
	je	.label_132
	lea	rdi, [rdi]
	cmp	rbp, -1
	jne	.label_109
.label_132:
	mov	qword ptr [word ptr [rip + join_field_2]],  1
	lea	rdi, [rdi]
	jmp	.label_18
.label_120:
	mov	rbp, rbp
	cmp	rbx, -1
	jne	.label_14
	mov	qword ptr [word ptr [rip + join_field_1]],  0
.label_14:
	cmp	qword ptr [word ptr [rip + join_field_2]],  -1
	jne	.label_18
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + join_field_2]],  0
.label_18:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + g_names]]
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x2d
	mov	rbp, rbp
	jne	.label_25
	cmp	byte ptr [rdi + 1], 0
	je	.label_29
.label_25:
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.27
	call	fopen_safer
	jmp	.label_33
.label_29:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + stdin]]
.label_33:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rax
	nop	
	test	rax, rax
	je	.label_37
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + label_41]]
	nop	
	movzx	eax, byte ptr [rdi]
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	jne	.label_42
	cmp	byte ptr [rdi + 1], 0
	mov	rsp, rsp
	je	.label_55
.label_42:
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.27
	call	fopen_safer
	mov	r13, rax
	jmp	.label_62
.label_55:
	mov	rsp, rsp
	mov	r13,  qword ptr [word ptr [rip + stdin]]
.label_62:
	mov	qword ptr [rsp + 0x28], r13
	test	r13, r13
	mov	rsp, rsp
	je	.label_67
	lea	rdi, [rdi]
	cmp	rbx, r13
	nop	
	je	.label_74
	lea	rsi, [rsi]
	mov	esi, 2
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fadvise
	lea	rdi, [rdi]
	mov	esi, 2
	mov	rdi, r13
	mov	rsp, rsp
	call	fadvise
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 0x80
	lea	rdi, [rdi]
	call	xrealloc
	mov	r14, rax
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14 + 0x70], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [r14 + 0x60], xmm0
	movups	xmmword ptr [r14 + 0x50], xmm0
	movups	xmmword ptr [r14 + 0x40], xmm0
	movups	xmmword ptr [r14 + 0x30], xmm0
	movups	xmmword ptr [r14 + 0x20], xmm0
	nop	
	movups	xmmword ptr [r14 + 0x10], xmm0
	nop	
	movups	xmmword ptr [r14], xmm0
	nop	
	mov	edx, 1
	mov	rdi, rbx
	nop	
	mov	qword ptr [rsp + 0x18], rbx
	lea	rsi, [rsi]
	mov	rsi, r14
	call	get_line
	mov	bpl, al
	xor	edi, edi
	mov	esi, 0x80
	call	xrealloc
	mov	r15, rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x70], xmm0
	movups	xmmword ptr [r15 + 0x60], xmm0
	movups	xmmword ptr [r15 + 0x50], xmm0
	movups	xmmword ptr [r15 + 0x40], xmm0
	movups	xmmword ptr [r15 + 0x30], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [r15 + 0x20], xmm0
	movups	xmmword ptr [r15 + 0x10], xmm0
	movups	xmmword ptr [r15], xmm0
	movzx	ebx, bpl
	lea	rdi, [rdi]
	mov	edx, 2
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rsi, r15
	call	get_line
	movzx	ebp, al
	mov	rbp, rbp
	movzx	eax,  byte ptr [byte ptr [rip + autoformat]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_129
	xor	eax, eax
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_136
	nop	
	mov	rax, qword ptr [r14]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x18]
.label_136:
	mov	qword ptr [word ptr [rip + autocount_1]],  rax
	xor	eax, eax
	test	rbp, rbp
	je	.label_116
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15]
	mov	rax, qword ptr [rax + 0x18]
.label_116:
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + autocount_2]],  rax
.label_129:
	movzx	eax,  byte ptr [byte ptr [rip + join_header_lines]]
	lea	rsi, [rsi]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 1
	jne	.label_70
	nop	
	test	rbx, rbx
	je	.label_19
	mov	rdi, qword ptr [r14]
	lea	rsi, [rsi]
	test	rbp, rbp
	jne	.label_83
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:uni_blank
	call	prjoin
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [word ptr [rip + prevline]],  xmm0
	mov	edx, 1
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	rsi, r14
	mov	rsp, rsp
	call	get_line
	movzx	ecx, al
	lea	rdi, [rdi]
	jmp	.label_35
.label_70:
	mov	rcx, rbx
	mov	rsp, rsp
	jmp	.label_35
.label_19:
	mov	edi, OFFSET FLAT:uni_blank
	mov	ecx, 0x10
	mov	rbp, rbp
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	nop	
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_126
.label_83:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15]
	call	prjoin
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movaps	xmmword ptr [word ptr [rip + prevline]],  xmm0
	mov	rbp, rbp
	xor	r12d, r12d
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_77
	lea	rsi, [rsi]
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r14
	lea	rsi, [rsi]
	call	get_line
	movzx	r12d, al
.label_77:
	mov	edx, 2
	mov	rdi, r13
	mov	rsi, r15
	call	get_line
	nop	
	movzx	ebp, al
	mov	rsp, rsp
	mov	rcx, r12
.label_35:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], rcx
	mov	rsp, rsp
	mov	eax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], rax
	test	rcx, rcx
	nop	
	je	.label_84
	nop	
	mov	ecx, 0x10
.label_107:
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_60
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rcx
	nop	word ptr cs:[rax + rax]
.label_89:
	mov	rdi, qword ptr [r14]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15]
	mov	rdx,  qword ptr [word ptr [rip + join_field_1]]
	mov	rcx,  qword ptr [word ptr [rip + join_field_2]]
	call	keycmp
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	js	.label_104
	mov	rsp, rsp
	jle	.label_110
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + print_unpairables_2]]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	nop	
	jne	.label_112
	mov	rsp, rsp
	mov	rsi, qword ptr [r15]
	mov	edi, OFFSET FLAT:uni_blank
	call	prjoin
.label_112:
	nop	
	mov	rbx, r14
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x40]
	test	rax, rax
	jne	.label_119
	test	r15, r15
	nop	
	mov	ebp, 8
	mov	eax, 0x80
	cmove	rbp, rax
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, rbp
	call	xrealloc
	mov	rbp, rbp
	mov	r14, rax
	test	r15, r15
	mov	rsp, rsp
	mov	qword ptr [r14], 0
	mov	rsp, rsp
	mov	r15, r14
	mov	eax, 1
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], rax
	jne	.label_119
	mov	rsp, rsp
	mov	rdi, r14
	nop	
	add	rdi, 8
	lea	rdi, [rdi]
	add	rbp, -8
	xor	esi, esi
	mov	rdx, rbp
	call	memset
	mov	r15, r14
	mov	rsp, rsp
	mov	eax, 0x10
	mov	qword ptr [rsp + 0x40], rax
	nop	word ptr cs:[rax + rax]
.label_119:
	lea	rsi, [rsi]
	mov	edx, 2
	mov	rdi, r13
	mov	rsi, r15
	call	get_line
	movzx	ebp, al
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + seen_unpairable]],  1
	test	bpl, bpl
	mov	r14, rbx
	jne	.label_89
	mov	rsp, rsp
	jmp	.label_13
	nop	word ptr cs:[rax + rax]
.label_104:
	movzx	eax,  byte ptr [byte ptr [rip + print_unpairables_1]]
	and	eax, 1
	nop	
	cmp	eax, 1
	nop	
	jne	.label_57
	mov	rdi, qword ptr [r14]
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:uni_blank
	call	prjoin
.label_57:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	jne	.label_51
	mov	rsp, rsp
	mov	esi, 8
	mov	rdi, r14
	lea	rsi, [rsi]
	call	xrealloc
	mov	r14, rax
	lea	rsi, [rsi]
	mov	qword ptr [r14], 0
	mov	eax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
.label_51:
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r14
	lea	rsi, [rsi]
	call	get_line
	lea	rdi, [rdi]
	movzx	eax, al
	mov	byte ptr [byte ptr [rip + seen_unpairable]],  1
	lea	rsi, [rsi]
	jmp	.label_80
	nop	dword ptr [rax + rax]
.label_110:
	mov	qword ptr [rsp], rbp
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	mov	r12, rbp
	mov	rsp, rsp
	movabs	rax, 0x1fffffffffffffff
	xor	r12, rax
	inc	r12
	lea	rbx, [rbp*8 + 8]
	nop	
	mov	r13, qword ptr [rsp + 0x18]
	nop	word ptr cs:[rax + rax]
.label_100:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 8]
	cmp	rbp, rax
	nop	
	jne	.label_114
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x60], rbp
	lea	rsi, [rsi]
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rbp, r15
	movabs	rcx, 0xaaaaaaaaaaaaaaa
	cmp	rax, rcx
	lea	rsi, [rsi]
	jae	.label_78
	mov	r15, rax
	nop	
	shr	r15, 1
	lea	rsi, [rsi]
	lea	r14, [rax + r15 + 1]
	lea	rsi, [r14*8]
	mov	r13, rax
	call	xrealloc
	mov	rdx, r13
	mov	rbp, rbp
	mov	r13, rax
	cmp	rdx, r14
	jae	.label_123
	lea	rdi, [rdi]
	lea	rax, [rdx + 1]
	mov	qword ptr [r13 + rdx*8], 0
	lea	rdi, [rdi]
	cmp	rax, r14
	jae	.label_123
	mov	rbp, rbp
	add	rdx, r15
	add	rdx, r12
	mov	rbp, rbp
	shl	rdx, 3
	mov	rdi, r13
	lea	rdi, [rdi]
	add	rdi, rbx
	mov	rbp, rbp
	xor	esi, esi
	call	memset
.label_123:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r14
	mov	r15, rbp
	mov	r14, r13
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	jmp	.label_137
	nop	
.label_114:
	mov	qword ptr [rsp + 0x60], rbp
.label_137:
	nop	
	lea	rsi, [r14 + rbx - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rsi
	mov	edx, 1
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsp, rsp
	call	get_line
	nop	
	test	al, al
	je	.label_141
	mov	rax, qword ptr [rsp + 0x60]
	lea	rbp, [rax + 1]
	mov	rdi, qword ptr [r14 + rax*8]
	mov	rbp, rbp
	mov	rsi, qword ptr [r15]
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + join_field_1]]
	mov	rcx,  qword ptr [word ptr [rip + join_field_2]]
	nop	
	call	keycmp
	nop	
	dec	r12
	add	rbx, 8
	lea	rdi, [rdi]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_100
	mov	qword ptr [rsp + 0x20], r14
	mov	qword ptr [rsp + 0x38], r15
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x48], 0
	jmp	.label_134
.label_141:
	mov	qword ptr [rsp + 0x20], r14
	nop	
	mov	qword ptr [rsp + 0x38], r15
	mov	al, 1
	nop	
	mov	dword ptr [rsp + 0x48], eax
.label_134:
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp]
	mov	rcx, rbp
	movabs	rax, 0x1fffffffffffffff
	lea	rsi, [rsi]
	xor	rcx, rax
	mov	qword ptr [rsp + 0x80], rcx
	mov	rbp, rbp
	lea	rax, [rbp*8]
	mov	qword ptr [rsp + 0x70], rax
	xor	r12d, r12d
	mov	r13d, 8
	lea	rdi, [rdi]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_88:
	mov	rsp, rsp
	lea	r14, [rbp + r15]
	cmp	r14, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	jne	.label_118
	cmp	qword ptr [rsp + 0x38], 0
	mov	rbp, rbp
	je	.label_82
	mov	rbp, qword ptr [rsp + 0x40]
	movabs	rax, 0xaaaaaaaaaaaaaaa
	mov	rbp, rbp
	cmp	rbp, rax
	lea	rsi, [rsi]
	jae	.label_87
	mov	rsp, rsp
	mov	rax, rbp
	shr	rax, 1
	lea	rbx, [rbp + rax + 1]
	lea	rdi, [rdi]
	jmp	.label_20
.label_82:
	mov	rbp, qword ptr [rsp + 0x40]
	test	rbp, rbp
	mov	rsp, rsp
	mov	ebx, 0x10
	nop	
	cmovne	rbx, rbp
	mov	rbp, rbp
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_97
.label_20:
	lea	rsi, [rbx*8]
	mov	rdi, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	call	xrealloc
	lea	rsi, [rsi]
	cmp	rbp, rbx
	lea	rsi, [rsi]
	jae	.label_102
	mov	qword ptr [rax + rbp*8], 0
	inc	rbp
	nop	
	cmp	rbp, rbx
	jae	.label_102
	mov	rcx, qword ptr [rsp + 0x80]
	lea	rdx, [rcx + rbx]
	shl	rdx, 3
	mov	rdi, rax
	mov	qword ptr [rsp + 0x38], rax
	lea	rsi, [rsi]
	add	rdi, qword ptr [rsp + 0x70]
	mov	rsp, rsp
	add	rdi, r13
	xor	esi, esi
	nop	
	call	memset
	lea	rdi, [rdi]
	jmp	.label_58
	nop	dword ptr [rax + rax]
.label_102:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], rax
.label_58:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], rbx
	mov	rbp, qword ptr [rsp]
.label_118:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x70]
	lea	rbx, [rax + rcx]
	lea	rsi, [rbx + r12]
	mov	edx, 2
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	call	get_line
	mov	rbp, rbp
	test	al, al
	lea	rdi, [rdi]
	je	.label_130
	mov	rax, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbx + r15*8]
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [rip + join_field_1]]
	nop	
	mov	rcx,  qword ptr [word ptr [rip + join_field_2]]
	nop	
	call	keycmp
	mov	rbp, rbp
	inc	r15
	mov	rbp, rbp
	dec	qword ptr [rsp + 0x80]
	add	r13, 8
	mov	rsp, rsp
	add	r12, 8
	test	eax, eax
	je	.label_88
	xor	eax, eax
	jmp	.label_64
.label_130:
	mov	rsp, rsp
	mov	al, 1
.label_64:
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x60]
	test	r13, r13
	je	.label_31
	test	byte ptr [byte ptr [rip + print_pairables]],  1
	je	.label_31
	mov	dword ptr [rsp + 0x70], eax
	nop	
	test	r14, r14
	mov	rsp, rsp
	mov	r12d, 0
	lea	rdi, [rdi]
	mov	eax, 0
	mov	rbp, rbp
	je	.label_38
	nop	dword ptr [rax]
.label_40:
	xor	ebx, ebx
	mov	r15, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x20]
	nop	
.label_24:
	mov	rdi, qword ptr [rbp + r12*8]
	mov	rbp, rbp
	mov	rsi, qword ptr [r15 + rbx*8]
	mov	rbp, rbp
	call	prjoin
	inc	rbx
	lea	rsi, [rsi]
	cmp	r14, rbx
	jne	.label_24
	inc	r12
	cmp	r12, r13
	mov	rbp, rbp
	jne	.label_40
	nop	
	jmp	.label_66
.label_31:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x70], eax
.label_66:
	mov	rax, r14
.label_38:
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x48]
	mov	rsp, rsp
	test	cl, cl
	mov	ecx, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x60], rcx
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	jne	.label_48
	mov	rsp, rsp
	mov	rcx, qword ptr [r14]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsi]
	mov	qword ptr [r14], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsi], rcx
	mov	rsp, rsp
	mov	ecx, 1
	mov	qword ptr [rsp + 0x60], rcx
.label_48:
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x70]
	test	cl, cl
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	jne	.label_94
	mov	r15, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	mov	rdx, qword ptr [r15 + rax*8]
	mov	qword ptr [r15], rdx
	mov	rbp, rbp
	mov	qword ptr [r15 + rax*8], rcx
	nop	
	mov	ebp, 1
	mov	rax, qword ptr [rsp + 0x60]
.label_80:
	mov	qword ptr [rsp + 0x60], rax
	test	rax, rax
	mov	rcx, qword ptr [rsp + 8]
	nop	
	jne	.label_107
	jmp	.label_60
.label_84:
	mov	ecx, 0x10
	jmp	.label_60
.label_126:
	xor	ebp, ebp
	nop	
	mov	eax, 0x10
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x40], rax
	lea	rsi, [rsi]
	jmp	.label_60
.label_94:
	xor	ebp, ebp
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0x38]
.label_13:
	mov	rcx, qword ptr [rsp + 8]
.label_60:
	mov	qword ptr [rsp], rbp
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], 0
	cmp	dword ptr [dword ptr [rip + check_input_order]],  2
	jne	.label_122
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rcx
	xor	ebx, ebx
	mov	rbp, rbp
	jmp	.label_46
.label_122:
	mov	qword ptr [rsp + 8], rcx
	lea	rsi, [rsi]
	cmp	byte ptr [byte ptr [rip + issued_disorder_warning]],  0
	lea	rdi, [rdi]
	sete	al
	lea	rdi, [rdi]
	cmp	byte ptr [byte ptr [rip + label_86]],  0
	sete	bl
	or	bl, al
.label_46:
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_61
	mov	al,  byte ptr [byte ptr [rip + print_unpairables_1]]
	mov	rsp, rsp
	mov	cl, bl
	nop	
	or	cl, al
	lea	rdi, [rdi]
	xor	cl, 1
	test	cl, 1
	jne	.label_61
	nop	
	test	al, 1
	lea	rdi, [rdi]
	je	.label_45
	nop	
	mov	rdi, qword ptr [r14]
	mov	esi, OFFSET FLAT:uni_blank
	call	prjoin
.label_45:
	cmp	qword ptr [rsp], 0
	je	.label_23
	mov	byte ptr [byte ptr [rip + seen_unpairable]],  1
.label_23:
	lea	rsi, [rsp + 0x50]
	mov	edx, 1
	nop	
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	call	get_line
	test	al, al
	mov	rsp, rsp
	je	.label_61
	mov	rsp, rsp
	lea	rbp, [rsp + 0x50]
	nop	word ptr cs:[rax + rax]
.label_73:
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + print_unpairables_1]]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	jne	.label_44
	mov	rdi, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:uni_blank
	call	prjoin
.label_44:
	cmp	byte ptr [byte ptr [rip + issued_disorder_warning]],  0
	je	.label_53
	movzx	eax,  byte ptr [byte ptr [rip + print_unpairables_1]]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_61
.label_53:
	lea	rsi, [rsi]
	mov	edx, 1
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbp
	lea	rdi, [rdi]
	call	get_line
	test	al, al
	lea	rdi, [rdi]
	jne	.label_73
.label_61:
	cmp	qword ptr [rsp], 0
	nop	
	je	.label_11
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + print_unpairables_2]]
	or	bl, al
	lea	rsi, [rsi]
	xor	bl, 1
	test	bl, 1
	jne	.label_11
	mov	rsp, rsp
	test	al, 1
	lea	rdi, [rdi]
	je	.label_85
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15]
	mov	edi, OFFSET FLAT:uni_blank
	lea	rsi, [rsi]
	call	prjoin
.label_85:
	cmp	qword ptr [rsp + 0x60], 0
	mov	rsp, rsp
	je	.label_39
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + seen_unpairable]],  1
.label_39:
	mov	rbp, rbp
	lea	rsi, [rsp + 0x50]
	mov	rsp, rsp
	mov	edx, 2
	mov	rdi, r13
	mov	rsp, rsp
	call	get_line
	test	al, al
	je	.label_11
	lea	rbp, [rsp + 0x50]
	nop	word ptr cs:[rax + rax]
.label_127:
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + print_unpairables_2]]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	jne	.label_106
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x50]
	nop	
	mov	edi, OFFSET FLAT:uni_blank
	mov	rbp, rbp
	call	prjoin
.label_106:
	cmp	byte ptr [byte ptr [rip + label_86]],  0
	lea	rdi, [rdi]
	je	.label_117
	movzx	eax,  byte ptr [byte ptr [rip + print_unpairables_2]]
	and	eax, 1
	nop	
	cmp	eax, 1
	jne	.label_11
.label_117:
	mov	edx, 2
	mov	rdi, r13
	mov	rsi, rbp
	nop	
	call	get_line
	lea	rdi, [rdi]
	test	al, al
	mov	rbp, rbp
	jne	.label_127
.label_11:
	mov	qword ptr [rsp + 0x28], r13
	mov	rbp, qword ptr [rsp + 0x50]
	nop	
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_47
	mov	rdi, qword ptr [rbp + 0x28]
	call	free
	mov	qword ptr [rbp + 0x28], 0
	nop	
	mov	rdi, qword ptr [rbp + 0x10]
	lea	rsi, [rsi]
	call	free
.label_47:
	lea	rdi, [rdi]
	mov	rdi, rbp
	call	free
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	test	r13, r13
	nop	
	je	.label_140
	mov	rbx, r14
	nop	word ptr cs:[rax + rax]
.label_36:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rbx]
	test	rbp, rbp
	lea	rdi, [rdi]
	mov	edi, 0
	lea	rdi, [rdi]
	je	.label_17
	mov	rdi, qword ptr [rbp + 0x28]
	nop	
	call	free
	mov	qword ptr [rbp + 0x28], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp + 0x10]
	call	free
	mov	qword ptr [rbp + 0x10], 0
	mov	rdi, qword ptr [rbx]
.label_17:
	mov	rsp, rsp
	call	free
	add	rbx, 8
	mov	rbp, rbp
	dec	r13
	jne	.label_36
.label_140:
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsp, rsp
	call	free
	mov	r14, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	test	r14, r14
	mov	r13, qword ptr [rsp + 0x28]
	je	.label_54
	mov	rbx, r15
	nop	word ptr cs:[rax + rax]
.label_65:
	mov	rbp, qword ptr [rbx]
	test	rbp, rbp
	mov	edi, 0
	mov	rsp, rsp
	je	.label_56
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp + 0x28]
	call	free
	mov	qword ptr [rbp + 0x28], 0
	mov	rdi, qword ptr [rbp + 0x10]
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp + 0x10], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx]
.label_56:
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	add	rbx, 8
	dec	r14
	mov	rsp, rsp
	jne	.label_65
.label_54:
	mov	rbp, rbp
	mov	rdi, r15
	lea	rdi, [rdi]
	call	free
	nop	
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	call	rpl_fclose
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_37
	mov	rdi, r13
	nop	
	call	rpl_fclose
	test	eax, eax
	mov	rbp, rbp
	jne	.label_67
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + label_86]]
	mov	rbp, rbp
	or	al,  byte ptr [byte ptr [rip + issued_disorder_warning]]
	lea	rdi, [rdi]
	jne	.label_98
	xor	eax, eax
	nop	
	add	rsp, 0x88
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
.label_50:
	cmp	eax, 0xffffff7d
	lea	rdi, [rdi]
	je	.label_49
	cmp	eax, 0xffffff7e
	jne	.label_79
	xor	edi, edi
	nop	
	call	usage
.label_49:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.11
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.23
	xor	r9d, r9d
	xor	eax, eax
	lea	rdi, [rdi]
	call	version_etc
	lea	rsi, [rsi]
	xor	edi, edi
	call	exit
.label_79:
	mov	edi, 1
	mov	rsp, rsp
	call	usage
.label_69:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	nop	
	jmp	.label_133
.label_16:
	inc	r13
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.53
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rcx, r13
	mov	r8, r12
	lea	rsi, [rsi]
	call	error
.label_78:
	call	xalloc_die
.label_87:
	call	xalloc_die
.label_37:
	nop	
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [rip + g_names]]
	jmp	.label_22
.label_67:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_41]]
.label_22:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	mov	rcx, rax
	nop	
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	esi, ebx
	lea	rsi, [rsi]
	call	error
.label_71:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi, r13
	jmp	.label_52
.label_32:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	jmp	.label_9
.label_97:
	call	xalloc_die
.label_101:
	inc	rbx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	nop	
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rcx, rbx
	lea	rdi, [rdi]
	mov	r8, rbp
	call	error
.label_109:
	mov	rsp, rsp
	inc	rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.53
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	nop	
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rbp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	error
.label_30:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
.label_133:
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
.label_52:
	call	quote
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rbx
	mov	rbp, rbp
	call	error
.label_93:
	xor	edi, edi
	test	eax, eax
	mov	rsp, rsp
	jne	.label_113
	nop	
	mov	esi, OFFSET FLAT:.str.24
	mov	rbp, rbp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	
	mov	edi, 1
	lea	rdi, [rdi]
	call	usage
.label_74:
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, ebx
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rbp, rbp
	call	error
.label_98:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
	jmp	.label_9
.label_10:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.17_0
.label_9:
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rsi, [rsi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_113:
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	r14, rax
	lea	rdi, [rdi]
	movsxd	rax, ebp
	mov	rdi, qword ptr [rbx + rax*8 - 8]
	nop	
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, r14
	call	error
	mov	edi, 1
	call	usage
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403290

	.globl free_spareline
	.type free_spareline, @function
free_spareline:
	mov	rbp, rbp
	push	rbx
	mov	rbx,  qword ptr [word ptr [rip + spareline]]
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_144
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
.label_144:
	nop	
	mov	rbx,  qword ptr [word ptr [rip + label_145]]
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_146
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
	mov	rdi,  qword ptr [word ptr [rip + label_145]]
	pop	rbx
	nop	
	jmp	free
.label_146:
	nop	
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403330

	.globl add_field_list
	.type add_field_list, @function
add_field_list:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r15, rdi
	lea	r14, [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_159:
	mov	r12, r15
	nop	
	mov	rdx, r12
	nop	word ptr [rax + rax]
.label_151:
	mov	rax, rdx
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	dl, cl
	mov	rbp, rbp
	or	dl, 0x20
	movzx	edx, dl
	mov	rbp, rbp
	cmp	edx, 0x20
	je	.label_156
	movzx	esi, cl
	lea	rsi, [rsi]
	cmp	esi, 0x2c
	mov	rsp, rsp
	je	.label_156
	lea	rdx, [rax + 1]
	lea	rsi, [rsi]
	cmp	esi, 9
	mov	rbp, rbp
	jne	.label_151
.label_156:
	lea	rdi, [rdi]
	test	rax, rax
	nop	
	je	.label_155
	test	cl, cl
	mov	r15d, 0
	nop	
	je	.label_157
	mov	rbp, rbp
	mov	byte ptr [rax], 0
	inc	rax
	mov	r15, rax
	jmp	.label_157
	nop	word ptr [rax + rax]
.label_155:
	lea	rdi, [rdi]
	xor	r15d, r15d
.label_157:
	movsx	r13d, byte ptr [r12]
	lea	eax, [r13 - 0x31]
	nop	
	cmp	eax, 2
	jae	.label_148
	movzx	eax, byte ptr [r12 + 1]
	lea	rsi, [rsi]
	cmp	eax, 0x2e
	mov	rbp, rbp
	jne	.label_150
	nop	
	add	r12, 2
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 0xa
	lea	rsi, [rsi]
	mov	r8d, OFFSET FLAT:.str_1
	mov	rdi, r12
	mov	rcx, r14
	call	xstrtoul
	cmp	eax, 1
	jne	.label_152
	mov	qword ptr [rsp + 8], -1
	mov	rsp, rsp
	mov	rbx, -1
	nop	
	jmp	.label_154
	nop	dword ptr [rax + rax]
.label_148:
	lea	rsi, [rsi]
	cmp	r13d, 0x30
	jne	.label_149
	xor	ebx, ebx
	cmp	byte ptr [r12 + 1], 0
	lea	rsi, [rsi]
	mov	r13d, 0
	je	.label_160
	lea	rdi, [rdi]
	jmp	.label_150
	nop	dword ptr [rax + rax]
.label_152:
	mov	rsp, rsp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_147
	mov	rbx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_147
.label_154:
	lea	rdi, [rdi]
	add	r13d, -0x30
	dec	rbx
	mov	rsp, rsp
	cmp	r13d, 2
	mov	rsp, rsp
	je	.label_160
	lea	rdi, [rdi]
	mov	eax, r13d
	mov	rsp, rsp
	or	eax, 1
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_158
.label_160:
	mov	rsp, rsp
	mov	edi, 0x18
	call	xmalloc
	nop	
	mov	dword ptr [rax], r13d
	nop	
	mov	qword ptr [rax + 8], rbx
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x10], 0
	nop	
	mov	rcx,  qword ptr [word ptr [rip + outlist_end]]
	mov	qword ptr [rcx + 0x10], rax
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + outlist_end]],  rax
	test	r15, r15
	mov	rbp, rbp
	jne	.label_159
	add	rsp, 0x10
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rsp, rsp
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rbp, rbp
	ret	
.label_149:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.56
	mov	rsp, rsp
	jmp	.label_153
.label_150:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.55
	mov	rsp, rsp
	jmp	.label_153
.label_158:
	nop	
	mov	edi, OFFSET FLAT:.str.57
	mov	esi, OFFSET FLAT:.str.58
	lea	rsi, [rsi]
	mov	edx, 0x333
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.add_field
	call	__assert_fail
.label_147:
	nop	
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.16
.label_153:
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, r12
	lea	rdi, [rdi]
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rdx, r14
	mov	rbp, rbp
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403590

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
	sub	rsp, 0x18
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
	jne	.label_165
	mov	ebp, dword ptr [rbx]
	test	ebp, ebp
	sete	al
	lea	rsi, [rsi]
	movzx	eax, al
	mov	ecx, dword ptr [rbx + rax*4]
	nop	
	cmp	rcx, 3
	ja	.label_162
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [+ (rax * 8) + g_names]]
	nop	
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_169]]
.label_625:
	dec	dword ptr [rdx]
	lea	rcx, [rsp + 0x10]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_1
	mov	qword ptr [rsp + 8], rdi
	mov	rbp, rbp
	call	xstrtoul
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_168
	mov	qword ptr [rsp + 0x10], -1
	mov	rcx, -1
	jmp	.label_167
.label_626:
	dec	dword ptr [rdx + 4]
	lea	rcx, [rsp + 0x10]
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edx, 0xa
	mov	rsp, rsp
	mov	r8d, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rdi
	mov	rsp, rsp
	call	xstrtoul
	lea	rsi, [rsi]
	cmp	eax, 1
	jne	.label_171
	mov	qword ptr [rsp + 0x10], -1
	mov	rcx, -1
	jmp	.label_161
.label_627:
	lea	rsi, [rsi]
	call	add_field_list
	jmp	.label_162
.label_171:
	nop	
	test	eax, eax
	mov	rsp, rsp
	jne	.label_164
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x10]
	test	rcx, rcx
	mov	rbp, rbp
	je	.label_164
.label_161:
	lea	rax, [rcx - 1]
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + join_field_2]]
	cmp	rdx, -1
	je	.label_170
	cmp	rdx, rax
	lea	rdi, [rdi]
	jne	.label_163
.label_170:
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + join_field_2]],  rax
	jmp	.label_162
.label_168:
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_164
	nop	
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_164
.label_167:
	nop	
	lea	rax, [rcx - 1]
	mov	rdx,  qword ptr [word ptr [rip + join_field_1]]
	cmp	rdx, -1
	nop	
	je	.label_166
	cmp	rdx, rax
	mov	rbp, rbp
	jne	.label_163
.label_166:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + join_field_1]],  rax
.label_162:
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	test	ebp, ebp
	lea	rdi, [rdi]
	je	.label_165
	mov	ecx, dword ptr [rbx + 4]
	lea	rdi, [rdi]
	mov	dword ptr [rbx], ecx
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_41]]
	mov	qword ptr [word ptr [rip + g_names]],  rcx
.label_165:
	mov	rbp, rbp
	mov	ecx, dword ptr [r12]
	mov	rbp, rbp
	cdqe	
	mov	dword ptr [rbx + rax*4], ecx
	mov	rsp, rsp
	mov	qword ptr [word ptr [+ (rax * 8) + g_names]],  r15
	mov	rbp, rbp
	inc	eax
	lea	rdi, [rdi]
	mov	dword ptr [r13], eax
	cmp	dword ptr [r12], 3
	jne	.label_172
	mov	rsp, rsp
	mov	dword ptr [r14], 3
.label_172:
	lea	rsi, [rsi]
	add	rsp, 0x18
	pop	rbx
	nop	
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_624:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rbp, rbp
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, r15
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rdx, rbx
	call	error
	lea	rsi, [rsi]
	mov	edi, 1
	call	usage
.label_163:
	inc	rdx
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.53
	mov	rbp, rdx
	mov	edx, 5
	mov	rbx, rcx
	lea	rsi, [rsi]
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rbp
	mov	rbp, rbp
	mov	r8, rbx
	mov	rsp, rsp
	call	error
.label_164:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, rbp
	call	quote
	mov	rcx, rax
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x403880

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
	mov	rbp,  qword ptr [word ptr [rip + label_173]]
	test	rbp, rbp
	je	.label_174
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
	js	.label_178
	mov	r15b, al
.label_178:
	nop	
	movzx	eax, cl
	mov	dword ptr [rsp + 4], eax
	lea	rsi, [rsi]
	jmp	.label_181
	nop	word ptr cs:[rax + rax]
.label_176:
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r15b
.label_181:
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
	jbe	.label_177
	mov	rax, qword ptr [rax + 0x28]
	mov	rsp, rsp
	shl	rcx, 4
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + rcx + 8]
	mov	rsp, rsp
	test	rdx, rdx
	mov	rsp, rsp
	je	.label_177
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + rcx]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	esi, 1
	call	fwrite_unlocked
	mov	rbp, rbp
	jmp	.label_175
	nop	word ptr cs:[rax + rax]
.label_177:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + empty_filler]]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_175
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
.label_175:
	nop	
	mov	rbp, qword ptr [rbp + 0x10]
	mov	rbp, rbp
	test	rbp, rbp
	je	.label_183
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jb	.label_176
	mov	esi, dword ptr [rsp + 4]
	call	__overflow
	lea	rsi, [rsi]
	jmp	.label_181
.label_174:
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
	jbe	.label_180
	mov	rax, qword ptr [rax + 0x28]
	shl	rcx, 4
	mov	rdx, qword ptr [rax + rcx + 8]
	test	rdx, rdx
	je	.label_180
	mov	rdi, qword ptr [rax + rcx]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	esi, 1
	call	fwrite_unlocked
	jmp	.label_179
.label_180:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + empty_filler]]
	lea	rsi, [rsi]
	test	rdi, rdi
	je	.label_179
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
.label_179:
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
.label_183:
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
	jae	.label_182
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
.label_182:
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
	#Procedure 0x403b30

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
	jbe	.label_188
	mov	rax, qword ptr [rax + 0x28]
	mov	rbp, rbp
	shl	rdx, 4
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + rdx]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rax + rdx + 8]
.label_188:
	xor	r8d, r8d
	mov	rbp, rbp
	cmp	qword ptr [rsi + 0x18], rcx
	mov	ebx, 0
	mov	rbp, rbp
	jbe	.label_186
	mov	rax, qword ptr [rsi + 0x28]
	shl	rcx, 4
	nop	
	mov	r8, qword ptr [rax + rcx]
	mov	rbx, qword ptr [rax + rcx + 8]
.label_186:
	mov	rsp, rsp
	test	r14, r14
	je	.label_189
	mov	eax, 1
	mov	rbp, rbp
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_185
	movzx	eax,  byte ptr [byte ptr [rip + ignore_case]]
	and	eax, 1
	cmp	eax, 1
	nop	
	jne	.label_187
	lea	rsi, [rsi]
	cmp	r14, rbx
	lea	rsi, [rsi]
	mov	rdx, rbx
	lea	rdi, [rdi]
	cmovb	rdx, r14
	mov	rsi, r8
	call	memcasecmp
	jmp	.label_190
.label_189:
	nop	
	neg	rbx
	nop	
	sbb	eax, eax
	jmp	.label_185
.label_187:
	mov	rsp, rsp
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	je	.label_184
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
.label_184:
	cmp	r14, rbx
	mov	rdx, rbx
	cmovb	rdx, r14
	mov	rsp, rsp
	mov	rsi, r8
	lea	rsi, [rsi]
	call	memcmp
.label_190:
	mov	rsp, rsp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_185
	cmp	r14, rbx
	setne	al
	mov	rbp, rbp
	movzx	ecx, al
	nop	
	mov	eax, 0xffffffff
	cmovae	eax, ecx
.label_185:
	lea	rdi, [rdi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c60

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
	cmp	r12,  qword ptr [word ptr [+ (r13 * 8) + label_196]]
	jne	.label_210
	mov	rax,  qword ptr [word ptr [+ (r13 * 8) + label_217]]
	mov	qword ptr [word ptr [+ (r13 * 8) + label_217]],  r12
	mov	qword ptr [rbp], rax
	mov	rbp, rbp
	mov	r12, rax
.label_210:
	test	r12, r12
	je	.label_195
	mov	dword ptr [rsp + 0x24], edx
	mov	qword ptr [r12 + 0x18], 0
	nop	
	jmp	.label_223
.label_195:
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
.label_223:
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + eolchar]]
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	jne	.label_234
	lea	rdi, [rdi]
	mov	al, 0xa
	jmp	.label_238
.label_234:
	xor	eax, eax
.label_238:
	mov	rbp, rbp
	movzx	edx, al
	mov	rdi, r12
	mov	rsi, rbx
	mov	rsp, rsp
	call	readlinebuffer_delim
	mov	rsp, rsp
	test	rax, rax
	nop	
	je	.label_197
	inc	qword ptr [word ptr [+ (r13 * 8) + label_200]]
	mov	rbp, qword ptr [r12 + 8]
	mov	rsp, rsp
	mov	r14, qword ptr [r12 + 0x10]
	lea	rax, [r14 + rbp - 1]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rax
	nop	
	cmp	r14, rax
	mov	rsp, rsp
	je	.label_201
	mov	r15d,  dword ptr [dword ptr [rip + tab]]
	lea	rsi, [rsi]
	test	r15d, r15d
	js	.label_208
	mov	rbp, rbp
	cmp	r15d, 0xa
	je	.label_208
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
	je	.label_194
	mov	rsp, rsp
	mov	rbp, qword ptr [r12 + 0x18]
	nop	dword ptr [rax]
.label_219:
	mov	rsi, qword ptr [r12 + 0x20]
	nop	
	cmp	rbp, rsi
	nop	
	jae	.label_222
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x28]
	lea	rsi, [rsi]
	jmp	.label_224
	nop	dword ptr [rax]
.label_222:
	nop	
	mov	rdi, qword ptr [r12 + 0x28]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_228
	nop	
	movabs	rax, 0x555555555555555
	cmp	rsi, rax
	nop	
	jae	.label_230
	mov	rax, rsi
	mov	rsp, rsp
	shr	rax, 1
	lea	rsi, [rsi + rax + 1]
	mov	rsp, rsp
	jmp	.label_235
.label_228:
	test	rsi, rsi
	mov	eax, 8
	mov	rsp, rsp
	cmove	rsi, rax
	movabs	rax, 0x7ffffffffffffff
	cmp	rsi, rax
	ja	.label_192
.label_235:
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
.label_224:
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
	jne	.label_219
	mov	rsp, rsp
	jmp	.label_194
.label_197:
	test	byte ptr [rbx], 0x20
	jne	.label_225
	lea	rsi, [rsi]
	test	r12, r12
	je	.label_227
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
	jmp	.label_213
.label_208:
	test	r15d, r15d
	mov	rbp, rbp
	jns	.label_194
	lea	rdi, [rdi]
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	r8, rax
	mov	rax, qword ptr [r8]
	nop	
	lea	rcx, [rbp - 1]
	mov	rbx, r14
	nop	word ptr cs:[rax + rax]
.label_211:
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rbx]
	mov	rsp, rsp
	cmp	rdx, 0xa
	je	.label_205
	movzx	edx, word ptr [rax + rdx*2]
	mov	rbp, rbp
	and	edx, 1
	lea	rdi, [rdi]
	test	dx, dx
	lea	rsi, [rsi]
	je	.label_206
.label_205:
	mov	rbp, rbp
	inc	rbx
	lea	rdi, [rdi]
	dec	rcx
	jne	.label_211
	nop	
	jmp	.label_201
.label_227:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_213
.label_206:
	mov	qword ptr [rsp + 0x10], r13
	nop	
	add	r14, rbp
	lea	rdi, [rdi]
	jmp	.label_216
.label_221:
	dec	rbx
.label_216:
	lea	r15, [rbx + 2]
	nop	word ptr [rax + rax]
.label_226:
	lea	rdi, [rdi]
	mov	r13b, 1
	cmp	r14, r15
	nop	
	je	.label_218
	mov	rbp, rbp
	movzx	ecx, byte ptr [r15 - 1]
	lea	rdi, [rdi]
	inc	r15
	nop	
	cmp	rcx, 0xa
	mov	rsp, rsp
	je	.label_220
	lea	rsi, [rsi]
	movzx	ecx, word ptr [rax + rcx*2]
	and	ecx, 1
	mov	rsp, rsp
	test	cx, cx
	je	.label_226
.label_220:
	add	r15, -2
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_229
.label_218:
	mov	r15, qword ptr [rsp + 0x18]
.label_229:
	mov	rcx, qword ptr [r12 + 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [r12 + 0x20]
	cmp	rcx, rsi
	jae	.label_233
	mov	rax, qword ptr [r12 + 0x28]
	nop	
	jmp	.label_236
.label_233:
	nop	
	mov	rdi, qword ptr [r12 + 0x28]
	test	rdi, rdi
	je	.label_191
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
	jmp	.label_214
.label_191:
	mov	rbp, r8
	test	rsi, rsi
	mov	rsp, rsp
	mov	eax, 8
	cmove	rsi, rax
	movabs	rax, 0x7ffffffffffffff
	mov	rbp, rbp
	cmp	rsi, rax
	mov	rsp, rsp
	ja	.label_204
.label_214:
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x20], rsi
	mov	rsp, rsp
	shl	rsi, 4
	call	xrealloc
	mov	qword ptr [r12 + 0x28], rax
	mov	rcx, qword ptr [r12 + 0x18]
	lea	rdi, [rdi]
	mov	r8, rbp
.label_236:
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
	jne	.label_201
	mov	rsp, rsp
	add	r15, 2
	nop	dword ptr [rax]
.label_231:
	nop	
	mov	rbx, r15
	lea	rsi, [rsi]
	cmp	r14, rbx
	lea	rsi, [rsi]
	je	.label_232
	nop	
	movzx	ecx, byte ptr [rbx - 1]
	lea	r15, [rbx + 1]
	nop	
	cmp	rcx, 0xa
	je	.label_231
	mov	rsp, rsp
	mov	rax, qword ptr [r8]
	mov	rbp, rbp
	movzx	ecx, word ptr [rax + rcx*2]
	and	ecx, 1
	test	cx, cx
	jne	.label_231
	nop	
	jmp	.label_221
.label_232:
	mov	r14, qword ptr [rsp + 0x18]
.label_194:
	mov	rcx, qword ptr [r12 + 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x20]
	cmp	rcx, rax
	jae	.label_199
	mov	rax, qword ptr [r12 + 0x28]
	lea	rsi, [rsi]
	jmp	.label_198
.label_199:
	mov	rdi, qword ptr [r12 + 0x28]
	test	rdi, rdi
	je	.label_202
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
	jmp	.label_207
.label_202:
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
	ja	.label_209
.label_207:
	mov	qword ptr [r12 + 0x20], rsi
	lea	rsi, [rsi]
	shl	rsi, 4
	call	xrealloc
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x28], rax
	mov	rcx, qword ptr [r12 + 0x18]
.label_198:
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
.label_201:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [+ (r13 * 8) + label_196]]
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_193
	nop	
	mov	eax,  dword ptr [dword ptr [rip + check_input_order]]
	nop	
	cmp	eax, 1
	je	.label_237
	lea	rdi, [rdi]
	cmp	eax, 2
	lea	rsi, [rsi]
	je	.label_193
	movzx	eax,  byte ptr [byte ptr [rip + seen_unpairable]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_193
.label_237:
	cmp	byte ptr [byte ptr [r13 + seen_unpairable]],  0
	mov	rbp, rbp
	jne	.label_193
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
	jle	.label_193
	nop	
	mov	rax, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	xor	ebx, ebx
	test	rax, rax
	je	.label_212
	mov	rbp, rbp
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rcx + rax - 1]
	cmp	ecx, 0xa
	jne	.label_215
	dec	rax
.label_215:
	lea	rdi, [rdi]
	mov	rbx, rax
.label_212:
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
	mov	r8,  qword ptr [word ptr [+ (r13 * 8) + label_200]]
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
.label_193:
	mov	qword ptr [word ptr [+ (r13 * 8) + label_196]],  r12
	nop	
	mov	al, 1
.label_213:
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
.label_230:
	mov	rsp, rsp
	call	xalloc_die
.label_192:
	call	xalloc_die
.label_225:
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
.label_209:
	call	xalloc_die
.label_204:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043a0

	.globl prfield
	.type prfield, @function
prfield:
	cmp	qword ptr [rsi + 0x18], rdi
	mov	rbp, rbp
	jbe	.label_239
	nop	
	mov	rax, qword ptr [rsi + 0x28]
	shl	rdi, 4
	mov	rdx, qword ptr [rax + rdi + 8]
	test	rdx, rdx
	je	.label_241
	mov	rdi, qword ptr [rax + rdi]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rbp, rbp
	jmp	fwrite_unlocked
.label_239:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + empty_filler]]
	test	rdi, rdi
	je	.label_240
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	jmp	fputs_unlocked
.label_241:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + empty_filler]]
	nop	
	test	rdi, rdi
	je	.label_240
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	jmp	fputs_unlocked
.label_240:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404420

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
	jne	.label_242
	mov	rbp, rbp
	mov	r14, qword ptr [r15 + 0x18]
.label_242:
	nop	
	mov	eax,  dword ptr [dword ptr [rip + tab]]
	mov	rbp, rbp
	test	eax, eax
	mov	r13b, 0x20
	js	.label_250
	mov	rbp, rbp
	mov	r13b, al
.label_250:
	test	rbx, rbx
	je	.label_246
	mov	rbp, rbp
	test	r14, r14
	je	.label_246
	lea	rdi, [rdi]
	movzx	r12d, r13b
	lea	rsi, [rsi]
	xor	ebp, ebp
	mov	rsp, rsp
	jmp	.label_243
	nop	dword ptr [rax]
.label_249:
	lea	rsi, [rsi]
	cmp	rbp, r14
	mov	rbp, rbp
	jb	.label_243
	jmp	.label_246
.label_245:
	mov	esi, r12d
	lea	rsi, [rsi]
	call	__overflow
	jmp	.label_247
	nop	word ptr [rax + rax]
.label_243:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_245
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	nop	
	mov	byte ptr [rax], r13b
.label_247:
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rsi, r15
	call	prfield
	inc	rbp
	cmp	rbp, rbx
	mov	rbp, rbp
	jb	.label_249
.label_246:
	inc	rbx
	lea	rdi, [rdi]
	cmp	rbx, r14
	nop	
	jae	.label_244
	movsx	ebp, r13b
	nop	word ptr cs:[rax + rax]
.label_248:
	mov	rsp, rsp
	mov	edi, ebp
	call	putchar_unlocked
	mov	rdi, rbx
	mov	rsi, r15
	call	prfield
	inc	rbx
	lea	rsi, [rsi]
	cmp	r14, rbx
	lea	rsi, [rsi]
	jne	.label_248
.label_244:
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404540
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
	#Procedure 0x404550
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404560

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
	je	.label_254
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_251
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_251
.label_254:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_252
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_251:
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
	jne	.label_253
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_0
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
.label_252:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_253:
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
	#Procedure 0x404660
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404670

	.globl fadvise
	.type fadvise, @function
fadvise:
	lea	rdi, [rdi]
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_255
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
.label_255:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4046a0

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
	je	.label_257
	mov	rsp, rsp
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_258
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	call	dup_safer
	mov	rsp, rsp
	mov	ebp, eax
	test	ebp, ebp
	js	.label_256
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fclose
	mov	rbp, rbp
	test	eax, eax
	jne	.label_259
	mov	rsp, rsp
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r14
	call	fdopen
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_257
.label_259:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbx], r14d
	mov	rbp, rbp
	jmp	.label_260
.label_258:
	mov	rax, rbx
	mov	rsp, rsp
	jmp	.label_257
.label_256:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_260:
	xor	eax, eax
.label_257:
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
	#Procedure 0x404780

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
	je	.label_262
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_261
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_263
.label_261:
	nop	
	mov	esi, OFFSET FLAT:.str.1_1
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_262
.label_263:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_262:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4047d0
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
	#Procedure 0x4047f0
	.globl readlinebuffer
	.type readlinebuffer, @function
readlinebuffer:

	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r13, rsi
	mov	r14, rdi
	lea	rdi, [rdi]
	xor	eax, eax
	test	byte ptr [r13], 0x10
	jne	.label_265
	mov	rsp, rsp
	mov	r15, qword ptr [r14 + 0x10]
	mov	r12, qword ptr [r14]
	add	r12, r15
	lea	rdi, [rdi]
	mov	rbx, r15
	nop	word ptr [rax + rax]
.label_269:
	mov	rax, qword ptr [r13 + 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [r13 + 0x10]
	nop	
	jae	.label_264
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_268:
	mov	rsp, rsp
	cmp	rbx, r12
	jne	.label_267
	mov	rbx, qword ptr [r14]
	mov	rdi, r15
	mov	rsi, r14
	lea	rdi, [rdi]
	call	x2realloc
	mov	r15, rax
	add	rbx, r15
	mov	qword ptr [r14 + 0x10], r15
	lea	rsi, [rsi]
	mov	r12, r15
	add	r12, qword ptr [r14]
.label_267:
	mov	byte ptr [rbx], bpl
	mov	rsp, rsp
	inc	rbx
	mov	rbp, rbp
	cmp	ebp, 0xa
	jne	.label_269
	jmp	.label_266
.label_264:
	mov	rbp, rbp
	mov	rdi, r13
	lea	rdi, [rdi]
	call	__uflow
	mov	ebp, eax
	mov	rbp, rbp
	cmp	ebp, -1
	jne	.label_268
	cmp	rbx, r15
	mov	eax, 0
	lea	rsi, [rsi]
	je	.label_265
	nop	
	test	byte ptr [r13], 0x20
	jne	.label_265
	movzx	eax, byte ptr [rbx - 1]
	lea	rdi, [rdi]
	mov	ebp, 0xa
	cmp	eax, 0xa
	mov	rsp, rsp
	jne	.label_268
.label_266:
	lea	rdi, [rdi]
	sub	rbx, r15
	nop	
	mov	qword ptr [r14 + 8], rbx
	mov	rax, r14
.label_265:
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404900

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
	jne	.label_270
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
.label_275:
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rbp + 0x10]
	mov	rsp, rsp
	jae	.label_273
	lea	rcx, [rax + 1]
	mov	qword ptr [rbp + 8], rcx
	lea	rsi, [rsi]
	movzx	ebx, byte ptr [rax]
.label_274:
	cmp	r13, r14
	nop	
	jne	.label_272
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
.label_272:
	nop	
	mov	byte ptr [r13], bl
	nop	
	inc	r13
	nop	
	cmp	ebx, dword ptr [rsp]
	jne	.label_275
	lea	rdi, [rdi]
	jmp	.label_271
.label_273:
	mov	rbp, rbp
	mov	rdi, rbp
	call	__uflow
	mov	rsp, rsp
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_274
	mov	rsp, rsp
	cmp	r13, r12
	mov	rbp, rbp
	mov	ecx, dword ptr [rsp + 4]
	mov	eax, 0
	lea	rdi, [rdi]
	je	.label_270
	test	byte ptr [rbp], 0x20
	jne	.label_270
	mov	eax, ecx
	nop	
	movzx	eax, al
	movzx	ecx, byte ptr [r13 - 1]
	cmp	ecx, eax
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rsp]
	lea	rdi, [rdi]
	jne	.label_274
.label_271:
	sub	r13, r12
	mov	qword ptr [r15 + 8], r13
	mov	rax, r15
.label_270:
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
	#Procedure 0x404a20
	.globl freebuffer
	.type freebuffer, @function
freebuffer:

	nop
	mov	rdi, qword ptr [rdi + 0x10]
	jmp	free
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a30

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
	je	.label_276
	mov	rbp, rbp
	call	__ctype_toupper_loc
	mov	rsp, rsp
	mov	rcx, qword ptr [rax]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_277:
	movzx	eax, byte ptr [r15 + rdx]
	mov	eax, dword ptr [rcx + rax*4]
	lea	rdi, [rdi]
	movzx	esi, byte ptr [r14 + rdx]
	lea	rdi, [rdi]
	sub	eax, dword ptr [rcx + rsi*4]
	lea	rsi, [rsi]
	jne	.label_276
	lea	rsi, [rsi]
	inc	rdx
	xor	eax, eax
	mov	rsp, rsp
	cmp	rdx, rbx
	lea	rsi, [rsi]
	jb	.label_277
.label_276:
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ab0

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
	je	.label_278
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
	jl	.label_280
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_280
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
	jne	.label_279
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_279:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_280:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_278:
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
	#Procedure 0x404ba0
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
	#Procedure 0x404bf0
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
	#Procedure 0x404c10
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
	#Procedure 0x404c30
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
	#Procedure 0x404ca0
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
	#Procedure 0x404cc0
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
	je	.label_281
	test	rdx, rdx
	nop	
	je	.label_281
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_281:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404d00
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
	#Procedure 0x404db0

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
	sub	rsp, 0xf8
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x24], ebx
	mov	r12d, r8d
	mov	r15, rcx
	mov	qword ptr [rsp + 0xe0], rdx
	mov	rbp, rbp
	mov	r13, rsi
	mov	qword ptr [rsp + 0xb8], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x140]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x138]
	mov	qword ptr [rsp + 0x18], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xa8], rax
	mov	dl, bl
	mov	rbp, rbp
	shr	dl, 1
	mov	rbp, rbp
	and	dl, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x94], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x5c], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xa0], rax
	mov	eax, 0
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xc8], rcx
.label_307:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r12d
	lea	rsi, [rsi]
	cmp	r12d, 0xa
	lea	rdi, [rdi]
	ja	.label_331
	mov	r9d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	r10, r15
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_386]]
.label_592:
	mov	r15d, edi
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11_0
	nop	
	mov	esi, r12d
	mov	r14, r10
	nop	
	mov	r13b, r8b
	mov	bl, dl
	mov	rbp, rbp
	call	gettext_quote
	mov	qword ptr [rsp + 0x18], rax
	mov	edi, OFFSET FLAT:.str.12
	mov	rsp, rsp
	mov	esi, r12d
	call	gettext_quote
	mov	rsp, rsp
	mov	dl, bl
	mov	rsp, rsp
	mov	edi, r15d
	mov	r8b, r13b
	mov	r10, r14
	nop	
	mov	qword ptr [rsp + 0x98], rax
.label_593:
	nop	
	mov	qword ptr [rsp + 0xd8], r10
	mov	byte ptr [rsp + 0xf7], r8b
	mov	dword ptr [rsp + 0x38], edi
	test	dl, 1
	mov	rbp, rbp
	mov	r15b, dl
	mov	rbp, rbp
	mov	r14d, 0
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	jne	.label_361
	mov	al, byte ptr [rdx]
	test	al, al
	mov	r14d, 0
	je	.label_361
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_383:
	mov	rsp, rsp
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_374
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_374:
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + r14 + 1]
	mov	rsp, rsp
	inc	r14
	test	al, al
	mov	rbp, rbp
	jne	.label_383
.label_361:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x98]
	nop	
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	strlen
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa0], rax
	mov	rbp, rbp
	mov	r9d, r12d
	mov	qword ptr [rsp + 0x68], rbx
	mov	r13b, 1
	mov	rbp, rbp
	mov	sil, r15b
	mov	r10, qword ptr [rsp + 0xd8]
	nop	
	mov	r8b, byte ptr [rsp + 0xf7]
	mov	edi, dword ptr [rsp + 0x38]
	mov	r11, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	jmp	.label_325
.label_585:
	xor	r9d, r9d
	xor	r14d, r14d
	mov	rbp, rbp
	mov	r13b, al
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_325
.label_588:
	lea	rsi, [rsi]
	mov	al, 1
.label_586:
	lea	rsi, [rsi]
	mov	dl, 1
.label_589:
	nop	
	test	dl, 1
	lea	rsi, [rsi]
	mov	cl, 1
	mov	rbp, rbp
	je	.label_285
	mov	rbp, rbp
	mov	cl, al
.label_285:
	mov	al, cl
.label_587:
	nop	
	mov	r9d, 2
	lea	rsi, [rsi]
	test	dl, 1
	mov	rsp, rsp
	jne	.label_294
	test	rbp, rbp
	je	.label_300
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx], 0x27
	mov	r14d, 1
	lea	rdi, [rdi]
	jmp	.label_301
.label_294:
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_301
.label_590:
	mov	rsp, rsp
	mov	r9d, 5
	test	dl, 1
	jne	.label_311
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_316
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x22
	mov	r14d, 1
	jmp	.label_324
.label_591:
	mov	r13b, 1
	mov	rsp, rsp
	mov	r9d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xa0], rax
	mov	sil, 1
	lea	rsi, [rsi]
	jmp	.label_325
.label_300:
	mov	r14d, 1
	nop	word ptr cs:[rax + rax]
.label_301:
	mov	ecx, OFFSET FLAT:.str.12
	mov	qword ptr [rsp + 0x68], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xa0], rcx
	nop	
	mov	r13b, al
	nop	
	mov	sil, dl
	jmp	.label_325
.label_311:
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_324
.label_316:
	nop	
	mov	r14d, 1
.label_324:
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0x68], rax
	mov	rbp, rbp
	mov	eax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa0], rax
	lea	rdi, [rdi]
	mov	r13b, 1
	mov	sil, dl
	nop	word ptr cs:[rax + rax]
.label_325:
	mov	qword ptr [rsp + 0x28], rsi
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x46], r13b
	cmp	qword ptr [rsp + 0x130], 0
	mov	rbp, rbp
	setne	r12b
	mov	rbp, rbp
	cmp	r9d, 2
	nop	
	setne	r15b
	sete	al
	mov	cl, r13b
	mov	rsp, rsp
	and	cl, 1
	mov	byte ptr [rsp + 0x37], cl
	lea	rsi, [rsi]
	sete	byte ptr [rsp + 0xf6]
	mov	bl, r15b
	and	bl, cl
	mov	byte ptr [rsp + 0x83], bl
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0xa0], 0
	lea	rsi, [rsi]
	setne	cl
	mov	dl, cl
	lea	rsi, [rsi]
	and	dl, bl
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x56], dl
	mov	rbp, rbp
	mov	bl, sil
	and	bl, 1
	mov	byte ptr [rsp + 0xc6], bl
	sete	dl
	lea	rdi, [rdi]
	and	al, bl
	mov	byte ptr [rsp + 0x47], al
	and	r12b, bl
	mov	byte ptr [rsp + 0x57], r12b
	mov	rsp, rsp
	or	dl, r15b
	mov	byte ptr [rsp + 0xc7], dl
	and	r13b, sil
	mov	rbp, rbp
	and	r13b, cl
	mov	byte ptr [rsp + 0xb7], r13b
	mov	rsp, rsp
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_362
	nop	dword ptr [rax]
.label_358:
	mov	rsp, rsp
	inc	r15
.label_362:
	lea	rdi, [rdi]
	cmp	r10, -1
	lea	rsi, [rsi]
	je	.label_387
	cmp	r15, r10
	jne	.label_409
	jmp	.label_410
	nop	dword ptr [rax]
.label_387:
	mov	rcx, -1
	nop	
	cmp	byte ptr [r11 + r15], 0
	mov	rsp, rsp
	je	.label_282
.label_409:
	cmp	byte ptr [rsp + 0x56], 0
	nop	
	je	.label_291
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rbx, [r15 + rax]
	mov	qword ptr [rsp + 0x88], r15
	lea	rsi, [rsi]
	cmp	rax, 2
	jb	.label_295
	lea	rdi, [rdi]
	cmp	r10, -1
	nop	
	jne	.label_295
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	rdi, r11
	mov	r12b, r8b
	mov	r13, r9
	mov	r15, r14
	lea	rsi, [rsi]
	mov	r14, r11
	nop	
	call	strlen
	mov	rbp, rbp
	mov	r11, r14
	mov	r14, r15
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0x38]
	mov	r9, r13
	mov	r8b, r12b
	mov	r10, rax
.label_295:
	mov	rsp, rsp
	cmp	rbx, r10
	lea	rdi, [rdi]
	jbe	.label_327
	mov	dword ptr [rsp + 0x84], 0
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	jmp	.label_330
	nop	dword ptr [rax]
.label_291:
	nop	
	mov	dword ptr [rsp + 0x84], 0
	lea	rsi, [rsi]
	jmp	.label_330
	nop	word ptr cs:[rax + rax]
.label_327:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], r14
	mov	r15d, edi
	lea	rdi, [rdi]
	mov	r13, r9
	mov	rsp, rsp
	mov	r12b, r8b
	lea	rsi, [rsi]
	mov	rbx, r10
	mov	rax, qword ptr [rsp + 0x88]
	lea	rdi, [r11 + rax]
	nop	
	mov	r14, r11
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xa0]
	call	memcmp
	lea	rsi, [rsi]
	test	eax, eax
	sete	al
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x84], eax
	mov	rsp, rsp
	jne	.label_360
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xc6], 0
	mov	rsp, rsp
	mov	r10, rbx
	nop	
	mov	r8b, r12b
	lea	rsi, [rsi]
	mov	r9, r13
	nop	
	mov	edi, r15d
	mov	rbp, rbp
	mov	r11, r14
	mov	r14, qword ptr [rsp + 0x38]
	nop	
	mov	r15, qword ptr [rsp + 0x88]
	je	.label_330
	jmp	.label_286
.label_360:
	mov	r10, rbx
	mov	r8b, r12b
	mov	r9, r13
	mov	edi, r15d
	lea	rsi, [rsi]
	mov	r11, r14
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x38]
	mov	r15, qword ptr [rsp + 0x88]
	nop	dword ptr [rax + rax]
.label_330:
	movzx	r12d, byte ptr [r11 + r15]
	cmp	r12, 0x7e
	ja	.label_390
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	r13b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	rsp, rsp
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_393]]
.label_618:
	test	r15, r15
	jne	.label_297
	jmp	.label_400
.label_622:
	xor	eax, eax
	cmp	r10, -1
	je	.label_403
	test	r15, r15
	jne	.label_404
	nop	
	cmp	r10, 1
	je	.label_400
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_284
.label_611:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x37], 0
	mov	rbp, rbp
	je	.label_391
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_286
	nop	
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_296
	nop	
	mov	al, dil
	nop	
	and	al, 1
	jne	.label_296
	cmp	r14, rbp
	jae	.label_299
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_299:
	nop	
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_389
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x24
.label_389:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_315
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_315:
	nop	
	add	r14, 3
	lea	rdi, [rdi]
	mov	dil, 1
.label_296:
	mov	rcx, r14
	nop	
	cmp	rcx, rbp
	mov	rsp, rsp
	jae	.label_326
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x5c
.label_326:
	lea	r14, [rcx + 1]
	mov	rbp, rbp
	mov	al, 1
	mov	r12b, 0x30
	cmp	r9d, 2
	je	.label_334
	lea	rdx, [r15 + 1]
	cmp	rdx, r10
	jae	.label_340
	nop	
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	mov	rbp, rbp
	movzx	edx, dl
	cmp	edx, 9
	mov	rbp, rbp
	ja	.label_328
	mov	rsp, rsp
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_347
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rdx + r14], 0x30
.label_347:
	nop	
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_354
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + rdx], 0x30
.label_354:
	add	rcx, 3
	xor	r13d, r13d
	lea	rdi, [rdi]
	mov	r14, rcx
	jmp	.label_284
.label_612:
	mov	bl, 0x62
	nop	
	jmp	.label_363
.label_613:
	mov	rsp, rsp
	mov	cl, 0x74
	lea	rsi, [rsi]
	jmp	.label_357
.label_614:
	mov	bl, 0x76
	mov	rbp, rbp
	jmp	.label_363
.label_615:
	lea	rdi, [rdi]
	mov	bl, 0x66
	jmp	.label_363
.label_616:
	mov	cl, 0x72
	lea	rdi, [rdi]
	jmp	.label_357
.label_619:
	nop	
	mov	al, 1
	mov	qword ptr [rsp + 0xc8], rax
	cmp	r9d, 2
	jne	.label_348
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_379
	nop	
	test	rbp, rbp
	sete	al
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rdx, rcx
	mov	rsp, rsp
	test	rdx, rdx
	setne	cl
	lea	rsi, [rsi]
	or	cl, al
	mov	rbp, rbp
	cmove	rdx, rbp
	mov	qword ptr [rsp + 0x48], rdx
	mov	rsp, rsp
	mov	eax, 0
	cmove	rbp, rax
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_384
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_384:
	lea	rax, [r14 + 1]
	lea	rdi, [rdi]
	cmp	rax, rbp
	jae	.label_402
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x5c
.label_402:
	lea	rdi, [rdi]
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_408
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_408:
	mov	rbp, rbp
	add	r14, 3
	lea	rdi, [rdi]
	xor	edi, edi
.label_348:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	r13b, 1
	jmp	.label_284
.label_620:
	lea	rdi, [rdi]
	cmp	r9d, 5
	je	.label_293
	mov	rbp, rbp
	cmp	r9d, 2
	jne	.label_297
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_297
	nop	
	jmp	.label_306
.label_621:
	mov	rsp, rsp
	cmp	r9d, 2
	nop	
	jne	.label_309
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_314
	jmp	.label_317
.label_390:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	qword ptr [rsp + 0xd0], r9
	mov	byte ptr [rsp + 0xf7], r8b
	mov	qword ptr [rsp + 0x78], rbp
	cmp	qword ptr [rsp + 0xa8], 1
	lea	rsi, [rsi]
	jne	.label_319
	mov	rbp, rbp
	mov	rbx, r10
	mov	rbp, r11
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	r11, rbp
	nop	
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r12*2]
	shr	r13d, 0xe
	mov	rsp, rsp
	and	r13b, 1
	lea	rdi, [rdi]
	mov	edx, 1
	lea	rsi, [rsi]
	jmp	.label_338
.label_403:
	lea	rdi, [rdi]
	test	r15, r15
	jne	.label_343
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_343
.label_400:
	mov	dl, 1
.label_617:
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_350
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r13b, dl
	lea	rdi, [rdi]
	jmp	.label_284
.label_391:
	cmp	dword ptr [rsp + 0x94], 0
	mov	rsp, rsp
	jne	.label_358
	jmp	.label_297
.label_309:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	cl, r12b
	je	.label_357
.label_314:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_342
.label_357:
	cmp	byte ptr [rsp + 0xc7], 0
	mov	rbp, rbp
	mov	bl, cl
	je	.label_369
.label_363:
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x37], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_284
	jmp	.label_373
.label_319:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], 0
	lea	rsi, [rsi]
	cmp	r10, -1
	lea	rbp, [rsp + 0x70]
	jne	.label_377
	mov	rdi, r11
	mov	rbx, r11
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	r11, rbx
	mov	r10, rax
.label_377:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd8], r10
	nop	
	mov	r13b, 1
	nop	
	cmp	byte ptr [rsp + 0x47], 0
	lea	rsi, [rsi]
	mov	edx, 0
	je	.label_366
	lea	rax, [r11 + r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe8], rax
	lea	rsi, [rsi]
	mov	r13b, 1
	nop	
	xor	edx, edx
.label_344:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x88], rdx
	lea	rax, [rdx + r15]
	lea	rsi, [r11 + rax]
	mov	rsp, rsp
	mov	rdx, r10
	lea	rsi, [rsi]
	sub	rdx, rax
	lea	rdi, [rsp + 0x58]
	mov	rcx, rbp
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	rbx, rax
	cmp	rbx, -2
	lea	rdi, [rdi]
	je	.label_372
	mov	rsp, rsp
	cmp	rbx, -1
	movabs	rsi, 0x20000002b
	je	.label_289
	test	rbx, rbx
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_353
	lea	rsi, [rsi]
	cmp	rbx, 2
	nop	
	mov	rbp, qword ptr [rsp + 0x78]
	jb	.label_304
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rsp + 0xe8]
	lea	rdi, [rdi]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax + rax]
.label_332:
	nop	
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	mov	rbp, rbp
	cmp	edx, 0x21
	mov	rbp, rbp
	ja	.label_321
	lea	rsi, [rsi]
	bt	rsi, rdx
	nop	
	jb	.label_322
.label_321:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbx
	jb	.label_332
.label_304:
	mov	edi, dword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_337
	mov	rbp, rbp
	xor	r13d, r13d
.label_337:
	lea	rbp, [rsp + 0x70]
	nop	
	mov	rax, qword ptr [rsp + 0x88]
	lea	rdi, [rdi]
	add	rax, rbx
	mov	rdi, rbp
	nop	
	mov	rbx, rax
	call	mbsinit
	mov	rdx, rbx
	test	eax, eax
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	je	.label_344
	jmp	.label_290
	nop	
.label_366:
	mov	qword ptr [rsp + 0x88], rdx
	lea	rax, [rdx + r15]
	lea	rsi, [rsi]
	lea	rsi, [r11 + rax]
	mov	rdx, r10
	lea	rdi, [rdi]
	sub	rdx, rax
	mov	rsp, rsp
	lea	rdi, [rsp + 0x58]
	lea	rsi, [rsi]
	mov	rcx, rbp
	mov	rbp, rbp
	mov	rbx, rbp
	call	rpl_mbrtowc
	mov	rbp, rax
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_367
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_289
	mov	rbp, rbp
	cmp	rbp, -2
	mov	rsp, rsp
	je	.label_372
	mov	edi, dword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	call	iswprint
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_380
	xor	r13d, r13d
.label_380:
	nop	
	mov	rax, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	add	rax, rbp
	mov	rsp, rsp
	mov	rbp, rbx
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rbx, rax
	lea	rdi, [rdi]
	call	mbsinit
	mov	rdx, rbx
	test	eax, eax
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_366
	lea	rsi, [rsi]
	jmp	.label_290
.label_343:
	lea	rdi, [rdi]
	mov	r10, -1
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_284
.label_293:
	cmp	dword ptr [rsp + 0x5c], 0
	lea	rdi, [rdi]
	je	.label_297
	lea	rcx, [r15 + 2]
	cmp	rcx, r10
	jae	.label_297
	movzx	eax, byte ptr [r15 + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_297
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	nop	
	cmp	edx, 0x3e
	lea	rdi, [rdi]
	ja	.label_283
	movabs	rsi, 0x7000a38200000000
	mov	rbp, rbp
	bt	rsi, rdx
	lea	rsi, [rsi]
	jae	.label_292
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_365
	lea	rdi, [rdi]
	cmp	r14, rbp
	jae	.label_305
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x3f
.label_305:
	mov	rsp, rsp
	lea	rax, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rax, rbp
	jae	.label_313
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x22
.label_313:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_288
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rax], 0x22
.label_288:
	nop	
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_401
	nop	
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x3f
.label_401:
	add	r14, 4
	xor	eax, eax
	nop	
	mov	r15, rcx
	mov	rsp, rsp
	mov	r12b, dl
	mov	rsp, rsp
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_284
.label_297:
	mov	rbp, rbp
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_284:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x83], 0
	je	.label_370
	cmp	qword ptr [rsp + 0x130], 0
	jne	.label_346
	nop	
	jmp	.label_349
	nop	dword ptr [rax + rax]
.label_370:
	cmp	byte ptr [rsp + 0x57], 0
	lea	rdi, [rdi]
	je	.label_349
.label_346:
	lea	rdi, [rdi]
	mov	cl, r12b
	lea	rdi, [rdi]
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	lea	rsi, [rsi]
	mov	cl, r12b
	shl	esi, cl
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
	jne	.label_355
	mov	rcx, qword ptr [rsp + 0x130]
	and	esi, dword ptr [rcx + rdx*4]
	mov	rbp, rbp
	jmp	.label_345
	nop	word ptr cs:[rax + rax]
.label_349:
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
.label_345:
	mov	bl, r12b
	je	.label_342
	jmp	.label_373
.label_355:
	mov	bl, r12b
.label_373:
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_286
	cmp	r9d, 2
	jne	.label_375
	mov	al, dil
	and	al, 1
	jne	.label_375
	lea	rdi, [rdi]
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_382
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_382:
	nop	
	lea	rax, [r14 + 1]
	mov	rsp, rsp
	cmp	rax, rbp
	jae	.label_388
	mov	rcx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_388:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_394
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_394:
	mov	rsp, rsp
	add	r14, 3
	mov	dil, 1
.label_375:
	mov	rbp, rbp
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_399
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_399:
	mov	rbp, rbp
	inc	r14
	jmp	.label_406
.label_404:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_284
.label_334:
	xor	r13d, r13d
	jmp	.label_284
.label_340:
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_284
.label_328:
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_284
.label_289:
	xor	r13d, r13d
.label_367:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	jmp	.label_290
.label_372:
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x88]
	lea	rax, [rdx + r15]
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	cmp	rax, r10
	mov	r11, qword ptr [rsp + 0xe0]
	jae	.label_302
	lea	rax, [r11 + r15]
.label_320:
	mov	rbp, rbp
	cmp	byte ptr [rax + rdx], 0
	mov	rbp, rbp
	je	.label_310
	lea	rcx, [r15 + rdx + 1]
	inc	rdx
	cmp	rcx, r10
	lea	rdi, [rdi]
	jb	.label_320
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_290
.label_302:
	xor	r13d, r13d
	jmp	.label_290
.label_310:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_290
.label_353:
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0x88]
.label_290:
	mov	rbp, rbp
	mov	rbx, r10
.label_338:
	mov	rsp, rsp
	and	r13b, 1
	lea	rdi, [rdi]
	mov	cl, r13b
	lea	rdi, [rdi]
	or	cl, byte ptr [rsp + 0xf6]
	cmp	rdx, 1
	mov	rbp, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	mov	r8b, byte ptr [rsp + 0xf7]
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0xd0]
	mov	edi, dword ptr [rsp + 0x38]
	ja	.label_351
	test	cl, cl
	je	.label_351
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_284
.label_351:
	mov	rsp, rsp
	add	rdx, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x88], rdx
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_356
	nop	dword ptr [rax]
.label_352:
	nop	
	inc	r14
	mov	rbp, rbp
	mov	r12b, byte ptr [r11 + r15 + 1]
	nop	
	mov	r15, rdx
.label_356:
	mov	rsp, rsp
	test	cl, cl
	je	.label_364
	mov	edx, dword ptr [rsp + 0x84]
	test	dl, 1
	lea	rsi, [rsi]
	je	.label_368
	cmp	r14, rbp
	jae	.label_371
	nop	
	mov	rdx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + r14], 0x5c
.label_371:
	inc	r14
	mov	dword ptr [rsp + 0x84], 0
.label_368:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_378
	nop	dword ptr [rax + rax]
.label_364:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_385
	cmp	r9d, 2
	mov	rsp, rsp
	mov	r10, rbx
	jne	.label_376
	mov	rsp, rsp
	mov	al, dil
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_376
	lea	rsi, [rsi]
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_395
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_395:
	lea	rax, [r14 + 1]
	nop	
	cmp	rax, rbp
	jae	.label_335
	mov	rdx, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_335:
	lea	rax, [r14 + 2]
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_405
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdx + rax], 0x27
.label_405:
	lea	rsi, [rsi]
	add	r14, 3
	mov	rsp, rsp
	mov	dil, 1
.label_376:
	cmp	r14, rbp
	jae	.label_287
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_287:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_329
	mov	dl, r12b
	lea	rdi, [rdi]
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], dl
.label_329:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	mov	rsp, rsp
	jae	.label_381
	mov	dl, r12b
	shr	dl, 3
	and	dl, 7
	nop	
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rsi + rax], dl
.label_381:
	nop	
	add	r14, 3
	mov	rsp, rsp
	and	r12b, 7
	or	r12b, 0x30
	mov	rbp, rbp
	mov	al, 1
.label_378:
	lea	rdx, [r15 + 1]
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x88], rdx
	lea	rsi, [rsi]
	jbe	.label_342
	mov	rbp, rbp
	test	dil, 1
	lea	rsi, [rsi]
	je	.label_312
	lea	rsi, [rsi]
	mov	bl, al
	and	bl, 1
	jne	.label_312
	nop	
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_407
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + r14], 0x27
.label_407:
	lea	rsi, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rsi, rbp
	jae	.label_392
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdi + rsi], 0x27
.label_392:
	add	r14, 2
	mov	rsp, rsp
	xor	edi, edi
.label_312:
	nop	
	mov	rbx, r10
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_352
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + r14], r12b
	jmp	.label_352
	nop	word ptr cs:[rax + rax]
.label_342:
	test	dil, 1
	je	.label_359
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_359
	nop	
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_341
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_341:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_323
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_323:
	lea	rdi, [rdi]
	add	r14, 2
	nop	
	xor	edi, edi
.label_359:
	lea	rsi, [rsi]
	mov	bl, r12b
.label_406:
	cmp	r14, rbp
	jae	.label_308
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + r14], bl
.label_308:
	inc	r14
	lea	rsi, [rsi]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	lea	rsi, [rsi]
	mov	r8b, r13b
	jmp	.label_358
.label_283:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_284
.label_292:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_284
	nop	word ptr [rax + rax]
.label_410:
	nop	
	mov	rcx, r15
.label_282:
	mov	rbp, rbp
	cmp	r9d, 2
	nop	
	setne	al
	mov	rbp, rbp
	test	r14, r14
	mov	rsp, rsp
	setne	dl
	cmp	byte ptr [rsp + 0xc6], 0
	lea	rsi, [rsi]
	je	.label_397
	mov	rsp, rsp
	or	al, dl
	je	.label_398
.label_397:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe0], r11
	cmp	r9d, 2
	nop	
	setne	al
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x46]
	nop	
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	je	.label_303
	mov	rsp, rsp
	or	al, dl
	jne	.label_303
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rdi, [rdi]
	jne	.label_298
	cmp	qword ptr [rsp + 0x48], 0
	mov	rsp, rsp
	je	.label_303
	mov	rbp, rbp
	test	rbp, rbp
	mov	rbp, rbp
	mov	r12d, r9d
	mov	al, bl
	mov	r15, rcx
	lea	rsi, [rsi]
	mov	dl, sil
	mov	r13, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	je	.label_307
.label_303:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x68]
	test	rdx, rdx
	je	.label_318
	nop	
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_318
	mov	rsp, rsp
	mov	al, byte ptr [rdx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_318
	mov	rbp, rbp
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_339:
	cmp	r14, rbp
	jae	.label_336
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_336:
	mov	rbp, rbp
	inc	r14
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	lea	rsi, [rsi]
	test	al, al
	jne	.label_339
.label_318:
	cmp	r14, rbp
	jae	.label_333
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + r14], 0
	jmp	.label_333
.label_350:
	lea	rdi, [rdi]
	mov	r9d, 2
	jmp	.label_286
.label_322:
	mov	r9d, 2
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	jmp	.label_286
.label_385:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_286
.label_398:
	lea	rdi, [rdi]
	mov	r10, rcx
	mov	rsp, rsp
	jmp	.label_286
.label_369:
	nop	
	mov	r9d, 2
.label_286:
	cmp	byte ptr [rsp + 0x37], 0
	mov	r8d, 4
	mov	rbp, rbp
	cmove	r8d, r9d
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x24]
	lea	rdi, [rdi]
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	nop	
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], 0
	nop	
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	rsi, rbp
	lea	rdi, [rdi]
	mov	rdx, r11
	nop	
	mov	rcx, r10
.label_396:
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	r14, rax
.label_333:
	lea	rdi, [rdi]
	mov	rax, r14
	lea	rdi, [rdi]
	add	rsp, 0xf8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
.label_298:
	mov	rax, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x130]
	nop	
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x24]
	jmp	.label_396
.label_379:
	mov	r9d, 2
	jmp	.label_286
.label_317:
	nop	
	mov	r9d, 2
	mov	rsp, rsp
	jmp	.label_286
.label_306:
	mov	r9d, 2
	mov	rbp, rbp
	jmp	.label_286
.label_365:
	mov	r9d, 5
	nop	
	jmp	.label_286
.label_331:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406250
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
	#Procedure 0x406390
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
	je	.label_411
	mov	qword ptr [rax], rbx
.label_411:
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
	#Procedure 0x4064e0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_412
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_416:
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
	jl	.label_416
.label_412:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_415
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_413]], OFFSET FLAT:slot0
.label_415:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_414
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_414:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4065a0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x4065b0

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
	js	.label_423
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_419
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_421
.label_419:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_417
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
	jne	.label_422
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_422:
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
.label_421:
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
	ja	.label_420
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
	je	.label_418
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_418:
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
.label_420:
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
.label_423:
	lea	rdi, [rdi]
	call	abort
.label_417:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x406820
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406830
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
	#Procedure 0x406860
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
	#Procedure 0x406890
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
	je	.label_424
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
.label_424:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406920

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
	je	.label_425
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
.label_425:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4069c0

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
	je	.label_426
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
.label_426:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a50
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
	je	.label_427
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
.label_427:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406ac0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_428]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_429]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_430]]
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
	#Procedure 0x406b60
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_428]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_429]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_430]]
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
	#Procedure 0x406c00

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_428]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_429]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_430]]
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
	#Procedure 0x406c70
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_428]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_429]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_430]]
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
	#Procedure 0x406ce0

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
	je	.label_431
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
.label_431:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406dc0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_428]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_429]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_430]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_432
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_432
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
.label_432:
	nop	
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406e50
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_428]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_429]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_430]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_433
	test	rdx, rdx
	je	.label_433
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
.label_433:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ee0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_428]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_429]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_430]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_434
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_434
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
.label_434:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406f80
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_428]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_429]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_430]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_435
	test	rsi, rsi
	je	.label_435
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
.label_435:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407020
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407030
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
	#Procedure 0x407050
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
	#Procedure 0x407070

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
	#Procedure 0x4070a0

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
	jne	.label_437
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_439
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_438
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_438
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_438
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_438
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_438
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_438
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_437
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_437
.label_439:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_438
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_438
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_438
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_438
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_438
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_438
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_436
.label_438:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12
	cmove	rax, rcx
.label_437:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_436:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_437
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_437
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407210

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
	#Procedure 0x407230

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
	je	.label_445
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
	jmp	.label_448
.label_445:
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
.label_448:
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
	ja	.label_443
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_441]]
.label_656:
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
.label_443:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_449
.label_657:
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
.label_658:
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
.label_659:
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
	jmp	.label_444
.label_660:
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
	jmp	.label_442
.label_661:
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
	jmp	.label_447
.label_662:
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
.label_447:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_442:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_444:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_440
.label_664:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_0
.label_449:
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
	jmp	.label_446
.label_663:
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
.label_446:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_440:
	mov	rbp, rbp
	call	__fprintf_chk
.label_655:
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
	#Procedure 0x407620
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_450:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_450
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407650
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_454:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_451
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_452
	nop	word ptr cs:[rax + rax]
.label_451:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_452:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_453
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_454
.label_453:
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
	#Procedure 0x4076e0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_455
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
.label_455:
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
.label_457:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_456
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_458
	nop	dword ptr [rax + rax]
.label_456:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_458:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_459
	inc	r9
	cmp	r9, 0xa
	jb	.label_457
.label_459:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407820
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
	#Procedure 0x4078b0
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
	jb	.label_460
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_461
	test	rax, rax
	je	.label_460
.label_461:
	nop	
	pop	rbx
	ret	
.label_460:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407900

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_462
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_463
.label_462:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_463:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407930
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
	jb	.label_465
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_464
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_464
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_464:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_466
	test	rax, rax
	je	.label_465
.label_466:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_465:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4079b0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_467
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_467
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_467:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_468
	test	rax, rax
	nop	
	je	.label_469
.label_468:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_469:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a00
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_470
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_474
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_473
.label_470:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_476
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_476:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_471
.label_473:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_472
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_472
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_472:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_475
	test	rax, rax
	mov	rbp, rbp
	je	.label_474
.label_475:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_474:
	call	xalloc_die
.label_471:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ae0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_478
	test	rax, rax
	mov	rbp, rbp
	je	.label_477
.label_478:
	pop	rbx
	ret	
.label_477:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x407b00

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_479
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_482
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_483
	call	free
	xor	eax, eax
	jmp	.label_480
.label_479:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_481
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_483:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_480
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_481
.label_480:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_481:
	mov	rbp, rbp
	call	xalloc_die
.label_482:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407b90
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
	je	.label_484
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_485
.label_484:
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
.label_485:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407bf0

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
	jb	.label_486
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_486
	pop	rcx
	ret	
.label_486:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x407c20

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
	je	.label_488
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_487
.label_488:
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
.label_487:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407c80
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
	je	.label_489
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_490
.label_489:
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
.label_490:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x407ce0

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
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407d30

	.globl xmemcoll
	.type xmemcoll, @function
xmemcoll:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	nop	
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rdi, [rdi]
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	r13, rcx
	mov	rbp, rbp
	mov	r12, rdx
	mov	r14, rsi
	mov	r15, rdi
	lea	rsi, [rsi]
	call	memcoll
	mov	ebp, eax
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	lea	rsi, [rsi]
	test	ebx, ebx
	lea	rdi, [rdi]
	je	.label_491
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_5
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	esi, ebx
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rbp, rbp
	call	error
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rcx
	call	error
	nop	
	mov	eax,  dword ptr [dword ptr [rip + exit_failure]]
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 4], eax
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.2_2
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rbx, r13
	mov	r13, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 8
	nop	
	mov	rdx, r15
	lea	rsi, [rsi]
	mov	rcx, r14
	lea	rdi, [rdi]
	call	quotearg_n_style_mem
	mov	r14, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, 8
	mov	rdx, r12
	mov	rsp, rsp
	mov	rcx, rbx
	call	quotearg_n_style_mem
	mov	rbx, rax
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	edi, dword ptr [rsp + 4]
	mov	rsp, rsp
	mov	rdx, r13
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	r8, rbx
	mov	rbp, rbp
	call	error
.label_491:
	mov	rsp, rsp
	mov	eax, ebp
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407e80
	.globl xmemcoll0
	.type xmemcoll0, @function
xmemcoll0:

	mov	rsp, rsp
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	push	rax
	lea	rdi, [rdi]
	mov	r14, rcx
	lea	rdi, [rdi]
	mov	r15, rdx
	lea	rsi, [rsi]
	mov	rbp, rsi
	mov	r12, rdi
	lea	rsi, [rsi]
	call	memcoll0
	mov	r13d, eax
	call	__errno_location
	nop	
	mov	ebx, dword ptr [rax]
	test	ebx, ebx
	mov	rbp, rbp
	je	.label_492
	lea	rdi, [rdi]
	dec	rbp
	dec	r14
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str_5
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rcx
	nop	
	call	error
	mov	eax,  dword ptr [dword ptr [rip + exit_failure]]
	mov	dword ptr [rsp + 4], eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_2
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rbx, r15
	nop	
	mov	r15d, r13d
	lea	rdi, [rdi]
	mov	r13, rax
	xor	edi, edi
	nop	
	mov	esi, 8
	mov	rdx, r12
	mov	rcx, rbp
	call	quotearg_n_style_mem
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, 8
	nop	
	mov	rdx, rbx
	mov	rcx, r14
	call	quotearg_n_style_mem
	lea	rsi, [rsi]
	mov	rbx, rax
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, dword ptr [rsp + 4]
	mov	rdx, r13
	nop	
	mov	r13d, r15d
	mov	rcx, rbp
	lea	rsi, [rsi]
	mov	r8, rbx
	mov	rsp, rsp
	call	error
.label_492:
	mov	eax, r13d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407fd0

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
	jae	.label_514
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
.label_509:
	mov	rbp, rbp
	movzx	eax, byte ptr [rdx]
	inc	rdx
	mov	rbp, rbp
	test	byte ptr [rcx + rax*2 + 1], 0x20
	lea	rdi, [rdi]
	jne	.label_509
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
	je	.label_507
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
	je	.label_495
	mov	eax, dword ptr [r15]
	lea	rsi, [rsi]
	xor	ebx, ebx
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_503
	cmp	eax, 0x22
	lea	rsi, [rsi]
	jne	.label_507
	mov	ebx, 1
.label_503:
	test	r14, r14
	jne	.label_511
	mov	rbp, rbp
	jmp	.label_500
.label_495:
	mov	rsp, rsp
	test	r14, r14
	je	.label_507
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	lea	rdi, [rdi]
	je	.label_507
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
	je	.label_507
.label_511:
	movsx	r13d, byte ptr [r12]
	nop	
	test	r13d, r13d
	mov	rsp, rsp
	je	.label_500
	mov	rsp, rsp
	mov	qword ptr [rsp], rcx
	nop	
	mov	rdi, r14
	mov	esi, r13d
	mov	rsp, rsp
	call	strchr
	test	rax, rax
	je	.label_496
	mov	rsp, rsp
	mov	r15d, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_493
	movabs	rdx, 0x814400308945
	lea	rsi, [rsi]
	bt	rdx, rax
	lea	rdi, [rdi]
	jae	.label_493
	mov	esi, 0x30
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strchr
	nop	
	mov	r15d, 1
	mov	rbp, rbp
	mov	esi, 0x400
	test	rax, rax
	je	.label_493
	movsx	eax, byte ptr [r12 + 1]
	mov	rsp, rsp
	mov	r15d, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	nop	
	je	.label_502
	nop	
	cmp	eax, 0x44
	je	.label_502
	cmp	eax, 0x69
	jne	.label_493
	mov	rbp, rbp
	movzx	eax, byte ptr [r12 + 2]
	lea	rsi, [rsi]
	mov	r15d, 3
	cmp	eax, 0x42
	je	.label_510
	mov	r15d, 1
.label_510:
	lea	rdi, [rdi]
	mov	esi, 0x400
	mov	rsp, rsp
	jmp	.label_493
.label_502:
	mov	r15d, 2
	nop	
	mov	esi, 0x3e8
.label_493:
	cmp	r13d, 0x59
	jg	.label_515
	lea	eax, [r13 - 0x42]
	mov	rbp, rbp
	cmp	eax, 0xe
	ja	.label_516
	jmp	qword ptr [word ptr [+ (rax * 8) + label_494]]
.label_570:
	nop	
	mov	rax, rbp
	shr	rax, 0x36
	setne	dl
	mov	rsp, rsp
	shl	rbp, 0xa
	jmp	.label_498
.label_515:
	cmp	r13d, 0x73
	mov	rbp, rbp
	jg	.label_504
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	ja	.label_508
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_512]]
.label_605:
	nop	
	mov	rax, rbp
	shr	rax, 0x37
	setne	dl
	shl	rbp, 9
.label_498:
	cmp	rax, 1
	mov	rbp, rbp
	sbb	rax, rax
	not	rax
	lea	rdi, [rdi]
	or	rbp, rax
	movzx	eax, dl
	jmp	.label_513
.label_516:
	lea	rdi, [rdi]
	cmp	r13d, 0x54
	lea	rdi, [rdi]
	je	.label_499
	mov	rbp, rbp
	cmp	r13d, 0x59
	jne	.label_496
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
	jmp	.label_497
.label_504:
	nop	
	cmp	r13d, 0x74
	mov	rbp, rbp
	je	.label_499
	mov	rsp, rsp
	cmp	r13d, 0x77
	jne	.label_496
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
	jmp	.label_513
.label_572:
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
	jmp	.label_506
.label_573:
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
	jmp	.label_505
.label_574:
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
	jmp	.label_506
.label_499:
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
	jmp	.label_506
.label_508:
	cmp	r13d, 0x5a
	lea	rdi, [rdi]
	jne	.label_496
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
.label_497:
	lea	rsi, [rsi]
	movzx	eax, dl
	and	eax, 1
	jmp	.label_505
.label_496:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rax], rbp
	or	ebx, 2
	mov	rsp, rsp
	jmp	.label_501
.label_571:
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
.label_506:
	lea	rdi, [rdi]
	and	dl, 1
	lea	rsi, [rsi]
	movzx	eax, dl
.label_505:
	mov	rbp, rsi
.label_513:
	or	eax, ebx
	nop	
	lea	rcx, [r12 + r15]
	mov	rdx, qword ptr [rsp]
	mov	rbp, rbp
	mov	qword ptr [rdx], rcx
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + r15], 0
	mov	rbp, rbp
	je	.label_517
	or	eax, 2
.label_517:
	mov	ebx, eax
.label_500:
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	qword ptr [rax], rbp
.label_501:
	mov	r13d, ebx
.label_507:
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
.label_575:
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
	jmp	.label_505
.label_514:
	mov	edi, OFFSET FLAT:.str_6
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_6
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoul
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4088b0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_518
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_519
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
	je	.label_519
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
.label_518:
	mov	ecx, 1
.label_519:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408920

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
	js	.label_520
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_522
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
	je	.label_520
.label_522:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_520
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_521
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_521:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_520:
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
	#Procedure 0x4089d0

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
	je	.label_540
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
.label_540:
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
	ja	.label_532
	lea	rsi, [rsi]
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_525
	mov	eax, 0x514
	mov	rsp, rsp
	bt	eax, esi
	lea	rdi, [rdi]
	jb	.label_523
	mov	rsp, rsp
	test	esi, esi
	jne	.label_532
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	lea	rsi, [rsi]
	ja	.label_534
	lea	rdi, [rdi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_539
.label_532:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_527
	mov	ecx, 0x85
	mov	rbp, rbp
	bt	ecx, eax
	lea	rsi, [rsi]
	jb	.label_523
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_528
.label_525:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_530
.label_523:
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rsp, rsp
	cmp	rcx, 0x28
	nop	
	ja	.label_531
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_536
.label_531:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_536:
	mov	edx, dword ptr [rax]
.label_543:
	nop	
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
.label_530:
	mov	ebp, eax
.label_524:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_528:
	lea	rsi, [rsi]
	cmp	eax, 6
	jne	.label_527
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_529
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_533
.label_527:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_538
	mov	rax, rcx
	lea	rsi, [rsi]
	add	rax, qword ptr [rsp + 0xc0]
	nop	
	lea	ecx, [rcx + 8]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_541
.label_534:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_539:
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax]
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_543
.label_529:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_533:
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_535
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
	jns	.label_542
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_542
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
	js	.label_524
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	rsp, rsp
	mov	al, 1
	jmp	.label_526
.label_542:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_524
.label_538:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_541:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	nop	
	mov	edi, ebx
	lea	rdi, [rdi]
	call	fcntl
	nop	
	jmp	.label_530
.label_535:
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
.label_526:
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_524
	test	ebp, ebp
	lea	rsi, [rsi]
	js	.label_524
	mov	esi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_537
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
	jne	.label_524
.label_537:
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
	jmp	.label_524
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x408da0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_544
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_544
	test	byte ptr [rbx + 1], 1
	je	.label_544
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_544:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408de0

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
	jne	.label_545
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_545
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_546
.label_545:
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
.label_546:
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
	je	.label_547
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_547:
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
	#Procedure 0x408e90

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
	je	.label_548
	nop	
	cmp	r15, -2
	jb	.label_548
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_548
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_548:
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
	#Procedure 0x408f20

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
	jne	.label_549
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_550
	test	cl, cl
	mov	rsp, rsp
	jne	.label_550
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_550
.label_549:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_550
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_550:
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
	#Procedure 0x408fb0

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
	mov	ecx, OFFSET FLAT:.str_1
	nop	
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_7
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_551
	nop	
	mov	rax, rcx
.label_551:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ff0

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
	jne	.label_554
	mov	rdi, r12
	nop	
	mov	rsi, r14
	mov	rdx, rbp
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_553
.label_554:
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
.label_557:
	mov	dword ptr [rbx], 0
	mov	rdi, r14
	mov	rsi, rbp
	call	strcoll
	nop	
	test	eax, eax
	jne	.label_555
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
	je	.label_556
	lea	rsi, [rsi]
	add	rbp, rax
	lea	rdi, [rdi]
	add	r14, r12
	lea	rdi, [rdi]
	sub	r15, rax
	mov	eax, 1
	jne	.label_557
	lea	rdi, [rdi]
	jmp	.label_555
.label_556:
	nop	
	xor	ecx, ecx
	cmp	r15, rax
	mov	rbp, rbp
	mov	eax, 0xffffffff
	cmove	eax, ecx
.label_555:
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
	jmp	.label_552
.label_553:
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_552:
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
	#Procedure 0x409170

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
	jne	.label_561
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r15
	mov	rbp, rbp
	call	memcmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_560
.label_561:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	mov	r13, rax
	nop	word ptr [rax + rax]
.label_562:
	mov	rsp, rsp
	mov	dword ptr [r13], 0
	mov	rdi, rbx
	mov	rsi, r12
	nop	
	call	strcoll
	test	eax, eax
	jne	.label_558
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
	je	.label_559
	nop	
	add	r12, rax
	nop	
	add	rbx, rbp
	lea	rsi, [rsi]
	sub	r14, rax
	nop	
	mov	eax, 1
	mov	rbp, rbp
	jne	.label_562
	nop	
	jmp	.label_558
.label_559:
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	r14, rax
	mov	eax, 0xffffffff
	lea	rdi, [rdi]
	cmove	eax, ecx
	mov	rsp, rsp
	jmp	.label_558
.label_560:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_558:
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
	#Procedure 0x409280

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