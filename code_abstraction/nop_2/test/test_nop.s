	.section	.text
	.align	16
	#Procedure 0x401490
	.globl usage
	.type usage, @function
usage:

	mov	rbp, rbp
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	mov	rsp, rsp
	test	ebp, ebp
	mov	rsp, rsp
	jne	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.4
	mov	rbp, rbp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.7
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.9
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	mov	rbp, rbp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.15
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.17
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18
	nop	
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, rcx
	nop	
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.33
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.34
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	lea	rdi, [rdi]
	xor	esi, esi
	call	setlocale
	lea	rdi, [rdi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_7
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.35
	mov	rsp, rsp
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	strncmp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_7
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
.label_7:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi, rax
	nop	
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.34
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.19
	xor	eax, eax
	call	__printf_chk
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.38
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.19
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.39
	mov	rsp, rsp
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_8:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	nop	
	mov	rdi, rbx
	call	__fprintf_chk
	mov	rbp, rbp
	mov	edi, ebp
	nop	
	call	exit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018f0

	.globl main
	.type main, @function
main:
	push	r14
	nop	
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r14, rsi
	nop	
	mov	ebx, edi
	mov	rdi, qword ptr [r14]
	mov	rsp, rsp
	call	set_program_name
	lea	rdi, [rdi]
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	mov	rsp, rsp
	call	setlocale
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.21
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.22
	nop	
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.21
	mov	rbp, rbp
	call	textdomain
	mov	dword ptr [dword ptr [rip + exit_failure]],  2
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	qword ptr [word ptr [rip + argv]],  r14
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + argc]],  ebx
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + pos]],  1
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	cmp	ebx, 2
	nop	
	jl	.label_10
	lea	rdi, [rdi]
	dec	ebx
	mov	rbp, rbp
	mov	edi, ebx
	call	posixtest
	mov	ecx,  dword ptr [dword ptr [rip + pos]]
	cmp	ecx,  dword ptr [dword ptr [rip + argc]]
	nop	
	jne	.label_9
	lea	rdi, [rdi]
	movzx	eax, al
	xor	eax, 1
.label_10:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_9:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.23
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbx, rax
	nop	
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8]
	call	quote
	mov	rcx, rax
	xor	eax, eax
	nop	
	mov	rdi, rbx
	mov	rsi, rcx
	call	test_syntax_error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a00

	.globl posixtest
	.type posixtest, @function
posixtest:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	push	rax
	lea	eax, [rdi - 1]
	nop	
	cmp	eax, 3
	ja	.label_11
	jmp	qword ptr [word ptr [+ (rax * 8) + label_15]]
.label_499:
	nop	
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	lea	ecx, [rax + 1]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + pos]],  ecx
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	cmp	byte ptr [rax], 0
	setne	bpl
	mov	rbp, rbp
	jmp	.label_14
.label_501:
	call	three_arguments
	nop	
	mov	bpl, al
	lea	rsi, [rsi]
	jmp	.label_14
.label_11:
	nop	
	test	edi, edi
	jle	.label_27
	mov	eax,  dword ptr [dword ptr [rip + pos]]
	lea	rsi, [rsi]
	jmp	.label_12
.label_500:
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdx, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	movzx	esi, byte ptr [rdx]
	cmp	esi, 0x2d
	mov	rsp, rsp
	je	.label_29
	movzx	esi, sil
	mov	rbp, rbp
	cmp	esi, 0x21
	jne	.label_19
	cmp	byte ptr [rdx + 1], 0
	mov	rbp, rbp
	jne	.label_19
	lea	edx, [rax + 2]
	nop	
	mov	dword ptr [dword ptr [rip + pos]],  edx
	mov	rax, qword ptr [rcx + rax*8 + 8]
	cmp	byte ptr [rax], 0
	sete	bpl
	jmp	.label_14
.label_502:
	nop	
	mov	eax,  dword ptr [dword ptr [rip + pos]]
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + argv]]
	mov	rsp, rsp
	mov	rsi, qword ptr [rdx + rcx*8]
	movzx	edi, byte ptr [rsi]
	cmp	edi, 0x28
	lea	rsi, [rsi]
	je	.label_26
	movzx	ecx, dil
	mov	rsp, rsp
	cmp	ecx, 0x21
	lea	rsi, [rsi]
	jne	.label_12
	mov	rsp, rsp
	cmp	byte ptr [rsi + 1], 0
	nop	
	jne	.label_12
	inc	eax
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + pos]],  eax
	lea	rdi, [rdi]
	cmp	eax,  dword ptr [dword ptr [rip + argc]]
	lea	rdi, [rdi]
	jge	.label_18
	mov	rbp, rbp
	call	three_arguments
	mov	bpl, al
	xor	bpl, 1
	nop	
	jmp	.label_14
.label_29:
	cmp	byte ptr [rdx + 1], 0
	nop	
	je	.label_19
	nop	
	cmp	byte ptr [rdx + 2], 0
	jne	.label_19
	call	unary_operator
	lea	rdi, [rdi]
	mov	bpl, al
	lea	rsi, [rsi]
	jmp	.label_14
.label_26:
	nop	
	cmp	byte ptr [rsi + 1], 0
	lea	rdi, [rdi]
	jne	.label_12
	mov	rsi, qword ptr [rdx + rcx*8 + 0x18]
	lea	rdi, [rdi]
	movzx	edi, byte ptr [rsi]
	cmp	edi, 0x29
	lea	rdi, [rdi]
	jne	.label_12
	cmp	byte ptr [rsi + 1], 0
	mov	rsp, rsp
	je	.label_16
.label_12:
	lea	rsi, [rsi]
	cmp	eax,  dword ptr [dword ptr [rip + argc]]
	jge	.label_20
	xor	ebp, ebp
	jmp	.label_22
	nop	dword ptr [rax]
.label_25:
	mov	rbp, rbp
	inc	eax
	mov	dword ptr [dword ptr [rip + pos]],  eax
.label_22:
	lea	rsi, [rsi]
	call	term
	mov	rbp, rbp
	mov	bl, al
	mov	rsp, rsp
	jmp	.label_28
	nop	dword ptr [rax]
.label_21:
	inc	eax
	mov	dword ptr [dword ptr [rip + pos]],  eax
	mov	rbp, rbp
	call	term
	mov	rbp, rbp
	and	bl, al
.label_28:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [rip + pos]]
	mov	ecx,  dword ptr [dword ptr [rip + argc]]
	cmp	eax, ecx
	jge	.label_13
	mov	rbp, rbp
	movsxd	rdx, eax
	mov	rsi,  qword ptr [word ptr [rip + argv]]
	mov	rdx, qword ptr [rsi + rdx*8]
	mov	rsp, rsp
	movzx	esi, byte ptr [rdx]
	mov	rsp, rsp
	cmp	esi, 0x2d
	jne	.label_13
	nop	
	movzx	esi, byte ptr [rdx + 1]
	cmp	esi, 0x61
	mov	rbp, rbp
	jne	.label_13
	nop	
	cmp	byte ptr [rdx + 2], 0
	je	.label_21
	nop	dword ptr [rax + rax]
.label_13:
	mov	rbp, rbp
	or	bpl, bl
	cmp	eax, ecx
	mov	rbp, rbp
	jge	.label_23
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [rip + argv]]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	rbp, rbp
	movzx	edx, byte ptr [rcx]
	mov	rbp, rbp
	cmp	edx, 0x2d
	jne	.label_23
	mov	rsp, rsp
	movzx	edx, byte ptr [rcx + 1]
	cmp	edx, 0x6f
	jne	.label_23
	mov	rbp, rbp
	cmp	byte ptr [rcx + 2], 0
	lea	rdi, [rdi]
	je	.label_25
.label_23:
	and	bpl, 1
.label_14:
	mov	al, bpl
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	rbp
	ret	
.label_16:
	lea	rax, [rcx + 1]
	mov	dword ptr [dword ptr [rip + pos]],  eax
	mov	rsp, rsp
	mov	rax, qword ptr [rdx + rcx*8 + 8]
	movzx	esi, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	esi, 0x2d
	mov	rsp, rsp
	je	.label_17
	movzx	esi, sil
	nop	
	cmp	esi, 0x21
	nop	
	jne	.label_18
	mov	rbp, rbp
	cmp	byte ptr [rax + 1], 0
	jne	.label_18
	mov	rax, rcx
	add	rax, 3
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + pos]],  eax
	mov	rcx, qword ptr [rdx + rcx*8 + 0x10]
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	sete	bpl
	jmp	.label_24
.label_17:
	cmp	byte ptr [rax + 1], 0
	lea	rsi, [rsi]
	je	.label_18
	lea	rdi, [rdi]
	cmp	byte ptr [rax + 2], 0
	lea	rdi, [rdi]
	jne	.label_18
	mov	rsp, rsp
	call	unary_operator
	mov	bpl, al
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [rip + pos]]
.label_24:
	inc	eax
	mov	dword ptr [dword ptr [rip + pos]],  eax
	jmp	.label_14
.label_19:
	call	beyond
.label_20:
	mov	rsp, rsp
	call	beyond
.label_27:
	nop	
	call	abort
.label_18:
	lea	rdi, [rdi]
	call	beyond
	nop	
	.section	.text
	.align	16
	#Procedure 0x401d40

	.globl test_syntax_error
	.type test_syntax_error, @function
test_syntax_error:
	sub	rsp, 0xd8
	mov	rbp, rbp
	mov	r10, rdi
	lea	rsi, [rsi]
	test	al, al
	je	.label_30
	movaps	xmmword ptr [rsp + 0x50], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x60], xmm1
	nop	
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	nop	
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_30:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], r9
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rsi
	mov	rsp, rsp
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	dword ptr [rsp + 4], 0x30
	mov	rbp, rbp
	mov	dword ptr [rsp], 8
	mov	rbp, rbp
	lea	rcx, [rsp]
	xor	edi, edi
	xor	esi, esi
	nop	
	mov	rdx, r10
	lea	rdi, [rdi]
	call	verror
	lea	rsi, [rsi]
	mov	edi, 2
	mov	rbp, rbp
	call	exit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e10

	.globl three_arguments
	.type three_arguments, @function
three_arguments:
	push	rbp
	mov	rbp, rbp
	push	r14
	push	rbx
	lea	rsi, [rsi]
	movsxd	r14,  dword ptr [dword ptr [rip + pos]]
	mov	rbp,  qword ptr [word ptr [rip + argv]]
	mov	rbx, qword ptr [rbp + r14*8 + 8]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	binop
	lea	rsi, [rsi]
	test	al, al
	lea	rsi, [rsi]
	je	.label_47
	nop	
	xor	edi, edi
	mov	rsp, rsp
	call	binary_operator
	mov	bpl, al
	jmp	.label_39
.label_47:
	nop	
	mov	rax, qword ptr [rbp + r14*8]
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x28
	nop	
	je	.label_44
	nop	
	movzx	ecx, cl
	mov	rbp, rbp
	cmp	ecx, 0x21
	lea	rsi, [rsi]
	jne	.label_33
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 1], 0
	je	.label_48
	lea	rsi, [rsi]
	cmp	ecx, 0x28
	jne	.label_33
