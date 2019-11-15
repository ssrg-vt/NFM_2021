	.section	.text
	.align	32
	#Procedure 0x401600

	.globl usage
	.type usage, @function
usage:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	ebp, edi
	lea	rdi, [rdi]
	test	ebp, ebp
	jne	.label_7
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	mov	rsp, rsp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rcx, rdx
	lea	rdi, [rdi]
	call	__printf_chk
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.2
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.3
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.4
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	rbp, rbp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	rbp, rbp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	mov	edi, 1
	nop	
	mov	edx, OFFSET FLAT:.str.10
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rsi, rcx
	mov	rsp, rsp
	call	__printf_chk
	call	emit_ancillary_info
	lea	rsi, [rsi]
	mov	edi, ebp
	call	exit
.label_7:
	lea	rsi, [rsi]
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	nop	
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rdx, rax
	nop	
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	rbp, rbp
	mov	esi, 1
	xor	eax, eax
	nop	
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	__fprintf_chk
	mov	edi, ebp
	mov	rbp, rbp
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401810

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.22
	nop	word ptr [rax + rax]
.label_8:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.10
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_10
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	lea	rdi, [rdi]
	jne	.label_8
.label_10:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:.str.10
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	mov	rbp, rbp
	call	__printf_chk
	lea	rsi, [rsi]
	mov	edi, 5
	xor	esi, esi
	lea	rsi, [rsi]
	call	setlocale
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_9
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.32
	mov	rsp, rsp
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_9
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
.label_9:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.34
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	mov	r14d, OFFSET FLAT:.str.10
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.10
	xor	eax, eax
	mov	rsp, rsp
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:.str.36
	mov	ecx, OFFSET FLAT:.str_0
	cmove	rcx, rax
	mov	edi, 1
	xor	eax, eax
	nop	
	mov	rsi, rdx
	nop	
	mov	rdx, rbx
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	mov	rbp, rbp
	pop	r14
	nop	
	jmp	__printf_chk
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401990

	.globl main
	.type main, @function
main:
	push	rbp
	push	r14
	push	rbx
	mov	rbp, rbp
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	lea	rsi, [rsi]
	mov	edi, 6
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str_0
	mov	rbp, rbp
	call	setlocale
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.12
	mov	esi, OFFSET FLAT:.str.13
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.12
	mov	rsp, rsp
	call	textdomain
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:close_stdout
	mov	rbp, rbp
	call	atexit
	mov	byte ptr [byte ptr [rip + exit_status]],  0
	mov	edi, OFFSET FLAT:.str.14
	call	getenv
	lea	rsi, [rsi]
	test	rax, rax
	mov	rsp, rsp
	setne	byte ptr [byte ptr [rip + posixly_correct]]
	cmp	ebp, 2
	mov	rbp, rbp
	jne	.label_19
	lea	rdi, [rdi]
	mov	r14, qword ptr [rbx + 8]
	mov	esi, OFFSET FLAT:.str.15
	mov	rdi, r14
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	je	.label_17
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.16
	lea	rdi, [rdi]
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_13
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	xor	ebx, ebx
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, OFFSET FLAT:.str.17
	mov	rsp, rsp
	mov	r8d, OFFSET FLAT:.str.18_0
	lea	rsi, [rsi]
	xor	r9d, r9d
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	call	version_etc
	mov	rbp, rbp
	jmp	.label_16
.label_19:
	lea	rsi, [rsi]
	jl	.label_14
.label_13:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x2d
	mov	rbp, rbp
	jne	.label_11
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x2d
	mov	rbp, rbp
	jne	.label_11
	mov	rbp, rbp
	cmp	byte ptr [rax + 2], 0
	jne	.label_11
	nop	
	cmp	ebp, 2
	jle	.label_14
	add	rbx, 8
	dec	ebp
.label_11:
	mov	r14, qword ptr [rbx + 8]
	add	ebp, -2
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_15:
	mov	rdi, r14
	mov	esi, ebp
	nop	
	mov	rdx, rbx
	mov	rsp, rsp
	call	print_formatted
	sub	ebp, eax
	mov	rbp, rbp
	cdqe	
	lea	rbx, [rbx + rax*8]
	mov	rbp, rbp
	test	eax, eax
	jle	.label_12
	lea	rdi, [rdi]
	test	ebp, ebp
	lea	rdi, [rdi]
	jg	.label_15
.label_12:
	test	ebp, ebp
	mov	rbp, rbp
	jle	.label_18
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx]
	lea	rsi, [rsi]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	error
.label_18:
	movzx	ebx,  byte ptr [byte ptr [rip + exit_status]]
	and	ebx, 1
.label_16:
	lea	rsi, [rsi]
	mov	eax, ebx
	mov	rbp, rbp
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_14:
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.20
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	call	error
	mov	edi, 1
	call	usage
.label_17:
	lea	rsi, [rsi]
	xor	edi, edi
	call	usage
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401bd0

	.globl print_formatted
	.type print_formatted, @function
print_formatted:
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r13
	nop	
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x138
	mov	r12, rdx
	mov	r15d, esi
	nop	
	mov	dword ptr [rsp + 0x1c], r15d
	mov	r13, rdi
	mov	al, byte ptr [r13]
	nop	
	test	al, al
	je	.label_41
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rcx
	movabs	r14, 0x410150000001
	mov	r15d, dword ptr [rsp + 0x1c]
	xor	ecx, ecx
	nop	
	mov	qword ptr [rsp + 0x28], rcx
	nop	word ptr cs:[rax + rax]
.label_47:
	nop	
	movsx	edi, al
	cmp	edi, 0x5c
	mov	rbp, rbp
	je	.label_22
	cmp	edi, 0x25
	jne	.label_36
	lea	rbx, [r13 + 1]
	nop	
	movzx	eax, byte ptr [r13 + 1]
	lea	rsi, [rsi]
	cmp	eax, 0x71
	nop	
	je	.label_37
	nop	
	movzx	eax, al
	cmp	eax, 0x62
	je	.label_43
	mov	rsp, rsp
	cmp	eax, 0x25
	mov	rsp, rsp
	jne	.label_39
	lea	rsi, [rsi]
	mov	edi, 0x25
	mov	rsp, rsp
	call	putchar_unlocked
	jmp	.label_20
	nop	word ptr cs:[rax + rax]
.label_22:
	xor	esi, esi
	mov	rdi, r13
	call	print_esc
	movsxd	rbx, eax
	nop	
	add	rbx, r13
	jmp	.label_20
	nop	word ptr cs:[rax + rax]
.label_36:
	mov	rsp, rsp
	call	putchar_unlocked
	mov	rbx, r13
	jmp	.label_20
.label_37:
	mov	rbp, rbp
	test	r15d, r15d
	jle	.label_20
	mov	rsi, qword ptr [r12]
	mov	rbp, rbp
	mov	edi, 3
	nop	
	call	quotearg_style
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	jmp	.label_49
.label_43:
	test	r15d, r15d
	lea	rdi, [rdi]
	jle	.label_20
	mov	rdi, qword ptr [r12]
	nop	
	call	print_esc_string
.label_49:
	lea	rsi, [rsi]
	add	r12, 8
	lea	rdi, [rdi]
	dec	r15d
	mov	rbp, rbp
	jmp	.label_20
.label_39:
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x120], xmm0
	movaps	xmmword ptr [rsp + 0x110], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x100], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0xf0], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0xe0], xmm0
	movaps	xmmword ptr [rsp + 0xd0], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0xc0], xmm0
	nop	
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x90], xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x70], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	movaps	xmmword ptr [rsp + 0x30], xmm0
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x88], 1
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xa8], 1
	mov	byte ptr [rsp + 0xa5], 1
	mov	byte ptr [rsp + 0xa3], 1
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x9f], 1
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x99], 1
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x77], 1
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x76], 1
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x75], 1
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x71], 1
	mov	byte ptr [rsp + 0x91], 1
	lea	rax, [rsp + 0x93]
	mov	byte ptr [rax + 4], 1
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x1010101
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	ebp, 1
	mov	rax, qword ptr [rsp + 0x28]
	jmp	.label_30
	nop	dword ptr [rax + rax]
.label_25:
	mov	rbp, rbp
	inc	rbp
	inc	rdi
.label_30:
	mov	rsp, rsp
	mov	cl, byte ptr [r13 + rbp]
	movsx	edx, cl
	cmp	edx, 0x26
	jle	.label_40
	lea	esi, [rdx - 0x27]
	nop	
	cmp	esi, 9
	nop	
	ja	.label_45
	jmp	qword ptr [word ptr [+ (rsi * 8) + label_42]]
.label_385:
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0xa3], 0
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x93], 0
	lea	rdi, [rdi]
	jmp	.label_25
	nop	word ptr cs:[rax + rax]
.label_40:
	cmp	edx, 0x20
	mov	rsp, rsp
	je	.label_25
	mov	rsp, rsp
	cmp	edx, 0x23
	lea	rdi, [rdi]
	jne	.label_29
	nop	
	mov	byte ptr [rsp + 0xa5], 0
	mov	byte ptr [rsp + 0xa3], 0
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x99], 0
	mov	word ptr [rsp + 0x93], 0
	mov	rbp, rbp
	jmp	.label_25
