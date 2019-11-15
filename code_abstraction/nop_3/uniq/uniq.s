	.section	.text
	.align	16
	#Procedure 0x401730

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
	mov	esi, OFFSET FLAT:.str.33
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
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
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
	mov	esi, OFFSET FLAT:.str.44
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.45
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.46
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.14
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.47
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.14
	mov	ecx, OFFSET FLAT:.str.48
	xor	eax, eax
	call	__printf_chk
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
	#Procedure 0x401a10

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	r12, rsi
	mov	ebp, edi
	mov	edi, OFFSET FLAT:.str.15
	call	getenv
	mov	r14, rax
	mov	eax, OFFSET FLAT:.str.16
	movq	xmm0, rax
	pshufd	xmm0, xmm0, 0x44
	movdqa	xmmword ptr [rsp + 0x40], xmm0
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.18_0
	mov	esi, OFFSET FLAT:.str.19
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.18_0
	call	textdomain
	mov	edi, 3
	call	hard_locale
	mov	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  al
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	qword ptr [word ptr [rip + skip_chars]],  0
	mov	qword ptr [word ptr [rip + skip_fields]],  0
	mov	qword ptr [word ptr [rip + check_chars]],  -1
	mov	byte ptr [byte ptr [rip + output_first_repeated]],  1
	mov	byte ptr [byte ptr [rip + output_unique]],  1
	mov	byte ptr [byte ptr [rip + output_later_repeated]],  0
	mov	byte ptr [byte ptr [rip + countmode]],  1
	mov	dword ptr [dword ptr [rip + delimit_groups]],  0
	mov	bl, 0xa
	xor	ecx, ecx
	mov	dword ptr [rsp + 0x38], 0
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_10
	nop	word ptr cs:[rax + rax]
.label_35:
	lea	edx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  edx
	mov	rax, qword ptr [r12 + rax*8]
	mov	edx, r13d
	inc	r13d
	mov	qword ptr [rsp + rdx*8 + 0x40], rax
	mov	bl, r15b
.label_10:
	mov	r15b, bl
	test	r14, r14
	setne	al
	test	r13d, r13d
	setne	dl
	cmp	ecx, -1
	je	.label_40
	and	al, dl
	jne	.label_40
	xor	ebx, ebx
	mov	edx, OFFSET FLAT:.str.20
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r12
	call	getopt_long
	cmp	eax, 0x43
	jg	.label_66
	test	eax, eax
	jle	.label_67
	lea	ecx, [rax - 0x30]
	cmp	ecx, 0xa
	jae	.label_69
	cmp	dword ptr [rsp + 0x38], 2
	jne	.label_71
	mov	qword ptr [word ptr [rip + skip_fields]],  0
	xor	ecx, ecx
	jmp	.label_73
	nop	word ptr [rax + rax]
.label_66:
	cmp	eax, 0x72
	jg	.label_78
	lea	ecx, [rax - 0x63]
	cmp	ecx, 6
	ja	.label_80
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_82]]
.label_474:
	mov	byte ptr [byte ptr [rip + countmode]],  0
	mov	al, 1
	mov	qword ptr [rsp + 0x30], rax
	mov	ecx, 0x63
	mov	bl, r15b
	jmp	.label_10
.label_78:
	lea	edx, [rax - 0x73]
	cmp	edx, 7
	ja	.label_86
	mov	ecx, 0x7a
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_88]]
.label_483:
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_0
	mov	rdi, rbx
	lea	rcx, [rsp + 0x70]
	call	xstrtoul
	cmp	eax, 2
	jae	.label_93
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [word ptr [rip + skip_chars]],  rax
	mov	ecx, 0x73
	mov	bl, r15b
	jmp	.label_10
.label_71:
	mov	rcx,  qword ptr [word ptr [rip + skip_fields]]
	movabs	rdx, 0x1999999999999999
	cmp	rcx, rdx
	ja	.label_15
.label_73:
	lea	rdx, [rcx + rcx*4]
	movsxd	rsi, eax
	lea	rdx, [rsi + rdx*2 - 0x30]
	cmp	rdx, rcx
	jae	.label_56
.label_15:
	mov	qword ptr [word ptr [rip + skip_fields]],  -1
	jmp	.label_23
.label_56:
	mov	qword ptr [word ptr [rip + skip_fields]],  rdx
.label_23:
	mov	dword ptr [rsp + 0x38], 1
	mov	ecx, eax
	mov	bl, r15b
	jmp	.label_10
.label_67:
	mov	ecx, 0xffffffff
	cmp	eax, -1
	jne	.label_29
	nop	dword ptr [rax]
.label_40:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, ebp
	jge	.label_57
	cmp	r13d, 2
	jne	.label_35
	jmp	.label_38
.label_80:
	cmp	eax, 0x44
	jne	.label_19
	mov	byte ptr [byte ptr [rip + output_unique]],  0
	mov	byte ptr [byte ptr [rip + output_later_repeated]],  1
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	xor	eax, eax
	test	rsi, rsi
	je	.label_41
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.22
	mov	edx, OFFSET FLAT:delimit_method_string
	mov	ecx, OFFSET FLAT:delimit_method_map
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + delimit_method_map]]
.label_41:
	mov	dword ptr [dword ptr [rip + delimit_groups]],  eax
	mov	al, 1
	mov	qword ptr [rsp + 0x30], rax
	mov	ecx, 0x44
	mov	bl, r15b
	jmp	.label_10
.label_86:
	cmp	eax, 0x80
	jne	.label_19
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	test	rsi, rsi
	je	.label_58
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.23
	mov	edx, OFFSET FLAT:grouping_method_string
	mov	ecx, OFFSET FLAT:grouping_method_map
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + grouping_method_map]]
	mov	dword ptr [dword ptr [rip + grouping]],  eax
	jmp	.label_64
.label_475:
	mov	byte ptr [byte ptr [rip + output_unique]],  0
	mov	al, 1
	mov	qword ptr [rsp + 0x30], rax
	mov	ecx, 0x64
	mov	bl, r15b
	jmp	.label_10
.label_476:
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_0
	mov	rdi, rbx
	lea	rcx, [rsp + 0x70]
	call	xstrtoul
	cmp	eax, 2
	jae	.label_77
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [word ptr [rip + skip_fields]],  rax
	mov	dword ptr [rsp + 0x38], 2
	mov	ecx, 0x66
	mov	bl, r15b
	jmp	.label_10
.label_477:
	mov	byte ptr [byte ptr [rip + ignore_case]],  1
	mov	ecx, 0x69
	mov	bl, r15b
	jmp	.label_10
.label_484:
	mov	byte ptr [byte ptr [rip + output_first_repeated]],  0
	mov	al, 1
	mov	qword ptr [rsp + 0x30], rax
	mov	ecx, 0x75
	mov	bl, r15b
	jmp	.label_10
