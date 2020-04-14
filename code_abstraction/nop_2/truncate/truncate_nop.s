	.section	.text
	.align	16
	#Procedure 0x4014f0

	.globl usage
	.type usage, @function
usage:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	push	rbx
	push	rax
	nop	
	mov	ebp, edi
	test	ebp, ebp
	lea	rsi, [rsi]
	jne	.label_8
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	rsi, rcx
	mov	rsp, rsp
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.31
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	nop	
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.6
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.7
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	nop	
	call	setlocale
	test	rax, rax
	mov	rsp, rsp
	je	.label_7
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 3
	lea	rdi, [rdi]
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_7
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
.label_7:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.45
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.9
	xor	eax, eax
	lea	rsi, [rsi]
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.46
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	edi, 1
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.9
	mov	ecx, OFFSET FLAT:.str.47
	mov	rbp, rbp
	xor	eax, eax
	nop	
	call	__printf_chk
	lea	rsi, [rsi]
	mov	edi, ebp
	lea	rsi, [rsi]
	call	exit
.label_8:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str
	mov	rsp, rsp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	lea	rsi, [rsi]
	mov	edi, ebp
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401800

	.globl main
	.type main, @function
main:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	nop	
	mov	r15, rsi
	lea	rdi, [rdi]
	mov	r14d, edi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15]
	call	set_program_name
	lea	rdi, [rdi]
	mov	edi, 6
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_0
	mov	rbp, rbp
	call	setlocale
	mov	edi, OFFSET FLAT:.str.11
	mov	esi, OFFSET FLAT:.str.12
	lea	rdi, [rdi]
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.11
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	lea	rsi, [rsi]
	call	atexit
	lea	rdi, [rdi]
	xor	r13d, r13d
	movabs	r12, 0x7fffffffffffffff
	mov	rbp, rbp
	xor	ebp, ebp
	jmp	.label_36
.label_65:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	nop	
	mov	qword ptr [word ptr [rip + ref_file]],  rax
	nop	word ptr cs:[rax + rax]
.label_36:
	mov	edx, OFFSET FLAT:.str.13
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	rsp, rsp
	mov	edi, r14d
	lea	rdi, [rdi]
	mov	rsi, r15
	call	getopt_long
	mov	rsp, rsp
	cmp	eax, 0x6e
	mov	rbp, rbp
	jle	.label_58
	lea	rdi, [rdi]
	cmp	eax, 0x6f
	je	.label_63
	cmp	eax, 0x72
	je	.label_65
	lea	rsi, [rsi]
	cmp	eax, 0x73
	nop	
	jne	.label_22
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	movzx	ebp, byte ptr [rbx]
	nop	
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	test	byte ptr [rcx + rbp*2 + 1], 0x20
	mov	rbp, rbp
	je	.label_9
	lea	rsi, [rsi]
	inc	rbx
	nop	word ptr cs:[rax + rax]
.label_18:
	mov	rbp, rbp
	mov	rcx, rbx
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + optarg]],  rcx
	movzx	ebp, byte ptr [rcx]
	mov	rdx, qword ptr [rax]
	lea	rbx, [rcx + 1]
	lea	rdi, [rdi]
	test	byte ptr [rdx + rbp*2 + 1], 0x20
	mov	rsp, rsp
	jne	.label_18
	mov	rbx, rcx
.label_9:
	lea	rsi, [rsi]
	movsx	ecx, bpl
	mov	rsp, rsp
	cmp	ecx, 0x3b
	jg	.label_28
	cmp	ecx, 0x25
	je	.label_33
	mov	rsp, rsp
	cmp	ecx, 0x2f
	jne	.label_37
	mov	rbp, rbp
	inc	rbx
	mov	qword ptr [word ptr [rip + optarg]],  rbx
	mov	r13d, 4
	lea	rdi, [rdi]
	jmp	.label_37
	nop	dword ptr [rax]
.label_58:
	cmp	eax, 0x62
	jle	.label_48
	cmp	eax, 0x63
	jne	.label_22
	mov	byte ptr [byte ptr [rip + no_create]],  1
	lea	rdi, [rdi]
	jmp	.label_36
.label_63:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + block_mode]],  1
	lea	rsi, [rsi]
	jmp	.label_36
.label_28:
	mov	rbp, rbp
	cmp	ecx, 0x3e
	lea	rdi, [rdi]
	je	.label_59
	lea	rsi, [rsi]
	cmp	ecx, 0x3c
	nop	
	jne	.label_37
	mov	rbp, rbp
	inc	rbx
	nop	
	mov	qword ptr [word ptr [rip + optarg]],  rbx
	lea	rdi, [rdi]
	mov	r13d, 3
	jmp	.label_37
.label_33:
	inc	rbx
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + optarg]],  rbx
	lea	rsi, [rsi]
	mov	r13d, 5
	mov	rsp, rsp
	jmp	.label_37
.label_59:
	nop	
	inc	rbx
	mov	qword ptr [word ptr [rip + optarg]],  rbx
	mov	rbp, rbp
	mov	r13d, 2
.label_37:
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rax]
	mov	rbp, rbp
	test	byte ptr [rdx + rcx*2 + 1], 0x20
	je	.label_17
	inc	rbx
	nop	dword ptr [rax + rax]
.label_46:
	mov	rdx, rbx
	mov	qword ptr [word ptr [rip + optarg]],  rdx
	mov	rsp, rsp
	movzx	ecx, byte ptr [rdx]
	mov	rsi, qword ptr [rax]
	lea	rbx, [rdx + 1]
	nop	
	test	byte ptr [rsi + rcx*2 + 1], 0x20
	mov	rsp, rsp
	jne	.label_46
	lea	rdi, [rdi]
	mov	rbx, rdx
.label_17:
	movzx	eax, cl
	cmp	eax, 0x2d
	je	.label_39
	lea	rdi, [rdi]
	cmp	eax, 0x2b
	nop	
	jne	.label_38
.label_39:
	mov	rsp, rsp
	test	r13d, r13d
	mov	r13d, 1
	jne	.label_44
.label_38:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	call	dcgettext
	lea	rsi, [r12 + 1]
	mov	ecx, OFFSET FLAT:.str.15
	lea	rsi, [rsi]
	xor	r9d, r9d
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rdx, r12
	lea	rsi, [rsi]
	mov	r8, rax
	lea	rdi, [rdi]
	call	xdectoimax
	mov	rbx, rax
	nop	
	mov	eax, r13d
	lea	rdi, [rdi]
	or	eax, 1
	mov	bpl, 1
	cmp	eax, 5
	jne	.label_36
	test	rbx, rbx
	jne	.label_36
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.17_0
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	nop	
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rbp, rbp
	call	error
.label_48:
	mov	qword ptr [rsp + 0xa8], r13
	lea	rdi, [rdi]
	cmp	eax, -1
	jne	.label_16
	mov	rbp, rbp
	movsxd	r13,  dword ptr [dword ptr [rip + optind]]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + ref_file]]
	test	bpl, bpl
	lea	rsi, [rsi]
	jne	.label_23
	lea	rdi, [rdi]
	test	rsi, rsi
	je	.label_29
.label_23:
	mov	rax, qword ptr [rsp + 0xa8]
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_15
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_15
	test	rsi, rsi
	jne	.label_52
.label_15:
	test	bpl, bpl
	jne	.label_31
	test	byte ptr [byte ptr [rip + block_mode]],  1
	nop	
	jne	.label_45
.label_31:
	mov	rsp, rsp
	cmp	r13d, r14d
	lea	rsi, [rsi]
	jge	.label_47
	mov	rdx, -1
	test	rsi, rsi
	je	.label_51
	lea	rdi, [rdi]
	lea	rdx, [rsp + 0x18]
	mov	rbp, rbp
	mov	edi, 1
	nop	
	call	__xstat
	test	eax, eax
	jne	.label_56
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rbx
	mov	eax, 0x2000
	nop	
	or	eax, dword ptr [rsp + 0x30]
	nop	
	and	eax, 0xf000
	mov	rsp, rsp
	cmp	eax, 0xa000
	mov	rsp, rsp
	jne	.label_60
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	test	rbx, rbx
	jns	.label_66
	jmp	.label_19
.label_51:
	nop	
	mov	qword ptr [rsp + 0x10], rbx
	lea	rsi, [rsi]
	jmp	.label_10