.label_44:
	mov	rbp, rbp
	cmp	byte ptr [rax + 1], 0
	lea	rsi, [rsi]
	jne	.label_33
	mov	rax, qword ptr [rbp + r14*8 + 0x10]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x29
	lea	rdi, [rdi]
	jne	.label_33
	mov	rbp, rbp
	cmp	byte ptr [rax + 1], 0
	mov	rsp, rsp
	je	.label_38
.label_33:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	eax, 0x2d
	lea	rdi, [rdi]
	jne	.label_41
	movzx	eax, byte ptr [rbx + 1]
	cmp	eax, 0x61
	jne	.label_43
	lea	rsi, [rsi]
	cmp	byte ptr [rbx + 2], 0
	je	.label_45
.label_43:
	nop	
	movzx	eax, byte ptr [rbx + 1]
	cmp	eax, 0x6f
	nop	
	jne	.label_41
	lea	rsi, [rsi]
	cmp	byte ptr [rbx + 2], 0
	jne	.label_41
.label_45:
	cmp	r14d,  dword ptr [dword ptr [rip + argc]]
	lea	rdi, [rdi]
	jge	.label_31
	nop	
	xor	ebp, ebp
	jmp	.label_35
	nop	dword ptr [rax + rax]
.label_42:
	inc	eax
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + pos]],  eax
.label_35:
	call	term
	mov	bl, al
	nop	
	jmp	.label_40
	nop	word ptr cs:[rax + rax]
.label_34:
	nop	
	inc	eax
	mov	dword ptr [dword ptr [rip + pos]],  eax
	call	term
	and	bl, al
.label_40:
	nop	
	mov	eax,  dword ptr [dword ptr [rip + pos]]
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [rip + argc]]
	cmp	eax, ecx
	jge	.label_46
	movsxd	rdx, eax
	mov	rsi,  qword ptr [word ptr [rip + argv]]
	mov	rdx, qword ptr [rsi + rdx*8]
	lea	rsi, [rsi]
	movzx	esi, byte ptr [rdx]
	cmp	esi, 0x2d
	nop	
	jne	.label_46
	movzx	esi, byte ptr [rdx + 1]
	cmp	esi, 0x61
	jne	.label_46
	nop	
	cmp	byte ptr [rdx + 2], 0
	je	.label_34
	nop	
.label_46:
	lea	rdi, [rdi]
	or	bpl, bl
	cmp	eax, ecx
	mov	rsp, rsp
	jge	.label_36
	movsxd	rcx, eax
	nop	
	mov	rdx,  qword ptr [word ptr [rip + argv]]
	nop	
	mov	rcx, qword ptr [rdx + rcx*8]
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rcx]
	lea	rdi, [rdi]
	cmp	edx, 0x2d
	jne	.label_36
	movzx	edx, byte ptr [rcx + 1]
	mov	rbp, rbp
	cmp	edx, 0x6f
	mov	rsp, rsp
	jne	.label_36
	mov	rbp, rbp
	cmp	byte ptr [rcx + 2], 0
	mov	rbp, rbp
	je	.label_42
.label_36:
	and	bpl, 1
.label_39:
	mov	al, bpl
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	nop	
	pop	rbp
	ret	
.label_48:
	nop	
	lea	rax, [r14 + 1]
	mov	dword ptr [dword ptr [rip + pos]],  eax
	lea	rdi, [rdi]
	cmp	eax,  dword ptr [dword ptr [rip + argc]]
	nop	
	jge	.label_31
	mov	rsp, rsp
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	je	.label_32
	mov	rbp, rbp
	movzx	eax, al
	cmp	eax, 0x21
	jne	.label_37
	cmp	byte ptr [rbx + 1], 0
	jne	.label_37
	mov	eax, r14d
	add	eax, 3
	mov	dword ptr [dword ptr [rip + pos]],  eax
	mov	rax, qword ptr [rbp + r14*8 + 0x10]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	lea	rdi, [rdi]
	sete	bpl
	xor	bpl, 1
	lea	rsi, [rsi]
	jmp	.label_39
.label_32:
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + 1], 0
	je	.label_37
	cmp	byte ptr [rbx + 2], 0
	jne	.label_37
	call	unary_operator
	mov	bpl, al
	xor	bpl, 1
	jmp	.label_39
.label_38:
	cmp	byte ptr [rbx], 0
	setne	bpl
	lea	eax, [r14 + 3]
	nop	
	mov	dword ptr [dword ptr [rip + pos]],  eax
	jmp	.label_39
.label_41:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.48
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	nop	
	mov	rbx, rax
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 + 8]
	lea	rsi, [rsi]
	call	quote
	nop	
	mov	rcx, rax
	xor	eax, eax
	nop	
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, rcx
	mov	rbp, rbp
	call	test_syntax_error
.label_31:
	nop	
	call	beyond
.label_37:
	call	beyond
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402100

	.globl unary_operator
	.type unary_operator, @function
unary_operator:
	push	r15
	push	r14
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x90
	mov	rsp, rsp
	movsxd	rcx,  dword ptr [dword ptr [rip + pos]]
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rdx, qword ptr [rax + rcx*8]
	nop	
	movsx	edx, byte ptr [rdx + 1]
	mov	rsp, rsp
	add	edx, -0x47
	mov	rbp, rbp
	cmp	edx, 0x33
	ja	.label_49
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_58]]
.label_406:
	lea	edx, [rcx + 1]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	mov	rbp, rbp
	jge	.label_54
	nop	
	lea	ecx, [rcx + 2]
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + pos]],  ecx
	movsxd	rcx, edx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax + rcx*8]
	mov	rsp, rsp
	lea	rdx, [rsp]
	lea	rdi, [rdi]
	mov	edi, 1
	call	__lxstat
	test	eax, eax
	mov	rbp, rbp
	je	.label_66
	xor	ebx, ebx
	mov	rbp, rbp
	jmp	.label_50
.label_405:
	lea	edx, [rcx + 1]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	lea	rdi, [rdi]
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	nop	
	jge	.label_54
	lea	rsi, [rsi]
	lea	edx, [rcx + 2]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	nop	
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	lea	rdx, [rsp]
	mov	rbp, rbp
	mov	edi, 1
	call	__xstat
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_70
	xor	ebx, ebx
	lea	rsi, [rsi]
	jmp	.label_50
.label_407:
	lea	edx, [rcx + 1]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + pos]],  edx
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	jge	.label_54
	lea	rdi, [rdi]
	lea	edx, [rcx + 2]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	nop	
	lea	rdx, [rsp]
	mov	rsp, rsp
	mov	edi, 1
	call	__xstat
	test	eax, eax
	je	.label_56
	mov	rbp, rbp
	xor	ebx, ebx
	mov	rbp, rbp
	jmp	.label_50
.label_408:
	lea	edx, [rcx + 1]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	lea	rdi, [rdi]
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	jge	.label_54
	lea	edx, [rcx + 2]
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	nop	
	lea	rdx, [rsp]
	mov	edi, 1
	call	__xstat
	nop	
	test	eax, eax
	je	.label_65
	xor	ebx, ebx
	lea	rsi, [rsi]
	jmp	.label_50
.label_409:
	lea	rsi, [rsi]
	lea	edx, [rcx + 1]
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	mov	rsp, rsp
	jge	.label_54
	lea	edx, [rcx + 2]
	nop	
	mov	dword ptr [dword ptr [rip + pos]],  edx
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	mov	rbp, rbp
	lea	rdx, [rsp]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	je	.label_69
	xor	ebx, ebx
	mov	rbp, rbp
	jmp	.label_50
.label_410:
	lea	rdi, [rdi]
	lea	edx, [rcx + 1]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + pos]],  edx
	lea	rsi, [rsi]
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	mov	rbp, rbp
	jge	.label_54
	lea	edx, [rcx + 2]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + pos]],  edx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	lea	rdx, [rsp]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	je	.label_55
	xor	ebx, ebx
	jmp	.label_50
.label_411:
	lea	edx, [rcx + 1]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + pos]],  edx
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	jge	.label_54
	nop	
	lea	edx, [rcx + 2]
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	nop	
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	lea	rdx, [rsp]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	je	.label_63
	xor	ebx, ebx
	nop	
	jmp	.label_50
.label_412:
	mov	rsp, rsp
	lea	edx, [rcx + 1]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	lea	rdi, [rdi]
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	mov	rsp, rsp
	jge	.label_54
	lea	rsi, [rsi]
	lea	edx, [rcx + 2]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + pos]],  edx
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	lea	rsi, [rsi]
	lea	rdx, [rsp]
	mov	rbp, rbp
	mov	edi, 1
	call	__xstat
	mov	rbp, rbp
	test	eax, eax
	je	.label_68
	xor	ebx, ebx
	jmp	.label_50
.label_413:
	lea	rsi, [rsi]
	lea	edx, [rcx + 1]
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	jge	.label_54
	nop	
	lea	edx, [rcx + 2]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	nop	
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	lea	rsi, [rsi]
	lea	rdx, [rsp]
	mov	edi, 1
	mov	rsp, rsp
	call	__xstat
	lea	rsi, [rsi]
	test	eax, eax
	jmp	.label_52
.label_414:
	lea	edx, [rcx + 1]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	lea	rdi, [rdi]
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	jge	.label_54
	lea	edx, [rcx + 2]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	lea	rdx, [rsp]
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rbp, rbp
	call	__xstat
	test	eax, eax
	je	.label_61
	mov	rbp, rbp
	xor	ebx, ebx
	nop	
	jmp	.label_50
.label_415:
	lea	rdi, [rdi]
	lea	edx, [rcx + 1]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + pos]],  edx
	lea	rsi, [rsi]
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	jge	.label_54
	lea	rsi, [rsi]
	lea	ecx, [rcx + 2]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + pos]],  ecx
	mov	rbp, rbp
	movsxd	rcx, edx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + rcx*8]
	lea	rdx, [rsp]
	lea	rdi, [rdi]
	mov	edi, 1
	nop	
	call	__xstat
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_57
	lea	rsi, [rsi]
	xor	ebx, ebx
	mov	rsp, rsp
	jmp	.label_50
.label_416:
	mov	rsp, rsp
	lea	edx, [rcx + 1]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + pos]],  edx
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	mov	rsp, rsp
	jge	.label_54
	lea	ecx, [rcx + 2]
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + pos]],  ecx
	movsxd	rcx, edx
	mov	rsi, qword ptr [rax + rcx*8]
	lea	rdx, [rsp]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	je	.label_51
	xor	ebx, ebx
	jmp	.label_50
.label_417:
	lea	rdi, [rdi]
	lea	edx, [rcx + 1]
	nop	
	mov	dword ptr [dword ptr [rip + pos]],  edx
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	jge	.label_54
	mov	rbp, rbp
	lea	ecx, [rcx + 2]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + pos]],  ecx
	movsxd	rcx, edx
	mov	rsp, rsp
	mov	rax, qword ptr [rax + rcx*8]
	cmp	byte ptr [rax], 0
	setne	bl
	jmp	.label_50
