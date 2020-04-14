	.section	.text
	.align	16
	#Procedure 0x401530
	.globl usage
	.type usage, @function
usage:

	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_22
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_35
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_38
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_36
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_9
	mov	ecx, OFFSET FLAT:label_10
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_20
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_20
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_20:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_10
	mov	ecx, OFFSET FLAT:label_17
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_17
	mov	ecx, OFFSET FLAT:label_18
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_22:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [rip + program_name]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401880

	.globl main
	.type main, @function
main:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	ebx, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_42
	call	setlocale
	mov	edi, OFFSET FLAT:label_39
	mov	esi, OFFSET FLAT:label_40
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_39
	call	textdomain
	mov	dword ptr [rip + exit_failure],  2
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	qword ptr [rip + argv],  r14
	mov	dword ptr [rip + argc],  ebx
	mov	dword ptr [rip + pos],  1
	mov	eax, 1
	cmp	ebx, 2
	jl	.label_41
	dec	ebx
	mov	edi, ebx
	call	posixtest
	mov	ecx, dword ptr [rip + pos]
	cmp	ecx, dword ptr [rip + argc]
	jne	.label_44
	movzx	eax, al
	xor	eax, 1
.label_41:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_44:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_43
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rip + pos]
	mov	rcx, qword ptr [rip + argv]
	mov	rdi, qword ptr [rcx + rax*8]
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	test_syntax_error
	nop	
	.section	.text
	.align	16
	#Procedure 0x401950

	.globl posixtest
	.type posixtest, @function
posixtest:
	push	rbp
	push	rbx
	push	rax
	lea	eax, [rdi - 1]
	cmp	eax, 3
	ja	.label_58
	jmp	qword ptr [(rax * 8) + label_59]
.label_579:
	movsxd	rax, dword ptr [rip + pos]
	lea	ecx, [rax + 1]
	mov	dword ptr [rip + pos],  ecx
	mov	rcx, qword ptr [rip + argv]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	byte ptr [rax], 0
	setne	bpl
	jmp	.label_49
.label_581:
	call	three_arguments
	mov	bpl, al
	jmp	.label_49
.label_58:
	test	edi, edi
	jle	.label_46
	mov	eax, dword ptr [rip + pos]
	jmp	.label_47
.label_580:
	movsxd	rax, dword ptr [rip + pos]
	mov	rcx, qword ptr [rip + argv]
	mov	rdx, qword ptr [rcx + rax*8]
	mov	bl, byte ptr [rdx]
	cmp	bl, 0x2d
	je	.label_52
	cmp	bl, 0x21
	jne	.label_55
	cmp	byte ptr [rdx + 1], 0
	jne	.label_55
	lea	edx, [rax + 2]
	mov	dword ptr [rip + pos],  edx
	mov	rax, qword ptr [rcx + rax*8 + 8]
	cmp	byte ptr [rax], 0
	sete	bpl
	jmp	.label_49
.label_582:
	mov	eax, dword ptr [rip + pos]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rip + argv]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	bl, byte ptr [rsi]
	cmp	bl, 0x28
	je	.label_62
	cmp	bl, 0x21
	jne	.label_47
	cmp	byte ptr [rsi + 1], 0
	jne	.label_47
	inc	eax
	mov	dword ptr [rip + pos],  eax
	cmp	eax, dword ptr [rip + argc]
	jge	.label_48
	call	three_arguments
	mov	bpl, al
	xor	bpl, 1
	jmp	.label_49
.label_52:
	cmp	byte ptr [rdx + 1], 0
	je	.label_55
	cmp	byte ptr [rdx + 2], 0
	jne	.label_55
	call	unary_operator
	mov	bpl, al
	jmp	.label_49
.label_62:
	cmp	byte ptr [rsi + 1], 0
	jne	.label_47
	mov	rsi, qword ptr [rdx + rcx*8 + 0x18]
	cmp	byte ptr [rsi], 0x29
	jne	.label_47
	cmp	byte ptr [rsi + 1], 0
	je	.label_61
.label_47:
	cmp	eax, dword ptr [rip + argc]
	jge	.label_63
	xor	ebp, ebp
	jmp	.label_45
	nop	word ptr cs:[rax + rax]
.label_50:
	inc	eax
	mov	dword ptr [rip + pos],  eax
.label_45:
	call	term
	mov	ebx, eax
	jmp	.label_51
	nop	word ptr cs:[rax + rax]
.label_60:
	inc	eax
	mov	dword ptr [rip + pos],  eax
	call	term
	and	bl, al
.label_51:
	mov	eax, dword ptr [rip + pos]
	mov	ecx, dword ptr [rip + argc]
	cmp	eax, ecx
	jge	.label_56
	movsxd	rdx, eax
	mov	rsi, qword ptr [rip + argv]
	mov	rdx, qword ptr [rsi + rdx*8]
	cmp	byte ptr [rdx], 0x2d
	jne	.label_56
	cmp	byte ptr [rdx + 1], 0x61
	jne	.label_56
	cmp	byte ptr [rdx + 2], 0
	je	.label_60
	nop	
.label_56:
	or	bpl, bl
	cmp	eax, ecx
	jge	.label_54
	movsxd	rcx, eax
	mov	rdx, qword ptr [rip + argv]
	mov	rcx, qword ptr [rdx + rcx*8]
	cmp	byte ptr [rcx], 0x2d
	jne	.label_54
	cmp	byte ptr [rcx + 1], 0x6f
	jne	.label_54
	cmp	byte ptr [rcx + 2], 0
	je	.label_50
.label_54:
	and	bpl, 1
.label_49:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_61:
	lea	rax, [rcx + 1]
	mov	dword ptr [rip + pos],  eax
	mov	rax, qword ptr [rdx + rcx*8 + 8]
	mov	bl, byte ptr [rax]
	cmp	bl, 0x2d
	je	.label_53
	cmp	bl, 0x21
	jne	.label_48
	cmp	byte ptr [rax + 1], 0
	jne	.label_48
	mov	rax, rcx
	add	rax, 3
	mov	dword ptr [rip + pos],  eax
	mov	rcx, qword ptr [rdx + rcx*8 + 0x10]
	cmp	byte ptr [rcx], 0
	sete	bpl
	jmp	.label_57
.label_53:
	cmp	byte ptr [rax + 1], 0
	je	.label_48
	cmp	byte ptr [rax + 2], 0
	jne	.label_48
	call	unary_operator
	mov	bpl, al
	mov	eax, dword ptr [rip + pos]
.label_57:
	inc	eax
	mov	dword ptr [rip + pos],  eax
	jmp	.label_49
.label_55:
	call	beyond
.label_63:
	call	beyond
.label_46:
	call	abort
.label_48:
	call	beyond
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ba0

	.globl test_syntax_error
	.type test_syntax_error, @function
test_syntax_error:
	sub	rsp, 0xd8
	mov	r10, rdi
	test	al, al
	je	.label_64
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_64:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	qword ptr [rsp + 0x28], rsi
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 8
	lea	rcx, [rsp]
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r10
	call	verror
	mov	edi, 2
	call	exit
	nop	
	.section	.text
	.align	16
	#Procedure 0x401c40

	.globl three_arguments
	.type three_arguments, @function
three_arguments:
	push	rbp
	push	r14
	push	rbx
	movsxd	r14, dword ptr [rip + pos]
	mov	rbp, qword ptr [rip + argv]
	mov	rbx, qword ptr [rbp + r14*8 + 8]
	mov	rdi, rbx
	call	binop
	test	al, al
	je	.label_78
	xor	edi, edi
	call	binary_operator
	mov	bpl, al
	jmp	.label_73
.label_78:
	mov	rax, qword ptr [rbp + r14*8]
	mov	cl, byte ptr [rax]
	cmp	cl, 0x28
	je	.label_81
	cmp	cl, 0x21
	jne	.label_68
	cmp	byte ptr [rax + 1], 0
	je	.label_65
	cmp	cl, 0x28
	jne	.label_68
.label_81:
	cmp	byte ptr [rax + 1], 0
	jne	.label_68
	mov	rax, qword ptr [rbp + r14*8 + 0x10]
	cmp	byte ptr [rax], 0x29
	jne	.label_68
	cmp	byte ptr [rax + 1], 0
	je	.label_71
.label_68:
	cmp	byte ptr [rbx], 0x2d
	jne	.label_72
	cmp	byte ptr [rbx + 1], 0x61
	jne	.label_74
	cmp	byte ptr [rbx + 2], 0
	je	.label_75
.label_74:
	cmp	byte ptr [rbx + 1], 0x6f
	jne	.label_72
	cmp	byte ptr [rbx + 2], 0
	jne	.label_72
.label_75:
	cmp	r14d, dword ptr [rip + argc]
	jge	.label_66
	xor	ebp, ebp
	jmp	.label_79
	nop	word ptr cs:[rax + rax]
.label_80:
	inc	eax
	mov	dword ptr [rip + pos],  eax
.label_79:
	call	term
	mov	ebx, eax
	jmp	.label_83
	nop	word ptr cs:[rax + rax]
.label_76:
	inc	eax
	mov	dword ptr [rip + pos],  eax
	call	term
	and	bl, al
.label_83:
	mov	eax, dword ptr [rip + pos]
	mov	ecx, dword ptr [rip + argc]
	cmp	eax, ecx
	jge	.label_70
	movsxd	rdx, eax
	mov	rsi, qword ptr [rip + argv]
	mov	rdx, qword ptr [rsi + rdx*8]
	cmp	byte ptr [rdx], 0x2d
	jne	.label_70
	cmp	byte ptr [rdx + 1], 0x61
	jne	.label_70
	cmp	byte ptr [rdx + 2], 0
	je	.label_76
	nop	