.label_60:
	mov	rdi,  qword ptr [word ptr [rip + ref_file]]
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	rsp, rsp
	mov	r12d, eax
	mov	rsp, rsp
	test	r12d, r12d
	lea	rsi, [rsi]
	js	.label_19
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rsp, rsp
	mov	edx, 2
	nop	
	mov	edi, r12d
	call	lseek
	mov	rbx, rax
	lea	rsi, [rsi]
	call	__errno_location
	mov	r14, rax
	mov	eax, dword ptr [r14]
	mov	dword ptr [rsp + 0xb0], eax
	mov	rbp, rbp
	mov	edi, r12d
	lea	rdi, [rdi]
	call	close
	mov	rbp, rbp
	test	rbx, rbx
	js	.label_40
.label_66:
	cmp	bpl, 1
	nop	
	sbb	rdx, rdx
	mov	rsp, rsp
	or	rdx, rbx
	test	bpl, bpl
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	cmove	rax, rbx
	mov	qword ptr [rsp + 0x10], rax
.label_10:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xc0], rdx
	mov	rsp, rsp
	lea	r12, [r15 + r13*8]
	mov	rax, qword ptr [rsp + 0xa8]
	test	eax, eax
	setne	al
	mov	cl,  byte ptr [byte ptr [rip + no_create]]
	mov	rbp, rbp
	and	cl, 1
	mov	ecx, 0x801
	nop	
	mov	r13d, 0x841
	cmovne	r13d, ecx
	mov	rsp, rsp
	test	rdx, rdx
	sets	cl
	mov	rbp, rbp
	and	cl, al
	mov	byte ptr [rsp + 7], cl
	mov	rsp, rsp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_24
	nop	dword ptr [rax + rax]
.label_53:
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsp, rsp
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, r14d
	mov	rdx, rbp
	call	error
	mov	r15b, 1
.label_24:
	add	r12, 8
	mov	rsp, rsp
	mov	rcx, r12
	nop	word ptr cs:[rax + rax]
.label_54:
	mov	r12, rcx
	nop	
	mov	rbx, qword ptr [r12 - 8]
	nop	
	test	rbx, rbx
	je	.label_30
	mov	edx, 0x1b6
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, rbx
	mov	rbp, rbp
	mov	esi, r13d
	lea	rsi, [rsi]
	call	open
	mov	ebp, eax
	cmp	ebp, -1
	jne	.label_55
	lea	rsi, [rsi]
	movzx	ebp,  byte ptr [byte ptr [rip + no_create]]
	lea	rsi, [rsi]
	call	__errno_location
	and	ebp, 1
	cmp	ebp, 1
	nop	
	jne	.label_50
	lea	rcx, [r12 + 8]
	cmp	dword ptr [rax], 2
	je	.label_54
.label_50:
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29
	jmp	.label_53
	nop	dword ptr [rax]
.label_55:
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + block_mode]]
	or	al, byte ptr [rsp + 7]
	test	al, 1
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	je	.label_11
	mov	rsp, rsp
	mov	edi, 1
	mov	esi, ebp
	lea	rdx, [rsp + 0x18]
	call	__fxstat
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	je	.label_67
	mov	qword ptr [rsp + 0xb0], r15
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.54
.label_57:
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	mov	rbp, rbp
	call	quotearg_style
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, r14d
	lea	rsi, [rsi]
	mov	rdx, r15
	lea	rdi, [rdi]
	call	error
	lea	rdi, [rdi]
	jmp	.label_12
.label_67:
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + block_mode]]
	nop	
	and	eax, 1
	nop	
	cmp	eax, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_11
	mov	qword ptr [rsp + 0xb0], r15
	nop	
	mov	rax, qword ptr [rsp + 0x50]
	movabs	rcx, 0x2000000000000001
	mov	rbp, rbp
	cmp	rax, rcx
	mov	rbp, rbp
	mov	ecx, 0x200
	mov	rsp, rsp
	cmovb	rcx, rax
	test	rax, rax
	lea	rsi, [rsi]
	mov	eax, 0x200
	mov	rbp, rbp
	cmovle	rcx, rax
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	inc	rax
	cqo	
	idiv	rcx
	mov	r15, qword ptr [rsp + 0x10]
	cmp	rax, r15
	jg	.label_62
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	cqo	
	idiv	rcx
	mov	rsp, rsp
	cmp	rax, r15
	lea	rsi, [rsi]
	jge	.label_64
.label_62:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.55
	mov	rsp, rsp
	mov	edx, 5
	mov	qword ptr [rsp + 8], rcx
	lea	rdi, [rdi]
	call	dcgettext
	mov	r14, rax
	mov	rsp, rsp
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	lea	rsi, [rsi]
	mov	r9, rax
	mov	rbp, rbp
	xor	edi, edi
	nop	
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	nop	
	mov	rcx, r15
	mov	rsp, rsp
	mov	r8, qword ptr [rsp + 8]
	nop	
	call	error
	mov	rsp, rsp
	jmp	.label_12
.label_64:
	mov	rbp, rbp
	imul	rcx, r15
	lea	rsi, [rsi]
	mov	r15, qword ptr [rsp + 0xb0]
.label_11:
	mov	rax, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_35
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xc0]
	test	rdx, rdx
	nop	
	mov	rsi, rdx
	lea	rdi, [rdi]
	jns	.label_42
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rcx
	mov	r14, rdx
	mov	eax, dword ptr [rsp + 0x30]
	mov	ecx, 0x2000
	lea	rdi, [rdi]
	or	eax, ecx
	and	eax, 0xf000
	cmp	eax, 0xa000
	lea	rsi, [rsi]
	jne	.label_34
	mov	rsi, qword ptr [rsp + 0x48]
	nop	
	test	rsi, rsi
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 8]
	jns	.label_42
	mov	qword ptr [rsp + 0xb0], r15
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.56
	jmp	.label_41
.label_35:
	nop	
	mov	qword ptr [rsp + 0xb0], r15
	jmp	.label_13
.label_34:
	xor	esi, esi
	mov	edx, 2
	lea	rsi, [rsi]
	mov	edi, ebp
	call	lseek
	mov	rsi, rax
	test	rsi, rsi
	mov	rbp, rbp
	mov	rdx, r14
	nop	
	mov	rcx, qword ptr [rsp + 8]
	js	.label_43
.label_42:
	mov	qword ptr [rsp + 0xb0], r15
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xa8]
	lea	eax, [rax - 2]
	cmp	eax, 3
	ja	.label_14
	nop	
	mov	qword ptr [rsp + 0xc0], rdx
	jmp	qword ptr [word ptr [+ (rax * 8) + label_21]]
.label_457:
	mov	rsp, rsp
	cmp	rsi, rcx
	lea	rdi, [rdi]
	cmova	rcx, rsi
	jmp	.label_13
.label_14:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc0], rdx
	movabs	rax, 0x7fffffffffffffff
	sub	rax, rsi
	cmp	rcx, rax
	jle	.label_32
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.58
	mov	rsp, rsp
	jmp	.label_41
.label_458:
	lea	rdi, [rdi]
	cmp	rsi, rcx
	lea	rsi, [rsi]
	cmovb	rcx, rsi
	jmp	.label_13
.label_459:
	xor	edx, edx
	mov	rax, rsi
	mov	rsp, rsp
	div	rcx
	sub	rsi, rdx
	lea	rsi, [rsi]
	mov	rcx, rsi
	jmp	.label_13
.label_460:
	lea	rsi, [rsi]
	lea	rsi, [rcx + rsi - 1]
	nop	
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, rsi
	mov	rbp, rbp
	div	rcx
	lea	rdi, [rdi]
	sub	rsi, rdx
	mov	rcx, rsi
	jns	.label_13
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.57
.label_41:
	nop	
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbp, rbp
	mov	edi, 4
	mov	rsi, rbx
	mov	rbp, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, r14
	lea	rdi, [rdi]
	call	error
	lea	rsi, [rsi]
	jmp	.label_12
.label_32:
	add	rcx, rsi
.label_13:
	xor	r15d, r15d
	test	rcx, rcx
	lea	rdi, [rdi]
	mov	r14d, 0
	lea	rdi, [rdi]
	cmovns	r14, rcx
	mov	rsp, rsp
	mov	edi, ebp
	mov	rsp, rsp
	mov	rsi, r14
	call	ftruncate
	nop	
	cmp	eax, -1
	mov	rsp, rsp
	jne	.label_26
	call	__errno_location
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 8], eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.59
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	lea	rdi, [rdi]
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rbp, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	nop	
	xor	eax, eax
	mov	esi, dword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rdx, r15
	mov	r8, r14
	call	error
.label_12:
	lea	rsi, [rsi]
	mov	r15b, 1