.label_418:
	lea	edx, [rcx + 1]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	jge	.label_54
	lea	rsi, [rsi]
	lea	edx, [rcx + 2]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	lea	rdx, [rsp]
	mov	rbp, rbp
	mov	edi, 1
	call	__xstat
	nop	
	test	eax, eax
	je	.label_67
	xor	ebx, ebx
	jmp	.label_50
.label_419:
	lea	rsi, [rsi]
	lea	edx, [rcx + 1]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	mov	rbp, rbp
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	jge	.label_54
	lea	edx, [rcx + 2]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	nop	
	mov	rdi, qword ptr [rax + rcx*8 + 8]
	mov	esi, 4
	jmp	.label_60
.label_420:
	mov	rbp, rbp
	lea	edx, [rcx + 1]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	lea	rsi, [rsi]
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	jge	.label_54
	nop	
	lea	edx, [rcx + 2]
	nop	
	mov	dword ptr [dword ptr [rip + pos]],  edx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	lea	rdx, [rsp]
	mov	edi, 1
	nop	
	call	__xstat
	nop	
	test	eax, eax
	mov	rsp, rsp
	sete	al
	nop	
	cmp	qword ptr [rsp + 0x30], 0
	lea	rsi, [rsi]
	setg	bl
	and	bl, al
	lea	rsi, [rsi]
	jmp	.label_50
.label_421:
	lea	rdi, [rdi]
	lea	edx, [rcx + 1]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	nop	
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	jge	.label_54
	lea	rsi, [rsi]
	lea	ecx, [rcx + 2]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + pos]],  ecx
	lea	rdi, [rdi]
	movsxd	rcx, edx
	mov	rdi, qword ptr [rax + rcx*8]
	call	find_int
	mov	r15, rax
	call	__errno_location
	lea	rsi, [rsi]
	mov	r14, rax
	mov	rbp, rbp
	mov	dword ptr [r14], 0
	lea	rsi, [rsi]
	xor	ebx, ebx
	xor	esi, esi
	mov	rsp, rsp
	mov	edx, 0xa
	mov	rdi, r15
	lea	rsi, [rsi]
	call	strtol
	cmp	rax, 0x7fffffff
	ja	.label_50
	cmp	dword ptr [r14], 0x22
	je	.label_50
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	call	isatty
	test	eax, eax
	nop	
	setne	bl
	mov	rsp, rsp
	jmp	.label_50
.label_422:
	mov	rbp, rbp
	lea	edx, [rcx + 1]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + pos]],  edx
	mov	rsp, rsp
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	lea	rdi, [rdi]
	jge	.label_54
	add	ecx, 2
	mov	dword ptr [dword ptr [rip + pos]],  ecx
	movsxd	rcx, edx
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rcx*8]
	lea	rdx, [rsp]
	mov	edi, 1
	call	__xstat
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_59
	xor	ebx, ebx
	jmp	.label_50
.label_423:
	lea	rdi, [rdi]
	lea	edx, [rcx + 1]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	mov	rbp, rbp
	jge	.label_54
	lea	rdi, [rdi]
	lea	edx, [rcx + 2]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + pos]],  edx
	mov	rdi, qword ptr [rax + rcx*8 + 8]
	lea	rsi, [rsi]
	mov	esi, 2
	lea	rdi, [rdi]
	jmp	.label_60
.label_424:
	mov	rbp, rbp
	lea	edx, [rcx + 1]
	nop	
	mov	dword ptr [dword ptr [rip + pos]],  edx
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	nop	
	jge	.label_54
	lea	rdi, [rdi]
	lea	edx, [rcx + 2]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	mov	rdi, qword ptr [rax + rcx*8 + 8]
	mov	esi, 1
.label_60:
	lea	rdi, [rdi]
	call	euidaccess
	mov	rbp, rbp
	test	eax, eax
	jmp	.label_52
.label_425:
	lea	edx, [rcx + 1]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	mov	rsp, rsp
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	lea	rdi, [rdi]
	jge	.label_54
	lea	ecx, [rcx + 2]
	mov	dword ptr [dword ptr [rip + pos]],  ecx
	lea	rdi, [rdi]
	movsxd	rcx, edx
	mov	rsp, rsp
	mov	rax, qword ptr [rax + rcx*8]
	lea	rsi, [rsi]
	cmp	byte ptr [rax], 0
	jmp	.label_52
.label_66:
	lea	rdi, [rdi]
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0xa000
	jmp	.label_52
.label_70:
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	mov	rbx, rax
	nop	
	mov	dword ptr [rbx], 0
	mov	rsp, rsp
	call	getegid
	lea	rdi, [rdi]
	cmp	eax, -1
	mov	rbp, rbp
	jne	.label_53
	cmp	dword ptr [rbx], 0
	mov	rbp, rbp
	je	.label_53
	mov	rsp, rsp
	xor	ebx, ebx
	lea	rdi, [rdi]
	jmp	.label_50
.label_56:
	mov	rax, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x58], rax
	lea	rdi, [rdi]
	jge	.label_62
	xor	ebx, ebx
	jmp	.label_50
.label_65:
	mov	rsp, rsp
	call	__errno_location
	mov	rbx, rax
	nop	
	mov	dword ptr [rbx], 0
	mov	rbp, rbp
	call	geteuid
	nop	
	cmp	eax, -1
	lea	rdi, [rdi]
	jne	.label_64
	lea	rdi, [rdi]
	cmp	dword ptr [rbx], 0
	lea	rdi, [rdi]
	je	.label_64
	xor	ebx, ebx
	nop	
	jmp	.label_50
.label_69:
	nop	
	mov	eax, 0xf000
	mov	rbp, rbp
	and	eax, dword ptr [rsp + 0x18]
	mov	rbp, rbp
	cmp	eax, 0xc000
	nop	
	jmp	.label_52
.label_55:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	mov	rsp, rsp
	cmp	eax, 0x6000
	jmp	.label_52
.label_63:
	mov	rbp, rbp
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	mov	rbp, rbp
	cmp	eax, 0x2000
	lea	rdi, [rdi]
	jmp	.label_52
.label_68:
	lea	rsi, [rsi]
	mov	eax, 0xf000
	lea	rsi, [rsi]
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0x4000
	nop	
	jmp	.label_52
.label_61:
	mov	rbp, rbp
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0x8000
	jmp	.label_52
.label_57:
	lea	rdi, [rdi]
	mov	bl, byte ptr [rsp + 0x19]
	and	bl, 4
	mov	rbp, rbp
	shr	bl, 2
	jmp	.label_50
.label_51:
	lea	rsi, [rsi]
	mov	bl, byte ptr [rsp + 0x19]
	lea	rdi, [rdi]
	and	bl, 2
	lea	rsi, [rsi]
	shr	bl, 1
	lea	rdi, [rdi]
	jmp	.label_50
.label_67:
	mov	eax, 0xf000
	mov	rsp, rsp
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0x1000
	jmp	.label_52
.label_59:
	mov	bl, byte ptr [rsp + 0x19]
	and	bl, 8
	shr	bl, 3
	jmp	.label_50
.label_53:
	cmp	eax, dword ptr [rsp + 0x20]
	mov	rsp, rsp
	jmp	.label_52
.label_64:
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rsp + 0x1c]
.label_52:
	lea	rsi, [rsi]
	sete	bl
.label_50:
	mov	al, bl
	add	rsp, 0x90
	pop	rbx
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	ret	
.label_62:
	mov	bl, 1
	mov	rbp, rbp
	jg	.label_50
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	sub	ecx, eax
	mov	rsp, rsp
	test	ecx, ecx
	setg	bl
	lea	rsi, [rsi]
	jmp	.label_50
.label_49:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	nop	
	mov	rdi, qword ptr [rcx + rax*8]
	nop	
	call	quote
	mov	rcx, rax
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rsi, rcx
	call	test_syntax_error
.label_54:
	nop	
	call	beyond
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4029f0

	.globl beyond
	.type beyond, @function
beyond:
	mov	rsp, rsp
	push	rbx
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.45
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbx, rax
	mov	rbp, rbp
	movsxd	rax,  dword ptr [dword ptr [rip + argc]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, rcx
	nop	
	call	test_syntax_error
	.section	.text
	.align	16
	#Procedure 0x402a40

	.globl find_int
	.type find_int, @function
find_int:
	push	r15
	mov	rbp, rbp
	push	r14
	push	rbx
	lea	rsi, [rsi]
	mov	r15, rdi
	call	__ctype_b_loc
	mov	rbp, rbp
	mov	rcx, qword ptr [rax]
	mov	rsi, r15
	nop	dword ptr [rax]
.label_71:
	mov	rax, rsi
	movzx	edx, byte ptr [rax]
	mov	rsp, rsp
	lea	rsi, [rax + 1]
	test	byte ptr [rcx + rdx*2], 1
	nop	
	jne	.label_71
	mov	rsp, rsp
	movzx	edi, dl
	cmp	edi, 0x2d
	mov	rsp, rsp
	sete	dl
	mov	rsp, rsp
	movzx	edx, dl
	add	rdx, rax
	mov	rbp, rbp
	cmp	edi, 0x2b
	cmove	rdx, rsi
	cmove	rax, rsi
	movsx	esi, byte ptr [rdx]
	add	esi, -0x30
	cmp	esi, 9
	ja	.label_74
	mov	rsp, rsp
	dec	rdx
	nop	dword ptr [rax + rax]
.label_73:
	movsx	esi, byte ptr [rdx + 2]
	mov	rsp, rsp
	movzx	edi, sil
	mov	rsp, rsp
	mov	ebx, esi
	add	ebx, -0x30
	mov	rsp, rsp
	inc	rdx
	cmp	ebx, 0xa
	nop	
	jb	.label_73
	test	byte ptr [rcx + rdi*2], 1
	mov	rbp, rbp
	je	.label_72
	lea	rsi, [rsi]
	add	rdx, 2
	nop	
.label_75:
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rsi*2], 1
	mov	rsp, rsp
	jne	.label_75
.label_72:
	test	sil, sil
	mov	rbp, rbp
	jne	.label_74
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
.label_74:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.44
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	r14, rax
	mov	rdi, r15
	mov	rbp, rbp
	call	quote
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsi, rcx
	mov	rsp, rsp
	call	test_syntax_error
	.section	.text
	.align	16
	#Procedure 0x402b40

	.globl binop
	.type binop, @function
binop:
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rdi]
	cmp	edx, 0x3d
	nop	
	jne	.label_76
	mov	al, 1
	lea	rsi, [rsi]
	cmp	byte ptr [rdi + 1], 0
	je	.label_78
.label_76:
	cmp	edx, 0x21
	lea	rdi, [rdi]
	jne	.label_85
	movzx	eax, byte ptr [rdi + 1]
	cmp	eax, 0x3d
	jne	.label_85
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	cmp	byte ptr [rdi + 2], 0
	mov	rsp, rsp
	je	.label_78
