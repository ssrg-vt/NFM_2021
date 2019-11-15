	.section	.text
	.align	16
	#Procedure 0x401af0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	nop	
	push	rbx
	nop	
	push	rax
	mov	rsp, rsp
	mov	ebp, edi
	test	ebp, ebp
	lea	rdi, [rdi]
	jne	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	nop	
	mov	edi, 1
	xor	eax, eax
	nop	
	mov	rsi, rcx
	lea	rsi, [rsi]
	mov	rcx, rdx
	mov	rbp, rbp
	mov	r8, rdx
	mov	rbp, rbp
	call	__printf_chk
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.2
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
	nop	
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.3
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.6
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	lea	rsi, [rsi]
	xor	eax, eax
	call	__printf_chk
	lea	rsi, [rsi]
	mov	edi, 5
	xor	esi, esi
	mov	rbp, rbp
	call	setlocale
	test	rax, rax
	je	.label_7
	nop	
	mov	esi, OFFSET FLAT:.str.41
	lea	rsi, [rsi]
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	mov	rsp, rsp
	test	eax, eax
	je	.label_7
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.42
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
.label_7:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.7
	xor	eax, eax
	mov	rbp, rbp
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.7
	mov	ecx, OFFSET FLAT:.str.45
	mov	rsp, rsp
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	lea	rdi, [rdi]
	call	exit
.label_8:
	nop	
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, rbx
	call	__fprintf_chk
	mov	rbp, rbp
	mov	edi, ebp
	mov	rsp, rsp
	call	exit
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401dc0

	.globl main
	.type main, @function
main:
	nop	
	push	rbp
	push	r15
	nop	
	push	r14
	mov	rbp, rbp
	push	r13
	mov	rsp, rsp
	push	r12
	nop	
	push	rbx
	nop	
	sub	rsp, 0xf8
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xc0], rsi
	mov	rbp, rbp
	mov	r13d, edi
	mov	rdi, qword ptr [rsi]
	nop	
	call	set_program_name
	mov	edi, 6
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_3
	nop	
	call	setlocale
	mov	edi, OFFSET FLAT:.str.9
	mov	esi, OFFSET FLAT:.str.10
	call	bindtextdomain
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.9
	lea	rdi, [rdi]
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	mov	rbp, rbp
	call	atexit
	lea	rsi, [rsi]
	mov	r12, -1
	lea	rsi, [rsi]
	mov	al, 0xa
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb0], rax
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rbp, rbp
	mov	eax, 0
	nop	
	mov	qword ptr [rsp + 0xa0], rax
	mov	rsp, rsp
	mov	ebp, 0
	xor	r15d, r15d
	mov	qword ptr [rsp + 0xe0], -1
	xor	r14d, r14d
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xa8], rax
.label_712:
	mov	qword ptr [rsp + 0x98], rcx
	jmp	.label_32
	nop	word ptr cs:[rax + rax]
.label_48:
	mov	rsp, rsp
	xor	eax, eax
	mov	qword ptr [rsp + 0xb0], rax
.label_32:
	mov	rbx, qword ptr [rsp + 0xa0]
.label_10:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa0], rbx
	mov	rbp, rbp
	mov	rbx, rbp
.label_37:
	mov	rsp, rsp
	mov	rbp, rbx
	jmp	.label_15
.label_34:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 8]
	cmp	r12, rax
	lea	rdi, [rdi]
	cmovae	r12, rax
.label_15:
	mov	edx, OFFSET FLAT:.str.11
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:long_opts
	xor	r8d, r8d
	nop	
	mov	edi, r13d
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xc0]
	call	getopt_long
	mov	rbp, rbp
	mov	cl, 1
	nop	
	cmp	eax, 0x68
	mov	rsp, rsp
	jle	.label_53
	lea	rsi, [rsi]
	lea	edx, [rax - 0x69]
	mov	rbp, rbp
	cmp	edx, 9
	mov	rsp, rsp
	ja	.label_57
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_61]]
.label_709:
	mov	rsp, rsp
	mov	r15, r14
	mov	r14, rbp
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	mov	esi, 0x2d
	mov	rdi, rbp
	call	strchr
	mov	rbx, rax
	test	r15b, r15b
	nop	
	jne	.label_67
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_68
	mov	byte ptr [rbx], 0
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str_3
	mov	rsp, rsp
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoumax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe0], rax
	mov	byte ptr [rbx], 0x2d
	lea	rsi, [rsi]
	lea	rbp, [rbx + 1]
.label_68:
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.13
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str_3
	mov	rbp, rbp
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoumax
	lea	rdi, [rdi]
	mov	r15, rax
	nop	
	mov	rcx, r15
	sub	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	setae	al
	mov	rsp, rsp
	cmp	rcx, -1
	sete	cl
	mov	rsp, rsp
	test	rbx, rbx
	mov	rbp, r14
	je	.label_19
	lea	rsi, [rsi]
	xor	al, cl
	mov	r14b, 1
	jne	.label_15
	mov	rsp, rsp
	jmp	.label_19
	nop	dword ptr [rax]
.label_53:
	cmp	eax, 0x64
	nop	
	jle	.label_20
	mov	rsp, rsp
	cmp	eax, 0x65
	mov	al, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], rax
	nop	
	je	.label_15
	mov	rbp, rbp
	jmp	.label_26
.label_710:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	mov	edx, 0xa
	xor	r8d, r8d
	nop	
	lea	rcx, [rsp + 8]
	lea	rdi, [rdi]
	call	xstrtoul
	lea	rdi, [rdi]
	cmp	eax, 1
	lea	rsi, [rsi]
	je	.label_15
	test	eax, eax
	mov	rsp, rsp
	je	.label_34
	lea	rsi, [rsi]
	jmp	.label_36
.label_711:
	test	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	je	.label_37
	mov	rsp, rsp
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, rbx
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, rbp
	je	.label_37
	jmp	.label_63
	nop	word ptr cs:[rax + rax]
.label_57:
	cmp	eax, 0x7a
	je	.label_48
	cmp	eax, 0x80
	jne	.label_26
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0xa0]
	nop	
	test	rdi, rdi
	mov	rsp, rsp
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	je	.label_10
	lea	rdi, [rdi]
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	je	.label_10
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17_0
	mov	rbp, rbp
	jmp	.label_45
.label_20:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xc8], rbp
	cmp	eax, -1
	nop	
	jne	.label_64
	movsxd	rbp,  dword ptr [dword ptr [rip + optind]]
	mov	rax, qword ptr [rsp + 0xa8]
	nop	
	test	al, al
	mov	rsp, rsp
	sete	cl
	test	r14b, r14b
	nop	
	je	.label_18
	test	cl, cl
	mov	rsp, rsp
	je	.label_71
.label_18:
	nop	
	mov	eax, r13d
	sub	eax, ebp
	mov	rdx, qword ptr [rsp + 0xc0]
	mov	rbp, rbp
	lea	rsi, [rdx + rbp*8]
	test	r14b, r14b
	je	.label_74
	mov	qword ptr [rsp + 0xe8], r14
	test	eax, eax
	jle	.label_76
	jmp	.label_79
.label_74:
	mov	qword ptr [rsp + 0xe8], r14
	lea	rsi, [rsi]
	cmp	eax, 1
	mov	rbp, rbp
	setg	dl
	nop	
	and	dl, cl
	movzx	ecx, dl
	cmp	ecx, 1
	mov	rbp, rbp
	je	.label_79
.label_76:
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xa8]
	test	cl, cl
	je	.label_56
	mov	qword ptr [rsp + 0xd8], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xd0], r15
	nop	
	movsxd	r14, eax
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, rbp
	jle	.label_87
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xb8], r12
	lea	rsi, [rsi]
	mov	r15d, r13d
	sub	r15d, ebp
	mov	rax, qword ptr [rsp + 0xc0]
	nop	
	lea	r12, [rax + rbp*8]
	mov	rbx, r14
	nop	word ptr cs:[rax + rax]
.label_11:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r12]
	nop	
	call	strlen
	mov	rsp, rsp
	add	rbx, rax
	lea	rdi, [rdi]
	add	r12, 8
	dec	r15d
	nop	
	jne	.label_11
	mov	rdi, rbx
	call	xmalloc
	mov	rbx, rax
	sub	r13d, ebp
	mov	rax, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	lea	rbp, [rax + rbp*8]
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0xb8]
	mov	r15, qword ptr [rsp + 0xb0]
.label_81:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp]
	nop	
	mov	rdi, rbx
	call	stpcpy
	mov	qword ptr [rbp], rbx
	mov	byte ptr [rax], r15b
	mov	rsp, rsp
	inc	rax
	lea	rsi, [rsi]
	add	rbp, 8
	dec	r13d
	nop	
	mov	rbx, rax
	lea	rdi, [rdi]
	jne	.label_81
	jmp	.label_38
.label_56:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe8]
	test	cl, cl
	nop	
	je	.label_40
	nop	
	lea	r14, [r15 + 1]
	mov	qword ptr [rsp + 0xd0], r15
	mov	r13, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	sub	r14, r13
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	jmp	.label_47
.label_87:
	mov	rdi, r14
	call	xmalloc
	mov	r15, qword ptr [rsp + 0xb0]
.label_38:
	mov	rcx, qword ptr [rsp + 0xd8]
	mov	qword ptr [rcx + r14*8], rax
	mov	r13, qword ptr [rsp + 0xe0]
	jmp	.label_55
.label_40:
	cmp	eax, 1
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0xe0]
	jne	.label_59
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsi]
	movzx	ecx, byte ptr [rdi]
	lea	rsi, [rsi]
	mov	eax, 0x2d
	sub	eax, ecx
	jne	.label_60
	nop	
	movzx	eax, byte ptr [rdi + 1]
	lea	rsi, [rsi]
	neg	eax
.label_60:
	nop	
	test	r12, r12
	lea	rdi, [rdi]
	je	.label_59
	test	eax, eax
	mov	rbp, rbp
	je	.label_59
	nop	
	mov	rdx,  qword ptr [word ptr [rip + stdin]]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_2
	nop	
	call	freopen_safer
	mov	rbp, rbp
	mov	rcx, rbx
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_43
.label_59:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	mov	esi, 2
	lea	rsi, [rsi]
	call	fadvise
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	test	al, al
	jne	.label_77
	mov	qword ptr [rsp + 0xd0], r15
	cmp	r12, -1
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0xb0]
	nop	
	je	.label_24
	mov	rsp, rsp
	mov	r14, -1
	mov	bl, 1
	nop	
	test	r12, r12
	je	.label_84
	mov	rsp, rsp
	lea	rdx, [rsp + 8]
	mov	edi, 1
	lea	rdi, [rdi]
	xor	esi, esi
	call	__fxstat
	test	eax, eax
	mov	rsp, rsp
	jne	.label_9
	lea	rdi, [rdi]
	mov	eax, 0x2000
	lea	rdi, [rdi]
	or	eax, dword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	and	eax, 0xf000
	mov	rsp, rsp
	cmp	eax, 0xa000
	mov	rsp, rsp
	jne	.label_9
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x38]
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	nop	
	mov	edx, 1
	nop	
	call	lseek
	lea	rsi, [rsi]
	test	rax, rax
	js	.label_9
	mov	rbp, rbp
	sub	rbx, rax
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xb8], rax
	mov	rbp, rbp
	cmp	rbx, 0x800000
	mov	eax, 0
	mov	qword ptr [rsp + 0x98], rax
	mov	rsp, rsp
	jle	.label_24
	lea	rdi, [rdi]
	jmp	.label_30
.label_9:
	mov	rsp, rsp
	xor	eax, eax
	mov	qword ptr [rsp + 0xb8], rax
.label_30:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xd8], rax
	mov	rsp, rsp
	mov	rsi, -1
	nop	
	mov	rbp, qword ptr [rsp + 0xa0]
	lea	rdi, [rdi]
	mov	bl, 1
	jmp	.label_33
.label_77:
	mov	qword ptr [rsp + 0xd0], r15
.label_24:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	mov	rbp, rbp
	lea	rsi, [rsp + 8]
	call	fread_file
	lea	rsi, [rsi]
	mov	r15, rax
	test	r15, r15
	nop	
	je	.label_44
	mov	r13, r12
	mov	rsp, rsp
	mov	rbp, r15
	nop	
	mov	rax, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	ebx, 1
	lea	rsi, [rsi]
	xor	r14d, r14d
	lea	rsi, [rsi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_49
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax + rbp - 1]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	movzx	r12d, dl
	cmp	ecx, r12d
	lea	rdi, [rdi]
	je	.label_58
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rbp + rax], dl
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 8]
.label_58:
	mov	rbp, rbp
	add	r15, rax
	mov	rsp, rsp
	mov	ebx, 1
	lea	rsi, [rsi]
	xor	r14d, r14d
	test	rax, rax
	jle	.label_49
	xor	r14d, r14d
	mov	rax, rbp
	nop	dword ptr [rax]
.label_75:
	mov	rbp, rbp
	mov	rbx, r14
	mov	rdx, r15
	sub	rdx, rax
	mov	rdi, rax
	mov	esi, r12d
	lea	rsi, [rsi]
	call	memchr
	inc	rax
	mov	rbp, rbp
	lea	r14, [rbx + 1]
	cmp	rax, r15
	jb	.label_75
	nop	
	add	rbx, 2
	lea	rdi, [rdi]
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_78
.label_49:
	lea	rsi, [rsi]
	shl	rbx, 3
	mov	rdi, rbx
	call	xmalloc
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rbp
	mov	rbp, rbp
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_82
	mov	rax, qword ptr [rsp + 0xb0]
	movzx	r12d, al
	lea	rsi, [rsi]
	mov	ebx, 1
	nop	dword ptr [rax + rax]
.label_12:
	mov	rbp, rbp
	mov	rdx, r15
	mov	rsp, rsp
	sub	rdx, rbp
	mov	rdi, rbp
	mov	rbp, rcx
	mov	rbp, rbp
	mov	esi, r12d
	lea	rsi, [rsi]
	call	memchr
	mov	rsp, rsp
	mov	rcx, rbp
	mov	rbp, rax
	lea	rdi, [rdi]
	inc	rbp
	mov	rbp, rbp
	mov	qword ptr [rcx + rbx*8], rbp
	inc	rbx
	mov	rsp, rsp
	cmp	rbx, r14
	nop	
	jbe	.label_12
.label_82:
	mov	r12, r13
	mov	r13, qword ptr [rsp + 0xe0]
.label_47:
	mov	r15, qword ptr [rsp + 0xb0]
.label_55:
	mov	qword ptr [rsp + 0xd8], rcx
	mov	rbp, rbp
	cmp	r12, r14
	mov	rax, r14
	cmovb	rax, r12
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x98]
	test	cl, cl
	mov	rbp, rbp
	cmove	r12, rax
	je	.label_89
	mov	rsp, rsp
	xor	ebx, ebx
	lea	rsi, [rsi]
	mov	rsi, -1
	mov	al, 1
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb8], rax
	nop	
	jmp	.label_25
.label_89:
	mov	rdi, r12
	mov	rsi, r14
	mov	rbp, rbp
	call	randperm_bound
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb8], rax
	xor	ebx, ebx
.label_25:
	mov	rbp, qword ptr [rsp + 0xa0]
.label_33:
	mov	qword ptr [rsp + 0xb0], r15
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	randint_all_new
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xc0], rax
	test	rax, rax
	je	.label_72
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x98], rax
	mov	rbp, rbp
	test	bl, bl
	je	.label_51
	mov	dword ptr [rsp + 0xf4], ebx
	mov	rax,  qword ptr [word ptr [rip + stdin]]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12, 0x400
	mov	r13d, 0x400
	cmovb	r13, r12
	nop	
	mov	rbx, r12
	lea	rsi, [rsi]
	mov	esi, 0x18
	mov	rbp, rbp
	mov	rdi, r13
	call	xcalloc
	nop	
	mov	r12, rax
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	movsx	ebp, al
	nop	
	xor	r14d, r14d
	jmp	.label_65
.label_51:
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rsp, rsp
	jmp	.label_69
	nop	word ptr [rax + rax]
.label_13:
	mov	rbp, rbp
	lea	rax, [r13*8]
	lea	rsi, [rax + rax*2]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x98]
	nop	
	call	xrealloc
	mov	r12, rax
	lea	rsi, [rsi]
	lea	rax, [r14 + r14*2]
	lea	rdi, [r12 + rax*8]
	xor	esi, esi
	mov	edx, 0x6000
	lea	rdi, [rdi]
	call	memset
.label_65:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], r12
	mov	rsp, rsp
	lea	rax, [r14 + r14*2]
	lea	r12, [r12 + rax*8]
	nop	word ptr cs:[rax + rax]
.label_31:
	mov	rbp, rbp
	cmp	r14, rbx
	mov	rbp, rbp
	jae	.label_86
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0xa0]
	lea	rdi, [rdi]
	mov	edx, ebp
	call	readlinebuffer_delim
	mov	r15, rax
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_27
	inc	r14
	add	r12, 0x18
	lea	rdi, [rdi]
	cmp	r14, r13
	lea	rdi, [rdi]
	jb	.label_31
	add	r13, 0x400
	movabs	rax, 0x555555555555556
	mov	rsp, rsp
	cmp	r13, rax
	mov	rbp, rbp
	jb	.label_13
.label_78:
	nop	
	call	xalloc_die
.label_86:
	test	r15, r15
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0xe0]
	je	.label_22
	lea	r15, [rsp + 8]
	mov	rdi, r15
	lea	rsi, [rsi]
	call	initbuffer
	mov	r12, qword ptr [rsp + 0x98]
	nop	word ptr cs:[rax + rax]
.label_42:
	mov	rdi, qword ptr [rsp + 0xc0]
	mov	rbp, rbp
	mov	rsi, r14
	nop	
	call	randint_genmax
	cmp	rax, rbx
	lea	rax, [rax + rax*2]
	lea	rdi, [rdi]
	lea	rdi, [r12 + rax*8]
	mov	rsp, rsp
	cmovae	rdi, r15
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xa0]
	lea	rsi, [rsi]
	mov	edx, ebp
	lea	rsi, [rsi]
	call	readlinebuffer_delim
	mov	rbp, rbp
	test	rax, rax
	mov	rbp, rbp
	je	.label_39
	lea	rsi, [rsi]
	inc	r14
	cmp	r14, 1
	jne	.label_42
.label_39:
	nop	
	test	r14, r14
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rdi, [rdi]
	je	.label_35
	lea	rdi, [rsp + 8]
	call	freebuffer
	mov	rbp, rbp
	jmp	.label_52
.label_27:
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0xc8]
	jmp	.label_52
.label_22:
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0xc8]
.label_52:
	mov	rax, qword ptr [rsp + 0xa0]
	test	byte ptr [rax], 0x20
	mov	rsp, rsp
	jne	.label_44
	cmp	r14, rbx
	mov	rbp, rbp
	cmova	r14, rbx
	mov	r12, r14
	mov	rbp, rbp
	mov	ebx, dword ptr [rsp + 0xf4]
.label_69:
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rcx, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	or	cl, al
	nop	
	jne	.label_83
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	nop	
	call	rpl_fclose
	test	eax, eax
	jne	.label_44
