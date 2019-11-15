	.section	.text
	.align	16
	#Procedure 0x401530

	.globl usage
	.type usage, @function
usage:
	mov	rsp, rsp
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	nop	
	test	ebp, ebp
	jne	.label_8
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rsi, rcx
	call	__printf_chk
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.2
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.30
	mov	rbp, rbp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.3
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.5
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.6
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	lea	rsi, [rsi]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	nop	
	call	__printf_chk
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.39
	mov	edx, 5
	nop	
	call	dcgettext
	nop	
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	call	__printf_chk
	mov	edi, 5
	mov	rbp, rbp
	xor	esi, esi
	call	setlocale
	mov	rbp, rbp
	test	rax, rax
	je	.label_7
	mov	esi, OFFSET FLAT:.str.41
	mov	rbp, rbp
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strncmp
	test	eax, eax
	je	.label_7
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.42
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
.label_7:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.43
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	rbp, rbp
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.8
	nop	
	xor	eax, eax
	call	__printf_chk
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.8
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.45
	mov	rsp, rsp
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_8:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	mov	rsp, rsp
	mov	edi, ebp
	nop	
	call	exit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401810

	.globl main
	.type main, @function
main:
	nop	
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x188
	mov	rbp, rbp
	mov	r14, rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x180], r14
	mov	rsp, rsp
	mov	r13d, edi
	mov	dword ptr [rsp + 0xa4], r13d
	call	getpagesize
	mov	rsp, rsp
	movsxd	r15, eax
	mov	rsp, rsp
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.19
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.20
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.19
	nop	
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x148], rax
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	mov	rsp, rsp
	xor	r12d, r12d
	nop	
	xor	ebp, ebp
	lea	rdi, [rdi]
	jmp	.label_39
.label_72:
	mov	rbp, rbp
	mov	al, 1
	mov	qword ptr [rsp + 0x88], rax
.label_39:
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.21
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:main.long_options
	nop	
	xor	r8d, r8d
	mov	edi, r13d
	mov	rsi, r14
	nop	
	call	getopt_long
	cmp	eax, 0x61
	jle	.label_33
	lea	ecx, [rax - 0x6e]
	mov	rbp, rbp
	cmp	ecx, 8
	ja	.label_60
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_63]]
.label_385:
	mov	rsp, rsp
	mov	bpl, 1
	mov	rbp, rbp
	jmp	.label_39
	nop	word ptr cs:[rax + rax]
.label_33:
	mov	rbp, rbp
	cmp	eax, 0x40
	mov	rbp, rbp
	jle	.label_68
	cmp	eax, 0x41
	nop	
	je	.label_69
	mov	rbp, rbp
	cmp	eax, 0x45
	mov	rbp, rbp
	je	.label_72
	cmp	eax, 0x54
	je	.label_75
	jmp	.label_44
.label_60:
	lea	rsi, [rsi]
	cmp	eax, 0x65
	je	.label_77
	nop	
	cmp	eax, 0x62
	lea	rdi, [rdi]
	jne	.label_44
	mov	rbp, rbp
	mov	r12b, 1
	mov	bpl, 1
	jmp	.label_39
.label_386:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x60], rax
	jmp	.label_39
.label_387:
	mov	al, 1
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rax
.label_75:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x148], rax
	jmp	.label_39
.label_388:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_39
.label_77:
	lea	rdi, [rdi]
	mov	al, 1
	mov	qword ptr [rsp + 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_72
.label_69:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rax
	nop	
	mov	al, 1
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x148], rax
	mov	rbp, rbp
	jmp	.label_72
.label_68:
	lea	rdi, [rdi]
	cmp	eax, -1
	lea	rdi, [rdi]
	jne	.label_9
	lea	rdx, [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, 1
	nop	
	call	__fxstat
	test	eax, eax
	lea	rsi, [rsi]
	js	.label_17
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe8]
	movabs	rcx, 0x2000000000000001
	lea	rdi, [rdi]
	cmp	rax, rcx
	mov	rsp, rsp
	mov	edx, 0x200
	mov	esi, 0x200
	cmovb	rsi, rax
	nop	
	test	rax, rax
	mov	rsp, rsp
	cmovle	rsi, rdx
	mov	rbp, rbp
	cmp	rax, rcx
	mov	ecx, 0x20000
	cmovae	rsi, rcx
	test	rax, rax
	lea	rdi, [rdi]
	cmovle	rsi, rcx
	cmp	rax, 0x20000
	cmovl	rsi, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x78], rsi
	mov	rax, qword ptr [rsp + 0xb0]
	mov	qword ptr [rsp + 0x20], rax
	mov	rax, qword ptr [rsp + 0xb8]
	mov	qword ptr [rsp + 0x168], rax
	mov	rbp, rbp
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0xc8]
	mov	dword ptr [rsp + 0x90], eax
	mov	qword ptr [rsp + 0x50], rbp
	mov	rbp, rbp
	test	bpl, bpl
	mov	rbp, rbp
	sete	al
	nop	
	mov	qword ptr [word ptr [rip + infile]], OFFSET FLAT:.str.26
	mov	ebx,  dword ptr [dword ptr [rip + optind]]
	mov	rcx, qword ptr [rsp + 0x148]
	mov	dl, cl
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	or	dl, cl
	nop	
	mov	rcx, qword ptr [rsp + 0x88]
	nop	
	or	dl, cl
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x60]
	or	dl, cl
	nop	
	or	dl, bpl
	mov	byte ptr [rsp + 0x6f], dl
	mov	qword ptr [rsp + 0x38], r15
	lea	rcx, [r15 - 1]
	mov	qword ptr [rsp + 0x80], rcx
	lea	rcx, [r15 + rsi + 0x12]
	mov	qword ptr [rsp + 0x150], rcx
	test	r12b, r12b
	setne	cl
	mov	rbp, rbp
	or	cl, al
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x17], cl
	lea	rsi, [rsi]
	movsxd	rbp, ebx
	movsxd	r12, r13d
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], r12
	mov	rbp, rbp
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	nop	word ptr cs:[rax + rax]
.label_98:
	mov	rbp, rbp
	cmp	rbp, r12
	lea	rdi, [rdi]
	jge	.label_59
	mov	rdi, qword ptr [r14 + rbp*8]
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + infile]],  rdi
	lea	rdi, [rdi]
	jmp	.label_82
	nop	
.label_59:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + infile]]
.label_82:
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x2d
	lea	rsi, [rsi]
	jne	.label_87
	cmp	byte ptr [rdi + 1], 0
	je	.label_90
.label_87:
	lea	rsi, [rsi]
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	call	open
	mov	dword ptr [dword ptr [rip + input_desc]],  eax
	test	eax, eax
	lea	rsi, [rsi]
	jns	.label_92
	lea	rdi, [rdi]
	jmp	.label_94
.label_90:
	mov	dword ptr [dword ptr [rip + input_desc]],  0
	mov	rbp, rbp
	mov	al, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	lea	rsi, [rsi]
	xor	eax, eax