.label_26:
	nop	
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	or	al, r15b
	mov	rsp, rsp
	mov	r15, rax
	mov	rbp, rbp
	mov	edi, ebp
	mov	rbp, rbp
	call	close
	test	eax, eax
	je	.label_24
	lea	rsi, [rsi]
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
	jmp	.label_53
.label_43:
	mov	qword ptr [rsp + 0xb0], r15
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	jmp	.label_57
.label_30:
	movzx	eax, r15b
	add	rsp, 0xc8
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_16:
	mov	rbp, rbp
	cmp	eax, 0xffffff7d
	mov	rbp, rbp
	je	.label_20
	lea	rsi, [rsi]
	cmp	eax, 0xffffff7e
	mov	rsp, rsp
	jne	.label_22
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	call	usage
.label_20:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.19
	xor	r9d, r9d
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	call	version_etc
	lea	rdi, [rdi]
	xor	edi, edi
	call	exit
.label_22:
	mov	rsp, rsp
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_29:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	jmp	.label_49
.label_52:
	nop	
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.23
.label_49:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.21
	mov	rsp, rsp
	call	quote_n
	mov	rbp, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.22
	jmp	.label_61
.label_45:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.24
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25
	nop	
	call	quote_n
	mov	rbp, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.21
.label_61:
	lea	rsi, [rsi]
	call	quote_n
	mov	rbx, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rdx, r14
	lea	rdi, [rdi]
	mov	rcx, rbp
	mov	rbp, rbp
	mov	r8, rbx
	mov	rbp, rbp
	call	error
	mov	edi, 1
	call	usage
.label_47:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26
	lea	rdi, [rdi]
	jmp	.label_25
.label_44:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14
.label_25:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	error
	mov	edi, 1
	call	usage
.label_56:
	call	__errno_location
	mov	rsp, rsp
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.27
	jmp	.label_27
.label_40:
	nop	
	mov	eax, dword ptr [rsp + 0xb0]
	mov	dword ptr [r14], eax
.label_19:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.28
.label_27:
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + ref_file]]
	mov	rsp, rsp
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rbp, rbp
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402400
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
	#Procedure 0x402410
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402420

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
	je	.label_71
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_69
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_69
.label_71:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_70
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_69:
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
	jne	.label_68
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
.label_70:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_68:
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
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
	#Procedure 0x402520

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
	je	.label_72
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
	jl	.label_74
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_74
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
	jne	.label_73
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_73:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_74:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_72:
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
	.align	16
	#Procedure 0x402610
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
	#Procedure 0x402660
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
	#Procedure 0x402680
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
	#Procedure 0x4026a0
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
	#Procedure 0x402710
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
	#Procedure 0x402730
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
	je	.label_75
	test	rdx, rdx
	nop	
	je	.label_75
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_75:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402770
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
	#Procedure 0x402820

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
.label_176:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	ecx, r15d
	lea	rdi, [rdi]
	cmp	r15d, 0xa
	ja	.label_152
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_158]]
.label_414:
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
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r15d
	mov	rsp, rsp
	call	gettext_quote
	mov	r8b, bl
	mov	rsp, rsp
	mov	r10, r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x100], rax
.label_415:
	mov	byte ptr [rsp + 0x43], r8b
	mov	r13, rbp
	nop	
	test	r12b, 1
	nop	
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rdx, qword ptr [rsp + 0x78]
	jne	.label_180
	mov	rbp, rbp
	mov	al, byte ptr [rdx]
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	mov	ecx, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rcx
	je	.label_180
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	nop	dword ptr [rax]
.label_198:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_194
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rcx + rsi], al
.label_194:
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + rcx + 1]
	mov	rsp, rsp
	inc	rcx
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_198
.label_180:
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
	jmp	.label_89
.label_407:
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
	jmp	.label_89
.label_410:
	lea	rsi, [rsi]
	mov	al, 1
.label_408:
	mov	rbp, rbp
	mov	r12b, 1
.label_411:
	mov	rbp, rbp
	test	r12b, 1
	mov	cl, 1
	nop	
	je	.label_114
	lea	rsi, [rsi]
	mov	cl, al
.label_114:
	mov	rsp, rsp
	mov	al, cl
.label_409:
	mov	r9d, 2
	test	r12b, 1
	mov	rsp, rsp
	jne	.label_119
	test	r10, r10
	je	.label_125
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx], 0x27
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsp, rsp
	jmp	.label_126
.label_119:
	xor	ecx, ecx
	jmp	.label_126
.label_412:
	mov	rsp, rsp
	mov	r9d, 5
	test	r12b, 1
	jne	.label_139
	lea	rdi, [rdi]
	test	r10, r10
	je	.label_143
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 0x22
	mov	rsp, rsp
	mov	eax, 1
	jmp	.label_146
.label_413:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xf0], rax
	mov	sil, 1
	jmp	.label_89
.label_125:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_126:
	nop	
	mov	qword ptr [rsp + 0x58], rcx
	nop	
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbp, rbp
	mov	ecx, 1
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
	mov	dil, al
	mov	sil, r12b
	jmp	.label_89
.label_139:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_146
.label_143:
	lea	rdi, [rdi]
	mov	eax, 1
.label_146:
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10
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
.label_89:
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
	jmp	.label_197
	nop	word ptr cs:[rax + rax]
.label_155:
	nop	
	inc	rdi
.label_197:
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_115
	nop	
	cmp	rdi, rbp
	mov	rsp, rsp
	jne	.label_189
	jmp	.label_121
	nop	dword ptr [rax + rax]
.label_115:
	mov	r13, -1
	lea	rsi, [rsi]
	cmp	byte ptr [r11 + rdi], 0
	je	.label_124
.label_189:
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_133
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_136
	cmp	rbp, -1
	lea	rsi, [rsi]
	jne	.label_136
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
.label_136:
	mov	rsp, rsp
	cmp	rbx, rbp
	lea	rsi, [rsi]
	jbe	.label_169
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_82
	nop	dword ptr [rax + rax]
.label_133:
	nop	
	mov	dword ptr [rsp + 0x10c], 0
	lea	rdi, [rdi]
	jmp	.label_82
	nop	word ptr cs:[rax + rax]
.label_169:
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
	jne	.label_195
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
	je	.label_82
	jmp	.label_86
.label_195:
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
.label_82:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_138
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	nop	
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_101]]
.label_424:
	mov	rsp, rsp
	test	rdi, rdi
	mov	rbp, rbp
	jne	.label_106
	mov	rbp, rbp
	jmp	.label_112
.label_428:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	cmp	rbp, -1
	nop	
	je	.label_113
	lea	rdi, [rdi]
	test	rdi, rdi
	nop	
	jne	.label_117
	nop	
	cmp	rbp, 1
	je	.label_112
	xor	r13d, r13d
	jmp	.label_76
.label_417:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xc3], 0
	je	.label_127
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_86
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_140
	mov	al, r14b
	and	al, 1
	jne	.label_142
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x58], r10
	nop	
	jae	.label_99
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x27
.label_99:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	nop	
	jae	.label_156
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_156:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_163
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_163:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	add	rax, 3
	mov	rsp, rsp
	mov	r14b, 1
	mov	rbp, rbp
	mov	rcx, rax
	jmp	.label_162
.label_418:
	mov	rbp, rbp
	mov	bl, 0x62
	mov	rsp, rsp
	jmp	.label_175
.label_419:
	lea	rsi, [rsi]
	mov	cl, 0x74
	jmp	.label_129
.label_420:
	mov	rsp, rsp
	mov	bl, 0x76
	nop	
	jmp	.label_175
.label_421:
	mov	bl, 0x66
	jmp	.label_175
.label_422:
	lea	rsi, [rsi]
	mov	cl, 0x72
	jmp	.label_129
.label_425:
	mov	al, 1
	mov	qword ptr [rsp + 0x68], rax
	lea	rdi, [rdi]
	cmp	r9d, 2
	jne	.label_187
	cmp	byte ptr [rsp + 0xe7], 0
	nop	
	jne	.label_190
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
	jae	.label_116
	nop	
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_116:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_166
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x5c
.label_166:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_96
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_96:
	add	qword ptr [rsp + 0x58], 3
	xor	r14d, r14d
.label_187:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_76
.label_426:
	cmp	r9d, 5
	lea	rdi, [rdi]
	je	.label_110
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_106
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_106
	mov	rbp, rbp
	jmp	.label_120
.label_427:
	lea	rdi, [rdi]
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_122
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_128
	lea	rdi, [rdi]
	jmp	.label_134