.label_70:
	or	bpl, bl
	cmp	eax, ecx
	jge	.label_77
	movsxd	rcx, eax
	mov	rdx, qword ptr [rip + argv]
	mov	rcx, qword ptr [rdx + rcx*8]
	cmp	byte ptr [rcx], 0x2d
	jne	.label_77
	cmp	byte ptr [rcx + 1], 0x6f
	jne	.label_77
	cmp	byte ptr [rcx + 2], 0
	je	.label_80
.label_77:
	and	bpl, 1
.label_73:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_65:
	lea	rax, [r14 + 1]
	mov	dword ptr [rip + pos],  eax
	cmp	eax, dword ptr [rip + argc]
	jge	.label_66
	mov	al, byte ptr [rbx]
	cmp	al, 0x2d
	je	.label_69
	cmp	al, 0x21
	jne	.label_67
	cmp	byte ptr [rbx + 1], 0
	jne	.label_67
	mov	eax, r14d
	add	eax, 3
	mov	dword ptr [rip + pos],  eax
	mov	rax, qword ptr [rbp + r14*8 + 0x10]
	cmp	byte ptr [rax], 0
	sete	bpl
	xor	bpl, 1
	jmp	.label_73
.label_69:
	cmp	byte ptr [rbx + 1], 0
	je	.label_67
	cmp	byte ptr [rbx + 2], 0
	jne	.label_67
	call	unary_operator
	mov	bpl, al
	xor	bpl, 1
	jmp	.label_73
.label_71:
	cmp	byte ptr [rbx], 0
	setne	bpl
	lea	eax, [r14 + 3]
	mov	dword ptr [rip + pos],  eax
	jmp	.label_73
.label_72:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_82
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rip + pos]
	mov	rcx, qword ptr [rip + argv]
	mov	rdi, qword ptr [rcx + rax*8 + 8]
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	test_syntax_error
.label_66:
	call	beyond
.label_67:
	call	beyond
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e50

	.globl unary_operator
	.type unary_operator, @function
unary_operator:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x90
	movsxd	rcx, dword ptr [rip + pos]
	mov	rax, qword ptr [rip + argv]
	mov	rdx, qword ptr [rax + rcx*8]
	movsx	edx, byte ptr [rdx + 1]
	add	edx, -0x47
	cmp	edx, 0x33
	ja	.label_93
	jmp	qword ptr [(rdx * 8) + label_97]
.label_498:
	lea	edx, [rcx + 1]
	mov	dword ptr [rip + pos],  edx
	cmp	edx, dword ptr [rip + argc]
	jge	.label_85
	lea	ecx, [rcx + 2]
	mov	dword ptr [rip + pos],  ecx
	movsxd	rcx, edx
	mov	rsi, qword ptr [rax + rcx*8]
	lea	rdx, [rsp]
	mov	edi, 1
	call	__lxstat
	test	eax, eax
	je	.label_94
	xor	ebx, ebx
	jmp	.label_84
.label_497:
	lea	edx, [rcx + 1]
	mov	dword ptr [rip + pos],  edx
	cmp	edx, dword ptr [rip + argc]
	jge	.label_85
	lea	edx, [rcx + 2]
	mov	dword ptr [rip + pos],  edx
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	lea	rdx, [rsp]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	je	.label_92
	xor	ebx, ebx
	jmp	.label_84
.label_499:
	lea	edx, [rcx + 1]
	mov	dword ptr [rip + pos],  edx
	cmp	edx, dword ptr [rip + argc]
	jge	.label_85
	lea	edx, [rcx + 2]
	mov	dword ptr [rip + pos],  edx
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	lea	rdx, [rsp]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	je	.label_101
	xor	ebx, ebx
	jmp	.label_84
.label_500:
	lea	edx, [rcx + 1]
	mov	dword ptr [rip + pos],  edx
	cmp	edx, dword ptr [rip + argc]
	jge	.label_85
	lea	edx, [rcx + 2]
	mov	dword ptr [rip + pos],  edx
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	lea	rdx, [rsp]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	je	.label_100
	xor	ebx, ebx
	jmp	.label_84
.label_501:
	lea	edx, [rcx + 1]
	mov	dword ptr [rip + pos],  edx
	cmp	edx, dword ptr [rip + argc]
	jge	.label_85
	lea	edx, [rcx + 2]
	mov	dword ptr [rip + pos],  edx
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	lea	rdx, [rsp]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	je	.label_98
	xor	ebx, ebx
	jmp	.label_84
.label_502:
	lea	edx, [rcx + 1]
	mov	dword ptr [rip + pos],  edx
	cmp	edx, dword ptr [rip + argc]
	jge	.label_85
	lea	edx, [rcx + 2]
	mov	dword ptr [rip + pos],  edx
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	lea	rdx, [rsp]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	je	.label_106
	xor	ebx, ebx
	jmp	.label_84
.label_503:
	lea	edx, [rcx + 1]
	mov	dword ptr [rip + pos],  edx
	cmp	edx, dword ptr [rip + argc]
	jge	.label_85
	lea	edx, [rcx + 2]
	mov	dword ptr [rip + pos],  edx
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	lea	rdx, [rsp]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	je	.label_90
	xor	ebx, ebx
	jmp	.label_84
.label_504:
	lea	edx, [rcx + 1]
	mov	dword ptr [rip + pos],  edx
	cmp	edx, dword ptr [rip + argc]
	jge	.label_85
	lea	edx, [rcx + 2]
	mov	dword ptr [rip + pos],  edx
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	lea	rdx, [rsp]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	je	.label_96
	xor	ebx, ebx
	jmp	.label_84
.label_505:
	lea	edx, [rcx + 1]
	mov	dword ptr [rip + pos],  edx
	cmp	edx, dword ptr [rip + argc]
	jge	.label_85
	lea	edx, [rcx + 2]
	mov	dword ptr [rip + pos],  edx
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	lea	rdx, [rsp]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	jmp	.label_91
.label_506:
	lea	edx, [rcx + 1]
	mov	dword ptr [rip + pos],  edx
	cmp	edx, dword ptr [rip + argc]
	jge	.label_85
	lea	edx, [rcx + 2]
	mov	dword ptr [rip + pos],  edx
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	lea	rdx, [rsp]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	je	.label_105
	xor	ebx, ebx
	jmp	.label_84
.label_507:
	lea	edx, [rcx + 1]
	mov	dword ptr [rip + pos],  edx
	cmp	edx, dword ptr [rip + argc]
	jge	.label_85
	lea	ecx, [rcx + 2]
	mov	dword ptr [rip + pos],  ecx
	movsxd	rcx, edx
	mov	rsi, qword ptr [rax + rcx*8]
	lea	rdx, [rsp]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	je	.label_89
	xor	ebx, ebx
	jmp	.label_84
.label_508:
	lea	edx, [rcx + 1]
	mov	dword ptr [rip + pos],  edx
	cmp	edx, dword ptr [rip + argc]
	jge	.label_85
	lea	ecx, [rcx + 2]
	mov	dword ptr [rip + pos],  ecx
	movsxd	rcx, edx
	mov	rsi, qword ptr [rax + rcx*8]
	lea	rdx, [rsp]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	je	.label_95
	xor	ebx, ebx
	jmp	.label_84
.label_509:
	lea	edx, [rcx + 1]
	mov	dword ptr [rip + pos],  edx
	cmp	edx, dword ptr [rip + argc]
	jge	.label_85
	lea	ecx, [rcx + 2]
	mov	dword ptr [rip + pos],  ecx
	movsxd	rcx, edx
	mov	rax, qword ptr [rax + rcx*8]
	cmp	byte ptr [rax], 0
	setne	bl
	jmp	.label_84
.label_510:
	lea	edx, [rcx + 1]
	mov	dword ptr [rip + pos],  edx
	cmp	edx, dword ptr [rip + argc]
	jge	.label_85
	lea	edx, [rcx + 2]
	mov	dword ptr [rip + pos],  edx
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	lea	rdx, [rsp]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	je	.label_103
	xor	ebx, ebx
	jmp	.label_84
.label_511:
	lea	edx, [rcx + 1]
	mov	dword ptr [rip + pos],  edx
	cmp	edx, dword ptr [rip + argc]
	jge	.label_85
	lea	edx, [rcx + 2]
	mov	dword ptr [rip + pos],  edx
	mov	rdi, qword ptr [rax + rcx*8 + 8]
	mov	esi, 4
	jmp	.label_86
.label_512:
	lea	edx, [rcx + 1]
	mov	dword ptr [rip + pos],  edx
	cmp	edx, dword ptr [rip + argc]
	jge	.label_85
	lea	edx, [rcx + 2]
	mov	dword ptr [rip + pos],  edx
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	lea	rdx, [rsp]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	sete	al
	cmp	qword ptr [rsp + 0x30], 0
	setg	bl
	and	bl, al
	jmp	.label_84
.label_513:
	lea	edx, [rcx + 1]
	mov	dword ptr [rip + pos],  edx
	cmp	edx, dword ptr [rip + argc]
	jge	.label_85
	lea	ecx, [rcx + 2]
	mov	dword ptr [rip + pos],  ecx
	movsxd	rcx, edx
	mov	rdi, qword ptr [rax + rcx*8]
	call	find_int
	mov	r15, rax
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	ebx, ebx
	xor	esi, esi
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	cmp	rax, 0x7fffffff
	ja	.label_84
	cmp	dword ptr [r14], 0x22
	je	.label_84
	mov	edi, eax
	call	isatty
	test	eax, eax
	setne	bl
	jmp	.label_84