.label_485:
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_0
	mov	rdi, rbx
	lea	rcx, [rsp + 0x70]
	call	xstrtoul
	cmp	eax, 2
	jae	.label_12
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [word ptr [rip + check_chars]],  rax
	mov	ecx, 0x77
	mov	bl, r15b
	jmp	.label_10
.label_69:
	cmp	eax, 1
	jne	.label_19
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x2b
	jne	.label_24
	call	posix2_version
	add	eax, 0xfffcf250
	cmp	eax, 0x2b9
	jb	.label_24
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_0
	lea	rcx, [rsp + 0x70]
	call	xstrtoul
	test	eax, eax
	je	.label_43
.label_24:
	cmp	r13d, 2
	je	.label_30
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	ecx, r13d
	inc	r13d
	mov	qword ptr [rsp + rcx*8 + 0x40], rax
.label_45:
	mov	ecx, 1
	mov	bl, r15b
	jmp	.label_10
.label_58:
	mov	dword ptr [dword ptr [rip + grouping]],  3
.label_64:
	mov	ecx, 0x80
	mov	bl, r15b
	jmp	.label_10
.label_43:
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [word ptr [rip + skip_chars]],  rax
	jmp	.label_45
.label_57:
	mov	ecx,  dword ptr [dword ptr [rip + grouping]]
	mov	rax, qword ptr [rsp + 0x30]
	test	al, al
	je	.label_48
	test	ecx, ecx
	jne	.label_49
.label_48:
	mov	al,  byte ptr [byte ptr [rip + countmode]]
	test	ecx, ecx
	je	.label_50
	mov	cl, al
	xor	cl, 1
	test	cl, 1
	jne	.label_51
.label_50:
	test	al, 1
	jne	.label_53
	movzx	eax,  byte ptr [byte ptr [rip + output_later_repeated]]
	and	eax, 1
	cmp	eax, 1
	je	.label_54
.label_53:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rbx, qword ptr [rsp + 0x48]
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2d
	jne	.label_21
	cmp	byte ptr [rbp + 1], 0
	je	.label_60
.label_21:
	mov	rdx,  qword ptr [word ptr [rip + stdin]]
	mov	esi, OFFSET FLAT:.str.67
	mov	rdi, rbp
	call	freopen_safer
	test	rax, rax
	je	.label_63
.label_60:
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	jne	.label_76
	cmp	byte ptr [rbx + 1], 0
	je	.label_65
.label_76:
	mov	rdx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, OFFSET FLAT:.str.69
	mov	rdi, rbx
	call	freopen_safer
	test	rax, rax
	je	.label_70
.label_65:
	mov	qword ptr [rsp + 0x10], rbp
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	mov	esi, 2
	call	fadvise
	lea	rbp, [rsp + 0x70]
	mov	rdi, rbp
	call	initbuffer
	lea	rbx, [rsp + 0x58]
	mov	rdi, rbx
	call	initbuffer
	movzx	eax,  byte ptr [byte ptr [rip + output_unique]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_81
	movzx	eax,  byte ptr [byte ptr [rip + output_first_repeated]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_81
	test	byte ptr [byte ptr [rip + countmode]],  1
	je	.label_81
	movzx	eax, r15b
	mov	dword ptr [rsp + 0x1c], eax
	lea	rbp, [rsp + 0x70]
	mov	dword ptr [rsp + 0x20], 0
	movsx	eax, r15b
	mov	dword ptr [rsp + 0x30], eax
	mov	qword ptr [rsp + 0x28], rax
	jmp	.label_85
.label_81:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rsi,  qword ptr [word ptr [rip + stdin]]
	movsx	edx, r15b
	mov	dword ptr [rsp + 0x38], edx
	lea	rbp, [rsp + 0x58]
	mov	rdi, rbp
	call	readlinebuffer_delim
	test	rax, rax
	je	.label_13
	mov	rdi, rbp
	call	find_field
	mov	r14, rax
	mov	r13, qword ptr [rsp + 0x60]
	dec	r13
	sub	r13, r14
	add	r13, qword ptr [rsp + 0x68]
	movzx	eax, r15b
	mov	dword ptr [rsp + 0xc], eax
	mov	al, 1
	xor	ebx, ebx
	jmp	.label_14
	nop	dword ptr [rax]
.label_22:
	test	bpl, bpl
	mov	eax, 0
	cmovne	rbx, rax
	mov	rbp, r12
	mov	eax, dword ptr [rsp + 0x18]
.label_14:
	mov	dword ptr [rsp + 0x18], eax
	mov	r12, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x30], r13
	mov	qword ptr [rsp + 0x28], r14
	and	al, 1
	mov	byte ptr [rsp + 0x1c], al
	jmp	.label_26
.label_79:
	mov	esi, dword ptr [rsp + 0xc]
	call	__overflow
	jmp	.label_32
	nop	word ptr cs:[rax + rax]
.label_26:
	mov	rsi,  qword ptr [word ptr [rip + stdin]]
	test	byte ptr [rsi], 0x10
	jne	.label_36
	mov	rdi, r12
	mov	edx, dword ptr [rsp + 0x38]
	call	readlinebuffer_delim
	test	rax, rax
	je	.label_42
	mov	rdi, r12
	call	find_field
	mov	r14, rax
	mov	rax, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r12 + 0x10]
	sub	rcx, r14
	lea	r13, [rax + rcx - 1]
	mov	rcx,  qword ptr [word ptr [rip + check_chars]]
	cmp	rcx, r13
	mov	rdx, r13
	cmovb	rdx, rcx
	mov	rax, qword ptr [rsp + 0x30]
	cmp	rcx, rax
	cmovae	rcx, rax
	movzx	eax,  byte ptr [byte ptr [rip + ignore_case]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_46
	mov	al, 1
	cmp	rdx, rcx
	jne	.label_55
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x28]
	call	memcasecmp
	jmp	.label_59
	nop	word ptr cs:[rax + rax]
.label_46:
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	je	.label_47
	mov	rdi, r14
	mov	rsi, rdx
	mov	rdx, qword ptr [rsp + 0x28]
	call	xmemcoll
	jmp	.label_59
.label_47:
	mov	al, 1
	cmp	rdx, rcx
	jne	.label_55
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x28]
	call	memcmp
	nop	
.label_59:
	test	eax, eax
	setne	al
.label_55:
	movzx	ecx, al
	xor	rcx, 1
	add	rbx, rcx
	cmp	rbx, -1
	sete	cl
	movzx	ecx, cl
	sub	rbx, rcx
	mov	ecx,  dword ptr [dword ptr [rip + delimit_groups]]
	test	ecx, ecx
	je	.label_94
	test	al, al
	jne	.label_72
	cmp	rbx, 1
	jne	.label_32
	cmp	ecx, 1
	je	.label_75
	cmp	ecx, 2
	jne	.label_32
	cmp	byte ptr [rsp + 0x1c], 0
	jne	.label_32
.label_75:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_79
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r15b
	jmp	.label_32
	nop	word ptr cs:[rax + rax]