.label_138:
	mov	qword ptr [rsp + 0x80], r9
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x43], r8b
	mov	qword ptr [rsp + 0x110], r10
	cmp	qword ptr [rsp + 0xb8], 1
	jne	.label_150
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
.label_84:
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
	ja	.label_161
	lea	rdi, [rdi]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_161
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_76
.label_113:
	test	rdi, rdi
	jne	.label_135
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_135
.label_112:
	mov	dl, 1
.label_423:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x66], 0
	lea	rsi, [rsi]
	je	.label_184
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, dl
	mov	rsp, rsp
	jmp	.label_76
.label_127:
	cmp	dword ptr [rsp + 0x3c], 0
	jne	.label_155
	jmp	.label_106
.label_122:
	cmp	byte ptr [rsp + 0x57], 0
	mov	cl, r15b
	je	.label_129
.label_128:
	xor	eax, eax
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_181
.label_129:
	cmp	byte ptr [rsp + 0x66], 0
	mov	bl, cl
	lea	rdi, [rdi]
	je	.label_199
.label_175:
	xor	eax, eax
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc3], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_76
	lea	rsi, [rsi]
	jmp	.label_98
.label_150:
	mov	qword ptr [rsp + 0x98], 0
	cmp	rbp, -1
	jne	.label_85
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
.label_85:
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
.label_159:
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
	je	.label_123
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	movabs	rsi, 0x20000002b
	je	.label_131
	lea	rsi, [rsi]
	cmp	rbp, -2
	nop	
	mov	rdi, qword ptr [rsp + 0xa8]
	je	.label_141
	lea	rsi, [rsi]
	cmp	rbp, 1
	seta	al
	lea	rdi, [rdi]
	and	al, byte ptr [rsp + 0x77]
	movzx	eax, al
	nop	
	cmp	eax, 1
	jne	.label_145
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	lea	rax, [rcx + rax]
	nop	
	mov	ecx, 1
	nop	
.label_168:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_160
	lea	rdi, [rdi]
	bt	rsi, rdx
	jb	.label_154
.label_160:
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	cmp	rcx, rbp
	jb	.label_168
.label_145:
	nop	
	mov	edi, dword ptr [rsp + 0xc4]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	nop	
	jne	.label_111
	xor	r13d, r13d
.label_111:
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
	je	.label_159
	mov	rsp, rsp
	jmp	.label_84
.label_135:
	lea	rsi, [rsi]
	mov	rbp, -1
	mov	rbp, rbp
	xor	r13d, r13d
	jmp	.label_76
.label_110:
	cmp	dword ptr [rsp + 0x44], 0
	lea	rdi, [rdi]
	je	.label_106
	lea	rcx, [rdi + 2]
	mov	rsp, rsp
	cmp	rcx, rbp
	jae	.label_106
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_106
	lea	rsi, [rsi]
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	edx, 0x3e
	ja	.label_81
	nop	
	movabs	rsi, 0x7000a38200000000
	mov	rsp, rsp
	bt	rsi, rdx
	mov	rsp, rsp
	jae	.label_87
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_93
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_97
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rsi], 0x3f
.label_97:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_104
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x22
.label_104:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_83
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rsi + rax], 0x22
.label_83:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 3]
	cmp	rax, r10
	nop	
	jae	.label_80
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x3f
.label_80:
	mov	rbp, rbp
	add	qword ptr [rsp + 0x58], 4
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	lea	rdi, [rdi]
	xor	r13d, r13d
	jmp	.label_76
.label_106:
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_76:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x65], 0
	lea	rsi, [rsi]
	je	.label_186
	cmp	qword ptr [rsp + 0x150], 0
	mov	rsp, rsp
	jne	.label_149
	lea	rsi, [rsi]
	jmp	.label_153
.label_186:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_153
.label_149:
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
	jne	.label_157
	mov	rcx, qword ptr [rsp + 0x150]
	nop	
	and	esi, dword ptr [rcx + rdx*4]
	mov	rsp, rsp
	jmp	.label_165
	nop	word ptr cs:[rax + rax]
.label_153:
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rdi, [rdi]
	test	cl, cl
.label_165:
	mov	rbp, rbp
	mov	bl, r15b
	je	.label_181
	mov	rsp, rsp
	jmp	.label_98
.label_157:
	mov	bl, r15b
.label_98:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_86
	nop	
	cmp	r9d, 2
	jne	.label_179
	lea	rdi, [rdi]
	mov	al, r14b
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_179
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_174
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_174:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	cmp	rax, r10
	jae	.label_193
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_193:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_91
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_91:
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_179:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_78
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x5c
.label_78:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	jmp	.label_177
.label_117:
	xor	r13d, r13d
	nop	
	jmp	.label_76
.label_161:
	mov	rsp, rsp
	add	rax, rdi
	mov	qword ptr [rsp + 0xe8], rax
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_92
	nop	dword ptr [rax + rax]
.label_107:
	inc	qword ptr [rsp + 0x58]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_92:
	test	cl, cl
	je	.label_100
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x10c]
	test	dl, 1
	mov	rbp, rbp
	je	.label_102
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_108
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x5c
.label_108:
	lea	rsi, [rsi]
	inc	qword ptr [rsp + 0x58]
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_102
	nop	dword ptr [rax]
.label_100:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_86
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_130
	mov	al, r14b
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_130
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_147
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rdx], 0x27
.label_147:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	inc	rax
	cmp	rax, r10
	jae	.label_188
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], 0x24
.label_188:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_109
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rdx + rax], 0x27
.label_109:
	mov	rsp, rsp
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_130:
	cmp	qword ptr [rsp + 0x58], r10
	lea	rsi, [rsi]
	jae	.label_182
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rax + rdx], 0x5c
.label_182:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_173
	mov	dl, r15b
	shr	dl, 6
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], dl
.label_173:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_183
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
.label_183:
	nop	
	add	qword ptr [rsp + 0x58], 3
	mov	rbp, rbp
	and	r15b, 7
	nop	
	or	r15b, 0x30
	mov	rsp, rsp
	mov	al, 1
.label_102:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xe8], rdx
	jbe	.label_181
	lea	rsi, [rsi]
	test	r14b, 1
	je	.label_200
	mov	bl, al
	nop	
	and	bl, 1
	lea	rdi, [rdi]
	jne	.label_200
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_79
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_79:
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	inc	rsi
	mov	rsp, rsp
	cmp	rsi, r10
	lea	rsi, [rsi]
	jae	.label_90
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdi + rsi], 0x27
	mov	rbp, rbp
	mov	rdi, rbx
.label_90:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_200:
	nop	
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_107
	mov	rsi, qword ptr [rsp + 0xb0]
	nop	
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rsi + rdi], r15b
	lea	rdi, [rdi]
	mov	rdi, rbx
	jmp	.label_107
	nop	word ptr cs:[rax + rax]
.label_181:
	test	r14b, 1
	lea	rsi, [rsi]
	je	.label_118
	mov	rsp, rsp
	and	al, 1
	jne	.label_118
	cmp	qword ptr [rsp + 0x58], r10
	mov	rsp, rsp
	jae	.label_88
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_88:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_132
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_132:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_118:
	mov	rsp, rsp
	mov	bl, r15b
.label_177:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_170
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], bl
.label_170:
	nop	
	inc	qword ptr [rsp + 0x58]
	nop	
	shl	r13b, 7
	mov	rsp, rsp
	sar	r13b, 7
	and	r13b, r8b
	mov	rbp, rbp
	mov	r8b, r13b
	jmp	.label_155
.label_140:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	jmp	.label_162
.label_142:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
.label_162:
	lea	rsi, [rsi]
	cmp	rcx, r10
	lea	rsi, [rsi]
	jae	.label_167
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax + rcx], 0x5c
.label_167:
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
	je	.label_95
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_178
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	cmp	edx, 9
	lea	rsi, [rsi]
	ja	.label_164
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_185
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x30
.label_185:
	lea	rsi, [rsi]
	lea	rdx, [rcx + 2]
	lea	rdi, [rdi]
	cmp	rdx, r10
	nop	
	jae	.label_191
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rdx], 0x30
.label_191:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x58], rcx
	jmp	.label_76
.label_95:
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_76
.label_178:
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	
	jmp	.label_76
.label_164:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_76
.label_131:
	xor	r13d, r13d
.label_123:
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_84
.label_141:
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	rbp, rcx
	lea	rsi, [rsi]
	jbe	.label_94
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
.label_105:
	cmp	byte ptr [r11 + rcx], 0
	nop	
	je	.label_103
	mov	rbp, rbp
	lea	rcx, [rax + rdi + 1]
	nop	
	inc	rax
	mov	rbp, rbp
	cmp	rcx, rbp
	mov	rsp, rsp
	jb	.label_105
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_84
.label_94:
	mov	rsp, rsp
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_84
.label_103:
	nop	
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_84
.label_81:
	xor	r13d, r13d
	jmp	.label_76