.label_85:
	cmp	edx, 0x3d
	jne	.label_77
	movzx	eax, byte ptr [rdi + 1]
	mov	rbp, rbp
	cmp	eax, 0x3d
	jne	.label_77
	nop	
	mov	al, 1
	mov	rsp, rsp
	cmp	byte ptr [rdi + 2], 0
	nop	
	je	.label_78
.label_77:
	mov	rsp, rsp
	mov	ecx, 0x2d
	sub	ecx, edx
	mov	rbp, rbp
	jne	.label_82
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rdi + 1]
	mov	rbp, rbp
	cmp	eax, 0x6e
	jne	.label_90
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi + 2]
	cmp	eax, 0x74
	lea	rdi, [rdi]
	jne	.label_79
	mov	al, 1
	nop	
	cmp	byte ptr [rdi + 3], 0
	je	.label_78
.label_79:
	test	ecx, ecx
	jne	.label_82
.label_90:
	movzx	eax, byte ptr [rdi + 1]
	mov	rbp, rbp
	cmp	eax, 0x6f
	jne	.label_88
	mov	rsp, rsp
	movzx	eax, byte ptr [rdi + 2]
	mov	rbp, rbp
	cmp	eax, 0x74
	jne	.label_89
	mov	al, 1
	nop	
	cmp	byte ptr [rdi + 3], 0
	je	.label_78
.label_89:
	nop	
	test	ecx, ecx
	jne	.label_82
.label_88:
	movzx	eax, byte ptr [rdi + 1]
	cmp	eax, 0x65
	mov	rsp, rsp
	jne	.label_84
	movzx	eax, byte ptr [rdi + 2]
	mov	rsp, rsp
	cmp	eax, 0x66
	jne	.label_84
	mov	al, 1
	cmp	byte ptr [rdi + 3], 0
	je	.label_78
.label_84:
	nop	
	movzx	eax, byte ptr [rdi + 1]
	mov	rsp, rsp
	cmp	eax, 0x65
	lea	rsi, [rsi]
	jne	.label_81
	nop	
	movzx	eax, byte ptr [rdi + 2]
	cmp	eax, 0x71
	mov	rbp, rbp
	jne	.label_81
	mov	al, 1
	mov	rbp, rbp
	cmp	byte ptr [rdi + 3], 0
	je	.label_78
.label_81:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rdi + 1]
	cmp	eax, 0x6e
	mov	rbp, rbp
	jne	.label_82
	nop	
	movzx	eax, byte ptr [rdi + 2]
	mov	rbp, rbp
	cmp	eax, 0x65
	lea	rsi, [rsi]
	jne	.label_82
	nop	
	mov	al, 1
	cmp	byte ptr [rdi + 3], 0
	mov	rbp, rbp
	je	.label_78
.label_82:
	mov	rbp, rbp
	cmp	edx, 0x2d
	jne	.label_83
	movzx	eax, byte ptr [rdi + 1]
	cmp	eax, 0x6c
	mov	rbp, rbp
	jne	.label_86
	movzx	eax, byte ptr [rdi + 2]
	cmp	eax, 0x74
	mov	rsp, rsp
	jne	.label_86
	mov	al, 1
	cmp	byte ptr [rdi + 3], 0
	mov	rsp, rsp
	je	.label_78
.label_86:
	mov	rsp, rsp
	movzx	eax, byte ptr [rdi + 1]
	cmp	eax, 0x6c
	jne	.label_87
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rdi + 2]
	lea	rsi, [rsi]
	cmp	eax, 0x65
	lea	rdi, [rdi]
	jne	.label_87
	mov	al, 1
	cmp	byte ptr [rdi + 3], 0
	je	.label_78
.label_87:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rdi + 1]
	lea	rsi, [rsi]
	cmp	eax, 0x67
	jne	.label_83
	movzx	eax, byte ptr [rdi + 2]
	cmp	eax, 0x74
	jne	.label_83
	mov	al, 1
	cmp	byte ptr [rdi + 3], 0
	lea	rsi, [rsi]
	je	.label_78
.label_83:
	test	ecx, ecx
	jne	.label_80
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi + 1]
	nop	
	mov	ecx, 0x67
	lea	rdi, [rdi]
	sub	ecx, eax
	nop	
	jne	.label_80
	movzx	eax, byte ptr [rdi + 2]
	mov	ecx, 0x65
	sub	ecx, eax
	lea	rdi, [rdi]
	jne	.label_80
	movzx	ecx, byte ptr [rdi + 3]
	nop	
	neg	ecx
.label_80:
	test	ecx, ecx
	sete	al
.label_78:
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402d40

	.globl binary_operator
	.type binary_operator, @function
binary_operator:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	nop	
	push	r12
	push	rbx
	sub	rsp, 0x1d0
	mov	ecx,  dword ptr [dword ptr [rip + pos]]
	lea	rdi, [rdi]
	test	dil, dil
	je	.label_120
	inc	ecx
	mov	dword ptr [dword ptr [rip + pos]],  ecx
.label_120:
	lea	edx, [rcx + 1]
	mov	eax,  dword ptr [dword ptr [rip + argc]]
	nop	
	add	eax, -2
	mov	rsp, rsp
	cmp	edx, eax
	jge	.label_104
	movsxd	rsi, ecx
	nop	
	mov	rax,  qword ptr [word ptr [rip + argv]]
	nop	
	mov	rsi, qword ptr [rax + rsi*8 + 0x10]
	movzx	ebp, byte ptr [rsi]
	lea	rsi, [rsi]
	cmp	ebp, 0x2d
	lea	rdi, [rdi]
	jne	.label_93
	mov	rbp, rbp
	movzx	ebp, byte ptr [rsi + 1]
	lea	rsi, [rsi]
	cmp	ebp, 0x6c
	jne	.label_93
	cmp	byte ptr [rsi + 2], 0
	mov	rsp, rsp
	jne	.label_93
	mov	dword ptr [dword ptr [rip + pos]],  edx
	lea	rdi, [rdi]
	mov	r15b, 1
	lea	rdi, [rdi]
	mov	ebp, edx
	jmp	.label_114
.label_104:
	mov	rax,  qword ptr [word ptr [rip + argv]]
.label_93:
	xor	r15d, r15d
	mov	ebp, ecx
.label_114:
	lea	rdi, [rdi]
	movsxd	r12, edx
	mov	rdx, qword ptr [rax + r12*8]
	mov	rbp, rbp
	movzx	esi, byte ptr [rdx]
	nop	
	cmp	esi, 0x21
	je	.label_117
	nop	
	movzx	esi, sil
	cmp	esi, 0x3d
	je	.label_118
	cmp	esi, 0x2d
	jne	.label_102
	movsx	esi, byte ptr [rdx + 1]
	mov	rsp, rsp
	mov	bl, sil
	mov	rbp, rbp
	add	bl, 0x9b
	lea	rdi, [rdi]
	movzx	ebx, bl
	mov	rbp, rbp
	cmp	ebx, 9
	ja	.label_91
	jmp	qword ptr [word ptr [+ (rbx * 8) + label_97]]
.label_452:
	nop	
	movzx	ebx, byte ptr [rdx + 2]
	cmp	ebx, 0x65
	je	.label_94
	movzx	ebx, bl
	cmp	ebx, 0x74
	je	.label_94
	mov	rsp, rsp
	jmp	.label_91
.label_117:
	mov	rsp, rsp
	movzx	ecx, byte ptr [rdx + 1]
	lea	rdi, [rdi]
	cmp	ecx, 0x3d
	jne	.label_102
	cmp	byte ptr [rdx + 2], 0
	jne	.label_102
	movsxd	rbp, ebp
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + rbp*8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + rbp*8 + 0x10]
	mov	rsp, rsp
	call	strcmp
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	setne	bl
	add	ebp, 3
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + pos]],  ebp
	mov	rbp, rbp
	jmp	.label_92
.label_118:
	mov	cl, byte ptr [rdx + 1]
	test	cl, cl
	je	.label_112
	movzx	ecx, cl
	cmp	ecx, 0x3d
	mov	rbp, rbp
	jne	.label_102
	cmp	byte ptr [rdx + 2], 0
	mov	rbp, rbp
	jne	.label_102
.label_112:
	movsxd	rcx, ebp
	mov	rdi, qword ptr [rax + rcx*8]
	mov	rsi, qword ptr [rax + rcx*8 + 0x10]
	mov	rbp, rbp
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	sete	bl
	lea	rsi, [rsi]
	add	ebp, 3
	mov	dword ptr [dword ptr [rip + pos]],  ebp
.label_92:
	mov	rbp, rbp
	mov	al, bl
	nop	
	add	rsp, 0x1d0
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_451:
	movzx	ebx, byte ptr [rdx + 2]
	lea	rsi, [rsi]
	cmp	ebx, 0x71
	lea	rsi, [rsi]
	je	.label_94
	jmp	.label_91
.label_453:
	mov	rbp, rbp
	movzx	ebx, byte ptr [rdx + 2]
	cmp	ebx, 0x65
	lea	rsi, [rsi]
	jne	.label_91
.label_94:
	mov	rsp, rsp
	cmp	byte ptr [rdx + 3], 0
	mov	rsp, rsp
	je	.label_98
.label_91:
	lea	rsi, [rsi]
	cmp	esi, 0x65
	je	.label_100
	lea	rdi, [rdi]
	cmp	esi, 0x6f
	nop	
	je	.label_110
	cmp	esi, 0x6e
	lea	rsi, [rsi]
	jne	.label_101
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rdx + 2]
	cmp	esi, 0x74
	lea	rsi, [rsi]
	jne	.label_101
	lea	rsi, [rsi]
	cmp	byte ptr [rdx + 3], 0
	jne	.label_101
	add	ebp, 3
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + pos]],  ebp
	or	r15b, dil
	movzx	edx, r15b
	mov	rsp, rsp
	cmp	edx, 1
	lea	rdi, [rdi]
	je	.label_108
	movsxd	rbp, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rbp, rbp
	lea	rdx, [rsp]
	nop	
	mov	edi, 1
	lea	rdi, [rdi]
	call	__xstat
	nop	
	mov	r12d, eax
	test	r12d, r12d
	sete	bl
	mov	r15, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x60]
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + rbp*8 + 0x10]
	lea	rdx, [rsp]
	mov	edi, 1
	call	__xstat
	nop	
	test	eax, eax
	mov	rsp, rsp
	jne	.label_92
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	test	r12d, r12d
	mov	rbp, rbp
	setne	cl
	xor	ebx, ebx
	mov	rsp, rsp
	cmp	r15, rax
	jl	.label_92
	test	cl, cl
	jne	.label_92
	lea	rdi, [rdi]
	mov	bl, 1
	cmp	r15, rax
	jg	.label_92
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	sub	r14d, eax
	lea	rsi, [rsi]
	test	r14d, r14d
	mov	rbp, rbp
	setg	bl
	jmp	.label_92