.label_92:
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, eax
	lea	rdi, [rdi]
	lea	rdx, [rsp + 0xb0]
	call	__fxstat
	test	eax, eax
	js	.label_38
	mov	rax, qword ptr [rsp + 0xe8]
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	rbp, rbp
	mov	r15d, 0x200
	lea	rsi, [rsi]
	cmovb	r15, rax
	test	rax, rax
	nop	
	mov	edx, 0x200
	cmovle	r15, rdx
	lea	rdi, [rdi]
	cmp	rax, rcx
	mov	ecx, 0x20000
	mov	rsp, rsp
	cmovae	r15, rcx
	lea	rdi, [rdi]
	test	rax, rax
	mov	rbp, rbp
	cmovle	r15, rcx
	lea	rsi, [rsi]
	cmp	rax, 0x20000
	cmovl	r15, rcx
	nop	
	mov	edi,  dword ptr [dword ptr [rip + input_desc]]
	nop	
	xor	esi, esi
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rsp, rsp
	mov	ecx, 2
	call	fdadvise
	cmp	dword ptr [rsp + 0x90], 0x8000
	jne	.label_46
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0xb0], rax
	jne	.label_46
	mov	rax, qword ptr [rsp + 0x168]
	cmp	qword ptr [rsp + 0xb8], rax
	jne	.label_46
	mov	rbp, rbp
	mov	edi,  dword ptr [dword ptr [rip + input_desc]]
	xor	esi, esi
	mov	rsp, rsp
	mov	edx, 1
	call	lseek
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	jge	.label_46
	nop	
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.28
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	r15, rax
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rdx, r15
	mov	rsp, rsp
	jmp	.label_70
	nop	dword ptr [rax + rax]
.label_46:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rbp
	mov	dword ptr [rsp + 0x4c], ebx
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x6f], 0
	mov	rbp, rbp
	je	.label_76
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0x98], r15
	lea	rdi, [r15 + rbx]
	call	xmalloc
	mov	rbp, rax
	nop	
	mov	qword ptr [rsp + 0x158], rbp
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x150]
	lea	rdi, [rax + r15*4]
	mov	rsp, rsp
	call	xmalloc
	mov	rbp, rbp
	mov	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x170], rcx
	lea	rdi, [rdi]
	lea	rsi, [rbp + rbx - 1]
	xor	edx, edx
	mov	rax, rsi
	div	rbx
	sub	rsi, rdx
	mov	qword ptr [rsp + 0x40], rsi
	lea	r15, [rcx + rbx - 1]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r15
	div	rbx
	sub	r15, rdx
	mov	qword ptr [rsp + 0x140], r15
	mov	r14d,  dword ptr [dword ptr [rip + newlines2]]
	lea	rsi, [rsi]
	lea	r13, [rsi + 1]
	nop	
	mov	rbx, qword ptr [rsp + 0x78]
	nop	
	lea	rax, [r15 + rbx]
	mov	qword ptr [rsp + 0x160], rax
	mov	al, 1
	mov	dword ptr [rsp + 0x94], eax
	lea	rsi, [rsi]
	mov	r12, r15
	nop	
	mov	qword ptr [rsp + 0xa8], rsi
	jmp	.label_43
	nop	dword ptr [rax + rax]
.label_48:
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	r13, qword ptr [rsp + 0x40]
	add	rdx, r13
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xa8], rdx
	nop	
	mov	byte ptr [r13 + rax], 0xa
	lea	rsi, [rsi]
	mov	r15, rbp
	jmp	.label_81
.label_85:
	cmp	byte ptr [rsp + 0x17], 0
	mov	r15, qword ptr [rsp + 0x140]
	mov	rbp, rbp
	jne	.label_28
	mov	rdi,  qword ptr [word ptr [rip + line_num_start]]
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:label_61
.label_45:
	nop	
	movsx	edx, byte ptr [rcx]
	mov	al, dl
	lea	rdi, [rdi]
	inc	al
	mov	rsp, rsp
	mov	byte ptr [rcx], al
	cmp	edx, 0x39
	jl	.label_37
	mov	rbp, rbp
	mov	byte ptr [rcx], 0x30
	mov	rbp, rbp
	dec	rcx
	mov	rbp, rbp
	cmp	rcx, rdi
	jae	.label_45
	mov	eax, OFFSET FLAT:line_buf
	cmp	rdi, rax
	jbe	.label_27
	lea	rax, [rdi - 1]
	mov	qword ptr [word ptr [rip + line_num_start]],  rax
	mov	byte ptr [rdi - 1], 0x31
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	jmp	.label_49
.label_37:
	mov	rsi,  qword ptr [word ptr [rip + line_num_print]]
	lea	rdi, [rdi]
	jmp	.label_55
.label_27:
	nop	
	mov	byte ptr [byte ptr [rip + line_buf]],  0x3e
.label_49:
	nop	
	mov	rsi,  qword ptr [word ptr [rip + line_num_print]]
	cmp	rdi, rsi
	mov	rsp, rsp
	jae	.label_55
	dec	rsi
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + line_num_print]],  rsi
.label_55:
	mov	rdi, r12
	call	stpcpy
	mov	r12, rax
.label_28:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	test	al, al
	mov	rbp, rbp
	je	.label_66
	mov	rbp, rbp
	mov	byte ptr [r12], 0x24
	mov	rbp, rbp
	inc	r12
.label_66:
	mov	byte ptr [r12], 0xa
	inc	r12
	mov	r14d, ebp
.label_81:
	lea	rsi, [rsi]
	movzx	ebp, byte ptr [r13]
	nop	
	inc	r13
	nop	
	cmp	ebp, 0xa
	je	.label_43
	mov	rax, qword ptr [rsp + 0x50]
	test	al, al
	lea	rsi, [rsi]
	je	.label_18
	test	r14d, r14d
	js	.label_18
	nop	
	mov	rdi, rbx
	mov	rax,  qword ptr [word ptr [rip + line_num_start]]
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:label_61
	nop	dword ptr [rax]
.label_86:
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rcx]
	mov	rbp, rbp
	mov	bl, dl
	inc	bl
	mov	byte ptr [rcx], bl
	mov	rsp, rsp
	cmp	edx, 0x39
	jl	.label_84
	mov	byte ptr [rcx], 0x30
	dec	rcx
	cmp	rcx, rax
	nop	
	jae	.label_86
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:line_buf
	cmp	rax, rcx
	lea	rdi, [rdi]
	jbe	.label_89
	nop	
	lea	rcx, [rax - 1]
	nop	
	mov	qword ptr [word ptr [rip + line_num_start]],  rcx
	mov	byte ptr [rax - 1], 0x31
	mov	rsp, rsp
	mov	rax, rcx
	mov	rbp, rbp
	jmp	.label_91
.label_84:
	nop	
	mov	rsi,  qword ptr [word ptr [rip + line_num_print]]
	mov	rbx, rdi
	jmp	.label_95
.label_89:
	mov	byte ptr [byte ptr [rip + line_buf]],  0x3e
.label_91:
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + line_num_print]]
	mov	rsp, rsp
	cmp	rax, rsi
	mov	rbx, rdi
	mov	rsp, rsp
	jae	.label_95
	dec	rsi
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + line_num_print]],  rsi
.label_95:
	mov	rbp, rbp
	mov	rdi, r12
	nop	
	call	stpcpy
	mov	rbp, rbp
	mov	r12, rax