.label_45:
	nop	
	cmp	edx, 0x49
	jne	.label_29
.label_384:
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x88], 0
	mov	byte ptr [rsp + 0xa8], 0
	mov	byte ptr [rsp + 0xa3], 0
	mov	byte ptr [rsp + 0x9f], 0
	mov	byte ptr [rsp + 0x75], 0
	nop	
	mov	byte ptr [rsp + 0x95], 0
	mov	byte ptr [rsp + 0x93], 0
	mov	byte ptr [rsp + 0x71], 0
	mov	byte ptr [rsp + 0x91], 0
	jmp	.label_25
.label_29:
	movzx	ecx, cl
	cmp	ecx, 0x2a
	mov	rbp, rbp
	jne	.label_31
	mov	rbp, rbp
	lea	rbx, [r13 + rbp + 1]
	mov	rsp, rsp
	inc	rbp
	mov	rsp, rsp
	xor	eax, eax
	mov	r8b, 1
	test	r15d, r15d
	jle	.label_32
	mov	rsp, rsp
	mov	rdi, qword ptr [r12]
	call	vstrtoimax
	mov	rcx, rax
	sub	rcx, -0x80000000
	mov	rbp, rbp
	shr	rcx, 0x20
	lea	rdi, [rdi]
	jne	.label_26
	add	r12, 8
	dec	r15d
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	r8b, 1
	jmp	.label_38
.label_31:
	lea	rbx, [r13 + rbp]
	movsx	ecx, byte ptr [rbx]
	add	ecx, -0x30
	cmp	ecx, 0xa
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x20]
	jae	.label_23
	nop	word ptr cs:[rax + rax]
.label_33:
	nop	
	movsx	ecx, byte ptr [r13 + rdi + 2]
	mov	rbp, rbp
	add	ecx, -0x30
	inc	rdi
	cmp	ecx, 0xa
	jb	.label_33
	lea	rbx, [r13 + rdi + 1]
	inc	rdi
	mov	rbp, rbp
	xor	r8d, r8d
	mov	rbp, rdi
	jmp	.label_38
.label_23:
	lea	rdi, [rdi]
	xor	r8d, r8d
	lea	rsi, [rsi]
	jmp	.label_38
.label_32:
	mov	rdx, qword ptr [rsp + 0x20]
.label_38:
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x2e
	jne	.label_50
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x93], 0
	movzx	ecx, byte ptr [rbx + 1]
	mov	rbp, rbp
	cmp	ecx, 0x2a
	jne	.label_24
	mov	rsp, rsp
	add	rbx, 2
	nop	
	add	rbp, 2
	mov	rsp, rsp
	xor	edx, edx
	nop	
	mov	dil, 1
	test	r15d, r15d
	jle	.label_27
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x20], r8d
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	rdi, qword ptr [r12]
	lea	rsi, [rsi]
	call	vstrtoimax
	mov	rbp, rbp
	mov	edx, 0xffffffff
	test	rax, rax
	mov	rsp, rsp
	js	.label_35
	mov	rbp, rbp
	mov	ecx, 0x80000000
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_46
	mov	rbp, rbp
	mov	edx, eax
.label_35:
	nop	
	add	r12, 8
	mov	rbp, rbp
	dec	r15d
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	dil, 1
	lea	rsi, [rsi]
	jmp	.label_27
	nop	
.label_24:
	lea	rsi, [rsi]
	inc	rbp
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rbx + 1]
	inc	rbx
	mov	rsp, rsp
	add	ecx, -0x30
	mov	rbp, rbp
	cmp	ecx, 0xa
	mov	rsp, rsp
	jb	.label_24
.label_50:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	jmp	.label_27
	nop	dword ptr [rax]
.label_28:
	mov	rsp, rsp
	inc	rbx
.label_27:
	movzx	esi, byte ptr [rbx]
	mov	cl, sil
	add	cl, 0xb4
	lea	rsi, [rsi]
	movzx	ecx, cl
	lea	rdi, [rdi]
	cmp	ecx, 0x2e
	mov	rsp, rsp
	ja	.label_44
	mov	rsp, rsp
	bt	r14, rcx
	jb	.label_28
.label_44:
	cmp	byte ptr [rsp + rsi + 0x30], 0
	je	.label_51
	test	r15d, r15d
	jle	.label_21
	dec	r15d
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12]
	mov	rsp, rsp
	add	r12, 8
	nop	
	jmp	.label_34
.label_21:
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str_0
.label_34:
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rcx
	nop	
	mov	dword ptr [rsp], edx
	mov	qword ptr [rsp + 0x20], rdx
	mov	rsp, rsp
	movzx	ecx, r8b
	movzx	r9d, dil
	mov	rsp, rsp
	movsx	edx, sil
	mov	rdi, r13
	mov	rsi, rbp
	mov	r8, rax
	mov	qword ptr [rsp + 0x28], r8
	mov	rbp, rbp
	call	print_direc
	nop	
.label_20:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbx + 1]
	lea	rsi, [rsi]
	inc	rbx
	test	al, al
	lea	rdi, [rdi]
	mov	r13, rbx
	nop	
	jne	.label_47
.label_41:
	mov	eax, dword ptr [rsp + 0x1c]
	lea	rdi, [rdi]
	sub	eax, r15d
	add	rsp, 0x138
	mov	rbp, rbp
	pop	rbx
	nop	
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_51:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rdi, [rdi]
	inc	ebx
	lea	rsi, [rsi]
	sub	ebx, r13d
	nop	
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rcx
	mov	ecx, ebx
	mov	r8, r13
	nop	
	call	error
.label_26:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	jmp	.label_48
.label_46:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
.label_48:
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi, qword ptr [r12]
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	rdx, rbx
	call	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x402230

	.globl print_esc_string
	.type print_esc_string, @function
print_esc_string:
	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	nop	
	jmp	.label_52
	nop	word ptr [rax + rax]
.label_53:
	lea	rdi, [rdi]
	mov	esi, 1
	nop	
	mov	rdi, rbx
	call	print_esc
	mov	rsp, rsp
	cdqe	
	add	rax, rbx
	mov	rbp, rbp
	inc	rax
	mov	rbx, rax
.label_52:
	nop	
	movsx	edi, byte ptr [rbx]
	cmp	edi, 0x5c
	lea	rsi, [rsi]
	je	.label_53
	lea	rdi, [rdi]
	test	dil, dil
	je	.label_54
	call	putchar_unlocked
	lea	rsi, [rsi]
	inc	rbx
	jmp	.label_52
.label_54:
	pop	rbx
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402290

	.globl vstrtoimax
	.type vstrtoimax, @function
vstrtoimax:
	push	r14
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rbp, rbp
	mov	rbx, rdi
	mov	rsp, rsp
	movzx	eax, byte ptr [rbx]
	nop	
	cmp	eax, 0x27
	mov	rbp, rbp
	je	.label_57
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rsi, [rsi]
	cmp	eax, 0x22
	lea	rdi, [rdi]
	jne	.label_56
.label_57:
	lea	rdi, [rdi]
	movzx	r14d, byte ptr [rbx + 1]
	nop	
	test	r14, r14
	je	.label_56
	cmp	byte ptr [rbx + 2], 0
	je	.label_55
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + posixly_correct]]
	test	al, al
	jne	.label_55
	add	rbx, 2
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.40
	mov	rbp, rbp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, rbx
	nop	
	call	error
	jmp	.label_55
.label_56:
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0
	lea	rdi, [rdi]
	lea	rsi, [rsp]
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rbp, rbp
	call	strtoimax
	mov	r14, rax
	mov	rsi, qword ptr [rsp]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	verify_numeric
.label_55:
	lea	rsi, [rsi]
	mov	rax, r14
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	nop	
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402370

	.globl print_direc
	.type print_direc, @function
print_direc:
	nop	
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x28
	mov	dword ptr [rsp + 0x18], r9d
	mov	dword ptr [rsp + 0x14], r8d
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x1c], ecx
	mov	r14d, edx
	mov	rsp, rsp
	mov	r15, rsi
	mov	rbp, rbp
	mov	r12, rdi
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x68]
	mov	qword ptr [rsp + 0x20], rax
	nop	
	mov	eax, dword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x10], eax
	lea	rdi, [rdi]
	mov	r13d, OFFSET FLAT:.str.44
	nop	
	mov	ebx, 1
	lea	eax, [r14 - 0x41]
	nop	
	cmp	eax, 0x37
	ja	.label_58
	mov	rsp, rsp
	movabs	rcx, 0x7100000071
	bt	rcx, rax
	jae	.label_76
	mov	rbp, rbp
	mov	r13d, OFFSET FLAT:.str.45
	mov	ebx, 1
	lea	rdi, [rdi]
	jmp	.label_64
.label_76:
	movabs	rcx, 0x90410800800000
	lea	rsi, [rsi]
	bt	rcx, rax
	jae	.label_58
