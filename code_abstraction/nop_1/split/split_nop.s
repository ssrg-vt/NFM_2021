	.section	.text
	.align	32
	#Procedure 0x401ce0

	.globl usage
	.type usage, @function
usage:
	nop	
	push	rbp
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	ebp, edi
	lea	rsi, [rsi]
	test	ebp, ebp
	jne	.label_7
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	mov	rbp, rbp
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	mov	rbx,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.3
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rdx, rax
	mov	esi, 1
	mov	ecx, 2
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rbp, rbp
	call	emit_size_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	lea	rsi, [rsi]
	call	emit_ancillary_info
	lea	rdi, [rdi]
	mov	edi, ebp
	nop	
	call	exit
.label_7:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, rbx
	nop	
	call	__fprintf_chk
	mov	rbp, rbp
	mov	edi, ebp
	mov	rsp, rsp
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ea0

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ed0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.45
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	pop	rax
	jmp	fputs_unlocked
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401f00

	.globl emit_size_note
	.type emit_size_note, @function
emit_size_note:
	lea	rsi, [rsi]
	push	rax
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.46
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	pop	rax
	lea	rsi, [rsi]
	jmp	fputs_unlocked
	nop	
	.section	.text
	.align	32
	#Procedure 0x401f30

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	mov	rsp, rsp
	push	r14
	nop	
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.47
	nop	word ptr cs:[rax + rax]
.label_9:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.8
	mov	rsp, rsp
	call	strcmp
	test	eax, eax
	je	.label_8
	mov	rsi, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	add	rbx, 0x10
	test	rsi, rsi
	mov	rsp, rsp
	jne	.label_9
.label_8:
	nop	
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:.str.8
	cmovne	rbx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.55
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	nop	
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	lea	rdi, [rdi]
	xor	esi, esi
	call	setlocale
	test	rax, rax
	mov	rbp, rbp
	je	.label_10
	nop	
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 3
	nop	
	mov	rdi, rax
	call	strncmp
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, rbp
	je	.label_10
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.58
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
.label_10:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.59
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	nop	
	mov	r14d, OFFSET FLAT:.str.8
	mov	rsp, rsp
	mov	edi, 1
	nop	
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.8
	xor	eax, eax
	call	__printf_chk
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.60
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	lea	rdi, [rdi]
	cmp	rbx, r14
	nop	
	mov	eax, OFFSET FLAT:.str.61
	mov	ecx, OFFSET FLAT:.str_0
	mov	rsp, rsp
	cmove	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rdx
	mov	rdx, rbx
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	jmp	__printf_chk
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4020a0

	.globl main
	.type main, @function
main:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x168
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xb0], rbp
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xbc], edi
	call	getpagesize
	movsxd	rbx, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa0], rbx
	mov	qword ptr [rsp + 0x160], 0
	mov	qword ptr [rsp + 0x158], 0
	mov	rdi, qword ptr [rbp]
	call	set_program_name
	mov	edi, 6
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str_0
	nop	
	call	setlocale
	mov	edi, OFFSET FLAT:.str.10
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.11
	mov	rsp, rsp
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.10
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	edi, OFFSET FLAT:.str.12
	lea	rdi, [rdi]
	call	bad_cast
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + infile]],  rax
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.13
	call	bad_cast
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + outbase]],  rax
	not	rbx
	mov	qword ptr [rsp + 0x98], rbx
	mov	rsp, rsp
	xor	eax, eax
	mov	qword ptr [rsp + 0xa8], rax
	mov	rbp, rbp
	movabs	r13, 0x7fffffffffffffff
	mov	rsp, rsp
	xor	r14d, r14d
	mov	rbp, rbp
	xor	ebx, ebx
	jmp	.label_21
	nop	
.label_67:
	mov	qword ptr [rsp + 0x158], rcx
	mov	ebx, 4
	mov	eax, ebp
	mov	qword ptr [rsp + 0xa8], rax
.label_21:
	mov	ebp,  dword ptr [dword ptr [rip + optind]]
	test	ebp, ebp
	mov	eax, 1
	mov	rbp, rbp
	cmove	ebp, eax
	mov	edx, OFFSET FLAT:.str.14
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, dword ptr [rsp + 0xbc]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	call	getopt_long
	nop	
	mov	r15d, eax
	lea	rdi, [rdi]
	cmp	r15d, 0x42
	jle	.label_56
	lea	eax, [r15 - 0x74]
	cmp	eax, 0xf
	jbe	.label_11
	lea	eax, [r15 - 0x61]
	lea	rsi, [rsi]
	cmp	eax, 0xd
	mov	rbp, rbp
	ja	.label_13
	jmp	qword ptr [word ptr [+ (rax * 8) + label_17]]
.label_680:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.15
	mov	rsp, rsp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rbp
	xor	esi, esi
	mov	ecx, OFFSET FLAT:.str_0
	mov	rbp, rbp
	xor	r9d, r9d
	mov	rdi, rbp
	lea	rdi, [rdi]
	movabs	rdx, 0x1fffffffffffffff
	mov	rsp, rsp
	mov	r8, rax
	mov	rbp, rbp
	call	xdectoumax
	mov	qword ptr [word ptr [rip + suffix_length]],  rax
	jmp	.label_21
	nop	word ptr [rax + rax]
.label_56:
	mov	rsp, rsp
	cmp	r15d, 0x2f
	jle	.label_31
	mov	rbp, rbp
	lea	eax, [r15 - 0x30]
	mov	rbp, rbp
	cmp	eax, 0xa
	mov	rsp, rsp
	jae	.label_29
	nop	
	cmp	ebx, 4
	je	.label_35
	lea	rdi, [rdi]
	test	ebx, ebx
	jne	.label_25
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x158], 0
.label_35:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_41
	mov	rsp, rsp
	cmp	eax, ebp
	mov	rsp, rsp
	je	.label_41
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x158], 0
	xor	eax, eax
	jmp	.label_70
.label_11:
	jmp	qword ptr [word ptr [+ (rax * 8) + label_50]]
.label_728:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	test	cl, cl
	nop	
	je	.label_51
	lea	rsi, [rsi]
	mov	dl, byte ptr [rax + 1]
	test	dl, dl
	mov	rsp, rsp
	je	.label_53
	movzx	ecx, cl
	cmp	ecx, 0x5c
	jne	.label_54
	movzx	ecx, dl
	cmp	ecx, 0x30
	jne	.label_54
	cmp	byte ptr [rax + 2], 0
	mov	rsp, rsp
	jne	.label_54
	lea	rdi, [rdi]
	xor	ecx, ecx
.label_53:
	lea	rdi, [rdi]
	mov	edx,  dword ptr [dword ptr [rip + eolchar]]
	test	edx, edx
	movsx	eax, cl
	js	.label_59
	lea	rdi, [rdi]
	cmp	eax, edx
	jne	.label_62
.label_59:
	mov	dword ptr [dword ptr [rip + eolchar]],  eax
	jmp	.label_21
	nop	
.label_41:
	mov	rax, qword ptr [rsp + 0x158]
	movabs	rcx, 0x1999999999999999
	cmp	rax, rcx
	ja	.label_65
.label_70:
	lea	rcx, [rax + rax*4]
	movsxd	rdx, r15d
	lea	rcx, [rdx + rcx*2 - 0x30]
	mov	rsp, rsp
	cmp	rcx, rax
	jae	.label_67
	lea	rdi, [rdi]
	jmp	.label_65
.label_682:
	mov	rbp, rbp
	cmp	r15d, 0x64
	mov	rbp, rbp
	mov	ebp, OFFSET FLAT:.str.29
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:.str.28
	mov	rbp, rbp
	cmove	rbp, rax
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + suffix_alphabet]],  rbp
	mov	r12,  qword ptr [word ptr [rip + optarg]]
	test	r12, r12
	je	.label_21
	mov	rdi, r12
	call	strlen
	mov	qword ptr [rsp + 0x90], rax
	mov	rdi, r12
	mov	rsi, rbp
	call	strspn
	cmp	qword ptr [rsp + 0x90], rax
	mov	rsp, rsp
	jne	.label_15
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	movzx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	jmp	.label_19
	nop	
.label_26:
	lea	rax, [rcx + 1]
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + optarg]],  rax
	movzx	ecx, byte ptr [rcx + 1]
.label_19:
	cmp	ecx, 0x30
	jne	.label_24
	nop	
	cmp	byte ptr [rax + 1], 0
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	jne	.label_26
	jmp	.label_27
.label_13:
	cmp	r15d, 0x43
	mov	rbp, rbp
	jne	.label_29
	test	ebx, ebx
	jne	.label_25
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18_0
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	esi, 1
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:main.multipliers
	mov	rsp, rsp
	xor	r9d, r9d
	mov	rdi, rbx
	nop	
	mov	rdx, r13
	mov	r8, rax
	mov	rbp, rbp
	call	xdectoumax
	mov	qword ptr [rsp + 0x158], rax
	mov	rsp, rsp
	mov	ebx, 2
	jmp	.label_21
.label_729:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + unbuffered]],  1
	mov	rbp, rbp
	jmp	.label_21
.label_730:
	mov	byte ptr [byte ptr [rip + verbose]],  1
	jmp	.label_21
.label_731:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + filter_command]],  rax
	mov	rbp, rbp
	jmp	.label_21
.label_732:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	ecx, OFFSET FLAT:main.multipliers
	xor	r9d, r9d
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rdx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	r8, rax
	nop	
	call	xdectoumax
	mov	rbp, rbp
	mov	r14, rax
	jmp	.label_21
.label_733:
	lea	rsi, [rsi]
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	mov	rdi, rbp
	call	last_component
	lea	rdi, [rdi]
	cmp	rax, rbp
	jne	.label_61
	nop	
	mov	qword ptr [word ptr [rip + additional_suffix]],  rbp
	mov	rbp, rbp
	jmp	.label_21
.label_681:
	mov	rsp, rsp
	test	ebx, ebx
	jne	.label_25
	nop	
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.18_0
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	nop	
	mov	ecx, OFFSET FLAT:main.multipliers
	xor	r9d, r9d
	mov	rdi, rbx
	mov	rdx, r13
	mov	r8, rax
	lea	rdi, [rdi]
	call	xdectoumax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x158], rax
	mov	ebx, 1
	jmp	.label_21
.label_683:
	mov	byte ptr [byte ptr [rip + elide_empty_files]],  1
	jmp	.label_21
.label_684:
	test	ebx, ebx
	jne	.label_25
	nop	
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rdi, rbx
	nop	
	mov	r8, rax
	nop	
	call	xdectoumax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x158], rax
	mov	rsp, rsp
	mov	ebx, 3
	nop	
	jmp	.label_21
.label_685:
	test	ebx, ebx
	lea	rsi, [rsi]
	jne	.label_25
	lea	rsi, [rsi]
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	movsx	edi, byte ptr [rbp]
	lea	rdi, [rdi]
	call	to_uchar
	nop	
	movzx	r15d, al
	call	__ctype_b_loc
	mov	rbx, rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbx]
	lea	rsi, [rsi]
	test	byte ptr [rax + r15*2 + 1], 0x20
	je	.label_30
	mov	rbp, rbp
	inc	rbp
	nop	dword ptr [rax + rax]
.label_39:
	nop	
	mov	qword ptr [word ptr [rip + optarg]],  rbp
	mov	rsp, rsp
	movsx	edi, byte ptr [rbp]
	call	to_uchar
	mov	rbp, rbp
	movzx	eax, al
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx]
	nop	
	inc	rbp
	lea	rsi, [rsi]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_39
	lea	rsi, [rsi]
	dec	rbp
.label_30:
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 2
	mov	rsp, rsp
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	strncmp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_48
	mov	esi, OFFSET FLAT:.str.21
	lea	rsi, [rsi]
	mov	edx, 2
	mov	rdi, rbp
	mov	rbp, rbp
	call	strncmp
	mov	ebx, 5
	mov	rsp, rsp
	test	eax, eax
	jne	.label_36
	add	rbp, 2
	mov	qword ptr [word ptr [rip + optarg]],  rbp
	mov	ebx, 6
	lea	rsi, [rsi]
	jmp	.label_36
.label_24:
	nop	
	mov	rcx,  qword ptr [word ptr [rip + optarg]]
.label_27:
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + numeric_suffix_start]],  rcx
	jmp	.label_21
.label_48:
	mov	rsp, rsp
	add	rbp, 2
	mov	qword ptr [word ptr [rip + optarg]],  rbp
	mov	ebx, 7
.label_36:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	nop	
	mov	esi, 0x2f
	lea	rdi, [rdi]
	mov	rdi, rbp
	call	strchr
	mov	rbp, rbp
	test	rax, rax
	je	.label_63
	lea	rdi, [rsp + 0x160]
	mov	rbp, rbp
	lea	rsi, [rsp + 0x158]
	mov	rbp, rbp
	mov	rdx, rax
	call	parse_chunk
	jmp	.label_21
.label_63:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rbp, rbp
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rsp + 0x158], rax
	jmp	.label_21
.label_31:
	cmp	r15d, -1
	jne	.label_71
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x160], 0
	je	.label_72
	nop	
	mov	rax,  qword ptr [word ptr [rip + filter_command]]
	test	rax, rax
	nop	
	jne	.label_12
.label_72:
	test	ebx, ebx
	lea	rsi, [rsi]
	je	.label_16
	nop	
	cmp	qword ptr [rsp + 0x158], 0
	jne	.label_18
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.38
	mov	rsp, rsp
	call	quote
	nop	
	mov	rbp, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, rbp
	call	error
	mov	edi, 1
	nop	
	call	usage
.label_16:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x158], 0x3e8
	nop	
	mov	ebx, 3
.label_18:
	cmp	dword ptr [dword ptr [rip + eolchar]],  0
	jns	.label_68
	mov	dword ptr [dword ptr [rip + eolchar]],  0xa
.label_68:
	mov	rdi, qword ptr [rsp + 0x158]
	mov	esi, ebx
	call	set_suffix_length
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, dword ptr [rsp + 0xbc]
	nop	
	jge	.label_38
	lea	ecx, [rax + 1]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [word ptr [rip + infile]],  rax
.label_38:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	nop	
	cmp	eax, dword ptr [rsp + 0xbc]
	jge	.label_45
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [word ptr [rip + outbase]],  rax
.label_45:
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0xbc]
	cmp	dword ptr [dword ptr [rip + optind]],  eax
	jl	.label_52
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + numeric_suffix_start]]
	nop	
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_64
	mov	rsp, rsp
	call	strlen
	cmp	rax,  qword ptr [word ptr [rip + suffix_length]]
	lea	rdi, [rdi]
	ja	.label_55
.label_64:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + infile]]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	nop	
	jne	.label_58
	cmp	byte ptr [rax + 1], 0
	je	.label_60
.label_58:
	mov	rsi,  qword ptr [word ptr [rip + infile]]
	mov	rbp, rbp
	xor	edi, edi
	xor	edx, edx
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	call	fd_reopen
	test	eax, eax
	nop	
	js	.label_66
.label_60:
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:in_stat_buf
	lea	rdi, [rdi]
	call	__fstat
	test	eax, eax
	mov	rbp, rbp
	jne	.label_14
	test	r14, r14
	jne	.label_69
	mov	ecx, 0x12
	nop	
	mov	esi, OFFSET FLAT:in_stat_buf
	mov	rsp, rsp
	mov	rdi, rsp
	rep movsq	qword ptr [rdi], qword ptr [rsi]
	mov	rbp, rbp
	call	io_blksize
	mov	rsp, rsp
	mov	r14, rax
.label_69:
	nop	
	mov	rbp, qword ptr [rsp + 0xa0]
	lea	rdi, [r14 + rbp]
	mov	rsp, rsp
	call	xmalloc
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsi, rbp
	lea	rdi, [rdi]
	call	ptr_align
	mov	rbp, rbp
	mov	r15, rax
	lea	eax, [rbx - 5]
	mov	rsp, rsp
	mov	rbp, -1
	lea	rsi, [rsi]
	cmp	eax, 1
	lea	rdi, [rdi]
	ja	.label_42
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsi, r14
	call	input_file_size
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	js	.label_20
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x158]
	nop	
	test	r13, r13
	js	.label_22
	lea	rdi, [rdi]
	cmp	rax, r14
	mov	rsp, rsp
	mov	rbp, r14
	cmovb	rbp, rax
	cmp	rax, r13
	cmova	r13, rax