.label_18:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x28]
	test	al, al
	lea	rdi, [rdi]
	je	.label_57
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x148]
	test	al, al
	mov	rbp, rbp
	jne	.label_21
	lea	rdi, [rdi]
	jmp	.label_26
	nop	word ptr [rax + rax]
.label_35:
	lea	rdi, [rdi]
	mov	bpl, byte ptr [r13]
	inc	r13
.label_21:
	nop	
	movzx	eax, bpl
	cmp	eax, 0x1f
	lea	rdi, [rdi]
	jbe	.label_32
	cmp	eax, 0x7f
	jae	.label_34
	mov	byte ptr [r12], bpl
	lea	rdi, [rdi]
	inc	r12
	mov	rsp, rsp
	jmp	.label_35
	nop	dword ptr [rax + rax]
.label_32:
	mov	r14d, 0xffffffff
	cmp	eax, 0xa
	lea	rdi, [rdi]
	je	.label_43
	mov	rbp, rbp
	mov	byte ptr [r12], 0x5e
	mov	rbp, rbp
	add	bpl, 0x40
	mov	byte ptr [r12 + 1], bpl
	add	r12, 2
	jmp	.label_35
	nop	dword ptr [rax]
.label_34:
	mov	rbp, rbp
	jne	.label_83
	mov	word ptr [r12], 0x3f5e
	lea	rsi, [rsi]
	add	r12, 2
	mov	rbp, rbp
	jmp	.label_35
.label_83:
	nop	
	mov	word ptr [r12], 0x2d4d
	lea	rsi, [rsi]
	cmp	eax, 0x9f
	lea	rsi, [rsi]
	jbe	.label_51
	mov	rsp, rsp
	cmp	eax, 0xff
	je	.label_54
	xor	bpl, 0x80
	mov	rsp, rsp
	mov	byte ptr [r12 + 2], bpl
	mov	rsp, rsp
	add	r12, 3
	lea	rdi, [rdi]
	jmp	.label_35
.label_51:
	mov	rbp, rbp
	mov	byte ptr [r12 + 2], 0x5e
	add	bpl, 0xc0
	nop	
	mov	byte ptr [r12 + 3], bpl
	add	r12, 4
	nop	
	jmp	.label_35
.label_54:
	lea	rdi, [rdi]
	mov	word ptr [r12 + 2], 0x3f5e
	nop	
	add	r12, 4
	mov	rsp, rsp
	jmp	.label_35
	nop	word ptr [rax + rax]
.label_42:
	mov	bpl, byte ptr [r13]
	inc	r13
.label_26:
	mov	rbp, rbp
	movzx	eax, bpl
	cmp	eax, 0x20
	mov	rsp, rsp
	jb	.label_74
	cmp	eax, 0x7e
	nop	
	ja	.label_78
	mov	byte ptr [r12], bpl
	inc	r12
	lea	rsi, [rsi]
	jmp	.label_42
	nop	dword ptr [rax + rax]
.label_74:
	cmp	eax, 9
	lea	rsi, [rsi]
	je	.label_12
	mov	r14d, 0xffffffff
	cmp	eax, 0xa
	je	.label_43
	lea	rsi, [rsi]
	mov	byte ptr [r12], 0x5e
	add	bpl, 0x40
	mov	byte ptr [r12 + 1], bpl
	nop	
	jmp	.label_93
	nop	dword ptr [rax + rax]
.label_78:
	cmp	eax, 0x7f
	mov	rsp, rsp
	jne	.label_88
	lea	rsi, [rsi]
	mov	word ptr [r12], 0x3f5e
.label_93:
	mov	rsp, rsp
	add	r12, 2
	nop	
	jmp	.label_42
	nop	dword ptr [rax]
.label_12:
	mov	byte ptr [r12], 9
	mov	rsp, rsp
	inc	r12
	jmp	.label_42
.label_88:
	mov	word ptr [r12], 0x2d4d
	cmp	eax, 0xa0
	jb	.label_96
	mov	rbp, rbp
	cmp	eax, 0xff
	mov	rsp, rsp
	je	.label_97
	xor	bpl, 0x80
	mov	byte ptr [r12 + 2], bpl
	add	r12, 3
	jmp	.label_42
.label_96:
	mov	rsp, rsp
	mov	byte ptr [r12 + 2], 0x5e
	add	bpl, 0xc0
	mov	byte ptr [r12 + 3], bpl
	add	r12, 4
	lea	rdi, [rdi]
	jmp	.label_42
.label_97:
	lea	rdi, [rdi]
	mov	word ptr [r12 + 2], 0x3f5e
	add	r12, 4
	lea	rdi, [rdi]
	jmp	.label_42
.label_57:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x148]
	lea	rdi, [rdi]
	test	al, al
	lea	rdi, [rdi]
	jne	.label_24
	nop	word ptr [rax + rax]
.label_30:
	mov	byte ptr [r12], bpl
	inc	r12
	mov	rsp, rsp
	movzx	ebp, byte ptr [r13]
	inc	r13
	nop	
	mov	r14d, 0xffffffff
	cmp	ebp, 0xa
	jne	.label_30
	lea	rsi, [rsi]
	jmp	.label_43
	nop	word ptr cs:[rax + rax]
.label_16:
	mov	bpl, byte ptr [r13]
	mov	rsp, rsp
	inc	r13
.label_24:
	movzx	eax, bpl
	cmp	eax, 9
	je	.label_41
	mov	rbp, rbp
	mov	r14d, 0xffffffff
	cmp	eax, 0xa
	je	.label_43
	mov	byte ptr [r12], bpl
	nop	
	inc	r12
	lea	rsi, [rsi]
	jmp	.label_16
	nop	
.label_41:
	mov	rbp, rbp
	mov	word ptr [r12], 0x495e
	add	r12, 2
	mov	rbp, rbp
	jmp	.label_16
	nop	word ptr cs:[rax + rax]
.label_43:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x160], r12
	mov	rbp, r15
	ja	.label_53
.label_58:
	nop	
	mov	edi, 1
	lea	rsi, [rsi]
	mov	rsi, rbp
	mov	rdx, rbx
	call	full_write
	cmp	rax, rbx
	lea	rsi, [rsi]
	jne	.label_20
	mov	rsp, rsp
	add	rbp, rbx
	mov	r15, r12
	sub	r15, rbp
	cmp	r15, rbx
	nop	
	jae	.label_58
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x140]
	mov	rdi, r12
	mov	rsi, rbp
	mov	rdx, r15
	call	memmove
	add	r15, r12
	lea	rdi, [rdi]
	mov	r12, r15
.label_53:
	cmp	r13, qword ptr [rsp + 0xa8]
	jbe	.label_71
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x17c], 0
	mov	eax, dword ptr [rsp + 0x94]
	mov	rsp, rsp
	test	al, 1
	jne	.label_73
	nop	
	mov	rbp, qword ptr [rsp + 0x140]
	mov	rbp, rbp
	jmp	.label_36
	nop	dword ptr [rax + rax]