.label_94:
	mov	bpl, 1
	test	al, al
	jne	.label_33
.label_32:
	movzx	eax,  byte ptr [byte ptr [rip + output_later_repeated]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_26
	xor	ebp, ebp
	jmp	.label_33
.label_72:
	test	rbx, rbx
	je	.label_89
	mov	dword ptr [rsp + 0x18], 0
.label_89:
	mov	bpl, 1
.label_33:
	test	rbx, rbx
	je	.label_90
	test	bpl, bpl
	je	.label_91
	mov	al,  byte ptr [byte ptr [rip + output_first_repeated]]
	jmp	.label_92
.label_90:
	mov	al,  byte ptr [byte ptr [rip + output_unique]]
.label_92:
	and	al, 1
	jne	.label_11
	jmp	.label_22
.label_91:
	movzx	eax,  byte ptr [byte ptr [rip + output_later_repeated]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_22
.label_11:
	mov	al,  byte ptr [byte ptr [rip + countmode]]
	and	al, 1
	mov	rax, qword ptr [rsp + 0x20]
	jne	.label_17
	lea	rdx, [rbx + 1]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.71
	xor	eax, eax
	call	__printf_chk
	mov	rax, qword ptr [rsp + 0x20]
.label_17:
	mov	rdx, qword ptr [rax + 8]
	mov	rdi, qword ptr [rax + 0x10]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	call	fwrite_unlocked
	jmp	.label_22
.label_42:
	mov	rax,  qword ptr [word ptr [rip + stdin]]
	test	byte ptr [rax], 0x20
	jne	.label_13
.label_36:
	test	rbx, rbx
	je	.label_31
	movzx	eax,  byte ptr [byte ptr [rip + output_first_repeated]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_13
	jmp	.label_37
.label_31:
	mov	al,  byte ptr [byte ptr [rip + output_unique]]
	and	al, 1
	je	.label_13
.label_37:
	mov	al,  byte ptr [byte ptr [rip + countmode]]
	and	al, 1
	mov	rbp, qword ptr [rsp + 0x20]
	jne	.label_39
	inc	rbx
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.71
	xor	eax, eax
	mov	rdx, rbx
	call	__printf_chk
.label_39:
	mov	rdx, qword ptr [rbp + 8]
	mov	rdi, qword ptr [rbp + 0x10]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	call	fwrite_unlocked
	jmp	.label_13
.label_27:
	mov	rdx, qword ptr [rbp + 8]
	mov	rdi, qword ptr [rbp + 0x10]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	call	fwrite_unlocked
	mov	al, 1
	mov	dword ptr [rsp + 0x20], eax
	mov	r12, r14
	mov	qword ptr [rsp + 0x28], rbx
	mov	rbx, rbp
	mov	rbp, qword ptr [rsp + 0x38]
.label_85:
	mov	qword ptr [rsp + 0x38], rbx
	jmp	.label_25
.label_61:
	mov	esi, dword ptr [rsp + 0x1c]
	call	__overflow
	mov	eax,  dword ptr [dword ptr [rip + grouping]]
	jmp	.label_9
	nop	
.label_25:
	mov	rsi,  qword ptr [word ptr [rip + stdin]]
	test	byte ptr [rsi], 0x10
	jne	.label_62
	mov	rdi, rbp
	mov	edx, dword ptr [rsp + 0x30]
	call	readlinebuffer_delim
	test	rax, rax
	je	.label_62
	mov	rdi, rbp
	call	find_field
	mov	rbx, rax
	mov	rax, qword ptr [rbp + 8]
	mov	rcx, qword ptr [rbp + 0x10]
	sub	rcx, rbx
	lea	r14, [rax + rcx - 1]
	mov	r13b, 1
	mov	rax, qword ptr [rsp + 0x38]
	cmp	qword ptr [rax + 8], 0
	je	.label_68
	mov	rcx,  qword ptr [word ptr [rip + check_chars]]
	cmp	rcx, r14
	mov	rdx, r14
	cmovb	rdx, rcx
	cmp	rcx, r12
	cmovae	rcx, r12
	movzx	eax,  byte ptr [byte ptr [rip + ignore_case]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_74
	cmp	rdx, rcx
	jne	.label_68
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x28]
	call	memcasecmp
	jmp	.label_83
	nop	word ptr [rax + rax]
.label_74:
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	je	.label_84
	mov	rdi, rbx
	mov	rsi, rdx
	mov	rdx, qword ptr [rsp + 0x28]
	call	xmemcoll
	jmp	.label_83
.label_84:
	cmp	rdx, rcx
	jne	.label_68
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x28]
	call	memcmp
	nop	dword ptr [rax]
.label_83:
	test	eax, eax
	setne	r13b
.label_68:
	mov	eax,  dword ptr [dword ptr [rip + grouping]]
	test	r13b, r13b
	je	.label_9
	test	eax, eax
	je	.label_9
	cmp	eax, 1
	je	.label_16
	cmp	eax, 4
	je	.label_16
	mov	ecx, dword ptr [rsp + 0x20]
	test	cl, cl
	je	.label_9
	mov	ecx, eax
	or	ecx, 1
	cmp	ecx, 3
	jne	.label_9
	nop	word ptr cs:[rax + rax]
.label_16:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_61
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], r15b
.label_9:
	test	eax, eax
	setne	al
	or	r13b, al
	movzx	eax, r13b
	cmp	eax, 1
	jne	.label_25
	jmp	.label_27
.label_62:
	mov	eax,  dword ptr [dword ptr [rip + grouping]]
	cmp	eax, 4
	je	.label_28
	cmp	eax, 2
	jne	.label_13
.label_28:
	mov	eax, dword ptr [rsp + 0x20]
	test	al, al
	je	.label_13
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_34
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r15b
.label_13:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	test	byte ptr [rdi], 0x20
	jne	.label_44
	call	rpl_fclose
	test	eax, eax
	jne	.label_44
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
	mov	rdi, qword ptr [rsp + 0x68]
	call	free
	xor	eax, eax
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_34:
	mov	esi, dword ptr [rsp + 0x1c]
	call	__overflow
	jmp	.label_13
.label_29:
	cmp	eax, 0xffffff7d
	je	.label_52
	cmp	eax, 0xffffff7e
	jne	.label_19
	xor	edi, edi
	call	usage
.label_38:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r12 + rax*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
.label_18:
	call	error
	mov	edi, 1
	call	usage
.label_52:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.28
	mov	r9d, OFFSET FLAT:.str.29
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_19:
	mov	edi, 1
	call	usage
.label_44:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.70
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x10]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_93:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25
	jmp	.label_87
.label_77:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24
	jmp	.label_87
.label_12:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26
.label_87:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 1
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str.1_0
	xor	eax, eax
	mov	rcx, rbx
	mov	r8, rbp
	call	error
.label_30:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	jmp	.label_18
.label_49:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
	jmp	.label_20