.label_42:
	mov	rsp, rsp
	cmp	qword ptr [word ptr [rip + filter_command]],  0
	je	.label_37
	mov	edi, OFFSET FLAT:newblocked
	nop	
	call	sigemptyset
	mov	rbp, rbp
	lea	rdx, [rsp + 0xc0]
	mov	edi, 0xd
	nop	
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0xc0], 1
	mov	rsp, rsp
	je	.label_34
	mov	edi, OFFSET FLAT:newblocked
	nop	
	mov	esi, 0xd
	mov	rsp, rsp
	call	sigaddset
.label_34:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:newblocked
	mov	edx, OFFSET FLAT:oldblocked
	nop	
	call	sigprocmask
.label_37:
	mov	rbp, rbp
	dec	ebx
	cmp	ebx, 6
	ja	.label_43
	jmp	qword ptr [word ptr [+ (rbx * 8) + label_44]]
.label_714:
	nop	
	mov	rdi, qword ptr [rsp + 0x158]
	mov	rsi, r15
	nop	
	mov	rdx, r14
	lea	rsi, [rsi]
	call	lines_split
	lea	rsi, [rsi]
	jmp	.label_49
.label_712:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x158]
	mov	rsp, rsp
	mov	rcx, -1
	mov	rsp, rsp
	xor	r8d, r8d
	nop	
	mov	rsi, r15
	mov	rbp, rbp
	mov	rdx, r14
	call	bytes_split
	jmp	.label_49
.label_713:
	mov	rdi, qword ptr [rsp + 0x158]
	mov	rsi, r15
	mov	rdx, r14
	nop	
	call	line_bytes_split
	jmp	.label_49
.label_715:
	mov	rdi, qword ptr [rsp + 0x160]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x158]
	lea	rsi, [rsi]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_57
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rdx, r15
	mov	rcx, r14
	mov	r8, rbp
	mov	r9, r13
	lea	rdi, [rdi]
	call	bytes_chunk_extract
	lea	rdi, [rdi]
	jmp	.label_49
.label_716:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x160]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x158]
	mov	rdx, r15
	lea	rsi, [rsi]
	mov	rcx, r14
	mov	r8, rbp
	nop	
	mov	r9, r13
	call	lines_chunk_split
	jmp	.label_49
.label_717:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x160]
	mov	rsi, qword ptr [rsp + 0x158]
	mov	rdx, r15
	mov	rcx, r14
	call	lines_rr
	mov	rbp, rbp
	jmp	.label_49
.label_57:
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r13
	div	rbx
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsi, r15
	mov	rdx, r14
	mov	rcx, rbp
	mov	r8, rbx
	nop	
	call	bytes_split
.label_49:
	xor	edi, edi
	mov	rbp, rbp
	call	close
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_14
	nop	
	mov	esi,  dword ptr [dword ptr [rip + output_desc]]
	mov	rbp, rbp
	mov	edx,  dword ptr [dword ptr [rip + filter_pid]]
	mov	rcx,  qword ptr [word ptr [rip + outfile]]
	xor	edi, edi
	call	closeout
	mov	rsp, rsp
	xor	eax, eax
	add	rsp, 0x168
	lea	rdi, [rdi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	nop	
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
.label_71:
	nop	
	cmp	r15d, 0xffffff7d
	lea	rdi, [rdi]
	je	.label_28
	lea	rsi, [rsi]
	cmp	r15d, 0xffffff7e
	lea	rsi, [rsi]
	jne	.label_29
	xor	edi, edi
	mov	rsp, rsp
	call	usage
.label_65:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rbx, rax
	mov	rdi, qword ptr [rsp + 0x158]
	mov	rsp, rsp
	lea	rsi, [rsp + 0xc0]
	lea	rdi, [rdi]
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	nop	
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	rdx, rbx
	mov	r8d, r15d
	nop	
	call	error
.label_25:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.17_0
.label_47:
	mov	rsp, rsp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	lea	rdi, [rdi]
	mov	edi, 1
	call	usage
.label_29:
	lea	rdi, [rdi]
	mov	edi, 1
	call	usage
.label_28:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:.str.8
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.17
	lea	rsi, [rsi]
	mov	r8d, OFFSET FLAT:.str.34
	mov	r9d, OFFSET FLAT:.str.35
	xor	eax, eax
	nop	
	call	version_etc
	xor	edi, edi
	lea	rdi, [rdi]
	call	exit
.label_14:
	mov	rbp, rbp
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	mov	rsp, rsp
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_54:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	quote
	mov	rsp, rsp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rbx
	mov	rbp, rbp
	call	error
.label_12:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	nop	
	jmp	.label_47
.label_52:
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.39
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbx, rax
	nop	
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	jmp	.label_40
.label_43:
	mov	rsp, rsp
	call	abort
.label_51:
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.23
	jmp	.label_23
.label_62:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26
.label_23:
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	rbp, rbp
	mov	edi, 1
	nop	
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	error
.label_61:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	lea	rdi, [rdi]
	jmp	.label_32
.label_15:
	lea	rsi, [rsi]
	xor	edi, edi
	cmp	r15d, 0x64
	jne	.label_33
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.30
	mov	rsp, rsp
	jmp	.label_32
.label_66:
	call	__errno_location
	mov	rbp, rbp
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
	mov	rsp, rsp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + infile]]
	mov	edi, 4
	call	quotearg_style
	mov	rsp, rsp
	jmp	.label_46
.label_55:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	lea	rdi, [rdi]
	jmp	.label_47
.label_20:
	call	__errno_location
	mov	rsp, rsp
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	xor	edi, edi
	mov	esi, 3
	mov	rbp, rbp
	call	quotearg_n_style_colon
.label_46:
	mov	rcx, rax
	mov	edi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, ebx
	mov	rbp, rbp
	mov	rdx, rbp
	mov	rbp, rbp
	call	error
.label_22:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	mov	rsp, rsp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	rbx, rax
	mov	rdi, qword ptr [rsp + 0x158]
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0xc0]
	call	umaxtostr
	mov	rdi, rax
	call	quote
	nop	
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, 0x4b
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str_1
	nop	
	xor	eax, eax
	mov	rcx, rbx
	mov	r8, rbp
	mov	rsp, rsp
	call	error
.label_33:
	mov	esi, OFFSET FLAT:.str.31
.label_32:
	mov	rbp, rbp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
.label_40:
	call	quote
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	xor	esi, esi
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rbx
	mov	rsp, rsp
	call	error
	mov	edi, 1
	lea	rdi, [rdi]
	call	usage
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403020

	.globl bad_cast
	.type bad_cast, @function
bad_cast:
	nop	
	mov	rax, rdi
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403030

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	lea	rdi, [rdi]
	movzx	eax, dil
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403040

	.globl parse_chunk
	.type parse_chunk, @function
parse_chunk:
	push	r15
	nop	
	push	r14
	push	r12
	push	rbx
	mov	rsp, rsp
	push	rax
	nop	
	mov	rbx, rdx
	mov	rsp, rsp
	mov	r15, rsi
	mov	r14, rdi
	mov	rsp, rsp
	lea	r12, [rbx + 1]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.22
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rdi, r12
	mov	rbp, rbp
	mov	r8, rax
	call	xdectoumax
	lea	rsi, [rsi]
	mov	qword ptr [r15], rax
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [rip + optarg]],  rbx
	je	.label_73
	mov	byte ptr [rbx], 0
	mov	r12,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	mov	rbx, qword ptr [r15]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.78
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	esi, 1
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str_0
	nop	
	xor	r9d, r9d
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rdx, rbx
	mov	r8, rax
	mov	rsp, rsp
	call	xdectoumax
	lea	rsi, [rsi]
	mov	qword ptr [r14], rax
.label_73:
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403120

	.globl set_suffix_length
	.type set_suffix_length, @function
set_suffix_length:
	mov	rbp, rbp
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rsp, rsp
	cmp	qword ptr [word ptr [rip + numeric_suffix_start]],  0
	mov	rbp, rbp
	je	.label_74
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + suffix_auto]],  1
.label_74:
	mov	rbp, rbp
	add	esi, -5
	xor	ebx, ebx
	cmp	esi, 2
	nop	
	ja	.label_76
	cmp	qword ptr [word ptr [rip + numeric_suffix_start]],  0
	je	.label_77
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + numeric_suffix_start]]
	mov	rsp, rsp
	lea	rcx, [rsp]
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_0
	call	xstrtoumax
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_77
	nop	
	mov	rax, qword ptr [rsp]
	mov	rcx, r14
	not	rcx
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rsi, [rsi]
	cmp	rax, r14
	mov	rsp, rsp
	mov	esi, 0
	cmovb	rsi, rax
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rsp, rsp
	cmova	rsi, rdx
	add	r14, rsi
.label_77:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + suffix_alphabet]]
	lea	rsi, [rsi]
	call	strlen
	mov	rcx, rax
	xor	edx, edx
	nop	
	mov	rax, r14
	nop	
	div	rcx
	mov	rsi, rdx
	mov	rbx, -1
	nop	dword ptr [rax + rax]
.label_79:
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rax, r14
	mov	rsp, rsp
	div	rcx
	mov	rsp, rsp
	inc	rbx
	mov	r14, rax
	test	r14, r14
	nop	
	jne	.label_79
	nop	
	mov	byte ptr [byte ptr [rip + suffix_auto]],  1
	nop	
	cmp	rsi, 1
	mov	rsp, rsp
	sbb	rbx, -1
.label_76:
	nop	
	mov	rax,  qword ptr [word ptr [rip + suffix_length]]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_75
	nop	
	cmp	rax, rbx
	mov	rbp, rbp
	jb	.label_78
	mov	byte ptr [byte ptr [rip + suffix_auto]],  1
	jmp	.label_80
.label_75:
	cmp	rbx, 2
	mov	eax, 2
	cmovae	rax, rbx
	nop	
	mov	qword ptr [word ptr [rip + suffix_length]],  rax
.label_80:
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	mov	rbp, rbp
	ret	
.label_78:
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.80
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rbp, rbp
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4032b0

	.globl io_blksize
	.type io_blksize, @function
io_blksize:
	mov	rcx, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	test	rcx, rcx
	lea	rdi, [rdi]
	setle	al
	movabs	rdx, 0x2000000000000000
	mov	rsp, rsp
	cmp	rcx, rdx
	seta	dl
	lea	rsi, [rsi]
	cmp	rcx, 0x20000
	mov	rsp, rsp
	jl	.label_81
	or	al, dl
	jne	.label_81
	mov	rsp, rsp
	movabs	rax, 0x2000000000000001
	cmp	rcx, rax
	lea	rdi, [rdi]
	mov	edx, 0x200
	mov	eax, 0x200
	cmovb	rax, rcx
	lea	rsi, [rsi]
	test	rcx, rcx
	cmovle	rax, rdx
	ret	
.label_81:
	mov	eax, 0x20000
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403320

	.globl ptr_align
	.type ptr_align, @function
ptr_align:
	lea	rcx, [rdi + rsi - 1]
	xor	edx, edx
	mov	rax, rcx
	div	rsi
	sub	rcx, rdx
	lea	rdi, [rdi]
	mov	rax, rcx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403340

	.globl input_file_size
	.type input_file_size, @function
input_file_size:
	mov	rsp, rsp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rbp, rbp
	push	rax
	nop	
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	r12, rdi
	xor	ebx, ebx
	xor	edi, edi
	xor	esi, esi
	mov	edx, 1
	call	lseek
	lea	rdi, [rdi]
	mov	r14, rax
	test	r14, r14
	nop	
	js	.label_90
	nop	
.label_91:
	mov	rbp, rbp
	lea	rsi, [r12 + rbx]
	mov	rdx, r15
	mov	rbp, rbp
	sub	rdx, rbx
	mov	rsp, rsp
	xor	edi, edi
	call	safe_read
	lea	rdi, [rdi]
	cmp	rax, -1
	mov	rbp, rbp
	je	.label_88
	nop	
	test	rax, rax
	je	.label_85
	mov	rsp, rsp
	add	rbx, rax
	lea	rsi, [rsi]
	cmp	rbx, r15
	lea	rdi, [rdi]
	jb	.label_91
	mov	r15,  qword ptr [word ptr [rip + label_82]]
	mov	rsp, rsp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_83
	add	r14, rbx
	lea	rdi, [rdi]
	call	usable_st_size
	cmp	r14, r15
	jg	.label_89
	mov	rbp, rbp
	xor	al, 1
	lea	rsi, [rsi]
	je	.label_84
.label_89:
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edx, 2
	mov	rsp, rsp
	call	lseek
	lea	rsi, [rsi]
	mov	r15, rax
	mov	rbp, rbp
	test	r15, r15
	lea	rsi, [rsi]
	js	.label_86
	mov	rsp, rsp
	cmp	r15, r14
	je	.label_84
	nop	
	xor	edi, edi
	xor	edx, edx
	mov	rsi, r14
	lea	rsi, [rsi]
	call	lseek
	test	rax, rax
	js	.label_87
	cmp	r15, r14
	lea	rsi, [rsi]
	cmovl	r15, r14
.label_84:
	sub	r15, r14
	add	rbx, r15
	movabs	rax, 0x7fffffffffffffff
	nop	
	cmp	rbx, rax
	mov	rbp, rbp
	jne	.label_85
.label_83:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	lea	rdi, [rdi]
	mov	rbx, -1
	mov	rsp, rsp
	jmp	.label_85
.label_90:
	call	__errno_location
	mov	rbx, -1
	mov	rbp, rbp
	cmp	dword ptr [rax], 0x1d
	jne	.label_85
	nop	
	mov	dword ptr [rax], 0
	nop	
	jmp	.label_85
.label_88:
	mov	rbp, rbp
	mov	rbx, -1
	jmp	.label_85
.label_86:
	nop	
	mov	rbx, -1
	mov	rbp, rbp
	jmp	.label_85
.label_87:
	mov	rbx, -1
.label_85:
	mov	rsp, rsp
	mov	rax, rbx
	nop	
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034e0

	.globl lines_split
	.type lines_split, @function
lines_split:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	push	r15
	nop	
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 8], rdx
	mov	r14, rsi
	mov	qword ptr [rsp], r14
	mov	r13, rdi
	mov	al, 1
	nop	
	mov	dword ptr [rsp + 0x1c], eax
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_94:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	rsi, r14
	nop	
	mov	rdx, qword ptr [rsp + 8]
	nop	
	call	safe_read
	lea	rsi, [rsi]
	cmp	rax, -1
	je	.label_97
	lea	rsi, [rsi]
	lea	rbx, [r14 + rax]
	lea	rdi, [rdi]
	mov	cl,  byte ptr [byte ptr [rip + eolchar]]
	mov	byte ptr [r14 + rax], cl
	lea	rsi, [rsi]
	lea	rbp, [r14 + rax + 1]
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_92
	nop	word ptr [rax + rax]
.label_98:
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x1c]
	and	al, 1
	mov	rdx, r14
	mov	rsi, qword ptr [rsp + 0x20]
	sub	rdx, rsi
	movzx	edi, al
	mov	rsp, rsp
	call	cwrite
	lea	rdi, [rdi]
	mov	al, 1
	mov	dword ptr [rsp + 0x1c], eax
	xor	r12d, r12d
.label_92:
	mov	qword ptr [rsp + 0x20], r14
	mov	r15d,  dword ptr [dword ptr [rip + eolchar]]
	nop	word ptr [rax + rax]
.label_95:
	mov	rsp, rsp
	mov	rdx, rbp
	nop	
	sub	rdx, r14
	mov	rdi, r14
	mov	esi, r15d
	call	memchr
	mov	r14, rax
	lea	rdi, [rdi]
	cmp	r14, rbx
	lea	rsi, [rsi]
	je	.label_93
	inc	r14
	inc	r12
	cmp	r12, r13
	nop	
	jb	.label_95
	mov	rbp, rbp
	jmp	.label_98
	nop	word ptr cs:[rax + rax]
.label_93:
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x20]
	sub	rbx, rsi
	je	.label_96
	mov	eax, dword ptr [rsp + 0x1c]
	mov	rsp, rsp
	and	al, 1
	movzx	edi, al
	nop	
	mov	rdx, rbx
	mov	rsp, rsp
	call	cwrite
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x1c], 0
.label_96:
	mov	r14, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	mov	rbp, rbp
	jne	.label_94
	mov	rsp, rsp
	add	rsp, 0x28
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_97:
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	xor	edi, edi
	mov	esi, 3
	mov	rbp, rbp
	call	quotearg_n_style_colon
	mov	rbp, rbp
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403690

	.globl bytes_split
	.type bytes_split, @function