.label_71:
	lea	ebp, [r14 + 1]
	lea	rdi, [rdi]
	test	r14d, r14d
	lea	rsi, [rsi]
	js	.label_80
	mov	eax, 2
	nop	
	cmovg	ebp, eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x60]
	test	al, al
	lea	rdi, [rdi]
	je	.label_85
	nop	
	test	r14d, r14d
	jle	.label_85
	mov	r14d, 2
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x140]
	nop	
	jmp	.label_81
.label_73:
	mov	edi,  dword ptr [dword ptr [rip + input_desc]]
	mov	esi, 0x541b
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	lea	rdx, [rsp + 0x17c]
	nop	
	call	ioctl
	test	eax, eax
	mov	rbp, qword ptr [rsp + 0x140]
	mov	rsp, rsp
	jns	.label_14
	nop	
	call	__errno_location
	mov	r13d, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x94], 0
	mov	rsp, rsp
	cmp	r13, 0x26
	nop	
	ja	.label_11
	movabs	rax, 0x4002480000
	mov	rbp, rbp
	bt	rax, r13
	mov	rbp, rbp
	jb	.label_14
.label_11:
	cmp	r13d, 0x5f
	jne	.label_52
	nop	
.label_14:
	cmp	dword ptr [rsp + 0x17c], 0
	lea	rdi, [rdi]
	jne	.label_23
.label_36:
	sub	r12, rbp
	jne	.label_25
	mov	r12, rbp
	lea	rdi, [rdi]
	jmp	.label_23
.label_80:
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0x140]
	lea	rsi, [rsi]
	jmp	.label_28
.label_25:
	mov	rbp, rbp
	mov	edi, 1
	mov	rsi, rbp
	mov	rdx, r12
	nop	
	call	full_write
	cmp	rax, r12
	mov	rbp, rbp
	mov	r12, rbp
	jne	.label_20
.label_23:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + input_desc]]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	rbp, rbp
	call	safe_read
	lea	rdi, [rdi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_47
	cmp	rax, -1
	mov	rbp, rbp
	jne	.label_48
	mov	rsp, rsp
	call	__errno_location
	mov	r15, rax
	nop	
	mov	ebx, dword ptr [r15]
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rbp, rbp
	call	quotearg_n_style_colon
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	nop	
	xor	eax, eax
	mov	esi, ebx
	call	error
	sub	r12, rbp
	je	.label_65
	mov	rsp, rsp
	mov	edi, 1
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	rdx, r12
	call	full_write
	lea	rdi, [rdi]
	cmp	rax, r12
	jne	.label_64
.label_65:
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + newlines2]],  r14d
	xor	r12d, r12d
	mov	rbp, rbp
	jmp	.label_31
	nop	
.label_38:
	lea	rsi, [rsi]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	lea	rdi, [rdi]
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	nop	
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, r15d
.label_70:
	call	error
	mov	rsp, rsp
	jmp	.label_50
.label_76:
	mov	rax, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	cmp	r15, rax
	lea	rdi, [rdi]
	cmovbe	r15, rax
	nop	
	mov	rax, qword ptr [rsp + 0x80]
	lea	rdi, [rax + r15]
	mov	rbx, r15
	call	xmalloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rcx, qword ptr [rsp + 0x38]
	lea	r14, [r15 + rcx - 1]
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r14
	div	rcx
	lea	rsi, [rsi]
	sub	r14, rdx
	nop	dword ptr [rax]
.label_19:
	mov	edi,  dword ptr [dword ptr [rip + input_desc]]
	mov	rsi, r14
	mov	rdx, rbx
	call	safe_read
	lea	rdi, [rdi]
	mov	rbp, rax
	nop	
	mov	r12b, 1
	mov	rbp, rbp
	test	rbp, rbp
	mov	rsp, rsp
	je	.label_10
	cmp	rbp, -1
	nop	
	je	.label_13
	mov	edi, 1
	mov	rsi, r14
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	full_write
	cmp	rax, rbp
	je	.label_19
	nop	
	jmp	.label_20
.label_47:
	nop	
	sub	r12, rbp
	je	.label_22
	mov	edi, 1
	nop	
	mov	rsi, rbp
	mov	rdx, r12
	lea	rsi, [rsi]
	call	full_write
	nop	
	cmp	rax, r12
	mov	rsp, rsp
	jne	.label_20
.label_22:
	mov	dword ptr [dword ptr [rip + newlines2]],  r14d
	mov	r12b, 1
	nop	
	jmp	.label_31
.label_13:
	lea	rsi, [rsi]
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	xor	r12d, r12d
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	nop	
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, ebp
	call	error
	lea	rdi, [rdi]
	jmp	.label_10
.label_52:
	mov	rbp, rbp
	xor	r12d, r12d
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.47
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsp, rsp
	mov	r15, rax
	nop	
	mov	rsi,  qword ptr [word ptr [rip + infile]]
	mov	edi, 4
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, r13d
	mov	rsp, rsp
	mov	rdx, r15
	call	error
	mov	dword ptr [dword ptr [rip + newlines2]],  r14d
	nop	word ptr [rax + rax]
.label_31:
	mov	r15, qword ptr [rsp + 0x158]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x170]
	call	free
.label_10:
	mov	r14, qword ptr [rsp + 0x180]
	mov	rsp, rsp
	mov	r13d, dword ptr [rsp + 0xa4]
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	and	al, r12b
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rax
	lea	rsi, [rsi]
	mov	rdi, r15
	nop	
	call	free
	nop	
	mov	ebx, dword ptr [rsp + 0x4c]
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	r12, qword ptr [rsp + 0x70]
.label_50:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + infile]]
	movzx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x2d
	mov	rsp, rsp
	jne	.label_79
	cmp	byte ptr [rax + 1], 0
	je	.label_56
.label_79:
	mov	edi,  dword ptr [dword ptr [rip + input_desc]]
	call	close
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	jns	.label_56
.label_94:
	mov	rsp, rsp
	call	__errno_location
	mov	r15d, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rax
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, r15d
	mov	rbp, rbp
	call	error
.label_56:
	inc	ebx
	lea	rsi, [rsi]
	inc	rbp
	cmp	ebx, r13d
	jl	.label_98
	mov	rax, qword ptr [rsp + 0x30]
	test	al, 1
	je	.label_29
	mov	rsp, rsp
	xor	edi, edi
	nop	
	call	close
	test	eax, eax
	js	.label_15
.label_29:
	nop	
	mov	rax, qword ptr [rsp + 0x18]
	not	al
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x188
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_20:
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	mov	ebx, dword ptr [rax]
.label_62:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_1
.label_67:
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rcx, rax
	mov	edi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, ebx
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rsp, rsp
	call	error
.label_9:
	mov	rbp, rbp
	cmp	eax, 0xffffff7d
	je	.label_40
	cmp	eax, 0xffffff7e
	mov	rsp, rsp
	jne	.label_44
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	call	usage
.label_40:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	nop	
	mov	esi, OFFSET FLAT:.str.8
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.17
	lea	rsi, [rsi]
	mov	r8d, OFFSET FLAT:.str.23
	mov	r9d, OFFSET FLAT:.str.24
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	mov	rsp, rsp
	call	exit
