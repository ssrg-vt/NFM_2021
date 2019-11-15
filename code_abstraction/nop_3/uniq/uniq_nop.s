	.section	.text
	.align	16
	#Procedure 0x401730

	.globl usage
	.type usage, @function
usage:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	push	rbx
	push	rax
	mov	ebp, edi
	mov	rbp, rbp
	test	ebp, ebp
	nop	
	jne	.label_8
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	__printf_chk
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	nop	
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.10
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11
	mov	rsp, rsp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.42
	nop	
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.17
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	mov	rsp, rsp
	call	__printf_chk
	lea	rsi, [rsi]
	mov	edi, 5
	xor	esi, esi
	lea	rdi, [rdi]
	call	setlocale
	lea	rsi, [rsi]
	test	rax, rax
	nop	
	je	.label_7
	mov	esi, OFFSET FLAT:.str.44
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	je	.label_7
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.45
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
.label_7:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.46
	nop	
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi, rax
	nop	
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.14
	nop	
	xor	eax, eax
	nop	
	call	__printf_chk
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.47
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi, rax
	mov	rbp, rbp
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.14
	mov	ecx, OFFSET FLAT:.str.48
	mov	rbp, rbp
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	lea	rdi, [rdi]
	call	exit
.label_8:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	nop	
	xor	eax, eax
	mov	rdi, rbx
	mov	rbp, rbp
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401ae0

	.globl main
	.type main, @function
main:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	r13
	mov	rsp, rsp
	push	r12
	nop	
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x98
	mov	rsp, rsp
	mov	r12, rsi
	lea	rsi, [rsi]
	mov	ebp, edi
	mov	edi, OFFSET FLAT:.str.15
	call	getenv
	mov	r14, rax
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.16
	lea	rsi, [rsi]
	movq	xmm0, rax
	lea	rsi, [rsi]
	pshufd	xmm0, xmm0, 0x44
	movdqa	xmmword ptr [rsp + 0x40], xmm0
	mov	rdi, qword ptr [r12]
	lea	rdi, [rdi]
	call	set_program_name
	mov	edi, 6
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	nop	
	mov	edi, OFFSET FLAT:.str.18_0
	mov	esi, OFFSET FLAT:.str.19
	mov	rbp, rbp
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.18_0
	call	textdomain
	mov	edi, 3
	call	hard_locale
	mov	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  al
	mov	edi, OFFSET FLAT:close_stdout
	lea	rdi, [rdi]
	call	atexit
	mov	qword ptr [word ptr [rip + skip_chars]],  0
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + skip_fields]],  0
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + check_chars]],  -1
	mov	byte ptr [byte ptr [rip + output_first_repeated]],  1
	mov	byte ptr [byte ptr [rip + output_unique]],  1
	mov	byte ptr [byte ptr [rip + output_later_repeated]],  0
	nop	
	mov	byte ptr [byte ptr [rip + countmode]],  1
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + delimit_groups]],  0
	mov	bl, 0xa
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	dword ptr [rsp + 0x88], 0
	xor	r15d, r15d
	xor	eax, eax
	mov	qword ptr [rsp + 0x90], rax
	mov	rbp, rbp
	jmp	.label_10
	nop	word ptr cs:[rax + rax]
.label_15:
	lea	edx, [rax + 1]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + optind]],  edx
	mov	rax, qword ptr [r12 + rax*8]
	lea	rdi, [rdi]
	mov	edx, r15d
	inc	r15d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + rdx*8 + 0x40], rax
	nop	
	mov	bl, r13b
.label_10:
	mov	r13b, bl
	test	r14, r14
	setne	al
	test	r15d, r15d
	lea	rsi, [rsi]
	setne	dl
	cmp	ecx, -1
	je	.label_27
	mov	rbp, rbp
	and	al, dl
	nop	
	jne	.label_27
	mov	rsp, rsp
	xor	ebx, ebx
	mov	edx, OFFSET FLAT:.str.20
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:longopts
	nop	
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r12
	call	getopt_long
	mov	rsp, rsp
	cmp	eax, 0x43
	mov	rbp, rbp
	jg	.label_37
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	jle	.label_41
	mov	rsp, rsp
	lea	ecx, [rax - 0x30]
	cmp	ecx, 0xa
	jae	.label_43
	mov	rsp, rsp
	cmp	dword ptr [rsp + 0x88], 2
	jne	.label_46
	mov	qword ptr [word ptr [rip + skip_fields]],  0
	lea	rdi, [rdi]
	xor	ecx, ecx
	jmp	.label_111
	nop	dword ptr [rax + rax]
.label_37:
	mov	rbp, rbp
	cmp	eax, 0x72
	jg	.label_53
	nop	
	lea	ecx, [rax - 0x63]
	mov	rsp, rsp
	cmp	ecx, 6
	lea	rdi, [rdi]
	ja	.label_71
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_61]]
.label_498:
	mov	byte ptr [byte ptr [rip + countmode]],  0
	mov	al, 1
	mov	qword ptr [rsp + 0x90], rax
	mov	rsp, rsp
	mov	ecx, 0x63
	mov	rbp, rbp
	mov	bl, r13b
	jmp	.label_10
.label_53:
	mov	rbp, rbp
	lea	edx, [rax - 0x73]
	mov	rsp, rsp
	cmp	edx, 7
	lea	rdi, [rdi]
	ja	.label_40
	mov	ecx, 0x7a
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_77]]
.label_503:
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	xor	esi, esi
	mov	rbp, rbp
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rcx, [rsp + 0x10]
	call	xstrtoul
	cmp	eax, 2
	jae	.label_88
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + skip_chars]],  rax
	lea	rdi, [rdi]
	mov	ecx, 0x73
	mov	rbp, rbp
	mov	bl, r13b
	mov	rbp, rbp
	jmp	.label_10
.label_46:
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + skip_fields]]
	mov	rsp, rsp
	movabs	rdx, 0x1999999999999999
	cmp	rcx, rdx
	ja	.label_99
.label_111:
	nop	
	lea	rdx, [rcx + rcx*4]
	nop	
	movsxd	rsi, eax
	lea	rdx, [rsi + rdx*2 - 0x30]
	lea	rdi, [rdi]
	cmp	rdx, rcx
	mov	rsp, rsp
	jae	.label_85
.label_99:
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + skip_fields]],  -1
	jmp	.label_106
.label_85:
	mov	qword ptr [word ptr [rip + skip_fields]],  rdx
.label_106:
	mov	dword ptr [rsp + 0x88], 1
	mov	rsp, rsp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	bl, r13b
	lea	rdi, [rdi]
	jmp	.label_10
.label_41:
	mov	rbp, rbp
	mov	ecx, 0xffffffff
	cmp	eax, -1
	mov	rsp, rsp
	jne	.label_116
.label_27:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	nop	
	cmp	eax, ebp
	lea	rsi, [rsi]
	jge	.label_56
	cmp	r15d, 2
	jne	.label_15
	lea	rdi, [rdi]
	jmp	.label_20
.label_71:
	lea	rsi, [rsi]
	cmp	eax, 0x44
	jne	.label_22
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + output_unique]],  0
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + output_later_repeated]],  1
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	nop	
	xor	eax, eax
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_97
	mov	rsp, rsp
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.22
	mov	edx, OFFSET FLAT:delimit_method_string
	mov	ecx, OFFSET FLAT:delimit_method_map
	mov	r8d, 4
	call	__xargmatch_internal
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + delimit_method_map]]
.label_97:
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + delimit_groups]],  eax
	nop	
	mov	al, 1
	mov	qword ptr [rsp + 0x90], rax
	mov	rsp, rsp
	mov	ecx, 0x44
	mov	rsp, rsp
	mov	bl, r13b
	jmp	.label_10
.label_40:
	cmp	eax, 0x80
	lea	rsi, [rsi]
	jne	.label_22
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	nop	
	test	rsi, rsi
	je	.label_87
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.23
	nop	
	mov	edx, OFFSET FLAT:grouping_method_string
	mov	ecx, OFFSET FLAT:grouping_method_map
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + grouping_method_map]]
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + grouping]],  eax
	jmp	.label_68
.label_499:
	nop	
	mov	byte ptr [byte ptr [rip + output_unique]],  0
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x90], rax
	mov	ecx, 0x64
	mov	rbp, rbp
	mov	bl, r13b
	jmp	.label_10
.label_500:
	mov	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	xor	esi, esi
	mov	edx, 0xa
	nop	
	mov	r8d, OFFSET FLAT:.str_0
	nop	
	mov	rdi, rbx
	lea	rcx, [rsp + 0x10]
	lea	rdi, [rdi]
	call	xstrtoul
	cmp	eax, 2
	mov	rsp, rsp
	jae	.label_90
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + skip_fields]],  rax
	mov	dword ptr [rsp + 0x88], 2
	mov	rsp, rsp
	mov	ecx, 0x66
	mov	bl, r13b
	lea	rsi, [rsi]
	jmp	.label_10
.label_501:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + ignore_case]],  1
	mov	ecx, 0x69
	mov	bl, r13b
	mov	rbp, rbp
	jmp	.label_10
.label_504:
	mov	byte ptr [byte ptr [rip + output_first_repeated]],  0
	mov	al, 1
	mov	qword ptr [rsp + 0x90], rax
	lea	rdi, [rdi]
	mov	ecx, 0x75
	nop	
	mov	bl, r13b
	jmp	.label_10
.label_505:
	mov	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rcx, [rsp + 0x10]
	mov	rsp, rsp
	call	xstrtoul
	mov	rbp, rbp
	cmp	eax, 2
	jae	.label_13
	nop	
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + check_chars]],  rax
	mov	ecx, 0x77
	mov	rsp, rsp
	mov	bl, r13b
	jmp	.label_10
.label_43:
	cmp	eax, 1
	jne	.label_22
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x2b
	jne	.label_25
	call	posix2_version
	nop	
	add	eax, 0xfffcf250
	cmp	eax, 0x2b9
	jb	.label_25
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	xor	esi, esi
	nop	
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_0
	lea	rcx, [rsp + 0x10]
	call	xstrtoul
	nop	
	test	eax, eax
	mov	rsp, rsp
	je	.label_114
.label_25:
	cmp	r15d, 2
	mov	rbp, rbp
	je	.label_44
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	ecx, r15d
	mov	rbp, rbp
	inc	r15d
	lea	rdi, [rdi]
	mov	qword ptr [rsp + rcx*8 + 0x40], rax