bytes_split:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x10], r8
	mov	r14, rcx
	mov	qword ptr [rsp + 0x18], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp + 0x30], rdi
	lea	rsi, [r8 - 1]
	mov	rsp, rsp
	mov	bpl, 1
	mov	rsp, rsp
	xor	r12d, r12d
	mov	r13b, 1
	mov	rcx, rdi
.label_99:
	lea	rdi, [rdi]
	cmp	r14, -1
	mov	rsp, rsp
	je	.label_102
	lea	rsi, [rsi]
	cmp	r14, qword ptr [rsp + 0x18]
	setb	byte ptr [rsp + 0x2f]
	jmp	.label_105
	nop	
.label_102:
	test	r13b, 1
	lea	rdi, [rdi]
	jne	.label_112
	mov	rbp, rbp
	mov	r15, rsi
	xor	edi, edi
	mov	edx, 1
	mov	rsi, rcx
	mov	rbp, rbp
	mov	rbx, rcx
	call	lseek
	mov	rsp, rsp
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_103
	mov	bpl, 1
.label_103:
	mov	rsp, rsp
	cmovne	rbx, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	jmp	.label_108
.label_112:
	lea	rsi, [rsi]
	mov	rbx, rcx
	mov	r15, rsi
.label_108:
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	call	safe_read
	mov	r14, rax
	cmp	r14, -1
	je	.label_100
	mov	rsp, rsp
	test	r14, r14
	mov	rbp, rbp
	sete	byte ptr [rsp + 0x2f]
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rcx, rbx
.label_105:
	cmp	r14, rcx
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	jb	.label_111
	nop	word ptr cs:[rax + rax]
.label_114:
	mov	al, r13b
	or	al, bpl
	lea	rsi, [rsi]
	and	bpl, 1
	mov	rsp, rsp
	test	al, 1
	je	.label_101
	movzx	edi, bpl
	mov	rsp, rsp
	mov	r13, r12
	nop	
	mov	r12, rsi
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rbx, rbp
	mov	rbp, rcx
	call	cwrite
	mov	rcx, rbp
	mov	rbp, rbx
	lea	rdi, [rdi]
	mov	rsi, r12
	mov	r12, r13
	lea	rsi, [rsi]
	mov	r13b, al
.label_101:
	movzx	eax, bpl
	add	r12, rax
	cmp	rsi, r12
	jae	.label_106
	mov	rbp, rbp
	mov	al, r13b
	and	al, 1
	je	.label_109
.label_106:
	cmp	rsi, r12
	setae	bpl
	mov	rsp, rsp
	add	r15, rcx
	lea	rsi, [rsi]
	sub	r14, rcx
	mov	rax, qword ptr [rsp + 0x30]
	cmp	r14, rax
	mov	rcx, rax
	jae	.label_114
	mov	rcx, qword ptr [rsp + 0x30]
.label_111:
	mov	rsp, rsp
	mov	al, 1
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_107
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rcx
	mov	al, r13b
	mov	rbp, rbp
	or	al, bpl
	and	bpl, 1
	test	al, 1
	mov	rsp, rsp
	je	.label_113
	mov	rsp, rsp
	movzx	edi, bpl
	lea	rdi, [rdi]
	mov	rbx, r12
	mov	r12, rsi
	nop	
	mov	rsi, r15
	mov	rdx, r14
	nop	
	call	cwrite
	mov	rsi, r12
	mov	r12, rbx
	lea	rdi, [rdi]
	mov	r13b, al
.label_113:
	movzx	eax, bpl
	lea	rsi, [rsi]
	add	r12, rax
	mov	rsp, rsp
	xor	ebp, ebp
	mov	rbp, rbp
	mov	bl, r13b
	nop	
	and	bl, 1
	lea	rdi, [rdi]
	mov	rdx, r14
	cmove	rdx, rbp
	lea	rsi, [rsi]
	cmp	r12, qword ptr [rsp + 0x10]
	setne	al
	lea	rsi, [rsi]
	cmovne	rdx, r14
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 8]
	nop	
	sub	rcx, rdx
	lea	rsi, [rsi]
	or	al, bl
.label_107:
	lea	rsi, [rsi]
	test	al, 1
	je	.label_109
	xor	byte ptr [rsp + 0x2f], 1
	mov	r14, -1
	jne	.label_99
.label_109:
	mov	rbx, qword ptr [rsp + 0x10]
	cmp	r12, rbx
	jae	.label_104
	sub	rbx, r12
	nop	word ptr cs:[rax + rax]
.label_110:
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	xor	edx, edx
	call	cwrite
	dec	rbx
	jne	.label_110
.label_104:
	lea	rsi, [rsi]
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
.label_100:
	lea	rsi, [rsi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_2
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebx
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403970

	.globl line_bytes_split
	.type line_bytes_split, @function
line_bytes_split:
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	lea	rdi, [rdi]
	push	r12
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x68
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rdx
	mov	r14, rsi
	nop	
	mov	qword ptr [rsp + 0x10], r14
	mov	qword ptr [rsp + 0x30], rdi
	mov	rax, rdx
	not	rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	rsp, rsp
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	mov	rsp, rsp
	xor	ebx, ebx
.label_134:
	mov	rbp, rbp
	mov	r12, rsi
	xor	edi, edi
	nop	
	mov	rsi, r14
	call	safe_read
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_132
	mov	rsp, rsp
	cmp	rax, -1
	mov	rbp, r14
	mov	rcx, rax
	nop	
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	rsi, r12
	jne	.label_117
	mov	rbp, rbp
	jmp	.label_119
.label_115:
	nop	
	mov	dil, r15b
	nop	
	mov	r15, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	jmp	.label_121
.label_128:
	mov	dil, r15b
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	nop	
	mov	rbp, r13
	nop	
	mov	r15, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	jmp	.label_121
	nop	word ptr cs:[rax + rax]
.label_117:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x58], rsi
	mov	r14, qword ptr [rsp + 0x30]
	sub	r14, rbx
	sub	r14, qword ptr [rsp + 0x60]
	cmp	r14, rcx
	jbe	.label_127
	mov	esi,  dword ptr [dword ptr [rip + eolchar]]
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], rdx
	call	memrchr
	mov	rbp, rbp
	mov	r12, rax
	xor	r14d, r14d
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_118
	nop	word ptr cs:[rax + rax]
.label_127:
	mov	qword ptr [rsp + 0x40], rcx
	lea	rax, [rbp + r14 - 1]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], rax
	mov	rbp, rbp
	mov	esi,  dword ptr [dword ptr [rip + eolchar]]
	mov	rdi, rbp
	mov	rdx, r14
	lea	rdi, [rdi]
	call	memrchr
	lea	rdi, [rdi]
	mov	r12, rax
.label_118:
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x60], 0
	mov	rbp, rbp
	je	.label_129
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_135
	test	r12, r12
	nop	
	jne	.label_135
	mov	qword ptr [rsp + 0x50], rbx
	jmp	.label_120
	nop	word ptr cs:[rax + rax]
.label_129:
	nop	
	mov	qword ptr [rsp + 0x50], rbx
	jmp	.label_124
	nop	dword ptr [rax + rax]
.label_135:
	nop	
	mov	r13, rbp
	mov	rbp, rbp
	test	rbx, rbx
	sete	al
	lea	rsi, [rsi]
	movzx	edi, al
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	mov	rdx, rbp
	call	cwrite
	add	rbx, rbp
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x28]
	cmp	rbp, rsi
	nop	
	jbe	.label_126
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], rbx
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	mov	rbx, r13
	mov	rbp, rsi
	call	xrealloc
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x48], rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x58], rbp
	lea	rdi, [rdi]
	mov	rbp, rbx
.label_124:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], rax
	jmp	.label_120
.label_126:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], rbx
	mov	qword ptr [rsp + 0x58], rsi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], rax
	mov	rbp, r13
	nop	dword ptr [rax]
.label_120:
	test	r12, r12
	mov	rbp, rbp
	je	.label_125
	mov	r13, r12
	lea	rdi, [rdi]
	sub	r13, rbp
	mov	rsi, rbp
	lea	rbp, [r13 + 1]
	mov	rbx, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	test	rbx, rbx
	nop	
	sete	al
	movzx	edi, al
	mov	rsp, rsp
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	cwrite
	mov	rsp, rsp
	lea	rbx, [rbx + r13 + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], rbx
	mov	rcx, qword ptr [rsp + 0x40]
	nop	
	sub	rcx, rbp
	inc	r12
	mov	r15, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	test	r15, r15
	cmove	rbp, r15
	sub	r14, rbp
	mov	rsp, rsp
	mov	dil, 1
	mov	rbp, r12
	jmp	.label_137
	nop	word ptr cs:[rax + rax]
.label_125:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x40]
	test	rcx, rcx
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_115
	mov	r13, rbp
	mov	al, r15b
	and	al, 1
	jne	.label_128
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x50]
	mov	rbp, rbp
	test	rbx, rbx
	sete	al
	mov	rsi, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0x18], r15
	lea	rsi, [rsi]
	mov	r15, rsi
	test	r15, r15
	lea	rdi, [rdi]
	mov	rbp, rcx
	cmovne	rbp, r14
	movzx	edi, al
	mov	r12, r14
	lea	rsi, [rsi]
	cmove	r12, r15
	mov	rsp, rsp
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, rbp
	call	cwrite
	nop	
	mov	rcx, qword ptr [rsp + 0x40]
	add	rbx, rbp
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], rbx
	sub	rcx, rbp
	nop	
	add	r13, rbp
	mov	rbp, r13
	lea	rdi, [rdi]
	sub	r14, r12
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	mov	dil, al
.label_137:
	nop	
	mov	rsi, qword ptr [rsp + 0x58]
.label_121:
	mov	rsp, rsp
	test	r15, r15
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x50]
	je	.label_131
	test	r14, r14
	jne	.label_136
.label_131:
	test	r15, r15
	mov	rbp, rbp
	jne	.label_116
	mov	rsp, rsp
	test	rcx, rcx
	nop	
	je	.label_116
.label_136:
	mov	rsp, rsp
	mov	r13, rbp
	nop	
	test	r15, r15
	cmove	r14, rcx
	mov	rax, rsi
	mov	rsp, rsp
	sub	rax, qword ptr [rsp + 0x60]
	cmp	rax, r14
	lea	rsi, [rsi]
	jae	.label_130
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x40], dil
	mov	rbp, rbp
	mov	rbp, rcx
	nop	
	cmp	rsi, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	ja	.label_122
	mov	rsp, rsp
	add	rsi, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x58], rsi
	nop	
	mov	rdi, qword ptr [rsp + 0x48]
	call	xrealloc
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	jmp	.label_133
.label_130:
	mov	byte ptr [rsp + 0x40], dil
	mov	rbp, rbp
	mov	rbp, rcx
.label_133:
	mov	rax, qword ptr [rsp + 0x48]
	nop	
	mov	r12, qword ptr [rsp + 0x60]
	nop	
	lea	rdi, [rax + r12]
	mov	rsi, r13
	lea	rdi, [rdi]
	mov	rdx, r14
	call	memcpy
	add	r12, r14
	nop	
	mov	qword ptr [rsp + 0x60], r12
	mov	rcx, rbp
	mov	rbp, r13
	lea	rdi, [rdi]
	sub	rcx, r14
	add	rbp, r14
	mov	rsi, qword ptr [rsp + 0x58]
	mov	dil, byte ptr [rsp + 0x40]
.label_116:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	test	r15, r15
	nop	
	mov	r15d, 0
	nop	
	jne	.label_123
	lea	rsi, [rsi]
	mov	r15b, dil
.label_123:
	cmovne	rbx, rax
	test	rcx, rcx
	lea	rdi, [rdi]
	jne	.label_117
	cmp	qword ptr [rsp + 8], 0
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x10]
	jne	.label_134
.label_132:
	cmp	qword ptr [rsp + 0x60], 0
	mov	rbp, rbp
	je	.label_138
	test	rbx, rbx
	mov	rbp, rbp
	sete	al
	movzx	edi, al
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x60]
	call	cwrite
.label_138:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x48]
	add	rsp, 0x68
	nop	
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	free
.label_122:
	mov	rbp, rbp
	call	xalloc_die
.label_119:
	nop	
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_2
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, ebx
	nop	
	call	error
	.section	.text
	.align	32
	#Procedure 0x403e90

	.globl bytes_chunk_extract
	.type bytes_chunk_extract, @function
bytes_chunk_extract:
	push	rbp
	mov	rsp, rsp
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	rbx, r8
	mov	r14, rcx
	mov	r15, rdx
	lea	r13, [rdi - 1]
	cmp	r13, rsi
	jae	.label_139
	cmp	rsi, r9
	ja	.label_139
	xor	edx, edx
	mov	rax, r9
	mov	rbp, rbp
	div	rsi
	lea	rdi, [rdi]
	mov	r12, rax
	mov	rbp, rbp
	imul	r13, r12
	imul	r12, rdi
	cmp	rdi, rsi
	mov	rbp, rbp
	cmove	r12, r9
	cmp	r13, rbx
	jae	.label_141
	lea	rdi, [rdi]
	lea	rsi, [r15 + r13]
	sub	rbx, r13
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	memmove
	jmp	.label_142
.label_141:
	xor	edi, edi
	mov	edx, 1
	lea	rsi, [rsi]
	mov	rsi, r13
	call	lseek
	mov	rbx, -1
	test	rax, rax
	jns	.label_142
	lea	rdi, [rdi]
	jmp	.label_143
	nop	word ptr [rax + rax]
.label_145:
	lea	rsi, [rsi]
	add	r13, rbp
	lea	rsi, [rsi]
	mov	rbx, -1
.label_142:
	nop	
	cmp	r12, r13
	lea	rdi, [rdi]
	jle	.label_140
	lea	rdi, [rdi]
	cmp	rbx, -1
	jne	.label_144
	xor	edi, edi
	nop	
	mov	rsi, r15
	nop	
	mov	rdx, r14
	mov	rbp, rbp
	call	safe_read
	lea	rsi, [rsi]
	mov	rbx, rax
	cmp	rbx, -1
	mov	rsp, rsp
	je	.label_143
.label_144:
	test	rbx, rbx
	je	.label_140
	mov	rbp, r12
	nop	
	sub	rbp, r13
	mov	rsp, rsp
	cmp	rbx, rbp
	cmovb	rbp, rbx
	mov	edi, 1
	lea	rsi, [rsi]
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, rbp
	call	full_write
	lea	rdi, [rdi]
	cmp	rax, rbp
	je	.label_145
	mov	rbp, rbp
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	edi, ebx
	call	ignorable
	test	al, al
	lea	rdi, [rdi]
	jne	.label_145
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, 3
	mov	edx, OFFSET FLAT:.str.12
	mov	rsp, rsp
	jmp	.label_146
.label_140:
	add	rsp, 8
	nop	
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
.label_143:
	lea	rsi, [rsi]
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
.label_146:
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	mov	rcx, rax
	nop	
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	nop	
	mov	esi, ebx
	call	error
.label_139:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.102
	mov	esi, OFFSET FLAT:.str.82
	mov	rsp, rsp
	mov	edx, 0x3e0
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.bytes_chunk_extract
	nop	
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404070

	.globl lines_chunk_split
	.type lines_chunk_split, @function
lines_chunk_split:
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x68
	mov	rbp, rbp
	mov	rbx, r9
	nop	
	mov	qword ptr [rsp + 8], rbx
	mov	r15, r8
	nop	
	mov	rbp, rcx
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rsp + 0x20], rdx
	mov	r14, rdi
	cmp	r14, rsi
	ja	.label_156
	lea	rax, [rsi - 1]
	mov	rsp, rsp
	cmp	rax, rbx
	jae	.label_156
	xor	edx, edx
	mov	rax, rbx
	mov	rsp, rsp
	div	rsi
	mov	r13d, 1
	lea	rsi, [rsi]
	xor	ecx, ecx
	cmp	r14, 2
	lea	rdi, [rdi]
	jb	.label_161
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], rsi
	lea	rsi, [rsi]
	lea	r13, [r14 - 1]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rax
	mov	rsp, rsp
	imul	rcx, r13
	dec	rcx
	mov	rsi, rcx
	mov	rsp, rsp
	sub	rsi, r15
	jae	.label_168
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x20]
	nop	
	lea	rsi, [rdi + rcx]
	sub	r15, rcx
	mov	rsp, rsp
	mov	rdx, r15
	mov	rsp, rsp
	mov	r12, rcx
	mov	rbp, rbp
	call	memmove
	mov	rcx, r12
	lea	rsi, [rsi]
	jmp	.label_153
.label_161:
	nop	
	mov	qword ptr [rsp + 0x60], rsi
	mov	qword ptr [rsp + 0x58], rax
	lea	r12, [rax - 1]
	jmp	.label_153