.label_44:
	mov	edi, 1
	call	usage
.label_64:
	mov	rbp, rbp
	mov	ebx, dword ptr [r15]
	jmp	.label_62
.label_17:
	mov	rbp, rbp
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.25
	jmp	.label_67
.label_15:
	nop	
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29
	jmp	.label_67
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x402950
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
	#Procedure 0x402960
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402970

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
	je	.label_100
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_99
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_99
.label_100:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_102
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_99:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_1
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_101
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_2
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
.label_102:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_101:
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
	#Procedure 0x402a70

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a80
	.globl fadvise
	.type fadvise, @function
fadvise:

	lea	rdi, [rdi]
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_103
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
.label_103:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402ab0

	.globl full_write
	.type full_write, @function
full_write:
	push	rbp
	push	r15
	push	r14
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	lea	rdi, [rdi]
	mov	ebp, edi
	xor	r14d, r14d
	test	r15, r15
	je	.label_104
	nop	dword ptr [rax]
.label_105:
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r15
	mov	rbp, rbp
	call	safe_write
	cmp	rax, -1
	lea	rsi, [rsi]
	je	.label_104
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_106
	add	r14, rax
	nop	
	add	rbx, rax
	lea	rsi, [rsi]
	sub	r15, rax
	jne	.label_105
	lea	rdi, [rdi]
	jmp	.label_104
.label_106:
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0x1c
.label_104:
	lea	rdi, [rdi]
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b30

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
	je	.label_107
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
	jl	.label_109
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_109
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
	jne	.label_108
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_108:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_109:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_107:
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
	#Procedure 0x402c20
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
	#Procedure 0x402c70
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
	#Procedure 0x402c90
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
	#Procedure 0x402cb0
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
	#Procedure 0x402d20
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
	#Procedure 0x402d40
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
	je	.label_110
	test	rdx, rdx
	nop	
	je	.label_110
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_110:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402d80
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
	#Procedure 0x402e30

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
.label_166:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r12d
	lea	rsi, [rsi]
	cmp	r12d, 0xa
	lea	rdi, [rdi]
	ja	.label_186
	mov	r9d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	r10, r15
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_191]]
.label_369:
	mov	r15d, edi
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11
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
.label_370:
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
	jne	.label_216
	mov	al, byte ptr [rdx]
	test	al, al
	mov	r14d, 0
	je	.label_216
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_238:
	mov	rsp, rsp
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_231
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_231:
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + r14 + 1]
	mov	rsp, rsp
	inc	r14
	test	al, al
	mov	rbp, rbp
	jne	.label_238
.label_216:
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
	jmp	.label_122
.label_362:
	xor	r9d, r9d
	xor	r14d, r14d
	mov	rbp, rbp
	mov	r13b, al
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_122
.label_365:
	lea	rsi, [rsi]
	mov	al, 1
.label_363:
	lea	rsi, [rsi]
	mov	dl, 1
.label_366:
	nop	
	test	dl, 1
	lea	rsi, [rsi]
	mov	cl, 1
	mov	rbp, rbp
	je	.label_148
	mov	rbp, rbp
	mov	cl, al
.label_148:
	mov	al, cl
.label_364:
	nop	
	mov	r9d, 2
	lea	rsi, [rsi]
	test	dl, 1
	mov	rsp, rsp
	jne	.label_153
	test	rbp, rbp
	je	.label_158
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx], 0x27
	mov	r14d, 1
	lea	rdi, [rdi]
	jmp	.label_159
.label_153:
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_159
.label_367:
	mov	rsp, rsp
	mov	r9d, 5
	test	dl, 1
	jne	.label_169
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_174
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x22
	mov	r14d, 1
	jmp	.label_177
.label_368:
	mov	r13b, 1
	mov	rsp, rsp
	mov	r9d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:.str.10
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xa0], rax
	mov	sil, 1
	lea	rsi, [rsi]
	jmp	.label_122
.label_158:
	mov	r14d, 1
	nop	word ptr cs:[rax + rax]
.label_159:
	mov	ecx, OFFSET FLAT:.str.12
	mov	qword ptr [rsp + 0x68], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xa0], rcx
	nop	
	mov	r13b, al
	nop	
	mov	sil, dl
	jmp	.label_122
.label_169:
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_177
.label_174:
	nop	
	mov	r14d, 1
.label_177:
	mov	eax, OFFSET FLAT:.str.10
	mov	qword ptr [rsp + 0x68], rax
	mov	rbp, rbp
	mov	eax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa0], rax
	lea	rdi, [rdi]
	mov	r13b, 1
	mov	sil, dl
	nop	word ptr cs:[rax + rax]
.label_122:
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
.label_213:
	mov	rsp, rsp
	inc	r15
.label_218:
	lea	rdi, [rdi]
	cmp	r10, -1
	lea	rsi, [rsi]
	je	.label_139
	cmp	r15, r10
	jne	.label_143
	jmp	.label_168
	nop	dword ptr [rax]
.label_139:
	mov	rcx, -1
	nop	
	cmp	byte ptr [r11 + r15], 0
	mov	rsp, rsp
	je	.label_146
.label_143:
	cmp	byte ptr [rsp + 0x56], 0
	nop	
	je	.label_211
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rbx, [r15 + rax]
	mov	qword ptr [rsp + 0x88], r15
	lea	rsi, [rsi]
	cmp	rax, 2
	jb	.label_164
	lea	rdi, [rdi]
	cmp	r10, -1
	nop	
	jne	.label_164
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
.label_164:
	mov	rsp, rsp
	cmp	rbx, r10
	lea	rdi, [rdi]
	jbe	.label_183
	mov	dword ptr [rsp + 0x84], 0
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	jmp	.label_185
	nop	dword ptr [rax]
.label_211:
	nop	
	mov	dword ptr [rsp + 0x84], 0
	lea	rsi, [rsi]
	jmp	.label_185
	nop	word ptr cs:[rax + rax]
.label_183:
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
	jne	.label_215
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
	je	.label_185
	jmp	.label_132
.label_215:
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
.label_185:
	movzx	r12d, byte ptr [r11 + r15]
	cmp	r12, 0x7e
	ja	.label_115
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	r13b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	rsp, rsp
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_120]]
.label_380:
	test	r15, r15
	jne	.label_116
	jmp	.label_128
.label_384:
	xor	eax, eax
	cmp	r10, -1
	je	.label_130
	test	r15, r15
	jne	.label_134
	nop	
	cmp	r10, 1
	je	.label_128
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_112
.label_373:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x37], 0
	mov	rbp, rbp
	je	.label_144
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_132
	nop	
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_155
	nop	
	mov	al, dil
	nop	
	and	al, 1
	jne	.label_155
	cmp	r14, rbp
	jae	.label_157
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_157:
	nop	
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_149
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x24
.label_149:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_172
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_172:
	nop	
	add	r14, 3
	lea	rdi, [rdi]
	mov	dil, 1