.label_64:
	mov	rbp, rbp
	lea	rdi, [r15 + rbx + 2]
	call	xmalloc
	mov	rbp, rax
	mov	rbp, rbp
	mov	rcx, -1
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, r12
	mov	rsp, rsp
	mov	rdx, r15
	lea	rsi, [rsi]
	call	__mempcpy_chk
	nop	
	mov	rcx, -1
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	lea	rdi, [rdi]
	mov	byte ptr [rax], r14b
	mov	byte ptr [rax + 1], 0
	mov	rsp, rsp
	cmp	r14d, 0x6e
	nop	
	jg	.label_77
	lea	eax, [r14 - 0x58]
	cmp	eax, 0x11
	lea	rsi, [rsi]
	ja	.label_80
	jmp	qword ptr [word ptr [+ (rax * 8) + label_70]]
.label_410:
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	call	vstrtoimax
	nop	
	jmp	.label_66
.label_77:
	add	r14d, -0x6f
	nop	
	cmp	r14d, 9
	nop	
	ja	.label_60
	jmp	qword ptr [word ptr [+ (r14 * 8) + label_67]]
.label_401:
	mov	rdi, qword ptr [rsp + 0x20]
	call	vstrtoumax
.label_66:
	mov	rbp, rbp
	mov	rcx, rax
	mov	eax, dword ptr [rsp + 0x1c]
	mov	rsp, rsp
	test	al, al
	lea	rdi, [rdi]
	je	.label_73
	mov	eax, dword ptr [rsp + 0x18]
	test	al, al
	mov	rbp, rbp
	je	.label_75
	xor	eax, eax
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	esi, dword ptr [rsp + 0x14]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rsp + 0x10]
.label_74:
	lea	rsi, [rsi]
	call	xprintf
	lea	rsi, [rsi]
	jmp	.label_60
.label_80:
	lea	eax, [r14 - 0x45]
	cmp	eax, 3
	jb	.label_59
	cmp	r14d, 0x41
	lea	rdi, [rdi]
	jne	.label_60
.label_59:
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	call	vstrtold
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	nop	
	je	.label_68
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	test	al, al
	nop	
	je	.label_71
	mov	rsp, rsp
	fstp	xword ptr [rsp]
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	esi, dword ptr [rsp + 0x14]
	mov	rbp, rbp
	mov	edx, dword ptr [rsp + 0x10]
	mov	rbp, rbp
	call	xprintf
	lea	rsi, [rsi]
	jmp	.label_60
.label_68:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x18]
	test	al, al
	je	.label_79
	fstp	xword ptr [rsp]
	xor	eax, eax
	mov	rdi, rbp
	mov	esi, dword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	call	xprintf
	mov	rbp, rbp
	jmp	.label_60
.label_73:
	mov	eax, dword ptr [rsp + 0x18]
	test	al, al
	je	.label_61
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	esi, dword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	jmp	.label_63
.label_71:
	fstp	xword ptr [rsp]
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	esi, dword ptr [rsp + 0x14]
	mov	rbp, rbp
	call	xprintf
	jmp	.label_60
.label_79:
	fstp	xword ptr [rsp]
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rsp, rsp
	call	xprintf
	jmp	.label_60
.label_75:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rsp, rsp
	mov	esi, dword ptr [rsp + 0x14]
.label_63:
	lea	rsi, [rsi]
	mov	rdx, rcx
	call	xprintf
	nop	
	jmp	.label_60
.label_61:
	xor	eax, eax
	nop	
	mov	rdi, rbp
	mov	rsi, rcx
	call	xprintf
	jmp	.label_60
.label_58:
	xor	ebx, ebx
	mov	r13, r12
	jmp	.label_64
.label_402:
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	lea	rdi, [rdi]
	je	.label_69
	mov	eax, dword ptr [rsp + 0x18]
	test	al, al
	lea	rsi, [rsi]
	je	.label_72
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, rbp
	mov	esi, dword ptr [rsp + 0x14]
	mov	edx, dword ptr [rsp + 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x20]
	jmp	.label_74
.label_409:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x1c]
	lea	rsi, [rsi]
	test	al, al
	mov	rbp, rbp
	je	.label_78
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rbp
	mov	esi, dword ptr [rsp + 0x14]
	mov	edx, ecx
	call	xprintf
	jmp	.label_60
.label_69:
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x18]
	nop	
	test	al, al
	mov	rsp, rsp
	je	.label_62
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rsp, rsp
	mov	esi, dword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	jmp	.label_65
.label_78:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, rbp
	nop	
	mov	esi, ecx
	lea	rsi, [rsi]
	call	xprintf
	jmp	.label_60
.label_72:
	mov	rsp, rsp
	xor	eax, eax
	mov	rdi, rbp
	mov	esi, dword ptr [rsp + 0x14]
.label_65:
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	call	xprintf
	lea	rdi, [rdi]
	jmp	.label_60
.label_62:
	xor	eax, eax
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	call	xprintf
.label_60:
	mov	rdi, rbp
	add	rsp, 0x28
	nop	
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	nop	
	pop	rbp
	lea	rsi, [rsi]
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x402730

	.globl print_esc
	.type print_esc, @function
print_esc:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	lea	rdi, [rdi]
	movsx	ebx, byte ptr [r14 + 1]
	mov	rbp, rbp
	cmp	ebx, 0x78
	jne	.label_89
	call	__ctype_b_loc
	mov	r12, qword ptr [rax]
	mov	rbp, rbp
	xor	r15d, r15d
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_96:
	nop	
	movsx	ebx, byte ptr [r14 + r15 + 2]
	mov	edi, ebx
	lea	rdi, [rdi]
	call	to_uchar
	movzx	eax, al
	test	byte ptr [r12 + rax*2 + 1], 0x10
	je	.label_82
	mov	eax, ebp
	shl	eax, 4
	lea	rdi, [rdi]
	mov	cl, bl
	lea	rsi, [rsi]
	add	cl, 0x9f
	lea	rdi, [rdi]
	movzx	ecx, cl
	cmp	ecx, 5
	nop	
	ja	.label_85
	add	ebx, -0x57
	jmp	.label_88
	nop	word ptr cs:[rax + rax]
.label_85:
	mov	rbp, rbp
	mov	cl, bl
	add	cl, 0xbf
	mov	rsp, rsp
	movzx	ecx, cl
	nop	
	cmp	ecx, 5
	ja	.label_92
	add	ebx, -0x37
	jmp	.label_88
	nop	dword ptr [rax]
.label_92:
	add	ebx, -0x30
.label_88:
	mov	ebp, ebx
	add	ebp, eax
	mov	rsp, rsp
	inc	r15
	cmp	r15d, 2
	lea	rdi, [rdi]
	jl	.label_96
	mov	rsp, rsp
	jmp	.label_100
.label_89:
	mov	eax, ebx
	nop	
	and	eax, 0xf8
	cmp	eax, 0x30
	jne	.label_83
	movzx	eax, bl
	lea	rdi, [rdi]
	cmp	eax, 0x30
	lea	rsi, [rsi]
	sete	al
	mov	rbp, rbp
	and	al, sil
	movzx	eax, al
	mov	rsp, rsp
	lea	rdx, [rax + r14 + 1]
	xor	ecx, ecx
	lea	rdi, [rdi]
	xor	edi, edi
	nop	word ptr [rax + rax]
.label_93:
	movsx	esi, byte ptr [rdx + rcx]
	mov	ebp, esi
	and	ebp, 0xf8
	cmp	ebp, 0x30
	lea	rsi, [rsi]
	jne	.label_91
	lea	edi, [rsi + rdi*8 - 0x30]
	inc	rcx
	cmp	ecx, 3
	jl	.label_93
.label_91:
	lea	rsi, [rsi]
	add	rax, r14
	lea	r13, [rcx + rax + 1]
	lea	rsi, [rsi]
	call	putchar_unlocked
	lea	rdi, [rdi]
	jmp	.label_86
.label_82:
	mov	rsp, rsp
	test	r15d, r15d
	je	.label_99
.label_100:
	nop	
	lea	r13, [r14 + r15 + 2]
	mov	edi, ebp
	mov	rsp, rsp
	call	putchar_unlocked
	jmp	.label_86
.label_83:
	mov	rbp, rbp
	test	bl, bl
	je	.label_87
	mov	edi, OFFSET FLAT:.str.47
	mov	rbp, rbp
	mov	edx, 0xc
	mov	esi, ebx
	call	memchr
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_87
	lea	r13, [r14 + 2]
	mov	edi, ebx
	mov	rbp, rbp
	call	print_esc_char
	lea	rdi, [rdi]
	jmp	.label_86
.label_87:
	lea	r13, [r14 + 1]
	mov	al, byte ptr [r13]
	lea	rsi, [rsi]
	or	al, 0x20
	lea	rsi, [rsi]
	movzx	eax, al
	mov	rsp, rsp
	cmp	eax, 0x75
	nop	
	jne	.label_94
	movsx	eax, byte ptr [r14 + 1]
	mov	dword ptr [rsp + 4], eax
	cmp	eax, 0x75
	setne	al
	lea	rdi, [rdi]
	movzx	ebx, al
	mov	rbp, rbp
	lea	eax, [rbx*4 + 4]
	mov	dword ptr [rsp], eax
	lea	rdi, [rdi]
	lea	r13, [r14 + 2]
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	r15, qword ptr [rax]
	lea	r12d, [rbx*4 + 5]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_90:
	mov	rsp, rsp
	movsx	ebx, byte ptr [r13]
	mov	edi, ebx
	mov	rsp, rsp
	call	to_uchar
	movzx	eax, al
	mov	rsp, rsp
	test	byte ptr [r15 + rax*2 + 1], 0x10
	je	.label_99
	mov	eax, ebp
	nop	
	shl	eax, 4
	mov	cl, bl
	mov	rbp, rbp
	add	cl, 0x9f
	mov	rbp, rbp
	movzx	ecx, cl
	mov	rbp, rbp
	cmp	ecx, 5
	ja	.label_97
	nop	
	add	ebx, -0x57
	jmp	.label_81
	nop	word ptr cs:[rax + rax]