.label_62:
	mov	rbp, rbp
	mov	ecx, 1
	mov	bl, r13b
	mov	rbp, rbp
	jmp	.label_10
.label_87:
	mov	dword ptr [dword ptr [rip + grouping]],  3
.label_68:
	lea	rsi, [rsi]
	mov	ecx, 0x80
	mov	bl, r13b
	jmp	.label_10
.label_114:
	nop	
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [word ptr [rip + skip_chars]],  rax
	lea	rsi, [rsi]
	jmp	.label_62
.label_56:
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [rip + grouping]]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x90]
	nop	
	test	al, al
	je	.label_64
	test	ecx, ecx
	mov	rbp, rbp
	jne	.label_72
.label_64:
	nop	
	mov	al,  byte ptr [byte ptr [rip + countmode]]
	nop	
	test	ecx, ecx
	lea	rsi, [rsi]
	je	.label_54
	mov	cl, al
	lea	rsi, [rsi]
	xor	cl, 1
	mov	rsp, rsp
	test	cl, 1
	jne	.label_80
.label_54:
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_81
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + output_later_repeated]]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 1
	lea	rdi, [rdi]
	je	.label_84
.label_81:
	nop	
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x48]
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2d
	jne	.label_38
	cmp	byte ptr [rbp + 1], 0
	lea	rdi, [rdi]
	je	.label_95
.label_38:
	nop	
	mov	rdx,  qword ptr [word ptr [rip + stdin]]
	mov	esi, OFFSET FLAT:.str.67
	mov	rdi, rbp
	mov	rbp, rbp
	call	freopen_safer
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_102
.label_95:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	jne	.label_103
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + 1], 0
	mov	rbp, rbp
	je	.label_104
.label_103:
	mov	rdx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, OFFSET FLAT:.str.69
	mov	rdi, rbx
	call	freopen_safer
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_110
.label_104:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], rbp
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	mov	rbp, rbp
	mov	esi, 2
	call	fadvise
	mov	rbp, rbp
	lea	r14, [rsp + 0x10]
	mov	rdi, r14
	call	initbuffer
	lea	rbx, [rsp + 0x28]
	mov	rdi, rbx
	mov	rsp, rsp
	call	initbuffer
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + output_unique]]
	lea	rdi, [rdi]
	and	eax, 1
	cmp	eax, 1
	jne	.label_18
	movzx	eax,  byte ptr [byte ptr [rip + output_first_repeated]]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 1
	jne	.label_18
	test	byte ptr [byte ptr [rip + countmode]],  1
	je	.label_18
	movzx	eax, r13b
	mov	dword ptr [rsp + 0x60], eax
	lea	r12, [rsp + 0x10]
	lea	rsi, [rsi]
	mov	al, 1
	movsx	ecx, r13b
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x90], ecx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], rcx
	mov	qword ptr [rsp + 0x80], rcx
	mov	rsp, rsp
	jmp	.label_30
.label_18:
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdin]]
	lea	rdi, [rdi]
	movsx	r12d, r13b
	lea	rbp, [rsp + 0x28]
	nop	
	mov	rdi, rbp
	mov	edx, r12d
	call	readlinebuffer_delim
	mov	rsp, rsp
	test	rax, rax
	je	.label_12
	mov	rsp, rsp
	mov	r15, r14
	mov	r14, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	find_field
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x80], rax
	lea	rdi, [rdi]
	lea	rcx, [r14 + rbx - 1]
	mov	rbp, rbp
	mov	rbx, r15
	sub	rcx, rax
	mov	qword ptr [rsp + 0x90], rcx
	mov	rsp, rsp
	movzx	eax, r13b
	mov	dword ptr [rsp + 0x5c], eax
	lea	rdi, [rdi]
	mov	al, 1
	xor	r15d, r15d
	jmp	.label_59
	nop	word ptr [rax + rax]
.label_14:
	nop	
	test	bpl, bpl
	nop	
	mov	eax, 0
	nop	
	cmovne	r15, rax
	nop	
	mov	rbp, qword ptr [rsp + 0x88]
	mov	eax, dword ptr [rsp + 0x74]
.label_59:
	mov	dword ptr [rsp + 0x74], eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], rbx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], rbp
	test	al, 1
	jne	.label_66
	jmp	.label_45
.label_29:
	mov	esi, dword ptr [rsp + 0x5c]
	lea	rsi, [rsi]
	call	__overflow
	jmp	.label_36
	nop	
.label_45:
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdin]]
	test	byte ptr [rsi], 0x10
	lea	rsi, [rsi]
	jne	.label_91
	mov	rbx, qword ptr [rsp + 0x88]
	mov	rdi, rbx
	mov	rsp, rsp
	mov	edx, r12d
	call	readlinebuffer_delim
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_100
	nop	
	mov	r14d, r12d
	nop	
	mov	rbp, qword ptr [rbx + 8]
	mov	r12, qword ptr [rbx + 0x10]
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, r12
	call	find_field
	mov	qword ptr [rsp + 0x68], rax
	sub	r12, rax
	lea	rbx, [rbp + r12 - 1]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + check_chars]]
	cmp	rcx, rbx
	mov	rdx, rbx
	cmovb	rdx, rcx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x90]
	lea	rdi, [rdi]
	cmp	rcx, rax
	cmovae	rcx, rax
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + ignore_case]]
	lea	rdi, [rdi]
	and	al, 1
	je	.label_105
	lea	rsi, [rsi]
	mov	al, 1
	mov	rsp, rsp
	cmp	rdx, rcx
	mov	r12d, r14d
	jne	.label_33
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x68]
	mov	rsi, qword ptr [rsp + 0x80]
	call	memcasecmp
	lea	rsi, [rsi]
	jmp	.label_75
	nop	word ptr cs:[rax + rax]
.label_105:
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	mov	r12d, r14d
	lea	rsi, [rsi]
	je	.label_23
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x68]
	mov	rsi, rdx
	mov	rdx, qword ptr [rsp + 0x80]
	call	xmemcoll
	lea	rdi, [rdi]
	jmp	.label_75
.label_23:
	lea	rsi, [rsi]
	mov	al, 1
	cmp	rdx, rcx
	mov	rsp, rsp
	jne	.label_33
	mov	rdi, qword ptr [rsp + 0x68]
	mov	rsi, qword ptr [rsp + 0x80]
	mov	rbp, rbp
	call	memcmp
	nop	
.label_75:
	test	eax, eax
	lea	rdi, [rdi]
	setne	al
.label_33:
	mov	rsp, rsp
	movzx	ecx, al
	xor	rcx, 1
	mov	rbp, rbp
	add	r15, rcx
	cmp	r15, -1
	mov	rsp, rsp
	sete	cl
	mov	rbp, rbp
	movzx	ecx, cl
	sub	r15, rcx
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [rip + delimit_groups]]
	nop	
	test	ecx, ecx
	je	.label_98
	test	al, al
	jne	.label_51
	lea	rsi, [rsi]
	dec	ecx
	lea	rdi, [rdi]
	cmp	ecx, 1
	lea	rsi, [rsi]
	ja	.label_36
	nop	
	cmp	r15, 1
	jne	.label_36
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_29
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], r13b
	jmp	.label_36
	nop	dword ptr [rax]
.label_98:
	mov	rsp, rsp
	mov	bpl, 1
	test	al, al
	jne	.label_70
.label_36:
	mov	al,  byte ptr [byte ptr [rip + output_later_repeated]]
	and	al, 1
	lea	rsi, [rsi]
	je	.label_45
	lea	rdi, [rdi]
	xor	ebp, ebp
.label_70:
	mov	qword ptr [rsp + 0x90], rbx
	mov	rax, qword ptr [rsp + 0x68]
	mov	qword ptr [rsp + 0x80], rax
	jmp	.label_79
.label_51:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x90], rbx
	nop	
	mov	rax, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x80], rax
	nop	
	jmp	.label_82
.label_50:
	mov	rbp, rbp
	mov	esi, dword ptr [rsp + 0x5c]
	call	__overflow
	mov	rsp, rsp
	jmp	.label_17
.label_66:
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdin]]
	nop	
	test	byte ptr [rsi], 0x10
	jne	.label_94
	nop	
	mov	rbx, qword ptr [rsp + 0x88]
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rsp, rsp
	mov	edx, r12d
	mov	rsp, rsp
	call	readlinebuffer_delim
	test	rax, rax
	nop	
	je	.label_100
	mov	rbp, qword ptr [rbx + 8]
	mov	rbx, qword ptr [rbx + 0x10]
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rsp, rsp
	call	find_field
	mov	r14, rax
	sub	rbx, r14
	mov	rsp, rsp
	lea	rbx, [rbp + rbx - 1]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + check_chars]]
	mov	rsp, rsp
	cmp	rcx, rbx
	mov	rdx, rbx
	lea	rdi, [rdi]
	cmovb	rdx, rcx
	mov	rax, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	cmp	rcx, rax
	lea	rsi, [rsi]
	cmovae	rcx, rax
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + ignore_case]]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 1
	nop	
	jne	.label_60
	mov	rbp, rbp
	mov	al, 1
	mov	rsp, rsp
	cmp	rdx, rcx
	jne	.label_16
	mov	rdi, r14
	nop	
	mov	rsi, qword ptr [rsp + 0x80]
	call	memcasecmp
	jmp	.label_24
	nop	word ptr cs:[rax + rax]
.label_60:
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	mov	rsp, rsp
	je	.label_65
	nop	
	mov	rdi, r14
	nop	
	mov	rsi, rdx
	mov	rdx, qword ptr [rsp + 0x80]
	lea	rdi, [rdi]
	call	xmemcoll
	jmp	.label_24
.label_65:
	mov	al, 1
	cmp	rdx, rcx
	jne	.label_16
	mov	rsp, rsp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x80]
	call	memcmp
	nop	word ptr cs:[rax + rax]
.label_24:
	test	eax, eax
	mov	rbp, rbp
	setne	al
.label_16:
	lea	rdi, [rdi]
	movzx	ecx, al
	lea	rsi, [rsi]
	xor	rcx, 1
	add	r15, rcx
	cmp	r15, -1
	lea	rdi, [rdi]
	sete	cl
	mov	rbp, rbp
	movzx	ecx, cl
	nop	
	sub	r15, rcx
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [rip + delimit_groups]]
	test	ecx, ecx
	je	.label_115
	test	al, al
	jne	.label_57
	cmp	ecx, 1
	mov	rbp, rbp
	jne	.label_17
	cmp	r15, 1
	jne	.label_17
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rsp, rsp
	jae	.label_50
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r13b
	jmp	.label_17
	nop	word ptr cs:[rax + rax]