.label_514:
	lea	edx, [rcx + 1]
	mov	dword ptr [rip + pos],  edx
	cmp	edx, dword ptr [rip + argc]
	jge	.label_85
	add	ecx, 2
	mov	dword ptr [rip + pos],  ecx
	movsxd	rcx, edx
	mov	rsi, qword ptr [rax + rcx*8]
	lea	rdx, [rsp]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	je	.label_87
	xor	ebx, ebx
	jmp	.label_84
.label_515:
	lea	edx, [rcx + 1]
	mov	dword ptr [rip + pos],  edx
	cmp	edx, dword ptr [rip + argc]
	jge	.label_85
	lea	edx, [rcx + 2]
	mov	dword ptr [rip + pos],  edx
	mov	rdi, qword ptr [rax + rcx*8 + 8]
	mov	esi, 2
	jmp	.label_86
.label_516:
	lea	edx, [rcx + 1]
	mov	dword ptr [rip + pos],  edx
	cmp	edx, dword ptr [rip + argc]
	jge	.label_85
	lea	edx, [rcx + 2]
	mov	dword ptr [rip + pos],  edx
	mov	rdi, qword ptr [rax + rcx*8 + 8]
	mov	esi, 1
.label_86:
	call	euidaccess
	test	eax, eax
	jmp	.label_91
.label_517:
	lea	edx, [rcx + 1]
	mov	dword ptr [rip + pos],  edx
	cmp	edx, dword ptr [rip + argc]
	jge	.label_85
	lea	ecx, [rcx + 2]
	mov	dword ptr [rip + pos],  ecx
	movsxd	rcx, edx
	mov	rax, qword ptr [rax + rcx*8]
	cmp	byte ptr [rax], 0
	jmp	.label_91
.label_94:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0xa000
	jmp	.label_91
.label_92:
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	call	getegid
	cmp	eax, -1
	jne	.label_99
	cmp	dword ptr [rbx], 0
	je	.label_99
	xor	ebx, ebx
	jmp	.label_84
.label_101:
	mov	rax, qword ptr [rsp + 0x48]
	cmp	qword ptr [rsp + 0x58], rax
	jge	.label_104
	xor	ebx, ebx
	jmp	.label_84
.label_100:
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	call	geteuid
	cmp	eax, -1
	jne	.label_88
	cmp	dword ptr [rbx], 0
	je	.label_88
	xor	ebx, ebx
	jmp	.label_84
.label_98:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0xc000
	jmp	.label_91
.label_106:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0x6000
	jmp	.label_91
.label_90:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0x2000
	jmp	.label_91
.label_96:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0x4000
	jmp	.label_91
.label_105:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0x8000
	jmp	.label_91
.label_89:
	mov	bl, byte ptr [rsp + 0x19]
	and	bl, 4
	shr	bl, 2
	jmp	.label_84
.label_95:
	mov	bl, byte ptr [rsp + 0x19]
	and	bl, 2
	shr	bl, 1
	jmp	.label_84
.label_103:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0x1000
	jmp	.label_91
.label_87:
	mov	bl, byte ptr [rsp + 0x19]
	and	bl, 8
	shr	bl, 3
	jmp	.label_84
.label_99:
	cmp	eax, dword ptr [rsp + 0x20]
	jmp	.label_91
.label_88:
	cmp	eax, dword ptr [rsp + 0x1c]
.label_91:
	sete	bl
.label_84:
	mov	eax, ebx
	add	rsp, 0x90
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_104:
	mov	bl, 1
	jg	.label_84
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x60]
	sub	ecx, eax
	test	ecx, ecx
	setg	bl
	jmp	.label_84
.label_93:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_102
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rip + pos]
	mov	rcx, qword ptr [rip + argv]
	mov	rdi, qword ptr [rcx + rax*8]
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	test_syntax_error
.label_85:
	call	beyond
	nop	
	.section	.text
	.align	16
	#Procedure 0x402520

	.globl beyond
	.type beyond, @function
beyond:
	push	rbx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_107
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rip + argc]
	mov	rcx, qword ptr [rip + argv]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	test_syntax_error
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402560

	.globl find_int
	.type find_int, @function
find_int:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	lea	rax, [r15 - 1]
	nop	word ptr cs:[rax + rax]
.label_108:
	movzx	esi, byte ptr [rax + 1]
	inc	rax
	test	byte ptr [rcx + rsi*2], 1
	jne	.label_108
	xor	edx, edx
	cmp	sil, 0x2d
	sete	dl
	add	rdx, rax
	lea	rdi, [rax + 1]
	cmp	sil, 0x2b
	cmove	rdx, rdi
	cmove	rax, rdi
	movsx	esi, byte ptr [rdx]
	add	esi, -0x30
	cmp	esi, 9
	ja	.label_109
	inc	rdx
	nop	word ptr [rax + rax]
.label_110:
	movsx	esi, byte ptr [rdx]
	movzx	edi, sil
	mov	ebx, esi
	add	ebx, -0x30
	inc	rdx
	cmp	ebx, 0xa
	jb	.label_110
	test	byte ptr [rcx + rdi*2], 1
	je	.label_113
	nop	word ptr [rax + rax]
.label_111:
	movzx	esi, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rsi*2], 1
	jne	.label_111
.label_113:
	test	sil, sil
	jne	.label_109
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_109:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_112
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, r15
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, r14
	mov	rsi, rcx
	call	test_syntax_error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402630

	.globl binop
	.type binop, @function
binop:
	movzx	edx, byte ptr [rdi]
	cmp	edx, 0x3d
	jne	.label_125
	mov	al, 1
	cmp	byte ptr [rdi + 1], 0
	je	.label_115
.label_125:
	cmp	dl, 0x21
	jne	.label_116
	cmp	byte ptr [rdi + 1], 0x3d
	jne	.label_116
	mov	al, 1
	cmp	byte ptr [rdi + 2], 0
	je	.label_115
.label_116:
	cmp	dl, 0x3d
	jne	.label_122
	cmp	byte ptr [rdi + 1], 0x3d
	jne	.label_122
	mov	al, 1
	cmp	byte ptr [rdi + 2], 0
	je	.label_115
.label_122:
	mov	ecx, 0x2d
	sub	ecx, edx
	jne	.label_120
	cmp	byte ptr [rdi + 1], 0x6e
	jne	.label_128
	cmp	byte ptr [rdi + 2], 0x74
	jne	.label_114
	mov	al, 1
	cmp	byte ptr [rdi + 3], 0
	je	.label_115
.label_114:
	test	ecx, ecx
	jne	.label_120
.label_128:
	cmp	byte ptr [rdi + 1], 0x6f
	jne	.label_121
	cmp	byte ptr [rdi + 2], 0x74
	jne	.label_123
	mov	al, 1
	cmp	byte ptr [rdi + 3], 0
	je	.label_115
.label_123:
	test	ecx, ecx
	jne	.label_120
.label_121:
	cmp	byte ptr [rdi + 1], 0x65
	jne	.label_126
	cmp	byte ptr [rdi + 2], 0x66
	jne	.label_126
	mov	al, 1
	cmp	byte ptr [rdi + 3], 0
	je	.label_115
.label_126:
	cmp	byte ptr [rdi + 1], 0x65
	jne	.label_118
	cmp	byte ptr [rdi + 2], 0x71
	jne	.label_118
	mov	al, 1
	cmp	byte ptr [rdi + 3], 0
	je	.label_115
.label_118:
	cmp	byte ptr [rdi + 1], 0x6e
	jne	.label_120
	cmp	byte ptr [rdi + 2], 0x65
	jne	.label_120
	mov	al, 1
	cmp	byte ptr [rdi + 3], 0
	je	.label_115
.label_120:
	cmp	dl, 0x2d
	jne	.label_124
	cmp	byte ptr [rdi + 1], 0x6c
	jne	.label_127
	cmp	byte ptr [rdi + 2], 0x74
	jne	.label_127
	mov	al, 1
	cmp	byte ptr [rdi + 3], 0
	je	.label_115
.label_127:
	cmp	byte ptr [rdi + 1], 0x6c
	jne	.label_119
	cmp	byte ptr [rdi + 2], 0x65
	jne	.label_119
	mov	al, 1
	cmp	byte ptr [rdi + 3], 0
	je	.label_115
.label_119:
	cmp	byte ptr [rdi + 1], 0x67
	jne	.label_124
	cmp	byte ptr [rdi + 2], 0x74
	jne	.label_124
	mov	al, 1
	cmp	byte ptr [rdi + 3], 0
	je	.label_115
.label_124:
	test	ecx, ecx
	jne	.label_117
	movzx	eax, byte ptr [rdi + 1]
	mov	ecx, 0x67
	sub	ecx, eax
	jne	.label_117
	movzx	eax, byte ptr [rdi + 2]
	mov	ecx, 0x65
	sub	ecx, eax
	jne	.label_117
	movzx	ecx, byte ptr [rdi + 3]
	neg	ecx
.label_117:
	test	ecx, ecx
	sete	al
.label_115:
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402760

	.globl binary_operator
	.type binary_operator, @function
binary_operator:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x120
	mov	ecx, dword ptr [rip + pos]
	test	dil, dil
	je	.label_138
	inc	ecx
	mov	dword ptr [rip + pos],  ecx