.label_83:
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb8]
	test	al, al
	lea	rdi, [rdi]
	jne	.label_70
	nop	
	mov	rdi, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	rdx, r14
	call	randperm_new
	mov	rsp, rsp
	mov	r15, rax
.label_70:
	test	rbp, rbp
	je	.label_80
	mov	rdx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, OFFSET FLAT:.str.26
	mov	rsp, rsp
	mov	rdi, rbp
	call	freopen_safer
	mov	rsp, rsp
	test	rax, rax
	je	.label_72
.label_80:
	mov	rax, qword ptr [rsp + 0xb8]
	nop	
	test	al, al
	je	.label_85
	test	r12, r12
	mov	r15, qword ptr [rsp + 0xd0]
	mov	rsp, rsp
	je	.label_23
	mov	rbp, rbp
	test	r14, r14
	je	.label_88
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	test	al, al
	mov	rax, qword ptr [rsp + 0xb0]
	je	.label_21
	nop	
	sub	r15, r13
	movzx	ebx, al
	mov	rbp, rbp
	xor	ebp, ebp
	nop	
.label_28:
	mov	rdi, qword ptr [rsp + 0xc0]
	mov	rsi, r15
	call	randint_genmax
	nop	
	lea	rdx, [rax + r13]
	mov	rbp, rbp
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.56
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, ebx
	mov	rsp, rsp
	call	__printf_chk
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, rbp
	js	.label_14
	inc	rbp
	cmp	rbp, r12
	jb	.label_28
	lea	rsi, [rsi]
	jmp	.label_23
.label_85:
	nop	
	test	bl, bl
	je	.label_29
	xor	ebp, ebp
	lea	rdi, [rdi]
	test	r14, r14
	mov	r12, qword ptr [rsp + 0x98]
	je	.label_23
	nop	word ptr [rax + rax]
.label_73:
	nop	
	mov	rax, qword ptr [r15 + rbp*8]
	lea	rdi, [rdi]
	lea	rbx, [rax + rax*2]
	mov	rsp, rsp
	mov	rdi, qword ptr [r12 + rbx*8 + 0x10]
	mov	rdx, qword ptr [r12 + rbx*8 + 8]
	nop	
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	lea	rdi, [rdi]
	call	fwrite_unlocked
	mov	rbp, rbp
	cmp	rax, qword ptr [r12 + rbx*8 + 8]
	lea	rdi, [rdi]
	jne	.label_14
	lea	rdi, [rdi]
	inc	rbp
	cmp	rbp, r14
	mov	rsp, rsp
	jb	.label_73
	jmp	.label_23
.label_29:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe8]
	test	al, al
	lea	rsi, [rsi]
	je	.label_50
	test	r12, r12
	je	.label_23
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	movzx	ebx, al
	nop	
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_16:
	mov	rdx, qword ptr [r15 + rbp*8]
	add	rdx, r13
	nop	
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.56
	xor	eax, eax
	mov	ecx, ebx
	call	__printf_chk
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, rbp
	js	.label_14
	lea	rsi, [rsi]
	inc	rbp
	cmp	rbp, r12
	lea	rdi, [rdi]
	jb	.label_16
	mov	rsp, rsp
	jmp	.label_23
.label_21:
	mov	rsp, rsp
	dec	r14
	nop	
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_54:
	mov	rdi, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	rsi, r14
	call	randint_genmax
	mov	rcx, qword ptr [rsp + 0xd8]
	mov	rbx, qword ptr [rcx + rax*8 + 8]
	mov	rdi, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	sub	rbx, rdi
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	esi, 1
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	fwrite_unlocked
	lea	rsi, [rsi]
	cmp	rax, rbx
	lea	rsi, [rsi]
	jne	.label_14
	lea	rdi, [rdi]
	inc	rbp
	cmp	rbp, r12
	jb	.label_54
	jmp	.label_23
.label_50:
	xor	ebp, ebp
	test	r12, r12
	je	.label_23
	nop	word ptr [rax + rax]
.label_17:
	mov	rax, qword ptr [r15 + rbp*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xd8]
	mov	rbx, qword ptr [rcx + rax*8 + 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rcx + rax*8]
	sub	rbx, rdi
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
	nop	
	cmp	rax, rbx
	nop	
	jne	.label_14
	inc	rbp
	lea	rsi, [rsi]
	cmp	rbp, r12
	jb	.label_17
.label_23:
	lea	rsi, [rsi]
	xor	eax, eax
	add	rsp, 0xf8
	mov	rbp, rbp
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
.label_84:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xd8], rax
	mov	rbp, rbp
	xor	r12d, r12d
	lea	rdi, [rdi]
	xor	eax, eax
	mov	qword ptr [rsp + 0xb8], rax
	mov	rbp, rbp
	mov	rsi, -1
	jmp	.label_25
.label_14:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str_0
.label_46:
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	edi, 1
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, ebx
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	rbp, rbp
	call	error
.label_64:
	mov	rsp, rsp
	cmp	eax, 0xffffff7d
	je	.label_41
	lea	rdi, [rdi]
	cmp	eax, 0xffffff7e
	mov	rbp, rbp
	jne	.label_26
	xor	edi, edi
	call	usage
.label_26:
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_41:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	nop	
	mov	esi, OFFSET FLAT:.str.7
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.19
	xor	r9d, r9d
	lea	rsi, [rsi]
	xor	eax, eax
	call	version_etc
	lea	rsi, [rsi]
	xor	edi, edi
	call	exit
.label_72:
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	mov	ebx, dword ptr [rax]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
.label_66:
	call	quotearg_n_style_colon
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_1
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebx
	call	error
.label_67:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	jmp	.label_45
.label_19:
	call	__errno_location
	lea	rsi, [rsi]
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.13
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	quote
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_4
	nop	
	xor	eax, eax
	mov	esi, r14d
	mov	rcx, rbp
	lea	rdi, [rdi]
	mov	r8, rbx
	call	error
.label_36:
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.15
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	quote
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	lea	rsi, [rsi]
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rbx
	nop	
	call	error
.label_71:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rsp, rsp
	call	error
	mov	edi, 1
	lea	rdi, [rdi]
	call	usage
.label_79:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	rbp, rsi
	mov	esi, OFFSET FLAT:.str.21
	nop	
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	nop	
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 0xe8]
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rsi, [rsi]
	xor	rax, 1
	mov	rdi, qword ptr [rbp + rax*8]
	mov	rsp, rsp
	call	quote
	lea	rdi, [rdi]
	mov	rcx, rax
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_44:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25
	jmp	.label_46
.label_63:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	jmp	.label_45
.label_88:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.27
.label_45:
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
.label_62:
	xor	eax, eax
	nop	
	mov	rdx, rcx
	call	error
.label_35:
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.55
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, 0x4b
	jmp	.label_62
.label_43:
	mov	rbp, rcx
	call	__errno_location
	mov	ebx, dword ptr [rax]
	nop	
	mov	rdx, qword ptr [rbp]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	jmp	.label_66
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f70
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
	#Procedure 0x402f80
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f90

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
	je	.label_91
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_90
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_90
.label_91:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_93
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_90:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_0
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_92
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
.label_93:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_92:
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_4
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
	#Procedure 0x403090
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030a0

	.globl fadvise
	.type fadvise, @function
fadvise:
	lea	rdi, [rdi]
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_94
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
.label_94:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4030d0

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
	je	.label_107
	mov	rsp, rsp
	cmp	eax, 1
	nop	
	je	.label_97
	mov	rbp, rbp
	cmp	eax, 2
	je	.label_99
	lea	rsi, [rsi]
	mov	edi, 2
	mov	rsp, rsp
	mov	esi, 2
	mov	rsp, rsp
	call	dup2
	cmp	eax, 2
	setne	r12b
.label_99:
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
	jmp	.label_100
.label_107:
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_103
.label_97:
	nop	
	xor	r15d, r15d
.label_100:
	nop	
	xor	r13d, r13d
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_102
	nop	
	mov	edi, OFFSET FLAT:.str_5
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	nop	
	call	open
	mov	r13b, 1
	test	eax, eax
	je	.label_102
	lea	rsi, [rsi]
	mov	r13b, 1
	lea	rdi, [rdi]
	jmp	.label_98
.label_102:
	nop	
	test	r12b, r12b
	je	.label_106
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_5
	nop	
	xor	esi, esi
	nop	
	xor	eax, eax
	call	open
	cmp	eax, 1
	jne	.label_98
.label_106:
	lea	rdi, [rdi]
	test	r15b, r15b
	lea	rdi, [rdi]
	je	.label_103
	mov	edi, OFFSET FLAT:.str_5
	xor	esi, esi
	xor	eax, eax
	call	open
	nop	
	cmp	eax, 2
	jne	.label_98
.label_103:
	mov	rdi, rbp
	nop	
	mov	rsi, r14
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	rpl_freopen
	mov	r14, rax
	jmp	.label_95
.label_98:
	xor	r14d, r14d
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	js	.label_95
	mov	edi, eax
	call	close
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 9
	xor	r14d, r14d
.label_95:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	lea	rsi, [rsi]
	test	r15b, r15b
	nop	
	je	.label_105
	nop	
	mov	edi, 2
	call	close
.label_105:
	mov	rbp, rbp
	test	r12b, r12b
	je	.label_96
	mov	edi, 1
	nop	
	call	close
.label_96:
	test	r13b, r13b
	je	.label_101
	nop	
	xor	edi, edi
	mov	rsp, rsp
	call	close
.label_101:
	nop	
	test	r14, r14
	lea	rdi, [rdi]
	jne	.label_104
	lea	rdi, [rdi]
	mov	dword ptr [rbx], ebp
.label_104:
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
	#Procedure 0x4032a0

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
	#Procedure 0x4032c0
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
	jne	.label_108
	mov	rsp, rsp
	mov	r15, qword ptr [r14 + 0x10]
	mov	r12, qword ptr [r14]
	add	r12, r15
	lea	rdi, [rdi]
	mov	rbx, r15
	nop	word ptr [rax + rax]
.label_110:
	mov	rax, qword ptr [r13 + 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [r13 + 0x10]
	nop	
	jae	.label_109
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_111:
	mov	rsp, rsp
	cmp	rbx, r12
	jne	.label_113
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
.label_113:
	mov	byte ptr [rbx], bpl
	mov	rsp, rsp
	inc	rbx
	mov	rbp, rbp
	cmp	ebp, 0xa
	jne	.label_110
	jmp	.label_112
.label_109:
	mov	rbp, rbp
	mov	rdi, r13
	lea	rdi, [rdi]
	call	__uflow
	mov	ebp, eax
	mov	rbp, rbp
	cmp	ebp, -1
	jne	.label_111
	cmp	rbx, r15
	mov	eax, 0
	lea	rsi, [rsi]
	je	.label_108
	nop	
	test	byte ptr [r13], 0x20
	jne	.label_108
	movzx	eax, byte ptr [rbx - 1]
	lea	rdi, [rdi]
	mov	ebp, 0xa
	cmp	eax, 0xa
	mov	rsp, rsp
	jne	.label_111
.label_112:
	lea	rdi, [rdi]
	sub	rbx, r15
	nop	
	mov	qword ptr [r14 + 8], rbx
	mov	rax, r14
.label_108:
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
	#Procedure 0x4033d0

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
	jne	.label_117
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
.label_116:
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rbp + 0x10]
	mov	rsp, rsp
	jae	.label_114
	lea	rcx, [rax + 1]
	mov	qword ptr [rbp + 8], rcx
	lea	rsi, [rsi]
	movzx	ebx, byte ptr [rax]
.label_115:
	cmp	r13, r14
	nop	
	jne	.label_119
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
.label_119:
	nop	
	mov	byte ptr [r13], bl
	nop	
	inc	r13
	nop	
	cmp	ebx, dword ptr [rsp]
	jne	.label_116
	lea	rdi, [rdi]
	jmp	.label_118
.label_114:
	mov	rbp, rbp
	mov	rdi, rbp
	call	__uflow
	mov	rsp, rsp
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_115
	mov	rsp, rsp
	cmp	r13, r12
	mov	rbp, rbp
	mov	ecx, dword ptr [rsp + 4]
	mov	eax, 0
	lea	rdi, [rdi]
	je	.label_117
	test	byte ptr [rbp], 0x20
	jne	.label_117
	mov	eax, ecx
	nop	
	movzx	eax, al
	movzx	ecx, byte ptr [r13 - 1]
	cmp	ecx, eax
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rsp]
	lea	rdi, [rdi]
	jne	.label_115
.label_118:
	sub	r13, r12
	mov	qword ptr [r15 + 8], r13
	mov	rax, r15
.label_117:
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
	#Procedure 0x4034f0

	.globl freebuffer
	.type freebuffer, @function
freebuffer:
	nop	
	mov	rdi, qword ptr [rdi + 0x10]
	jmp	free
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403500

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
	je	.label_120
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
	jl	.label_122
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_122
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
	jne	.label_121
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_121:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_122:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_120:
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
	#Procedure 0x4035f0
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
	#Procedure 0x403640
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
	#Procedure 0x403660
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
	#Procedure 0x403680
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
	#Procedure 0x4036f0
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
	#Procedure 0x403710
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
	je	.label_123
	test	rdx, rdx
	nop	
	je	.label_123
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_123:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403750
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
	#Procedure 0x403800

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
.label_168:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r12d
	lea	rsi, [rsi]
	cmp	r12d, 0xa
	lea	rdi, [rdi]
	ja	.label_188
	mov	r9d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	r10, r15
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_243]]
.label_786:
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
.label_787:
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
	jne	.label_217
	mov	al, byte ptr [rdx]
	test	al, al
	mov	r14d, 0
	je	.label_217
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_239:
	mov	rsp, rsp
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_230
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_230:
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + r14 + 1]
	mov	rsp, rsp
	inc	r14
	test	al, al
	mov	rbp, rbp
	jne	.label_239
.label_217:
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
	jmp	.label_138
.label_779:
	xor	r9d, r9d
	xor	r14d, r14d
	mov	rbp, rbp
	mov	r13b, al
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_138
.label_782:
	lea	rsi, [rsi]
	mov	al, 1
.label_780:
	lea	rsi, [rsi]
	mov	dl, 1
.label_783:
	nop	
	test	dl, 1
	lea	rsi, [rsi]
	mov	cl, 1
	mov	rbp, rbp
	je	.label_147
	mov	rbp, rbp
	mov	cl, al
.label_147:
	mov	al, cl
.label_781:
	nop	
	mov	r9d, 2
	lea	rsi, [rsi]
	test	dl, 1
	mov	rsp, rsp
	jne	.label_156
	test	rbp, rbp
	je	.label_160
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx], 0x27
	mov	r14d, 1
	lea	rdi, [rdi]
	jmp	.label_162
.label_156:
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_162
.label_784:
	mov	rsp, rsp
	mov	r9d, 5
	test	dl, 1
	jne	.label_172
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_135
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x22
	mov	r14d, 1
	jmp	.label_149
.label_785:
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
	jmp	.label_138
.label_160:
	mov	r14d, 1
	nop	word ptr cs:[rax + rax]
.label_162:
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0x68], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xa0], rcx
	nop	
	mov	r13b, al
	nop	
	mov	sil, dl
	jmp	.label_138
.label_172:
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_149
.label_135:
	nop	
	mov	r14d, 1
.label_149:
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
.label_138:
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
	jmp	.label_219
	nop	dword ptr [rax]
.label_214:
	mov	rsp, rsp
	inc	r15
.label_219:
	lea	rdi, [rdi]
	cmp	r10, -1
	lea	rsi, [rsi]
	je	.label_137
	cmp	r15, r10
	jne	.label_139
	jmp	.label_140
	nop	dword ptr [rax]
.label_137:
	mov	rcx, -1
	nop	
	cmp	byte ptr [r11 + r15], 0
	mov	rsp, rsp
	je	.label_145
.label_139:
	cmp	byte ptr [rsp + 0x56], 0
	nop	
	je	.label_245
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rbx, [r15 + rax]
	mov	qword ptr [rsp + 0x88], r15
	lea	rsi, [rsi]
	cmp	rax, 2
	jb	.label_166
	lea	rdi, [rdi]
	cmp	r10, -1
	nop	
	jne	.label_166
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
.label_166:
	mov	rsp, rsp
	cmp	rbx, r10
	lea	rdi, [rdi]
	jbe	.label_185
	mov	dword ptr [rsp + 0x84], 0
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	jmp	.label_187
	nop	dword ptr [rax]
.label_245:
	nop	
	mov	dword ptr [rsp + 0x84], 0
	lea	rsi, [rsi]
	jmp	.label_187
	nop	word ptr cs:[rax + rax]
.label_185:
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
	jne	.label_216
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
	je	.label_187
	jmp	.label_148
.label_216:
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
.label_187:
	movzx	r12d, byte ptr [r11 + r15]
	cmp	r12, 0x7e
	ja	.label_246
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
.label_797:
	test	r15, r15
	jne	.label_126
	jmp	.label_129
.label_801:
	xor	eax, eax
	cmp	r10, -1
	je	.label_131
	test	r15, r15
	jne	.label_213
	nop	
	cmp	r10, 1
	je	.label_129
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_127
.label_790:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x37], 0
	mov	rbp, rbp
	je	.label_141
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_148
	nop	
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_154
	nop	
	mov	al, dil
	nop	
	and	al, 1
	jne	.label_154
	cmp	r14, rbp
	jae	.label_191
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_191:
	nop	
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_218
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x24
.label_218:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_176
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_176:
	nop	
	add	r14, 3
	lea	rdi, [rdi]
	mov	dil, 1
.label_154:
	mov	rcx, r14
	nop	
	cmp	rcx, rbp
	mov	rsp, rsp
	jae	.label_183
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x5c
.label_183:
	lea	r14, [rcx + 1]
	mov	rbp, rbp
	mov	al, 1
	mov	r12b, 0x30
	cmp	r9d, 2
	je	.label_190
	lea	rdx, [r15 + 1]
	cmp	rdx, r10
	jae	.label_197
	nop	
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	mov	rbp, rbp
	movzx	edx, dl
	cmp	edx, 9
	mov	rbp, rbp
	ja	.label_252
	mov	rsp, rsp
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_206
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rdx + r14], 0x30
.label_206:
	nop	
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_209
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + rdx], 0x30
.label_209:
	add	rcx, 3
	xor	r13d, r13d
	lea	rdi, [rdi]
	mov	r14, rcx
	jmp	.label_127
.label_791:
	mov	bl, 0x62
	nop	
	jmp	.label_221
.label_792:
	mov	rsp, rsp
	mov	cl, 0x74
	lea	rsi, [rsi]
	jmp	.label_220
.label_793:
	mov	bl, 0x76
	mov	rbp, rbp
	jmp	.label_221
.label_794:
	lea	rdi, [rdi]
	mov	bl, 0x66
	jmp	.label_221
.label_795:
	mov	cl, 0x72
	lea	rdi, [rdi]
	jmp	.label_220
.label_798:
	nop	
	mov	al, 1
	mov	qword ptr [rsp + 0xc8], rax
	cmp	r9d, 2
	jne	.label_229
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_234
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
	jae	.label_241
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_241:
	lea	rax, [r14 + 1]
	lea	rdi, [rdi]
	cmp	rax, rbp
	jae	.label_130
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x5c
.label_130:
	lea	rdi, [rdi]
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_136
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_136:
	mov	rbp, rbp
	add	r14, 3
	lea	rdi, [rdi]
	xor	edi, edi