.label_51:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.31
	jmp	.label_20
.label_63:
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
.label_70:
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
.label_54:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.32
.label_20:
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026d0

	.globl find_field
	.type find_field, @function
find_field:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r15, qword ptr [rdi + 8]
	mov	r14, qword ptr [rdi + 0x10]
	xor	ebx, ebx
	dec	r15
	je	.label_97
	mov	r12,  qword ptr [word ptr [rip + skip_fields]]
	test	r12, r12
	je	.label_97
	xor	r13d, r13d
	jmp	.label_100
	nop	dword ptr [rax]
.label_98:
	inc	rbx
.label_100:
	cmp	rbx, r15
	jae	.label_95
	movzx	edi, byte ptr [r14 + rbx]
	call	field_sep
	test	al, al
	jne	.label_98
	jmp	.label_95
	nop	dword ptr [rax + rax]
.label_96:
	inc	rbx
.label_95:
	cmp	rbx, r15
	jae	.label_99
	movzx	edi, byte ptr [r14 + rbx]
	call	field_sep
	test	al, al
	je	.label_96
.label_99:
	cmp	r15, rbx
	jbe	.label_97
	inc	r13
	cmp	r13, r12
	jb	.label_100
.label_97:
	mov	rax,  qword ptr [word ptr [rip + skip_chars]]
	sub	r15, rbx
	cmp	rax, r15
	cmovb	r15, rax
	add	r15, rbx
	add	r14, r15
	mov	rax, r14
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402770

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
	#Procedure 0x402790

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027a0

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rcx
	mov	r14, rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0x20], rbp
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_102
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	
.label_101:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_106
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_104
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_105
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_107
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_106
.label_107:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_106
.label_105:
	mov	qword ptr [rsp + 0x18], rbp
	nop	word ptr [rax + rax]
.label_106:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_101
	jmp	.label_103
.label_102:
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_103:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 0x18]
.label_104:
	mov	rax, rbp
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
	#Procedure 0x4028a0
	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r14, rdi
	xor	edi, edi
	cmp	rdx, -1
	je	.label_108
	mov	esi, OFFSET FLAT:.str.1_1
	jmp	.label_109
.label_108:
	mov	esi, OFFSET FLAT:.str_2
.label_109:
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r15
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	rsi, r14
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	error
	.section	.text
	.align	16
	#Procedure 0x402910

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r12, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp], rbx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbx]
	test	rbx, rbx
	je	.label_111
	xor	r13d, r13d
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_114:
	test	r15, r15
	je	.label_110
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_113
.label_110:
	mov	r13,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_0
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_115
	nop	word ptr cs:[rax + rax]
.label_113:
	mov	rbp,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.4_0
	xor	eax, eax
	mov	rdi, rbp
	call	__fprintf_chk
.label_115:
	mov	rax, qword ptr [rsp]
	mov	rbx, qword ptr [rax + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_114
.label_111:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_112
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_112:
	mov	esi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a40

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	r14, rsi
	mov	rbp, rdi
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_117
	mov	qword ptr [rsp + 0x10], rbp
	xor	edi, edi
	cmp	rax, -1
	je	.label_118
	mov	esi, OFFSET FLAT:.str.1_1
	jmp	.label_116
.label_118:
	mov	esi, OFFSET FLAT:.str_2
.label_116:
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 8], rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r14
	call	quotearg_n_style
	mov	r14, rax
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 0x10]
	call	quote_n
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, r14
	mov	r8, rbp
	call	error
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	argmatch_valid
	call	rbx
	mov	rax, -1
.label_117:
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
	#Procedure 0x402b00
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rcx
	mov	r15, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	r13, qword ptr [rbx]
	xor	eax, eax
	test	r13, r13
	je	.label_119
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_120:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_119
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_120
.label_119:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402b70
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b80
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b90

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_124
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_123
	cmp	dword ptr [rbp], 0x20
	jne	.label_123
.label_124:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_122
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_123:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_121
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_122:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_121:
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
	.align	16
	#Procedure 0x402c50
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c60

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_125
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_125:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402c80

	.globl freopen_safer
	.type freopen_safer, @function
freopen_safer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	rbp, rdi
	mov	rdi, rbx
	call	fileno
	xor	r12d, r12d
	test	eax, eax
	je	.label_132
	cmp	eax, 1
	je	.label_134
	cmp	eax, 2
	je	.label_136
	mov	edi, 2
	mov	esi, 2
	call	dup2
	cmp	eax, 2
	setne	r12b
.label_136:
	mov	r15b, r12b
	mov	edi, 1
	mov	esi, 1
	call	dup2
	cmp	eax, 1
	setne	r12b
	jmp	.label_130
.label_132:
	xor	r15d, r15d
	xor	r13d, r13d
	jmp	.label_133
.label_134:
	xor	r15d, r15d
.label_130:
	xor	r13d, r13d
	xor	edi, edi
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_126
	mov	edi, OFFSET FLAT:.str_4
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	r13b, 1
	test	eax, eax
	je	.label_126
	mov	r13b, 1
	jmp	.label_128
.label_126:
	test	r12b, r12b
	je	.label_137
	mov	edi, OFFSET FLAT:.str_4
	xor	esi, esi
	xor	eax, eax
	call	open
	cmp	eax, 1
	jne	.label_128
.label_137:
	test	r15b, r15b
	je	.label_133
	mov	edi, OFFSET FLAT:.str_4
	xor	esi, esi
	xor	eax, eax
	call	open
	cmp	eax, 2
	jne	.label_128
.label_133:
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rbx
	call	rpl_freopen
	mov	r14, rax
	jmp	.label_129
.label_128:
	xor	r14d, r14d
	test	eax, eax
	js	.label_129
	mov	edi, eax
	call	close
	call	__errno_location
	mov	dword ptr [rax], 9
	xor	r14d, r14d
.label_129:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	test	r15b, r15b
	je	.label_138
	mov	edi, 2
	call	close
.label_138:
	test	r12b, r12b
	je	.label_127
	mov	edi, 1
	call	close
.label_127:
	test	r13b, r13b
	je	.label_131
	xor	edi, edi
	call	close
.label_131:
	test	r14, r14
	jne	.label_135
	mov	dword ptr [rbx], ebp
.label_135:
	mov	rax, r14
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
	#Procedure 0x402dc0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_140
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_141
	cmp	byte ptr [rax + 1], 0
	je	.label_139
.label_141:
	mov	esi, OFFSET FLAT:.str.1_2
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_140
.label_139:
	xor	ebx, ebx
.label_140:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x402e00

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
	#Procedure 0x402e10
	.globl readlinebuffer
	.type readlinebuffer, @function
readlinebuffer:

	mov	edx, 0xa
	jmp	readlinebuffer_delim
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e20

	.globl readlinebuffer_delim
	.type readlinebuffer_delim, @function