.label_138:
	lea	edx, [rcx + 1]
	mov	eax, dword ptr [rip + argc]
	add	eax, -2
	cmp	edx, eax
	jge	.label_146
	movsxd	rsi, ecx
	mov	rax, qword ptr [rip + argv]
	mov	rsi, qword ptr [rax + rsi*8 + 0x10]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_148
	cmp	byte ptr [rsi + 1], 0x6c
	jne	.label_148
	cmp	byte ptr [rsi + 2], 0
	jne	.label_148
	mov	dword ptr [rip + pos],  edx
	mov	r15b, 1
	mov	ebp, edx
	jmp	.label_154
.label_146:
	mov	rax, qword ptr [rip + argv]
.label_148:
	xor	r15d, r15d
	mov	ebp, ecx
.label_154:
	movsxd	r12, edx
	mov	rdx, qword ptr [rax + r12*8]
	mov	bl, byte ptr [rdx]
	cmp	bl, 0x21
	je	.label_157
	cmp	bl, 0x3d
	je	.label_158
	cmp	bl, 0x2d
	jne	.label_132
	movsx	esi, byte ptr [rdx + 1]
	mov	ebx, esi
	add	bl, 0x9b
	movzx	ebx, bl
	cmp	bl, 9
	ja	.label_131
	jmp	qword ptr [(rbx * 8) + label_163]
.label_493:
	mov	bl, byte ptr [rdx + 2]
	cmp	bl, 0x65
	je	.label_129
	cmp	bl, 0x74
	je	.label_129
	jmp	.label_131
.label_157:
	cmp	byte ptr [rdx + 1], 0x3d
	jne	.label_132
	cmp	byte ptr [rdx + 2], 0
	jne	.label_132
	movsxd	rbp, ebp
	mov	rdi, qword ptr [rax + rbp*8]
	mov	rsi, qword ptr [rax + rbp*8 + 0x10]
	call	strcmp
	test	eax, eax
	setne	bl
	add	ebp, 3
	mov	dword ptr [rip + pos],  ebp
	jmp	.label_134
.label_158:
	mov	cl, byte ptr [rdx + 1]
	test	cl, cl
	je	.label_139
	cmp	cl, 0x3d
	jne	.label_132
	cmp	byte ptr [rdx + 2], 0
	jne	.label_132
.label_139:
	movsxd	rcx, ebp
	mov	rdi, qword ptr [rax + rcx*8]
	mov	rsi, qword ptr [rax + rcx*8 + 0x10]
	call	strcmp
	test	eax, eax
	sete	bl
	add	ebp, 3
	mov	dword ptr [rip + pos],  ebp
.label_134:
	mov	eax, ebx
	add	rsp, 0x120
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_492:
	cmp	byte ptr [rdx + 2], 0x71
	je	.label_129
	jmp	.label_131
.label_494:
	cmp	byte ptr [rdx + 2], 0x65
	jne	.label_131
.label_129:
	cmp	byte ptr [rdx + 3], 0
	je	.label_140
.label_131:
	cmp	esi, 0x65
	je	.label_137
	cmp	esi, 0x6f
	je	.label_156
	cmp	esi, 0x6e
	jne	.label_145
	cmp	byte ptr [rdx + 2], 0x74
	jne	.label_145
	cmp	byte ptr [rdx + 3], 0
	jne	.label_145
	add	ebp, 3
	mov	dword ptr [rip + pos],  ebp
	or	r15b, dil
	cmp	r15b, 1
	je	.label_161
	movsxd	rbp, ecx
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdx, [rsp]
	mov	edi, 1
	call	__xstat
	mov	r12d, eax
	test	r12d, r12d
	sete	bl
	mov	r15, qword ptr [rsp + 0x58]
	mov	r14, qword ptr [rsp + 0x60]
	mov	rax, qword ptr [rip + argv]
	mov	rsi, qword ptr [rax + rbp*8 + 0x10]
	lea	rdx, [rsp]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	jne	.label_134
	mov	rax, qword ptr [rsp + 0x58]
	test	r12d, r12d
	setne	cl
	xor	ebx, ebx
	cmp	r15, rax
	jl	.label_134
	test	cl, cl
	jne	.label_134
	mov	bl, 1
	cmp	r15, rax
	jg	.label_134
	mov	rax, qword ptr [rsp + 0x60]
	sub	r14d, eax
	test	r14d, r14d
	setg	bl
	jmp	.label_134
.label_137:
	cmp	byte ptr [rdx + 2], 0x66
	jne	.label_145
	cmp	byte ptr [rdx + 3], 0
	jne	.label_145
	add	ebp, 3
	mov	dword ptr [rip + pos],  ebp
	or	r15b, dil
	cmp	r15b, 1
	je	.label_149
	movsxd	rbx, ecx
	mov	rsi, qword ptr [rax + rbx*8]
	lea	rdx, [rsp]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	je	.label_143
	xor	ebx, ebx
	jmp	.label_134
.label_156:
	cmp	byte ptr [rdx + 2], 0x74
	jne	.label_145
	cmp	byte ptr [rdx + 3], 0
	jne	.label_145
	add	ebp, 3
	mov	dword ptr [rip + pos],  ebp
	or	r15b, dil
	cmp	r15b, 1
	je	.label_160
	movsxd	rbp, ecx
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdx, [rsp]
	mov	edi, 1
	call	__xstat
	mov	ebx, eax
	mov	r15, qword ptr [rsp + 0x58]
	mov	r14, qword ptr [rsp + 0x60]
	mov	rax, qword ptr [rip + argv]
	mov	rsi, qword ptr [rax + rbp*8 + 0x10]
	lea	rdx, [rsp]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	je	.label_135
	xor	ebx, ebx
	jmp	.label_134
.label_140:
	movsxd	rbp, ecx
	mov	rax, qword ptr [rax + rbp*8]
	test	dil, dil
	je	.label_136
	mov	rdi, rax
	call	strlen
	lea	rsi, [rsp]
	mov	rdi, rax
	call	umaxtostr
	jmp	.label_141
.label_143:
	mov	rax, qword ptr [rip + argv]
	mov	rsi, qword ptr [rax + rbx*8 + 0x10]
	lea	rdx, [rsp + 0x90]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	je	.label_144
	xor	ebx, ebx
	jmp	.label_134
.label_135:
	test	ebx, ebx
	mov	bl, 1
	jne	.label_134
	mov	rax, qword ptr [rsp + 0x58]
	cmp	r15, rax
	jl	.label_134
	cmp	r15, rax
	jle	.label_152
	xor	ebx, ebx
	jmp	.label_134
.label_136:
	mov	rdi, rax
	call	find_int
.label_141:
	mov	r14, rax
	test	r15b, r15b
	je	.label_155
	mov	rax, qword ptr [rip + argv]
	mov	rdi, qword ptr [rax + rbp*8 + 0x18]
	call	strlen
	lea	rsi, [rsp + 0x90]
	mov	rdi, rax
	call	umaxtostr
	jmp	.label_162
.label_155:
	mov	rax, qword ptr [rip + argv]
	mov	rdi, qword ptr [rax + rbp*8 + 0x10]
	call	find_int
.label_162:
	mov	rdi, r14
	mov	rsi, rax
	call	strintcmp
	mov	rcx, qword ptr [rip + argv]
	mov	rdx, qword ptr [rcx + r12*8]
	mov	cl, byte ptr [rdx + 2]
	add	dword ptr [rip + pos],  3
	mov	dl, byte ptr [rdx + 1]
	cmp	dl, 0x67
	je	.label_130
	cmp	dl, 0x6c
	jne	.label_133
	xor	edx, edx
	cmp	cl, 0x65
	sete	dl
	cmp	eax, edx
	setl	bl
	jmp	.label_134
.label_130:
	xor	edx, edx
	cmp	cl, 0x65
	mov	ecx, 0xffffffff
	cmovne	ecx, edx
	cmp	eax, ecx
	setg	bl
	jmp	.label_134
.label_133:
	cmp	cl, 0x65
	sete	cl
	test	eax, eax
	setne	bl
	xor	bl, cl
	xor	bl, 1
	jmp	.label_134
.label_144:
	mov	rax, qword ptr [rsp]
	cmp	rax, qword ptr [rsp + 0x90]
	jne	.label_142
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, qword ptr [rsp + 0x98]
	sete	bl
	jmp	.label_134
.label_152:
	mov	rax, qword ptr [rsp + 0x60]
	sub	r14d, eax
	shr	r14d, 0x1f
	mov	bl, r14b
	jmp	.label_134
.label_142:
	xor	ebx, ebx
	jmp	.label_134
.label_132:
	call	abort
.label_145:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_153
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rax, qword ptr [rip + argv]
	mov	rdi, qword ptr [rax + r12*8]
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbp
	mov	rsi, rcx
	call	test_syntax_error
.label_161:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_159
	jmp	.label_151
.label_149:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_150
	jmp	.label_151
.label_160:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_147
.label_151:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	xor	eax, eax
	mov	rdi, rcx
	call	test_syntax_error
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402c10

	.globl term
	.type term, @function
term:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	ebx, dword ptr [rip + pos]
	mov	eax, dword ptr [rip + argc]
	cmp	ebx, eax
	jge	.label_168
	movsxd	rdx, ebx
	mov	rcx, qword ptr [rip + argv]
	mov	rdx, qword ptr [rcx + rdx*8]
	cmp	byte ptr [rdx], 0x21
	jne	.label_168
	xor	ebp, ebp