.label_229:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	r13b, 1
	jmp	.label_127
.label_799:
	lea	rdi, [rdi]
	cmp	r9d, 5
	je	.label_155
	mov	rbp, rbp
	cmp	r9d, 2
	jne	.label_126
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_126
	nop	
	jmp	.label_167
.label_800:
	mov	rsp, rsp
	cmp	r9d, 2
	nop	
	jne	.label_169
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_174
	jmp	.label_177
.label_246:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	qword ptr [rsp + 0xd0], r9
	mov	byte ptr [rsp + 0xf7], r8b
	mov	qword ptr [rsp + 0x78], rbp
	cmp	qword ptr [rsp + 0xa8], 1
	lea	rsi, [rsi]
	jne	.label_179
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
	jmp	.label_194
.label_131:
	lea	rdi, [rdi]
	test	r15, r15
	jne	.label_204
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_204
.label_129:
	mov	dl, 1
.label_796:
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_208
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r13b, dl
	lea	rdi, [rdi]
	jmp	.label_127
.label_141:
	cmp	dword ptr [rsp + 0x94], 0
	mov	rsp, rsp
	jne	.label_214
	jmp	.label_126
.label_169:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	cl, r12b
	je	.label_220
.label_174:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_175
.label_220:
	cmp	byte ptr [rsp + 0xc7], 0
	mov	rbp, rbp
	mov	bl, cl
	je	.label_225
.label_221:
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x37], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_127
	jmp	.label_228
.label_179:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], 0
	lea	rsi, [rsi]
	cmp	r10, -1
	lea	rbp, [rsp + 0x70]
	jne	.label_232
	mov	rdi, r11
	mov	rbx, r11
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	r11, rbx
	mov	r10, rax
.label_232:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd8], r10
	nop	
	mov	r13b, 1
	nop	
	cmp	byte ptr [rsp + 0x47], 0
	lea	rsi, [rsi]
	mov	edx, 0
	je	.label_226
	lea	rax, [r11 + r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe8], rax
	lea	rsi, [rsi]
	mov	r13b, 1
	nop	
	xor	edx, edx
.label_203:
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
	je	.label_144
	mov	rsp, rsp
	cmp	rbx, -1
	movabs	rsi, 0x20000002b
	je	.label_150
	test	rbx, rbx
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_186
	lea	rsi, [rsi]
	cmp	rbx, 2
	nop	
	mov	rbp, qword ptr [rsp + 0x78]
	jb	.label_164
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rsp + 0xe8]
	lea	rdi, [rdi]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax + rax]
.label_159:
	nop	
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	mov	rbp, rbp
	cmp	edx, 0x21
	mov	rbp, rbp
	ja	.label_181
	lea	rsi, [rsi]
	bt	rsi, rdx
	nop	
	jb	.label_184
.label_181:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbx
	jb	.label_159
.label_164:
	mov	edi, dword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_193
	mov	rbp, rbp
	xor	r13d, r13d
.label_193:
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
	je	.label_203
	jmp	.label_151
	nop	
.label_226:
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
	je	.label_223
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_150
	mov	rbp, rbp
	cmp	rbp, -2
	mov	rsp, rsp
	je	.label_144
	mov	edi, dword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	call	iswprint
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_235
	xor	r13d, r13d
.label_235:
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
	je	.label_226
	lea	rsi, [rsi]
	jmp	.label_151
.label_204:
	lea	rdi, [rdi]
	mov	r10, -1
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_127
.label_155:
	cmp	dword ptr [rsp + 0x5c], 0
	lea	rdi, [rdi]
	je	.label_126
	lea	rcx, [r15 + 2]
	cmp	rcx, r10
	jae	.label_126
	movzx	eax, byte ptr [r15 + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_126
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	nop	
	cmp	edx, 0x3e
	lea	rdi, [rdi]
	ja	.label_146
	movabs	rsi, 0x7000a38200000000
	mov	rbp, rbp
	bt	rsi, rdx
	lea	rsi, [rsi]
	jae	.label_153
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_200
	lea	rdi, [rdi]
	cmp	r14, rbp
	jae	.label_165
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x3f
.label_165:
	mov	rsp, rsp
	lea	rax, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rax, rbp
	jae	.label_173
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x22
.label_173:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_133
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rax], 0x22
.label_133:
	nop	
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_143
	nop	
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x3f
.label_143:
	add	r14, 4
	xor	eax, eax
	nop	
	mov	r15, rcx
	mov	rsp, rsp
	mov	r12b, dl
	mov	rsp, rsp
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_127
.label_126:
	mov	rbp, rbp
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_127:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x83], 0
	je	.label_182
	cmp	qword ptr [rsp + 0x130], 0
	jne	.label_205
	nop	
	jmp	.label_212
	nop	dword ptr [rax + rax]
.label_182:
	cmp	byte ptr [rsp + 0x57], 0
	lea	rdi, [rdi]
	je	.label_212
.label_205:
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
	jne	.label_210
	mov	rcx, qword ptr [rsp + 0x130]
	and	esi, dword ptr [rcx + rdx*4]
	mov	rbp, rbp
	jmp	.label_240
	nop	word ptr cs:[rax + rax]
.label_212:
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
.label_240:
	mov	bl, r12b
	je	.label_175
	jmp	.label_228
.label_210:
	mov	bl, r12b
.label_228:
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_148
	cmp	r9d, 2
	jne	.label_231
	mov	al, dil
	and	al, 1
	jne	.label_231
	lea	rdi, [rdi]
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_237
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_237:
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
	jae	.label_250
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_250:
	mov	rsp, rsp
	add	r14, 3
	mov	dil, 1
.label_231:
	mov	rbp, rbp
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_128
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_128:
	mov	rbp, rbp
	inc	r14
	jmp	.label_198
.label_213:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_127
.label_190:
	xor	r13d, r13d
	jmp	.label_127
.label_197:
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_127
.label_252:
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_127
.label_150:
	xor	r13d, r13d
.label_223:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	jmp	.label_151
.label_144:
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x88]
	lea	rax, [rdx + r15]
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	cmp	rax, r10
	mov	r11, qword ptr [rsp + 0xe0]
	jae	.label_163
	lea	rax, [r11 + r15]
.label_180:
	mov	rbp, rbp
	cmp	byte ptr [rax + rdx], 0
	mov	rbp, rbp
	je	.label_202
	lea	rcx, [r15 + rdx + 1]
	inc	rdx
	cmp	rcx, r10
	lea	rdi, [rdi]
	jb	.label_180
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_151
.label_163:
	xor	r13d, r13d
	jmp	.label_151
.label_202:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_151
.label_186:
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0x88]
.label_151:
	mov	rbp, rbp
	mov	rbx, r10
.label_194:
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
	ja	.label_195
	test	cl, cl
	je	.label_195
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_127
.label_195:
	mov	rsp, rsp
	add	rdx, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x88], rdx
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_248
	nop	dword ptr [rax]
.label_125:
	nop	
	inc	r14
	mov	rbp, rbp
	mov	r12b, byte ptr [r11 + r15 + 1]
	nop	
	mov	r15, rdx
.label_248:
	mov	rsp, rsp
	test	cl, cl
	je	.label_222
	mov	edx, dword ptr [rsp + 0x84]
	test	dl, 1
	lea	rsi, [rsi]
	je	.label_224
	cmp	r14, rbp
	jae	.label_227
	nop	
	mov	rdx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + r14], 0x5c
.label_227:
	inc	r14
	mov	dword ptr [rsp + 0x84], 0
.label_224:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_233
	nop	dword ptr [rax + rax]
.label_222:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_242
	cmp	r9d, 2
	mov	rsp, rsp
	mov	r10, rbx
	jne	.label_171
	mov	rsp, rsp
	mov	al, dil
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_171
	lea	rsi, [rsi]
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_251
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_251:
	lea	rax, [r14 + 1]
	nop	
	cmp	rax, rbp
	jae	.label_161
	mov	rdx, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_161:
	lea	rax, [r14 + 2]
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_134
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdx + rax], 0x27
.label_134:
	lea	rsi, [rsi]
	add	r14, 3
	mov	rsp, rsp
	mov	dil, 1
.label_171:
	cmp	r14, rbp
	jae	.label_247
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_247:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_238
	mov	dl, r12b
	lea	rdi, [rdi]
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], dl
.label_238:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	mov	rsp, rsp
	jae	.label_211
	mov	dl, r12b
	shr	dl, 3
	and	dl, 7
	nop	
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rsi + rax], dl
.label_211:
	nop	
	add	r14, 3
	mov	rsp, rsp
	and	r12b, 7
	or	r12b, 0x30
	mov	rbp, rbp
	mov	al, 1
.label_233:
	lea	rdx, [r15 + 1]
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x88], rdx
	lea	rsi, [rsi]
	jbe	.label_175
	mov	rbp, rbp
	test	dil, 1
	lea	rsi, [rsi]
	je	.label_189
	lea	rsi, [rsi]
	mov	bl, al
	and	bl, 1
	jne	.label_189
	nop	
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_236
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + r14], 0x27
.label_236:
	lea	rsi, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rsi, rbp
	jae	.label_142
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdi + rsi], 0x27
.label_142:
	add	r14, 2
	mov	rsp, rsp
	xor	edi, edi
.label_189:
	nop	
	mov	rbx, r10
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_125
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + r14], r12b
	jmp	.label_125
	nop	word ptr cs:[rax + rax]
.label_175:
	test	dil, 1
	je	.label_215
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_215
	nop	
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_170
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_170:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_207
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_207:
	lea	rdi, [rdi]
	add	r14, 2
	nop	
	xor	edi, edi
.label_215:
	lea	rsi, [rsi]
	mov	bl, r12b
.label_198:
	cmp	r14, rbp
	jae	.label_199
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + r14], bl
.label_199:
	inc	r14
	lea	rsi, [rsi]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	lea	rsi, [rsi]
	mov	r8b, r13b
	jmp	.label_214
.label_146:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_127
.label_153:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_127
	nop	word ptr [rax + rax]
.label_140:
	nop	
	mov	rcx, r15
.label_145:
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
	je	.label_124
	mov	rsp, rsp
	or	al, dl
	je	.label_132
.label_124:
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
	je	.label_157
	mov	rsp, rsp
	or	al, dl
	jne	.label_157
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rdi, [rdi]
	jne	.label_158
	cmp	qword ptr [rsp + 0x48], 0
	mov	rsp, rsp
	je	.label_157
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
	je	.label_168
.label_157:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x68]
	test	rdx, rdx
	je	.label_178
	nop	
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_178
	mov	rsp, rsp
	mov	al, byte ptr [rdx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_178
	mov	rbp, rbp
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_196:
	cmp	r14, rbp
	jae	.label_192
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_192:
	mov	rbp, rbp
	inc	r14
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	lea	rsi, [rsi]
	test	al, al
	jne	.label_196
.label_178:
	cmp	r14, rbp
	jae	.label_201
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + r14], 0
	jmp	.label_201
.label_208:
	lea	rdi, [rdi]
	mov	r9d, 2
	jmp	.label_148
.label_184:
	mov	r9d, 2
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	jmp	.label_148
.label_242:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_148
.label_132:
	lea	rdi, [rdi]
	mov	r10, rcx
	mov	rsp, rsp
	jmp	.label_148
.label_225:
	nop	
	mov	r9d, 2
.label_148:
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
.label_152:
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	r14, rax
.label_201:
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
.label_158:
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
	jmp	.label_152
.label_234:
	mov	r9d, 2
	jmp	.label_148
.label_177:
	nop	
	mov	r9d, 2
	mov	rsp, rsp
	jmp	.label_148
.label_167:
	mov	r9d, 2
	mov	rbp, rbp
	jmp	.label_148
.label_200:
	mov	r9d, 5
	nop	
	jmp	.label_148
.label_188:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ca0
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
	#Procedure 0x404de0
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
	je	.label_253
	mov	qword ptr [rax], rbx
.label_253:
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
	#Procedure 0x404f30
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_254
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_258:
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
	jl	.label_258
.label_254:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_257
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_255]], OFFSET FLAT:slot0
.label_257:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_256
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_256:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ff0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x405000

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
	js	.label_262
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_264
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_260
.label_264:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_265
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
	jne	.label_261
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_261:
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
.label_260:
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
	ja	.label_259
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
	je	.label_263
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_263:
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
.label_259:
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
.label_262:
	lea	rdi, [rdi]
	call	abort
.label_265:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x405270
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405280
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
	#Procedure 0x4052b0
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
	#Procedure 0x4052e0
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
	je	.label_266
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
.label_266:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405370
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
	je	.label_267
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
.label_267:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405410
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
	je	.label_268
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
.label_268:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4054a0
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
	je	.label_269
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
.label_269:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405510
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_270]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_271]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_272]]
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
	#Procedure 0x4055b0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_270]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_271]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_272]]
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
	#Procedure 0x405650

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_270]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_271]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_272]]
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
	#Procedure 0x4056c0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_270]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_271]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_272]]
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
	#Procedure 0x405730

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
	je	.label_273
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
.label_273:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405810
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_270]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_271]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_272]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_274
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_274
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
.label_274:
	nop	
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4058a0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_270]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_271]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_272]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_275
	test	rdx, rdx
	je	.label_275
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
.label_275:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405930
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_270]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_271]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_272]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_276
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_276
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
.label_276:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4059d0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_270]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_271]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_272]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_277
	test	rsi, rsi
	je	.label_277
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
.label_277:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a70
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a80
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
	#Procedure 0x405aa0
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
	#Procedure 0x405ac0

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
	#Procedure 0x405af0

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
	jne	.label_279
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_281
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_278
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_278
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_278
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_278
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_278
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_278
	nop	
	mov	eax, OFFSET FLAT:.str.14
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_279
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_279
.label_281:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_278
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_278
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_278
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_278
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_278
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_278
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_280
.label_278:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_279:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_280:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_279
	mov	eax, OFFSET FLAT:.str.18_0
	jmp	.label_279
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405c60
	.globl randint_new
	.type randint_new, @function
randint_new:

	push	rbx
	mov	rbp, rbp
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	edi, 0x18
	nop	
	call	xmalloc
	nop	
	mov	qword ptr [rax], rbx
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 8], xmm0
	mov	rbp, rbp
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c90

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	lea	rsi, [rsi]
	push	rbx
	call	randread_new
	mov	rbx, rax
	xor	eax, eax
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_282
	mov	rsp, rsp
	mov	edi, 0x18
	call	xmalloc
	mov	qword ptr [rax], rbx
	mov	rsp, rsp
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [rax + 8], xmm0
.label_282:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405cd0
	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:

	nop
	mov	rax, qword ptr [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ce0

	.globl randint_genmax
	.type randint_genmax, @function
randint_genmax:
	nop	
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	r13
	push	r12
	nop	
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x18
	lea	rsi, [rsi]
	mov	r13, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rdi
	mov	r15, qword ptr [rdi]
	mov	rbx, qword ptr [rdi + 8]
	mov	rbp, rbp
	lea	rax, [rdi + 8]
	mov	qword ptr [rsp], rax
	nop	
	mov	r14, qword ptr [rdi + 0x10]
	lea	rbp, [r13 + 1]
	mov	rsp, rsp
	lea	r12, [rsp + 0x10]
	nop	word ptr [rax + rax]
.label_288:
	nop	
	cmp	r14, r13
	jae	.label_286
	mov	rax, r14
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_283:
	lea	rsi, [rsi]
	shl	rax, 8
	or	rax, 0xff
	mov	rbp, rbp
	inc	rdx
	lea	rdi, [rdi]
	cmp	rax, r13
	lea	rdi, [rdi]
	jb	.label_283
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, r12
	call	randread
	mov	rbp, rbp
	mov	rax, r12
	nop	word ptr cs:[rax + rax]
.label_287:
	mov	rcx, rbx
	mov	rsp, rsp
	shl	rcx, 8
	mov	rsp, rsp
	movzx	ebx, byte ptr [rax]
	or	rbx, rcx
	shl	r14, 8
	or	r14, 0xff
	nop	
	inc	rax
	nop	
	cmp	r14, r13
	jb	.label_287
.label_286:
	mov	rcx, rbx
	mov	rsi, r14
	sub	rsi, r13
	lea	rdi, [rdi]
	je	.label_284
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rax, rsi
	div	rbp
	nop	
	mov	rdi, rdx
	mov	rsp, rsp
	sub	r14, rdi
	nop	
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, rcx
	div	rbp
	lea	rsi, [rsi]
	mov	rbx, rdx
	mov	rbp, rbp
	dec	rdi
	cmp	rcx, r14
	mov	r14, rdi
	ja	.label_288
	xor	edx, edx
	mov	rax, rcx
	div	rbp
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	xor	edx, edx
	mov	rax, rsi
	div	rbp
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, rbx
	jmp	.label_285
.label_284:
	mov	rsp, rsp
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rsp]
	movups	xmmword ptr [rax], xmm0
.label_285:
	mov	rax, rcx
	mov	rbp, rbp
	add	rsp, 0x18
	mov	rbp, rbp
	pop	rbx
	nop	
	pop	r12
	nop	
	pop	r13
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e50
	.globl randint_free
	.type randint_free, @function
randint_free:

	push	rbx
	mov	rbx, rdi
	mov	esi, 0x18
	call	explicit_bzero
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e70
	.globl randint_all_free
	.type randint_all_free, @function
randint_all_free:

	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	randread_free
	lea	rsi, [rsi]
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	esi, 0x18
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	explicit_bzero
	mov	rbp, rbp
	mov	rdi, rbx
	call	free
	mov	rbp, rbp
	mov	dword ptr [rbp], r15d
	mov	rsp, rsp
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405ed0

	.globl randperm_bound
	.type randperm_bound, @function
randperm_bound:
	xor	eax, eax
	dec	rsi
	lea	rsi, [rsi]
	je	.label_289
	nop	word ptr [rax + rax]
.label_290:
	lea	rsi, [rsi]
	inc	rax
	shr	rsi, 1
	lea	rdi, [rdi]
	jne	.label_290
.label_289:
	imul	rax, rdi
	add	rax, 7
	shr	rax, 3
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f00

	.globl randperm_new
	.type randperm_new, @function
randperm_new:
	push	rbp
	push	r15
	nop	
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x38
	mov	r12, rdx
	lea	rsi, [rsi]
	mov	r13, rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r13
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rdi
	xor	ebp, ebp
	test	r13, r13
	lea	rdi, [rdi]
	je	.label_291
	cmp	r13, 1
	mov	rsp, rsp
	jne	.label_301
	mov	edi, 8
	nop	
	call	xmalloc
	mov	rbp, rax
	mov	rbp, rbp
	dec	r12
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r12
	call	randint_genmax
	lea	rsi, [rsi]
	mov	qword ptr [rbp], rax
	mov	rsp, rsp
	jmp	.label_291