readlinebuffer_delim:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbp, rsi
	mov	r15, rdi
	xor	eax, eax
	test	byte ptr [rbp], 0x10
	jne	.label_142
	mov	r12, qword ptr [r15 + 0x10]
	mov	r14, qword ptr [r15]
	add	r14, r12
	movsx	eax, dl
	mov	dword ptr [rsp + 4], eax
	mov	dword ptr [rsp], edx
	mov	r13, r12
	nop	word ptr cs:[rax + rax]
.label_146:
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rbp + 0x10]
	jae	.label_143
	lea	rcx, [rax + 1]
	mov	qword ptr [rbp + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_144:
	cmp	r13, r14
	jne	.label_145
	mov	r13, qword ptr [r15]
	mov	rdi, r12
	mov	rsi, r15
	call	x2realloc
	mov	r12, rax
	add	r13, r12
	mov	qword ptr [r15 + 0x10], r12
	mov	r14, r12
	add	r14, qword ptr [r15]
.label_145:
	mov	byte ptr [r13], bl
	inc	r13
	cmp	ebx, dword ptr [rsp + 4]
	jne	.label_146
	jmp	.label_147
.label_143:
	mov	rdi, rbp
	call	__uflow
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_144
	cmp	r13, r12
	mov	ecx, dword ptr [rsp]
	mov	eax, 0
	je	.label_142
	test	byte ptr [rbp], 0x20
	jne	.label_142
	mov	eax, ecx
	movzx	eax, al
	movzx	ecx, byte ptr [r13 - 1]
	cmp	ecx, eax
	mov	ebx, dword ptr [rsp + 4]
	jne	.label_144
.label_147:
	sub	r13, r12
	mov	qword ptr [r15 + 8], r13
	mov	rax, r15
.label_142:
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
	#Procedure 0x402f00
	.globl freebuffer
	.type freebuffer, @function
freebuffer:

	mov	rdi, qword ptr [rdi + 0x10]
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402f10

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
	je	.label_148
	call	__ctype_toupper_loc
	mov	rcx, qword ptr [rax]
	xor	edx, edx
	nop	
.label_149:
	movzx	eax, byte ptr [r15 + rdx]
	mov	eax, dword ptr [rcx + rax*4]
	movzx	esi, byte ptr [r14 + rdx]
	sub	eax, dword ptr [rcx + rsi*4]
	jne	.label_148
	inc	rdx
	xor	eax, eax
	cmp	rdx, rbx
	jb	.label_149
.label_148:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402f60

	.globl posix2_version
	.type posix2_version, @function
posix2_version:
	push	rax
	mov	edi, OFFSET FLAT:.str_5
	call	getenv
	mov	rcx, rax
	mov	eax, 0x31069
	test	rcx, rcx
	je	.label_150
	mov	eax, 0x31069
	cmp	byte ptr [rcx], 0
	je	.label_150
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, rcx
	call	strtol
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	je	.label_150
	mov	eax, 0x31069
.label_150:
	cmp	rax, 0x7fffffff
	mov	ecx, 0x7fffffff
	cmovl	ecx, eax
	cmp	rax, -0x80000000
	mov	eax, 0x80000000
	cmovge	eax, ecx
	pop	rcx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402fc0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_151
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_152
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_152
	mov	esi, OFFSET FLAT:.str.2_1
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_153
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_153:
	mov	rbx, r14
.label_152:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_151:
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
	#Procedure 0x403070
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
	#Procedure 0x4030b0
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
	#Procedure 0x4030c0
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
	#Procedure 0x4030d0
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
	#Procedure 0x403110
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
	#Procedure 0x403130
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_154
	test	rdx, rdx
	je	.label_154
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_154:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403160
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
	.align	16
	#Procedure 0x4031e0

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
.label_255:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_195
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_197]]
.label_436:
	mov	edi, OFFSET FLAT:.str.11_0
	mov	esi, r15d
	mov	r14, r10
	mov	bl, r8b
	call	gettext_quote
	mov	qword ptr [rsp + 0xa0], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r15d
	call	gettext_quote
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x98], rax
.label_437:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_220
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_220
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_239:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_269
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_269:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_239
.label_220:
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
	jmp	.label_180
.label_429:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_180
.label_432:
	mov	al, 1
.label_430:
	mov	r12b, 1
.label_433:
	test	r12b, 1
	mov	cl, 1
	je	.label_270
	mov	cl, al
.label_270:
	mov	al, cl
.label_431:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_276
	test	r10, r10
	je	.label_155
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_156
.label_276:
	xor	ecx, ecx
	jmp	.label_156
.label_434:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_164
	test	r10, r10
	je	.label_171
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_175
.label_435:
	mov	dil, 1
	mov	r9d, 5
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_180
.label_155:
	mov	ecx, 1
.label_156:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_180
.label_164:
	xor	eax, eax
	jmp	.label_175
.label_171:
	mov	eax, 1
.label_175:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_180:
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
	jmp	.label_272
.label_261:
	inc	rdi
.label_272:
	cmp	rbp, -1
	je	.label_245
	cmp	rdi, rbp
	jne	.label_249
	jmp	.label_251
	nop	word ptr cs:[rax + rax]
.label_245:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_254
.label_249:
	test	r12b, r12b
	je	.label_257
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_259
	cmp	rbp, -1
	jne	.label_259
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
.label_259:
	cmp	rbx, rbp
	jbe	.label_160
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_162
	nop	word ptr [rax + rax]
.label_257:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_162
.label_160:
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
	jne	.label_189
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_162
	jmp	.label_179
.label_189:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_162:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_279
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_215]]
.label_448:
	test	rdi, rdi
	jne	.label_198
	jmp	.label_210
.label_452:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_222
	test	rdi, rdi
	jne	.label_225
	cmp	rbp, 1
	je	.label_210
	xor	r13d, r13d
	jmp	.label_166
.label_441:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_229
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_179
	cmp	r9d, 2
	jne	.label_275
	mov	al, r14b
	and	al, 1
	jne	.label_235
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_238
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_238:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_247
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_247:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_266
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_266:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_260
.label_442:
	mov	bl, 0x62
	jmp	.label_233
.label_443:
	mov	cl, 0x74
	jmp	.label_163
.label_444:
	mov	bl, 0x76
	jmp	.label_233
.label_445:
	mov	bl, 0x66
	jmp	.label_233
.label_446:
	mov	cl, 0x72
	jmp	.label_163
.label_449:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_277
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_157
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
	jae	.label_193
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_193:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_186
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_186:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_203
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_203:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_277:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_166
.label_450:
	cmp	r9d, 5
	je	.label_174
	cmp	r9d, 2
	jne	.label_198
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_198
	jmp	.label_206
.label_451:
	cmp	r9d, 2
	jne	.label_208
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_212
	jmp	.label_216
.label_279:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_217
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
.label_182:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_230
	test	cl, cl
	je	.label_230
	xor	eax, eax
	jmp	.label_166