.label_155:
	mov	rcx, r14
	nop	
	cmp	rcx, rbp
	mov	rsp, rsp
	jae	.label_181
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x5c
.label_181:
	lea	r14, [rcx + 1]
	mov	rbp, rbp
	mov	al, 1
	mov	r12b, 0x30
	cmp	r9d, 2
	je	.label_188
	lea	rdx, [r15 + 1]
	cmp	rdx, r10
	jae	.label_193
	nop	
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	mov	rbp, rbp
	movzx	edx, dl
	cmp	edx, 9
	mov	rbp, rbp
	ja	.label_195
	mov	rsp, rsp
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_202
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rdx + r14], 0x30
.label_202:
	nop	
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_207
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + rdx], 0x30
.label_207:
	add	rcx, 3
	xor	r13d, r13d
	lea	rdi, [rdi]
	mov	r14, rcx
	jmp	.label_112
.label_374:
	mov	bl, 0x62
	nop	
	jmp	.label_226
.label_375:
	mov	rsp, rsp
	mov	cl, 0x74
	lea	rsi, [rsi]
	jmp	.label_113
.label_376:
	mov	bl, 0x76
	mov	rbp, rbp
	jmp	.label_226
.label_377:
	lea	rdi, [rdi]
	mov	bl, 0x66
	jmp	.label_226
.label_378:
	mov	cl, 0x72
	lea	rdi, [rdi]
	jmp	.label_113
.label_381:
	nop	
	mov	al, 1
	mov	qword ptr [rsp + 0xc8], rax
	cmp	r9d, 2
	jne	.label_184
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_235
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
	jae	.label_239
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_239:
	lea	rax, [r14 + 1]
	lea	rdi, [rdi]
	cmp	rax, rbp
	jae	.label_129
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x5c
.label_129:
	lea	rdi, [rdi]
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_199
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_199:
	mov	rbp, rbp
	add	r14, 3
	lea	rdi, [rdi]
	xor	edi, edi
.label_184:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	r13b, 1
	jmp	.label_112
.label_382:
	lea	rdi, [rdi]
	cmp	r9d, 5
	je	.label_152
	mov	rbp, rbp
	cmp	r9d, 2
	jne	.label_116
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_116
	nop	
	jmp	.label_165
.label_383:
	mov	rsp, rsp
	cmp	r9d, 2
	nop	
	jne	.label_167
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_171
	jmp	.label_175
.label_115:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	qword ptr [rsp + 0xd0], r9
	mov	byte ptr [rsp + 0xf7], r8b
	mov	qword ptr [rsp + 0x78], rbp
	cmp	qword ptr [rsp + 0xa8], 1
	lea	rsi, [rsi]
	jne	.label_209
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
	jmp	.label_180
.label_130:
	lea	rdi, [rdi]
	test	r15, r15
	jne	.label_198
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_198
.label_128:
	mov	dl, 1
.label_379:
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_205
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r13b, dl
	lea	rdi, [rdi]
	jmp	.label_112
.label_144:
	cmp	dword ptr [rsp + 0x94], 0
	mov	rsp, rsp
	jne	.label_213
	jmp	.label_116
.label_167:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	cl, r12b
	je	.label_113
.label_171:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_161
.label_113:
	cmp	byte ptr [rsp + 0xc7], 0
	mov	rbp, rbp
	mov	bl, cl
	je	.label_225
.label_226:
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x37], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_112
	jmp	.label_230
.label_209:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], 0
	lea	rsi, [rsi]
	cmp	r10, -1
	lea	rbp, [rsp + 0x70]
	jne	.label_233
	mov	rdi, r11
	mov	rbx, r11
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	r11, rbx
	mov	r10, rax
.label_233:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd8], r10
	nop	
	mov	r13b, 1
	nop	
	cmp	byte ptr [rsp + 0x47], 0
	lea	rsi, [rsi]
	mov	edx, 0
	je	.label_117
	lea	rax, [r11 + r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe8], rax
	lea	rsi, [rsi]
	mov	r13b, 1
	nop	
	xor	edx, edx
.label_200:
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
	je	.label_145
	mov	rsp, rsp
	cmp	rbx, -1
	movabs	rsi, 0x20000002b
	je	.label_150
	test	rbx, rbx
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_162
	lea	rsi, [rsi]
	cmp	rbx, 2
	nop	
	mov	rbp, qword ptr [rsp + 0x78]
	jb	.label_141
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rsp + 0xe8]
	lea	rdi, [rdi]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax + rax]
.label_187:
	nop	
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	mov	rbp, rbp
	cmp	edx, 0x21
	mov	rbp, rbp
	ja	.label_179
	lea	rsi, [rsi]
	bt	rsi, rdx
	nop	
	jb	.label_182
.label_179:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbx
	jb	.label_187
.label_141:
	mov	edi, dword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_190
	mov	rbp, rbp
	xor	r13d, r13d
.label_190:
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
	je	.label_200
	jmp	.label_133
	nop	
.label_117:
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
	je	.label_145
	mov	edi, dword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	call	iswprint
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_236
	xor	r13d, r13d
.label_236:
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
	je	.label_117
	lea	rsi, [rsi]
	jmp	.label_133
.label_198:
	lea	rdi, [rdi]
	mov	r10, -1
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_112
.label_152:
	cmp	dword ptr [rsp + 0x5c], 0
	lea	rdi, [rdi]
	je	.label_116
	lea	rcx, [r15 + 2]
	cmp	rcx, r10
	jae	.label_116
	movzx	eax, byte ptr [r15 + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_116
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	nop	
	cmp	edx, 0x3e
	lea	rdi, [rdi]
	ja	.label_147
	movabs	rsi, 0x7000a38200000000
	mov	rbp, rbp
	bt	rsi, rdx
	lea	rsi, [rsi]
	jae	.label_151
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_125
	lea	rdi, [rdi]
	cmp	r14, rbp
	jae	.label_163
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x3f
.label_163:
	mov	rsp, rsp
	lea	rax, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rax, rbp
	jae	.label_170
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x22
.label_170:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_118
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rax], 0x22
.label_118:
	nop	
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_220
	nop	
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x3f
.label_220:
	add	r14, 4
	xor	eax, eax
	nop	
	mov	r15, rcx
	mov	rsp, rsp
	mov	r12b, dl
	mov	rsp, rsp
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_112
.label_116:
	mov	rbp, rbp
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_112:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x83], 0
	je	.label_131
	cmp	qword ptr [rsp + 0x130], 0
	jne	.label_201
	nop	
	jmp	.label_142
	nop	dword ptr [rax + rax]
.label_131:
	cmp	byte ptr [rsp + 0x57], 0
	lea	rdi, [rdi]
	je	.label_142
.label_201:
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
	jne	.label_208
	mov	rcx, qword ptr [rsp + 0x130]
	and	esi, dword ptr [rcx + rdx*4]
	mov	rbp, rbp
	jmp	.label_219
	nop	word ptr cs:[rax + rax]
.label_142:
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
.label_219:
	mov	bl, r12b
	je	.label_161
	jmp	.label_230
.label_208:
	mov	bl, r12b