.label_168:
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	edx, 1
	mov	rbp, rbp
	mov	r15, rcx
	call	lseek
	mov	rcx, r15
	mov	r15, -1
	lea	rsi, [rsi]
	test	rax, rax
	mov	r12, rcx
	js	.label_162
.label_153:
	lea	rdi, [rdi]
	cmp	rcx, rbx
	nop	
	jge	.label_173
	mov	rbp, rbp
	lea	rax, [rbx - 1]
	mov	qword ptr [rsp + 0x50], rax
	mov	byte ptr [rsp + 0x4f], 1
	xor	edx, edx
.label_171:
	mov	rbp, rbp
	cmp	r15, -1
	mov	rbp, rbp
	jne	.label_154
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdx
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, rbp
	mov	rbp, rcx
	lea	rdi, [rdi]
	call	safe_read
	mov	rcx, rbp
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	r15, rax
	mov	rbp, rbp
	cmp	r15, -1
	je	.label_162
.label_154:
	nop	
	test	r15, r15
	je	.label_155
	mov	rbp, rbx
	mov	rbp, rbp
	sub	rbp, rcx
	lea	rsi, [rsi]
	cmp	r15, rbp
	cmovb	rbp, r15
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	nop	
	test	rbp, rbp
	je	.label_170
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	lea	rbx, [rax + rbp]
	nop	
	mov	qword ptr [rsp + 0x10], rbx
	mov	rdi, rax
	nop	word ptr cs:[rax + rax]
.label_167:
	nop	
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rbp
	mov	al, byte ptr [rsp + 0x4f]
	mov	byte ptr [rsp + 0x40], al
	mov	r15, rdi
	mov	rsp, rsp
	mov	rax, r12
	sub	rax, rcx
	mov	ecx, 0
	cmovns	rcx, rax
	lea	rdi, [rdi]
	cmp	rbp, rcx
	cmovb	rcx, rbp
	lea	rdi, [r15 + rcx]
	nop	
	mov	esi,  dword ptr [dword ptr [rip + eolchar]]
	mov	rdx, rbp
	lea	rdi, [rdi]
	sub	rdx, rcx
	call	memchr
	mov	rbp, rax
	mov	rbp, rbp
	lea	rdi, [rbp + 1]
	nop	
	test	rbp, rbp
	nop	
	setne	byte ptr [rsp + 0x4f]
	cmove	rdi, rbx
	mov	rdx, rdi
	sub	rdx, r15
	cmp	r13, r14
	jne	.label_174
	mov	qword ptr [rsp + 0x40], rdi
	mov	edi, 1
	mov	rsi, r15
	mov	r15, rdx
	call	full_write
	mov	rdi, qword ptr [rsp + 0x40]
	cmp	rax, r15
	lea	rsi, [rsi]
	mov	rdx, r15
	lea	rsi, [rsi]
	je	.label_158
	jmp	.label_165
	nop	dword ptr [rax + rax]
.label_174:
	lea	rsi, [rsi]
	test	r14, r14
	nop	
	jne	.label_158
	lea	rdi, [rdi]
	mov	al, byte ptr [rsp + 0x40]
	and	al, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], rdi
	lea	rsi, [rsi]
	movzx	edi, al
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rbp, rbp
	mov	r15, rdx
	nop	
	call	cwrite
	mov	rdx, r15
	mov	rdi, qword ptr [rsp + 0x40]
	nop	word ptr [rax + rax]
.label_158:
	nop	
	mov	rcx, qword ptr [rsp + 0x38]
	add	rcx, rdx
	mov	rsp, rsp
	test	rbp, rbp
	lea	rsi, [rsi]
	setne	r15b
	lea	rsi, [rsi]
	cmp	r12, rcx
	jl	.label_150
	test	r15b, r15b
	mov	rsp, rsp
	je	.label_157
.label_150:
	mov	qword ptr [rsp + 0x38], rdx
	mov	rsp, rsp
	mov	al, byte ptr [rsp + 0x4f]
.label_151:
	nop	
	mov	dword ptr [rsp + 0x1c], eax
	cmp	rdi, rbx
	mov	qword ptr [rsp + 0x40], rdi
	sete	al
	mov	bl, r15b
	xor	bl, 1
	and	bl, al
	lea	rsi, [rsi]
	inc	r13
	nop	word ptr cs:[rax + rax]
.label_166:
	nop	
	test	bl, bl
	mov	rbp, rbp
	jne	.label_163
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_175
	cmp	r13, r14
	ja	.label_148
.label_175:
	lea	rsi, [rsi]
	add	r12, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x60], r13
	nop	
	cmove	r12, qword ptr [rsp + 0x50]
	mov	rbp, rbp
	test	r14, r14
	jne	.label_149
	cmp	r12, rcx
	lea	rsi, [rsi]
	jge	.label_149
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	xor	edx, edx
	mov	rbp, rcx
	lea	rdi, [rdi]
	call	cwrite
	nop	
	mov	rcx, rbp
	cmp	r12, rcx
	nop	
	setl	al
	or	al, r15b
	lea	rdi, [rdi]
	inc	r13
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_166
	lea	rsi, [rsi]
	jmp	.label_169
	nop	dword ptr [rax + rax]
.label_149:
	cmp	r12, rcx
	mov	rbx, qword ptr [rsp + 0x10]
	nop	
	mov	rdi, qword ptr [rsp + 0x40]
	jge	.label_152
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x1c]
	mov	rbp, rbp
	jmp	.label_147
.label_152:
	lea	rsi, [rsi]
	xor	eax, eax
.label_147:
	mov	r15b, al
	mov	rbp, rbp
	and	r15b, 1
	nop	
	cmp	r12, rcx
	jl	.label_151
	lea	rdi, [rdi]
	test	r15b, r15b
	mov	rsp, rsp
	jne	.label_151
	jmp	.label_159
.label_163:
	nop	
	dec	r13
	mov	al, 1
	mov	qword ptr [rsp + 0x28], rax
	jmp	.label_164
.label_169:
	dec	r13
.label_164:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 0x40]
.label_159:
	mov	rdx, qword ptr [rsp + 0x38]
.label_157:
	mov	rbp, qword ptr [rsp + 0x30]
	sub	rbp, rdx
	mov	rsp, rsp
	cmp	rdi, rbx
	jne	.label_167
	nop	dword ptr [rax]
.label_170:
	mov	rsp, rsp
	mov	r15, -1
	nop	
	mov	rbx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	cmp	rcx, rbx
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp]
	nop	
	mov	rdx, qword ptr [rsp + 0x28]
	jl	.label_171
	jmp	.label_155
.label_173:
	xor	edx, edx
.label_155:
	mov	rbp, rbp
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
	test	r14, r14
	mov	rsp, rsp
	jne	.label_148
	mov	rbp, rbp
	lea	rcx, [r13 + rax]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rsp + 0x60]
	nop	
	ja	.label_148
	lea	rbx, [r13 + rax + 1]
	nop	dword ptr [rax]
.label_172:
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	mov	rsp, rsp
	xor	edx, edx
	lea	rdi, [rdi]
	call	cwrite
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_148
	cmp	rbx, qword ptr [rsp + 0x60]
	nop	
	lea	rbx, [rbx + 1]
	jbe	.label_172
.label_148:
	nop	
	add	rsp, 0x68
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	ret	
.label_165:
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rax]
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_3
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	nop	
	jmp	.label_160
.label_156:
	mov	edi, OFFSET FLAT:.str.103
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.82
	lea	rsi, [rsi]
	mov	edx, 0x362
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.lines_chunk_split
	call	__assert_fail
.label_162:
	lea	rdi, [rdi]
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
.label_160:
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	edi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4045a0

	.globl lines_rr
	.type lines_rr, @function
lines_rr:
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	sub	rsp, 0x68
	mov	r12, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], r12
	mov	qword ptr [rsp + 0x40], rdx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x60], rdi
	test	rdi, rdi
	lea	rsi, [rsi]
	jne	.label_190
	lea	rdi, [rdi]
	mov	esi, 0x20
	mov	rdi, r14
	call	xnmalloc
	mov	rsp, rsp
	mov	r15, rax
	test	r14, r14
	mov	rbp, rbp
	je	.label_190
	mov	rbp, r15
	add	rbp, 0x18
	nop	
	mov	rbx, r14
	nop	word ptr cs:[rax + rax]
.label_184:
	mov	rbp, rbp
	call	next_file_name
	mov	rdi,  qword ptr [word ptr [rip + outfile]]
	mov	rsp, rsp
	call	xstrdup
	mov	qword ptr [rbp - 0x18], rax
	mov	dword ptr [rbp - 0x10], 0xffffffff
	nop	
	mov	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	mov	dword ptr [rbp], 0
	add	rbp, 0x20
	dec	rbx
	mov	rsp, rsp
	jne	.label_184
.label_190:
	mov	qword ptr [rsp + 0x50], r15
	mov	qword ptr [rsp + 0x38], r14
	xor	ebp, ebp
	lea	rsi, [rsi]
	mov	eax, 1
	mov	qword ptr [rsp + 0x58], rax
	mov	rbp, rbp
	xor	ebx, ebx
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	jmp	.label_197
	nop	word ptr [rax + rax]
.label_196:
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 0x48]
.label_197:
	mov	rsp, rsp
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, r12
	lea	rsi, [rsi]
	call	safe_read
	mov	r12, rax
	lea	rsi, [rsi]
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_186
	cmp	r12, -1
	nop	
	je	.label_191
	nop	
	mov	r15, qword ptr [rsp + 0x40]
	nop	
	add	r12, r15
	lea	rdi, [rdi]
	jmp	.label_195
	nop	
.label_181:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	cmp	rax, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	lea	rax, [rax + 1]
	mov	ecx, 1
	nop	
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, qword ptr [rsp + 0x48]
.label_195:
	mov	rax, rbp
	mov	r13b, bl
.label_192:
	mov	rbp, rax
.label_199:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x48], rbp
	shl	rbp, 5
	mov	qword ptr [rsp + 0x18], rbp
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	lea	rcx, [rax + rbp + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rcx
	mov	rsp, rsp
	lea	rax, [rax + rbp + 0x10]
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, r15
.label_194:
	mov	bl, r13b
	nop	dword ptr [rax + rax]
.label_177:
	mov	rbp, rbp
	cmp	rbp, r12
	je	.label_196
	mov	esi,  dword ptr [dword ptr [rip + eolchar]]
	lea	rdi, [rdi]
	mov	rdx, r12
	sub	rdx, rbp
	mov	rdi, rbp
	call	memchr
	lea	rsi, [rsi]
	mov	r14, rax
	lea	r15, [r14 + 1]
	nop	
	test	r14, r14
	mov	r13, r15
	mov	rbp, rbp
	cmove	r13, r12
	sub	r13, rbp
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x60]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_203
	cmp	qword ptr [rsp + 0x58], rax
	jne	.label_183
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + unbuffered]]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	jne	.label_185
	mov	edi, 1
	mov	rsi, rbp
	mov	rdx, r13
	call	full_write
	cmp	rax, r13
	je	.label_183
	jmp	.label_198
	nop	dword ptr [rax + rax]
.label_185:
	nop	
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	edx, 1
	mov	rdi, rbp
	mov	rsi, r13
	call	fwrite_unlocked
	cmp	rax, 1
	jne	.label_204
.label_183:
	mov	rsp, rsp
	test	r14, r14
	lea	rsi, [rsi]
	mov	rbp, r12
	mov	rbp, rbp
	je	.label_177
	jmp	.label_181
	nop	dword ptr [rax]
.label_203:
	nop	
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	call	ofile_open
	mov	byte ptr [rsp + 0x17], al
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + unbuffered]]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_188
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x28]
	mov	edi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	rdx, r13
	mov	rsp, rsp
	call	full_write
	cmp	rax, r13
	je	.label_180
	jmp	.label_193
.label_188:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rax]
	mov	edx, 1
	mov	rdi, rbp
	mov	rsi, r13
	call	fwrite_unlocked
	nop	
	cmp	rax, 1
	je	.label_180
.label_193:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	edi, ebp
	call	ignorable
	lea	rsi, [rsi]
	test	al, al
	nop	
	je	.label_182
.label_180:
	lea	rsi, [rsi]
	and	bl, 1
	mov	r13b, byte ptr [rsp + 0x17]
	or	r13b, bl
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp]
	call	ignorable
	test	al, al
	jne	.label_200
	mov	al, 1
	mov	qword ptr [rsp], rax
.label_200:
	test	r13b, r13b
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	je	.label_201
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx]
	mov	rbp, rbp
	call	rpl_fclose
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_176
	nop	
	mov	qword ptr [rbx], 0
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xfffffffe
.label_201:
	test	r14, r14
	mov	rsp, rsp
	mov	rbp, r12
	je	.label_194
	mov	rbp, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	inc	rbp
	cmp	rbp, qword ptr [rsp + 0x38]
	jne	.label_199
	mov	al, 1
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	xor	eax, eax
	mov	rcx, qword ptr [rsp]
	lea	rsi, [rsi]
	test	cl, 1
	mov	ecx, 0
	mov	qword ptr [rsp], rcx
	jne	.label_192
.label_186:
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x60], 0
	mov	r15, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	jne	.label_178
	test	r15, r15
	nop	
	je	.label_178
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	test	al, 1
	cmovne	rbp, r15
	lea	rdi, [rdi]
	movsxd	r14, ebp
	lea	rbp, [r12 + 0x18]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_179:
	nop	
	cmp	rbx, r14
	mov	rbp, rbp
	jb	.label_189
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + elide_empty_files]]
	and	al, 1
	jne	.label_189
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	rdx, r15
	lea	rdi, [rdi]
	call	ofile_open
.label_189:
	mov	esi, dword ptr [rbp - 0x10]
	test	esi, esi
	js	.label_202
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp]
	mov	rbp, rbp
	call	closeout
.label_202:
	nop	
	mov	dword ptr [rbp - 0x10], 0xfffffffe
	lea	rdi, [rdi]
	inc	rbx
	mov	rsp, rsp
	add	rbp, 0x20
	cmp	r15, rbx
	jne	.label_179
.label_178:
	add	rsp, 0x68
	pop	rbx
	nop	
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_204:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	clearerr_unlocked
.label_198:
	call	__errno_location
	mov	rbp, rbp
	mov	ebx, dword ptr [rax]
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
	mov	edx, 5
	call	dcgettext
.label_187:
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, ebx
	call	error
.label_191:
	call	__errno_location
	mov	rbp, rbp
	mov	ebx, dword ptr [rax]
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rbp, rbp
	call	quotearg_n_style_colon
	jmp	.label_187
.label_176:
	mov	ebp, dword ptr [rbp]
.label_182:
	mov	rax, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + rcx]
	xor	edi, edi
	mov	esi, 3
	nop	
	call	quotearg_n_style_colon
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebp
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b00

	.globl closeout
	.type closeout, @function
closeout:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r14, rcx
	mov	rsp, rsp
	mov	r15d, edx
	mov	ebx, esi
	mov	rbp, rdi
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_205
	mov	rdi, rbp
	call	rpl_fclose
	nop	
	test	eax, eax
	je	.label_205
	call	__errno_location
	lea	rdi, [rdi]
	mov	r12d, dword ptr [rax]
	mov	edi, r12d
	call	ignorable
	nop	
	test	al, al
	je	.label_214
.label_205:
	lea	rsi, [rsi]
	test	ebx, ebx
	js	.label_212
	nop	
	test	rbp, rbp
	jne	.label_215
	mov	edi, ebx
	call	close
	test	eax, eax
	nop	
	js	.label_206
.label_215:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + n_open_pipes]]
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_212
	mov	rdx,  qword ptr [word ptr [rip + open_pipes]]
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + n_open_pipes]]
	lea	rsi, [rsi]
	xor	ecx, ecx
.label_211:
	mov	rsp, rsp
	cmp	dword ptr [rdx + rcx*4], ebx
	mov	rsp, rsp
	je	.label_209
	inc	rcx
	mov	rbp, rbp
	cmp	rcx, rsi
	mov	rsp, rsp
	mov	rax, rsi
	mov	rbp, rbp
	jb	.label_211
	mov	rsp, rsp
	jmp	.label_212
.label_209:
	lea	rdx, [rax - 1]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + n_open_pipes]],  rdx
	nop	
	mov	rdx,  qword ptr [word ptr [rip + open_pipes]]
	mov	rsp, rsp
	mov	eax, dword ptr [rdx + rax*4 - 4]
	mov	dword ptr [rdx + rcx*4], eax