.label_115:
	lea	rdi, [rdi]
	mov	bpl, 1
	test	al, al
	nop	
	jne	.label_74
.label_17:
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + output_later_repeated]]
	lea	rdi, [rdi]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	jne	.label_66
	xor	ebp, ebp
.label_74:
	mov	qword ptr [rsp + 0x90], rbx
	mov	qword ptr [rsp + 0x80], r14
	jmp	.label_79
.label_57:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x90], rbx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x80], r14
.label_82:
	nop	
	test	r15, r15
	je	.label_92
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x74], 0
.label_92:
	mov	bpl, 1
.label_79:
	test	r15, r15
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x60]
	je	.label_96
	lea	rdi, [rdi]
	test	bpl, bpl
	je	.label_89
	mov	al,  byte ptr [byte ptr [rip + output_first_repeated]]
	jmp	.label_101
.label_96:
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + output_unique]]
.label_101:
	mov	rsp, rsp
	and	al, 1
	jne	.label_83
	jmp	.label_14
.label_89:
	mov	rbp, rbp
	movzx	eax,  byte ptr [byte ptr [rip + output_later_repeated]]
	mov	rsp, rsp
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	jne	.label_14
.label_83:
	nop	
	mov	al,  byte ptr [byte ptr [rip + countmode]]
	lea	rdi, [rdi]
	and	al, 1
	jne	.label_109
	lea	rdx, [r15 + 1]
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.71
	xor	eax, eax
	lea	rsi, [rsi]
	call	__printf_chk
.label_109:
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	esi, 1
	nop	
	call	fwrite_unlocked
	jmp	.label_14
	nop	word ptr cs:[rax + rax]
.label_11:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r12 + 8]
	mov	rdi, qword ptr [r12 + 0x10]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	esi, 1
	lea	rsi, [rsi]
	call	fwrite_unlocked
	mov	rsp, rsp
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rbp
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x80], r14
	mov	rbx, r12
	nop	
	mov	r12, qword ptr [rsp + 0x88]
.label_30:
	mov	qword ptr [rsp + 0x88], rbx
	test	al, 1
	mov	rsp, rsp
	je	.label_35
.label_9:
	mov	rsi,  qword ptr [word ptr [rip + stdin]]
	mov	rbp, rbp
	mov	bl, 1
	test	byte ptr [rsi], 0x10
	jne	.label_48
	mov	rdi, r12
	mov	edx, dword ptr [rsp + 0x90]
	call	readlinebuffer_delim
	test	rax, rax
	je	.label_48
	mov	rbx, qword ptr [r12 + 8]
	mov	rbp, qword ptr [r12 + 0x10]
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, rbp
	call	find_field
	mov	r14, rax
	lea	rsi, [rsi]
	sub	rbp, r14
	lea	rsi, [rsi]
	lea	rbp, [rbx + rbp - 1]
	lea	rsi, [rsi]
	mov	bl, 1
	mov	rax, qword ptr [rsp + 0x88]
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	je	.label_52
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + check_chars]]
	mov	rbp, rbp
	cmp	rcx, rbp
	mov	rdx, rbp
	cmovb	rdx, rcx
	mov	rax, qword ptr [rsp + 0x68]
	cmp	rcx, rax
	mov	rsp, rsp
	cmovae	rcx, rax
	movzx	eax,  byte ptr [byte ptr [rip + ignore_case]]
	and	eax, 1
	cmp	eax, 1
	nop	
	jne	.label_63
	cmp	rdx, rcx
	jne	.label_52
	mov	rdi, r14
	nop	
	mov	rsi, qword ptr [rsp + 0x80]
	call	memcasecmp
	lea	rsi, [rsi]
	jmp	.label_76
	nop	dword ptr [rax + rax]
.label_63:
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	mov	rsp, rsp
	je	.label_113
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, rdx
	nop	
	mov	rdx, qword ptr [rsp + 0x80]
	mov	rbp, rbp
	call	xmemcoll
	jmp	.label_76
.label_113:
	cmp	rdx, rcx
	nop	
	jne	.label_52
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x80]
	mov	rbp, rbp
	call	memcmp
	nop	word ptr [rax + rax]
.label_76:
	nop	
	test	eax, eax
	nop	
	setne	bl
.label_52:
	mov	eax,  dword ptr [dword ptr [rip + grouping]]
	lea	rsi, [rsi]
	test	bl, bl
	lea	rdi, [rdi]
	je	.label_26
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, rbp
	je	.label_26
	mov	rsp, rsp
	cmp	eax, 4
	je	.label_86
	cmp	eax, 1
	jne	.label_26
.label_86:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rax, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	jb	.label_107
	lea	rsi, [rsi]
	mov	esi, dword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	call	__overflow
	mov	eax,  dword ptr [dword ptr [rip + grouping]]
	nop	
.label_26:
	lea	rsi, [rsi]
	test	eax, eax
	setne	al
	mov	rbp, rbp
	or	bl, al
	nop	
	movzx	eax, bl
	cmp	eax, 1
	jne	.label_9
	mov	rsp, rsp
	jmp	.label_11
	nop	word ptr cs:[rax + rax]
.label_107:
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x28], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], r13b
	jmp	.label_11
.label_108:
	nop	
	mov	esi, dword ptr [rsp + 0x60]
	call	__overflow
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [rip + grouping]]
	lea	rdi, [rdi]
	jmp	.label_28
	nop	word ptr cs:[rax + rax]
.label_35:
	mov	rsi,  qword ptr [word ptr [rip + stdin]]
	test	byte ptr [rsi], 0x10
	nop	
	jne	.label_34
	mov	rdi, r12
	mov	edx, dword ptr [rsp + 0x90]
	call	readlinebuffer_delim
	mov	rsp, rsp
	test	rax, rax
	je	.label_34
	mov	rbx, qword ptr [r12 + 8]
	mov	r15, qword ptr [r12 + 0x10]
	mov	rdi, rbx
	nop	
	mov	rsi, r15
	call	find_field
	mov	r14, rax
	mov	rsp, rsp
	sub	r15, r14
	mov	rbp, rbp
	lea	rbp, [rbx + r15 - 1]
	mov	bl, 1
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	je	.label_31
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + check_chars]]
	cmp	rcx, rbp
	mov	rdx, rbp
	lea	rsi, [rsi]
	cmovb	rdx, rcx
	mov	rax, qword ptr [rsp + 0x68]
	cmp	rcx, rax
	cmovae	rcx, rax
	mov	al,  byte ptr [byte ptr [rip + ignore_case]]
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	je	.label_58
	mov	rbp, rbp
	cmp	rdx, rcx
	jne	.label_31
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	call	memcasecmp
	lea	rdi, [rdi]
	jmp	.label_78
	nop	word ptr cs:[rax + rax]
.label_58:
	lea	rdi, [rdi]
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	lea	rdi, [rdi]
	je	.label_32
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsi, rdx
	mov	rdx, qword ptr [rsp + 0x80]
	call	xmemcoll
	lea	rdi, [rdi]
	jmp	.label_78
.label_32:
	mov	rbp, rbp
	cmp	rdx, rcx
	nop	
	jne	.label_31
	nop	
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x80]
	call	memcmp
	nop	word ptr [rax + rax]
.label_78:
	test	eax, eax
	lea	rdi, [rdi]
	setne	bl
.label_31:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [rip + grouping]]
	test	bl, bl
	je	.label_28
	mov	rsp, rsp
	test	eax, eax
	je	.label_28
	mov	rbp, rbp
	cmp	eax, 1
	lea	rdi, [rdi]
	je	.label_55
	cmp	eax, 4
	nop	
	je	.label_55
	nop	
	mov	ecx, eax
	or	ecx, 1
	cmp	ecx, 3
	mov	rsp, rsp
	jne	.label_28
	nop	dword ptr [rax + rax]
.label_55:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdi + 0x30]
	mov	rsp, rsp
	jae	.label_108
	lea	rdx, [rcx + 1]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], r13b
.label_28:
	test	eax, eax
	setne	al
	mov	rsp, rsp
	or	bl, al
	je	.label_35
	lea	rdi, [rdi]
	jmp	.label_11
.label_100:
	mov	rax,  qword ptr [word ptr [rip + stdin]]
	nop	
	test	byte ptr [rax], 0x20
	mov	rbx, qword ptr [rsp + 0x60]
	jne	.label_12
	lea	rdi, [rdi]
	jmp	.label_19
.label_34:
	xor	ebx, ebx
.label_48:
	mov	eax,  dword ptr [dword ptr [rip + grouping]]
	mov	rbp, rbp
	cmp	eax, 4
	je	.label_21
	cmp	eax, 2
	jne	.label_12
.label_21:
	test	bl, bl
	nop	
	jne	.label_12
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_112
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r13b
	lea	rdi, [rdi]
	jmp	.label_12
.label_91:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x60]
	jmp	.label_19
.label_94:
	mov	rbx, qword ptr [rsp + 0x60]
.label_19:
	mov	rbp, rbp
	test	r15, r15
	mov	rsp, rsp
	je	.label_42
	movzx	eax,  byte ptr [byte ptr [rip + output_first_repeated]]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	jne	.label_12
	nop	
	jmp	.label_47
.label_42:
	nop	
	mov	al,  byte ptr [byte ptr [rip + output_unique]]
	mov	rbp, rbp
	and	al, 1
	lea	rdi, [rdi]
	je	.label_12
.label_47:
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + countmode]]
	mov	rbp, rbp
	and	al, 1
	jne	.label_49
	mov	rbp, rbp
	inc	r15
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.71
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, r15
	mov	rbp, rbp
	call	__printf_chk