.label_87:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_76
.label_121:
	nop	
	mov	r13, rdi
.label_124:
	mov	rsp, rsp
	cmp	r9d, 2
	mov	rsp, rsp
	setne	al
	cmp	qword ptr [rsp + 0x58], 0
	lea	rsi, [rsi]
	setne	dl
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_137
	mov	rsp, rsp
	or	al, dl
	mov	rbp, rbp
	je	.label_148
.label_137:
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
	je	.label_151
	mov	rsp, rsp
	or	al, dl
	lea	rsi, [rsi]
	jne	.label_151
	test	r8b, 1
	mov	rbp, rbp
	jne	.label_171
	cmp	qword ptr [rsp + 0xd8], 0
	je	.label_151
	test	r10, r10
	mov	r15d, r9d
	mov	rbp, rbp
	mov	al, bl
	nop	
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0xd8]
	lea	rsi, [rsi]
	je	.label_176
.label_151:
	mov	rdx, qword ptr [rsp + 0x20]
	test	rdx, rdx
	je	.label_172
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rsi, [rsi]
	jne	.label_172
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	test	al, al
	je	.label_172
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_196:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_192
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rsi], al
.label_192:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	mov	rbp, rbp
	jne	.label_196
.label_172:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_77
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0
	lea	rdi, [rdi]
	jmp	.label_77
.label_184:
	lea	rdi, [rdi]
	mov	r9d, 2
	nop	
	jmp	.label_86
.label_154:
	mov	rsp, rsp
	mov	r9d, 2
	nop	
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rdi, [rdi]
	jmp	.label_86
.label_148:
	nop	
	mov	rbp, r13
	jmp	.label_86
.label_199:
	lea	rdi, [rdi]
	mov	r9d, 2
.label_86:
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
.label_144:
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
.label_77:
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
.label_171:
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
	jmp	.label_144
.label_190:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_86
.label_134:
	mov	r9d, 2
	lea	rsi, [rsi]
	jmp	.label_86
.label_120:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_86
.label_93:
	lea	rsi, [rsi]
	mov	r9d, 5
	mov	rbp, rbp
	jmp	.label_86
.label_152:
	nop	
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403da0
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
	#Procedure 0x403ee0
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
	je	.label_201
	mov	qword ptr [rax], rbx
.label_201:
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
	#Procedure 0x404030
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_202
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_206:
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
	jl	.label_206
.label_202:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_205
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_203]], OFFSET FLAT:slot0
.label_205:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_204
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_204:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040f0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x404100

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
	js	.label_212
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_211
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_209
.label_211:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_213
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
	jne	.label_208
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_208:
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
.label_209:
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
	ja	.label_207
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
	je	.label_210
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_210:
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
.label_207:
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
.label_212:
	lea	rdi, [rdi]
	call	abort
.label_213:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x404370
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404380
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
	#Procedure 0x4043b0
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
	#Procedure 0x4043e0
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
	je	.label_214
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
.label_214:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404470
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
	je	.label_215
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
.label_215:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404510

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
	je	.label_216
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
.label_216:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045a0
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
	je	.label_217
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
.label_217:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404610
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_218]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_219]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_220]]
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
	#Procedure 0x4046b0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_218]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_219]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_220]]
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
	#Procedure 0x404750

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_218]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_219]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_220]]
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
	#Procedure 0x4047c0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_218]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_219]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_220]]
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
	#Procedure 0x404830
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
	je	.label_221
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
.label_221:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404910
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_218]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_219]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_220]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_222
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_222
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
.label_222:
	nop	
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4049a0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_218]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_219]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_220]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_223
	test	rdx, rdx
	je	.label_223
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
.label_223:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a30
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_218]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_219]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_220]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_224
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_224
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
.label_224:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ad0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_218]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_219]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_220]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_225
	test	rsi, rsi
	je	.label_225
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
.label_225:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b70
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b80
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
	#Procedure 0x404ba0

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
	#Procedure 0x404bc0

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
	#Procedure 0x404bf0

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
	jne	.label_227
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_229
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_226
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_226
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_226
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_226
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_226
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_226
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_227
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_227
.label_229:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_226
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_226
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_226
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_226
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_226
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_226
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_228
.label_226:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_227:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_228:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_227
	mov	eax, OFFSET FLAT:.str.18_0
	jmp	.label_227
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404d60

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
	je	.label_236
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
	jmp	.label_237
.label_236:
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
.label_237:
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
	ja	.label_239
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_230]]
.label_396:
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
.label_239:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_234
.label_397:
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
.label_398:
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
.label_399:
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
	jmp	.label_235
.label_400:
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
	jmp	.label_232
.label_401:
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
	jmp	.label_231
.label_402:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_0
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
.label_231:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_232:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_235:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_238
.label_404:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_234:
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
	jmp	.label_233
.label_403:
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
.label_233:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_238:
	mov	rbp, rbp
	call	__fprintf_chk
.label_395:
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
	#Procedure 0x405150
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_240:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_240
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405180
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_244:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_241
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_242
	nop	word ptr cs:[rax + rax]
.label_241:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_242:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_243
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_244
.label_243:
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
	#Procedure 0x405210

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_245
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
.label_245:
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
.label_247:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_246
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_248
	nop	dword ptr [rax + rax]
.label_246:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_248:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_249
	inc	r9
	cmp	r9, 0xa
	jb	.label_247
.label_249:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405350
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
	#Procedure 0x4053e0
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
	jb	.label_250
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_251
	test	rax, rax
	je	.label_250
.label_251:
	nop	
	pop	rbx
	ret	
.label_250:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405430

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_252
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_253
.label_252:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_253:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405460
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
	jb	.label_255
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_254
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_254
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_254:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_256
	test	rax, rax
	je	.label_255
.label_256:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_255:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4054e0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_257
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_257
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_257:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_258
	test	rax, rax
	nop	
	je	.label_259
.label_258:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_259:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405530
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_264
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_260
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_266
.label_264:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_263
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_263:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_265
.label_266:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_262
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_262
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_262:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_261
	test	rax, rax
	mov	rbp, rbp
	je	.label_260
.label_261:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_260:
	call	xalloc_die
.label_265:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405610
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_267
	test	rax, rax
	mov	rbp, rbp
	je	.label_268
.label_267:
	pop	rbx
	ret	
.label_268:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405630
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_272
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_273
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_271
	call	free
	xor	eax, eax
	jmp	.label_269
.label_272:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_270
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_271:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_269
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_270
.label_269:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_270:
	mov	rbp, rbp
	call	xalloc_die
.label_273:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4056c0
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
	je	.label_274
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_275
.label_274:
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
.label_275:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405720
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
	jb	.label_276
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_276
	pop	rcx
	ret	
.label_276:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x405750

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
	je	.label_278
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_277
.label_278:
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
.label_277:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4057b0
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
	je	.label_279
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_280
.label_279:
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
.label_280:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x405810

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
	#Procedure 0x405860

	.globl xnumtoimax
	.type xnumtoimax, @function
xnumtoimax:
	nop	
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rsp, rsp
	push	rax
	nop	
	mov	r14, r9
	lea	rdi, [rdi]
	mov	r12, rcx
	mov	r13, rdx
	lea	rsi, [rsi]
	mov	eax, esi
	mov	r15, rdi
	mov	rbp, rbp
	lea	rcx, [rsp]
	mov	rbp, rbp
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edx, eax
	nop	
	call	xstrtoimax
	mov	rsp, rsp
	test	eax, eax
	je	.label_281
	mov	rbp, rbp
	cmp	eax, 1
	lea	rdi, [rdi]
	je	.label_284
	mov	rbp, rbp
	cmp	eax, 3
	jne	.label_287
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_282
.label_281:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	nop	
	jl	.label_285
	cmp	rbx, r12
	jle	.label_288
.label_285:
	mov	rsp, rsp
	cmp	rbx, 0x40000000
	lea	rsi, [rsi]
	jl	.label_286
.label_284:
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x4b
	lea	rdi, [rdi]
	jmp	.label_282
.label_287:
	mov	rsp, rsp
	call	__errno_location