.label_212:
	test	r15d, r15d
	lea	rdi, [rdi]
	jle	.label_213
	mov	dword ptr [rsp + 0x1c], 0
	mov	rsp, rsp
	lea	rsi, [rsp + 0x1c]
	xor	edx, edx
	mov	edi, r15d
	lea	rsi, [rsi]
	call	waitpid
	nop	
	cmp	eax, -1
	jne	.label_207
	call	__errno_location
	mov	ebx, dword ptr [rax]
	nop	
	cmp	ebx, 0xa
	mov	rbp, rbp
	jne	.label_208
.label_207:
	mov	ebx, dword ptr [rsp + 0x1c]
	mov	ebp, ebx
	mov	rsp, rsp
	and	ebp, 0x7f
	mov	eax, ebp
	shl	eax, 0x18
	add	eax, 0x1000000
	nop	
	sar	eax, 0x19
	test	eax, eax
	jle	.label_210
	mov	rsp, rsp
	cmp	ebp, 0xd
	je	.label_213
	lea	rsi, [rsp]
	mov	edi, ebp
	mov	rbp, rbp
	call	sig2str
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_216
	lea	rdi, [rsp]
	mov	esi, 1
	mov	edx, 0x13
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.107
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	r8d, ebp
	call	__sprintf_chk
.label_216:
	or	ebp, 0x80
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.108
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, 3
	lea	rsi, [rsi]
	mov	rdx, r14
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	mov	rcx, rax
	nop	
	mov	r9,  qword ptr [word ptr [rip + filter_command]]
	lea	r8, [rsp]
	lea	rsi, [rsi]
	mov	esi, 0
	xor	eax, eax
	mov	edi, ebp
	nop	
	mov	rdx, rbx
	nop	
	call	error
	jmp	.label_213
.label_210:
	nop	
	test	ebp, ebp
	mov	rsp, rsp
	jne	.label_217
	shr	ebx, 8
	nop	
	and	ebx, 0xff
	nop	
	je	.label_213
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.109
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, rax
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	rsp, rsp
	mov	r9,  qword ptr [word ptr [rip + filter_command]]
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, ebx
	lea	rsi, [rsi]
	mov	rdx, rbp
	lea	rsi, [rsi]
	mov	r8d, ebx
	call	error
.label_213:
	add	rsp, 0x20
	nop	
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
.label_214:
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	nop	
	mov	edi, 1
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_2
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, r12d
	call	error
.label_206:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebx
	call	error
.label_208:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.106
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_217:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.110
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	ecx, dword ptr [rsp + 0x1c]
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	nop	
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e40

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	mov	eax, 0x2000
	nop	
	or	eax,  dword ptr [dword ptr [rip + label_218]]
	and	eax, 0xf000
	mov	rbp, rbp
	cmp	eax, 0xa000
	jne	.label_219
	mov	rsp, rsp
	mov	al, 1
	nop	
	ret	
.label_219:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e70

	.globl cwrite
	.type cwrite, @function
cwrite:
	lea	rsi, [rsi]
	push	r14
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	rbx, rdx
	mov	r14, rsi
	mov	rbp, rbp
	test	dil, dil
	je	.label_222
	test	r14, r14
	lea	rdi, [rdi]
	jne	.label_220
	test	rbx, rbx
	jne	.label_220
	mov	al,  byte ptr [byte ptr [rip + elide_empty_files]]
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	mov	al, 1
	jne	.label_221
.label_220:
	mov	esi,  dword ptr [dword ptr [rip + output_desc]]
	mov	edx,  dword ptr [dword ptr [rip + filter_pid]]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + outfile]]
	lea	rdi, [rdi]
	xor	edi, edi
	call	closeout
	call	next_file_name
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + outfile]]
	call	create
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + output_desc]],  eax
	test	eax, eax
	lea	rdi, [rdi]
	js	.label_224
.label_222:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + output_desc]]
	mov	rsi, r14
	nop	
	mov	rdx, rbx
	mov	rbp, rbp
	call	full_write
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	cmp	rcx, rbx
	mov	rbp, rbp
	je	.label_221
	lea	rsi, [rsi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rax]
	mov	edi, ebx
	mov	rsp, rsp
	call	ignorable
	lea	rsi, [rsi]
	test	al, al
	je	.label_223
	xor	eax, eax
.label_221:
	nop	
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	r14
	mov	rsp, rsp
	ret	
.label_224:
	mov	rsp, rsp
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_223:
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [rip + outfile]]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, 3
	nop	
	call	quotearg_n_style_colon
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_2
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404f90

	.globl next_file_name
	.type next_file_name, @function
next_file_name:
	mov	rsp, rsp
	push	r15
	push	r14
	nop	
	push	rbx
	cmp	qword ptr [word ptr [rip + outfile]],  0
	mov	rsp, rsp
	je	.label_231
	mov	rax,  qword ptr [word ptr [rip + suffix_length]]
	nop	
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_238
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + next_file_name.sufindex]]
	lea	rdi, [rdi]
	mov	dl,  byte ptr [byte ptr [rip + suffix_auto]]
	nop	
	xor	dl, 1
	mov	rsi,  qword ptr [word ptr [rip + suffix_alphabet]]
	mov	rdi,  qword ptr [word ptr [rip + outfile_mid]]
	nop	
.label_229:
	inc	qword ptr [rcx + rax*8 - 8]
	cmp	rax, 1
	sete	bl
	nop	
	and	bl, dl
	movzx	ebx, bl
	cmp	ebx, 1
	lea	rsi, [rsi]
	jne	.label_230
	mov	rbx, qword ptr [rcx]
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + rsi + 1], 0
	je	.label_231
.label_230:
	mov	rbx, qword ptr [rcx + rax*8 - 8]
	mov	bl, byte ptr [rsi + rbx]
	lea	rdi, [rdi]
	mov	byte ptr [rdi + rax - 1], bl
	nop	
	test	bl, bl
	jne	.label_227
	lea	rsi, [rsi]
	mov	qword ptr [rcx + rax*8 - 8], 0
	mov	bl, byte ptr [rsi]
	mov	byte ptr [rdi + rax - 1], bl
	dec	rax
	lea	rsi, [rsi]
	jne	.label_229
.label_238:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	mov	rsp, rsp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rbp, rbp
	call	error
.label_231:
	nop	
	mov	rbx,  qword ptr [word ptr [rip + next_file_name.outfile_length]]
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_235
	lea	rax, [rbx + 2]
	mov	qword ptr [word ptr [rip + next_file_name.outfile_length]],  rax
	lea	rdi, [rdi]
	inc	qword ptr [word ptr [rip + suffix_length]]
	mov	rsp, rsp
	jmp	.label_225
.label_235:
	mov	rdi,  qword ptr [word ptr [rip + outbase]]
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + next_file_name.outbase_length]],  rax
	mov	rdi,  qword ptr [word ptr [rip + additional_suffix]]
	lea	rsi, [rsi]
	xor	eax, eax
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_233
	lea	rsi, [rsi]
	call	strlen
.label_233:
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + next_file_name.addsuf_length]],  rax
	add	rax,  qword ptr [word ptr [rip + next_file_name.outbase_length]]
	lea	rsi, [rsi]
	add	rax,  qword ptr [word ptr [rip + suffix_length]]
	mov	qword ptr [word ptr [rip + next_file_name.outfile_length]],  rax
.label_225:
	mov	rsi,  qword ptr [word ptr [rip + next_file_name.outfile_length]]
	lea	rdi, [rdi]
	inc	rsi
	cmp	rsi,  qword ptr [word ptr [rip + next_file_name.outbase_length]]
	mov	rbp, rbp
	jb	.label_236
	mov	rdi,  qword ptr [word ptr [rip + outfile]]
	nop	
	call	xrealloc
	nop	
	test	rbx, rbx
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + outfile]],  rax
	je	.label_228
	mov	rcx,  qword ptr [word ptr [rip + next_file_name.sufindex]]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	mov	rdx,  qword ptr [word ptr [rip + suffix_alphabet]]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rdx + rcx]
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [rip + next_file_name.outbase_length]]
	nop	
	mov	byte ptr [rax + rdx], cl
	nop	
	inc	rdx
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + next_file_name.outbase_length]],  rdx
	mov	rsp, rsp
	jmp	.label_234
.label_228:
	mov	rsi,  qword ptr [word ptr [rip + outbase]]
	mov	rdx,  qword ptr [word ptr [rip + next_file_name.outbase_length]]
	mov	rdi, rax
	call	memcpy
.label_234:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + outfile]]
	lea	rsi, [rsi]
	add	rdi,  qword ptr [word ptr [rip + next_file_name.outbase_length]]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + outfile_mid]],  rdi
	mov	rax,  qword ptr [word ptr [rip + suffix_alphabet]]
	mov	rdx,  qword ptr [word ptr [rip + suffix_length]]
	movzx	esi, byte ptr [rax]
	lea	rdi, [rdi]
	call	memset
	nop	
	mov	rsi,  qword ptr [word ptr [rip + additional_suffix]]
	lea	rsi, [rsi]
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_237
	mov	rdi,  qword ptr [word ptr [rip + outfile_mid]]
	lea	rsi, [rsi]
	add	rdi,  qword ptr [word ptr [rip + suffix_length]]
	mov	rdx,  qword ptr [word ptr [rip + next_file_name.addsuf_length]]
	nop	
	call	memcpy
.label_237:
	nop	
	mov	rax,  qword ptr [word ptr [rip + next_file_name.outfile_length]]
	mov	rcx,  qword ptr [word ptr [rip + outfile]]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + next_file_name.sufindex]]
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + suffix_length]]
	lea	rsi, [rsi]
	mov	esi, 8
	call	xcalloc
	mov	qword ptr [word ptr [rip + next_file_name.sufindex]],  rax
	mov	r14,  qword ptr [word ptr [rip + numeric_suffix_start]]
	test	r14, r14
	je	.label_227
	test	rbx, rbx
	jne	.label_232
	mov	rdi, r14
	call	strlen
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	mov	r15,  qword ptr [word ptr [rip + suffix_length]]
	mov	rdi,  qword ptr [word ptr [rip + outfile_mid]]
	mov	rbp, rbp
	add	rdi, r15
	sub	rdi, rbx
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	memcpy
	test	rbx, rbx
	je	.label_227
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + next_file_name.sufindex]]
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + numeric_suffix_start]]
	lea	rcx, [rcx + r15*8 - 8]
	nop	dword ptr [rax + rax]
.label_226:
	lea	rdi, [rdi]
	movsx	rdx, byte ptr [rax + rbx - 1]
	add	rdx, -0x30
	dec	rbx
	mov	qword ptr [rcx], rdx
	nop	
	lea	rcx, [rcx - 8]
	nop	
	jne	.label_226
.label_227:
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	ret	
.label_236:
	mov	rbp, rbp
	call	xalloc_die
.label_232:
	mov	edi, OFFSET FLAT:.str.81
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.82
	lea	rsi, [rsi]
	mov	edx, 0x198
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.next_file_name
	nop	
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405300

	.globl create
	.type create, @function
create:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	push	r15
	mov	rsp, rsp
	push	r14
	push	rbx
	nop	
	sub	rsp, 0x98
	mov	r15, rdi
	nop	
	cmp	qword ptr [word ptr [rip + filter_command]],  0
	lea	rsi, [rsi]
	je	.label_239
	nop	
	mov	edi, OFFSET FLAT:.str.88
	call	getenv
	mov	rbp, rbp
	test	rax, rax
	nop	
	mov	r14d, OFFSET FLAT:.str.89
	mov	rbp, rbp
	cmovne	r14, rax
	mov	edi, OFFSET FLAT:.str.90
	nop	
	mov	edx, 1
	nop	
	mov	rsi, r15
	lea	rdi, [rdi]
	call	setenv
	test	eax, eax
	mov	rsp, rsp
	jne	.label_259
	movzx	eax,  byte ptr [byte ptr [rip + verbose]]
	lea	rsi, [rsi]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	jne	.label_244
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + stdout]]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.92
	mov	rbp, rbp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	esi, 1
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rdx, rbx
	mov	rbp, rbp
	call	__fprintf_chk
.label_244:
	mov	rbp, rbp
	lea	rdi, [rsp + 8]
	call	pipe
	test	eax, eax
	jne	.label_260
	lea	rdi, [rdi]
	call	fork
	lea	rdi, [rdi]
	mov	ebx, eax
	mov	rsp, rsp
	test	ebx, ebx
	mov	rbp, rbp
	je	.label_261
	cmp	ebx, -1
	nop	
	je	.label_243
	lea	rsi, [rsi]
	mov	edi, dword ptr [rsp + 8]
	mov	rbp, rbp
	call	close
	test	eax, eax
	jne	.label_248
	mov	dword ptr [dword ptr [rip + filter_pid]],  ebx
	mov	rax,  qword ptr [word ptr [rip + n_open_pipes]]
	cmp	rax,  qword ptr [word ptr [rip + open_pipes_alloc]]
	jne	.label_249
	mov	rdi,  qword ptr [word ptr [rip + open_pipes]]
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:open_pipes_alloc
	mov	rsp, rsp
	mov	edx, 4
	mov	rbp, rbp
	call	x2nrealloc
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + open_pipes]],  rax
.label_249:
	mov	eax, dword ptr [rsp + 0xc]
	mov	rcx,  qword ptr [word ptr [rip + n_open_pipes]]
	lea	rdx, [rcx + 1]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + n_open_pipes]],  rdx
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [rip + open_pipes]]
	nop	
	mov	dword ptr [rdx + rcx*4], eax
	mov	ebp, dword ptr [rsp + 0xc]
	mov	rsp, rsp
	jmp	.label_241
.label_239:
	movzx	eax,  byte ptr [byte ptr [rip + verbose]]
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	jne	.label_247
	nop	
	mov	r14,  qword ptr [word ptr [rip + stdout]]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.84
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	nop	
	mov	rdi, r14
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	__fprintf_chk
.label_247:
	mov	rbp, rbp
	mov	esi, 0x41
	mov	edx, 0x1b6
	xor	eax, eax
	mov	rdi, r15
	lea	rdi, [rdi]
	call	open_safer
	nop	
	mov	ebp, eax
	lea	rdi, [rdi]
	test	ebp, ebp
	mov	rsp, rsp
	js	.label_241
	lea	rdi, [rdi]
	lea	rsi, [rsp + 8]
	mov	rsp, rsp
	mov	edi, ebp
	lea	rdi, [rdi]
	call	__fstat
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_252
	mov	rax,  qword ptr [word ptr [rip + label_253]]
	mov	rsp, rsp
	cmp	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	jne	.label_254
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + in_stat_buf]]
	cmp	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	je	.label_257
.label_254:
	xor	esi, esi
	mov	edi, ebp
	call	ftruncate
	test	eax, eax
	mov	rbp, rbp
	je	.label_241
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x8000
	mov	rsp, rsp
	je	.label_240
.label_241:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
.label_261:
	lea	rdi, [rdi]
	xor	ebx, ebx
	cmp	qword ptr [word ptr [rip + n_open_pipes]],  0
	mov	rsp, rsp
	je	.label_250
	nop	word ptr cs:[rax + rax]
.label_262:
	mov	rax,  qword ptr [word ptr [rip + open_pipes]]
	mov	rbp, rbp
	mov	edi, dword ptr [rax + rbx*4]
	call	close
	mov	rbp, rbp
	test	eax, eax
	jne	.label_255
	inc	rbx
	cmp	rbx,  qword ptr [word ptr [rip + n_open_pipes]]
	jb	.label_262
.label_250:
	mov	edi, dword ptr [rsp + 0xc]
	call	close
	test	eax, eax
	jne	.label_258
	mov	edi, dword ptr [rsp + 8]
	lea	rdi, [rdi]
	test	edi, edi
	je	.label_242
	mov	rsp, rsp
	xor	esi, esi
	call	dup2
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_246
	mov	edi, dword ptr [rsp + 8]
	call	close
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_251
.label_242:
	mov	edi, 2
	nop	
	mov	esi, OFFSET FLAT:oldblocked
	xor	edx, edx
	lea	rsi, [rsi]
	call	sigprocmask
	lea	rsi, [rsi]
	mov	rdi, r14
	lea	rsi, [rsi]
	call	last_component
	nop	
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + filter_command]]
	mov	edx, OFFSET FLAT:.str.98
	xor	r8d, r8d
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	rdi, r14
	nop	
	call	execl
	call	__errno_location
	mov	rbp, rbp
	mov	ebx, dword ptr [rax]
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.99
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	r8,  qword ptr [word ptr [rip + filter_command]]
	mov	edi, 1
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, ebx
	mov	rsp, rsp
	mov	rdx, rcx
	nop	
	mov	rcx, r14
	nop	
	call	error