.label_49:
	mov	rdx, qword ptr [rbx + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	lea	rsi, [rsi]
	call	fwrite_unlocked
.label_12:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	test	byte ptr [rdi], 0x20
	jne	.label_69
	call	rpl_fclose
	nop	
	test	eax, eax
	mov	rbp, rbp
	jne	.label_69
	mov	rdi, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	call	free
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	call	free
	xor	eax, eax
	add	rsp, 0x98
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
.label_112:
	lea	rsi, [rsi]
	mov	esi, dword ptr [rsp + 0x60]
	call	__overflow
	lea	rdi, [rdi]
	jmp	.label_12
.label_116:
	cmp	eax, 0xffffff7d
	lea	rsi, [rsi]
	je	.label_93
	mov	rbp, rbp
	cmp	eax, 0xffffff7e
	jne	.label_22
	xor	edi, edi
	call	usage
.label_20:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	lea	rdi, [rdi]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rbp, rbp
	mov	rdi, qword ptr [r12 + rax*8]
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rbp
.label_67:
	mov	rbp, rbp
	call	error
	mov	rsp, rsp
	mov	edi, 1
	call	usage
.label_93:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	nop	
	mov	qword ptr [rsp], 0
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.14
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.28
	mov	r9d, OFFSET FLAT:.str.29
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	nop	
	call	exit
.label_22:
	mov	edi, 1
	call	usage
.label_69:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.70
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbx, rax
	nop	
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x78]
	call	quotearg_style
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	error
.label_88:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25
	lea	rsi, [rsi]
	jmp	.label_39
.label_90:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24
	mov	rsp, rsp
	jmp	.label_39
.label_13:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26
.label_39:
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str.1_0
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rcx, rbx
	mov	r8, rbp
	mov	rbp, rbp
	call	error
.label_44:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	nop	
	call	quote
	nop	
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	lea	rdi, [rdi]
	jmp	.label_67
.label_72:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.30
	jmp	.label_73
.label_80:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.31
	jmp	.label_73
.label_102:
	mov	rbp, rbp
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	nop	
	mov	rdx, rbp
	nop	
	call	quotearg_n_style_colon
	mov	rbp, rbp
	mov	rcx, rax
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_1
	nop	
	xor	eax, eax
	mov	esi, ebx
	lea	rdi, [rdi]
	call	error
.label_110:
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebp, dword ptr [rax]
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	mov	rdx, rbx
	mov	rbp, rbp
	call	quotearg_n_style_colon
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebp
	call	error
.label_84:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.32
.label_73:
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	error
	mov	edi, 1
	nop	
	call	usage
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403000

	.globl find_field
	.type find_field, @function
find_field:
	mov	rsp, rsp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rsi
	nop	
	mov	r15, rdi
	nop	
	xor	ebx, ebx
	mov	rbp, rbp
	dec	r15
	je	.label_117
	nop	
	mov	r12,  qword ptr [word ptr [rip + skip_fields]]
	test	r12, r12
	mov	rbp, rbp
	je	.label_117
	mov	rsp, rsp
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_119:
	lea	rsi, [rsi]
	cmp	rbx, r15
	nop	
	jae	.label_120
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	nop	word ptr cs:[rax + rax]
.label_121:
	movzx	ecx, byte ptr [r14 + rbx]
	cmp	rcx, 0xa
	nop	
	je	.label_123
	movzx	ecx, word ptr [rax + rcx*2]
	mov	rsp, rsp
	and	ecx, 1
	lea	rdi, [rdi]
	test	cx, cx
	lea	rdi, [rdi]
	je	.label_120
.label_123:
	lea	rdi, [rdi]
	inc	rbx
	mov	rbp, rbp
	cmp	rbx, r15
	jb	.label_121
.label_120:
	nop	
	cmp	rbx, r15
	jae	.label_118
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
.label_122:
	mov	rsp, rsp
	movzx	ecx, byte ptr [r14 + rbx]
	mov	rbp, rbp
	cmp	rcx, 0xa
	je	.label_118
	lea	rdi, [rdi]
	movzx	ecx, word ptr [rax + rcx*2]
	and	ecx, 1
	test	cx, cx
	lea	rsi, [rsi]
	jne	.label_118
	inc	rbx
	cmp	rbx, r15
	jb	.label_122
.label_118:
	cmp	r15, rbx
	jbe	.label_117
	mov	rsp, rsp
	inc	r13
	lea	rsi, [rsi]
	cmp	r13, r12
	jb	.label_119
.label_117:
	nop	
	mov	rax,  qword ptr [word ptr [rip + skip_chars]]
	sub	r15, rbx
	cmp	rax, r15
	cmovb	r15, rax
	mov	rbp, rbp
	add	r15, rbx
	mov	rsp, rsp
	add	r14, r15
	mov	rbp, rbp
	mov	rax, r14
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	nop	
	pop	r13
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403130

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	jmp	usage
	.section	.text
	.align	16
	#Procedure 0x403140

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	nop	
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rsp, rsp
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	r13, rcx
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rbx
	lea	rsi, [rsi]
	mov	r15, rdi
	call	strlen
	mov	r12, rax
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rbx]
	test	rbp, rbp
	je	.label_132
	lea	rdi, [rdi]
	test	r14, r14
	nop	
	je	.label_127
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 8], r14
	mov	rbp, rbp
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_128:
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_129
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rbp, rbp
	call	strlen
	lea	rsi, [rsi]
	cmp	rax, r12
	lea	rsi, [rsi]
	je	.label_125
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, -1
	mov	rbp, rbp
	je	.label_131
	mov	rdi, rax
	mov	rsp, rsp
	imul	rdi, r13
	add	rdi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rdx, r13
	mov	rbp, rbp
	call	memcmp
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_129
	mov	al, 1
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_129
.label_131:
	mov	qword ptr [rsp + 0x18], rbx
	nop	dword ptr [rax + rax]
.label_129:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	lea	rsi, [rsi]
	add	r14, r13
	test	rbp, rbp
	jne	.label_128
	nop	
	jmp	.label_124
.label_132:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], -1
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	nop	
	jmp	.label_124
.label_127:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rsp, rsp
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_130:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rsp, rsp
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_126
	mov	rdi, rbp
	mov	rbp, rbp
	call	strlen
	nop	
	cmp	rax, r12
	je	.label_125
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	cmp	rax, -1
	nop	
	cmove	rax, rbx
	mov	qword ptr [rsp + 0x18], rax
	je	.label_126
	lea	rdi, [rdi]
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	nop	dword ptr [rax + rax]
.label_126:
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	test	rbp, rbp
	nop	
	jne	.label_130
.label_124:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbx, -2
	mov	rbp, rbp
	cmove	rbx, qword ptr [rsp + 0x18]
.label_125:
	lea	rdi, [rdi]
	mov	rax, rbx
	lea	rdi, [rdi]
	add	rsp, 0x28
	nop	
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x403340
	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:

	mov	rbp, rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r15, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	xor	edi, edi
	cmp	rdx, -1
	je	.label_133
	mov	esi, OFFSET FLAT:.str.1_1
	nop	
	jmp	.label_134
.label_133:
	nop	
	mov	esi, OFFSET FLAT:.str_2
.label_134:
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 8
	lea	rsi, [rsi]
	mov	rdx, r15
	call	quotearg_n_style
	nop	
	mov	r15, rax
	mov	edi, 1
	lea	rsi, [rsi]
	mov	rsi, r14
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r15
	nop	
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rsi, [rsi]
	jmp	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x4033e0

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	mov	rsp, rsp
	push	rbp
	push	r15
	nop	
	push	r14
	nop	
	push	r13
	push	r12
	push	rbx
	nop	
	push	rax
	mov	r14, rdx
	mov	rsp, rsp
	mov	r12, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp], rbx
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbx]
	nop	
	test	rbx, rbx
	je	.label_137
	lea	rdi, [rdi]
	xor	r13d, r13d
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_139:
	test	r15, r15
	mov	rbp, rbp
	je	.label_138
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	lea	rdi, [rdi]
	call	memcmp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_136
.label_138:
	mov	r13,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.3_0
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_135
	nop	dword ptr [rax]
.label_136:
	mov	rbp,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rsp, rsp
	mov	rcx, rax
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.4_0
	xor	eax, eax
	mov	rdi, rbp
	call	__fprintf_chk
.label_135:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	mov	rbx, qword ptr [rax + r15*8 + 8]
	inc	r15
	add	r12, r14
	lea	rsi, [rsi]
	test	rbx, rbx
	jne	.label_139
.label_137:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_140
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_140:
	mov	rsp, rsp
	mov	esi, 0xa
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	jmp	__overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403560

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r9
	lea	rsi, [rsi]
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	r14, rsi
	mov	rbp, rdi
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rsp, rsp
	mov	rdx, r12
	mov	rcx, r15
	lea	rdi, [rdi]
	call	argmatch
	mov	rsp, rsp
	test	rax, rax
	jns	.label_142
	mov	qword ptr [rsp + 8], rbp
	mov	rbp, rbp
	xor	edi, edi
	cmp	rax, -1
	je	.label_143
	mov	esi, OFFSET FLAT:.str.1_1
	mov	rsp, rsp
	jmp	.label_141
.label_143:
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_2
.label_141:
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 8
	mov	rbp, rbp
	mov	rdx, r14
	call	quotearg_n_style
	nop	
	mov	r14, rax
	nop	
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	call	quote_n
	mov	rbp, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rcx, r14
	mov	r8, rbp
	call	error
	mov	rsp, rsp
	mov	rdi, r13
	mov	rbp, rbp
	mov	rsi, r12
	mov	rdx, r15
	mov	rbp, rbp
	call	argmatch_valid
	mov	rsp, rsp
	call	rbx
	mov	rbp, rbp
	mov	rax, -1
.label_142:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403680
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rbp, rbp
	push	rbx
	nop	
	mov	r14, rcx
	mov	r15, rdx
	lea	rdi, [rdi]
	mov	rbx, rsi
	nop	
	mov	r12, rdi
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	xor	eax, eax
	mov	rsp, rsp
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_144
	lea	rsi, [rsi]
	add	rbx, 8
	nop	dword ptr [rax]
.label_145:
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, r15
	nop	
	mov	rdx, r14
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	mov	rax, r13
	nop	
	je	.label_144
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	mov	rbp, rbp
	test	r13, r13
	mov	eax, 0
	jne	.label_145
.label_144:
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403710
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
	#Procedure 0x403720
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403730

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
	je	.label_147
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_146
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_146
.label_147:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_149
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_146:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_148
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
.label_149:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_148:
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
	.align	16
	#Procedure 0x403830
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403840

	.globl fadvise
	.type fadvise, @function
fadvise:
	lea	rdi, [rdi]
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_150
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
.label_150:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403870

	.globl freopen_safer
	.type freopen_safer, @function