.label_97:
	mov	cl, bl
	add	cl, 0xbf
	mov	rsp, rsp
	movzx	ecx, cl
	cmp	ecx, 5
	ja	.label_95
	add	ebx, -0x37
	mov	rsp, rsp
	jmp	.label_81
	nop	dword ptr [rax + rax]
.label_95:
	mov	rbp, rbp
	add	ebx, -0x30
.label_81:
	mov	ebp, ebx
	add	ebp, eax
	lea	rsi, [rsi]
	inc	r13
	lea	rdi, [rdi]
	dec	r12d
	nop	
	cmp	r12d, 1
	mov	rsp, rsp
	jg	.label_90
	cmp	ebp, 0x9f
	ja	.label_98
	lea	rsi, [rsi]
	lea	eax, [rbp - 0x24]
	mov	rsp, rsp
	cmp	eax, 0x3c
	ja	.label_84
	movabs	rcx, 0x1000000010000001
	mov	rsp, rsp
	bt	rcx, rax
	jae	.label_84
.label_98:
	mov	eax, ebp
	mov	rbp, rbp
	and	eax, 0xfffff800
	mov	rbp, rbp
	cmp	eax, 0xd800
	lea	rdi, [rdi]
	je	.label_84
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	xor	edx, edx
	nop	
	mov	esi, ebp
	call	print_unicode_char
	lea	rdi, [rdi]
	jmp	.label_86
.label_94:
	mov	edi, 0x5c
	lea	rdi, [rdi]
	call	putchar_unlocked
	movsx	edi, byte ptr [r13]
	mov	rsp, rsp
	test	edi, edi
	je	.label_86
	lea	rdi, [rdi]
	call	putchar_unlocked
	lea	r13, [r14 + 2]
.label_86:
	mov	rsp, rsp
	not	r14d
	mov	rsp, rsp
	add	r13d, r14d
	nop	
	mov	eax, r13d
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_99:
	nop	
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.46
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	edi, 1
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_84:
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.48
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rcx, rax
	mov	edi, 1
	nop	
	xor	esi, esi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rcx
	nop	
	mov	ecx, dword ptr [rsp + 4]
	mov	r8d, dword ptr [rsp]
	mov	r9d, ebp
	mov	rbp, rbp
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b00

	.globl verify_numeric
	.type verify_numeric, @function
verify_numeric:
	push	rbp
	lea	rdi, [rdi]
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	mov	rbx, rsi
	mov	r14, rdi
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	test	ebp, ebp
	je	.label_104
	mov	rsp, rsp
	mov	rdi, r14
	mov	rbp, rbp
	call	quote
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, ebp
	mov	rsp, rsp
	jmp	.label_103
.label_104:
	nop	
	cmp	byte ptr [rbx], 0
	mov	rbp, rbp
	je	.label_102
	mov	rsp, rsp
	xor	edi, edi
	cmp	r14, rbx
	lea	rsi, [rsi]
	je	.label_101
	mov	esi, OFFSET FLAT:.str.43
	jmp	.label_105
.label_101:
	mov	esi, OFFSET FLAT:.str.42
.label_105:
	mov	rsp, rsp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	nop	
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rbx
.label_103:
	nop	
	call	error
	nop	
	mov	byte ptr [byte ptr [rip + exit_status]],  1
.label_102:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402bc0

	.globl vstrtoumax
	.type vstrtoumax, @function
vstrtoumax:
	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	rbx, rdi
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x27
	je	.label_106
	movzx	eax, al
	cmp	eax, 0x22
	jne	.label_108
.label_106:
	lea	rsi, [rsi]
	movzx	r14d, byte ptr [rbx + 1]
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_108
	nop	
	cmp	byte ptr [rbx + 2], 0
	je	.label_107
	nop	
	mov	al,  byte ptr [byte ptr [rip + posixly_correct]]
	test	al, al
	jne	.label_107
	add	rbx, 2
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.40
	mov	rsp, rsp
	mov	edx, 5
	nop	
	call	dcgettext
	nop	
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rbx
	mov	rsp, rsp
	call	error
	nop	
	jmp	.label_107
.label_108:
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
	lea	rsi, [rsp]
	mov	rbp, rbp
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	strtoumax
	lea	rsi, [rsi]
	mov	r14, rax
	mov	rsi, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rbp, rbp
	call	verify_numeric
.label_107:
	mov	rax, r14
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ca0

	.globl vstrtold
	.type vstrtold, @function
vstrtold:
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x20
	mov	rbx, rdi
	nop	
	movzx	eax, byte ptr [rbx]
	nop	
	cmp	eax, 0x27
	je	.label_109
	mov	rsp, rsp
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 0x22
	nop	
	jne	.label_110
.label_109:
	mov	al, byte ptr [rbx + 1]
	test	al, al
	mov	rbp, rbp
	je	.label_110
	movzx	eax, al
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x14], eax
	mov	rbp, rbp
	fild	dword ptr [rsp + 0x14]
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + 2], 0
	mov	rbp, rbp
	je	.label_111
	lea	rsi, [rsi]
	fstp	xword ptr [rsp + 8]
	mov	al,  byte ptr [byte ptr [rip + posixly_correct]]
	lea	rdi, [rdi]
	test	al, al
	jne	.label_112
	add	rbx, 2
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	nop	
	xor	esi, esi
	xor	eax, eax
	nop	
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rbx
	call	error
	jmp	.label_112
.label_110:
	call	__errno_location
	mov	dword ptr [rax], 0
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x18]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	cl_strtold
	lea	rsi, [rsi]
	fstp	xword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	verify_numeric
.label_112:
	mov	rbp, rbp
	fld	xword ptr [rsp + 8]
.label_111:
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbx
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402d80

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	movzx	eax, dil
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d90

	.globl print_esc_char
	.type print_esc_char, @function
print_esc_char:
	mov	rsp, rsp
	lea	eax, [rdi - 0x61]
	mov	rbp, rbp
	cmp	eax, 0x15
	ja	.label_113
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_114]]
.label_391:
	lea	rsi, [rsi]
	mov	edi, 7
	lea	rsi, [rsi]
	jmp	putchar_unlocked
.label_392:
	mov	rsp, rsp
	mov	edi, 8
	lea	rsi, [rsi]
	jmp	putchar_unlocked
.label_394:
	mov	edi, 0x1b
	lea	rsi, [rsi]
	jmp	putchar_unlocked
.label_395:
	nop	
	mov	edi, 0xc
	jmp	putchar_unlocked
.label_396:
	lea	rdi, [rdi]
	mov	edi, 0xa
	mov	rbp, rbp
	jmp	putchar_unlocked
.label_397:
	mov	edi, 0xd
	lea	rsi, [rsi]
	jmp	putchar_unlocked
.label_398:
	mov	edi, 9
	jmp	putchar_unlocked
.label_399:
	mov	edi, 0xb
.label_113:
	lea	rsi, [rsi]
	jmp	putchar_unlocked
.label_393:
	lea	rsi, [rsi]
	push	rax
	xor	edi, edi
	call	exit
	nop	
	.section	.text
	.align	32
	#Procedure 0x402e20

	.globl cl_strtold
	.type cl_strtold, @function
cl_strtold:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x28
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x20]
	call	strtold
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	byte ptr [rax], 0
	je	.label_115
	fstp	xword ptr [rsp + 0xc]
	call	__errno_location
	mov	r15, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r15]
	nop	
	lea	rsi, [rsp + 0x18]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	c_strtold
	mov	rax, qword ptr [rsp + 0x18]
	cmp	qword ptr [rsp + 0x20], rax
	mov	rbp, rbp
	jae	.label_116
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_115
.label_116:
	fstp	st(0)
	lea	rsi, [rsi]
	mov	dword ptr [r15], ebp
	fld	xword ptr [rsp + 0xc]
.label_115:
	test	r14, r14
	je	.label_117
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	mov	qword ptr [r14], rax
.label_117:
	add	rsp, 0x28
	pop	rbx
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402ec0
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
	#Procedure 0x402ed0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ee0

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
	je	.label_121
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_118
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	jne	.label_118
.label_121:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_120
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	rbp
	ret	