.label_255:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.94
	jmp	.label_245
.label_258:
	lea	rdi, [rdi]
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.95
	nop	
	jmp	.label_245
.label_246:
	nop	
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.96
	mov	rbp, rbp
	jmp	.label_245
.label_251:
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	ebx, dword ptr [rax]
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.97
.label_245:
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	nop	
	mov	edi, 1
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, ebx
	mov	rdx, rcx
	mov	rbp, rbp
	call	error
.label_259:
	nop	
	call	__errno_location
	mov	ebx, dword ptr [rax]
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.91
	jmp	.label_245
.label_260:
	mov	rsp, rsp
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.93
	jmp	.label_245
.label_243:
	call	__errno_location
	nop	
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.100
	jmp	.label_245
.label_248:
	call	__errno_location
	mov	rbp, rbp
	mov	ebx, dword ptr [rax]
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.101
	mov	rsp, rsp
	jmp	.label_245
.label_252:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.85
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbp, rax
	mov	edi, 4
	nop	
	mov	rsi, r15
	mov	rsp, rsp
	call	quotearg_style
	mov	rbp, rbp
	jmp	.label_256
.label_240:
	lea	rsi, [rsi]
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.87
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rax
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	nop	
	mov	rdx, r15
	call	quotearg_n_style_colon
.label_256:
	mov	rbp, rbp
	mov	rcx, rax
	mov	rbp, rbp
	mov	edi, 1
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, r14d
	lea	rsi, [rsi]
	mov	rdx, rbp
	call	error
.label_257:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.86
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rbp, rax
	mov	rsp, rsp
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405890

	.globl ignorable
	.type ignorable, @function
ignorable:
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [rip + filter_command]],  0
	setne	cl
	cmp	edi, 0x20
	lea	rdi, [rdi]
	sete	al
	mov	rsp, rsp
	and	al, cl
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4058b0

	.globl ofile_open
	.type ofile_open, @function
ofile_open:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	nop	
	push	r14
	mov	rsp, rsp
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x18
	mov	r14, rdx
	mov	rsp, rsp
	mov	rbx, rsi
	mov	r15, rdi
	lea	rdi, [rdi]
	mov	rax, rbx
	mov	rsp, rsp
	shl	rax, 5
	cmp	dword ptr [r15 + rax + 8], 0
	lea	rsi, [rsi]
	js	.label_273
	mov	rsp, rsp
	xor	ebp, ebp
	jmp	.label_272
.label_273:
	lea	rcx, [r15 + rax + 8]
	nop	
	mov	qword ptr [rsp + 0x10], rcx
	test	rbx, rbx
	mov	r13, r14
	cmovne	r13, rbx
	lea	rsi, [rsi]
	dec	r13
	lea	rsi, [rsi]
	lea	rcx, [r15 + rax]
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp], rax
	xor	ebp, ebp
	jmp	.label_276
	nop	dword ptr [rax + rax]
.label_271:
	nop	
	lea	rax, [r15 + rbp + 8]
	mov	rbp, rbp
	lea	rcx, [r15 + rbp + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx], 0
	mov	dword ptr [rax], 0xfffffffe
	mov	bpl, 1
.label_276:
	mov	rax, qword ptr [rsp + 8]
	nop	
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	cmp	dword ptr [rax], -1
	mov	rsp, rsp
	je	.label_270
	mov	rbp, rbp
	mov	esi, 0xc01
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	call	open_safer
	jmp	.label_268
	nop	dword ptr [rax]
.label_270:
	mov	rsp, rsp
	call	create
.label_268:
	test	eax, eax
	jns	.label_274
	call	__errno_location
	mov	r12, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r12]
	lea	eax, [rbp - 0x17]
	nop	
	cmp	eax, 2
	lea	rdi, [rdi]
	jae	.label_264
	nop	dword ptr [rax + rax]
.label_263:
	mov	rbp, r13
	shl	rbp, 5
	lea	rsi, [rsi]
	cmp	dword ptr [r15 + rbp + 8], 0
	lea	rsi, [rsi]
	jns	.label_267
	test	r13, r13
	cmove	r13, r14
	dec	r13
	cmp	r13, rbx
	jne	.label_263
	jmp	.label_265
	nop	dword ptr [rax]
.label_267:
	mov	rdi, qword ptr [r15 + rbp + 0x10]
	call	rpl_fclose
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_271
	mov	rsp, rsp
	mov	ebx, dword ptr [r12]
	mov	rbp, rbp
	mov	rdx, qword ptr [r15 + rbp]
	lea	rsi, [rsi]
	jmp	.label_275
.label_274:
	nop	
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rcx], eax
	mov	esi, OFFSET FLAT:.str.105
	lea	rdi, [rdi]
	mov	edi, eax
	lea	rdi, [rdi]
	call	fdopen
	mov	rcx, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	qword ptr [r15 + rcx + 0x10], rax
	nop	
	test	rax, rax
	je	.label_269
	mov	eax,  dword ptr [dword ptr [rip + filter_pid]]
	lea	rsi, [rsi]
	mov	dword ptr [r15 + rcx + 0x18], eax
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + filter_pid]],  0
.label_272:
	lea	rdi, [rdi]
	and	bpl, 1
	nop	
	mov	al, bpl
	mov	rbp, rbp
	add	rsp, 0x18
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	nop	
	ret	
.label_265:
	nop	
	mov	ebx, dword ptr [r12]
.label_266:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rax]
.label_275:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	mov	rsp, rsp
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	rbp, rbp
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_2
	lea	rdi, [rdi]
	xor	eax, eax
	mov	esi, ebx
	mov	rsp, rsp
	call	error
.label_264:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rax]
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rbp, rbp
	mov	rcx, rax
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebp
	mov	rsp, rsp
	call	error
.label_269:
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	mov	ebx, dword ptr [rax]
	nop	
	jmp	.label_266
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405b10
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
	#Procedure 0x405b20
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b30

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
	je	.label_278
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_277
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	jne	.label_277
.label_278:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_280
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	rbp
	ret	
.label_277:
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
	jne	.label_279
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
.label_280:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_279:
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c30

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_281:
	nop	
	movzx	eax, byte ptr [rdi + 1]
	lea	rdi, [rdi]
	inc	rdi
	cmp	eax, 0x2f
	mov	rbp, rbp
	je	.label_281
	xor	ecx, ecx
	mov	rax, rdi
	jmp	.label_282
	nop	word ptr [rax + rax]
.label_284:
	inc	rax
	mov	rbp, rbp
	mov	cl, dl
.label_282:
	lea	rsi, [rsi]
	movzx	esi, byte ptr [rax]
	mov	dl, 1
	cmp	esi, 0x2f
	mov	rsp, rsp
	je	.label_284
	test	sil, sil
	mov	rsp, rsp
	je	.label_283
	mov	rbp, rbp
	mov	dl, cl
	and	dl, 1
	mov	rsp, rsp
	je	.label_285
	xor	ecx, ecx
.label_285:
	test	dl, dl
	lea	rsi, [rsi]
	cmovne	rdi, rax
	mov	dl, cl
	jmp	.label_284
.label_283:
	nop	
	mov	rax, rdi
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405cb0
	.globl base_len
	.type base_len, @function
base_len:

	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	call	strlen
	nop	
	mov	rcx, rax
.label_287:
	mov	rbp, rbp
	mov	rax, rcx
	lea	rsi, [rsi]
	cmp	rax, 2
	mov	rsp, rsp
	jb	.label_286
	lea	rdi, [rdi]
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_287
.label_286:
	lea	rsi, [rsi]
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405cf0

	.globl open_safer
	.type open_safer, @function
open_safer:
	mov	rsp, rsp
	sub	rsp, 0xc8
	nop	
	test	al, al
	mov	rbp, rbp
	je	.label_288
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x70], xmm4
	nop	
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_288:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	xor	edx, edx
	nop	
	test	sil, 0x40
	je	.label_289
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	mov	rsp, rsp
	lea	rax, [rsp + 0xd0]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], 0x10
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	lea	rdi, [rdi]
	ja	.label_291
	lea	rsi, [rsi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_290
.label_291:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_290:
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax]
.label_289:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	call	open
	mov	edi, eax
	mov	rsp, rsp
	call	fd_safer
	mov	rbp, rbp
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e10

	.globl fd_reopen
	.type fd_reopen, @function
fd_reopen:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edi
	nop	
	xor	eax, eax
	nop	
	mov	rdi, rsi
	nop	
	mov	esi, edx
	nop	
	mov	edx, ecx
	call	open
	mov	ebx, eax
	cmp	ebx, ebp
	je	.label_292
	test	ebx, ebx
	nop	
	js	.label_292
	mov	edi, ebx
	mov	esi, ebp
	call	dup2
	nop	
	mov	r14d, eax
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rbp, rbp
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_293
.label_292:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_293:
	mov	rsp, rsp
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e90

	.globl full_write
	.type full_write, @function
full_write:
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
	je	.label_294
	nop	word ptr [rax + rax]
.label_296:
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r15
	call	safe_write
	cmp	rax, -1
	je	.label_294
	test	rax, rax
	je	.label_295
	add	r14, rax
	add	rbx, rax
	sub	r15, rax
	jne	.label_296
	jmp	.label_294
.label_295:
	call	__errno_location
	mov	dword ptr [rax], 0x1c
.label_294:
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
	#Procedure 0x405ef0

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	lea	rdi, [rdi]
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	dword ptr [rax + rax]
.label_297:
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
	ja	.label_297
	mov	rax, rsi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405f50

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
	je	.label_298
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
	jl	.label_300
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_300
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
	jne	.label_299
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_299:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_300:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_298:
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
	#Procedure 0x406040
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
	#Procedure 0x406090
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
	#Procedure 0x4060b0
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
	#Procedure 0x4060d0

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
	#Procedure 0x406140
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
	#Procedure 0x406160

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
	je	.label_301
	test	rdx, rdx
	nop	
	je	.label_301
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_301:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4061a0
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
	#Procedure 0x406240

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
.label_398:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rsi, [rsi]
	mov	ecx, r13d
	lea	rdi, [rdi]
	cmp	r13d, 0xa
	ja	.label_375
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	rsp, rsp
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_405]]
.label_671:
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
.label_672:
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
	jne	.label_408
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rsp, rsp
	je	.label_408
	mov	rsp, rsp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_321:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_308
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rsi], al
.label_308:
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
	jne	.label_321
.label_408:
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
	jmp	.label_336
.label_664:
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
	jmp	.label_336
.label_667:
	mov	rsp, rsp
	mov	al, 1
.label_665:
	mov	r15b, 1
.label_668:
	test	r15b, 1
	mov	rsp, rsp
	mov	cl, 1
	je	.label_358
	mov	cl, al
.label_358:
	lea	rdi, [rdi]
	mov	al, cl
.label_666:
	mov	r14d, 2
	mov	rsp, rsp
	test	r15b, 1
	mov	rsp, rsp
	jne	.label_364
	test	r10, r10
	je	.label_372
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	lea	rdi, [rdi]
	jmp	.label_376
.label_364:
	xor	ecx, ecx
	jmp	.label_376
.label_669:
	mov	r14d, 5
	mov	rsp, rsp
	test	r15b, 1
	jne	.label_386
	test	r10, r10
	je	.label_391
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	lea	rsi, [rsi]
	jmp	.label_395
.label_670:
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
	jmp	.label_336
.label_372:
	nop	
	mov	ecx, 1
	nop	dword ptr [rax]
.label_376:
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
	jmp	.label_336
.label_386:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_395
.label_391:
	mov	rbp, rbp
	mov	eax, 1
.label_395:
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
.label_336:
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
	jmp	.label_319
	nop	word ptr [rax + rax]
.label_351:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	lea	rsi, [rsi]
	sar	r15b, 7
	and	r15b, r8b
	lea	rdi, [rdi]
	mov	r8b, r15b
	nop	
	inc	rsi
.label_319:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_379
	cmp	rsi, rbp
	jne	.label_382
	jmp	.label_383
	nop	word ptr cs:[rax + rax]
.label_379:
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + rsi], 0
	nop	
	je	.label_383
.label_382:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_392
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_397
	mov	rsp, rsp
	cmp	rbp, -1
	lea	rdi, [rdi]
	jne	.label_397
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
.label_397:
	lea	rsi, [rsi]
	cmp	rbx, rbp
	jbe	.label_420
.label_392:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xec], 0
.label_348:
	mov	rsp, rsp
	movzx	r13d, byte ptr [r9 + rsi]
	mov	rsp, rsp
	cmp	r13, 0x7e
	nop	
	ja	.label_304
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	r15b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	bl, 0x61
	nop	
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_309]]
.label_658:
	test	rsi, rsi
	jne	.label_318
	jmp	.label_320
	nop	word ptr [rax + rax]
.label_420:
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
	jne	.label_338
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
	je	.label_348
	mov	rsp, rsp
	jmp	.label_325
.label_338:
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
	jmp	.label_348
.label_662:
	xor	eax, eax
	cmp	rbp, -1
	lea	rsi, [rsi]
	je	.label_366
	test	rsi, rsi
	nop	
	jne	.label_346
	cmp	rbp, 1
	lea	rsi, [rsi]
	je	.label_320
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_313
.label_651:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_384
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xcf], 0
	nop	
	jne	.label_325
	cmp	edi, 2
	nop	
	jne	.label_394
	lea	rdi, [rdi]
	mov	al, r11b
	and	al, 1
	nop	
	jne	.label_396
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_419
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], 0x27
.label_419:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_411
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_411:
	nop	
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_416
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_416:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	rsp, rsp
	mov	r11b, 1
	nop	
	mov	rcx, rax
	jmp	.label_363
.label_652:
	mov	bl, 0x62
	lea	rsi, [rsi]
	jmp	.label_303
.label_653:
	mov	cl, 0x74
	jmp	.label_307
.label_654:
	mov	bl, 0x76
	lea	rdi, [rdi]
	jmp	.label_303
.label_655:
	mov	bl, 0x66
	jmp	.label_303
.label_656:
	nop	
	mov	cl, 0x72
	mov	rsp, rsp
	jmp	.label_307
.label_659:
	lea	rsi, [rsi]
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 2
	jne	.label_315
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_326
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
	jae	.label_331
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_331:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_345
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x5c
.label_345:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_353
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_353:
	nop	
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	mov	rbp, rbp
	jmp	.label_365
.label_660:
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 5
	mov	rsp, rsp
	je	.label_373
	cmp	r14d, 2
	lea	rdi, [rdi]
	jne	.label_381
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_326
.label_381:
	mov	rdi, r14
	jmp	.label_318
.label_661:
	mov	r14, rdi
	nop	
	cmp	r14d, 2
	mov	rsp, rsp
	jne	.label_390
	nop	
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_326
	mov	rdi, r14
	jmp	.label_399
.label_304:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	lea	rsi, [rsi]
	jne	.label_401
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
.label_340:
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
	ja	.label_310
	test	dl, dl
	mov	rsp, rsp
	je	.label_310
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_313
.label_366:
	test	rsi, rsi
	jne	.label_316
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_316
.label_320:
	mov	rbp, rbp
	mov	dl, 1
.label_657:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_325
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r15b, dl
	mov	rbp, rbp
	jmp	.label_313
.label_384:
	cmp	dword ptr [rsp + 0x5c], 0
	mov	rbp, rbp
	je	.label_318
	lea	rsi, [rsi]
	mov	r14, rdi
	inc	rsi
	jmp	.label_319
.label_315:
	mov	rdi, r14
.label_365:
	xor	eax, eax
	nop	
	mov	r15b, 1
	lea	rdi, [rdi]
	jmp	.label_313
.label_390:
	mov	rdi, r14
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x6a], 0
	nop	
	mov	cl, r13b
	nop	
	je	.label_307
.label_399:
	lea	rsi, [rsi]
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_322
.label_307:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xa7], 0
	lea	rsi, [rsi]
	mov	bl, cl
	nop	
	je	.label_325
.label_303:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_313
	lea	rsi, [rsi]
	jmp	.label_341
.label_401:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_357
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
.label_357:
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
.label_333:
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
	je	.label_403
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
	je	.label_407
	cmp	rbp, -2
	nop	
	je	.label_356
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_380
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	lea	rsi, [rsi]
	mov	ecx, 1