.label_100:
	movzx	esi, byte ptr [rdx + 2]
	nop	
	cmp	esi, 0x66
	mov	rsp, rsp
	jne	.label_101
	lea	rsi, [rsi]
	cmp	byte ptr [rdx + 3], 0
	lea	rsi, [rsi]
	jne	.label_101
	mov	rsp, rsp
	add	ebp, 3
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + pos]],  ebp
	mov	rsp, rsp
	or	r15b, dil
	nop	
	movzx	edx, r15b
	nop	
	cmp	edx, 1
	je	.label_106
	mov	rbp, rbp
	movsxd	rbx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + rbx*8]
	mov	rsp, rsp
	lea	rdx, [rsp + 0x140]
	mov	edi, 1
	mov	rbp, rbp
	call	__xstat
	test	eax, eax
	nop	
	je	.label_115
	mov	rbp, rbp
	xor	ebx, ebx
	mov	rsp, rsp
	jmp	.label_92
.label_110:
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rdx + 2]
	cmp	esi, 0x74
	jne	.label_101
	cmp	byte ptr [rdx + 3], 0
	lea	rsi, [rsi]
	jne	.label_101
	add	ebp, 3
	mov	dword ptr [dword ptr [rip + pos]],  ebp
	lea	rdi, [rdi]
	or	r15b, dil
	lea	rsi, [rsi]
	movzx	edx, r15b
	mov	rsp, rsp
	cmp	edx, 1
	mov	rbp, rbp
	je	.label_119
	mov	rsp, rsp
	movsxd	rbp, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdx, [rsp]
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rbp, rbp
	call	__xstat
	mov	rbp, rbp
	mov	ebx, eax
	mov	r15, qword ptr [rsp + 0x58]
	mov	r14, qword ptr [rsp + 0x60]
	mov	rax,  qword ptr [word ptr [rip + argv]]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax + rbp*8 + 0x10]
	mov	rbp, rbp
	lea	rdx, [rsp]
	lea	rsi, [rsi]
	mov	edi, 1
	nop	
	call	__xstat
	test	eax, eax
	nop	
	je	.label_105
	nop	
	xor	ebx, ebx
	nop	
	jmp	.label_92
.label_98:
	movsxd	rbp, ecx
	mov	rax, qword ptr [rax + rbp*8]
	test	dil, dil
	je	.label_107
	mov	rdi, rax
	call	strlen
	lea	rsi, [rsp]
	mov	rdi, rax
	call	umaxtostr
	lea	rsi, [rsi]
	jmp	.label_111
.label_115:
	mov	rax,  qword ptr [word ptr [rip + argv]]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + rbx*8 + 0x10]
	lea	rsi, [rsi]
	lea	rdx, [rsp + 0xb0]
	mov	rbp, rbp
	mov	edi, 1
	call	__xstat
	test	eax, eax
	je	.label_116
	lea	rdi, [rdi]
	xor	ebx, ebx
	lea	rdi, [rdi]
	jmp	.label_92
.label_105:
	test	ebx, ebx
	mov	bl, 1
	mov	rsp, rsp
	jne	.label_92
	mov	rax, qword ptr [rsp + 0x58]
	cmp	r15, rax
	jl	.label_92
	mov	rbp, rbp
	cmp	r15, rax
	jle	.label_121
	xor	ebx, ebx
	lea	rdi, [rdi]
	jmp	.label_92
.label_107:
	mov	rdi, rax
	call	find_int
.label_111:
	mov	r14, rax
	test	r15b, r15b
	je	.label_96
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rax + rbp*8 + 0x18]
	nop	
	call	strlen
	mov	rsp, rsp
	lea	rsi, [rsp + 0x90]
	mov	rdi, rax
	call	umaxtostr
	jmp	.label_99
.label_96:
	nop	
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rax + rbp*8 + 0x10]
	mov	rbp, rbp
	call	find_int
.label_99:
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, rax
	call	strintcmp
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rcx + r12*8]
	mov	cl, byte ptr [rdx + 2]
	add	dword ptr [dword ptr [rip + pos]],  3
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rdx + 1]
	nop	
	cmp	edx, 0x67
	nop	
	je	.label_103
	mov	rsp, rsp
	movzx	edx, dl
	lea	rsi, [rsi]
	movzx	ecx, cl
	lea	rdi, [rdi]
	cmp	edx, 0x6c
	mov	rsp, rsp
	jne	.label_109
	cmp	ecx, 0x65
	lea	rsi, [rsi]
	sete	cl
	mov	rsp, rsp
	movzx	ecx, cl
	mov	rsp, rsp
	cmp	eax, ecx
	setl	bl
	lea	rsi, [rsi]
	jmp	.label_92
.label_103:
	movzx	ecx, cl
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rsp, rsp
	cmp	ecx, 0x65
	nop	
	mov	ecx, 0xffffffff
	nop	
	cmovne	ecx, edx
	mov	rsp, rsp
	cmp	eax, ecx
	mov	rsp, rsp
	setg	bl
	jmp	.label_92
.label_109:
	lea	rdi, [rdi]
	cmp	ecx, 0x65
	sete	cl
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	setne	bl
	xor	bl, cl
	nop	
	xor	bl, 1
	nop	
	jmp	.label_92
.label_116:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x140]
	mov	rbp, rbp
	cmp	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	jne	.label_95
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x148]
	mov	rsp, rsp
	cmp	rax, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	sete	bl
	jmp	.label_92
.label_121:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	sub	r14d, eax
	shr	r14d, 0x1f
	mov	bl, r14b
	nop	
	jmp	.label_92
.label_95:
	xor	ebx, ebx
	jmp	.label_92
.label_102:
	call	abort
.label_101:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.65
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, rax
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rax + r12*8]
	call	quote
	mov	rsp, rsp
	mov	rcx, rax
	xor	eax, eax
	nop	
	mov	rdi, rbp
	mov	rsi, rcx
	call	test_syntax_error
.label_108:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.62
	nop	
	jmp	.label_113
.label_106:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.63
	lea	rdi, [rdi]
	jmp	.label_113
.label_119:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.64
.label_113:
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rbp, rbp
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdi, rcx
	call	test_syntax_error
	nop	
	.section	.text
	.align	16
	#Procedure 0x4033f0

	.globl term
	.type term, @function
term:
	push	rbp
	nop	
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	push	rax
	mov	r14d,  dword ptr [dword ptr [rip + pos]]
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [rip + argc]]
	cmp	r14d, eax
	lea	rsi, [rsi]
	jge	.label_141
	movsxd	rcx, r14d
	mov	rdx,  qword ptr [word ptr [rip + argv]]
	mov	rsi, qword ptr [rdx + rcx*8]
	movzx	edi, byte ptr [rsi]
	mov	rsp, rsp
	xor	ebx, ebx
	cmp	edi, 0x21
	nop	
	jne	.label_129
	nop	word ptr cs:[rax + rax]
.label_130:
	cmp	byte ptr [rsi + 1], 0
	jne	.label_135
	lea	esi, [rcx + 1]
	mov	dword ptr [dword ptr [rip + pos]],  esi
	mov	rbp, rbp
	cmp	esi, eax
	jge	.label_122
	xor	bl, 1
	mov	rsi, qword ptr [rdx + rcx*8 + 8]
	movzx	edi, byte ptr [rsi]
	mov	rsp, rsp
	inc	rcx
	cmp	edi, 0x21
	je	.label_130
.label_135:
	mov	r14d, ecx
	nop	
	jmp	.label_129
.label_141:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_129:
	mov	ecx, eax
	lea	rsi, [rsi]
	sub	ecx, r14d
	mov	rbp, rbp
	jle	.label_122
	movsxd	rbp, r14d
	lea	rsi, [rsi]
	mov	r15,  qword ptr [word ptr [rip + argv]]
	mov	r12, qword ptr [r15 + rbp*8]
	movzx	r13d, byte ptr [r12]
	mov	rbp, rbp
	cmp	r13d, 0x28
	mov	rsp, rsp
	jne	.label_125
	cmp	byte ptr [r12 + 1], 0
	je	.label_132
.label_125:
	cmp	ecx, 4
	jl	.label_139
	lea	rdi, [rdi]
	movzx	eax, r13b
	cmp	eax, 0x2d
	jne	.label_134
	movzx	eax, byte ptr [r12 + 1]
	cmp	eax, 0x6c
	nop	
	jne	.label_134
	cmp	byte ptr [r12 + 2], 0
	jne	.label_134
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + rbp*8 + 0x10]
	nop	
	call	binop
	lea	rsi, [rsi]
	test	al, al
	mov	rbp, rbp
	je	.label_134
	mov	edi, 1
	jmp	.label_142
.label_139:
	lea	rsi, [rsi]
	cmp	ecx, 3
	jl	.label_127
.label_134:
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + rbp*8 + 8]
	mov	rbp, rbp
	call	binop
	test	al, al
	je	.label_127
	xor	edi, edi
.label_142:
	call	binary_operator
	lea	rdi, [rdi]
	movzx	eax, al
	jmp	.label_124
.label_127:
	movzx	eax, r13b
	mov	rbp, rbp
	cmp	eax, 0x2d
	mov	rsp, rsp
	jne	.label_131
	nop	
	cmp	byte ptr [r12 + 1], 0
	mov	rsp, rsp
	je	.label_131
	mov	rbp, rbp
	cmp	byte ptr [r12 + 2], 0
	mov	rbp, rbp
	je	.label_136
.label_131:
	lea	rdi, [rdi]
	test	r13b, r13b
	setne	al
	lea	rsi, [rsi]
	movzx	eax, al
	lea	rdi, [rdi]
	inc	r14d
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + pos]],  r14d
	mov	rsp, rsp
	jmp	.label_124
.label_132:
	lea	edx, [r14 + 1]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	mov	ecx, eax
	sub	ecx, edx
	jle	.label_122
	lea	rdi, [rdi]
	add	r14d, 2
	mov	edi, 1
	lea	rdi, [rdi]
	cmp	r14d, eax
	jge	.label_126
	nop	
	movsxd	rdx, r14d
	lea	rdx, [r15 + rdx*8]
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_140:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rdx + rdi*8]
	movzx	ebp, byte ptr [rsi]
	cmp	ebp, 0x29
	nop	
	jne	.label_123
	mov	rsp, rsp
	cmp	byte ptr [rsi + 1], 0
	nop	
	je	.label_137
.label_123:
	cmp	edi, 3
	lea	rsi, [rsi]
	je	.label_138
	mov	rbp, rbp
	inc	rdi
	mov	rsp, rsp
	lea	esi, [r14 + rdi]
	lea	rsi, [rsi]
	cmp	esi, eax
	lea	rdi, [rdi]
	jl	.label_140
.label_137:
	inc	edi
	jmp	.label_126
.label_136:
	call	unary_operator
	lea	rsi, [rsi]
	movzx	eax, al
	mov	rbp, rbp
	jmp	.label_124
.label_138:
	lea	rdi, [rdi]
	mov	edi, ecx
.label_126:
	call	posixtest
	mov	rbp, rbp
	movsxd	rcx,  dword ptr [dword ptr [rip + pos]]
	mov	rdx,  qword ptr [word ptr [rip + argv]]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + rcx*8]
	nop	
	test	rdx, rdx
	je	.label_128
	lea	rsi, [rsi]
	movzx	esi, byte ptr [rdx]
	cmp	esi, 0x29
	jne	.label_133
	cmp	byte ptr [rdx + 1], 0
	mov	rsp, rsp
	jne	.label_133
	mov	rsp, rsp
	movzx	eax, al
	inc	ecx
	mov	dword ptr [dword ptr [rip + pos]],  ecx