.label_222:
	test	rdi, rdi
	jne	.label_242
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_242
.label_210:
	mov	dl, 1
.label_447:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_248
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_166
.label_229:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_261
	jmp	.label_198
.label_208:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_163
.label_212:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_192
.label_163:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_262
.label_233:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_166
	jmp	.label_194
.label_217:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_273
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_273:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_221:
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
	je	.label_185
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_188
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_191
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_250
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_207:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_200
	bt	rsi, rdx
	jb	.label_202
.label_200:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_207
.label_250:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_244
	xor	r13d, r13d
.label_244:
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
	je	.label_221
	jmp	.label_182
.label_242:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_166
.label_174:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_198
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_198
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_198
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_236
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_240
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_223
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_252
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_252:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_256
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_256:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_265
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_265:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_243
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_243:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_166
.label_198:
	xor	eax, eax
	xor	r13d, r13d
.label_166:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_167
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_170
	jmp	.label_176
	nop	word ptr [rax + rax]
.label_167:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_176
.label_170:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_181
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_187
	nop	word ptr cs:[rax + rax]
.label_176:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_187:
	mov	bl, r15b
	je	.label_192
	jmp	.label_194
.label_181:
	mov	bl, r15b
.label_194:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_179
	cmp	r9d, 2
	jne	.label_196
	mov	al, r14b
	and	al, 1
	jne	.label_196
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_172
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_172:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_211
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_211:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_214
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_214:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_196:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_224
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_224:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_271
.label_225:
	xor	r13d, r13d
	jmp	.label_166
.label_230:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_232
	nop	word ptr [rax + rax]
.label_227:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_232:
	test	cl, cl
	je	.label_241
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_169
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_246
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_246:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_169
	nop	word ptr [rax + rax]
.label_241:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_179
	cmp	r9d, 2
	jne	.label_204
	mov	al, r14b
	and	al, 1
	jne	.label_204
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_268
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_268:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_267
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_267:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_161
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_161:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_204:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_178
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_178:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_184
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_184:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_218
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_218:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_169:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_192
	test	r14b, 1
	je	.label_205
	mov	bl, al
	and	bl, 1
	jne	.label_205
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_226
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_226:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_219
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_219:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_205:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_227
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_227
	nop	dword ptr [rax]
.label_192:
	test	r14b, 1
	je	.label_237
	and	al, 1
	jne	.label_237
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_190
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_190:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_264
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_264:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_237:
	mov	bl, r15b
.label_271:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_258
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_258:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_261
.label_275:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_260
.label_235:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_260:
	cmp	rcx, r10
	jae	.label_278
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_278:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_159
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_168
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_173
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_177
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_177:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_183
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_183:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_166
.label_159:
	xor	r13d, r13d
	jmp	.label_166
.label_168:
	xor	r13d, r13d
	jmp	.label_166
.label_173:
	xor	r13d, r13d
	jmp	.label_166
.label_188:
	xor	r13d, r13d
.label_185:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_182
.label_191:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_199
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_201:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_209
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_201
	xor	r13d, r13d
	jmp	.label_182
.label_199:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_182
.label_209:
	xor	r13d, r13d
	jmp	.label_182
.label_236:
	xor	r13d, r13d
	jmp	.label_166
.label_240:
	xor	r13d, r13d
	jmp	.label_166
	nop	dword ptr [rax]
.label_251:
	mov	r13, rdi
.label_254:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_228
	or	al, dl
	je	.label_231
.label_228:
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
	je	.label_234
	or	al, dl
	jne	.label_234
	test	r8b, 1
	jne	.label_253
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_234
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_255
.label_234:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_263
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_263
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_263
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_158:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_274
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_274:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_158
.label_263:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_165
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_165
.label_248:
	mov	r9d, 2
	jmp	.label_179
.label_202:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_179
.label_231:
	mov	rbp, r13
	jmp	.label_179
.label_262:
	mov	r9d, 2
.label_179:
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
.label_213:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_165:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_253:
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
	jmp	.label_213
.label_157:
	mov	r9d, 2
	jmp	.label_179
.label_216:
	mov	r9d, 2
	jmp	.label_179
.label_206:
	mov	r9d, 2
	jmp	.label_179
.label_223:
	mov	r9d, 5
	jmp	.label_179
.label_195:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404370
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
	.align	16
	#Procedure 0x404440
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
	je	.label_280
	mov	qword ptr [rax], rbx
.label_280:
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
	#Procedure 0x404540
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_281
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_284:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_284
.label_281:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_285
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_283]], OFFSET FLAT:slot0
.label_285:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_282
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_282:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045e0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x4045f0

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
	js	.label_286
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_291
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_287
.label_291:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_290
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
	jne	.label_289
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_289:
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
.label_287:
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
	ja	.label_292
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_288
	mov	rdi, rbx
	call	free
.label_288:
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
.label_292:
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
.label_286:
	call	abort
.label_290:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047c0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047d0
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
	.align	16
	#Procedure 0x4047f0
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
	.align	16
	#Procedure 0x404810

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
	je	.label_293
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
.label_293:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x404880

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
	je	.label_294
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
.label_294:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048f0

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
	je	.label_295
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
.label_295:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404960
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
	je	.label_296
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
.label_296:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049d0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_297]]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_298]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_299]]
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
	.align	16
	#Procedure 0x404a40
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx,  qword ptr [word ptr [rip + label_297]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_298]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_299]]
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
	.align	16
	#Procedure 0x404ab0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_297]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_298]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_299]]
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
	.align	16
	#Procedure 0x404b10
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_297]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_298]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_299]]
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
	.align	16
	#Procedure 0x404b70

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
	je	.label_300
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
.label_300:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x404c20
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_297]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_298]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_299]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_301
	test	rdx, rdx
	je	.label_301
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_301:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x404c90
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_297]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_298]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_299]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_302
	test	rdx, rdx
	je	.label_302
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_302:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d00
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_297]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_298]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_299]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_303
	test	rsi, rsi
	je	.label_303
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_303:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404d70
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_297]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_298]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_299]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_304
	test	rsi, rsi
	je	.label_304
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
.label_304:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404de0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404df0
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
	.align	16
	#Procedure 0x404e10

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e30

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
	.align	16
	#Procedure 0x404e50

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
	jne	.label_307
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_308
	cmp	ecx, 0x55
	jne	.label_305
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_305
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_305
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_305
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_305
	cmp	byte ptr [rax + 5], 0
	jne	.label_305
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_307
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_307
.label_308:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_305
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_305
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_305
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_305
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_305
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_305
	cmp	byte ptr [rax + 7], 0
	je	.label_306
.label_305:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_307:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_306:
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_307
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_307
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f40

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
	je	.label_309
	mov	edx, OFFSET FLAT:.str_7
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_318
.label_309:
	mov	edx, OFFSET FLAT:.str.1_4
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_318:
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
	mov	esi, OFFSET FLAT:.str.3_1
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_313
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_315]]
.label_508:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_1
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
.label_313:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_312
.label_509:
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
.label_510:
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
.label_511:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_310
.label_512:
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
	jmp	.label_311