.label_118:
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
	jne	.label_119
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
.label_120:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_119:
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
	.align	32
	#Procedure 0x402fe0

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
	je	.label_122
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
	jl	.label_124
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_124
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
	jne	.label_123
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_123:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_124:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_122:
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
	#Procedure 0x4030d0
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
	#Procedure 0x403120
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
	#Procedure 0x403140
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
	#Procedure 0x403160

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
	#Procedure 0x4031d0
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
	#Procedure 0x4031f0

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
	je	.label_125
	test	rdx, rdx
	nop	
	je	.label_125
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_125:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403230
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
	#Procedure 0x4032d0

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
.label_128:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rsi, [rsi]
	mov	ecx, r13d
	lea	rdi, [rdi]
	cmp	r13d, 0xa
	ja	.label_146
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	rsp, rsp
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_239]]
.label_423:
	lea	rsi, [rsi]
	mov	r12d, r11d
	nop	
	mov	edi, OFFSET FLAT:.str.11
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
.label_424:
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
	jne	.label_148
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rsp, rsp
	je	.label_148
	mov	rsp, rsp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_185:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_150
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rsi], al
.label_150:
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
	jne	.label_185
.label_148:
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
	jmp	.label_131
.label_416:
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
	jmp	.label_131
.label_419:
	mov	rsp, rsp
	mov	al, 1
.label_417:
	mov	r15b, 1
.label_420:
	test	r15b, 1
	mov	rsp, rsp
	mov	cl, 1
	je	.label_219
	mov	cl, al
.label_219:
	lea	rdi, [rdi]
	mov	al, cl
.label_418:
	mov	r14d, 2
	mov	rsp, rsp
	test	r15b, 1
	mov	rsp, rsp
	jne	.label_221
	test	r10, r10
	je	.label_228
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	lea	rdi, [rdi]
	jmp	.label_231
.label_221:
	xor	ecx, ecx
	jmp	.label_231
.label_421:
	mov	r14d, 5
	mov	rsp, rsp
	test	r15b, 1
	jne	.label_240
	test	r10, r10
	je	.label_242
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	lea	rsi, [rsi]
	jmp	.label_165
.label_422:
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
	jmp	.label_131
.label_228:
	nop	
	mov	ecx, 1
	nop	dword ptr [rax]
.label_231:
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
	jmp	.label_131
.label_240:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_165
.label_242:
	mov	rbp, rbp
	mov	eax, 1
.label_165:
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
.label_131:
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
	jmp	.label_183
	nop	word ptr [rax + rax]
.label_158:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	lea	rsi, [rsi]
	sar	r15b, 7
	and	r15b, r8b
	lea	rdi, [rdi]
	mov	r8b, r15b
	nop	
	inc	rsi
.label_183:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_235
	cmp	rsi, rbp
	jne	.label_177
	jmp	.label_237
	nop	word ptr cs:[rax + rax]
.label_235:
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + rsi], 0
	nop	
	je	.label_237
.label_177:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_243
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_126
	mov	rsp, rsp
	cmp	rbp, -1
	lea	rdi, [rdi]
	jne	.label_126
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
.label_126:
	lea	rsi, [rsi]
	cmp	rbx, rbp
	jbe	.label_194
.label_243:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xec], 0
.label_208:
	mov	rsp, rsp
	movzx	r13d, byte ptr [r9 + rsi]
	mov	rsp, rsp
	cmp	r13, 0x7e
	nop	
	ja	.label_168
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	r15b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	bl, 0x61
	nop	
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_175]]
.label_436:
	test	rsi, rsi
	jne	.label_127
	jmp	.label_184
	nop	word ptr [rax + rax]
.label_194:
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
	jne	.label_202
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
	je	.label_208
	mov	rsp, rsp
	jmp	.label_188
.label_202:
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
	jmp	.label_208
.label_440:
	xor	eax, eax
	cmp	rbp, -1
	lea	rsi, [rsi]
	je	.label_238
	test	rsi, rsi
	nop	
	jne	.label_229
	cmp	rbp, 1
	lea	rsi, [rsi]
	je	.label_184
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_139
.label_429:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_193
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xcf], 0
	nop	
	jne	.label_188
	cmp	edi, 2
	nop	
	jne	.label_245
	lea	rdi, [rdi]
	mov	al, r11b
	and	al, 1
	nop	
	jne	.label_247
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_212
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], 0x27
.label_212:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_144
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_144:
	nop	
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_152
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_152:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	rsp, rsp
	mov	r11b, 1
	nop	
	mov	rcx, rax
	jmp	.label_159
.label_430:
	mov	bl, 0x62
	lea	rsi, [rsi]
	jmp	.label_167
.label_431:
	mov	cl, 0x74
	jmp	.label_171
.label_432:
	mov	bl, 0x76
	lea	rdi, [rdi]
	jmp	.label_167
.label_433:
	mov	bl, 0x66
	jmp	.label_167
.label_434:
	nop	
	mov	cl, 0x72
	mov	rsp, rsp
	jmp	.label_171
.label_437:
	lea	rsi, [rsi]
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 2
	jne	.label_172
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_189
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
	jae	.label_192
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_192:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_210
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x5c
.label_210:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_215
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_215:
	nop	
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	mov	rbp, rbp
	jmp	.label_222
.label_438:
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 5
	mov	rsp, rsp
	je	.label_142
	cmp	r14d, 2
	lea	rdi, [rdi]
	jne	.label_236
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_189
.label_236:
	mov	rdi, r14
	jmp	.label_127
.label_439:
	mov	r14, rdi
	nop	
	cmp	r14d, 2
	mov	rsp, rsp
	jne	.label_241
	nop	
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_189
	mov	rdi, r14
	jmp	.label_130
.label_168:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	lea	rsi, [rsi]
	jne	.label_133
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
.label_206:
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
	ja	.label_157
	test	dl, dl
	mov	rsp, rsp
	je	.label_157
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_139
.label_238:
	test	rsi, rsi
	jne	.label_181
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_181
.label_184:
	mov	rbp, rbp
	mov	dl, 1
.label_435:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_188
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r15b, dl
	mov	rbp, rbp
	jmp	.label_139
.label_193:
	cmp	dword ptr [rsp + 0x5c], 0
	mov	rbp, rbp
	je	.label_127
	lea	rsi, [rsi]
	mov	r14, rdi
	inc	rsi
	jmp	.label_183
.label_172:
	mov	rdi, r14
.label_222:
	xor	eax, eax
	nop	
	mov	r15b, 1
	lea	rdi, [rdi]
	jmp	.label_139
.label_241:
	mov	rdi, r14
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x6a], 0
	nop	
	mov	cl, r13b
	nop	
	je	.label_171
.label_130:
	lea	rsi, [rsi]
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_138
.label_171:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xa7], 0
	lea	rsi, [rsi]
	mov	bl, cl
	nop	
	je	.label_188
.label_167:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_139
	lea	rsi, [rsi]
	jmp	.label_195
.label_133:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_205
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
.label_205:
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
.label_196:
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
	je	.label_136
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
	je	.label_141
	cmp	rbp, -2
	nop	
	je	.label_156
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_155
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	lea	rsi, [rsi]
	mov	ecx, 1
.label_179:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	mov	rsp, rsp
	cmp	edx, 0x21
	lea	rsi, [rsi]
	ja	.label_200
	mov	rbp, rbp
	bt	rsi, rdx
	jb	.label_176
.label_200:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jb	.label_179
.label_155:
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_203
	xor	r15d, r15d
.label_203:
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
	je	.label_196
	jmp	.label_206
.label_181:
	mov	rbp, -1
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_139
.label_142:
	mov	rdi, r14
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x58], 0
	lea	rdi, [rdi]
	je	.label_127
	lea	rcx, [rsi + 2]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jae	.label_127
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_127
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	mov	rsp, rsp
	cmp	edx, 0x3e
	ja	.label_216
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	nop	
	bt	rsi, rdx
	lea	rdi, [rdi]
	jae	.label_211
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_188
	lea	rsi, [rsi]
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_153
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_153:
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, r10
	jae	.label_161
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 0x22
.label_161:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_207
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x22
.label_207:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	nop	
	cmp	rax, r10
	lea	rsi, [rsi]
	jae	.label_198
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_198:
	nop	
	add	qword ptr [rsp + 0xf0], 4
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_139
.label_127:
	xor	eax, eax
	mov	rsp, rsp
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_139:
	test	r12b, r12b
	je	.label_160
	cmp	qword ptr [rsp + 0x140], 0
	nop	
	jne	.label_164
	jmp	.label_166
	nop	word ptr cs:[rax + rax]
.label_160:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xb7], 0
	lea	rdi, [rdi]
	je	.label_166
.label_164:
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
	jne	.label_174
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_138
	jmp	.label_195
	nop	word ptr cs:[rax + rax]
.label_166:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_195
	jmp	.label_138
.label_174:
	mov	bl, r13b
	mov	rsi, r14
.label_195:
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_188
	mov	rsp, rsp
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_204
	nop	
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_204
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_223
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_223:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_213
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x24
.label_213:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_220
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_220:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_204:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_232
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_232:
	lea	rdi, [rdi]
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_209
.label_229:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_139
.label_157:
	mov	rsp, rsp
	add	rcx, rsi
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_246
	nop	word ptr cs:[rax + rax]
.label_233:
	mov	rbp, rbp
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_246:
	mov	rbp, rbp
	test	dl, dl
	mov	rbp, rbp
	je	.label_140
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	lea	rdi, [rdi]
	je	.label_143
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_149
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	lea	rsi, [rsi]
	mov	rsi, rbx