freopen_safer:
	mov	rbp, rbp
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rbx, rdx
	lea	rsi, [rsi]
	mov	r14, rsi
	mov	rbp, rdi
	mov	rdi, rbx
	nop	
	call	fileno
	xor	r12d, r12d
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsp, rsp
	je	.label_156
	mov	rsp, rsp
	cmp	eax, 1
	nop	
	je	.label_160
	mov	rbp, rbp
	cmp	eax, 2
	je	.label_162
	lea	rsi, [rsi]
	mov	edi, 2
	mov	rsp, rsp
	mov	esi, 2
	mov	rsp, rsp
	call	dup2
	cmp	eax, 2
	setne	r12b
.label_162:
	lea	rdi, [rdi]
	mov	r15b, r12b
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, 1
	mov	rbp, rbp
	call	dup2
	nop	
	cmp	eax, 1
	mov	rsp, rsp
	setne	r12b
	jmp	.label_163
.label_156:
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_152
.label_160:
	nop	
	xor	r15d, r15d
.label_163:
	nop	
	xor	r13d, r13d
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_151
	nop	
	mov	edi, OFFSET FLAT:.str_4
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	nop	
	call	open
	mov	r13b, 1
	test	eax, eax
	je	.label_151
	lea	rsi, [rsi]
	mov	r13b, 1
	lea	rdi, [rdi]
	jmp	.label_153
.label_151:
	nop	
	test	r12b, r12b
	je	.label_161
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_4
	nop	
	xor	esi, esi
	nop	
	xor	eax, eax
	call	open
	cmp	eax, 1
	jne	.label_153
.label_161:
	lea	rdi, [rdi]
	test	r15b, r15b
	lea	rdi, [rdi]
	je	.label_152
	mov	edi, OFFSET FLAT:.str_4
	xor	esi, esi
	xor	eax, eax
	call	open
	nop	
	cmp	eax, 2
	jne	.label_153
.label_152:
	mov	rdi, rbp
	nop	
	mov	rsi, r14
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	rpl_freopen
	mov	r14, rax
	jmp	.label_158
.label_153:
	xor	r14d, r14d
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	js	.label_158
	mov	edi, eax
	call	close
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 9
	xor	r14d, r14d
.label_158:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	lea	rsi, [rsi]
	test	r15b, r15b
	nop	
	je	.label_155
	nop	
	mov	edi, 2
	call	close
.label_155:
	mov	rbp, rbp
	test	r12b, r12b
	je	.label_159
	mov	edi, 1
	nop	
	call	close
.label_159:
	test	r13b, r13b
	je	.label_157
	nop	
	xor	edi, edi
	mov	rsp, rsp
	call	close
.label_157:
	nop	
	test	r14, r14
	lea	rdi, [rdi]
	jne	.label_154
	lea	rdi, [rdi]
	mov	dword ptr [rbx], ebp
.label_154:
	mov	rax, r14
	add	rsp, 8
	nop	
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x403a40

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
	je	.label_165
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_164
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_166
.label_164:
	nop	
	mov	esi, OFFSET FLAT:.str.1_2
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_165
.label_166:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_165:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x403a90

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
	#Procedure 0x403ab0
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
	jne	.label_168
	mov	rsp, rsp
	mov	r15, qword ptr [r14 + 0x10]
	mov	r12, qword ptr [r14]
	add	r12, r15
	lea	rdi, [rdi]
	mov	rbx, r15
	nop	word ptr [rax + rax]
.label_172:
	mov	rax, qword ptr [r13 + 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [r13 + 0x10]
	nop	
	jae	.label_167
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_169:
	mov	rsp, rsp
	cmp	rbx, r12
	jne	.label_171
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
.label_171:
	mov	byte ptr [rbx], bpl
	mov	rsp, rsp
	inc	rbx
	mov	rbp, rbp
	cmp	ebp, 0xa
	jne	.label_172
	jmp	.label_170
.label_167:
	mov	rbp, rbp
	mov	rdi, r13
	lea	rdi, [rdi]
	call	__uflow
	mov	ebp, eax
	mov	rbp, rbp
	cmp	ebp, -1
	jne	.label_169
	cmp	rbx, r15
	mov	eax, 0
	lea	rsi, [rsi]
	je	.label_168
	nop	
	test	byte ptr [r13], 0x20
	jne	.label_168
	movzx	eax, byte ptr [rbx - 1]
	lea	rdi, [rdi]
	mov	ebp, 0xa
	cmp	eax, 0xa
	mov	rsp, rsp
	jne	.label_169
.label_170:
	lea	rdi, [rdi]
	sub	rbx, r15
	nop	
	mov	qword ptr [r14 + 8], rbx
	mov	rax, r14
.label_168:
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
	.align	16
	#Procedure 0x403bc0

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
	jne	.label_173
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
.label_178:
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rbp + 0x10]
	mov	rsp, rsp
	jae	.label_176
	lea	rcx, [rax + 1]
	mov	qword ptr [rbp + 8], rcx
	lea	rsi, [rsi]
	movzx	ebx, byte ptr [rax]
.label_177:
	cmp	r13, r14
	nop	
	jne	.label_175
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
.label_175:
	nop	
	mov	byte ptr [r13], bl
	nop	
	inc	r13
	nop	
	cmp	ebx, dword ptr [rsp]
	jne	.label_178
	lea	rdi, [rdi]
	jmp	.label_174
.label_176:
	mov	rbp, rbp
	mov	rdi, rbp
	call	__uflow
	mov	rsp, rsp
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_177
	mov	rsp, rsp
	cmp	r13, r12
	mov	rbp, rbp
	mov	ecx, dword ptr [rsp + 4]
	mov	eax, 0
	lea	rdi, [rdi]
	je	.label_173
	test	byte ptr [rbp], 0x20
	jne	.label_173
	mov	eax, ecx
	nop	
	movzx	eax, al
	movzx	ecx, byte ptr [r13 - 1]
	cmp	ecx, eax
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rsp]
	lea	rdi, [rdi]
	jne	.label_177
.label_174:
	sub	r13, r12
	mov	qword ptr [r15 + 8], r13
	mov	rax, r15
.label_173:
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
	.align	16
	#Procedure 0x403ce0
	.globl freebuffer
	.type freebuffer, @function
freebuffer:

	nop
	mov	rdi, qword ptr [rdi + 0x10]
	jmp	free
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403cf0

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
	je	.label_179
	mov	rbp, rbp
	call	__ctype_toupper_loc
	mov	rsp, rsp
	mov	rcx, qword ptr [rax]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_180:
	movzx	eax, byte ptr [r15 + rdx]
	mov	eax, dword ptr [rcx + rax*4]
	lea	rdi, [rdi]
	movzx	esi, byte ptr [r14 + rdx]
	lea	rdi, [rdi]
	sub	eax, dword ptr [rcx + rsi*4]
	lea	rsi, [rsi]
	jne	.label_179
	lea	rsi, [rsi]
	inc	rdx
	xor	eax, eax
	mov	rsp, rsp
	cmp	rdx, rbx
	lea	rsi, [rsi]
	jb	.label_180
.label_179:
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d70

	.globl posix2_version
	.type posix2_version, @function
posix2_version:
	mov	rsp, rsp
	push	rax
	mov	edi, OFFSET FLAT:.str_5
	lea	rdi, [rdi]
	call	getenv
	mov	rcx, rax
	mov	rbp, rbp
	mov	eax, 0x31069
	mov	rsp, rsp
	test	rcx, rcx
	mov	rbp, rbp
	je	.label_181
	mov	rbp, rbp
	mov	eax, 0x31069
	lea	rdi, [rdi]
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_181
	mov	rsp, rsp
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, rcx
	lea	rdi, [rdi]
	call	strtol
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	je	.label_181
	nop	
	mov	eax, 0x31069
.label_181:
	cmp	rax, 0x7fffffff
	mov	ecx, 0x7fffffff
	cmovl	ecx, eax
	nop	
	cmp	rax, -0x80000000
	mov	rbp, rbp
	mov	eax, 0x80000000
	nop	
	cmovge	eax, ecx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e00

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
	je	.label_182
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
	jl	.label_184
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_184
	mov	esi, OFFSET FLAT:.str.2_1
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_183
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_183:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_184:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_182:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_6
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
	#Procedure 0x403ef0
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
	#Procedure 0x403f40
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
	#Procedure 0x403f60
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
	#Procedure 0x403f80
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
	#Procedure 0x403ff0
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
	#Procedure 0x404010
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
	je	.label_185
	test	rdx, rdx
	nop	
	je	.label_185
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_185:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404050
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
	.align	16
	#Procedure 0x404100

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
.label_287:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r12d
	lea	rsi, [rsi]
	cmp	r12d, 0xa
	lea	rdi, [rdi]
	ja	.label_307
	mov	r9d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	r10, r15
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_306]]
.label_460:
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
	mov	edi, OFFSET FLAT:.str.12_0
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
.label_461:
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
	jne	.label_214
	mov	al, byte ptr [rdx]
	test	al, al
	mov	r14d, 0
	je	.label_214
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_241:
	mov	rsp, rsp
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_236
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_236:
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + r14 + 1]
	mov	rsp, rsp
	inc	r14
	test	al, al
	mov	rbp, rbp
	jne	.label_241
.label_214:
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
	jmp	.label_192
.label_453:
	xor	r9d, r9d
	xor	r14d, r14d
	mov	rbp, rbp
	mov	r13b, al
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_192
.label_456:
	lea	rsi, [rsi]
	mov	al, 1
.label_454:
	lea	rsi, [rsi]
	mov	dl, 1
.label_457:
	nop	
	test	dl, 1
	lea	rsi, [rsi]
	mov	cl, 1
	mov	rbp, rbp
	je	.label_271
	mov	rbp, rbp
	mov	cl, al
.label_271:
	mov	al, cl
.label_455:
	nop	
	mov	r9d, 2
	lea	rsi, [rsi]
	test	dl, 1
	mov	rsp, rsp
	jne	.label_277
	test	rbp, rbp
	je	.label_281
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx], 0x27
	mov	r14d, 1
	lea	rdi, [rdi]
	jmp	.label_282
.label_277:
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_282
.label_458:
	mov	rsp, rsp
	mov	r9d, 5
	test	dl, 1
	jne	.label_289
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_294
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x22
	mov	r14d, 1
	jmp	.label_201
.label_459:
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
	jmp	.label_192
.label_281:
	mov	r14d, 1
	nop	word ptr cs:[rax + rax]
.label_282:
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0x68], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xa0], rcx
	nop	
	mov	r13b, al
	nop	
	mov	sil, dl
	jmp	.label_192
