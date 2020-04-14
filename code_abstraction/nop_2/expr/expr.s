	.section	.text
	.align	16
	#Procedure 0x401d50

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_9
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_7
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_10
.label_9:
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
.label_7:
	mov	esi, 0xa
	call	__overflow
.label_10:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
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
	mov	esi, OFFSET FLAT:.str.32
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
	mov	esi, OFFSET FLAT:.str.34
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.12
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.12
	mov	ecx, OFFSET FLAT:.str.38
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402000

	.globl main
	.type main, @function
main:
	push	rbp
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.14
	mov	esi, OFFSET FLAT:.str.15
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.14
	call	textdomain
	mov	dword ptr [dword ptr [rip + exit_failure]],  3
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	qword ptr [rsp + 0x18], 0
	mov	qword ptr [word ptr [rsp + 16]], OFFSET FLAT:.str.20
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:.str.19
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str.18_0
	mov	edx, OFFSET FLAT:.str.12
	mov	ecx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.17_0
	mov	r9d, OFFSET FLAT:usage
	xor	eax, eax
	mov	edi, ebp
	mov	rsi, rbx
	call	parse_long_options
	cmp	ebp, 2
	jb	.label_17
	mov	rax, qword ptr [rbx + 8]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_19
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x2d
	jne	.label_19
	cmp	byte ptr [rax + 2], 0
	jne	.label_19
	dec	ebp
	cmp	ebp, 1
	jbe	.label_17
	add	rbx, 8
.label_19:
	add	rbx, 8
	mov	qword ptr [word ptr [rip + args]],  rbx
	mov	edi, 1
	call	eval
	mov	rbx, rax
	mov	rax,  qword ptr [word ptr [rip + args]]
	cmp	qword ptr [rax], 0
	jne	.label_18
	mov	eax, dword ptr [rbx]
	cmp	eax, 1
	je	.label_20
	test	eax, eax
	jne	.label_21
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rdx, rbx
	add	rdx, 8
	mov	esi, 0xa
	call	__gmpz_out_str
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_14
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_12
.label_20:
	mov	rdi, qword ptr [rbx + 8]
	call	puts
.label_12:
	mov	eax, dword ptr [rbx]
	cmp	eax, 1
	je	.label_22
	test	eax, eax
	jne	.label_13
	cmp	dword ptr [rbx + 0xc], 0
	sete	al
	jmp	.label_15
.label_22:
	mov	rcx, qword ptr [rbx + 8]
	mov	dl, byte ptr [rcx]
	mov	al, 1
	test	dl, dl
	je	.label_15
	movzx	edx, dl
	cmp	edx, 0x2d
	sete	dl
	movzx	esi, dl
	mov	dl, byte ptr [rcx + rsi]
	lea	rcx, [rcx + rsi + 1]
	nop	word ptr cs:[rax + rax]
.label_11:
	movzx	edx, dl
	cmp	edx, 0x30
	jne	.label_16
	mov	dl, byte ptr [rcx]
	inc	rcx
	test	dl, dl
	jne	.label_11
	jmp	.label_15
.label_16:
	xor	eax, eax
.label_15:
	movzx	eax, al
	add	rsp, 0x28
	pop	rbx
	pop	rbp
	ret	
.label_14:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_12
.label_17:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 2
	call	usage
.label_18:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax,  qword ptr [word ptr [rip + args]]
	mov	rdx, qword ptr [rax]
	xor	edi, edi
	mov	esi, 8
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_21:
	call	abort
.label_13:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x402220

	.globl eval
	.type eval, @function
eval:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14d, edi
	movzx	edi, r14b
	call	eval1
	mov	r12, rax
	mov	rbx,  qword ptr [word ptr [rip + args]]
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_25
	nop	word ptr [rax + rax]
.label_44:
	lea	r15, [r12 + 8]
.label_35:
	mov	esi, OFFSET FLAT:.str.39
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rax, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rax
	jne	.label_25
	test	r14b, r14b
	je	.label_47
	mov	eax, dword ptr [r12]
	cmp	eax, 1
	je	.label_49
	test	eax, eax
	jne	.label_26
	cmp	dword ptr [r12 + 0xc], 0
	sete	al
	jmp	.label_30
	nop	dword ptr [rax]
.label_47:
	xor	eax, eax
.label_30:
	movzx	edi, al
	call	eval1
	mov	rbp, rax
	mov	eax, dword ptr [r12]
	test	eax, eax
	je	.label_33
	cmp	eax, 1
	jne	.label_39
	mov	rcx, qword ptr [r15]
	mov	dl, byte ptr [rcx]
	test	dl, dl
	je	.label_36
	movzx	edx, dl
	cmp	edx, 0x2d
	sete	dl
	movzx	esi, dl
	mov	dl, byte ptr [rcx + rsi]
	lea	rcx, [rcx + rsi + 1]
	nop	
.label_43:
	movzx	edx, dl
	cmp	edx, 0x30
	jne	.label_41
	mov	dl, byte ptr [rcx]
	inc	rcx
	test	dl, dl
	jne	.label_43
	jmp	.label_46
	nop	word ptr cs:[rax + rax]
.label_33:
	cmp	dword ptr [r12 + 0xc], 0
	je	.label_23
.label_41:
	mov	rdi, rbp
	add	rdi, 8
	cmp	dword ptr [rbp], 1
	jne	.label_27
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_37
	nop	word ptr cs:[rax + rax]
.label_27:
	call	__gmpz_clear
.label_37:
	mov	rdi, rbp
	call	free
	mov	rbx,  qword ptr [word ptr [rip + args]]
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	jne	.label_35
	jmp	.label_25
	nop	word ptr cs:[rax + rax]
.label_49:
	mov	rcx, qword ptr [r15]
	mov	dl, byte ptr [rcx]
	mov	al, 1
	test	dl, dl
	je	.label_30
	movzx	edx, dl
	cmp	edx, 0x2d
	sete	dl
	movzx	esi, dl
	mov	dl, byte ptr [rcx + rsi]
	lea	rcx, [rcx + rsi + 1]
	nop	word ptr cs:[rax + rax]
.label_31:
	movzx	edx, dl
	cmp	edx, 0x30
	jne	.label_28
	mov	dl, byte ptr [rcx]
	inc	rcx
	test	dl, dl
	jne	.label_31
	jmp	.label_30
.label_28:
	xor	eax, eax
	jmp	.label_30
	nop	dword ptr [rax]
.label_46:
	cmp	eax, 1
	jne	.label_23
.label_36:
	mov	rdi, qword ptr [r15]
	call	free
	jmp	.label_45
	nop	
.label_23:
	mov	rdi, r15
	call	__gmpz_clear
.label_45:
	mov	rdi, r12
	call	free
	mov	eax, dword ptr [rbp]
	test	eax, eax
	je	.label_38
	cmp	eax, 1
	jne	.label_40
	mov	rcx, qword ptr [rbp + 8]
	mov	dl, byte ptr [rcx]
	test	dl, dl
	je	.label_42
	movzx	edx, dl
	cmp	edx, 0x2d
	sete	dl
	movzx	esi, dl
	mov	dl, byte ptr [rcx + rsi]
	lea	rcx, [rcx + rsi + 1]
	nop	
.label_24:
	movzx	edx, dl
	cmp	edx, 0x30
	jne	.label_34
	mov	dl, byte ptr [rcx]
	inc	rcx
	test	dl, dl
	jne	.label_24
	cmp	eax, 1
	jne	.label_29
.label_42:
	mov	rdi, qword ptr [rbp + 8]
	call	free
	jmp	.label_32
	nop	word ptr cs:[rax + rax]
.label_38:
	cmp	dword ptr [rbp + 0xc], 0
	jne	.label_34
.label_29:
	mov	rdi, rbp
	add	rdi, 8
	call	__gmpz_clear
.label_32:
	mov	rdi, rbp
	call	free
	mov	edi, 0x18
	call	xmalloc
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	lea	rdi, [rbp + 8]
	xor	esi, esi
	call	__gmpz_init_set_ui
.label_34:
	mov	rbx,  qword ptr [word ptr [rip + args]]
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	mov	r12, rbp
	jne	.label_44
	jmp	.label_48
.label_25:
	mov	rbp, r12
.label_48:
	mov	rax, rbp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_39:
	call	abort
.label_26:
	call	abort
.label_40:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x4024a0

	.globl eval1
	.type eval1, @function
eval1:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14d, edi
	movzx	edi, r14b
	call	eval2
	mov	r12, rax
	jmp	.label_62
	nop	dword ptr [rax]
.label_71:
	mov	rdi, rbp
	call	free
	mov	edi, 0x18
	call	xmalloc
	mov	r12, rax
	mov	dword ptr [r12], 0
	lea	rdi, [r12 + 8]
	xor	esi, esi
	call	__gmpz_init_set_ui
.label_62:
	mov	rbp,  qword ptr [word ptr [rip + args]]
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_58
	lea	r15, [r12 + 8]
.label_54:
	mov	esi, OFFSET FLAT:.str.40
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rax, [rbp + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rax
	jne	.label_58
	test	r14b, r14b
	je	.label_57
	mov	eax, dword ptr [r12]
	cmp	eax, 1
	je	.label_59
	test	eax, eax
	jne	.label_65
	cmp	dword ptr [r12 + 0xc], 0
	sete	al
	jmp	.label_53
	nop	word ptr [rax + rax]
.label_57:
	xor	eax, eax
	jmp	.label_69
	nop	word ptr cs:[rax + rax]
.label_59:
	mov	rcx, qword ptr [r15]
	mov	dl, byte ptr [rcx]
	mov	al, 1
	test	dl, dl
	je	.label_53
	movzx	edx, dl
	cmp	edx, 0x2d
	sete	dl
	movzx	esi, dl
	mov	dl, byte ptr [rcx + rsi]
	lea	rcx, [rcx + rsi + 1]
	nop	
.label_51:
	movzx	edx, dl
	cmp	edx, 0x30
	jne	.label_50
	mov	dl, byte ptr [rcx]
	inc	rcx
	test	dl, dl
	jne	.label_51
	jmp	.label_53
.label_50:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_53:
	xor	al, 1
.label_69:
	movzx	edi, al
	call	eval2
	mov	rbp, rax
	mov	eax, dword ptr [r12]
	test	eax, eax
	je	.label_75
	cmp	eax, 1
	jne	.label_63
	mov	rcx, qword ptr [r15]
	mov	dl, byte ptr [rcx]
	test	dl, dl
	je	.label_67
	movzx	edx, dl
	cmp	edx, 0x2d
	sete	dl
	movzx	esi, dl
	mov	dl, byte ptr [rcx + rsi]
	lea	rcx, [rcx + rsi + 1]
	nop	
.label_72:
	movzx	edx, dl
	cmp	edx, 0x30
	jne	.label_68
	mov	dl, byte ptr [rcx]
	inc	rcx
	test	dl, dl
	jne	.label_72
	jmp	.label_56
	nop	word ptr cs:[rax + rax]
.label_75:
	cmp	dword ptr [r12 + 0xc], 0
	je	.label_60
.label_68:
	mov	ecx, dword ptr [rbp]
	test	ecx, ecx
	je	.label_52
	cmp	ecx, 1
	jne	.label_73
	mov	rdx, qword ptr [rbp + 8]
	mov	bl, byte ptr [rdx]
	test	bl, bl
	je	.label_56
	movzx	esi, bl
	cmp	esi, 0x2d
	sete	bl
	movzx	esi, bl
	mov	bl, byte ptr [rdx + rsi]
	lea	rdx, [rdx + rsi + 1]
	nop	
.label_61:
	movzx	esi, bl
	cmp	esi, 0x30
	jne	.label_64
	mov	bl, byte ptr [rdx]
	inc	rdx
	test	bl, bl
	jne	.label_61
	jmp	.label_56
	nop	word ptr cs:[rax + rax]
.label_52:
	cmp	dword ptr [rbp + 0xc], 0
	jne	.label_55
	jmp	.label_56
.label_64:
	cmp	ecx, 1
	jne	.label_55
	mov	rdi, qword ptr [rbp + 8]
	call	free
	jmp	.label_74
	nop	dword ptr [rax + rax]
.label_55:
	mov	rdi, rbp
	add	rdi, 8
	call	__gmpz_clear
.label_74:
	mov	rdi, rbp
	call	free
	mov	rbp,  qword ptr [word ptr [rip + args]]
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	jne	.label_54
	jmp	.label_58
	nop	word ptr [rax + rax]
.label_56:
	cmp	eax, 1
	jne	.label_60
.label_67:
	mov	rdi, qword ptr [r15]
	call	free
	jmp	.label_66
	nop	
.label_60:
	mov	rdi, r15
	call	__gmpz_clear
.label_66:
	mov	rdi, r12
	call	free
	mov	rdi, rbp
	add	rdi, 8
	cmp	dword ptr [rbp], 1
	jne	.label_70
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_71
	nop	word ptr [rax + rax]
.label_70:
	call	__gmpz_clear
	jmp	.label_71
.label_58:
	mov	rax, r12
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_63:
	call	abort
.label_73:
	call	abort
.label_65:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402720

	.globl eval2
	.type eval2, @function
eval2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	movzx	r14d, dil
	mov	edi, r14d
	call	eval3
	mov	rbx, rax
	jmp	.label_87
	nop	dword ptr [rax]
.label_90:
	mov	rdi, r15
	call	free
	mov	edi, 0x18
	call	xmalloc
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	lea	rdi, [rbx + 8]
	mov	rsi, rbp
	call	__gmpz_init_set_ui
.label_87:
	mov	rbp,  qword ptr [word ptr [rip + args]]
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_79
	mov	esi, OFFSET FLAT:.str.41
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rbp, [rbp + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbp
	mov	r13d, 0
	je	.label_78
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_79
	mov	esi, OFFSET FLAT:.str.42
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rbp, [rbp + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbp
	mov	r13d, 1
	je	.label_78
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_79
	mov	esi, OFFSET FLAT:.str.43
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rbp, [rbp + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbp
	mov	r13d, 2
	je	.label_78
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_79
	mov	esi, OFFSET FLAT:.str.44
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rbp, [rbp + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbp
	je	.label_78
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_79
	mov	esi, OFFSET FLAT:.str.45
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rbp, [rbp + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbp
	mov	r13d, 3
	je	.label_78
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_79
	mov	esi, OFFSET FLAT:.str.46
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rbp, [rbp + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbp
	mov	r13d, 4
	je	.label_78
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_79
	mov	esi, OFFSET FLAT:.str.47
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rax, [rbp + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rax
	mov	r13d, 5
	jne	.label_79
	nop	word ptr cs:[rax + rax]
.label_78:
	mov	edi, r14d
	call	eval3
	mov	r15, rax
	test	r14b, r14b
	je	.label_94
	mov	eax, dword ptr [rbx]
	cmp	eax, 1
	je	.label_77
	test	eax, eax
	jne	.label_80
	lea	rbp, [rbx + 8]
	xor	edi, edi
	mov	esi, 0xa
	mov	rdx, rbp
	call	__gmpz_get_str
	mov	r12, rax
	mov	rdi, rbp
	call	__gmpz_clear
	mov	qword ptr [rbx + 8], r12
	mov	dword ptr [rbx], 1
.label_77:
	mov	eax, dword ptr [r15]
	cmp	eax, 1
	je	.label_88
	test	eax, eax
	jne	.label_80
	lea	rbp, [r15 + 8]
	xor	edi, edi
	mov	esi, 0xa
	mov	rdx, rbp
	call	__gmpz_get_str
	mov	r12, rax
	mov	rdi, rbp
	call	__gmpz_clear
	mov	qword ptr [r15 + 8], r12
	mov	dword ptr [r15], 1
.label_88:
	lea	rax, [rbx + 8]
	mov	qword ptr [rsp], rax
	mov	rbp, qword ptr [rbx + 8]
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2d
	sete	al
	movzx	eax, al
	mov	cl, byte ptr [rbp + rax]
	lea	rax, [rbp + rax + 1]
	nop	word ptr cs:[rax + rax]
.label_85:
	movsx	ecx, cl
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_92
	mov	cl, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_85
	mov	r12d, r14d
	lea	r14, [r15 + 8]
	mov	rsi, qword ptr [r15 + 8]
	movzx	eax, byte ptr [rsi]
	cmp	eax, 0x2d
	sete	al
	movzx	eax, al
	mov	cl, byte ptr [rsi + rax]
	lea	rax, [rsi + rax + 1]
	nop	word ptr cs:[rax + rax]
.label_93:
	movsx	ecx, cl
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_91
	mov	cl, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_93
	mov	rdi, rbp
	call	strintcmp
	jmp	.label_95
	nop	
.label_94:
	lea	rax, [rbx + 8]
	xor	ebp, ebp
	jmp	.label_76
	nop	dword ptr [rax + rax]
.label_92:
	mov	r12d, r14d
	lea	r14, [r15 + 8]
.label_91:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsi, qword ptr [r14]
	mov	rdi, rbp
	call	strcoll
.label_95:
	mov	ebp, eax
	mov	r14d, r12d
	mov	eax, r13d
	cmp	r13d, 5
	ja	.label_86
	jmp	qword ptr [word ptr [+ (rax * 8) + label_89]]
.label_2390:
	shr	ebp, 0x1f
	jmp	.label_81
.label_2391:
	test	ebp, ebp
	setle	al
	movzx	ebp, al
	jmp	.label_81
.label_2392:
	test	ebp, ebp
	sete	al
	movzx	ebp, al
	jmp	.label_81
.label_2393:
	test	ebp, ebp
	setne	al
	movzx	ebp, al
	jmp	.label_81
.label_2394:
	shr	ebp, 0x1f
	xor	rbp, 1
	jmp	.label_81
.label_2395:
	test	ebp, ebp
	setg	al
	movzx	ebp, al
	nop	word ptr [rax + rax]
.label_81:
	mov	rax, qword ptr [rsp]
.label_76:
	cmp	dword ptr [rbx], 1
	jne	.label_83
	mov	rdi, qword ptr [rax]
	call	free
	jmp	.label_82
	nop	word ptr cs:[rax + rax]
.label_83:
	lea	rdi, [rbx + 8]
	call	__gmpz_clear
.label_82:
	mov	rdi, rbx
	call	free
	mov	rdi, r15
	add	rdi, 8
	cmp	dword ptr [r15], 1
	jne	.label_84
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_90
	nop	dword ptr [rax + rax]
.label_84:
	call	__gmpz_clear
	jmp	.label_90
.label_79:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_80:
	call	abort
.label_86:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b00

	.globl eval3
	.type eval3, @function
eval3:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	movzx	r12d, dil
	mov	edi, r12d
	call	eval4
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + args]]
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_97
	mov	r15, r14
	add	r15, 8
	nop	word ptr cs:[rax + rax]
.label_98:
	mov	esi, OFFSET FLAT:.str_1
	call	strcmp
	xor	r13d, r13d
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rbx, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbx
	je	.label_96
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_97
	mov	esi, OFFSET FLAT:.str.52
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rax, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rax
	mov	r13d, 1
	jne	.label_97
.label_96:
	mov	edi, r12d
	call	eval4
	mov	rbx, rax
	test	r12b, r12b
	je	.label_102
	mov	eax, dword ptr [r14]
	test	eax, eax
	je	.label_104
	cmp	eax, 1
	jne	.label_106
	mov	rbp, qword ptr [r15]
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2d
	sete	al
	movzx	eax, al
	mov	cl, byte ptr [rbp + rax]
	lea	rax, [rbp + rax + 1]
	nop	word ptr cs:[rax + rax]
.label_105:
	movsx	ecx, cl
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_99
	mov	cl, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_105
	mov	edx, 0xa
	mov	rdi, r15
	mov	rsi, rbp
	call	__gmpz_init_set_str
	mov	rdi, rbp
	call	free
	mov	dword ptr [r14], 0
.label_104:
	mov	eax, dword ptr [rbx]
	test	eax, eax
	je	.label_100
	cmp	eax, 1
	jne	.label_101
	lea	rdi, [rbx + 8]
	mov	rbp, qword ptr [rbx + 8]
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2d
	sete	al
	movzx	eax, al
	mov	cl, byte ptr [rbp + rax]
	lea	rax, [rbp + rax + 1]
	nop	word ptr cs:[rax + rax]
.label_108:
	movsx	ecx, cl
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_99
	mov	cl, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_108
	mov	edx, 0xa
	mov	rsi, rbp
	call	__gmpz_init_set_str
	mov	rdi, rbp
	call	free
	mov	dword ptr [rbx], 0
.label_100:
	test	r13d, r13d
	mov	eax, OFFSET FLAT:__gmpz_sub
	mov	ecx, OFFSET FLAT:__gmpz_add
	cmove	rax, rcx
	lea	rdx, [rbx + 8]
	mov	rdi, r15
	mov	rsi, r15
	call	rax
.label_102:
	mov	rdi, rbx
	add	rdi, 8
	cmp	dword ptr [rbx], 1
	jne	.label_103
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_107
	nop	word ptr cs:[rax + rax]
.label_103:
	call	__gmpz_clear
.label_107:
	mov	rdi, rbx
	call	free
	mov	rbx,  qword ptr [word ptr [rip + args]]
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	jne	.label_98
.label_97:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_99:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_106:
	call	abort
.label_101:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d30

	.globl eval4
	.type eval4, @function
eval4:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	dword ptr [rsp + 0x14], edi
	movzx	r13d, dil
	mov	edi, r13d
	call	eval6
	mov	r15, rax
	jmp	.label_130
	nop	word ptr cs:[rax + rax]
.label_114:
	mov	rdi, rbx
	call	free
.label_130:
	mov	rbx,  qword ptr [word ptr [rip + args]]
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_113
	mov	esi, OFFSET FLAT:.str.58
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rbx, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbx
	jne	.label_113
	mov	edi, r13d
	call	eval6
	mov	rbp, rax
	mov	rbx, rbp
	test	r13b, r13b
	je	.label_120
	mov	rdi, r15
	mov	rsi, rbx
	call	docolon
	mov	r14, rax
	lea	rdi, [r15 + 8]
	cmp	dword ptr [r15], 1
	jne	.label_131
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_129
	nop	
.label_131:
	call	__gmpz_clear
.label_129:
	mov	rdi, r15
	call	free
	mov	r15, r14
.label_120:
	add	rbp, 8
	cmp	dword ptr [rbx], 1
	jne	.label_128
	mov	rdi, qword ptr [rbp]
	call	free
	jmp	.label_114
	nop	word ptr [rax + rax]
.label_128:
	mov	rdi, rbp
	call	__gmpz_clear
	jmp	.label_114
.label_113:
	mov	qword ptr [rsp], r15
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_111
	mov	rax, qword ptr [rsp]
	lea	rax, [rax + 8]
	mov	qword ptr [rsp + 8], rax
	nop	word ptr [rax + rax]
.label_124:
	mov	esi, OFFSET FLAT:.str.54
	call	strcmp
	xor	r12d, r12d
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rbx, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbx
	je	.label_123
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_111
	mov	esi, OFFSET FLAT:.str.55
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rbx, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbx
	mov	r12d, 1
	je	.label_123
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_111
	mov	esi, OFFSET FLAT:.str.56
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rax, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rax
	mov	r12d, 2
	jne	.label_111
.label_123:
	mov	edi, r13d
	call	eval6
	mov	rbx, rax
	jmp	.label_127
	nop	word ptr cs:[rax + rax]
.label_134:
	mov	rdi, rbp
	call	free
.label_127:
	mov	rbp,  qword ptr [word ptr [rip + args]]
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_132
	mov	esi, OFFSET FLAT:.str.58
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rax, [rbp + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rax
	jne	.label_132
	mov	edi, r13d
	call	eval6
	mov	r14, rax
	mov	rbp, r14
	test	r13b, r13b
	je	.label_117
	mov	rdi, rbx
	mov	rsi, rbp
	call	docolon
	mov	r15, rax
	lea	rdi, [rbx + 8]
	cmp	dword ptr [rbx], 1
	jne	.label_122
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_125
.label_122:
	call	__gmpz_clear
.label_125:
	mov	rdi, rbx
	call	free
	mov	rbx, r15
.label_117:
	add	r14, 8
	cmp	dword ptr [rbp], 1
	jne	.label_137
	mov	rdi, qword ptr [r14]
	call	free
	jmp	.label_134
	nop	word ptr [rax + rax]
.label_137:
	mov	rdi, r14
	call	__gmpz_clear
	jmp	.label_134
	nop	dword ptr [rax]
.label_132:
	mov	eax, dword ptr [rsp + 0x14]
	test	al, al
	je	.label_109
	mov	rax, qword ptr [rsp]
	mov	eax, dword ptr [rax]
	test	eax, eax
	je	.label_115
	cmp	eax, 1
	jne	.label_118
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, qword ptr [rax]
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2d
	sete	al
	movzx	eax, al
	mov	cl, byte ptr [rbp + rax]
	lea	rax, [rbp + rax + 1]
	nop	dword ptr [rax]
.label_133:
	movsx	ecx, cl
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_112
	mov	cl, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_133
	mov	edx, 0xa
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, rbp
	call	__gmpz_init_set_str
	mov	rdi, rbp
	call	free
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0
.label_115:
	mov	eax, dword ptr [rbx]
	test	eax, eax
	je	.label_138
	cmp	eax, 1
	jne	.label_110
	lea	rdi, [rbx + 8]
	mov	rbp, qword ptr [rbx + 8]
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2d
	sete	al
	movzx	eax, al
	mov	cl, byte ptr [rbp + rax]
	lea	rax, [rbp + rax + 1]
	nop	dword ptr [rax]
.label_126:
	movsx	ecx, cl
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_112
	mov	cl, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_126
	mov	edx, 0xa
	mov	rsi, rbp
	call	__gmpz_init_set_str
	mov	rdi, rbp
	call	free
	mov	dword ptr [rbx], 0
.label_138:
	test	r12d, r12d
	mov	eax, OFFSET FLAT:__gmpz_mul
	je	.label_135
	cmp	dword ptr [rbx + 0xc], 0
	je	.label_136
	cmp	r12d, 1
	mov	eax, OFFSET FLAT:__gmpz_tdiv_r
	mov	ecx, OFFSET FLAT:__gmpz_tdiv_q
	cmove	rax, rcx
.label_135:
	lea	rdx, [rbx + 8]
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, rdi
	call	rax
.label_109:
	lea	rdi, [rbx + 8]
	cmp	dword ptr [rbx], 1
	jne	.label_119
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_121
	nop	word ptr [rax + rax]
.label_119:
	call	__gmpz_clear
.label_121:
	mov	rdi, rbx
	call	free
	mov	rbx,  qword ptr [word ptr [rip + args]]
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	jne	.label_124
.label_111:
	mov	rax, qword ptr [rsp]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_112:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
.label_116:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_118:
	call	abort
.label_110:
	call	abort
.label_136:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	jmp	.label_116
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403120

	.globl eval6
	.type eval6, @function
eval6:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r15d, edi
	mov	rbp,  qword ptr [word ptr [rip + args]]
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_145
	mov	esi, OFFSET FLAT:.str_1
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rbx, [rbp + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbx
	mov	rbp, qword ptr [rbp + rax*8]
	je	.label_193
	test	rbp, rbp
	je	.label_145
	mov	esi, OFFSET FLAT:.str.59
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rbx, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbx
	je	.label_201
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_145
	mov	esi, OFFSET FLAT:.str.60
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rbx, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbx
	je	.label_207
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_145
	mov	esi, OFFSET FLAT:.str.61
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rbx, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbx
	je	.label_211
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_145
	mov	esi, OFFSET FLAT:.str.62
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rbx, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbx
	je	.label_141
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_145
	mov	esi, OFFSET FLAT:.str.68
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rbx, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbx
	je	.label_202
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_154
	mov	esi, OFFSET FLAT:.str.70
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rbx, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbx
	je	.label_158
.label_154:
	lea	rax, [rbx + 8]
	mov	qword ptr [word ptr [rip + args]],  rax
	mov	rbx, qword ptr [rbx]
	mov	edi, 0x18
	call	xmalloc
	mov	r13, rax
	mov	dword ptr [r13], 1
	mov	rdi, rbx
	jmp	.label_165
.label_193:
	test	rbp, rbp
	je	.label_145
	add	rbx, 8
	mov	qword ptr [word ptr [rip + args]],  rbx
	mov	edi, 0x18
	call	xmalloc
	mov	r13, rax
	mov	dword ptr [r13], 1
	mov	rdi, rbp
.label_165:
	call	xstrdup
	mov	qword ptr [r13 + 8], rax
	jmp	.label_153
.label_201:
	movzx	edi, r15b
	call	eval6
	mov	rbp, rax
	mov	eax, dword ptr [rbp]
	test	eax, eax
	je	.label_205
	cmp	eax, 1
	jne	.label_179
	lea	r14, [rbp + 8]
	mov	rbx, qword ptr [rbp + 8]
	jmp	.label_182
.label_207:
	movzx	ebx, r15b
	mov	edi, ebx
	call	eval6
	mov	r13, rax
	mov	edi, ebx
	call	eval6
	mov	rbp, rax
	mov	r14, rbp
	test	r15b, r15b
	je	.label_187
	mov	rdi, r13
	mov	rsi, r14
	call	docolon
	mov	r15, rax
	mov	rdi, r13
	add	rdi, 8
	cmp	dword ptr [r13], 1
	jne	.label_191
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_195
.label_205:
	lea	r14, [rbp + 8]
	xor	edi, edi
	mov	esi, 0xa
	mov	rdx, r14
	call	__gmpz_get_str
	mov	rbx, rax
	mov	rdi, r14
	call	__gmpz_clear
	mov	qword ptr [rbp + 8], rbx
	mov	dword ptr [rbp], 1
.label_182:
	mov	rdi, rbx
	call	mbslen
	mov	rbx, rax
	mov	edi, 0x18
	call	xmalloc
	mov	r13, rax
	mov	dword ptr [r13], 0
	lea	rdi, [r13 + 8]
	mov	rsi, rbx
	call	__gmpz_init_set_ui
	cmp	dword ptr [rbp], 1
	jne	.label_206
	mov	rdi, qword ptr [r14]
	call	free
	jmp	.label_163
.label_206:
	mov	rdi, rbp
	add	rdi, 8
	jmp	.label_190
.label_211:
	movzx	ebx, r15b
	mov	edi, ebx
	call	eval6
	mov	r12, rax
	mov	r14, r12
	mov	qword ptr [rsp + 0x18], r14
	mov	edi, ebx
	call	eval6
	mov	r15, rax
	mov	eax, dword ptr [r12]
	cmp	eax, 1
	je	.label_213
	test	eax, eax
	jne	.label_161
	lea	rbx, [r12 + 8]
	xor	edi, edi
	mov	esi, 0xa
	mov	rdx, rbx
	call	__gmpz_get_str
	mov	rbp, rax
	mov	rdi, rbx
	call	__gmpz_clear
	mov	qword ptr [r14 + 8], rbp
	mov	dword ptr [r14], 1
.label_213:
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_147
	cmp	eax, 1
	jne	.label_148
	lea	rbp, [r15 + 8]
	mov	r13, qword ptr [r15 + 8]
	jmp	.label_150
.label_141:
	movzx	ebx, r15b
	mov	edi, ebx
	call	eval6
	mov	r12, rax
	mov	edi, ebx
	call	eval6
	mov	r15, rax
	mov	edi, ebx
	call	eval6
	mov	rbp, rax
	mov	eax, dword ptr [r12]
	cmp	eax, 1
	je	.label_159
	mov	r14, rbp
	test	eax, eax
	jne	.label_161
	lea	rbx, [r12 + 8]
	xor	edi, edi
	mov	esi, 0xa
	mov	rdx, rbx
	call	__gmpz_get_str
	mov	rbp, rax
	mov	rdi, rbx
	call	__gmpz_clear
	mov	qword ptr [r12 + 8], rbp
	mov	dword ptr [r12], 1
	mov	rbp, r14
.label_159:
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_168
	cmp	eax, 1
	jne	.label_161
	lea	rdi, [r15 + 8]
	mov	rbx, qword ptr [r15 + 8]
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	sete	al
	movzx	eax, al
	mov	cl, byte ptr [rbx + rax]
	lea	rax, [rbx + rax + 1]
	nop	word ptr cs:[rax + rax]
.label_180:
	movsx	ecx, cl
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_176
	mov	cl, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_180
	mov	edx, 0xa
	mov	rsi, rbx
	call	__gmpz_init_set_str
	mov	rdi, rbx
	call	free
	mov	dword ptr [r15], 0
.label_168:
	mov	eax, dword ptr [rbp]
	test	eax, eax
	je	.label_173
	cmp	eax, 1
	jne	.label_188
	lea	rdi, [rbp + 8]
	mov	rbx, qword ptr [rbp + 8]
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	sete	al
	movzx	eax, al
	mov	cl, byte ptr [rbx + rax]
	lea	rax, [rbx + rax + 1]
.label_196:
	movsx	ecx, cl
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_176
	mov	cl, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_196
	mov	edx, 0xa
	mov	rsi, rbx
	call	__gmpz_init_set_str
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], 0
.label_173:
	mov	eax, dword ptr [r15 + 0xc]
	mov	qword ptr [rsp + 0x20], r15
	mov	r14, -1
	test	eax, eax
	mov	r15, -1
	js	.label_200
	cmp	eax, 1
	ja	.label_203
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	xor	r15d, r15d
	test	eax, eax
	cmovne	r15, qword ptr [rcx]
	cmp	r15, -1
	jne	.label_200
.label_203:
	mov	r15, -2
.label_200:
	mov	eax, dword ptr [rbp + 0xc]
	test	eax, eax
	js	.label_208
	cmp	eax, 1
	ja	.label_209
	mov	rcx, qword ptr [rbp + 0x10]
	xor	r14d, r14d
	test	eax, eax
	cmovne	r14, qword ptr [rcx]
	cmp	r14, -1
	jne	.label_208
.label_209:
	mov	r14, -2
.label_208:
	mov	qword ptr [rsp + 0x18], rbp
	mov	r13, qword ptr [r12 + 8]
	mov	rdi, r13
	call	strlen
	mov	rbp, rax
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	mov	rbx, rbp
	jb	.label_139
	mov	rdi, r13
	call	mbslen
	mov	rbx, rax
.label_139:
	lea	rax, [r15 - 1]
	cmp	rax, rbx
	jae	.label_142
	lea	rax, [r14 + 1]
	cmp	rax, 1
	ja	.label_144
.label_142:
	mov	edi, OFFSET FLAT:.str_0
	call	xstrdup
	mov	r14, rax
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r15, qword ptr [rsp + 0x20]
	jmp	.label_151
.label_147:
	lea	rbp, [r15 + 8]
	xor	edi, edi
	mov	esi, 0xa
	mov	rdx, rbp
	call	__gmpz_get_str
	mov	r13, rax
	mov	rdi, rbp
	call	__gmpz_clear
	mov	qword ptr [r15 + 8], r13
	mov	dword ptr [r15], 1
.label_150:
	xor	ebx, ebx
	cmp	byte ptr [r13], 0
	je	.label_160
	mov	qword ptr [rsp + 0x10], rbp
	mov	rbp, qword ptr [r14 + 8]
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_162
	mov	qword ptr [rsp + 0x78], rbp
	mov	byte ptr [rsp + 0x68], 0
	mov	qword ptr [rsp + 0x6c], 0
	mov	byte ptr [rsp + 0x74], 0
	lea	rdi, [rsp + 0x68]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x88]
	xor	ecx, ecx
	mov	qword ptr [rsp + 8], rcx
	mov	rcx, rax
	shr	rcx, 0x20
	jne	.label_169
	test	al, al
	jne	.label_164
.label_169:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	lea	rbx, [rsp + 0x28]
	xor	ecx, ecx
.label_140:
	inc	rcx
	mov	qword ptr [rsp + 0x20], rcx
	cmp	qword ptr [rsp + 0x80], 1
	jne	.label_175
	mov	rbp, qword ptr [rsp + 0x78]
	movsx	esi, byte ptr [rbp]
	mov	rdi, r13
	call	mbschr
	test	rax, rax
	mov	eax, 1
	je	.label_183
	jmp	.label_185
.label_175:
	mov	qword ptr [rsp + 0x38], r13
	mov	byte ptr [rsp + 0x28], 0
	mov	qword ptr [rsp + 0x2c], 0
	jmp	.label_186
	nop	word ptr cs:[rax + rax]
.label_156:
	add	qword ptr [rsp + 0x38], r14
.label_186:
	mov	byte ptr [rsp + 0x34], 0
	mov	rdi, rbx
	call	mbuiter_multi_next
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rax, rcx
	shr	rax, 0x20
	test	cl, cl
	setne	cl
	je	.label_212
	test	eax, eax
	je	.label_197
.label_212:
	mov	rdx, qword ptr [rsp + 0x88]
	test	dl, dl
	je	.label_170
	xor	cl, 1
	test	cl, 1
	jne	.label_170
	shr	rdx, 0x20
	cmp	eax, edx
	je	.label_157
	mov	r14, qword ptr [rsp + 0x40]
	add	qword ptr [rsp + 0x38], r14
	jmp	.label_186
	nop	word ptr cs:[rax + rax]
.label_170:
	mov	r14, qword ptr [rsp + 0x40]
	cmp	r14, qword ptr [rsp + 0x80]
	jne	.label_156
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	jne	.label_156
	jmp	.label_157
.label_197:
	mov	rbp, qword ptr [rsp + 0x78]
	mov	rax, qword ptr [rsp + 0x80]
	mov	r14, qword ptr [rsp + 0x18]
.label_183:
	add	rbp, rax
	mov	qword ptr [rsp + 0x78], rbp
	mov	byte ptr [rsp + 0x74], 0
	lea	rdi, [rsp + 0x68]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, rax
	shr	rcx, 0x20
	mov	rcx, qword ptr [rsp + 0x20]
	jne	.label_140
	test	al, al
	je	.label_140
	jmp	.label_164
.label_191:
	call	__gmpz_clear
.label_195:
	mov	rdi, r13
	call	free
	mov	r13, r15
.label_187:
	add	rbp, 8
	cmp	dword ptr [r14], 1
	jne	.label_146
	mov	rdi, qword ptr [rbp]
	call	free
	jmp	.label_149
.label_146:
	mov	rdi, rbp
	call	__gmpz_clear
.label_149:
	mov	rdi, r14
	call	free
	jmp	.label_153
.label_202:
	movzx	edi, r15b
	call	eval
	mov	r13, rax
	mov	rbx,  qword ptr [word ptr [rip + args]]
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_155
	mov	esi, OFFSET FLAT:.str.70
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rax, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rax
	je	.label_153
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.71
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax,  qword ptr [word ptr [rip + args]]
	mov	rdx, qword ptr [rax]
	jmp	.label_167
.label_162:
	mov	rdi, rbp
	mov	rsi, r13
	call	strcspn
	cmp	byte ptr [rbp + rax], 0
	je	.label_171
	inc	rax
	mov	rbx, rax
	jmp	.label_172
.label_176:
	mov	edi, 0x18
	call	xmalloc
	mov	r13, rax
	mov	dword ptr [r13], 1
	mov	edi, OFFSET FLAT:.str_0
	call	xstrdup
	mov	qword ptr [r13 + 8], rax
	lea	rbx, [r12 + 8]
	jmp	.label_178
.label_171:
	xor	ebx, ebx
.label_172:
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_160
.label_157:
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 8], rax
	mov	r14, qword ptr [rsp + 0x18]
.label_164:
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rsp + 8]
.label_160:
	add	r12, 8
	mov	edi, 0x18
	call	xmalloc
	mov	r13, rax
	mov	dword ptr [r13], 0
	lea	rdi, [r13 + 8]
	mov	rsi, rbx
	call	__gmpz_init_set_ui
	cmp	dword ptr [r14], 1
	jne	.label_192
	mov	rdi, qword ptr [r12]
	call	free
	jmp	.label_194
.label_192:
	mov	rdi, r12
	call	__gmpz_clear
.label_194:
	mov	rdi, r14
	call	free
	cmp	dword ptr [r15], 1
	jne	.label_198
	mov	rdi, qword ptr [rbp]
	call	free
	jmp	.label_199
.label_198:
	mov	rdi, r15
	add	rdi, 8
	call	__gmpz_clear
.label_199:
	mov	rdi, r15
	call	free
	jmp	.label_153
.label_144:
	sub	rbx, r15
	inc	rbx
	cmp	rbx, r14
	cmova	rbx, r14
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jne	.label_204
	lea	rdi, [rbx + 1]
	call	xmalloc
	mov	r14, rax
	lea	rsi, [r13 + r15 - 1]
	mov	rcx, -1
	mov	rdi, r14
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	r13, rax
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r15, qword ptr [rsp + 0x20]
	jmp	.label_174
.label_204:
	mov	r14, r15
	inc	rbp
	mov	rdi, rbp
	call	xmalloc
	mov	rbp, rax
	mov	qword ptr [rsp + 0x10], rbp
	mov	qword ptr [rsp + 0x78], r13
	mov	byte ptr [rsp + 0x68], 0
	mov	qword ptr [rsp + 0x6c], 0
	mov	byte ptr [rsp + 0x74], 0
	lea	rdi, [rsp + 0x68]
	call	mbuiter_multi_next
	mov	rcx, qword ptr [rsp + 0x88]
	test	cl, cl
	sete	al
	shr	rcx, 0x20
	setne	cl
	test	rbx, rbx
	mov	r13, rbp
	je	.label_143
	or	cl, al
	mov	r13, qword ptr [rsp + 0x10]
	je	.label_143
	mov	ebp, 1
	lea	r15, [rsp + 0x68]
	mov	r13, qword ptr [rsp + 0x10]
.label_166:
	cmp	rbp, r14
	jb	.label_152
	dec	rbx
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x80]
	mov	rcx, -1
	mov	rdi, r13
	call	__mempcpy_chk
	mov	r13, rax
.label_152:
	mov	rax, qword ptr [rsp + 0x80]
	add	qword ptr [rsp + 0x78], rax
	mov	byte ptr [rsp + 0x74], 0
	mov	rdi, r15
	call	mbuiter_multi_next
	mov	rcx, qword ptr [rsp + 0x88]
	test	cl, cl
	sete	al
	shr	rcx, 0x20
	setne	cl
	test	rbx, rbx
	je	.label_143
	inc	rbp
	or	cl, al
	jne	.label_166
.label_143:
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r15, qword ptr [rsp + 0x20]
	mov	r14, qword ptr [rsp + 0x10]
.label_174:
	mov	byte ptr [r13], 0
.label_151:
	lea	rbx, [r12 + 8]
	mov	edi, 0x18
	call	xmalloc
	mov	r13, rax
	mov	dword ptr [r13], 1
	mov	rdi, r14
	call	xstrdup
	mov	qword ptr [r13 + 8], rax
	mov	rdi, r14
	call	free
.label_178:
	cmp	dword ptr [r12], 1
	jne	.label_177
	mov	rdi, qword ptr [rbx]
	call	free
	jmp	.label_181
.label_177:
	mov	rdi, r12
	add	rdi, 8
	call	__gmpz_clear
.label_181:
	mov	rdi, r12
	call	free
	mov	rdi, r15
	add	rdi, 8
	cmp	dword ptr [r15], 1
	jne	.label_184
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_189
.label_184:
	call	__gmpz_clear
.label_189:
	mov	rdi, r15
	call	free
	mov	rdi, rbp
	add	rdi, 8
	cmp	dword ptr [rbp], 1
	jne	.label_190
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_163
.label_190:
	call	__gmpz_clear
.label_163:
	mov	rdi, rbp
	call	free
.label_153:
	mov	rax, r13
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_185:
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 8], rax
	jmp	.label_164
.label_145:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
.label_210:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax,  qword ptr [word ptr [rip + args]]
	mov	rdx, qword ptr [rax - 8]
.label_167:
	xor	edi, edi
	mov	esi, 8
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_179:
	call	abort
.label_161:
	call	abort
.label_148:
	call	abort
.label_188:
	call	abort
.label_158:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.72
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_155:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.69
	jmp	.label_210
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c10

	.globl docolon
	.type docolon, @function
docolon:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x1a8
	mov	r15, rsi
	mov	r14, rdi
	mov	eax, dword ptr [r14]
	cmp	eax, 1
	je	.label_218
	test	eax, eax
	jne	.label_217
	lea	rbx, [r14 + 8]
	xor	edi, edi
	mov	esi, 0xa
	mov	rdx, rbx
	call	__gmpz_get_str
	mov	r12, rax
	mov	rdi, rbx
	call	__gmpz_clear
	mov	qword ptr [r14 + 8], r12
	mov	dword ptr [r14], 1
.label_218:
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_226
	cmp	eax, 1
	jne	.label_228
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_230
.label_226:
	lea	r12, [r15 + 8]
	xor	edi, edi
	mov	esi, 0xa
	mov	rdx, r12
	call	__gmpz_get_str
	mov	rbx, rax
	mov	rdi, r12
	call	__gmpz_clear
	mov	qword ptr [r15 + 8], rbx
	mov	dword ptr [r15], 1
.label_230:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	qword ptr [rsp + 0x10], 0
	movaps	xmmword ptr [rsp + 0x120], xmm0
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x140], rax
	mov	qword ptr [rsp + 0x148], 0
	mov	qword ptr [word ptr [rip + rpl_re_syntax_options]],  0x2c6
	mov	rdi, rbx
	call	strlen
	lea	rdx, [rsp + 0x120]
	mov	rdi, rbx
	mov	rsi, rax
	call	rpl_re_compile_pattern
	mov	rcx, rax
	test	rcx, rcx
	jne	.label_224
	and	byte ptr [rsp + 0x158], 0x7f
	mov	rbx, qword ptr [r14 + 8]
	mov	rdi, rbx
	call	strlen
	lea	rdi, [rsp + 0x120]
	lea	r8, [rsp]
	xor	ecx, ecx
	mov	rsi, rbx
	mov	rdx, rax
	call	rpl_re_match
	mov	r15, rax
	test	r15, r15
	js	.label_221
	cmp	qword ptr [rsp + 0x150], 0
	je	.label_214
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rax], 0
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [rsp + 8]
	add	rbx, qword ptr [rax + 8]
	mov	edi, 0x18
	call	xmalloc
	mov	r14, rax
	mov	dword ptr [r14], 1
	mov	rdi, rbx
	jmp	.label_229
.label_221:
	cmp	r15, -1
	jne	.label_225
	mov	rbx, qword ptr [rsp + 0x150]
	mov	edi, 0x18
	call	xmalloc
	mov	r14, rax
	cmp	rbx, 0
	je	.label_219
	mov	dword ptr [r14], 1
	mov	edi, OFFSET FLAT:.str_0
.label_229:
	call	xstrdup
	mov	qword ptr [r14 + 8], rax
	jmp	.label_222
.label_214:
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	mov	rbx, r15
	je	.label_216
	mov	r12, qword ptr [r14 + 8]
	mov	qword ptr [rsp + 0x178], r12
	mov	byte ptr [rsp + 0x168], 0
	mov	qword ptr [rsp + 0x16c], 0
	mov	byte ptr [rsp + 0x174], 0
	lea	rdi, [rsp + 0x168]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x188]
	xor	ebx, ebx
	mov	rcx, rax
	shr	rcx, 0x20
	jne	.label_231
	test	al, al
	jne	.label_216
.label_231:
	xor	ebx, ebx
	lea	r14, [rsp + 0x168]
	nop	word ptr cs:[rax + rax]
.label_227:
	mov	rax, qword ptr [rsp + 0x178]
	mov	rcx, rax
	sub	rcx, r12
	cmp	rcx, r15
	adc	rbx, 0
	cmp	rcx, r15
	jae	.label_216
	add	rax, qword ptr [rsp + 0x180]
	mov	qword ptr [rsp + 0x178], rax
	mov	byte ptr [rsp + 0x174], 0
	mov	rdi, r14
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x188]
	mov	rcx, rax
	shr	rcx, 0x20
	jne	.label_227
	test	al, al
	je	.label_227
.label_216:
	mov	edi, 0x18
	call	xmalloc
	mov	r14, rax
	mov	dword ptr [r14], 0
	lea	rdi, [r14 + 8]
	mov	rsi, rbx
	jmp	.label_215
.label_219:
	mov	dword ptr [r14], 0
	mov	rdi, r14
	add	rdi, 8
	xor	esi, esi
.label_215:
	call	__gmpz_init_set_ui
.label_222:
	cmp	qword ptr [rsp], 0
	je	.label_223
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_223:
	mov	qword ptr [rsp + 0x140], 0
	lea	rdi, [rsp + 0x120]
	call	rpl_regfree
	mov	rax, r14
	add	rsp, 0x1a8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_217:
	call	abort
.label_228:
	call	abort
.label_224:
	mov	edi, 2
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	call	error
.label_225:
	mov	ebx, 0x4b
	cmp	r15, -2
	jne	.label_220
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_220:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.74
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 3
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f50
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f60
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f70

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_235
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_234
	cmp	dword ptr [rbp], 0x20
	jne	.label_234
.label_235:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_233
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_234:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_232
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_233:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_232:
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
	#Procedure 0x404030

	.globl parse_long_options
	.type parse_long_options, @function
parse_long_options:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0xd0
	mov	rbx, r9
	mov	r14, r8
	mov	r15, rcx
	mov	r12, rdx
	test	al, al
	je	.label_236
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_236:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  0
	cmp	edi, 2
	jne	.label_237
	mov	edi, 2
	mov	edx, OFFSET FLAT:.str_1
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, 0x68
	je	.label_238
	cmp	eax, 0x76
	jne	.label_237
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0x100]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x30
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	r8, [rsp + 0xb0]
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
.label_238:
	xor	edi, edi
	call	rbx
.label_237:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	mov	dword ptr [dword ptr [rip + optind]],  0
	add	rsp, 0xd0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404130
	.globl parse_gnu_standard_options_only
	.type parse_gnu_standard_options_only, @function
parse_gnu_standard_options_only:

	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xc8
	mov	r14, r8
	mov	r15, rcx
	mov	rbx, rdx
	test	al, al
	je	.label_242
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_242:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  1
	mov	eax, OFFSET FLAT:.str_0
	mov	edx, OFFSET FLAT:.str_1
	test	r9b, r9b
	cmovne	rdx, rax
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, -1
	je	.label_240
	mov	rcx, qword ptr [rsp + 0xf0]
	cmp	eax, 0x68
	je	.label_241
	cmp	eax, 0x76
	je	.label_243
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	jmp	.label_239
.label_241:
	xor	edi, edi
.label_239:
	call	rcx
.label_240:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	add	rsp, 0xc8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_243:
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xf8]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x30
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	r8, [rsp + 0xb0]
	mov	rsi, rbx
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404240

	.globl mbschr
	.type mbschr, @function
mbschr:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	ebp, esi
	mov	rbx, rdi
	call	__ctype_get_mb_cur_max
	mov	ecx, ebp
	and	ecx, 0xf0
	cmp	ecx, 0x30
	jb	.label_245
	cmp	rax, 2
	jb	.label_245
	mov	qword ptr [rsp + 0x10], rbx
	mov	byte ptr [rsp], 0
	mov	qword ptr [rsp + 4], 0
	mov	byte ptr [rsp + 0xc], 0
	lea	rdi, [rsp]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x20]
	xor	r14d, r14d
	test	al, al
	je	.label_248
	shr	rax, 0x20
	je	.label_247
.label_248:
	movzx	ebx, bpl
	lea	rbp, [rsp]
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_246:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	rcx, 1
	jne	.label_249
	movzx	edx, byte ptr [rax]
	cmp	edx, ebx
	je	.label_244
.label_249:
	add	rax, rcx
	mov	qword ptr [rsp + 0x10], rax
	mov	byte ptr [rsp + 0xc], 0
	mov	rdi, rbp
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x20]
	test	al, al
	je	.label_246
	shr	rax, 0x20
	jne	.label_246
	jmp	.label_247
.label_245:
	mov	rdi, rbx
	mov	esi, ebp
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strchr
.label_244:
	mov	r14, rax
.label_247:
	mov	rax, r14
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404310

	.globl mbslen
	.type mbslen, @function
mbslen:
	push	r14
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rdi
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_253
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	lea	rdi, [rsp + 8]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	xor	ebx, ebx
	test	al, al
	je	.label_252
	shr	rax, 0x20
	je	.label_250
.label_252:
	xor	ebx, ebx
	lea	r14, [rsp + 8]
	nop	
.label_251:
	inc	rbx
	mov	rax, qword ptr [rsp + 0x20]
	add	qword ptr [rsp + 0x18], rax
	mov	byte ptr [rsp + 0x14], 0
	mov	rdi, r14
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	test	al, al
	je	.label_251
	shr	rax, 0x20
	jne	.label_251
.label_250:
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r14
	ret	
.label_253:
	mov	rdi, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r14
	jmp	strlen
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4043b0

	.globl mbuiter_multi_next
	.type mbuiter_multi_next, @function
mbuiter_multi_next:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0xc], 0
	jne	.label_262
	cmp	byte ptr [rbx], 0
	mov	r15, qword ptr [rbx + 0x10]
	je	.label_255
	lea	r14, [rbx + 4]
	jmp	.label_261
.label_255:
	movzx	eax, byte ptr [r15]
	mov	rcx, rax
	shr	rcx, 5
	mov	ecx,  dword ptr [dword ptr [+ (rcx * 4) + is_basic_table]]
	bt	ecx, eax
	jae	.label_260
	mov	qword ptr [rbx + 0x18], 1
	movsx	eax, byte ptr [r15]
	mov	dword ptr [rbx + 0x24], eax
	mov	byte ptr [rbx + 0x20], 1
	jmp	.label_254
.label_260:
	lea	r14, [rbx + 4]
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_259
	mov	byte ptr [rbx], 1
.label_261:
	lea	r12, [rbx + 0x24]
	call	__ctype_get_mb_cur_max
	mov	rdi, r15
	mov	rsi, rax
	call	strnlen1
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, rax
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	qword ptr [rbx + 0x18], rax
	cmp	rax, -2
	je	.label_264
	test	rax, rax
	je	.label_257
	cmp	rax, -1
	jne	.label_258
	mov	qword ptr [rbx + 0x18], 1
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_254
.label_264:
	mov	rdi, qword ptr [rbx + 0x10]
	call	strlen
	mov	qword ptr [rbx + 0x18], rax
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_254
.label_257:
	mov	qword ptr [rbx + 0x18], 1
	mov	rax, qword ptr [rbx + 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_263
	cmp	dword ptr [r12], 0
	jne	.label_256
.label_258:
	mov	byte ptr [rbx + 0x20], 1
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_254
	mov	byte ptr [rbx], 0
.label_254:
	mov	byte ptr [rbx + 0xc], 1
.label_262:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_263:
	mov	edi, OFFSET FLAT:.str.2_0
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 0xb2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
.label_256:
	mov	edi, OFFSET FLAT:.str.3_0
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 0xb3
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
.label_259:
	mov	edi, OFFSET FLAT:.str_4
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 0x96
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404500
	.globl mbuiter_multi_reloc
	.type mbuiter_multi_reloc, @function
mbuiter_multi_reloc:

	add	qword ptr [rdi + 0x10], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404510
	.globl mbuiter_multi_copy
	.type mbuiter_multi_copy, @function
mbuiter_multi_copy:

	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	al, byte ptr [rbx]
	test	al, al
	mov	byte ptr [r14], al
	je	.label_265
	mov	rax, qword ptr [rbx + 4]
	mov	qword ptr [r14 + 4], rax
	jmp	.label_266
.label_265:
	mov	qword ptr [r14 + 4], 0
.label_266:
	mov	al, byte ptr [rbx + 0xc]
	mov	byte ptr [r14 + 0xc], al
	mov	rsi, qword ptr [rbx + 0x10]
	lea	rax, [rbx + 0x28]
	cmp	rsi, rax
	jne	.label_267
	lea	r15, [r14 + 0x28]
	mov	rdx, qword ptr [rbx + 0x18]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_267:
	mov	qword ptr [r14 + 0x10], rsi
	mov	rax, qword ptr [rbx + 0x18]
	mov	qword ptr [r14 + 0x18], rax
	mov	rax, qword ptr [rbx + 0x20]
	test	al, al
	mov	byte ptr [r14 + 0x20], al
	je	.label_268
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x24], eax
.label_268:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404590

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_271
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_269
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_269
	mov	esi, OFFSET FLAT:.str.2_1
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_270
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_270:
	mov	rbx, r14
.label_269:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_271:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_5
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404640
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
	#Procedure 0x404680
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
	#Procedure 0x404690
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
	#Procedure 0x4046a0
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
	#Procedure 0x4046e0
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
	#Procedure 0x404700
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_272
	test	rdx, rdx
	je	.label_272
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_272:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404730
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
	#Procedure 0x4047b0

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
.label_365:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_302
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_308]]
.label_2467:
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
.label_2468:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_329
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_329
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_351:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_344
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_344:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_351
.label_329:
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
	jmp	.label_284
.label_2460:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_284
.label_2463:
	mov	al, 1
.label_2461:
	mov	r12b, 1
.label_2464:
	test	r12b, 1
	mov	cl, 1
	je	.label_376
	mov	cl, al
.label_376:
	mov	al, cl
.label_2462:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_380
	test	r10, r10
	je	.label_383
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_362
.label_380:
	xor	ecx, ecx
	jmp	.label_362
.label_2465:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_368
	test	r10, r10
	je	.label_396
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_274
.label_2466:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_284
.label_383:
	mov	ecx, 1
	nop	dword ptr [rax]
.label_362:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_284
.label_368:
	xor	eax, eax
	jmp	.label_274
.label_396:
	mov	eax, 1
.label_274:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_284:
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
	jmp	.label_335
.label_364:
	inc	rdi
.label_335:
	cmp	rbp, -1
	je	.label_356
	cmp	rdi, rbp
	jne	.label_358
	jmp	.label_360
	nop	word ptr cs:[rax + rax]
.label_356:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_315
.label_358:
	test	r12b, r12b
	je	.label_367
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_369
	cmp	rbp, -1
	jne	.label_369
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
.label_369:
	cmp	rbx, rbp
	jbe	.label_388
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_273
	nop	word ptr [rax + rax]
.label_367:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_273
.label_388:
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
	jne	.label_296
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_273
	jmp	.label_283
.label_296:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_273:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_286
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_325]]
.label_2415:
	test	rdi, rdi
	jne	.label_305
	jmp	.label_331
.label_2419:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_332
	test	rdi, rdi
	jne	.label_334
	cmp	rbp, 1
	je	.label_331
	xor	r13d, r13d
	jmp	.label_295
.label_2408:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_338
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_283
	cmp	r9d, 2
	jne	.label_345
	mov	al, r14b
	and	al, 1
	jne	.label_347
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_350
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_350:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_310
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_310:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_320
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_320:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_370
.label_2409:
	mov	bl, 0x62
	jmp	.label_293
.label_2410:
	mov	cl, 0x74
	jmp	.label_313
.label_2411:
	mov	bl, 0x76
	jmp	.label_293
.label_2412:
	mov	bl, 0x66
	jmp	.label_293
.label_2413:
	mov	cl, 0x72
	jmp	.label_313
.label_2416:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_381
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_385
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
	jae	.label_390
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_390:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_291
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_291:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_297
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_297:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_381:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_295
.label_2417:
	cmp	r9d, 5
	je	.label_309
	cmp	r9d, 2
	jne	.label_305
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_305
	jmp	.label_317
.label_2418:
	cmp	r9d, 2
	jne	.label_319
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_321
	jmp	.label_326
.label_286:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_327
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
.label_304:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_340
	test	cl, cl
	je	.label_340
	xor	eax, eax
	jmp	.label_295
.label_332:
	test	rdi, rdi
	jne	.label_354
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_354
.label_331:
	mov	dl, 1
.label_2414:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_281
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_295
.label_338:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_364
	jmp	.label_305
.label_319:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_313
.label_321:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_299
.label_313:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_371
.label_293:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_295
	jmp	.label_301
.label_327:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_377
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_377:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_330:
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
	je	.label_290
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_294
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_298
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_303
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_318:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_312
	bt	rsi, rdx
	jb	.label_314
.label_312:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_318
.label_303:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_300
	xor	r13d, r13d
.label_300:
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
	je	.label_330
	jmp	.label_304
.label_354:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_295
.label_309:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_305
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_305
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_305
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_348
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_352
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_393
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_361
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_361:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_366
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_366:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_372
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_372:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_287
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_287:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_295
.label_305:
	xor	eax, eax
	xor	r13d, r13d
.label_295:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_392
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_395
	jmp	.label_275
	nop	word ptr [rax + rax]
.label_392:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_275
.label_395:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_285
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_292
	nop	word ptr cs:[rax + rax]
.label_275:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_292:
	mov	bl, r15b
	je	.label_299
	jmp	.label_301
.label_285:
	mov	bl, r15b
.label_301:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_283
	cmp	r9d, 2
	jne	.label_306
	mov	al, r14b
	and	al, 1
	jne	.label_306
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_339
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_339:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_379
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_379:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_324
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_324:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_306:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_333
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_333:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_282
.label_334:
	xor	r13d, r13d
	jmp	.label_295
.label_340:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_342
	nop	word ptr [rax + rax]
.label_336:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_342:
	test	cl, cl
	je	.label_353
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_355
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_357
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_357:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_355
	nop	word ptr [rax + rax]
.label_353:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_283
	cmp	r9d, 2
	jne	.label_373
	mov	al, r14b
	and	al, 1
	jne	.label_373
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_374
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_374:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_322
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_322:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_389
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_389:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_373:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_279
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_279:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_289
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_289:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_276
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_276:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_355:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_299
	test	r14b, 1
	je	.label_316
	mov	bl, al
	and	bl, 1
	jne	.label_316
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_375
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_375:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_328
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_328:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_316:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_336
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_336
	nop	dword ptr [rax]
.label_299:
	test	r14b, 1
	je	.label_349
	and	al, 1
	jne	.label_349
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_359
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_359:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_341
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_341:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_349:
	mov	bl, r15b
.label_282:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_277
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_277:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_364
.label_345:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_370
.label_347:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_370:
	cmp	rcx, r10
	jae	.label_382
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_382:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_387
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_394
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_397
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_278
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_278:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_288
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_288:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_295
.label_387:
	xor	r13d, r13d
	jmp	.label_295
.label_394:
	xor	r13d, r13d
	jmp	.label_295
.label_397:
	xor	r13d, r13d
	jmp	.label_295
.label_294:
	xor	r13d, r13d
.label_290:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_304
.label_298:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_311
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_384:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_343
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_384
	xor	r13d, r13d
	jmp	.label_304
.label_311:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_304
.label_343:
	xor	r13d, r13d
	jmp	.label_304
.label_348:
	xor	r13d, r13d
	jmp	.label_295
.label_352:
	xor	r13d, r13d
	jmp	.label_295
	nop	dword ptr [rax]
.label_360:
	mov	r13, rdi
.label_315:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_337
	or	al, dl
	je	.label_307
.label_337:
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
	je	.label_346
	or	al, dl
	jne	.label_346
	test	r8b, 1
	jne	.label_363
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_346
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_365
.label_346:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_280
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_280
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_280
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_386:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_378
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_378:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_386
.label_280:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_391
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_391
.label_281:
	mov	r9d, 2
	jmp	.label_283
.label_314:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_283
.label_307:
	mov	rbp, r13
	jmp	.label_283
.label_371:
	mov	r9d, 2
.label_283:
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
.label_323:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_391:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_363:
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
	jmp	.label_323
.label_385:
	mov	r9d, 2
	jmp	.label_283
.label_326:
	mov	r9d, 2
	jmp	.label_283
.label_317:
	mov	r9d, 2
	jmp	.label_283
.label_393:
	mov	r9d, 5
	jmp	.label_283
.label_302:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405940
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
	#Procedure 0x405a10
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
	je	.label_398
	mov	qword ptr [rax], rbx
.label_398:
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
	#Procedure 0x405b10
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_399
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_401:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_401
.label_399:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_402
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_403]], OFFSET FLAT:slot0
.label_402:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_400
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_400:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405bb0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x405bc0

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
	js	.label_404
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_407
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_410
.label_407:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_406
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
	jne	.label_405
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_405:
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
.label_410:
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
	ja	.label_408
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_409
	mov	rdi, rbx
	call	free
.label_409:
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
.label_408:
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
.label_404:
	call	abort
.label_406:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d90
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405da0
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
	#Procedure 0x405dc0
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
	#Procedure 0x405de0

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
	je	.label_411
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
.label_411:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x405e50
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
	je	.label_412
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
.label_412:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ec0
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
	je	.label_413
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
.label_413:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f30
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
	je	.label_414
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
.label_414:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405fa0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_415]]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_416]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_417]]
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
	#Procedure 0x406010
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx,  qword ptr [word ptr [rip + label_415]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_416]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_417]]
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
	#Procedure 0x406080

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_415]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_416]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_417]]
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
	#Procedure 0x4060e0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_415]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_416]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_417]]
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
	#Procedure 0x406140
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
	je	.label_418
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
.label_418:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x4061f0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_415]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_416]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_417]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_419
	test	rdx, rdx
	je	.label_419
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_419:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x406260
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_415]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_416]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_417]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_420
	test	rdx, rdx
	je	.label_420
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_420:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4062d0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_415]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_416]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_417]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_421
	test	rsi, rsi
	je	.label_421
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_421:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406340
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_415]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_416]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_417]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_422
	test	rsi, rsi
	je	.label_422
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
.label_422:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4063b0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4063c0
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
	#Procedure 0x4063e0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406400
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
	#Procedure 0x406420

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
	jne	.label_423
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_425
	cmp	ecx, 0x55
	jne	.label_424
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_424
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_424
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_424
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_424
	cmp	byte ptr [rax + 5], 0
	jne	.label_424
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_423
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_423
.label_425:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_424
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_424
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_424
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_424
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_424
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_424
	cmp	byte ptr [rax + 7], 0
	je	.label_426
.label_424:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_423:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_426:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_423
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_423
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406510

	.globl strnlen1
	.type strnlen1, @function
strnlen1:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	xor	esi, esi
	mov	rdx, r14
	call	memchr
	mov	ecx, 1
	sub	rcx, rbx
	add	rcx, rax
	test	rax, rax
	cmove	rcx, r14
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406550

	.globl strintcmp
	.type strintcmp, @function
strintcmp:
	movzx	ecx, byte ptr [rdi]
	mov	dl, byte ptr [rsi]
	cmp	ecx, 0x2d
	jne	.label_447
	nop	word ptr [rax + rax]
.label_449:
	movzx	ecx, byte ptr [rdi + 1]
	inc	rdi
	cmp	ecx, 0x30
	je	.label_449
	movzx	r8d, dl
	cmp	r8d, 0x2d
	jne	.label_452
	nop	word ptr [rax + rax]
.label_427:
	movzx	eax, byte ptr [rsi + 1]
	inc	rsi
	cmp	eax, 0x30
	je	.label_427
	lea	edx, [rcx - 0x30]
	cmp	edx, 9
	ja	.label_444
	movzx	r8d, cl
	movzx	edx, al
	cmp	edx, r8d
	jne	.label_433
	nop	dword ptr [rax + rax]
.label_445:
	mov	r9b, byte ptr [rdi + 1]
	inc	rdi
	movzx	eax, byte ptr [rsi + 1]
	inc	rsi
	movzx	ecx, r9b
	cmp	eax, ecx
	jne	.label_437
	lea	edx, [rcx - 0x30]
	cmp	edx, 0xa
	jb	.label_445
	jmp	.label_437
.label_447:
	movzx	r8d, dl
	cmp	r8d, 0x2d
	jne	.label_448
	inc	rsi
	nop	dword ptr [rax + rax]
.label_454:
	movzx	edx, byte ptr [rsi]
	inc	rsi
	cmp	edx, 0x30
	je	.label_454
	add	edx, -0x30
	mov	eax, 1
	cmp	edx, 0xa
	jb	.label_441
	movzx	eax, cl
	cmp	eax, 0x30
	jne	.label_434
	inc	rdi
	nop	word ptr [rax + rax]
.label_456:
	movzx	ecx, byte ptr [rdi]
	inc	rdi
	cmp	ecx, 0x30
	je	.label_456
.label_434:
	movzx	eax, cl
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	and	eax, 1
	ret	
.label_452:
	add	ecx, -0x30
	mov	eax, 0xffffffff
	cmp	ecx, 0xa
	jb	.label_441
	cmp	r8d, 0x30
	jne	.label_446
	inc	rsi
	nop	word ptr cs:[rax + rax]
.label_457:
	movzx	edx, byte ptr [rsi]
	inc	rsi
	cmp	edx, 0x30
	je	.label_457
.label_446:
	movzx	eax, dl
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	ret	
.label_448:
	movzx	eax, cl
	cmp	eax, 0x30
	jne	.label_455
	nop	
.label_428:
	movzx	ecx, byte ptr [rdi + 1]
	inc	rdi
	cmp	ecx, 0x30
	je	.label_428
.label_455:
	cmp	r8d, 0x30
	jne	.label_431
	nop	word ptr cs:[rax + rax]
.label_436:
	movzx	edx, byte ptr [rsi + 1]
	inc	rsi
	cmp	edx, 0x30
	je	.label_436
.label_431:
	movzx	r8d, cl
	lea	eax, [r8 - 0x30]
	cmp	eax, 9
	ja	.label_439
	movzx	r9d, dl
	movzx	eax, cl
	cmp	eax, r9d
	jne	.label_439
	nop	word ptr cs:[rax + rax]
.label_451:
	mov	cl, byte ptr [rdi + 1]
	inc	rdi
	movzx	edx, byte ptr [rsi + 1]
	inc	rsi
	movzx	r8d, cl
	cmp	r8d, edx
	jne	.label_439
	lea	eax, [r8 - 0x30]
	cmp	eax, 0xa
	jb	.label_451
.label_439:
	movzx	eax, dl
	movzx	edx, cl
	add	edx, -0x30
	xor	ecx, ecx
	cmp	edx, 9
	ja	.label_453
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_432:
	movzx	edx, byte ptr [rdi + rcx + 1]
	inc	rcx
	add	edx, -0x30
	cmp	edx, 0xa
	jb	.label_432
.label_453:
	lea	edi, [rax - 0x30]
	xor	edx, edx
	cmp	edi, 9
	ja	.label_458
	xor	edx, edx
	nop	dword ptr [rax]
.label_440:
	movzx	edi, byte ptr [rsi + rdx + 1]
	inc	rdx
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_440
.label_458:
	cmp	rcx, rdx
	jne	.label_442
	sub	r8d, eax
	xor	eax, eax
	test	rcx, rcx
	jmp	.label_435
.label_442:
	mov	ecx, 0xffffffff
	mov	eax, 1
	cmovb	eax, ecx
	ret	
.label_444:
	mov	r9b, cl
	jmp	.label_437
.label_433:
	mov	r9b, cl
.label_437:
	movzx	r8d, al
	movzx	eax, r9b
	add	eax, -0x30
	xor	edx, edx
	cmp	eax, 9
	ja	.label_450
	xor	edx, edx
	nop	dword ptr [rax]
.label_443:
	movzx	eax, byte ptr [rdi + rdx + 1]
	inc	rdx
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_443
.label_450:
	lea	edi, [r8 - 0x30]
	xor	eax, eax
	cmp	edi, 9
	ja	.label_438
	xor	eax, eax
	nop	dword ptr [rax]
.label_429:
	movzx	edi, byte ptr [rsi + rax + 1]
	inc	rax
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_429
.label_438:
	cmp	rdx, rax
	jne	.label_430
	sub	r8d, ecx
	xor	eax, eax
	test	rdx, rdx
.label_435:
	cmovne	eax, r8d
.label_441:
	ret	
.label_430:
	mov	ecx, 1
	mov	eax, 0xffffffff
	cmovb	eax, ecx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4067d0

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
	je	.label_461
	mov	edx, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_460
.label_461:
	mov	edx, OFFSET FLAT:.str.1_3
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_460:
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
	ja	.label_466
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_467]]
.label_2346:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_0
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
.label_466:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	jmp	.label_465
.label_2347:
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
.label_2348:
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
.label_2349:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_464
.label_2350:
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
	jmp	.label_463
.label_2351:
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
	jmp	.label_459
.label_2352:
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
.label_459:
	mov	qword ptr [rsp + 0x10], rdi
.label_463:
	mov	qword ptr [rsp + 8], rsi
.label_464:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_468
.label_2354:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_465:
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
	jmp	.label_462
.label_2353:
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
.label_462:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_468:
	call	__fprintf_chk
.label_2345:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ac0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_469:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_469
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406af0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_472:
	cmp	r10d, 0x28
	ja	.label_470
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_471
	nop	word ptr cs:[rax + rax]
.label_470:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_471:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_473
	inc	r9
	cmp	r9, 0xa
	jb	.label_472
.label_473:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406b50
	.globl version_etc
	.type version_etc, @function
version_etc:

	sub	rsp, 0x128
	test	al, al
	je	.label_474
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_474:
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
.label_478:
	cmp	r8d, 0x28
	ja	.label_475
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_477
	nop	
.label_475:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_477:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_476
	inc	r9
	cmp	r9, 0xa
	jb	.label_478
.label_476:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c50
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
	mov	esi, OFFSET FLAT:.str.16
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
	#Procedure 0x406cd0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_479
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_480
	test	rax, rax
	je	.label_479
.label_480:
	pop	rbx
	ret	
.label_479:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d10

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_481
	test	rax, rax
	je	.label_482
.label_481:
	pop	rbx
	ret	
.label_482:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d30
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_483
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_484
	test	rbx, rbx
	jne	.label_484
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_484:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_485
	test	rax, rax
	je	.label_483
.label_485:
	pop	rbx
	ret	
.label_483:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d80

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_486
	test	rbx, rbx
	jne	.label_486
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_486:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_488
	test	rax, rax
	je	.label_487
.label_488:
	pop	rbx
	ret	
.label_487:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406db0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_492
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_493
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_489
.label_492:
	test	rcx, rcx
	jne	.label_495
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_495:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_494
.label_489:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_490
	test	rbx, rbx
	jne	.label_490
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_490:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_491
	test	rax, rax
	je	.label_493
.label_491:
	pop	rbx
	ret	
.label_493:
	call	xalloc_die
.label_494:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406e50
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_496
	test	rax, rax
	je	.label_497
.label_496:
	pop	rbx
	ret	
.label_497:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406e70
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_500
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_502
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_499
	call	free
	xor	eax, eax
	jmp	.label_501
.label_500:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_498
	mov	qword ptr [rsi], rbx
.label_499:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_501
	test	rax, rax
	je	.label_498
.label_501:
	pop	rbx
	ret	
.label_498:
	call	xalloc_die
.label_502:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ee0
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
	je	.label_504
	test	r14, r14
	je	.label_503
.label_504:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_503:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f20
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_505
	call	rpl_calloc
	test	rax, rax
	je	.label_505
	pop	rcx
	ret	
.label_505:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f50

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
	je	.label_506
	test	r15, r15
	je	.label_507
.label_506:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_507:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406f90

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
	je	.label_509
	test	r15, r15
	je	.label_508
.label_509:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_508:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406fe0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_4
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407010

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_510
	test	rsi, rsi
	mov	ecx, 1
	je	.label_511
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_511
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_510:
	mov	ecx, 1
.label_511:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407060

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
	je	.label_512
	cmp	r15, -2
	jb	.label_512
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_512
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_512:
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
	#Procedure 0x4070c0

	.globl rpl_re_compile_pattern
	.type rpl_re_compile_pattern, @function
rpl_re_compile_pattern:
	push	rax
	mov	r8, rsi
	mov	rsi, rdi
	mov	rcx,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	al, byte ptr [rdx + 0x38]
	shr	rcx, 0x15
	and	cl, 0x10
	and	al, 0x6f
	or	al, cl
	or	al, 0x80
	mov	byte ptr [rdx + 0x38], al
	mov	rcx,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	rdi, rdx
	mov	rdx, r8
	call	re_compile_internal
	test	eax, eax
	je	.label_513
	cdqe	
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	xor	edi, edi
	mov	edx, 5
	pop	rax
	jmp	dcgettext
.label_513:
	xor	eax, eax
	pop	rcx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407120

	.globl re_compile_internal
	.type re_compile_internal, @function
re_compile_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xf8
	mov	qword ptr [rsp + 0x18], rcx
	mov	r13, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	dword ptr [rsp + 0xcc], 0
	mov	al, byte ptr [r15 + 0x38]
	mov	qword ptr [r15 + 0x18], rcx
	mov	qword ptr [r15 + 0x10], 0
	mov	qword ptr [r15 + 0x30], 0
	and	al, 0x90
	mov	byte ptr [r15 + 0x38], al
	mov	r12, qword ptr [r15]
	cmp	qword ptr [r15 + 8], 0xe7
	jbe	.label_561
.label_528:
	mov	qword ptr [r15 + 0x10], 0xe8
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r12 + 0xd0], xmm0
	movdqu	xmmword ptr [r12 + 0xc0], xmm0
	movdqu	xmmword ptr [r12 + 0xb0], xmm0
	movdqu	xmmword ptr [r12 + 0xa0], xmm0
	movdqu	xmmword ptr [r12 + 0x90], xmm0
	movdqu	xmmword ptr [r12 + 0x80], xmm0
	movdqu	xmmword ptr [r12 + 0x70], xmm0
	movdqu	xmmword ptr [r12 + 0x60], xmm0
	movdqu	xmmword ptr [r12 + 0x50], xmm0
	movdqu	xmmword ptr [r12 + 0x40], xmm0
	movdqu	xmmword ptr [r12 + 0x30], xmm0
	movdqu	xmmword ptr [r12 + 0x20], xmm0
	movdqu	xmmword ptr [r12 + 0x10], xmm0
	movdqu	xmmword ptr [r12], xmm0
	mov	qword ptr [r12 + 0xe0], 0
	mov	dword ptr [r12 + 0x80], 0xf
	movabs	rax, 0x555555555555554
	cmp	r13, rax
	ja	.label_522
	lea	rdi, [r13 + 1]
	mov	qword ptr [rsp + 0x20], rdi
	mov	qword ptr [r12 + 8], rdi
	shl	rdi, 4
	call	malloc
	mov	qword ptr [r12], rax
	mov	eax, 1
	nop	word ptr cs:[rax + rax]
.label_603:
	mov	rbx, rax
	lea	rax, [rbx + rbx]
	cmp	rbx, r13
	jbe	.label_603
	mov	edi, 0x18
	mov	rsi, rbx
	call	rpl_calloc
	mov	qword ptr [r12 + 0x40], rax
	dec	rbx
	mov	qword ptr [r12 + 0x88], rbx
	call	__ctype_get_mb_cur_max
	mov	dword ptr [r12 + 0xb4], eax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	mov	cl, byte ptr [rax]
	or	cl, 0x20
	movzx	ecx, cl
	cmp	ecx, 0x75
	jne	.label_590
	mov	cl, byte ptr [rax + 1]
	or	cl, 0x20
	movzx	ecx, cl
	cmp	ecx, 0x74
	jne	.label_590
	mov	cl, byte ptr [rax + 2]
	or	cl, 0x20
	movzx	ecx, cl
	cmp	ecx, 0x66
	jne	.label_590
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	sete	cl
	movzx	ecx, cl
	movzx	edx, byte ptr [rax + rcx + 3]
	cmp	edx, 0x38
	jne	.label_590
	cmp	byte ptr [rax + rcx + 4], 0
	jne	.label_590
	or	byte ptr [r12 + 0xb0], 4
.label_590:
	mov	rax, qword ptr [r12 + 0xb0]
	mov	cl, al
	and	cl, 0xf7
	mov	byte ptr [r12 + 0xb0], cl
	mov	rcx, rax
	shr	rcx, 0x20
	cmp	ecx, 2
	jl	.label_518
	test	al, 4
	jne	.label_629
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [r12 + 0x78], rax
	xor	ebx, ebx
	test	rax, rax
	je	.label_522
	xor	ebp, ebp
	nop	
.label_535:
	mov	edi, ebx
	call	btowc
	cmp	eax, -1
	je	.label_636
	mov	edx, 1
	mov	cl, bl
	shl	rdx, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx], rdx
.label_636:
	cmp	ebx, 0x7f
	ja	.label_642
	cmp	ebx, eax
	je	.label_642
	or	byte ptr [r12 + 0xb0], 8
.label_642:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_535
	mov	qword ptr [rsp + 0x28], r15
	xor	ebx, ebx
.label_653:
	lea	r15, [rbp + 0x40]
	mov	edi, r15d
	call	btowc
	cmp	eax, -1
	je	.label_523
	mov	edx, 1
	mov	cl, bpl
	shl	rdx, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 8], rdx
.label_523:
	cmp	r15d, eax
	je	.label_608
	or	byte ptr [r12 + 0xb0], 8
.label_608:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_653
	xor	ebp, ebp
	mov	r15, qword ptr [rsp + 0x28]
	nop	word ptr cs:[rax + rax]
.label_572:
	lea	edi, [rbx + 0x80]
	call	btowc
	cmp	eax, -1
	je	.label_665
	mov	eax, 1
	mov	cl, bl
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x10], rax
.label_665:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_572
	nop	dword ptr [rax]
.label_515:
	lea	edi, [rbp + 0xc0]
	call	btowc
	cmp	eax, -1
	je	.label_669
	mov	eax, 1
	mov	cl, bpl
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x18], rax
.label_669:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_515
	jmp	.label_518
.label_629:
	mov	qword ptr [word ptr [r12 + 120]], OFFSET FLAT:utf8_sb_map
.label_518:
	cmp	qword ptr [r12], 0
	je	.label_522
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_522
	mov	dword ptr [rsp + 0xcc], 0
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rcx, qword ptr [rsp + 0x18]
	and	ecx, 0x400000
	mov	qword ptr [rsp + 0x10], rcx
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0xb0], xmm0
	movdqa	xmmword ptr [rsp + 0xa0], xmm0
	movdqa	xmmword ptr [rsp + 0x90], xmm0
	movdqa	xmmword ptr [rsp + 0x80], xmm0
	movdqa	xmmword ptr [rsp + 0x70], xmm0
	movdqa	xmmword ptr [rsp + 0x60], xmm0
	movdqa	xmmword ptr [rsp + 0x50], xmm0
	movdqa	xmmword ptr [rsp + 0x40], xmm0
	movdqa	xmmword ptr [rsp + 0x30], xmm0
	mov	qword ptr [rsp + 0xc0], 0
	mov	qword ptr [rsp + 0x30], r14
	mov	qword ptr [rsp + 0x88], r13
	mov	qword ptr [rsp + 0x80], r13
	mov	qword ptr [rsp + 0xa8], rbx
	mov	rax, rcx
	shr	rax, 0x16
	mov	byte ptr [rsp + 0xb8], al
	mov	rax, rcx
	or	rax, rbx
	setne	bpl
	setne	byte ptr [rsp + 0xbb]
	mov	edx, dword ptr [r12 + 0xb4]
	mov	dword ptr [rsp + 0xc0], edx
	mov	al, byte ptr [r12 + 0xb0]
	shr	al, 2
	and	al, 1
	mov	byte ptr [rsp + 0xb9], al
	mov	rcx, qword ptr [r12 + 0xb0]
	mov	al, cl
	shr	al, 3
	and	al, 1
	mov	byte ptr [rsp + 0xba], al
	mov	qword ptr [rsp + 0x98], r13
	mov	qword ptr [rsp + 0x90], r13
	xor	eax, eax
	test	r13, r13
	jle	.label_526
	cmp	edx, 2
	jl	.label_568
	mov	qword ptr [rsp + 0x28], r15
	mov	r15d, 0xc
	mov	rax, qword ptr [rsp + 0x20]
	movabs	rcx, 0x1fffffffffffffff
	cmp	rax, rcx
	ja	.label_569
	lea	rsi, [rax*4]
	xor	edi, edi
	call	realloc
	test	rax, rax
	je	.label_569
	mov	qword ptr [rsp + 0x40], rax
	mov	r15, qword ptr [rsp + 0x28]
.label_568:
	xor	eax, eax
	test	bpl, bpl
	je	.label_580
	mov	qword ptr [rsp + 0x28], r15
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x20]
	call	realloc
	mov	r15d, 0xc
	test	rax, rax
	je	.label_569
	mov	qword ptr [rsp + 0x38], rax
	mov	r15, qword ptr [rsp + 0x28]
.label_580:
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x70], rcx
	mov	ecx, dword ptr [r12 + 0xb4]
	jmp	.label_659
.label_522:
	mov	dword ptr [rsp + 0xcc], 0xc
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
	mov	eax, 0xc
	jmp	.label_525
.label_526:
	shr	rcx, 0x20
	xor	edx, edx
	mov	qword ptr [rsp + 0x20], rdx
.label_659:
	test	bpl, bpl
	cmove	rax, r14
	mov	qword ptr [rsp + 0x38], rax
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_591
	cmp	ecx, 2
	jl	.label_594
	mov	qword ptr [rsp + 0x28], r15
	lea	rdi, [rsp + 0x30]
	call	build_wcs_upper_buffer
	mov	r15d, eax
	test	r15d, r15d
	jne	.label_569
	lea	r14, [rsp + 0x30]
.label_628:
	cmp	qword ptr [rsp + 0x68], r13
	jge	.label_517
	mov	rbp, qword ptr [rsp + 0x70]
	movsxd	rax, dword ptr [r12 + 0xb4]
	add	rax, qword ptr [rsp + 0x60]
	cmp	rbp, rax
	jg	.label_517
	lea	rbx, [rbp + rbp]
	cmp	dword ptr [rsp + 0xc0], 2
	jl	.label_607
	mov	r15d, 0xc
	movabs	rax, 0x1fffffffffffffff
	cmp	rbx, rax
	ja	.label_569
	mov	rdi, qword ptr [rsp + 0x40]
	lea	rsi, [rbp*8]
	call	realloc
	test	rax, rax
	je	.label_569
	mov	qword ptr [rsp + 0x40], rax
	mov	rdi, qword ptr [rsp + 0x48]
	test	rdi, rdi
	je	.label_607
	shl	rbp, 4
	mov	rsi, rbp
	call	realloc
	test	rax, rax
	je	.label_569
	mov	qword ptr [rsp + 0x48], rax
.label_607:
	cmp	byte ptr [rsp + 0xbb], 0
	je	.label_617
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, rbx
	call	realloc
	mov	r15d, 0xc
	test	rax, rax
	je	.label_569
	mov	qword ptr [rsp + 0x38], rax
.label_617:
	mov	qword ptr [rsp + 0x70], rbx
	mov	rdi, r14
	call	build_wcs_upper_buffer
	mov	r15d, eax
	test	r15d, r15d
	je	.label_628
.label_569:
	mov	dword ptr [rsp + 0xcc], r15d
	jmp	.label_519
.label_591:
	cmp	ecx, 2
	jl	.label_633
	mov	qword ptr [rsp + 0x28], r15
	lea	rdi, [rsp + 0x30]
	call	build_wcs_buffer
	jmp	.label_517
.label_594:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	rax, r13
	cmovg	rax, r13
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	jle	.label_635
	xor	eax, eax
	mov	ebp, 1
	jmp	.label_641
	nop	word ptr cs:[rax + rax]
.label_584:
	mov	r14, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbx, qword ptr [rsp + 0xa8]
	inc	rbp
.label_641:
	add	r14, rax
	mov	al, byte ptr [rbp + r14 - 1]
	movzx	ecx, al
	test	rbx, rbx
	jne	.label_645
.label_655:
	movzx	ebx, al
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	ja	.label_560
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_560:
	mov	rax, qword ptr [rsp + 0x38]
	mov	byte ptr [rax + rbp - 1], bl
	cmp	rbp, r13
	jl	.label_584
	jmp	.label_654
.label_645:
	mov	al, byte ptr [rbx + rcx]
	jmp	.label_655
.label_633:
	test	rbx, rbx
	je	.label_658
	mov	rcx, qword ptr [rsp + 0x20]
	cmp	rcx, r13
	cmovg	rcx, r13
	mov	rdi, rcx
	xor	ecx, ecx
	test	rdi, rdi
	jle	.label_661
	movzx	ecx, byte ptr [r14]
	mov	cl, byte ptr [rbx + rcx]
	mov	byte ptr [rax], cl
	mov	ecx, 1
	cmp	rdi, 2
	jl	.label_661
	nop	dword ptr [rax + rax]
.label_652:
	mov	rax, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x38]
	add	rax, qword ptr [rsp + 0x58]
	movzx	eax, byte ptr [rcx + rax]
	mov	rsi, qword ptr [rsp + 0xa8]
	mov	al, byte ptr [rsi + rax]
	mov	byte ptr [rdx + rcx], al
	inc	rcx
	cmp	rcx, rdi
	jl	.label_652
	mov	rcx, rdi
.label_661:
	mov	qword ptr [rsp + 0x28], r15
	mov	qword ptr [rsp + 0x60], rcx
	mov	qword ptr [rsp + 0x68], rcx
	jmp	.label_517
.label_561:
	mov	esi, 0xe8
	mov	rdi, r12
	call	realloc
	mov	r12, rax
	mov	eax, 0xc
	test	r12, r12
	je	.label_525
	mov	qword ptr [r15 + 8], 0xe8
	mov	qword ptr [r15], r12
	jmp	.label_528
.label_654:
	mov	rax, r13
.label_635:
	mov	qword ptr [rsp + 0x28], r15
	jmp	.label_598
.label_658:
	mov	qword ptr [rsp + 0x28], r15
	mov	rax, qword ptr [rsp + 0x20]
.label_598:
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x68], rax
.label_517:
	mov	dword ptr [rsp + 0xcc], 0
	mov	r15, qword ptr [rsp + 0x28]
	mov	qword ptr [r15 + 0x30], 0
	mov	rbx, qword ptr [r15]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx + 0xd8], rbp
	mov	rdx, rbp
	or	rdx, 0x800000
	lea	r14, [rsp + 0xd0]
	lea	r13, [rsp + 0x30]
	mov	rdi, r14
	mov	rsi, r13
	call	peek_token
	cdqe	
	add	qword ptr [rsp + 0x78], rax
	lea	r9, [rsp + 0xcc]
	xor	r8d, r8d
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	mov	rcx, rbp
	call	parse_reg_exp
	mov	r14, rax
	test	r14, r14
	jne	.label_549
	mov	eax, dword ptr [rsp + 0xcc]
	test	eax, eax
	jne	.label_550
.label_549:
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	je	.label_553
	mov	rax, qword ptr [rbx + 0x70]
.label_586:
	lea	ecx, [rbp + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 2
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_585:
	test	r14, r14
	mov	rcx, rbp
	je	.label_570
	mov	ecx, dword ptr [rbx + 0x80]
	cmp	ecx, 0xf
	je	.label_571
	mov	rax, qword ptr [rbx + 0x70]
.label_600:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbx + 0x80], edx
	movsxd	rdx, ecx
	shl	rdx, 6
	lea	rcx, [rax + rdx + 8]
	mov	qword ptr [rax + rdx + 8], 0
	mov	qword ptr [rax + rdx + 0x10], r14
	mov	qword ptr [rax + rdx + 0x18], rbp
	mov	dword ptr [rax + rdx + 0x38], 0x10
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rdx + 0x20], xmm0
	mov	qword ptr [rax + rdx + 0x40], -1
	mov	qword ptr [r14], rcx
	test	rbp, rbp
	je	.label_575
	mov	qword ptr [rbp], rcx
.label_570:
	test	rbp, rbp
	je	.label_575
	test	rcx, rcx
	je	.label_575
	mov	qword ptr [r12 + 0x68], rcx
	mov	r15, qword ptr [r15]
	mov	rdi, qword ptr [r15 + 8]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r15 + 0x18], rax
	mov	rdi, qword ptr [r15 + 8]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r15 + 0x20], rax
	mov	rax, qword ptr [r15 + 8]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [r15 + 0x28], rax
	mov	rax, qword ptr [r15 + 8]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [r15 + 0x30], rax
	cmp	qword ptr [r15 + 0x18], 0
	je	.label_596
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_556
	test	rax, rax
	je	.label_599
	mov	rax, qword ptr [r15 + 0x28]
	test	rax, rax
	je	.label_601
	mov	rax, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rax + 0x30]
	lea	rdi, [rbx*8]
	call	malloc
	mov	qword ptr [r15 + 0xe0], rax
	test	rax, rax
	je	.label_606
	test	rbx, rbx
	je	.label_562
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	cmp	rcx, 1
	mov	edx, 1
	cmova	rdx, rcx
	xor	edi, edi
	cmp	rdx, 4
	jb	.label_538
	xor	edi, edi
	mov	rsi, rdx
	and	rsi, 0xfffffffffffffffc
	je	.label_538
	cmp	rcx, 1
	mov	ebp, 1
	cmova	rbp, rcx
	add	rbp, -4
	mov	rbx, rbp
	shr	rbx, 2
	xor	edi, edi
	bt	rbp, 2
	jb	.label_516
	mov	edi, 1
	movq	xmm0, rdi
	pslldq	xmm0, 8
	movdqu	xmmword ptr [rax], xmm0
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_619]]
	movdqu	xmmword ptr [rax + 0x10], xmm0
	mov	edi, 4
.label_516:
	test	rbx, rbx
	je	.label_625
	mov	ebp, 1
	movq	xmm0, rbp
	pslldq	xmm0, 8
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_619]]
.label_632:
	movq	xmm2, rdi
	pshufd	xmm2, xmm2, 0x44
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	paddq	xmm2, xmm1
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	lea	rbp, [rdi + 4]
	movq	xmm2, rbp
	pshufd	xmm2, xmm2, 0x44
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	paddq	xmm2, xmm1
	movdqu	xmmword ptr [rax + rdi*8 + 0x20], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x30], xmm2
	add	rdi, 8
	cmp	rdi, rsi
	jne	.label_632
.label_625:
	cmp	rdx, rsi
	mov	rdi, rsi
	je	.label_562
	nop	dword ptr [rax + rax]
.label_538:
	mov	qword ptr [rax + rdi*8], rdi
	inc	rdi
	cmp	rdi, rcx
	jb	.label_538
.label_562:
	mov	rbx, qword ptr [r15 + 0x68]
	mov	rdi, r15
	mov	rsi, rbx
	call	optimize_subexps
	test	eax, eax
	jne	.label_648
.label_663:
	mov	rbp, qword ptr [rbx + 8]
	test	rbp, rbp
	mov	eax, 0
	jne	.label_649
	nop	dword ptr [rax]
.label_656:
	mov	rcx, rax
	mov	rax, rbx
	mov	rbp, qword ptr [rax + 0x10]
	cmp	rbp, rcx
	je	.label_651
	test	rbp, rbp
	jne	.label_649
.label_651:
	mov	rbx, qword ptr [rax]
	test	rbx, rbx
	jne	.label_656
	jmp	.label_648
.label_649:
	mov	rdi, r15
	mov	rsi, rbp
	call	optimize_subexps
	test	eax, eax
	mov	rbx, rbp
	je	.label_663
.label_648:
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax + 0x30]
	xor	ecx, ecx
	test	rax, rax
	je	.label_666
	mov	rdx, qword ptr [r15 + 0xe0]
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_662:
	cmp	rcx, qword ptr [rdx + rcx*8]
	jne	.label_666
	inc	rcx
	cmp	rcx, rax
	jb	.label_662
.label_666:
	lea	r14, [r15 + 0x68]
	cmp	rcx, rax
	jne	.label_514
	mov	rdi, qword ptr [r15 + 0xe0]
	call	free
	mov	qword ptr [r15 + 0xe0], 0
	jmp	.label_514
.label_596:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_519
.label_556:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_519
.label_606:
	lea	r14, [r15 + 0x68]
.label_514:
	mov	rax, qword ptr [r14]
	lea	rbx, [rsp + 0xd0]
	nop	word ptr cs:[rax + rax]
.label_530:
	mov	rbp, rax
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	jne	.label_530
	mov	rax, qword ptr [rbp + 0x10]
	test	rax, rax
	mov	edx, 0
	jne	.label_530
	jmp	.label_532
	nop	dword ptr [rax]
.label_555:
	mov	rdx, qword ptr [rcx + 8]
	mov	rbp, rcx
.label_532:
	mov	dword ptr [rsp + 0xd0], 0
	test	rdx, rdx
	je	.label_536
	movzx	eax, byte ptr [rdx + 0x30]
	cmp	eax, 0x11
	jne	.label_536
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x28]
	call	lower_subexp
	mov	qword ptr [rbp + 8], rax
	test	rax, rax
	je	.label_536
	mov	qword ptr [rax], rbp
	nop	dword ptr [rax]
.label_536:
	mov	rdx, qword ptr [rbp + 0x10]
	test	rdx, rdx
	je	.label_543
	movzx	eax, byte ptr [rdx + 0x30]
	cmp	eax, 0x11
	jne	.label_543
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x28]
	call	lower_subexp
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_543
	mov	qword ptr [rax], rbp
	nop	dword ptr [rax + rax]
.label_543:
	mov	eax, dword ptr [rsp + 0xd0]
	test	eax, eax
	jne	.label_551
	mov	rcx, qword ptr [rbp]
	test	rcx, rcx
	je	.label_554
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbp
	je	.label_555
	test	rax, rax
	je	.label_555
	jmp	.label_530
.label_554:
	mov	rax, qword ptr [r14]
	mov	ebx, 0xfffc00ff
.label_564:
	mov	rbp, rax
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	jne	.label_564
	mov	rax, qword ptr [rbp + 0x10]
	test	rax, rax
	jne	.label_564
.label_583:
	movzx	eax, byte ptr [rbp + 0x30]
	cmp	eax, 0x10
	jne	.label_567
	mov	rax, qword ptr [rbp + 8]
	mov	rcx, qword ptr [rax + 0x18]
	mov	qword ptr [rbp + 0x18], rcx
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp + 0x38], rax
	jmp	.label_557
.label_567:
	mov	qword ptr [rbp + 0x18], rbp
	mov	rsi, qword ptr [rbp + 0x28]
	mov	rdx, qword ptr [rbp + 0x30]
	mov	rdi, r15
	call	re_dfa_add_node
	mov	qword ptr [rbp + 0x38], rax
	cmp	rax, -1
	je	.label_576
	movzx	ecx, byte ptr [rbp + 0x30]
	cmp	ecx, 0xc
	jne	.label_557
	mov	ecx, dword ptr [rbp + 0x28]
	mov	rdx, qword ptr [r15]
	shl	rax, 4
	shl	ecx, 8
	and	ecx, 0x3ff00
	mov	esi, dword ptr [rdx + rax + 8]
	and	esi, ebx
	or	esi, ecx
	mov	dword ptr [rdx + rax + 8], esi
.label_557:
	mov	rcx, qword ptr [rbp]
	test	rcx, rcx
	je	.label_582
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbp
	mov	rbp, rcx
	je	.label_583
	test	rax, rax
	mov	rbp, rcx
	je	.label_583
	jmp	.label_564
.label_553:
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_585
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_586
.label_582:
	mov	rbx, qword ptr [r14]
	movzx	eax, byte ptr [rbx + 0x30]
	cmp	eax, 0x10
	je	.label_589
	cmp	eax, 0xb
	jne	.label_592
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rax + 0x20], rbx
	jmp	.label_593
.label_576:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_519
.label_571:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_575
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	xor	ecx, ecx
	jmp	.label_600
.label_575:
	mov	dword ptr [rsp + 0xcc], 0xc
.label_550:
	mov	qword ptr [r12 + 0x68], 0
	jmp	.label_605
.label_589:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rcx + 0x18]
	mov	qword ptr [rax + 0x20], rdx
	jmp	.label_609
.label_592:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	je	.label_611
	mov	rcx, qword ptr [rbx + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_611:
	mov	rcx, qword ptr [rbx + 0x10]
	test	rcx, rcx
	je	.label_593
.label_609:
	mov	rdx, qword ptr [rbx + 0x20]
	mov	qword ptr [rcx + 0x20], rdx
.label_593:
	mov	rdx, rbx
	jmp	.label_587
.label_624:
	mov	rax, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rsi, qword ptr [rdx + 0x18]
	mov	qword ptr [rax + 0x20], rsi
	mov	rsi, qword ptr [rcx + 0x20]
	mov	qword ptr [rdx + 0x20], rsi
	mov	rdx, rcx
.label_587:
	xor	esi, esi
	test	rax, rax
	mov	rcx, rax
	jne	.label_566
	nop	
.label_621:
	mov	rax, rsi
	mov	rsi, rdx
	mov	rcx, qword ptr [rsi + 0x10]
	cmp	rcx, rax
	je	.label_620
	test	rcx, rcx
	jne	.label_566
.label_620:
	mov	rdx, qword ptr [rsi]
	test	rdx, rdx
	jne	.label_621
	jmp	.label_623
.label_566:
	movzx	eax, byte ptr [rcx + 0x30]
	cmp	eax, 0x10
	je	.label_624
	cmp	eax, 0xb
	jne	.label_627
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rax + 0x20], rcx
	mov	rdx, rcx
	jmp	.label_587
.label_627:
	mov	rax, qword ptr [rcx + 8]
	test	rax, rax
	je	.label_630
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rax + 0x20], rdx
.label_630:
	mov	rsi, qword ptr [rcx + 0x10]
	test	rsi, rsi
	mov	rdx, rcx
	je	.label_587
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rdx, rcx
	jmp	.label_587
.label_623:
	mov	rdi, r15
	mov	rsi, rbx
	call	link_nfa_nodes
	test	eax, eax
	jne	.label_551
.label_647:
	mov	rbp, qword ptr [rbx + 8]
	test	rbp, rbp
	mov	eax, 0
	jne	.label_639
	nop	word ptr cs:[rax + rax]
.label_644:
	mov	rcx, rax
	mov	rax, rbx
	mov	rbp, qword ptr [rax + 0x10]
	cmp	rbp, rcx
	je	.label_643
	test	rbp, rbp
	jne	.label_639
.label_643:
	mov	rbx, qword ptr [rax]
	test	rbx, rbx
	jne	.label_644
	jmp	.label_646
.label_639:
	mov	rdi, r15
	mov	rsi, rbp
	call	link_nfa_nodes
	test	eax, eax
	mov	rbx, rbp
	je	.label_647
	jmp	.label_551
.label_646:
	xor	eax, eax
	lea	r14, [rsp + 0xd0]
	xor	r13d, r13d
	jmp	.label_650
	nop	word ptr cs:[rax + rax]
.label_531:
	inc	rbp
	mov	rax, rbp
.label_650:
	cmp	rax, qword ptr [r15 + 0x10]
	jne	.label_657
	xor	ebp, ebp
	test	r13b, 1
	mov	r13d, 0
	jne	.label_660
	jmp	.label_664
.label_657:
	mov	rbp, rax
.label_660:
	mov	rax, qword ptr [r15 + 0x30]
	lea	rbx, [rbp + rbp*2]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	jne	.label_531
	mov	ecx, 1
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbp
	call	calc_eclosure_iter
	test	eax, eax
	jne	.label_551
	mov	rax, qword ptr [r15 + 0x30]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	jne	.label_531
	mov	rdi, qword ptr [rsp + 0xe0]
	call	free
	mov	r13b, 1
	jmp	.label_531
.label_551:
	mov	dword ptr [rsp + 0xcc], eax
.label_519:
	mov	r15, qword ptr [rsp + 0x28]
.label_605:
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_520
.label_524:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_524
.label_520:
	mov	qword ptr [rbx + 0x70], 0
	mov	dword ptr [rbx + 0x80], 0xf
	mov	qword ptr [rbx + 0x68], 0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	mov	rdi, qword ptr [rsp + 0x48]
	call	free
	cmp	byte ptr [rsp + 0xbb], 0
	je	.label_534
	mov	rdi, qword ptr [rsp + 0x38]
	call	free
.label_534:
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
.label_616:
	mov	eax, dword ptr [rsp + 0xcc]
.label_525:
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_664:
	mov	rcx, qword ptr [rsp + 0x28]
	test	byte ptr [rcx + 0x38], 0x10
	jne	.label_542
	mov	rcx, qword ptr [rsp + 0x28]
	cmp	qword ptr [rcx + 0x30], 0
	je	.label_542
	test	byte ptr [r15 + 0xb0], 1
	jne	.label_546
.label_542:
	cmp	qword ptr [r15 + 0x98], 0
	je	.label_548
.label_546:
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [r15 + 0x38], rax
	test	rax, rax
	je	.label_552
	cmp	qword ptr [r15 + 0x10], 0
	je	.label_548
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [r15 + 0x10]
	mov	ecx, 1
	mov	edx, 0x18
	cmp	rax, 1
	jbe	.label_558
.label_565:
	mov	rax, qword ptr [r15 + 0x38]
	movdqu	xmmword ptr [rax + rdx], xmm0
	mov	qword ptr [rax + rdx + 0x10], 0
	inc	rcx
	mov	rax, qword ptr [r15 + 0x10]
	add	rdx, 0x18
	cmp	rcx, rax
	jb	.label_565
.label_558:
	test	rax, rax
	je	.label_548
	mov	r8, qword ptr [r15 + 0x30]
	xor	r10d, r10d
.label_595:
	mov	qword ptr [rsp + 0x18], r10
	lea	r9, [r10 + r10*2]
	mov	qword ptr [rsp + 0x20], r9
	cmp	qword ptr [r8 + r9*8 + 8], 0
	jle	.label_574
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	mov	qword ptr [rsp + 8], rdi
	xor	ebx, ebx
.label_668:
	mov	r13, qword ptr [r15 + 0x38]
	mov	rax, qword ptr [rdi + rbx*8]
	lea	rbp, [rax + rax*2]
	mov	rax, qword ptr [r13 + rbp*8]
	lea	r14, [r13 + rbp*8 + 8]
	mov	rdx, qword ptr [r13 + rbp*8 + 8]
	cmp	rax, rdx
	jne	.label_581
	lea	rcx, [r13 + rbp*8]
	lea	rdx, [rax + rax + 2]
	lea	rax, [rax + rax]
	mov	qword ptr [rcx], rdx
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_610
	lea	rcx, [r13 + rbp*8 + 0x10]
	mov	qword ptr [rcx], rax
	mov	rdx, qword ptr [r14]
	mov	r8, qword ptr [r15 + 0x30]
	mov	r10, qword ptr [rsp + 0x18]
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_634
.label_581:
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_634:
	lea	rsi, [rdx + 1]
	mov	qword ptr [r14], rsi
	mov	qword ptr [rax + rdx*8], r10
	inc	rbx
	cmp	rbx, qword ptr [r8 + r9*8 + 8]
	jl	.label_668
	mov	rax, qword ptr [r15 + 0x10]
.label_574:
	inc	r10
	cmp	r10, rax
	jb	.label_595
.label_548:
	mov	dword ptr [rsp + 0xcc], 0
	cmp	qword ptr [rsp + 0x10], 0
	jne	.label_597
	mov	al, byte ptr [r12 + 0xb0]
	mov	cl, al
	and	cl, 4
	je	.label_597
	mov	rcx, qword ptr [rsp + 0x28]
	cmp	qword ptr [rcx + 0x28], 0
	jne	.label_597
	mov	rdx, qword ptr [r12 + 0x10]
	test	rdx, rdx
	je	.label_604
	mov	rbx, qword ptr [r12]
	xor	r9d, r9d
	movabs	r8, 0x1000000010001
	mov	rcx, rbx
	xor	r10d, r10d
	xor	ebp, ebp
.label_622:
	movzx	esi, byte ptr [rcx + 8]
	dec	esi
	cmp	esi, 0xb
	ja	.label_612
	jmp	qword ptr [word ptr [+ (rsi * 8) + label_614]]
.label_2481:
	mov	sil, 1
	cmp	byte ptr [rcx], 0
	js	.label_615
	mov	sil, r10b
.label_615:
	mov	r10b, sil
	jmp	.label_540
.label_2482:
	mov	rsi, qword ptr [rcx]
	cmp	qword ptr [rsi + 0x10], 0
	jne	.label_597
	cmp	qword ptr [rsi + 0x18], 0
	je	.label_540
	jmp	.label_597
.label_2483:
	mov	r9b, 1
	jmp	.label_540
.label_2484:
	mov	esi, dword ptr [rcx]
	lea	edi, [rsi - 0x10]
	cmp	edi, 0x30
	ja	.label_618
	bt	r8, rdi
	jb	.label_540
.label_618:
	cmp	esi, 0x80
	jne	.label_597
.label_540:
	inc	rbp
	add	rcx, 0x10
	cmp	rbp, rdx
	jb	.label_622
	mov	cl, r9b
	and	cl, 1
	or	r10b, r9b
	xor	edx, edx
	mov	esi, 8
	test	r10b, 1
	je	.label_626
	jmp	.label_631
.label_599:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_519
.label_601:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_519
.label_573:
	add	rsi, 0x10
	mov	rbx, qword ptr [r12]
.label_631:
	mov	eax, dword ptr [rbx + rsi]
	movzx	edi, al
	cmp	edi, 5
	je	.label_640
	cmp	edi, 1
	jne	.label_637
	cmp	byte ptr [rbx + rsi - 8], 0
	jns	.label_637
	and	eax, 0xffdfffff
	jmp	.label_667
.label_640:
	and	eax, 0xffffff00
	or	eax, 7
.label_667:
	mov	dword ptr [rbx + rsi], eax
.label_637:
	inc	rdx
	cmp	rdx, qword ptr [r12 + 0x10]
	jb	.label_573
	mov	al, byte ptr [r12 + 0xb0]
	jmp	.label_626
.label_610:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_519
.label_604:
	xor	ecx, ecx
.label_626:
	mov	dword ptr [r12 + 0xb4], 1
	cmp	qword ptr [r12 + 0x98], 0
	setg	dl
	or	dl, cl
	add	dl, dl
	and	al, 0xf9
	or	al, dl
	mov	byte ptr [r12 + 0xb0], al
.label_597:
	mov	rax, qword ptr [r12 + 0x68]
	mov	rax, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [r12 + 0x90], rax
	mov	rbx, qword ptr [r12 + 0x30]
	lea	r13, [rax + rax*2]
	mov	r15, qword ptr [rbx + r13*8 + 8]
	mov	qword ptr [rsp + 0xd8], r15
	mov	r14, qword ptr [rbx + r13*8 + 8]
	test	r14, r14
	jle	.label_638
	mov	qword ptr [rsp + 0xd0], r15
	lea	rdi, [r15*8]
	call	malloc
	mov	rbp, rax
	mov	qword ptr [rsp + 0xe0], rbp
	test	rbp, rbp
	je	.label_670
	mov	rsi, qword ptr [rbx + r13*8 + 0x10]
	shl	r14, 3
	mov	rdi, rbp
	mov	rdx, r14
	call	memcpy
	mov	dword ptr [rsp + 0xf4], 0
	test	r15, r15
	jle	.label_521
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	jle	.label_521
	xor	eax, eax
	lea	r14, [rsp + 0xd0]
	jmp	.label_527
.label_563:
	mov	rbp, qword ptr [rsp + 0xe0]
.label_527:
	mov	r8, qword ptr [rbp + rax*8]
	mov	rdx, qword ptr [r12]
	mov	rsi, r8
	shl	rsi, 4
	movzx	ecx, byte ptr [rdx + rsi + 8]
	cmp	ecx, 4
	jne	.label_529
	test	r15, r15
	mov	edi, 0
	jle	.label_533
	add	rsi, rdx
	xor	edi, edi
.label_539:
	mov	rcx, qword ptr [rbp + rdi*8]
	shl	rcx, 4
	movzx	ebx, byte ptr [rdx + rcx + 8]
	cmp	ebx, 9
	jne	.label_537
	mov	rcx, qword ptr [rdx + rcx]
	cmp	rcx, qword ptr [rsi]
	je	.label_533
.label_537:
	inc	rdi
	cmp	rdi, r15
	jl	.label_539
.label_533:
	cmp	rdi, r15
	je	.label_529
	mov	rcx, qword ptr [r12 + 0x28]
	lea	rdx, [r8 + r8*2]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	mov	rcx, qword ptr [rcx]
	test	r15, r15
	jle	.label_541
	mov	rsi, r15
	dec	rsi
	mov	edx, 0
	je	.label_544
.label_547:
	lea	rdi, [rdx + rsi]
	shr	rdi, 1
	cmp	qword ptr [rbp + rdi*8], rcx
	lea	rbx, [rdi + 1]
	cmovl	rdx, rbx
	cmovge	rsi, rdi
	cmp	rdx, rsi
	jb	.label_547
.label_544:
	cmp	rdx, -1
	je	.label_541
	cmp	qword ptr [rbp + rdx*8], rcx
	je	.label_529
.label_541:
	mov	rax, qword ptr [r12 + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r14
	call	re_node_set_merge
	test	eax, eax
	jne	.label_559
	mov	r15, qword ptr [rsp + 0xd8]
	xor	eax, eax
.label_529:
	inc	rax
	cmp	rax, r15
	jl	.label_563
	jmp	.label_521
.label_638:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0xd0], xmm0
	mov	qword ptr [rsp + 0xe0], 0
	mov	dword ptr [rsp + 0xf4], 0
.label_521:
	lea	rdi, [rsp + 0xf4]
	lea	rdx, [rsp + 0xd0]
	xor	ecx, ecx
	mov	rsi, r12
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x48], rax
	test	rax, rax
	je	.label_577
	cmp	byte ptr [rax + 0x68], 0
	js	.label_578
	mov	qword ptr [r12 + 0x60], rax
	mov	qword ptr [r12 + 0x58], rax
	mov	qword ptr [r12 + 0x50], rax
	jmp	.label_579
.label_578:
	lea	rbx, [rsp + 0xf4]
	lea	rbp, [rsp + 0xd0]
	mov	ecx, 1
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x50], rax
	mov	ecx, 2
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x58], rax
	mov	ecx, 6
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x60], rax
	cmp	qword ptr [r12 + 0x50], 0
	je	.label_588
	test	rax, rax
	je	.label_588
	mov	rax, qword ptr [r12 + 0x58]
	test	rax, rax
	je	.label_588
.label_579:
	mov	rdi, qword ptr [rsp + 0xe0]
	call	free
	xor	eax, eax
.label_559:
	mov	dword ptr [rsp + 0xcc], eax
	mov	r14, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [r14]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_545
.label_602:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_602
.label_545:
	mov	qword ptr [rbx + 0x70], 0
	mov	dword ptr [rbx + 0x80], 0xf
	mov	qword ptr [rbx + 0x68], 0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	mov	rdi, qword ptr [rsp + 0x48]
	call	free
	cmp	byte ptr [rsp + 0xbb], 0
	je	.label_613
	mov	rdi, qword ptr [rsp + 0x38]
	call	free
.label_613:
	xor	eax, eax
	cmp	dword ptr [rsp + 0xcc], 0
	je	.label_525
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	jmp	.label_616
.label_588:
	mov	eax, dword ptr [rsp + 0xf4]
	jmp	.label_559
.label_552:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_519
.label_577:
	mov	eax, dword ptr [rsp + 0xf4]
	jmp	.label_559
.label_670:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0xd0], xmm0
	mov	dword ptr [rsp + 0xf4], 0xc
	mov	eax, 0xc
	jmp	.label_559
.label_612:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408720
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	mov	rax,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	qword ptr [word ptr [rip + rpl_re_syntax_options]],  rdi
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x408730

	.globl rpl_re_compile_fastmap
	.type rpl_re_compile_fastmap, @function
rpl_re_compile_fastmap:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	r15, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 0x20]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0xf0], xmm0
	movups	xmmword ptr [rbx + 0xe0], xmm0
	movups	xmmword ptr [rbx + 0xd0], xmm0
	movups	xmmword ptr [rbx + 0xc0], xmm0
	movups	xmmword ptr [rbx + 0xb0], xmm0
	movups	xmmword ptr [rbx + 0xa0], xmm0
	movups	xmmword ptr [rbx + 0x90], xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	rsi, qword ptr [r15 + 0x48]
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
	mov	rsi, qword ptr [r15 + 0x50]
	cmp	rax, rsi
	je	.label_672
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
.label_672:
	mov	rsi, qword ptr [r15 + 0x58]
	cmp	rax, rsi
	je	.label_671
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
.label_671:
	mov	rsi, qword ptr [r15 + 0x60]
	cmp	rax, rsi
	je	.label_673
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_673:
	or	byte ptr [r14 + 0x38], 8
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408800

	.globl re_compile_fastmap_iter
	.type re_compile_fastmap_iter, @function
re_compile_fastmap_iter:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x148
	mov	r15, rdx
	mov	qword ptr [rsp + 0x18], rsi
	mov	r13, rdi
	mov	qword ptr [rsp + 0x10], r13
	mov	rax, qword ptr [r13]
	cmp	dword ptr [rax + 0xb4], 1
	jne	.label_674
	mov	qword ptr [rsp + 0x28], rax
	mov	r14b, byte ptr [r13 + 0x1a]
	and	r14b, 0x40
	shr	r14b, 6
	jmp	.label_685
.label_674:
	mov	qword ptr [rsp + 0x28], rax
	xor	r14d, r14d
.label_685:
	cmp	qword ptr [rsi + 0x10], 0
	jle	.label_688
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_684:
	mov	rax, qword ptr [rsi + 0x18]
	mov	rbp, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	r12, rbp
	shl	r12, 4
	lea	rcx, [rax + r12]
	movzx	ebx, byte ptr [rax + r12 + 8]
	cmp	ebx, 1
	je	.label_691
	mov	qword ptr [rsp + 0x20], rdx
	cmp	ebx, 6
	je	.label_696
	cmp	ebx, 3
	jne	.label_699
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_708:
	bt	rbp, rbx
	jae	.label_701
	mov	byte ptr [r15 + rbx], 1
	test	r14b, r14b
	je	.label_701
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x180
	jae	.label_707
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4]
	jmp	.label_710
.label_707:
	mov	eax, ebx
.label_710:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_701:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_708
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax + 8]
	xor	ebx, ebx
	nop	
.label_687:
	bt	rbp, rbx
	jae	.label_675
	mov	byte ptr [r15 + rbx + 0x40], 1
	test	r14b, r14b
	je	.label_675
	lea	eax, [rbx + 0xc0]
	cmp	eax, 0x180
	jae	.label_678
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x100]
	jmp	.label_681
.label_678:
	lea	rax, [rbx + 0x40]
.label_681:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_675:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_687
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax + 0x10]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_700:
	bt	rbp, rbx
	jae	.label_692
	mov	byte ptr [r15 + rbx + 0x80], 1
	test	r14b, r14b
	je	.label_692
	lea	eax, [rbx + 0x100]
	cmp	eax, 0x180
	jae	.label_693
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x200]
	jmp	.label_706
.label_693:
	lea	rax, [rbx + 0x80]
.label_706:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_692:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_700
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax + 0x18]
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_690:
	bt	rbp, rbx
	jae	.label_705
	mov	byte ptr [r15 + rbx + 0xc0], 1
	test	r14b, r14b
	je	.label_705
	lea	eax, [rbx + 0x140]
	cmp	eax, 0x180
	jae	.label_711
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x300]
	jmp	.label_709
.label_711:
	lea	rax, [rbx + 0xc0]
.label_709:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_705:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_690
	jmp	.label_676
	nop	
.label_696:
	mov	r12, qword ptr [rcx]
	mov	rax, qword ptr [rsp + 0x28]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_677
	cmp	qword ptr [r12 + 0x48], 0
	jne	.label_682
	test	byte ptr [r12 + 0x20], 1
	jne	.label_682
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_677
.label_682:
	mov	byte ptr [rsp + 0x138], 0
	lea	rbx, [rsp + 0x30]
	lea	rbp, [rsp + 0x138]
	nop	word ptr cs:[rax + rax]
.label_697:
	mov	qword ptr [rsp + 0x30], 0
	xor	edi, edi
	mov	edx, 1
	mov	rsi, rbp
	mov	rcx, rbx
	call	rpl_mbrtowc
	movzx	ecx, byte ptr [rsp + 0x138]
	cmp	rax, -2
	jne	.label_694
	mov	byte ptr [r15 + rcx], 1
.label_694:
	inc	cl
	mov	byte ptr [rsp + 0x138], cl
	jne	.label_697
	jmp	.label_676
	nop	
.label_691:
	mov	qword ptr [rsp + 0x20], rdx
	movzx	ebx, byte ptr [rcx]
	mov	byte ptr [r15 + rbx], 1
	test	r14b, r14b
	je	.label_704
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	ja	.label_702
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_702:
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
.label_704:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_676
	mov	rax, qword ptr [rsp + 0x28]
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_676
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rcx]
	mov	al, byte ptr [rax + r12]
	mov	byte ptr [rsp + 0x30], al
	mov	rdx, rcx
	inc	rbp
	cmp	rbp, qword ptr [rdx + 0x10]
	lea	r13, [rsp + 0x31]
	mov	esi, 0x2000ff
	jae	.label_680
	add	r12, 0x18
	lea	r13, [rsp + 0x31]
	nop	
.label_686:
	mov	rax, qword ptr [rdx]
	mov	ecx, dword ptr [rax + r12]
	and	ecx, esi
	cmp	ecx, 0x200001
	jne	.label_680
	mov	al, byte ptr [rax + r12 - 8]
	mov	byte ptr [r13], al
	inc	r13
	inc	rbp
	add	r12, 0x10
	cmp	rbp, qword ptr [rdx + 0x10]
	jb	.label_686
.label_680:
	mov	qword ptr [rsp + 0x28], rdx
	mov	qword ptr [rsp + 0x138], 0
	lea	rbp, [rsp + 0x30]
	sub	r13, rbp
	lea	rdi, [rsp + 0x144]
	mov	rsi, rbp
	mov	rdx, r13
	lea	rbx, [rsp + 0x138]
	mov	rcx, rbx
	call	rpl_mbrtowc
	cmp	rax, r13
	jne	.label_695
	mov	edi, dword ptr [rsp + 0x144]
	call	towlower
	mov	rdi, rbp
	mov	esi, eax
	mov	rdx, rbx
	call	wcrtomb
	cmp	rax, -1
	je	.label_695
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
.label_695:
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_676
	nop	dword ptr [rax]
.label_699:
	cmp	ebx, 2
	je	.label_703
	mov	eax, ebx
	or	eax, 2
	cmp	eax, 7
	jne	.label_676
	jmp	.label_703
.label_677:
	cmp	qword ptr [r12 + 0x28], 0
	jle	.label_676
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_698:
	mov	qword ptr [rsp + 0x138], 0
	mov	rax, qword ptr [r12]
	mov	esi, dword ptr [rax + rbp*4]
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 0x138]
	call	wcrtomb
	cmp	rax, -1
	je	.label_679
	movzx	ebx, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rbx], 1
	test	r14b, r14b
	je	.label_679
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	ja	.label_683
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_683:
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
.label_679:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_689
	mov	rax, qword ptr [rsp + 0x28]
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_689
	mov	rax, qword ptr [r12]
	mov	edi, dword ptr [rax + rbp*4]
	call	towlower
	lea	rdi, [rsp + 0x30]
	mov	esi, eax
	lea	rdx, [rsp + 0x138]
	call	wcrtomb
	cmp	rax, -1
	je	.label_689
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
	nop	
.label_689:
	inc	rbp
	cmp	rbp, qword ptr [r12 + 0x28]
	jl	.label_698
	nop	
.label_676:
	mov	rdx, qword ptr [rsp + 0x20]
	inc	rdx
	mov	rsi, qword ptr [rsp + 0x18]
	cmp	rdx, qword ptr [rsi + 0x10]
	jl	.label_684
.label_688:
	add	rsp, 0x148
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_703:
	mov	esi, 1
	mov	edx, 0x100
	mov	rdi, r15
	call	memset
	cmp	ebx, 2
	jne	.label_688
	or	byte ptr [r13 + 0x38], 1
	jmp	.label_688
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408cf0
	.globl rpl_regcomp
	.type rpl_regcomp, @function
rpl_regcomp:

	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	mov	r14, rsi
	mov	r15, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15], xmm0
	mov	qword ptr [r15 + 0x10], 0
	mov	edi, 0x100
	call	malloc
	mov	qword ptr [r15 + 0x20], rax
	mov	ebx, 0xc
	test	rax, rax
	je	.label_714
	test	bpl, 1
	mov	eax, 0x3b2fc
	mov	ecx, 0x10102c6
	cmovne	rcx, rax
	mov	ebx, ebp
	and	ebx, 2
	shl	rbx, 0x15
	or	rbx, rcx
	test	bpl, 4
	jne	.label_712
	mov	al, byte ptr [r15 + 0x38]
	and	al, 0x7f
	jmp	.label_713
.label_712:
	and	ebx, 0x143b2be
	or	rbx, 0x100
	mov	al, byte ptr [r15 + 0x38]
	or	al, 0x80
.label_713:
	mov	byte ptr [r15 + 0x38], al
	add	ebp, ebp
	and	bpl, 0x10
	and	al, 0xef
	or	al, bpl
	mov	byte ptr [r15 + 0x38], al
	mov	qword ptr [r15 + 0x28], 0
	mov	rdi, r14
	call	strlen
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rax
	mov	rcx, rbx
	call	re_compile_internal
	cmp	eax, 0x10
	mov	ebx, 8
	cmovne	ebx, eax
	test	ebx, ebx
	jne	.label_715
	mov	rdi, r15
	call	rpl_re_compile_fastmap
	xor	ebx, ebx
.label_714:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_715:
	mov	rdi, qword ptr [r15 + 0x20]
	call	free
	mov	qword ptr [r15 + 0x20], 0
	jmp	.label_714
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408de0
	.globl rpl_regerror
	.type rpl_regerror, @function
rpl_regerror:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	r14, rdx
	cmp	edi, 0x11
	jae	.label_716
	movsxd	rax, edi
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rdi, r12
	call	strlen
	mov	rbx, rax
	inc	rbx
	test	r15, r15
	je	.label_718
	cmp	rbx, r15
	mov	rdx, rbx
	ja	.label_719
.label_717:
	mov	rdi, r14
	mov	rsi, r12
	call	memcpy
.label_718:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_719:
	mov	byte ptr [r14 + r15 - 1], 0
	dec	r15
	mov	rdx, r15
	jmp	.label_717
.label_716:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408e60

	.globl rpl_regfree
	.type rpl_regfree, @function
rpl_regfree:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_720
	call	free_dfa_content
.label_720:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rbx + 0x28]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ea0

	.globl free_dfa_content
	.type free_dfa_content, @function
free_dfa_content:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rax, qword ptr [r14]
	test	rax, rax
	je	.label_725
	xor	ebx, ebx
	mov	r12d, 8
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_725
	mov	ebp, 0x400ff
	jmp	.label_729
	nop	dword ptr [rax]
.label_737:
	add	r12, 0x10
	mov	rax, qword ptr [r14]
.label_729:
	mov	ecx, dword ptr [rax + r12]
	and	ecx, ebp
	cmp	ecx, 3
	je	.label_731
	cmp	ecx, 6
	jne	.label_734
	mov	r15, qword ptr [rax + r12 - 8]
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	jmp	.label_723
	nop	word ptr cs:[rax + rax]
.label_731:
	mov	rdi, qword ptr [rax + r12 - 8]
.label_723:
	call	free
.label_734:
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	jb	.label_737
.label_725:
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_728
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
	lea	r13, [r14 + 0x28]
	xor	ebp, ebp
	mov	ebx, 0x10
	nop	word ptr cs:[rax + rax]
.label_738:
	mov	rax, qword ptr [r12]
	test	rax, rax
	je	.label_733
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_733:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_736
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_736:
	mov	rax, qword ptr [r13]
	test	rax, rax
	je	.label_721
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_721:
	inc	rbp
	add	rbx, 0x18
	cmp	rbp, qword ptr [r14 + 0x10]
	jb	.label_738
	jmp	.label_726
.label_728:
	lea	r13, [r14 + 0x28]
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
.label_726:
	mov	rdi, qword ptr [r13]
	call	free
	mov	rdi, qword ptr [r12]
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, qword ptr [r14 + 0x40]
	test	rdi, rdi
	je	.label_730
	xor	r15d, r15d
	jmp	.label_732
.label_724:
	mov	rdi, qword ptr [r14 + 0x40]
.label_732:
	lea	rax, [r15 + r15*2]
	lea	r12, [rdi + rax*8 + 0x10]
	cmp	qword ptr [rdi + rax*8], 0
	jle	.label_735
	lea	rbx, [rdi + rax*8]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_722:
	mov	rax, qword ptr [r12]
	mov	rdi, qword ptr [rax + rbp*8]
	call	free_state
	inc	rbp
	cmp	rbp, qword ptr [rbx]
	jl	.label_722
.label_735:
	mov	rdi, qword ptr [r12]
	call	free
	inc	r15
	cmp	r15, qword ptr [r14 + 0x88]
	jbe	.label_724
	mov	rdi, qword ptr [r14 + 0x40]
.label_730:
	call	free
	mov	rdi, qword ptr [r14 + 0x78]
	mov	eax, OFFSET FLAT:utf8_sb_map
	cmp	rdi, rax
	je	.label_727
	call	free
.label_727:
	mov	rdi, qword ptr [r14 + 0xe0]
	call	free
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	free
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409070
	.globl rpl_regexec
	.type rpl_regexec, @function
rpl_regexec:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	ebp, r8d
	mov	r12, rcx
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, 2
	cmp	ebp, 7
	ja	.label_739
	test	bpl, 4
	jne	.label_741
	mov	rdi, r14
	call	strlen
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.label_740
.label_741:
	mov	rcx, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
.label_740:
	test	byte ptr [rbx + 0x38], 0x10
	jne	.label_743
	mov	dword ptr [rsp + 0x10], ebp
	mov	qword ptr [rsp + 8], r12
	mov	qword ptr [rsp], r15
	jmp	.label_742
.label_743:
	mov	dword ptr [rsp + 0x10], ebp
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [rsp], 0
.label_742:
	mov	rdi, rbx
	mov	rsi, r14
	mov	r8, rdx
	mov	r9, rdx
	call	re_search_internal
	test	eax, eax
	setne	al
	movzx	eax, al
.label_739:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409110

	.globl re_search_internal
	.type re_search_internal, @function
re_search_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x258
	mov	r13, r9
	mov	rbp, rcx
	mov	r9, qword ptr [rsp + 0x290]
	mov	r11, qword ptr [rdi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x1e0], xmm0
	movaps	xmmword ptr [rsp + 0x1d0], xmm0
	movaps	xmmword ptr [rsp + 0x1c0], xmm0
	movaps	xmmword ptr [rsp + 0x1b0], xmm0
	movaps	xmmword ptr [rsp + 0x1a0], xmm0
	movaps	xmmword ptr [rsp + 0x190], xmm0
	movaps	xmmword ptr [rsp + 0x180], xmm0
	movaps	xmmword ptr [rsp + 0x170], xmm0
	movaps	xmmword ptr [rsp + 0x160], xmm0
	movaps	xmmword ptr [rsp + 0x150], xmm0
	movaps	xmmword ptr [rsp + 0x140], xmm0
	movaps	xmmword ptr [rsp + 0x130], xmm0
	movaps	xmmword ptr [rsp + 0x120], xmm0
	movaps	xmmword ptr [rsp + 0x110], xmm0
	movaps	xmmword ptr [rsp + 0x100], xmm0
	movaps	xmmword ptr [rsp + 0xf0], xmm0
	mov	qword ptr [rsp + 0x188], r11
	mov	rax, qword ptr [rdi + 0x20]
	xor	r12d, r12d
	test	rax, rax
	je	.label_795
	mov	cl, byte ptr [rdi + 0x38]
	and	cl, 9
	movzx	ecx, cl
	xor	ebx, ebx
	cmp	ecx, 8
	cmovne	rax, rbx
	cmp	rbp, r8
	cmove	rax, rbx
	mov	r12, rax
.label_795:
	mov	rax, qword ptr [rdi + 0x30]
	lea	r14, [r9 - 1]
	mov	rcx, r14
	sub	rcx, rax
	xor	ebx, ebx
	cmp	rax, r9
	cmovb	rbx, rcx
	mov	eax, 1
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_835
	mov	r15, qword ptr [r11 + 0x48]
	test	r15, r15
	je	.label_835
	mov	rcx, qword ptr [r11 + 0x50]
	test	rcx, rcx
	je	.label_835
	mov	r10, qword ptr [r11 + 0x58]
	test	r10, r10
	je	.label_848
	cmp	qword ptr [r11 + 0x60], 0
	je	.label_848
	mov	rax, r13
	mov	r13, qword ptr [rdi + 0x28]
	mov	qword ptr [rsp + 0xd0], r13
	cmp	qword ptr [r15 + 0x10], 0
	je	.label_851
	mov	rcx, r8
	mov	r13, rax
	jmp	.label_841
.label_848:
	mov	eax, 1
	jmp	.label_835
.label_851:
	cmp	qword ptr [rcx + 0x10], 0
	mov	r13, rax
	je	.label_850
	mov	rcx, r8
.label_841:
	mov	qword ptr [rsp + 0xb0], rcx
	mov	qword ptr [rsp + 0xd8], r12
	mov	qword ptr [rsp + 0x68], r14
	mov	al, 1
	cmp	rbx, r9
	mov	qword ptr [rsp + 0xa0], rbx
	jne	.label_861
	cmp	qword ptr [r11 + 0x98], 0
	setne	al
.label_861:
	mov	byte ptr [rsp + 0xbe], al
	mov	r12, qword ptr [r11 + 0x10]
	inc	r12
	mov	rcx, qword ptr [rdi + 0x18]
	movsxd	rax, dword ptr [r11 + 0xb4]
	cmp	rax, r12
	cmovge	r12, rax
	lea	rbx, [rdx + 1]
	cmp	rbx, r12
	cmovle	r12, rbx
	mov	qword ptr [rsp + 0xf0], rsi
	mov	qword ptr [rsp + 0x148], rdx
	mov	qword ptr [rsp + 0x140], rdx
	mov	rbx, qword ptr [rsp + 0xd0]
	mov	qword ptr [rsp + 0x168], rbx
	shr	rcx, 0x16
	and	cl, 1
	mov	byte ptr [rsp + 0x178], cl
	test	rbx, rbx
	setne	bl
	or	bl, cl
	mov	byte ptr [rsp + 0x17b], bl
	mov	dword ptr [rsp + 0x180], eax
	mov	cl, byte ptr [r11 + 0xb0]
	shr	cl, 2
	and	cl, 1
	mov	byte ptr [rsp + 0x179], cl
	mov	cl, byte ptr [r11 + 0xb0]
	shr	cl, 3
	and	cl, 1
	cmp	rax, 2
	mov	byte ptr [rsp + 0x17a], cl
	mov	qword ptr [rsp + 0x158], rdx
	mov	qword ptr [rsp + 0x150], rdx
	jl	.label_864
	mov	qword ptr [rsp + 0xe8], r11
	movabs	rax, 0x1ffffffffffffffe
	inc	rax
	mov	ecx, 0xc
	cmp	r12, rax
	ja	.label_757
	mov	qword ptr [rsp + 0xc0], rsi
	mov	qword ptr [rsp + 0xe0], rdx
	mov	r14, rdi
	lea	rsi, [r12*4]
	xor	edi, edi
	call	realloc
	mov	ecx, 0xc
	test	rax, rax
	je	.label_757
	mov	qword ptr [rsp + 0x100], rax
	mov	r11, qword ptr [rsp + 0xe8]
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xc0]
.label_864:
	mov	qword ptr [rsp + 0xc0], rsi
	mov	qword ptr [rsp + 0xe0], rdx
	test	bl, bl
	je	.label_868
	mov	r14, rdi
	mov	qword ptr [rsp + 0xe8], r11
	xor	edi, edi
	mov	rsi, r12
	call	realloc
	mov	ecx, 0xc
	test	rax, rax
	je	.label_757
	mov	qword ptr [rsp + 0xf8], rax
	mov	r11, qword ptr [rsp + 0xe8]
	mov	rdi, r14
.label_868:
	mov	edx, dword ptr [rsp + 0x2a0]
	mov	qword ptr [rsp + 0x130], r12
	lea	rax, [r11 + 0xb8]
	mov	qword ptr [rsp + 0x170], rax
	mov	rax, qword ptr [r11 + 0xb0]
	mov	cl, al
	shr	cl, 4
	and	cl, 1
	mov	byte ptr [rsp + 0x17e], cl
	xor	ecx, ecx
	test	bl, bl
	jne	.label_749
	shr	rax, 0x20
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	qword ptr [rsp + 0xf8], rcx
	xor	ecx, ecx
	cmp	eax, 1
	cmovle	rcx, qword ptr [rsp + 0xe0]
.label_749:
	mov	qword ptr [rsp + 0x120], rcx
	mov	qword ptr [rsp + 0x128], rcx
	mov	qword ptr [rsp + 0x158], r13
	mov	qword ptr [rsp + 0x150], r13
	mov	al, byte ptr [rdi + 0x38]
	mov	qword ptr [rsp + 0x80], rdi
	shr	al, 7
	mov	byte ptr [rsp + 0x17d], al
	mov	rbx, qword ptr [r11 + 0x98]
	mov	qword ptr [rsp + 0xe8], r11
	lea	r14, [rbx + rbx]
	mov	dword ptr [rsp + 0x190], edx
	mov	qword ptr [rsp + 0x198], -1
	test	rbx, rbx
	jle	.label_765
	mov	ecx, 0xc
	movabs	rax, 0x666666666666666
	cmp	r14, rax
	ja	.label_757
	shl	rbx, 4
	lea	rdi, [rbx + rbx*4]
	call	malloc
	mov	r13, rax
	mov	qword ptr [rsp + 0x1c8], r13
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [rsp + 0x1e8], rax
	test	r13, r13
	je	.label_761
	test	rax, rax
	mov	ecx, 0xc
	je	.label_757
.label_765:
	mov	rax, qword ptr [rsp + 0x290]
	mov	rcx, rax
	mov	rax, qword ptr [rsp + 0xa0]
	sub	rcx, rax
	mov	qword ptr [rsp + 0x58], rcx
	mov	qword ptr [rsp + 0x1c0], r14
	mov	dword ptr [rsp + 0x1d0], 1
	mov	qword ptr [rsp + 0x1e0], r14
	cmp	rcx, 1
	mov	rax, qword ptr [rsp + 0xe8]
	ja	.label_799
	mov	rdi, qword ptr [rax + 0xb0]
	test	dil, 2
	jne	.label_799
	shr	rdi, 0x20
	mov	qword ptr [rsp + 0x1a8], 0
	jmp	.label_818
.label_799:
	mov	ecx, 0xc
	movabs	rax, 0x1ffffffffffffffe
	cmp	r12, rax
	ja	.label_757
	lea	rdi, [r12*8 + 8]
	call	malloc
	mov	ecx, 0xc
	mov	qword ptr [rsp + 0x1a8], rax
	test	rax, rax
	je	.label_757
	mov	rax, qword ptr [rsp + 0xe8]
	mov	edi, dword ptr [rax + 0xb4]
.label_818:
	mov	r13, qword ptr [rsp + 0xd8]
	mov	qword ptr [rsp + 0xc8], rdi
	mov	qword ptr [rsp + 0xe8], rax
	mov	qword ptr [rsp + 0x1f8], rbp
	mov	eax, dword ptr [rsp + 0x2a0]
	lea	eax, [rax + rax]
	and	eax, 2
	xor	eax, 6
	mov	dword ptr [rsp + 0x160], eax
	mov	rbx, qword ptr [rsp + 0xb0]
	cmp	rbx, rbp
	mov	rax, rbp
	cmovle	rax, rbx
	mov	qword ptr [rsp + 0x78], rax
	mov	r8, rax
	mov	r14, rbx
	cmovl	r14, rbp
	mov	qword ptr [rsp + 0x70], r14
	mov	edx, 8
	test	r13, r13
	je	.label_832
	cmp	edi, 1
	je	.label_810
	mov	ecx, 0x400000
	xor	eax, eax
	cmp	qword ptr [rsp + 0xd0], 0
	mov	rdx, qword ptr [rsp + 0x80]
	jne	.label_852
	and	rcx, qword ptr [rdx + 0x18]
	jne	.label_852
.label_810:
	mov	eax, 4
.label_852:
	cmp	qword ptr [rsp + 0xd0], 0
	setne	cl
	cmp	rbp, rbx
	setle	dl
	movzx	ecx, cl
	movzx	edx, dl
	lea	edx, [rcx + rdx*2]
	or	edx, eax
.label_832:
	mov	qword ptr [rsp + 0xc8], rdi
	xor	eax, eax
	cmp	rbp, rbx
	setle	byte ptr [rsp + 0xbf]
	lea	rcx, [rsp + 0x1f8]
	cmovg	rcx, rax
	mov	qword ptr [rsp + 0x88], rcx
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	cmp	rbx, rbp
	mov	eax, 1
	mov	rcx, -1
	cmovge	rcx, rax
	mov	qword ptr [rsp + 0xd8], rcx
	add	edx, -4
	mov	qword ptr [rsp + 0xb0], rdx
	mov	rbx, r8
	jmp	.label_788
.label_805:
	mov	r12, qword ptr [rsp + 0xc8]
	cmp	r12d, 1
	je	.label_871
	mov	rax, qword ptr [rsp + 0x120]
	test	rax, rax
	je	.label_871
	mov	rax, qword ptr [rsp + 0x100]
	cmp	dword ptr [rax], -1
	je	.label_879
.label_871:
	mov	dword ptr [rsp + 0x1d0], 0
	lea	rax, [rsp + 0x1b0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	r15, qword ptr [rsp + 0x188]
	mov	r14, qword ptr [rsp + 0x138]
	mov	dword ptr [rsp + 0x254], 0
	mov	rbx, qword ptr [r15 + 0x48]
	cmp	byte ptr [rbx + 0x68], 0
	js	.label_885
	mov	r12b, byte ptr [rsp + 0xbe]
	jmp	.label_754
.label_885:
	test	r14, r14
	jle	.label_903
	lea	rax, [r14 - 1]
	cmp	qword ptr [rsp + 0x148], rax
	je	.label_905
	cmp	dword ptr [rsp + 0x180], 2
	mov	r12b, byte ptr [rsp + 0xbe]
	jl	.label_908
	mov	rax, qword ptr [rsp + 0x100]
	mov	rcx, r14
	nop	dword ptr [rax]
.label_913:
	mov	ebp, dword ptr [rax + rcx*4 - 4]
	cmp	ebp, -1
	jne	.label_812
	dec	rcx
	jg	.label_913
	mov	ecx, dword ptr [rsp + 0x160]
	jmp	.label_746
.label_908:
	mov	rcx, qword ptr [rsp + 0xf8]
	mov	rdx, qword ptr [rsp + 0x170]
	movzx	eax, byte ptr [rcx + rax]
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	mov	rcx, qword ptr [rdx + rcx*8]
	bt	rcx, rax
	jb	.label_753
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_754
	jmp	.label_898
.label_812:
	cmp	byte ptr [rsp + 0x17e], 0
	jne	.label_922
.label_769:
	cmp	ebp, 0xa
	jne	.label_754
.label_898:
	mov	ecx, 2
	cmp	byte ptr [rsp + 0x17d], 0
	jne	.label_746
	xor	ecx, ecx
	jmp	.label_746
.label_903:
	mov	ecx, dword ptr [rsp + 0x160]
	mov	r12b, byte ptr [rsp + 0xbe]
	jmp	.label_746
.label_905:
	mov	ecx, dword ptr [rsp + 0x190]
	and	ecx, 2
	xor	ecx, 0xa
	mov	r12b, byte ptr [rsp + 0xbe]
.label_746:
	test	cl, 1
	jne	.label_753
	test	ecx, ecx
	je	.label_754
	mov	eax, ecx
	and	eax, 4
	sete	sil
	mov	edx, ecx
	and	edx, 2
	je	.label_756
	test	sil, sil
	jne	.label_756
	mov	rbx, qword ptr [r15 + 0x60]
	jmp	.label_754
.label_756:
	test	edx, edx
	jne	.label_763
	test	eax, eax
	je	.label_754
	mov	rdx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 0x254]
	mov	rsi, r15
	call	re_acquire_state_context
	mov	rbx, rax
	jmp	.label_754
.label_763:
	mov	rbx, qword ptr [r15 + 0x58]
	jmp	.label_754
.label_922:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	je	.label_753
	test	eax, eax
	je	.label_769
.label_753:
	mov	rbx, qword ptr [r15 + 0x50]
.label_754:
	mov	cl, byte ptr [rsp + 0xbf]
	test	rbx, rbx
	je	.label_771
	mov	rax, qword ptr [rsp + 0x1a8]
	test	rax, rax
	mov	dl, cl
	mov	dword ptr [rsp + 0x90], edx
	je	.label_772
	mov	qword ptr [rax + r14*8], rbx
	cmp	qword ptr [r15 + 0x98], 0
	mov	al, cl
	mov	dword ptr [rsp + 0x90], eax
	jne	.label_779
.label_772:
	mov	byte ptr [rsp + 0xbf], cl
	mov	cl, byte ptr [rbx + 0x68]
	mov	r15, -1
	test	cl, 0x10
	mov	eax, 0
	jne	.label_783
.label_794:
	mov	rbp, qword ptr [rsp + 0x138]
	mov	rcx, qword ptr [rsp + 0x88]
.label_899:
	mov	qword ptr [rsp + 0x60], rcx
	mov	qword ptr [rsp + 0xa8], r14
	cmp	qword ptr [rsp + 0x158], rbp
	jle	.label_750
	test	rax, rax
	sete	al
	or	al, r12b
	mov	byte ptr [rsp + 0x57], al
	mov	r14, rbx
	jmp	.label_790
.label_918:
	mov	qword ptr [rsp + 0x40], r15
	cmp	qword ptr [r14 + 0x10], 0
	jle	.label_802
	mov	rsi, qword ptr [rsp + 0x188]
	mov	qword ptr [rsp + 0x30], rsi
	xor	r15d, r15d
	jmp	.label_858
.label_792:
	mov	rax, qword ptr [rsp + 0x138]
	test	rax, rax
	jle	.label_811
	lea	rdx, [rax - 1]
	mov	ecx, 0xa
	cmp	qword ptr [rsp + 0x148], rdx
	je	.label_815
	cmp	dword ptr [rsp + 0x180], 2
	jl	.label_819
	mov	rcx, qword ptr [rsp + 0x100]
.label_826:
	mov	ebx, dword ptr [rcx + rax*4 - 4]
	cmp	ebx, -1
	jne	.label_822
	dec	rax
	jg	.label_826
	mov	ecx, dword ptr [rsp + 0x160]
	jmp	.label_815
.label_770:
	cmp	r14, rbx
	je	.label_847
	mov	dword ptr [rsp + 0x90], 0
.label_847:
	mov	r14, qword ptr [rsp + 0xa8]
	cmove	r14, qword ptr [rsp + 0x98]
	jmp	.label_829
.label_819:
	mov	rax, qword ptr [rsp + 0xf8]
	mov	rcx, qword ptr [rsp + 0x170]
	movzx	eax, byte ptr [rax + rdx]
	mov	dl, al
	shr	dl, 6
	movzx	edx, dl
	mov	rdx, qword ptr [rcx + rdx*8]
	mov	ecx, 1
	bt	rdx, rax
	jb	.label_815
	xor	ecx, ecx
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_815
	jmp	.label_843
.label_822:
	cmp	byte ptr [rsp + 0x17e], 0
	jne	.label_845
.label_872:
	xor	ecx, ecx
	cmp	ebx, 0xa
	jne	.label_815
.label_843:
	mov	ecx, 2
	cmp	byte ptr [rsp + 0x17d], 0
	jne	.label_815
	xor	ecx, ecx
	jmp	.label_815
.label_911:
	mov	dword ptr [rsp + 0x2c], eax
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rsi
	mov	edi, ebx
	call	iswalnum
	xor	edx, edx
	cmp	ebx, 0x5f
	mov	edi, 1
	je	.label_857
	test	eax, eax
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	eax, dword ptr [rsp + 0x2c]
	je	.label_787
	jmp	.label_866
.label_877:
	mov	edi, ebx
	call	iswalnum
	cmp	ebx, 0x5f
	mov	ecx, 1
	je	.label_786
	test	eax, eax
	lea	rdi, [rsp + 0x238]
	je	.label_846
	jmp	.label_821
.label_857:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	eax, dword ptr [rsp + 0x2c]
	jmp	.label_866
.label_786:
	lea	rdi, [rsp + 0x238]
	jmp	.label_821
.label_858:
	mov	rax, qword ptr [r14 + 0x18]
	mov	rbp, qword ptr [rax + r15*8]
	mov	rax, qword ptr [rsi]
	mov	rcx, rbp
	shl	rcx, 4
	mov	eax, dword ptr [rax + rcx + 8]
	test	eax, 0x100000
	je	.label_747
	mov	r12d, eax
	shr	r12d, 8
	test	r12w, 0x3ff
	mov	rcx, qword ptr [rsp + 0x138]
	je	.label_766
	test	rcx, rcx
	js	.label_883
	cmp	qword ptr [rsp + 0x148], rcx
	je	.label_886
	mov	r8d, eax
	cmp	dword ptr [rsp + 0x180], 2
	jl	.label_890
	mov	rax, qword ptr [rsp + 0x100]
	lea	rdx, [rcx + 1]
.label_896:
	mov	ebx, dword ptr [rax + rdx*4 - 4]
	cmp	ebx, -1
	jne	.label_893
	dec	rdx
	test	rdx, rdx
	jg	.label_896
	mov	edi, dword ptr [rsp + 0x160]
	jmp	.label_824
.label_890:
	mov	rax, qword ptr [rsp + 0xf8]
	mov	rdi, qword ptr [rsp + 0x170]
	movzx	eax, byte ptr [rax + rcx]
	mov	dl, al
	shr	dl, 6
	movzx	edx, dl
	mov	rdx, qword ptr [rdi + rdx*8]
	xor	edi, edi
	bt	rdx, rax
	jae	.label_901
	mov	edi, 1
	xor	edx, edx
	mov	eax, r8d
	jmp	.label_866
.label_893:
	cmp	byte ptr [rsp + 0x17e], 0
	mov	eax, r8d
	jne	.label_911
.label_787:
	mov	r8d, eax
	xor	edi, edi
	cmp	ebx, 0xa
	je	.label_912
	jmp	.label_824
.label_901:
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_824
.label_912:
	mov	edi, 2
	cmp	byte ptr [rsp + 0x17d], 0
	jne	.label_824
	xor	edi, edi
	jmp	.label_824
.label_883:
	mov	r8d, eax
	mov	edi, dword ptr [rsp + 0x160]
	jmp	.label_824
.label_886:
	mov	r8d, eax
	mov	edi, dword ptr [rsp + 0x190]
	and	edi, 2
	xor	edi, 0xa
.label_824:
	mov	eax, edi
	and	eax, 1
	sete	dl
	test	r12b, 4
	je	.label_919
	test	eax, eax
	mov	eax, r8d
	je	.label_747
	jmp	.label_866
.label_919:
	mov	eax, r8d
.label_866:
	test	ah, 8
	je	.label_925
	test	dl, dl
	je	.label_747
.label_925:
	test	ah, 0x20
	je	.label_751
	mov	eax, edi
	and	eax, 2
	je	.label_747
.label_751:
	test	r12b, r12b
	jns	.label_766
	and	edi, 8
	je	.label_747
.label_766:
	mov	rbx, rsi
	mov	rdi, rbx
	mov	rsi, rbp
	lea	rdx, [rsp + 0xf0]
	call	check_node_accept_bytes
	mov	rsi, rbx
	test	eax, eax
	je	.label_747
	movsxd	r12, eax
	add	r12, qword ptr [rsp + 0x138]
	mov	ecx, dword ptr [rsp + 0x1d0]
	cmp	ecx, eax
	cmovl	ecx, eax
	mov	dword ptr [rsp + 0x1d0], ecx
	mov	rbx, qword ptr [rsp + 0x1b0]
	mov	rcx, qword ptr [rsp + 0x130]
	mov	rax, qword ptr [rsp + 0x148]
	cmp	rcx, r12
	jg	.label_759
	cmp	rcx, rax
	jl	.label_878
.label_759:
	mov	rcx, qword ptr [rsp + 0x120]
	cmp	rcx, r12
	jg	.label_768
	cmp	rcx, rax
	jge	.label_768
.label_878:
	lea	esi, [r12 + 1]
	lea	rdi, [rsp + 0xf0]
	call	extend_buffers
	test	eax, eax
	jne	.label_773
.label_768:
	mov	rdx, r12
	sub	rdx, rbx
	jle	.label_775
	mov	rax, qword ptr [rsp + 0x1a8]
	lea	rdi, [rax + rbx*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	call	memset
	mov	qword ptr [rsp + 0x1b0], r12
.label_775:
	mov	dword ptr [rsp + 0x238], 0
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rax + rbp*8]
	lea	rdx, [rax + rax*2]
	shl	rdx, 3
	add	rdx, qword ptr [rcx + 0x30]
	mov	rax, qword ptr [rsp + 0x1a8]
	mov	rbx, qword ptr [rax + r12*8]
	mov	rbp, rcx
	test	rbx, rbx
	je	.label_784
	mov	rsi, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 0x200]
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x238], eax
	test	eax, eax
	je	.label_869
	jmp	.label_801
.label_784:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x210], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x200], xmm0
.label_869:
	mov	qword ptr [rsp + 0x38], rbx
	test	r12, r12
	jle	.label_916
	lea	rax, [r12 - 1]
	cmp	qword ptr [rsp + 0x148], rax
	lea	rdi, [rsp + 0x238]
	je	.label_785
	cmp	dword ptr [rsp + 0x180], 2
	jl	.label_817
	mov	rax, qword ptr [rsp + 0x100]
	mov	rcx, r12
.label_876:
	mov	ebx, dword ptr [rax + rcx*4 - 4]
	cmp	ebx, -1
	jne	.label_820
	dec	rcx
	jg	.label_876
	mov	ecx, dword ptr [rsp + 0x160]
	jmp	.label_821
.label_817:
	mov	rcx, qword ptr [rsp + 0xf8]
	mov	rdx, qword ptr [rsp + 0x170]
	movzx	eax, byte ptr [rcx + rax]
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	mov	rdx, qword ptr [rdx + rcx*8]
	mov	ecx, 1
	bt	rdx, rax
	jb	.label_821
	xor	ecx, ecx
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_821
	jmp	.label_831
.label_820:
	cmp	byte ptr [rsp + 0x17e], 0
	jne	.label_877
.label_846:
	xor	ecx, ecx
	cmp	ebx, 0xa
	jne	.label_821
.label_831:
	mov	ecx, 2
	cmp	byte ptr [rsp + 0x17d], 0
	jne	.label_821
	xor	ecx, ecx
	jmp	.label_821
.label_916:
	mov	ecx, dword ptr [rsp + 0x160]
	lea	rdi, [rsp + 0x238]
	jmp	.label_821
.label_785:
	mov	ecx, dword ptr [rsp + 0x190]
	and	ecx, 2
	xor	ecx, 0xa
.label_821:
	mov	rsi, rbp
	lea	rdx, [rsp + 0x200]
	call	re_acquire_state_context
	cmp	qword ptr [rsp + 0x38], 0
	mov	rcx, qword ptr [rsp + 0x1a8]
	mov	qword ptr [rcx + r12*8], rax
	je	.label_849
	mov	rdi, qword ptr [rsp + 0x210]
	call	free
.label_849:
	mov	rax, qword ptr [rsp + 0x1a8]
	cmp	qword ptr [rax + r12*8], 0
	mov	rsi, rbp
	jne	.label_747
	mov	eax, dword ptr [rsp + 0x238]
	test	eax, eax
	jne	.label_801
.label_747:
	inc	r15
	cmp	r15, qword ptr [r14 + 0x10]
	jl	.label_858
.label_802:
	mov	dword ptr [rsp + 0x254], 0
	mov	r12b, byte ptr [rsp + 0xbe]
	mov	r15, qword ptr [rsp + 0x40]
	jmp	.label_862
.label_811:
	mov	ecx, dword ptr [rsp + 0x160]
.label_815:
	and	ecx, 1
	shl	rcx, 8
	or	rcx, rbp
	mov	rbx, qword ptr [r15 + rcx*8]
	mov	r15, qword ptr [rsp + 0x40]
	jmp	.label_860
.label_773:
	mov	dword ptr [rsp + 0x238], eax
.label_801:
	mov	dword ptr [rsp + 0x254], eax
	xor	ebx, ebx
	mov	r12b, byte ptr [rsp + 0xbe]
	mov	r15, qword ptr [rsp + 0x40]
	jmp	.label_860
.label_845:
	mov	edi, ebx
	call	iswalnum
	cmp	ebx, 0x5f
	mov	ecx, 1
	je	.label_815
	test	eax, eax
	je	.label_872
	jmp	.label_815
.label_790:
	lea	rdx, [rbp + 1]
	mov	qword ptr [rsp + 0x98], rdx
	mov	rcx, qword ptr [rsp + 0x130]
	mov	rax, qword ptr [rsp + 0x148]
	cmp	rdx, rcx
	jl	.label_875
	cmp	rcx, rax
	jl	.label_887
.label_875:
	mov	rcx, qword ptr [rsp + 0x120]
	cmp	qword ptr [rsp + 0x98], rcx
	jl	.label_888
	cmp	rcx, rax
	jge	.label_888
.label_887:
	add	ebp, 2
	lea	rdi, [rsp + 0xf0]
	mov	esi, ebp
	call	extend_buffers
	mov	dword ptr [rsp + 0x254], eax
	test	eax, eax
	jne	.label_895
.label_888:
	test	byte ptr [r14 + 0x68], 0x20
	jne	.label_918
.label_862:
	mov	rax, qword ptr [rsp + 0x138]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x138], rcx
	mov	rcx, qword ptr [rsp + 0xf8]
	movzx	ebp, byte ptr [rcx + rax]
.label_915:
	mov	rax, qword ptr [r14 + 0x58]
	test	rax, rax
	jne	.label_909
	mov	qword ptr [rsp + 0x40], r15
	mov	r15, qword ptr [r14 + 0x60]
	test	r15, r15
	jne	.label_792
	mov	rdi, qword ptr [rsp + 0x188]
	mov	rsi, r14
	call	build_trtable
	test	al, al
	mov	r15, qword ptr [rsp + 0x40]
	jne	.label_915
	mov	dword ptr [rsp + 0x254], 0xc
	xor	ebx, ebx
	jmp	.label_860
.label_909:
	mov	rbx, qword ptr [rax + rbp*8]
.label_860:
	cmp	qword ptr [rsp + 0x1a8], 0
	je	.label_800
	lea	rdi, [rsp + 0x254]
	lea	rsi, [rsp + 0xf0]
	mov	rdx, rbx
	call	merge_state_with_log
	mov	rbx, rax
.label_800:
	test	rbx, rbx
	jne	.label_923
	cmp	dword ptr [rsp + 0x254], 0
	jne	.label_761
	mov	rax, qword ptr [rsp + 0x1a8]
	test	rax, rax
	setne	cl
	and	cl, byte ptr [rsp + 0x57]
	movzx	ecx, cl
	cmp	ecx, 1
	je	.label_926
	jmp	.label_750
.label_767:
	mov	rax, qword ptr [rsp + 0x1a8]
.label_926:
	mov	rdx, qword ptr [rsp + 0x138]
	mov	rcx, qword ptr [rsp + 0x1b0]
	nop	word ptr cs:[rax + rax]
.label_827:
	cmp	rdx, rcx
	jge	.label_750
	lea	rsi, [rdx + 1]
	mov	qword ptr [rsp + 0x138], rsi
	cmp	qword ptr [rax + rdx*8 + 8], 0
	mov	rdx, rsi
	je	.label_827
	xor	edx, edx
	lea	rdi, [rsp + 0x254]
	lea	rsi, [rsp + 0xf0]
	call	merge_state_with_log
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_881
	mov	eax, dword ptr [rsp + 0x254]
	test	eax, eax
	je	.label_767
.label_881:
	test	rbx, rbx
	je	.label_750
.label_923:
	mov	eax, dword ptr [rsp + 0x90]
	test	al, 1
	jne	.label_770
	mov	r14, qword ptr [rsp + 0xa8]
.label_829:
	mov	al, byte ptr [rbx + 0x68]
	test	al, 0x10
	jne	.label_774
	mov	qword ptr [rsp + 0xa8], r14
	mov	rbp, qword ptr [rsp + 0x138]
	jmp	.label_777
.label_774:
	mov	rbp, qword ptr [rsp + 0x138]
	test	al, al
	jns	.label_781
	lea	rdi, [rsp + 0xf0]
	mov	rsi, rbx
	mov	rdx, rbp
	call	check_halt_state_context
	test	rax, rax
	jne	.label_781
	mov	qword ptr [rsp + 0xa8], r14
.label_777:
	cmp	qword ptr [rsp + 0x158], rbp
	mov	r14, rbx
	jg	.label_790
	jmp	.label_750
.label_781:
	test	r12b, r12b
	mov	r15, rbp
	mov	eax, 1
	mov	ecx, 0
	jne	.label_899
	jmp	.label_797
.label_750:
	mov	rcx, qword ptr [rsp + 0x60]
	test	rcx, rcx
	je	.label_796
	mov	rax, qword ptr [rsp + 0xa8]
	add	qword ptr [rcx], rax
	mov	rbp, r15
	jmp	.label_797
.label_796:
	mov	rbp, r15
.label_797:
	mov	byte ptr [rsp + 0xbe], r12b
	cmp	rbp, -1
	mov	r12, qword ptr [rsp + 0xc8]
	mov	rbx, qword ptr [rsp + 0x78]
	mov	r14, qword ptr [rsp + 0x70]
	je	.label_803
	mov	ecx, 0xc
	cmp	rbp, -2
	je	.label_757
	cmp	qword ptr [rsp + 0x58], 1
	seta	al
	mov	qword ptr [rsp + 0x198], rbp
	mov	rcx, qword ptr [rsp + 0x80]
	test	byte ptr [rcx + 0x38], 0x10
	sete	bl
	and	bl, al
	je	.label_910
	mov	rax, qword ptr [rsp + 0x1a8]
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rsp + 0xf0]
	mov	rdx, rbp
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x1a0], rax
	mov	r12, qword ptr [rsp + 0xe8]
	jmp	.label_825
.label_910:
	mov	r12, qword ptr [rsp + 0xe8]
	cmp	qword ptr [r12 + 0x98], 0
	je	.label_828
	mov	rax, qword ptr [rsp + 0x1a8]
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rsp + 0xf0]
	mov	rdx, rbp
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x1a0], rax
	test	bl, 1
	je	.label_838
.label_825:
	test	byte ptr [r12 + 0xb0], 1
	jne	.label_840
.label_838:
	cmp	qword ptr [r12 + 0x98], 0
	je	.label_828
.label_840:
	mov	qword ptr [rsp + 0xe8], r12
	movabs	rax, 0x1ffffffffffffffe
	cmp	rbp, rax
	ja	.label_761
	mov	r14, qword ptr [rsp + 0x188]
	mov	rax, qword ptr [rsp + 0x1a0]
	mov	qword ptr [rsp + 0x98], rax
	lea	r12, [rbp*8 + 8]
	mov	rdi, r12
	call	malloc
	test	rax, rax
	mov	rbx, rax
	mov	r15d, 0
	je	.label_856
	cmp	qword ptr [r14 + 0x98], 0
	je	.label_859
	mov	qword ptr [rsp + 0x90], r14
	mov	rdi, r12
	call	malloc
	mov	r15, rax
	test	r15, r15
	je	.label_894
	xor	esi, esi
	mov	rdi, r15
	mov	rdx, r12
	call	memset
	mov	r12, rbx
	mov	qword ptr [rsp + 0xa8], r12
	mov	qword ptr [rsp + 0x200], r12
	mov	qword ptr [rsp + 0x208], r15
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x210], rax
	mov	qword ptr [rsp + 0x218], rbp
	lea	rax, [rsp + 0x220]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0xf0]
	lea	rsi, [rsp + 0x200]
	call	sift_states_backward
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x78]
	mov	r14, qword ptr [rsp + 0x70]
	jne	.label_882
.label_927:
	mov	rsi, qword ptr [r12]
	test	rsi, rsi
	jne	.label_804
	cmp	qword ptr [r15], 0
	mov	esi, 0
	jne	.label_804
	mov	r12, r15
	test	rbp, rbp
	jle	.label_892
	mov	rax, qword ptr [rsp + 0x1a8]
	dec	rbp
	nop	word ptr cs:[rax + rax]
.label_906:
	mov	rsi, qword ptr [rax + rbp*8]
	test	rsi, rsi
	je	.label_921
	test	byte ptr [rsi + 0x68], 0x10
	jne	.label_904
.label_921:
	lea	rcx, [rbp - 1]
	inc	rbp
	cmp	rbp, 2
	mov	rbp, rcx
	jge	.label_906
	jmp	.label_892
.label_904:
	lea	r15, [rsp + 0xf0]
	mov	rdi, r15
	mov	rdx, rbp
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x98], rax
	lea	rdx, [rbp*8 + 8]
	xor	esi, esi
	mov	rdi, r12
	call	memset
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	qword ptr [rsp + 0x200], rcx
	mov	qword ptr [rsp + 0x208], r12
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x210], rax
	mov	qword ptr [rsp + 0x218], rbp
	lea	rax, [rsp + 0x220]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rdi, r15
	mov	r15, r12
	mov	r12, rcx
	lea	rsi, [rsp + 0x200]
	call	sift_states_backward
	test	eax, eax
	je	.label_927
	mov	r12, r15
	jmp	.label_745
.label_859:
	mov	qword ptr [rsp + 0xa8], rbx
	mov	qword ptr [rsp + 0x200], rbx
	mov	qword ptr [rsp + 0x208], 0
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x210], rax
	mov	qword ptr [rsp + 0x218], rbp
	lea	rax, [rsp + 0x220]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0xf0]
	lea	rsi, [rsp + 0x200]
	call	sift_states_backward
	test	eax, eax
	mov	r12d, 0
	mov	rbx, qword ptr [rsp + 0x78]
	mov	r14, qword ptr [rsp + 0x70]
	jne	.label_745
	mov	rax, qword ptr [rsp + 0xa8]
	cmp	qword ptr [rax], 0
	mov	r12d, 0
	jne	.label_863
.label_892:
	mov	rdi, qword ptr [rsp + 0xa8]
	call	free
	mov	rdi, r12
	call	free
	mov	r12, qword ptr [rsp + 0xc8]
.label_803:
	lea	rdi, [rsp + 0xf0]
	call	match_ctx_clean
.label_879:
	mov	rbp, qword ptr [rsp + 0x1f8]
	add	rbp, qword ptr [rsp + 0xd8]
	mov	qword ptr [rsp + 0x1f8], rbp
	cmp	rbp, rbx
	mov	ecx, 1
	jl	.label_757
	mov	qword ptr [rsp + 0xc8], r12
	cmp	r14, rbp
	jge	.label_788
	jmp	.label_757
.label_783:
	test	cl, cl
	js	.label_793
	test	r12b, r12b
	mov	r15, r14
	mov	eax, 1
	jne	.label_794
	mov	rbp, r14
	jmp	.label_797
.label_779:
	mov	byte ptr [rsp + 0xbf], cl
	lea	rbp, [rbx + 8]
	xor	edx, edx
	lea	rdi, [rsp + 0xf0]
	mov	rsi, rbp
	call	check_subexp_matching_top
	mov	dword ptr [rsp + 0x254], eax
	test	eax, eax
	jne	.label_806
	test	byte ptr [rbx + 0x68], 0x40
	je	.label_809
	lea	rdi, [rsp + 0xf0]
	mov	rsi, rbp
	call	transit_state_bkref
	mov	dword ptr [rsp + 0x254], eax
	test	eax, eax
	jne	.label_814
.label_809:
	mov	dword ptr [rsp + 0x90], 0
	mov	cl, byte ptr [rsp + 0xbf]
	jmp	.label_772
.label_793:
	lea	rdi, [rsp + 0xf0]
	mov	rsi, rbx
	mov	rdx, r14
	call	check_halt_state_context
	cmp	rax, 1
	sbb	r15, r15
	test	rax, rax
	sete	cl
	setne	al
	movzx	eax, al
	or	cl, r12b
	je	.label_823
	or	r15, r14
	jmp	.label_794
.label_823:
	mov	rbp, r14
	jmp	.label_797
.label_804:
	mov	qword ptr [rsp + 0xa8], r12
	test	rbp, rbp
	js	.label_830
	xor	r12d, r12d
	jmp	.label_833
.label_808:
	mov	rax, qword ptr [rsp + 0xa8]
	mov	rsi, qword ptr [rax + r12*8 + 8]
	inc	r12
.label_833:
	mov	rdx, qword ptr [r15 + r12*8]
	test	rsi, rsi
	je	.label_837
	test	rdx, rdx
	je	.label_854
	add	rsi, 8
	add	rdx, 8
	lea	rbx, [rsp + 0x238]
	mov	rdi, rbx
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x254], eax
	test	eax, eax
	jne	.label_844
	lea	rdi, [rsp + 0x254]
	mov	rsi, qword ptr [rsp + 0x90]
	mov	rdx, rbx
	call	re_acquire_state
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	qword ptr [rcx + r12*8], rax
	mov	rdi, qword ptr [rsp + 0x248]
	call	free
	mov	eax, dword ptr [rsp + 0x254]
	test	eax, eax
	je	.label_854
	jmp	.label_844
.label_837:
	mov	rax, qword ptr [rsp + 0xa8]
	mov	qword ptr [rax + r12*8], rdx
.label_854:
	cmp	r12, rbp
	jl	.label_808
.label_830:
	xor	eax, eax
.label_844:
	mov	rdi, r15
	mov	ebx, eax
	call	free
	mov	eax, ebx
	test	eax, eax
	mov	r12d, 0
	mov	r14, qword ptr [rsp + 0x70]
	mov	rbx, qword ptr [rsp + 0x78]
	je	.label_863
	jmp	.label_745
.label_882:
	mov	qword ptr [rsp + 0xa8], r12
	mov	r12, r15
.label_745:
	mov	r15, rbx
	mov	rdi, qword ptr [rsp + 0xa8]
	mov	ebp, eax
	call	free
	mov	rdi, r12
	call	free
	test	ebp, ebp
	mov	eax, ebp
	mov	r12, qword ptr [rsp + 0xe8]
	je	.label_828
	mov	ecx, eax
	cmp	ecx, 1
	mov	r12, qword ptr [rsp + 0xc8]
	mov	rbx, r15
	je	.label_803
	jmp	.label_757
.label_806:
	movsxd	rbp, eax
	jmp	.label_797
.label_814:
	movsxd	rbp, eax
	jmp	.label_797
.label_788:
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	eax, 4
	ja	.label_880
	jmp	qword ptr [word ptr [+ (rax * 8) + label_884]]
.label_2377:
	cmp	rbp, rbx
	mov	rax, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0xd0]
	jl	.label_855
	nop	word ptr cs:[rax + rax]
.label_907:
	xor	eax, eax
	cmp	rbp, rcx
	jge	.label_897
	movzx	eax, byte ptr [rdx + rbp]
.label_897:
	test	rsi, rsi
	je	.label_900
	movzx	eax, byte ptr [rsi + rax]
.label_900:
	cmp	byte ptr [r13 + rax], 0
	jne	.label_902
	lea	rax, [rbp - 1]
	mov	qword ptr [rsp + 0x1f8], rax
	cmp	rbp, rbx
	mov	rbp, rax
	jg	.label_907
	jmp	.label_855
.label_880:
	mov	rax, qword ptr [rsp + 0x118]
	jmp	.label_816
	nop	word ptr cs:[rax + rax]
.label_752:
	add	rbp, qword ptr [rsp + 0xd8]
	mov	qword ptr [rsp + 0x1f8], rbp
	cmp	rbp, rbx
	mov	ecx, 1
	jl	.label_757
	cmp	rbp, r14
	jle	.label_816
	jmp	.label_757
.label_744:
	lea	rdi, [rsp + 0xf0]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x2a0]
	call	re_string_reconstruct
	mov	ecx, eax
	test	ecx, ecx
	jne	.label_757
	mov	rbp, qword ptr [rsp + 0x1f8]
	mov	rax, qword ptr [rsp + 0x118]
	mov	rcx, rbp
	sub	rcx, rax
	jmp	.label_889
	nop	word ptr cs:[rax + rax]
.label_816:
	mov	rcx, rbp
	sub	rcx, rax
	cmp	rcx, qword ptr [rsp + 0x128]
	jae	.label_744
.label_889:
	mov	rdx, qword ptr [rsp + 0xe0]
	cmp	rbp, rdx
	mov	edx, 0
	jge	.label_748
	mov	rdx, qword ptr [rsp + 0xf8]
	movzx	edx, byte ptr [rdx + rcx]
.label_748:
	cmp	byte ptr [r13 + rdx], 0
	je	.label_752
	jmp	.label_755
.label_2378:
	cmp	rbp, r14
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	rdx, qword ptr [rsp + 0xd0]
	jge	.label_758
	nop	word ptr cs:[rax + rax]
.label_764:
	movzx	eax, byte ptr [rcx + rbp]
	cmp	byte ptr [r13 + rax], 0
	jne	.label_758
	inc	rbp
	mov	qword ptr [rsp + 0x1f8], rbp
	cmp	rbp, r14
	jl	.label_764
	jmp	.label_758
.label_2379:
	cmp	rbp, r14
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	rdx, qword ptr [rsp + 0xd0]
	jge	.label_758
	nop	word ptr cs:[rax + rax]
.label_776:
	movzx	eax, byte ptr [rcx + rbp]
	movzx	eax, byte ptr [rdx + rax]
	cmp	byte ptr [r13 + rax], 0
	jne	.label_758
	inc	rbp
	mov	qword ptr [rsp + 0x1f8], rbp
	cmp	rbp, r14
	jl	.label_776
.label_758:
	mov	qword ptr [rsp + 0xd0], rdx
	mov	qword ptr [rsp + 0xc0], rcx
	cmp	rbp, r14
	jne	.label_755
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0xe0]
	cmp	r14, rcx
	mov	rcx, qword ptr [rsp + 0xc0]
	jge	.label_782
	movzx	eax, byte ptr [rcx + r14]
.label_782:
	mov	rcx, qword ptr [rsp + 0xd0]
	test	rcx, rcx
	je	.label_791
	movzx	eax, byte ptr [rcx + rax]
.label_791:
	mov	ecx, 1
	cmp	byte ptr [r13 + rax], 0
	mov	rbp, r14
	jne	.label_755
	jmp	.label_757
.label_902:
	mov	rax, rbp
.label_855:
	mov	ecx, 1
	cmp	rax, rbx
	mov	rbp, rax
	jl	.label_757
.label_755:
	lea	rdi, [rsp + 0xf0]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x2a0]
	call	re_string_reconstruct
	mov	ecx, eax
	test	ecx, ecx
	je	.label_805
	jmp	.label_757
.label_895:
	cmp	eax, 0xc
	jne	.label_807
.label_761:
	mov	ecx, 0xc
.label_757:
	mov	ebx, ecx
	mov	rdi, qword ptr [rsp + 0x1a8]
	call	free
	mov	rax, qword ptr [rsp + 0xe8]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_813
	lea	rdi, [rsp + 0xf0]
	call	match_ctx_clean
	mov	rdi, qword ptr [rsp + 0x1e8]
	call	free
	mov	rdi, qword ptr [rsp + 0x1c8]
	call	free
.label_813:
	mov	rdi, qword ptr [rsp + 0x100]
	call	free
	mov	rdi, qword ptr [rsp + 0x108]
	call	free
	cmp	byte ptr [rsp + 0x17b], 0
	je	.label_853
	mov	rdi, qword ptr [rsp + 0xf8]
	call	free
.label_853:
	mov	eax, ebx
.label_835:
	add	rsp, 0x258
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_850:
	cmp	qword ptr [r10 + 0x10], 0
	je	.label_834
	cmp	byte ptr [rdi + 0x38], 0
	js	.label_836
.label_834:
	xor	ecx, ecx
	test	rbp, rbp
	je	.label_914
	test	r8, r8
	mov	ebp, 0
	mov	eax, 1
	jne	.label_835
	jmp	.label_841
.label_771:
	cmp	dword ptr [rsp + 0x254], 0xc
	je	.label_761
	mov	edi, OFFSET FLAT:.str.25
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x435
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	call	__assert_fail
.label_836:
	mov	rcx, r8
	jmp	.label_841
.label_914:
	xor	ebp, ebp
	jmp	.label_841
.label_863:
	mov	rdi, qword ptr [rsp + 0x1a8]
	call	free
	mov	rax, qword ptr [rsp + 0xa8]
	mov	qword ptr [rsp + 0x1a8], rax
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x1a0], rax
	mov	qword ptr [rsp + 0x198], rbp
	mov	r12, qword ptr [rsp + 0xe8]
.label_828:
	mov	qword ptr [rsp + 0xe8], r12
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0x290]
	cmp	qword ptr [rsp + 0xa0], rax
	mov	r14, qword ptr [rsp + 0x298]
	je	.label_757
	cmp	qword ptr [rsp + 0x58], 2
	jb	.label_865
	mov	rsi, qword ptr [rsp + 0x290]
	lea	edx, [rsi + 7]
	mov	rdi, qword ptr [rsp + 0xa0]
	sub	edx, edi
	lea	rax, [rsi - 2]
	sub	rax, rdi
	mov	ecx, 1
	test	dl, 7
	je	.label_867
	lea	rdx, [r14 + 0x10]
	lea	esi, [rsi + 7]
	sub	esi, edi
	and	esi, 7
	xor	edi, edi
.label_873:
	mov	rcx, rdi
	mov	qword ptr [rdx + 8], -1
	mov	qword ptr [rdx], -1
	lea	rdi, [rcx + 1]
	add	rdx, 0x10
	cmp	rsi, rdi
	jne	.label_873
	add	rcx, 2
.label_867:
	cmp	rax, 7
	jb	.label_865
	mov	rax, qword ptr [rsp + 0x58]
	sub	rax, rcx
	shl	rcx, 4
	lea	rcx, [rcx + r14 + 0x70]
.label_891:
	mov	qword ptr [rcx - 0x68], -1
	mov	qword ptr [rcx - 0x70], -1
	mov	qword ptr [rcx - 0x58], -1
	mov	qword ptr [rcx - 0x60], -1
	mov	qword ptr [rcx - 0x48], -1
	mov	qword ptr [rcx - 0x50], -1
	mov	qword ptr [rcx - 0x38], -1
	mov	qword ptr [rcx - 0x40], -1
	mov	qword ptr [rcx - 0x28], -1
	mov	qword ptr [rcx - 0x30], -1
	mov	qword ptr [rcx - 0x18], -1
	mov	qword ptr [rcx - 0x20], -1
	mov	qword ptr [rcx - 8], -1
	mov	qword ptr [rcx - 0x10], -1
	mov	qword ptr [rcx + 8], -1
	mov	qword ptr [rcx], -1
	add	rcx, 0x80
	add	rax, -8
	jne	.label_891
.label_865:
	mov	qword ptr [r14], 0
	mov	rax, qword ptr [rsp + 0x198]
	mov	qword ptr [r14 + 8], rax
	cmp	qword ptr [rsp + 0x58], 2
	jb	.label_917
	mov	rax, qword ptr [rsp + 0x80]
	mov	al, byte ptr [rax + 0x38]
	and	al, 0x10
	jne	.label_917
	mov	rax, qword ptr [rsp + 0xe8]
	test	byte ptr [rax + 0xb0], 1
	jne	.label_920
	xor	eax, eax
	jmp	.label_924
.label_894:
	mov	rax, rbx
	mov	qword ptr [rsp + 0x48], rax
.label_856:
	mov	rdi, qword ptr [rsp + 0x48]
	call	free
	mov	rdi, r15
	call	free
	jmp	.label_761
.label_920:
	cmp	qword ptr [rax + 0x98], 0
	setg	al
.label_924:
	mov	rdi, qword ptr [rsp + 0x80]
	movzx	r8d, al
	lea	rsi, [rsp + 0xf0]
	mov	rdx, qword ptr [rsp + 0x58]
	mov	rcx, r14
	call	set_regs
	mov	ecx, eax
	test	ecx, ecx
	jne	.label_757
.label_917:
	mov	r10b, byte ptr [rsp + 0x17c]
	mov	r8, qword ptr [rsp + 0x108]
	lea	rdx, [r14 + 8]
	xor	ecx, ecx
	mov	r9, qword ptr [rsp + 0xa0]
	mov	rax, qword ptr [rsp + 0x290]
	lea	r11, [rsp + 0x128]
	jmp	.label_760
.label_780:
	mov	rbx, qword ptr [rsp + 0x120]
	cmp	rdi, rbx
	lea	rdi, [r8 + rdi*8]
	cmove	rdi, r11
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rdx - 8], rdi
	mov	rsi, rcx
	shl	rsi, 4
	lea	rbp, [r14 + rsi + 8]
	mov	rsi, qword ptr [rdx]
	cmp	rsi, rbx
	lea	rsi, [r8 + rsi*8]
	cmove	rsi, r11
	mov	rbx, qword ptr [rsi]
	mov	qword ptr [rdx], rbx
	jmp	.label_870
.label_760:
	mov	rdi, qword ptr [rdx - 8]
	cmp	rdi, -1
	je	.label_778
	test	r10b, r10b
	jne	.label_780
	mov	rbx, qword ptr [rdx]
	mov	rbp, rdx
.label_870:
	mov	rsi, qword ptr [rsp + 0x1f8]
	add	rdi, rsi
	mov	qword ptr [rdx - 8], rdi
	add	rbx, rsi
	mov	qword ptr [rbp], rbx
.label_778:
	inc	rcx
	add	rdx, 0x10
	dec	rax
	cmp	r9, rax
	jne	.label_760
	test	r9, r9
	mov	rdi, qword ptr [rsp + 0xe8]
	jle	.label_789
	lea	rcx, [r9 - 1]
	xor	eax, eax
	test	r9b, 3
	je	.label_839
	mov	rdx, qword ptr [rsp + 0x58]
	shl	rdx, 4
	add	rdx, r14
	mov	esi, r9d
	and	esi, 3
	xor	eax, eax
.label_798:
	inc	rax
	mov	qword ptr [rdx + 8], -1
	mov	qword ptr [rdx], -1
	add	rdx, 0x10
	cmp	rsi, rax
	jne	.label_798
.label_839:
	cmp	rcx, 3
	jb	.label_789
	mov	rcx, r9
	sub	rcx, rax
	mov	rdx, qword ptr [rsp + 0x58]
	shl	rdx, 4
	add	rdx, r14
	shl	rax, 4
	add	rax, rdx
	xor	edx, edx
.label_874:
	mov	qword ptr [rax + rdx + 8], -1
	mov	qword ptr [rax + rdx], -1
	mov	qword ptr [rax + rdx + 0x18], -1
	mov	qword ptr [rax + rdx + 0x10], -1
	mov	qword ptr [rax + rdx + 0x28], -1
	mov	qword ptr [rax + rdx + 0x20], -1
	mov	qword ptr [rax + rdx + 0x38], -1
	mov	qword ptr [rax + rdx + 0x30], -1
	add	rdx, 0x40
	add	rcx, -4
	jne	.label_874
.label_789:
	mov	rax, qword ptr [rdi + 0xe0]
	xor	ecx, ecx
	test	rax, rax
	je	.label_757
	cmp	qword ptr [rsp + 0x58], 2
	jb	.label_757
	sub	qword ptr [rsp + 0x68], r9
	lea	rdi, [r14 + 0x18]
	xor	edx, edx
.label_842:
	mov	rsi, qword ptr [rax + rdx*8]
	cmp	rdx, rsi
	je	.label_762
	shl	rsi, 4
	mov	rsi, qword ptr [rsi + r14 + 0x10]
	mov	qword ptr [rdi - 8], rsi
	mov	rsi, qword ptr [rsp + 0xe8]
	mov	rsi, qword ptr [rsi + 0xe0]
	mov	rsi, qword ptr [rsi + rdx*8]
	shl	rsi, 4
	mov	rsi, qword ptr [rsi + r14 + 0x18]
	mov	qword ptr [rdi], rsi
.label_762:
	inc	rdx
	add	rdi, 0x10
	xor	ecx, ecx
	cmp	qword ptr [rsp + 0x68], rdx
	jne	.label_842
	jmp	.label_757
.label_807:
	mov	edi, OFFSET FLAT:.str.25
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x46c
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ae40

	.globl rpl_re_match
	.type rpl_re_match, @function
rpl_re_match:
	sub	rsp, 0x18
	mov	qword ptr [rsp], r8
	mov	dword ptr [rsp + 8], 1
	xor	r8d, r8d
	mov	r9, rdx
	call	re_search_stub
	add	rsp, 0x18
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ae60

	.globl re_search_stub
	.type re_search_stub, @function
re_search_stub:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rdi
	test	rcx, rcx
	mov	r14, -1
	js	.label_928
	mov	qword ptr [rsp + 0x30], rsi
	mov	qword ptr [rsp + 0x38], r9
	cmp	rcx, rdx
	jg	.label_928
	mov	r14, qword ptr [rsp + 0x80]
	xor	r12d, r12d
	add	r8, rcx
	cmovns	r12, r8
	cmp	r8, rdx
	cmovg	r12, rdx
	movzx	r13d, byte ptr [rbx + 0x38]
	cmp	r12, rcx
	mov	al, r13b
	jle	.label_934
	test	r13b, 8
	mov	al, r13b
	jne	.label_934
	mov	rax, qword ptr [rbx + 0x20]
	test	rax, rax
	mov	al, r13b
	je	.label_934
	mov	rdi, rbx
	mov	rbp, rcx
	mov	r15, rdx
	call	rpl_re_compile_fastmap
	mov	rdx, r15
	mov	rcx, rbp
	mov	al, byte ptr [rbx + 0x38]
.label_934:
	xor	esi, esi
	test	r14, r14
	mov	ebp, 1
	je	.label_951
	mov	qword ptr [rsp + 0x40], rdx
	mov	r15, rcx
	mov	cl, al
	and	cl, 0x10
	jne	.label_929
	and	al, 6
	movzx	eax, al
	cmp	eax, 4
	jne	.label_931
	mov	rax, qword ptr [r14]
	mov	rbp, qword ptr [rbx + 0x30]
	cmp	rax, rbp
	ja	.label_932
	xor	ecx, ecx
	test	rax, rax
	cmovle	r14, rcx
	mov	ebp, 1
	cmovg	rbp, rax
	jmp	.label_935
.label_951:
	mov	qword ptr [rsp + 0x40], rdx
	mov	r15, rcx
	jmp	.label_929
.label_931:
	mov	rbp, qword ptr [rbx + 0x30]
.label_932:
	inc	rbp
.label_935:
	mov	rsi, r14
.label_929:
	mov	qword ptr [rsp + 0x28], rsi
	mov	rdi, rbp
	shl	rdi, 4
	call	malloc
	mov	rdi, rbx
	mov	r14, -2
	test	rax, rax
	mov	rdx, qword ptr [rsp + 0x40]
	je	.label_928
	mov	cl, r13b
	shr	cl, 5
	and	cl, 1
	and	r13d, 0x40
	movzx	ecx, cl
	shr	r13d, 5
	or	r13d, ecx
	mov	dword ptr [rsp + 0x10], r13d
	mov	qword ptr [rsp + 8], rax
	mov	r13, rax
	mov	qword ptr [rsp], rbp
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rcx, r15
	mov	r8, r12
	mov	r14, rdi
	mov	r9, qword ptr [rsp + 0x38]
	call	re_search_internal
	test	eax, eax
	je	.label_941
	cmp	eax, 1
	sete	al
	movzx	r14d, al
	or	r14, 0xfffffffffffffffe
	mov	rdi, r13
	jmp	.label_942
.label_941:
	mov	qword ptr [rsp + 0x40], r15
	mov	r12, qword ptr [rsp + 0x28]
	test	r12, r12
	mov	rdi, r13
	je	.label_946
	mov	r8, r14
	mov	al, byte ptr [r8 + 0x38]
	shr	al, 1
	and	al, 3
	movzx	eax, al
	cmp	eax, 2
	je	.label_949
	lea	rbx, [rbp + 1]
	cmp	eax, 1
	je	.label_953
	mov	r13, r12
	mov	qword ptr [rsp + 0x38], rdi
	mov	r15, r8
	test	eax, eax
	jne	.label_955
	lea	r12, [rbx*8]
	mov	rdi, r12
	call	malloc
	mov	r14, rax
	mov	rax, r13
	mov	qword ptr [rax + 8], r14
	xor	r13d, r13d
	test	r14, r14
	je	.label_936
	mov	rdi, r12
	mov	r12, rax
	call	malloc
	mov	qword ptr [r12 + 0x10], rax
	test	rax, rax
	je	.label_952
	mov	qword ptr [r12], rbx
	mov	r14d, 1
	mov	r8, r15
	mov	rdi, qword ptr [rsp + 0x38]
	jmp	.label_947
.label_949:
	mov	rbx, qword ptr [r12]
	mov	r14d, 2
	cmp	rbx, rbp
	jae	.label_947
	mov	edi, OFFSET FLAT:.str.24
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1fb
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
.label_953:
	mov	r15, rdi
	mov	rax, qword ptr [r12]
	mov	r14d, 1
	cmp	rbx, rax
	ja	.label_930
	mov	rbx, rax
	mov	rdi, r15
.label_947:
	test	rbp, rbp
	jle	.label_939
	mov	rdx, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r12 + 0x10]
	xor	esi, esi
	test	bpl, 1
	je	.label_943
	mov	rax, qword ptr [rdi]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rdi + 8]
	mov	qword ptr [rcx], rax
	mov	esi, 1
.label_943:
	cmp	rbp, 1
	je	.label_950
	mov	rax, rbp
	sub	rax, rsi
	lea	rcx, [rcx + rsi*8 + 8]
	lea	rdx, [rdx + rsi*8 + 8]
	shl	rsi, 4
	lea	rsi, [rsi + rdi + 0x18]
	nop	
.label_944:
	mov	rbx, qword ptr [rsi - 0x18]
	mov	qword ptr [rdx - 8], rbx
	mov	rbx, qword ptr [rsi - 0x10]
	mov	qword ptr [rcx - 8], rbx
	mov	rbx, qword ptr [rsi - 8]
	mov	qword ptr [rdx], rbx
	mov	rbx, qword ptr [rsi]
	mov	qword ptr [rcx], rbx
	add	rcx, 0x10
	add	rsi, 0x20
	add	rdx, 0x10
	add	rax, -2
	jne	.label_944
.label_950:
	mov	rbx, qword ptr [r12]
	jmp	.label_938
.label_939:
	xor	ebp, ebp
.label_938:
	cmp	rbp, rbx
	jae	.label_940
	mov	rax, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r12 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_945:
	mov	qword ptr [rcx + rbp*8], -1
	mov	qword ptr [rax + rbp*8], -1
	inc	rbp
	cmp	rbp, qword ptr [r12]
	jb	.label_945
.label_940:
	mov	r13d, r14d
.label_937:
	mov	al, byte ptr [r8 + 0x38]
	add	r13b, r13b
	and	al, 0xf9
	mov	cl, r13b
	and	cl, 6
	or	cl, al
	and	r13b, 6
	mov	byte ptr [r8 + 0x38], cl
	mov	r14, -2
	je	.label_942
.label_946:
	mov	al, byte ptr [rsp + 0x88]
	mov	r14, qword ptr [rdi]
	test	al, al
	je	.label_942
	mov	rax, qword ptr [rsp + 0x40]
	cmp	r14, rax
	jne	.label_933
	mov	r14, qword ptr [rdi + 8]
	sub	r14, rax
.label_942:
	call	free
.label_928:
	mov	rax, r14
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_930:
	mov	qword ptr [rsp + 0x38], r8
	mov	rdi, qword ptr [r12 + 8]
	lea	rsi, [rbx*8]
	mov	qword ptr [rsp + 0x30], rsi
	call	realloc
	xor	r13d, r13d
	test	rax, rax
	je	.label_948
	mov	qword ptr [rsp + 0x20], rax
	mov	rdi, qword ptr [r12 + 0x10]
	mov	rsi, qword ptr [rsp + 0x30]
	call	realloc
	test	rax, rax
	je	.label_954
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [r12 + 8], rcx
	mov	qword ptr [r12 + 0x10], rax
	mov	qword ptr [r12], rbx
	mov	r8, qword ptr [rsp + 0x38]
	mov	rdi, r15
	jmp	.label_947
.label_952:
	mov	rdi, r14
	call	free
.label_936:
	mov	r8, r15
	mov	rdi, qword ptr [rsp + 0x38]
	jmp	.label_937
.label_954:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
.label_948:
	mov	r8, qword ptr [rsp + 0x38]
	mov	rdi, r15
	jmp	.label_937
.label_955:
	mov	edi, OFFSET FLAT:.str.23_0
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1f9
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
.label_933:
	mov	edi, OFFSET FLAT:.str.21
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1be
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_search_stub
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b280
	.globl rpl_re_search
	.type rpl_re_search, @function
rpl_re_search:

	sub	rsp, 0x18
	mov	qword ptr [rsp], r9
	mov	dword ptr [rsp + 8], 0
	mov	r9, rdx
	call	re_search_stub
	add	rsp, 0x18
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b2a0
	.globl rpl_re_match_2
	.type rpl_re_match_2, @function
rpl_re_match_2:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, qword ptr [rsp + 0x68]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_956
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_959
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_956
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_957
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [rsp + 0x20], r9
	xor	r12d, r12d
	test	r14, r14
	jle	.label_961
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], rdx
	call	malloc
	mov	r12, rax
	test	r12, r12
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_956
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	mov	r13, rax
	call	memcpy
	mov	rdi, r12
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp + 0x68]
	mov	r9, r13
	mov	r13, r12
	mov	rdx, qword ptr [rsp + 0x10]
	jmp	.label_957
.label_959:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_958
.label_956:
	mov	rax, -2
	jmp	.label_960
.label_958:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_957
.label_961:
	mov	r13, r15
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x18]
.label_957:
	mov	rax, qword ptr [rsp + 0x60]
	mov	qword ptr [rsp], rax
	mov	dword ptr [rsp + 8], 1
	xor	r8d, r8d
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	call	re_search_stub
	mov	rbx, rax
	mov	rdi, r12
	call	free
	mov	rax, rbx
.label_960:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b3d0
	.globl rpl_re_search_2
	.type rpl_re_search_2, @function
rpl_re_search_2:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_964
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_967
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_964
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_963
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [rsp + 0x20], r9
	xor	r12d, r12d
	test	r14, r14
	jle	.label_965
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], rdx
	call	malloc
	mov	r12, rax
	test	r12, r12
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_964
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	mov	r13, rax
	call	memcpy
	mov	rdi, r12
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp + 0x70]
	mov	r9, r13
	mov	r13, r12
	mov	rdx, qword ptr [rsp + 0x10]
	jmp	.label_963
.label_967:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_966
.label_964:
	mov	rax, -2
	jmp	.label_962
.label_966:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_963
.label_965:
	mov	r13, r15
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x18]
.label_963:
	mov	rax, qword ptr [rsp + 0x68]
	mov	r8, qword ptr [rsp + 0x60]
	mov	qword ptr [rsp], rax
	mov	dword ptr [rsp + 8], 0
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	call	re_search_stub
	mov	rbx, rax
	mov	rdi, r12
	call	free
	mov	rax, rbx
.label_962:
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
	#Procedure 0x40b510
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	mov	al, byte ptr [rdi + 0x38]
	and	al, 0xf9
	mov	r9b, al
	or	r9b, 2
	test	rdx, rdx
	je	.label_968
	mov	al, r9b
.label_968:
	cmove	r8, rdx
	cmove	rcx, rdx
	mov	byte ptr [rdi + 0x38], al
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 0x10], r8
	mov	qword ptr [rsi + 8], rcx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b540

	.globl free_state
	.type free_state, @function
free_state:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x30]
	call	free
	mov	rdi, qword ptr [rbx + 0x48]
	call	free
	mov	rax, qword ptr [rbx + 0x50]
	lea	rcx, [rbx + 8]
	cmp	rax, rcx
	je	.label_969
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x50]
	call	free
.label_969:
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, qword ptr [rbx + 0x60]
	call	free
	mov	rdi, qword ptr [rbx + 0x58]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b5a0

	.globl re_string_realloc_buffers
	.type re_string_realloc_buffers, @function
re_string_realloc_buffers:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_970
	mov	rax, r14
	shr	rax, 0x3d
	mov	ebp, 0xc
	jne	.label_971
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [r14*4]
	call	realloc
	test	rax, rax
	je	.label_971
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_970
	lea	rsi, [r14*8]
	call	realloc
	test	rax, rax
	je	.label_971
	mov	qword ptr [rbx + 0x18], rax
.label_970:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_972
	mov	rdi, qword ptr [rbx + 8]
	mov	rsi, r14
	call	realloc
	mov	ebp, 0xc
	test	rax, rax
	je	.label_971
	mov	qword ptr [rbx + 8], rax
.label_972:
	mov	qword ptr [rbx + 0x40], r14
	xor	ebp, ebp
.label_971:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b630

	.globl build_wcs_upper_buffer
	.type build_wcs_upper_buffer, @function
build_wcs_upper_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	r12, rdi
	mov	r15, qword ptr [r12 + 0x30]
	mov	r13, qword ptr [r12 + 0x40]
	mov	rax, qword ptr [r12 + 0x58]
	cmp	r13, rax
	cmovg	r13, rax
	cmp	byte ptr [r12 + 0x8a], 0
	jne	.label_1000
	cmp	qword ptr [r12 + 0x78], 0
	jne	.label_1000
	cmp	byte ptr [r12 + 0x8c], 0
	je	.label_1001
.label_1000:
	mov	rbx, qword ptr [r12 + 0x38]
	jmp	.label_976
.label_1001:
	cmp	r13, r15
	jle	.label_1005
	lea	rax, [r12 + 0x78]
	mov	qword ptr [rsp + 0x10], rax
	lea	r14, [r12 + 0x20]
	jmp	.label_991
.label_1012:
	lea	rax, [rbp + 1]
	cmp	rax, 2
	jb	.label_1013
	cmp	rbp, -2
	jne	.label_1015
	mov	rax, qword ptr [r12 + 0x40]
	cmp	rax, qword ptr [r12 + 0x58]
	jl	.label_1015
.label_1013:
	mov	rax, qword ptr [r12 + 0x28]
	add	rax, r15
	mov	rcx, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdx + r15], al
	mov	rcx, qword ptr [r12 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	rbp, -1
	je	.label_1019
.label_1030:
	mov	rax, r15
	jmp	.label_980
.label_1019:
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [r14], rax
	jmp	.label_1030
	nop	word ptr [rax + rax]
.label_991:
	mov	qword ptr [rsp + 0x20], r13
	mov	rbp, qword ptr [r12]
	mov	rbx, qword ptr [r12 + 0x28]
	lea	rax, [rbx + r15]
	movzx	r13d, byte ptr [rbp + rax]
	test	r13b, r13b
	js	.label_973
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_973
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	al, byte ptr [rax + r13*4]
	mov	rcx, qword ptr [r12 + 8]
	mov	byte ptr [rcx + r15], al
	mov	rax, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r12 + 0x10]
	movzx	eax, byte ptr [rax + r15]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	mov	rax, r15
	mov	r13, qword ptr [rsp + 0x20]
	jmp	.label_980
	nop	word ptr cs:[rax + rax]
.label_973:
	mov	r13, qword ptr [rsp + 0x20]
	mov	rdx, r13
	sub	rdx, r15
	mov	rax, qword ptr [r14]
	mov	qword ptr [rsp + 0x70], rax
	add	rbp, rbx
	add	rbp, r15
	lea	rdi, [rsp + 0x2c]
	mov	rsi, rbp
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	rbp, rax
	lea	rax, [rbp - 1]
	cmp	rax, -4
	ja	.label_1012
	mov	edi, dword ptr [rsp + 0x2c]
	call	towupper
	mov	ebx, eax
	cmp	ebx, dword ptr [rsp + 0x2c]
	jne	.label_1017
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	mov	rsi, qword ptr [r12]
	add	rsi, qword ptr [r12 + 0x28]
	add	rsi, r15
	mov	rdx, rbp
	call	memcpy
	jmp	.label_1024
.label_1017:
	mov	esi, ebx
	mov	dword ptr [rsp + 0x18], esi
	mov	rbx, rbp
	lea	rbp, [rsp + 0x30]
	mov	rdi, rbp
	lea	rdx, [rsp + 0x70]
	call	wcrtomb
	cmp	rbx, rax
	jne	.label_1018
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	mov	rsi, rbp
	mov	rdx, rbx
	call	memcpy
	mov	rbp, rbx
	mov	ebx, dword ptr [rsp + 0x18]
.label_1024:
	mov	rax, qword ptr [r12 + 0x10]
	mov	dword ptr [rax + r15*4], ebx
	lea	rbx, [rbp + r15]
	lea	rax, [r15 + 1]
	cmp	rax, rbx
	jge	.label_980
	mov	rax, qword ptr [r12 + 0x10]
	lea	rdi, [rax + r15*4 + 4]
	lea	rdx, [rbp*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rax, rbx
.label_980:
	cmp	r13, rax
	mov	r15, rax
	jg	.label_991
	jmp	.label_996
.label_1018:
	mov	rbx, r15
	mov	rcx, qword ptr [rsp + 0x10]
	jmp	.label_997
.label_1015:
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [r14], rax
.label_1005:
	mov	rax, r15
.label_996:
	mov	qword ptr [r12 + 0x30], rax
	mov	qword ptr [r12 + 0x38], rax
	jmp	.label_1002
.label_976:
	cmp	r15, r13
	jge	.label_1003
	lea	r14, [r12 + 0x20]
	lea	rcx, [r12 + 0x78]
.label_997:
	mov	rdx, r13
	sub	rdx, r15
	mov	rax, qword ptr [r14]
	mov	qword ptr [rsp + 0x70], rax
	mov	rax, qword ptr [rcx]
	test	rax, rax
	jne	.label_1010
	mov	rbp, qword ptr [r12]
	add	rbp, qword ptr [r12 + 0x28]
	add	rbp, rbx
.label_985:
	lea	rdi, [rsp + 0x28]
	mov	rsi, rbp
	mov	rcx, r14
	mov	qword ptr [rsp + 0x18], r14
	call	rpl_mbrtowc
	mov	r14, rax
	lea	rax, [r14 - 1]
	cmp	rax, -4
	ja	.label_1022
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x20], r13
	mov	edi, dword ptr [rsp + 0x28]
	call	towupper
	mov	r13d, eax
	cmp	r13d, dword ptr [rsp + 0x28]
	je	.label_1029
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 0x70]
	mov	esi, r13d
	call	wcrtomb
	mov	r8, rax
	mov	rcx, r8
	sub	rcx, r14
	jne	.label_978
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	jmp	.label_983
.label_1010:
	lea	rbp, [rsp + 0x30]
	movsxd	rcx, dword ptr [r12 + 0x90]
	test	rcx, rcx
	jle	.label_985
	mov	r8, rbx
	xor	esi, esi
	nop	dword ptr [rax]
.label_998:
	cmp	rsi, rdx
	jge	.label_993
	mov	rdi, qword ptr [r12]
	add	rdi, qword ptr [r12 + 0x28]
	add	rdi, r8
	movzx	edi, byte ptr [rsi + rdi]
	mov	bl, byte ptr [rax + rdi]
	mov	byte ptr [rsp + rsi + 0x30], bl
	inc	rsi
	cmp	rsi, rcx
	jl	.label_998
	mov	rbx, r8
	jmp	.label_985
.label_1022:
	lea	rax, [r14 + 1]
	cmp	rax, 2
	jb	.label_1006
	cmp	r14, -2
	jne	.label_1009
	mov	rax, qword ptr [r12 + 0x40]
	cmp	rax, qword ptr [r12 + 0x58]
	jl	.label_1009
.label_1006:
	mov	rax, qword ptr [r12 + 0x28]
	add	rax, rbx
	mov	rdx, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 0x78]
	mov	al, byte ptr [rdx + rax]
	movzx	edx, al
	test	rcx, rcx
	jne	.label_1014
.label_982:
	movzx	eax, al
	mov	rcx, qword ptr [r12 + 8]
	mov	byte ptr [rcx + r15], al
	cmp	byte ptr [r12 + 0x8c], 0
	jne	.label_1020
.label_984:
	inc	rbx
	mov	rcx, qword ptr [r12 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	r14, -1
	je	.label_1025
.label_986:
	mov	rbp, r15
	jmp	.label_976
.label_978:
	cmp	r8, -1
	je	.label_1029
	lea	rbp, [r8 + r15]
	mov	rdi, qword ptr [r12 + 0x40]
	cmp	rbp, rdi
	jbe	.label_975
.label_1009:
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [rcx], rax
.label_1003:
	mov	qword ptr [r12 + 0x30], r15
	mov	qword ptr [r12 + 0x38], rbx
.label_1002:
	xor	eax, eax
.label_990:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1029:
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	mov	rsi, rbp
.label_983:
	mov	rdx, r14
	call	memcpy
	cmp	byte ptr [r12 + 0x8c], 0
	je	.label_992
	mov	rax, qword ptr [r12 + 0x18]
	xor	esi, esi
	cmp	r14, 4
	jb	.label_999
	xor	esi, esi
	mov	rcx, r14
	and	rcx, 0xfffffffffffffffc
	je	.label_999
	movq	xmm0, rbx
	pshufd	xmm0, xmm0, 0x44
	lea	rdi, [r14 - 4]
	mov	rsi, rdi
	shr	rsi, 2
	xor	edx, edx
	bt	rdi, 2
	jb	.label_1004
	mov	edx, 1
	movq	xmm1, rdx
	pslldq	xmm1, 8
	paddq	xmm1, xmm0
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_619]]
	paddq	xmm2, xmm0
	movdqu	xmmword ptr [rax + r15*8], xmm1
	movdqu	xmmword ptr [rax + r15*8 + 0x10], xmm2
	mov	edx, 4
.label_1004:
	test	rsi, rsi
	je	.label_1023
	lea	rsi, [rax + r15*8 + 0x30]
	mov	edi, 1
	movq	xmm1, rdi
	pslldq	xmm1, 8
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_619]]
	nop	word ptr cs:[rax + rax]
.label_1026:
	movq	xmm3, rdx
	pshufd	xmm3, xmm3, 0x44
	paddq	xmm3, xmm0
	movdqa	xmm4, xmm3
	paddq	xmm4, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rsi + rdx*8 - 0x30], xmm4
	movdqu	xmmword ptr [rsi + rdx*8 - 0x20], xmm3
	lea	rdi, [rdx + 4]
	movq	xmm3, rdi
	pshufd	xmm3, xmm3, 0x44
	paddq	xmm3, xmm0
	movdqa	xmm4, xmm3
	paddq	xmm4, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rsi + rdx*8 - 0x10], xmm4
	movdqu	xmmword ptr [rsi + rdx*8], xmm3
	add	rdx, 8
	cmp	rdx, rcx
	jne	.label_1026
.label_1023:
	cmp	r14, rcx
	mov	rsi, rcx
	je	.label_992
.label_999:
	mov	rcx, r14
	sub	rcx, rsi
	lea	rdx, [rsi + rbx]
	add	rsi, r15
	lea	rax, [rax + rsi*8]
	nop	word ptr cs:[rax + rax]
.label_974:
	mov	qword ptr [rax], rdx
	inc	rdx
	add	rax, 8
	dec	rcx
	jne	.label_974
.label_992:
	add	rbx, r14
	mov	rax, qword ptr [r12 + 0x10]
	mov	dword ptr [rax + r15*4], r13d
	lea	rbp, [r14 + r15]
	inc	r15
	cmp	r15, rbp
	jge	.label_1011
	mov	rax, qword ptr [r12 + 0x10]
	lea	rdi, [rax + r15*4]
	lea	rdx, [r14*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	r13, qword ptr [rsp + 0x20]
	mov	r15, rbp
	jmp	.label_976
.label_1011:
	mov	rbp, r15
	mov	r13, qword ptr [rsp + 0x20]
	jmp	.label_976
.label_993:
	mov	rbx, r8
	jmp	.label_985
.label_975:
	mov	rax, qword ptr [r12 + 0x18]
	test	rax, rax
	jne	.label_1027
	shl	rdi, 3
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 0x20], r8
	call	malloc
	mov	r8, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [r12 + 0x18], rax
	test	rax, rax
	je	.label_977
.label_1027:
	mov	qword ptr [rsp + 8], rcx
	cmp	byte ptr [r12 + 0x8c], 0
	jne	.label_981
	test	r15, r15
	je	.label_979
	xor	edx, edx
	cmp	r15, 4
	jb	.label_988
	xor	edx, edx
	mov	rcx, r15
	and	rcx, 0xfffffffffffffffc
	je	.label_988
	lea	rdi, [r15 - 4]
	mov	rsi, rdi
	shr	rsi, 2
	xor	edx, edx
	bt	rdi, 2
	jb	.label_994
	mov	edx, 1
	movq	xmm0, rdx
	pslldq	xmm0, 8
	movdqu	xmmword ptr [rax], xmm0
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_619]]
	movdqu	xmmword ptr [rax + 0x10], xmm0
	mov	edx, 4
.label_994:
	test	rsi, rsi
	je	.label_989
	mov	esi, 1
	movq	xmm0, rsi
	pslldq	xmm0, 8
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_619]]
.label_1016:
	movq	xmm2, rdx
	pshufd	xmm2, xmm2, 0x44
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	paddq	xmm2, xmm1
	movdqu	xmmword ptr [rax + rdx*8], xmm3
	movdqu	xmmword ptr [rax + rdx*8 + 0x10], xmm2
	lea	rsi, [rdx + 4]
	movq	xmm2, rsi
	pshufd	xmm2, xmm2, 0x44
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	paddq	xmm2, xmm1
	movdqu	xmmword ptr [rax + rdx*8 + 0x20], xmm3
	movdqu	xmmword ptr [rax + rdx*8 + 0x30], xmm2
	add	rdx, 8
	cmp	rdx, rcx
	jne	.label_1016
.label_989:
	cmp	r15, rcx
	mov	rdx, rcx
	je	.label_979
.label_988:
	mov	qword ptr [rax + rdx*8], rdx
	inc	rdx
	cmp	r15, rdx
	jne	.label_988
.label_979:
	mov	byte ptr [r12 + 0x8c], 1
.label_981:
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	mov	rdx, r8
	mov	qword ptr [rsp + 0x20], r8
	call	memcpy
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [r12 + 0x10]
	mov	dword ptr [rax + r15*4], r13d
	mov	rax, qword ptr [r12 + 0x18]
	mov	qword ptr [rax + r15*8], rbx
	cmp	rdi, 2
	mov	r11, qword ptr [rsp + 0x10]
	jb	.label_987
	mov	r9, qword ptr [r12 + 0x10]
	mov	r8, qword ptr [r12 + 0x18]
	lea	r10, [rdi - 1]
	mov	eax, 1
	cmp	r10, 4
	jb	.label_995
	mov	rcx, r10
	and	rcx, 0xfffffffffffffffc
	mov	r13, r10
	and	r13, 0xfffffffffffffffc
	mov	eax, 1
	je	.label_995
	mov	rax, rcx
	or	rax, 1
	movq	xmm0, r14
	pshufd	xmm3, xmm0, 0x44
	movq	xmm1, r11
	mov	rdi, r11
	pshufd	xmm11, xmm1, 0x44
	movq	xmm2, rbx
	mov	r11, rbx
	pshufd	xmm12, xmm2, 0x44
	lea	rcx, [r8 + r15*8 + 0x18]
	lea	rdx, [r9 + r15*4 + 0xc]
	xor	esi, esi
	mov	ebx, 1
	movq	xmm10, rbx
	pslldq	xmm10, 8
	movdqa	xmm8,  xmmword ptr [word ptr [rip + label_619]]
	movdqa	xmm9,  xmmword ptr [word ptr [rip + label_1007]]
	pxor	xmm3, xmm9
	pshufd	xmm6,  xmmword ptr [word ptr [rip + label_1008]],  0xe8
.label_1031:
	lea	rbx, [rsi + 1]
	movq	xmm4, rbx
	pshufd	xmm7, xmm4, 0x44
	movdqa	xmm5, xmm7
	paddq	xmm5, xmm10
	paddq	xmm7, xmm8
	movdqa	xmm4, xmm5
	pxor	xmm4, xmm9
	movdqa	xmm0, xmm3
	pcmpgtd	xmm0, xmm4
	pshufd	xmm1, xmm0, 0xa0
	pcmpeqd	xmm4, xmm3
	pshufd	xmm4, xmm4, 0xf5
	pand	xmm4, xmm1
	pshufd	xmm0, xmm0, 0xf5
	por	xmm0, xmm4
	movdqa	xmm1, xmm7
	pxor	xmm1, xmm9
	movdqa	xmm4, xmm3
	pcmpgtd	xmm4, xmm1
	pshufd	xmm2, xmm4, 0xa0
	pcmpeqd	xmm1, xmm3
	pshufd	xmm1, xmm1, 0xf5
	pand	xmm1, xmm2
	pshufd	xmm2, xmm4, 0xf5
	por	xmm2, xmm1
	pand	xmm5, xmm0
	pandn	xmm0, xmm11
	por	xmm0, xmm5
	pand	xmm7, xmm2
	pandn	xmm2, xmm11
	por	xmm2, xmm7
	paddq	xmm0, xmm12
	paddq	xmm2, xmm12
	movdqu	xmmword ptr [rcx + rsi*8 - 0x10], xmm0
	movdqu	xmmword ptr [rcx + rsi*8], xmm2
	movq	qword ptr [rdx + rsi*4 - 8], xmm6
	movq	qword ptr [rdx + rsi*4], xmm6
	add	rsi, 4
	cmp	r13, rsi
	jne	.label_1031
	cmp	r10, r13
	mov	rbx, r11
	mov	r11, rdi
	mov	rdi, qword ptr [rsp + 0x20]
	je	.label_987
.label_995:
	lea	rcx, [r9 + r15*4]
	lea	rdx, [r8 + r15*8]
.label_1021:
	cmp	rax, r14
	mov	rsi, r11
	cmovb	rsi, rax
	add	rsi, rbx
	mov	qword ptr [rdx + rax*8], rsi
	mov	dword ptr [rcx + rax*4], 0xffffffff
	inc	rax
	cmp	rdi, rax
	jne	.label_1021
.label_987:
	mov	rax, qword ptr [r12 + 0x58]
	mov	rcx, qword ptr [rsp + 8]
	add	rax, rcx
	mov	qword ptr [r12 + 0x58], rax
	cmp	qword ptr [r12 + 0x60], rbx
	jle	.label_1028
	add	qword ptr [r12 + 0x68], rcx
.label_1028:
	mov	r13, qword ptr [r12 + 0x40]
	cmp	r13, rax
	cmovg	r13, rax
	add	rbx, r14
	mov	r15, rbp
	jmp	.label_976
.label_1014:
	mov	al, byte ptr [rcx + rdx]
	jmp	.label_982
.label_1020:
	mov	rcx, qword ptr [r12 + 0x18]
	mov	qword ptr [rcx + r15*8], rbx
	jmp	.label_984
.label_1025:
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [rcx], rax
	jmp	.label_986
.label_977:
	mov	eax, 0xc
	jmp	.label_990
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40bf50

	.globl build_wcs_buffer
	.type build_wcs_buffer, @function
build_wcs_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	rbx, rdi
	mov	r13, qword ptr [rbx + 0x30]
	mov	r12, qword ptr [rbx + 0x40]
	mov	rax, qword ptr [rbx + 0x58]
	cmp	r12, rax
	cmovg	r12, rax
	cmp	r12, r13
	jle	.label_1037
	lea	r14, [rbx + 0x20]
	lea	r15, [rsp + 0xc]
	jmp	.label_1042
	nop	dword ptr [rax + rax]
.label_1034:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r13
	mov	rcx, qword ptr [rbx]
	movzx	ecx, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], ecx
	mov	rax, qword ptr [rbx + 0x78]
	test	rax, rax
	jne	.label_1036
.label_1038:
	mov	qword ptr [r14], rbp
	mov	eax, 1
	jmp	.label_1041
.label_1043:
	mov	ecx, dword ptr [rsp + 0xc]
	nop	dword ptr [rax]
.label_1041:
	mov	rdx, qword ptr [rbx + 0x10]
	mov	dword ptr [rdx + r13*4], ecx
	lea	rbp, [rax + r13]
	lea	rcx, [r13 + 1]
	cmp	rcx, rbp
	jge	.label_1033
	mov	rcx, qword ptr [rbx + 0x10]
	lea	rdi, [rcx + r13*4 + 4]
	lea	rdx, [rax*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rcx, rbp
.label_1033:
	cmp	r12, rcx
	mov	r13, rcx
	jg	.label_1042
	jmp	.label_1044
.label_1032:
	cmp	dword ptr [rbx + 0x90], 0
	mov	eax, 0
	lea	rsi, [rsp + 0x10]
	jle	.label_1035
	nop	dword ptr [rax + rax]
.label_1040:
	cmp	rax, rdx
	jge	.label_1039
	mov	rcx, qword ptr [rbx]
	mov	rsi, qword ptr [rbx + 0x78]
	add	rcx, qword ptr [rbx + 0x28]
	add	rcx, r13
	movzx	ecx, byte ptr [rax + rcx]
	mov	cl, byte ptr [rsi + rcx]
	mov	rsi, qword ptr [rbx + 8]
	add	rsi, r13
	mov	byte ptr [rax + rsi], cl
	mov	byte ptr [rsp + rax + 0x10], cl
	inc	rax
	movsxd	rcx, dword ptr [rbx + 0x90]
	cmp	rax, rcx
	jl	.label_1040
	lea	rsi, [rsp + 0x10]
	jmp	.label_1035
.label_1036:
	movzx	ecx, byte ptr [rax + rcx]
	mov	dword ptr [rsp + 0xc], ecx
	jmp	.label_1038
.label_1039:
	lea	rsi, [rsp + 0x10]
	jmp	.label_1035
	nop	word ptr cs:[rax + rax]
.label_1042:
	mov	rdx, r12
	sub	rdx, r13
	mov	rbp, qword ptr [rbx + 0x20]
	cmp	qword ptr [rbx + 0x78], 0
	jne	.label_1032
	mov	rsi, qword ptr [rbx]
	add	rsi, qword ptr [rbx + 0x28]
	add	rsi, r13
.label_1035:
	mov	rdi, r15
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_1034
	cmp	rax, -2
	jne	.label_1043
	mov	rax, qword ptr [rbx + 0x40]
	cmp	rax, qword ptr [rbx + 0x58]
	jge	.label_1034
	mov	qword ptr [r14], rbp
.label_1037:
	mov	rcx, r13
.label_1044:
	mov	qword ptr [rbx + 0x30], rcx
	mov	qword ptr [rbx + 0x38], rcx
	add	rsp, 0x58
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
	#Procedure 0x40c0f0

	.globl parse_reg_exp
	.type parse_reg_exp, @function
parse_reg_exp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x18], r9
	mov	qword ptr [rsp + 0x28], r8
	mov	qword ptr [rsp + 0x10], rcx
	mov	r13, rdx
	mov	qword ptr [rsp + 8], rsi
	mov	r12, rdi
	mov	r14, qword ptr [rsi]
	mov	rax, qword ptr [r14 + 0xa8]
	mov	qword ptr [rsp], rax
	call	parse_branch
	mov	rbx, rax
	xor	ebp, ebp
	test	rbx, rbx
	jne	.label_1046
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax]
	test	eax, eax
	jne	.label_1053
.label_1046:
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 0xa
	jne	.label_1056
	mov	rax, qword ptr [rsp + 0x10]
	or	rax, 0x800000
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_1058
.label_1055:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1048
	mov	rcx, qword ptr [r14 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x70], rax
	mov	dword ptr [r14 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1062
	nop	word ptr cs:[rax + rax]
.label_1058:
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x30]
	call	peek_token
	cdqe	
	add	qword ptr [r12 + 0x48], rax
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	ecx, 8
	cmp	ecx, 0xa
	mov	r15d, 0
	je	.label_1052
	cmp	qword ptr [rsp + 0x28], 0
	je	.label_1057
	cmp	eax, 9
	mov	r15d, 0
	je	.label_1052
.label_1057:
	mov	rax, qword ptr [r14 + 0xa8]
	mov	qword ptr [rsp + 0x20], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [r14 + 0xa8], rax
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r9, rbp
	call	parse_branch
	mov	r15, rax
	test	r15, r15
	jne	.label_1049
	mov	eax, dword ptr [rbp]
	test	eax, eax
	jne	.label_1051
.label_1049:
	mov	rax, qword ptr [rsp + 0x20]
	or	qword ptr [r14 + 0xa8], rax
	nop	word ptr [rax + rax]
.label_1052:
	mov	ecx, dword ptr [r14 + 0x80]
	cmp	ecx, 0xf
	je	.label_1055
	mov	rax, qword ptr [r14 + 0x70]
.label_1062:
	lea	edx, [rcx + 1]
	mov	dword ptr [r14 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0xa
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbx, rbx
	je	.label_1059
	mov	qword ptr [rbx], rbp
.label_1059:
	test	r15, r15
	je	.label_1050
	mov	qword ptr [r15], rbp
.label_1050:
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 0xa
	mov	rbx, rbp
	je	.label_1058
	jmp	.label_1053
.label_1056:
	mov	rbp, rbx
.label_1053:
	mov	rax, rbp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1051:
	xor	ebp, ebp
	test	rbx, rbx
	je	.label_1053
	mov	r14d, 0x400ff
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1061:
	mov	r15, rbx
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	jne	.label_1061
	mov	rbx, qword ptr [r15 + 0x10]
	test	rbx, rbx
	jne	.label_1061
	nop	word ptr cs:[rax + rax]
.label_1060:
	mov	eax, dword ptr [r15 + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1045
	cmp	eax, 6
	jne	.label_1047
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_1054
	nop	dword ptr [rax]
.label_1045:
	mov	rdi, qword ptr [r15 + 0x28]
.label_1054:
	call	free
.label_1047:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_1053
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, r15
	mov	r15, rax
	je	.label_1060
	test	rbx, rbx
	mov	r15, rax
	je	.label_1060
	jmp	.label_1061
.label_1048:
	mov	rax, qword ptr [rsp + 0x18]
	mov	dword ptr [rax], 0xc
	xor	ebp, ebp
	jmp	.label_1053
	.section	.text
	.align	16
	#Procedure 0x40c380

	.globl peek_token
	.type peek_token, @function
peek_token:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbp, rsi
	mov	r15, rdi
	mov	rax, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rax
	jle	.label_1082
	mov	r13, rdx
	mov	rcx, qword ptr [rbp + 8]
	movzx	r12d, byte ptr [rcx + rax]
	mov	byte ptr [r15], r12b
	mov	ebx, dword ptr [r15 + 8]
	mov	eax, ebx
	and	eax, 0xff9fffff
	mov	dword ptr [r15 + 8], eax
	mov	edx, dword ptr [rbp + 0x90]
	cmp	edx, 2
	jl	.label_1087
	mov	rax, qword ptr [rbp + 0x48]
	cmp	rax, qword ptr [rbp + 0x30]
	je	.label_1087
	mov	rcx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_1093
.label_1087:
	cmp	r12d, 0x5c
	jne	.label_1095
	mov	rcx, qword ptr [rbp + 0x48]
	lea	rax, [rcx + 1]
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_1084
	cmp	byte ptr [rbp + 0x8b], 0
	jne	.label_1101
.label_1064:
	mov	rcx, qword ptr [rbp + 8]
	mov	r14b, byte ptr [rcx + rax]
.label_1065:
	mov	byte ptr [r15], r14b
	and	ebx, 0xff9fff00
	or	ebx, 1
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1067
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	ebp, dword ptr [rax + rcx*4 + 4]
	mov	edi, ebp
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	ebp, 0x5f
	sete	cl
	or	cl, al
	movzx	ecx, cl
	shl	ecx, 0x16
	mov	eax, 0xffbfffff
	and	eax, dword ptr [r15 + 8]
	or	eax, ecx
	jmp	.label_1072
.label_1082:
	mov	byte ptr [r15 + 8], 2
	xor	r14d, r14d
	jmp	.label_1063
.label_1095:
	and	ebx, 0xff9fff00
	or	ebx, 1
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1080
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	ebx, dword ptr [rax + rcx*4]
	mov	edi, ebx
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	ebx, 0x5f
	sete	cl
	or	cl, al
	movzx	ecx, cl
	shl	ecx, 0x16
	mov	eax, 0xffbfffff
	and	eax, dword ptr [r15 + 8]
	or	eax, ecx
	jmp	.label_1086
.label_1084:
	and	ebx, 0xff9fff00
	or	ebx, 0x24
	jmp	.label_1091
.label_1080:
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + r12*2]
	cmp	r12d, 0x5f
	sete	cl
	movzx	ecx, cl
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	or	eax, ebx
.label_1086:
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 1
	cmp	r12d, 0x3e
	jg	.label_1083
	lea	ecx, [r12 - 0x24]
	cmp	ecx, 0xa
	ja	.label_1100
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1074]]
.label_2475:
	mov	rdx, r13
	test	dl, 8
	jne	.label_1066
	mov	rcx, qword ptr [rbp + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rbp + 0x58]
	je	.label_1066
	mov	qword ptr [rbp + 0x48], rcx
	lea	rdi, [rsp + 8]
	mov	rsi, rbp
	call	peek_token
	dec	qword ptr [rbp + 0x48]
	movzx	eax, byte ptr [rsp + 0x10]
	add	eax, -9
	cmp	eax, 1
	ja	.label_1063
	mov	eax, dword ptr [r15 + 8]
.label_1066:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x20
	jmp	.label_1063
.label_1083:
	cmp	r12d, 0x7a
	jg	.label_1078
	cmp	r12d, 0x3f
	je	.label_1090
	cmp	r12d, 0x5b
	mov	rdx, r13
	je	.label_1098
	cmp	r12d, 0x5e
	jne	.label_1063
	test	edx, 0x800008
	jne	.label_1085
	mov	rcx, qword ptr [rbp + 0x48]
	test	rcx, rcx
	je	.label_1085
	test	dh, 8
	je	.label_1063
	mov	rdx, qword ptr [rbp + 8]
	movzx	ecx, byte ptr [rcx + rdx - 1]
	cmp	ecx, 0xa
	jne	.label_1063
.label_1085:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x10
	jmp	.label_1063
.label_1067:
	movzx	ebp, r14b
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	cmp	ebp, 0x5f
	sete	cl
	movzx	ecx, cl
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	or	eax, ebx
.label_1072:
	mov	dword ptr [r15 + 8], eax
	movzx	ecx, r14b
	mov	r14d, 2
	cmp	ecx, 0x5f
	jg	.label_1099
	lea	edx, [rcx - 0x27]
	cmp	edx, 0x2c
	ja	.label_1068
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1069]]
.label_2436:
	mov	rdx, r13
	test	dh, 0x40
	jne	.label_1063
	and	eax, 0xffffff00
	or	eax, 4
	mov	dword ptr [r15 + 8], eax
	add	ecx, -0x31
	movsxd	rax, ecx
	mov	qword ptr [r15], rax
	jmp	.label_1063
.label_1078:
	cmp	r12d, 0x7b
	je	.label_1073
	cmp	r12d, 0x7c
	mov	rcx, r13
	je	.label_1096
	cmp	r12d, 0x7d
	jne	.label_1063
	and	ecx, 0x1200
	cmp	rcx, 0x1200
	je	.label_1077
	jmp	.label_1063
.label_1093:
	and	ebx, 0xff9fff00
	or	ebx, 0x200001
.label_1091:
	mov	dword ptr [r15 + 8], ebx
	mov	r14d, 1
.label_1063:
	mov	eax, r14d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1099:
	lea	edx, [rcx - 0x73]
	cmp	edx, 0xa
	ja	.label_1092
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1088]]
.label_2469:
	test	r13d, 0x80000
	jne	.label_1063
	and	eax, 0xffffff00
	or	eax, 0x22
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1063
.label_1100:
	cmp	r12d, 0xa
	jne	.label_1063
	mov	rcx, r13
	test	ch, 8
	jne	.label_1079
	jmp	.label_1063
.label_2476:
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_1094
	jmp	.label_1063
.label_2477:
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_1097
	jmp	.label_1063
.label_2478:
	and	eax, 0xffffff00
	or	eax, 0xb
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1063
.label_2479:
	test	r13w, 0x402
	jne	.label_1063
	jmp	.label_1075
.label_2480:
	and	eax, 0xffffff00
	or	eax, 5
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1063
.label_1090:
	test	r13w, 0x402
	jne	.label_1063
	jmp	.label_1071
.label_1098:
	and	eax, 0xffffff00
	or	eax, 0x14
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1063
.label_1073:
	and	r13d, 0x1200
	cmp	r13, 0x1200
	je	.label_1076
	jmp	.label_1063
.label_1096:
	test	ch, 4
	jne	.label_1063
	test	cx, cx
	js	.label_1079
	jmp	.label_1063
.label_1092:
	cmp	ecx, 0x60
	je	.label_1081
	cmp	ecx, 0x62
	jne	.label_1063
	test	r13d, 0x80000
	jne	.label_1063
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x100
	jmp	.label_1063
.label_1101:
	cmp	edx, 2
	jl	.label_1089
	mov	rdx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rdx + rcx*4 + 4], -1
	je	.label_1064
	lea	rsi, [rcx + 2]
	cmp	qword ptr [rbp + 0x30], rsi
	je	.label_1089
	cmp	dword ptr [rdx + rcx*4 + 8], -1
	je	.label_1064
.label_1089:
	mov	dl, byte ptr [rbp + 0x8c]
	test	dl, dl
	mov	rsi, rax
	je	.label_1070
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rsi, qword ptr [rsi + rcx*8 + 8]
.label_1070:
	add	rsi, qword ptr [rbp + 0x28]
	test	dl, dl
	mov	rcx, qword ptr [rbp]
	mov	r14b, byte ptr [rcx + rsi]
	je	.label_1065
	test	r14b, r14b
	js	.label_1064
	jmp	.label_1065
.label_1068:
	cmp	ecx, 0x57
	jne	.label_1063
	test	r13d, 0x80000
	jne	.label_1063
	and	eax, 0xffffff00
	or	eax, 0x21
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1063
.label_2470:
	test	r13d, 0x80000
	jne	.label_1063
	and	eax, 0xffffff00
	or	eax, 0x20
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1063
.label_2471:
	and	r13d, 0x1200
	cmp	r13, 0x200
	jne	.label_1063
.label_1076:
	and	eax, 0xffffff00
	or	eax, 0x17
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1063
.label_2472:
	mov	rcx, r13
	test	ch, 4
	jne	.label_1063
	test	cx, cx
	js	.label_1063
.label_1079:
	and	eax, 0xffffff00
	or	eax, 0xa
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1063
.label_2473:
	and	r13d, 0x1200
	cmp	r13, 0x200
	jne	.label_1063
.label_1077:
	and	eax, 0xffffff00
	or	eax, 0x18
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1063
.label_1081:
	test	r13d, 0x80000
	jne	.label_1063
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x40
	jmp	.label_1063
.label_2432:
	test	r13d, 0x80000
	jne	.label_1063
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x80
	jmp	.label_1063
.label_2433:
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_1063
.label_1094:
	and	eax, 0xffffff00
	or	eax, 8
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1063
.label_2434:
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_1063
.label_1097:
	and	eax, 0xffffff00
	or	eax, 9
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1063
.label_2435:
	and	r13d, 0x402
	cmp	r13, 2
	jne	.label_1063
.label_1075:
	and	eax, 0xffffff00
	or	eax, 0x12
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1063
.label_2437:
	test	r13d, 0x80000
	jne	.label_1063
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 6
	jmp	.label_1063
.label_2438:
	test	r13d, 0x80000
	jne	.label_1063
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 9
	jmp	.label_1063
.label_2439:
	and	r13d, 0x402
	cmp	r13, 2
	jne	.label_1063
.label_1071:
	and	eax, 0xffffff00
	or	eax, 0x13
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1063
.label_2440:
	test	r13d, 0x80000
	jne	.label_1063
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x200
	jmp	.label_1063
.label_2441:
	test	r13d, 0x80000
	jne	.label_1063
	and	eax, 0xffffff00
	or	eax, 0x23
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1063
	.section	.text
	.align	16
	#Procedure 0x40ca20

	.globl parse_branch
	.type parse_branch, @function
parse_branch:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r9
	mov	r15, r8
	mov	qword ptr [rsp + 0x10], rcx
	mov	r13, rdx
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], rdi
	mov	r14, qword ptr [rsi]
	call	parse_expression
	mov	rbp, rbx
	mov	rbx, rax
	xor	r12d, r12d
	test	rbx, rbx
	jne	.label_1111
	mov	eax, dword ptr [rbp]
	test	eax, eax
	je	.label_1111
	jmp	.label_1105
	nop	word ptr [rax + rax]
.label_1120:
	test	rbx, rbx
	cmove	rbx, r12
.label_1111:
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	ecx, 8
	cmp	ecx, 0xa
	je	.label_1121
	test	r15, r15
	je	.label_1104
	cmp	eax, 9
	je	.label_1106
.label_1104:
	mov	rdi, qword ptr [rsp]
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, r15
	mov	r9, rbp
	call	parse_expression
	mov	r12, rax
	test	r12, r12
	jne	.label_1116
	mov	eax, dword ptr [rbp]
	test	eax, eax
	jne	.label_1126
.label_1116:
	test	rbx, rbx
	je	.label_1120
	test	r12, r12
	je	.label_1120
	mov	ecx, dword ptr [r14 + 0x80]
	cmp	ecx, 0xf
	je	.label_1123
	mov	rax, qword ptr [r14 + 0x70]
.label_1119:
	lea	edx, [rcx + 1]
	mov	dword ptr [r14 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r12], rdx
	mov	rbx, rdx
	jmp	.label_1111
.label_1123:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1127
	mov	rcx, qword ptr [r14 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x70], rax
	mov	dword ptr [r14 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1119
.label_1126:
	xor	r12d, r12d
	test	rbx, rbx
	je	.label_1105
	mov	r14d, 0x400ff
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1102:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_1102
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_1102
	nop	word ptr cs:[rax + rax]
.label_1128:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1109
	cmp	eax, 6
	jne	.label_1113
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_1124
	nop	dword ptr [rax]
.label_1109:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1124:
	call	free
.label_1113:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1105
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rbp
	mov	rbp, rax
	je	.label_1128
	test	rbx, rbx
	mov	rbp, rax
	je	.label_1128
	jmp	.label_1102
.label_1121:
	mov	r12, rbx
	jmp	.label_1105
.label_1106:
	mov	r12, rbx
.label_1105:
	mov	rax, r12
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1127:
	mov	r14d, 0x400ff
	mov	rcx, rbp
.label_1115:
	mov	rbp, r12
	mov	r12, qword ptr [rbp + 8]
	test	r12, r12
	jne	.label_1115
	mov	r12, qword ptr [rbp + 0x10]
	test	r12, r12
	jne	.label_1115
	nop	word ptr cs:[rax + rax]
.label_1110:
	mov	r12, rcx
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1122
	cmp	eax, 6
	jne	.label_1125
	mov	r15, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	jmp	.label_1108
.label_1122:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1108:
	call	free
.label_1125:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	mov	rcx, r12
	je	.label_1107
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rbp
	mov	rbp, rax
	je	.label_1110
	test	r12, r12
	mov	rbp, rax
	je	.label_1110
	jmp	.label_1115
.label_1107:
	mov	r14d, 0x400ff
.label_1112:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_1112
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_1112
	nop	dword ptr [rax + rax]
.label_1118:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1114
	cmp	eax, 6
	jne	.label_1103
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	mov	r15, rcx
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	call	free
	mov	rcx, r15
	jmp	.label_1103
.label_1114:
	mov	rdi, qword ptr [rbp + 0x28]
	mov	rbx, rcx
	call	free
	mov	rcx, rbx
.label_1103:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1117
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rbp
	mov	rbp, rax
	je	.label_1118
	test	rbx, rbx
	mov	rbp, rax
	je	.label_1118
	jmp	.label_1112
.label_1117:
	mov	dword ptr [rcx], 0xc
	xor	r12d, r12d
	jmp	.label_1105
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cd70

	.globl parse_expression
	.type parse_expression, @function
parse_expression:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xe8
	mov	r12, r9
	mov	qword ptr [rsp + 0x18], r12
	mov	r13, r8
	mov	qword ptr [rsp + 0x48], rcx
	mov	qword ptr [rsp + 0x40], rdx
	mov	rbx, rsi
	mov	qword ptr [rsp + 0x38], rdi
	mov	eax, dword ptr [rdx + 8]
	movzx	ecx, al
	xor	r15d, r15d
	lea	edx, [rcx - 1]
	cmp	edx, 0x23
	ja	.label_1138
	mov	r9, qword ptr [rbx]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1234]]
.label_2330:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rax + 0x78]
	cmp	ecx, 0x21
	sete	al
	movzx	r8d, al
	mov	edx, OFFSET FLAT:.str.1_5
	mov	ecx, OFFSET FLAT:.str.2_3
	mov	rdi, r9
	mov	rbx, r9
	mov	r9, r12
	call	build_charclass_op
	mov	rbp, rax
	xor	r15d, r15d
	test	rbp, rbp
	je	.label_1350
	mov	r9, rbx
	jmp	.label_1140
.label_2331:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rax + 0x78]
	cmp	ecx, 0x23
	sete	al
	movzx	r8d, al
	mov	edx, OFFSET FLAT:.str.3_2
	mov	ecx, OFFSET FLAT:.str_0
	mov	rdi, r9
	mov	rbx, r9
	mov	r9, r12
	call	build_charclass_op
	mov	rbp, rax
	xor	r15d, r15d
	test	rbp, rbp
	jne	.label_1265
.label_1350:
	mov	eax, dword ptr [r12]
	test	eax, eax
	mov	r9, rbx
	je	.label_1140
	jmp	.label_1138
.label_2321:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1276
	mov	rax, qword ptr [r9 + 0x70]
.label_1155:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rdx, qword ptr [rsp + 0x40]
	movdqu	xmm1, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [r9 + 0xb4], 2
	jl	.label_1282
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rcx + 0x48]
	cmp	qword ptr [rcx + 0x68], rax
	jg	.label_1303
	mov	rbp, r15
	jmp	.label_1140
.label_1152:
	mov	rbp, r9
	mov	rcx, qword ptr [rbx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1309
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x48]
	call	peek_token
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	mov	r9, rbp
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1320
	mov	rax, qword ptr [r9 + 0x70]
.label_1375:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm1, xmm1
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rdx, qword ptr [rsp + 0x40]
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1371:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1344
	mov	rax, qword ptr [r9 + 0x70]
.label_1195:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r15
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r15], rdx
	test	rbp, rbp
	je	.label_1137
	mov	qword ptr [rbp], rdx
	mov	rax, qword ptr [rbx + 0x48]
	cmp	qword ptr [rbx + 0x68], rax
	mov	r15, rdx
	mov	rbp, rdx
	jg	.label_1303
	jmp	.label_1140
.label_1320:
	mov	edi, 0x3c8
	mov	rbp, r9
	call	malloc
	mov	r9, rbp
	test	rax, rax
	mov	ebp, 0
	je	.label_1371
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1375
.label_1344:
	mov	edi, 0x3c8
	mov	r13, r9
	call	malloc
	mov	r9, r13
	test	rax, rax
	je	.label_1137
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1195
.label_1303:
	mov	rbx, qword ptr [rsp + 0x38]
	cmp	rax, qword ptr [rbx + 0x30]
	jne	.label_1152
	mov	rbp, r15
	jmp	.label_1140
.label_2322:
	mov	rbx, qword ptr [rsp + 0x40]
	mov	cl, byte ptr [rbx]
	mov	eax, 1
	shl	eax, cl
	cdqe	
	test	qword ptr [r9 + 0xa8], rax
	je	.label_1157
	or	qword ptr [r9 + 0xa0], rax
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1164
	mov	rax, qword ptr [r9 + 0x70]
.label_1145:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [rbx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	inc	qword ptr [r9 + 0x98]
	or	byte ptr [r9 + 0xb0], 2
	jmp	.label_1140
.label_2323:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1187
	mov	rax, qword ptr [r9 + 0x70]
	mov	rsi, qword ptr [rsp + 0x40]
.label_1373:
	mov	qword ptr [rsp + 0x40], rsi
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [rsi]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [r9 + 0xb4], 1
	jle	.label_1140
	or	byte ptr [r9 + 0xb0], 2
	jmp	.label_1140
.label_2324:
	mov	qword ptr [rsp + 0x20], r9
	mov	r15, qword ptr [rbx + 0x30]
	lea	rax, [r15 + 1]
	mov	qword ptr [rbx + 0x30], rax
	mov	rdx, qword ptr [rsp + 0x48]
	or	rdx, 0x800000
	mov	r14, qword ptr [rsp + 0x40]
	mov	rdi, r14
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rsi, rbp
	call	peek_token
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	movzx	eax, byte ptr [r14 + 8]
	xor	esi, esi
	cmp	eax, 9
	je	.label_1231
	mov	rbp, r15
	inc	r13
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, r13
	mov	r9, r12
	call	parse_reg_exp
	mov	rsi, rax
	xor	r15d, r15d
	cmp	dword ptr [r12], 0
	jne	.label_1138
	movzx	eax, byte ptr [r14 + 8]
	cmp	eax, 9
	jne	.label_1246
	mov	r15, rbp
.label_1231:
	cmp	r15, 8
	mov	r9, qword ptr [rsp + 0x20]
	mov	rbx, r15
	ja	.label_1251
	mov	eax, 1
	mov	cl, bl
	shl	eax, cl
	cdqe	
	or	qword ptr [r9 + 0xa8], rax
.label_1251:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1259
	mov	rax, qword ptr [r9 + 0x70]
.label_1160:
	mov	qword ptr [rsp + 0x40], r14
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rsi
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0x11
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rsi, rsi
	je	.label_1269
	mov	qword ptr [rsi], rbp
.label_1269:
	mov	qword ptr [rax + rcx + 0x30], rbx
	jmp	.label_1140
.label_2325:
	mov	rcx, qword ptr [rsp + 0x48]
	test	ecx, 0x20000
	jne	.label_1353
	mov	dword ptr [r12], 0x10
	jmp	.label_1144
.label_2327:
	mov	r15, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [r15]
	test	ax, 0x30f
	je	.label_1300
	mov	al, byte ptr [r9 + 0xb0]
	test	al, 0x10
	jne	.label_1222
	mov	cl, al
	or	cl, 0x10
	mov	byte ptr [r9 + 0xb0], cl
	xor	ebx, ebx
	test	al, 8
	mov	ebp, 0
	jne	.label_1308
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_1316]]
	movdqu	xmmword ptr [r9 + 0xb8], xmm0
	mov	ebp, 2
	mov	ebx, 0x80
	test	al, 4
	je	.label_1308
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r9 + 0xc8], xmm0
.label_1222:
	mov	eax, dword ptr [r15]
.label_1300:
	cmp	eax, 0x200
	je	.label_1327
	cmp	eax, 0x100
	jne	.label_1328
	mov	dword ptr [r15], 6
	mov	r13, r15
	lea	r15, [r9 + 0x80]
	mov	ebp, dword ptr [r9 + 0x80]
	cmp	ebp, 0xf
	je	.label_1322
	mov	rax, qword ptr [r9 + 0x70]
.label_1290:
	lea	ecx, [rbp + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r13]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbp, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	ecx, 9
	jmp	.label_1339
.label_2329:
	mov	rcx, qword ptr [rsp + 0x48]
	test	ecx, 0x1000000
	jne	.label_1261
.label_2326:
	mov	rcx, qword ptr [rsp + 0x48]
	test	cl, 0x20
	jne	.label_1261
	test	cl, 0x10
	jne	.label_1363
.label_1353:
	and	eax, 0xffffff00
	or	eax, 1
	mov	rbx, qword ptr [rsp + 0x40]
	mov	dword ptr [rbx + 8], eax
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1366
	mov	rax, qword ptr [r9 + 0x70]
.label_1331:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [rbx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
.label_1333:
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	jmp	.label_1140
.label_2332:
	mov	dword ptr [r12], 5
	jmp	.label_1144
.label_2328:
	mov	qword ptr [rsp + 0x20], r9
	mov	qword ptr [rsp + 0xe0], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	rbx, rax
	test	r13, r13
	je	.label_1161
	test	rbx, rbx
	je	.label_1161
	mov	qword ptr [rsp + 0x58], rbx
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rbx, qword ptr [rsp + 0x48]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	ecx, dword ptr [rbp + 8]
	movzx	edx, cl
	cmp	edx, 0x19
	je	.label_1173
	cmp	edx, 2
	je	.label_1148
	mov	dword ptr [rsp + 0x50], 0
	jmp	.label_1179
.label_1265:
	mov	r9, rbx
	jmp	.label_1140
.label_1363:
	mov	r15, qword ptr [rsp + 0x40]
	mov	rdi, r15
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rsi, rbp
	mov	r14, qword ptr [rsp + 0x48]
	mov	rdx, r14
	call	peek_token
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r15
	mov	rcx, r14
	mov	r8, r13
	mov	r9, r12
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	parse_expression
.label_1282:
	mov	rbp, r15
	jmp	.label_1140
.label_1173:
	mov	rcx, qword ptr [rsp + 0x58]
	or	byte ptr [rcx + 0x20], 1
	test	bh, 1
	je	.label_1317
	or	byte ptr [r13 + 1], 4
.label_1317:
	cdqe	
	mov	rsi, qword ptr [rsp + 0x38]
	add	qword ptr [rsi + 0x48], rax
	mov	rdi, rbp
	mov	rdx, rbx
	call	peek_token_bracket
	mov	ecx, dword ptr [rbp + 8]
	movzx	edx, cl
	cmp	edx, 2
	je	.label_1148
	mov	dl, 1
	mov	dword ptr [rsp + 0x50], edx
.label_1179:
	mov	qword ptr [rsp + 0x60], r13
	movzx	edx, cl
	cmp	edx, 0x15
	jne	.label_1217
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rbp + 8], ecx
.label_1217:
	lea	rcx, [rsp + 0xa0]
	mov	qword ptr [rsp + 0xd8], rcx
	mov	dword ptr [rsp + 0xd0], 3
	lea	rdi, [rsp + 0xd0]
	mov	r9d, 1
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, rbp
	mov	ecx, eax
	mov	rbx, qword ptr [rsp + 0x48]
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_1236
	mov	eax, ebx
	and	eax, 0x10000
	mov	qword ptr [rsp + 0x30], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_1272
.label_1312:
	cmp	eax, 2
	je	.label_1242
	mov	qword ptr [rsp + 0x58], r15
	mov	qword ptr [rsp + 0x60], r13
	mov	qword ptr [rsp + 0x20], r9
	lea	rax, [rsp + 0xa0]
	mov	qword ptr [rsp + 0xd8], rax
	mov	dword ptr [rsp + 0xd0], 3
	xor	r9d, r9d
	lea	rdi, [rsp + 0xd0]
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdx, rbp
	mov	ecx, ebx
	mov	rbx, qword ptr [rsp + 0x48]
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	je	.label_1272
	jmp	.label_1236
.label_2452:
	mov	cl, byte ptr [rsp + 0xd8]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	r13, qword ptr [rsp + 0x60]
	or	qword ptr [r13 + rcx*8], rax
	jmp	.label_1277
.label_2453:
	mov	r15, qword ptr [rsp + 0x58]
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rbp, qword ptr [rsp + 0x28]
	cmp	rbp, rcx
	je	.label_1293
	mov	rax, qword ptr [r15]
.label_1132:
	mov	r9, qword ptr [rsp + 0x20]
	mov	r13, qword ptr [rsp + 0x60]
	mov	edx, dword ptr [rsp + 0xd8]
	lea	rsi, [rcx + 1]
	mov	qword ptr [r15 + 0x28], rsi
	mov	dword ptr [rax + rcx*4], edx
	jmp	.label_1189
.label_1227:
	mov	rax, qword ptr [rsp + 0xd8]
	mov	al, byte ptr [rax]
	jmp	.label_1218
.label_1278:
	xor	eax, eax
.label_1218:
	cmp	ebx, 3
	je	.label_1304
	test	ebx, ebx
	jne	.label_1159
	mov	bpl, byte ptr [rsp + 0xc8]
	jmp	.label_1306
.label_1304:
	mov	rcx, qword ptr [rsp + 0xc8]
	mov	bpl, byte ptr [rcx]
	jmp	.label_1306
.label_1159:
	xor	ebp, ebp
.label_1306:
	cmp	r15d, 3
	je	.label_1228
	test	r15d, r15d
	jne	.label_1205
.label_1228:
	test	r12, r12
	movzx	edx, al
	je	.label_1225
	mov	edi, edx
	call	btowc
	mov	edx, eax
	jmp	.label_1225
.label_1205:
	mov	edx, dword ptr [rsp + 0xd8]
.label_1225:
	cmp	ebx, 3
	je	.label_1170
	test	ebx, ebx
	jne	.label_1323
.label_1170:
	test	r12, r12
	movzx	ebp, bpl
	je	.label_1232
	mov	edi, ebp
	mov	ebx, edx
	call	btowc
	mov	edx, ebx
	mov	ebp, eax
	jmp	.label_1232
.label_1323:
	mov	ebp, dword ptr [rsp + 0xc8]
.label_1232:
	cmp	edx, -1
	mov	ecx, 3
	je	.label_1191
	cmp	ebp, -1
	je	.label_1191
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_1335
	cmp	edx, ebp
	mov	ecx, 0xb
	ja	.label_1191
.label_1335:
	test	r12, r12
	je	.label_1288
	mov	rax, qword ptr [r12 + 0x40]
	cmp	qword ptr [rsp + 0x10], rax
	je	.label_1342
	mov	rdi, qword ptr [r12 + 8]
	mov	r14, qword ptr [r12 + 0x10]
	mov	r9, r13
	mov	r15, qword ptr [rsp + 0x58]
	mov	ebx, dword ptr [rsp + 0xc]
.label_1168:
	mov	dword ptr [rdi + rax*4], edx
	lea	rcx, [rax + 1]
	mov	qword ptr [r12 + 0x40], rcx
	mov	dword ptr [r14 + rax*4], ebp
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_1365
.label_1288:
	mov	r12, qword ptr [rsp + 0x18]
	mov	r9, r13
	mov	r15, qword ptr [rsp + 0x58]
	mov	ebx, dword ptr [rsp + 0xc]
.label_1365:
	mov	eax, ebp
	mov	edx, edx
	xor	ecx, ecx
	mov	r13, qword ptr [rsp + 0x60]
.label_1279:
	cmp	rdx, rcx
	ja	.label_1210
	cmp	rcx, rax
	ja	.label_1210
	mov	esi, 1
	shl	rsi, cl
	mov	rdi, rcx
	sar	rdi, 0x3f
	shr	rdi, 0x3a
	add	rdi, rcx
	sar	rdi, 6
	or	qword ptr [r13 + rdi*8], rsi
.label_1210:
	inc	rcx
	cmp	rcx, 0x100
	jne	.label_1279
	mov	dword ptr [r12], 0
	jmp	.label_1189
.label_1293:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [r15]
	lea	rsi, [rax*4 + 4]
	call	realloc
	test	rax, rax
	je	.label_1130
	lea	rbp, [rbp + rbp + 1]
	mov	qword ptr [rsp + 0x28], rbp
	mov	qword ptr [r15], rax
	mov	rcx, qword ptr [r15 + 0x28]
	jmp	.label_1132
.label_1342:
	mov	dword ptr [rsp + 8], edx
	mov	rax, qword ptr [rsp + 0x10]
	lea	rax, [rax + rax]
	mov	rdi, qword ptr [r12 + 8]
	lea	rbx, [rax*4 + 4]
	mov	rsi, rbx
	call	realloc
	mov	r14, rax
	mov	rdi, qword ptr [r12 + 0x10]
	mov	rsi, rbx
	call	realloc
	mov	rdi, r14
	mov	r14, rax
	test	rdi, rdi
	mov	r15, qword ptr [rsp + 0x58]
	je	.label_1147
	test	r14, r14
	je	.label_1147
	mov	rax, qword ptr [rsp + 0x10]
	lea	rax, [rax + rax + 1]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [r12 + 8], rdi
	mov	qword ptr [r12 + 0x10], r14
	mov	rax, qword ptr [r12 + 0x40]
	mov	r9, r13
	mov	ebx, dword ptr [rsp + 0xc]
	mov	edx, dword ptr [rsp + 8]
	jmp	.label_1168
.label_1272:
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	ebx, eax
	mov	r15d, dword ptr [rsp + 0xd0]
	cmp	r15d, 2
	je	.label_1178
	cmp	r15d, 4
	jne	.label_1182
	mov	rax, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rax + 0x78]
	mov	r8, qword ptr [rsp + 0xd8]
	mov	r13, qword ptr [rsp + 0x60]
	mov	rsi, r13
	mov	r15, qword ptr [rsp + 0x58]
	mov	rdx, r15
	lea	rcx, [rsp + 0xe0]
	mov	r9, qword ptr [rsp + 0x48]
	call	build_charclass
	mov	dword ptr [r12], eax
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x20]
	je	.label_1189
	jmp	.label_1193
.label_1182:
	movzx	eax, byte ptr [rbp + 8]
	cmp	eax, 0x16
	mov	r9, qword ptr [rsp + 0x20]
	je	.label_1194
	cmp	eax, 2
	jne	.label_1196
	jmp	.label_1200
.label_1194:
	mov	r13, r9
	movsxd	rax, ebx
	mov	rbp, qword ptr [rsp + 0x38]
	add	qword ptr [rbp + 0x48], rax
	lea	rdi, [rsp + 0x70]
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp + 0x48]
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x78]
	cmp	ecx, 0x15
	je	.label_1211
	cmp	ecx, 2
	je	.label_1216
	lea	rcx, [rsp + 0x80]
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dword ptr [rsp + 0xc0], 3
	mov	r9d, 1
	lea	rdi, [rsp + 0xc0]
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rsi, rbp
	lea	rdx, [rsp + 0x70]
	mov	ecx, eax
	mov	rbx, qword ptr [rsp + 0x48]
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_1233
	mov	qword ptr [rsp + 0x18], r12
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, rbp
	mov	rdx, rbx
	call	peek_token_bracket
	cmp	dword ptr [r13 + 0xb4], 1
	mov	r12, qword ptr [rsp + 0x58]
	jg	.label_1239
	xor	r12d, r12d
.label_1239:
	mov	ecx, 0xb
	mov	ebx, dword ptr [rsp + 0xc0]
	cmp	ebx, 2
	je	.label_1191
	mov	dword ptr [rsp + 0xc], eax
	cmp	ebx, 4
	je	.label_1191
	cmp	r15d, 3
	jne	.label_1253
	mov	rdi, qword ptr [rsp + 0xd8]
	call	strlen
	mov	ecx, 3
	cmp	rax, 1
	ja	.label_1191
.label_1253:
	cmp	ebx, 3
	jne	.label_1263
	mov	rdi, qword ptr [rsp + 0xc8]
	call	strlen
	mov	ecx, 3
	cmp	rax, 1
	ja	.label_1191
.label_1263:
	cmp	r15d, 3
	je	.label_1227
	test	r15d, r15d
	jne	.label_1278
	mov	al, byte ptr [rsp + 0xd8]
	jmp	.label_1218
.label_1211:
	mov	eax, ebx
	neg	eax
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	mov	rax, qword ptr [rsp + 0x40]
	mov	byte ptr [rax + 8], 1
	mov	r9, r13
.label_1196:
	mov	qword ptr [rsp + 0x20], r9
	mov	eax, r15d
	cmp	r15d, 3
	ja	.label_1287
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1291]]
.label_1178:
	mov	rbp, qword ptr [rsp + 0xd8]
	mov	rdi, rbp
	call	strlen
	cmp	rax, 1
	jne	.label_1295
	mov	cl, byte ptr [rbp]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	r13, qword ptr [rsp + 0x60]
	or	qword ptr [r13 + rcx*8], rax
	mov	dword ptr [r12], 0
.label_1277:
	mov	r9, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 0x58]
.label_1189:
	mov	rax, qword ptr [rsp + 0x40]
	movzx	eax, byte ptr [rax + 8]
	cmp	eax, 0x15
	jne	.label_1312
	movsxd	rax, ebx
	mov	rcx, qword ptr [rsp + 0x38]
	add	qword ptr [rcx + 0x48], rax
	mov	eax, dword ptr [rsp + 0x50]
	test	al, al
	je	.label_1318
	movdqu	xmm0, xmmword ptr [r13]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r13], xmm0
	movdqu	xmm0, xmmword ptr [r13 + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r13 + 0x10], xmm0
.label_1318:
	mov	eax, dword ptr [r9 + 0xb4]
	cmp	eax, 2
	jl	.label_1310
	mov	rcx, qword ptr [r9 + 0x78]
	mov	rdx, qword ptr [rcx]
	and	qword ptr [r13], rdx
	mov	rdx, qword ptr [rcx + 8]
	and	qword ptr [r13 + 8], rdx
	mov	rdx, qword ptr [rcx + 0x10]
	and	qword ptr [r13 + 0x10], rdx
	mov	rcx, qword ptr [rcx + 0x18]
	and	qword ptr [r13 + 0x18], rcx
.label_1310:
	cmp	qword ptr [r15 + 0x28], 0
	jne	.label_1212
	cmp	qword ptr [r15 + 0x30], 0
	jne	.label_1212
	cmp	qword ptr [r15 + 0x38], 0
	jne	.label_1212
	cmp	qword ptr [r15 + 0x40], 0
	jne	.label_1212
	cmp	eax, 2
	jl	.label_1285
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_1212
	test	byte ptr [r15 + 0x20], 1
	jne	.label_1212
.label_1285:
	mov	rdi, qword ptr [r15]
	mov	rbp, r9
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	mov	r9, rbp
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1299
	mov	rax, qword ptr [r9 + 0x70]
.label_1153:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	qword ptr [rax + rcx + 0x30], r13
	mov	dword ptr [rax + rcx + 0x38], 3
	jmp	.label_1333
.label_1212:
	or	byte ptr [r9 + 0xb0], 2
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1134
	mov	rax, qword ptr [r9 + 0x70]
.label_1169:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdi, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	qword ptr [rax + rcx + 0x30], r15
	mov	dword ptr [rax + rcx + 0x38], 6
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	qword ptr [r13], 0
	jne	.label_1143
	cmp	qword ptr [r13 + 8], 0
	jne	.label_1143
	cmp	qword ptr [r13 + 0x10], 0
	jne	.label_1143
	cmp	qword ptr [r13 + 0x18], 0
	je	.label_1357
.label_1143:
	mov	qword ptr [rsp + 0x60], r13
	mov	eax, dword ptr [r9 + 0x80]
	cmp	eax, 0xf
	je	.label_1167
	mov	rbp, qword ptr [r9 + 0x70]
.label_1359:
	lea	ecx, [rax + 1]
	mov	dword ptr [r9 + 0x80], ecx
	movsxd	rbx, eax
	shl	rbx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	rax, qword ptr [rsp + 0x60]
	mov	qword ptr [rbp + rbx + 0x30], rax
	mov	dword ptr [rbp + rbx + 0x38], 3
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	mov	qword ptr [rbp + rbx + 0x40], -1
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1142
	mov	rax, qword ptr [r9 + 0x70]
.label_1201:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rcx + 1]
	mov	dword ptr [r9 + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rdx
	mov	qword ptr [rax + rcx + 0x18], rdi
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rdx], rbp
	mov	qword ptr [rdi], rbp
	jmp	.label_1140
.label_1327:
	mov	dword ptr [r15], 5
	mov	r13, r15
	lea	r15, [r9 + 0x80]
	mov	ebp, dword ptr [r9 + 0x80]
	cmp	ebp, 0xf
	je	.label_1215
	mov	rax, qword ptr [r9 + 0x70]
.label_1307:
	lea	ecx, [rbp + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r13]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbp, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	ecx, 0xa
.label_1339:
	mov	dword ptr [r13], ecx
	mov	ebx, dword ptr [r15]
	cmp	ebx, 0xf
	je	.label_1240
	mov	rax, qword ptr [r9 + 0x70]
.label_1136:
	lea	ecx, [rbx + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, ebx
	shl	rcx, 6
	lea	rbx, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r13]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1172:
	mov	ecx, dword ptr [r15]
	cmp	ecx, 0xf
	je	.label_1266
	mov	rax, qword ptr [r9 + 0x70]
.label_1185:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbp
	mov	qword ptr [rax + rcx + 0x18], rbx
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbp, rbp
	je	.label_1270
	mov	qword ptr [rbp], r15
.label_1270:
	test	rbx, rbx
	mov	rdx, qword ptr [rsp + 0x48]
	je	.label_1137
	mov	qword ptr [rbx], r15
	test	rbp, rbp
	jne	.label_1292
	jmp	.label_1137
.label_1328:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1294
	mov	r13, r15
	mov	rax, qword ptr [r9 + 0x70]
.label_1321:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r13]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	rdx, qword ptr [rsp + 0x48]
.label_1292:
	mov	rdi, r13
	mov	rbx, qword ptr [rsp + 0x38]
	mov	rsi, rbx
	call	peek_token
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	jmp	.label_1138
.label_1366:
	mov	rbp, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1137
	mov	r9, rbp
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1331
.label_1236:
	mov	qword ptr [rsp + 0x48], rbx
	mov	dword ptr [r12], eax
	mov	r9, qword ptr [rsp + 0x20]
	jmp	.label_1188
.label_1148:
	mov	dword ptr [r12], 2
	jmp	.label_1346
.label_1242:
	mov	dword ptr [r12], 7
.label_1193:
	mov	qword ptr [rsp + 0x20], r9
	jmp	.label_1150
.label_1309:
	mov	r9, rbp
	mov	rbp, r15
	jmp	.label_1140
.label_1276:
	mov	rbx, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1137
	mov	r9, rbx
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1155
.label_1157:
	mov	dword ptr [r12], 6
	jmp	.label_1144
.label_1187:
	mov	rbx, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	rsi, qword ptr [rsp + 0x40]
	je	.label_1137
	mov	r9, rbx
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1373
.label_1161:
	mov	rdi, r13
	call	free
	mov	rdi, rbx
	call	free
	jmp	.label_1137
.label_1164:
	mov	rbp, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1137
	mov	r9, rbp
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1145
.label_1259:
	mov	r15, rsi
	mov	rbp, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1137
	mov	r9, rbp
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rsi, r15
	jmp	.label_1160
.label_1240:
	mov	edi, 0x3c8
	mov	rbx, r9
	call	malloc
	mov	r9, rbx
	xor	ebx, ebx
	test	rax, rax
	je	.label_1172
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r15], 0
	jmp	.label_1136
.label_1266:
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1137
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rdx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdx + 0x70], rax
	mov	dword ptr [r15], 0
	xor	ecx, ecx
	jmp	.label_1185
.label_1295:
	mov	dword ptr [r12], 3
	mov	r9, qword ptr [rsp + 0x20]
	jmp	.label_1188
.label_1308:
	mov	r13, r9
	call	__ctype_b_loc
	mov	r9, r13
	mov	rdx, qword ptr [rax]
	inc	rbx
.label_1219:
	mov	rsi, rbx
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1165:
	test	byte ptr [rdx + rsi*2 - 2], 8
	je	.label_1202
	mov	edi, 1
	mov	cl, al
	shl	rdi, cl
	or	qword ptr [r9 + rbp*8 + 0xb8], rdi
.label_1202:
	cmp	esi, 0x5f
	je	.label_1207
	movzx	ecx, word ptr [rdx + rsi*2]
	and	ecx, 8
	test	cx, cx
	je	.label_1209
.label_1207:
	lea	ecx, [rax + 1]
	mov	edi, 1
	shl	rdi, cl
	or	qword ptr [r9 + rbp*8 + 0xb8], rdi
.label_1209:
	add	rax, 2
	add	rsi, 2
	cmp	rax, 0x40
	jne	.label_1165
	inc	rbp
	add	rbx, 0x40
	cmp	ebp, 4
	jne	.label_1219
	jmp	.label_1222
.label_1134:
	mov	qword ptr [rsp + 0x60], r13
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1130
	mov	r9, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	r13, qword ptr [rsp + 0x60]
	mov	r15, qword ptr [rsp + 0x58]
	jmp	.label_1169
.label_1167:
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1130
	mov	r9, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [r9 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r9 + 0x70], rbp
	mov	dword ptr [r9 + 0x80], 0
	xor	eax, eax
	mov	rdi, rbx
	jmp	.label_1359
.label_1142:
	mov	r15, rdi
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1130
	mov	r9, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rdi, r15
	jmp	.label_1201
.label_1200:
	mov	dword ptr [r12], 7
	jmp	.label_1188
.label_1322:
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	mov	ecx, 9
	xor	ebp, ebp
	test	rax, rax
	je	.label_1286
	mov	r9, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	jmp	.label_1290
.label_1215:
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	mov	ecx, 0xa
	xor	ebp, ebp
	test	rax, rax
	je	.label_1302
	mov	r9, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	jmp	.label_1307
.label_1294:
	mov	rbx, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1137
	mov	r13, r15
	mov	r9, rbx
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1321
.label_1137:
	mov	dword ptr [r12], 0xc
	jmp	.label_1144
.label_1216:
	mov	dword ptr [r12], 7
	jmp	.label_1330
.label_1357:
	mov	rbp, rdi
	mov	rdi, r13
	mov	rbx, r9
	call	free
	mov	r9, rbx
	jmp	.label_1140
.label_1246:
	test	rsi, rsi
	je	.label_1337
	mov	r14d, 0x400ff
.label_1340:
	mov	rbp, rsi
	mov	rsi, qword ptr [rbp + 8]
	test	rsi, rsi
	jne	.label_1340
	mov	rsi, qword ptr [rbp + 0x10]
	test	rsi, rsi
	jne	.label_1340
.label_1361:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1348
	cmp	eax, 6
	jne	.label_1351
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_1356
.label_1348:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1356:
	call	free
.label_1351:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1337
	mov	rsi, qword ptr [rax + 0x10]
	cmp	rsi, rbp
	mov	rbp, rax
	je	.label_1361
	test	rsi, rsi
	mov	rbp, rax
	je	.label_1361
	jmp	.label_1340
.label_1337:
	mov	dword ptr [r12], 8
	jmp	.label_1144
.label_1286:
	mov	r9, qword ptr [rsp + 0x20]
	jmp	.label_1339
.label_1302:
	mov	r9, qword ptr [rsp + 0x20]
	jmp	.label_1339
.label_1233:
	mov	dword ptr [r12], eax
	jmp	.label_1330
.label_1299:
	mov	qword ptr [rsp + 0x60], r13
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1130
	mov	r9, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	r13, qword ptr [rsp + 0x60]
	jmp	.label_1153
.label_1130:
	mov	dword ptr [r12], 0xc
	mov	r13, qword ptr [rsp + 0x60]
.label_1346:
	mov	r15, qword ptr [rsp + 0x58]
	jmp	.label_1150
.label_1147:
	call	free
	mov	rdi, r14
	call	free
	mov	ecx, 0xc
.label_1191:
	mov	r12, qword ptr [rsp + 0x18]
	mov	dword ptr [r12], ecx
.label_1330:
	mov	r9, r13
.label_1188:
	mov	r13, qword ptr [rsp + 0x60]
	mov	r15, qword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 0x20], r9
.label_1150:
	mov	rdi, r13
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	cmp	dword ptr [r12], 0
	mov	r15d, 0
	mov	r9, qword ptr [rsp + 0x20]
	mov	ebp, 0
	jne	.label_1138
.label_1140:
	mov	qword ptr [rsp + 0x20], r9
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdi, rbx
	mov	r13, qword ptr [rsp + 0x38]
	mov	rsi, r13
	mov	r14, qword ptr [rsp + 0x48]
	mov	rdx, r14
	call	peek_token
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	mov	eax, r14d
	and	eax, 0x1000000
	mov	qword ptr [rsp + 0x30], rax
	and	r14d, 0x200000
	mov	qword ptr [rsp + 0x10], r14
	nop	word ptr cs:[rax + rax]
.label_1341:
	movzx	eax, byte ptr [rbx + 8]
	cmp	eax, 0x17
	ja	.label_1192
	mov	ecx, 0x8c0800
	bt	ecx, eax
	jae	.label_1301
	mov	r14, qword ptr [r13 + 0x48]
	movdqu	xmm0, xmmword ptr [rbx]
	movdqa	xmmword ptr [rsp + 0xa0], xmm0
	mov	rdx, -1
	cmp	eax, 0x17
	je	.label_1199
	mov	r14, rbp
	cmp	eax, 0x12
	sete	cl
	movzx	r15d, cl
	cmp	eax, 0x13
	mov	rcx, -1
	mov	eax, 1
	cmove	rcx, rax
	jmp	.label_1206
.label_1243:
	lea	rax, [r15 + r15*4]
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, 0x8000
	mov	edx, 0x8000
	cmovle	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_1199:
	mov	r15, rdx
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x48]
	call	peek_token
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	mov	dl, byte ptr [rbx]
	movzx	ecx, dl
	movzx	eax, byte ptr [rbx + 8]
	mov	esi, 0x18
	cmp	eax, 0x18
	je	.label_1229
	cmp	eax, 2
	je	.label_1235
	mov	dl, 0x2c
	cmp	ecx, 0x2c
	je	.label_1238
	cmp	ecx, 0x30
	mov	rdx, -2
	jb	.label_1199
	cmp	eax, 1
	jne	.label_1199
	cmp	r15, -2
	je	.label_1199
	cmp	ecx, 0x39
	ja	.label_1199
	cmp	r15, -1
	jne	.label_1243
	lea	rdx, [rcx - 0x30]
	jmp	.label_1199
.label_1238:
	mov	esi, eax
	nop	word ptr [rax + rax]
.label_1229:
	cmp	r15, -1
	jne	.label_1252
	movzx	eax, dl
	cmp	eax, 0x2c
	jne	.label_1254
	cmp	esi, 1
	mov	r15d, 0
	je	.label_1255
.label_1254:
	mov	qword ptr [rsp + 0x50], rbp
	jmp	.label_1258
	nop	word ptr cs:[rax + rax]
.label_1252:
	cmp	r15, -2
	je	.label_1235
	cmp	esi, 0x18
	je	.label_1271
	cmp	esi, 1
	jne	.label_1235
	movzx	ecx, dl
	cmp	ecx, 0x2c
	jne	.label_1235
.label_1255:
	mov	qword ptr [rsp + 0x60], r14
	mov	r14, rbp
	mov	rbp, r12
	mov	rdx, -1
	jmp	.label_1184
.label_1271:
	mov	r14, rbp
	mov	rcx, r15
	jmp	.label_1284
.label_1208:
	lea	rax, [r12 + r12*4]
	lea	rdx, [rcx + rax*2 - 0x30]
	cmp	rdx, 0x8000
	mov	eax, 0x8000
	cmovg	rdx, rax
	nop	dword ptr [rax]
.label_1184:
	mov	r12, rdx
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x48]
	call	peek_token
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	movzx	ecx, byte ptr [rbx]
	movzx	eax, byte ptr [rbx + 8]
	cmp	eax, 0x18
	je	.label_1296
	cmp	eax, 2
	je	.label_1230
	cmp	ecx, 0x2c
	je	.label_1296
	cmp	ecx, 0x30
	mov	rdx, -2
	jb	.label_1184
	cmp	eax, 1
	jne	.label_1184
	cmp	r12, -2
	je	.label_1184
	movzx	eax, cl
	cmp	eax, 0x39
	ja	.label_1184
	cmp	r12, -1
	jne	.label_1208
	add	rcx, -0x30
	mov	rdx, rcx
	jmp	.label_1184
.label_1296:
	mov	rcx, r12
	cmp	rcx, -2
	je	.label_1230
	cmp	rcx, -1
	mov	r12, rbp
	je	.label_1284
	cmp	r15, rcx
	jg	.label_1324
.label_1284:
	cmp	eax, 0x18
	jne	.label_1324
	cmp	rcx, -1
	mov	rax, rcx
	cmove	rax, r15
	cmp	rax, 0x8000
	jge	.label_1248
.label_1206:
	mov	rbp, rcx
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x48]
	call	peek_token
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	test	r14, r14
	mov	qword ptr [rsp + 0x50], r14
	mov	ecx, 0
	je	.label_1146
	mov	r9, rbp
	mov	qword ptr [rsp + 0x58], r9
	mov	rax, r9
	or	rax, r15
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, rdi
	je	.label_1175
	test	r15, r15
	mov	eax, 0
	mov	qword ptr [rsp + 0x28], rax
	mov	r12, rdi
	mov	r8, qword ptr [rsp + 0x20]
	pxor	xmm1, xmm1
	jg	.label_1352
.label_1298:
	movzx	eax, byte ptr [r12 + 0x30]
	cmp	eax, 0x11
	jne	.label_1223
	mov	rax, qword ptr [r12 + 0x28]
	mov	rdx, r12
	nop	word ptr [rax + rax]
.label_1129:
	mov	rcx, rdx
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_1129
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_1129
	nop	word ptr cs:[rax + rax]
.label_1374:
	mov	edx, dword ptr [rcx + 0x30]
	movzx	esi, dl
	cmp	esi, 0x11
	jne	.label_1368
	cmp	qword ptr [rcx + 0x28], rax
	jne	.label_1368
	or	edx, 0x80000
	mov	dword ptr [rcx + 0x30], edx
.label_1368:
	mov	rsi, qword ptr [rcx]
	test	rsi, rsi
	je	.label_1223
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	rdx, rcx
	mov	rcx, rsi
	je	.label_1374
	test	rdx, rdx
	mov	rcx, rsi
	je	.label_1374
	jmp	.label_1129
	nop	dword ptr [rax + rax]
.label_1223:
	mov	qword ptr [rsp + 0x50], rdi
	cmp	r9, -1
	sete	bl
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1131
	mov	rax, qword ptr [r8 + 0x70]
.label_1221:
	movzx	edx, bl
	or	edx, 0xa
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], edx
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	test	r12, r12
	je	.label_1141
	mov	qword ptr [r12], r13
.label_1141:
	add	r15, 2
	cmp	r15, r9
	jg	.label_1163
	jmp	.label_1154
	nop	word ptr cs:[rax + rax]
.label_1175:
	mov	rbx, rax
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jne	.label_1175
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_1175
	nop	word ptr cs:[rax + rax]
.label_1198:
	mov	eax, dword ptr [rbx + 0x30]
	mov	ecx, 0x400ff
	and	eax, ecx
	cmp	eax, 3
	je	.label_1180
	cmp	eax, 6
	jne	.label_1183
	mov	rbp, qword ptr [rbx + 0x28]
	mov	rdi, qword ptr [rbp]
	call	free
	mov	rdi, qword ptr [rbp + 8]
	call	free
	mov	rdi, qword ptr [rbp + 0x10]
	call	free
	mov	rdi, qword ptr [rbp + 0x18]
	call	free
	mov	rdi, rbp
	jmp	.label_1244
	nop	word ptr cs:[rax + rax]
.label_1180:
	mov	rdi, qword ptr [rbx + 0x28]
.label_1244:
	call	free
.label_1183:
	mov	rdx, qword ptr [rbx]
	test	rdx, rdx
	mov	ecx, 0
	je	.label_1146
	mov	rax, qword ptr [rdx + 0x10]
	cmp	rax, rbx
	mov	rbx, rdx
	je	.label_1198
	test	rax, rax
	mov	rbx, rdx
	je	.label_1198
	jmp	.label_1175
.label_1273:
	mov	qword ptr [rsp + 0x58], r9
	mov	qword ptr [rsp + 0x60], r15
	mov	r15, r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1370
	mov	r8, r15
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 0x58]
	jmp	.label_1214
.label_1315:
	mov	qword ptr [rsp + 0x60], r15
	mov	r15, r8
	mov	r12, rbx
	jmp	.label_1224
.label_1220:
	mov	edi, 0x3c8
	mov	rbp, r8
	mov	r14, r9
	call	malloc
	mov	r9, r14
	pxor	xmm1, xmm1
	mov	r8, rbp
	test	rax, rax
	je	.label_1174
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1226
.label_1370:
	mov	qword ptr [rsp + 0x80], 0
	jmp	.label_1241
.label_1355:
	mov	qword ptr [r14], 0
.label_1241:
	xor	r12d, r12d
.label_1224:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	r8, r15
	pxor	xmm1, xmm1
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 0x58]
	je	.label_1174
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1257
	nop	word ptr cs:[rax + rax]
.label_1154:
	mov	rbp, qword ptr [r12]
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1273
	mov	rax, qword ptr [r8 + 0x70]
.label_1214:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbx, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x80], rbx
	mov	rcx, rbx
	lea	r14, [rsp + 0x80]
	jmp	.label_1280
	nop	word ptr cs:[rax + rax]
.label_1305:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rsi, ecx
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [r14], rcx
.label_1280:
	mov	qword ptr [rcx], rbp
	mov	rax, qword ptr [r14]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rbp, qword ptr [r14]
	mov	rax, qword ptr [r12 + 8]
	test	rax, rax
	je	.label_1326
	lea	r14, [rbp + 8]
	mov	r12, rax
	jmp	.label_1314
	nop	
.label_1326:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1334:
	mov	rcx, rax
	mov	rax, r12
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rcx
	je	.label_1354
	test	r12, r12
	jne	.label_1338
.label_1354:
	mov	r12, qword ptr [rax]
	mov	rbp, qword ptr [rbp]
	test	r12, r12
	jne	.label_1334
	jmp	.label_1319
.label_1338:
	lea	r14, [rbp + 0x10]
.label_1314:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1347
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_1305
.label_1347:
	mov	qword ptr [rsp + 0x60], r15
	mov	r15, r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1355
	mov	r8, r15
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 0x58]
	jmp	.label_1305
	nop	word ptr cs:[rax + rax]
.label_1319:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1315
	mov	rax, qword ptr [r8 + 0x70]
	mov	r12, rbx
.label_1257:
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r13
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r13], rbx
	test	r12, r12
	je	.label_1174
	mov	qword ptr [r12], rbx
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1220
	mov	rax, qword ptr [r8 + 0x70]
.label_1226:
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0xa
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], r13
	cmp	r15, r9
	lea	r15, [r15 + 1]
	jl	.label_1154
.label_1163:
	mov	rax, qword ptr [rsp + 0x28]
	test	rax, rax
	je	.label_1171
	mov	rbx, rax
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	mov	r12, qword ptr [rsp + 0x18]
	je	.label_1376
	mov	rax, qword ptr [r8 + 0x70]
.label_1186:
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r13
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r13], rdx
	mov	r13, rdx
	jmp	.label_1213
.label_1171:
	mov	r12, qword ptr [rsp + 0x18]
.label_1213:
	xor	eax, eax
	mov	rcx, r13
	jmp	.label_1139
.label_1324:
	mov	qword ptr [rsp + 0x50], r14
.label_1258:
	mov	dword ptr [r12], 0xa
	xor	ecx, ecx
	jmp	.label_1146
.label_1352:
	cmp	r15, 2
	mov	r13, rdi
	mov	rbp, rdi
	jl	.label_1203
	mov	rax, qword ptr [rsp + 0x50]
	mov	rbp, qword ptr [rax]
	mov	r13, rax
	mov	ebx, 2
	mov	rdi, rax
	jmp	.label_1166
.label_1131:
	mov	edi, 0x3c8
	mov	rbp, r8
	mov	r14, r9
	call	malloc
	mov	r9, r14
	pxor	xmm1, xmm1
	mov	r8, rbp
	test	rax, rax
	je	.label_1174
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1221
.label_1230:
	mov	r12, rbp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x60]
.label_1235:
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_1249
	mov	qword ptr [r13 + 0x48], r14
	movdqa	xmm0, xmmword ptr [rsp + 0xa0]
	movdqu	xmmword ptr [rbx], xmm0
	mov	byte ptr [rbx + 8], 1
	mov	rcx, rbp
	mov	qword ptr [rsp + 0x50], rbp
	jmp	.label_1146
.label_1345:
	mov	qword ptr [rsp + 0x60], rdi
	mov	qword ptr [rsp + 0x58], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1245
	mov	r14, rbp
	mov	r8, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rsp + 0x60]
	jmp	.label_1247
.label_1289:
	mov	qword ptr [rsp + 0x60], rdi
	mov	r13, rbp
	jmp	.label_1262
.label_1245:
	mov	qword ptr [rsp + 0x80], 0
	jmp	.label_1267
.label_1372:
	mov	qword ptr [r12], 0
.label_1267:
	xor	r13d, r13d
.label_1262:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	r8, qword ptr [rsp + 0x20]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x58]
	je	.label_1174
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	mov	rdi, qword ptr [rsp + 0x60]
	jmp	.label_1283
	nop	dword ptr [rax + rax]
.label_1166:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1345
	mov	r14, rbp
	mov	rax, qword ptr [r8 + 0x70]
.label_1247:
	lea	rdx, [r13 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbp, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x80], rbp
	mov	rcx, rbp
	lea	r12, [rsp + 0x80]
	jmp	.label_1297
	nop	word ptr cs:[rax + rax]
.label_1369:
	lea	rdx, [r13 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rsi, ecx
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [r12], rcx
.label_1297:
	mov	qword ptr [rcx], r14
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rdx, qword ptr [r12]
	mov	rax, qword ptr [r13 + 8]
	test	rax, rax
	je	.label_1343
	mov	r14, rdx
	lea	r12, [r14 + 8]
	mov	r13, rax
	jmp	.label_1181
	nop	word ptr cs:[rax + rax]
.label_1343:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1360:
	mov	rcx, rax
	mov	rax, r13
	mov	r13, qword ptr [rax + 0x10]
	cmp	r13, rcx
	je	.label_1237
	test	r13, r13
	jne	.label_1358
.label_1237:
	mov	r13, qword ptr [rax]
	mov	rdx, qword ptr [rdx]
	test	r13, r13
	jne	.label_1360
	jmp	.label_1364
.label_1358:
	mov	r14, rdx
	lea	r12, [r14 + 0x10]
.label_1181:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1367
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_1369
.label_1367:
	mov	qword ptr [rsp + 0x60], rdi
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1372
	mov	r8, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rsp + 0x60]
	jmp	.label_1369
	nop	word ptr cs:[rax + rax]
.label_1364:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1289
	mov	rax, qword ptr [r8 + 0x70]
	mov	r13, rbp
.label_1283:
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rdi
	mov	qword ptr [rax + rcx + 0x18], r13
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rdi, rdi
	je	.label_1151
	mov	qword ptr [rdi], rdx
.label_1151:
	test	r13, r13
	je	.label_1174
	mov	rbp, rdx
	mov	qword ptr [r13], rbp
	cmp	rbx, r15
	lea	rbx, [rbx + 1]
	mov	rdi, rbp
	jl	.label_1166
.label_1203:
	cmp	r15, r9
	jne	.label_1176
	mov	qword ptr [rsp + 0x20], r8
	mov	rcx, rbp
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_1146
.label_1376:
	mov	qword ptr [rsp + 0x20], r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	ecx, 0
	je	.label_1146
	mov	r8, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	jmp	.label_1186
.label_1176:
	mov	rbx, qword ptr [r13]
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1190
	mov	qword ptr [rsp + 0x28], rbp
	mov	rax, qword ptr [r8 + 0x70]
.label_1313:
	lea	rdx, [r13 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r12, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x80], r12
	mov	rcx, r12
	lea	rbp, [rsp + 0x80]
	jmp	.label_1197
	nop	word ptr cs:[rax + rax]
.label_1274:
	lea	rdx, [r13 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rsi, ecx
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [rbp], rcx
.label_1197:
	mov	qword ptr [rcx], rbx
	mov	rax, qword ptr [rbp]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rbx, qword ptr [rbp]
	mov	rax, qword ptr [r13 + 8]
	test	rax, rax
	je	.label_1329
	lea	rbp, [rbx + 8]
	mov	r13, rax
	jmp	.label_1250
.label_1329:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1264:
	mov	rcx, rax
	mov	rax, r13
	mov	r13, qword ptr [rax + 0x10]
	cmp	r13, rcx
	je	.label_1256
	test	r13, r13
	jne	.label_1260
.label_1256:
	mov	r13, qword ptr [rax]
	mov	rbx, qword ptr [rbx]
	test	r13, r13
	jne	.label_1264
	jmp	.label_1268
.label_1260:
	lea	rbp, [rbx + 0x10]
.label_1250:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1204
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_1274
.label_1204:
	mov	qword ptr [rsp + 0x58], r9
	mov	r14, r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1281
	mov	r8, r14
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x58]
	jmp	.label_1274
.label_1249:
	mov	qword ptr [rsp + 0x50], rbp
	cmp	eax, 2
	setne	al
	movzx	eax, al
	add	eax, 9
	mov	dword ptr [r12], eax
	xor	ecx, ecx
	jmp	.label_1146
.label_1268:
	mov	rdi, qword ptr [rsp + 0x50]
	jmp	.label_1298
.label_1248:
	mov	qword ptr [rsp + 0x50], r14
	mov	dword ptr [r12], 0xf
	xor	ecx, ecx
	jmp	.label_1146
.label_1190:
	mov	r14, r9
	mov	r12, r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1311
	mov	qword ptr [rsp + 0x28], rbp
	mov	r8, r12
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r9, r14
	jmp	.label_1313
.label_1311:
	mov	qword ptr [rsp + 0x80], 0
	jmp	.label_1174
.label_1281:
	mov	qword ptr [rbp], 0
.label_1174:
	mov	r12, qword ptr [rsp + 0x18]
	mov	dword ptr [r12], 0xc
	xor	ecx, ecx
.label_1146:
	test	rcx, rcx
	sete	al
	jne	.label_1139
	mov	edx, dword ptr [r12]
	test	edx, edx
	mov	rbx, qword ptr [rsp + 0x40]
	je	.label_1332
	jmp	.label_1336
	nop	word ptr cs:[rax + rax]
.label_1139:
	mov	rbx, qword ptr [rsp + 0x40]
.label_1332:
	cmp	qword ptr [rsp + 0x30], 0
	mov	rbp, rcx
	mov	r13, qword ptr [rsp + 0x38]
	je	.label_1341
	movzx	edx, byte ptr [rbx + 8]
	cmp	edx, 0x17
	je	.label_1162
	cmp	edx, 0xb
	mov	rbp, rcx
	jne	.label_1341
.label_1162:
	test	al, al
	jne	.label_1261
	mov	r14d, 0x400ff
	nop	dword ptr [rax]
.label_1135:
	mov	rbp, rcx
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	jne	.label_1135
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	jne	.label_1135
	nop	word ptr cs:[rax + rax]
.label_1133:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1275
	cmp	eax, 6
	jne	.label_1362
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_1349
	nop	dword ptr [rax]
.label_1275:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1349:
	call	free
.label_1362:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1261
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_1133
	test	rcx, rcx
	mov	rbp, rax
	je	.label_1133
	jmp	.label_1135
.label_1336:
	xor	r15d, r15d
	mov	rcx, qword ptr [rsp + 0x50]
	test	rcx, rcx
	je	.label_1138
	mov	r14d, 0x400ff
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1149:
	mov	rbp, rcx
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	jne	.label_1149
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	jne	.label_1149
	nop	word ptr cs:[rax + rax]
.label_1177:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1156
	cmp	eax, 6
	jne	.label_1158
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_1325
	nop	dword ptr [rax]
.label_1156:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1325:
	call	free
.label_1158:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1138
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_1177
	test	rcx, rcx
	mov	rbp, rax
	je	.label_1177
	jmp	.label_1149
.label_1261:
	mov	dword ptr [r12], 0xd
.label_1144:
	xor	r15d, r15d
	jmp	.label_1138
.label_1192:
	mov	r15, rbp
	jmp	.label_1138
.label_1301:
	mov	r15, rbp
.label_1138:
	mov	rax, r15
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1287:
	mov	edi, OFFSET FLAT:.str.5_1
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0xced
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.parse_bracket_exp
	call	__assert_fail
	nop	
	.section	.text
	.align	16
	#Procedure 0x40f510

	.globl build_charclass_op
	.type build_charclass_op, @function
build_charclass_op:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, r9
	mov	dword ptr [rsp + 0xc], r8d
	mov	rbp, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	r12, rdi
	mov	qword ptr [rsp + 0x10], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1390
	mov	qword ptr [rsp], r15
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	test	r15, r15
	je	.label_1392
	mov	al, byte ptr [r15 + 0x20]
	and	al, 0xfe
	mov	ecx, dword ptr [rsp + 0xc]
	or	al, cl
	mov	byte ptr [r15 + 0x20], al
	lea	rcx, [rsp + 0x10]
	xor	r9d, r9d
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, r15
	mov	r8, r14
	call	build_charclass
	mov	r14d, eax
	test	r14d, r14d
	jne	.label_1382
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_1385
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_1389:
	movsx	rcx, al
	mov	eax, 1
	shl	rax, cl
	mov	rdx, rcx
	sar	rdx, 0x3f
	shr	rdx, 0x3a
	add	rdx, rcx
	sar	rdx, 6
	or	qword ptr [rbx + rdx*8], rax
	mov	al, byte ptr [rbp]
	inc	rbp
	test	al, al
	jne	.label_1389
.label_1385:
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_1393
	movdqu	xmm0, xmmword ptr [rbx]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx], xmm0
	movdqu	xmm0, xmmword ptr [rbx + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx + 0x10], xmm0
.label_1393:
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_1381
	mov	rax, qword ptr [r12 + 0x78]
	mov	rcx, qword ptr [rax]
	and	qword ptr [rbx], rcx
	mov	rcx, qword ptr [rax + 8]
	and	qword ptr [rbx + 8], rcx
	mov	rcx, qword ptr [rax + 0x10]
	and	qword ptr [rbx + 0x10], rcx
	mov	rax, qword ptr [rax + 0x18]
	and	qword ptr [rbx + 0x18], rax
.label_1381:
	mov	ecx, dword ptr [r12 + 0x80]
	cmp	ecx, 0xf
	je	.label_1377
	mov	rax, qword ptr [r12 + 0x70]
.label_1380:
	lea	edx, [rcx + 1]
	mov	dword ptr [r12 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r14, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	qword ptr [rax + rcx + 0x30], rbx
	mov	dword ptr [rax + rcx + 0x38], 3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_1391
	or	byte ptr [r12 + 0xb0], 2
	mov	eax, dword ptr [r12 + 0x80]
	cmp	eax, 0xf
	je	.label_1378
	mov	rbp, qword ptr [r12 + 0x70]
.label_1394:
	lea	ecx, [rax + 1]
	mov	dword ptr [r12 + 0x80], ecx
	movsxd	rbx, eax
	shl	rbx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	qword ptr [rbp + rbx + 0x30], r15
	mov	dword ptr [rbp + rbx + 0x38], 6
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	mov	qword ptr [rbp + rbx + 0x40], -1
	mov	eax, dword ptr [r12 + 0x80]
	cmp	eax, 0xf
	je	.label_1387
	mov	rcx, qword ptr [r12 + 0x70]
.label_1386:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rax + 1]
	mov	dword ptr [r12 + 0x80], esi
	movsxd	rsi, eax
	shl	rsi, 6
	lea	rax, [rcx + rsi + 8]
	mov	qword ptr [rcx + rsi + 8], 0
	mov	qword ptr [rcx + rsi + 0x10], r14
	mov	qword ptr [rcx + rsi + 0x18], rdx
	mov	dword ptr [rcx + rsi + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rcx + rsi + 0x20], xmm0
	mov	qword ptr [rcx + rsi + 0x40], -1
	mov	qword ptr [r14], rax
	mov	qword ptr [rdx], rax
	jmp	.label_1383
.label_1391:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	mov	rax, r14
	jmp	.label_1383
.label_1390:
	mov	dword ptr [r15], 0xc
	jmp	.label_1384
.label_1392:
	mov	rdi, rbx
	jmp	.label_1388
.label_1382:
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], r14d
	jmp	.label_1384
.label_1377:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1379
	mov	rcx, qword ptr [r12 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r12 + 0x70], rax
	mov	dword ptr [r12 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1380
.label_1378:
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1379
	mov	rax, qword ptr [r12 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r12 + 0x70], rbp
	mov	dword ptr [r12 + 0x80], 0
	xor	eax, eax
	jmp	.label_1394
.label_1379:
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
.label_1388:
	call	free
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
.label_1384:
	xor	eax, eax
.label_1383:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1387:
	mov	edi, 0x3c8
	call	malloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_1383
	mov	rdx, qword ptr [r12 + 0x70]
	mov	qword ptr [rcx], rdx
	mov	qword ptr [r12 + 0x70], rcx
	mov	dword ptr [r12 + 0x80], 0
	jmp	.label_1386
	nop	
	.section	.text
	.align	16
	#Procedure 0x40f8e0

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	mov	rax, qword ptr [rsi + 0x48]
	cmp	qword ptr [rsi + 0x68], rax
	jle	.label_1403
	mov	rcx, qword ptr [rsi + 8]
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	dword ptr [rsi + 0x90], 2
	jl	.label_1406
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, qword ptr [rsi + 0x30]
	je	.label_1406
	mov	rcx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rcx + r8*4], -1
	je	.label_1405
.label_1406:
	test	dl, 1
	je	.label_1400
	movzx	ecx, al
	cmp	ecx, 0x5c
	jne	.label_1400
	mov	rcx, qword ptr [rsi + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rsi + 0x58]
	jge	.label_1400
	mov	qword ptr [rsi + 0x48], rcx
	mov	rax, qword ptr [rsi + 8]
	mov	al, byte ptr [rax + rcx]
	mov	byte ptr [rdi], al
	jmp	.label_1405
.label_1403:
	mov	byte ptr [rdi + 8], 2
	xor	eax, eax
	ret	
.label_1400:
	cmp	eax, 0x5b
	jne	.label_1395
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	cmp	rax, qword ptr [rsi + 0x58]
	jge	.label_1396
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	jmp	.label_1401
.label_1395:
	cmp	eax, 0x5e
	je	.label_1402
	cmp	eax, 0x5d
	je	.label_1404
	cmp	eax, 0x2d
	jne	.label_1405
	mov	byte ptr [rdi + 8], 0x16
	mov	eax, 1
	ret	
.label_1405:
	mov	byte ptr [rdi + 8], 1
	mov	eax, 1
	ret	
.label_1396:
	xor	eax, eax
.label_1401:
	mov	byte ptr [rdi], al
	movzx	eax, al
	cmp	eax, 0x3d
	je	.label_1398
	cmp	eax, 0x3a
	je	.label_1397
	cmp	eax, 0x2e
	jne	.label_1399
	mov	byte ptr [rdi + 8], 0x1a
	mov	eax, 2
	ret	
.label_1404:
	mov	byte ptr [rdi + 8], 0x15
	mov	eax, 1
	ret	
.label_1397:
	test	dl, 4
	jne	.label_1407
.label_1399:
	mov	byte ptr [rdi + 8], 1
	mov	byte ptr [rdi], 0x5b
	mov	eax, 1
	ret	
.label_1402:
	mov	byte ptr [rdi + 8], 0x19
	mov	eax, 1
	ret	
.label_1398:
	mov	byte ptr [rdi + 8], 0x1c
	mov	eax, 2
	ret	
.label_1407:
	mov	byte ptr [rdi + 8], 0x1e
	mov	eax, 2
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f9e0

	.globl parse_bracket_element
	.type parse_bracket_element, @function
parse_bracket_element:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, rdx
	mov	r14, rdi
	mov	rdx, qword ptr [rsi + 0x48]
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_1414
	lea	rax, [rdx + 1]
	mov	rbx, qword ptr [rsi + 0x30]
	cmp	rax, rbx
	jge	.label_1414
	mov	r10, qword ptr [rsi + 0x10]
	lea	r11, [r10 + rdx*4]
	mov	edi, 1
	nop	dword ptr [rax + rax]
.label_1419:
	cmp	dword ptr [r11 + rdi*4], -1
	jne	.label_1415
	lea	rax, [rdx + rdi + 1]
	inc	rdi
	cmp	rax, rbx
	jl	.label_1419
.label_1415:
	cmp	edi, 2
	jl	.label_1414
	mov	dword ptr [r14], 1
	mov	eax, dword ptr [r10 + rdx*4]
	mov	dword ptr [r14 + 8], eax
	movsxd	rax, edi
	add	rax, rdx
	mov	qword ptr [rsi + 0x48], rax
	jmp	.label_1420
.label_1414:
	movsxd	rax, ecx
	add	rdx, rax
	mov	qword ptr [rsi + 0x48], rdx
	movzx	edi, byte ptr [r15 + 8]
	lea	eax, [rdi - 0x16]
	cmp	eax, 8
	ja	.label_1424
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1428]]
.label_2397:
	mov	eax, 7
	cmp	qword ptr [rsi + 0x68], rdx
	jle	.label_1408
	mov	r11b, byte ptr [r15]
	xor	r12d, r12d
	jmp	.label_1409
.label_1429:
	inc	r12
	movzx	edi, byte ptr [r15 + 8]
.label_1409:
	movzx	edi, dil
	cmp	edi, 0x1e
	jne	.label_1413
	cmp	byte ptr [rsi + 0x8b], 0
	jne	.label_1416
	mov	rbx, qword ptr [rsi + 0x48]
	lea	rdi, [rbx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + rbx]
	jmp	.label_1418
	nop	
.label_1413:
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbx, qword ptr [rsi + 8]
.label_1411:
	mov	bl, byte ptr [rbx + rdx]
.label_1418:
	cmp	qword ptr [rsi + 0x68], rdi
	jle	.label_1408
	movzx	edx, r11b
	movzx	ecx, bl
	cmp	ecx, edx
	jne	.label_1426
	mov	rcx, qword ptr [rsi + 8]
	movzx	ecx, byte ptr [rcx + rdi]
	cmp	ecx, 0x5d
	je	.label_1427
.label_1426:
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + r12], bl
	cmp	r12, 0x1e
	jle	.label_1429
	jmp	.label_1408
.label_1416:
	cmp	byte ptr [rsi + 0x8c], 0
	je	.label_1410
	mov	r9, qword ptr [rsi + 0x30]
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, r9
	je	.label_1412
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rdx + r8*4], -1
	je	.label_1417
.label_1412:
	mov	rdx, qword ptr [rsi]
	mov	rdi, qword ptr [rsi + 0x18]
	mov	rbx, qword ptr [rsi + 0x28]
	add	rbx, qword ptr [rdi + r8*8]
	mov	bl, byte ptr [rdx + rbx]
	test	bl, bl
	js	.label_1417
	mov	edi, 1
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_1423
	lea	rdx, [r8 + 1]
	cmp	rdx, r9
	jge	.label_1423
	lea	r10, [r8*4]
	add	r10, qword ptr [rsi + 0x10]
	mov	edi, 1
.label_1422:
	cmp	dword ptr [r10 + rdi*4], -1
	jne	.label_1423
	lea	rdx, [r8 + rdi + 1]
	inc	rdi
	cmp	rdx, r9
	jl	.label_1422
.label_1423:
	movsxd	rdi, edi
	add	rdi, r8
	mov	qword ptr [rsi + 0x48], rdi
	jmp	.label_1418
.label_1410:
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	add	rdx, qword ptr [rsi + 0x28]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbx, qword ptr [rsi]
	jmp	.label_1411
.label_1417:
	lea	rdi, [r8 + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + r8]
	jmp	.label_1418
.label_1427:
	inc	rdi
	mov	qword ptr [rsi + 0x48], rdi
	movsxd	rax, r12d
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rax], 0
	movzx	ecx, byte ptr [r15 + 8]
	xor	eax, eax
	cmp	ecx, 0x1e
	je	.label_1421
	cmp	ecx, 0x1c
	je	.label_1425
	cmp	ecx, 0x1a
	jne	.label_1408
	mov	dword ptr [r14], 3
	jmp	.label_1408
.label_1421:
	mov	dword ptr [r14], 4
	jmp	.label_1408
.label_1425:
	mov	dword ptr [r14], 2
	jmp	.label_1408
.label_2396:
	test	r9b, r9b
	jne	.label_1424
	lea	rdi, [rsp + 8]
	mov	rdx, r8
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x10]
	mov	eax, 0xb
	cmp	ecx, 0x15
	jne	.label_1408
.label_1424:
	mov	dword ptr [r14], 0
	mov	al, byte ptr [r15]
	mov	byte ptr [r14 + 8], al
.label_1420:
	xor	eax, eax
.label_1408:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fc40

	.globl build_charclass
	.type build_charclass, @function
build_charclass:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, r8
	mov	r13, rcx
	mov	rbx, rdx
	mov	r15, rsi
	mov	r14, rdi
	test	r9d, 0x400000
	je	.label_1456
	mov	esi, OFFSET FLAT:.str.7_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1459
	mov	esi, OFFSET FLAT:.str.8_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	jne	.label_1456
.label_1459:
	mov	r12d, OFFSET FLAT:.str.9_1
.label_1456:
	mov	rbp, qword ptr [r13]
	cmp	rbp, qword ptr [rbx + 0x48]
	je	.label_1463
.label_1443:
	mov	rdi, r12
	call	wctype
	mov	rcx, qword ptr [rbx + 0x48]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x48], rdx
	mov	rdx, qword ptr [rbx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1476
	mov	esi, OFFSET FLAT:.str.10_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1481
	mov	esi, OFFSET FLAT:.str.8_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1488
	mov	esi, OFFSET FLAT:.str.3_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1431
	mov	esi, OFFSET FLAT:.str.9_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1437
	mov	esi, OFFSET FLAT:.str.11_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1442
	mov	esi, OFFSET FLAT:.str.12_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1447
	mov	esi, OFFSET FLAT:.str.7_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1493
	mov	esi, OFFSET FLAT:.str.13_0
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1457
	mov	esi, OFFSET FLAT:.str.14_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1491
	mov	esi, OFFSET FLAT:.str.15_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1473
	mov	esi, OFFSET FLAT:.str.16_0
	mov	rdi, r12
	call	strcmp
	mov	ecx, eax
	mov	eax, 4
	test	ecx, ecx
	jne	.label_1430
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1438
.label_1489:
	test	byte ptr [rsi + rdx*2 + 1], 0x10
	je	.label_1479
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1479:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1489
	jmp	.label_1430
.label_1476:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1433
	nop	word ptr cs:[rax + rax]
.label_1449:
	test	byte ptr [rsi + rdx*2], 8
	je	.label_1475
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1475:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1449
	jmp	.label_1430
	nop	dword ptr [rax]
.label_1433:
	test	byte ptr [rsi + rdx*2], 8
	je	.label_1455
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1455:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1433
	jmp	.label_1430
.label_1481:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1465
	nop	
.label_1478:
	test	byte ptr [rsi + rdx*2], 2
	je	.label_1470
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1470:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1478
	jmp	.label_1430
	nop	dword ptr [rax]
.label_1465:
	test	byte ptr [rsi + rdx*2], 2
	je	.label_1483
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1483:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1465
	jmp	.label_1430
.label_1488:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1436
	nop	
.label_1450:
	test	byte ptr [rsi + rdx*2 + 1], 2
	je	.label_1474
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1474:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1450
	jmp	.label_1430
	nop	word ptr [rax + rax]
.label_1436:
	test	byte ptr [rsi + rdx*2 + 1], 2
	je	.label_1448
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1448:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1436
	jmp	.label_1430
.label_1431:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1466
	nop	
.label_1471:
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	je	.label_1477
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1477:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1471
	jmp	.label_1430
.label_1466:
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	je	.label_1482
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1482:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1466
	jmp	.label_1430
.label_1463:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1430
	lea	rax, [rbp + rbp + 1]
	mov	qword ptr [rbx + 0x18], rcx
	mov	qword ptr [r13], rax
	jmp	.label_1443
.label_1437:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1472
	nop	word ptr cs:[rax + rax]
.label_1461:
	test	byte ptr [rsi + rdx*2 + 1], 4
	je	.label_1451
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1451:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1461
	jmp	.label_1430
.label_1472:
	test	byte ptr [rsi + rdx*2 + 1], 4
	je	.label_1468
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1468:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1472
	jmp	.label_1430
.label_1442:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1444
	nop	dword ptr [rax]
.label_1432:
	test	byte ptr [rsi + rdx*2 + 1], 8
	je	.label_1453
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1453:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1432
	jmp	.label_1430
.label_1444:
	test	byte ptr [rsi + rdx*2 + 1], 8
	je	.label_1439
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1439:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1444
	jmp	.label_1430
.label_1447:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1452
	nop	dword ptr [rax]
.label_1485:
	test	byte ptr [rsi + rdx*2 + 1], 0x40
	je	.label_1454
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1454:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1485
	jmp	.label_1430
.label_1452:
	test	byte ptr [rsi + rdx*2 + 1], 0x40
	je	.label_1469
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1469:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1452
	jmp	.label_1430
.label_1493:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1462
	nop	dword ptr [rax]
.label_1486:
	test	byte ptr [rsi + rdx*2 + 1], 1
	je	.label_1487
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1487:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1486
	jmp	.label_1430
.label_1462:
	test	byte ptr [rsi + rdx*2 + 1], 1
	je	.label_1440
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1440:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1462
	jmp	.label_1430
.label_1457:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1446
	nop	dword ptr [rax]
.label_1441:
	test	byte ptr [rsi + rdx*2], 1
	je	.label_1492
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1492:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1441
	jmp	.label_1430
.label_1446:
	test	byte ptr [rsi + rdx*2], 1
	je	.label_1467
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1467:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1446
	jmp	.label_1430
.label_1491:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1480
.label_1490:
	cmp	word ptr [rsi + rdx*2], 0
	jns	.label_1434
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1434:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1490
	jmp	.label_1430
.label_1480:
	cmp	word ptr [rsi + rdx*2], 0
	jns	.label_1435
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1435:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1480
	jmp	.label_1430
.label_1438:
	test	byte ptr [rsi + rdx*2 + 1], 0x10
	je	.label_1445
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1445:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1438
	jmp	.label_1430
.label_1473:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1464
.label_1484:
	test	byte ptr [rsi + rdx*2], 4
	je	.label_1460
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1460:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1484
.label_1430:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1464:
	test	byte ptr [rsi + rdx*2], 4
	je	.label_1458
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1458:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1464
	jmp	.label_1430
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4103f0

	.globl optimize_subexps
	.type optimize_subexps, @function
optimize_subexps:
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 0x11
	je	.label_1494
	cmp	eax, 4
	jne	.label_1495
	mov	rax, qword ptr [rdi + 0xe0]
	test	rax, rax
	je	.label_1495
	movsxd	rcx, dword ptr [rsi + 0x28]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	qword ptr [rsi + 0x28], rcx
	mov	eax, 1
	shl	eax, cl
	cdqe	
	or	qword ptr [rdi + 0xa0], rax
	xor	eax, eax
	ret	
.label_1494:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_1495
	movzx	ecx, byte ptr [rax + 0x30]
	cmp	ecx, 0x11
	jne	.label_1495
	mov	rdx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rax + 0x28]
	mov	qword ptr [rsi + 8], rdx
	test	rdx, rdx
	je	.label_1496
	mov	qword ptr [rdx], rsi
.label_1496:
	mov	rax, qword ptr [rsi + 0x28]
	mov	rdx, qword ptr [rdi + 0xe0]
	mov	rax, qword ptr [rdx + rax*8]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	rcx, 0x3f
	jg	.label_1495
	mov	rax, -2
	rol	rax, cl
	and	qword ptr [rdi + 0xa0], rax
.label_1495:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410480

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rcx, qword ptr [rsi + 0x38]
	movzx	edx, byte ptr [rsi + 0x30]
	lea	ebx, [rdx - 2]
	cmp	ebx, 0xe
	ja	.label_1497
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rbx * 8) + label_1503]]
.label_2358:
	mov	r14, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	rax, qword ptr [rsi + 0x20]
	mov	r15, qword ptr [rax + 0x38]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1506]]
	movups	xmmword ptr [r14 + rbx*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + rbx*8 + 0x10], rax
	test	rax, rax
	je	.label_1501
	mov	qword ptr [rax], r15
	jmp	.label_1500
.label_2359:
	or	byte ptr [rdi + 0xb0], 1
	mov	rax, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	add	rsi, 0x20
	test	rax, rax
	lea	rax, [rax + 0x18]
	cmove	rax, rsi
	mov	rax, qword ptr [rax]
	mov	r14, qword ptr [rax + 0x38]
	test	rdx, rdx
	lea	rax, [rdx + 0x18]
	cmove	rax, rsi
	test	r14, r14
	js	.label_1505
	mov	rax, qword ptr [rax]
	mov	r15, qword ptr [rax + 0x38]
	test	r15, r15
	js	.label_1504
	mov	r12, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	qword ptr [r12 + rbx*8], 2
	mov	edi, 0x10
	call	malloc
	mov	rcx, rax
	mov	qword ptr [r12 + rbx*8 + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1499
	lea	rax, [r12 + rbx*8 + 8]
	cmp	r14, r15
	jne	.label_1509
	mov	qword ptr [rax], 1
	mov	qword ptr [rcx], r14
	jmp	.label_1500
.label_2356:
	cmp	qword ptr [rsi + 0x20], 0
	mov	eax, 0
	je	.label_1499
	mov	edi, OFFSET FLAT:.str.17_2
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x59f
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_2357:
	mov	rax, qword ptr [rsi + 0x20]
	mov	rbx, qword ptr [rax + 0x38]
	mov	rax, qword ptr [rdi + 0x18]
	mov	qword ptr [rax + rcx*8], rbx
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 4
	jne	.label_1500
	mov	r14, qword ptr [rdi + 0x28]
	lea	r15, [rcx + rcx*2]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1506]]
	movups	xmmword ptr [r14 + r15*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + r15*8 + 0x10], rax
	test	rax, rax
	je	.label_1502
	mov	qword ptr [rax], rbx
	jmp	.label_1500
.label_1497:
	test	dl, 8
	jne	.label_1507
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_1500
.label_1509:
	mov	qword ptr [rax], 2
	jge	.label_1498
	mov	qword ptr [rcx], r14
	mov	qword ptr [rcx + 8], r15
	jmp	.label_1500
.label_1498:
	mov	qword ptr [rcx], r15
	mov	qword ptr [rcx + 8], r14
.label_1500:
	xor	eax, eax
.label_1499:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1501:
	lea	rax, [r14 + rbx*8]
.label_1508:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	eax, 0xc
	jmp	.label_1499
.label_1502:
	lea	rax, [r14 + r15*8]
	jmp	.label_1508
.label_1505:
	mov	edi, OFFSET FLAT:.str.18_2
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5af
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_1504:
	mov	edi, OFFSET FLAT:.str.19_1
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5b0
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_1507:
	mov	edi, OFFSET FLAT:.str.20_0
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410690

	.globl lower_subexp
	.type lower_subexp, @function
lower_subexp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbp, rdi
	mov	rbx, qword ptr [rsi]
	mov	r13, qword ptr [r14 + 8]
	test	r13, r13
	je	.label_1517
	mov	al, byte ptr [rsi + 0x38]
	and	al, 0x10
	je	.label_1517
	mov	rax, qword ptr [r14 + 0x28]
	cmp	rax, 0x3f
	jg	.label_1511
	mov	rcx, qword ptr [rbx + 0xa0]
	bt	rcx, rax
	jae	.label_1511
.label_1517:
	mov	r12d, dword ptr [rbx + 0x80]
	cmp	r12d, 0xf
	je	.label_1522
	mov	rax, qword ptr [rbx + 0x70]
.label_1515:
	lea	ecx, [r12 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r12d
	shl	rcx, 6
	lea	r12, [rax + rcx + 8]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 8
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1510:
	mov	qword ptr [rsp], rbp
	mov	r15d, dword ptr [rbx + 0x80]
	cmp	r15d, 0xf
	je	.label_1519
	mov	rax, qword ptr [rbx + 0x70]
.label_1524:
	lea	ecx, [r15 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r15d
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 9
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1521:
	test	r13, r13
	mov	rbp, r15
	je	.label_1518
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	je	.label_1513
	mov	rax, qword ptr [rbx + 0x70]
.label_1516:
	lea	ecx, [rbp + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r13
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r13], rbp
	test	r15, r15
	je	.label_1518
	mov	qword ptr [r15], rbp
.label_1518:
	mov	r13d, dword ptr [rbx + 0x80]
	cmp	r13d, 0xf
	je	.label_1525
	mov	rax, qword ptr [rbx + 0x70]
.label_1520:
	lea	ecx, [r13 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r13d
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	r12, r12
	je	.label_1523
	mov	qword ptr [r12], r13
.label_1523:
	test	rbp, rbp
	je	.label_1512
	mov	qword ptr [rbp], r13
.label_1512:
	test	r15, r15
	je	.label_1514
	test	r12, r12
	je	.label_1514
	test	rbp, rbp
	je	.label_1514
	test	r13, r13
	je	.label_1514
	mov	rax, qword ptr [r14 + 0x28]
	mov	qword ptr [r15 + 0x28], rax
	mov	qword ptr [r12 + 0x28], rax
	mov	eax, 0x80000
	and	eax, dword ptr [r14 + 0x30]
	mov	ecx, 0xfff7ffff
	mov	edx, dword ptr [r15 + 0x30]
	and	edx, ecx
	or	edx, eax
	mov	dword ptr [r15 + 0x30], edx
	and	ecx, dword ptr [r12 + 0x30]
	or	ecx, eax
	mov	dword ptr [r12 + 0x30], ecx
.label_1511:
	mov	rax, r13
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1522:
	mov	edi, 0x3c8
	call	malloc
	xor	r12d, r12d
	test	rax, rax
	je	.label_1510
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1515
.label_1519:
	mov	edi, 0x3c8
	call	malloc
	xor	r15d, r15d
	test	rax, rax
	je	.label_1521
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1524
.label_1525:
	mov	edi, 0x3c8
	call	malloc
	xor	r13d, r13d
	test	rax, rax
	je	.label_1512
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1520
.label_1514:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	xor	r13d, r13d
	jmp	.label_1511
.label_1513:
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_1518
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1516
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410990

	.globl re_dfa_add_node
	.type re_dfa_add_node, @function
re_dfa_add_node:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rdx
	mov	r12, rsi
	mov	rbx, rdi
	mov	r13, qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, r13
	jae	.label_1529
.label_1528:
	mov	rcx, qword ptr [rbx]
	shl	rax, 4
	mov	qword ptr [rcx + rax], r12
	mov	qword ptr [rcx + rax + 8], r14
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x10]
	shl	rcx, 4
	and	dword ptr [rax + rcx + 8], 0xfffc00ff
	movzx	eax, r14b
	cmp	eax, 5
	jne	.label_1531
	mov	cl, 1
	cmp	dword ptr [rbx + 0xb4], 1
	jg	.label_1530
.label_1531:
	cmp	eax, 6
	sete	cl
.label_1530:
	movzx	eax, cl
	mov	rcx, qword ptr [rbx]
	mov	rdx, qword ptr [rbx + 0x10]
	shl	rdx, 4
	shl	eax, 0x14
	mov	esi, 0xffefffff
	and	esi, dword ptr [rcx + rdx + 8]
	or	esi, eax
	mov	dword ptr [rcx + rdx + 8], esi
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	qword ptr [rcx + rax*8], -1
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x28]
	lea	rax, [rax + rax*2]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rcx + rax*8], xmm0
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x30]
	lea	rax, [rax + rax*2]
	movups	xmmword ptr [rcx + rax*8], xmm0
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	mov	r15, qword ptr [rbx + 0x10]
	lea	rax, [r15 + 1]
	mov	qword ptr [rbx + 0x10], rax
.label_1527:
	mov	rax, r15
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1529:
	lea	rbp, [r13 + r13]
	mov	r15, -1
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rbp, rax
	ja	.label_1527
	mov	rdi, qword ptr [rbx]
	mov	rsi, r13
	shl	rsi, 5
	call	realloc
	test	rax, rax
	je	.label_1527
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rbx], rax
	mov	rdi, qword ptr [rbx + 0x18]
	shl	r13, 4
	mov	rsi, r13
	call	realloc
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsi, r13
	call	realloc
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rbp, [r13 + r13*2]
	mov	rsi, rbp
	call	realloc
	mov	r13, rax
	mov	rdi, qword ptr [rbx + 0x30]
	mov	rsi, rbp
	call	realloc
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x10]
	test	rdi, rdi
	je	.label_1526
	test	rax, rax
	je	.label_1526
	test	r13, r13
	je	.label_1526
	test	rbp, rbp
	je	.label_1526
	mov	qword ptr [rbx + 0x18], rdi
	mov	qword ptr [rbx + 0x20], rax
	mov	qword ptr [rbx + 0x28], r13
	mov	qword ptr [rbx + 0x30], rbp
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	jmp	.label_1528
.label_1526:
	mov	rbx, rax
	call	free
	mov	rdi, rbx
	call	free
	mov	rdi, r13
	call	free
	mov	rdi, rbp
	call	free
	jmp	.label_1527
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410b60

	.globl calc_eclosure_iter
	.type calc_eclosure_iter, @function
calc_eclosure_iter:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	dword ptr [rsp + 4], ecx
	mov	r12, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	r15, qword ptr [rbp + 0x28]
	lea	r14, [r12 + r12*2]
	mov	rax, qword ptr [r15 + r14*8 + 8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x38], 0
	lea	rdi, [rax*8 + 8]
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rsp + 0x40], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1533
	mov	qword ptr [rsp + 8], rbx
	mov	rax, qword ptr [rbp + 0x30]
	mov	qword ptr [rax + r14*8 + 8], -1
	mov	rcx, qword ptr [rbp]
	mov	rbx, r12
	shl	rbx, 4
	mov	eax, dword ptr [rcx + rbx + 8]
	mov	r8d, eax
	shr	r8d, 8
	and	r8d, 0x3ff
	je	.label_1541
	lea	rdx, [r15 + r14*8 + 8]
	cmp	qword ptr [rdx], 0
	je	.label_1541
	mov	rdx, qword ptr [r15 + r14*8 + 0x10]
	mov	rdx, qword ptr [rdx]
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 0xa], 4
	jne	.label_1541
	mov	rdi, rbp
	mov	rsi, r12
	mov	rdx, r12
	mov	rcx, r12
	call	duplicate_node_closure
	test	eax, eax
	jne	.label_1533
	mov	rax, qword ptr [rbp]
	mov	eax, dword ptr [rax + rbx + 8]
.label_1541:
	mov	rbx, r12
	test	al, 8
	jne	.label_1540
	xor	r15d, r15d
	jmp	.label_1542
.label_1540:
	mov	rax, qword ptr [rbp + 0x28]
	cmp	qword ptr [rax + r14*8 + 8], 0
	jle	.label_1539
	xor	r15d, r15d
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_1538:
	mov	rax, qword ptr [rax + r14*8 + 0x10]
	mov	rdx, qword ptr [rax + r13*8]
	mov	rax, qword ptr [rbp + 0x30]
	lea	r12, [rdx + rdx*2]
	mov	rcx, qword ptr [rax + r12*8 + 8]
	cmp	rcx, -1
	je	.label_1532
	test	rcx, rcx
	jne	.label_1543
	xor	ecx, ecx
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbp
	call	calc_eclosure_iter
	test	eax, eax
	je	.label_1535
	jmp	.label_1533
	nop	dword ptr [rax]
.label_1543:
	mov	rcx, qword ptr [rax + r12*8 + 0x10]
	mov	qword ptr [rsp + 0x20], rcx
	movups	xmm0, xmmword ptr [rax + r12*8]
	movaps	xmmword ptr [rsp + 0x10], xmm0
.label_1535:
	lea	rdi, [rsp + 0x30]
	lea	rsi, [rsp + 0x10]
	call	re_node_set_merge
	test	eax, eax
	jne	.label_1533
	mov	rax, qword ptr [rbp + 0x30]
	cmp	qword ptr [rax + r12*8 + 8], 0
	jne	.label_1534
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
.label_1532:
	mov	r15b, 1
.label_1534:
	inc	r13
	mov	rax, qword ptr [rbp + 0x28]
	cmp	r13, qword ptr [rax + r14*8 + 8]
	jl	.label_1538
	jmp	.label_1542
.label_1539:
	xor	r15d, r15d
.label_1542:
	lea	rdi, [rsp + 0x30]
	mov	rsi, rbx
	call	re_node_set_insert
	test	al, al
	mov	eax, 0xc
	je	.label_1533
	test	r15b, 1
	mov	rax, qword ptr [rbp + 0x30]
	je	.label_1536
	mov	ecx, dword ptr [rsp + 4]
	test	cl, cl
	jne	.label_1536
	mov	qword ptr [rax + r14*8 + 8], 0
	jmp	.label_1537
.label_1536:
	mov	rcx, qword ptr [rsp + 0x40]
	mov	qword ptr [rax + r14*8 + 0x10], rcx
	movups	xmm0, xmmword ptr [rsp + 0x30]
	movups	xmmword ptr [rax + r14*8], xmm0
.label_1537:
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [rcx + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x30]
	movups	xmmword ptr [rcx], xmm0
	xor	eax, eax
.label_1533:
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
	#Procedure 0x410d70

	.globl duplicate_node_closure
	.type duplicate_node_closure, @function
duplicate_node_closure:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13d, r8d
	mov	qword ptr [rsp + 8], rcx
	mov	rbx, rdx
	mov	r12, rsi
	mov	r14, rdi
.label_1557:
	mov	dword ptr [rsp + 0x14], r13d
	mov	eax, r13d
	shl	eax, 8
	and	eax, 0x3ff00
	mov	dword ptr [rsp + 0x20], eax
	mov	r15, r12
	nop	word ptr cs:[rax + rax]
.label_1548:
	mov	rax, qword ptr [r14]
	mov	rdx, r15
	shl	rdx, 4
	movzx	ecx, byte ptr [rax + rdx + 8]
	cmp	ecx, 4
	jne	.label_1549
	mov	rcx, qword ptr [r14 + 0x18]
	mov	rdx, qword ptr [r14 + 0x28]
	mov	r13, qword ptr [rcx + r15*8]
	lea	r12, [rbx + rbx*2]
	mov	qword ptr [rdx + r12*8 + 8], 0
	mov	rbp, r13
	shl	rbp, 4
	mov	rsi, qword ptr [rax + rbp]
	mov	rdx, qword ptr [rax + rbp + 8]
	mov	rdi, r14
	mov	qword ptr [rsp + 0x18], rbx
	call	re_dfa_add_node
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_1560
	mov	dword ptr [rsp + 0x24], 0xc
	mov	rax, qword ptr [r14]
	mov	rcx, rbx
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0x20]
	mov	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r14]
	mov	edx, dword ptr [rax + rbp + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r14]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rax + rbx*8], r13
	mov	rax, qword ptr [r14 + 0x18]
	mov	rcx, qword ptr [rax + r15*8]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	qword ptr [rax + rdx*8], rcx
	mov	rax, qword ptr [r14 + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, rbx
	call	re_node_set_insert
	test	al, al
	mov	r15, r13
	mov	r13d, dword ptr [rsp + 0x14]
	jne	.label_1548
	jmp	.label_1545
	nop	dword ptr [rax + rax]
.label_1549:
	mov	rcx, qword ptr [r14 + 0x28]
	lea	rbp, [r15 + r15*2]
	mov	rsi, qword ptr [rcx + rbp*8 + 8]
	test	rsi, rsi
	je	.label_1558
	mov	rdi, qword ptr [rcx + rbp*8 + 0x10]
	mov	r12, qword ptr [rdi]
	lea	rdi, [rbx + rbx*2]
	mov	qword ptr [rcx + rdi*8 + 8], 0
	cmp	rsi, 1
	je	.label_1551
	mov	qword ptr [rsp + 0x18], rbp
	mov	r15, rdi
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi - 1]
	test	rsi, rsi
	jle	.label_1546
	mov	rdx, rsi
	shl	rdx, 4
	mov	ebp, dword ptr [rax + rdx + 8]
	mov	edx, ebp
	and	edx, 0x40000
	je	.label_1546
	mov	rdx, qword ptr [r14 + 0x20]
	shl	rdi, 4
	lea	rdi, [rax + rdi - 0x18]
.label_1547:
	cmp	qword ptr [rdx + rsi*8], r12
	jne	.label_1544
	shr	ebp, 8
	and	ebp, 0x3ff
	cmp	ebp, r13d
	je	.label_1550
.label_1544:
	dec	rsi
	test	rsi, rsi
	jle	.label_1546
	mov	ebp, dword ptr [rdi]
	mov	ebx, ebp
	and	ebx, 0x40000
	add	rdi, -0x10
	test	ebx, ebx
	jne	.label_1547
	jmp	.label_1546
.label_1550:
	cmp	rsi, -1
	je	.label_1546
	mov	rbp, r15
	lea	rdi, [rcx + rbp*8]
	call	re_node_set_insert
	mov	dword ptr [rsp + 0x24], 0xc
	test	al, al
	jne	.label_1555
	jmp	.label_1545
	nop	word ptr [rax + rax]
.label_1546:
	mov	rbp, r12
	shl	rbp, 4
	mov	rsi, qword ptr [rax + rbp]
	mov	rdx, qword ptr [rax + rbp + 8]
	mov	rdi, r14
	call	re_dfa_add_node
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_1559
	mov	dword ptr [rsp + 0x24], 0xc
	mov	rax, qword ptr [r14]
	mov	rcx, rbx
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0x20]
	mov	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r14]
	mov	edx, dword ptr [rax + rbp + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r14]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rax + rbx*8], r12
	mov	rax, qword ptr [r14 + 0x28]
	mov	rbp, r15
	lea	rdi, [rax + rbp*8]
	mov	rsi, rbx
	call	re_node_set_insert
	test	al, al
	je	.label_1545
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 8]
	mov	r8d, r13d
	call	duplicate_node_closure
	mov	dword ptr [rsp + 0x24], eax
	test	eax, eax
	jne	.label_1545
.label_1555:
	mov	rax, qword ptr [r14]
	mov	rcx, qword ptr [r14 + 0x28]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	mov	r15, qword ptr [rcx + 8]
	mov	rbx, r15
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r14
	call	re_dfa_add_node
	cmp	rax, -1
	je	.label_1554
	mov	dword ptr [rsp + 0x24], 0xc
	mov	rdi, qword ptr [r14]
	mov	rcx, rax
	shl	rcx, 4
	mov	edx, dword ptr [rdi + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0x20]
	mov	dword ptr [rdi + rcx + 8], edx
	mov	rdi, qword ptr [r14]
	mov	edx, dword ptr [rdi + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rdi + rcx + 8], edx
	mov	rdx, qword ptr [r14]
	or	dword ptr [rdx + rcx + 8], 0x40000
	mov	rcx, qword ptr [r14 + 0x20]
	mov	qword ptr [rcx + rax*8], r15
	mov	rcx, qword ptr [r14 + 0x28]
	lea	rdi, [rcx + rbp*8]
	mov	rsi, rax
	mov	rbx, rax
	call	re_node_set_insert
	test	al, al
	jne	.label_1548
	jmp	.label_1545
.label_1551:
	cmp	r15, qword ptr [rsp + 8]
	jne	.label_1552
	cmp	rbx, r15
	jne	.label_1553
.label_1552:
	mov	r15, rdi
	lea	rcx, [rax + rdx + 8]
	mov	ebp, dword ptr [rcx]
	mov	rbx, r12
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r14
	call	re_dfa_add_node
	mov	dword ptr [rsp + 0x24], 0xc
	cmp	rax, -1
	je	.label_1545
	shr	ebp, 8
	and	ebp, 0x3ff
	or	r13d, ebp
	mov	rbp, qword ptr [r14]
	mov	rcx, rax
	shl	rcx, 4
	mov	edx, r13d
	shl	edx, 8
	and	edx, 0x3ff00
	mov	esi, dword ptr [rbp + rcx + 8]
	mov	edi, 0xfffc00ff
	and	esi, edi
	or	esi, edx
	mov	dword ptr [rbp + rcx + 8], esi
	mov	rdi, qword ptr [r14]
	mov	edx, dword ptr [rdi + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rdi + rcx + 8], edx
	mov	rdx, qword ptr [r14]
	or	dword ptr [rdx + rcx + 8], 0x40000
	mov	rcx, qword ptr [r14 + 0x20]
	mov	qword ptr [rcx + rax*8], r12
	mov	rcx, qword ptr [r14 + 0x28]
	lea	rdi, [rcx + r15*8]
	mov	rsi, rax
	mov	rbx, rax
	call	re_node_set_insert
	test	al, al
	jne	.label_1557
	jmp	.label_1545
.label_1560:
	mov	dword ptr [rsp + 0x24], 0xc
	jmp	.label_1545
.label_1559:
	mov	dword ptr [rsp + 0x24], 0xc
	jmp	.label_1545
.label_1554:
	mov	dword ptr [rsp + 0x24], 0xc
	jmp	.label_1545
.label_1558:
	mov	rax, qword ptr [r14 + 0x18]
	mov	rcx, qword ptr [rax + r15*8]
	mov	qword ptr [rax + rbx*8], rcx
.label_1556:
	mov	dword ptr [rsp + 0x24], 0
.label_1545:
	mov	eax, dword ptr [rsp + 0x24]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1553:
	lea	rdi, [rcx + rdi*8]
	mov	rsi, r12
	call	re_node_set_insert
	mov	dword ptr [rsp + 0x24], 0xc
	test	al, al
	je	.label_1545
	jmp	.label_1556
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4111d0

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	test	r15, r15
	je	.label_1562
	mov	rax, qword ptr [r15 + 8]
	test	rax, rax
	je	.label_1562
	mov	rbx, qword ptr [r14]
	mov	rcx, qword ptr [r14 + 8]
	lea	rdx, [rcx + rax*2]
	cmp	rbx, rdx
	jge	.label_1569
	add	rbx, rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, rbx
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1565
	add	rbx, rbx
	mov	qword ptr [r14 + 0x10], rcx
	mov	qword ptr [r14], rbx
	mov	rcx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 8]
.label_1569:
	test	rcx, rcx
	je	.label_1571
	lea	rbx, [rcx + rax*2]
	dec	rax
	dec	rcx
	mov	rdx, rax
	or	rdx, rcx
	js	.label_1561
	mov	rdx, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	jmp	.label_1564
.label_1568:
	dec	rax
.label_1572:
	dec	rcx
	jmp	.label_1567
	nop	word ptr cs:[rax + rax]
.label_1564:
	mov	rdi, qword ptr [rsi + rax*8]
	cmp	qword ptr [rdx + rcx*8], rdi
	je	.label_1568
	jge	.label_1572
	dec	rax
	mov	qword ptr [rdx + rbx*8 - 8], rdi
	dec	rbx
.label_1567:
	mov	rdi, rax
	or	rdi, rcx
	jns	.label_1564
.label_1561:
	test	rax, rax
	js	.label_1563
	lea	rcx, [rax + 1]
	sub	rbx, rcx
	lea	rdi, [rbx*8]
	add	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	lea	rdx, [rax*8 + 8]
	call	memcpy
.label_1563:
	mov	r10, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 8]
	lea	rcx, [r10 + rax*2 - 1]
	mov	rdx, rcx
	sub	rdx, rbx
	inc	rdx
	je	.label_1562
	lea	rax, [rdx + r10]
	mov	qword ptr [r14 + 8], rax
	lea	r9, [r10 - 1]
.label_1573:
	lea	r8, [r10 - 1]
	mov	rdi, qword ptr [r14 + 0x10]
	lea	r11, [rdi + r9*8]
	nop	dword ptr [rax + rax]
.label_1570:
	mov	rax, qword ptr [rdi + rcx*8]
	mov	rsi, qword ptr [rdi + r10*8 - 8]
	cmp	rax, rsi
	jle	.label_1574
	dec	rcx
	mov	qword ptr [r11 + rdx*8], rax
	dec	rdx
	jne	.label_1570
	jmp	.label_1562
	nop	dword ptr [rax]
.label_1574:
	lea	rax, [rdx + r8]
	mov	qword ptr [rdi + rax*8], rsi
	dec	r9
	cmp	r10, 1
	mov	r10, r8
	jg	.label_1573
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi + rbx*8]
	jmp	.label_1566
.label_1571:
	mov	qword ptr [r14 + 8], rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [r15 + 8]
	mov	rsi, qword ptr [r15 + 0x10]
.label_1566:
	shl	rdx, 3
	call	memcpy
.label_1562:
	xor	eax, eax
.label_1565:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x411350

	.globl re_node_set_insert
	.type re_node_set_insert, @function
re_node_set_insert:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14]
	test	rsi, rsi
	je	.label_1580
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	je	.label_1582
	cmp	rsi, rcx
	jne	.label_1584
	lea	rax, [rsi + rsi]
	mov	qword ptr [r14], rax
	mov	rdi, qword ptr [r14 + 0x10]
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_1575
	mov	qword ptr [r14 + 0x10], rax
	mov	rcx, qword ptr [r14 + 8]
	jmp	.label_1579
.label_1580:
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1506]]
	movups	xmmword ptr [r14], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1585
	mov	qword ptr [rax], rbx
	jmp	.label_1586
.label_1582:
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax], rbx
	jmp	.label_1587
.label_1584:
	mov	rax, qword ptr [r14 + 0x10]
.label_1579:
	cmp	qword ptr [rax], rbx
	jle	.label_1576
	test	rcx, rcx
	jle	.label_1578
	nop	word ptr cs:[rax + rax]
.label_1581:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	mov	qword ptr [rax + rcx*8], rdx
	cmp	rcx, 1
	lea	rcx, [rcx - 1]
	jg	.label_1581
	jmp	.label_1578
.label_1576:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	jmp	.label_1588
	nop	dword ptr [rax]
.label_1577:
	mov	qword ptr [rax + rcx*8], rdx
	mov	rdx, qword ptr [rax + rcx*8 - 0x10]
	dec	rcx
.label_1588:
	cmp	rdx, rbx
	jg	.label_1577
.label_1578:
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax + rcx*8], rbx
.label_1587:
	inc	qword ptr [r14 + 8]
.label_1586:
	mov	al, 1
.label_1583:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1585:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	xor	eax, eax
	jmp	.label_1583
.label_1575:
	xor	eax, eax
	jmp	.label_1583
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411440

	.globl re_acquire_state_context
	.type re_acquire_state_context, @function
re_acquire_state_context:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r13d, ecx
	mov	r8, qword ptr [rdx + 8]
	test	r8, r8
	je	.label_1613
	mov	qword ptr [rsp + 0x10], rdi
	mov	r14d, r13d
	add	r14, r8
	test	r8, r8
	jle	.label_1618
	mov	rcx, qword ptr [rdx + 0x10]
	xor	ebx, ebx
	cmp	r8, 4
	jb	.label_1624
	mov	rbx, r8
	and	rbx, 0xfffffffffffffffc
	je	.label_1591
	movq	xmm0, r14
	lea	r9, [r8 - 4]
	mov	eax, r9d
	shr	eax, 2
	inc	eax
	xor	edi, edi
	test	al, 3
	je	.label_1614
	lea	ebp, [r8 - 4]
	shr	ebp, 2
	inc	ebp
	and	ebp, 3
	neg	rbp
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	word ptr [rax + rax]
.label_1606:
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	add	rdi, 4
	inc	rbp
	jne	.label_1606
	jmp	.label_1619
.label_1613:
	mov	dword ptr [rdi], 0
	jmp	.label_1608
.label_1591:
	xor	ebx, ebx
	jmp	.label_1624
.label_1614:
	pxor	xmm1, xmm1
.label_1619:
	cmp	r9, 0xc
	jb	.label_1625
	mov	rax, r8
	and	rax, 0xfffffffffffffffc
	sub	rax, rdi
	lea	rdi, [rcx + rdi*8 + 0x70]
	nop	dword ptr [rax]
.label_1620:
	movdqu	xmm2, xmmword ptr [rdi - 0x70]
	movdqu	xmm3, xmmword ptr [rdi - 0x60]
	movdqu	xmm4, xmmword ptr [rdi - 0x50]
	movdqu	xmm5, xmmword ptr [rdi - 0x40]
	paddq	xmm2, xmm0
	paddq	xmm3, xmm1
	paddq	xmm2, xmm4
	paddq	xmm3, xmm5
	movdqu	xmm4, xmmword ptr [rdi - 0x30]
	movdqu	xmm5, xmmword ptr [rdi - 0x20]
	paddq	xmm4, xmm2
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rdi - 0x10]
	movdqu	xmm1, xmmword ptr [rdi]
	paddq	xmm0, xmm4
	paddq	xmm1, xmm5
	add	rdi, 0x80
	add	rax, -0x10
	jne	.label_1620
.label_1625:
	paddq	xmm1, xmm0
	pshufd	xmm0, xmm1, 0x4e
	paddq	xmm0, xmm1
	movq	r14, xmm0
	cmp	r8, rbx
	je	.label_1618
.label_1624:
	mov	rax, r8
	sub	rax, rbx
	lea	rcx, [rcx + rbx*8]
	nop	word ptr cs:[rax + rax]
.label_1596:
	add	r14, qword ptr [rcx]
	add	rcx, 8
	dec	rax
	jne	.label_1596
.label_1618:
	mov	rax, qword ptr [rsi + 0x40]
	mov	rcx, qword ptr [rsi + 0x88]
	and	rcx, r14
	lea	rcx, [rcx + rcx*2]
	mov	r10, qword ptr [rax + rcx*8]
	test	r10, r10
	jle	.label_1599
	mov	r9, qword ptr [rax + rcx*8 + 0x10]
	xor	ebx, ebx
	nop	
.label_1601:
	mov	r15, qword ptr [r9 + rbx*8]
	cmp	qword ptr [r15], r14
	jne	.label_1590
	movzx	eax, byte ptr [r15 + 0x68]
	and	eax, 0xf
	cmp	eax, r13d
	jne	.label_1590
	test	rdx, rdx
	je	.label_1590
	mov	rdi, qword ptr [r15 + 0x50]
	test	rdi, rdi
	je	.label_1590
	cmp	qword ptr [rdi + 8], r8
	jne	.label_1590
	mov	rax, r8
	nop	dword ptr [rax]
.label_1626:
	test	rax, rax
	jle	.label_1610
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rbp, qword ptr [rcx + rax*8 - 8]
	mov	rcx, qword ptr [rdx + 0x10]
	cmp	rbp, qword ptr [rcx + rax*8 - 8]
	lea	rax, [rax - 1]
	je	.label_1626
	nop	word ptr cs:[rax + rax]
.label_1590:
	inc	rbx
	cmp	rbx, r10
	jl	.label_1601
.label_1599:
	mov	rbx, rdx
	mov	r12, rsi
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	mov	qword ptr [rsp + 0x18], r15
	test	r15, r15
	je	.label_1612
	mov	r10, r15
	add	r10, 8
	mov	qword ptr [rsp + 0x28], r10
	mov	r9, rbx
	mov	qword ptr [rsp + 0x30], r9
	mov	rdi, qword ptr [r9 + 8]
	mov	qword ptr [r15 + 0x10], rdi
	mov	rbx, qword ptr [r9 + 8]
	test	rbx, rbx
	jle	.label_1616
	mov	qword ptr [rsp + 0x28], r10
	mov	rbp, r15
	mov	r15, r9
	mov	qword ptr [rbp + 8], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbp + 0x18], rax
	test	rax, rax
	je	.label_1594
	mov	rsi, qword ptr [r15 + 0x10]
	shl	rbx, 3
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	mov	r9, r15
	mov	rdi, r12
	mov	r15, rbp
	mov	r10, qword ptr [rsp + 0x28]
	jmp	.label_1605
.label_1616:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r10], xmm0
	mov	qword ptr [r10 + 0x10], 0
	mov	rdi, r12
.label_1605:
	mov	al, byte ptr [r15 + 0x68]
	mov	cl, r13b
	and	cl, 0xf
	and	al, 0xf0
	or	al, cl
	mov	byte ptr [r15 + 0x68], al
	mov	qword ptr [r15 + 0x50], r10
	cmp	qword ptr [r9 + 8], 0
	jle	.label_1617
	mov	ebp, r13d
	and	ebp, 1
	mov	eax, r13d
	and	eax, 2
	mov	dword ptr [rsp + 0xc], eax
	and	r13d, 4
	mov	dword ptr [rsp + 8], r13d
	xor	r12d, r12d
	xor	r8d, r8d
	nop	
.label_1621:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [r9 + 0x10]
	mov	rcx, qword ptr [rcx + r12*8]
	shl	rcx, 4
	mov	esi, dword ptr [rax + rcx + 8]
	movzx	edx, sil
	mov	r13d, esi
	shr	r13d, 8
	mov	ecx, r13d
	and	ecx, 0x3ff
	cmp	edx, 1
	jne	.label_1600
	test	ecx, ecx
	je	.label_1611
.label_1600:
	shr	esi, 0x14
	mov	bl, byte ptr [r15 + 0x68]
	mov	al, bl
	shr	al, 5
	movzx	eax, al
	or	eax, esi
	shl	al, 5
	and	al, 0x20
	and	bl, 0xdf
	or	bl, al
	mov	byte ptr [r15 + 0x68], bl
	cmp	edx, 4
	je	.label_1615
	cmp	edx, 2
	jne	.label_1622
	or	bl, 0x10
	jmp	.label_1623
.label_1615:
	or	bl, 0x40
.label_1623:
	mov	byte ptr [r15 + 0x68], bl
.label_1622:
	test	ecx, ecx
	je	.label_1611
	cmp	qword ptr [r15 + 0x50], r10
	jne	.label_1592
	mov	qword ptr [rsp + 0x20], rdi
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	mov	qword ptr [r15 + 0x50], rbx
	test	rbx, rbx
	je	.label_1598
	mov	rax, qword ptr [rsp + 0x30]
	mov	r15, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], r15
	test	r15, r15
	jle	.label_1604
	mov	qword ptr [rbx], r15
	shl	r15, 3
	mov	rdi, r15
	call	malloc
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_1595
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	jmp	.label_1593
.label_1604:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
.label_1593:
	mov	r15, qword ptr [rsp + 0x18]
	or	byte ptr [r15 + 0x68], 0x80
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x28]
.label_1592:
	test	ebp, ebp
	mov	r9, qword ptr [rsp + 0x30]
	jne	.label_1597
	mov	eax, r13d
	and	eax, 1
	jne	.label_1609
.label_1597:
	test	ebp, ebp
	je	.label_1602
	mov	eax, r13d
	and	eax, 2
	jne	.label_1609
.label_1602:
	cmp	dword ptr [rsp + 0xc], 0
	jne	.label_1607
	mov	eax, r13d
	and	eax, 0x10
	jne	.label_1609
.label_1607:
	cmp	dword ptr [rsp + 8], 0
	jne	.label_1611
	and	r13d, 0x40
	je	.label_1611
	nop	
.label_1609:
	mov	rax, r12
	sub	rax, r8
	js	.label_1603
	mov	rcx, qword ptr [r15 + 0x10]
	cmp	rcx, rax
	jle	.label_1603
	dec	rcx
	mov	qword ptr [r15 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_1603
	lea	rax, [r12*8]
	add	rax, qword ptr [r15 + 0x18]
	mov	rcx, r8
	neg	rcx
	nop	
.label_1589:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [r12 + rcx + 1]
	inc	rcx
	cmp	rdx, qword ptr [r15 + 0x10]
	jl	.label_1589
	nop	word ptr [rax + rax]
.label_1603:
	inc	r8
.label_1611:
	inc	r12
	cmp	r12, qword ptr [r9 + 8]
	jl	.label_1621
.label_1617:
	mov	rsi, r15
	mov	rdx, r14
	call	register_state
	test	eax, eax
	je	.label_1610
.label_1598:
	mov	rdi, r15
	call	free_state
	jmp	.label_1612
.label_1595:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbx], xmm0
	jmp	.label_1612
.label_1594:
	mov	rdi, rbp
	call	free
.label_1612:
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], 0xc
.label_1608:
	xor	r15d, r15d
.label_1610:
	mov	rax, r15
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411900

	.globl register_state
	.type register_state, @function
register_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	qword ptr [rbx], r15
	mov	r13, qword ptr [rbx + 0x10]
	mov	qword ptr [rbx + 0x20], r13
	mov	qword ptr [rbx + 0x28], 0
	lea	rdi, [r13*8]
	call	malloc
	mov	qword ptr [rbx + 0x30], rax
	mov	ecx, 0xc
	test	rax, rax
	je	.label_1627
	test	r13, r13
	jle	.label_1628
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1631:
	mov	rcx, qword ptr [rbx + 0x18]
	mov	r14, qword ptr [rcx + rbp*8]
	mov	rcx, qword ptr [r12]
	mov	rdx, r14
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 8], 8
	jne	.label_1630
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rcx, qword ptr [rbx + 0x28]
	cmp	rdx, rcx
	jne	.label_1629
	lea	rcx, [rdx + rdx + 2]
	lea	rdx, [rdx + rdx]
	mov	qword ptr [rbx + 0x20], rcx
	lea	rsi, [rdx*8 + 0x10]
	mov	rdi, rax
	call	realloc
	test	rax, rax
	je	.label_1633
	mov	qword ptr [rbx + 0x30], rax
	mov	rcx, qword ptr [rbx + 0x28]
.label_1629:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x28], rdx
	mov	qword ptr [rax + rcx*8], r14
	mov	r13, qword ptr [rbx + 0x10]
.label_1630:
	inc	rbp
	cmp	rbp, r13
	jl	.label_1631
.label_1628:
	mov	r13, qword ptr [r12 + 0x40]
	and	r15, qword ptr [r12 + 0x88]
	lea	rbp, [r15 + r15*2]
	lea	r14, [r13 + rbp*8]
	mov	r15, qword ptr [r13 + rbp*8]
	cmp	qword ptr [r13 + rbp*8 + 8], r15
	jle	.label_1632
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_1634:
	lea	rcx, [r15 + 1]
	mov	qword ptr [r14], rcx
	mov	qword ptr [rax + r15*8], rbx
	xor	ecx, ecx
	jmp	.label_1627
.label_1633:
	mov	ecx, 0xc
.label_1627:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1632:
	lea	rax, [r15 + r15]
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	mov	ecx, 0xc
	je	.label_1627
	lea	rcx, [r13 + rbp*8 + 8]
	lea	rdx, [r15 + r15 + 2]
	lea	rsi, [r13 + rbp*8 + 0x10]
	mov	qword ptr [rsi], rax
	mov	qword ptr [rcx], rdx
	mov	r15, qword ptr [r14]
	jmp	.label_1634
	nop	
	.section	.text
	.align	16
	#Procedure 0x411a40

	.globl re_string_reconstruct
	.type re_string_reconstruct, @function
re_string_reconstruct:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r15d, edx
	mov	r13, rsi
	mov	rbx, rdi
	lea	rbp, [rbx + 0x28]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, r13
	jle	.label_1656
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1663
	mov	qword ptr [rbx + 0x20], 0
.label_1663:
	mov	rax, qword ptr [rbx + 0x50]
	mov	qword ptr [rbx + 0x58], rax
	mov	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	lea	eax, [r15 + r15]
	and	eax, 2
	xor	eax, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], 0
	mov	dword ptr [rbx + 0x70], eax
	xor	eax, eax
	cmp	byte ptr [rbx + 0x8b], 0
	mov	r14, r13
	jne	.label_1668
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbx + 8], rax
	xor	eax, eax
	mov	r14, r13
.label_1668:
	test	r14, r14
	je	.label_1652
	mov	r12, qword ptr [rbx + 0x38]
	cmp	r14, r12
	jge	.label_1691
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_1646
	lea	rsi, [r14 - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1698
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x30]
	lea	rsi, [rdi + r14*4]
	sub	rdx, r14
	shl	rdx, 2
	call	memmove
.label_1698:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1643
.label_1686:
	sub	qword ptr [rbx + 0x30], r14
	sub	qword ptr [rbx + 0x38], r14
.label_1635:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1652
	add	qword ptr [rbx + 8], r14
.label_1652:
	mov	qword ptr [rbx + 0x28], r13
	mov	rdx, qword ptr [rbx + 0x58]
	sub	rdx, r14
	mov	qword ptr [rbx + 0x58], rdx
	sub	qword ptr [rbx + 0x68], r14
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1655
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1660
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_1664
	jmp	.label_1662
.label_1655:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1678
	mov	qword ptr [rbx + 0x30], rdx
	jmp	.label_1662
.label_1660:
	mov	rdi, rbx
	call	build_wcs_buffer
.label_1662:
	mov	qword ptr [rbx + 0x48], 0
	xor	eax, eax
.label_1664:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1656:
	mov	r14, r13
	sub	r14, rax
	jmp	.label_1668
.label_1691:
	mov	r10, qword ptr [rbx + 0x30]
	mov	cx, word ptr [rbx + 0x8c]
	test	cl, cl
	jne	.label_1681
.label_1695:
	mov	qword ptr [rbx + 0x30], 0
	movsxd	rsi, dword ptr [rbx + 0x90]
	cmp	rsi, 2
	jl	.label_1688
	mov	qword ptr [rsp + 8], rbp
	cmp	byte ptr [rbx + 0x89], 0
	je	.label_1639
	mov	rdi, qword ptr [rbx]
	lea	r8, [rdi + rax]
	mov	rdx, r14
	sub	rdx, rsi
	add	rdx, r8
	cmp	rdx, rdi
	cmovb	rdx, rdi
	lea	r11, [r8 + r14]
	lea	rsi, [r14 + rax]
	lea	rsi, [rdi + rsi - 1]
.label_1645:
	mov	rbp, rsi
	cmp	rbp, rdx
	jb	.label_1639
	mov	cl, byte ptr [rbp]
	and	cl, 0xc0
	movzx	ecx, cl
	lea	rsi, [rbp - 1]
	cmp	ecx, 0x80
	je	.label_1645
	add	r8, qword ptr [rbx + 0x58]
	mov	rdx, r8
	sub	rdx, rbp
	mov	r9, qword ptr [rbx + 0x78]
	test	r9, r9
	jne	.label_1653
	mov	qword ptr [rsp + 0x18], r11
	mov	r12, r10
	mov	rsi, rbp
.label_1692:
	mov	qword ptr [rsp + 0x30], 0
	lea	rdi, [rsp + 0x2c]
	lea	rcx, [rsp + 0x30]
	call	rpl_mbrtowc
	mov	rdx, qword ptr [rsp + 0x18]
	sub	rdx, rbp
	mov	esi, 0xffffffff
	mov	rcx, rax
	sub	rcx, rdx
	jb	.label_1671
	cmp	rax, -3
	mov	r10, r12
	ja	.label_1672
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], rcx
	mov	esi, dword ptr [rsp + 0x2c]
	jmp	.label_1672
.label_1646:
	mov	qword ptr [rsp + 8], rbp
	mov	rbp, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x18], rdx
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_1701:
	lea	rsi, [rcx + rdx]
	mov	rax, rsi
	shr	rax, 0x3f
	add	rax, rsi
	sar	rax, 1
	mov	rsi, qword ptr [rbp + rax*8]
	cmp	rsi, r14
	mov	rdi, rax
	jg	.label_1687
	jge	.label_1696
	lea	rcx, [rax + 1]
	mov	rdi, rdx
.label_1687:
	cmp	rcx, rdi
	mov	rdx, rdi
	jl	.label_1701
.label_1696:
	cmp	rsi, r14
	setl	cl
	movzx	ecx, cl
	lea	r12, [rcx + rax]
	lea	rsi, [rcx + rax - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, rsi
	sub	rdx, r14
	jle	.label_1637
	cmp	r12, r14
	jne	.label_1637
	cmp	qword ptr [rbp + r14*8], r14
	jne	.label_1637
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rdi + r14*4]
	shl	rdx, 2
	call	memmove
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r14
	lea	rsi, [rdi + r14]
	call	memmove
	movdqu	xmm0, xmmword ptr [rbx + 0x30]
	movq	xmm1, r14
	pshufd	xmm1, xmm1, 0x44
	psubq	xmm0, xmm1
	movdqu	xmmword ptr [rbx + 0x30], xmm0
	movq	rax, xmm0
	test	rax, rax
	mov	rbp, qword ptr [rsp + 8]
	jle	.label_1635
	mov	rax, qword ptr [rbx + 0x18]
	lea	rcx, [rax + r14*8]
	xor	edx, edx
	nop	
.label_1676:
	mov	rsi, qword ptr [rcx + rdx*8]
	sub	rsi, r14
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	cmp	rdx, qword ptr [rbx + 0x30]
	jl	.label_1676
	jmp	.label_1635
.label_1643:
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r14
	lea	rsi, [rdi + r14]
	call	memmove
	jmp	.label_1686
.label_1637:
	mov	rax, r14
	sub	rax, r13
	mov	rcx, qword ptr [rbx + 0x50]
	add	rcx, rax
	mov	qword ptr [rbx + 0x58], rcx
	add	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	nop	word ptr cs:[rax + rax]
.label_1693:
	mov	rax, r12
	test	rax, rax
	jle	.label_1697
	lea	r12, [rax - 1]
	cmp	qword ptr [rbp + rax*8 - 8], r14
	je	.label_1693
.label_1697:
	cmp	rax, rsi
	jge	.label_1636
	mov	rcx, qword ptr [rbx + 0x10]
	nop	dword ptr [rax]
.label_1642:
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1636
	inc	rax
	cmp	rax, rsi
	jl	.label_1642
.label_1636:
	cmp	rax, rsi
	jne	.label_1647
	mov	qword ptr [rbx + 0x30], 0
	xor	ebp, ebp
	jmp	.label_1666
.label_1678:
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1654
	mov	r15, qword ptr [rbx + 0x30]
	mov	r14, qword ptr [rbx + 0x40]
	cmp	r14, rdx
	cmovg	r14, rdx
	cmp	r15, r14
	jge	.label_1658
	jmp	.label_1661
	nop	dword ptr [rax]
.label_1679:
	mov	rbp, r12
	mov	r13, qword ptr [rbp]
.label_1661:
	inc	r15
	mov	r12, rbp
	add	r13, qword ptr [rbx]
	mov	al, byte ptr [r15 + r13 - 1]
	movzx	ecx, al
	mov	rdx, qword ptr [rbx + 0x78]
	test	rdx, rdx
	jne	.label_1669
.label_1644:
	movzx	ebp, al
	lea	eax, [rbp + 0x80]
	cmp	eax, 0x17f
	ja	.label_1670
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebp, dword ptr [rax + rbp*4]
.label_1670:
	mov	rax, qword ptr [rbx + 8]
	mov	byte ptr [rax + r15 - 1], bpl
	cmp	r15, r14
	jl	.label_1679
	jmp	.label_1680
.label_1669:
	mov	al, byte ptr [rdx + rcx]
	jmp	.label_1644
.label_1688:
	add	rax, r14
	mov	rdx, qword ptr [rbx]
	mov	al, byte ptr [rdx + rax - 1]
	movzx	edx, al
	mov	qword ptr [rbx + 0x38], 0
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_1684
	mov	al, byte ptr [rsi + rdx]
.label_1684:
	mov	rsi, qword ptr [rbx + 0x80]
	movzx	edx, al
	shr	al, 6
	movzx	eax, al
	mov	rsi, qword ptr [rsi + rax*8]
	mov	eax, 1
	bt	rsi, rdx
	jb	.label_1694
	xor	eax, eax
	cmp	edx, 0xa
	jne	.label_1694
	movzx	eax, cx
	cmp	eax, 0xff
	seta	al
	movzx	eax, al
	add	eax, eax
.label_1694:
	mov	dword ptr [rbx + 0x70], eax
	jmp	.label_1635
.label_1647:
	mov	rbp, qword ptr [rbp + rax*8]
	sub	rbp, r14
	mov	qword ptr [rbx + 0x30], rbp
	je	.label_1666
	test	rbp, rbp
	jle	.label_1648
	mov	rdi, qword ptr [rbx + 0x10]
	mov	edx, 1
	cmovg	rdx, rbp
	shl	rdx, 2
	mov	esi, 0xff
	call	memset
.label_1648:
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, rbp
	call	memset
	mov	rbp, qword ptr [rbx + 0x30]
.label_1666:
	mov	qword ptr [rbx + 0x38], rbp
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_1635
.label_1654:
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_1662
	mov	rax, qword ptr [rbx + 0x30]
	mov	rcx, qword ptr [rbx + 0x40]
	cmp	rcx, rdx
	cmovg	rcx, rdx
	cmp	rax, rcx
	jge	.label_1665
	add	r13, rax
	mov	rdx, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	movzx	edx, byte ptr [rdx + r13]
	mov	dl, byte ptr [rsi + rdx]
	jmp	.label_1673
.label_1682:
	mov	rdx, qword ptr [rbx + 0x78]
	mov	rsi, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	add	rsi, qword ptr [rbx + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	mov	dl, byte ptr [rdx + rsi]
.label_1673:
	mov	byte ptr [rdi + rax], dl
	inc	rax
	cmp	rax, rcx
	jl	.label_1682
	mov	rax, rcx
.label_1665:
	mov	qword ptr [rbx + 0x30], rax
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1662
.label_1680:
	mov	r15, r14
.label_1658:
	mov	qword ptr [rbx + 0x30], r15
	mov	qword ptr [rbx + 0x38], r15
	jmp	.label_1662
.label_1681:
	mov	rdx, r14
	sub	rdx, r13
	mov	rsi, qword ptr [rbx + 0x50]
	add	rsi, rdx
	mov	qword ptr [rbx + 0x58], rsi
	add	rdx, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rdx
	mov	byte ptr [rbx + 0x8c], 0
	jmp	.label_1695
.label_1671:
	mov	r10, r12
.label_1672:
	cmp	esi, -1
	jne	.label_1638
	mov	rax, qword ptr [rbx + 0x28]
	mov	r12, qword ptr [rbx + 0x38]
.label_1639:
	add	r12, rax
	mov	rbp, r12
	sub	rbp, r13
	jge	.label_1641
	mov	qword ptr [rsp], r10
	lea	rax, [rbx + 0x20]
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_1649
.label_1675:
	xor	esi, esi
	cmp	rbp, r12
	je	.label_1689
	test	rax, rax
	mov	rcx, qword ptr [rsp + 0x10]
	je	.label_1657
	mov	rax, qword ptr [rbx]
	movzx	esi, byte ptr [rax + r12]
	jmp	.label_1657
.label_1689:
	mov	rcx, qword ptr [rsp + 0x10]
.label_1657:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rcx
	mov	eax, 1
	jmp	.label_1674
.label_1649:
	mov	rax, qword ptr [rbx + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, qword ptr [rbx + 0x50]
	mov	rdx, rbp
	sub	rdx, r12
	mov	rsi, qword ptr [rbx]
	add	rsi, r12
	lea	rdi, [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x18]
	call	rpl_mbrtowc
	test	rax, rax
	je	.label_1675
	mov	rcx, rax
	or	rcx, 1
	cmp	rcx, -1
	je	.label_1675
	mov	esi, dword ptr [rsp + 0x30]
.label_1674:
	add	r12, rax
	mov	rbp, r12
	sub	rbp, r13
	jl	.label_1649
	mov	qword ptr [rbx + 0x30], rbp
	cmp	esi, -1
	mov	r10, qword ptr [rsp]
	je	.label_1699
.label_1638:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1685
.label_1650:
	xor	ecx, ecx
	cmp	esi, 0xa
	jne	.label_1659
	mov	ecx, 2
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_1659
	xor	ecx, ecx
.label_1659:
	mov	dword ptr [rbx + 0x70], ecx
	mov	rbp, qword ptr [rbx + 0x30]
	jmp	.label_1677
.label_1641:
	mov	qword ptr [rbx + 0x30], rbp
.label_1699:
	dec	r10
	mov	rdi, rbx
	mov	rsi, r10
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
.label_1677:
	test	rbp, rbp
	jne	.label_1700
.label_1651:
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x38], rax
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_1635
.label_1700:
	jle	.label_1640
	mov	rdi, qword ptr [rbx + 0x10]
	test	rbp, rbp
	mov	edx, 1
	cmovg	rdx, rbp
	shl	rdx, 2
	mov	esi, 0xff
	call	memset
.label_1640:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_1651
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, rbp
	call	memset
	jmp	.label_1651
.label_1685:
	mov	ebp, esi
	mov	edi, ebp
	call	iswalnum
	mov	esi, ebp
	cmp	esi, 0x5f
	mov	ecx, 1
	je	.label_1659
	test	eax, eax
	je	.label_1650
	jmp	.label_1659
.label_1653:
	lea	rsi, [rsp + 0x26]
	cmp	rdx, 6
	mov	ecx, 6
	cmovl	ecx, edx
	test	ecx, ecx
	jle	.label_1667
	mov	qword ptr [rsp + 0x18], r11
	lea	rdi, [rbp - 1]
	sub	rdi, r8
	cmp	rdi, -8
	mov	rcx, -7
	cmovg	rcx, rdi
	xor	rcx, 0xffffffffffffffff
	shl	rcx, 0x20
	sar	rcx, 0x20
	inc	rcx
.label_1683:
	movzx	edi, byte ptr [rbp + rcx - 2]
	mov	al, byte ptr [r9 + rdi]
	mov	byte ptr [rsp + rcx + 0x24], al
	dec	rcx
	cmp	rcx, 1
	jg	.label_1683
	jmp	.label_1690
.label_1667:
	mov	qword ptr [rsp + 0x18], r11
.label_1690:
	mov	r12, r10
	jmp	.label_1692
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4121e0

	.globl check_halt_state_context
	.type check_halt_state_context, @function
check_halt_state_context:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0xa0]
	mov	rsi, rdx
	mov	edx, eax
	call	re_string_context_at
	mov	r10, qword ptr [r14 + 0x10]
	xor	ecx, ecx
	test	r10, r10
	jle	.label_1704
	mov	rcx, qword ptr [rbx + 0x98]
	mov	r11, qword ptr [r14 + 0x18]
	mov	rdi, qword ptr [rcx]
	mov	r9d, eax
	and	r9d, 1
	mov	r8d, eax
	and	r8d, 2
	and	eax, 8
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_1702:
	mov	rcx, qword ptr [r11 + rbx*8]
	mov	rdx, rcx
	shl	rdx, 4
	mov	edx, dword ptr [rdi + rdx + 8]
	movzx	esi, dl
	cmp	esi, 2
	jne	.label_1703
	shr	edx, 8
	test	dx, 0x3ff
	je	.label_1704
	test	r9d, r9d
	jne	.label_1705
	mov	esi, edx
	and	esi, 4
	jne	.label_1703
.label_1705:
	test	r9d, r9d
	je	.label_1707
	mov	esi, edx
	and	esi, 8
	jne	.label_1703
.label_1707:
	test	r8d, r8d
	jne	.label_1706
	mov	esi, edx
	and	esi, 0x20
	jne	.label_1703
.label_1706:
	test	eax, eax
	jne	.label_1704
	test	dl, dl
	jns	.label_1704
	nop	dword ptr [rax]
.label_1703:
	inc	rbx
	cmp	rbx, r10
	mov	ecx, 0
	jl	.label_1702
.label_1704:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4122a0

	.globl match_ctx_clean
	.type match_ctx_clean, @function
match_ctx_clean:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0xe8], 0
	jle	.label_1708
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_1711:
	mov	rax, qword ptr [r14 + 0xf8]
	mov	r15, qword ptr [rax + r12*8]
	cmp	qword ptr [r15 + 0x20], 0
	mov	ebx, 0
	jle	.label_1709
	nop	word ptr [rax + rax]
.label_1712:
	mov	rax, qword ptr [r15 + 0x28]
	mov	r13, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
	mov	rdi, r13
	call	free
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x20]
	jl	.label_1712
.label_1709:
	mov	rdi, qword ptr [r15 + 0x28]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	je	.label_1710
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
.label_1710:
	mov	rdi, r15
	call	free
	inc	r12
	cmp	r12, qword ptr [r14 + 0xe8]
	jl	.label_1711
.label_1708:
	mov	qword ptr [r14 + 0xe8], 0
	mov	qword ptr [r14 + 0xc8], 0
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412360

	.globl set_regs
	.type set_regs, @function
set_regs:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rcx
	mov	qword ptr [rbp - 0x78], rbx
	mov	r14, rdx
	mov	qword ptr [rbp - 0x98], r14
	mov	r12, rsi
	mov	qword ptr [rbp - 0x80], r12
	mov	rcx, qword ptr [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_1742]]
	mov	qword ptr [rbp - 0x50], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1743]]
	movaps	xmmword ptr [rbp - 0x60], xmm0
	xor	r13d, r13d
	test	r8b, r8b
	je	.label_1744
	mov	qword ptr [rbp - 0x88], rcx
	mov	r15, r14
	mov	edi, 0x60
	call	malloc
	mov	qword ptr [rbp - 0x50], rax
	mov	r14d, 0xc
	test	rax, rax
	je	.label_1736
	lea	r13, [rbp - 0x60]
	mov	r14, r15
	mov	rcx, qword ptr [rbp - 0x88]
.label_1744:
	mov	qword ptr [rbp - 0x88], rcx
	mov	qword ptr [rbp - 0x70], r13
	mov	r15, qword ptr [rcx + 0x90]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 0x40], xmm0
	mov	qword ptr [rbp - 0x30], 0
	mov	rdx, r14
	shl	rdx, 4
	cmp	rdx, 0xfbf
	ja	.label_1739
	mov	rax, rsp
	lea	rcx, [rdx + 0xf]
	and	rcx, 0xfffffffffffffff0
	sub	rax, rcx
	mov	rsp, rax
	mov	dword ptr [rbp - 0xa4], 0
	jmp	.label_1722
.label_1739:
	mov	rdi, rdx
	mov	qword ptr [rbp - 0x90], rdx
	call	malloc
	test	rax, rax
	je	.label_1753
	mov	cl, 1
	mov	dword ptr [rbp - 0xa4], ecx
	mov	rdx, qword ptr [rbp - 0x90]
.label_1722:
	mov	qword ptr [rbp - 0x90], rdx
	mov	qword ptr [rbp - 0xa0], rax
	mov	rdi, rax
	mov	rsi, rbx
	call	memcpy
	mov	rsi, qword ptr [rbx]
	xor	edi, edi
	cmp	rsi, qword ptr [rbx + 8]
	jg	.label_1749
	lea	rax, [rbx + 8]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1747
.label_1753:
	mov	r14d, 0xc
	test	r13, r13
	je	.label_1736
	xor	ebx, ebx
	cmp	qword ptr [r13], 0
	jle	.label_1760
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_1771:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r13]
	jl	.label_1771
	jmp	.label_1760
.label_1751:
	mov	rdx, qword ptr [rbp - 0x68]
	mov	r14, rax
	jmp	.label_1719
	nop	word ptr [rax + rax]
.label_1747:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rax]
	mov	rdx, r15
	shl	rdx, 4
	lea	rax, [rcx + rdx]
	mov	ecx, dword ptr [rcx + rdx + 8]
	movzx	edx, cl
	cmp	edx, 9
	je	.label_1762
	cmp	edx, 8
	jne	.label_1721
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, r14
	jge	.label_1721
	shl	rax, 4
	mov	qword ptr [rbx + rax], rsi
	mov	qword ptr [rbx + rax + 8], -1
	jmp	.label_1721
	nop	dword ptr [rax]
.label_1762:
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, r14
	jge	.label_1721
	shl	rax, 4
	cmp	qword ptr [rbx + rax], rsi
	jge	.label_1738
	mov	qword ptr [rbx + rax + 8], rsi
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	r13, rsi
	mov	rsi, rbx
	jmp	.label_1741
.label_1738:
	test	ecx, 0x80000
	je	.label_1748
	mov	rcx, qword ptr [rbp - 0xa0]
	cmp	qword ptr [rcx + rax], -1
	je	.label_1748
	mov	rdi, rbx
	mov	r13, rsi
	mov	rsi, qword ptr [rbp - 0xa0]
.label_1741:
	mov	rdx, qword ptr [rbp - 0x90]
	call	memcpy
	mov	rsi, r13
	jmp	.label_1721
.label_1748:
	mov	qword ptr [rbx + rax + 8], rsi
	nop	word ptr cs:[rax + rax]
.label_1721:
	mov	qword ptr [rbp - 0x68], rsi
	cmp	rsi, qword ptr [rbx + 8]
	jne	.label_1769
	cmp	r15, qword ptr [r12 + 0xb0]
	jne	.label_1769
	mov	r13, r12
	mov	r12, qword ptr [rbp - 0x70]
	test	r12, r12
	je	.label_1727
	test	r14, r14
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	eax, 0
	mov	rdx, qword ptr [rbp - 0x90]
	je	.label_1715
	nop	word ptr cs:[rax + rax]
.label_1718:
	cmp	qword ptr [rcx - 8], 0
	js	.label_1713
	cmp	qword ptr [rcx], -1
	je	.label_1715
.label_1713:
	inc	rax
	add	rcx, 0x10
	cmp	rax, r14
	jb	.label_1718
.label_1715:
	cmp	rax, r14
	je	.label_1730
	mov	rcx, qword ptr [r12]
	lea	rax, [rcx - 1]
	mov	qword ptr [r12], rax
	test	rcx, rcx
	jle	.label_1726
	mov	rcx, qword ptr [r12 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	rax, qword ptr [rcx + rbx]
	mov	qword ptr [rbp - 0x68], rax
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	mov	rdi, qword ptr [rbp - 0x78]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [rbp - 0x30], rcx
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movaps	xmmword ptr [rbp - 0x40], xmm0
	mov	r15, qword ptr [rax + rbx + 8]
	mov	r12, r13
.label_1769:
	mov	rbx, qword ptr [r12 + 0x98]
	mov	rsi, qword ptr [rbx]
	mov	r13, r15
	shl	r13, 4
	mov	eax, dword ptr [rsi + r13 + 8]
	test	al, 8
	jne	.label_1758
	test	eax, 0x100000
	jne	.label_1765
	movzx	eax, al
	cmp	eax, 4
	jne	.label_1768
	mov	rax, qword ptr [rsi + r13]
	shl	rax, 4
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdi, qword ptr [rax + rcx + 0x10]
	mov	r14, qword ptr [rax + rcx + 0x18]
	mov	rdx, r14
	sub	rdx, rdi
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_1770
	cmp	r14, -1
	je	.label_1734
	cmp	rdi, -1
	je	.label_1734
	cmp	r14, rdi
	je	.label_1770
	mov	rax, qword ptr [r12 + 0x30]
	sub	rax, qword ptr [rbp - 0x68]
	cmp	rax, rdx
	jl	.label_1734
	mov	rsi, qword ptr [r12 + 8]
	mov	r12, rdi
	lea	rdi, [rsi + r12]
	add	rsi, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xb8], rdx
	call	memcmp
	mov	rdi, r12
	mov	rdx, qword ptr [rbp - 0xb8]
	test	eax, eax
	jne	.label_1734
.label_1770:
	cmp	r14, rdi
	jne	.label_1732
	lea	rdi, [rbp - 0x40]
	mov	rsi, r15
	mov	r14, rdx
	call	re_node_set_insert
	mov	rdx, r14
	test	al, al
	je	.label_1720
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_1732
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rsi, [r15 + r15*2]
	mov	rsi, qword ptr [rdi + rsi*8 + 0x10]
	mov	r14, qword ptr [rsi]
	dec	rax
	mov	r8, qword ptr [rcx + 0x18]
	mov	ecx, 0
	je	.label_1731
	nop	word ptr cs:[rax + rax]
.label_1729:
	lea	rsi, [rcx + rax]
	shr	rsi, 1
	cmp	qword ptr [r8 + rsi*8], r14
	lea	rdi, [rsi + 1]
	cmovl	rcx, rdi
	cmovge	rax, rsi
	cmp	rcx, rax
	jb	.label_1729
.label_1731:
	cmp	rcx, -1
	je	.label_1732
	cmp	qword ptr [r8 + rcx*8], r14
	je	.label_1714
	jmp	.label_1732
	nop	word ptr cs:[rax + rax]
.label_1758:
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	r12, qword ptr [rax + rcx*8]
	mov	rbx, qword ptr [rbx + 0x28]
	lea	rdi, [rbp - 0x40]
	mov	rsi, r15
	call	re_node_set_insert
	test	al, al
	je	.label_1720
	lea	rax, [r15 + r15*2]
	mov	r9, qword ptr [rbx + rax*8 + 8]
	test	r9, r9
	jle	.label_1724
	mov	r8, qword ptr [rbx + rax*8 + 0x10]
	mov	r10, qword ptr [r12 + 0x10]
	lea	r11, [r10 - 1]
	mov	r14, -1
	xor	r15d, r15d
	mov	r13, qword ptr [rbp - 0x70]
	nop	word ptr cs:[rax + rax]
.label_1763:
	test	r10, r10
	jle	.label_1737
	mov	rbx, qword ptr [r8 + r15*8]
	test	r11, r11
	mov	rcx, qword ptr [r12 + 0x18]
	mov	rsi, r11
	mov	eax, 0
	je	.label_1778
	nop	dword ptr [rax + rax]
.label_1750:
	lea	rdx, [rax + rsi]
	shr	rdx, 1
	cmp	qword ptr [rcx + rdx*8], rbx
	lea	rdi, [rdx + 1]
	cmovl	rax, rdi
	cmovge	rsi, rdx
	cmp	rax, rsi
	jb	.label_1750
.label_1778:
	cmp	rax, -1
	je	.label_1737
	cmp	qword ptr [rcx + rax*8], rbx
	jne	.label_1737
	cmp	r14, -1
	jne	.label_1756
	mov	r14, rbx
.label_1737:
	inc	r15
	cmp	r15, r9
	jl	.label_1763
	mov	rdx, qword ptr [rbp - 0x68]
	jmp	.label_1719
	nop	word ptr cs:[rax + rax]
.label_1765:
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r12
	mov	rcx, qword ptr [rbp - 0x68]
	call	check_node_accept_bytes
	movsxd	rdx, eax
.label_1732:
	test	rdx, rdx
	jne	.label_1773
	mov	rsi, qword ptr [rbx]
	mov	r12, qword ptr [rbp - 0x80]
.label_1768:
	add	rsi, r13
	mov	rdi, r12
	mov	rdx, qword ptr [rbp - 0x68]
	call	check_node_accept
	test	al, al
	mov	edx, 1
	je	.label_1724
.label_1773:
	add	rdx, qword ptr [rbp - 0x68]
	cmp	qword ptr [rbp - 0x70], 0
	mov	rax, qword ptr [rbx + 0x18]
	mov	r14, qword ptr [rax + r15*8]
	je	.label_1777
	mov	rax, qword ptr [rbp - 0x80]
	cmp	rdx, qword ptr [rax + 0xa8]
	jg	.label_1734
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rax + rdx*8]
	test	rcx, rcx
	je	.label_1734
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_1734
	dec	rax
	mov	rcx, qword ptr [rcx + 0x18]
	mov	ebx, 0
	je	.label_1757
.label_1774:
	lea	rsi, [rbx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], r14
	lea	rdi, [rsi + 1]
	cmovl	rbx, rdi
	cmovge	rax, rsi
	cmp	rbx, rax
	jb	.label_1774
.label_1757:
	cmp	rbx, -1
	je	.label_1724
	cmp	qword ptr [rcx + rbx*8], r14
	jne	.label_1724
.label_1777:
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_1754
.label_1756:
	mov	r15, qword ptr [rbp - 0x38]
	test	r15, r15
	jle	.label_1740
	mov	rcx, r15
	dec	rcx
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, 0
	je	.label_1759
	nop	word ptr [rax + rax]
.label_1776:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r14
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_1776
.label_1759:
	cmp	rdx, -1
	setne	cl
	cmp	qword ptr [rax + rdx*8], r14
	sete	dl
	and	dl, cl
	mov	rax, r14
	cmovne	rax, rbx
	test	dl, dl
	jne	.label_1751
	test	r13, r13
	mov	rdx, qword ptr [rbp - 0x68]
	jne	.label_1755
	mov	r14, rax
	jmp	.label_1719
.label_1740:
	test	r13, r13
	mov	rdx, qword ptr [rbp - 0x68]
	je	.label_1719
.label_1755:
	mov	rcx, r13
	mov	r13, qword ptr [rcx]
	lea	rax, [r13 + 1]
	mov	qword ptr [rcx], rax
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_1716
	mov	rdi, qword ptr [rcx + 0x10]
	shl	rax, 5
	lea	rsi, [rax + rax*2]
	call	realloc
	mov	r12, rax
	test	r12, r12
	je	.label_1720
	mov	rax, qword ptr [rbp - 0x70]
	shl	qword ptr [rax + 8], 1
	mov	qword ptr [rax + 0x10], r12
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0x68]
	jmp	.label_1735
.label_1716:
	mov	r12, qword ptr [rcx + 0x10]
	mov	rdi, qword ptr [rbp - 0x90]
.label_1735:
	mov	qword ptr [rbp - 0x90], rdi
	lea	r13, [r13 + r13*2]
	shl	r13, 4
	mov	qword ptr [r12 + r13], rdx
	mov	qword ptr [r12 + r13 + 8], rbx
	call	malloc
	mov	qword ptr [r12 + r13 + 0x10], rax
	test	rax, rax
	je	.label_1720
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x90]
	call	memcpy
	lea	rbx, [r12 + r13 + 0x18]
	mov	qword ptr [r12 + r13 + 0x20], r15
	test	r15, r15
	jle	.label_1761
	mov	qword ptr [rbx], r15
	shl	r15, 3
	mov	rdi, r15
	call	malloc
	mov	qword ptr [r12 + r13 + 0x28], rax
	test	rax, rax
	je	.label_1767
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	jmp	.label_1714
.label_1761:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
.label_1714:
	mov	rdx, qword ptr [rbp - 0x68]
.label_1754:
	mov	r13, qword ptr [rbp - 0x70]
.label_1719:
	test	r14, r14
	js	.label_1775
	mov	r12, qword ptr [rbp - 0x78]
	jmp	.label_1723
.label_1775:
	mov	qword ptr [rbp - 0x70], r13
	cmp	r14, -2
	je	.label_1720
	nop	dword ptr [rax + rax]
.label_1724:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_1745
.label_1734:
	mov	r13, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [r13]
	lea	rax, [rcx - 1]
	mov	qword ptr [r13], rax
	test	rcx, rcx
	jle	.label_1726
	mov	rcx, qword ptr [r13 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	r14, qword ptr [rcx + rbx]
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	mov	r12, qword ptr [rbp - 0x78]
	mov	rdi, r12
	mov	rdx, qword ptr [rbp - 0x90]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	rdx, r14
	mov	rax, qword ptr [r13 + 0x10]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [rbp - 0x30], rcx
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movaps	xmmword ptr [rbp - 0x40], xmm0
	mov	r14, qword ptr [rax + rbx + 8]
.label_1723:
	cmp	rdx, qword ptr [r12 + 8]
	mov	r15, r14
	mov	rsi, rdx
	mov	rbx, r12
	mov	r14, qword ptr [rbp - 0x98]
	mov	r12, qword ptr [rbp - 0x80]
	jle	.label_1747
	mov	rdi, qword ptr [rbp - 0x30]
.label_1749:
	call	free
	mov	eax, dword ptr [rbp - 0xa4]
	test	al, al
	je	.label_1766
	mov	rdi, qword ptr [rbp - 0xa0]
	call	free
.label_1766:
	xor	r14d, r14d
	test	r13, r13
	je	.label_1736
	xor	r14d, r14d
	cmp	qword ptr [r13], 0
	jle	.label_1760
	xor	ebx, ebx
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_1717:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r13]
	jl	.label_1717
.label_1760:
	mov	rdi, qword ptr [r13 + 0x10]
	jmp	.label_1725
.label_1745:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	r14d, 1
	jmp	.label_1733
.label_1727:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	xor	r14d, r14d
.label_1733:
	mov	eax, dword ptr [rbp - 0xa4]
	test	al, al
	je	.label_1736
	mov	rdi, qword ptr [rbp - 0xa0]
	jmp	.label_1725
.label_1730:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	eax, dword ptr [rbp - 0xa4]
	test	al, al
	je	.label_1746
	mov	rdi, qword ptr [rbp - 0xa0]
	call	free
.label_1746:
	xor	r14d, r14d
	cmp	qword ptr [r12], 0
	jle	.label_1752
	xor	ebx, ebx
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_1764:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	jl	.label_1764
	jmp	.label_1752
.label_1767:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
.label_1720:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	eax, dword ptr [rbp - 0xa4]
	test	al, al
	je	.label_1772
	mov	rdi, qword ptr [rbp - 0xa0]
	call	free
.label_1772:
	mov	r14d, 0xc
	mov	r12, qword ptr [rbp - 0x70]
	test	r12, r12
	je	.label_1736
	xor	ebx, ebx
	cmp	qword ptr [r12], 0
	jle	.label_1752
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1728:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	jl	.label_1728
.label_1752:
	mov	rdi, qword ptr [r12 + 0x10]
.label_1725:
	call	free
.label_1736:
	mov	eax, r14d
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1726:
	mov	edi, OFFSET FLAT:.str.26
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x555
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.pop_fail_stack
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x412d60

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rsi, rsi
	js	.label_1779
	cmp	qword ptr [rbx + 0x58], rsi
	je	.label_1782
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1785
	mov	rax, qword ptr [rbx + 0x10]
	inc	rsi
	nop	dword ptr [rax]
.label_1787:
	mov	ebp, dword ptr [rax + rsi*4 - 4]
	cmp	ebp, -1
	jne	.label_1783
	dec	rsi
	test	rsi, rsi
	jg	.label_1787
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_1780
.label_1785:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x80]
	movzx	eax, byte ptr [rax + rsi]
	mov	dl, al
	shr	dl, 6
	movzx	edx, dl
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	edx, 1
	bt	rcx, rax
	jb	.label_1780
	xor	edx, edx
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_1780
	jmp	.label_1784
.label_1783:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1786
.label_1781:
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_1780
.label_1784:
	mov	edx, 2
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_1780
	xor	edx, edx
	jmp	.label_1780
.label_1779:
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_1780
.label_1782:
	and	edx, 2
	xor	edx, 0xa
.label_1780:
	mov	eax, edx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1786:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	edx, 1
	je	.label_1780
	test	eax, eax
	jne	.label_1780
	jmp	.label_1781
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412e30

	.globl check_subexp_matching_top
	.type check_subexp_matching_top, @function
check_subexp_matching_top:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	qword ptr [rsp], rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	rcx, qword ptr [r12 + 8]
	xor	eax, eax
	test	rcx, rcx
	jle	.label_1790
	mov	r13, qword ptr [r15 + 0x98]
	xor	ebx, ebx
	jmp	.label_1791
.label_1792:
	mov	rdi, qword ptr [r15 + 0xf8]
	mov	rsi, r14
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1790
	add	r14, r14
	mov	qword ptr [r15 + 0xf8], rcx
	mov	qword ptr [r15 + 0xf0], r14
	jmp	.label_1789
	nop	word ptr [rax + rax]
.label_1791:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rbp, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r13]
	mov	rdx, rbp
	shl	rdx, 4
	movzx	esi, byte ptr [rax + rdx + 8]
	cmp	esi, 8
	jne	.label_1788
	mov	rax, qword ptr [rax + rdx]
	cmp	rax, 0x3f
	jg	.label_1788
	mov	rdx, qword ptr [r13 + 0xa0]
	bt	rdx, rax
	jae	.label_1788
	mov	r14, qword ptr [r15 + 0xe8]
	cmp	r14, qword ptr [r15 + 0xf0]
	je	.label_1792
.label_1789:
	mov	edi, 1
	mov	esi, 0x30
	call	rpl_calloc
	mov	rcx, qword ptr [r15 + 0xe8]
	mov	rdx, qword ptr [r15 + 0xf8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [r15 + 0xf8]
	mov	rdx, qword ptr [rax + rcx*8]
	mov	eax, 0xc
	test	rdx, rdx
	je	.label_1790
	mov	qword ptr [rdx + 8], rbp
	inc	rcx
	mov	qword ptr [r15 + 0xe8], rcx
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rdx], rax
	mov	rcx, qword ptr [r12 + 8]
	nop	dword ptr [rax]
.label_1788:
	inc	rbx
	xor	eax, eax
	cmp	rbx, rcx
	jl	.label_1791
.label_1790:
	add	rsp, 8
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
	#Procedure 0x412f60

	.globl transit_state_bkref
	.type transit_state_bkref, @function
transit_state_bkref:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	qword ptr [rsp + 0x50], rsi
	mov	r13, rdi
	cmp	qword ptr [rsi + 8], 0
	jle	.label_1815
	mov	r15, qword ptr [r13 + 0x98]
	mov	qword ptr [rsp + 0x20], r15
	mov	r8, qword ptr [r13 + 0x48]
	mov	qword ptr [rsp + 0x58], r8
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1823:
	mov	qword ptr [rsp + 0x48], rcx
	mov	rax, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rax + 0x10]
	mov	r14, qword ptr [rax + rcx*8]
	mov	qword ptr [rsp + 0x80], r14
	mov	rax, qword ptr [r15]
	shl	r14, 4
	mov	ebx, dword ptr [rax + r14 + 8]
	movzx	eax, bl
	cmp	eax, 4
	jne	.label_1793
	mov	ebp, ebx
	shr	ebp, 8
	test	bp, 0x3ff
	je	.label_1802
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	mov	rsi, r8
	mov	r12, r8
	call	re_string_context_at
	mov	r8, r12
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_1845
	test	ecx, ecx
	je	.label_1793
.label_1845:
	test	bh, 8
	je	.label_1795
	test	ecx, ecx
	jne	.label_1793
.label_1795:
	test	bh, 0x20
	je	.label_1798
	mov	ecx, eax
	and	ecx, 2
	je	.label_1793
.label_1798:
	test	bpl, bpl
	jns	.label_1802
	and	eax, 8
	je	.label_1793
	nop	word ptr cs:[rax + rax]
.label_1802:
	mov	r12, qword ptr [r13 + 0xc8]
	mov	qword ptr [rsp + 0x40], r12
	mov	rax, qword ptr [r13 + 8]
	mov	qword ptr [rsp + 0x70], rax
	mov	r9, qword ptr [r13 + 0x98]
	mov	qword ptr [rsp + 0x30], r9
	test	r12, r12
	mov	eax, 0
	jle	.label_1807
	mov	rcx, qword ptr [r13 + 0xd8]
	xor	eax, eax
	mov	rdx, r12
	nop	word ptr [rax + rax]
.label_1824:
	lea	rsi, [rdx + rax]
	mov	rdi, rsi
	shr	rdi, 0x3f
	add	rdi, rsi
	sar	rdi, 1
	lea	rsi, [rdi + rdi*4]
	cmp	qword ptr [rcx + rsi*8 + 8], r8
	cmovge	rdx, rdi
	lea	rsi, [rdi + 1]
	cmovl	rax, rsi
	cmp	rax, rdx
	jl	.label_1824
.label_1807:
	cmp	rax, r12
	jge	.label_1829
	cmp	rax, -1
	je	.label_1829
	mov	rcx, qword ptr [r13 + 0xd8]
	lea	rax, [rax + rax*4]
	cmp	qword ptr [rcx + rax*8 + 8], r8
	jne	.label_1829
	lea	rax, [rcx + rax*8]
	nop	dword ptr [rax]
.label_1841:
	mov	rcx, qword ptr [rsp + 0x80]
	cmp	qword ptr [rax], rcx
	je	.label_1837
	cmp	byte ptr [rax + 0x20], 0
	lea	rax, [rax + 0x28]
	jne	.label_1841
.label_1829:
	cmp	qword ptr [r13 + 0xe8], 0
	mov	rax, r12
	jle	.label_1842
	mov	qword ptr [rsp + 0x20], r15
	mov	rax, qword ptr [r9]
	mov	r10, qword ptr [rax + r14]
	mov	qword ptr [rsp + 0x18], r10
	xor	r11d, r11d
	jmp	.label_1846
	nop	word ptr cs:[rax + rax]
.label_1808:
	mov	rax, qword ptr [r9]
.label_1846:
	mov	rcx, qword ptr [r13 + 0xf8]
	mov	r14, qword ptr [rcx + r11*8]
	mov	qword ptr [rsp + 0x28], r14
	mov	rcx, qword ptr [r14 + 8]
	shl	rcx, 4
	cmp	qword ptr [rax + rcx], r10
	jne	.label_1800
	mov	qword ptr [rsp + 0x38], r11
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 0x20]
	test	rax, rax
	jle	.label_1810
	mov	rbx, r8
	xor	r12d, r12d
	jmp	.label_1813
.label_1810:
	mov	rdx, r8
	mov	rdi, r15
	xor	r12d, r12d
	jmp	.label_1816
.label_1809:
	mov	r9, qword ptr [r13 + 0x58]
	cmp	rdi, r9
	jg	.label_1820
	mov	qword ptr [rsp + 0x60], rdx
	mov	rax, qword ptr [r13 + 0x40]
	mov	r8, qword ptr [r13 + 0xc0]
	cmp	rax, rdi
	mov	qword ptr [rsp + 0x68], rdi
	mov	rdi, r13
	mov	rdx, r14
	jg	.label_1822
	cmp	rax, r9
	jl	.label_1827
.label_1822:
	cmp	rcx, qword ptr [rsp + 0x68]
	jg	.label_1828
	cmp	rcx, r9
	jge	.label_1828
.label_1827:
	mov	rax, qword ptr [rsp + 0x68]
	lea	esi, [rax + 1]
	mov	r14, rdi
	mov	r13, r8
	call	extend_buffers
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rdi, r14
	mov	r8, r13
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_1797
.label_1828:
	mov	r14, rdx
	mov	rdx, qword ptr [rsp + 0x68]
	sub	rdx, r8
	mov	r13, rdi
	jle	.label_1839
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rax + r8*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	call	memset
	mov	rax, qword ptr [rsp + 0x68]
	mov	qword ptr [r13 + 0xc0], rax
.label_1839:
	mov	rax, qword ptr [r13 + 8]
	mov	qword ptr [rsp + 0x70], rax
	jmp	.label_1796
	nop	word ptr cs:[rax + rax]
.label_1813:
	mov	rcx, qword ptr [r14 + 0x28]
	mov	rdx, qword ptr [rcx + r12*8]
	mov	rcx, qword ptr [rdx + 8]
	mov	qword ptr [rsp + 0x78], rcx
	mov	rdi, rcx
	sub	rdi, r15
	add	rdi, rbx
	mov	rbp, rcx
	sub	rbp, r15
	jle	.label_1833
	mov	rcx, qword ptr [r13 + 0x30]
	cmp	rdi, rcx
	jg	.label_1809
	mov	qword ptr [rsp + 0x60], rdx
	mov	qword ptr [rsp + 0x68], rdi
.label_1796:
	mov	rax, qword ptr [rsp + 0x70]
	lea	rdi, [rax + rbx]
	lea	rsi, [rax + r15]
	mov	rdx, rbp
	call	memcmp
	test	eax, eax
	mov	r8, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0x60]
	jne	.label_1819
.label_1833:
	mov	rbx, rdi
	mov	rdi, r13
	mov	rsi, r14
	mov	rcx, qword ptr [rsp + 0x80]
	mov	rbp, r8
	call	get_subexp_sub
	mov	rcx, r13
	mov	r13d, eax
	cmp	r13d, 1
	ja	.label_1797
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rsp + 0x70], rax
	inc	r12
	mov	rax, qword ptr [r14 + 0x20]
	cmp	r12, rax
	mov	rdx, rbx
	mov	rdi, qword ptr [rsp + 0x78]
	mov	r15, rdi
	mov	r13, rcx
	mov	r8, rbp
	jl	.label_1813
	jmp	.label_1816
.label_1819:
	mov	rax, qword ptr [r14 + 0x20]
.label_1820:
	mov	rdx, rbx
	mov	rdi, r15
.label_1816:
	cmp	r12, rax
	jge	.label_1840
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x30]
	mov	r10, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_1800
.label_1840:
	test	r12, r12
	setg	al
	movzx	ebp, al
	add	rbp, rdi
	cmp	rbp, r8
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x30]
	mov	r10, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp + 0x38]
	jg	.label_1800
	jmp	.label_1803
.label_1825:
	cmp	r14, -1
	je	.label_1805
	mov	qword ptr [rsp + 0x38], r11
	mov	qword ptr [rsp + 0x30], r9
	mov	qword ptr [rsp + 0x40], r12
	mov	qword ptr [rsp + 0x58], r8
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	mov	rbx, r13
	jne	.label_1806
	lea	rsi, [rbp + 1]
	sub	rsi, qword ptr [r15]
	mov	edi, 0x18
	call	rpl_calloc
	mov	qword ptr [r15 + 0x10], rax
	test	rax, rax
	mov	r13d, 0xc
	je	.label_1797
.label_1806:
	mov	rcx, qword ptr [r15]
	mov	rdx, qword ptr [r15 + 8]
	mov	dword ptr [rsp], 9
	mov	rdi, rbx
	mov	rsi, rax
	mov	r8, r14
	mov	r9, rbp
	call	check_arrival
	mov	r13d, eax
	cmp	r13d, 1
	mov	r8, qword ptr [rsp + 0x58]
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x30]
	mov	r10, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x68]
	je	.label_1826
	test	r13d, r13d
	jne	.label_1797
	mov	qword ptr [rsp + 0x78], rbx
	mov	rbx, qword ptr [r15 + 0x20]
	cmp	rbx, qword ptr [r15 + 0x18]
	mov	r12, r15
	je	.label_1835
.label_1836:
	mov	edi, 1
	mov	esi, 0x28
	call	rpl_calloc
	mov	r13d, 0xc
	test	rax, rax
	mov	rbx, qword ptr [rsp + 0x78]
	je	.label_1797
	mov	rcx, qword ptr [r12 + 0x20]
	mov	rdx, qword ptr [r12 + 0x28]
	mov	qword ptr [rdx + rcx*8], rax
	mov	qword ptr [rax], r14
	mov	qword ptr [rax + 8], rbp
	inc	rcx
	mov	qword ptr [r12 + 0x20], rcx
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rax
	mov	rcx, qword ptr [rsp + 0x80]
	mov	r8, qword ptr [rsp + 0x58]
	call	get_subexp_sub
	mov	r13d, eax
	cmp	r13d, 1
	ja	.label_1797
	mov	r15, r12
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rsp + 0x70], rax
	mov	r8, qword ptr [rsp + 0x58]
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x30]
	mov	r10, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_1834
.label_1801:
	cmp	rdx, qword ptr [r13 + 0x58]
	jge	.label_1800
	mov	qword ptr [rsp + 0x38], r11
	mov	qword ptr [rsp + 0x18], r10
	mov	qword ptr [rsp + 0x30], r9
	mov	qword ptr [rsp + 0x40], r12
	mov	qword ptr [rsp + 0x58], r8
	lea	rbx, [rdx + 1]
	mov	r15, rdx
	mov	rdi, r13
	mov	esi, ebx
	call	extend_buffers
	mov	rcx, r13
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_1797
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rsp + 0x70], rax
	mov	r13, rcx
	mov	r8, qword ptr [rsp + 0x58]
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x30]
	mov	r10, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp + 0x38]
	mov	rdx, r15
	jmp	.label_1831
.label_1835:
	lea	rax, [rbx + rbx]
	mov	rdi, qword ptr [r12 + 0x28]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	r13d, 0xc
	test	rax, rax
	je	.label_1797
	lea	rcx, [rbx + rbx + 1]
	mov	qword ptr [r12 + 0x28], rax
	mov	qword ptr [r12 + 0x18], rcx
	jmp	.label_1836
	nop	dword ptr [rax + rax]
.label_1803:
	cmp	rbp, qword ptr [r14]
	jle	.label_1821
	cmp	rdx, qword ptr [r13 + 0x30]
	jge	.label_1801
	lea	rbx, [rdx + 1]
.label_1831:
	mov	rcx, qword ptr [rsp + 0x70]
	movzx	eax, byte ptr [rbp + rcx - 1]
	movzx	ecx, byte ptr [rcx + rdx]
	cmp	ecx, eax
	mov	rdx, rbx
	jne	.label_1800
.label_1821:
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rcx, qword ptr [rax + rbp*8]
	test	rcx, rcx
	je	.label_1811
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_1811
	mov	qword ptr [rsp + 0x68], rdx
	mov	r15, r14
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [r9]
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_1812:
	mov	r14, qword ptr [rcx + rsi*8]
	mov	rdi, r14
	shl	rdi, 4
	movzx	ebx, byte ptr [rdx + rdi + 8]
	cmp	ebx, 9
	jne	.label_1830
	cmp	qword ptr [rdx + rdi], r10
	je	.label_1825
.label_1830:
	inc	rsi
	cmp	rsi, rax
	jl	.label_1812
.label_1805:
	mov	rbx, r13
.label_1834:
	mov	rdx, qword ptr [rsp + 0x68]
	jmp	.label_1826
	nop	word ptr cs:[rax + rax]
.label_1811:
	mov	r15, r14
	mov	rbx, r13
.label_1826:
	cmp	rbp, r8
	lea	rbp, [rbp + 1]
	mov	r13, rbx
	mov	r14, r15
	jl	.label_1803
	nop	dword ptr [rax]
.label_1800:
	inc	r11
	cmp	r11, qword ptr [r13 + 0xe8]
	jl	.label_1808
	mov	rax, qword ptr [r13 + 0xc8]
	mov	r15, qword ptr [rsp + 0x20]
	jmp	.label_1842
.label_1837:
	mov	rax, r12
.label_1842:
	mov	dword ptr [rsp + 0xa4], 0
	cmp	r12, rax
	jge	.label_1793
	lea	rax, [r12 + r12*4]
	lea	rbp, [rax*8 + 0x18]
	nop	word ptr cs:[rax + rax]
.label_1843:
	mov	rax, qword ptr [r13 + 0xd8]
	mov	rbx, r13
	mov	rcx, qword ptr [rsp + 0x80]
	cmp	qword ptr [rax + rbp - 0x18], rcx
	jne	.label_1794
	cmp	qword ptr [rax + rbp - 0x10], r8
	jne	.label_1794
	mov	rdx, qword ptr [rax + rbp - 8]
	mov	rsi, qword ptr [rax + rbp]
	mov	r13, qword ptr [r15 + 0x30]
	cmp	rsi, rdx
	jne	.label_1814
	mov	qword ptr [rsp + 0x40], r12
	mov	rax, qword ptr [r15 + 0x28]
	mov	rcx, qword ptr [rsp + 0x80]
	lea	rcx, [rcx + rcx*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	jmp	.label_1818
.label_1814:
	mov	qword ptr [rsp + 0x40], r12
	mov	rax, qword ptr [rsp + 0x80]
	lea	rax, [rax*8]
	add	rax, qword ptr [r15 + 0x18]
.label_1818:
	mov	rax, qword ptr [rax]
	lea	r15, [rax + rax*2]
	lea	r14, [rsi + r8]
	mov	qword ptr [rsp + 0x70], rsi
	sub	r14, rdx
	mov	qword ptr [rsp + 0x78], rdx
	lea	rsi, [r14 - 1]
	mov	r12, rbx
	mov	edx, dword ptr [r12 + 0xa0]
	mov	rdi, r12
	mov	rbx, r8
	call	re_string_context_at
	mov	rdx, rbx
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	rsi, qword ptr [rcx + r14*8]
	mov	rcx, qword ptr [rcx + rdx*8]
	test	rcx, rcx
	mov	edx, 0
	je	.label_1838
	mov	rdx, qword ptr [rcx + 0x10]
.label_1838:
	mov	qword ptr [rsp + 0x68], rdx
	lea	rdx, [r13 + r15*8]
	test	rsi, rsi
	lea	rdi, [rsp + 0x88]
	je	.label_1844
	mov	r15d, eax
	mov	rsi, qword ptr [rsi + 0x50]
	mov	qword ptr [rsp + 0x60], rdx
	mov	rbx, rdi
	call	re_node_set_init_union
	mov	r13d, eax
	mov	dword ptr [rsp + 0xa4], r13d
	test	r13d, r13d
	jne	.label_1799
	lea	rdi, [rsp + 0xa4]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, rbx
	mov	ecx, r15d
	call	re_acquire_state_context
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rdi, qword ptr [rsp + 0x98]
	call	free
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rbx, r12
	cmp	qword ptr [rax + r14*8], 0
	jne	.label_1817
	mov	r13d, dword ptr [rsp + 0xa4]
	test	r13d, r13d
	je	.label_1817
	jmp	.label_1804
.label_1844:
	lea	rdi, [rsp + 0xa4]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x60], rdx
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rbx, r12
	cmp	qword ptr [rax + r14*8], 0
	jne	.label_1817
	mov	r13d, dword ptr [rsp + 0xa4]
	test	r13d, r13d
	mov	r15, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x58]
	mov	r12, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x70]
	je	.label_1832
	jmp	.label_1804
.label_1817:
	mov	r15, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x58]
	mov	r12, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x70]
.label_1832:
	cmp	rdx, rcx
	jne	.label_1794
	mov	rax, qword ptr [rax + r8*8]
	mov	rcx, qword ptr [rsp + 0x68]
	cmp	qword ptr [rax + 0x10], rcx
	jle	.label_1794
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rdx, r8
	mov	r14, r8
	call	check_subexp_matching_top
	mov	rcx, r14
	mov	r13d, eax
	mov	dword ptr [rsp + 0xa4], r13d
	test	r13d, r13d
	jne	.label_1804
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x60]
	mov	r14, rcx
	call	transit_state_bkref
	mov	r8, r14
	mov	r13d, eax
	mov	dword ptr [rsp + 0xa4], r13d
	test	r13d, r13d
	jne	.label_1804
	nop	
.label_1794:
	inc	r12
	add	rbp, 0x28
	mov	r13, rbx
	cmp	r12, qword ptr [r13 + 0xc8]
	jl	.label_1843
	nop	word ptr [rax + rax]
.label_1793:
	mov	rcx, qword ptr [rsp + 0x48]
	inc	rcx
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rcx, qword ptr [rax + 8]
	jl	.label_1823
.label_1815:
	mov	dword ptr [rsp + 0xa4], 0
	xor	r13d, r13d
	jmp	.label_1804
.label_1797:
	mov	dword ptr [rsp + 0xa4], r13d
.label_1804:
	mov	eax, r13d
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1799:
	mov	rdi, qword ptr [rsp + 0x98]
	call	free
	jmp	.label_1804
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4138e0

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	ecx, esi
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x40]
	mov	eax, 0xc
	movabs	rdx, 0xffffffffffffffe
	cmp	rsi, rdx
	ja	.label_1851
	movsxd	rax, ecx
	mov	rcx, qword ptr [r14 + 0x58]
	add	rsi, rsi
	cmp	rcx, rsi
	cmovle	rsi, rcx
	cmp	rax, rsi
	cmovge	rsi, rax
	mov	rdi, r14
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_1851
	mov	rdi, qword ptr [r14 + 0xb8]
	test	rdi, rdi
	je	.label_1858
	mov	rax, qword ptr [r14 + 0x40]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	test	rcx, rcx
	mov	eax, 0xc
	je	.label_1851
	mov	qword ptr [r14 + 0xb8], rcx
.label_1858:
	cmp	byte ptr [r14 + 0x88], 0
	mov	eax, dword ptr [r14 + 0x90]
	je	.label_1855
	cmp	eax, 2
	jl	.label_1859
	mov	rdi, r14
	call	build_wcs_upper_buffer
	test	eax, eax
	je	.label_1849
	jmp	.label_1851
.label_1855:
	cmp	eax, 2
	jl	.label_1853
	mov	rdi, r14
	call	build_wcs_buffer
	jmp	.label_1849
.label_1859:
	mov	rbx, qword ptr [r14 + 0x30]
	mov	r15, qword ptr [r14 + 0x40]
	mov	rax, qword ptr [r14 + 0x58]
	cmp	r15, rax
	cmovg	r15, rax
	cmp	rbx, r15
	jge	.label_1856
	jmp	.label_1850
.label_1852:
	mov	cl, byte ptr [rax + rdx]
	jmp	.label_1847
	nop	word ptr cs:[rax + rax]
.label_1850:
	mov	rcx, qword ptr [r14]
	mov	rax, qword ptr [r14 + 0x78]
	add	rcx, qword ptr [r14 + 0x28]
	mov	cl, byte ptr [rbx + rcx]
	movzx	edx, cl
	test	rax, rax
	jne	.label_1852
.label_1847:
	movzx	r12d, cl
	lea	eax, [r12 + 0x80]
	cmp	eax, 0x17f
	ja	.label_1854
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	r12d, dword ptr [rax + r12*4]
.label_1854:
	mov	rax, qword ptr [r14 + 8]
	mov	byte ptr [rax + rbx], r12b
	inc	rbx
	cmp	rbx, r15
	jl	.label_1850
	mov	rbx, r15
.label_1856:
	mov	qword ptr [r14 + 0x30], rbx
	mov	qword ptr [r14 + 0x38], rbx
	jmp	.label_1849
.label_1853:
	mov	rdx, qword ptr [r14 + 0x78]
	test	rdx, rdx
	je	.label_1849
	mov	rax, qword ptr [r14 + 0x30]
	mov	rcx, qword ptr [r14 + 0x40]
	mov	rsi, qword ptr [r14 + 0x58]
	cmp	rcx, rsi
	cmovg	rcx, rsi
	cmp	rax, rcx
	jge	.label_1857
	mov	rsi, qword ptr [r14 + 0x28]
	add	rsi, rax
	mov	rdi, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 8]
	movzx	esi, byte ptr [rdi + rsi]
	mov	dl, byte ptr [rdx + rsi]
	mov	byte ptr [rbx + rax], dl
	jmp	.label_1848
	nop	dword ptr [rax]
.label_1860:
	mov	rdx, qword ptr [r14 + 0x78]
	mov	rsi, qword ptr [r14]
	mov	rdi, qword ptr [r14 + 8]
	add	rsi, qword ptr [r14 + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	mov	dl, byte ptr [rdx + rsi]
	mov	byte ptr [rdi + rax], dl
.label_1848:
	inc	rax
	cmp	rax, rcx
	jl	.label_1860
	mov	rax, rcx
.label_1857:
	mov	qword ptr [r14 + 0x30], rax
	mov	qword ptr [r14 + 0x38], rax
.label_1849:
	xor	eax, eax
.label_1851:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413aa0

	.globl merge_state_with_log
	.type merge_state_with_log, @function
merge_state_with_log:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rdx
	mov	r13, rsi
	mov	r15, rdi
	mov	r14, qword ptr [r13 + 0x48]
	mov	r12, qword ptr [r13 + 0x98]
	mov	rax, qword ptr [r13 + 0xb8]
	cmp	r14, qword ptr [r13 + 0xc0]
	jle	.label_1865
	mov	qword ptr [rax + r14*8], rbx
	mov	qword ptr [r13 + 0xc0], r14
	jmp	.label_1864
.label_1865:
	mov	rcx, qword ptr [rax + r14*8]
	test	rcx, rcx
	je	.label_1866
	mov	rdx, qword ptr [rcx + 0x50]
	test	rbx, rbx
	je	.label_1867
	mov	rbx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp]
	mov	rsi, rbx
	call	re_node_set_init_union
	mov	dword ptr [r15], eax
	test	eax, eax
	jne	.label_1861
	mov	rsi, qword ptr [r13 + 0x48]
	test	rbx, rbx
	sete	bpl
	jmp	.label_1863
.label_1866:
	mov	qword ptr [rax + r14*8], rbx
	jmp	.label_1864
.label_1867:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp], xmm0
	mov	bpl, 1
	mov	rsi, r14
.label_1863:
	dec	rsi
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	call	re_string_context_at
	lea	rdx, [rsp]
	mov	rdi, r15
	mov	rsi, r12
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rbx, rax
	mov	rax, qword ptr [r13 + 0xb8]
	mov	qword ptr [rax + r14*8], rbx
	test	bpl, bpl
	jne	.label_1864
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_1864:
	test	rbx, rbx
	je	.label_1869
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	je	.label_1868
	lea	r12, [rbx + 8]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	check_subexp_matching_top
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1862
	test	byte ptr [rbx + 0x68], 0x40
	mov	rax, rbx
	je	.label_1862
	mov	rdi, r13
	mov	rsi, r12
	call	transit_state_bkref
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1862
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + r14*8]
	jmp	.label_1862
.label_1869:
	mov	rax, rbx
	jmp	.label_1862
.label_1868:
	mov	rax, rbx
.label_1862:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1861:
	xor	eax, eax
	jmp	.label_1862
	nop	
	.section	.text
	.align	16
	#Procedure 0x413bf0

	.globl re_node_set_init_union
	.type re_node_set_init_union, @function
re_node_set_init_union:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	rbp, rdi
	test	r12, r12
	je	.label_1877
	mov	r13, qword ptr [r12 + 8]
	test	r15, r15
	je	.label_1874
	test	r13, r13
	jle	.label_1874
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_1874
	add	rdi, r13
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	mov	ecx, 0xc
	je	.label_1873
	mov	qword ptr [rsp], rbp
	xor	r14d, r14d
	xor	ebx, ebx
	xor	ebp, ebp
	mov	rcx, rbx
	jmp	.label_1872
.label_1874:
	test	r13, r13
	jle	.label_1877
	mov	qword ptr [rbp + 8], r13
	mov	r15, qword ptr [r12 + 8]
	test	r15, r15
	jle	.label_1878
	mov	qword ptr [rbp], r13
	shl	r13, 3
	mov	rdi, r13
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_1871
	mov	rsi, qword ptr [r12 + 0x10]
	shl	r15, 3
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	jmp	.label_1880
.label_1877:
	test	r15, r15
	je	.label_1878
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_1878
	mov	qword ptr [rbp + 8], rdi
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	jle	.label_1878
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_1871
	mov	rsi, qword ptr [r15 + 0x10]
	shl	rbx, 3
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_1880
.label_1878:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], 0
	jmp	.label_1880
.label_1879:
	mov	rcx, rbx
	nop	dword ptr [rax + rax]
.label_1872:
	cmp	rcx, qword ptr [r15 + 8]
	jge	.label_1870
	mov	rdx, qword ptr [r12 + 0x10]
	mov	rdx, qword ptr [rdx + rbp*8]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [rsi + rcx*8]
	cmp	rdx, rsi
	jle	.label_1876
	inc	rcx
	mov	qword ptr [rax + r14*8], rsi
	inc	r14
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	jl	.label_1872
	jmp	.label_1870
.label_1876:
	sete	bl
	movzx	ebx, bl
	add	rbx, rcx
	inc	rbp
	mov	qword ptr [rax + r14*8], rdx
	inc	r14
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	jl	.label_1879
	jmp	.label_1882
.label_1870:
	mov	rbx, rcx
.label_1882:
	sub	r13, rbp
	jle	.label_1881
	lea	rdi, [rax + r14*8]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rax + rbp*8]
	shl	r13, 3
	mov	rdx, r13
	call	memcpy
	sub	r14, rbp
	add	r14, qword ptr [r12 + 8]
	jmp	.label_1875
.label_1881:
	mov	rdx, qword ptr [r15 + 8]
	sub	rdx, rbx
	jle	.label_1875
	lea	rdi, [rax + r14*8]
	mov	rax, qword ptr [r15 + 0x10]
	lea	rsi, [rax + rbx*8]
	shl	rdx, 3
	call	memcpy
	sub	r14, rbx
	add	r14, qword ptr [r15 + 8]
.label_1875:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + 8], r14
.label_1880:
	xor	ecx, ecx
.label_1873:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1871:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	ecx, 0xc
	jmp	.label_1873
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413de0

	.globl get_subexp_sub
	.type get_subexp_sub, @function
get_subexp_sub:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	rbx, rcx
	mov	r12, rdx
	mov	r15, rsi
	mov	r13, rdi
	lea	rsi, [r12 + 0x10]
	mov	rdx, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 8]
	mov	dword ptr [rsp], 8
	mov	r8, rbx
	mov	r9, r14
	call	check_arrival
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1887
	mov	rsi, qword ptr [r15]
	mov	qword ptr [rsp + 0x20], r15
	mov	rdi, qword ptr [r12 + 8]
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rax, qword ptr [r13 + 0xd0]
	cmp	r15, rax
	jl	.label_1890
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 0x18], rdi
	mov	rdi, qword ptr [r13 + 0xd8]
	shl	rax, 4
	lea	rsi, [rax + rax*4]
	call	realloc
	test	rax, rax
	je	.label_1888
	mov	qword ptr [r13 + 0xd8], rax
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rbp, qword ptr [r13 + 0xd0]
	lea	rcx, [r15 + r15*4]
	lea	rdi, [rax + rcx*8]
	lea	rax, [rbp*8]
	lea	rdx, [rax + rax*4]
	xor	esi, esi
	call	memset
	add	rbp, rbp
	mov	qword ptr [r13 + 0xd0], rbp
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x10]
.label_1890:
	test	r15, r15
	jle	.label_1891
	lea	rcx, [r15 - 1]
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rcx, [rcx + rcx*4]
	cmp	qword ptr [rax + rcx*8 + 8], r14
	jne	.label_1885
	mov	byte ptr [rax + rcx*8 + 0x20], 1
	jmp	.label_1885
.label_1891:
	mov	rax, qword ptr [r13 + 0xd8]
.label_1885:
	lea	rcx, [r15 + r15*4]
	mov	qword ptr [rax + rcx*8], rbx
	mov	qword ptr [rax + rcx*8 + 8], r14
	mov	qword ptr [rax + rcx*8 + 0x10], rsi
	mov	qword ptr [rax + rcx*8 + 0x18], rdi
	xor	edx, edx
	sub	rdi, rsi
	mov	si, 0xffff
	cmovne	si, dx
	mov	word ptr [rax + rcx*8 + 0x22], si
	inc	r15
	mov	qword ptr [r13 + 0xc8], r15
	mov	byte ptr [rax + rcx*8 + 0x20], 0
	movsxd	rax, dword ptr [r13 + 0xe0]
	cmp	rax, rdi
	jge	.label_1886
	mov	dword ptr [r13 + 0xe0], edi
.label_1886:
	add	r14, qword ptr [r12 + 8]
	mov	rax, qword ptr [rsp + 0x20]
	sub	r14, qword ptr [rax]
	mov	rax, qword ptr [r13 + 0x40]
	mov	r15, qword ptr [r13 + 0xc0]
	cmp	rax, r14
	jg	.label_1889
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_1883
.label_1889:
	mov	rax, qword ptr [r13 + 0x30]
	cmp	rax, r14
	jg	.label_1884
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_1884
.label_1883:
	lea	esi, [r14 + 1]
	mov	rdi, r13
	call	extend_buffers
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1887
.label_1884:
	xor	ebp, ebp
	mov	rdx, r14
	sub	rdx, r15
	jle	.label_1887
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rax + r15*8 + 8]
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
	mov	qword ptr [r13 + 0xc0], r14
.label_1887:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1888:
	mov	rdi, qword ptr [r13 + 0xd8]
	call	free
	mov	ebp, 0xc
	jmp	.label_1887
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413fc0

	.globl check_arrival
	.type check_arrival, @function
check_arrival:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	qword ptr [rsp + 0x48], r9
	mov	rbp, rcx
	mov	r15, rsi
	mov	rax, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x58], rax
	mov	dword ptr [rsp + 0x8c], 0
	mov	rax, qword ptr [rax]
	mov	rcx, rdx
	shl	rcx, 4
	mov	rax, qword ptr [rax + rcx]
	mov	qword ptr [rsp + 0x40], rax
	mov	rbx, qword ptr [r15 + 8]
	movsxd	rax, dword ptr [rdi + 0xe0]
	lea	rcx, [rax + r9]
	cmp	rbx, rcx
	jle	.label_1920
	mov	qword ptr [rsp + 0x68], rdx
	mov	qword ptr [rsp + 0x18], r8
	mov	r12, rdi
	mov	r13, qword ptr [r15 + 0x10]
.label_1897:
	mov	qword ptr [rsp + 0x50], r12
	mov	r14, qword ptr [r15]
	test	r14, r14
	cmove	r14, rbp
	mov	rdi, r12
	mov	r12, qword ptr [rdi + 0x48]
	mov	rbx, qword ptr [rdi + 0xb8]
	mov	qword ptr [rdi + 0xb8], r13
	mov	qword ptr [rdi + 0x48], r14
	lea	rsi, [r14 - 1]
	mov	edx, dword ptr [rdi + 0xa0]
	call	re_string_context_at
	cmp	r14, rbp
	jne	.label_1906
	mov	dword ptr [rsp + 0x60], eax
	mov	rbp, r14
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1506]]
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x80], rax
	test	rax, rax
	je	.label_1912
	mov	qword ptr [rsp + 0x28], rbx
	mov	qword ptr [rsp + 0x30], r15
	mov	rcx, qword ptr [rsp + 0x68]
	mov	qword ptr [rax], rcx
	mov	dword ptr [rsp + 0x8c], 0
	lea	rsi, [rsp + 0x70]
	mov	r15, qword ptr [rsp + 0x58]
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 0x40]
	mov	ecx, dword ptr [rsp + 0xf0]
	call	check_arrival_expand_ecl
	mov	r14d, eax
	mov	dword ptr [rsp + 0x8c], r14d
	test	r14d, r14d
	jne	.label_1922
	mov	qword ptr [rsp + 0x20], r12
	mov	rbx, qword ptr [rsp + 0x78]
	mov	r13, qword ptr [rsp + 0x50]
	mov	r8, rbp
	jmp	.label_1924
.label_1906:
	mov	rbp, qword ptr [r13 + r14*8]
	mov	rcx, r14
	test	rbp, rbp
	je	.label_1892
	mov	qword ptr [rsp + 0x28], rbx
	mov	qword ptr [rsp + 0x20], r12
	mov	qword ptr [rsp + 0x30], r15
	test	byte ptr [rbp + 0x68], 0x40
	jne	.label_1895
	mov	dword ptr [rsp + 0x60], eax
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	qword ptr [rsp + 0x80], 0
	xor	ebx, ebx
	mov	r13, qword ptr [rsp + 0x50]
	mov	r15, qword ptr [rsp + 0x58]
	mov	r8, rcx
	jmp	.label_1900
.label_1892:
	mov	qword ptr [rsp + 0x28], rbx
	mov	qword ptr [rsp + 0x20], r12
	mov	qword ptr [rsp + 0x30], r15
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	qword ptr [rsp + 0x80], 0
	xor	ebp, ebp
	mov	r13, qword ptr [rsp + 0x50]
	mov	r8, rcx
	jmp	.label_1917
.label_1895:
	mov	rbx, qword ptr [rbp + 0x10]
	mov	qword ptr [rsp + 0x78], rbx
	mov	r14, qword ptr [rbp + 0x10]
	test	r14, r14
	mov	r15, qword ptr [rsp + 0x58]
	mov	r8, rcx
	jle	.label_1910
	mov	r12, r8
	mov	dword ptr [rsp + 0x60], eax
	mov	qword ptr [rsp + 0x70], rbx
	lea	rdi, [rbx*8]
	call	malloc
	mov	qword ptr [rsp + 0x80], rax
	test	rax, rax
	je	.label_1912
	mov	rsi, qword ptr [rbp + 0x18]
	shl	r14, 3
	mov	rdi, rax
	mov	rdx, r14
	call	memcpy
	mov	dword ptr [rsp + 0x8c], 0
	mov	r13, qword ptr [rsp + 0x50]
	mov	r8, r12
	jmp	.label_1900
.label_1920:
	movabs	rsi, 0x7fffffffffffffff
	sub	rsi, rbx
	mov	r14d, 0xc
	cmp	rsi, rcx
	jle	.label_1894
	mov	qword ptr [rsp + 0x18], r8
	mov	rcx, qword ptr [rsp + 0x48]
	lea	rcx, [rax + rcx + 1]
	lea	rsi, [rcx + rbx]
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_1894
	mov	qword ptr [rsp + 0x60], rcx
	mov	qword ptr [rsp + 0x68], rdx
	mov	r12, rdi
	mov	rdi, qword ptr [r15 + 0x10]
	mov	qword ptr [rsp + 0x38], rsi
	lea	rsi, [rsi*8]
	call	realloc
	mov	r13, rax
	test	r13, r13
	je	.label_1894
	mov	qword ptr [r15 + 0x10], r13
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [r15 + 8], rax
	lea	rdi, [r13 + rbx*8]
	mov	rdx, qword ptr [rsp + 0x60]
	shl	rdx, 3
	xor	esi, esi
	call	memset
	jmp	.label_1897
.label_1910:
	mov	dword ptr [rsp + 0x60], eax
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	qword ptr [rsp + 0x80], 0
	xor	ebx, ebx
	mov	dword ptr [rsp + 0x8c], 0
	mov	r13, qword ptr [rsp + 0x50]
.label_1900:
	test	byte ptr [rbp + 0x68], 0x40
	je	.label_1917
.label_1924:
	test	rbx, rbx
	mov	rcx, qword ptr [rsp + 0x40]
	je	.label_1918
	lea	rsi, [rsp + 0x70]
	mov	rdi, r13
	mov	rdx, r8
	mov	rbx, r8
	mov	r8d, dword ptr [rsp + 0xf0]
	call	expand_bkref_cache
	mov	r8, rbx
	mov	r14d, eax
	mov	dword ptr [rsp + 0x8c], r14d
	test	r14d, r14d
	jne	.label_1922
.label_1918:
	mov	rbx, r8
	lea	rdi, [rsp + 0x8c]
	lea	rdx, [rsp + 0x70]
	mov	rsi, r15
	mov	ecx, dword ptr [rsp + 0x60]
	call	re_acquire_state_context
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1927
	mov	eax, dword ptr [rsp + 0x8c]
	test	eax, eax
	jne	.label_1893
.label_1927:
	mov	rax, qword ptr [r13 + 0xb8]
	mov	r8, rbx
	mov	qword ptr [rax + r8*8], rbp
.label_1917:
	mov	r15, qword ptr [rsp + 0x48]
	cmp	r8, r15
	jge	.label_1903
	lea	rbx, [rsp + 0x70]
	xor	ecx, ecx
.label_1909:
	mov	qword ptr [rsp + 0x68], r8
	mov	qword ptr [rsp + 0x60], rbp
	movsxd	rax, dword ptr [r13 + 0xe0]
	cmp	rcx, rax
	jg	.label_1919
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x78], 0
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rsi, qword ptr [rax + r8*8 + 8]
	test	rsi, rsi
	mov	r15, rbx
	je	.label_1905
	add	rsi, 8
	mov	rdi, r15
	mov	rbx, r8
	call	re_node_set_merge
	mov	r8, rbx
	mov	dword ptr [rsp + 0x8c], eax
	test	eax, eax
	jne	.label_1893
.label_1905:
	test	rbp, rbp
	je	.label_1913
	mov	rbx, qword ptr [r13 + 0x98]
	mov	dword ptr [rsp + 0xb4], 0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	mov	qword ptr [rsp + 0xa0], 0
	cmp	qword ptr [rbp + 0x28], 0
	mov	edi, 0
	jle	.label_1916
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_1902:
	mov	rax, qword ptr [rbp + 0x30]
	mov	r15, qword ptr [rax + r12*8]
	mov	rsi, qword ptr [rbx]
	mov	rbp, r15
	shl	rbp, 4
	test	byte ptr [rsi + rbp + 0xa], 0x10
	je	.label_1925
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r13
	mov	rcx, r8
	mov	r14, r8
	call	check_node_accept_bytes
	cmp	eax, 2
	jl	.label_1899
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rdx, r14
	mov	r14, rbx
	mov	rcx, qword ptr [rcx + r15*8]
	movsxd	rbp, eax
	add	rbp, rdx
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	qword ptr [rsp + 0x98], 0
	test	rsi, rsi
	lea	r13, [rsp + 0x90]
	je	.label_1901
	add	rsi, 8
	mov	rdi, r13
	mov	rbx, rcx
	call	re_node_set_merge
	mov	rcx, rbx
	mov	ebx, eax
	mov	dword ptr [rsp + 0xb4], ebx
	test	ebx, ebx
	jne	.label_1908
.label_1901:
	mov	rdi, r13
	mov	rsi, rcx
	call	re_node_set_insert
	test	al, al
	je	.label_1911
	lea	rdi, [rsp + 0xb4]
	mov	rsi, r14
	mov	rdx, r13
	call	re_acquire_state
	mov	r13, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [r13 + 0xb8]
	mov	qword ptr [rcx + rbp*8], rax
	mov	rax, qword ptr [r13 + 0xb8]
	cmp	qword ptr [rax + rbp*8], 0
	jne	.label_1914
	mov	ebx, dword ptr [rsp + 0xb4]
	test	ebx, ebx
	je	.label_1914
	jmp	.label_1908
	nop	dword ptr [rax]
.label_1899:
	mov	r14, rbx
	test	eax, eax
	jne	.label_1914
	mov	rsi, qword ptr [r14]
	mov	r8, qword ptr [rsp + 0x68]
	mov	rbx, r14
	nop	word ptr cs:[rax + rax]
.label_1925:
	mov	r14, rbx
	add	rsi, rbp
	mov	rdi, r13
	mov	rdx, r8
	call	check_node_accept
	test	al, al
	je	.label_1896
.label_1914:
	mov	rax, qword ptr [r14 + 0x18]
	mov	rsi, qword ptr [rax + r15*8]
	lea	rdi, [rsp + 0x70]
	call	re_node_set_insert
	test	al, al
	je	.label_1911
.label_1896:
	inc	r12
	mov	rbp, qword ptr [rsp + 0x60]
	cmp	r12, qword ptr [rbp + 0x28]
	mov	r8, qword ptr [rsp + 0x68]
	mov	rbx, r14
	jl	.label_1902
	mov	rdi, qword ptr [rsp + 0xa0]
	lea	r15, [rsp + 0x70]
.label_1916:
	mov	rbx, r8
	call	free
	mov	r8, rbx
	mov	dword ptr [rsp + 0x8c], 0
.label_1913:
	lea	r14, [r8 + 1]
	cmp	qword ptr [rsp + 0x78], 0
	je	.label_1907
	mov	r12, r8
	mov	rdi, qword ptr [rsp + 0x58]
	mov	rsi, r15
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdx, rbx
	mov	ebp, dword ptr [rsp + 0xf0]
	mov	ecx, ebp
	call	check_arrival_expand_ecl
	mov	dword ptr [rsp + 0x8c], eax
	test	eax, eax
	jne	.label_1893
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	mov	rcx, rbx
	mov	r8d, ebp
	call	expand_bkref_cache
	mov	dword ptr [rsp + 0x8c], eax
	test	eax, eax
	mov	r8, r12
	jne	.label_1893
.label_1907:
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	mov	rsi, r8
	mov	r12, r8
	call	re_string_context_at
	lea	rdi, [rsp + 0x8c]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, r15
	mov	rbx, r15
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1926
	mov	eax, dword ptr [rsp + 0x8c]
	test	eax, eax
	jne	.label_1893
.label_1926:
	mov	rcx, qword ptr [rsp + 0x38]
	inc	rcx
	test	rbp, rbp
	mov	rax, qword ptr [r13 + 0xb8]
	mov	qword ptr [rax + r12*8 + 8], rbp
	mov	eax, 0
	cmovne	rcx, rax
	mov	r15, qword ptr [rsp + 0x48]
	cmp	r14, r15
	mov	r8, r14
	jl	.label_1909
	jmp	.label_1904
.label_1903:
	mov	r14, r8
.label_1904:
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rcx, qword ptr [rax + r15*8]
	lea	rax, [rcx + 8]
	test	rcx, rcx
	cmove	rax, rcx
	mov	rcx, qword ptr [rsp + 0x30]
	mov	qword ptr [rcx], r14
	mov	rcx, qword ptr [rsp + 0x28]
	mov	qword ptr [r13 + 0xb8], rcx
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [r13 + 0x48], rcx
	je	.label_1898
	mov	rcx, qword ptr [rax + 8]
	test	rcx, rcx
	jle	.label_1898
	xor	r14d, r14d
	dec	rcx
	mov	rax, qword ptr [rax + 0x10]
	je	.label_1915
	xor	edx, edx
	mov	rbp, qword ptr [rsp + 0x18]
.label_1923:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], rbp
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_1923
	jmp	.label_1921
.label_1911:
	mov	rdi, qword ptr [rsp + 0xa0]
	call	free
	mov	ebx, 0xc
	mov	dword ptr [rsp + 0x8c], ebx
	jmp	.label_1893
.label_1908:
	mov	rdi, qword ptr [rsp + 0xa0]
	call	free
	mov	dword ptr [rsp + 0x8c], ebx
.label_1893:
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
	mov	r14d, dword ptr [rsp + 0x8c]
	jmp	.label_1894
.label_1915:
	xor	edx, edx
	mov	rbp, qword ptr [rsp + 0x18]
.label_1921:
	cmp	rdx, -1
	je	.label_1898
	cmp	qword ptr [rax + rdx*8], rbp
	je	.label_1894
.label_1898:
	mov	r14d, 1
.label_1894:
	mov	eax, r14d
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1922:
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
	jmp	.label_1894
.label_1912:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	dword ptr [rsp + 0x8c], 0xc
	mov	r14d, 0xc
	jmp	.label_1894
.label_1919:
	mov	r14, r8
	jmp	.label_1904
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414780

	.globl check_arrival_expand_ecl
	.type check_arrival_expand_ecl, @function
check_arrival_expand_ecl:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15d, ecx
	mov	r13, rdx
	mov	r14, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	r12, qword ptr [r14 + 8]
	mov	qword ptr [rsp + 0x10], r12
	mov	qword ptr [rsp + 0x18], 0
	lea	rdi, [r12*8]
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	mov	ebx, 0xc
	test	rax, rax
	je	.label_1935
	test	r12, r12
	jle	.label_1930
	xor	r12d, r12d
	jmp	.label_1928
	nop	dword ptr [rax]
.label_1932:
	inc	r12
	cmp	r12, qword ptr [r14 + 8]
	jl	.label_1928
	jmp	.label_1930
	nop	
.label_1934:
	cmp	rbp, -1
	je	.label_1931
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsp + 0x10]
	mov	rcx, r13
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	jmp	.label_1936
	nop	dword ptr [rax]
.label_1928:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rsp + 8]
	mov	r8, qword ptr [rax + 0x30]
	lea	r9, [rdx + rdx*2]
	mov	r10, qword ptr [r8 + r9*8 + 8]
	test	r10, r10
	jle	.label_1931
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	mov	rax, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rax]
	xor	eax, eax
	nop	
.label_1933:
	mov	rbp, qword ptr [rdi + rax*8]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	esi, byte ptr [rbx + rcx + 8]
	cmp	esi, r15d
	jne	.label_1929
	cmp	qword ptr [rbx + rcx], r13
	je	.label_1934
.label_1929:
	inc	rax
	cmp	rax, r10
	jl	.label_1933
.label_1931:
	lea	rsi, [r8 + r9*8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_merge
.label_1936:
	mov	ebx, eax
	test	ebx, ebx
	je	.label_1932
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_1935
.label_1930:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [r14 + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14], xmm0
	xor	ebx, ebx
.label_1935:
	mov	eax, ebx
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
	#Procedure 0x4148c0

	.globl expand_bkref_cache
	.type expand_bkref_cache, @function
expand_bkref_cache:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	r15, rdx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x28], r14
	mov	r10, rdi
	mov	qword ptr [rsp + 0x30], r10
	mov	rax, qword ptr [r10 + 0x98]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9, qword ptr [r10 + 0xc8]
	xor	eax, eax
	test	r9, r9
	mov	edx, 0
	jle	.label_1952
	mov	rsi, qword ptr [r10 + 0xd8]
	xor	edx, edx
	mov	rdi, r9
	nop	dword ptr [rax]
.label_1962:
	lea	rbp, [rdi + rdx]
	mov	rbx, rbp
	shr	rbx, 0x3f
	add	rbx, rbp
	sar	rbx, 1
	lea	rbp, [rbx + rbx*4]
	cmp	qword ptr [rsi + rbp*8 + 8], r15
	cmovge	rdi, rbx
	lea	rbp, [rbx + 1]
	cmovl	rdx, rbp
	cmp	rdx, rdi
	jl	.label_1962
.label_1952:
	cmp	rdx, r9
	jge	.label_1942
	cmp	rdx, -1
	je	.label_1942
	mov	qword ptr [rsp + 0x10], rcx
	mov	dword ptr [rsp + 0x1c], r8d
	mov	rcx, qword ptr [r10 + 0xd8]
	lea	rdx, [rdx + rdx*4]
	mov	qword ptr [rsp + 8], rdx
	cmp	qword ptr [rcx + rdx*8 + 8], r15
	jne	.label_1942
	mov	dword ptr [rsp + 0x24], eax
	jmp	.label_1968
.label_1948:
	mov	rcx, qword ptr [r10 + 0xd8]
.label_1968:
	mov	rax, qword ptr [rsp + 8]
	lea	r13, [rcx + rax*8]
	nop	dword ptr [rax]
.label_1963:
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	jle	.label_1941
	mov	rdx, qword ptr [r13]
	dec	rcx
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdi, rcx
	mov	esi, 0
	je	.label_1946
	nop	word ptr cs:[rax + rax]
.label_1958:
	lea	rbp, [rsi + rdi]
	shr	rbp, 1
	cmp	qword ptr [rax + rbp*8], rdx
	lea	rbx, [rbp + 1]
	cmovl	rsi, rbx
	cmovge	rdi, rbp
	cmp	rsi, rdi
	jb	.label_1958
.label_1946:
	cmp	rsi, -1
	je	.label_1941
	cmp	qword ptr [rax + rsi*8], rdx
	jne	.label_1941
	mov	r12, qword ptr [r13 + 0x18]
	add	r12, r15
	sub	r12, qword ptr [r13 + 0x10]
	cmp	r12, r15
	jne	.label_1966
	test	rcx, rcx
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	lea	rdx, [rdx + rdx*2]
	mov	rdx, qword ptr [rsi + rdx*8 + 0x10]
	mov	rbx, qword ptr [rdx]
	mov	edx, 0
	je	.label_1959
	nop	
.label_1947:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], rbx
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_1947
.label_1959:
	cmp	rdx, -1
	je	.label_1955
	mov	ecx, 4
	cmp	qword ptr [rax + rdx*8], rbx
	jne	.label_1955
	mov	rbp, r14
	jmp	.label_1939
.label_1966:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rax + 0x18]
	mov	r14, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [r10 + 0xb8]
	mov	rbx, qword ptr [rax + r12*8]
	test	rbx, rbx
	je	.label_1961
	mov	rdi, qword ptr [rbx + 0x10]
	test	rdi, rdi
	jle	.label_1950
	mov	rcx, rdi
	dec	rcx
	mov	rax, qword ptr [rbx + 0x18]
	mov	edx, 0
	je	.label_1938
	nop	dword ptr [rax + rax]
.label_1953:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r14
	lea	rbp, [rsi + 1]
	cmovl	rdx, rbp
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_1953
.label_1938:
	cmp	rdx, -1
	je	.label_1950
	mov	ecx, 4
	cmp	qword ptr [rax + rdx*8], r14
	je	.label_1954
.label_1950:
	mov	qword ptr [rsp + 0x48], rdi
	mov	rbp, qword ptr [rbx + 0x10]
	test	rbp, rbp
	jle	.label_1957
	mov	qword ptr [rsp + 0x40], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rsp + 0x50], rax
	test	rax, rax
	je	.label_1967
	mov	rsi, qword ptr [rbx + 0x18]
	shl	rbp, 3
	mov	rdi, rax
	mov	rdx, rbp
	call	memcpy
	jmp	.label_1943
.label_1955:
	mov	qword ptr [rsp + 0x30], r10
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1506]]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x50], rax
	test	rax, rax
	je	.label_1949
	mov	qword ptr [rax], rbx
	xor	eax, eax
.label_1944:
	mov	dword ptr [rsp + 0x20], eax
	mov	dword ptr [rsp + 0x64], eax
	mov	rdi, qword ptr [rsp + 0x38]
	lea	r12, [rsp + 0x40]
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x10]
	mov	ecx, dword ptr [rsp + 0x1c]
	call	check_arrival_expand_ecl
	mov	ebx, eax
	mov	rdi, r14
	mov	rbp, r14
	mov	rsi, r12
	call	re_node_set_merge
	mov	r14d, eax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	edx, dword ptr [rsp + 0x20]
	mov	eax, ebx
	or	eax, edx
	mov	ecx, 2
	or	eax, r14d
	mov	r10, qword ptr [rsp + 0x30]
	jne	.label_1960
.label_1945:
	mov	r14, rbp
	jmp	.label_1939
.label_1961:
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1506]]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x50], rax
	test	rax, rax
	je	.label_1951
	mov	qword ptr [rax], r14
	mov	dword ptr [rsp + 0x64], 0
	jmp	.label_1956
.label_1957:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	qword ptr [rsp + 0x50], 0
.label_1943:
	xor	ebx, ebx
.label_1940:
	mov	dword ptr [rsp + 0x64], ebx
	lea	rdi, [rsp + 0x40]
	mov	rsi, r14
	call	re_node_set_insert
	test	ebx, ebx
	jne	.label_1937
	xor	al, 1
	jne	.label_1937
.label_1956:
	lea	rdi, [rsp + 0x64]
	mov	rsi, qword ptr [rsp + 0x38]
	lea	rdx, [rsp + 0x40]
	call	re_acquire_state
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + r12*8], rax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	r10, rbx
	mov	rax, qword ptr [r10 + 0xb8]
	cmp	qword ptr [rax + r12*8], 0
	sete	al
	mov	edx, dword ptr [rsp + 0x64]
	test	edx, edx
	setne	cl
	and	cl, al
	movzx	ecx, cl
	mov	eax, dword ptr [rsp + 0x24]
	cmovne	eax, edx
	mov	dword ptr [rsp + 0x24], eax
.label_1954:
	mov	r14, qword ptr [rsp + 0x28]
.label_1939:
	test	ecx, ecx
	je	.label_1941
	cmp	ecx, 4
	jne	.label_1965
	nop	dword ptr [rax + rax]
.label_1941:
	xor	eax, eax
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	jne	.label_1963
	jmp	.label_1942
.label_1949:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	eax, 0xc
	jmp	.label_1944
.label_1960:
	test	ebx, ebx
	cmovne	r14d, ebx
	test	edx, edx
	cmovne	r14d, edx
	mov	dword ptr [rsp + 0x64], r14d
	mov	ecx, 1
	mov	dword ptr [rsp + 0x24], r14d
	jmp	.label_1945
.label_1937:
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	test	ebx, ebx
	mov	eax, 0xc
	cmove	ebx, eax
	mov	dword ptr [rsp + 0x64], ebx
	mov	ecx, 1
	mov	dword ptr [rsp + 0x24], ebx
	jmp	.label_1964
.label_1951:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x64], 0xc
	mov	dword ptr [rsp + 0x24], 0xc
	mov	ecx, 1
.label_1964:
	mov	r14, qword ptr [rsp + 0x28]
	mov	r10, qword ptr [rsp + 0x30]
	jmp	.label_1939
.label_1967:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	ebx, 0xc
	jmp	.label_1940
.label_1965:
	cmp	ecx, 2
	je	.label_1948
	mov	eax, dword ptr [rsp + 0x24]
.label_1942:
	add	rsp, 0x68
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
	#Procedure 0x414d50

	.globl check_arrival_expand_ecl_sub
	.type check_arrival_expand_ecl_sub, @function
check_arrival_expand_ecl_sub:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15d, r8d
	mov	r14, rcx
	mov	rbp, rdx
	mov	rbx, rsi
	mov	r12, rdi
	jmp	.label_1976
	nop	dword ptr [rax]
.label_1970:
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rbp, qword ptr [rax]
.label_1976:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jle	.label_1975
	dec	rax
	mov	rcx, qword ptr [rbx + 0x10]
	mov	edx, 0
	je	.label_1969
	nop	
.label_1974:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], rbp
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_1974
.label_1969:
	cmp	rdx, -1
	je	.label_1975
	cmp	qword ptr [rcx + rdx*8], rbp
	je	.label_1972
.label_1975:
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, r15d
	jne	.label_1978
	cmp	qword ptr [rax + rcx], r14
	je	.label_1973
.label_1978:
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	je	.label_1971
	mov	rax, qword ptr [r12 + 0x28]
	lea	rbp, [rbp + rbp*2]
	mov	rcx, qword ptr [rax + rbp*8 + 8]
	cmp	rcx, 2
	je	.label_1977
	test	rcx, rcx
	jne	.label_1970
	jmp	.label_1972
	nop	dword ptr [rax]
.label_1977:
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rdx, qword ptr [rax + 8]
	mov	rdi, r12
	mov	rsi, rbx
	mov	rcx, r14
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	test	eax, eax
	jne	.label_1971
	mov	rax, qword ptr [r12 + 0x28]
	jmp	.label_1970
.label_1973:
	cmp	r15d, 9
	jne	.label_1972
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	je	.label_1971
.label_1972:
	xor	eax, eax
.label_1971:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x414e60

	.globl re_acquire_state
	.type re_acquire_state, @function
re_acquire_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdx
	mov	r14, rdi
	mov	r8, qword ptr [r12 + 8]
	test	r8, r8
	je	.label_1996
	mov	r15, r8
	jle	.label_1980
	mov	rcx, qword ptr [r12 + 0x10]
	xor	eax, eax
	cmp	r8, 4
	mov	r15, r8
	jb	.label_1982
	xor	eax, eax
	mov	rdx, r8
	and	rdx, 0xfffffffffffffffc
	mov	r15, r8
	je	.label_1982
	movq	xmm0, r8
	lea	rbx, [r8 - 4]
	mov	eax, ebx
	shr	eax, 2
	inc	eax
	xor	edi, edi
	test	al, 3
	je	.label_1990
	lea	ebp, [r8 - 4]
	shr	ebp, 2
	inc	ebp
	and	ebp, 3
	neg	rbp
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	dword ptr [rax]
.label_1994:
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	add	rdi, 4
	inc	rbp
	jne	.label_1994
	jmp	.label_2004
.label_1990:
	pxor	xmm1, xmm1
.label_2004:
	cmp	rbx, 0xc
	jb	.label_1983
	mov	rax, r8
	and	rax, 0xfffffffffffffffc
	sub	rax, rdi
	lea	rdi, [rcx + rdi*8 + 0x70]
	nop	word ptr [rax + rax]
.label_1995:
	movdqu	xmm2, xmmword ptr [rdi - 0x70]
	movdqu	xmm3, xmmword ptr [rdi - 0x60]
	movdqu	xmm4, xmmword ptr [rdi - 0x50]
	movdqu	xmm5, xmmword ptr [rdi - 0x40]
	paddq	xmm2, xmm0
	paddq	xmm3, xmm1
	paddq	xmm2, xmm4
	paddq	xmm3, xmm5
	movdqu	xmm4, xmmword ptr [rdi - 0x30]
	movdqu	xmm5, xmmword ptr [rdi - 0x20]
	paddq	xmm4, xmm2
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rdi - 0x10]
	movdqu	xmm1, xmmword ptr [rdi]
	paddq	xmm0, xmm4
	paddq	xmm1, xmm5
	add	rdi, 0x80
	add	rax, -0x10
	jne	.label_1995
.label_1983:
	paddq	xmm1, xmm0
	pshufd	xmm0, xmm1, 0x4e
	paddq	xmm0, xmm1
	movq	r15, xmm0
	cmp	r8, rdx
	mov	rax, rdx
	je	.label_1980
.label_1982:
	mov	rdx, r8
	sub	rdx, rax
	lea	rcx, [rcx + rax*8]
	nop	dword ptr [rax + rax]
.label_1985:
	add	r15, qword ptr [rcx]
	add	rcx, 8
	dec	rdx
	jne	.label_1985
.label_1980:
	mov	rdx, qword ptr [rsi + 0x40]
	mov	rcx, qword ptr [rsi + 0x88]
	and	rcx, r15
	lea	rax, [rcx + rcx*2]
	mov	rcx, qword ptr [rdx + rax*8]
	test	rcx, rcx
	jle	.label_1988
	mov	rdx, qword ptr [rdx + rax*8 + 0x10]
	xor	ebx, ebx
	nop	
.label_1992:
	test	r12, r12
	je	.label_1998
	mov	r13, qword ptr [rdx + rbx*8]
	cmp	r15, qword ptr [r13]
	jne	.label_1998
	cmp	qword ptr [r13 + 0x10], r8
	jne	.label_1998
	mov	rdi, r8
	nop	dword ptr [rax + rax]
.label_2003:
	test	rdi, rdi
	jle	.label_2001
	mov	rbp, qword ptr [r13 + 0x18]
	mov	rbp, qword ptr [rbp + rdi*8 - 8]
	mov	rax, qword ptr [r12 + 0x10]
	cmp	rbp, qword ptr [rax + rdi*8 - 8]
	lea	rdi, [rdi - 1]
	je	.label_2003
	nop	word ptr cs:[rax + rax]
.label_1998:
	inc	rbx
	cmp	rbx, rcx
	jl	.label_1992
.label_1988:
	mov	qword ptr [rsp + 0x10], rsi
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	test	r13, r13
	je	.label_1993
	mov	rbp, r13
	add	rbp, 8
	mov	rdi, qword ptr [r12 + 8]
	mov	qword ptr [r13 + 0x10], rdi
	mov	rbx, qword ptr [r12 + 8]
	test	rbx, rbx
	jle	.label_1997
	mov	qword ptr [r13 + 8], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_2002
	mov	qword ptr [rsp + 8], r14
	lea	r14, [r12 + 0x10]
	mov	rsi, qword ptr [r12 + 0x10]
	shl	rbx, 3
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	mov	qword ptr [r13 + 0x50], rbp
	mov	rdi, qword ptr [rsp + 0x10]
	jmp	.label_1984
.label_1997:
	mov	qword ptr [rsp + 8], r14
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], 0
	cmp	qword ptr [r12 + 8], 0
	mov	qword ptr [r13 + 0x50], rbp
	mov	rdi, qword ptr [rsp + 0x10]
	jle	.label_1986
	lea	r14, [r12 + 0x10]
.label_1984:
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_1999:
	mov	r8, qword ptr [rdi]
	mov	rcx, qword ptr [r14]
	mov	rdx, qword ptr [rcx + rax*8]
	shl	rdx, 4
	mov	ebp, dword ptr [r8 + rdx + 8]
	mov	ecx, ebp
	and	ecx, 0x3ffff
	cmp	ecx, 1
	je	.label_1991
	movzx	esi, bpl
	shr	ebp, 0x14
	mov	bl, byte ptr [r13 + 0x68]
	mov	cl, bl
	shr	cl, 5
	movzx	ecx, cl
	or	ecx, ebp
	shl	cl, 5
	and	cl, 0x20
	and	bl, 0xdf
	or	bl, cl
	mov	byte ptr [r13 + 0x68], bl
	cmp	esi, 0xc
	je	.label_1979
	cmp	esi, 4
	je	.label_1987
	cmp	esi, 2
	jne	.label_1989
	or	bl, 0x10
	jmp	.label_1981
.label_1987:
	or	bl, 0x40
	jmp	.label_1981
.label_1989:
	lea	rcx, [r8 + rdx + 8]
	test	dword ptr [rcx], 0x3ff00
	je	.label_1991
.label_1979:
	or	bl, 0x80
.label_1981:
	mov	byte ptr [r13 + 0x68], bl
.label_1991:
	inc	rax
	cmp	rax, qword ptr [r12 + 8]
	jl	.label_1999
.label_1986:
	mov	rsi, r13
	mov	rdx, r15
	call	register_state
	test	eax, eax
	je	.label_2001
	mov	rdi, r13
	call	free_state
	mov	r14, qword ptr [rsp + 8]
	jmp	.label_1993
.label_1996:
	mov	dword ptr [r14], 0
	jmp	.label_2000
.label_2002:
	mov	rdi, r13
	call	free
.label_1993:
	mov	dword ptr [r14], 0xc
.label_2000:
	xor	r13d, r13d
.label_2001:
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
	#Procedure 0x4151b0

	.globl check_node_accept_bytes
	.type check_node_accept_bytes, @function
check_node_accept_bytes:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r9, qword ptr [rdi]
	shl	rsi, 4
	movzx	r10d, byte ptr [r9 + rsi + 8]
	cmp	r10d, 7
	je	.label_2015
	mov	r8d, dword ptr [rdx + 0x90]
	mov	ebx, 1
	cmp	r8d, 1
	je	.label_2005
	lea	rax, [rcx + 1]
	mov	r11, qword ptr [rdx + 0x30]
	cmp	rax, r11
	jge	.label_2005
	lea	rax, [rcx*4]
	add	rax, qword ptr [rdx + 0x10]
	mov	ebx, 1
	nop	
.label_2007:
	cmp	dword ptr [rax + rbx*4], -1
	jne	.label_2005
	lea	rbp, [rcx + rbx + 1]
	inc	rbx
	cmp	rbp, r11
	jl	.label_2007
.label_2005:
	cmp	r10d, 5
	jne	.label_2012
	xor	r14d, r14d
	cmp	ebx, 2
	jl	.label_2011
	mov	rax, qword ptr [rdi + 0xd8]
	test	al, 0x40
	jne	.label_2028
	mov	rsi, qword ptr [rdx + 8]
	movzx	esi, byte ptr [rsi + rcx]
	cmp	esi, 0xa
	je	.label_2011
.label_2028:
	test	al, al
	js	.label_2021
	mov	r14d, ebx
	jmp	.label_2011
.label_2012:
	cmp	ebx, 1
	setg	al
	xor	r14d, r14d
	cmp	r10d, 6
	jne	.label_2011
	test	al, al
	je	.label_2011
	mov	r15, qword ptr [r9 + rsi]
	mov	rsi, qword ptr [r15 + 0x40]
	test	rsi, rsi
	jne	.label_2019
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_2019
	xor	r12d, r12d
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_2006
.label_2019:
	cmp	r8d, 1
	jne	.label_2009
	mov	rax, qword ptr [rdx + 8]
	movzx	r12d, byte ptr [rax + rcx]
	jmp	.label_2006
.label_2009:
	mov	rax, qword ptr [rdx + 0x10]
	mov	r12d, dword ptr [rax + rcx*4]
.label_2006:
	mov	rax, qword ptr [r15 + 0x28]
	test	rax, rax
	jle	.label_2025
	mov	rcx, qword ptr [r15]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_2022:
	cmp	r12d, dword ptr [rcx + rdx*4]
	je	.label_2020
	inc	rdx
	cmp	rdx, rax
	jl	.label_2022
.label_2025:
	cmp	qword ptr [r15 + 0x48], 0
	jle	.label_2024
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_2029:
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	edi, r12d
	call	iswctype
	test	eax, eax
	jne	.label_2020
	inc	rbp
	cmp	rbp, qword ptr [r15 + 0x48]
	jl	.label_2029
	mov	rsi, qword ptr [r15 + 0x40]
.label_2024:
	xor	ecx, ecx
	test	rsi, rsi
	jle	.label_2016
	mov	rax, qword ptr [r15 + 8]
	xor	edx, edx
	nop	
.label_2014:
	cmp	dword ptr [rax + rdx*4], r12d
	jg	.label_2023
	mov	rcx, qword ptr [r15 + 0x10]
	cmp	r12d, dword ptr [rcx + rdx*4]
	jle	.label_2013
.label_2023:
	inc	rdx
	xor	ecx, ecx
	cmp	rdx, rsi
	jl	.label_2014
	jmp	.label_2016
.label_2020:
	mov	ecx, ebx
.label_2016:
	test	byte ptr [r15 + 0x20], 1
	jne	.label_2017
	mov	r14d, ecx
	jmp	.label_2011
.label_2017:
	test	ecx, ecx
	jg	.label_2011
	test	ebx, ebx
	mov	r14d, 1
	cmovg	r14d, ebx
	jmp	.label_2011
.label_2021:
	mov	rax, qword ptr [rdx + 8]
	cmp	byte ptr [rax + rcx], 0
	je	.label_2011
	mov	r14d, ebx
	jmp	.label_2011
.label_2015:
	mov	rax, qword ptr [rdx + 8]
	movzx	esi, byte ptr [rax + rcx]
	xor	r14d, r14d
	cmp	esi, 0xc2
	jae	.label_2027
.label_2011:
	mov	eax, r14d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2013:
	mov	ecx, ebx
	jmp	.label_2016
.label_2027:
	lea	rdi, [rcx + 2]
	mov	rdx, qword ptr [rdx + 0x58]
	cmp	rdi, rdx
	jg	.label_2011
	mov	bl, byte ptr [rcx + rax + 1]
	movzx	edi, sil
	cmp	edi, 0xdf
	ja	.label_2010
	movzx	eax, bl
	cmp	eax, 0xc0
	sbb	eax, eax
	and	eax, 2
	xor	r14d, r14d
	test	bl, bl
	cmovs	r14d, eax
	jmp	.label_2011
.label_2010:
	cmp	edi, 0xef
	ja	.label_2018
	mov	esi, 3
	cmp	edi, 0xe0
	jne	.label_2008
	movzx	edi, bl
	cmp	edi, 0xa0
	jb	.label_2011
	jmp	.label_2008
.label_2018:
	cmp	edi, 0xf7
	ja	.label_2026
	mov	esi, 4
	cmp	edi, 0xf0
	jne	.label_2008
	movzx	edi, bl
	cmp	edi, 0x90
	jb	.label_2011
	jmp	.label_2008
.label_2026:
	cmp	edi, 0xfb
	ja	.label_2031
	mov	esi, 5
	cmp	edi, 0xf8
	jne	.label_2008
	movzx	edi, bl
	cmp	edi, 0x88
	jb	.label_2011
	jmp	.label_2008
.label_2031:
	cmp	edi, 0xfd
	ja	.label_2011
	mov	esi, 6
	cmp	edi, 0xfc
	jne	.label_2008
	movzx	edi, bl
	cmp	edi, 0x84
	jb	.label_2011
.label_2008:
	mov	edi, esi
	lea	rbp, [rdi + rcx]
	cmp	rbp, rdx
	jg	.label_2011
	add	rax, rcx
	mov	ecx, 1
.label_2030:
	mov	dl, byte ptr [rax + rcx]
	test	dl, dl
	jns	.label_2011
	movzx	edx, dl
	cmp	edx, 0xbf
	ja	.label_2011
	inc	rcx
	cmp	rcx, rdi
	jl	.label_2030
	mov	r14d, esi
	jmp	.label_2011
	nop	
	.section	.text
	.align	16
	#Procedure 0x415490

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	push	rbp
	push	rbx
	push	rax
	mov	rax, qword ptr [rdi + 8]
	movzx	ecx, byte ptr [rax + rdx]
	mov	ebx, dword ptr [rsi + 8]
	movzx	ebp, bl
	xor	eax, eax
	dec	ebp
	cmp	ebp, 6
	ja	.label_2032
	jmp	qword ptr [word ptr [+ (rbp * 8) + label_2039]]
.label_2399:
	movzx	eax, byte ptr [rsi]
	cmp	eax, ecx
	je	.label_2035
	xor	eax, eax
	jmp	.label_2032
.label_2400:
	mov	rsi, qword ptr [rsi]
	mov	al, cl
	shr	al, 6
	movzx	eax, al
	mov	rax, qword ptr [rsi + rax*8]
	bt	rax, rcx
	jb	.label_2035
	xor	eax, eax
	jmp	.label_2032
.label_2402:
	test	cl, cl
	js	.label_2037
.label_2401:
	test	cl, cl
	je	.label_2038
	movzx	eax, cl
	cmp	eax, 0xa
	jne	.label_2035
	mov	rax, qword ptr [rdi + 0x98]
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_2035
	xor	eax, eax
	jmp	.label_2032
.label_2038:
	mov	rax, qword ptr [rdi + 0x98]
	cmp	byte ptr [rax + 0xd8], 0
	js	.label_2033
.label_2035:
	mov	ebp, ebx
	shr	ebp, 8
	mov	al, 1
	test	bp, 0x3ff
	je	.label_2032
	mov	eax, dword ptr [rdi + 0xa0]
	mov	rsi, rdx
	mov	edx, eax
	call	re_string_context_at
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_2040
	test	ecx, ecx
	jne	.label_2040
	xor	eax, eax
	jmp	.label_2032
.label_2040:
	test	bh, 8
	je	.label_2034
	test	ecx, ecx
	je	.label_2034
	xor	eax, eax
	jmp	.label_2032
.label_2037:
	xor	eax, eax
	jmp	.label_2032
.label_2034:
	test	bh, 0x20
	je	.label_2036
	mov	ecx, eax
	and	ecx, 2
	jne	.label_2036
	xor	eax, eax
	jmp	.label_2032
.label_2033:
	xor	eax, eax
	jmp	.label_2032
.label_2036:
	and	eax, 8
	test	bpl, bpl
	setns	cl
	shr	eax, 3
	or	al, cl
.label_2032:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x415580

	.globl build_trtable
	.type build_trtable, @function
build_trtable:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xd8
	mov	r13, rsi
	mov	qword ptr [rbp - 0xb8], r13
	mov	r12, rdi
	mov	qword ptr [rbp - 0xd8], r12
	mov	edi, 0x3800
	call	malloc
	mov	rsi, rax
	mov	qword ptr [rbp - 0xc0], rsi
	test	rsi, rsi
	je	.label_2052
	lea	rax, [r13 + 0x58]
	mov	qword ptr [rbp - 0xe8], rax
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r13 + 0x58], xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	xor	r14d, r14d
	cmp	qword ptr [r13 + 0x10], 0
	jle	.label_2083
	lea	rax, [rsi + 0x1800]
	mov	qword ptr [rbp - 0xc8], rax
	xor	ebx, ebx
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_2080:
	mov	qword ptr [rbp - 0x98], rbx
	mov	rax, qword ptr [r13 + 0x18]
	mov	rax, qword ptr [rax + rbx*8]
	mov	rcx, qword ptr [r12]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	mov	qword ptr [rbp - 0xa0], rdx
	mov	eax, dword ptr [rcx + rax + 8]
	movzx	r10d, al
	cmp	r10d, 1
	jne	.label_2044
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	cl, byte ptr [rcx]
	mov	edx, 1
	shl	rdx, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [rbp + rcx*8 - 0x50], rdx
	jmp	.label_2056
	nop	word ptr cs:[rax + rax]
.label_2044:
	cmp	r10d, 7
	je	.label_2066
	cmp	r10d, 5
	je	.label_2068
	cmp	r10d, 3
	jne	.label_2046
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rcx]
	movups	xmm0, xmmword ptr [rcx]
	orps	xmm0, xmmword ptr [rbp - 0x50]
	movaps	xmmword ptr [rbp - 0x50], xmm0
	movdqu	xmm0, xmmword ptr [rcx + 0x10]
	por	xmm0, xmmword ptr [rbp - 0x40]
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	jmp	.label_2056
.label_2066:
	mov	qword ptr [rbp - 0x48], -1
	mov	qword ptr [rbp - 0x50], -1
	mov	rcx, qword ptr [r12 + 0xd8]
	mov	rdx, -2
	test	cl, 0x40
	jne	.label_2049
	mov	qword ptr [rbp - 0x50], -0x401
	mov	rdx, -0x402
.label_2049:
	test	cl, cl
	jns	.label_2056
	mov	qword ptr [rbp - 0x50], rdx
	jmp	.label_2056
.label_2068:
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_2122
	mov	rcx, qword ptr [r12 + 0x78]
	movdqu	xmm0, xmmword ptr [rcx]
	por	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqu	xmm1, xmmword ptr [rcx + 0x10]
	por	xmm1, xmmword ptr [rbp - 0x40]
	movdqa	xmmword ptr [rbp - 0x40], xmm1
	movq	rcx, xmm0
	jmp	.label_2096
.label_2122:
	mov	qword ptr [rbp - 0x38], -1
	mov	qword ptr [rbp - 0x40], -1
	mov	qword ptr [rbp - 0x48], -1
	mov	qword ptr [rbp - 0x50], -1
	mov	rcx, -1
.label_2096:
	mov	rdx, qword ptr [r12 + 0xd8]
	test	dl, 0x40
	jne	.label_2109
	and	rcx, 0xfffffffffffffbff
	mov	qword ptr [rbp - 0x50], rcx
.label_2109:
	test	dl, dl
	jns	.label_2056
	and	rcx, 0xfffffffffffffffe
	mov	qword ptr [rbp - 0x50], rcx
	nop	word ptr cs:[rax + rax]
.label_2056:
	mov	ecx, eax
	shr	ecx, 8
	mov	edx, ecx
	and	edx, 0x3ff
	je	.label_2079
	test	cl, 0x20
	je	.label_2120
	mov	rdx, qword ptr [rbp - 0x50]
	test	dh, 4
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	je	.label_2046
	mov	qword ptr [rbp - 0x50], 0x400
.label_2120:
	test	cl, cl
	js	.label_2123
	test	cl, 4
	je	.label_2127
	mov	edx, eax
	and	edx, 0x4000ff
	cmp	edx, 1
	je	.label_2123
	cmp	dword ptr [r12 + 0xb4], 1
	jle	.label_2132
	mov	rdx, qword ptr [r12 + 0x78]
	movdqu	xmm0, xmmword ptr [r12 + 0xb8]
	movdqu	xmm1, xmmword ptr [rdx]
	pcmpeqd	xmm2, xmm2
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	pand	xmm1, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm1
	movq	r8, xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	r9, xmm0
	movdqu	xmm0, xmmword ptr [r12 + 0xc8]
	movdqu	xmm1, xmmword ptr [rdx + 0x10]
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	pand	xmm1, xmmword ptr [rbp - 0x40]
	mov	rdi, rbx
	movq	rbx, xmm1
	or	rbx, r8
	or	rbx, r9
	movdqa	xmmword ptr [rbp - 0x40], xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rdx, xmm0
	or	rdx, rbx
	mov	rbx, rdi
	jmp	.label_2135
.label_2132:
	movdqu	xmm0, xmmword ptr [r12 + 0xb8]
	pand	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movq	rdx, xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	r8, xmm0
	movdqu	xmm0, xmmword ptr [r12 + 0xc8]
	pand	xmm0, xmmword ptr [rbp - 0x40]
	movq	rdi, xmm0
	or	rdi, rdx
	or	rdi, r8
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rdx, xmm0
	or	rdx, rdi
.label_2135:
	test	rdx, rdx
	je	.label_2046
.label_2127:
	test	cl, 8
	je	.label_2079
	cmp	r10d, 1
	setne	cl
	test	eax, 0x400000
	je	.label_2081
	test	cl, cl
	jne	.label_2081
	nop	word ptr cs:[rax + rax]
.label_2123:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	jmp	.label_2046
.label_2081:
	cmp	dword ptr [r12 + 0xb4], 1
	jle	.label_2091
	mov	rax, qword ptr [r12 + 0x78]
	movdqu	xmm0, xmmword ptr [r12 + 0xb8]
	movdqu	xmm1, xmmword ptr [rax]
	pand	xmm1, xmm0
	pandn	xmm1, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm1
	movq	rcx, xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rdx, xmm0
	movdqu	xmm0, xmmword ptr [r12 + 0xc8]
	movdqu	xmm1, xmmword ptr [rax + 0x10]
	pand	xmm1, xmm0
	pandn	xmm1, xmmword ptr [rbp - 0x40]
	movq	rdi, xmm1
	or	rdi, rcx
	or	rdi, rdx
	movdqa	xmmword ptr [rbp - 0x40], xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rax, xmm0
	or	rax, rdi
	jmp	.label_2138
.label_2091:
	movdqu	xmm0, xmmword ptr [r12 + 0xb8]
	pandn	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movq	rax, xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	movdqu	xmm0, xmmword ptr [r12 + 0xc8]
	pandn	xmm0, xmmword ptr [rbp - 0x40]
	movq	rdx, xmm0
	or	rdx, rax
	or	rdx, rcx
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rax, xmm0
	or	rax, rdx
.label_2138:
	test	rax, rax
	je	.label_2046
	nop	dword ptr [rax]
.label_2079:
	test	r14, r14
	jle	.label_2126
	mov	qword ptr [rbp - 0x80], rsi
	mov	r13, qword ptr [rbp - 0xc8]
	xor	edi, edi
	mov	edx, r10d
	mov	dword ptr [rbp - 0xb0], edx
	nop	
.label_2140:
	cmp	edx, 1
	jne	.label_2133
	mov	rax, qword ptr [rbp - 0xa0]
	movzx	eax, byte ptr [rax]
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	mov	rcx, qword ptr [r13 + rcx*8]
	bt	rcx, rax
	jae	.label_2099
.label_2133:
	mov	qword ptr [rbp - 0x88], rdi
	mov	qword ptr [rbp - 0x78], r14
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r12, qword ptr [r13]
	mov	r14, qword ptr [r13 + 8]
	mov	r9, r12
	and	r9, rax
	mov	r10, r14
	and	r10, rcx
	mov	rbx, r10
	or	rbx, r9
	mov	rdi, qword ptr [rbp - 0x40]
	mov	r15, qword ptr [r13 + 0x10]
	mov	r11, r15
	and	r11, rdi
	or	rbx, r11
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x90], rdx
	mov	rsi, qword ptr [r13 + 0x18]
	mov	r8, rsi
	and	r8, rdx
	or	rbx, r8
	je	.label_2041
	mov	rbx, rax
	not	rbx
	and	rbx, r12
	not	r12
	and	r12, rax
	mov	qword ptr [rbp - 0xa8], r12
	mov	qword ptr [rbp - 0x50], r12
	mov	rdx, rcx
	not	rdx
	and	rdx, r14
	mov	rax, rdx
	or	rax, rbx
	not	r14
	and	r14, rcx
	mov	qword ptr [rbp - 0x48], r14
	mov	rcx, rdi
	not	rcx
	and	rcx, r15
	or	rax, rcx
	not	r15
	and	r15, rdi
	mov	qword ptr [rbp - 0x40], r15
	mov	r12, qword ptr [rbp - 0x90]
	mov	rdi, r12
	not	rdi
	and	rdi, rsi
	not	rsi
	and	rsi, r12
	mov	qword ptr [rbp - 0x38], rsi
	or	rax, rdi
	mov	r12, rsi
	je	.label_2064
	mov	qword ptr [rbp - 0x90], r12
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rax, rsi
	shl	rax, 5
	mov	r12, qword ptr [rbp - 0xc8]
	mov	qword ptr [r12 + rax], rbx
	mov	qword ptr [r12 + rax + 8], rdx
	mov	qword ptr [r12 + rax + 0x10], rcx
	mov	qword ptr [r12 + rax + 0x18], rdi
	mov	qword ptr [r13], r9
	mov	qword ptr [r13 + 8], r10
	mov	qword ptr [r13 + 0x10], r11
	mov	qword ptr [r13 + 0x18], r8
	lea	r12, [rsi + rsi*2]
	mov	rbx, qword ptr [rbp - 0xc0]
	lea	rcx, [rbx + r12*8]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rax + 8]
	mov	qword ptr [rbx + r12*8 + 8], rdi
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jle	.label_2084
	mov	qword ptr [rbp - 0xd0], rax
	mov	qword ptr [rcx], rdi
	mov	qword ptr [rbp - 0xe0], rcx
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + r12*8 + 0x10], rax
	test	rax, rax
	mov	r12, qword ptr [rbp - 0x90]
	je	.label_2129
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0xd0]
	shl	rdx, 3
	mov	rdi, rax
	call	memcpy
	jmp	.label_2117
	nop	
.label_2041:
	mov	r14, qword ptr [rbp - 0x78]
	mov	rbx, qword ptr [rbp - 0x98]
	mov	rdi, qword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0xb0]
	jmp	.label_2099
.label_2084:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rcx], xmm0
	mov	qword ptr [rcx + 0x10], 0
	mov	r12, qword ptr [rbp - 0x90]
.label_2117:
	inc	qword ptr [rbp - 0x78]
.label_2064:
	mov	rbx, qword ptr [rbp - 0x98]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rsi, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [rbp - 0x80]
	call	re_node_set_insert
	test	al, al
	je	.label_2130
	or	r14, qword ptr [rbp - 0xa8]
	or	r15, r12
	or	r15, r14
	mov	r14, qword ptr [rbp - 0x78]
	mov	edx, dword ptr [rbp - 0xb0]
	mov	rdi, qword ptr [rbp - 0x88]
	je	.label_2045
.label_2099:
	inc	rdi
	add	r13, 0x20
	add	qword ptr [rbp - 0x80], 0x18
	cmp	rdi, r14
	jl	.label_2140
	jmp	.label_2045
.label_2126:
	xor	edi, edi
.label_2045:
	cmp	rdi, r14
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	r12, qword ptr [rbp - 0xd8]
	mov	r13, qword ptr [rbp - 0xb8]
	jne	.label_2046
	mov	rax, rdi
	shl	rax, 5
	movaps	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmm1, xmmword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0xc8]
	movdqu	xmmword ptr [rcx + rax + 0x10], xmm1
	movups	xmmword ptr [rcx + rax], xmm0
	mov	r15, rbx
	lea	rbx, [rdi + rdi*2]
	mov	rax, qword ptr [r13 + 0x18]
	mov	r14, qword ptr [rax + r15*8]
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_1506]]
	movdqu	xmmword ptr [rsi + rbx*8], xmm0
	mov	r12, rdi
	mov	edi, 8
	call	malloc
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	qword ptr [rsi + rbx*8 + 0x10], rax
	test	rax, rax
	je	.label_2090
	mov	qword ptr [rax], r14
	inc	r12
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	mov	r14, r12
	mov	rbx, r15
	mov	r12, qword ptr [rbp - 0xd8]
	nop	word ptr cs:[rax + rax]
.label_2046:
	inc	rbx
	cmp	rbx, qword ptr [r13 + 0x10]
	jl	.label_2080
	test	r14, r14
	jle	.label_2083
	mov	r15, rsi
	lea	rax, [r14 + 1]
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x68], 0
	lea	rdi, [r14*8 + 8]
	call	malloc
	mov	qword ptr [rbp - 0x60], rax
	xor	ecx, ecx
	test	rax, rax
	mov	edx, 0xc
	cmovne	edx, ecx
	mov	dword ptr [rbp - 0x54], edx
	movabs	rcx, 0xaaaaaaaaaaaa855
	cmp	r14, rcx
	ja	.label_2094
	test	rax, rax
	je	.label_2094
	lea	rax, [r14*8]
	lea	rdi, [rax + rax*2]
	lea	rax, [rax + rax*2 + 0x3800]
	cmp	rax, 0xfbf
	ja	.label_2102
	mov	qword ptr [rbp - 0xb8], r13
	mov	rax, rsp
	add	rdi, 0xf
	and	rdi, 0xfffffffffffffff0
	sub	rax, rdi
	mov	rsp, rax
	mov	dword ptr [rbp - 0xd0], 0
	jmp	.label_2107
.label_2129:
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0xe0]
	movdqu	xmmword ptr [rax], xmm0
.label_2130:
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	r12, qword ptr [rbp - 0x78]
.label_2057:
	mov	r14, -1
	test	r12, r12
	jle	.label_2083
	mov	rbx, rsi
	mov	r15, rsi
	add	rbx, 0x10
	nop	dword ptr [rax]
.label_2121:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r12
	jne	.label_2121
	mov	rsi, r15
.label_2083:
	mov	rdi, rsi
	call	free
	test	r14, r14
	je	.label_2124
	xor	eax, eax
	jmp	.label_2061
.label_2124:
	mov	edi, 8
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xe8]
	mov	qword ptr [rcx], rax
	test	rax, rax
	setne	al
	jmp	.label_2061
.label_2052:
	xor	eax, eax
	jmp	.label_2061
.label_2102:
	call	malloc
	test	rax, rax
	je	.label_2094
	mov	qword ptr [rbp - 0xb8], r13
	mov	cl, 1
	mov	dword ptr [rbp - 0xd0], ecx
.label_2107:
	mov	qword ptr [rbp - 0x80], rax
	lea	rax, [rax + r14*8]
	mov	qword ptr [rbp - 0xa8], rax
	lea	rax, [rax + r14*8]
	mov	qword ptr [rbp - 0xb0], rax
	mov	qword ptr [rbp - 0x78], r14
	xor	edx, edx
	xor	eax, eax
	mov	qword ptr [rbp - 0x90], rax
	xor	esi, esi
	xor	eax, eax
	mov	qword ptr [rbp - 0x88], rax
	xor	r14d, r14d
	xor	eax, eax
	mov	qword ptr [rbp - 0xe0], rax
.label_2137:
	mov	qword ptr [rbp - 0xa0], rsi
	mov	qword ptr [rbp - 0x98], rdx
	mov	qword ptr [rbp - 0x68], 0
	lea	rcx, [r14 + r14*2]
	mov	rax, qword ptr [r15 + rcx*8 + 8]
	mov	qword ptr [rbp - 0xc0], r15
	test	rax, rax
	jle	.label_2060
	mov	rdx, qword ptr [rbp - 0xc0]
	lea	rbx, [rdx + rcx*8 + 8]
	mov	r13, qword ptr [rdx + rcx*8 + 0x10]
	xor	r15d, r15d
	nop	
.label_2082:
	mov	rcx, qword ptr [r13 + r15*8]
	mov	rdx, qword ptr [r12 + 0x18]
	mov	rcx, qword ptr [rdx + rcx*8]
	cmp	rcx, -1
	je	.label_2073
	mov	rax, qword ptr [r12 + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	lea	rdi, [rbp - 0x70]
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x54], eax
	test	eax, eax
	jne	.label_2054
	mov	rax, qword ptr [rbx]
.label_2073:
	inc	r15
	cmp	r15, rax
	jl	.label_2082
.label_2060:
	xor	ecx, ecx
	lea	rdi, [rbp - 0x54]
	mov	rsi, r12
	lea	rdx, [rbp - 0x70]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rcx + r14*8], rax
	test	rax, rax
	jne	.label_2087
	mov	ecx, dword ptr [rbp - 0x54]
	test	ecx, ecx
	jne	.label_2054
.label_2087:
	cmp	byte ptr [rax + 0x68], 0
	js	.label_2095
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + r14*8]
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + r14*8], rax
	jmp	.label_2098
.label_2095:
	mov	ecx, 1
	lea	rdi, [rbp - 0x54]
	mov	rsi, r12
	lea	rdx, [rbp - 0x70]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx + r14*8], rax
	test	rax, rax
	jne	.label_2105
	mov	ecx, dword ptr [rbp - 0x54]
	test	ecx, ecx
	jne	.label_2054
.label_2105:
	mov	rcx, qword ptr [rbp - 0x80]
	cmp	qword ptr [rcx + r14*8], rax
	je	.label_2110
	mov	al, 1
	cmp	dword ptr [r12 + 0xb4], 1
	jg	.label_2112
	mov	rax, qword ptr [rbp - 0xe0]
.label_2112:
	mov	qword ptr [rbp - 0xe0], rax
.label_2110:
	mov	ecx, 2
	lea	rdi, [rbp - 0x54]
	mov	rsi, r12
	lea	rdx, [rbp - 0x70]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + r14*8], rax
	test	rax, rax
	jne	.label_2098
	mov	eax, dword ptr [rbp - 0x54]
	test	eax, eax
	jne	.label_2054
.label_2098:
	mov	rax, r14
	shl	rax, 5
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rdx, qword ptr [rbp - 0x88]
	or	rdx, qword ptr [rcx + rax]
	mov	qword ptr [rbp - 0x88], rdx
	mov	rsi, qword ptr [rbp - 0xa0]
	or	rsi, qword ptr [rcx + rax + 8]
	mov	rdx, qword ptr [rbp - 0x90]
	or	rdx, qword ptr [rcx + rax + 0x10]
	mov	qword ptr [rbp - 0x90], rdx
	mov	rdx, qword ptr [rbp - 0x98]
	or	rdx, qword ptr [rcx + rax + 0x18]
	inc	r14
	cmp	r14, qword ptr [rbp - 0x78]
	mov	r15, qword ptr [rbp - 0xc0]
	jl	.label_2137
	mov	r15, rsi
	mov	r13, rdx
	mov	rax, qword ptr [rbp - 0xe0]
	and	al, 1
	mov	qword ptr [rbp - 0xe0], rax
	mov	edi, 8
	jne	.label_2042
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xe8]
	mov	qword ptr [rcx], rax
	test	rax, rax
	je	.label_2054
	mov	rcx, qword ptr [rbp - 0x88]
	test	rcx, rcx
	mov	r14, qword ptr [rbp - 0xc0]
	mov	r10, qword ptr [rbp - 0x80]
	je	.label_2058
	lea	r8, [r14 + 0x1800]
	mov	edx, 1
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x88]
	jmp	.label_2062
.label_2067:
	mov	rsi, rbx
	lea	rbx, [rsi + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_2067
	test	qword ptr [r12 + 0xb8], rdx
	je	.label_2071
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rcx + rsi*8 + 8]
	jmp	.label_2072
.label_2071:
	mov	rcx, qword ptr [r10 + rsi*8 + 8]
.label_2072:
	mov	qword ptr [rax + r9*8], rcx
	jmp	.label_2075
.label_2062:
	mov	rbx, -1
	test	dil, 1
	mov	rcx, r8
	jne	.label_2067
.label_2075:
	add	rdx, rdx
	shr	rdi, 1
	inc	r9
	test	rdi, rdi
	jne	.label_2062
.label_2058:
	mov	rsi, r15
	test	rsi, rsi
	mov	r15, qword ptr [rbp - 0x78]
	je	.label_2074
	lea	r8, [r14 + 0x1808]
	mov	edx, 1
	mov	r9d, 0x40
	jmp	.label_2089
.label_2088:
	mov	rbx, rdi
	lea	rdi, [rbx + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_2088
	test	qword ptr [r12 + 0xc0], rdx
	je	.label_2093
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	jmp	.label_2097
.label_2093:
	mov	rcx, qword ptr [r10 + rbx*8 + 8]
.label_2097:
	mov	qword ptr [rax + r9*8], rcx
	jmp	.label_2101
.label_2089:
	mov	rdi, -1
	test	sil, 1
	mov	rcx, r8
	jne	.label_2088
.label_2101:
	add	rdx, rdx
	shr	rsi, 1
	inc	r9
	test	rsi, rsi
	jne	.label_2089
.label_2074:
	mov	r9, r10
	mov	r10, qword ptr [rbp - 0x90]
	test	r10, r10
	mov	r11d, dword ptr [rbp - 0xd0]
	je	.label_2104
	lea	r8, [r14 + 0x1810]
	mov	edx, 1
	mov	esi, 0x80
	jmp	.label_2108
.label_2113:
	mov	rbx, rdi
	lea	rdi, [rbx + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_2113
	test	qword ptr [r12 + 0xc8], rdx
	je	.label_2114
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	jmp	.label_2115
.label_2114:
	mov	rcx, qword ptr [r9 + rbx*8 + 8]
.label_2115:
	mov	qword ptr [rax + rsi*8], rcx
	jmp	.label_2119
.label_2108:
	mov	rdi, -1
	test	r10b, 1
	mov	rcx, r8
	jne	.label_2113
.label_2119:
	add	rdx, rdx
	shr	r10, 1
	inc	rsi
	test	r10, r10
	jne	.label_2108
.label_2104:
	test	r13, r13
	je	.label_2076
	lea	r8, [r14 + 0x1818]
	mov	edx, 1
	mov	esi, 0xc0
	jmp	.label_2043
.label_2077:
	mov	rbx, rdi
	lea	rdi, [rbx + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_2077
	test	qword ptr [r12 + 0xd0], rdx
	je	.label_2131
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	jmp	.label_2134
.label_2131:
	mov	rcx, qword ptr [r9 + rbx*8 + 8]
.label_2134:
	mov	qword ptr [rax + rsi*8], rcx
	jmp	.label_2125
.label_2043:
	mov	rdi, -1
	test	r13b, 1
	mov	rcx, r8
	jne	.label_2077
.label_2125:
	add	rdx, rdx
	shr	r13, 1
	inc	rsi
	test	r13, r13
	jne	.label_2043
.label_2076:
	mov	rcx, qword ptr [rbp - 0x88]
	test	ch, 4
	je	.label_2048
	lea	rdx, [r14 + 0x1800]
	xor	ecx, ecx
.label_2106:
	test	byte ptr [rdx + 1], 4
	jne	.label_2053
	inc	rcx
	add	rdx, 0x20
	cmp	rcx, r15
	jl	.label_2106
	jmp	.label_2048
.label_2090:
	lea	rax, [rsi + rbx*8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	jmp	.label_2057
.label_2094:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	jmp	.label_2051
.label_2053:
	mov	rdx, qword ptr [rbp - 0xe0]
	test	dl, dl
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rax + 0x50], rcx
	je	.label_2048
	mov	qword ptr [rax + 0x850], rcx
.label_2048:
	test	r11b, r11b
	je	.label_2070
	mov	rdi, r9
	call	free
.label_2070:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	rbx, r14
	add	rbx, 0x10
.label_2136:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_2136
	mov	rdi, r14
	call	free
	mov	al, 1
	jmp	.label_2061
.label_2042:
	mov	esi, 0x200
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	qword ptr [rcx + 0x60], rax
	test	rax, rax
	je	.label_2054
	mov	rcx, qword ptr [rbp - 0x88]
	test	rcx, rcx
	mov	r14, qword ptr [rbp - 0xc0]
	mov	r10, qword ptr [rbp - 0x80]
	je	.label_2085
	lea	r8, [r14 + 0x1800]
	mov	edx, 1
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x88]
	jmp	.label_2092
.label_2054:
	mov	eax, dword ptr [rbp - 0xd0]
	test	al, al
	je	.label_2100
	mov	rdi, qword ptr [rbp - 0x80]
	call	free
.label_2100:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	r14, qword ptr [rbp - 0x78]
	test	r14, r14
	mov	r15, qword ptr [rbp - 0xc0]
	jle	.label_2103
.label_2051:
	mov	rbx, r15
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_2111:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r14
	jne	.label_2111
.label_2103:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_2061:
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2116:
	mov	rsi, rbx
	lea	rbx, [rsi + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_2116
	mov	rcx, qword ptr [r10 + rsi*8 + 8]
	mov	qword ptr [rax + r9*8], rcx
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rcx + rsi*8 + 8]
	mov	qword ptr [rax + r9*8 + 0x800], rcx
	jmp	.label_2118
.label_2092:
	mov	rbx, -1
	test	dil, 1
	mov	rcx, r8
	jne	.label_2116
.label_2118:
	add	rdx, rdx
	shr	rdi, 1
	inc	r9
	test	rdi, rdi
	jne	.label_2092
.label_2085:
	mov	rsi, r15
	test	rsi, rsi
	mov	r15, qword ptr [rbp - 0x78]
	je	.label_2128
	lea	r8, [r14 + 0x1808]
	mov	edx, 1
	mov	r9d, 0x40
	jmp	.label_2050
.label_2047:
	mov	rcx, rbx
	lea	rbx, [rcx + 1]
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi + 0x20]
	je	.label_2047
	mov	rdi, qword ptr [r10 + rcx*8 + 8]
	mov	qword ptr [rax + r9*8], rdi
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	mov	qword ptr [rax + r9*8 + 0x800], rcx
	jmp	.label_2139
.label_2050:
	mov	rbx, -1
	test	sil, 1
	mov	rdi, r8
	jne	.label_2047
.label_2139:
	add	rdx, rdx
	shr	rsi, 1
	inc	r9
	test	rsi, rsi
	jne	.label_2050
.label_2128:
	mov	r9, r10
	mov	rcx, qword ptr [rbp - 0x90]
	test	rcx, rcx
	mov	r11d, dword ptr [rbp - 0xd0]
	je	.label_2055
	lea	r8, [r14 + 0x1810]
	mov	edx, 1
	mov	esi, 0x80
	jmp	.label_2059
.label_2063:
	mov	rcx, rbx
	lea	rbx, [rcx + 1]
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi + 0x20]
	je	.label_2063
	mov	rdi, qword ptr [r9 + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8], rdi
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	jmp	.label_2065
.label_2059:
	mov	rbx, -1
	test	cl, 1
	mov	r10, rcx
	mov	rdi, r8
	jne	.label_2063
.label_2065:
	add	rdx, rdx
	mov	rcx, r10
	shr	rcx, 1
	inc	rsi
	test	rcx, rcx
	jne	.label_2059
.label_2055:
	test	r13, r13
	je	.label_2076
	lea	r8, [r14 + 0x1818]
	mov	edx, 1
	mov	esi, 0xc0
	jmp	.label_2078
.label_2069:
	mov	rcx, rbx
	lea	rbx, [rcx + 1]
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi + 0x20]
	je	.label_2069
	mov	rdi, qword ptr [r9 + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8], rdi
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	jmp	.label_2086
.label_2078:
	mov	rbx, -1
	test	r13b, 1
	mov	rdi, r8
	jne	.label_2069
.label_2086:
	add	rdx, rdx
	shr	r13, 1
	inc	rsi
	test	r13, r13
	je	.label_2076
	jmp	.label_2078
	nop	
	.section	.text
	.align	16
	#Procedure 0x416520

	.globl sift_states_backward
	.type sift_states_backward, @function
sift_states_backward:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r15, rsi
	mov	r14, rdi
	mov	r13, qword ptr [r15 + 0x18]
	mov	rbx, qword ptr [r15 + 0x10]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1506]]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x50], rax
	test	rax, rax
	je	.label_2154
	mov	qword ptr [rax], rbx
	lea	rcx, [rsp + 0x40]
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r13
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2148
	lea	rax, [r15 + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 0xc], 0
	nop	word ptr cs:[rax + rax]
.label_2144:
	mov	rdx, r13
	test	rdx, rdx
	jle	.label_2157
	mov	rdi, qword ptr [r15]
	cmp	qword ptr [rdi + rdx*8], 0
	je	.label_2145
	xor	eax, eax
	jmp	.label_2150
	nop	word ptr [rax + rax]
.label_2145:
	mov	eax, dword ptr [rsp + 0xc]
	inc	eax
.label_2150:
	cmp	eax, dword ptr [r14 + 0xe0]
	jg	.label_2152
	mov	dword ptr [rsp + 0xc], eax
	mov	qword ptr [rsp + 0x48], 0
	lea	r13, [rdx - 1]
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rax, qword ptr [rax + rdx*8 - 8]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x18], rdx
	test	rax, rax
	je	.label_2142
	cmp	qword ptr [rax + 0x28], 0
	jle	.label_2142
	mov	rcx, qword ptr [r14 + 0x98]
	mov	qword ptr [rsp + 0x30], rcx
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_2160:
	mov	rax, qword ptr [rax + 0x30]
	mov	r12, qword ptr [rax + rbx*8]
	mov	qword ptr [rsp + 0x38], r12
	mov	rax, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	shl	r12, 4
	test	byte ptr [rax + r12 + 0xa], 0x10
	je	.label_2146
	mov	rax, r15
	mov	rcx, qword ptr [rax + 0x18]
	mov	qword ptr [rsp + 0x20], rcx
	mov	rdx, r14
	mov	r14, rax
	mov	rbp, qword ptr [rdx + 0x98]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x38]
	mov	r15, r13
	mov	r13, rdx
	mov	rcx, r15
	call	check_node_accept_bytes
	test	eax, eax
	jle	.label_2158
	movsxd	rcx, eax
	add	rcx, r15
	cmp	rcx, qword ptr [rsp + 0x20]
	jle	.label_2159
	mov	rcx, r14
	mov	r14, r13
	mov	r13, r15
	mov	r15, rcx
	jmp	.label_2143
.label_2158:
	mov	rcx, r14
	mov	r14, r13
	mov	r13, r15
	mov	r15, rcx
	jne	.label_2143
	jmp	.label_2146
.label_2159:
	mov	rsi, r14
	mov	rdx, qword ptr [rsi]
	mov	rdx, qword ptr [rdx + rcx*8]
	test	rdx, rdx
	mov	r14, r13
	mov	r13, r15
	mov	r15, rsi
	je	.label_2146
	mov	rsi, qword ptr [rdx + 0x10]
	test	rsi, rsi
	jle	.label_2146
	mov	rcx, qword ptr [rbp + 0x18]
	mov	rdi, qword ptr [rsp + 0x38]
	mov	r8, qword ptr [rcx + rdi*8]
	dec	rsi
	mov	rdx, qword ptr [rdx + 0x18]
	mov	edi, 0
	je	.label_2153
	nop	word ptr cs:[rax + rax]
.label_2156:
	lea	rbp, [rdi + rsi]
	shr	rbp, 1
	cmp	qword ptr [rdx + rbp*8], r8
	lea	rcx, [rbp + 1]
	cmovl	rdi, rcx
	cmovge	rsi, rbp
	cmp	rdi, rsi
	jb	.label_2156
.label_2153:
	test	eax, eax
	je	.label_2146
	cmp	rdi, -1
	je	.label_2146
	cmp	qword ptr [rdx + rdi*8], r8
	je	.label_2143
.label_2146:
	mov	rax, qword ptr [rsp + 0x30]
	add	r12, qword ptr [rax]
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, r13
	call	check_node_accept
	test	al, al
	je	.label_2147
	mov	rax, qword ptr [r15]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rax + rcx*8]
	test	rdx, rdx
	je	.label_2147
	mov	rax, qword ptr [rdx + 0x10]
	test	rax, rax
	jle	.label_2147
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rcx + rsi*8]
	dec	rax
	mov	rdx, qword ptr [rdx + 0x18]
	mov	esi, 0
	je	.label_2151
.label_2141:
	lea	rdi, [rsi + rax]
	shr	rdi, 1
	cmp	qword ptr [rdx + rdi*8], rcx
	lea	rbp, [rdi + 1]
	cmovl	rsi, rbp
	cmovge	rax, rdi
	cmp	rsi, rax
	jb	.label_2141
.label_2151:
	cmp	rsi, -1
	je	.label_2147
	mov	eax, 1
	cmp	qword ptr [rdx + rsi*8], rcx
	jne	.label_2147
	nop	dword ptr [rax]
.label_2143:
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_2149
	movsxd	rcx, eax
	add	rcx, r13
	mov	rax, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax + 0x18]
	mov	r8, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rax + r8*8]
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x10]
	mov	r9, r13
	call	check_dst_limits
	test	al, al
	jne	.label_2147
.label_2149:
	lea	rdi, [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x38]
	call	re_node_set_insert
	mov	ebp, 0xc
	test	al, al
	je	.label_2148
.label_2147:
	inc	rbx
	mov	rax, qword ptr [rsp + 0x28]
	cmp	rbx, qword ptr [rax + 0x28]
	jl	.label_2160
.label_2142:
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r13
	lea	rcx, [rsp + 0x40]
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	je	.label_2144
	jmp	.label_2148
.label_2157:
	xor	ebp, ebp
	jmp	.label_2148
.label_2152:
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
.label_2148:
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
.label_2155:
	mov	eax, ebp
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2154:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	ebp, 0xc
	jmp	.label_2155
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416870

	.globl update_cur_sifted_state
	.type update_cur_sifted_state, @function
update_cur_sifted_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	r11, rcx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0x58], rbp
	mov	r13, rdi
	mov	r12, qword ptr [r13 + 0x98]
	mov	dword ptr [rsp + 0x6c], 0
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rbx, qword ptr [rax + rdx*8]
	lea	rax, [rbx + 8]
	test	rbx, rbx
	cmove	rax, rbx
	mov	qword ptr [rsp + 0x60], rax
	cmp	qword ptr [r11 + 8], 0
	je	.label_2193
	mov	qword ptr [rsp + 0x50], rdx
	test	rbx, rbx
	je	.label_2215
	mov	qword ptr [rsp + 0x38], rbx
	mov	dword ptr [rsp + 0x70], 0
	lea	rdi, [rsp + 0x70]
	mov	rsi, r12
	mov	qword ptr [rsp + 0x48], r12
	mov	rdx, r11
	mov	rbx, r11
	call	re_acquire_state
	mov	r14, rax
	mov	r12d, dword ptr [rsp + 0x70]
	test	r12d, r12d
	jne	.label_2188
	mov	r15, r14
	add	r15, 0x38
	cmp	qword ptr [r14 + 0x38], 0
	jne	.label_2164
	mov	rdi, qword ptr [rbx + 8]
	mov	qword ptr [r14 + 0x38], rdi
	mov	qword ptr [r14 + 0x40], 0
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r14 + 0x48], rax
	xor	ecx, ecx
	test	rax, rax
	mov	r12d, 0xc
	cmove	ecx, r12d
	mov	dword ptr [rsp + 0x70], ecx
	je	.label_2188
	cmp	qword ptr [rbx + 8], 0
	jle	.label_2164
	mov	r14, rbp
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_2198:
	mov	rax, qword ptr [rsp + 0x48]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r15
	call	re_node_set_merge
	test	eax, eax
	jne	.label_2197
	inc	rbp
	cmp	rbp, qword ptr [rbx + 8]
	jl	.label_2198
	mov	dword ptr [rsp + 0x70], 0
	mov	rbp, r14
.label_2164:
	mov	rdi, rbx
	mov	r14, rbx
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rdx, r15
	call	re_node_set_add_intersect
	mov	r12d, eax
	mov	dword ptr [rsp + 0x6c], r12d
	test	r12d, r12d
	mov	rbx, qword ptr [rsp + 0x38]
	jne	.label_2180
	mov	rax, qword ptr [rbp + 0x28]
	test	rax, rax
	mov	r11, r14
	mov	r12, qword ptr [rsp + 0x48]
	je	.label_2215
	mov	qword ptr [rsp + 0x30], r13
	mov	r10, qword ptr [rsp + 0x50]
	jle	.label_2220
	mov	rax, qword ptr [rsp + 0x30]
	mov	r13, qword ptr [rax + 0xd8]
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_2204:
	mov	rax, qword ptr [rbp + 0x30]
	mov	rax, qword ptr [rax + r15*8]
	lea	rax, [rax + rax*4]
	cmp	qword ptr [r13 + rax*8 + 0x10], r10
	jge	.label_2161
	cmp	qword ptr [r13 + rax*8 + 8], r10
	jl	.label_2161
	mov	rdx, qword ptr [r13 + rax*8]
	mov	rcx, qword ptr [r12]
	shl	rdx, 4
	mov	r8, qword ptr [rcx + rdx]
	mov	qword ptr [rsp + 0x40], r8
	cmp	qword ptr [r13 + rax*8 + 0x18], r10
	mov	rax, qword ptr [r11 + 8]
	jne	.label_2176
	test	rax, rax
	jle	.label_2161
	mov	qword ptr [rsp + 0x48], r12
	mov	rdx, qword ptr [r11 + 0x10]
	mov	r14, -1
	mov	rsi, -1
	nop	word ptr [rax + rax]
.label_2208:
	mov	rbp, qword ptr [rdx]
	mov	rdi, rbp
	shl	rdi, 4
	movzx	ebx, byte ptr [rcx + rdi + 8]
	cmp	ebx, 9
	je	.label_2194
	cmp	ebx, 8
	jne	.label_2173
	cmp	r8, qword ptr [rcx + rdi]
	je	.label_2184
	mov	rbp, rsi
.label_2184:
	mov	rsi, rbp
	jmp	.label_2173
	nop	word ptr [rax + rax]
.label_2194:
	cmp	r8, qword ptr [rcx + rdi]
	je	.label_2214
	mov	rbp, r14
.label_2214:
	mov	r14, rbp
.label_2173:
	add	rdx, 8
	dec	rax
	jne	.label_2208
	test	rsi, rsi
	mov	rbp, r11
	js	.label_2212
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rbx, r10
	call	sub_epsilon_src_nodes
	mov	r10, rbx
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2191
.label_2212:
	test	r14, r14
	mov	r11, rbp
	mov	r12, qword ptr [rsp + 0x48]
	js	.label_2161
	mov	r8, qword ptr [r11 + 8]
	test	r8, r8
	mov	ebp, 0
	jle	.label_2161
	nop	word ptr cs:[rax + rax]
.label_2226:
	mov	rax, qword ptr [r11 + 0x10]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [r12 + 0x38]
	lea	r9, [rsi + rsi*2]
	mov	rdx, qword ptr [rax + r9*8 + 8]
	test	rdx, rdx
	jle	.label_2170
	dec	rdx
	mov	rdi, qword ptr [rax + r9*8 + 0x10]
	mov	eax, 0
	je	.label_2181
	nop	word ptr [rax + rax]
.label_2186:
	lea	rbx, [rax + rdx]
	shr	rbx, 1
	cmp	qword ptr [rdi + rbx*8], r14
	lea	rcx, [rbx + 1]
	cmovl	rax, rcx
	cmovge	rdx, rbx
	cmp	rax, rdx
	jb	.label_2186
.label_2181:
	cmp	rax, -1
	je	.label_2170
	cmp	qword ptr [rdi + rax*8], r14
	je	.label_2182
.label_2170:
	mov	rax, qword ptr [r12 + 0x30]
	mov	rdx, qword ptr [rax + r9*8 + 8]
	test	rdx, rdx
	jle	.label_2165
	dec	rdx
	mov	rcx, qword ptr [rax + r9*8 + 0x10]
	mov	eax, 0
	je	.label_2222
	nop	word ptr [rax + rax]
.label_2201:
	lea	rdi, [rax + rdx]
	shr	rdi, 1
	cmp	qword ptr [rcx + rdi*8], r14
	lea	rbx, [rdi + 1]
	cmovl	rax, rbx
	cmovge	rdx, rdi
	cmp	rax, rdx
	jb	.label_2201
.label_2222:
	cmp	rax, -1
	je	.label_2165
	cmp	qword ptr [rcx + rax*8], r14
	je	.label_2182
.label_2165:
	mov	qword ptr [rsp + 0x48], r15
	mov	r15, r13
	mov	rdi, r12
	mov	r13, r12
	mov	rdx, r11
	mov	rcx, qword ptr [rsp + 0x60]
	mov	r12, r10
	mov	rbx, r11
	call	sub_epsilon_src_nodes
	mov	r10, r12
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2191
	dec	rbp
	mov	r8, qword ptr [rbx + 8]
	mov	r11, rbx
	mov	r12, r13
	mov	r13, r15
	mov	r15, qword ptr [rsp + 0x48]
.label_2182:
	inc	rbp
	cmp	rbp, r8
	jl	.label_2226
	jmp	.label_2161
.label_2176:
	test	rax, rax
	mov	ebp, 0
	jg	.label_2168
	jmp	.label_2161
	nop	dword ptr [rax]
.label_2200:
	mov	rcx, qword ptr [r12]
.label_2168:
	mov	rdx, qword ptr [r11 + 0x10]
	mov	rsi, qword ptr [rdx + rbp*8]
	mov	rdx, rsi
	shl	rdx, 4
	mov	edi, dword ptr [rcx + rdx + 8]
	mov	ebx, 0xfe
	and	edi, ebx
	or	edi, 1
	cmp	edi, 9
	jne	.label_2177
	cmp	r8, qword ptr [rcx + rdx]
	jne	.label_2177
	mov	r14, r15
	mov	r15, r13
	mov	rdi, r12
	mov	r13, r12
	mov	rdx, r11
	mov	rcx, qword ptr [rsp + 0x60]
	mov	r12, r10
	mov	rbx, r11
	call	sub_epsilon_src_nodes
	mov	r10, r12
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2191
	mov	rax, qword ptr [rbx + 8]
	mov	r11, rbx
	mov	r12, r13
	mov	r13, r15
	mov	r15, r14
	mov	r8, qword ptr [rsp + 0x40]
.label_2177:
	inc	rbp
	cmp	rbp, rax
	jl	.label_2200
	nop	word ptr [rax + rax]
.label_2161:
	inc	r15
	mov	rbp, qword ptr [rsp + 0x58]
	cmp	r15, qword ptr [rbp + 0x28]
	jl	.label_2204
.label_2220:
	mov	qword ptr [rsp + 0x50], r10
	mov	dword ptr [rsp + 0x6c], 0
	mov	r13, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x38]
.label_2215:
	lea	rdi, [rsp + 0x6c]
	mov	rsi, r12
	mov	rdx, r11
	call	re_acquire_state
	mov	rcx, qword ptr [rbp]
	mov	rdx, qword ptr [rsp + 0x50]
	mov	qword ptr [rcx + rdx*8], rax
	mov	r12d, dword ptr [rsp + 0x6c]
	test	r12d, r12d
	je	.label_2219
	jmp	.label_2180
.label_2193:
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rax + rdx*8], 0
.label_2219:
	test	rbx, rbx
	je	.label_2162
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + rdx*8]
	test	byte ptr [rax + 0x68], 0x40
	je	.label_2162
	mov	rbx, rbp
	mov	r11, qword ptr [r13 + 0x98]
	mov	rbp, qword ptr [r13 + 0xc8]
	xor	r15d, r15d
	test	rbp, rbp
	jle	.label_2175
	mov	rcx, qword ptr [r13 + 0xd8]
	xor	r15d, r15d
	mov	rax, rbp
	nop	word ptr cs:[rax + rax]
.label_2217:
	lea	rsi, [rax + r15]
	mov	rdi, rsi
	shr	rdi, 0x3f
	add	rdi, rsi
	sar	rdi, 1
	lea	rsi, [rdi + rdi*4]
	cmp	qword ptr [rcx + rsi*8 + 8], rdx
	cmovge	rax, rdi
	lea	rsi, [rdi + 1]
	cmovl	r15, rsi
	cmp	r15, rax
	jl	.label_2217
.label_2175:
	cmp	r15, rbp
	jge	.label_2195
	cmp	r15, -1
	je	.label_2195
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rcx, [r15 + r15*4]
	mov	qword ptr [rsp + 0x20], rcx
	cmp	qword ptr [rax + rcx*8 + 8], rdx
	jne	.label_2195
	mov	qword ptr [rsp + 0x70], 0
	mov	rax, qword ptr [rsp + 0x60]
	cmp	qword ptr [rax + 8], 0
	jle	.label_2206
	mov	rdi, r13
	mov	qword ptr [rsp + 0x30], rdi
	mov	qword ptr [rsp + 0x50], rdx
	mov	r10, rbx
	mov	qword ptr [rsp + 0x58], r10
	lea	rax, [r10 + 0x20]
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	shl	qword ptr [rsp + 0x20], 3
	xor	r13d, r13d
.label_2218:
	mov	qword ptr [rsp + 0x28], r13
	mov	rax, qword ptr [rsp + 0x60]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, qword ptr [rax + r13*8]
	mov	qword ptr [rsp + 0x48], rbp
	mov	rax, qword ptr [r11]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	eax, byte ptr [rax + rcx + 8]
	cmp	rbp, qword ptr [r10 + 0x10]
	jne	.label_2205
	cmp	eax, 4
	mov	rcx, rdx
	jne	.label_2174
	cmp	qword ptr [r10 + 0x18], rcx
	jne	.label_2178
	jmp	.label_2174
.label_2205:
	cmp	eax, 4
	mov	rcx, rdx
	jne	.label_2174
.label_2178:
	mov	rbx, qword ptr [rdi + 0xd8]
	add	rbx, qword ptr [rsp + 0x20]
	mov	r14, r15
	nop	
.label_2213:
	cmp	qword ptr [rbx], rbp
	jne	.label_2199
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x18]
	mov	r9, rdx
	sub	r9, rax
	add	r9, rcx
	cmp	rdx, rax
	jne	.label_2190
	mov	rax, qword ptr [r11 + 0x28]
	lea	rdx, [rbp + rbp*2]
	mov	rsi, qword ptr [rax + rdx*8 + 0x10]
	jmp	.label_2192
	nop	
.label_2190:
	lea	rsi, [rbp*8]
	add	rsi, qword ptr [r11 + 0x18]
.label_2192:
	cmp	r9, qword ptr [r10 + 0x18]
	jg	.label_2199
	mov	rax, qword ptr [r10]
	mov	rdx, qword ptr [rax + r9*8]
	test	rdx, rdx
	je	.label_2199
	mov	rax, qword ptr [rdx + 0x10]
	test	rax, rax
	jle	.label_2199
	mov	r12, r10
	mov	r8, qword ptr [rsi]
	dec	rax
	mov	r10, qword ptr [rdx + 0x18]
	mov	edx, 0
	je	.label_2211
	nop	word ptr [rax + rax]
.label_2221:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [r10 + rsi*8], r8
	lea	rbp, [rsi + 1]
	cmovl	rdx, rbp
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_2221
.label_2211:
	cmp	rdx, -1
	je	.label_2209
	cmp	qword ptr [r10 + rdx*8], r8
	jne	.label_2209
	mov	qword ptr [rsp + 0x40], r11
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x48]
	call	check_dst_limits
	test	al, al
	mov	r10, r12
	je	.label_2167
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x40]
	jmp	.label_2171
.label_2209:
	mov	r10, r12
	jmp	.label_2171
.label_2167:
	cmp	qword ptr [rsp + 0x38], 0
	jne	.label_2183
	mov	rax, qword ptr [r10 + 0x30]
	mov	qword ptr [rsp + 0xa0], rax
	movups	xmm0, xmmword ptr [r10]
	movups	xmm1, xmmword ptr [r10 + 0x10]
	movups	xmm2, xmmword ptr [r10 + 0x20]
	movaps	xmmword ptr [rsp + 0x90], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	rbx, qword ptr [r10 + 0x28]
	mov	qword ptr [rsp + 0x98], rbx
	test	rbx, rbx
	jle	.label_2185
	mov	rbp, r10
	mov	qword ptr [rsp + 0x90], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [rsp + 0xa0], rax
	test	rax, rax
	je	.label_2203
	mov	rsi, qword ptr [rbp + 0x30]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	mov	r10, rbp
	jmp	.label_2183
.label_2185:
	lea	rax, [rsp + 0x90]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
.label_2183:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rsp + 0x80], rax
	mov	rax, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x88], rax
	lea	rdi, [rsp + 0x90]
	mov	rsi, r14
	mov	rbx, r10
	call	re_node_set_insert
	mov	rdx, rbx
	mov	r12d, 0xc
	test	al, al
	mov	rax, qword ptr [rsp + 0x40]
	je	.label_2163
	mov	rbx, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rbx + rcx*8]
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, qword ptr [rsp + 0x30]
	lea	rsi, [rsp + 0x70]
	mov	r12, rax
	mov	rbp, rdx
	call	sift_states_backward
	mov	r10, rbp
	mov	r11, r12
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2163
	mov	rdi, qword ptr [r10 + 8]
	test	rdi, rdi
	mov	rcx, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x38], rbx
	je	.label_2189
	mov	r13, -1
	test	rcx, rcx
	lea	rbp, [rsp + 0xa8]
	js	.label_2224
	nop	dword ptr [rax]
.label_2166:
	mov	rsi, qword ptr [rdi + r13*8 + 8]
	mov	rdx, qword ptr [rbx + r13*8 + 8]
	test	rsi, rsi
	je	.label_2169
	test	rdx, rdx
	je	.label_2216
	mov	rbx, rdi
	add	rsi, 8
	add	rdx, 8
	mov	rdi, rbp
	call	re_node_set_init_union
	mov	r12d, eax
	mov	dword ptr [rsp + 0xc4], r12d
	test	r12d, r12d
	jne	.label_2163
	lea	rdi, [rsp + 0xc4]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, rbp
	call	re_acquire_state
	mov	qword ptr [rbx + r13*8 + 8], rax
	mov	rdi, qword ptr [rsp + 0xb8]
	call	free
	mov	rdi, rbx
	mov	r12d, dword ptr [rsp + 0xc4]
	test	r12d, r12d
	mov	rcx, qword ptr [rsp + 0x50]
	mov	r10, qword ptr [rsp + 0x58]
	mov	rbx, qword ptr [rsp + 0x38]
	je	.label_2216
	jmp	.label_2163
.label_2169:
	mov	qword ptr [rdi + r13*8 + 8], rdx
.label_2216:
	inc	r13
	cmp	r13, rcx
	jl	.label_2166
.label_2224:
	mov	r11, qword ptr [rsp + 0x40]
	mov	r13, qword ptr [rsp + 0x28]
.label_2189:
	mov	qword ptr [rsp + 0x38], rbx
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + rcx*8], rdx
	mov	r12, qword ptr [rsp + 0x98]
	test	r12, r12
	jle	.label_2172
	mov	rbp, r12
	dec	rbp
	mov	rax, qword ptr [rsp + 0xa0]
	mov	rdi, rbp
	mov	edx, 0
	je	.label_2223
	nop	dword ptr [rax + rax]
.label_2187:
	lea	rbx, [rdx + rdi]
	shr	rbx, 1
	cmp	qword ptr [rax + rbx*8], r14
	lea	rsi, [rbx + 1]
	cmovl	rdx, rsi
	cmovge	rdi, rbx
	cmp	rdx, rdi
	jb	.label_2187
.label_2223:
	cmp	qword ptr [rax + rdx*8], r14
	mov	rdi, rdx
	je	.label_2196
	mov	rdi, -1
.label_2196:
	test	rdi, rdi
	js	.label_2172
	cmp	r12, rdi
	jle	.label_2172
	mov	qword ptr [rsp + 0x98], rbp
	cmp	rbp, rdi
	jle	.label_2172
	dec	r12
	lea	rdi, [rdx + 1]
	cmp	r12, rdi
	mov	rbx, rdi
	cmovge	rbx, r12
	sub	rbx, rdx
	cmp	rbx, 4
	jb	.label_2210
	mov	r8, rbx
	and	r8, 0xfffffffffffffffc
	mov	r9, rbx
	and	r9, 0xfffffffffffffffc
	je	.label_2210
	mov	qword ptr [rsp + 0x58], r10
	mov	qword ptr [rsp + 0x40], r11
	cmp	r12, rdi
	mov	rsi, rdi
	cmovge	rsi, r12
	sub	rsi, rdx
	add	rsi, -4
	mov	r11, rsi
	shr	r11, 2
	bt	rsi, 2
	mov	r10d, 0
	jb	.label_2202
	movups	xmm0, xmmword ptr [rax + rdx*8 + 8]
	movups	xmm1, xmmword ptr [rax + rdx*8 + 0x18]
	movups	xmmword ptr [rax + rdx*8], xmm0
	movups	xmmword ptr [rax + rdx*8 + 0x10], xmm1
	mov	r10d, 4
.label_2202:
	test	r11, r11
	je	.label_2179
	cmp	r12, rdi
	cmovge	rdi, r12
	sub	rdi, rdx
	and	rdi, 0xfffffffffffffffc
	sub	rdi, r10
	add	r10, rdx
	lea	rsi, [rax + r10*8 + 0x38]
.label_2207:
	movups	xmm0, xmmword ptr [rsi - 0x30]
	movups	xmm1, xmmword ptr [rsi - 0x20]
	movups	xmmword ptr [rsi - 0x38], xmm0
	movups	xmmword ptr [rsi - 0x28], xmm1
	movups	xmm0, xmmword ptr [rsi - 0x10]
	movups	xmm1, xmmword ptr [rsi]
	movups	xmmword ptr [rsi - 0x18], xmm0
	movups	xmmword ptr [rsi - 8], xmm1
	add	rsi, 0x40
	add	rdi, -8
	jne	.label_2207
.label_2179:
	cmp	rbx, r9
	mov	r11, qword ptr [rsp + 0x40]
	mov	r10, qword ptr [rsp + 0x58]
	je	.label_2172
	add	rdx, r8
	nop	word ptr cs:[rax + rax]
.label_2210:
	mov	rsi, qword ptr [rax + rdx*8 + 8]
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	cmp	rdx, rbp
	jl	.label_2210
.label_2172:
	lea	rbx, [r14 + r14*4]
	shl	rbx, 3
	mov	rdi, qword ptr [rsp + 0x30]
	add	rbx, qword ptr [rdi + 0xd8]
.label_2171:
	mov	rbp, qword ptr [rsp + 0x48]
	nop	word ptr [rax + rax]
.label_2199:
	inc	r14
	cmp	byte ptr [rbx + 0x20], 0
	lea	rbx, [rbx + 0x28]
	jne	.label_2213
.label_2174:
	mov	rdx, rcx
	inc	r13
	xor	r12d, r12d
	mov	rax, qword ptr [rsp + 0x60]
	cmp	r13, qword ptr [rax + 8]
	jl	.label_2218
.label_2163:
	cmp	qword ptr [rsp + 0x70], 0
	je	.label_2225
	mov	rdi, qword ptr [rsp + 0xa0]
	call	free
.label_2225:
	mov	dword ptr [rsp + 0x6c], r12d
	test	r12d, r12d
	je	.label_2162
	jmp	.label_2180
.label_2195:
	mov	dword ptr [rsp + 0x6c], 0
.label_2162:
	xor	r12d, r12d
.label_2180:
	mov	eax, r12d
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2191:
	mov	dword ptr [rsp + 0x6c], r12d
	jmp	.label_2180
.label_2197:
	mov	dword ptr [rsp + 0x70], eax
.label_2188:
	mov	dword ptr [rsp + 0x6c], r12d
	jmp	.label_2180
.label_2206:
	mov	dword ptr [rsp + 0x6c], 0
	jmp	.label_2162
.label_2203:
	xorps	xmm0, xmm0
	lea	rax, [rsp + 0x90]
	movups	xmmword ptr [rax], xmm0
	mov	r12d, 0xc
	jmp	.label_2163
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x417360

	.globl re_node_set_add_intersect
	.type re_node_set_add_intersect, @function
re_node_set_add_intersect:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	rdx, qword ptr [r15 + 8]
	xor	eax, eax
	test	rdx, rdx
	je	.label_2227
	mov	r10, qword ptr [r14 + 8]
	test	r10, r10
	je	.label_2227
	lea	rax, [r10 + rdx]
	mov	rbx, qword ptr [r12]
	mov	rsi, qword ptr [r12 + 8]
	lea	rcx, [rsi + rax]
	cmp	rcx, rbx
	jle	.label_2231
	add	rbx, rax
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [rbx*8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2227
	lea	r8, [r12 + 0x10]
	mov	qword ptr [r12 + 0x10], rcx
	mov	qword ptr [r12], rbx
	mov	rsi, qword ptr [r12 + 8]
	mov	rdx, qword ptr [r15 + 8]
	mov	r10, qword ptr [r14 + 8]
	jmp	.label_2230
.label_2231:
	lea	r8, [r12 + 0x10]
.label_2230:
	lea	r9, [rdx + rsi]
	add	r9, r10
	dec	rsi
.label_2245:
	dec	rdx
	mov	rbx, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r14 + 0x10]
	mov	rdi, r10
.label_2242:
	lea	r10, [rdi - 1]
	mov	rax, qword ptr [rcx + rdi*8 - 8]
	nop	dword ptr [rax]
.label_2234:
	cmp	qword ptr [rbx + rdx*8], rax
	je	.label_2238
	jl	.label_2233
	test	rdx, rdx
	lea	rdx, [rdx - 1]
	jg	.label_2234
	jmp	.label_2229
	nop	word ptr cs:[rax + rax]
.label_2233:
	cmp	rdi, 2
	mov	rdi, r10
	jge	.label_2242
	jmp	.label_2229
	nop	dword ptr [rax + rax]
.label_2238:
	mov	rbx, qword ptr [r8]
	test	rsi, rsi
	js	.label_2228
	nop	dword ptr [rax + rax]
.label_2235:
	mov	rcx, qword ptr [rbx + rsi*8]
	cmp	rcx, rax
	jle	.label_2232
	test	rsi, rsi
	lea	rsi, [rsi - 1]
	jg	.label_2235
	jmp	.label_2228
.label_2232:
	test	rsi, rsi
	js	.label_2228
	cmp	rcx, rax
	je	.label_2239
	nop	
.label_2228:
	mov	qword ptr [rbx + r9*8 - 8], rax
	dec	r9
.label_2239:
	test	rdx, rdx
	jle	.label_2229
	cmp	rdi, 2
	jge	.label_2245
.label_2229:
	mov	rcx, qword ptr [r12 + 8]
	mov	r11, qword ptr [r15 + 8]
	mov	rdx, qword ptr [r14 + 8]
	lea	r14, [rcx + r11 - 1]
	add	r14, rdx
	mov	rax, r14
	sub	rax, r9
	lea	r10, [rax + 1]
	lea	rsi, [rax + rcx + 1]
	mov	qword ptr [r12 + 8], rsi
	test	rcx, rcx
	jle	.label_2244
	test	rax, rax
	js	.label_2244
	add	r11, rdx
	add	r11, rcx
	dec	rcx
	sub	r11, r9
	xor	edx, edx
.label_2241:
	mov	rdi, qword ptr [r8]
	lea	rax, [rdi + r11*8]
	nop	
.label_2237:
	mov	rsi, qword ptr [rdi + r14*8]
	mov	rbx, qword ptr [rdi + rcx*8]
	cmp	rsi, rbx
	jg	.label_2236
	mov	qword ptr [rax + rcx*8], rbx
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_2237
	jmp	.label_2240
.label_2236:
	dec	r14
	dec	r11
	lea	rax, [r10 + rcx]
	dec	r10
	mov	qword ptr [rdi + rax*8], rsi
	jne	.label_2241
	jmp	.label_2243
.label_2244:
	mov	rdi, qword ptr [r8]
.label_2240:
	mov	rdx, r10
.label_2243:
	lea	rsi, [rdi + r9*8]
	shl	rdx, 3
	call	memcpy
	xor	eax, eax
.label_2227:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417530

	.globl sub_epsilon_src_nodes
	.type sub_epsilon_src_nodes, @function
sub_epsilon_src_nodes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x10], rcx
	mov	r12, rdx
	mov	r15, rsi
	mov	rcx, qword ptr [rdi + 0x38]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	qword ptr [rsp + 0x30], 0
	lea	rdx, [r15 + r15*2]
	mov	r9, qword ptr [rcx + rdx*8 + 8]
	test	r9, r9
	jle	.label_2258
	lea	rax, [rcx + rdx*8 + 8]
	mov	qword ptr [rsp + 0x18], rax
	lea	r14, [rcx + rdx*8 + 0x10]
	mov	qword ptr [rsp], rdx
	mov	qword ptr [rsp + 8], rcx
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_2260:
	mov	r11, qword ptr [r14]
	mov	rcx, qword ptr [r11 + r13*8]
	cmp	rcx, r15
	je	.label_2251
	mov	rdx, qword ptr [rdi]
	mov	rax, rcx
	shl	rax, 4
	test	byte ptr [rdx + rax + 8], 8
	je	.label_2251
	mov	rbp, qword ptr [rdi + 0x28]
	lea	r8, [rcx + rcx*2]
	mov	rcx, qword ptr [rbp + r8*8 + 0x10]
	mov	rsi, qword ptr [rcx]
	mov	r10, -1
	cmp	qword ptr [rbp + r8*8 + 8], 2
	jl	.label_2259
	mov	r10, qword ptr [rcx + 8]
.label_2259:
	test	r9, r9
	jle	.label_2250
	mov	rcx, r9
	dec	rcx
	mov	ebp, 0
	je	.label_2266
	nop	word ptr [rax + rax]
.label_2272:
	lea	rbx, [rbp + rcx]
	shr	rbx, 1
	cmp	qword ptr [r11 + rbx*8], rsi
	lea	rax, [rbx + 1]
	cmovl	rbp, rax
	cmovge	rcx, rbx
	cmp	rbp, rcx
	jb	.label_2272
.label_2266:
	cmp	rbp, -1
	je	.label_2250
	cmp	qword ptr [r11 + rbp*8], rsi
	je	.label_2252
.label_2250:
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	jle	.label_2252
	dec	rbp
	mov	rbx, qword ptr [r12 + 0x10]
	mov	ecx, 0
	je	.label_2255
	nop	word ptr cs:[rax + rax]
.label_2247:
	lea	rax, [rcx + rbp]
	shr	rax, 1
	cmp	qword ptr [rbx + rax*8], rsi
	lea	rdx, [rax + 1]
	cmovl	rcx, rdx
	cmovge	rbp, rax
	cmp	rcx, rbp
	jb	.label_2247
.label_2255:
	cmp	rcx, -1
	je	.label_2252
	cmp	qword ptr [rbx + rcx*8], rsi
	je	.label_2269
.label_2252:
	test	r10, r10
	jle	.label_2251
	test	r9, r9
	jle	.label_2257
	mov	rbp, r9
	dec	rbp
	mov	ecx, 0
	je	.label_2273
	nop	word ptr [rax + rax]
.label_2253:
	lea	rax, [rcx + rbp]
	shr	rax, 1
	cmp	qword ptr [r11 + rax*8], r10
	lea	rdx, [rax + 1]
	cmovl	rcx, rdx
	cmovge	rbp, rax
	cmp	rcx, rbp
	jb	.label_2253
.label_2273:
	cmp	rcx, -1
	je	.label_2257
	cmp	qword ptr [r11 + rcx*8], r10
	je	.label_2251
.label_2257:
	mov	rsi, qword ptr [r12 + 8]
	test	rsi, rsi
	jle	.label_2251
	dec	rsi
	mov	rbp, qword ptr [r12 + 0x10]
	mov	ecx, 0
	je	.label_2262
	nop	word ptr cs:[rax + rax]
.label_2267:
	lea	rax, [rcx + rsi]
	shr	rax, 1
	cmp	qword ptr [rbp + rax*8], r10
	lea	rdx, [rax + 1]
	cmovl	rcx, rdx
	cmovge	rsi, rax
	cmp	rcx, rsi
	jb	.label_2267
.label_2262:
	cmp	rcx, -1
	je	.label_2251
	cmp	qword ptr [rbp + rcx*8], r10
	jne	.label_2251
.label_2269:
	mov	rax, qword ptr [rdi + 0x38]
	mov	rbx, rdi
	lea	rdx, [rax + r8*8]
	lea	rdi, [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x10]
	call	re_node_set_add_intersect
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2256
	mov	rax, qword ptr [rsp + 0x18]
	mov	r9, qword ptr [rax]
	mov	rdi, rbx
	nop	dword ptr [rax]
.label_2251:
	inc	r13
	cmp	r13, r9
	jl	.label_2260
	test	r9, r9
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	jle	.label_2258
	lea	r8, [rsp + 0x30]
	mov	r9, qword ptr [rax + rcx*8 + 0x10]
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x30]
	lea	r11, [r10 - 1]
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_2264:
	test	r10, r10
	mov	rax, qword ptr [r9 + r13*8]
	jle	.label_2246
	test	r11, r11
	mov	rdx, r11
	mov	ecx, 0
	je	.label_2248
	nop	word ptr cs:[rax + rax]
.label_2261:
	lea	rdi, [rcx + rdx]
	shr	rdi, 1
	cmp	qword ptr [rsi + rdi*8], rax
	lea	rbx, [rdi + 1]
	cmovl	rcx, rbx
	cmovge	rdx, rdi
	cmp	rcx, rdx
	jb	.label_2261
.label_2248:
	cmp	rcx, -1
	je	.label_2246
	cmp	qword ptr [rsi + rcx*8], rax
	je	.label_2254
.label_2246:
	mov	r14, qword ptr [r12 + 8]
	test	r14, r14
	jle	.label_2254
	mov	r15, r14
	dec	r15
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rdi, r15
	mov	edx, 0
	je	.label_2265
	nop	dword ptr [rax + rax]
.label_2270:
	lea	rbx, [rdx + rdi]
	shr	rbx, 1
	cmp	qword ptr [rcx + rbx*8], rax
	lea	rbp, [rbx + 1]
	cmovl	rdx, rbp
	cmovge	rdi, rbx
	cmp	rdx, rdi
	jb	.label_2270
.label_2265:
	cmp	qword ptr [rcx + rdx*8], rax
	mov	rax, rdx
	je	.label_2249
	mov	rax, -1
.label_2249:
	test	rax, rax
	js	.label_2254
	cmp	r14, rax
	jle	.label_2254
	mov	qword ptr [r12 + 8], r15
	cmp	r15, rax
	jle	.label_2254
.label_2271:
	mov	rax, qword ptr [rcx + rdx*8 + 8]
	mov	qword ptr [rcx + rdx*8], rax
	inc	rdx
	cmp	rdx, qword ptr [r12 + 8]
	jl	.label_2271
	nop	word ptr cs:[rax + rax]
.label_2254:
	inc	r13
	mov	rax, qword ptr [rsp + 0x18]
	cmp	r13, qword ptr [rax]
	jl	.label_2264
	jmp	.label_2268
.label_2258:
	lea	r8, [rsp + 0x30]
.label_2268:
	mov	rdi, qword ptr [r8]
	call	free
	xor	ebp, ebp
.label_2263:
	mov	eax, ebp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2256:
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	jmp	.label_2263
	nop	
	.section	.text
	.align	16
	#Procedure 0x417890

	.globl check_dst_limits
	.type check_dst_limits, @function
check_dst_limits:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x10], r8
	mov	qword ptr [rsp + 0x28], rcx
	mov	qword ptr [rsp + 8], rdx
	mov	r10, rsi
	mov	qword ptr [rsp + 0x20], rdi
	mov	rax, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rdi + 0xc8]
	xor	r14d, r14d
	test	rax, rax
	jle	.label_2287
	mov	rbp, qword ptr [rdi + 0xd8]
	xor	r14d, r14d
	mov	rdx, rax
	nop	dword ptr [rax]
.label_2281:
	lea	rsi, [rdx + r14]
	mov	rbx, rsi
	shr	rbx, 0x3f
	add	rbx, rsi
	sar	rbx, 1
	lea	rsi, [rbx + rbx*4]
	cmp	qword ptr [rbp + rsi*8 + 8], rcx
	cmovge	rdx, rbx
	lea	rsi, [rbx + 1]
	cmovl	r14, rsi
	cmp	r14, rdx
	jl	.label_2281
.label_2287:
	cmp	r14, rax
	jge	.label_2278
	mov	rsi, qword ptr [rdi + 0xd8]
	lea	rdx, [r14 + r14*4]
	cmp	qword ptr [rsi + rdx*8 + 8], rcx
	je	.label_2282
.label_2278:
	mov	r14, -1
.label_2282:
	xor	r12d, r12d
	test	rax, rax
	jle	.label_2284
	mov	rbp, qword ptr [rdi + 0xd8]
	xor	r12d, r12d
	mov	rdx, rax
	nop	
.label_2274:
	lea	rsi, [rdx + r12]
	mov	rbx, rsi
	shr	rbx, 0x3f
	add	rbx, rsi
	sar	rbx, 1
	lea	rsi, [rbx + rbx*4]
	cmp	qword ptr [rbp + rsi*8 + 8], r9
	cmovge	rdx, rbx
	lea	rsi, [rbx + 1]
	cmovl	r12, rsi
	cmp	r12, rdx
	jl	.label_2274
.label_2284:
	cmp	r12, rax
	jge	.label_2285
	mov	rax, qword ptr [rdi + 0xd8]
	lea	rdx, [r12 + r12*4]
	cmp	qword ptr [rax + rdx*8 + 8], r9
	je	.label_2286
.label_2285:
	mov	r12, -1
.label_2286:
	cmp	qword ptr [r10 + 8], 0
	jle	.label_2276
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_2279:
	mov	rax, qword ptr [rdi + 0xd8]
	mov	rdx, qword ptr [r10 + 0x10]
	mov	rbp, qword ptr [rdx + r15*8]
	lea	rsi, [rbp + rbp*4]
	mov	rdx, qword ptr [rax + rsi*8]
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rbx]
	shl	rdx, 4
	mov	rdx, qword ptr [rbx + rdx]
	mov	r11, qword ptr [rax + rsi*8 + 0x10]
	mov	r13d, 0xffffffff
	cmp	r11, rcx
	jle	.label_2275
	mov	ebx, 0xffffffff
	jmp	.label_2280
	nop	word ptr cs:[rax + rax]
.label_2275:
	mov	rsi, qword ptr [rax + rsi*8 + 0x18]
	mov	ebx, 1
	cmp	rsi, rcx
	jl	.label_2280
	cmp	r11, rcx
	sete	bl
	movzx	r8d, bl
	cmp	rsi, rcx
	sete	bl
	movzx	esi, bl
	add	esi, esi
	xor	ebx, ebx
	or	esi, r8d
	je	.label_2280
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x18], rdx
	mov	r8, r14
	mov	rbx, r9
	mov	rbp, r10
	call	check_dst_limits_calc_pos_1
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r10, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9, rbx
	mov	ebx, eax
	mov	rax, qword ptr [r10 + 0x10]
	mov	rbp, qword ptr [rax + r15*8]
	mov	rax, qword ptr [rdi + 0xd8]
	lea	rsi, [rbp + rbp*4]
	mov	r11, qword ptr [rax + rsi*8 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_2280:
	cmp	r11, r9
	jg	.label_2277
	lea	rsi, [rbp + rbp*4]
	mov	rax, qword ptr [rax + rsi*8 + 0x18]
	mov	r13d, 1
	cmp	rax, r9
	jl	.label_2277
	cmp	r11, r9
	mov	esi, ebx
	sete	bl
	movzx	ebp, bl
	mov	ebx, esi
	cmp	rax, r9
	sete	al
	movzx	esi, al
	add	esi, esi
	xor	r13d, r13d
	or	esi, ebp
	je	.label_2277
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, r12
	mov	rbp, r9
	mov	r13, r10
	call	check_dst_limits_calc_pos_1
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r10, r13
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9, rbp
	mov	r13d, eax
	nop	
.label_2277:
	cmp	r13d, ebx
	mov	al, 1
	jne	.label_2283
	inc	r15
	cmp	r15, qword ptr [r10 + 8]
	jl	.label_2279
	xor	eax, eax
	jmp	.label_2283
.label_2276:
	xor	eax, eax
.label_2283:
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
	#Procedure 0x417b00

	.globl check_dst_limits_calc_pos_1
	.type check_dst_limits_calc_pos_1, @function
check_dst_limits_calc_pos_1:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	rbx, rdx
	mov	r13d, esi
	mov	qword ptr [rsp + 0x38], rdi
	mov	rbp, qword ptr [rdi + 0x98]
	mov	rax, qword ptr [rbp + 0x30]
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	jle	.label_2288
	lea	rdx, [rax + rcx*8 + 8]
	mov	qword ptr [rsp + 0x20], rdx
	lea	rax, [rax + rcx*8 + 0x10]
	mov	qword ptr [rsp + 0x28], rax
	mov	eax, 1
	mov	cl, bl
	shl	rax, cl
	mov	qword ptr [rsp + 0x18], rax
	xor	rax, 0xffff
	mov	qword ptr [rsp + 0x10], rax
	mov	eax, r13d
	and	eax, 2
	mov	dword ptr [rsp + 8], eax
	shr	eax, 1
	cmp	rbx, 0x3f
	setg	cl
	or	cl, al
	mov	byte ptr [rsp + 0xf], cl
	mov	eax, r13d
	and	eax, 1
	mov	dword ptr [rsp + 4], eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_2295:
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	r12, qword ptr [rax + r15*8]
	mov	rax, qword ptr [rbp]
	mov	rdx, r12
	shl	rdx, 4
	lea	rcx, [rax + rdx]
	movzx	eax, byte ptr [rax + rdx + 8]
	cmp	eax, 9
	je	.label_2298
	cmp	eax, 8
	je	.label_2301
	cmp	eax, 4
	jne	.label_2296
	cmp	qword ptr [rsp + 0x40], -1
	je	.label_2296
	mov	rax, qword ptr [rsp + 0x40]
	lea	r14, [rax + rax*4]
	shl	r14, 3
	mov	rax, qword ptr [rsp + 0x38]
	add	r14, qword ptr [rax + 0xd8]
.label_2294:
	cmp	qword ptr [r14], r12
	jne	.label_2289
	cmp	rbx, 0x3f
	jg	.label_2292
	movzx	eax, word ptr [r14 + 0x22]
	test	qword ptr [rsp + 0x18], rax
	je	.label_2289
.label_2292:
	mov	rax, qword ptr [rbp + 0x28]
	lea	rcx, [r12 + r12*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	cmp	rcx, qword ptr [rsp + 0x30]
	je	.label_2297
	mov	rdi, qword ptr [rsp + 0x38]
	mov	esi, r13d
	mov	rdx, rbx
	mov	r8, qword ptr [rsp + 0x40]
	call	check_dst_limits_calc_pos_1
	mov	ecx, eax
	test	ecx, ecx
	je	.label_2290
	mov	eax, 0xffffffff
	cmp	ecx, -1
	je	.label_2291
	cmp	rbx, 0x3f
	jg	.label_2289
	jmp	.label_2300
.label_2290:
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_2300
	xor	eax, eax
	cmp	dword ptr [rsp + 8], 0
	je	.label_2289
	jmp	.label_2291
.label_2300:
	movzx	eax, word ptr [r14 + 0x22]
	mov	rcx, qword ptr [rsp + 0x10]
	and	eax, ecx
	mov	word ptr [r14 + 0x22], ax
	nop	dword ptr [rax]
.label_2289:
	cmp	byte ptr [r14 + 0x20], 0
	lea	r14, [r14 + 0x28]
	jne	.label_2294
	jmp	.label_2296
	nop	word ptr cs:[rax + rax]
.label_2298:
	cmp	dword ptr [rsp + 8], 0
	je	.label_2296
	xor	eax, eax
	jmp	.label_2293
	nop	dword ptr [rax + rax]
.label_2301:
	cmp	dword ptr [rsp + 4], 0
	je	.label_2296
	mov	eax, 0xffffffff
.label_2293:
	cmp	qword ptr [rcx], rbx
	je	.label_2291
.label_2296:
	inc	r15
	mov	rax, qword ptr [rsp + 0x20]
	cmp	r15, qword ptr [rax]
	jl	.label_2295
.label_2288:
	shr	r13d, 1
	and	r13d, 1
	jmp	.label_2299
.label_2297:
	shl	r13d, 0x1f
	sar	r13d, 0x1f
.label_2299:
	mov	eax, r13d
.label_2291:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x417d10

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
	jne	.label_2303
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_2302
	test	cl, cl
	jne	.label_2302
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_2302
.label_2303:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_2302
	call	__errno_location
	mov	dword ptr [rax], 0
.label_2302:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417d70

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_2305
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_2306
	cmp	byte ptr [rax + 1], 0
	je	.label_2304
.label_2306:
	mov	esi, OFFSET FLAT:.str.1_6
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_2305
.label_2304:
	xor	ebx, ebx
.label_2305:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x417db0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_7
	cmp	byte ptr [rcx], 0
	je	.label_2307
	mov	rax, rcx
.label_2307:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417de0
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	push	rbx
	mov	ebx, edi
	call	wcwidth
	test	eax, eax
	jns	.label_2308
	mov	edi, ebx
	call	iswcntrl
	test	eax, eax
	sete	al
	movzx	eax, al
.label_2308:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x417e00
	.globl mb_copy
	.type mb_copy, @function
mb_copy:

	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [rbx]
	lea	rax, [rbx + 0x18]
	cmp	rsi, rax
	jne	.label_2309
	lea	r15, [r14 + 0x18]
	mov	rdx, qword ptr [rbx + 8]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_2309:
	mov	qword ptr [r14], rsi
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [r14 + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	test	al, al
	mov	byte ptr [r14 + 0x10], al
	je	.label_2310
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x14], eax
.label_2310:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x417e50
	.globl is_basic
	.type is_basic, @function
is_basic:

	mov	eax, edi
	shr	eax, 3
	and	eax, 0x1c
	mov	eax,  dword ptr [dword ptr [rax + is_basic_table]]
	bt	eax, edi
	setb	al
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x417e70

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_2311
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_2313
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_2311
.label_2313:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_2311
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_2312
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_2312:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_2311:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x417ef0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_2314
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_2314
	test	byte ptr [rbx + 1], 1
	je	.label_2314
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_2314:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x417f30

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
	jne	.label_2315
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_2315
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_2316
.label_2315:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_2316:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_2317
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_2317:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	16
	#Procedure 0x417fa0

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