.label_182:
	cmp	byte ptr [rdx + 1], 0
	jne	.label_177
	inc	ebx
	mov	dword ptr [rip + pos],  ebx
	cmp	ebx, eax
	jge	.label_169
	xor	bpl, 1
	movsxd	rdx, ebx
	mov	rdx, qword ptr [rcx + rdx*8]
	cmp	byte ptr [rdx], 0x21
	je	.label_182
	jmp	.label_177
.label_168:
	xor	ebp, ebp
.label_177:
	mov	ecx, eax
	sub	ecx, ebx
	jle	.label_169
	movsxd	r13, ebx
	mov	r15, qword ptr [rip + argv]
	mov	r12, qword ptr [r15 + r13*8]
	mov	r14b, byte ptr [r12]
	cmp	r14b, 0x28
	jne	.label_186
	cmp	byte ptr [r12 + 1], 0
	je	.label_166
.label_186:
	cmp	ecx, 4
	jl	.label_170
	cmp	r14b, 0x2d
	jne	.label_172
	cmp	byte ptr [r12 + 1], 0x6c
	jne	.label_172
	cmp	byte ptr [r12 + 2], 0
	jne	.label_172
	mov	rdi, qword ptr [r15 + r13*8 + 0x10]
	call	binop
	test	al, al
	je	.label_172
	mov	edi, 1
	jmp	.label_176
.label_170:
	cmp	ecx, 3
	jne	.label_178
.label_172:
	mov	rdi, qword ptr [r15 + r13*8 + 8]
	call	binop
	test	al, al
	je	.label_178
	xor	edi, edi
.label_176:
	call	binary_operator
	movzx	eax, al
	jmp	.label_174
.label_178:
	cmp	r14b, 0x2d
	jne	.label_183
	cmp	byte ptr [r12 + 1], 0
	je	.label_183
	cmp	byte ptr [r12 + 2], 0
	je	.label_164
.label_183:
	xor	eax, eax
	test	r14b, r14b
	setne	al
	inc	ebx
	mov	dword ptr [rip + pos],  ebx
	jmp	.label_174
.label_166:
	lea	edx, [rbx + 1]
	mov	dword ptr [rip + pos],  edx
	mov	ecx, eax
	sub	ecx, edx
	jle	.label_169
	add	ebx, 2
	mov	edi, 1
	cmp	ebx, eax
	jge	.label_173
	movsxd	rdx, ebx
	lea	rdx, [r15 + rdx*8]
	mov	esi, ebx
	xor	edi, edi
	nop	dword ptr [rax + rax]
.label_181:
	mov	rbx, qword ptr [rdx + rdi*8]
	cmp	byte ptr [rbx], 0x29
	jne	.label_184
	cmp	byte ptr [rbx + 1], 0
	je	.label_175
.label_184:
	cmp	edi, 3
	je	.label_180
	inc	rdi
	lea	ebx, [rsi + rdi]
	cmp	ebx, eax
	jl	.label_181
.label_175:
	inc	edi
	jmp	.label_173
.label_164:
	call	unary_operator
	movzx	eax, al
	jmp	.label_174
.label_180:
	mov	edi, ecx
.label_173:
	call	posixtest
	movsxd	rcx, dword ptr [rip + pos]
	mov	rdx, qword ptr [rip + argv]
	mov	rdx, qword ptr [rdx + rcx*8]
	test	rdx, rdx
	je	.label_185
	cmp	byte ptr [rdx], 0x29
	jne	.label_167
	cmp	byte ptr [rdx + 1], 0
	jne	.label_167
	movzx	eax, al
	inc	ecx
	mov	dword ptr [rip + pos],  ecx
.label_174:
	and	bpl, 1
	movzx	ecx, bpl
	cmp	ecx, eax
	setne	al
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_169:
	call	beyond
.label_167:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_179
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_165
	call	quote_n
	mov	rbx, rax
	movsxd	rax, dword ptr [rip + pos]
	mov	rcx, qword ptr [rip + argv]
	mov	rsi, qword ptr [rcx + rax*8]
	mov	edi, 1
	call	quote_n
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rcx
	call	test_syntax_error
.label_185:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_171
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, OFFSET FLAT:label_165
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	test_syntax_error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e50
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e60
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e70

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_193
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_190
	cmp	dword ptr [rbp], 0x20
	jne	.label_190
.label_193:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_189
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_190:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_191
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_187
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_188
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_189:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_187:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_192
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f30

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_194:
	mov	rax, rcx
	mul	r8
	shr	rdx, 3
	lea	eax, [rdx + rdx]
	lea	eax, [rax + rax*4]
	mov	edi, ecx
	sub	edi, eax
	or	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	cmp	rcx, 9
	mov	rcx, rdx
	ja	.label_194
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f80

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_195
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_197
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_199
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_197
	mov	esi, OFFSET FLAT:label_198
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_200
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_200:
	mov	rbx, r14
.label_197:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_195:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_196
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403030
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
	#Procedure 0x403070
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
	#Procedure 0x403080
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
	#Procedure 0x403090
	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:

	mov	ecx, esi
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	cmovne	rsi, rdi
	mov	eax, ecx
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
	#Procedure 0x4030d0
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
	#Procedure 0x4030f0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_201
	test	rdx, rdx
	je	.label_201
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_201:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403120
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbx, rax
	mov	eax, dword ptr [rbx]
	mov	dword ptr [rsp + 4], eax
	mov	r8, qword ptr [rbp]
	mov	r9, r8
	shr	r9, 0x20
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	push	qword ptr [rbp + 0x30]
	push	qword ptr [rbp + 0x28]
	lea	rax, [rbp + 8]
	push	rax
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	ecx, dword ptr [rsp + 4]
	mov	dword ptr [rbx], ecx
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
	#Procedure 0x4031a0

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	ebx, r9d
	mov	r15d, r8d
	mov	qword ptr [rsp + 0x48], rcx
	mov	qword ptr [rsp + 0x28], rdx
	mov	r13, rsi
	mov	qword ptr [rsp + 0x10], rdi
	mov	rax, qword ptr [rsp + 0x110]
	mov	qword ptr [rsp + 0x78], rax
	mov	rax, qword ptr [rsp + 0x108]
	mov	qword ptr [rsp + 0x80], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0xb8], rax
	mov	r12d, ebx
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x9c], eax
	mov	dword ptr [rsp + 0x20], ebx
	and	ebx, 4
	mov	dword ptr [rsp + 0x98], ebx
	mov	dil, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x50], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa8], rcx
	jmp	.label_251
	nop	
.label_248:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_244
	or	al, dl
	jne	.label_244
	test	dil, 1
	jne	.label_247
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_244
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_251
	jmp	.label_244
.label_525:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_258
	test	rbp, rbp
	je	.label_262
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_262:
	mov	r14d, 1
	jmp	.label_265
.label_526:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_266
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_202
.label_258:
	xor	r14d, r14d
.label_265:
	mov	eax, OFFSET FLAT:label_266
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_274
	nop	
.label_251:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_280
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_286]
.label_527:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_295
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_228
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_528:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_307
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_307
	xor	r14d, r14d
	nop	
.label_243:
	cmp	r14, rbp
	jae	.label_213
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_213:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_243
.label_307:
	mov	rbx, qword ptr [rsp + 0x78]
	mov	rdi, rbx
	call	strlen
	mov	qword ptr [rsp + 0x50], rax
	mov	r8d, r15d
	mov	qword ptr [rsp + 0x58], rbx
	mov	r13b, 1
	mov	sil, r12b
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r9d, dword ptr [rsp + 0x60]
	jmp	.label_202
.label_520:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_202
.label_523:
	mov	al, 1
.label_521:
	mov	r12b, 1
.label_524:
	test	r12b, 1
	mov	cl, 1
	je	.label_242
	mov	ecx, eax
.label_242:
	mov	al, cl
.label_522:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_211
	test	rbp, rbp
	je	.label_219
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_219:
	mov	r14d, 1
	jmp	.label_224
.label_211:
	xor	r14d, r14d
.label_224:
	mov	ecx, OFFSET FLAT:label_228
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_274:
	mov	sil, r12b
.label_202:
	cmp	qword ptr [rsp + 0x100], 0
	setne	r12b
	cmp	r8d, 2
	setne	r15b
	sete	al
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x33]
	mov	ebx, r15d
	mov	byte ptr [rsp + 0x1f], cl
	and	bl, cl
	cmp	qword ptr [rsp + 0x50], 0
	setne	cl
	mov	edx, ecx
	mov	byte ptr [rsp + 0x36], bl
	and	dl, bl
	mov	byte ptr [rsp + 0x37], dl
	mov	ebx, esi
	and	bl, 1
	sete	dl
	and	al, bl
	mov	byte ptr [rsp + 0x31], al
	mov	byte ptr [rsp + 0xf], bl
	and	r12b, bl
	mov	byte ptr [rsp + 0x35], r12b
	or	dl, r15b
	mov	byte ptr [rsp + 0x27], dl
	mov	byte ptr [rsp + 0x34], r13b
	mov	qword ptr [rsp + 0xc0], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x32], r13b
	xor	r12d, r12d
	mov	qword ptr [rsp + 0x38], r8
	jmp	.label_235
	nop	word ptr cs:[rax + rax]
.label_237:
	inc	r12
.label_235:
	cmp	r11, -1
	je	.label_270
	cmp	r12, r11
	jne	.label_272
	jmp	.label_273
	nop	word ptr cs:[rax + rax]