.label_282:
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x40]
	nop	
	test	ecx, ecx
	mov	ebx, 1
	nop	
	cmovne	ebx, ecx
	mov	ebp, dword ptr [rax]
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ebp, 0x16
	mov	rbp, rbp
	cmove	ebp, eax
	mov	rbp, rbp
	mov	rdi, r15
	call	quote
	lea	rsi, [rsi]
	mov	r8, rax
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_2
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rsp, rsp
	mov	rcx, r14
	call	error
	nop	
	mov	rbx, qword ptr [rsp]
.label_288:
	mov	rbp, rbp
	mov	rax, rbx
	nop	
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
.label_286:
	call	__errno_location
	mov	rsp, rsp
	cmp	rbx, -0x40000001
	jg	.label_283
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x4b
	lea	rdi, [rdi]
	jmp	.label_282
.label_283:
	mov	dword ptr [rax], 0x22
	jmp	.label_282
	nop	
	.section	.text
	.align	16
	#Procedure 0x4059b0

	.globl xdectoimax
	.type xdectoimax, @function
xdectoimax:
	push	rax
	mov	rsp, rsp
	mov	r10, r8
	lea	rsi, [rsi]
	mov	rax, rcx
	mov	rsp, rsp
	mov	rcx, rdx
	mov	rbp, rbp
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	esi, 0xa
	lea	rdi, [rdi]
	mov	r8, rax
	mov	r9, r10
	call	xnumtoimax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4059f0

	.globl xstrtoimax
	.type xstrtoimax, @function
xstrtoimax:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbp, rbp
	mov	r14, r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	ebp, edx
	nop	
	mov	r12, rdi
	cmp	ebp, 0x25
	mov	rsp, rsp
	jae	.label_345
	mov	rsp, rsp
	test	rsi, rsi
	lea	rdi, [rdi]
	lea	rbx, [rsp + 8]
	lea	rdi, [rdi]
	cmovne	rbx, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rbx
	mov	rsp, rsp
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	xor	r13d, r13d
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rdi, r12
	nop	
	mov	rsi, rbx
	lea	rdi, [rdi]
	mov	edx, ebp
	call	__strtol_internal
	lea	rsi, [rsi]
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx]
	lea	rdi, [rdi]
	cmp	rcx, r12
	nop	
	je	.label_317
	lea	rsi, [rsi]
	mov	eax, dword ptr [r15]
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_321
	mov	rbp, rbp
	mov	r13d, 4
	lea	rsi, [rsi]
	cmp	eax, 0x22
	jne	.label_293
	mov	rsp, rsp
	mov	r13d, 1
.label_321:
	test	r14, r14
	nop	
	je	.label_331
	lea	rsi, [rsi]
	mov	r12d, r13d
	mov	rbp, rbp
	jmp	.label_335
.label_317:
	mov	rbp, rbp
	mov	r13d, 4
	test	r14, r14
	je	.label_293
	lea	rsi, [rsi]
	mov	r15, rcx
	nop	
	movsx	esi, byte ptr [r12]
	lea	rsi, [rsi]
	test	esi, esi
	lea	rsi, [rsi]
	je	.label_293
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsp, rsp
	call	strchr
	mov	rsp, rsp
	xor	r12d, r12d
	lea	rdi, [rdi]
	mov	ebp, 1
	nop	
	test	rax, rax
	mov	rcx, r15
	je	.label_293
.label_335:
	nop	
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_294
	mov	qword ptr [rsp + 0x20], rcx
	mov	rdi, r14
	mov	rsp, rsp
	mov	esi, r13d
	call	strchr
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_289
	lea	rsi, [rsi]
	mov	r15d, 1
	mov	r8d, 0x400
	mov	rsp, rsp
	lea	eax, [r13 - 0x45]
	mov	rsp, rsp
	cmp	eax, 0x2f
	nop	
	ja	.label_290
	lea	rdi, [rdi]
	movabs	rcx, 0x814400308945
	mov	rbp, rbp
	bt	rcx, rax
	lea	rdi, [rdi]
	jae	.label_290
	mov	rbp, rbp
	mov	esi, 0x30
	lea	rsi, [rsi]
	mov	rdi, r14
	call	strchr
	lea	rsi, [rsi]
	mov	r15d, 1
	mov	r8d, 0x400
	lea	rdi, [rdi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_290
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x20]
	movsx	eax, byte ptr [rax + 1]
	mov	r15d, 1
	lea	rdi, [rdi]
	mov	r8d, 0x400
	mov	rsp, rsp
	cmp	eax, 0x42
	je	.label_334
	lea	rdi, [rdi]
	cmp	eax, 0x44
	mov	rbp, rbp
	je	.label_334
	cmp	eax, 0x69
	lea	rdi, [rdi]
	jne	.label_290
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	movzx	eax, byte ptr [rax + 2]
	mov	r15d, 3
	cmp	eax, 0x42
	nop	
	je	.label_307
	mov	r15d, 1
.label_307:
	mov	r8d, 0x400
	jmp	.label_290
.label_331:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rbp
	jmp	.label_293
.label_294:
	mov	rbp, rbp
	mov	r13, rbp
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	jmp	.label_297
.label_334:
	mov	r15d, 2
	mov	r8d, 0x3e8
.label_290:
	movabs	r9, 0x7fffffffffffffff
	mov	rsp, rsp
	cmp	r13d, 0x59
	jg	.label_304
	lea	eax, [r13 - 0x42]
	lea	rdi, [rdi]
	cmp	eax, 0xe
	ja	.label_306
	jmp	qword ptr [word ptr [+ (rax * 8) + label_313]]
.label_430:
	movabs	rax, 0xffe0000000000000
	cmp	rbp, rax
	lea	rsi, [rsi]
	jl	.label_316
	nop	
	mov	r13, rbp
	shl	r13, 0xa
	movabs	rax, 0x1fffffffffffff
	lea	rsi, [rsi]
	jmp	.label_320
.label_304:
	cmp	r13d, 0x73
	mov	rsp, rsp
	jg	.label_326
	lea	rsi, [rsi]
	lea	eax, [r13 - 0x62]
	cmp	eax, 0xb
	ja	.label_328
	xor	ebx, ebx
	mov	rsp, rsp
	mov	r13, rbp
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_303]]
.label_437:
	movabs	rax, 0xffc0000000000000
	cmp	rbp, rax
	nop	
	jl	.label_316
	mov	r13, rbp
	shl	r13, 9
	lea	rsi, [rsi]
	movabs	rax, 0x3fffffffffffff
	jmp	.label_320
.label_306:
	lea	rdi, [rdi]
	cmp	r13d, 0x54
	je	.label_296
	cmp	r13d, 0x59
	jne	.label_289
	mov	rsp, rsp
	lea	r13, [r9 + 1]
	mov	rsp, rsp
	mov	rax, r13
	cqo	
	mov	rbp, rbp
	idiv	r8
	mov	r10, rax
	mov	rsp, rsp
	cmp	rbp, r10
	mov	edi, 1
	nop	
	mov	rcx, r13
	lea	rsi, [rsi]
	mov	ebx, 1
	jl	.label_291
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r9
	mov	rbp, rbp
	div	r8
	nop	
	mov	rcx, rbp
	nop	
	imul	rcx, r8
	lea	rdi, [rdi]
	cmp	rax, rbp
	lea	rsi, [rsi]
	setl	al
	lea	rdi, [rdi]
	cmovl	rcx, r9
	lea	rsi, [rsi]
	movzx	ebx, al
.label_291:
	lea	rdi, [rdi]
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_319
	mov	rsp, rsp
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	nop	
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	setl	al
	mov	rsp, rsp
	cmovl	rsi, r9
	movzx	edi, al
.label_319:
	mov	rsp, rsp
	or	edi, ebx
	cmp	rsi, r10
	lea	rsi, [rsi]
	mov	r11d, 1
	mov	rsp, rsp
	mov	rcx, r13
	mov	rsp, rsp
	mov	ebx, 1
	lea	rdi, [rdi]
	jl	.label_327
	xor	edx, edx
	mov	rax, r9
	lea	rsi, [rsi]
	div	r8
	lea	rdi, [rdi]
	mov	rcx, rsi
	imul	rcx, r8
	mov	rbp, rbp
	cmp	rax, rsi
	lea	rdi, [rdi]
	setl	al
	cmovl	rcx, r9
	lea	rdi, [rdi]
	movzx	ebx, al
.label_327:
	or	ebx, edi
	lea	rsi, [rsi]
	cmp	rcx, r10
	mov	rsp, rsp
	mov	rsi, r13
	jl	.label_346
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	div	r8
	nop	
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	lea	rdi, [rdi]
	setl	al
	mov	rbp, rbp
	cmovl	rsi, r9
	mov	rsp, rsp
	movzx	r11d, al