.label_301:
	mov	rbp, rbp
	movabs	r14, 0xfffffffffffffff
	cmp	r12, 0x20000
	jb	.label_312
	mov	rsp, rsp
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r12
	div	r13
	lea	rsi, [rsi]
	cmp	rax, 0x20
	lea	rsi, [rsi]
	jb	.label_307
	lea	rdi, [r13 + r13]
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:sparse_hash_
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:sparse_cmp_
	mov	rbp, rbp
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	rbp, rbp
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_294
	cmp	r13, r14
	ja	.label_309
	lea	rdi, [r13*8]
	lea	rsi, [rsi]
	call	xmalloc
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	dec	r12
	lea	rsi, [rsi]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_305:
	nop	
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	rsi, r12
	mov	rsp, rsp
	call	randint_genmax
	lea	rdi, [rdi]
	mov	r14, rax
	add	r14, r15
	mov	qword ptr [rsp + 0x28], r15
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], 0
	mov	rdi, rbx
	mov	rbp, rbp
	lea	rsi, [rsp + 0x28]
	call	hash_delete
	lea	rsi, [rsi]
	mov	rbp, rax
	mov	qword ptr [rsp + 0x18], r14
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], 0
	mov	rdi, rbx
	lea	rsi, [rsp + 0x18]
	lea	rsi, [rsi]
	call	hash_delete
	mov	r13, rax
	test	rbp, rbp
	lea	rdi, [rdi]
	jne	.label_292
	mov	rbp, rbp
	mov	edi, 0x10
	call	xmalloc
	mov	rbp, rax
	mov	qword ptr [rbp + 8], r15
	mov	rsp, rsp
	mov	qword ptr [rbp], r15
.label_292:
	lea	rsi, [rsi]
	test	r13, r13
	lea	rdi, [rdi]
	je	.label_297
	mov	r14, qword ptr [r13 + 8]
	jmp	.label_300
	nop	dword ptr [rax]
.label_297:
	lea	rdi, [rdi]
	mov	edi, 0x10
	call	xmalloc
	mov	rsp, rsp
	mov	r13, rax
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 8], r14
	mov	rsp, rsp
	mov	qword ptr [r13], r14
.label_300:
	nop	
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rbp + 8], r14
	mov	qword ptr [r13 + 8], rax
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, rbp
	nop	
	call	hash_insert
	test	rax, rax
	je	.label_294
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r13
	call	hash_insert
	mov	rbp, rbp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_294
	mov	rax, qword ptr [rbp + 8]
	mov	rbp, qword ptr [rsp]
	nop	
	mov	qword ptr [rbp + r15*8], rax
	mov	rbp, rbp
	inc	r15
	lea	rsi, [rsi]
	dec	r12
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 8]
	cmp	r15, rax
	mov	rbp, rbp
	jb	.label_305
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	hash_free
	jmp	.label_291
.label_312:
	lea	rdi, [r12*8]
	nop	
	call	xmalloc
	mov	rbp, rbp
	mov	r15, rax
	mov	rbp, -1
	test	r12, r12
	mov	rbp, rbp
	jne	.label_311
	nop	
	jmp	.label_293
.label_307:
	mov	rsp, rsp
	cmp	r12, r14
	ja	.label_295
	mov	rsp, rsp
	lea	rdi, [r12*8]
	nop	
	call	xmalloc
	mov	r15, rax
.label_311:
	xor	ecx, ecx
	mov	rbp, rbp
	cmp	r12, 4
	lea	rsi, [rsi]
	jb	.label_298
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rax, r12
	lea	rsi, [rsi]
	and	rax, 0xfffffffffffffffc
	je	.label_298
	lea	rsi, [r12 - 4]
	lea	rdi, [rdi]
	mov	rdx, rsi
	shr	rdx, 2
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rsp, rsp
	bt	rsi, 2
	jb	.label_304
	lea	rsi, [rsi]
	mov	ecx, 1
	movq	xmm0, rcx
	pslldq	xmm0, 8
	lea	rdi, [rdi]
	movdqu	xmmword ptr [r15], xmm0
	mov	rsp, rsp
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_299]]
	nop	
	movdqu	xmmword ptr [r15 + 0x10], xmm0
	mov	ecx, 4
.label_304:
	test	rdx, rdx
	je	.label_308
	mov	rbp, rbp
	mov	edx, 1
	movq	xmm0, rdx
	mov	rsp, rsp
	pslldq	xmm0, 8
	mov	rsp, rsp
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_299]]
	nop	word ptr cs:[rax + rax]
.label_306:
	movq	xmm2, rcx
	pshufd	xmm2, xmm2, 0x44
	movdqa	xmm3, xmm2
	nop	
	paddq	xmm3, xmm0
	paddq	xmm2, xmm1
	movdqu	xmmword ptr [r15 + rcx*8], xmm3
	movdqu	xmmword ptr [r15 + rcx*8 + 0x10], xmm2
	lea	rdi, [rdi]
	lea	rdx, [rcx + 4]
	movq	xmm2, rdx
	nop	
	pshufd	xmm2, xmm2, 0x44
	nop	
	movdqa	xmm3, xmm2
	lea	rsi, [rsi]
	paddq	xmm3, xmm0
	nop	
	paddq	xmm2, xmm1
	lea	rsi, [rsi]
	movdqu	xmmword ptr [r15 + rcx*8 + 0x20], xmm3
	mov	rsp, rsp
	movdqu	xmmword ptr [r15 + rcx*8 + 0x30], xmm2
	mov	rsp, rsp
	add	rcx, 8
	mov	rbp, rbp
	cmp	rcx, rax
	jne	.label_306
.label_308:
	cmp	rax, r12
	mov	rcx, rax
	lea	rdi, [rdi]
	je	.label_303
	nop	word ptr cs:[rax + rax]
.label_298:
	mov	qword ptr [r15 + rcx*8], rcx
	inc	rcx
	cmp	r12, rcx
	lea	rsi, [rsi]
	jne	.label_298
.label_303:
	lea	rsi, [rsi]
	test	r13, r13
	je	.label_310
	nop	
	dec	r12
	mov	rsp, rsp
	mov	rbp, r12
.label_293:
	xor	ebx, ebx
	mov	r12, qword ptr [rsp + 0x10]
	nop	dword ptr [rax + rax]
.label_296:
	nop	
	mov	rdi, r12
	mov	rsi, rbp
	call	randint_genmax
	lea	rdi, [rdi]
	add	rax, rbx
	mov	rcx, qword ptr [r15 + rbx*8]
	mov	rbp, rbp
	mov	rdx, qword ptr [r15 + rax*8]
	lea	rdi, [rdi]
	mov	qword ptr [r15 + rbx*8], rdx
	mov	qword ptr [r15 + rax*8], rcx
	lea	rdi, [rdi]
	inc	rbx
	lea	rdi, [rdi]
	dec	rbp
	cmp	r13, rbx
	jne	.label_296
	lea	rdi, [rdi]
	cmp	r13, r14
	ja	.label_302
.label_310:
	shl	r13, 3
	mov	rdi, r15
	mov	rsi, r13
	mov	rbp, rbp
	call	xrealloc
	mov	rbp, rbp
	mov	rbp, rax
.label_291:
	mov	rax, rbp
	add	rsp, 0x38
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_294:
	nop	
	call	xalloc_die
.label_302:
	nop	
	call	xalloc_die
.label_309:
	lea	rsi, [rsi]
	call	xalloc_die
.label_295:
	mov	rsp, rsp
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4063a0

	.globl sparse_hash_
	.type sparse_hash_, @function
sparse_hash_:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi]
	lea	rdi, [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4063c0

	.globl sparse_cmp_
	.type sparse_cmp_, @function
sparse_cmp_:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4063d0

	.globl randread_new
	.type randread_new, @function
randread_new:
	mov	rbp, rbp
	push	r15
	nop	
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	r12, rsi
	mov	r14, rdi
	lea	rsi, [rsi]
	test	r12, r12
	mov	rsp, rsp
	je	.label_317
	nop	
	xor	ebx, ebx
	test	r14, r14
	je	.label_314
	mov	esi, OFFSET FLAT:.str.1_1
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	call	fopen_safer
	lea	rdi, [rdi]
	mov	rbx, rax
	nop	
	xor	r15d, r15d
	lea	rsi, [rsi]
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_316
.label_314:
	nop	
	mov	edi, 0x1038
	call	xmalloc
	mov	r15, rax
	lea	rdi, [rdi]
	mov	qword ptr [r15], rbx
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [r15 + 8]], OFFSET FLAT:randread_error
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x10], r14
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_318
	mov	rsi, r15
	add	rsi, 0x18
	cmp	r12, 0x1000
	mov	ecx, 0x1000
	cmovbe	rcx, r12
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	rdi, rbx
	call	setvbuf
	mov	rsp, rsp
	jmp	.label_316
.label_317:
	mov	edi, 0x1038
	mov	rbp, rbp
	call	xmalloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rbp, rbp
	mov	qword ptr [r15], 0
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [r15 + 8]], OFFSET FLAT:randread_error
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x10], 0
	jmp	.label_316
.label_318:
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x18], 0
	mov	r14, r15
	add	r14, 0x20
	mov	rsp, rsp
	xor	r13d, r13d
	mov	edi, OFFSET FLAT:.str.3_0
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	call	open
	mov	rbp, rbp
	mov	ebx, eax
	test	ebx, ebx
	js	.label_315
	lea	rdi, [rdi]
	cmp	r12, 0x800
	mov	edx, 0x800
	mov	rsp, rsp
	cmovbe	rdx, r12
	mov	edi, ebx
	mov	rsi, r14
	call	read
	nop	
	mov	r12, rax
	mov	rbp, rbp
	mov	edi, ebx
	nop	
	call	close
	lea	rsi, [rsi]
	xor	r13d, r13d
	test	r12, r12
	js	.label_315
	lea	rsi, [rsi]
	cmp	r12, 0x7ff
	lea	rsi, [rsi]
	mov	r13, r12
	ja	.label_313
.label_315:
	mov	eax, 0x800
	lea	rsi, [rsi]
	sub	rax, r13
	cmp	rax, 0x10
	mov	ebx, 0x10
	mov	rbp, rbp
	cmovbe	rbx, rax
	lea	rsi, [rsi]
	lea	r12, [rsp]
	xor	esi, esi
	mov	rdi, r12
	lea	rdi, [rdi]
	call	gettimeofday
	mov	rsp, rsp
	lea	rdi, [r14 + r13]
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	memcpy
	add	rbx, r13
	cmp	rbx, 0x7ff
	ja	.label_313
	mov	eax, 0x800
	mov	rsp, rsp
	sub	rax, rbx
	mov	rsp, rsp
	cmp	rax, 4
	lea	rdi, [rdi]
	mov	r12d, 4
	lea	rdi, [rdi]
	cmovbe	r12, rax
	nop	
	call	getpid
	mov	rbp, rbp
	mov	dword ptr [rsp], eax
	nop	
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsi]
	lea	rsi, [rsp]
	mov	rdx, r12
	mov	rbp, rbp
	call	memcpy
	mov	rbp, rbp
	add	r12, rbx
	lea	rsi, [rsi]
	cmp	r12, 0x7ff
	mov	rsp, rsp
	ja	.label_313
	mov	eax, 0x800
	mov	rbp, rbp
	sub	rax, r12
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getppid
	mov	dword ptr [rsp], eax
	mov	rsp, rsp
	lea	rdi, [r14 + r12]
	nop	
	lea	rsi, [rsp]
	mov	rdx, rbx
	call	memcpy
	mov	rbp, rbp
	add	rbx, r12
	cmp	rbx, 0x7ff
	ja	.label_313
	mov	eax, 0x800
	nop	
	sub	rax, rbx
	cmp	rax, 4
	lea	rdi, [rdi]
	mov	r12d, 4
	lea	rsi, [rsi]
	cmovbe	r12, rax
	call	getuid
	mov	dword ptr [rsp], eax
	mov	rsp, rsp
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp]
	nop	
	mov	rdx, r12
	mov	rbp, rbp
	call	memcpy
	add	r12, rbx
	nop	
	cmp	r12, 0x7ff
	lea	rdi, [rdi]
	ja	.label_313
	mov	rbp, rbp
	mov	eax, 0x800
	lea	rsi, [rsi]
	sub	rax, r12
	nop	
	cmp	rax, 4
	mov	rbp, rbp
	mov	ebx, 4
	cmovbe	rbx, rax
	mov	rbp, rbp
	call	getgid
	mov	rsp, rsp
	mov	dword ptr [rsp], eax
	mov	rbp, rbp
	add	r12, r14
	lea	rdi, [rdi]
	lea	rsi, [rsp]
	mov	rdi, r12
	mov	rsp, rsp
	mov	rdx, rbx
	call	memcpy
.label_313:
	mov	rdi, r14
	nop	
	call	isaac_seed
.label_316:
	mov	rax, r15
	add	rsp, 0x10
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406700
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	rsp, rsp
	mov	qword ptr [rdi + 8], rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406710
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406720

	.globl randread
	.type randread, @function
randread:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	push	r15
	nop	
	push	r14
	push	r13
	nop	
	push	r12
	nop	
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rbp, rbp
	mov	rbx, rdx
	mov	rbp, rbp
	mov	r15, rsi
	nop	
	mov	r14, rdi
	mov	rcx, qword ptr [r14]
	mov	rsp, rsp
	test	rcx, rcx
	nop	
	je	.label_324
	mov	esi, 1
	mov	rdi, r15
	mov	rdx, rbx
	mov	rbp, rbp
	call	fread_unlocked
	mov	rbp, rax
	nop	
	call	__errno_location
	mov	r12, rax
	nop	
	cmp	rbp, rbx
	mov	rsp, rsp
	je	.label_322
	nop	
.label_320:
	lea	rdi, [rdi]
	sub	rbx, rbp
	add	r15, rbp
	mov	rax, qword ptr [r14]
	mov	eax, dword ptr [rax]
	and	eax, 0x20
	mov	rbp, rbp
	cmovne	eax, dword ptr [r12]
	mov	dword ptr [r12], eax
	mov	rdi, qword ptr [r14 + 0x10]
	call	qword ptr [r14 + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [r14]
	mov	rsp, rsp
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rdx, rbx
	call	fread_unlocked
	mov	rbp, rax
	cmp	rbx, rbp
	jne	.label_320
	mov	rsp, rsp
	jmp	.label_322
.label_324:
	mov	r12, qword ptr [r14 + 0x18]
	mov	rsp, rsp
	lea	r13, [r14 + 0x838]
	mov	rsi, r13
	sub	rsi, r12
	add	rsi, 0x800
	lea	rsi, [rsi]
	cmp	r12, rbx
	nop	
	jae	.label_323
	lea	rbp, [r14 + 0x20]
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rdx, r12
	lea	rdi, [rdi]
	call	memcpy
	add	r15, r12
	lea	rsi, [rsi]
	sub	rbx, r12
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_325:
	nop	
	cmp	rbx, 0x800
	jb	.label_319
	mov	rdi, rbp
	mov	rsi, r15
	call	isaac_refill
	add	r15, 0x800
	mov	rbp, rbp
	add	rbx, -0x800
	jne	.label_325
	mov	rbp, rbp
	jmp	.label_321
.label_319:
	mov	rdi, rbp
	mov	rsi, r13
	mov	rsp, rsp
	call	isaac_refill
	lea	rdi, [rdi]
	mov	r12d, 0x800
	mov	rsi, r13
.label_323:
	mov	rdi, r15
	mov	rdx, rbx
	call	memcpy
	sub	r12, rbx
.label_321:
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x18], r12
.label_322:
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4068a0

	.globl randread_free
	.type randread_free, @function
randread_free:
	mov	rsp, rsp
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	esi, 0x1038
	nop	
	call	explicit_bzero
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	free
	mov	rbp, rbp
	test	r14, r14
	je	.label_326
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r14
	jmp	rpl_fclose
.label_326:
	xor	eax, eax
	nop	
	add	rsp, 8
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r14
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4068f0

	.globl randread_error
	.type randread_error, @function
randread_error:
	mov	rsp, rsp
	push	rbp
	nop	
	push	r15
	nop	
	push	r14
	push	rbx
	push	rax
	nop	
	mov	rbx, rdi
	test	rbx, rbx
	nop	
	je	.label_327
	mov	rsp, rsp
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	lea	rsi, [rsi]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	lea	rdi, [rdi]
	jne	.label_329
	mov	esi, OFFSET FLAT:.str.1_2
	jmp	.label_328
.label_329:
	mov	esi, OFFSET FLAT:.str.2_1
.label_328:
	mov	rsp, rsp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, r14d
	mov	esi, r15d
	lea	rsi, [rsi]
	mov	rdx, rbp
	mov	rbp, rbp
	call	error
.label_327:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406980

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	mov	rax, qword ptr [rdi + 0x800]
	mov	rdx, qword ptr [rdi + 0x810]
	inc	rdx
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 0x808]
	mov	rbp, rbp
	add	rcx, rdx
	mov	qword ptr [rdi + 0x810], rdx
	nop	
	lea	r9, [rdi + 0x400]
	mov	rsp, rsp
	mov	r8, rsi
	mov	r10, rdi
	nop	dword ptr [rax]
.label_330:
	mov	r11, rax
	lea	rdi, [rdi]
	shl	r11, 0x15
	mov	rbp, rbp
	xor	r11, rax
	not	r11
	add	r11, qword ptr [r10 + 0x400]
	mov	rdx, qword ptr [r10]
	nop	
	mov	eax, edx
	and	eax, 0x7f8
	add	rcx, qword ptr [rdi + rax]
	lea	rsi, [rsi]
	add	rcx, r11
	mov	qword ptr [r10], rcx
	lea	rsi, [rsi]
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	qword ptr [r8], rdx
	mov	rax, r11
	shr	rax, 5
	xor	rax, r11
	nop	
	add	rax, qword ptr [r10 + 0x408]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r10 + 8]
	lea	rdi, [rdi]
	mov	r11d, ecx
	lea	rdi, [rdi]
	and	r11d, 0x7f8
	add	rdx, rax
	lea	rsi, [rsi]
	add	rdx, qword ptr [rdi + r11]
	mov	rbp, rbp
	mov	qword ptr [r10 + 8], rdx
	mov	rsp, rsp
	shr	rdx, 8
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [r8 + 8], rcx
	mov	rsp, rsp
	mov	r11, rax
	shl	r11, 0xc
	xor	r11, rax
	lea	rdi, [rdi]
	add	r11, qword ptr [r10 + 0x410]
	mov	rdx, qword ptr [r10 + 0x10]
	mov	rsp, rsp
	mov	eax, edx
	lea	rdi, [rdi]
	and	eax, 0x7f8
	lea	rdi, [rdi]
	add	rcx, r11
	nop	
	add	rcx, qword ptr [rdi + rax]
	nop	
	mov	qword ptr [r10 + 0x10], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x10], rdx
	mov	rax, r11
	shr	rax, 0x21
	mov	rbp, rbp
	xor	rax, r11
	add	rax, qword ptr [r10 + 0x418]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r10 + 0x18]
	lea	rsi, [rsi]
	mov	r11d, ecx
	and	r11d, 0x7f8
	lea	rsi, [rsi]
	add	rdx, rax
	add	rdx, qword ptr [rdi + r11]
	lea	rsi, [rsi]
	mov	qword ptr [r10 + 0x18], rdx
	shr	rdx, 8
	mov	rbp, rbp
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [r8 + 0x18], rcx
	add	r10, 0x20
	add	r8, 0x20
	mov	rbp, rbp
	cmp	r10, r9
	jb	.label_330
	add	rsi, 0x400
	lea	r8, [rdi + 0x800]
	nop	word ptr cs:[rax + rax]