.label_270:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_276
.label_272:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_281
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_284
	cmp	r11, -1
	jne	.label_284
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_284:
	cmp	rbx, r11
	jbe	.label_299
.label_281:
	xor	esi, esi
.label_250:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_301
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_304]
.label_542:
	test	r12, r12
	jne	.label_261
	jmp	.label_308
	nop	word ptr cs:[rax + rax]
.label_299:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_312
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_250
	jmp	.label_220
.label_312:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_250
.label_546:
	xor	eax, eax
	cmp	r11, -1
	je	.label_328
	test	r12, r12
	jne	.label_206
	cmp	r11, 1
	je	.label_308
	xor	r13d, r13d
	jmp	.label_245
.label_535:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_214
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_220
	cmp	r8d, 2
	jne	.label_227
	mov	eax, r9d
	and	al, 1
	jne	.label_227
	cmp	r14, rbp
	jae	.label_229
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_229:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_232
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_232:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_239
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_239:
	add	r14, 3
	mov	r9b, 1
.label_227:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_246
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_246:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_254
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_254
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_254
	cmp	r14, rbp
	jae	.label_319
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_319:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_268
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_268:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_245
.label_536:
	mov	bl, 0x62
	jmp	.label_208
.label_537:
	mov	cl, 0x74
	jmp	.label_267
.label_538:
	mov	bl, 0x76
	jmp	.label_208
.label_539:
	mov	bl, 0x66
	jmp	.label_208
.label_540:
	mov	cl, 0x72
	jmp	.label_267
.label_543:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_278
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_230
	test	rbp, rbp
	sete	al
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, rbp
	mov	qword ptr [rsp + 0x68], rdx
	mov	eax, 0
	cmove	rbp, rax
	cmp	r14, rbp
	jae	.label_288
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_288:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_302
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_302:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_306
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_306:
	add	r14, 3
	xor	r9d, r9d
.label_278:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_245
.label_544:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_318
	cmp	r8d, 2
	jne	.label_261
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_261
	jmp	.label_230
.label_545:
	cmp	r8d, 2
	jne	.label_316
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_230
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_287
.label_301:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_325
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_210
.label_328:
	test	r12, r12
	jne	.label_225
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_225
.label_308:
	mov	dl, 1
.label_541:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_230
	xor	eax, eax
	mov	r13b, dl
.label_245:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_236
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_240
	jmp	.label_241
	nop	word ptr cs:[rax + rax]
.label_236:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_241
.label_240:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_309
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_252
	nop	dword ptr [rax]
.label_241:
	test	sil, sil
.label_252:
	mov	ebx, r15d
	je	.label_222
	jmp	.label_260
.label_309:
	mov	ebx, r15d
	jmp	.label_260
.label_214:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_237
	xor	r15d, r15d
	jmp	.label_261
.label_316:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_267
	xor	eax, eax
	mov	r15b, 0x5c
.label_287:
	xor	r13d, r13d
	jmp	.label_222
.label_267:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_230
.label_208:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_245
	nop	
.label_260:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_220
	cmp	r8d, 2
	jne	.label_279
	mov	eax, r9d
	and	al, 1
	jne	.label_279
	cmp	r14, rbp
	jae	.label_283
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_283:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_289
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_289:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_293
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_293:
	add	r14, 3
	mov	r9b, 1
.label_279:
	cmp	r14, rbp
	jae	.label_300
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_300:
	inc	r14
	jmp	.label_255
.label_325:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_305
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_305:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_310
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_314:
	mov	rax, r12
	mov	qword ptr [rsp + 0x40], rax
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rax, [r12 + rcx]
	mov	r12, rcx
	lea	rsi, [r10 + rax]
	mov	rdx, r11
	sub	rdx, rax
	lea	rdi, [rsp + 0x64]
	mov	rcx, rbp
	call	rpl_mbrtowc
	mov	rbx, rax
	cmp	rbx, -2
	je	.label_317
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_203
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_226
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_217
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_320:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_216
	bt	rsi, rdx
	jb	.label_230
.label_216:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_320
.label_217:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_263
	xor	r13d, r13d
.label_263:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_314
	jmp	.label_205
.label_254:
	xor	r13d, r13d
	jmp	.label_245
.label_225:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_245
.label_318:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_261
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_261
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_261
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_269
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_321
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_275
	cmp	r14, rbp
	jae	.label_277
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_277:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_282
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_282:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_294
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_294:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_223
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_223:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_321:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_245
.label_261:
	xor	eax, eax
.label_206:
	xor	r13d, r13d
	jmp	.label_245
.label_310:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_326:
	mov	rax, r12
	mov	qword ptr [rsp + 0x40], rax
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rax, [r12 + rcx]
	mov	r12, rcx
	lea	rsi, [r10 + rax]
	mov	rdx, r11
	sub	rdx, rax
	lea	rdi, [rsp + 0x64]
	mov	rcx, rbx
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_313
	cmp	rbp, -1
	je	.label_315
	cmp	rbp, -2
	je	.label_317
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_322
	xor	r13d, r13d
.label_322:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_326
	jmp	.label_205
.label_317:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_215
	lea	rax, [r10 + r12]
.label_257:
	cmp	byte ptr [rax + rsi], 0
	je	.label_215
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_257
.label_215:
	mov	qword ptr [rsp + 0x40], rsi
.label_203:
	xor	r13d, r13d
	jmp	.label_226
.label_315:
	xor	r13d, r13d
.label_313:
	mov	r10, qword ptr [rsp + 0x28]
.label_226:
	mov	r12, qword ptr [rsp + 0x40]
.label_205:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_210:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_234
	test	al, al
	je	.label_234
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_245
.label_234:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_249
	nop	word ptr [rax + rax]
.label_204:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_249:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_259
	test	sil, 1
	je	.label_256
	cmp	r14, rbp
	jae	.label_264
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_264:
	inc	r14
	xor	esi, esi
	jmp	.label_256
	nop	word ptr cs:[rax + rax]
.label_259:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_220
	cmp	r8d, 2
	jne	.label_207
	mov	eax, r9d
	and	al, 1
	jne	.label_207
	cmp	r14, rbp
	jae	.label_221
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_221:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_285
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_285:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_292
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_292:
	add	r14, 3
	mov	r9b, 1
.label_207:
	cmp	r14, rbp
	jae	.label_291
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_291:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_324
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_324:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_303
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_303:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_256:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_222
	test	r9b, 1
	je	.label_290
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_209
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_231
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_231:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_327
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_327:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_290
	nop	word ptr cs:[rax + rax]
.label_209:
	mov	rbx, rcx
.label_290:
	cmp	r14, rbp
	jae	.label_204
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_204
	nop	
.label_222:
	test	r9b, 1
	je	.label_212
	and	al, 1
	jne	.label_212
	cmp	r14, rbp
	jae	.label_218
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_218:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_297
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_297:
	add	r14, 2
	xor	r9d, r9d
.label_212:
	mov	ebx, r15d
.label_255:
	cmp	r14, rbp
	jae	.label_233
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_233:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_237
.label_269:
	xor	r13d, r13d
	jmp	.label_245
	nop	word ptr cs:[rax + rax]
.label_273:
	mov	rcx, r12
.label_276:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_248
	or	al, dl
	jne	.label_248
	mov	r11, rcx
	jmp	.label_220
.label_230:
	mov	eax, 2
.label_253:
	mov	qword ptr [rsp + 0x38], rax
.label_220:
	mov	r9d, dword ptr [rsp + 0x20]
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x38]
	cmove	r8d, eax
	cmp	eax, 2
	cmovne	r8d, eax
	and	r9d, 0xfffffffd
	sub	rsp, 8
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbp
	mov	rdx, r10
	mov	rcx, r11
	push	qword ptr [rsp + 0x80]
	push	qword ptr [rsp + 0x90]
	push	0
	call	quotearg_buffer_restyled
	add	rsp, 0x20
.label_323:
	mov	r14, rax
.label_311:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_244:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_271
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_238
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_238
	inc	rdx
	nop	dword ptr [rax + rax]
.label_298:
	cmp	r14, rbp
	jae	.label_296
	mov	byte ptr [rcx + r14], al
.label_296:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_298
	jmp	.label_238
.label_247:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	r9d, dword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x80]
	push	qword ptr [rsp + 0x90]
	push	qword ptr [rsp + 0x118]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_323
.label_271:
	mov	rcx, qword ptr [rsp + 0x10]
.label_238:
	cmp	r14, rbp
	jae	.label_311
	mov	byte ptr [rcx + r14], 0
	jmp	.label_311
.label_275:
	mov	eax, 5
	jmp	.label_253