.label_346:
	or	r11d, ebx
	cmp	rsi, r10
	mov	r14d, 1
	mov	rcx, r13
	nop	
	mov	ebx, 1
	nop	
	jl	.label_299
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r9
	nop	
	div	r8
	mov	rcx, rsi
	nop	
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	nop	
	movzx	ebx, al
.label_299:
	or	ebx, r11d
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_312
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	setl	al
	mov	rsp, rsp
	cmovl	rsi, r9
	lea	rsi, [rsi]
	movzx	r14d, al
.label_312:
	or	r14d, ebx
	cmp	rsi, r10
	mov	ebx, 1
	mov	rcx, r13
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	jl	.label_330
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsp, rsp
	mov	rcx, rsi
	lea	rsi, [rsi]
	imul	rcx, r8
	nop	
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	lea	rdi, [rdi]
	movzx	edi, al
.label_330:
	lea	rsi, [rsi]
	or	edi, r14d
	cmp	rcx, r10
	jl	.label_340
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r9
	nop	
	div	r8
	imul	r8, rcx
	cmp	rax, rcx
	setl	al
	cmovl	r8, r9
	lea	rdi, [rdi]
	movzx	ebx, al
	mov	r13, r8
.label_340:
	mov	rbp, rbp
	or	ebx, edi
	nop	
	jmp	.label_298
.label_326:
	cmp	r13d, 0x74
	je	.label_296
	cmp	r13d, 0x77
	jne	.label_289
	mov	rbp, rbp
	movabs	rax, 0xc000000000000000
	cmp	rbp, rax
	jge	.label_301
.label_316:
	inc	r9
	mov	rsp, rsp
	mov	ebx, 1
	mov	r13, r9
	lea	rsi, [rsi]
	jmp	.label_298
.label_432:
	mov	rsp, rsp
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	rdi, rax
	cmp	rbp, rdi
	mov	r10d, 1
	mov	rcx, r13
	mov	rsp, rsp
	mov	ebx, 1
	mov	rbp, rbp
	jl	.label_295
	mov	rsp, rsp
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	div	r8
	nop	
	mov	rcx, rbp
	nop	
	imul	rcx, r8
	mov	rbp, rbp
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	mov	rsp, rsp
	movzx	ebx, al
.label_295:
	nop	
	cmp	rcx, rdi
	mov	rsi, r13
	jl	.label_332
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r9
	lea	rdi, [rdi]
	div	r8
	nop	
	mov	rsi, rcx
	mov	rsp, rsp
	imul	rsi, r8
	cmp	rax, rcx
	lea	rdi, [rdi]
	setl	al
	nop	
	cmovl	rsi, r9
	movzx	r10d, al
.label_332:
	lea	rsi, [rsi]
	or	r10d, ebx
	cmp	rsi, rdi
	mov	rbp, rbp
	mov	ebx, 1
	nop	
	jl	.label_341
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	mov	rbp, rbp
	cmp	rax, rsi
	setl	al
	mov	rsp, rsp
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_341:
	lea	rdi, [rdi]
	or	ebx, r10d
	jmp	.label_298
.label_433:
	lea	rsi, [rsi]
	lea	r13, [r9 + 1]
	lea	rdi, [rdi]
	mov	rax, r13
	cqo	
	idiv	r8
	cmp	rbp, rax
	mov	ebx, 1
	jl	.label_298
	xor	edx, edx
	mov	rax, r9
	div	r8
	nop	
	imul	r8, rbp
	nop	
	cmp	rax, rbp
	nop	
	setl	al
	cmovl	r8, r9
	lea	rdi, [rdi]
	movzx	ebx, al
	mov	r13, r8
	nop	
	jmp	.label_298
.label_434:
	lea	r13, [r9 + 1]
	mov	rax, r13
	mov	rbp, rbp
	cqo	
	idiv	r8
	mov	rdi, rax
	cmp	rbp, rdi
	mov	ebx, 1
	mov	rcx, r13
	mov	r10d, 1
	jl	.label_325
	xor	edx, edx
	mov	rax, r9
	lea	rsi, [rsi]
	div	r8
	mov	rsp, rsp
	mov	rcx, rbp
	mov	rsp, rsp
	imul	rcx, r8
	lea	rdi, [rdi]
	cmp	rax, rbp
	lea	rdi, [rdi]
	setl	al
	cmovl	rcx, r9
	movzx	r10d, al
.label_325:
	lea	rsi, [rsi]
	cmp	rcx, rdi
	nop	
	jl	.label_336
	xor	edx, edx
	mov	rax, r9
	nop	
	div	r8
	imul	r8, rcx
	nop	
	cmp	rax, rcx
	mov	rbp, rbp
	setl	al
	lea	rsi, [rsi]
	cmovl	r8, r9
	movzx	ebx, al
	lea	rdi, [rdi]
	mov	r13, r8
.label_336:
	or	ebx, r10d
	lea	rdi, [rdi]
	jmp	.label_298
.label_296:
	lea	r13, [r9 + 1]
	mov	rsp, rsp
	mov	rax, r13
	cqo	
	idiv	r8
	mov	rbp, rbp
	mov	r10, rax
	lea	rsi, [rsi]
	cmp	rbp, r10
	mov	rbp, rbp
	mov	r11d, 1
	lea	rdi, [rdi]
	mov	rcx, r13
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	jl	.label_347
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	lea	rdi, [rdi]
	imul	rcx, r8
	cmp	rax, rbp
	mov	rbp, rbp
	setl	al
	lea	rsi, [rsi]
	cmovl	rcx, r9
	lea	rsi, [rsi]
	movzx	edi, al
.label_347:
	cmp	rcx, r10
	mov	rsi, r13
	nop	
	jl	.label_309
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	lea	rsi, [rsi]
	imul	rsi, r8
	nop	
	cmp	rax, rcx
	setl	al
	lea	rsi, [rsi]
	cmovl	rsi, r9
	movzx	r11d, al
.label_309:
	mov	rsp, rsp
	or	r11d, edi
	lea	rdi, [rdi]
	cmp	rsi, r10
	mov	rsp, rsp
	mov	ebx, 1
	mov	rcx, r13
	mov	rbp, rbp
	mov	edi, 1
	jl	.label_322
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	mov	rbp, rbp
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	mov	rbp, rbp
	movzx	edi, al
.label_322:
	lea	rdi, [rdi]
	or	edi, r11d
	cmp	rcx, r10
	mov	rbp, rbp
	jl	.label_338
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rcx
	cmp	rax, rcx
	setl	al
	nop	
	cmovl	r8, r9
	movzx	ebx, al
	mov	rbp, rbp
	mov	r13, r8
.label_338:
	or	ebx, edi
	jmp	.label_298
.label_328:
	nop	
	cmp	r13d, 0x5a
	jne	.label_289
	lea	r13, [r9 + 1]
	nop	
	mov	rax, r13
	cqo	
	idiv	r8
	mov	rsp, rsp
	mov	r10, rax
	nop	
	cmp	rbp, r10
	mov	edi, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_292
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r9
	lea	rdi, [rdi]
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	mov	rbp, rbp
	setl	al
	cmovl	rcx, r9
	mov	rsp, rsp
	movzx	ebx, al
.label_292:
	lea	rdi, [rdi]
	cmp	rcx, r10
	mov	rsi, r13
	mov	rsp, rsp
	jl	.label_310
	mov	rsp, rsp
	xor	edx, edx
	mov	rax, r9
	mov	rsp, rsp
	div	r8
	lea	rsi, [rsi]
	mov	rsi, rcx
	lea	rdi, [rdi]
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	nop	
	cmovl	rsi, r9
	movzx	edi, al
.label_310:
	nop	
	or	edi, ebx
	cmp	rsi, r10
	lea	rdi, [rdi]
	mov	r11d, 1
	mov	rcx, r13
	mov	ebx, 1
	nop	
	jl	.label_324
	xor	edx, edx
	mov	rax, r9
	lea	rsi, [rsi]
	div	r8
	mov	rbp, rbp
	mov	rcx, rsi
	imul	rcx, r8
	lea	rsi, [rsi]
	cmp	rax, rsi
	setl	al
	mov	rsp, rsp
	cmovl	rcx, r9
	movzx	ebx, al
.label_324:
	lea	rdi, [rdi]
	or	ebx, edi
	lea	rdi, [rdi]
	cmp	rcx, r10
	mov	rsi, r13
	mov	rbp, rbp
	jl	.label_339
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r9
	div	r8
	lea	rdi, [rdi]
	mov	rsi, rcx
	imul	rsi, r8
	nop	
	cmp	rax, rcx
	nop	
	setl	al
	cmovl	rsi, r9
	mov	rbp, rbp
	movzx	r11d, al