.label_331:
	mov	r10, rax
	shl	r10, 0x15
	xor	r10, rax
	not	r10
	add	r10, qword ptr [r9 - 0x400]
	mov	rsp, rsp
	mov	rdx, qword ptr [r9]
	mov	rbp, rbp
	mov	eax, edx
	and	eax, 0x7f8
	add	rcx, qword ptr [rdi + rax]
	add	rcx, r10
	mov	rsp, rsp
	mov	qword ptr [r9], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	nop	
	add	rdx, qword ptr [rdi + rcx]
	mov	rbp, rbp
	mov	qword ptr [rsi], rdx
	mov	rax, r10
	nop	
	shr	rax, 5
	lea	rsi, [rsi]
	xor	rax, r10
	add	rax, qword ptr [r9 - 0x3f8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r9 + 8]
	mov	r10d, ecx
	and	r10d, 0x7f8
	nop	
	add	rdx, rax
	add	rdx, qword ptr [rdi + r10]
	mov	qword ptr [r9 + 8], rdx
	shr	rdx, 8
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 8], rcx
	mov	r10, rax
	shl	r10, 0xc
	nop	
	xor	r10, rax
	nop	
	add	r10, qword ptr [r9 - 0x3f0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r9 + 0x10]
	mov	eax, edx
	lea	rsi, [rsi]
	and	eax, 0x7f8
	add	rcx, r10
	lea	rdi, [rdi]
	add	rcx, qword ptr [rdi + rax]
	mov	qword ptr [r9 + 0x10], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	qword ptr [rsi + 0x10], rdx
	nop	
	mov	rax, r10
	nop	
	shr	rax, 0x21
	xor	rax, r10
	nop	
	add	rax, qword ptr [r9 - 0x3e8]
	mov	rcx, qword ptr [r9 + 0x18]
	mov	r10d, ecx
	mov	rsp, rsp
	and	r10d, 0x7f8
	mov	rbp, rbp
	add	rdx, rax
	add	rdx, qword ptr [rdi + r10]
	mov	qword ptr [r9 + 0x18], rdx
	shr	rdx, 8
	mov	rsp, rsp
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [rsi + 0x18], rcx
	add	r9, 0x20
	add	rsi, 0x20
	cmp	r9, r8
	nop	
	jb	.label_331
	mov	qword ptr [rdi + 0x800], rax
	mov	qword ptr [rdi + 0x808], rcx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c60

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	mov	rsp, rsp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	movabs	rdx, 0x647c4677a2884b7c
	nop	
	movabs	r8, 0xb9f8b322c73ac862
	mov	rbp, rbp
	movabs	rsi, 0x8c0ea5053d4712a0
	movabs	rcx, 0xb29b2e824a595524
	movabs	rax, 0x82f053db8355e0ce
	movabs	r11, 0x48fe4a0fa5a09315
	mov	rbp, rbp
	movabs	r10, 0xae985bf2cbfc89ed
	movabs	r9, 0x98f5704f6c44c0ab
	lea	rdi, [rdi]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_332:
	mov	rbp, rbp
	add	rdx, qword ptr [rdi + rbx*8]
	add	r8, qword ptr [rdi + rbx*8 + 8]
	mov	rbp, rbp
	add	rsi, qword ptr [rdi + rbx*8 + 0x10]
	add	rcx, qword ptr [rdi + rbx*8 + 0x18]
	add	rax, qword ptr [rdi + rbx*8 + 0x20]
	lea	rdi, [rdi]
	add	r11, qword ptr [rdi + rbx*8 + 0x28]
	mov	rbp, rbp
	add	r10, qword ptr [rdi + rbx*8 + 0x30]
	lea	rsi, [rsi]
	add	r9, qword ptr [rdi + rbx*8 + 0x38]
	mov	rbp, rbp
	sub	rdx, rax
	lea	rsi, [rsi]
	mov	r14, r9
	shr	r14, 9
	xor	r14, r11
	add	r9, rdx
	sub	r8, r14
	lea	r11, [r8 + rdx]
	mov	rbp, rbp
	shl	rdx, 9
	mov	r15, rdx
	nop	
	xor	r15, r10
	sub	rsi, r15
	lea	rdi, [rdi]
	mov	r10, r8
	nop	
	shr	r8, 0x17
	nop	
	xor	r9, r8
	add	r10, rsi
	sub	rcx, r9
	mov	rbp, rbp
	lea	r12, [rcx + rsi]
	lea	rsi, [rsi]
	shl	rsi, 0xf
	mov	rdx, rsi
	nop	
	xor	rdx, r11
	sub	rax, rdx
	mov	r8, rcx
	shr	r8, 0xe
	mov	rsp, rsp
	xor	r8, r10
	mov	r10, rcx
	nop	
	add	r10, rax
	mov	rbp, rbp
	sub	r14, r8
	nop	
	lea	r13, [r14 + rax]
	shl	rax, 0x14
	mov	rsi, rax
	mov	rsp, rsp
	xor	rsi, r12
	sub	r15, rsi
	mov	rcx, r14
	shr	rcx, 0x11
	mov	rsp, rsp
	xor	rcx, r10
	mov	rbp, rbp
	mov	r11, r14
	mov	rbp, rbp
	add	r11, r15
	mov	rbp, rbp
	sub	r9, rcx
	lea	r10, [r9 + r15]
	lea	rdi, [rdi]
	shl	r15, 0xe
	mov	rsp, rsp
	mov	rax, r15
	xor	rax, r13
	mov	rsp, rsp
	mov	qword ptr [rdi + rbx*8], rdx
	mov	qword ptr [rdi + rbx*8 + 8], r8
	lea	rsi, [rsi]
	mov	qword ptr [rdi + rbx*8 + 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rdi + rbx*8 + 0x18], rcx
	mov	rbp, rbp
	mov	qword ptr [rdi + rbx*8 + 0x20], rax
	mov	qword ptr [rdi + rbx*8 + 0x28], r11
	mov	qword ptr [rdi + rbx*8 + 0x30], r10
	nop	
	mov	qword ptr [rdi + rbx*8 + 0x38], r9
	nop	
	add	rbx, 8
	cmp	rbx, 0x100
	lea	rdi, [rdi]
	jl	.label_332
	xor	ebx, ebx
	nop	
.label_333:
	mov	rsp, rsp
	add	rdx, qword ptr [rdi + rbx*8]
	add	r8, qword ptr [rdi + rbx*8 + 8]
	lea	rdi, [rdi]
	add	rsi, qword ptr [rdi + rbx*8 + 0x10]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdi + rbx*8 + 0x18]
	mov	rbp, rbp
	add	rax, qword ptr [rdi + rbx*8 + 0x20]
	lea	rsi, [rsi]
	add	r11, qword ptr [rdi + rbx*8 + 0x28]
	mov	rbp, rbp
	add	r10, qword ptr [rdi + rbx*8 + 0x30]
	nop	
	add	r9, qword ptr [rdi + rbx*8 + 0x38]
	lea	rsi, [rsi]
	sub	rdx, rax
	mov	rsp, rsp
	mov	r14, r9
	shr	r14, 9
	mov	rbp, rbp
	xor	r14, r11
	mov	rbp, rbp
	add	r9, rdx
	lea	rdi, [rdi]
	sub	r8, r14
	lea	rsi, [rsi]
	lea	r12, [r8 + rdx]
	shl	rdx, 9
	xor	rdx, r10
	lea	rdi, [rdi]
	sub	rsi, rdx
	mov	r11, r8
	shr	r11, 0x17
	xor	r11, r9
	mov	rsp, rsp
	add	r8, rsi
	sub	rcx, r11
	mov	rbp, rbp
	lea	r9, [rcx + rsi]
	lea	rdi, [rdi]
	shl	rsi, 0xf
	mov	rsp, rsp
	mov	r15, rsi
	xor	r15, r12
	sub	rax, r15
	lea	rsi, [rsi]
	mov	rsi, rcx
	shr	rsi, 0xe
	xor	r8, rsi
	add	rcx, rax
	sub	r14, r8
	lea	r12, [r14 + rax]
	lea	rsi, [rsi]
	shl	rax, 0x14
	mov	rsi, rax
	xor	rsi, r9
	lea	rdi, [rdi]
	sub	rdx, rsi
	mov	rax, r14
	shr	rax, 0x11
	nop	
	xor	rcx, rax
	add	r14, rdx
	sub	r11, rcx
	mov	rsp, rsp
	lea	r10, [r11 + rdx]
	shl	rdx, 0xe
	mov	rbp, rbp
	xor	rdx, r12
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rbx*8], r15
	mov	qword ptr [rdi + rbx*8 + 8], r8
	mov	qword ptr [rdi + rbx*8 + 0x10], rsi
	mov	qword ptr [rdi + rbx*8 + 0x18], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rbx*8 + 0x20], rdx
	mov	qword ptr [rdi + rbx*8 + 0x28], r14
	mov	qword ptr [rdi + rbx*8 + 0x30], r10
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rbx*8 + 0x38], r11
	add	rbx, 8
	cmp	rbx, 0x100
	mov	r9, r11
	mov	r11, r14
	mov	rax, rdx
	mov	rdx, r15
	jl	.label_333
	mov	rsp, rsp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x800], xmm0
	mov	qword ptr [rdi + 0x810], 0
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x406f90

	.globl fread_file
	.type fread_file, @function
fread_file:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	r15
	lea	rdi, [rdi]
	push	r14
	nop	
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x98
	mov	rbp, rsi
	mov	r15, rdi
	lea	rdi, [rdi]
	call	fileno
	mov	rsp, rsp
	lea	rdx, [rsp]
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, eax
	call	__fxstat
	lea	rsi, [rsi]
	mov	ebx, 0x2000
	test	eax, eax
	mov	rbp, rbp
	js	.label_335
	lea	rdi, [rdi]
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	ebx, 0x2000
	mov	rsp, rsp
	cmp	eax, 0x8000
	jne	.label_335
	mov	rsp, rsp
	mov	rdi, r15
	nop	
	call	ftello
	nop	
	mov	ebx, 0x2000
	test	rax, rax
	js	.label_335
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x30]
	mov	ebx, 0x2000
	sub	rcx, rax
	jle	.label_335
	cmp	rcx, -1
	je	.label_340
	inc	rcx
	nop	
	mov	rbx, rcx
.label_335:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	malloc
	lea	rsi, [rsi]
	xor	r13d, r13d
	lea	rdi, [rdi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_334
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x90], rbp
	nop	
	mov	r14, -1
	nop	
.label_342:
	lea	rdi, [rdi]
	mov	r12, rax
	nop	
	mov	rbp, rbx
	nop	
	sub	rbp, r13
	lea	rdi, [r12 + r13]
	lea	rsi, [rsi]
	mov	esi, 1
	mov	rdx, rbp
	mov	rcx, r15
	call	fread
	add	r13, rax
	nop	
	cmp	rax, rbp
	mov	rbp, rbp
	jne	.label_336
	cmp	rbx, -1
	lea	rsi, [rsi]
	je	.label_338
	mov	rbp, rbp
	mov	rbp, rbx
	shr	rbp, 1
	lea	rdi, [rdi]
	mov	rax, rbp
	lea	rdi, [rdi]
	not	rax
	lea	rsi, [rsi]
	add	rbp, rbx
	mov	rbp, rbp
	cmp	rbx, rax
	cmovae	rbp, r14
	mov	rsp, rsp
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rsi, rbp
	call	realloc
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbx, rbp
	nop	
	jne	.label_342
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	nop	
	jmp	.label_337
.label_336:
	call	__errno_location
	mov	rsp, rsp
	mov	rbp, rax
	mov	rsp, rsp
	mov	r14d, dword ptr [rbp]
	nop	
	mov	rdi, r15
	call	ferror
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	jne	.label_337
	lea	rsi, [rsi]
	dec	rbx
	cmp	r13, rbx
	jae	.label_339
	lea	rsi, [r13 + 1]
	mov	rdi, r12
	call	realloc
	test	rax, rax
	mov	rbp, rbp
	cmovne	r12, rax
.label_339:
	nop	
	mov	rax, qword ptr [rsp + 0x90]
	mov	byte ptr [r12 + r13], 0
	mov	rbp, rbp
	mov	qword ptr [rax], r13
	mov	rbp, rbp
	mov	r13, r12
	jmp	.label_334
.label_338:
	mov	r14d, 0xc
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
.label_337:
	mov	rdi, r12
	nop	
	call	free
	mov	dword ptr [rbp], r14d
.label_341:
	xor	r13d, r13d
.label_334:
	mov	rax, r13
	mov	rbp, rbp
	add	rsp, 0x98
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
.label_340:
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xc
	jmp	.label_341
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4071c0
	.globl read_file
	.type read_file, @function
read_file:

	push	rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	rbx
	nop	
	push	rax
	lea	rdi, [rdi]
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_2
	call	fopen
	mov	rbx, rax
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_343
	mov	rdi, rbx
	mov	rsi, r14
	call	fread_file
	mov	r15, rax
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	mov	rbp, rbp
	call	rpl_fclose
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_343
	test	r15, r15
	je	.label_344
	nop	
	mov	ebp, dword ptr [r14]
	mov	rdi, r15
	mov	rsp, rsp
	call	free
.label_344:
	lea	rdi, [rdi]
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	xor	r15d, r15d
.label_343:
	mov	rsp, rsp
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x407250
	.globl read_binary_file
	.type read_binary_file, @function
read_binary_file:

	nop
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	esi, OFFSET FLAT:.str.1_1
	mov	rbp, rbp
	call	fopen
	mov	rbx, rax
	xor	r15d, r15d
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_345
	lea	rsi, [rsi]
	mov	rdi, rbx
	nop	
	mov	rsi, r14
	nop	
	call	fread_file
	mov	r15, rax
	call	__errno_location
	nop	
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	rpl_fclose
	test	eax, eax
	je	.label_345
	test	r15, r15
	je	.label_346
	mov	rsp, rsp
	mov	ebp, dword ptr [r14]
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsp, rsp
	call	free
.label_346:
	lea	rdi, [rdi]
	mov	dword ptr [r14], ebp
	xor	r15d, r15d
.label_345:
	mov	rax, r15
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4072f0

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
	je	.label_355
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
	jmp	.label_356
.label_355:
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
.label_356:
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
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_349]]
.label_741:
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
.label_352:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_348
.label_742:
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
.label_743:
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
.label_744:
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
	jmp	.label_353
.label_745:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
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
	jmp	.label_351
.label_746:
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
	jmp	.label_350
.label_747:
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
.label_350:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_351:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_353:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_347
.label_749:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_348:
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
	jmp	.label_354
.label_748:
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
.label_354:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_347:
	mov	rbp, rbp
	call	__fprintf_chk
.label_740:
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
	#Procedure 0x4076e0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_357:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_357
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407710
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_360:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_358
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_361
	nop	word ptr cs:[rax + rax]
.label_358:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_361:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_359
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_360
.label_359:
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
	#Procedure 0x4077a0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_362
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
.label_362:
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
.label_364:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_363
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_365
	nop	dword ptr [rax + rax]
.label_363:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_365:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_366
	inc	r9
	cmp	r9, 0xa
	jb	.label_364
.label_366:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4078e0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_0
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
	#Procedure 0x407970
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
	jb	.label_367
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_368
	test	rax, rax
	je	.label_367
.label_368:
	nop	
	pop	rbx
	ret	
.label_367:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4079c0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_369
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_370
.label_369:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_370:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4079f0
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
	jb	.label_372
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_371
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_371
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_371:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_373
	test	rax, rax
	je	.label_372
.label_373:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_372:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407a70

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_374
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_374
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_374:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_375
	test	rax, rax
	nop	
	je	.label_376
.label_375:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_376:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ac0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_377
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_381
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_380
.label_377:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_383
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_383:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_378
.label_380:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_379
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_379
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_379:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_382
	test	rax, rax
	mov	rbp, rbp
	je	.label_381
.label_382:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_381:
	call	xalloc_die
.label_378:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ba0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_385
	test	rax, rax
	mov	rbp, rbp
	je	.label_384
.label_385:
	pop	rbx
	ret	
.label_384:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x407bc0

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
	jae	.label_389
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_390
	call	free
	xor	eax, eax
	jmp	.label_387
.label_386:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_388
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_390:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_387
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_388
.label_387:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_388:
	mov	rbp, rbp
	call	xalloc_die
.label_389:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407c50
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
	je	.label_391
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_392
.label_391:
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
.label_392:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407cb0

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
	jb	.label_393
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_393
	pop	rcx
	ret	
.label_393:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x407ce0

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
	je	.label_395
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_394
.label_395:
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
.label_394:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407d40
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
	je	.label_396
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_397
.label_396:
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
.label_397:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x407da0

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
	#Procedure 0x407df0

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
	mov	r13, rdx
	mov	eax, esi
	mov	r12, rdi
	lea	rcx, [rsp]
	nop	
	xor	esi, esi
	mov	edx, eax
	call	xstrtoumax
	test	eax, eax
	je	.label_399
	cmp	eax, 1
	je	.label_402
	mov	rbp, rbp
	cmp	eax, 3
	nop	
	jne	.label_401
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0
	lea	rsi, [rsi]
	jmp	.label_398
.label_402:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	lea	rdi, [rdi]
	jmp	.label_398
.label_399:
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jb	.label_404
	lea	rdi, [rdi]
	cmp	rbx, r15
	jbe	.label_400
.label_404:
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	cmp	rbx, 0x40000000
	jb	.label_403
	mov	dword ptr [rax], 0x4b
	mov	rbp, rbp
	jmp	.label_398
.label_401:
	call	__errno_location
	nop	
	jmp	.label_398
.label_403:
	mov	dword ptr [rax], 0x22
.label_398:
	mov	ecx, dword ptr [rsp + 0x40]
	nop	
	test	ecx, ecx
	mov	ebx, 1
	cmovne	ebx, ecx
	mov	ebp, dword ptr [rax]
	xor	eax, eax
	cmp	ebp, 0x16
	cmove	ebp, eax
	mov	rdi, r12
	call	quote
	nop	
	mov	r8, rax
	mov	edx, OFFSET FLAT:.str_4
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edi, ebx
	lea	rdi, [rdi]
	mov	esi, ebp
	nop	
	mov	rcx, r14
	mov	rsp, rsp
	call	error
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp]
.label_400:
	mov	rax, rbx
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407f10

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
	.align	16
	#Procedure 0x407f50

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
	jae	.label_426
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
.label_421:
	mov	rbp, rbp
	movzx	eax, byte ptr [rdx]
	inc	rdx
	mov	rbp, rbp
	test	byte ptr [rcx + rax*2 + 1], 0x20
	lea	rdi, [rdi]
	jne	.label_421
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
	je	.label_419
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
	je	.label_407
	mov	eax, dword ptr [r15]
	lea	rsi, [rsi]
	xor	ebx, ebx
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_415
	cmp	eax, 0x22
	lea	rsi, [rsi]
	jne	.label_419
	mov	ebx, 1
.label_415:
	test	r14, r14
	jne	.label_423
	mov	rbp, rbp
	jmp	.label_412
.label_407:
	mov	rsp, rsp
	test	r14, r14
	je	.label_419
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	lea	rdi, [rdi]
	je	.label_419
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
	je	.label_419