.label_289:
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_201
.label_294:
	nop	
	mov	r14d, 1
.label_201:
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
.label_192:
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
	jmp	.label_218
	nop	dword ptr [rax]
.label_210:
	mov	rsp, rsp
	inc	r15
.label_218:
	lea	rdi, [rdi]
	cmp	r10, -1
	lea	rsi, [rsi]
	je	.label_265
	cmp	r15, r10
	jne	.label_266
	jmp	.label_292
	nop	dword ptr [rax]
.label_265:
	mov	rcx, -1
	nop	
	cmp	byte ptr [r11 + r15], 0
	mov	rsp, rsp
	je	.label_269
.label_266:
	cmp	byte ptr [rsp + 0x56], 0
	nop	
	je	.label_274
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rbx, [r15 + rax]
	mov	qword ptr [rsp + 0x88], r15
	lea	rsi, [rsi]
	cmp	rax, 2
	jb	.label_234
	lea	rdi, [rdi]
	cmp	r10, -1
	nop	
	jne	.label_234
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
.label_234:
	mov	rsp, rsp
	cmp	rbx, r10
	lea	rdi, [rdi]
	jbe	.label_305
	mov	dword ptr [rsp + 0x84], 0
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	jmp	.label_186
	nop	dword ptr [rax]
.label_274:
	nop	
	mov	dword ptr [rsp + 0x84], 0
	lea	rsi, [rsi]
	jmp	.label_186
	nop	word ptr cs:[rax + rax]
.label_305:
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
	jne	.label_213
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
	je	.label_186
	jmp	.label_191
.label_213:
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
.label_186:
	movzx	r12d, byte ptr [r11 + r15]
	cmp	r12, 0x7e
	ja	.label_245
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	r13b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	rsp, rsp
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_249]]
.label_472:
	test	r15, r15
	jne	.label_216
	jmp	.label_258
.label_476:
	xor	eax, eax
	cmp	r10, -1
	je	.label_261
	test	r15, r15
	jne	.label_239
	nop	
	cmp	r10, 1
	je	.label_258
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_190
.label_465:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x37], 0
	mov	rbp, rbp
	je	.label_267
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_191
	nop	
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_221
	nop	
	mov	al, dil
	nop	
	and	al, 1
	jne	.label_221
	cmp	r14, rbp
	jae	.label_280
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_280:
	nop	
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_278
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x24
.label_278:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_293
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_293:
	nop	
	add	r14, 3
	lea	rdi, [rdi]
	mov	dil, 1
.label_221:
	mov	rcx, r14
	nop	
	cmp	rcx, rbp
	mov	rsp, rsp
	jae	.label_303
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x5c
.label_303:
	lea	r14, [rcx + 1]
	mov	rbp, rbp
	mov	al, 1
	mov	r12b, 0x30
	cmp	r9d, 2
	je	.label_311
	lea	rdx, [r15 + 1]
	cmp	rdx, r10
	jae	.label_188
	nop	
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	mov	rbp, rbp
	movzx	edx, dl
	cmp	edx, 9
	mov	rbp, rbp
	ja	.label_193
	mov	rsp, rsp
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_200
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rdx + r14], 0x30
.label_200:
	nop	
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_296
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + rdx], 0x30
.label_296:
	add	rcx, 3
	xor	r13d, r13d
	lea	rdi, [rdi]
	mov	r14, rcx
	jmp	.label_190
.label_466:
	mov	bl, 0x62
	nop	
	jmp	.label_228
.label_467:
	mov	rsp, rsp
	mov	cl, 0x74
	lea	rsi, [rsi]
	jmp	.label_219
.label_468:
	mov	bl, 0x76
	mov	rbp, rbp
	jmp	.label_228
.label_469:
	lea	rdi, [rdi]
	mov	bl, 0x66
	jmp	.label_228
.label_470:
	mov	cl, 0x72
	lea	rdi, [rdi]
	jmp	.label_219
.label_473:
	nop	
	mov	al, 1
	mov	qword ptr [rsp + 0xc8], rax
	cmp	r9d, 2
	jne	.label_309
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_238
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
	jae	.label_242
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_242:
	lea	rax, [r14 + 1]
	lea	rdi, [rdi]
	cmp	rax, rbp
	jae	.label_260
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x5c
.label_260:
	lea	rdi, [rdi]
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_206
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_206:
	mov	rbp, rbp
	add	r14, 3
	lea	rdi, [rdi]
	xor	edi, edi
.label_309:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	r13b, 1
	jmp	.label_190
.label_474:
	lea	rdi, [rdi]
	cmp	r9d, 5
	je	.label_276
	mov	rbp, rbp
	cmp	r9d, 2
	jne	.label_216
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_216
	nop	
	jmp	.label_286
.label_475:
	mov	rsp, rsp
	cmp	r9d, 2
	nop	
	jne	.label_288
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_291
	jmp	.label_295
.label_245:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	qword ptr [rsp + 0xd0], r9
	mov	byte ptr [rsp + 0xf7], r8b
	mov	qword ptr [rsp + 0x78], rbp
	cmp	qword ptr [rsp + 0xa8], 1
	lea	rsi, [rsi]
	jne	.label_298
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
	jmp	.label_314
.label_261:
	lea	rdi, [rdi]
	test	r15, r15
	jne	.label_196
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_196
.label_258:
	mov	dl, 1
.label_471:
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_205
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r13b, dl
	lea	rdi, [rdi]
	jmp	.label_190
.label_267:
	cmp	dword ptr [rsp + 0x94], 0
	mov	rsp, rsp
	jne	.label_210
	jmp	.label_216
.label_288:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	cl, r12b
	je	.label_219
.label_291:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_222
.label_219:
	cmp	byte ptr [rsp + 0xc7], 0
	mov	rbp, rbp
	mov	bl, cl
	je	.label_227
.label_228:
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x37], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_190
	jmp	.label_233
.label_298:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], 0
	lea	rsi, [rsi]
	cmp	r10, -1
	lea	rbp, [rsp + 0x70]
	jne	.label_209
	mov	rdi, r11
	mov	rbx, r11
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	r11, rbx
	mov	r10, rax
.label_209:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd8], r10
	nop	
	mov	r13b, 1
	nop	
	cmp	byte ptr [rsp + 0x47], 0
	lea	rsi, [rsi]
	mov	edx, 0
	je	.label_247
	lea	rax, [r11 + r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe8], rax
	lea	rsi, [rsi]
	mov	r13b, 1
	nop	
	xor	edx, edx
.label_197:
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
	je	.label_268
	mov	rsp, rsp
	cmp	rbx, -1
	movabs	rsi, 0x20000002b
	je	.label_230
	test	rbx, rbx
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_229
	lea	rsi, [rsi]
	cmp	rbx, 2
	nop	
	mov	rbp, qword ptr [rsp + 0x78]
	jb	.label_284
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rsp + 0xe8]
	lea	rdi, [rdi]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax + rax]
.label_308:
	nop	
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	mov	rbp, rbp
	cmp	edx, 0x21
	mov	rbp, rbp
	ja	.label_301
	lea	rsi, [rsi]
	bt	rsi, rdx
	nop	
	jb	.label_304
.label_301:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbx
	jb	.label_308
.label_284:
	mov	edi, dword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_313
	mov	rbp, rbp
	xor	r13d, r13d
.label_313:
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
	je	.label_197
	jmp	.label_246
	nop	
.label_247:
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
	je	.label_225
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_230
	mov	rbp, rbp
	cmp	rbp, -2
	mov	rsp, rsp
	je	.label_268
	mov	edi, dword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	call	iswprint
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_217
	xor	r13d, r13d
.label_217:
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
	je	.label_247
	lea	rsi, [rsi]
	jmp	.label_246
.label_196:
	lea	rdi, [rdi]
	mov	r10, -1
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_190
.label_276:
	cmp	dword ptr [rsp + 0x5c], 0
	lea	rdi, [rdi]
	je	.label_216
	lea	rcx, [r15 + 2]
	cmp	rcx, r10
	jae	.label_216
	movzx	eax, byte ptr [r15 + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_216
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	nop	
	cmp	edx, 0x3e
	lea	rdi, [rdi]
	ja	.label_270
	movabs	rsi, 0x7000a38200000000
	mov	rbp, rbp
	bt	rsi, rdx
	lea	rsi, [rsi]
	jae	.label_275
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_302
	lea	rdi, [rdi]
	cmp	r14, rbp
	jae	.label_285
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x3f
.label_285:
	mov	rsp, rsp
	lea	rax, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rax, rbp
	jae	.label_290
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x22
.label_290:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_251
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rax], 0x22
.label_251:
	nop	
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_255
	nop	
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x3f
.label_255:
	add	r14, 4
	xor	eax, eax
	nop	
	mov	r15, rcx
	mov	rsp, rsp
	mov	r12b, dl
	mov	rsp, rsp
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_190
.label_216:
	mov	rbp, rbp
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_190:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x83], 0
	je	.label_203
	cmp	qword ptr [rsp + 0x130], 0
	jne	.label_199
	nop	
	jmp	.label_204
	nop	dword ptr [rax + rax]
.label_203:
	cmp	byte ptr [rsp + 0x57], 0
	lea	rdi, [rdi]
	je	.label_204
.label_199:
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
	jne	.label_207
	mov	rcx, qword ptr [rsp + 0x130]
	and	esi, dword ptr [rcx + rdx*4]
	mov	rbp, rbp
	jmp	.label_220
	nop	word ptr cs:[rax + rax]
.label_204:
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
.label_220:
	mov	bl, r12b
	je	.label_222
	jmp	.label_233
.label_207:
	mov	bl, r12b
.label_233:
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_191
	cmp	r9d, 2
	jne	.label_212
	mov	al, dil
	and	al, 1
	jne	.label_212
	lea	rdi, [rdi]
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_240
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_240:
	nop	
	lea	rax, [r14 + 1]
	mov	rsp, rsp
	cmp	rax, rbp
	jae	.label_244
	mov	rcx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_244:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_252
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_252:
	mov	rsp, rsp
	add	r14, 3
	mov	dil, 1
.label_212:
	mov	rbp, rbp
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_257
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_257:
	mov	rbp, rbp
	inc	r14
	jmp	.label_263
.label_239:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_190
.label_311:
	xor	r13d, r13d
	jmp	.label_190
.label_188:
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_190
.label_193:
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_190
.label_230:
	xor	r13d, r13d