.label_339:
	or	r11d, ebx
	mov	rbp, rbp
	cmp	rsi, r10
	mov	rsp, rsp
	mov	edi, 1
	mov	rcx, r13
	mov	ebx, 1
	lea	rdi, [rdi]
	jl	.label_308
	xor	edx, edx
	mov	rax, r9
	div	r8
	nop	
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	mov	rbp, rbp
	movzx	ebx, al
.label_308:
	or	ebx, r11d
	mov	rbp, rbp
	cmp	rcx, r10
	mov	rsp, rsp
	mov	rsi, r13
	mov	rsp, rsp
	jl	.label_305
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rax, r9
	lea	rsi, [rsi]
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rdi, [rdi]
	setl	al
	mov	rsp, rsp
	cmovl	rsi, r9
	movzx	edi, al
.label_305:
	or	edi, ebx
	cmp	rsi, r10
	nop	
	mov	ebx, 1
	nop	
	jl	.label_323
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r9
	div	r8
	nop	
	imul	r8, rsi
	lea	rdi, [rdi]
	cmp	rax, rsi
	setl	al
	mov	rsp, rsp
	cmovl	r8, r9
	mov	rbp, rbp
	movzx	ebx, al
	mov	r13, r8
.label_323:
	nop	
	or	ebx, edi
	mov	rsp, rsp
	jmp	.label_298
.label_289:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rbp
	or	r12d, 2
	lea	rsi, [rsi]
	mov	r13d, r12d
	lea	rsi, [rsi]
	jmp	.label_293
.label_431:
	lea	r13, [r9 + 1]
	mov	rax, r13
	lea	rdi, [rdi]
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	rbp, r10
	mov	r14d, 1
	nop	
	mov	rcx, r13
	mov	edi, 1
	jl	.label_318
	xor	edx, edx
	nop	
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	nop	
	imul	rcx, r8
	mov	rsp, rsp
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	edi, al
.label_318:
	mov	rsp, rsp
	cmp	rcx, r10
	mov	rbp, rbp
	mov	rbx, r13
	jl	.label_302
	mov	rbp, rbp
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r9
	div	r8
	nop	
	mov	rbx, rcx
	imul	rbx, r8
	cmp	rax, rcx
	mov	rbp, rbp
	setl	al
	lea	rdi, [rdi]
	cmovl	rbx, r9
	movzx	r14d, al
.label_302:
	or	r14d, edi
	lea	rdi, [rdi]
	cmp	rbx, r10
	mov	rsp, rsp
	mov	r11d, 1
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_315
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	lea	rdi, [rdi]
	div	r8
	mov	rsi, rbx
	imul	rsi, r8
	cmp	rax, rbx
	nop	
	setl	al
	lea	rdi, [rdi]
	cmovl	rsi, r9
	movzx	ecx, al
.label_315:
	or	ecx, r14d
	nop	
	cmp	rsi, r10
	mov	rdi, r13
	lea	rsi, [rsi]
	jl	.label_329
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rdi, rsi
	lea	rdi, [rdi]
	imul	rdi, r8
	lea	rdi, [rdi]
	cmp	rax, rsi
	lea	rdi, [rdi]
	setl	al
	mov	rbp, rbp
	cmovl	rdi, r9
	movzx	r11d, al
.label_329:
	or	r11d, ecx
	cmp	rdi, r10
	mov	ebx, 1
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	r14d, 1
	lea	rsi, [rsi]
	jl	.label_342
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r9
	div	r8
	mov	rsi, rdi
	imul	rsi, r8
	nop	
	cmp	rax, rdi
	mov	rsp, rsp
	setl	al
	nop	
	cmovl	rsi, r9
	mov	rbp, rbp
	movzx	r14d, al
.label_342:
	or	r14d, r11d
	cmp	rsi, r10
	jl	.label_344
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	lea	rsi, [rsi]
	cmp	rax, rsi
	mov	rsp, rsp
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_344:
	nop	
	or	ebx, r14d
	lea	rdi, [rdi]
	jmp	.label_298
.label_435:
	nop	
	lea	r13, [r9 + 1]
	mov	rbp, rbp
	mov	rax, r13
	cqo	
	lea	rsi, [rsi]
	idiv	r8
	mov	r10, rax
	lea	rsi, [rsi]
	cmp	rbp, r10
	mov	rsp, rsp
	mov	r14d, 1
	mov	rcx, r13
	mov	edi, 1
	jl	.label_311
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	lea	rdi, [rdi]
	cmp	rax, rbp
	setl	al
	nop	
	cmovl	rcx, r9
	movzx	edi, al
.label_311:
	lea	rsi, [rsi]
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_333
	mov	rbp, rbp
	xor	edx, edx
	mov	rax, r9
	nop	
	div	r8
	mov	rbp, rbp
	mov	rsi, rcx
	nop	
	imul	rsi, r8
	mov	rsp, rsp
	cmp	rax, rcx
	mov	rsp, rsp
	setl	al
	mov	rsp, rsp
	cmovl	rsi, r9
	movzx	r14d, al
.label_333:
	lea	rdi, [rdi]
	or	r14d, edi
	cmp	rsi, r10
	mov	rsp, rsp
	mov	r11d, 1
	mov	rbx, r13
	mov	edi, 1
	nop	
	jl	.label_343
	mov	rsp, rsp
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbx, rsi
	mov	rbp, rbp
	imul	rbx, r8
	nop	
	cmp	rax, rsi
	setl	al
	nop	
	cmovl	rbx, r9
	lea	rdi, [rdi]
	movzx	edi, al
.label_343:
	or	edi, r14d
	mov	rsp, rsp
	cmp	rbx, r10
	mov	rsi, r13
	jl	.label_300
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	nop	
	div	r8
	mov	rsi, rbx
	imul	rsi, r8
	mov	rbp, rbp
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r9
	movzx	r11d, al
.label_300:
	or	r11d, edi
	cmp	rsi, r10
	lea	rsi, [rsi]
	mov	ebx, 1
	jl	.label_314
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r9
	div	r8
	mov	rbp, rbp
	imul	r8, rsi
	cmp	rax, rsi
	lea	rsi, [rsi]
	setl	al
	lea	rdi, [rdi]
	cmovl	r8, r9
	movzx	ebx, al
	lea	rdi, [rdi]
	mov	r13, r8
.label_314:
	or	ebx, r11d
	mov	rsp, rsp
	jmp	.label_298
.label_301:
	lea	r13, [rbp + rbp]
	movabs	rax, 0x3fffffffffffffff
.label_320:
	nop	
	cmp	rbp, rax
	setg	al
	cmovg	r13, r9
	mov	rsp, rsp
	movzx	ebx, al
.label_298:
	mov	rbp, rbp
	or	ebx, r12d
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x20]
	nop	
	lea	rax, [rdx + r15]
	nop	
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx], rax
	cmp	byte ptr [rdx + r15], 0
	je	.label_337
	or	ebx, 2
.label_337:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x18]
	mov	r12d, ebx
.label_297:
	lea	rdi, [rdi]
	mov	qword ptr [rax], r13
	mov	r13d, r12d
.label_293:
	mov	rbp, rbp
	mov	eax, r13d
	lea	rsi, [rsi]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	nop	
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
.label_345:
	mov	edi, OFFSET FLAT:.str_6
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoimax
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406740

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_348
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_349
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
	je	.label_349
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
.label_348:
	mov	ecx, 1
.label_349:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067b0

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
	je	.label_350
	nop	
	cmp	r15, -2
	jb	.label_350
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_350
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_350:
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
	#Procedure 0x406840

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
	jne	.label_351
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_352
	test	cl, cl
	mov	rsp, rsp
	jne	.label_352
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_352
.label_351:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_352
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_352:
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
	#Procedure 0x4068d0

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
	je	.label_354
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_353
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_355
.label_353:
	nop	
	mov	esi, OFFSET FLAT:.str.1_4
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_354
.label_355:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_354:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406920

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
	je	.label_356
	nop	
	mov	rax, rcx
.label_356:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406960

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
	js	.label_357
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_359
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
	je	.label_357
.label_359:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_357
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_358
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_358:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_357:
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
	#Procedure 0x406a10

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_360
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_360
	test	byte ptr [rbx + 1], 1
	je	.label_360
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_360:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406a50

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
	jne	.label_361
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_361
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_362
.label_361:
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
.label_362:
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
	je	.label_363
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_363:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	16
	#Procedure 0x406b00

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