.label_280:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403fd0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	qword ptr [rsp + 8], rbx
	mov	r12, rdi
	test	rdx, rdx
	mov	r14d, OFFSET FLAT:default_quoting_options
	cmovne	r14, rdx
	call	__errno_location
	mov	qword ptr [rsp + 0x10], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 4], ecx
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	or	ebp, 1
	lea	r15, [r14 + 8]
	sub	rsp, 8
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r12
	mov	rcx, rbx
	mov	r9d, ebp
	push	qword ptr [r14 + 0x30]
	push	qword ptr [r14 + 0x28]
	push	r15
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rbx, rax
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	r13, rax
	mov	r8d, dword ptr [r14]
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r9d, ebp
	push	qword ptr [r14 + 0x30]
	push	qword ptr [r14 + 0x28]
	push	r15
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	eax, dword ptr [rsp + 4]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	add	rsp, 0x18
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
	#Procedure 0x4040a0
	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x10], r14
	mov	r15, rdi
	mov	qword ptr [rsp + 8], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	cmovne	r12, rcx
	call	__errno_location
	mov	qword ptr [rsp + 0x20], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 4], ecx
	xor	ebp, ebp
	test	rbx, rbx
	sete	bpl
	or	ebp, dword ptr [r12 + 4]
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	sub	rsp, 8
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	mov	r9d, ebp
	push	qword ptr [r12 + 0x30]
	push	qword ptr [r12 + 0x28]
	push	r13
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rbx, rax
	lea	r15, [rbx + 1]
	mov	rdi, r15
	call	xmalloc
	mov	r14, rax
	mov	r8d, dword ptr [r12]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r9d, ebp
	push	qword ptr [r12 + 0x30]
	push	qword ptr [r12 + 0x28]
	push	r13
	call	quotearg_buffer_restyled
	mov	rax, qword ptr [rsp + 0x38]
	add	rsp, 0x20
	test	rax, rax
	mov	ecx, dword ptr [rsp + 4]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	dword ptr [rdx], ecx
	je	.label_329
	mov	qword ptr [rax], rbx
.label_329:
	mov	rax, r14
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
	#Procedure 0x404190
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_330
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_332:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_332
.label_330:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_334
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_333], OFFSET FLAT:slot0
.label_334:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_331
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_331:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404230
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x404240

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rcx
	mov	r15, rdx
	mov	qword ptr [rsp + 0x20], rsi
	mov	r12d, edi
	call	__errno_location
	mov	r13, rax
	test	r12d, r12d
	js	.label_335
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_338
	cmp	r12d, 0x7fffffff
	je	.label_340
	mov	ebx, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, rbx
	cmovne	rdi, rbp
	lea	r15d, [r12 + 1]
	movsxd	rsi, r12d
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, rbx
	mov	qword ptr [rip + slotvec],  r14
	jne	.label_336
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_336:
	movsxd	rax, dword ptr [rip + nslots]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	add	rdi, rax
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [rip + nslots],  ebp
	mov	rbp, r14
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 8]
.label_338:
	movsxd	r13, r12d
	shl	r13, 4
	mov	r12, qword ptr [rbp + r13]
	mov	r14, qword ptr [rbp + r13 + 8]
	mov	r8d, dword ptr [rbx]
	mov	r9d, dword ptr [rbx + 4]
	or	r9d, 1
	lea	rax, [rbx + 8]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, r15
	mov	dword ptr [rsp + 0xc], r9d
	push	qword ptr [rbx + 0x30]
	push	qword ptr [rbx + 0x28]
	mov	rbx, rax
	push	rbx
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	r15, rax
	cmp	r12, r15
	jbe	.label_341
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_337
.label_341:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_339
	mov	rdi, r14
	call	free
.label_339:
	mov	rdi, r15
	call	xmalloc
	mov	r14, rax
	mov	qword ptr [r12], r14
	mov	rax, qword ptr [rsp + 0x10]
	mov	r8d, dword ptr [rax]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0xc]
	push	qword ptr [rax + 0x30]
	push	qword ptr [rax + 0x28]
	push	rbx
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rax, qword ptr [rsp + 0x18]
.label_337:
	mov	dword ptr [rax], ebp
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_335:
	call	abort
.label_340:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404400
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404410
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
	#Procedure 0x404430
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
	#Procedure 0x404450
	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:

	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_342
	mov	dword ptr [rsp + 0x40], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_342:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4044c0
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_343
	mov	dword ptr [rsp + 0x40], esi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rax, [rsp + 0x40]
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_343:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404530
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	je	.label_344
	mov	dword ptr [rsp + 0x40], edi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_344:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045a0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	je	.label_345
	mov	dword ptr [rsp + 0x40], edi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	xor	edi, edi
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_345:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404610
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_346]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_347]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_348]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	eax, ecx
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
	#Procedure 0x404680
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_346]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_347]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_348]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	edx, ecx
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
	#Procedure 0x4046f0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_346]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_347]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_348]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
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
	#Procedure 0x404750
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_346]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_347]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_348]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
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
	#Procedure 0x4047b0
	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:

	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_349
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x70], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movaps	xmmword ptr [rsp + 0x60], xmm2
	movaps	xmmword ptr [rsp + 0x50], xmm1
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp], esi
	mov	ecx, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x34], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x24], xmm2
	movups	xmmword ptr [rsp + 0x14], xmm1
	movups	xmmword ptr [rsp + 4], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_349:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404850
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_346]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_347]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_348]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_350
	test	rdx, rdx
	je	.label_350
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_350:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x4048c0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_346]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_347]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_348]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_351
	test	rdx, rdx
	je	.label_351
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_351:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404930
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_346]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_347]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_348]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_352
	test	rsi, rsi
	je	.label_352
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_352:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4049a0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_346]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_347]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_348]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_353
	test	rsi, rsi
	je	.label_353
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
.label_353:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404a10
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a20
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
	#Procedure 0x404a40

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a60

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
	#Procedure 0x404a80

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
	jne	.label_355
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_360
	cmp	ecx, 0x55
	jne	.label_354
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_354
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_354
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_354
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_354
	cmp	byte ptr [rax + 5], 0
	jne	.label_354
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_357
	mov	eax, OFFSET FLAT:label_358
	jmp	.label_359
.label_360:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_354
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_354
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_354
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_354
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_354
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_354
	cmp	byte ptr [rax + 7], 0
	je	.label_356
.label_354:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_266
	mov	eax, OFFSET FLAT:label_228
.label_359:
	cmove	rax, rcx
.label_355:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_356:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_361
	mov	eax, OFFSET FLAT:label_362
	jmp	.label_359
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b50

	.globl strintcmp
	.type strintcmp, @function
strintcmp:
	movzx	ecx, byte ptr [rdi]
	mov	dl, byte ptr [rsi]
	cmp	ecx, 0x2d
	jne	.label_383
	nop	word ptr [rax + rax]
.label_387:
	movzx	ecx, byte ptr [rdi + 1]
	inc	rdi
	cmp	ecx, 0x30
	je	.label_387
	movzx	r8d, dl
	cmp	r8d, 0x2d
	jne	.label_390
	nop	word ptr [rax + rax]
.label_364:
	movzx	eax, byte ptr [rsi + 1]
	inc	rsi
	cmp	eax, 0x30
	je	.label_364
	lea	edx, [rcx - 0x30]
	cmp	edx, 9
	ja	.label_380
	movzx	r8d, cl
	movzx	edx, al
	cmp	edx, r8d
	jne	.label_368
	nop	dword ptr [rax + rax]
.label_381:
	mov	r9b, byte ptr [rdi + 1]
	inc	rdi
	movzx	eax, byte ptr [rsi + 1]
	inc	rsi
	movzx	ecx, r9b
	cmp	eax, ecx
	jne	.label_371
	lea	edx, [rcx - 0x30]
	cmp	edx, 0xa
	jb	.label_381
	jmp	.label_371
.label_383:
	movzx	r8d, dl
	cmp	r8d, 0x2d
	jne	.label_385
	inc	rsi
	nop	dword ptr [rax + rax]
.label_392:
	movzx	edx, byte ptr [rsi]
	inc	rsi
	cmp	edx, 0x30
	je	.label_392
	add	edx, -0x30
	mov	eax, 1
	cmp	edx, 0xa
	jb	.label_378
	movzx	eax, cl
	cmp	eax, 0x30
	jne	.label_365
	inc	rdi
	nop	word ptr [rax + rax]
.label_370:
	movzx	ecx, byte ptr [rdi]
	inc	rdi
	cmp	ecx, 0x30
	je	.label_370
.label_365:
	movzx	eax, cl
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	and	eax, 1
	ret	
.label_390:
	add	ecx, -0x30
	mov	eax, 0xffffffff
	cmp	ecx, 0xa
	jb	.label_378
	cmp	r8d, 0x30
	jne	.label_382
	inc	rsi
	nop	word ptr cs:[rax + rax]
.label_372:
	movzx	edx, byte ptr [rsi]
	inc	rsi
	cmp	edx, 0x30
	je	.label_372
.label_382:
	movzx	eax, dl
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	ret	
.label_385:
	movzx	eax, cl
	cmp	eax, 0x30
	jne	.label_394
	nop	
.label_363:
	movzx	ecx, byte ptr [rdi + 1]
	inc	rdi
	cmp	ecx, 0x30
	je	.label_363
.label_394:
	cmp	r8d, 0x30
	jne	.label_384
	nop	word ptr cs:[rax + rax]
.label_389:
	movzx	edx, byte ptr [rsi + 1]
	inc	rsi
	cmp	edx, 0x30
	je	.label_389
.label_384:
	movzx	r8d, cl
	lea	eax, [r8 - 0x30]
	cmp	eax, 9
	ja	.label_373
	movzx	r9d, dl
	movzx	eax, cl
	cmp	eax, r9d
	jne	.label_373
	nop	word ptr cs:[rax + rax]
.label_388:
	mov	cl, byte ptr [rdi + 1]
	inc	rdi
	movzx	edx, byte ptr [rsi + 1]
	inc	rsi
	movzx	r8d, cl
	cmp	r8d, edx
	jne	.label_373
	lea	eax, [r8 - 0x30]
	cmp	eax, 0xa
	jb	.label_388