.label_225:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	jmp	.label_246
.label_268:
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x88]
	lea	rax, [rdx + r15]
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	cmp	rax, r10
	mov	r11, qword ptr [rsp + 0xe0]
	jae	.label_283
	lea	rax, [r11 + r15]
.label_299:
	mov	rbp, rbp
	cmp	byte ptr [rax + rdx], 0
	mov	rbp, rbp
	je	.label_273
	lea	rcx, [r15 + rdx + 1]
	inc	rdx
	cmp	rcx, r10
	lea	rdi, [rdi]
	jb	.label_299
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_246
.label_283:
	xor	r13d, r13d
	jmp	.label_246
.label_273:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_246
.label_229:
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0x88]
.label_246:
	mov	rbp, rbp
	mov	rbx, r10
.label_314:
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
	ja	.label_187
	test	cl, cl
	je	.label_187
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_190
.label_187:
	mov	rsp, rsp
	add	rdx, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x88], rdx
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_208
	nop	dword ptr [rax]
.label_202:
	nop	
	inc	r14
	mov	rbp, rbp
	mov	r12b, byte ptr [r11 + r15 + 1]
	nop	
	mov	r15, rdx
.label_208:
	mov	rsp, rsp
	test	cl, cl
	je	.label_224
	mov	edx, dword ptr [rsp + 0x84]
	test	dl, 1
	lea	rsi, [rsi]
	je	.label_226
	cmp	r14, rbp
	jae	.label_231
	nop	
	mov	rdx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + r14], 0x5c
.label_231:
	inc	r14
	mov	dword ptr [rsp + 0x84], 0
.label_226:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_237
	nop	dword ptr [rax + rax]
.label_224:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_243
	cmp	r9d, 2
	mov	rsp, rsp
	mov	r10, rbx
	jne	.label_248
	mov	rsp, rsp
	mov	al, dil
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_248
	lea	rsi, [rsi]
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_254
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_254:
	lea	rax, [r14 + 1]
	nop	
	cmp	rax, rbp
	jae	.label_223
	mov	rdx, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_223:
	lea	rax, [r14 + 2]
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_262
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdx + rax], 0x27
.label_262:
	lea	rsi, [rsi]
	add	r14, 3
	mov	rsp, rsp
	mov	dil, 1
.label_248:
	cmp	r14, rbp
	jae	.label_310
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_310:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_215
	mov	dl, r12b
	lea	rdi, [rdi]
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], dl
.label_215:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	mov	rsp, rsp
	jae	.label_259
	mov	dl, r12b
	shr	dl, 3
	and	dl, 7
	nop	
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rsi + rax], dl
.label_259:
	nop	
	add	r14, 3
	mov	rsp, rsp
	and	r12b, 7
	or	r12b, 0x30
	mov	rbp, rbp
	mov	al, 1
.label_237:
	lea	rdx, [r15 + 1]
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x88], rdx
	lea	rsi, [rsi]
	jbe	.label_222
	mov	rbp, rbp
	test	dil, 1
	lea	rsi, [rsi]
	je	.label_195
	lea	rsi, [rsi]
	mov	bl, al
	and	bl, 1
	jne	.label_195
	nop	
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_300
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + r14], 0x27
.label_300:
	lea	rsi, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rsi, rbp
	jae	.label_253
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdi + rsi], 0x27
.label_253:
	add	r14, 2
	mov	rsp, rsp
	xor	edi, edi
.label_195:
	nop	
	mov	rbx, r10
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_202
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + r14], r12b
	jmp	.label_202
	nop	word ptr cs:[rax + rax]
.label_222:
	test	dil, 1
	je	.label_211
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_211
	nop	
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_232
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_232:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_272
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_272:
	lea	rdi, [rdi]
	add	r14, 2
	nop	
	xor	edi, edi
.label_211:
	lea	rsi, [rsi]
	mov	bl, r12b
.label_263:
	cmp	r14, rbp
	jae	.label_198
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + r14], bl
.label_198:
	inc	r14
	lea	rsi, [rsi]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	lea	rsi, [rsi]
	mov	r8b, r13b
	jmp	.label_210
.label_270:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_190
.label_275:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_190
	nop	word ptr [rax + rax]
.label_292:
	nop	
	mov	rcx, r15
.label_269:
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
	je	.label_256
	mov	rsp, rsp
	or	al, dl
	je	.label_250
.label_256:
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
	je	.label_264
	mov	rsp, rsp
	or	al, dl
	jne	.label_264
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rdi, [rdi]
	jne	.label_279
	cmp	qword ptr [rsp + 0x48], 0
	mov	rsp, rsp
	je	.label_264
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
	je	.label_287
.label_264:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x68]
	test	rdx, rdx
	je	.label_297
	nop	
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_297
	mov	rsp, rsp
	mov	al, byte ptr [rdx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_297
	mov	rbp, rbp
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_189:
	cmp	r14, rbp
	jae	.label_312
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_312:
	mov	rbp, rbp
	inc	r14
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	lea	rsi, [rsi]
	test	al, al
	jne	.label_189
.label_297:
	cmp	r14, rbp
	jae	.label_194
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + r14], 0
	jmp	.label_194
.label_205:
	lea	rdi, [rdi]
	mov	r9d, 2
	jmp	.label_191
.label_304:
	mov	r9d, 2
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	jmp	.label_191
.label_243:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_191
.label_250:
	lea	rdi, [rdi]
	mov	r10, rcx
	mov	rsp, rsp
	jmp	.label_191
.label_227:
	nop	
	mov	r9d, 2
.label_191:
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
.label_235:
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	r14, rax
.label_194:
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
.label_279:
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
	jmp	.label_235
.label_238:
	mov	r9d, 2
	jmp	.label_191
.label_295:
	nop	
	mov	r9d, 2
	mov	rsp, rsp
	jmp	.label_191
.label_286:
	mov	r9d, 2
	mov	rbp, rbp
	jmp	.label_191
.label_302:
	mov	r9d, 5
	nop	
	jmp	.label_191
.label_307:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055a0
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
	.align	16
	#Procedure 0x4056e0
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
	je	.label_315
	mov	qword ptr [rax], rbx
.label_315:
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
	#Procedure 0x405830
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_316
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_320:
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
	jl	.label_320
.label_316:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_319
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_318]], OFFSET FLAT:slot0
.label_319:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_317
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_317:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058f0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x405900

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
	js	.label_326
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_325
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_323
.label_325:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_327
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
	jne	.label_322
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_322:
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
.label_323:
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
	ja	.label_321
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
	je	.label_324
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_324:
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
.label_321:
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
.label_326:
	lea	rdi, [rdi]
	call	abort
.label_327:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x405b70
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405b80
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
	.align	16
	#Procedure 0x405bb0
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
	.align	16
	#Procedure 0x405be0

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
	je	.label_328
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
.label_328:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405c70

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
	je	.label_329
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
.label_329:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d10

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
	je	.label_330
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
.label_330:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405da0
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
	je	.label_331
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
.label_331:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405e10
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_332]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_333]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_334]]
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
	.align	16
	#Procedure 0x405eb0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_332]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_333]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_334]]
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
	.align	16
	#Procedure 0x405f50

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_332]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_333]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_334]]
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
	.align	16
	#Procedure 0x405fc0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_332]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_333]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_334]]
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
	.align	16
	#Procedure 0x406030

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
	je	.label_335
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
.label_335:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406110
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_332]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_333]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_334]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_336
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_336
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
.label_336:
	nop	
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4061a0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_332]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_333]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_334]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_337
	test	rdx, rdx
	je	.label_337
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
.label_337:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406230
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_332]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_333]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_334]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_338
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_338
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
.label_338:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4062d0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_332]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_333]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_334]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_339
	test	rsi, rsi
	je	.label_339
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
.label_339:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406370
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406380
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
	.align	16
	#Procedure 0x4063a0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsp, rsp
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4063c0

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
	.align	16
	#Procedure 0x4063f0

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
	jne	.label_341
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_343
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_340
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_340
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_340
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_340
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_340
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_340
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_341
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_341
.label_343:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_340
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_340
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_340
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_340
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_340
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_340
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_342
.label_340:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_341:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_342:
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_341
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_341
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406560

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
	je	.label_349
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_7
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_350
.label_349:
	mov	edx, OFFSET FLAT:.str.1_4
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_350:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_2
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
	mov	esi, OFFSET FLAT:.str.3_1
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
	ja	.label_352
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_344]]
.label_522:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4_1
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
.label_352:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_353
.label_523:
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
.label_524:
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
.label_525:
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
	jmp	.label_348
.label_526:
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
	jmp	.label_346
.label_527:
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
	jmp	.label_345
.label_528:
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
.label_345:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_346:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_348:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_351
.label_530:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_353:
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
	jmp	.label_347
.label_529:
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
.label_347:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_351:
	mov	rbp, rbp
	call	__fprintf_chk
.label_521:
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
	#Procedure 0x406950
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_354:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_354
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406980
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_357:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_355
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_356
	nop	word ptr cs:[rax + rax]
.label_355:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_356:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_358
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_357
.label_358:
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
	#Procedure 0x406a10

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_359
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
.label_359:
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
.label_361:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_360
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_362
	nop	dword ptr [rax + rax]
.label_360:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_362:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_363
	inc	r9
	cmp	r9, 0xa
	jb	.label_361
.label_363:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b50
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
	mov	esi, OFFSET FLAT:.str.19_0
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
	#Procedure 0x406be0
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
	jb	.label_364
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_365
	test	rax, rax
	je	.label_364
.label_365:
	nop	
	pop	rbx
	ret	
.label_364:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406c30

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_366
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_367
.label_366:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_367:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c60
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
	jb	.label_369
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_368
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_368
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_368:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_370
	test	rax, rax
	je	.label_369
.label_370:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_369:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ce0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_371
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_371
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_371:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_372
	test	rax, rax
	nop	
	je	.label_373
.label_372:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_373:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d30
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_378
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_374
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_380
.label_378:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_377
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_377:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_379
.label_380:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_376
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_376
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_376:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_375
	test	rax, rax
	mov	rbp, rbp
	je	.label_374
.label_375:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_374:
	call	xalloc_die
.label_379:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406e10
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_382
	test	rax, rax
	mov	rbp, rbp
	je	.label_381
.label_382:
	pop	rbx
	ret	
.label_381:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406e30

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_386
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_387
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_385
	call	free
	xor	eax, eax
	jmp	.label_383