.label_149:
	nop	
	inc	qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xec], 0
	mov	rsp, rsp
	jmp	.label_143
	nop	dword ptr [rax]
.label_140:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_189
	cmp	r14d, 2
	jne	.label_132
	mov	rsp, rsp
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_132
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_182
	mov	rax, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	byte ptr [rax + rdx], 0x27
.label_182:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_191
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_191:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	nop	
	lea	rax, [rax + 2]
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_201
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_201:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_132:
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_173
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_173:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rdi, [rdi]
	inc	rax
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_162
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
.label_162:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_225
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
.label_225:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	rsp, rsp
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_143:
	mov	rsp, rsp
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_138
	test	r11b, 1
	lea	rdi, [rdi]
	je	.label_129
	mov	bl, al
	lea	rdi, [rdi]
	and	bl, 1
	mov	r14, rdi
	jne	.label_135
	lea	rsi, [rsi]
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_190
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_190:
	mov	rsi, qword ptr [rsp + 0xf0]
	nop	
	inc	rsi
	cmp	rsi, r10
	nop	
	jae	.label_151
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rdi + rsi], 0x27
.label_151:
	add	qword ptr [rsp + 0xf0], 2
	mov	rbp, rbp
	xor	r11d, r11d
	mov	rsi, rbx
	lea	rdi, [rdi]
	jmp	.label_135
	nop	word ptr cs:[rax + rax]
.label_129:
	lea	rsi, [rsi]
	mov	r14, rdi
.label_135:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_233
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rsi + rbx], r13b
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	jmp	.label_233
	nop	word ptr cs:[rax + rax]
.label_138:
	lea	rsi, [rsi]
	test	r11b, 1
	je	.label_187
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_187
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_224
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rax + rcx], 0x27
.label_224:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_199
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_199:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 2
	lea	rdi, [rdi]
	xor	r11d, r11d
	nop	
	mov	bl, r13b
	lea	rsi, [rsi]
	jmp	.label_209
	nop	word ptr cs:[rax + rax]
.label_187:
	lea	rsi, [rsi]
	mov	bl, r13b
	mov	r14, rdi
.label_209:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_158
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], bl
	lea	rdi, [rdi]
	jmp	.label_158
.label_245:
	nop	
	mov	rcx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	jmp	.label_159
.label_247:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_159:
	cmp	rcx, r10
	jae	.label_226
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_226:
	lea	rsi, [rsi]
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	lea	rsi, [rsi]
	mov	r13b, 0x30
	cmp	edi, 2
	lea	rsi, [rsi]
	je	.label_234
	lea	rdx, [rsi + 1]
	lea	rsi, [rsi]
	cmp	rdx, rbp
	jae	.label_137
	nop	
	mov	dl, byte ptr [r9 + rdx]
	mov	rbp, rbp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	mov	rbp, rbp
	cmp	edx, 9
	mov	rsp, rsp
	ja	.label_244
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_134
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	nop	
	mov	rsi, rbx
.label_134:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_214
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsp, rsp
	mov	rsi, rbx
.label_214:
	mov	rsp, rsp
	add	rcx, 3
	xor	r15d, r15d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rdi, [rdi]
	jmp	.label_139
.label_234:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_139
.label_137:
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_139
.label_244:
	xor	r15d, r15d
	jmp	.label_139
.label_136:
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_170
.label_141:
	xor	r15d, r15d
	nop	
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	jmp	.label_180
.label_156:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	jae	.label_186
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_197:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	byte ptr [rax + rbx], 0
	nop	
	je	.label_147
	lea	rax, [rsi + rbx + 1]
	lea	rsi, [rsi]
	inc	rbx
	cmp	rax, rbp
	jb	.label_197
	xor	r15d, r15d
	nop	
	jmp	.label_170
.label_186:
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_180:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_170:
	mov	byte ptr [rsp + 0xa6], r8b
	lea	rdi, [rdi]
	jmp	.label_206
.label_147:
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_170
.label_216:
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_139
.label_211:
	mov	rsp, rsp
	xor	r15d, r15d
	nop	
	mov	rsi, rbx
	jmp	.label_139
	nop	word ptr cs:[rax + rax]
.label_237:
	cmp	qword ptr [rsp + 0xf0], 0
	mov	rbp, rbp
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	and	cl, 1
	je	.label_217
	lea	rdi, [rdi]
	or	dl, al
	lea	rdi, [rdi]
	je	.label_189
.label_217:
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
	je	.label_230
	lea	rdi, [rdi]
	or	dl, al
	jne	.label_230
	lea	rdi, [rdi]
	test	r8b, 1
	jne	.label_218
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_230
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
	je	.label_128
.label_230:
	nop	
	mov	rdx, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	test	rdx, rdx
	je	.label_145
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_145
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_145
	inc	rdx
	nop	dword ptr [rax + rax]
.label_163:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_154
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_154:
	nop	
	inc	qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	inc	rdx
	test	al, al
	jne	.label_163
.label_145:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_169
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_169
.label_188:
	lea	rdi, [rdi]
	mov	rdx, r9
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_178:
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
.label_227:
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_169:
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
.label_176:
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_178
.label_189:
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rbp, rbp
	jmp	.label_178
.label_218:
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
	jmp	.label_227
.label_146:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a20
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
	#Procedure 0x404a40

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
	je	.label_248
	mov	qword ptr [rax], rbx
.label_248:
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
	#Procedure 0x404b90
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_249
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_252:
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
	jl	.label_252
.label_249:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_251
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_253]], OFFSET FLAT:slot0
.label_251:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_250
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_250:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c50

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x404c60

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
	js	.label_257
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_259
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_255
.label_259:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_260
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
	jne	.label_256
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_256:
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
.label_255:
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
	ja	.label_254
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
	je	.label_258
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_258:
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
.label_254:
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
.label_257:
	lea	rdi, [rdi]
	call	abort
.label_260:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x404ed0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404ee0
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
	#Procedure 0x404f00
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
	#Procedure 0x404f20

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
	#Procedure 0x404f80

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
	je	.label_261
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
.label_261:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404ff0

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
	#Procedure 0x405050

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
	#Procedure 0x405070
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
	#Procedure 0x405090

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
	mov	rcx,  qword ptr [word ptr [rip + label_262]]
	mov	qword ptr [rsp + 0x30], rcx
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_263]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_264]]
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
	#Procedure 0x405130

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
	#Procedure 0x405150

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
	#Procedure 0x405160
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405170
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
	#Procedure 0x4051e0

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
	#Procedure 0x4051f0

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
	mov	rax,  qword ptr [word ptr [rip + label_262]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_263]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_264]]
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
	#Procedure 0x405280
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
	#Procedure 0x4052b0
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
	#Procedure 0x4052e0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052f0
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
	#Procedure 0x405310

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405320

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
	#Procedure 0x405330

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
	jne	.label_265
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
	je	.label_266
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	ecx, 0x60
	je	.label_265
	nop	
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_265
.label_266:
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
	je	.label_267
	nop	
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x60
	lea	rdi, [rdi]
	je	.label_265
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_265
.label_267:
	cmp	r14d, 9
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	lea	rsi, [rsi]
	cmove	rax, rcx
.label_265:
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
	#Procedure 0x405460

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
	je	.label_269
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	lea	rdi, [rdi]
	je	.label_268
	jmp	.label_270
.label_269:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rdi, [rdi]
	jne	.label_270
.label_268:
	mov	rsp, rsp
	mov	eax, 1
	test	bpl, bpl
	mov	rsp, rsp
	je	.label_270
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
.label_270:
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
	#Procedure 0x405520

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
	je	.label_273
	nop	
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	nop	
	je	.label_272
	lea	rsi, [rsi]
	jmp	.label_271
.label_273:
	lea	rsi, [rsi]
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_271
.label_272:
	lea	rdi, [rdi]
	mov	eax, 1
	test	bpl, bpl
	lea	rdi, [rdi]
	je	.label_271
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
.label_271:
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
	#Procedure 0x405610

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
	je	.label_276
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_275
	jmp	.label_274