.label_373:
	movzx	eax, dl
	movzx	edx, cl
	add	edx, -0x30
	xor	ecx, ecx
	cmp	edx, 9
	ja	.label_391
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_366:
	movzx	edx, byte ptr [rdi + rcx + 1]
	inc	rcx
	add	edx, -0x30
	cmp	edx, 0xa
	jb	.label_366
.label_391:
	lea	edi, [rax - 0x30]
	xor	edx, edx
	cmp	edi, 9
	ja	.label_375
	xor	edx, edx
	nop	dword ptr [rax]
.label_376:
	movzx	edi, byte ptr [rsi + rdx + 1]
	inc	rdx
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_376
.label_375:
	cmp	rcx, rdx
	jne	.label_379
	sub	r8d, eax
	xor	eax, eax
	test	rcx, rcx
	jmp	.label_369
.label_379:
	mov	ecx, 0xffffffff
	mov	eax, 1
	cmovb	eax, ecx
	ret	
.label_380:
	mov	r9b, cl
	jmp	.label_371
.label_368:
	mov	r9b, cl
.label_371:
	movzx	r8d, al
	movzx	eax, r9b
	add	eax, -0x30
	xor	edx, edx
	cmp	eax, 9
	ja	.label_386
	xor	edx, edx
	nop	dword ptr [rax]
.label_393:
	movzx	eax, byte ptr [rdi + rdx + 1]
	inc	rdx
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_393
.label_386:
	lea	edi, [r8 - 0x30]
	xor	eax, eax
	cmp	edi, 9
	ja	.label_374
	xor	eax, eax
	nop	dword ptr [rax]
.label_377:
	movzx	edi, byte ptr [rsi + rax + 1]
	inc	rax
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_377
.label_374:
	cmp	rdx, rax
	jne	.label_367
	sub	r8d, ecx
	xor	eax, eax
	test	rdx, rdx
.label_369:
	cmovne	eax, r8d
.label_378:
	ret	
.label_367:
	mov	ecx, 1
	mov	eax, 0xffffffff
	cmovb	eax, ecx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404dd0

	.globl verror
	.type verror, @function
verror:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	mov	rdi, rdx
	mov	rsi, rcx
	call	xvasprintf
	mov	rbx, rax
	test	rbx, rbx
	je	.label_396
	mov	edx, OFFSET FLAT:label_188
	xor	eax, eax
	mov	edi, ebp
	mov	esi, r14d
	mov	rcx, rbx
	call	error
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	free
.label_396:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_395
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e40
	.globl verror_at_line
	.type verror_at_line, @function
verror_at_line:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15d, ecx
	mov	rbp, rdx
	mov	r14d, esi
	mov	r12d, edi
	mov	rdi, r8
	mov	rsi, r9
	call	xvasprintf
	mov	rbx, rax
	test	rbx, rbx
	je	.label_399
	test	rbp, rbp
	je	.label_397
	mov	r8d, OFFSET FLAT:label_188
	xor	eax, eax
	mov	edi, r12d
	mov	esi, r14d
	mov	rdx, rbp
	mov	ecx, r15d
	mov	r9, rbx
	call	error_at_line
	jmp	.label_398
.label_397:
	mov	edx, OFFSET FLAT:label_188
	xor	eax, eax
	mov	edi, r12d
	mov	esi, r14d
	mov	rcx, rbx
	call	error
.label_398:
	mov	rdi, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	free
.label_399:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_395
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404ee0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_400
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_401
	test	rax, rax
	je	.label_400
.label_401:
	pop	rbx
	ret	
.label_400:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f20

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_402
	test	rax, rax
	je	.label_403
.label_402:
	pop	rbx
	ret	
.label_403:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f40
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_404
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_405
	test	rbx, rbx
	jne	.label_405
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_405:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_406
	test	rax, rax
	je	.label_404
.label_406:
	pop	rbx
	ret	
.label_404:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f90

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_407
	test	rbx, rbx
	jne	.label_407
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_407:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_409
	test	rax, rax
	je	.label_408
.label_409:
	pop	rbx
	ret	
.label_408:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404fc0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_410
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_413
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_411
.label_410:
	test	rcx, rcx
	jne	.label_416
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_416:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_412
.label_411:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_415
	test	rbx, rbx
	jne	.label_415
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_415:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_414
	test	rax, rax
	je	.label_413
.label_414:
	pop	rbx
	ret	
.label_413:
	call	xalloc_die
.label_412:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405060
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_417
	test	rax, rax
	je	.label_418
.label_417:
	pop	rbx
	ret	
.label_418:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405080
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_419
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_422
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_423
	call	free
	xor	eax, eax
	jmp	.label_420
.label_419:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_421
	mov	qword ptr [rsi], rbx
.label_423:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_420
	test	rax, rax
	je	.label_421
.label_420:
	pop	rbx
	ret	
.label_421:
	call	xalloc_die
.label_422:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050f0
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
	je	.label_425
	test	r14, r14
	je	.label_424
.label_425:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_424:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405130
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_426
	call	rpl_calloc
	test	rax, rax
	je	.label_426
	pop	rcx
	ret	
.label_426:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405160

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
	je	.label_427
	test	r15, r15
	je	.label_428
.label_427:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_428:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4051a0
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
	je	.label_430
	test	r15, r15
	je	.label_429
.label_430:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_429:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051f0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_431
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_188
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405220

	.globl xvasprintf
	.type xvasprintf, @function
xvasprintf:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbp, rsi
	mov	rax, rdi
	mov	r15, -1
	jmp	.label_441
	nop	dword ptr [rax]
.label_436:
	inc	r15
.label_441:
	movzx	ecx, byte ptr [rax + r15*2 + 2]
	cmp	cl, 0x25
	jne	.label_433
	cmp	byte ptr [rax + r15*2 + 3], 0x73
	je	.label_436
	jmp	.label_434
.label_433:
	test	cl, cl
	jne	.label_434
	mov	rax, qword ptr [rbp + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rbp]
	movaps	xmmword ptr [rsp], xmm0
	cmp	r15, -1
	je	.label_442
	mov	r12, rbp
	mov	r14d, dword ptr [rsp]
	xor	ebx, ebx
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_435:
	cmp	r14d, 0x28
	ja	.label_438
	movsxd	rax, r14d
	add	rax, qword ptr [rsp + 0x10]
	add	r14d, 8
	mov	dword ptr [rsp], r14d
	jmp	.label_440
	nop	dword ptr [rax + rax]
.label_438:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_440:
	mov	rdi, qword ptr [rax]
	call	strlen
	add	rax, rbp
	cmp	rax, rbp
	mov	rbp, -1
	cmovae	rbp, rax
	cmp	rbx, r15
	lea	rbx, [rbx + 1]
	jne	.label_435
	test	rbp, -0x80000000
	je	.label_432
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	xor	ecx, ecx
	jmp	.label_439
.label_434:
	lea	rdi, [rsp]
	mov	esi, 1
	mov	rdx, rax
	mov	rcx, rbp
	call	__vasprintf_chk
	test	eax, eax
	js	.label_437
	mov	rcx, qword ptr [rsp]
	jmp	.label_439
.label_437:
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 0xc
	jne	.label_439
	call	xalloc_die
.label_442:
	mov	edi, 1
	call	xmalloc
	mov	rcx, rax
	mov	rbx, rcx
	jmp	.label_446
.label_432:
	inc	rax
	mov	rdi, rax
	call	xmalloc
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x20], rax
	mov	rbx, rax
	mov	rbp, r12
	nop	
.label_443:
	movsxd	rcx, dword ptr [rbp]
	cmp	rcx, 0x28
	ja	.label_445
	mov	rax, rcx
	add	rax, qword ptr [rbp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rbp], ecx
	jmp	.label_444
	nop	dword ptr [rax]
.label_445:
	mov	rax, qword ptr [rbp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rbp + 8], rcx
.label_444:
	mov	r12, qword ptr [rax]
	mov	rdi, r12
	call	strlen
	mov	r13, rax
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r13
	call	memcpy
	add	rbx, r13
	cmp	r14, r15
	lea	r14, [r14 + 1]
	jne	.label_443
	mov	rcx, qword ptr [rsp + 0x20]
.label_446:
	mov	byte ptr [rbx], 0
.label_439:
	mov	rax, rcx
	add	rsp, 0x28
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
	#Procedure 0x4053d0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_447
	test	rsi, rsi
	mov	ecx, 1
	je	.label_448
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_448
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_447:
	mov	ecx, 1
.label_448:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405420

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
	je	.label_449
	cmp	r15, -2
	jb	.label_449
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_449
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_449:
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
	#Procedure 0x405480

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
	jne	.label_451
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_450
	test	cl, cl
	jne	.label_450
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_450
.label_451:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_450
	call	__errno_location
	mov	dword ptr [rax], 0
.label_450:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4054e0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_453
	cmp	byte ptr [rax], 0x43
	jne	.label_455
	cmp	byte ptr [rax + 1], 0
	je	.label_452
.label_455:
	mov	esi, OFFSET FLAT:label_454
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_453
.label_452:
	xor	ebx, ebx
.label_453:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405520

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_42
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_456
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405550

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_457
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_459
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_457
.label_459:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_457
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_458
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_458:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_457:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055d0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_460
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_460
	test	byte ptr [rbx + 1], 1
	je	.label_460
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_460:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405610

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
	jne	.label_461
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_461
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_462
.label_461:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_462:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_463
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_463:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	16
	#Procedure 0x405680

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
	nop	word ptr cs:[rax + rax]