.label_124:
	nop	
	and	bl, 1
	movzx	ecx, bl
	cmp	ecx, eax
	lea	rsi, [rsi]
	setne	al
	lea	rdi, [rdi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	mov	rbp, rbp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_122:
	call	beyond
.label_133:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.67
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	nop	
	mov	r14, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	call	quote_n
	mov	rbx, rax
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	nop	
	mov	rsi, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	mov	edi, 1
	call	quote_n
	mov	rcx, rax
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rdx, rcx
	nop	
	call	test_syntax_error
.label_128:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.66
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, OFFSET FLAT:.str.42
	mov	rbp, rbp
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, rcx
	call	test_syntax_error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403740
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
	#Procedure 0x403750
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403760

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
	je	.label_146
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_143
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_143
.label_146:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_144
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_143:
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
	jne	.label_145
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
.label_144:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_145:
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
	#Procedure 0x403860

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	lea	rdi, [rdi]
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	dword ptr [rax + rax]
.label_147:
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
	ja	.label_147
	mov	rax, rsi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4038c0

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
	je	.label_148
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
	jl	.label_150
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_150
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
	jne	.label_149
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_149:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_150:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_148:
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
	#Procedure 0x4039b0
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
	#Procedure 0x403a00
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
	#Procedure 0x403a20
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
	#Procedure 0x403a40
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
	#Procedure 0x403ab0
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
	#Procedure 0x403ad0
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
	je	.label_151
	test	rdx, rdx
	nop	
	je	.label_151
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_151:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403b10
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
	#Procedure 0x403bc0

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
.label_188:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	ecx, r15d
	lea	rdi, [rdi]
	cmp	r15d, 0xa
	ja	.label_211
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_219]]
.label_442:
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
.label_443:
	mov	byte ptr [rsp + 0x43], r8b
	mov	r13, rbp
	nop	
	test	r12b, 1
	nop	
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rdx, qword ptr [rsp + 0x78]
	jne	.label_240
	mov	rbp, rbp
	mov	al, byte ptr [rdx]
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	mov	ecx, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rcx
	je	.label_240
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	nop	dword ptr [rax]
.label_255:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_252
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rcx + rsi], al
.label_252:
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + rcx + 1]
	mov	rsp, rsp
	inc	rcx
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_255
.label_240:
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
	jmp	.label_152
.label_435:
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
	jmp	.label_152
.label_438:
	lea	rsi, [rsi]
	mov	al, 1
.label_436:
	mov	rbp, rbp
	mov	r12b, 1
.label_439:
	mov	rbp, rbp
	test	r12b, 1
	mov	cl, 1
	nop	
	je	.label_167
	lea	rsi, [rsi]
	mov	cl, al
.label_167:
	mov	rsp, rsp
	mov	al, cl
.label_437:
	mov	r9d, 2
	test	r12b, 1
	mov	rsp, rsp
	jne	.label_176
	test	r10, r10
	je	.label_182
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx], 0x27
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsp, rsp
	jmp	.label_183
.label_176:
	xor	ecx, ecx
	jmp	.label_183
.label_440:
	mov	rsp, rsp
	mov	r9d, 5
	test	r12b, 1
	jne	.label_196
	lea	rdi, [rdi]
	test	r10, r10
	je	.label_201
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 0x22
	mov	rsp, rsp
	mov	eax, 1
	jmp	.label_207
.label_441:
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
	jmp	.label_152
.label_182:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_183:
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
	jmp	.label_152
.label_196:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_207
.label_201:
	lea	rdi, [rdi]
	mov	eax, 1
.label_207:
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
.label_152:
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
	jmp	.label_175
	nop	word ptr cs:[rax + rax]
.label_214:
	nop	
	inc	rdi
.label_175:
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_169
	nop	
	cmp	rdi, rbp
	mov	rsp, rsp
	jne	.label_173
	jmp	.label_178
	nop	dword ptr [rax + rax]
.label_169:
	mov	r13, -1
	lea	rsi, [rsi]
	cmp	byte ptr [r11 + rdi], 0
	je	.label_181
.label_173:
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_189
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_193
	cmp	rbp, -1
	lea	rsi, [rsi]
	jne	.label_193
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
.label_193:
	mov	rsp, rsp
	cmp	rbx, rbp
	lea	rsi, [rsi]
	jbe	.label_231
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_232
	nop	dword ptr [rax + rax]
.label_189:
	nop	
	mov	dword ptr [rsp + 0x10c], 0
	lea	rdi, [rdi]
	jmp	.label_232
	nop	word ptr cs:[rax + rax]
.label_231:
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
	jne	.label_221
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
	je	.label_232
	jmp	.label_190
.label_221:
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
.label_232:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_154
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	nop	
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_276]]
.label_473:
	mov	rsp, rsp
	test	rdi, rdi
	mov	rbp, rbp
	jne	.label_161
	mov	rbp, rbp
	jmp	.label_165
.label_477:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	cmp	rbp, -1
	nop	
	je	.label_166
	lea	rdi, [rdi]
	test	rdi, rdi
	nop	
	jne	.label_172
	nop	
	cmp	rbp, 1
	je	.label_165
	xor	r13d, r13d
	jmp	.label_158
.label_466:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xc3], 0
	je	.label_184
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_190
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_197
	mov	al, r14b
	and	al, 1
	jne	.label_200
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x58], r10
	nop	
	jae	.label_206
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x27
.label_206:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	nop	
	jae	.label_215
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_215:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_226
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_226:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	add	rax, 3
	mov	rsp, rsp
	mov	r14b, 1
	mov	rbp, rbp
	mov	rcx, rax
	jmp	.label_224
.label_467:
	mov	rbp, rbp
	mov	bl, 0x62
	mov	rsp, rsp
	jmp	.label_238
.label_468:
	lea	rsi, [rsi]
	mov	cl, 0x74
	jmp	.label_213
.label_469:
	mov	rsp, rsp
	mov	bl, 0x76
	nop	
	jmp	.label_238
.label_470:
	mov	bl, 0x66
	jmp	.label_238
.label_471:
	lea	rsi, [rsi]
	mov	cl, 0x72
	jmp	.label_213
.label_474:
	mov	al, 1
	mov	qword ptr [rsp + 0x68], rax
	lea	rdi, [rdi]
	cmp	r9d, 2
	jne	.label_247
	cmp	byte ptr [rsp + 0xe7], 0
	nop	
	jne	.label_248
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
	jae	.label_274
	nop	
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_274:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_264
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x5c
.label_264:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_272
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_272:
	add	qword ptr [rsp + 0x58], 3
	xor	r14d, r14d
.label_247:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_158
.label_475:
	cmp	r9d, 5
	lea	rdi, [rdi]
	je	.label_164
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_161
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_161
	mov	rbp, rbp
	jmp	.label_177
.label_476:
	lea	rdi, [rdi]
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_179
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_185
	lea	rdi, [rdi]
	jmp	.label_191
.label_154:
	mov	qword ptr [rsp + 0x80], r9
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x43], r8b
	mov	qword ptr [rsp + 0x110], r10
	cmp	qword ptr [rsp + 0xb8], 1
	jne	.label_195
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
.label_168:
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
	ja	.label_223
	lea	rdi, [rdi]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_223
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_158
.label_166:
	test	rdi, rdi
	jne	.label_239
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_239
.label_165:
	mov	dl, 1
.label_472:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x66], 0
	lea	rsi, [rsi]
	je	.label_244
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, dl
	mov	rsp, rsp
	jmp	.label_158
.label_184:
	cmp	dword ptr [rsp + 0x3c], 0
	jne	.label_214
	jmp	.label_161
.label_179:
	cmp	byte ptr [rsp + 0x57], 0
	mov	cl, r15b
	je	.label_213
.label_185:
	xor	eax, eax
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_159
.label_213:
	cmp	byte ptr [rsp + 0x66], 0
	mov	bl, cl
	lea	rdi, [rdi]
	je	.label_253
.label_238:
	xor	eax, eax
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc3], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_158
	lea	rsi, [rsi]
	jmp	.label_192
.label_195:
	mov	qword ptr [rsp + 0x98], 0
	cmp	rbp, -1
	jne	.label_263
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
.label_263:
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
.label_225:
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
	je	.label_180
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	movabs	rsi, 0x20000002b
	je	.label_187
	lea	rsi, [rsi]
	cmp	rbp, -2
	nop	
	mov	rdi, qword ptr [rsp + 0xa8]
	je	.label_198
	lea	rsi, [rsi]
	cmp	rbp, 1
	seta	al
	lea	rdi, [rdi]
	and	al, byte ptr [rsp + 0x77]
	movzx	eax, al
	nop	
	cmp	eax, 1
	jne	.label_205
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	lea	rax, [rcx + rax]
	nop	
	mov	ecx, 1
	nop	
.label_230:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_222
	lea	rdi, [rdi]
	bt	rsi, rdx
	jb	.label_245
.label_222:
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	cmp	rcx, rbp
	jb	.label_230
.label_205:
	nop	
	mov	edi, dword ptr [rsp + 0xc4]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	nop	
	jne	.label_237
	xor	r13d, r13d
.label_237:
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
	je	.label_225
	mov	rsp, rsp
	jmp	.label_168
.label_239:
	lea	rsi, [rsi]
	mov	rbp, -1
	mov	rbp, rbp
	xor	r13d, r13d
	jmp	.label_158
.label_164:
	cmp	dword ptr [rsp + 0x44], 0
	lea	rdi, [rdi]
	je	.label_161
	lea	rcx, [rdi + 2]
	mov	rsp, rsp
	cmp	rcx, rbp
	jae	.label_161
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_161
	lea	rsi, [rsi]
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	edx, 0x3e
	ja	.label_261
	nop	
	movabs	rsi, 0x7000a38200000000
	mov	rsp, rsp
	bt	rsi, rdx
	mov	rsp, rsp
	jae	.label_218
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_269
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_273
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rsi], 0x3f
.label_273:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_157
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x22
.label_157:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_235
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rsi + rax], 0x22
.label_235:
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
	jmp	.label_158
.label_161:
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_158:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x65], 0
	lea	rsi, [rsi]
	je	.label_202
	cmp	qword ptr [rsp + 0x150], 0
	mov	rsp, rsp
	jne	.label_209
	lea	rsi, [rsi]
	jmp	.label_212
.label_202:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_212
.label_209:
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
	jne	.label_217
	mov	rcx, qword ptr [rsp + 0x150]
	nop	
	and	esi, dword ptr [rcx + rdx*4]
	mov	rsp, rsp
	jmp	.label_227
	nop	word ptr cs:[rax + rax]
.label_212:
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rdi, [rdi]
	test	cl, cl
.label_227:
	mov	rbp, rbp
	mov	bl, r15b
	je	.label_159
	mov	rsp, rsp
	jmp	.label_192