.label_276:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	movzx	edx, bpl
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_274
.label_275:
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_274
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
.label_274:
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
	#Procedure 0x4056e0

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
	je	.label_279
	lea	rsi, [rsi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_278
	jmp	.label_277
.label_279:
	xor	eax, eax
	mov	rsp, rsp
	movzx	edx, bpl
	movzx	ecx, cl
	nop	
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_277
.label_278:
	lea	rsi, [rsi]
	mov	eax, 1
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_277
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
.label_277:
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
	#Procedure 0x405780

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
	je	.label_282
	lea	rdi, [rdi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	mov	rsp, rsp
	je	.label_281
	nop	
	jmp	.label_280
.label_282:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_280
.label_281:
	mov	eax, 1
	test	bpl, bpl
	je	.label_280
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
.label_280:
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
	#Procedure 0x405820

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
	je	.label_285
	mov	rsp, rsp
	and	ecx, 0xffffffdf
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ecx, ebp
	lea	rsi, [rsi]
	je	.label_284
	lea	rsi, [rsi]
	jmp	.label_283
.label_285:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	nop	
	jne	.label_283
.label_284:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	test	bpl, bpl
	nop	
	je	.label_283
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
.label_283:
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058b0

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
	je	.label_288
	and	ecx, 0xffffffdf
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_287
	jmp	.label_286
.label_288:
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_286
.label_287:
	mov	eax, 1
	nop	
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_286
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_286:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405920

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
	je	.label_289
	mov	eax, 1
	mov	rsp, rsp
	test	ecx, 0xffffffdf
	lea	rdi, [rdi]
	jne	.label_291
	mov	rbp, rbp
	jmp	.label_290
.label_289:
	mov	eax, 1
	lea	rsi, [rsi]
	test	cl, cl
	je	.label_290
.label_291:
	xor	eax, eax
.label_290:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405970

	.globl unicode_to_mb
	.type unicode_to_mb, @function
unicode_to_mb:
	push	rbp
	nop	
	push	r15
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x48
	mov	r13, rcx
	mov	r14, rdx
	mov	r15, rsi
	mov	ebp, edi
	mov	al,  byte ptr [byte ptr [rip + unicode_to_mb.initialized]]
	and	al, 1
	mov	rsp, rsp
	jne	.label_299
	mov	rsp, rsp
	call	locale_charset
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	esi, OFFSET FLAT:.str_4
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	sete	al
	mov	rsp, rsp
	movzx	eax, al
	nop	
	mov	dword ptr [dword ptr [rip + unicode_to_mb.is_utf8]],  eax
	je	.label_296
	nop	
	mov	esi, OFFSET FLAT:.str_4
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	iconv_open
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + unicode_to_mb.utf8_to_local]],  rax
	lea	rdi, [rdi]
	cmp	rax, -1
	jne	.label_296
	mov	edi, OFFSET FLAT:.str.1_2
	mov	esi, OFFSET FLAT:.str_4
	mov	rsp, rsp
	call	iconv_open
	mov	qword ptr [word ptr [rip + unicode_to_mb.utf8_to_local]],  rax
.label_296:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + unicode_to_mb.initialized]],  1
.label_299:
	cmp	dword ptr [dword ptr [rip + unicode_to_mb.is_utf8]],  0
	lea	rsi, [rsi]
	jne	.label_294
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [rip + unicode_to_mb.utf8_to_local]],  -1
	jne	.label_294
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.2_1
	mov	rsp, rsp
	jmp	.label_300
.label_294:
	lea	rbx, [rsp + 0x42]
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rbp, rbp
	mov	esi, ebp
	call	u8_uctomb
	test	eax, eax
	js	.label_293
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [rip + unicode_to_mb.is_utf8]],  0
	je	.label_295
	movsxd	rsi, eax
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x42]
	nop	
	jmp	.label_297
.label_293:
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.3_0
	mov	rbp, rbp
	jmp	.label_300
.label_295:
	mov	qword ptr [rsp + 0x18], rbx
	cdqe	
	mov	qword ptr [rsp + 0x10], rax
	lea	r12, [rsp + 0x20]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r12
	mov	qword ptr [rsp], 0x19
	mov	rdi,  qword ptr [word ptr [rip + unicode_to_mb.utf8_to_local]]
	mov	rbp, rbp
	lea	rsi, [rsp + 0x18]
	lea	rdi, [rdi]
	lea	rdx, [rsp + 0x10]
	lea	rcx, [rsp + 8]
	lea	r8, [rsp]
	call	iconv
	lea	rdi, [rdi]
	cmp	rax, -1
	nop	
	je	.label_292
	nop	
	mov	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	jne	.label_292
	mov	rdi,  qword ptr [word ptr [rip + unicode_to_mb.utf8_to_local]]
	lea	rdi, [rdi]
	lea	rcx, [rsp + 8]
	lea	r8, [rsp]
	lea	rsi, [rsi]
	xor	esi, esi
	nop	
	xor	edx, edx
	lea	rdi, [rdi]
	call	iconv
	cmp	rax, -1
	je	.label_292
	mov	rsi, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	sub	rsi, r12
	mov	rdi, r12
.label_297:
	mov	rdx, r13
	lea	rsi, [rsi]
	call	r15
	mov	rbp, rbp
	jmp	.label_298
.label_292:
	mov	rsp, rsp
	xor	esi, esi
.label_300:
	mov	rbp, rbp
	mov	edi, ebp
	mov	rdx, r13
	nop	
	call	r14
.label_298:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b60

	.globl u8_uctomb
	.type u8_uctomb, @function
u8_uctomb:
	cmp	esi, 0x80
	jae	.label_301
	mov	byte ptr [rdi], sil
	mov	rsp, rsp
	mov	eax, 1
	nop	
	ret	
.label_301:
	lea	rdi, [rdi]
	mov	edx, 6
	jmp	u8_uctomb_aux
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b90

	.globl fwrite_success_callback
	.type fwrite_success_callback, @function
fwrite_success_callback:
	mov	rbp, rbp
	push	rax
	lea	rsi, [rsi]
	mov	rax, rdx
	mov	rcx, rsi
	lea	rsi, [rsi]
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	call	fwrite
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rcx
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405bd0

	.globl print_unicode_char
	.type print_unicode_char, @function
print_unicode_char:
	nop	
	mov	eax, esi
	lea	rdi, [rdi]
	mov	rcx, rdi
	mov	rsp, rsp
	test	edx, edx
	mov	esi, OFFSET FLAT:exit_failure_callback
	mov	edx, OFFSET FLAT:fallback_failure_callback
	mov	rsp, rsp
	cmovne	rdx, rsi
	mov	esi, OFFSET FLAT:fwrite_success_callback
	mov	edi, eax
	lea	rsi, [rsi]
	jmp	unicode_to_mb
	nop	
	.section	.text
	.align	32
	#Procedure 0x405c00

	.globl exit_failure_callback
	.type exit_failure_callback, @function
exit_failure_callback:
	nop
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14d, edi
	xor	edi, edi
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_302
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5_0
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rbp, rax
	nop	
	xor	edi, edi
	mov	edx, 5
	mov	rsp, rsp
	mov	rsi, rbx
	nop	
	call	dcgettext
	nop	
	mov	rbx, rax
	mov	rsp, rsp
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	lea	rdi, [rdi]
	mov	ecx, r14d
	mov	r8, rbx
	call	error
	jmp	.label_303
.label_302:
	mov	esi, OFFSET FLAT:.str.4_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	nop	
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rcx
	mov	ecx, r14d
	call	error
.label_303:
	mov	rax, -1
	mov	rbp, rbp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405cb0

	.globl fallback_failure_callback
	.type fallback_failure_callback, @function
fallback_failure_callback:
	push	rax
	nop	
	mov	r8, rdx
	mov	ecx, edi
	lea	rdi, [rdi]
	mov	esi, 1
	cmp	ecx, 0xffff
	lea	rdi, [rdi]
	ja	.label_304
	mov	edx, OFFSET FLAT:.str.6_0
	jmp	.label_305
.label_304:
	mov	edx, OFFSET FLAT:.str.7_0
.label_305:
	nop	
	xor	eax, eax
	mov	rdi, r8
	lea	rdi, [rdi]
	call	__fprintf_chk
	nop	
	mov	rax, -1
	pop	rcx
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d00

	.globl u8_uctomb_aux
	.type u8_uctomb_aux, @function
u8_uctomb_aux:
	lea	rsi, [rsi]
	mov	eax, 0xfffffffe
	cmp	esi, 0x80
	jb	.label_310
	mov	r8d, 2
	cmp	esi, 0x800
	nop	
	jb	.label_308
	cmp	esi, 0xffff
	ja	.label_307
	lea	rsi, [rsi]
	mov	ecx, esi
	and	ecx, 0xfffff800
	lea	rdi, [rdi]
	mov	r8d, 3
	mov	eax, 0xffffffff
	cmp	ecx, 0xd800
	lea	rdi, [rdi]
	jne	.label_308
	lea	rdi, [rdi]
	jmp	.label_310
.label_307:
	mov	eax, 0xffffffff
	mov	r8d, 4
	nop	
	cmp	esi, 0x10ffff
	ja	.label_310
.label_308:
	cmp	r8d, edx
	mov	eax, 0xfffffffe
	lea	rdi, [rdi]
	jg	.label_310
	cmp	r8d, 2
	je	.label_311
	cmp	r8d, 3
	je	.label_306
	mov	rsp, rsp
	cmp	r8d, 4
	lea	rdi, [rdi]
	jne	.label_309
	mov	eax, esi
	and	eax, 0x3f
	lea	rdi, [rdi]
	or	eax, 0x80
	nop	
	mov	byte ptr [rdi + 3], al
	shr	esi, 6
	lea	rdi, [rdi]
	or	esi, 0x10000
.label_306:
	mov	eax, esi
	and	eax, 0x3f
	or	eax, 0x80
	mov	byte ptr [rdi + 2], al
	nop	
	shr	esi, 6
	or	esi, 0x800