.label_513:
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
	jmp	.label_317
.label_514:
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
.label_317:
	mov	qword ptr [rsp + 0x10], rdi
.label_311:
	mov	qword ptr [rsp + 8], rsi
.label_310:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_314
.label_516:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_312:
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
	jmp	.label_316
.label_515:
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
.label_316:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_314:
	call	__fprintf_chk
.label_507:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405230
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_319:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_319
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405260
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_322:
	cmp	r10d, 0x28
	ja	.label_320
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_321
	nop	word ptr cs:[rax + rax]
.label_320:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_321:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_323
	inc	r9
	cmp	r9, 0xa
	jb	.label_322
.label_323:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4052c0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x128
	test	al, al
	je	.label_324
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_324:
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
.label_328:
	cmp	r8d, 0x28
	ja	.label_325
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_327
	nop	
.label_325:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_327:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_326
	inc	r9
	cmp	r9, 0xa
	jb	.label_328
.label_326:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053c0
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
	mov	esi, OFFSET FLAT:.str.19_0
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
	#Procedure 0x405440
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_329
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_330
	test	rax, rax
	je	.label_329
.label_330:
	pop	rbx
	ret	
.label_329:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405480

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_331
	test	rax, rax
	je	.label_332
.label_331:
	pop	rbx
	ret	
.label_332:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4054a0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_333
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_334
	test	rbx, rbx
	jne	.label_334
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_334:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_335
	test	rax, rax
	je	.label_333
.label_335:
	pop	rbx
	ret	
.label_333:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4054f0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_336
	test	rbx, rbx
	jne	.label_336
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_336:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_338
	test	rax, rax
	je	.label_337
.label_338:
	pop	rbx
	ret	
.label_337:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405520
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_339
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_341
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_340
.label_339:
	test	rcx, rcx
	jne	.label_344
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_344:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_343
.label_340:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_342
	test	rbx, rbx
	jne	.label_342
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_342:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_345
	test	rax, rax
	je	.label_341
.label_345:
	pop	rbx
	ret	
.label_341:
	call	xalloc_die
.label_343:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055c0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

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
	.align	16
	#Procedure 0x4055e0

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_348
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_351
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_352
	call	free
	xor	eax, eax
	jmp	.label_349
.label_348:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_350
	mov	qword ptr [rsi], rbx
.label_352:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_349
	test	rax, rax
	je	.label_350
.label_349:
	pop	rbx
	ret	
.label_350:
	call	xalloc_die
.label_351:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405650
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
	je	.label_354
	test	r14, r14
	je	.label_353
.label_354:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_353:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405690
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_355
	call	rpl_calloc
	test	rax, rax
	je	.label_355
	pop	rcx
	ret	
.label_355:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4056c0

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
	je	.label_356
	test	r15, r15
	je	.label_357
.label_356:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_357:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405700
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
	je	.label_359
	test	r15, r15
	je	.label_358
.label_359:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_358:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405750

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
	#Procedure 0x405780

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
	je	.label_360
	mov	rsi, rbx
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, r14
	call	collate_error
.label_360:
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
	#Procedure 0x4057d0

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
	mov	esi, OFFSET FLAT:.str_8
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_6
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
	mov	esi, OFFSET FLAT:.str.2_3
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
	#Procedure 0x4058a0
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
	je	.label_361
	dec	rbx
	dec	r15
	mov	rsi, r12
	mov	rdx, rbx
	mov	rcx, r14
	mov	r8, r15
	call	collate_error
.label_361:
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
	#Procedure 0x4058f0

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
	mov	r14, r8
	mov	r12d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_386
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_380:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_380
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	movzx	eax, al
	mov	r13d, 4
	cmp	eax, 0x2d
	je	.label_367
	mov	rdi, rbx
	mov	edx, r12d
	mov	rbp, rsi
	call	strtoul
	mov	rcx, rbp
	mov	rbp, rax
	mov	r12, qword ptr [rcx]
	cmp	r12, rbx
	je	.label_383
	mov	eax, dword ptr [r15]
	xor	ebx, ebx
	test	eax, eax
	je	.label_364
	cmp	eax, 0x22
	jne	.label_367
	mov	ebx, 1
.label_364:
	test	r14, r14
	jne	.label_369
	jmp	.label_373
.label_383:
	test	r14, r14
	je	.label_367
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_367
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	ebx, ebx
	mov	ebp, 1
	test	rax, rax
	je	.label_367
.label_369:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_373
	mov	qword ptr [rsp], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_375
	mov	r15d, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_362
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_362
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	r15d, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_362
	movsx	eax, byte ptr [r12 + 1]
	mov	r15d, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_366
	cmp	eax, 0x44
	je	.label_366
	cmp	eax, 0x69
	jne	.label_362
	movzx	eax, byte ptr [r12 + 2]
	cmp	eax, 0x42
	mov	r15d, 3
	je	.label_377
	mov	r15d, 1
.label_377:
	mov	esi, 0x400
	jmp	.label_362
.label_366:
	mov	r15d, 2
	mov	esi, 0x3e8
.label_362:
	cmp	r13d, 0x59
	jg	.label_365
	lea	eax, [r13 - 0x42]
	cmp	eax, 0xe
	ja	.label_385
	jmp	qword ptr [word ptr [+ (rax * 8) + label_368]]
.label_461:
	mov	rax, rbp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_370
.label_365:
	cmp	r13d, 0x73
	jg	.label_371
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	ja	.label_379
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_374]]
.label_467:
	mov	rax, rbp
	shr	rax, 0x37
	setne	dl
	shl	rbp, 9
.label_370:
	cmp	rax, 1
	sbb	rax, rax
	not	rax
	or	rbp, rax
	movzx	eax, dl
	jmp	.label_382
.label_385:
	cmp	r13d, 0x54
	je	.label_381
	cmp	r13d, 0x59
	jne	.label_375
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	dl, dl
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r10b, r10b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r14b, r14b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r13b, r13b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	bpl, bpl
	imul	rsi, rcx
	cmp	rax, rcx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	and	dl, 1
	or	dl, r14b
	or	dl, r13b
	or	dl, bpl
	jmp	.label_378
.label_371:
	cmp	r13d, 0x74
	je	.label_381
	cmp	r13d, 0x77
	jne	.label_375
	lea	rax, [rbp + rbp]
	test	rbp, rbp
	mov	rcx, -1
	cmovns	rcx, rax
	shr	rbp, 0x3f
	mov	eax, ebp
	mov	rbp, rcx
	jmp	.label_382
.label_463:
	mov	r8, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r8
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r8
	cmp	rax, rbp
	sbb	dil, dil
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, r8
	or	dl, r9b
	or	dl, dil
	jmp	.label_363
.label_464:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	and	eax, 1
	jmp	.label_384