.label_217:
	mov	bl, r15b
.label_192:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_190
	nop	
	cmp	r9d, 2
	jne	.label_242
	lea	rdi, [rdi]
	mov	al, r14b
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_242
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_262
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_262:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	cmp	rax, r10
	jae	.label_251
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_251:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_236
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_236:
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_242:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_258
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x5c
.label_258:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	jmp	.label_170
.label_172:
	xor	r13d, r13d
	nop	
	jmp	.label_158
.label_223:
	mov	rsp, rsp
	add	rax, rdi
	mov	qword ptr [rsp + 0xe8], rax
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_268
	nop	dword ptr [rax + rax]
.label_162:
	inc	qword ptr [rsp + 0x58]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_268:
	test	cl, cl
	je	.label_275
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x10c]
	test	dl, 1
	mov	rbp, rbp
	je	.label_155
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_163
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x5c
.label_163:
	lea	rsi, [rsi]
	inc	qword ptr [rsp + 0x58]
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_155
	nop	dword ptr [rax]
.label_275:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_190
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_186
	mov	al, r14b
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_186
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_216
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rdx], 0x27
.label_216:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	inc	rax
	cmp	rax, r10
	jae	.label_203
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], 0x24
.label_203:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_171
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rdx + rax], 0x27
.label_171:
	mov	rsp, rsp
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_186:
	cmp	qword ptr [rsp + 0x58], r10
	lea	rsi, [rsi]
	jae	.label_228
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rax + rdx], 0x5c
.label_228:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_234
	mov	dl, r15b
	shr	dl, 6
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], dl
.label_234:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_243
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
.label_243:
	nop	
	add	qword ptr [rsp + 0x58], 3
	mov	rbp, rbp
	and	r15b, 7
	nop	
	or	r15b, 0x30
	mov	rsp, rsp
	mov	al, 1
.label_155:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xe8], rdx
	jbe	.label_159
	lea	rsi, [rsi]
	test	r14b, 1
	je	.label_256
	mov	bl, al
	nop	
	and	bl, 1
	lea	rdi, [rdi]
	jne	.label_256
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_259
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_259:
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	inc	rsi
	mov	rsp, rsp
	cmp	rsi, r10
	lea	rsi, [rsi]
	jae	.label_266
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdi + rsi], 0x27
	mov	rbp, rbp
	mov	rdi, rbx
.label_266:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_256:
	nop	
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_162
	mov	rsi, qword ptr [rsp + 0xb0]
	nop	
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rsi + rdi], r15b
	lea	rdi, [rdi]
	mov	rdi, rbx
	jmp	.label_162
	nop	word ptr cs:[rax + rax]
.label_159:
	test	r14b, 1
	lea	rsi, [rsi]
	je	.label_174
	mov	rsp, rsp
	and	al, 1
	jne	.label_174
	cmp	qword ptr [rsp + 0x58], r10
	mov	rsp, rsp
	jae	.label_271
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_271:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_199
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_199:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_174:
	mov	rsp, rsp
	mov	bl, r15b
.label_170:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_260
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], bl
.label_260:
	nop	
	inc	qword ptr [rsp + 0x58]
	nop	
	shl	r13b, 7
	mov	rsp, rsp
	sar	r13b, 7
	and	r13b, r8b
	mov	rbp, rbp
	mov	r8b, r13b
	jmp	.label_214
.label_197:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	jmp	.label_224
.label_200:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
.label_224:
	lea	rsi, [rsi]
	cmp	rcx, r10
	lea	rsi, [rsi]
	jae	.label_229
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax + rcx], 0x5c
.label_229:
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
	je	.label_153
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_220
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	cmp	edx, 9
	lea	rsi, [rsi]
	ja	.label_233
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_246
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x30
.label_246:
	lea	rsi, [rsi]
	lea	rdx, [rcx + 2]
	lea	rdi, [rdi]
	cmp	rdx, r10
	nop	
	jae	.label_249
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rdx], 0x30
.label_249:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x58], rcx
	jmp	.label_158
.label_153:
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_158
.label_220:
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	
	jmp	.label_158
.label_233:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_158
.label_187:
	xor	r13d, r13d
.label_180:
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_168
.label_198:
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	rbp, rcx
	lea	rsi, [rsi]
	jbe	.label_270
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
.label_160:
	cmp	byte ptr [r11 + rcx], 0
	nop	
	je	.label_156
	mov	rbp, rbp
	lea	rcx, [rax + rdi + 1]
	nop	
	inc	rax
	mov	rbp, rbp
	cmp	rcx, rbp
	mov	rsp, rsp
	jb	.label_160
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_168
.label_270:
	mov	rsp, rsp
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_168
.label_156:
	nop	
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_168
.label_261:
	xor	r13d, r13d
	jmp	.label_158
.label_218:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_158
.label_178:
	nop	
	mov	r13, rdi
.label_181:
	mov	rsp, rsp
	cmp	r9d, 2
	mov	rsp, rsp
	setne	al
	cmp	qword ptr [rsp + 0x58], 0
	lea	rsi, [rsi]
	setne	dl
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_194
	mov	rsp, rsp
	or	al, dl
	mov	rbp, rbp
	je	.label_208
.label_194:
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
	je	.label_210
	mov	rsp, rsp
	or	al, dl
	lea	rsi, [rsi]
	jne	.label_210
	test	r8b, 1
	mov	rbp, rbp
	jne	.label_267
	cmp	qword ptr [rsp + 0xd8], 0
	je	.label_210
	test	r10, r10
	mov	r15d, r9d
	mov	rbp, rbp
	mov	al, bl
	nop	
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0xd8]
	lea	rsi, [rsi]
	je	.label_188
.label_210:
	mov	rdx, qword ptr [rsp + 0x20]
	test	rdx, rdx
	je	.label_241
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rsi, [rsi]
	jne	.label_241
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	test	al, al
	je	.label_241
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_254:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_250
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rsi], al
.label_250:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	mov	rbp, rbp
	jne	.label_254
.label_241:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_257
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0
	lea	rdi, [rdi]
	jmp	.label_257
.label_244:
	lea	rdi, [rdi]
	mov	r9d, 2
	nop	
	jmp	.label_190
.label_245:
	mov	rsp, rsp
	mov	r9d, 2
	nop	
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rdi, [rdi]
	jmp	.label_190
.label_208:
	nop	
	mov	rbp, r13
	jmp	.label_190
.label_253:
	lea	rdi, [rdi]
	mov	r9d, 2
.label_190:
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
.label_204:
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
.label_257:
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
	jmp	.label_204
.label_248:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_190
.label_191:
	mov	r9d, 2
	lea	rsi, [rsi]
	jmp	.label_190
.label_177:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_190
.label_269:
	lea	rsi, [rsi]
	mov	r9d, 5
	mov	rbp, rbp
	jmp	.label_190
.label_211:
	nop	
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405140
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
	#Procedure 0x405280
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
	je	.label_277
	mov	qword ptr [rax], rbx
.label_277:
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
	#Procedure 0x4053d0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_278
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_279:
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
	jl	.label_279
.label_278:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_281
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_282]], OFFSET FLAT:slot0
.label_281:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_280
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_280:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405490
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x4054a0

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
	js	.label_285
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_286
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_289
.label_286:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_287
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
	jne	.label_284
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_284:
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
.label_289:
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
	ja	.label_283
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
	je	.label_288
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_288:
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
.label_283:
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
.label_285:
	lea	rdi, [rdi]
	call	abort
.label_287:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x405710
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405720
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
	#Procedure 0x405750
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
	#Procedure 0x405780
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
	je	.label_290
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
.label_290:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405810
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
	je	.label_291
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
.label_291:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058b0
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
	je	.label_292
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
.label_292:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405940
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
	je	.label_293
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
.label_293:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4059b0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_294]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_295]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_296]]
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
	#Procedure 0x405a50
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_294]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_295]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_296]]
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
	#Procedure 0x405af0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_294]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_295]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_296]]
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
	#Procedure 0x405b60
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_294]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_295]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_296]]
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
	#Procedure 0x405bd0
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
	je	.label_297
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
.label_297:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405cb0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_294]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_295]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_296]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_298
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_298
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
.label_298:
	nop	
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405d40
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_294]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_295]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_296]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_299
	test	rdx, rdx
	je	.label_299
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
.label_299:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405dd0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_294]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_295]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_296]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_300
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_300
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
.label_300:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e70
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_294]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_295]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_296]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_301
	test	rsi, rsi
	je	.label_301
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
.label_301:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f10
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f20
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
	#Procedure 0x405f40

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
	#Procedure 0x405f60

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
	#Procedure 0x405f90

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
	jne	.label_304
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_302
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_303
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_303
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_303
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_303
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_303
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_303
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_304
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_304
.label_302:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_303
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_303
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_303
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_303
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_303
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_303
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_305
.label_303:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_304:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_305:
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_304
	mov	eax, OFFSET FLAT:.str.18_0
	jmp	.label_304
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406100

	.globl strintcmp
	.type strintcmp, @function
strintcmp:
	movzx	ecx, byte ptr [rdi]
	mov	dl, byte ptr [rsi]
	cmp	ecx, 0x2d
	jne	.label_306
	nop	word ptr [rax + rax]
.label_309:
	movzx	ecx, byte ptr [rdi + 1]
	inc	rdi
	cmp	ecx, 0x30
	je	.label_309
	movzx	r8d, dl
	cmp	r8d, 0x2d
	jne	.label_312
	nop	word ptr [rax + rax]
.label_315:
	movzx	eax, byte ptr [rsi + 1]
	inc	rsi
	cmp	eax, 0x30
	je	.label_315
	lea	edx, [rcx - 0x30]
	cmp	edx, 9
	ja	.label_321
	movzx	r8d, cl
	movzx	edx, al
	cmp	edx, r8d
	jne	.label_324
	nop	dword ptr [rax + rax]
.label_334:
	mov	r9b, byte ptr [rdi + 1]
	inc	rdi
	movzx	eax, byte ptr [rsi + 1]
	inc	rsi
	movzx	ecx, r9b
	cmp	eax, ecx
	jne	.label_307
	lea	edx, [rcx - 0x30]
	cmp	edx, 0xa
	jb	.label_334
	jmp	.label_307
.label_306:
	movzx	r8d, dl
	cmp	r8d, 0x2d
	jne	.label_308
	inc	rsi
	nop	dword ptr [rax + rax]
.label_314:
	movzx	edx, byte ptr [rsi]
	inc	rsi
	cmp	edx, 0x30
	je	.label_314
	add	edx, -0x30
	mov	eax, 1
	cmp	edx, 0xa
	jb	.label_317
	movzx	eax, cl
	cmp	eax, 0x30
	jne	.label_330
	inc	rdi
	nop	word ptr [rax + rax]
.label_328:
	movzx	ecx, byte ptr [rdi]
	inc	rdi
	cmp	ecx, 0x30
	je	.label_328
.label_330:
	movzx	eax, cl
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	and	eax, 1
	ret	