.label_423:
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
	je	.label_408
	mov	rsp, rsp
	mov	r15d, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_405
	movabs	rdx, 0x814400308945
	lea	rsi, [rsi]
	bt	rdx, rax
	lea	rdi, [rdi]
	jae	.label_405
	mov	esi, 0x30
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strchr
	nop	
	mov	r15d, 1
	mov	rbp, rbp
	mov	esi, 0x400
	test	rax, rax
	je	.label_405
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
	jne	.label_405
	mov	rbp, rbp
	movzx	eax, byte ptr [r12 + 2]
	lea	rsi, [rsi]
	mov	r15d, 3
	cmp	eax, 0x42
	je	.label_422
	mov	r15d, 1
.label_422:
	lea	rdi, [rdi]
	mov	esi, 0x400
	mov	rsp, rsp
	jmp	.label_405
.label_414:
	mov	r15d, 2
	nop	
	mov	esi, 0x3e8
.label_405:
	cmp	r13d, 0x59
	jg	.label_427
	lea	eax, [r13 - 0x42]
	mov	rbp, rbp
	cmp	eax, 0xe
	ja	.label_429
	jmp	qword ptr [word ptr [+ (rax * 8) + label_406]]
.label_750:
	nop	
	mov	rax, rbp
	shr	rax, 0x36
	setne	dl
	mov	rsp, rsp
	shl	rbp, 0xa
	jmp	.label_410
.label_427:
	cmp	r13d, 0x73
	mov	rbp, rbp
	jg	.label_416
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	ja	.label_420
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_424]]
.label_789:
	nop	
	mov	rax, rbp
	shr	rax, 0x37
	setne	dl
	shl	rbp, 9
.label_410:
	cmp	rax, 1
	mov	rbp, rbp
	sbb	rax, rax
	not	rax
	lea	rdi, [rdi]
	or	rbp, rax
	movzx	eax, dl
	jmp	.label_425
.label_429:
	lea	rdi, [rdi]
	cmp	r13d, 0x54
	lea	rdi, [rdi]
	je	.label_411
	mov	rbp, rbp
	cmp	r13d, 0x59
	jne	.label_408
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
	jmp	.label_409
.label_416:
	nop	
	cmp	r13d, 0x74
	mov	rbp, rbp
	je	.label_411
	mov	rsp, rsp
	cmp	r13d, 0x77
	jne	.label_408
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
	jmp	.label_425
.label_752:
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
	jmp	.label_418
.label_753:
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
	jmp	.label_417
.label_754:
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
	jmp	.label_418
.label_411:
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
	jmp	.label_418
.label_420:
	cmp	r13d, 0x5a
	lea	rdi, [rdi]
	jne	.label_408
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
.label_409:
	lea	rsi, [rsi]
	movzx	eax, dl
	and	eax, 1
	jmp	.label_417
.label_408:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rax], rbp
	or	ebx, 2
	mov	rsp, rsp
	jmp	.label_413
.label_751:
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
.label_418:
	lea	rdi, [rdi]
	and	dl, 1
	lea	rsi, [rsi]
	movzx	eax, dl
.label_417:
	mov	rbp, rsi
.label_425:
	or	eax, ebx
	nop	
	lea	rcx, [r12 + r15]
	mov	rdx, qword ptr [rsp]
	mov	rbp, rbp
	mov	qword ptr [rdx], rcx
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + r15], 0
	mov	rbp, rbp
	je	.label_428
	or	eax, 2
.label_428:
	mov	ebx, eax
.label_412:
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	qword ptr [rax], rbp
.label_413:
	mov	r13d, ebx
.label_419:
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
.label_755:
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
	jmp	.label_417
.label_426:
	mov	edi, OFFSET FLAT:.str_8
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoul
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408830

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
	mov	r14, r8
	nop	
	mov	r12d, edx
	mov	rsp, rsp
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_443
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rcx
	call	__errno_location
	lea	rsi, [rsi]
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	dword ptr [rax]
.label_436:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	lea	rdi, [rdi]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_436
	mov	rbp, rbp
	test	rbp, rbp
	lea	rsi, [rsp + 8]
	cmovne	rsi, rbp
	nop	
	movzx	eax, al
	mov	rbp, rbp
	mov	r13d, 4
	cmp	eax, 0x2d
	mov	rsp, rsp
	je	.label_432
	mov	dword ptr [rsp + 4], 0
	xor	ecx, ecx
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rbp, rsi
	lea	rdi, [rdi]
	mov	edx, r12d
	call	__strtoul_internal
	nop	
	mov	rcx, rbp
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	r12, qword ptr [rcx]
	nop	
	cmp	r12, rbx
	nop	
	je	.label_452
	mov	eax, dword ptr [r15]
	test	eax, eax
	mov	rsp, rsp
	je	.label_455
	mov	rsp, rsp
	cmp	eax, 0x22
	jne	.label_432
	mov	dword ptr [rsp + 4], 1
.label_455:
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_439
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbp
	mov	r13d, dword ptr [rsp + 4]
	lea	rsi, [rsi]
	jmp	.label_432
.label_452:
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_432
	movsx	esi, byte ptr [rbx]
	lea	rsi, [rsi]
	test	esi, esi
	lea	rsi, [rsi]
	je	.label_432
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	mov	rbx, rcx
	call	strchr
	mov	rsp, rsp
	mov	rcx, rbx
	mov	dword ptr [rsp + 4], 0
	mov	ebp, 1
	test	rax, rax
	je	.label_432
.label_439:
	lea	rdi, [rdi]
	movsx	r13d, byte ptr [r12]
	mov	rbp, rbp
	test	r13d, r13d
	mov	rsp, rsp
	je	.label_430
	lea	rdi, [rdi]
	mov	r15, rcx
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rbp, rbp
	mov	esi, r13d
	call	strchr
	mov	rsp, rsp
	test	rax, rax
	mov	rsp, rsp
	je	.label_438
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_444
	nop	
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_444
	lea	rdi, [rdi]
	mov	esi, 0x30
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strchr
	mov	rbp, rbp
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	test	rax, rax
	mov	rsp, rsp
	je	.label_444
	movsx	eax, byte ptr [r12 + 1]
	lea	rdi, [rdi]
	mov	ecx, 1
	nop	
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_434
	cmp	eax, 0x44
	nop	
	je	.label_434
	cmp	eax, 0x69
	jne	.label_444
	movzx	eax, byte ptr [r12 + 2]
	mov	rbp, rbp
	mov	ecx, 3
	cmp	eax, 0x42
	je	.label_445
	lea	rdi, [rdi]
	mov	ecx, 1
.label_445:
	mov	rsp, rsp
	mov	esi, 0x400
	jmp	.label_444
.label_430:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_451
.label_434:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_444:
	cmp	r13d, 0x59
	lea	rdi, [rdi]
	jg	.label_456
	mov	rsp, rsp
	lea	eax, [r13 - 0x42]
	nop	
	cmp	eax, 0xe
	nop	
	ja	.label_433
	jmp	qword ptr [word ptr [+ (rax * 8) + label_437]]
.label_717:
	mov	rax, rbp
	mov	rsp, rsp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_440
.label_456:
	lea	rsi, [rsi]
	cmp	r13d, 0x73
	mov	rsp, rsp
	jg	.label_442
	mov	rbp, rbp
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	mov	rbp, rbp
	ja	.label_446
	mov	rsp, rsp
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_449]]
.label_803:
	mov	rax, rbp
	shr	rax, 0x37
	lea	rsi, [rsi]
	setne	dl
	nop	
	shl	rbp, 9
.label_440:
	cmp	rax, 1
	nop	
	sbb	rax, rax
	lea	rdi, [rdi]
	not	rax
	or	rbp, rax
	lea	rdi, [rdi]
	movzx	eax, dl
	nop	
	jmp	.label_441
.label_433:
	cmp	r13d, 0x54
	nop	
	je	.label_435
	cmp	r13d, 0x59
	mov	rsp, rsp
	jne	.label_438
	nop	
	mov	rdi, -1
	mov	rax, -1
	lea	rsi, [rsi]
	xor	edx, edx
	div	rsi
	mov	rbp, rbp
	cmp	rax, rbp
	lea	rsi, [rsi]
	sbb	r8b, r8b
	mov	rbp, rbp
	mov	rbx, rbp
	imul	rbx, rsi
	lea	rdi, [rdi]
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	lea	rdi, [rdi]
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	lea	rdi, [rdi]
	sbb	r9b, r9b
	mov	rbp, rbp
	mov	rbx, rbp
	lea	rsi, [rsi]
	imul	rbx, rsi
	lea	rdi, [rdi]
	cmp	rax, rbp
	mov	rsp, rsp
	cmovb	rbx, rdi
	lea	rsi, [rsi]
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	lea	rsi, [rsi]
	cmovb	rbp, rdi
	mov	rbp, rbp
	cmp	rax, rbp
	sbb	r11b, r11b
	lea	rdi, [rdi]
	mov	rbx, rbp
	mov	rsp, rsp
	imul	rbx, rsi
	cmp	rax, rbp
	mov	rbp, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	nop	
	sbb	r14b, r14b
	mov	rbp, rbx
	lea	rdi, [rdi]
	imul	rbp, rsi
	cmp	rax, rbx
	mov	rsp, rsp
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r13b, r13b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	lea	rsi, [rsi]
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	mov	rsp, rsp
	cmovb	rsi, rdi
	or	dl, r8b
	lea	rsi, [rsi]
	or	dl, r9b
	lea	rdi, [rdi]
	or	dl, r10b
	mov	rsp, rsp
	or	dl, r11b
	lea	rsi, [rsi]
	and	dl, 1
	lea	rdi, [rdi]
	or	dl, r14b
	or	dl, r13b
	or	dl, bpl
	jmp	.label_454
.label_442:
	cmp	r13d, 0x74
	je	.label_435
	mov	rbp, rbp
	cmp	r13d, 0x77
	mov	rbp, rbp
	jne	.label_438
	lea	rdi, [rdi]
	lea	rax, [rbp + rbp]
	lea	rsi, [rsi]
	test	rbp, rbp
	lea	rsi, [rsi]
	mov	rdx, -1
	nop	
	cmovns	rdx, rax
	lea	rdi, [rdi]
	shr	rbp, 0x3f
	lea	rsi, [rsi]
	mov	eax, ebp
	mov	rbp, rdx
	jmp	.label_441
.label_719:
	nop	
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	nop	
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	nop	
	sbb	dl, dl
	nop	
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rbx
	cmovb	rbp, rdi
	mov	rbp, rbp
	cmp	rax, rbp
	sbb	bl, bl
	lea	rdi, [rdi]
	imul	rsi, rbp
	cmp	rax, rbp
	nop	
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_448
.label_720:
	mov	rdi, -1
	mov	rax, -1
	mov	rbp, rbp
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	mov	rbp, rbp
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rsi, rdi
	nop	
	sbb	eax, eax
	mov	rsp, rsp
	and	eax, 1
	nop	
	jmp	.label_450
.label_721:
	mov	rbp, rbp
	mov	rdi, -1
	lea	rdi, [rdi]
	mov	rax, -1
	lea	rsi, [rsi]
	xor	edx, edx
	div	rsi
	nop	
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	lea	rdi, [rdi]
	imul	rbx, rsi
	cmp	rax, rbp
	mov	rsp, rsp
	cmovb	rbx, rdi
	nop	
	cmp	rax, rbx
	nop	
	sbb	dl, dl
	lea	rsi, [rsi]
	imul	rsi, rbx
	nop	
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_431
.label_435:
	mov	rsp, rsp
	mov	r9, -1
	mov	rax, -1
	mov	rbp, rbp
	xor	edx, edx
	div	rsi
	nop	
	cmp	rax, rbp
	mov	rbp, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	mov	rbp, rbp
	cmp	rax, rbp
	cmovb	rbx, r9
	mov	rbp, rbp
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rsp, rsp
	mov	rdi, rbp
	imul	rdi, rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	mov	rbp, rbp
	sbb	bl, bl
	imul	rsi, rdi
	lea	rdi, [rdi]
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	jmp	.label_453
.label_446:
	cmp	r13d, 0x5a
	jne	.label_438
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	lea	rsi, [rsi]
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	nop	
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	lea	rdi, [rdi]
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	nop	
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rsp, rsp
	cmp	rax, rbx
	lea	rdi, [rdi]
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	nop	
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	nop	
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	mov	rbp, rbp
	imul	rsi, rbp
	cmp	rax, rbp
	mov	rsp, rsp
	cmovb	rsi, rdi
	mov	rbp, rbp
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	mov	rbp, rbp
	or	dl, r14b
	lea	rsi, [rsi]
	or	dl, bl
.label_454:
	movzx	eax, dl
	mov	rsp, rsp
	and	eax, 1
	lea	rsi, [rsi]
	jmp	.label_450
.label_438:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax], rbp
	mov	eax, dword ptr [rsp + 4]
	or	eax, 2
	lea	rdi, [rdi]
	mov	r13d, eax
	jmp	.label_432
.label_718:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	mov	rsp, rsp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	mov	rsp, rsp
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	lea	rsi, [rsi]
	cmp	rax, rbp
	sbb	r9b, r9b
	nop	
	mov	rbx, rbp
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rbp, rbp
	cmp	rax, rbp
	mov	rsp, rsp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	lea	rdi, [rdi]
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rbx, rdi
	mov	rbp, rbp
	cmp	rax, rbx
	sbb	bpl, bpl
	lea	rsi, [rsi]
	imul	rsi, rbx
	cmp	rax, rbx
	nop	
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	lea	rdi, [rdi]
	or	dl, r10b
	or	dl, r11b
	or	dl, bpl
	nop	
	jmp	.label_431
.label_722:
	mov	rdi, -1
	mov	rax, -1
	nop	
	xor	edx, edx
	mov	rsp, rsp
	div	rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbp, rbp
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rbx
	lea	rsi, [rsi]
	cmovb	rbp, rdi
	cmp	rax, rbp
	lea	rsi, [rsi]
	sbb	r9b, r9b
	mov	rbp, rbp
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	lea	rsi, [rsi]
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rbx
	nop	
	cmovb	rbp, rdi
	mov	rbp, rbp
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	lea	rsi, [rsi]
	cmp	rax, rbp
	nop	
	cmovb	rsi, rdi
	or	dl, r8b
	lea	rdi, [rdi]
	or	dl, r9b
.label_453:
	or	dl, r10b
.label_448:
	lea	rsi, [rsi]
	or	dl, bl
.label_431:
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
.label_450:
	mov	rsp, rsp
	mov	rbp, rsi
.label_441:
	lea	rsi, [rsi]
	or	eax, dword ptr [rsp + 4]
	lea	rdx, [r12 + rcx]
	mov	qword ptr [r15], rdx
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + rcx], 0
	je	.label_447
	or	eax, 2
.label_447:
	lea	rdi, [rdi]
	mov	r13d, eax
	mov	rax, qword ptr [rsp + 0x10]
.label_451:
	mov	qword ptr [rax], rbp
.label_432:
	nop	
	mov	eax, r13d
	mov	rbp, rbp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_443:
	mov	edi, OFFSET FLAT:.str_8
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0x54
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4090f0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_457
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_458
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
	je	.label_458
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
.label_457:
	mov	ecx, 1
.label_458:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409160

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	mov	rax, rsi
	xor	esi, esi
	mov	rdx, rax
	lea	rdi, [rdi]
	jmp	memset
	.section	.text
	.align	16
	#Procedure 0x409170

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
	js	.label_459
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_460
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
	je	.label_459
.label_460:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_459
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_461
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_461:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_459:
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
	#Procedure 0x409220

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_462
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_462
	test	byte ptr [rbx + 1], 1
	je	.label_462
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_462:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409260

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
	je	.label_463
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_463
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
	jns	.label_463
	call	__errno_location
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 9
	jne	.label_463
	nop	
	mov	edi, OFFSET FLAT:.str_5
	mov	rbp, rbp
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	mov	rsp, rsp
	je	.label_464
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
	js	.label_463
.label_464:
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
.label_463:
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
	#Procedure 0x409340

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
	jne	.label_465
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_465
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_466
.label_465:
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
.label_466:
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
	je	.label_467
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_467:
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
	#Procedure 0x4093f0

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
	je	.label_468
	nop	
	cmp	r15, -2
	jb	.label_468
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_468
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_468:
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
	#Procedure 0x409480

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
	jne	.label_469
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_470
	test	cl, cl
	mov	rsp, rsp
	jne	.label_470
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_470
.label_469:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_470
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_470:
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
	#Procedure 0x409510

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
	je	.label_471
	mov	rsp, rsp
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_472
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	call	dup_safer
	mov	rsp, rsp
	mov	ebp, eax
	test	ebp, ebp
	js	.label_474
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fclose
	mov	rbp, rbp
	test	eax, eax
	jne	.label_473
	mov	rsp, rsp
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r14
	call	fdopen
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_471
.label_473:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbx], r14d
	mov	rbp, rbp
	jmp	.label_475
.label_472:
	mov	rax, rbx
	mov	rsp, rsp
	jmp	.label_471
.label_474:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_475:
	xor	eax, eax
.label_471:
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
	#Procedure 0x4095f0

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
	je	.label_477
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_476
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_478
.label_476:
	nop	
	mov	esi, OFFSET FLAT:.str.1_6
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_477
.label_478:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_477:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409640
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409650
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409660
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409670
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	nop	
	mov	rdx, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	cmp	rcx, rdx
	jae	.label_485
	mov	rdi, rcx
	not	rdi
	nop	
	add	rdi, rdx
	mov	rsi, rdi
	mov	rbp, rbp
	shr	rsi, 4
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	bt	rdi, 4
	jb	.label_481
	xor	eax, eax
	nop	
	cmp	qword ptr [rcx], 0
	mov	rsp, rsp
	je	.label_482
	mov	rbp, rbp
	mov	rdi, rcx
	nop	dword ptr [rax]
.label_479:
	nop	
	mov	rdi, qword ptr [rdi + 8]
	inc	rax
	mov	rsp, rsp
	test	rdi, rdi
	lea	rdi, [rdi]
	jne	.label_479
.label_482:
	add	rcx, 0x10
.label_481:
	nop	
	test	rsi, rsi
	je	.label_485
	nop	word ptr cs:[rax + rax]
.label_483:
	cmp	qword ptr [rcx], 0
	nop	
	mov	esi, 0
	mov	rdi, rcx
	mov	rbp, rbp
	je	.label_486
	nop	word ptr cs:[rax + rax]
.label_487:
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_487
	mov	rbp, rbp
	cmp	rsi, rax
	lea	rsi, [rsi]
	cmova	rax, rsi
.label_486:
	cmp	qword ptr [rcx + 0x10], 0
	nop	
	je	.label_484
	lea	rdi, [rcx + 0x10]
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_480:
	mov	rdi, qword ptr [rdi + 8]
	mov	rbp, rbp
	inc	rsi
	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rsi, [rsi]
	jne	.label_480
	mov	rsp, rsp
	cmp	rsi, rax
	nop	
	cmova	rax, rsi
.label_484:
	mov	rsp, rsp
	add	rcx, 0x20
	mov	rsp, rsp
	cmp	rcx, rdx
	mov	rsp, rsp
	jb	.label_483