.label_314:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	mov	rsp, rsp
	cmp	edx, 0x21
	lea	rsi, [rsi]
	ja	.label_389
	mov	rbp, rbp
	bt	rsi, rdx
	jb	.label_311
.label_389:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jb	.label_314
.label_380:
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_417
	xor	r15d, r15d
.label_417:
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
	je	.label_333
	jmp	.label_340
.label_316:
	mov	rbp, -1
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_313
.label_373:
	mov	rdi, r14
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x58], 0
	lea	rdi, [rdi]
	je	.label_318
	lea	rcx, [rsi + 2]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jae	.label_318
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_318
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	mov	rsp, rsp
	cmp	edx, 0x3e
	ja	.label_354
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	nop	
	bt	rsi, rdx
	lea	rdi, [rdi]
	jae	.label_361
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_325
	lea	rsi, [rsi]
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_360
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_360:
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, r10
	jae	.label_370
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 0x22
.label_370:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_349
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x22
.label_349:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	nop	
	cmp	rax, r10
	lea	rsi, [rsi]
	jae	.label_409
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_409:
	nop	
	add	qword ptr [rsp + 0xf0], 4
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_313
.label_318:
	xor	eax, eax
	mov	rsp, rsp
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_313:
	test	r12b, r12b
	je	.label_421
	cmp	qword ptr [rsp + 0x140], 0
	nop	
	jne	.label_423
	jmp	.label_302
	nop	word ptr cs:[rax + rax]
.label_421:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xb7], 0
	lea	rdi, [rdi]
	je	.label_302
.label_423:
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
	jne	.label_344
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_322
	jmp	.label_341
	nop	word ptr cs:[rax + rax]
.label_302:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_341
	jmp	.label_322
.label_344:
	mov	bl, r13b
	mov	rsi, r14
.label_341:
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_325
	mov	rsp, rsp
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_339
	nop	
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_339
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_343
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_343:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_347
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x24
.label_347:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_359
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_359:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_339:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_377
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_377:
	lea	rdi, [rdi]
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_342
.label_346:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_313
.label_310:
	mov	rsp, rsp
	add	rcx, rsi
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_332
	nop	word ptr cs:[rax + rax]
.label_328:
	mov	rbp, rbp
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_332:
	mov	rbp, rbp
	test	dl, dl
	mov	rbp, rbp
	je	.label_406
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	lea	rdi, [rdi]
	je	.label_410
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_414
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	lea	rsi, [rsi]
	mov	rsi, rbx
.label_414:
	nop	
	inc	qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xec], 0
	mov	rsp, rsp
	jmp	.label_410
	nop	dword ptr [rax]
.label_406:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_326
	cmp	r14d, 2
	jne	.label_367
	mov	rsp, rsp
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_367
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_317
	mov	rax, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	byte ptr [rax + rdx], 0x27
.label_317:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_330
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_330:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	nop	
	lea	rax, [rax + 2]
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_337
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_337:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_367:
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_327
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_327:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rdi, [rdi]
	inc	rax
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_374
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
.label_374:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_368
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
.label_368:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	rsp, rsp
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_410:
	mov	rsp, rsp
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_322
	test	r11b, 1
	lea	rdi, [rdi]
	je	.label_400
	mov	bl, al
	lea	rdi, [rdi]
	and	bl, 1
	mov	r14, rdi
	jne	.label_402
	lea	rsi, [rsi]
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_404
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_404:
	mov	rsi, qword ptr [rsp + 0xf0]
	nop	
	inc	rsi
	cmp	rsi, r10
	nop	
	jae	.label_415
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rdi + rsi], 0x27
.label_415:
	add	qword ptr [rsp + 0xf0], 2
	mov	rbp, rbp
	xor	r11d, r11d
	mov	rsi, rbx
	lea	rdi, [rdi]
	jmp	.label_402
	nop	word ptr cs:[rax + rax]
.label_400:
	lea	rsi, [rsi]
	mov	r14, rdi
.label_402:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_328
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rsi + rbx], r13b
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	jmp	.label_328
	nop	word ptr cs:[rax + rax]
.label_322:
	lea	rsi, [rsi]
	test	r11b, 1
	je	.label_324
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_324
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_352
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rax + rcx], 0x27
.label_352:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_335
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_335:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 2
	lea	rdi, [rdi]
	xor	r11d, r11d
	nop	
	mov	bl, r13b
	lea	rsi, [rsi]
	jmp	.label_342
	nop	word ptr cs:[rax + rax]
.label_324:
	lea	rsi, [rsi]
	mov	bl, r13b
	mov	r14, rdi
.label_342:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_351
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], bl
	lea	rdi, [rdi]
	jmp	.label_351
.label_394:
	nop	
	mov	rcx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	jmp	.label_363
.label_396:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_363:
	cmp	rcx, r10
	jae	.label_369
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_369:
	lea	rsi, [rsi]
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	lea	rsi, [rsi]
	mov	r13b, 0x30
	cmp	edi, 2
	lea	rsi, [rsi]
	je	.label_378
	lea	rdx, [rsi + 1]
	lea	rsi, [rsi]
	cmp	rdx, rbp
	jae	.label_387
	nop	
	mov	dl, byte ptr [r9 + rdx]
	mov	rbp, rbp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	mov	rbp, rbp
	cmp	edx, 9
	mov	rsp, rsp
	ja	.label_393
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_362
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	nop	
	mov	rsi, rbx
.label_362:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_413
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsp, rsp
	mov	rsi, rbx
.label_413:
	mov	rsp, rsp
	add	rcx, 3
	xor	r15d, r15d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rdi, [rdi]
	jmp	.label_313
.label_378:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_313
.label_387:
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_313
.label_393:
	xor	r15d, r15d
	jmp	.label_313
.label_403:
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_306
.label_407:
	xor	r15d, r15d
	nop	
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	jmp	.label_385
.label_356:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	jae	.label_323
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_334:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	byte ptr [rax + rbx], 0
	nop	
	je	.label_329
	lea	rax, [rsi + rbx + 1]
	lea	rsi, [rsi]
	inc	rbx
	cmp	rax, rbp
	jb	.label_334
	xor	r15d, r15d
	nop	
	jmp	.label_306
.label_323:
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_385:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_306:
	mov	byte ptr [rsp + 0xa6], r8b
	lea	rdi, [rdi]
	jmp	.label_340
.label_329:
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_306
.label_354:
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_313
.label_361:
	mov	rsp, rsp
	xor	r15d, r15d
	nop	
	mov	rsi, rbx
	jmp	.label_313
	nop	word ptr cs:[rax + rax]
.label_383:
	cmp	qword ptr [rsp + 0xf0], 0
	mov	rbp, rbp
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	and	cl, 1
	je	.label_355
	lea	rdi, [rdi]
	or	dl, al
	lea	rdi, [rdi]
	je	.label_326
.label_355:
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
	je	.label_388
	lea	rdi, [rdi]
	or	dl, al
	jne	.label_388
	lea	rdi, [rdi]
	test	r8b, 1
	jne	.label_312
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_388
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
	je	.label_398
.label_388:
	nop	
	mov	rdx, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	test	rdx, rdx
	je	.label_412
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_412
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_412
	inc	rdx
	nop	dword ptr [rax + rax]
.label_422:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_418
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_418:
	nop	
	inc	qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	inc	rdx
	test	al, al
	jne	.label_422
.label_412:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_305
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_305
.label_325:
	lea	rdi, [rdi]
	mov	rdx, r9
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_350:
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
.label_371:
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_305:
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
.label_311:
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_350
.label_326:
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rbp, rbp
	jmp	.label_350
.label_312:
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
	jmp	.label_371
.label_375:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407990
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
	#Procedure 0x4079b0

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
	je	.label_424
	mov	qword ptr [rax], rbx
.label_424:
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
	#Procedure 0x407b00
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_425
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_429:
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
	jl	.label_429
.label_425:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_428
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_427]], OFFSET FLAT:slot0
.label_428:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_426
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_426:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407bc0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x407bd0

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
	js	.label_436
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_431
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_434
.label_431:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_432
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
	jne	.label_435
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_435:
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
.label_434:
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
	ja	.label_433
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
	je	.label_430
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_430:
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
.label_433:
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
.label_436:
	lea	rdi, [rdi]
	call	abort
.label_432:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x407e40

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407e50
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
	#Procedure 0x407e70
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
	#Procedure 0x407e90

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
	#Procedure 0x407ef0

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
	je	.label_437
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
.label_437:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407f60

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
	#Procedure 0x407fc0

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
	#Procedure 0x407fe0
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
	#Procedure 0x408000

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
	mov	rcx,  qword ptr [word ptr [rip + label_438]]
	mov	qword ptr [rsp + 0x30], rcx
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_439]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_440]]
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
	#Procedure 0x4080a0

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
	#Procedure 0x4080c0

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
	#Procedure 0x4080d0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4080e0

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
	#Procedure 0x408150

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
	#Procedure 0x408160

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
	mov	rax,  qword ptr [word ptr [rip + label_438]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_439]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_440]]
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
	#Procedure 0x4081f0
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
	#Procedure 0x408220
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
	#Procedure 0x408250

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408260
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
	#Procedure 0x408280

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408290

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
	#Procedure 0x4082a0

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
	jne	.label_441
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
	je	.label_442
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	ecx, 0x60
	je	.label_441
	nop	
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_441
.label_442:
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
	je	.label_443
	nop	
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x60
	lea	rdi, [rdi]
	je	.label_441
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_441
.label_443:
	cmp	r14d, 9
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	lea	rsi, [rsi]
	cmove	rax, rcx
.label_441:
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
	#Procedure 0x4083d0

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
	je	.label_446
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	lea	rdi, [rdi]
	je	.label_444
	jmp	.label_445
.label_446:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rdi, [rdi]
	jne	.label_445
.label_444:
	mov	rsp, rsp
	mov	eax, 1
	test	bpl, bpl
	mov	rsp, rsp
	je	.label_445
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
.label_445:
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
	#Procedure 0x408490

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
	je	.label_449
	nop	
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	nop	
	je	.label_448
	lea	rsi, [rsi]
	jmp	.label_447
.label_449:
	lea	rsi, [rsi]
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_447
.label_448:
	lea	rdi, [rdi]
	mov	eax, 1
	test	bpl, bpl
	lea	rdi, [rdi]
	je	.label_447
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
.label_447:
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
	#Procedure 0x408580

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
	je	.label_452
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_451
	jmp	.label_450
.label_452:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	movzx	edx, bpl
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_450
.label_451:
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_450
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
.label_450:
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
	#Procedure 0x408650

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
	je	.label_455
	lea	rsi, [rsi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_454
	jmp	.label_453
.label_455:
	xor	eax, eax
	mov	rsp, rsp
	movzx	edx, bpl
	movzx	ecx, cl
	nop	
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_453
.label_454:
	lea	rsi, [rsi]
	mov	eax, 1
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_453
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
.label_453:
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
	#Procedure 0x4086f0

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
	je	.label_458
	lea	rdi, [rdi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	mov	rsp, rsp
	je	.label_457
	nop	
	jmp	.label_456
.label_458:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_456
.label_457:
	mov	eax, 1
	test	bpl, bpl
	je	.label_456
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
.label_456:
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
	#Procedure 0x408790

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
	je	.label_461
	mov	rsp, rsp
	and	ecx, 0xffffffdf
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ecx, ebp
	lea	rsi, [rsi]
	je	.label_460
	lea	rsi, [rsi]
	jmp	.label_459
.label_461:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	nop	
	jne	.label_459
.label_460:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	test	bpl, bpl
	nop	
	je	.label_459
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
.label_459:
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408820

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
	je	.label_464
	and	ecx, 0xffffffdf
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_463
	jmp	.label_462
.label_464:
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_462
.label_463:
	mov	eax, 1
	nop	
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_462
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_462:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408890

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
	je	.label_465
	mov	eax, 1
	mov	rsp, rsp
	test	ecx, 0xffffffdf
	lea	rdi, [rdi]
	jne	.label_467
	mov	rbp, rbp
	jmp	.label_466
.label_465:
	mov	eax, 1
	lea	rsi, [rsi]
	test	cl, cl
	je	.label_466
.label_467:
	xor	eax, eax
.label_466:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4088e0

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
.label_468:
	lea	rsi, [rsi]
	mov	edi, r15d
	mov	rsp, rsp
	mov	rsi, r14
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_469
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	lea	rdi, [rdi]
	je	.label_468
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
	jb	.label_469
	lea	rsi, [rsi]
	cmp	eax, 0x16
	mov	rbx, rcx
	mov	r13, rbp
	mov	rsp, rsp
	je	.label_468
.label_469:
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
	#Procedure 0x4089c0

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rsp, rsp
	push	rax
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	r14, rsi
	mov	r15d, edi
	lea	rdi, [rdi]
	mov	r12d, 0x7ff00000
	nop	word ptr cs:[rax + rax]
.label_471:
	mov	edi, r15d
	mov	rsp, rsp
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	write
	mov	rbp, rax
	nop	
	test	rbp, rbp
	jns	.label_470
	call	__errno_location
	mov	eax, dword ptr [rax]
	nop	
	cmp	eax, 4
	nop	
	je	.label_471
	cmp	eax, 0x16
	sete	cl
	mov	rbp, rbp
	cmp	rbx, 0x7ff00000
	seta	dl
	lea	rsi, [rsi]
	and	dl, cl
	mov	rsp, rsp
	mov	rcx, rbx
	lea	rdi, [rdi]
	cmovne	rcx, r12
	lea	rsi, [rsi]
	test	dl, dl
	cmovne	rbp, r13
	lea	rdi, [rdi]
	cmp	rbx, 0x7ff00001
	mov	rsp, rsp
	jb	.label_470
	cmp	eax, 0x16
	mov	rbx, rcx
	mov	r13, rbp
	je	.label_471
.label_470:
	mov	rax, rbp
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	nop	
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408a90

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	nop	
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	rbp, rbp
	mov	ebx, edi
	mov	rbp, rbp
	cmp	ebx, 2
	ja	.label_472
	mov	edi, ebx
	call	dup_safer
	mov	r14d, eax
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rax
	nop	
	mov	r15d, dword ptr [rbp]
	mov	rsp, rsp
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	rsp, rsp
	mov	eax, r14d
	jmp	.label_473
.label_472:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_473:
	lea	rsi, [rsi]
	add	rsp, 8
	nop	
	pop	rbx
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x408b00

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
	je	.label_474
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
	jmp	.label_476
.label_474:
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
.label_476:
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
	ja	.label_478
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_479]]
.label_607:
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
.label_478:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_482
.label_608:
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
.label_609:
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
.label_610:
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
	jmp	.label_483
.label_611:
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
	jmp	.label_481
.label_612:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
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
	jmp	.label_480
.label_613:
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
.label_480:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_481:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_483:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_477
.label_615:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_482:
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
	jmp	.label_475
.label_614:
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
.label_475:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_477:
	mov	rbp, rbp
	call	__fprintf_chk
.label_606:
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
	#Procedure 0x408ef0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_484:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_484
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408f20

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_488:
	nop	
	movsxd	r10, dword ptr [r8]
	lea	rdi, [rdi]
	cmp	r10, 0x28
	ja	.label_485
	mov	r11, r10
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	rbp, rbp
	mov	dword ptr [r8], eax
	mov	rsp, rsp
	jmp	.label_487
	nop	word ptr cs:[rax + rax]
.label_485:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_487:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_486
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_488
.label_486:
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
	#Procedure 0x408fb0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	nop	
	je	.label_489
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
.label_489:
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
	#Procedure 0x409060
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
	.align	32
	#Procedure 0x4090f0

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
	jb	.label_490
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_490:
	nop	
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409130

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_491
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_492
.label_491:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_492:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409160
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
	jb	.label_493
	imul	rcx, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	jmp	xrealloc
.label_493:
	push	rax
	mov	rsp, rsp
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4091a0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_494
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_494
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_494:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_495
	test	rax, rax
	nop	
	je	.label_496
.label_495:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_496:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4091f0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	nop	
	mov	r8, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_497
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_498
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_499
.label_497:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_500
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_500:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_501
.label_499:
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
.label_498:
	call	xalloc_die
.label_501:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409290

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	jmp	xmalloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4092a0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	mov	rsp, rsp
	jmp	x2nrealloc
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4092b0
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
	#Procedure 0x4092f0

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
	jb	.label_502
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_502
	pop	rcx
	ret	