.label_312:
	add	ecx, -0x30
	mov	eax, 0xffffffff
	cmp	ecx, 0xa
	jb	.label_317
	cmp	r8d, 0x30
	jne	.label_335
	inc	rsi
	nop	word ptr cs:[rax + rax]
.label_332:
	movzx	edx, byte ptr [rsi]
	inc	rsi
	cmp	edx, 0x30
	je	.label_332
.label_335:
	movzx	eax, dl
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	ret	
.label_308:
	movzx	eax, cl
	cmp	eax, 0x30
	jne	.label_316
	nop	
.label_318:
	movzx	ecx, byte ptr [rdi + 1]
	inc	rdi
	cmp	ecx, 0x30
	je	.label_318
.label_316:
	cmp	r8d, 0x30
	jne	.label_319
	nop	word ptr cs:[rax + rax]
.label_333:
	movzx	edx, byte ptr [rsi + 1]
	inc	rsi
	cmp	edx, 0x30
	je	.label_333
.label_319:
	movzx	r8d, cl
	lea	eax, [r8 - 0x30]
	cmp	eax, 9
	ja	.label_311
	movzx	r9d, dl
	movzx	eax, cl
	cmp	eax, r9d
	jne	.label_311
	nop	word ptr cs:[rax + rax]
.label_310:
	mov	cl, byte ptr [rdi + 1]
	inc	rdi
	movzx	edx, byte ptr [rsi + 1]
	inc	rsi
	movzx	r8d, cl
	cmp	r8d, edx
	jne	.label_311
	lea	eax, [r8 - 0x30]
	cmp	eax, 0xa
	jb	.label_310
.label_311:
	movzx	eax, dl
	movzx	edx, cl
	add	edx, -0x30
	xor	ecx, ecx
	cmp	edx, 9
	ja	.label_313
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_323:
	movzx	edx, byte ptr [rdi + rcx + 1]
	inc	rcx
	add	edx, -0x30
	cmp	edx, 0xa
	jb	.label_323
.label_313:
	lea	edi, [rax - 0x30]
	xor	edx, edx
	cmp	edi, 9
	ja	.label_325
	xor	edx, edx
	nop	dword ptr [rax]
.label_327:
	movzx	edi, byte ptr [rsi + rdx + 1]
	inc	rdx
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_327
.label_325:
	cmp	rcx, rdx
	jne	.label_331
	sub	r8d, eax
	xor	eax, eax
	test	rcx, rcx
	jmp	.label_322
.label_331:
	mov	ecx, 0xffffffff
	mov	eax, 1
	cmovb	eax, ecx
	ret	
.label_321:
	mov	r9b, cl
	jmp	.label_307
.label_324:
	mov	r9b, cl
.label_307:
	movzx	r8d, al
	movzx	eax, r9b
	add	eax, -0x30
	xor	edx, edx
	cmp	eax, 9
	ja	.label_337
	xor	edx, edx
	nop	dword ptr [rax]
.label_326:
	movzx	eax, byte ptr [rdi + rdx + 1]
	inc	rdx
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_326
.label_337:
	lea	edi, [r8 - 0x30]
	xor	eax, eax
	cmp	edi, 9
	ja	.label_320
	xor	eax, eax
	nop	dword ptr [rax]
.label_329:
	movzx	edi, byte ptr [rsi + rax + 1]
	inc	rax
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_329
.label_320:
	cmp	rdx, rax
	jne	.label_336
	sub	r8d, ecx
	xor	eax, eax
	test	rdx, rdx
.label_322:
	cmovne	eax, r8d
.label_317:
	ret	
.label_336:
	mov	ecx, 1
	mov	eax, 0xffffffff
	cmovb	eax, ecx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406380

	.globl verror
	.type verror, @function
verror:
	mov	rbp, rbp
	mov	r9, rcx
	mov	rax, rdx
	xor	edx, edx
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rbp, rbp
	mov	r8, rax
	jmp	verror_at_line
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4063a0

	.globl verror_at_line
	.type verror_at_line, @function
verror_at_line:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	nop	
	mov	r15d, ecx
	mov	rsp, rsp
	mov	rbp, rdx
	mov	r14d, esi
	mov	r12d, edi
	mov	rdi, r8
	mov	rsi, r9
	call	xvasprintf
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_339
	lea	rsi, [rsi]
	test	rbp, rbp
	mov	rsp, rsp
	je	.label_338
	lea	rsi, [rsi]
	mov	r8d, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, r12d
	lea	rsi, [rsi]
	mov	esi, r14d
	mov	rdx, rbp
	mov	rsp, rsp
	mov	ecx, r15d
	mov	r9, rbx
	call	error_at_line
	jmp	.label_340
.label_338:
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_1
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, r12d
	nop	
	mov	esi, r14d
	lea	rdi, [rdi]
	mov	rcx, rbx
	lea	rdi, [rdi]
	call	error
.label_340:
	mov	rdi, rbx
	nop	
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	jmp	free
.label_339:
	nop	
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.1_2
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rbp, rbp
	call	error
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406480
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
	jb	.label_341
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_342
	test	rax, rax
	je	.label_341
.label_342:
	nop	
	pop	rbx
	ret	
.label_341:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4064d0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_343
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_344
.label_343:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_344:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406500
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
	jb	.label_346
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_345
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_345
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_345:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_347
	test	rax, rax
	je	.label_346
.label_347:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_346:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406580

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_348
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_348
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_348:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_349
	test	rax, rax
	nop	
	je	.label_350
.label_349:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_350:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4065d0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_355
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_351
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_357
.label_355:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_354
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_354:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_356
.label_357:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_353
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_353
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_353:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_352
	test	rax, rax
	mov	rbp, rbp
	je	.label_351
.label_352:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_351:
	call	xalloc_die
.label_356:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4066b0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_358
	test	rax, rax
	mov	rbp, rbp
	je	.label_359
.label_358:
	pop	rbx
	ret	
.label_359:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4066d0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_363
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_364
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_362
	call	free
	xor	eax, eax
	jmp	.label_360
.label_363:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_361
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_362:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_360
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_361
.label_360:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_361:
	mov	rbp, rbp
	call	xalloc_die
.label_364:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406760
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
	je	.label_365
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_366
.label_365:
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
.label_366:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067c0
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
	jb	.label_367
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_367
	pop	rcx
	ret	
.label_367:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x4067f0

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
	je	.label_369
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_368
.label_369:
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
.label_368:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406850
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
	je	.label_370
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_371
.label_370:
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
.label_371:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x4068b0

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
	#Procedure 0x406900

	.globl xvasprintf
	.type xvasprintf, @function
xvasprintf:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15, rsi
	mov	rbp, rbp
	mov	rax, rdi
	xor	ebp, ebp
	jmp	.label_372
	nop	word ptr cs:[rax + rax]
.label_373:
	lea	rdi, [rdi]
	inc	rbp
.label_372:
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax + rbp*2]
	cmp	ecx, 0x25
	jne	.label_385
	movzx	ecx, byte ptr [rax + rbp*2 + 1]
	nop	
	cmp	ecx, 0x73
	je	.label_373
	jmp	.label_377
.label_385:
	mov	rbp, rbp
	test	cl, cl
	lea	rdi, [rdi]
	jne	.label_377
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [r15]
	movaps	xmmword ptr [rsp], xmm0
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_381
	mov	r14d, dword ptr [rsp]
	xor	ebx, ebx
	mov	rsp, rsp
	mov	r12, rbp
	nop	dword ptr [rax]
.label_376:
	mov	rsp, rsp
	cmp	r14d, 0x28
	lea	rsi, [rsi]
	ja	.label_378
	movsxd	rax, r14d
	add	rax, qword ptr [rsp + 0x10]
	add	r14d, 8
	mov	dword ptr [rsp], r14d
	jmp	.label_380
	nop	
.label_378:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rcx
.label_380:
	mov	rdi, qword ptr [rax]
	call	strlen
	add	rax, rbx
	lea	rdi, [rdi]
	cmp	rax, rbx
	mov	rbx, -1
	cmovae	rbx, rax
	lea	rdi, [rdi]
	dec	r12
	mov	rbp, rbp
	jne	.label_376
	lea	rdi, [rdi]
	test	rbx, -0x80000000
	je	.label_382
	mov	rbp, rbp
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0x4b
	mov	rsp, rsp
	xor	r14d, r14d
	lea	rdi, [rdi]
	jmp	.label_374
.label_377:
	lea	rdi, [rsp + 0x20]
	mov	esi, 1
	mov	rdx, rax
	mov	rcx, r15
	call	__vasprintf_chk
	test	eax, eax
	js	.label_383
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_374
.label_383:
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	r14d, r14d
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0xc
	jne	.label_374
	lea	rdi, [rdi]
	call	xalloc_die
.label_381:
	nop	
	mov	edi, 1
	nop	
	call	xmalloc
	mov	rsp, rsp
	mov	r14, rax
	nop	
	mov	rbx, r14
	mov	rbp, rbp
	mov	byte ptr [rbx], 0
	jmp	.label_374
.label_382:
	lea	rsi, [rsi]
	inc	rax
	mov	rdi, rax
	call	xmalloc
	lea	rsi, [rsi]
	mov	r14, rax
	mov	rbx, r14
	nop	word ptr cs:[rax + rax]
.label_375:
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [r15]
	lea	rsi, [rsi]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_379
	nop	
	mov	rax, rcx
	add	rax, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	dword ptr [r15], ecx
	jmp	.label_384
	nop	word ptr cs:[rax + rax]
.label_379:
	mov	rax, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [r15 + 8], rcx
.label_384:
	mov	r12, qword ptr [rax]
	mov	rdi, r12
	mov	rsp, rsp
	call	strlen
	mov	rsp, rsp
	mov	r13, rax
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r13
	mov	rbp, rbp
	call	memcpy
	add	rbx, r13
	mov	rsp, rsp
	dec	rbp
	nop	
	jne	.label_375
	mov	byte ptr [rbx], 0
.label_374:
	mov	rax, r14
	add	rsp, 0x28
	nop	
	pop	rbx
	nop	
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406b40

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_386
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_387
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
	je	.label_387
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
.label_386:
	mov	ecx, 1
.label_387:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406bb0

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
	je	.label_388
	nop	
	cmp	r15, -2
	jb	.label_388
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_388
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_388:
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
	#Procedure 0x406c40

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
	jne	.label_389
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_390
	test	cl, cl
	mov	rsp, rsp
	jne	.label_390
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_390
.label_389:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_390
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_390:
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
	#Procedure 0x406cd0

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
	je	.label_392
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_391
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_393
.label_391:
	nop	
	mov	esi, OFFSET FLAT:.str.1_4
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_392
.label_393:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_392:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406d20

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
	je	.label_394
	nop	
	mov	rax, rcx
.label_394:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d60

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
	js	.label_395
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_397
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
	je	.label_395
.label_397:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_395
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_396
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_396:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_395:
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
	#Procedure 0x406e10

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_398
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_398
	test	byte ptr [rbx + 1], 1
	je	.label_398
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_398:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406e50

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
	jne	.label_399
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_399
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_400
.label_399:
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
.label_400:
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
	je	.label_401
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_401:
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
	#Procedure 0x406f00

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