.label_230:
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_132
	cmp	r9d, 2
	jne	.label_232
	mov	al, dil
	and	al, 1
	jne	.label_232
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
	jae	.label_114
	mov	rcx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_114:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_123
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_123:
	mov	rsp, rsp
	add	r14, 3
	mov	dil, 1
.label_232:
	mov	rbp, rbp
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_127
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_127:
	mov	rbp, rbp
	inc	r14
	jmp	.label_137
.label_134:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_112
.label_188:
	xor	r13d, r13d
	jmp	.label_112
.label_193:
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_112
.label_195:
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_112
.label_150:
	xor	r13d, r13d
.label_223:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	jmp	.label_133
.label_145:
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x88]
	lea	rax, [rdx + r15]
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	cmp	rax, r10
	mov	r11, qword ptr [rsp + 0xe0]
	jae	.label_160
	lea	rax, [r11 + r15]
.label_178:
	mov	rbp, rbp
	cmp	byte ptr [rax + rdx], 0
	mov	rbp, rbp
	je	.label_140
	lea	rcx, [r15 + rdx + 1]
	inc	rdx
	cmp	rcx, r10
	lea	rdi, [rdi]
	jb	.label_178
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_133
.label_160:
	xor	r13d, r13d
	jmp	.label_133
.label_140:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_133
.label_162:
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0x88]
.label_133:
	mov	rbp, rbp
	mov	rbx, r10
.label_180:
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
	ja	.label_206
	test	cl, cl
	je	.label_206
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_112
.label_206:
	mov	rsp, rsp
	add	rdx, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x88], rdx
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_210
	nop	dword ptr [rax]
.label_203:
	nop	
	inc	r14
	mov	rbp, rbp
	mov	r12b, byte ptr [r11 + r15 + 1]
	nop	
	mov	r15, rdx
.label_210:
	mov	rsp, rsp
	test	cl, cl
	je	.label_221
	mov	edx, dword ptr [rsp + 0x84]
	test	dl, 1
	lea	rsi, [rsi]
	je	.label_204
	cmp	r14, rbp
	jae	.label_228
	nop	
	mov	rdx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + r14], 0x5c
.label_228:
	inc	r14
	mov	dword ptr [rsp + 0x84], 0
.label_204:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_234
	nop	dword ptr [rax + rax]
.label_221:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_111
	cmp	r9d, 2
	mov	rsp, rsp
	mov	r10, rbx
	jne	.label_119
	mov	rsp, rsp
	mov	al, dil
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_119
	lea	rsi, [rsi]
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_124
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_124:
	lea	rax, [r14 + 1]
	nop	
	cmp	rax, rbp
	jae	.label_217
	mov	rdx, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_217:
	lea	rax, [r14 + 2]
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_136
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdx + rax], 0x27
.label_136:
	lea	rsi, [rsi]
	add	r14, 3
	mov	rsp, rsp
	mov	dil, 1
.label_119:
	cmp	r14, rbp
	jae	.label_194
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_194:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_154
	mov	dl, r12b
	lea	rdi, [rdi]
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], dl
.label_154:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	mov	rsp, rsp
	jae	.label_121
	mov	dl, r12b
	shr	dl, 3
	and	dl, 7
	nop	
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rsi + rax], dl
.label_121:
	nop	
	add	r14, 3
	mov	rsp, rsp
	and	r12b, 7
	or	r12b, 0x30
	mov	rbp, rbp
	mov	al, 1
.label_234:
	lea	rdx, [r15 + 1]
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x88], rdx
	lea	rsi, [rsi]
	jbe	.label_161
	mov	rbp, rbp
	test	dil, 1
	lea	rsi, [rsi]
	je	.label_135
	lea	rsi, [rsi]
	mov	bl, al
	and	bl, 1
	jne	.label_135
	nop	
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_173
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + r14], 0x27
.label_173:
	lea	rsi, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rsi, rbp
	jae	.label_212
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdi + rsi], 0x27
.label_212:
	add	r14, 2
	mov	rsp, rsp
	xor	edi, edi
.label_135:
	nop	
	mov	rbx, r10
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_203
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + r14], r12b
	jmp	.label_203
	nop	word ptr cs:[rax + rax]
.label_161:
	test	dil, 1
	je	.label_214
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_214
	nop	
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_227
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_227:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_222
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_222:
	lea	rdi, [rdi]
	add	r14, 2
	nop	
	xor	edi, edi
.label_214:
	lea	rsi, [rsi]
	mov	bl, r12b
.label_137:
	cmp	r14, rbp
	jae	.label_197
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + r14], bl
.label_197:
	inc	r14
	lea	rsi, [rsi]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	lea	rsi, [rsi]
	mov	r8b, r13b
	jmp	.label_213
.label_147:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_112
.label_151:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_112
	nop	word ptr [rax + rax]
.label_168:
	nop	
	mov	rcx, r15
.label_146:
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
	je	.label_126
	mov	rsp, rsp
	or	al, dl
	je	.label_229
.label_126:
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
	je	.label_138
	mov	rsp, rsp
	or	al, dl
	jne	.label_138
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rdi, [rdi]
	jne	.label_156
	cmp	qword ptr [rsp + 0x48], 0
	mov	rsp, rsp
	je	.label_138
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
	je	.label_166
.label_138:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x68]
	test	rdx, rdx
	je	.label_176
	nop	
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_176
	mov	rsp, rsp
	mov	al, byte ptr [rdx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_176
	mov	rbp, rbp
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_192:
	cmp	r14, rbp
	jae	.label_189
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_189:
	mov	rbp, rbp
	inc	r14
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	lea	rsi, [rsi]
	test	al, al
	jne	.label_192
.label_176:
	cmp	r14, rbp
	jae	.label_196
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + r14], 0
	jmp	.label_196
.label_205:
	lea	rdi, [rdi]
	mov	r9d, 2
	jmp	.label_132
.label_182:
	mov	r9d, 2
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	jmp	.label_132
.label_111:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_132
.label_229:
	lea	rdi, [rdi]
	mov	r10, rcx
	mov	rsp, rsp
	jmp	.label_132
.label_225:
	nop	
	mov	r9d, 2
.label_132:
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
.label_224:
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	r14, rax
.label_196:
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
.label_156:
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
	jmp	.label_224
.label_235:
	mov	r9d, 2
	jmp	.label_132
.label_175:
	nop	
	mov	r9d, 2
	mov	rsp, rsp
	jmp	.label_132
.label_165:
	mov	r9d, 2
	mov	rbp, rbp
	jmp	.label_132
.label_125:
	mov	r9d, 5
	nop	
	jmp	.label_132
.label_186:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042d0
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
	#Procedure 0x404410
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
	je	.label_240
	mov	qword ptr [rax], rbx
.label_240:
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
	#Procedure 0x404560
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_241
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_245:
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
	jl	.label_245
.label_241:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_244
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_242]], OFFSET FLAT:slot0
.label_244:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_243
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_243:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404620
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x404630

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
	js	.label_252
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_247
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_250
.label_247:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_248
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
	jne	.label_251
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_251:
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
.label_250:
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
	ja	.label_249
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
	je	.label_246
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_246:
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
.label_249:
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
.label_252:
	lea	rdi, [rdi]
	call	abort