.label_311:
	mov	rbp, rbp
	mov	eax, esi
	and	eax, 0x3f
	lea	rsi, [rsi]
	or	eax, 0x80
	nop	
	mov	byte ptr [rdi + 1], al
	shr	esi, 6
	lea	rsi, [rsi]
	or	esi, 0xc0
	mov	rbp, rbp
	mov	byte ptr [rdi], sil
.label_309:
	nop	
	mov	eax, r8d
.label_310:
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405e00

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
	je	.label_312
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
	jmp	.label_314
.label_312:
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
.label_314:
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
	ja	.label_316
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_317]]
.label_455:
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
.label_316:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_320
.label_456:
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5_1
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
.label_457:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.6_1
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
.label_458:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.7_1
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
	jmp	.label_321
.label_459:
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
	jmp	.label_319
.label_460:
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
	jmp	.label_318
.label_461:
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
.label_318:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_319:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_321:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_315
.label_463:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_320:
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
	jmp	.label_313
.label_462:
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
.label_313:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_315:
	mov	rbp, rbp
	call	__fprintf_chk
.label_454:
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
	#Procedure 0x4061f0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_322:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_322
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406220

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_326:
	nop	
	movsxd	r10, dword ptr [r8]
	lea	rdi, [rdi]
	cmp	r10, 0x28
	ja	.label_323
	mov	r11, r10
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	rbp, rbp
	mov	dword ptr [r8], eax
	mov	rsp, rsp
	jmp	.label_325
	nop	word ptr cs:[rax + rax]
.label_323:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_325:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_324
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_326
.label_324:
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
	#Procedure 0x4062b0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	nop	
	je	.label_327
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
.label_327:
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
	#Procedure 0x406360
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
	#Procedure 0x4063f0
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
	jb	.label_328
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_328:
	nop	
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406430

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_329
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_330
.label_329:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_330:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406460
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
	jb	.label_331
	imul	rcx, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	jmp	xrealloc
.label_331:
	push	rax
	mov	rsp, rsp
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4064a0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_332
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_332
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_332:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_333
	test	rax, rax
	nop	
	je	.label_334
.label_333:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_334:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4064f0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	nop	
	mov	r8, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_335
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_336
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_338
.label_335:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_337
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_337:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_339
.label_338:
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
.label_336:
	call	xalloc_die
.label_339:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406590

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	jmp	xmalloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4065a0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	mov	rsp, rsp
	jmp	x2nrealloc
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4065b0
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
	#Procedure 0x4065f0
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
	jb	.label_340
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_340
	pop	rcx
	ret	
.label_340:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x406620

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
	#Procedure 0x406670
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
	#Procedure 0x406690

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
	#Procedure 0x4066e0

	.globl xprintf
	.type xprintf, @function
xprintf:
	mov	rsp, rsp
	sub	rsp, 0xc8
	lea	rdi, [rdi]
	test	al, al
	je	.label_341
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x50], xmm2
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_341:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], rsi
	lea	rax, [rsp]
	nop	
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 8
	lea	rsi, [rsp + 0xb0]
	call	xvprintf
	add	rsp, 0xc8
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406790

	.globl xvprintf
	.type xvprintf, @function
xvprintf:
	push	rbp
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	rax, rsi
	nop	
	mov	rcx, rdi
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	lea	rsi, [rsi]
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, rax
	call	__vfprintf_chk
	mov	ebx, eax
	mov	rsp, rsp
	test	ebx, ebx
	jns	.label_342
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	call	ferror
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_342
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rsp, rsp
	call	__errno_location
	mov	ebp, dword ptr [rax]
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_6
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_342:
	mov	rsp, rsp
	mov	eax, ebx
	pop	rbx
	mov	rbp, rbp
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406830
	.globl xfprintf
	.type xfprintf, @function
xfprintf:

	sub	rsp, 0xc8
	test	al, al
	lea	rdi, [rdi]
	je	.label_343
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x30], xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x40], xmm1
	nop	
	movaps	xmmword ptr [rsp + 0x50], xmm2
	nop	
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_343:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], r9
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], r8
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rdx
	mov	rsp, rsp
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	nop	
	mov	qword ptr [rsp + 0xb8], rax
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb4], 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], 0x10
	lea	rsi, [rsi]
	lea	rdx, [rsp + 0xb0]
	mov	rbp, rbp
	call	xvfprintf
	lea	rdi, [rdi]
	add	rsp, 0xc8
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406900

	.globl xvfprintf
	.type xvfprintf, @function
xvfprintf:
	push	rbp
	push	r14
	push	rbx
	lea	rdi, [rdi]
	mov	rax, rdx
	mov	rcx, rsi
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	esi, 1
	mov	rdx, rcx
	nop	
	mov	rcx, rax
	nop	
	call	__vfprintf_chk
	lea	rdi, [rdi]
	mov	ebp, eax
	mov	rsp, rsp
	test	ebp, ebp
	jns	.label_344
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	ferror
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_344
	lea	rsi, [rsi]
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	call	__errno_location
	nop	
	mov	ebx, dword ptr [rax]
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_6
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	lea	rsi, [rsi]
	mov	esi, ebx
	lea	rdi, [rdi]
	mov	rdx, rcx
	nop	
	call	error
.label_344:
	mov	eax, ebp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4069a0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_345
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_346
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
	je	.label_346
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
.label_345:
	mov	ecx, 1
.label_346:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a10

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
	je	.label_347
	nop	
	cmp	r15, -2
	jb	.label_347
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_347
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_347:
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
	#Procedure 0x406aa0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_348
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_348
.label_349:
	ret	
.label_348:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_349
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ad0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_350
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_350:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406af0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b00
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
	#Procedure 0x406b10
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_351
.label_352:
	ret	
.label_351:
	cmp	edi, 0x7f
	je	.label_352
	xor	eax, eax
	jmp	.label_352
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b30
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
	#Procedure 0x406b40
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
	#Procedure 0x406b50
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
	#Procedure 0x406b60
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
	#Procedure 0x406b70
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_353
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_353
.label_354:
	ret	
.label_353:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_354
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ba0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_355
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_355:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406bc0

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
	#Procedure 0x406bd0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_356
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_356:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406bf0
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
	#Procedure 0x406c00
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
	#Procedure 0x406c10

	.globl c_strtold
	.type c_strtold, @function
c_strtold:
	push	rbp
	mov	rbp, rbp
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x18
	mov	rsp, rsp
	mov	rbx, rsi
	mov	rsp, rsp
	mov	r14, rdi
	mov	rsp, rsp
	call	c_locale
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_359
	mov	rdi, rax
	call	uselocale
	mov	r15, rax
	test	r15, r15
	mov	rbp, rbp
	je	.label_358
	mov	rdi, r14
	mov	rsi, rbx
	call	strtold
	fstp	xword ptr [rsp + 0xc]
	mov	rsp, rsp
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r15
	mov	rsp, rsp
	call	uselocale
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_360
	mov	dword ptr [rbx], ebp
	fld	xword ptr [rsp + 0xc]
	jmp	.label_357
.label_359:
	lea	rdi, [rdi]
	fldz	
	test	rbx, rbx
	je	.label_357
	mov	qword ptr [rbx], r14
	jmp	.label_357
.label_358:
	fldz	
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_357
	nop	
	mov	qword ptr [rbx], r14
.label_357:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_360:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406cd0

	.globl c_locale
	.type c_locale, @function
c_locale:
	cmp	qword ptr [word ptr [rip + c_locale_cache]],  0
	mov	rsp, rsp
	jne	.label_361
	push	rax
	mov	edi, 0x1fbf
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str_7
	mov	rsp, rsp
	xor	edx, edx
	nop	
	call	newlocale
	mov	qword ptr [word ptr [rip + c_locale_cache]],  rax
	add	rsp, 8
.label_361:
	mov	rax,  qword ptr [word ptr [rip + c_locale_cache]]
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406d10

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
	je	.label_363
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	test	eax, eax
	jne	.label_362
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	jmp	.label_362
.label_363:
	test	eax, eax
	mov	rbp, rbp
	sete	cl
	neg	eax
	nop	
	sbb	ebx, ebx
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_362
	test	cl, cl
	jne	.label_362
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	nop	
	cmove	ebx, ecx
.label_362:
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
	#Procedure 0x406db0

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
	je	.label_365
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_364
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_366
.label_364:
	nop	
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_365
.label_366:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_365:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406e00

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
	mov	eax, OFFSET FLAT:.str.1_2
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_367
	nop	
	mov	rax, rcx
.label_367:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e40

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
	js	.label_368
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_369
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
	je	.label_368
.label_369:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_368
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	lea	rsi, [rsi]
	test	ebp, ebp
	je	.label_370
	call	__errno_location
	mov	dword ptr [rax], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_370:
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_368:
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
	#Procedure 0x406f00

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_371
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_371
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_371:
	mov	rsp, rsp
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	
	.section	.text
	.align	32
	#Procedure 0x406f30

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	jne	.label_372
	mov	rbp, rbp
	ret	
.label_372:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, 1
	lea	rdi, [rdi]
	jmp	rpl_fseeko
	nop	
	.section	.text
	.align	32
	#Procedure 0x406f50

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
	jne	.label_373
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_373
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_375
.label_373:
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
.label_375:
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
	je	.label_374
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_374:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	32
	#Procedure 0x407000

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