.label_502:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x409320

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
	#Procedure 0x409370

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
	#Procedure 0x409390

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
	#Procedure 0x4093e0

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
	je	.label_506
	cmp	eax, 1
	je	.label_508
	mov	rbp, rbp
	test	eax, eax
	nop	
	jne	.label_503
	mov	rbx, qword ptr [rsp]
	mov	rbp, rbp
	cmp	rbx, r12
	lea	rsi, [rsi]
	jb	.label_504
	cmp	rbx, r15
	jbe	.label_507
.label_504:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	cmp	rbx, 0x40000000
	jb	.label_505
	mov	dword ptr [rax], 0x4b
	lea	rdi, [rdi]
	jmp	.label_503
.label_506:
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
	lea	rsi, [rsi]
	jmp	.label_503
.label_508:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	mov	rbp, rbp
	jmp	.label_503
.label_505:
	mov	dword ptr [rax], 0x22
.label_503:
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
.label_507:
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
	#Procedure 0x409500

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
	#Procedure 0x409540

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
	jae	.label_527
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
.label_518:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	lea	rdi, [rdi]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_518
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
	je	.label_517
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
	je	.label_532
	nop	
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rsp, rsp
	mov	rbp, r13
	mov	rsp, rsp
	je	.label_509
	cmp	eax, 0x22
	jne	.label_517
	lea	rsi, [rsi]
	mov	r12d, 1
.label_509:
	test	rbp, rbp
	lea	rdi, [rdi]
	jne	.label_524
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	lea	rsi, [rsi]
	jmp	.label_525
.label_532:
	mov	rbp, r13
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_517
	lea	rsi, [rsi]
	mov	rbx, rcx
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rax]
	nop	
	test	esi, esi
	mov	rsp, rsp
	je	.label_517
	mov	rdi, rbp
	mov	rsp, rsp
	call	strchr
	test	rax, rax
	mov	rcx, rbx
	je	.label_517
	mov	qword ptr [rsp + 8], 1
	lea	rdi, [rdi]
	xor	r12d, r12d
.label_524:
	mov	rbp, rbp
	mov	rax, qword ptr [rcx]
	mov	rsp, rsp
	movsx	ebx, byte ptr [rax]
	lea	rdi, [rdi]
	test	ebx, ebx
	lea	rdi, [rdi]
	je	.label_515
	mov	rbp, rbp
	mov	r13, rcx
	mov	rdi, rbp
	mov	rsp, rsp
	mov	esi, ebx
	mov	rsp, rsp
	call	strchr
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_511
	mov	r15d, 0x400
	mov	r14d, 1
	add	ebx, -0x45
	nop	
	cmp	ebx, 0x2f
	ja	.label_529
	movabs	rax, 0x814400308945
	lea	rdi, [rdi]
	bt	rax, rbx
	jae	.label_531
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
	je	.label_514
	nop	
	mov	rax, qword ptr [rbx]
	movsx	ecx, byte ptr [rax + 1]
	mov	r14d, 1
	cmp	ecx, 0x42
	nop	
	je	.label_522
	cmp	ecx, 0x44
	je	.label_522
	cmp	ecx, 0x69
	mov	rbp, rbp
	jne	.label_514
	movzx	eax, byte ptr [rax + 2]
	mov	r14d, 3
	lea	rdi, [rdi]
	cmp	eax, 0x42
	mov	rsp, rsp
	je	.label_514
	mov	r14d, 1
	jmp	.label_514
.label_522:
	mov	rsp, rsp
	mov	r15d, 0x3e8
	mov	r14d, 2
.label_514:
	mov	rax, qword ptr [rbx]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x59
	lea	rdi, [rdi]
	jg	.label_533
	mov	rsp, rsp
	lea	ecx, [rax - 0x42]
	nop	
	cmp	ecx, 0xe
	nop	
	ja	.label_512
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_513]]
.label_694:
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	mov	esi, 0x400
	jmp	.label_516
.label_533:
	cmp	eax, 0x73
	jg	.label_521
	lea	rsi, [rsi]
	lea	ecx, [rax - 0x62]
	mov	rsp, rsp
	cmp	ecx, 0xb
	mov	rbp, rbp
	ja	.label_523
	xor	eax, eax
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_526]]
.label_599:
	mov	rsp, rsp
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_516
.label_512:
	cmp	eax, 0x54
	lea	rsi, [rsi]
	je	.label_530
	nop	
	cmp	eax, 0x59
	jne	.label_511
	nop	
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 8
	jmp	.label_520
.label_521:
	lea	rdi, [rdi]
	cmp	eax, 0x74
	nop	
	je	.label_530
	cmp	eax, 0x77
	nop	
	jne	.label_511
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	mov	esi, 2
.label_516:
	nop	
	call	bkm_scale
	jmp	.label_519
.label_600:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	edx, 3
	mov	rbp, rbp
	jmp	.label_520
.label_601:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	edx, 1
	jmp	.label_520
.label_602:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	lea	rsi, [rsi]
	mov	edx, 2
	jmp	.label_520
.label_530:
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 4
	jmp	.label_520
.label_523:
	cmp	eax, 0x5a
	jne	.label_511
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 7
	mov	rbp, rbp
	jmp	.label_520
.label_511:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	or	r12d, 2
	jmp	.label_510
.label_695:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	jmp	.label_520
.label_696:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	edx, 5
.label_520:
	mov	esi, r15d
	lea	rdi, [rdi]
	call	bkm_scale_by_power
.label_519:
	mov	rsp, rsp
	or	eax, r12d
	mov	rcx, qword ptr [rbx]
	mov	rbp, rbp
	lea	rdx, [rcx + r14]
	mov	qword ptr [rbx], rdx
	nop	
	cmp	byte ptr [rcx + r14], 0
	je	.label_528
	lea	rdi, [rdi]
	or	eax, 2
.label_528:
	mov	r12d, eax
.label_515:
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rsp + 8]
.label_525:
	mov	qword ptr [rcx], rax
.label_510:
	mov	r15d, r12d
.label_517:
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
.label_529:
	lea	rsi, [rsi]
	mov	rbx, r13
	lea	rdi, [rdi]
	jmp	.label_514
.label_531:
	mov	rsp, rsp
	mov	rbx, r13
	lea	rsi, [rsi]
	jmp	.label_514
.label_527:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x409950

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
	#Procedure 0x409990

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
	je	.label_534
	nop	word ptr [rax + rax]
.label_535:
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
	jne	.label_535
.label_534:
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
	#Procedure 0x409a00

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_536
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_537
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
	je	.label_537
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
.label_536:
	mov	ecx, 1
.label_537:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409a70

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
	js	.label_538
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_540
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
	je	.label_538
.label_540:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_538
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	lea	rsi, [rsi]
	test	ebp, ebp
	je	.label_539
	call	__errno_location
	mov	dword ptr [rax], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_539:
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_538:
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
	#Procedure 0x409b30

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_541
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_541
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_541:
	mov	rsp, rsp
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	
	.section	.text
	.align	32
	#Procedure 0x409b60

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	jne	.label_542
	mov	rbp, rbp
	ret	
.label_542:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, 1
	lea	rdi, [rdi]
	jmp	rpl_fseeko
	nop	
	.section	.text
	.align	32
	#Procedure 0x409b80

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
	je	.label_543
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
.label_543:
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
	je	.label_544
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_544:
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
	#Procedure 0x409c30

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
	je	.label_546
	nop	
	cmp	r15, -2
	jb	.label_546
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_546
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_546:
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
	#Procedure 0x409cc0
	.globl str2sig
	.type str2sig, @function
str2sig:

	push	rbx
	mov	rbx, rsi
	call	str2signum
	lea	rsi, [rsi]
	mov	dword ptr [rbx], eax
	lea	rsi, [rsi]
	sar	eax, 0x1f
	pop	rbx
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409ce0

	.globl str2signum
	.type str2signum, @function
str2signum:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	nop	
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rsp, rsp
	mov	r15, rdi
	lea	rdi, [rdi]
	movsx	eax, byte ptr [r15]
	add	eax, -0x30
	nop	
	xor	ebx, ebx
	mov	ebp, OFFSET FLAT:label_551
	lea	rsi, [rsi]
	cmp	eax, 9
	ja	.label_552
	lea	rsi, [rsp]
	lea	rsi, [rsi]
	mov	edx, 0xa
	mov	rbp, rbp
	mov	rdi, r15
	call	strtol
	cmp	rax, 0x40
	jg	.label_547
	mov	rcx, qword ptr [rsp]
	mov	rsp, rsp
	mov	cl, byte ptr [rcx]
	mov	rsp, rsp
	test	cl, cl
	je	.label_548
	jmp	.label_547
	nop	dword ptr [rax + rax]
.label_552:
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rsi, r15
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	je	.label_550
	lea	rsi, [rsi]
	inc	rbx
	lea	rdi, [rdi]
	add	rbp, 0xc
	nop	
	cmp	rbx, 0x22
	mov	rbp, rbp
	jbe	.label_552
	lea	rsi, [rsi]
	call	__libc_current_sigrtmin
	mov	ebp, eax
	call	__libc_current_sigrtmax
	nop	
	mov	r14d, eax
	test	ebp, ebp
	lea	rdi, [rdi]
	jle	.label_553
	nop	
	mov	esi, OFFSET FLAT:.str_7
	mov	edx, 5
	mov	rbp, rbp
	mov	rdi, r15
	lea	rdi, [rdi]
	call	strncmp
	mov	rsp, rsp
	test	eax, eax
	nop	
	je	.label_554
.label_553:
	test	r14d, r14d
	jle	.label_547
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_4
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rdi, r15
	mov	rbp, rbp
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	jne	.label_547
	add	r15, 5
	mov	rbp, rbp
	lea	rsi, [rsp]
	lea	rdi, [rdi]
	mov	edx, 0xa
	mov	rdi, r15
	mov	rsp, rsp
	call	strtol
	mov	rcx, qword ptr [rsp]
	lea	rdi, [rdi]
	cmp	byte ptr [rcx], 0
	lea	rdi, [rdi]
	jne	.label_547
	lea	rdi, [rdi]
	sub	ebp, r14d
	nop	
	movsxd	rcx, ebp
	mov	rsp, rsp
	cmp	rcx, rax
	lea	rsi, [rsi]
	jg	.label_547
	test	rax, rax
	lea	rsi, [rsi]
	jg	.label_547
	mov	rsp, rsp
	mov	ecx, r14d
	lea	rdi, [rdi]
	jmp	.label_549
.label_550:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	jmp	.label_548
.label_554:
	add	r15, 5
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	test	rax, rax
	js	.label_547
	mov	rcx, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	mov	rsp, rsp
	jne	.label_547
	sub	r14d, ebp
	mov	rbp, rbp
	movsxd	rcx, r14d
	mov	rsp, rsp
	cmp	rax, rcx
	jle	.label_555
.label_547:
	mov	eax, 0xffffffff
.label_548:
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
.label_555:
	mov	ecx, ebp
.label_549:
	add	rax, rcx
	jmp	.label_548
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409eb0

	.globl sig2str
	.type sig2str, @function
sig2str:
	push	rbp
	push	r15
	nop	
	push	r14
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	r14, rsi
	mov	ebp, edi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:label_551
	nop	dword ptr [rax]
.label_560:
	lea	rdi, [rdi]
	cmp	dword ptr [rsi - 4], ebp
	lea	rsi, [rsi]
	je	.label_557
	inc	eax
	nop	
	add	rsi, 0xc
	lea	rsi, [rsi]
	cmp	eax, 0x22
	mov	rbp, rbp
	jbe	.label_560
	mov	rsp, rsp
	call	__libc_current_sigrtmin
	lea	rdi, [rdi]
	mov	r15d, eax
	call	__libc_current_sigrtmax
	cmp	r15d, ebp
	mov	ebx, 0xffffffff
	nop	
	jg	.label_556
	mov	rsp, rsp
	cmp	eax, ebp
	jl	.label_556
	lea	rsi, [rsi]
	mov	ecx, eax
	sub	ecx, r15d
	mov	edx, ecx
	lea	rsi, [rsi]
	shr	edx, 0x1f
	add	edx, ecx
	mov	rbp, rbp
	sar	edx, 1
	add	edx, r15d
	cmp	edx, ebp
	jge	.label_559
	mov	rbp, rbp
	mov	word ptr [r14 + 4], 0x58
	mov	dword ptr [r14], 0x414d5452
	mov	r15d, eax
	lea	rsi, [rsi]
	jmp	.label_558
.label_557:
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strcpy
	xor	ebx, ebx
	lea	rsi, [rsi]
	jmp	.label_556
.label_559:
	lea	rdi, [rdi]
	mov	word ptr [r14 + 4], 0x4e
	mov	dword ptr [r14], 0x494d5452
.label_558:
	mov	rbp, rbp
	xor	ebx, ebx
	cmp	r15d, ebp
	je	.label_556
	sub	ebp, r15d
	add	r14, 5
	xor	ebx, ebx
	mov	esi, 1
	mov	rbp, rbp
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.2_2
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	r8d, ebp
	mov	rsp, rsp
	call	__sprintf_chk
.label_556:
	lea	rsi, [rsi]
	mov	eax, ebx
	lea	rdi, [rdi]
	add	rsp, 8
	nop	
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409fd0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_561
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_561
.label_562:
	ret	
.label_561:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_562
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a000
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_563
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_563:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a020
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a030
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
	#Procedure 0x40a040
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_564
.label_565:
	ret	
.label_564:
	cmp	edi, 0x7f
	je	.label_565
	xor	eax, eax
	jmp	.label_565
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a060
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
	#Procedure 0x40a070
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
	#Procedure 0x40a080
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
	#Procedure 0x40a090
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
	#Procedure 0x40a0a0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_566
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_566
.label_567:
	ret	
.label_566:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_567
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a0d0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_568
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_568:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a0f0

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
	#Procedure 0x40a100
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_569
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_569:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a120
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
	#Procedure 0x40a130
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
	#Procedure 0x40a140

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
	je	.label_571
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	test	eax, eax
	jne	.label_570
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	jmp	.label_570
.label_571:
	test	eax, eax
	mov	rbp, rbp
	sete	cl
	neg	eax
	nop	
	sbb	ebx, ebx
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_570
	test	cl, cl
	jne	.label_570
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	nop	
	cmove	ebx, ecx
.label_570:
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
	#Procedure 0x40a1e0

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
	je	.label_573
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_572
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_574
.label_572:
	nop	
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_573
.label_574:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_573:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a230

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
	mov	eax, OFFSET FLAT:.str.1_6
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_575
	nop	
	mov	rax, rcx
.label_575:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a270

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
	#Procedure 0x40a290

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xc8
	test	al, al
	mov	rbp, rbp
	je	.label_582
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
.label_582:
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
	ja	.label_584
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	lea	rsi, [rsi]
	jb	.label_588
	mov	rsp, rsp
	mov	eax, 0x514
	lea	rsi, [rsi]
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_576
	mov	rbp, rbp
	test	esi, esi
	jne	.label_584
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_586
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	mov	rbp, rbp
	lea	ecx, [rcx + 8]
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], ecx
	lea	rdi, [rdi]
	jmp	.label_580
.label_584:
	lea	eax, [rsi - 0x400]
	lea	rdi, [rdi]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_577
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_576
	lea	rdi, [rdi]
	mov	ecx, 0x102
	bt	ecx, eax
	mov	rbp, rbp
	jae	.label_581
.label_588:
	lea	rsi, [rsi]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_576:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_585
	mov	rax, rcx
	mov	rbp, rbp
	add	rax, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_587
.label_585:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_587:
	mov	edx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_581:
	nop	
	cmp	eax, 6
	jne	.label_577
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_579
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	lea	rsi, [rsi]
	jmp	.label_583
.label_577:
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_589
	mov	rbp, rbp
	mov	rax, rcx
	mov	rsp, rsp
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_578
.label_586:
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_580:
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	call	rpl_fcntl_DUPFD
	add	rsp, 0xc8
	lea	rsi, [rsi]
	ret	
.label_579:
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_583:
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xc8
	lea	rsi, [rsi]
	ret	
.label_589:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_578:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	rsp, rsp
	call	fcntl
	lea	rsi, [rsi]
	add	rsp, 0xc8
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a530

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
	.align	32
	#Procedure 0x40a550

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
	js	.label_594
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
	jns	.label_591
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	nop	
	jne	.label_591
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_590
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_593
.label_591:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	mov	rbp, rbp
	jmp	.label_593
.label_594:
	mov	rbp, rbp
	mov	edi, ebp
	mov	rbp, rbp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_593:
	test	ebx, ebx
	js	.label_590
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_590
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_592
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
	jne	.label_590
.label_592:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	lea	rdi, [rdi]
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_590:
	lea	rdi, [rdi]
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a660

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
	#Procedure 0x40a730

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