.label_485:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409780
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rbp, rbp
	mov	rcx, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rsp, rsp
	cmp	rcx, r9
	mov	esi, 0
	jae	.label_488
	mov	rbp, rbp
	mov	rax, rcx
	mov	rbp, rbp
	not	rax
	lea	rdi, [rdi]
	add	rax, r9
	mov	rbp, rbp
	mov	r8, rax
	shr	r8, 4
	lea	rdi, [rdi]
	xor	edx, edx
	bt	rax, 4
	jb	.label_492
	xor	edx, edx
	cmp	qword ptr [rcx], 0
	mov	rsp, rsp
	je	.label_489
	mov	esi, 1
	mov	rax, rcx
	nop	dword ptr [rax + rax]
.label_500:
	mov	rbp, rbp
	inc	rdx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	test	rax, rax
	jne	.label_500
	mov	rsp, rsp
	jmp	.label_497
.label_492:
	mov	rbp, rbp
	xor	esi, esi
	jmp	.label_499
.label_489:
	xor	esi, esi
.label_497:
	add	rcx, 0x10
.label_499:
	test	r8, r8
	nop	
	je	.label_488
	nop	dword ptr [rax]
.label_494:
	cmp	qword ptr [rcx], 0
	mov	rbp, rbp
	mov	rax, rcx
	je	.label_491
	nop	dword ptr [rax]
.label_490:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	jne	.label_490
	lea	rdi, [rdi]
	inc	rsi
.label_491:
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_498
	lea	rax, [rcx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_493:
	lea	rdi, [rdi]
	inc	rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_493
	inc	rsi
.label_498:
	add	rcx, 0x20
	cmp	rcx, r9
	jb	.label_494
.label_488:
	cmp	rsi, qword ptr [rdi + 0x18]
	jne	.label_495
	lea	rdi, [rdi]
	mov	al, 1
	nop	
	cmp	rdx, qword ptr [rdi + 0x20]
	lea	rsi, [rsi]
	je	.label_496
.label_495:
	xor	eax, eax
.label_496:
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409890
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	lea	rsi, [rsi]
	push	r15
	mov	rbp, rbp
	push	r14
	lea	rsi, [rsi]
	push	r12
	nop	
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rbp, rbp
	mov	r15, rsi
	mov	rcx, qword ptr [rdi + 0x20]
	mov	rbp, rbp
	mov	r12, qword ptr [rdi + 0x10]
	mov	r14, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	xor	ebx, ebx
	cmp	rax, rdx
	lea	rdi, [rdi]
	jae	.label_510
	mov	rsp, rsp
	mov	rdi, rax
	not	rdi
	mov	rbp, rbp
	add	rdi, rdx
	lea	rsi, [rsi]
	mov	rsi, rdi
	mov	rsp, rsp
	shr	rsi, 4
	mov	rsp, rsp
	xor	ebx, ebx
	bt	rdi, 4
	mov	rbp, rbp
	jb	.label_511
	mov	rbp, rbp
	xor	ebx, ebx
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_501
	mov	rsp, rsp
	mov	rdi, rax
	nop	word ptr [rax + rax]
.label_508:
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 8]
	inc	rbx
	nop	
	test	rdi, rdi
	lea	rdi, [rdi]
	jne	.label_508
.label_501:
	add	rax, 0x10
.label_511:
	test	rsi, rsi
	je	.label_510
	nop	dword ptr [rax]
.label_506:
	cmp	qword ptr [rax], 0
	mov	esi, 0
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	je	.label_502
	nop	word ptr cs:[rax + rax]
.label_507:
	mov	rdi, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	inc	rsi
	nop	
	test	rdi, rdi
	jne	.label_507
	mov	rbp, rbp
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_502:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_512
	lea	rdi, [rax + 0x10]
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_509:
	mov	rdi, qword ptr [rdi + 8]
	mov	rsp, rsp
	inc	rsi
	test	rdi, rdi
	jne	.label_509
	mov	rbp, rbp
	cmp	rsi, rbx
	mov	rbp, rbp
	cmova	rbx, rsi
.label_512:
	add	rax, 0x20
	nop	
	cmp	rax, rdx
	jb	.label_506
.label_510:
	lea	rsi, [rsi]
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_9
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_7
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	nop	
	call	__fprintf_chk
	nop	
	movq	xmm1, r14
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_503]]
	punpckldq	xmm1, xmm2
	lea	rsi, [rsi]
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_504]]
	nop	
	subpd	xmm1, xmm3
	lea	rdi, [rdi]
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	lea	rsi, [rsi]
	mulsd	xmm0,  qword ptr [word ptr [rip + label_505]]
	mov	rsp, rsp
	movq	xmm1, r12
	mov	rbp, rbp
	punpckldq	xmm1, xmm2
	mov	rbp, rbp
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	mov	rsp, rsp
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.2_3
	mov	al, 1
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	lea	rsi, [rsi]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_2
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rcx, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409aa0
	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:

	mov	rsp, rsp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r12
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r12, rsi
	mov	rsp, rsp
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_515
	mov	rbx, qword ptr [r14]
	nop	
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	mov	rsp, rsp
	test	rsi, rsi
	je	.label_513
	lea	rsi, [rsi]
	add	rbx, rax
	je	.label_513
	cmp	rsi, r12
	je	.label_516
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_517:
	nop	
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_514
	nop	
	mov	rbx, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_513
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx]
	nop	
	cmp	rsi, r12
	lea	rdi, [rdi]
	jne	.label_517
.label_516:
	mov	r15, r12
	jmp	.label_513
.label_514:
	nop	
	mov	r15, qword ptr [rbx]
.label_513:
	lea	rsi, [rsi]
	mov	rax, r15
	nop	
	add	rsp, 8
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	ret	
.label_515:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409b60
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	mov	rbp, rbp
	je	.label_518
	nop	
	mov	rcx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdi + 8]
	mov	rbp, rbp
	jmp	.label_521
	nop	dword ptr [rax]
.label_519:
	add	rcx, 0x10
.label_521:
	cmp	rcx, rdx
	jae	.label_520
	mov	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_519
.label_518:
	mov	rsp, rsp
	ret	
.label_520:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x409ba0
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	mov	rsp, rsp
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rbp, rbp
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	cmp	rax, qword ptr [r14 + 0x10]
	mov	rsp, rsp
	jae	.label_527
	nop	
	mov	rcx, qword ptr [r14]
	lea	rdi, [rdi]
	shl	rax, 4
	nop	
	lea	rdx, [rcx + rax]
	nop	word ptr [rax + rax]
.label_524:
	nop	
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	je	.label_522
	test	rdx, rdx
	jne	.label_524
	lea	rdi, [rdi]
	jmp	.label_523
.label_522:
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_523
	mov	rax, qword ptr [rdx]
	jmp	.label_525
.label_523:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rax + rcx + 0x10]
	nop	dword ptr [rax]
.label_526:
	mov	rbp, rbp
	cmp	rcx, rdx
	mov	eax, 0
	mov	rbp, rbp
	jae	.label_525
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_526
.label_525:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_527:
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409c40
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	nop
	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_528
	nop	word ptr cs:[rax + rax]
.label_530:
	add	r9, 0x10
.label_528:
	nop	
	cmp	r9, r8
	lea	rdi, [rdi]
	jae	.label_529
	lea	rsi, [rsi]
	cmp	qword ptr [r9], 0
	je	.label_530
	test	r9, r9
	mov	rbp, rbp
	mov	r10, r9
	mov	rbp, rbp
	je	.label_530
	nop	word ptr cs:[rax + rax]
.label_531:
	mov	rsp, rsp
	cmp	rax, rdx
	jae	.label_529
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r10]
	nop	
	mov	qword ptr [rsi + rax*8], rcx
	lea	rdi, [rdi]
	inc	rax
	mov	rsp, rsp
	mov	r10, qword ptr [r10 + 8]
	test	r10, r10
	nop	
	jne	.label_531
	mov	r8, qword ptr [rdi + 8]
	jmp	.label_530
.label_529:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409cc0
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	r15, rsi
	mov	r12, rdi
	mov	r13, qword ptr [r12]
	mov	rax, qword ptr [r12 + 8]
	xor	ebx, ebx
	mov	rsp, rsp
	jmp	.label_532
	nop	dword ptr [rax]
.label_533:
	lea	rsi, [rsi]
	add	r13, 0x10
.label_532:
	nop	
	cmp	r13, rax
	lea	rsi, [rsi]
	jae	.label_534
	mov	rdi, qword ptr [r13]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_533
	test	r13, r13
	lea	rdi, [rdi]
	je	.label_533
	mov	rsi, r14
	lea	rsi, [rsi]
	call	r15
	mov	rbp, rbp
	test	al, al
	mov	rbp, r13
	mov	rsp, rsp
	je	.label_534
	nop	word ptr [rax + rax]
.label_536:
	mov	rsp, rsp
	inc	rbx
	mov	rbp, rbp
	mov	rbp, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	test	rbp, rbp
	je	.label_535
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_536
	jmp	.label_534
	nop	word ptr cs:[rax + rax]
.label_535:
	mov	rax, qword ptr [r12 + 8]
	mov	rbp, rbp
	jmp	.label_533
.label_534:
	nop	
	mov	rax, rbx
	nop	
	add	rsp, 8
	pop	rbx
	nop	
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d90
	.globl hash_string
	.type hash_string, @function
hash_string:

	nop
	mov	al, byte ptr [rdi]
	nop	
	xor	edx, edx
	test	al, al
	je	.label_538
	inc	rdi
	nop	
	xor	edx, edx
.label_537:
	mov	rcx, rdx
	nop	
	shl	rcx, 5
	sub	rcx, rdx
	nop	
	movzx	eax, al
	add	rax, rcx
	lea	rsi, [rsi]
	xor	edx, edx
	div	rsi
	mov	al, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_537
.label_538:
	mov	rax, rdx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409dd0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	nop
	mov	eax,  dword ptr [dword ptr [rip + label_539]]
	mov	dword ptr [rdi + 0x10], eax
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409df0

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rsi, [rsi]
	mov	r14, r8
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	r12, rdi
	lea	rdi, [rdi]
	test	rdx, rdx
	mov	r13d, OFFSET FLAT:raw_hasher
	lea	rdi, [rdi]
	cmovne	r13, rdx
	test	rcx, rcx
	mov	rsp, rsp
	mov	ebp, OFFSET FLAT:raw_comparator
	lea	rdi, [rdi]
	cmovne	rbp, rcx
	mov	edi, 0x50
	mov	rsp, rsp
	call	malloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	test	r15, r15
	je	.label_540
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	mov	rbp, rbp
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_550
	movss	xmm0, dword ptr [rbx + 8]
	mov	rsp, rsp
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_548]]
	jbe	.label_545
	lea	rsi, [rsi]
	movss	xmm1,  dword ptr [dword ptr [rip + label_546]]
	ucomiss	xmm1, xmm0
	jbe	.label_545
	mov	rbp, rbp
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_553]]
	lea	rsi, [rsi]
	jbe	.label_545
	movss	xmm1, dword ptr [rbx]
	lea	rsi, [rsi]
	xorps	xmm2, xmm2
	lea	rsi, [rsi]
	ucomiss	xmm1, xmm2
	jb	.label_545
	addss	xmm1,  dword ptr [dword ptr [rip + label_548]]
	ucomiss	xmm0, xmm1
	lea	rdi, [rdi]
	jbe	.label_545
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbx + 4]
	lea	rdi, [rdi]
	movss	xmm2,  dword ptr [dword ptr [rip + label_555]]
	ucomiss	xmm2, xmm0
	jb	.label_545
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	mov	rsp, rsp
	jbe	.label_545
.label_550:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_547
	lea	rsi, [rsi]
	mov	eax, r12d
	and	eax, 1
	nop	
	test	r12, r12
	js	.label_549
	mov	rbp, rbp
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_554
.label_549:
	shr	r12, 1
	mov	rsp, rsp
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	lea	rdi, [rdi]
	addss	xmm0, xmm0
.label_554:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_543]]
	mov	rbp, rbp
	movaps	xmm2, xmm0
	mov	rbp, rbp
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	mov	rbp, rbp
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	lea	rsi, [rsi]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_544]]
	nop	
	jae	.label_545
.label_547:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	mov	rsp, rsp
	jmp	.label_552
.label_551:
	mov	rbp, rbp
	add	rbx, 2
.label_552:
	cmp	rbx, -1
	mov	rbp, rbp
	je	.label_545
	cmp	rbx, 0xa
	mov	rbp, rbp
	mov	esi, 0xc
	mov	edi, 9
	mov	rbp, rbp
	mov	ecx, 3
	lea	rdi, [rdi]
	jb	.label_541
	nop	word ptr cs:[rax + rax]
.label_542:
	xor	edx, edx
	mov	rax, rbx
	lea	rsi, [rsi]
	div	rcx
	test	rdx, rdx
	nop	
	je	.label_541
	mov	rbp, rbp
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	mov	rsp, rsp
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_542
.label_541:
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_551
	mov	rbp, rbp
	mov	rax, rbx
	lea	rdi, [rdi]
	shr	rax, 0x3c
	jne	.label_545
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_545
	mov	esi, 0x10
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	rpl_calloc
	lea	rsi, [rsi]
	mov	qword ptr [r15], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_545
	mov	rsp, rsp
	shl	rbx, 4
	nop	
	add	rax, rbx
	mov	qword ptr [r15 + 8], rax
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [r15 + 0x18], xmm0
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x30], r13
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x38], rbp
	mov	qword ptr [r15 + 0x40], r14
	mov	qword ptr [r15 + 0x48], 0
	mov	rax, r15
	lea	rdi, [rdi]
	jmp	.label_540
.label_545:
	nop	
	mov	rdi, r15
	call	free
	nop	
	xor	eax, eax
.label_540:
	add	rsp, 8
	pop	rbx
	nop	
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a0d0

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	rol	rdi, 0x3d
	mov	rbp, rbp
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, rdi
	mov	rsp, rsp
	div	rsi
	lea	rdi, [rdi]
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a0f0

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	lea	rsi, [rsi]
	cmp	rdi, rsi
	sete	al
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a100
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	mov	rsp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	r15, rdi
	mov	rsp, rsp
	mov	r14, qword ptr [r15]
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_556
.label_560:
	mov	rsp, rsp
	add	r14, 0x10
.label_556:
	cmp	r14, rax
	jae	.label_558
	lea	rdi, [rdi]
	cmp	qword ptr [r14], 0
	nop	
	je	.label_560
	mov	rsp, rsp
	mov	rbx, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	nop	
	setne	cl
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_562
	nop	word ptr [rax + rax]
.label_561:
	nop	
	test	cl, 1
	je	.label_557
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	call	rax
	nop	
	mov	rax, qword ptr [r15 + 0x40]
.label_557:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	nop	
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	lea	rdi, [rdi]
	test	rdx, rdx
	mov	rbp, rbp
	mov	rbx, rdx
	lea	rdi, [rdi]
	jne	.label_561
.label_562:
	test	cl, cl
	je	.label_559
	mov	rdi, qword ptr [r14]
	call	rax
.label_559:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	nop	
	jmp	.label_560
.label_558:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a1e0

	.globl hash_free
	.type hash_free, @function
hash_free:
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rsp, rsp
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_568
	lea	rdi, [rdi]
	cmp	qword ptr [r14 + 0x20], 0
	lea	rdi, [rdi]
	je	.label_568
	mov	r15, qword ptr [r14]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 8]
	mov	rbp, rbp
	jmp	.label_564
	nop	word ptr [rax + rax]
.label_566:
	mov	rsp, rsp
	add	r15, 0x10
.label_564:
	lea	rdi, [rdi]
	cmp	r15, rax
	jae	.label_568
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_566
	test	r15, r15
	je	.label_566
	mov	rbp, rbp
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_570
	nop	dword ptr [rax]
.label_569:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_570:
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_569
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_566
.label_568:
	mov	r15, qword ptr [r14]
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	jmp	.label_571
	nop	dword ptr [rax + rax]
.label_565:
	mov	rbp, rbp
	add	r15, 0x10
.label_571:
	cmp	r15, rax
	jae	.label_563
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_565
	nop	dword ptr [rax + rax]
.label_572:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_572
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_565
.label_563:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_573
	nop	word ptr cs:[rax + rax]
.label_567:
	nop	
	mov	rbx, qword ptr [rdi + 8]
	call	free
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	jne	.label_567
.label_573:
	mov	rbp, rbp
	mov	rdi, qword ptr [r14]
	mov	rbp, rbp
	call	free
	mov	rdi, r14
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a310

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x50
	mov	r14, rdi
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x28]
	mov	rsp, rsp
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_582
	lea	rsi, [rsi]
	mov	ecx, esi
	nop	
	and	ecx, 1
	lea	rsi, [rsi]
	test	rsi, rsi
	js	.label_591
	lea	rdi, [rdi]
	cvtsi2ss	xmm0, rsi
	lea	rdi, [rdi]
	jmp	.label_581
.label_591:
	shr	rsi, 1
	or	rcx, rsi
	mov	rsp, rsp
	cvtsi2ss	xmm0, rcx
	mov	rbp, rbp
	addss	xmm0, xmm0
.label_581:
	nop	
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_543]]
	mov	rsp, rsp
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	mov	rsp, rsp
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	mov	rbp, rbp
	xor	rcx, rax
	lea	rsi, [rsi]
	cvttss2si	rsi, xmm0
	lea	rsi, [rsi]
	ucomiss	xmm0, xmm1
	mov	rbp, rbp
	cmovae	rsi, rcx
	mov	rbp, rbp
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_544]]
	mov	rbp, rbp
	jae	.label_579
.label_582:
	mov	rsp, rsp
	cmp	rsi, 0xa
	mov	rbp, rbp
	mov	ebx, 0xa
	mov	rbp, rbp
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_576
	nop	word ptr cs:[rax + rax]
.label_575:
	lea	rsi, [rsi]
	add	rbx, 2
.label_576:
	cmp	rbx, -1
	je	.label_579
	cmp	rbx, 0xa
	mov	rbp, rbp
	mov	esi, 0xc
	nop	
	mov	edi, 9
	lea	rsi, [rsi]
	mov	ecx, 3
	lea	rsi, [rsi]
	jb	.label_574
.label_586:
	nop	
	xor	edx, edx
	mov	rax, rbx
	nop	
	div	rcx
	test	rdx, rdx
	je	.label_574
	lea	rdi, [rdi + rsi + 4]
	nop	
	add	rcx, 2
	add	rsi, 8
	lea	rsi, [rsi]
	cmp	rdi, rbx
	jb	.label_586
.label_574:
	mov	rsp, rsp
	xor	edx, edx
	nop	
	mov	rax, rbx
	div	rcx
	mov	rsp, rsp
	test	rdx, rdx
	je	.label_575
	nop	
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rsi, [rsi]
	ja	.label_579
	mov	bpl, 1
	mov	rbp, rbp
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_577
	nop	
	mov	esi, 0x10
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_579
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rbx
	shl	rbx, 4
	mov	rsp, rsp
	add	rax, rbx
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [rsp + 0x18], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x28]
	movups	xmmword ptr [rsp + 0x28], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x38]
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x38], xmm0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rsp]
	nop	
	xor	edx, edx
	mov	rsi, r14
	call	transfer_entries
	test	al, al
	je	.label_590
	mov	rdi, qword ptr [r14]
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	mov	rbp, rbp
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_577
.label_590:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x48], rax
	nop	
	mov	r12, qword ptr [rsp]
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jmp	.label_587
.label_584:
	add	r12, 0x10