.label_386:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_384
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_385:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_383
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_384
.label_383:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_384:
	mov	rbp, rbp
	call	xalloc_die
.label_387:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406ec0
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
	je	.label_388
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_389
.label_388:
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
.label_389:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f20
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
	jb	.label_390
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_390
	pop	rcx
	ret	
.label_390:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x406f50

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
	je	.label_392
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_391
.label_392:
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
.label_391:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406fb0
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
	je	.label_393
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_394
.label_393:
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
.label_394:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x407010

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_5
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
	#Procedure 0x407060

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
	je	.label_395
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_8
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
	mov	esi, OFFSET FLAT:.str.1_6
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
	mov	esi, OFFSET FLAT:.str.2_3
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
.label_395:
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
	.align	16
	#Procedure 0x4071b0
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
	je	.label_396
	lea	rdi, [rdi]
	dec	rbp
	dec	r14
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str_8
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
	mov	esi, OFFSET FLAT:.str.1_6
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
	mov	esi, OFFSET FLAT:.str.2_3
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
.label_396:
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
	.align	16
	#Procedure 0x407300

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
	jae	.label_397
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
.label_419:
	mov	rbp, rbp
	movzx	eax, byte ptr [rdx]
	inc	rdx
	mov	rbp, rbp
	test	byte ptr [rcx + rax*2 + 1], 0x20
	lea	rdi, [rdi]
	jne	.label_419
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
	je	.label_399
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
	je	.label_408
	mov	eax, dword ptr [r15]
	lea	rsi, [rsi]
	xor	ebx, ebx
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_416
	cmp	eax, 0x22
	lea	rsi, [rsi]
	jne	.label_399
	mov	ebx, 1
.label_416:
	test	r14, r14
	jne	.label_421
	mov	rbp, rbp
	jmp	.label_412
.label_408:
	mov	rsp, rsp
	test	r14, r14
	je	.label_399
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	lea	rdi, [rdi]
	je	.label_399
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
	je	.label_399
.label_421:
	movsx	r13d, byte ptr [r12]
	nop	
	test	r13d, r13d
	mov	rsp, rsp
	je	.label_412
	mov	rsp, rsp
	mov	qword ptr [rsp], rcx
	nop	
	mov	rdi, r14
	mov	esi, r13d
	mov	rsp, rsp
	call	strchr
	test	rax, rax
	je	.label_409
	mov	rsp, rsp
	mov	r15d, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_400
	movabs	rdx, 0x814400308945
	lea	rsi, [rsi]
	bt	rdx, rax
	lea	rdi, [rdi]
	jae	.label_400
	mov	esi, 0x30
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strchr
	nop	
	mov	r15d, 1
	mov	rbp, rbp
	mov	esi, 0x400
	test	rax, rax
	je	.label_400
	movsx	eax, byte ptr [r12 + 1]
	mov	rsp, rsp
	mov	r15d, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	nop	
	je	.label_414
	nop	
	cmp	eax, 0x44
	je	.label_414
	cmp	eax, 0x69
	jne	.label_400
	mov	rbp, rbp
	movzx	eax, byte ptr [r12 + 2]
	lea	rsi, [rsi]
	mov	r15d, 3
	cmp	eax, 0x42
	je	.label_420
	mov	r15d, 1
.label_420:
	lea	rdi, [rdi]
	mov	esi, 0x400
	mov	rsp, rsp
	jmp	.label_400
.label_414:
	mov	r15d, 2
	nop	
	mov	esi, 0x3e8
.label_400:
	cmp	r13d, 0x59
	jg	.label_403
	lea	eax, [r13 - 0x42]
	mov	rbp, rbp
	cmp	eax, 0xe
	ja	.label_405
	jmp	qword ptr [word ptr [+ (rax * 8) + label_407]]
.label_478:
	nop	
	mov	rax, rbp
	shr	rax, 0x36
	setne	dl
	mov	rsp, rsp
	shl	rbp, 0xa
	jmp	.label_411
.label_403:
	cmp	r13d, 0x73
	mov	rbp, rbp
	jg	.label_417
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	ja	.label_401
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_418]]
.label_489:
	nop	
	mov	rax, rbp
	shr	rax, 0x37
	setne	dl
	shl	rbp, 9
.label_411:
	cmp	rax, 1
	mov	rbp, rbp
	sbb	rax, rax
	not	rax
	lea	rdi, [rdi]
	or	rbp, rax
	movzx	eax, dl
	jmp	.label_406
.label_405:
	lea	rdi, [rdi]
	cmp	r13d, 0x54
	lea	rdi, [rdi]
	je	.label_402
	mov	rbp, rbp
	cmp	r13d, 0x59
	jne	.label_409
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
	jmp	.label_410
.label_417:
	nop	
	cmp	r13d, 0x74
	mov	rbp, rbp
	je	.label_402
	mov	rsp, rsp
	cmp	r13d, 0x77
	jne	.label_409
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
	jmp	.label_406
.label_480:
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
	jmp	.label_404
.label_481:
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
	jmp	.label_398
.label_482:
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
	jmp	.label_404
.label_402:
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
	jmp	.label_404
.label_401:
	cmp	r13d, 0x5a
	lea	rdi, [rdi]
	jne	.label_409
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
.label_410:
	lea	rsi, [rsi]
	movzx	eax, dl
	and	eax, 1
	jmp	.label_398
.label_409:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rax], rbp
	or	ebx, 2
	mov	rsp, rsp
	jmp	.label_413
.label_479:
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
.label_404:
	lea	rdi, [rdi]
	and	dl, 1
	lea	rsi, [rsi]
	movzx	eax, dl
.label_398:
	mov	rbp, rsi
.label_406:
	or	eax, ebx
	nop	
	lea	rcx, [r12 + r15]
	mov	rdx, qword ptr [rsp]
	mov	rbp, rbp
	mov	qword ptr [rdx], rcx
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + r15], 0
	mov	rbp, rbp
	je	.label_415
	or	eax, 2
.label_415:
	mov	ebx, eax
.label_412:
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	qword ptr [rax], rbp
.label_413:
	mov	r13d, ebx
.label_399:
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
.label_483:
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
	jmp	.label_398
.label_397:
	mov	edi, OFFSET FLAT:.str_9
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_7
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoul
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407be0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_422
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_423
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
	je	.label_423
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
.label_422:
	mov	ecx, 1
.label_423:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c50

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
	js	.label_424
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_426
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
	je	.label_424
.label_426:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_424
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_425
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_425:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_424:
	lea	rsi, [rsi]
	mov	rdi, rbx
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	nop	
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x407d00

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_427
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_427
	test	byte ptr [rbx + 1], 1
	je	.label_427
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_427:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407d40

	.globl rpl_freopen
	.type rpl_freopen, @function
rpl_freopen:
	push	rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r12
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	mov	rbp, rbp
	call	freopen
	lea	rsi, [rsi]
	mov	rbx, rax
	test	r15, r15
	mov	rsp, rsp
	je	.label_428
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_428
	mov	rdi, rbx
	mov	rsp, rsp
	call	fileno
	mov	ebp, eax
	mov	rbp, rbp
	mov	edi, ebp
	lea	rdi, [rdi]
	mov	esi, ebp
	call	dup2
	test	eax, eax
	jns	.label_428
	call	__errno_location
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 9
	jne	.label_428
	nop	
	mov	edi, OFFSET FLAT:.str_4
	mov	rbp, rbp
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	mov	rsp, rsp
	je	.label_429
	mov	edi, r12d
	nop	
	mov	esi, ebp
	call	dup2
	nop	
	mov	ebp, eax
	lea	rdi, [rdi]
	mov	edi, r12d
	call	close
	nop	
	test	ebp, ebp
	js	.label_428
.label_429:
	mov	rsp, rsp
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rsp, rsp
	mov	rdx, rbx
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	jmp	freopen
.label_428:
	mov	rbp, rbp
	mov	rax, rbx
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r14
	nop	
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407e20

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
	jne	.label_430
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_430
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_431
.label_430:
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
.label_431:
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
	je	.label_432
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_432:
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
	#Procedure 0x407ed0

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
	je	.label_433
	nop	
	cmp	r15, -2
	jb	.label_433
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_433
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_433:
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
	#Procedure 0x407f60

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
	jne	.label_434
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_435
	test	cl, cl
	mov	rsp, rsp
	jne	.label_435
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_435
.label_434:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_435
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_435:
	mov	eax, ebx
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407ff0

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
	mov	eax, OFFSET FLAT:.str.1_8
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_436
	nop	
	mov	rax, rcx
.label_436:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408030

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
	jne	.label_439
	mov	rdi, r12
	nop	
	mov	rsi, r14
	mov	rdx, rbp
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_438
.label_439:
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
.label_437:
	mov	dword ptr [rbx], 0
	mov	rdi, r14
	mov	rsi, rbp
	call	strcoll
	nop	
	test	eax, eax
	jne	.label_440
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
	je	.label_441
	lea	rsi, [rsi]
	add	rbp, rax
	lea	rdi, [rdi]
	add	r14, r12
	lea	rdi, [rdi]
	sub	r15, rax
	mov	eax, 1
	jne	.label_437
	lea	rdi, [rdi]
	jmp	.label_440
.label_441:
	nop	
	xor	ecx, ecx
	cmp	r15, rax
	mov	rbp, rbp
	mov	eax, 0xffffffff
	cmove	eax, ecx
.label_440:
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
	jmp	.label_442
.label_438:
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_442:
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
	.align	16
	#Procedure 0x4081b0

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
	jne	.label_446
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r15
	mov	rbp, rbp
	call	memcmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_445
.label_446:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	mov	r13, rax
	nop	word ptr [rax + rax]
.label_447:
	mov	rsp, rsp
	mov	dword ptr [r13], 0
	mov	rdi, rbx
	mov	rsi, r12
	nop	
	call	strcoll
	test	eax, eax
	jne	.label_443
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
	je	.label_444
	nop	
	add	r12, rax
	nop	
	add	rbx, rbp
	lea	rsi, [rsi]
	sub	r14, rax
	nop	
	mov	eax, 1
	mov	rbp, rbp
	jne	.label_447
	nop	
	jmp	.label_443
.label_444:
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	r14, rax
	mov	eax, 0xffffffff
	lea	rdi, [rdi]
	cmove	eax, ecx
	mov	rsp, rsp
	jmp	.label_443
.label_445:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_443:
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
	.align	16
	#Procedure 0x4082c0

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