.label_465:
	mov	r8, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r8
	cmp	rax, rdi
	sbb	dl, dl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r8
	or	dl, r9b
	jmp	.label_363
.label_381:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	cl, cl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	or	dl, r10b
	or	dl, cl
	jmp	.label_363
.label_379:
	cmp	r13d, 0x5a
	jne	.label_375
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	dl, dl
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r10b, r10b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r14b, r14b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	cl, cl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	or	dl, r14b
	or	dl, cl
.label_378:
	movzx	eax, dl
	and	eax, 1
	jmp	.label_384
.label_375:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	or	ebx, 2
	jmp	.label_376
.label_462:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	r11b, r11b
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r14b, r14b
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
	or	dl, r11b
	or	dl, r14b
	or	dl, bpl
.label_363:
	and	dl, 1
	movzx	eax, dl
.label_384:
	mov	rbp, rsi
.label_382:
	or	eax, ebx
	lea	rcx, [r12 + r15]
	mov	rdx, qword ptr [rsp]
	mov	qword ptr [rdx], rcx
	cmp	byte ptr [r12 + r15], 0
	je	.label_372
	or	eax, 2
.label_372:
	mov	ebx, eax
.label_373:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
.label_376:
	mov	r13d, ebx
.label_367:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_466:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdx, rbp
	imul	rdx, rsi
	cmp	rax, rbp
	cmovb	rdx, rdi
	cmp	rax, rdx
	sbb	cl, cl
	mov	rbp, rdx
	imul	rbp, rsi
	cmp	rax, rdx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdx, rbp
	imul	rdx, rsi
	cmp	rax, rbp
	cmovb	rdx, rdi
	cmp	rax, rdx
	sbb	r10b, r10b
	mov	rbp, rdx
	imul	rbp, rsi
	cmp	rax, rdx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	dl, dl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	cl, r8b
	or	cl, r9b
	or	cl, r10b
	or	cl, dl
	and	cl, 1
	movzx	eax, cl
	jmp	.label_384
.label_386:
	mov	edi, OFFSET FLAT:.str_9
	mov	esi, OFFSET FLAT:.str.1_7
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoul
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405f80

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_387
	test	rsi, rsi
	mov	ecx, 1
	je	.label_388
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_388
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_387:
	mov	ecx, 1
.label_388:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405fd0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_389
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_391
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_389
.label_391:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_389
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_390
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_390:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_389:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x406050

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_392
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_392
	test	byte ptr [rbx + 1], 1
	je	.label_392
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_392:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406090

	.globl rpl_freopen
	.type rpl_freopen, @function
rpl_freopen:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	call	freopen
	mov	rbx, rax
	test	r15, r15
	je	.label_394
	test	rbx, rbx
	je	.label_394
	mov	rdi, rbx
	call	fileno
	mov	ebp, eax
	mov	edi, ebp
	mov	esi, ebp
	call	dup2
	test	eax, eax
	jns	.label_394
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_394
	mov	edi, OFFSET FLAT:.str_4
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	je	.label_393
	mov	edi, r12d
	mov	esi, ebp
	call	dup2
	mov	ebp, eax
	mov	edi, r12d
	call	close
	test	ebp, ebp
	js	.label_394
.label_393:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	freopen
.label_394:
	mov	rax, rbx
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
	jne	.label_395
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_395
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_396
.label_395:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_396:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_397
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_397:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4061a0

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
	je	.label_398
	cmp	r15, -2
	jb	.label_398
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_398
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_398:
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
	#Procedure 0x406200

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
	jne	.label_400
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_399
	test	cl, cl
	jne	.label_399
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_399
.label_400:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_399
	call	__errno_location
	mov	dword ptr [rax], 0
.label_399:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406260

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_8
	cmp	byte ptr [rcx], 0
	je	.label_401
	mov	rax, rcx
.label_401:
	add	rsp, 8
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406290

	.globl memcoll
	.type memcoll, @function
memcoll:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rcx
	mov	r14, rdx
	mov	rbp, rsi
	mov	r12, rdi
	cmp	rbp, rbx
	jne	.label_405
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbp
	call	memcmp
	test	eax, eax
	je	.label_407
.label_405:
	mov	al, byte ptr [r12 + rbp]
	mov	byte ptr [rsp + 7], al
	mov	al, byte ptr [r14 + rbx]
	mov	byte ptr [rsp + 6], al
	mov	byte ptr [r12 + rbp], 0
	mov	byte ptr [r14 + rbx], 0
	lea	r13, [rbp + 1]
	mov	qword ptr [rsp + 0x10], rbp
	lea	r15, [rbx + 1]
	mov	qword ptr [rsp + 0x20], rbx
	call	__errno_location
	mov	rbx, rax
	mov	rbp, r14
	mov	qword ptr [rsp + 0x18], r14
	mov	r14, r12
	mov	qword ptr [rsp + 8], r12
	nop	dword ptr [rax]
.label_403:
	mov	dword ptr [rbx], 0
	mov	rdi, r14
	mov	rsi, rbp
	call	strcoll
	test	eax, eax
	jne	.label_404
	mov	rdi, r14
	call	strlen
	mov	r12, rax
	inc	r12
	mov	rdi, rbp
	call	strlen
	inc	rax
	sub	r13, r12
	je	.label_406
	add	rbp, rax
	add	r14, r12
	sub	r15, rax
	mov	eax, 1
	jne	.label_403
	jmp	.label_404
.label_406:
	xor	ecx, ecx
	cmp	r15, rax
	mov	eax, 0xffffffff
	cmove	eax, ecx
.label_404:
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 8]
	mov	bl, byte ptr [rsp + 7]
	mov	byte ptr [rdx + rcx], bl
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	bl, byte ptr [rsp + 6]
	mov	byte ptr [rdx + rcx], bl
	jmp	.label_402
.label_407:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_402:
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
	.align	16
	#Procedure 0x4063b0

	.globl memcoll0
	.type memcoll0, @function
memcoll0:
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
	cmp	r15, r14
	jne	.label_410
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r15
	call	memcmp
	test	eax, eax
	je	.label_411
.label_410:
	call	__errno_location
	mov	r13, rax
	nop	word ptr cs:[rax + rax]
.label_409:
	mov	dword ptr [r13], 0
	mov	rdi, rbx
	mov	rsi, r12
	call	strcoll
	test	eax, eax
	jne	.label_408
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	inc	rbp
	mov	rdi, r12
	call	strlen
	inc	rax
	sub	r15, rbp
	je	.label_412
	add	r12, rax
	add	rbx, rbp
	sub	r14, rax
	mov	eax, 1
	jne	.label_409
	jmp	.label_408
.label_412:
	xor	ecx, ecx
	cmp	r14, rax
	mov	eax, 0xffffffff
	cmove	eax, ecx
	jmp	.label_408
.label_411:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_408:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section .text
	.align	16
	#Procedure 0x406470

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