.label_587:
	nop	
	cmp	r12, r15
	lea	rsi, [rsi]
	jae	.label_589
	cmp	qword ptr [r12], 0
	je	.label_584
	mov	rbp, rbp
	mov	rbp, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_580
	mov	rbp, rbp
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_583:
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp]
	nop	
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	lea	rsi, [rsi]
	jae	.label_585
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	nop	
	shl	rax, 4
	lea	rdi, [rdi]
	cmp	qword ptr [rdx + rax], 0
	je	.label_588
	mov	rbp, rbp
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp + 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_578
	nop	
.label_588:
	lea	rdi, [rdi]
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	mov	rbp, rbp
	inc	qword ptr [r14 + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp], 0
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x48], rbp
.label_578:
	mov	rbp, rbp
	test	rcx, rcx
	mov	rbp, rcx
	nop	
	jne	.label_583
.label_580:
	nop	
	mov	qword ptr [r12 + 8], 0
	nop	
	jmp	.label_584
.label_589:
	nop	
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_592
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp]
	call	free
.label_579:
	mov	rbp, rbp
	xor	ebp, ebp
.label_577:
	mov	al, bpl
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
.label_585:
	mov	rbp, rbp
	call	abort
.label_592:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a680

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	rbp, rbp
	mov	qword ptr [rsp], rsi
	mov	r15, rdi
	mov	rbp, rbp
	mov	r13, qword ptr [rsi]
	mov	rbp, rbp
	mov	rax, qword ptr [rsi + 8]
	nop	
	cmp	r13, rax
	nop	
	jae	.label_593
	nop	
	test	dl, dl
	je	.label_596
	nop	dword ptr [rax]
.label_610:
	nop	
	cmp	qword ptr [r13], 0
	mov	rbp, rbp
	je	.label_594
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_600
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15 + 0x10]
	nop	dword ptr [rax]
.label_609:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	nop	
	call	qword ptr [r15 + 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	cmp	rax, rsi
	jae	.label_607
	mov	rbp, rbp
	mov	rdx, qword ptr [r15]
	mov	rcx, qword ptr [rbp + 8]
	nop	
	shl	rax, 4
	mov	rsp, rsp
	cmp	qword ptr [rdx + rax], 0
	lea	rsi, [rsi]
	je	.label_601
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rdx + rax + 8], rbp
	nop	
	jmp	.label_603
	nop	word ptr cs:[rax + rax]
.label_601:
	mov	rbp, rbp
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r15 + 0x18]
	nop	
	mov	qword ptr [rbp], 0
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rbp + 8], rax
	nop	
	mov	qword ptr [r15 + 0x48], rbp
.label_603:
	test	rcx, rcx
	mov	rbp, rcx
	mov	rsp, rsp
	jne	.label_609
	mov	rax, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
.label_600:
	mov	rsp, rsp
	mov	qword ptr [r13 + 8], 0
.label_594:
	mov	rsp, rsp
	add	r13, 0x10
	mov	rsp, rsp
	cmp	r13, rax
	jb	.label_610
	jmp	.label_593
	nop	word ptr cs:[rax + rax]
.label_596:
	mov	rbp, rbp
	mov	r12, qword ptr [r13]
	mov	rbp, rbp
	test	r12, r12
	mov	rsp, rsp
	je	.label_597
	lea	rdi, [rdi]
	mov	r14, qword ptr [r13 + 8]
	test	r14, r14
	mov	rsi, qword ptr [r15 + 0x10]
	nop	
	je	.label_604
	nop	dword ptr [rax + rax]
.label_611:
	mov	rbx, qword ptr [r14]
	mov	rdi, rbx
	nop	
	call	qword ptr [r15 + 0x30]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	cmp	rax, rsi
	jae	.label_607
	mov	rdx, qword ptr [r15]
	nop	
	mov	rcx, qword ptr [r14 + 8]
	nop	
	shl	rax, 4
	nop	
	cmp	qword ptr [rdx + rax], 0
	mov	rsp, rsp
	je	.label_599
	mov	rdi, qword ptr [rdx + rax + 8]
	nop	
	mov	qword ptr [r14 + 8], rdi
	mov	qword ptr [rdx + rax + 8], r14
	lea	rdi, [rdi]
	jmp	.label_602
	nop	word ptr [rax + rax]
.label_599:
	add	rdx, rax
	nop	
	mov	qword ptr [rdx], rbx
	mov	rbp, rbp
	inc	qword ptr [r15 + 0x18]
	mov	qword ptr [r14], 0
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x48]
	nop	
	mov	qword ptr [r14 + 8], rax
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x48], r14
.label_602:
	mov	rbp, rbp
	test	rcx, rcx
	mov	r14, rcx
	jne	.label_611
	mov	r12, qword ptr [r13]
.label_604:
	mov	rbp, rbp
	mov	qword ptr [r13 + 8], 0
	mov	rbp, rbp
	mov	rdi, r12
	call	qword ptr [r15 + 0x30]
	nop	
	mov	rbx, rax
	mov	rbp, rbp
	cmp	rbx, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	jae	.label_606
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	lea	rdi, [rdi]
	cmp	qword ptr [rbp + rbx], 0
	je	.label_608
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x48]
	test	rax, rax
	je	.label_612
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x48], rcx
	jmp	.label_595
	nop	word ptr cs:[rax + rax]
.label_608:
	lea	rsi, [rsi]
	add	rbp, rbx
	mov	rbp, rbp
	mov	qword ptr [rbp], r12
	inc	qword ptr [r15 + 0x18]
	lea	rsi, [rsi]
	jmp	.label_605
.label_612:
	mov	rbp, rbp
	mov	edi, 0x10
	mov	rsp, rsp
	call	malloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_598
.label_595:
	mov	qword ptr [rax], r12
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + rbx + 8]
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp + rbx + 8], rax
.label_605:
	mov	qword ptr [r13], 0
	nop	
	mov	rax, qword ptr [rsp]
	mov	rbp, rbp
	dec	qword ptr [rax + 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
.label_597:
	mov	rsp, rsp
	add	r13, 0x10
	cmp	r13, rax
	nop	
	jb	.label_596
.label_593:
	nop	
	mov	al, 1
.label_613:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_598:
	xor	eax, eax
	jmp	.label_613
.label_607:
	call	abort
.label_606:
	mov	rsp, rsp
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a990

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	lea	rsi, [rsi]
	mov	r14, rsi
	mov	rbp, rbp
	mov	r13, rdi
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_621
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rsp, rsp
	mov	rdi, r14
	nop	
	call	qword ptr [r13 + 0x30]
	mov	rsp, rsp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	rbp, qword ptr [r13 + 0x10]
	mov	rbp, rbp
	jae	.label_621
	mov	rbx, qword ptr [r13]
	mov	rbp, rbp
	shl	rbp, 4
	mov	rbp, rbp
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	nop	
	test	rsi, rsi
	je	.label_620
	mov	rsp, rsp
	cmp	rsi, r14
	je	.label_614
	mov	rdi, r14
	nop	
	call	qword ptr [r13 + 0x38]
	test	al, al
	lea	rdi, [rdi]
	je	.label_622
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	jmp	.label_624
.label_614:
	mov	rax, r14
	jmp	.label_625
.label_622:
	mov	rax, qword ptr [rbx + rbp + 8]
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_620
	lea	rbp, [rbx + rbp + 8]
	nop	
.label_640:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	mov	rsp, rsp
	je	.label_633
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	mov	rsp, rsp
	test	al, al
	jne	.label_638
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_640
	nop	
	jmp	.label_620
.label_633:
	mov	rbp, rbp
	mov	rax, r14
	jmp	.label_624
.label_638:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp]
.label_624:
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_620
.label_625:
	lea	rdi, [rdi]
	xor	ebp, ebp
	test	r15, r15
	je	.label_618
	lea	rsi, [rsi]
	mov	qword ptr [r15], rax
	mov	rsp, rsp
	jmp	.label_618
.label_620:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsp, rsp
	mov	edx, eax
	and	edx, 1
	nop	
	test	rax, rax
	mov	rbp, rbp
	js	.label_637
	cvtsi2ss	xmm1, rax
	jmp	.label_632
.label_637:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	lea	rdi, [rdi]
	addss	xmm1, xmm1
.label_632:
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	edx, ecx
	and	edx, 1
	mov	rbp, rbp
	test	rcx, rcx
	mov	rbp, rbp
	js	.label_639
	cvtsi2ss	xmm0, rcx
	jmp	.label_644
.label_639:
	shr	rcx, 1
	or	rdx, rcx
	lea	rsi, [rsi]
	cvtsi2ss	xmm0, rdx
	lea	rdi, [rdi]
	addss	xmm0, xmm0
.label_644:
	lea	rdi, [rdi]
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm1, xmm3
	nop	
	jbe	.label_617
	nop	
	mov	ecx, OFFSET FLAT:default_tuning
	mov	rsp, rsp
	cmp	rax, rcx
	mov	rbp, rbp
	je	.label_628
	ucomiss	xmm2,  dword ptr [dword ptr [rip + label_548]]
	jbe	.label_616
	nop	
	movss	xmm3,  dword ptr [dword ptr [rip + label_546]]
	ucomiss	xmm3, xmm2
	jbe	.label_616
	mov	rbp, rbp
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_553]]
	jbe	.label_616
	movss	xmm3, dword ptr [rax]
	lea	rsi, [rsi]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	lea	rdi, [rdi]
	jb	.label_616
	addss	xmm3,  dword ptr [dword ptr [rip + label_548]]
	ucomiss	xmm2, xmm3
	jbe	.label_616
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_555]]
	ucomiss	xmm5, xmm4
	mov	rbp, rbp
	jb	.label_616
	lea	rsi, [rsi]
	ucomiss	xmm4, xmm3
	lea	rsi, [rsi]
	ja	.label_615
.label_616:
	mov	qword ptr [word ptr [r13 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	lea	rdi, [rdi]
	movss	xmm2,  dword ptr [dword ptr [rip + label_626]]
	jmp	.label_615
.label_628:
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:default_tuning
.label_615:
	movaps	xmm3, xmm2
	mov	rsp, rsp
	mulss	xmm3, xmm0
	lea	rsi, [rsi]
	ucomiss	xmm1, xmm3
	jbe	.label_617
	nop	
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rbp, rbp
	jne	.label_641
	mov	rbp, rbp
	mulss	xmm0, xmm2
.label_641:
	lea	rsi, [rsi]
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_544]]
	mov	rsp, rsp
	jae	.label_618
	nop	
	movss	xmm1,  dword ptr [dword ptr [rip + label_543]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	lea	rdi, [rdi]
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r13
	call	hash_rehash
	test	al, al
	lea	rdi, [rdi]
	je	.label_618
	mov	rsi, qword ptr [r13 + 0x10]
	nop	
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	lea	rsi, [rsi]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_621
	nop	
	mov	r15, qword ptr [r13]
	mov	rsp, rsp
	shl	rbp, 4
	mov	rbp, rbp
	lea	r12, [r15 + rbp]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + rbp]
	test	rsi, rsi
	je	.label_617
	cmp	rsi, r14
	mov	rbp, rbp
	mov	rax, r14
	lea	rdi, [rdi]
	je	.label_619
	mov	rdi, r14
	mov	rbp, rbp
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_627
	mov	rbp, rbp
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	jmp	.label_619
.label_627:
	mov	rax, qword ptr [r15 + rbp + 8]
	nop	
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_617
	lea	rbp, [r15 + rbp + 8]
.label_630:
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	lea	rdi, [rdi]
	je	.label_636
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsp, rsp
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	jne	.label_642
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 8]
	mov	rsp, rsp
	add	rbp, 8
	test	rax, rax
	mov	rsp, rsp
	jne	.label_630
	lea	rsi, [rsi]
	jmp	.label_617
.label_636:
	mov	rax, r14
	lea	rdi, [rdi]
	jmp	.label_619
.label_642:
	mov	rax, qword ptr [rbp]
.label_619:
	mov	rsp, rsp
	test	rax, rax
	jne	.label_623
.label_617:
	cmp	qword ptr [r12], 0
	je	.label_643
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	mov	rbp, rbp
	je	.label_629
	mov	rcx, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 0x48], rcx
	nop	
	jmp	.label_631
.label_643:
	lea	rsi, [rsi]
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0,  xmmword ptr [word ptr [rip + label_634]]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	mov	rsp, rsp
	jmp	.label_635
.label_629:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_618
.label_631:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_635:
	lea	rdi, [rdi]
	mov	ebp, 1
.label_618:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_621:
	mov	rsp, rsp
	call	abort
.label_623:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40add0

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	rbx, rsi
	lea	rdx, [rsp + 8]
	call	hash_insert_if_absent
	mov	ecx, eax
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	ecx, -1
	je	.label_645
	nop	
	test	ecx, ecx
	mov	rbp, rbp
	cmove	rbx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rax, rbx
.label_645:
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbx
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ae20

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	mov	rbp, rbp
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rdi, r14
	mov	rbp, rbp
	call	qword ptr [r15 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r15 + 0x10]
	jae	.label_662
	mov	rbp, rbp
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	nop	
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_659
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_665
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rsp, rsp
	test	al, al
	nop	
	je	.label_649
	mov	r14, qword ptr [r13]
.label_665:
	nop	
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_652
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rax]
	lea	rsi, [rsi]
	movups	xmmword ptr [r13], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax], 0
	mov	rbp, rbp
	mov	rcx, qword ptr [r15 + 0x48]
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_658
.label_649:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_659
	lea	rsi, [rsi]
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_651:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_664
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	mov	rsp, rsp
	jne	.label_666
	mov	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	lea	rsi, [rsi]
	jne	.label_651
	lea	rsi, [rsi]
	jmp	.label_659
.label_652:
	mov	qword ptr [r13], 0
	lea	rsi, [rsi]
	jmp	.label_658
.label_664:
	mov	rcx, rax
	jmp	.label_654
.label_666:
	mov	r14, qword ptr [rcx]
.label_654:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x48], rcx
.label_658:
	lea	rdi, [rdi]
	xor	r12d, r12d
	test	r14, r14
	je	.label_659
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	mov	rbp, rbp
	jne	.label_655
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_646
	mov	rsp, rsp
	cvtsi2ss	xmm1, rax
	jmp	.label_656
.label_646:
	shr	rax, 1
	mov	rsp, rsp
	or	rcx, rax
	mov	rsp, rsp
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_656:
	mov	rcx, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	nop	
	test	rcx, rcx
	js	.label_661
	cvtsi2ss	xmm0, rcx
	mov	rsp, rsp
	jmp	.label_663
.label_661:
	mov	rbp, rbp
	shr	rcx, 1
	or	rdx, rcx
	nop	
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_663:
	movaps	xmm3, xmm2
	nop	
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_655
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	lea	rsi, [rsi]
	je	.label_648
	lea	rdi, [rdi]
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_548]]
	nop	
	jbe	.label_653
	mov	rsp, rsp
	movss	xmm4,  dword ptr [dword ptr [rip + label_546]]
	ucomiss	xmm4, xmm3
	mov	rsp, rsp
	jbe	.label_653
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_653
	mov	rbp, rbp
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4,  dword ptr [dword ptr [rip + label_553]]
	jbe	.label_653
	lea	rsi, [rsi]
	movss	xmm4,  dword ptr [dword ptr [rip + label_548]]
	addss	xmm4, xmm2
	mov	rbp, rbp
	ucomiss	xmm3, xmm4
	jbe	.label_653
	movss	xmm3, dword ptr [rax + 4]
	nop	
	movss	xmm5,  dword ptr [dword ptr [rip + label_555]]
	nop	
	ucomiss	xmm5, xmm3
	jb	.label_653
	ucomiss	xmm3, xmm4
	ja	.label_647
.label_653:
	mov	qword ptr [word ptr [r15 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_647
.label_648:
	mov	eax, OFFSET FLAT:default_tuning
.label_647:
	mulss	xmm2, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm2, xmm1
	jbe	.label_655
	mulss	xmm0, dword ptr [rax + 4]
	mov	rbp, rbp
	cmp	byte ptr [rax + 0x10], 0
	mov	rsp, rsp
	jne	.label_660
	mulss	xmm0, dword ptr [rax + 8]
.label_660:
	movss	xmm1,  dword ptr [dword ptr [rip + label_543]]
	nop	
	movaps	xmm2, xmm0
	lea	rsi, [rsi]
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	lea	rdi, [rdi]
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	mov	rbp, rbp
	test	al, al
	jne	.label_655
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_650
.label_657:
	nop	
	mov	rbx, qword ptr [rdi + 8]
	mov	rsp, rsp
	call	free
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	jne	.label_657
.label_650:
	nop	
	mov	qword ptr [r15 + 0x48], 0
.label_655:
	nop	
	mov	r12, r14
.label_659:
	mov	rax, r12
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_662:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b170

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
	mov	ecx, OFFSET FLAT:.str_3
	nop	
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_8
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_667
	nop	
	mov	rax, rcx
.label_667:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b1b0

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
	#Procedure 0x40b1d0

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
	je	.label_685
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
.label_685:
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
	ja	.label_677
	lea	rsi, [rsi]
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_670
	mov	eax, 0x514
	mov	rsp, rsp
	bt	eax, esi
	lea	rdi, [rdi]
	jb	.label_668
	mov	rsp, rsp
	test	esi, esi
	jne	.label_677
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	lea	rsi, [rsi]
	ja	.label_679
	lea	rdi, [rdi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_684
.label_677:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_672
	mov	ecx, 0x85
	mov	rbp, rbp
	bt	ecx, eax
	lea	rsi, [rsi]
	jb	.label_668
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_673
.label_670:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_675
.label_668:
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rsp, rsp
	cmp	rcx, 0x28
	nop	
	ja	.label_676
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_681
.label_676:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_681:
	mov	edx, dword ptr [rax]
.label_688:
	nop	
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
.label_675:
	mov	ebp, eax
.label_669:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_673:
	lea	rsi, [rsi]
	cmp	eax, 6
	jne	.label_672
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_674
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_678
.label_672:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_683
	mov	rax, rcx
	lea	rsi, [rsi]
	add	rax, qword ptr [rsp + 0xc0]
	nop	
	lea	ecx, [rcx + 8]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_686
.label_679:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_684:
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax]
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_688
.label_674:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_678:
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_680
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
	jns	.label_687
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_687
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
	js	.label_669
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	rsp, rsp
	mov	al, 1
	jmp	.label_671
.label_687:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_669
.label_683:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_686:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	nop	
	mov	edi, ebx
	lea	rdi, [rdi]
	call	fcntl
	nop	
	jmp	.label_675
.label_680:
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
.label_671:
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_669
	test	ebp, ebp
	lea	rsi, [rsi]
	js	.label_669
	mov	esi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_682
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
	jne	.label_669
.label_682:
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
	jmp	.label_669
	nop	word ptr cs:[rax + rax]
	nop	
	.section .text
	.align	16
	#Procedure 0x40b5a0

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