.label_248:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x4048a0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4048b0
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
	#Procedure 0x4048e0
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
	#Procedure 0x404910
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
	je	.label_253
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
.label_253:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4049a0
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
	je	.label_254
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
.label_254:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a40

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
	je	.label_255
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
.label_255:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ad0
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
	je	.label_256
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
.label_256:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404b40
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_257]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_258]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_259]]
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
	#Procedure 0x404be0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_257]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_258]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_259]]
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
	#Procedure 0x404c80

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_257]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_258]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_259]]
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
	#Procedure 0x404cf0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_257]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_258]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_259]]
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
	#Procedure 0x404d60

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
	je	.label_260
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
.label_260:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404e40
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_257]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_258]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_259]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_261
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_261
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
.label_261:
	nop	
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404ed0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_257]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_258]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_259]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_262
	test	rdx, rdx
	je	.label_262
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
.label_262:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f60
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_257]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_258]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_259]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_263
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_263
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
.label_263:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405000
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_257]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_258]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_259]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_264
	test	rsi, rsi
	je	.label_264
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
.label_264:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050a0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050b0
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
	#Procedure 0x4050d0
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
	#Procedure 0x4050f0
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
	#Procedure 0x405120

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
	jne	.label_266
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_268
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_267
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_267
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_267
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_267
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_267
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_267
	nop	
	mov	eax, OFFSET FLAT:.str.14
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_266
	mov	eax, OFFSET FLAT:.str.15
	jmp	.label_266
.label_268:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_267
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_267
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_267
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_267
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_267
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_267
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_265
.label_267:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10
	mov	eax, OFFSET FLAT:.str.12
	cmove	rax, rcx
.label_266:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_265:
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_266
	mov	eax, OFFSET FLAT:.str.18_0
	jmp	.label_266
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405290

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	rbx, rdx
	nop	
	mov	r14, rsi
	mov	rbp, rbp
	mov	r15d, edi
	nop	word ptr [rax + rax]
.label_270:
	mov	rsp, rsp
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	read
	mov	rsp, rsp
	mov	rbp, rax
	lea	rdi, [rdi]
	test	rbp, rbp
	jns	.label_269
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	mov	rsp, rsp
	je	.label_270
	mov	rbp, rbp
	cmp	rbx, 0x7ff00001
	jb	.label_269
	lea	rdi, [rdi]
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	lea	rsi, [rsi]
	je	.label_270
.label_269:
	nop	
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405320

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	rsp, rsp
	mov	r14, rsi
	nop	
	mov	r15d, edi
	nop	word ptr cs:[rax + rax]
.label_272:
	mov	rbp, rbp
	mov	edi, r15d
	mov	rsi, r14
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	write
	mov	rsp, rsp
	mov	rbp, rax
	lea	rsi, [rsi]
	test	rbp, rbp
	lea	rsi, [rsi]
	jns	.label_271
	call	__errno_location
	nop	
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_272
	cmp	rbx, 0x7ff00001
	nop	
	jb	.label_271
	nop	
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_272
.label_271:
	mov	rbp, rbp
	mov	rax, rbp
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x4053b0

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
	je	.label_280
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
	jmp	.label_282
.label_280:
	mov	edx, OFFSET FLAT:.str.1_2
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_282:
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
	ja	.label_278
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_275]]
.label_349:
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
.label_278:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	jmp	.label_274
.label_350:
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
.label_351:
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
.label_352:
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
	jmp	.label_279
.label_353:
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
	jmp	.label_277
.label_354:
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
	jmp	.label_276
.label_355:
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
.label_276:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_277:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_279:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_273
.label_357:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_0
.label_274:
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
	jmp	.label_281
.label_356:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_0
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
.label_281:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_273:
	mov	rbp, rbp
	call	__fprintf_chk
.label_348:
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
	#Procedure 0x4057a0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_283:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_283
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057d0
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_287:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_284
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_286
	nop	word ptr cs:[rax + rax]
.label_284:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_286:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_285
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_287
.label_285:
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
	#Procedure 0x405860

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_288
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
.label_288:
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
.label_290:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_289
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_291
	nop	dword ptr [rax + rax]
.label_289:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_291:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_292
	inc	r9
	cmp	r9, 0xa
	jb	.label_290
.label_292:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4059a0
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
	mov	edx, OFFSET FLAT:.str.15_0
	xor	eax, eax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
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
	#Procedure 0x405a30
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
	jb	.label_293
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_294
	test	rax, rax
	je	.label_293
.label_294:
	nop	
	pop	rbx
	ret	
.label_293:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405a80

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_295
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_296
.label_295:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_296:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ab0
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
	jb	.label_298
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_297
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_297
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_297:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_299
	test	rax, rax
	je	.label_298
.label_299:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_298:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b30

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_300
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_300
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_300:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_301
	test	rax, rax
	nop	
	je	.label_302
.label_301:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_302:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b80
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_303
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_307
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_306
.label_303:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_309
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_309:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_304
.label_306:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_305
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_305
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_305:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_308
	test	rax, rax
	mov	rbp, rbp
	je	.label_307
.label_308:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_307:
	call	xalloc_die
.label_304:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c60
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_311
	test	rax, rax
	mov	rbp, rbp
	je	.label_310
.label_311:
	pop	rbx
	ret	
.label_310:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405c80
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_312
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_315
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_316
	call	free
	xor	eax, eax
	jmp	.label_313
.label_312:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_314
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_316:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_313
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_314
.label_313:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_314:
	mov	rbp, rbp
	call	xalloc_die
.label_315:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405d10
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
	je	.label_317
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_318
.label_317:
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
.label_318:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d70
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
	jb	.label_319
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_319
	pop	rcx
	ret	
.label_319:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x405da0

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
	je	.label_321
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_320
.label_321:
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
.label_320:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405e00
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
	je	.label_322
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_323
.label_322:
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
.label_323:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x405e60

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_3
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
	.align	16
	#Procedure 0x405eb0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_324
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_325
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
	je	.label_325
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
.label_324:
	mov	ecx, 1
.label_325:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f20

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
	je	.label_326
	nop	
	cmp	r15, -2
	jb	.label_326
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_326
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_326:
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
	#Procedure 0x405fb0

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
	jne	.label_327
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_328
	test	cl, cl
	mov	rsp, rsp
	jne	.label_328
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_328
.label_327:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_328
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_328:
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
	#Procedure 0x406040

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
	je	.label_330
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_329
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_331
.label_329:
	nop	
	mov	esi, OFFSET FLAT:.str.1_4
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_330
.label_331:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_330:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406090

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
	je	.label_332
	nop	
	mov	rax, rcx
.label_332:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060d0

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
	js	.label_333
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_335
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
	je	.label_333
.label_335:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_333
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_334
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_334:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_333:
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
	#Procedure 0x406180

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_336
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_336
	test	byte ptr [rbx + 1], 1
	je	.label_336
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_336:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4061c0

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
	jne	.label_337
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_337
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_338
.label_337:
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
.label_338:
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
	je	.label_339
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_339:
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
	#Procedure 0x406270

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