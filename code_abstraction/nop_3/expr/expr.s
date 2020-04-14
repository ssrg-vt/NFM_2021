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
	jne	.label_39
	jmp	.label_24
.label_23:
	mov	rdi, r15
	call	__gmpz_clear
	jmp	.label_45
	nop	dword ptr [rax + rax]
.label_39:
	lea	r15, [r12 + 8]
	test	r14b, r14b
	je	.label_34
.label_32:
	mov	esi, OFFSET FLAT:.str.39
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rax, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rax
	jne	.label_24
	mov	eax, dword ptr [r12]
	test	eax, eax
	je	.label_28
	cmp	eax, 1
	jne	.label_30
	mov	rcx, qword ptr [r15]
	mov	dl, byte ptr [rcx]
	mov	al, 1
	test	dl, dl
	je	.label_35
	movzx	edx, dl
	cmp	edx, 0x2d
	sete	dl
	movzx	esi, dl
	mov	dl, byte ptr [rcx + rsi]
	lea	rcx, [rcx + rsi + 1]
	nop	word ptr cs:[rax + rax]
.label_46:
	movzx	edx, dl
	cmp	edx, 0x30
	jne	.label_44
	mov	dl, byte ptr [rcx]
	inc	rcx
	test	dl, dl
	jne	.label_46
	jmp	.label_35
	nop	word ptr cs:[rax + rax]
.label_28:
	cmp	dword ptr [r12 + 0xc], 0
	sete	al
	jmp	.label_35
.label_44:
	xor	eax, eax
	nop	dword ptr [rax]
.label_35:
	movzx	edi, al
	call	eval1
	mov	rbp, rax
	mov	eax, dword ptr [r12]
	test	eax, eax
	je	.label_26
	cmp	eax, 1
	jne	.label_29
	mov	rax, qword ptr [r15]
	mov	cl, byte ptr [rax]
	test	cl, cl
	je	.label_31
	movzx	ecx, cl
	cmp	ecx, 0x2d
	sete	cl
	movzx	edx, cl
	mov	cl, byte ptr [rax + rdx]
	lea	rax, [rax + rdx + 1]
	nop	dword ptr [rax]
.label_41:
	movzx	ecx, cl
	cmp	ecx, 0x30
	jne	.label_40
	mov	cl, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_41
	jmp	.label_31
	nop	word ptr cs:[rax + rax]
.label_26:
	cmp	dword ptr [r12 + 0xc], 0
	je	.label_23
.label_40:
	mov	rdi, rbp
	add	rdi, 8
	cmp	dword ptr [rbp], 1
	jne	.label_50
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_25
	nop	word ptr cs:[rax + rax]
.label_50:
	call	__gmpz_clear
.label_25:
	mov	rdi, rbp
	call	free
	mov	rbx,  qword ptr [word ptr [rip + args]]
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	jne	.label_32
	jmp	.label_24
	nop	word ptr cs:[rax + rax]
.label_34:
	mov	esi, OFFSET FLAT:.str.39
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rax, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rax
	jne	.label_24
	xor	edi, edi
	call	eval1
	mov	rbp, rax
	mov	ecx, dword ptr [r12]
	test	ecx, ecx
	je	.label_48
	cmp	ecx, 1
	jne	.label_29
	mov	rcx, qword ptr [r15]
	mov	dl, byte ptr [rcx]
	test	dl, dl
	je	.label_31
	movzx	edx, dl
	cmp	edx, 0x2d
	sete	dl
	movzx	esi, dl
	mov	dl, byte ptr [rcx + rsi]
	lea	rcx, [rcx + rsi + 1]
	nop	
.label_37:
	movzx	edx, dl
	cmp	edx, 0x30
	jne	.label_33
	mov	dl, byte ptr [rcx]
	inc	rcx
	test	dl, dl
	jne	.label_37
	jmp	.label_31
	nop	word ptr cs:[rax + rax]
.label_48:
	cmp	dword ptr [r12 + 0xc], 0
	je	.label_23
.label_33:
	add	rax, 8
	cmp	dword ptr [rbp], 1
	jne	.label_43
	mov	rdi, qword ptr [rax]
	call	free
	jmp	.label_47
.label_43:
	mov	rdi, rax
	call	__gmpz_clear
.label_47:
	mov	rdi, rbp
	call	free
	mov	rbx,  qword ptr [word ptr [rip + args]]
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	jne	.label_34
	jmp	.label_24
	nop	dword ptr [rax + rax]
.label_31:
	mov	rdi, qword ptr [r15]
	call	free
.label_45:
	mov	rdi, r12
	call	free
	mov	eax, dword ptr [rbp]
	test	eax, eax
	je	.label_49
	cmp	eax, 1
	jne	.label_36
	mov	rcx, qword ptr [rbp + 8]
	mov	dl, byte ptr [rcx]
	test	dl, dl
	je	.label_38
	movzx	edx, dl
	cmp	edx, 0x2d
	sete	dl
	movzx	esi, dl
	mov	dl, byte ptr [rcx + rsi]
	lea	rcx, [rcx + rsi + 1]
	nop	
.label_53:
	movzx	edx, dl
	cmp	edx, 0x30
	jne	.label_27
	mov	dl, byte ptr [rcx]
	inc	rcx
	test	dl, dl
	jne	.label_53
	cmp	eax, 1
	jne	.label_52
.label_38:
	mov	rdi, qword ptr [rbp + 8]
	call	free
	jmp	.label_51
	nop	word ptr cs:[rax + rax]
.label_49:
	cmp	dword ptr [rbp + 0xc], 0
	jne	.label_27
.label_52:
	lea	rdi, [rbp + 8]
	call	__gmpz_clear
.label_51:
	mov	rdi, rbp
	call	free
	mov	edi, 0x18
	call	xmalloc
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	lea	rdi, [rbp + 8]
	xor	esi, esi
	call	__gmpz_init_set_ui
.label_27:
	mov	rbx,  qword ptr [word ptr [rip + args]]
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	mov	r12, rbp
	jne	.label_39
	jmp	.label_42
.label_24:
	mov	rbp, r12
.label_42:
	mov	rax, rbp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_29:
	call	abort
.label_30:
	call	abort
.label_36:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402570

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
	jmp	.label_56
	nop	dword ptr [rax]
.label_78:
	mov	rdi, rbp
	call	free
	mov	edi, 0x18
	call	xmalloc
	mov	r12, rax
	mov	dword ptr [r12], 0
	lea	rdi, [r12 + 8]
	xor	esi, esi
	call	__gmpz_init_set_ui
.label_56:
	mov	rbp,  qword ptr [word ptr [rip + args]]
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_62
	lea	r15, [r12 + 8]
	test	r14b, r14b
	je	.label_63
.label_79:
	mov	esi, OFFSET FLAT:.str.40
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rax, [rbp + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rax
	jne	.label_62
	mov	eax, dword ptr [r12]
	test	eax, eax
	je	.label_86
	cmp	eax, 1
	jne	.label_57
	mov	rcx, qword ptr [r15]
	mov	dl, byte ptr [rcx]
	mov	al, 1
	test	dl, dl
	je	.label_60
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
	jne	.label_71
	mov	dl, byte ptr [rcx]
	inc	rcx
	test	dl, dl
	jne	.label_72
	jmp	.label_60
	nop	word ptr cs:[rax + rax]
.label_86:
	cmp	dword ptr [r12 + 0xc], 0
	sete	al
	jmp	.label_60
.label_71:
	xor	eax, eax
	nop	dword ptr [rax]
.label_60:
	xor	al, 1
	movzx	edi, al
	call	eval2
	mov	rbp, rax
	mov	eax, dword ptr [r12]
	test	eax, eax
	je	.label_76
	cmp	eax, 1
	jne	.label_67
	mov	rcx, qword ptr [r15]
	mov	dl, byte ptr [rcx]
	test	dl, dl
	je	.label_70
	movzx	edx, dl
	cmp	edx, 0x2d
	sete	dl
	movzx	esi, dl
	mov	dl, byte ptr [rcx + rsi]
	lea	rcx, [rcx + rsi + 1]
	nop	
.label_68:
	movzx	edx, dl
	cmp	edx, 0x30
	jne	.label_84
	mov	dl, byte ptr [rcx]
	inc	rcx
	test	dl, dl
	jne	.label_68
	jmp	.label_70
	nop	word ptr cs:[rax + rax]
.label_76:
	cmp	dword ptr [r12 + 0xc], 0
	je	.label_75
.label_84:
	mov	ecx, dword ptr [rbp]
	test	ecx, ecx
	je	.label_77
	cmp	ecx, 1
	jne	.label_55
	mov	rdx, qword ptr [rbp + 8]
	mov	bl, byte ptr [rdx]
	test	bl, bl
	je	.label_59
	movzx	esi, bl
	cmp	esi, 0x2d
	sete	bl
	movzx	esi, bl
	mov	bl, byte ptr [rdx + rsi]
	lea	rdx, [rdx + rsi + 1]
	nop	
.label_58:
	movzx	esi, bl
	cmp	esi, 0x30
	jne	.label_74
	mov	bl, byte ptr [rdx]
	inc	rdx
	test	bl, bl
	jne	.label_58
	jmp	.label_59
	nop	word ptr cs:[rax + rax]
.label_77:
	cmp	dword ptr [rbp + 0xc], 0
	jne	.label_65
	jmp	.label_59
.label_74:
	cmp	ecx, 1
	jne	.label_65
	mov	rdi, qword ptr [rbp + 8]
	call	free
	jmp	.label_83
	nop	dword ptr [rax + rax]
.label_65:
	mov	rdi, rbp
	add	rdi, 8
	call	__gmpz_clear
.label_83:
	mov	rdi, rbp
	call	free
	mov	rbp,  qword ptr [word ptr [rip + args]]
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	jne	.label_79
	jmp	.label_62
	nop	dword ptr [rax]
.label_63:
	mov	esi, OFFSET FLAT:.str.40
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rax, [rbp + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rax
	jne	.label_62
	xor	edi, edi
	call	eval2
	mov	rbp, rax
	mov	eax, dword ptr [r12]
	test	eax, eax
	je	.label_64
	cmp	eax, 1
	jne	.label_67
	mov	rcx, qword ptr [r15]
	mov	dl, byte ptr [rcx]
	test	dl, dl
	je	.label_70
	movzx	edx, dl
	cmp	edx, 0x2d
	sete	dl
	movzx	esi, dl
	mov	dl, byte ptr [rcx + rsi]
	lea	rcx, [rcx + rsi + 1]
.label_81:
	movzx	edx, dl
	cmp	edx, 0x30
	jne	.label_66
	mov	dl, byte ptr [rcx]
	inc	rcx
	test	dl, dl
	jne	.label_81
	jmp	.label_70
	nop	word ptr cs:[rax + rax]
.label_64:
	cmp	dword ptr [r12 + 0xc], 0
	je	.label_75
.label_66:
	mov	ecx, dword ptr [rbp]
	test	ecx, ecx
	je	.label_85
	cmp	ecx, 1
	jne	.label_55
	mov	rdx, qword ptr [rbp + 8]
	mov	bl, byte ptr [rdx]
	test	bl, bl
	je	.label_59
	movzx	esi, bl
	cmp	esi, 0x2d
	sete	bl
	movzx	esi, bl
	mov	bl, byte ptr [rdx + rsi]
	lea	rdx, [rdx + rsi + 1]
	nop	
.label_80:
	movzx	esi, bl
	cmp	esi, 0x30
	jne	.label_82
	mov	bl, byte ptr [rdx]
	inc	rdx
	test	bl, bl
	jne	.label_80
	jmp	.label_59
	nop	word ptr cs:[rax + rax]
.label_85:
	cmp	dword ptr [rbp + 0xc], 0
	jne	.label_61
	jmp	.label_59
.label_82:
	cmp	ecx, 1
	jne	.label_61
	mov	rdi, qword ptr [rbp + 8]
	call	free
	jmp	.label_73
	nop	dword ptr [rax + rax]
.label_61:
	mov	rdi, rbp
	add	rdi, 8
	call	__gmpz_clear
.label_73:
	mov	rdi, rbp
	call	free
	mov	rbp,  qword ptr [word ptr [rip + args]]
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	jne	.label_63
	jmp	.label_62
	nop	word ptr [rax + rax]
.label_59:
	cmp	eax, 1
	jne	.label_75
.label_70:
	mov	rdi, qword ptr [r15]
	call	free
	jmp	.label_69
	nop	
.label_75:
	mov	rdi, r15
	call	__gmpz_clear
.label_69:
	mov	rdi, r12
	call	free
	lea	rdi, [rbp + 8]
	cmp	dword ptr [rbp], 1
	jne	.label_54
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_78
	nop	word ptr [rax + rax]
.label_54:
	call	__gmpz_clear
	jmp	.label_78
.label_62:
	mov	rax, r12
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_67:
	call	abort
.label_55:
	call	abort
.label_57:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402910

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
	jmp	.label_95
	nop	dword ptr [rax]
.label_100:
	mov	rdi, r15
	call	free
	mov	edi, 0x18
	call	xmalloc
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	lea	rdi, [rbx + 8]
	mov	rsi, rbp
	call	__gmpz_init_set_ui
.label_95:
	mov	rbp,  qword ptr [word ptr [rip + args]]
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_88
	mov	esi, OFFSET FLAT:.str.41
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rbp, [rbp + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbp
	mov	r13d, 0
	je	.label_90
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_88
	mov	esi, OFFSET FLAT:.str.42
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rbp, [rbp + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbp
	mov	r13d, 1
	je	.label_90
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_88
	mov	esi, OFFSET FLAT:.str.43
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rbp, [rbp + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbp
	mov	r13d, 2
	je	.label_90
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_88
	mov	esi, OFFSET FLAT:.str.44
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rbp, [rbp + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbp
	je	.label_90
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_88
	mov	esi, OFFSET FLAT:.str.45
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rbp, [rbp + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbp
	mov	r13d, 3
	je	.label_90
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_88
	mov	esi, OFFSET FLAT:.str.46
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rbp, [rbp + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbp
	mov	r13d, 4
	je	.label_90
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_88
	mov	esi, OFFSET FLAT:.str.47
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rax, [rbp + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rax
	mov	r13d, 5
	jne	.label_88
	nop	word ptr cs:[rax + rax]
.label_90:
	mov	edi, r14d
	call	eval3
	mov	r15, rax
	test	r14b, r14b
	je	.label_103
	mov	eax, dword ptr [rbx]
	cmp	eax, 1
	je	.label_106
	test	eax, eax
	jne	.label_98
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
.label_106:
	mov	eax, dword ptr [r15]
	cmp	eax, 1
	je	.label_96
	test	eax, eax
	jne	.label_98
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
.label_96:
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
.label_92:
	movsx	ecx, cl
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_91
	mov	cl, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_92
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
.label_102:
	movsx	ecx, cl
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_101
	mov	cl, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_102
	mov	rdi, rbp
	call	strintcmp
	jmp	.label_104
	nop	
.label_103:
	lea	rax, [rbx + 8]
	xor	ebp, ebp
	jmp	.label_105
	nop	dword ptr [rax + rax]
.label_91:
	mov	r12d, r14d
	lea	r14, [r15 + 8]
.label_101:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsi, qword ptr [r14]
	mov	rdi, rbp
	call	strcoll
.label_104:
	mov	ebp, eax
	mov	r14d, r12d
	mov	eax, r13d
	cmp	r13d, 5
	ja	.label_93
	jmp	qword ptr [word ptr [+ (rax * 8) + label_97]]
.label_2710:
	shr	ebp, 0x1f
	jmp	.label_89
.label_2711:
	test	ebp, ebp
	setle	al
	movzx	ebp, al
	jmp	.label_89
.label_2712:
	test	ebp, ebp
	sete	al
	movzx	ebp, al
	jmp	.label_89
.label_2713:
	test	ebp, ebp
	setne	al
	movzx	ebp, al
	jmp	.label_89
.label_2714:
	shr	ebp, 0x1f
	xor	rbp, 1
	jmp	.label_89
.label_2715:
	test	ebp, ebp
	setg	al
	movzx	ebp, al
	nop	word ptr [rax + rax]
.label_89:
	mov	rax, qword ptr [rsp]
.label_105:
	cmp	dword ptr [rbx], 1
	jne	.label_99
	mov	rdi, qword ptr [rax]
	call	free
	jmp	.label_87
	nop	word ptr cs:[rax + rax]
.label_99:
	lea	rdi, [rbx + 8]
	call	__gmpz_clear
.label_87:
	mov	rdi, rbx
	call	free
	mov	rdi, r15
	add	rdi, 8
	cmp	dword ptr [r15], 1
	jne	.label_94
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_100
	nop	dword ptr [rax + rax]
.label_94:
	call	__gmpz_clear
	jmp	.label_100
.label_88:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_98:
	call	abort
.label_93:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402cf0

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
	movzx	ebp, dil
	mov	edi, ebp
	call	eval4
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + args]]
	mov	rdi, qword ptr [rbx]
	test	bpl, bpl
	je	.label_109
	test	rdi, rdi
	je	.label_113
	mov	r15, r14
	add	r15, 8
	nop	dword ptr [rax]
.label_115:
	mov	esi, OFFSET FLAT:.str_1
	call	strcmp
	xor	ebp, ebp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rbx, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbx
	je	.label_117
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_113
	mov	esi, OFFSET FLAT:.str.52
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rax, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rax
	mov	ebp, 1
	jne	.label_113
.label_117:
	mov	edi, 1
	call	eval4
	mov	r13, rax
	mov	eax, dword ptr [r14]
	test	eax, eax
	je	.label_112
	cmp	eax, 1
	jne	.label_107
	mov	rbx, qword ptr [r15]
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	sete	al
	movzx	eax, al
	mov	cl, byte ptr [rbx + rax]
	lea	rax, [rbx + rax + 1]
	nop	dword ptr [rax]
.label_120:
	movsx	ecx, cl
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_108
	mov	cl, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_120
	mov	edx, 0xa
	mov	rdi, r15
	mov	rsi, rbx
	call	__gmpz_init_set_str
	mov	rdi, rbx
	call	free
	mov	dword ptr [r14], 0
.label_112:
	mov	eax, dword ptr [r13]
	cmp	eax, 1
	je	.label_122
	test	eax, eax
	jne	.label_107
	lea	r12, [r13 + 8]
	jmp	.label_110
	nop	
.label_122:
	lea	r12, [r13 + 8]
	mov	rbx, qword ptr [r13 + 8]
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	sete	al
	movzx	eax, al
	mov	cl, byte ptr [rbx + rax]
	lea	rax, [rbx + rax + 1]
	nop	dword ptr [rax]
.label_118:
	movsx	ecx, cl
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_108
	mov	cl, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_118
	mov	edx, 0xa
	mov	rdi, r12
	mov	rsi, rbx
	call	__gmpz_init_set_str
	mov	rdi, rbx
	call	free
	mov	dword ptr [r13], 0
.label_110:
	test	ebp, ebp
	mov	eax, OFFSET FLAT:__gmpz_sub
	mov	ecx, OFFSET FLAT:__gmpz_add
	cmove	rax, rcx
	mov	rbx, r13
	add	rbx, 8
	mov	rdi, r15
	mov	rsi, r15
	mov	rdx, rbx
	call	rax
	cmp	dword ptr [r13], 1
	jne	.label_111
	mov	rdi, qword ptr [r12]
	call	free
	jmp	.label_114
	nop	dword ptr [rax]
.label_111:
	mov	rdi, rbx
	call	__gmpz_clear
.label_114:
	mov	rdi, r13
	call	free
	mov	rbx,  qword ptr [word ptr [rip + args]]
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	jne	.label_115
	jmp	.label_113
	nop	dword ptr [rax + rax]
.label_119:
	mov	rdi, rbx
	call	free
	mov	rbx,  qword ptr [word ptr [rip + args]]
	mov	rdi, qword ptr [rbx]
.label_109:
	test	rdi, rdi
	je	.label_113
	mov	esi, OFFSET FLAT:.str_1
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rbx, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbx
	je	.label_121
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_113
	mov	esi, OFFSET FLAT:.str.52
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rax, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rax
	jne	.label_113
.label_121:
	xor	edi, edi
	call	eval4
	mov	rbx, rax
	cmp	dword ptr [rbx], 1
	lea	rdi, [rbx + 8]
	jne	.label_116
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_119
	nop	word ptr [rax + rax]
.label_116:
	call	__gmpz_clear
	jmp	.label_119
.label_113:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_108:
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
.label_107:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fa0

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
	mov	r14d, edi
	movzx	edi, r14b
	mov	dword ptr [rsp + 0x10], edi
	call	eval6
	mov	rbx, rax
	mov	rbp,  qword ptr [word ptr [rip + args]]
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_148
	test	r14b, r14b
	je	.label_159
	mov	r15d, r14d
	nop	word ptr cs:[rax + rax]
.label_143:
	mov	esi, OFFSET FLAT:.str.58
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rbp, [rbp + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbp
	jne	.label_153
	mov	edi, 1
	call	eval6
	mov	rbp, rax
	mov	r14, rbp
	mov	rdi, rbx
	mov	rsi, rbp
	call	docolon
	mov	r12, rax
	lea	rdi, [rbx + 8]
	cmp	dword ptr [rbx], 1
	jne	.label_127
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_130
	nop	word ptr cs:[rax + rax]
.label_127:
	call	__gmpz_clear
.label_130:
	mov	rdi, rbx
	call	free
	add	rbp, 8
	cmp	dword ptr [r14], 1
	jne	.label_138
	mov	rdi, qword ptr [rbp]
	call	free
	jmp	.label_139
	nop	word ptr cs:[rax + rax]
.label_138:
	mov	rdi, rbp
	call	__gmpz_clear
.label_139:
	mov	rdi, r14
	call	free
	mov	rbp,  qword ptr [word ptr [rip + args]]
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	mov	rbx, r12
	jne	.label_143
	jmp	.label_124
	nop	dword ptr [rax]
.label_159:
	mov	esi, OFFSET FLAT:.str.58
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rbp, [rbp + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbp
	jne	.label_148
	xor	edi, edi
	call	eval6
	mov	rbp, rax
	cmp	dword ptr [rbp], 1
	lea	rdi, [rbp + 8]
	jne	.label_152
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_155
	nop	
.label_152:
	call	__gmpz_clear
.label_155:
	mov	rdi, rbp
	call	free
	mov	rbp,  qword ptr [word ptr [rip + args]]
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	jne	.label_159
.label_148:
	mov	r15d, r14d
	mov	r12, rbx
	jmp	.label_124
.label_153:
	mov	r12, rbx
.label_124:
	mov	qword ptr [rsp], r12
	mov	dword ptr [rsp + 0x14], r15d
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	mov	r14d, r15d
	je	.label_125
	mov	rax, qword ptr [rsp]
	lea	rax, [rax + 8]
	mov	qword ptr [rsp + 8], rax
	nop	
.label_137:
	mov	esi, OFFSET FLAT:.str.54
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rbx, [rbp + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbx
	mov	r12d, 0
	je	.label_131
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_125
	mov	esi, OFFSET FLAT:.str.55
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rbx, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbx
	mov	r12d, 1
	je	.label_131
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_125
	mov	esi, OFFSET FLAT:.str.56
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rax, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rax
	mov	r12d, 2
	jne	.label_125
.label_131:
	mov	edi, dword ptr [rsp + 0x10]
	call	eval6
	mov	rbp, rax
	mov	rbx,  qword ptr [word ptr [rip + args]]
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_123
	test	r14b, r14b
	je	.label_132
	nop	word ptr cs:[rax + rax]
.label_149:
	mov	esi, OFFSET FLAT:.str.58
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rax, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rax
	jne	.label_123
	mov	edi, 1
	call	eval6
	mov	r15, rax
	mov	r14, r15
	mov	rdi, rbp
	mov	rsi, r15
	call	docolon
	mov	r13, rax
	lea	rdi, [rbp + 8]
	cmp	dword ptr [rbp], 1
	jne	.label_129
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_133
	nop	word ptr cs:[rax + rax]
.label_129:
	call	__gmpz_clear
.label_133:
	mov	rdi, rbp
	call	free
	add	r15, 8
	cmp	dword ptr [r14], 1
	jne	.label_142
	mov	rdi, qword ptr [r15]
	call	free
	jmp	.label_140
	nop	word ptr cs:[rax + rax]
.label_142:
	mov	rdi, r15
	call	__gmpz_clear
.label_140:
	mov	rdi, r14
	call	free
	mov	rbx,  qword ptr [word ptr [rip + args]]
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	mov	rbp, r13
	jne	.label_149
	jmp	.label_147
	nop	dword ptr [rax + rax]
.label_132:
	mov	esi, OFFSET FLAT:.str.58
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rax, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rax
	jne	.label_123
	xor	edi, edi
	call	eval6
	mov	rbx, rax
	cmp	dword ptr [rbx], 1
	lea	rdi, [rbx + 8]
	jne	.label_154
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_157
	nop	dword ptr [rax]
.label_154:
	call	__gmpz_clear
.label_157:
	mov	rdi, rbx
	call	free
	mov	rbx,  qword ptr [word ptr [rip + args]]
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	jne	.label_132
	nop	dword ptr [rax]
.label_123:
	mov	r13, rbp
.label_147:
	mov	r14d, dword ptr [rsp + 0x14]
	test	r14b, r14b
	je	.label_151
	mov	rax, qword ptr [rsp]
	mov	eax, dword ptr [rax]
	test	eax, eax
	je	.label_128
	cmp	eax, 1
	jne	.label_136
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, qword ptr [rax]
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2d
	sete	al
	movzx	eax, al
	mov	cl, byte ptr [rbp + rax]
	lea	rax, [rbp + rax + 1]
	nop	word ptr cs:[rax + rax]
.label_158:
	movsx	ecx, cl
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_144
	mov	cl, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_158
	mov	edx, 0xa
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, rbp
	call	__gmpz_init_set_str
	mov	rdi, rbp
	call	free
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0
.label_128:
	mov	eax, dword ptr [r13]
	test	eax, eax
	je	.label_145
	cmp	eax, 1
	jne	.label_146
	lea	rdi, [r13 + 8]
	mov	rbp, qword ptr [r13 + 8]
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2d
	sete	al
	movzx	eax, al
	mov	cl, byte ptr [rbp + rax]
	lea	rax, [rbp + rax + 1]
	nop	dword ptr [rax + rax]
.label_156:
	movsx	ecx, cl
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_144
	mov	cl, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_156
	mov	edx, 0xa
	mov	rsi, rbp
	call	__gmpz_init_set_str
	mov	rdi, rbp
	call	free
	mov	dword ptr [r13], 0
.label_145:
	test	r12d, r12d
	mov	eax, OFFSET FLAT:__gmpz_mul
	je	.label_141
	cmp	dword ptr [r13 + 0xc], 0
	je	.label_126
	cmp	r12d, 1
	mov	eax, OFFSET FLAT:__gmpz_tdiv_r
	mov	ecx, OFFSET FLAT:__gmpz_tdiv_q
	cmove	rax, rcx
.label_141:
	lea	rdx, [r13 + 8]
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, rdi
	call	rax
.label_151:
	lea	rdi, [r13 + 8]
	cmp	dword ptr [r13], 1
	jne	.label_134
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_135
	nop	
.label_134:
	call	__gmpz_clear
.label_135:
	mov	rdi, r13
	call	free
	mov	rbp,  qword ptr [word ptr [rip + args]]
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	jne	.label_137
.label_125:
	mov	rax, qword ptr [rsp]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_144:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
.label_150:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_136:
	call	abort
.label_146:
	call	abort
.label_126:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	jmp	.label_150
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4034d0

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
	je	.label_177
	mov	esi, OFFSET FLAT:.str_1
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rbx, [rbp + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbx
	mov	rbp, qword ptr [rbp + rax*8]
	je	.label_206
	test	rbp, rbp
	je	.label_177
	mov	esi, OFFSET FLAT:.str.59
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rbx, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbx
	je	.label_213
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_177
	mov	esi, OFFSET FLAT:.str.60
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rbx, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbx
	je	.label_219
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_177
	mov	esi, OFFSET FLAT:.str.61
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rbx, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbx
	je	.label_223
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_177
	mov	esi, OFFSET FLAT:.str.62
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rbx, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbx
	je	.label_227
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_177
	mov	esi, OFFSET FLAT:.str.68
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rbx, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbx
	je	.label_169
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_162
	mov	esi, OFFSET FLAT:.str.70
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rbx, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbx
	je	.label_165
.label_162:
	lea	rax, [rbx + 8]
	mov	qword ptr [word ptr [rip + args]],  rax
	mov	rbx, qword ptr [rbx]
	mov	edi, 0x18
	call	xmalloc
	mov	r13, rax
	mov	dword ptr [r13], 1
	mov	rdi, rbx
	jmp	.label_204
.label_206:
	test	rbp, rbp
	je	.label_177
	add	rbx, 8
	mov	qword ptr [word ptr [rip + args]],  rbx
	mov	edi, 0x18
	call	xmalloc
	mov	r13, rax
	mov	dword ptr [r13], 1
	mov	rdi, rbp
.label_204:
	call	xstrdup
	mov	qword ptr [r13 + 8], rax
	jmp	.label_161
.label_213:
	movzx	edi, r15b
	call	eval6
	mov	rbp, rax
	mov	eax, dword ptr [rbp]
	test	eax, eax
	je	.label_186
	cmp	eax, 1
	jne	.label_189
	lea	r14, [rbp + 8]
	mov	rbx, qword ptr [rbp + 8]
	jmp	.label_193
.label_219:
	movzx	ebx, r15b
	mov	edi, ebx
	call	eval6
	mov	r13, rax
	mov	edi, ebx
	call	eval6
	mov	rbp, rax
	mov	r14, rbp
	test	r15b, r15b
	je	.label_203
	mov	rdi, r13
	mov	rsi, r14
	call	docolon
	mov	r15, rax
	mov	rdi, r13
	add	rdi, 8
	cmp	dword ptr [r13], 1
	jne	.label_202
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_208
.label_186:
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
.label_193:
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
	jne	.label_218
	mov	rdi, qword ptr [r14]
	call	free
	jmp	.label_160
.label_218:
	mov	rdi, rbp
	add	rdi, 8
	jmp	.label_201
.label_223:
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
	je	.label_224
	test	eax, eax
	jne	.label_168
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
.label_224:
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_214
	cmp	eax, 1
	jne	.label_232
	lea	rbp, [r15 + 8]
	mov	r13, qword ptr [r15 + 8]
	jmp	.label_226
.label_227:
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
	je	.label_166
	mov	r14, rbp
	test	eax, eax
	jne	.label_168
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
.label_166:
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_178
	cmp	eax, 1
	jne	.label_168
	lea	rdi, [r15 + 8]
	mov	rbx, qword ptr [r15 + 8]
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	sete	al
	movzx	eax, al
	mov	cl, byte ptr [rbx + rax]
	lea	rax, [rbx + rax + 1]
	nop	word ptr cs:[rax + rax]
.label_190:
	movsx	ecx, cl
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_185
	mov	cl, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_190
	mov	edx, 0xa
	mov	rsi, rbx
	call	__gmpz_init_set_str
	mov	rdi, rbx
	call	free
	mov	dword ptr [r15], 0
.label_178:
	mov	eax, dword ptr [rbp]
	test	eax, eax
	je	.label_197
	cmp	eax, 1
	jne	.label_198
	lea	rdi, [rbp + 8]
	mov	rbx, qword ptr [rbp + 8]
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	sete	al
	movzx	eax, al
	mov	cl, byte ptr [rbx + rax]
	lea	rax, [rbx + rax + 1]
.label_231:
	movsx	ecx, cl
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_185
	mov	cl, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_231
	mov	edx, 0xa
	mov	rsi, rbx
	call	__gmpz_init_set_str
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], 0
.label_197:
	mov	eax, dword ptr [r15 + 0xc]
	mov	qword ptr [rsp + 0x20], r15
	mov	r14, -1
	test	eax, eax
	mov	r15, -1
	js	.label_211
	cmp	eax, 1
	ja	.label_215
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	xor	r15d, r15d
	test	eax, eax
	cmovne	r15, qword ptr [rcx]
	cmp	r15, -1
	jne	.label_211
.label_215:
	mov	r15, -2
.label_211:
	mov	eax, dword ptr [rbp + 0xc]
	test	eax, eax
	js	.label_192
	cmp	eax, 1
	ja	.label_222
	mov	rcx, qword ptr [rbp + 0x10]
	xor	r14d, r14d
	test	eax, eax
	cmovne	r14, qword ptr [rcx]
	cmp	r14, -1
	jne	.label_192
.label_222:
	mov	r14, -2
.label_192:
	mov	qword ptr [rsp + 0x18], rbp
	mov	r13, qword ptr [r12 + 8]
	mov	rdi, r13
	call	strlen
	mov	rbp, rax
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	mov	rbx, rbp
	jb	.label_170
	mov	rdi, r13
	call	mbslen
	mov	rbx, rax
.label_170:
	lea	rax, [r15 - 1]
	cmp	rax, rbx
	jae	.label_228
	lea	rax, [r14 + 1]
	cmp	rax, 1
	ja	.label_230
.label_228:
	mov	edi, OFFSET FLAT:.str_0
	call	xstrdup
	mov	r14, rax
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r15, qword ptr [rsp + 0x20]
	jmp	.label_220
.label_214:
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
.label_226:
	xor	ebx, ebx
	cmp	byte ptr [r13], 0
	je	.label_167
	mov	qword ptr [rsp + 0x10], rbp
	mov	rbp, qword ptr [r14 + 8]
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_171
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
	jne	.label_179
	test	al, al
	jne	.label_182
.label_179:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	lea	rbx, [rsp + 0x28]
	xor	ecx, ecx
.label_225:
	inc	rcx
	mov	qword ptr [rsp + 0x20], rcx
	cmp	qword ptr [rsp + 0x80], 1
	jne	.label_184
	mov	rbp, qword ptr [rsp + 0x78]
	movsx	esi, byte ptr [rbp]
	mov	rdi, r13
	call	mbschr
	test	rax, rax
	mov	eax, 1
	je	.label_194
	jmp	.label_196
.label_184:
	mov	qword ptr [rsp + 0x38], r13
	mov	byte ptr [rsp + 0x28], 0
	mov	qword ptr [rsp + 0x2c], 0
	jmp	.label_183
	nop	word ptr cs:[rax + rax]
.label_188:
	add	qword ptr [rsp + 0x38], r14
.label_183:
	mov	byte ptr [rsp + 0x34], 0
	mov	rdi, rbx
	call	mbuiter_multi_next
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rax, rcx
	shr	rax, 0x20
	test	cl, cl
	setne	cl
	je	.label_164
	test	eax, eax
	je	.label_174
.label_164:
	mov	rdx, qword ptr [rsp + 0x88]
	test	dl, dl
	je	.label_200
	xor	cl, 1
	test	cl, 1
	jne	.label_200
	shr	rdx, 0x20
	cmp	eax, edx
	je	.label_221
	mov	r14, qword ptr [rsp + 0x40]
	add	qword ptr [rsp + 0x38], r14
	jmp	.label_183
	nop	word ptr cs:[rax + rax]
.label_200:
	mov	r14, qword ptr [rsp + 0x40]
	cmp	r14, qword ptr [rsp + 0x80]
	jne	.label_188
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	jne	.label_188
	jmp	.label_221
.label_174:
	mov	rbp, qword ptr [rsp + 0x78]
	mov	rax, qword ptr [rsp + 0x80]
	mov	r14, qword ptr [rsp + 0x18]
.label_194:
	add	rbp, rax
	mov	qword ptr [rsp + 0x78], rbp
	mov	byte ptr [rsp + 0x74], 0
	lea	rdi, [rsp + 0x68]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, rax
	shr	rcx, 0x20
	mov	rcx, qword ptr [rsp + 0x20]
	jne	.label_225
	test	al, al
	je	.label_225
	jmp	.label_182
.label_202:
	call	__gmpz_clear
.label_208:
	mov	rdi, r13
	call	free
	mov	r13, r15
.label_203:
	add	rbp, 8
	cmp	dword ptr [r14], 1
	jne	.label_212
	mov	rdi, qword ptr [rbp]
	call	free
	jmp	.label_233
.label_212:
	mov	rdi, rbp
	call	__gmpz_clear
.label_233:
	mov	rdi, r14
	call	free
	jmp	.label_161
.label_169:
	movzx	edi, r15b
	call	eval
	mov	r13, rax
	mov	rbx,  qword ptr [word ptr [rip + args]]
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_163
	mov	esi, OFFSET FLAT:.str.70
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rax, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rax
	je	.label_161
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.71
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax,  qword ptr [word ptr [rip + args]]
	mov	rdx, qword ptr [rax]
	jmp	.label_176
.label_171:
	mov	rdi, rbp
	mov	rsi, r13
	call	strcspn
	cmp	byte ptr [rbp + rax], 0
	je	.label_180
	inc	rax
	mov	rbx, rax
	jmp	.label_181
.label_185:
	mov	edi, 0x18
	call	xmalloc
	mov	r13, rax
	mov	dword ptr [r13], 1
	mov	edi, OFFSET FLAT:.str_0
	call	xstrdup
	mov	qword ptr [r13 + 8], rax
	lea	rbx, [r12 + 8]
	jmp	.label_187
.label_180:
	xor	ebx, ebx
.label_181:
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_167
.label_221:
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 8], rax
	mov	r14, qword ptr [rsp + 0x18]
.label_182:
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rsp + 8]
.label_167:
	add	r12, 8
	mov	edi, 0x18
	call	xmalloc
	mov	r13, rax
	mov	dword ptr [r13], 0
	lea	rdi, [r13 + 8]
	mov	rsi, rbx
	call	__gmpz_init_set_ui
	cmp	dword ptr [r14], 1
	jne	.label_205
	mov	rdi, qword ptr [r12]
	call	free
	jmp	.label_207
.label_205:
	mov	rdi, r12
	call	__gmpz_clear
.label_207:
	mov	rdi, r14
	call	free
	cmp	dword ptr [r15], 1
	jne	.label_209
	mov	rdi, qword ptr [rbp]
	call	free
	jmp	.label_210
.label_209:
	mov	rdi, r15
	add	rdi, 8
	call	__gmpz_clear
.label_210:
	mov	rdi, r15
	call	free
	jmp	.label_161
.label_230:
	sub	rbx, r15
	inc	rbx
	cmp	rbx, r14
	cmova	rbx, r14
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jne	.label_216
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
	jmp	.label_217
.label_216:
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
	je	.label_172
	or	cl, al
	mov	r13, qword ptr [rsp + 0x10]
	je	.label_172
	mov	ebp, 1
	lea	r15, [rsp + 0x68]
	mov	r13, qword ptr [rsp + 0x10]
.label_175:
	cmp	rbp, r14
	jb	.label_234
	dec	rbx
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x80]
	mov	rcx, -1
	mov	rdi, r13
	call	__mempcpy_chk
	mov	r13, rax
.label_234:
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
	je	.label_172
	inc	rbp
	or	cl, al
	jne	.label_175
.label_172:
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r15, qword ptr [rsp + 0x20]
	mov	r14, qword ptr [rsp + 0x10]
.label_217:
	mov	byte ptr [r13], 0
.label_220:
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
.label_187:
	cmp	dword ptr [r12], 1
	jne	.label_229
	mov	rdi, qword ptr [rbx]
	call	free
	jmp	.label_191
.label_229:
	mov	rdi, r12
	add	rdi, 8
	call	__gmpz_clear
.label_191:
	mov	rdi, r12
	call	free
	mov	rdi, r15
	add	rdi, 8
	cmp	dword ptr [r15], 1
	jne	.label_195
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_199
.label_195:
	call	__gmpz_clear
.label_199:
	mov	rdi, r15
	call	free
	mov	rdi, rbp
	add	rdi, 8
	cmp	dword ptr [rbp], 1
	jne	.label_201
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_160
.label_201:
	call	__gmpz_clear
.label_160:
	mov	rdi, rbp
	call	free
.label_161:
	mov	rax, r13
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_196:
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 8], rax
	jmp	.label_182
.label_177:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
.label_173:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax,  qword ptr [word ptr [rip + args]]
	mov	rdx, qword ptr [rax - 8]
.label_176:
	xor	edi, edi
	mov	esi, 8
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_189:
	call	abort
.label_168:
	call	abort
.label_232:
	call	abort
.label_198:
	call	abort
.label_165:
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
.label_163:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.69
	jmp	.label_173
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fc0

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
	je	.label_245
	test	eax, eax
	jne	.label_249
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
.label_245:
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_235
	cmp	eax, 1
	jne	.label_237
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_240
.label_235:
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
.label_240:
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
	jne	.label_241
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
	js	.label_248
	cmp	qword ptr [rsp + 0x150], 0
	je	.label_252
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
	jmp	.label_238
.label_248:
	cmp	r15, -1
	jne	.label_242
	mov	rbx, qword ptr [rsp + 0x150]
	mov	edi, 0x18
	call	xmalloc
	mov	r14, rax
	cmp	rbx, 0
	je	.label_246
	mov	dword ptr [r14], 1
	mov	edi, OFFSET FLAT:.str_0
.label_238:
	call	xstrdup
	mov	qword ptr [r14 + 8], rax
	jmp	.label_250
.label_252:
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	mov	rbx, r15
	je	.label_236
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
	jne	.label_243
	test	al, al
	jne	.label_236
.label_243:
	xor	ebx, ebx
	lea	r14, [rsp + 0x168]
	nop	word ptr cs:[rax + rax]
.label_239:
	mov	rax, qword ptr [rsp + 0x178]
	mov	rcx, rax
	sub	rcx, r12
	cmp	rcx, r15
	adc	rbx, 0
	cmp	rcx, r15
	jae	.label_236
	add	rax, qword ptr [rsp + 0x180]
	mov	qword ptr [rsp + 0x178], rax
	mov	byte ptr [rsp + 0x174], 0
	mov	rdi, r14
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x188]
	mov	rcx, rax
	shr	rcx, 0x20
	jne	.label_239
	test	al, al
	je	.label_239
.label_236:
	mov	edi, 0x18
	call	xmalloc
	mov	r14, rax
	mov	dword ptr [r14], 0
	lea	rdi, [r14 + 8]
	mov	rsi, rbx
	jmp	.label_244
.label_246:
	mov	dword ptr [r14], 0
	mov	rdi, r14
	add	rdi, 8
	xor	esi, esi
.label_244:
	call	__gmpz_init_set_ui
.label_250:
	cmp	qword ptr [rsp], 0
	je	.label_251
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_251:
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
.label_249:
	call	abort
.label_237:
	call	abort
.label_241:
	mov	edi, 2
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	call	error
.label_242:
	mov	ebx, 0x4b
	cmp	r15, -2
	jne	.label_247
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_247:
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
	#Procedure 0x404300
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404310
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404320

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_254
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_253
	cmp	dword ptr [rbp], 0x20
	jne	.label_253
.label_254:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_256
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_253:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_255
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_256:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_255:
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
	#Procedure 0x4043e0

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
	je	.label_257
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_257:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  0
	cmp	edi, 2
	jne	.label_258
	mov	edi, 2
	mov	edx, OFFSET FLAT:.str_1
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, 0x68
	je	.label_259
	cmp	eax, 0x76
	jne	.label_258
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
.label_259:
	xor	edi, edi
	call	rbx
.label_258:
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
	#Procedure 0x4044e0
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
	je	.label_260
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_260:
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
	je	.label_263
	mov	rcx, qword ptr [rsp + 0xf0]
	cmp	eax, 0x68
	je	.label_264
	cmp	eax, 0x76
	je	.label_262
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	jmp	.label_261
.label_264:
	xor	edi, edi
.label_261:
	call	rcx
.label_263:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	add	rsp, 0xc8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_262:
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
	#Procedure 0x4045f0

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
	jb	.label_267
	cmp	rax, 2
	jb	.label_267
	mov	qword ptr [rsp + 0x10], rbx
	mov	byte ptr [rsp], 0
	mov	qword ptr [rsp + 4], 0
	mov	byte ptr [rsp + 0xc], 0
	lea	rdi, [rsp]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x20]
	xor	r14d, r14d
	test	al, al
	je	.label_270
	shr	rax, 0x20
	je	.label_268
.label_270:
	movzx	ebx, bpl
	lea	rbp, [rsp]
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_269:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	rcx, 1
	jne	.label_265
	movzx	edx, byte ptr [rax]
	cmp	edx, ebx
	je	.label_266
.label_265:
	add	rax, rcx
	mov	qword ptr [rsp + 0x10], rax
	mov	byte ptr [rsp + 0xc], 0
	mov	rdi, rbp
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x20]
	test	al, al
	je	.label_269
	shr	rax, 0x20
	jne	.label_269
	jmp	.label_268
.label_267:
	mov	rdi, rbx
	mov	esi, ebp
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strchr
.label_266:
	mov	r14, rax
.label_268:
	mov	rax, r14
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4046c0

	.globl mbslen
	.type mbslen, @function
mbslen:
	push	r14
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rdi
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_274
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	lea	rdi, [rsp + 8]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	xor	ebx, ebx
	test	al, al
	je	.label_273
	shr	rax, 0x20
	je	.label_271
.label_273:
	xor	ebx, ebx
	lea	r14, [rsp + 8]
	nop	
.label_272:
	inc	rbx
	mov	rax, qword ptr [rsp + 0x20]
	add	qword ptr [rsp + 0x18], rax
	mov	byte ptr [rsp + 0x14], 0
	mov	rdi, r14
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	test	al, al
	je	.label_272
	shr	rax, 0x20
	jne	.label_272
.label_271:
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r14
	ret	
.label_274:
	mov	rdi, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r14
	jmp	strlen
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404760

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
	jne	.label_277
	cmp	byte ptr [rbx], 0
	mov	r15, qword ptr [rbx + 0x10]
	je	.label_285
	lea	r14, [rbx + 4]
	jmp	.label_284
.label_285:
	movzx	eax, byte ptr [r15]
	mov	rcx, rax
	shr	rcx, 5
	mov	ecx,  dword ptr [dword ptr [+ (rcx * 4) + is_basic_table]]
	bt	ecx, eax
	jae	.label_275
	mov	qword ptr [rbx + 0x18], 1
	movsx	eax, byte ptr [r15]
	mov	dword ptr [rbx + 0x24], eax
	mov	byte ptr [rbx + 0x20], 1
	jmp	.label_276
.label_275:
	lea	r14, [rbx + 4]
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_283
	mov	byte ptr [rbx], 1
.label_284:
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
	je	.label_279
	test	rax, rax
	je	.label_282
	cmp	rax, -1
	jne	.label_280
	mov	qword ptr [rbx + 0x18], 1
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_276
.label_279:
	mov	rdi, qword ptr [rbx + 0x10]
	call	strlen
	mov	qword ptr [rbx + 0x18], rax
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_276
.label_282:
	mov	qword ptr [rbx + 0x18], 1
	mov	rax, qword ptr [rbx + 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_278
	cmp	dword ptr [r12], 0
	jne	.label_281
.label_280:
	mov	byte ptr [rbx + 0x20], 1
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_276
	mov	byte ptr [rbx], 0
.label_276:
	mov	byte ptr [rbx + 0xc], 1
.label_277:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_278:
	mov	edi, OFFSET FLAT:.str.2_0
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 0xb2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
.label_281:
	mov	edi, OFFSET FLAT:.str.3_0
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 0xb3
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
.label_283:
	mov	edi, OFFSET FLAT:.str_4
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 0x96
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048b0
	.globl mbuiter_multi_reloc
	.type mbuiter_multi_reloc, @function
mbuiter_multi_reloc:

	add	qword ptr [rdi + 0x10], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048c0
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
	je	.label_286
	mov	rax, qword ptr [rbx + 4]
	mov	qword ptr [r14 + 4], rax
	jmp	.label_287
.label_286:
	mov	qword ptr [r14 + 4], 0
.label_287:
	mov	al, byte ptr [rbx + 0xc]
	mov	byte ptr [r14 + 0xc], al
	mov	rsi, qword ptr [rbx + 0x10]
	lea	rax, [rbx + 0x28]
	cmp	rsi, rax
	jne	.label_288
	lea	r15, [r14 + 0x28]
	mov	rdx, qword ptr [rbx + 0x18]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_288:
	mov	qword ptr [r14 + 0x10], rsi
	mov	rax, qword ptr [rbx + 0x18]
	mov	qword ptr [r14 + 0x18], rax
	mov	rax, qword ptr [rbx + 0x20]
	test	al, al
	mov	byte ptr [r14 + 0x20], al
	je	.label_289
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x24], eax
.label_289:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404940

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_290
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_291
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_291
	mov	esi, OFFSET FLAT:.str.2_1
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_292
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_292:
	mov	rbx, r14
.label_291:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_290:
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
	#Procedure 0x4049f0
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
	#Procedure 0x404a30
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
	#Procedure 0x404a40
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
	#Procedure 0x404a50
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
	#Procedure 0x404a90
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
	#Procedure 0x404ab0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_293
	test	rdx, rdx
	je	.label_293
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_293:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ae0
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
	#Procedure 0x404b60

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xf8
	mov	ebx, r9d
	mov	dword ptr [rsp + 0x54], ebx
	mov	r12d, r8d
	mov	r15, rcx
	mov	qword ptr [rsp + 0x98], rdx
	mov	r13, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rax, qword ptr [rsp + 0x140]
	mov	qword ptr [rsp + 0x78], rax
	mov	rax, qword ptr [rsp + 0x138]
	mov	qword ptr [rsp + 0x80], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0x48], rax
	mov	dl, bl
	shr	dl, 1
	and	dl, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x44], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x40], ebx
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x88], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xc8], rax
	mov	eax, 0
	xor	edi, edi
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
.label_419:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r12d
	cmp	r12d, 0xa
	ja	.label_298
	mov	r9d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10, r15
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_302]]
.label_2636:
	mov	r15d, edi
	mov	edi, OFFSET FLAT:.str.11_0
	mov	esi, r12d
	mov	r14, r10
	mov	r13b, r8b
	mov	bl, dl
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r12d
	call	gettext_quote
	mov	dl, bl
	mov	edi, r15d
	mov	r8b, r13b
	mov	r10, r14
	mov	qword ptr [rsp + 0x78], rax
.label_2637:
	mov	qword ptr [rsp + 0x60], r10
	mov	byte ptr [rsp + 0x50], r8b
	mov	dword ptr [rsp + 0xb8], edi
	test	dl, 1
	mov	r15b, dl
	mov	r14d, 0
	mov	rdx, qword ptr [rsp + 0x80]
	jne	.label_328
	mov	al, byte ptr [rdx]
	test	al, al
	mov	r14d, 0
	je	.label_328
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_348:
	cmp	r14, rbp
	jae	.label_345
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + r14], al
.label_345:
	mov	al, byte ptr [rdx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_348
.label_328:
	mov	rbx, qword ptr [rsp + 0x78]
	mov	rdi, rbx
	call	strlen
	mov	qword ptr [rsp + 0xc8], rax
	mov	r9d, r12d
	mov	qword ptr [rsp + 0xa8], rbx
	mov	r13b, 1
	mov	sil, r15b
	mov	r10, qword ptr [rsp + 0x60]
	mov	r8b, byte ptr [rsp + 0x50]
	mov	edi, dword ptr [rsp + 0xb8]
	mov	r11, qword ptr [rsp + 0x98]
	jmp	.label_358
.label_2629:
	xor	r9d, r9d
	xor	r14d, r14d
	mov	r13b, al
	xor	esi, esi
	jmp	.label_358
.label_2632:
	mov	al, 1
.label_2630:
	mov	dl, 1
.label_2633:
	test	dl, 1
	mov	cl, 1
	je	.label_376
	mov	cl, al
.label_376:
	mov	al, cl
.label_2631:
	mov	r9d, 2
	test	dl, 1
	jne	.label_380
	test	rbp, rbp
	je	.label_384
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	r14d, 1
	jmp	.label_385
.label_380:
	xor	r14d, r14d
	jmp	.label_385
.label_2634:
	mov	r9d, 5
	test	dl, 1
	jne	.label_389
	test	rbp, rbp
	je	.label_319
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	r14d, 1
	jmp	.label_393
.label_2635:
	mov	r13b, 1
	mov	r9d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_358
.label_384:
	mov	r14d, 1
	nop	dword ptr [rax]
.label_385:
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xa8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	r13b, al
	mov	sil, dl
	jmp	.label_358
.label_389:
	xor	r14d, r14d
	jmp	.label_393
.label_319:
	mov	r14d, 1
.label_393:
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	r13b, 1
	mov	sil, dl
	nop	dword ptr [rax]
.label_358:
	mov	qword ptr [rsp + 0x68], rsi
	mov	byte ptr [rsp + 0x77], r13b
	cmp	qword ptr [rsp + 0x130], 0
	setne	r12b
	cmp	r9d, 2
	setne	r15b
	sete	al
	mov	cl, r13b
	and	cl, 1
	mov	byte ptr [rsp + 0x97], cl
	sete	byte ptr [rsp + 0x53]
	mov	bl, r15b
	and	bl, cl
	mov	byte ptr [rsp + 0xd6], bl
	cmp	qword ptr [rsp + 0xc8], 0
	setne	cl
	mov	dl, cl
	and	dl, bl
	mov	byte ptr [rsp + 0xd7], dl
	mov	bl, sil
	and	bl, 1
	mov	byte ptr [rsp + 0xc7], bl
	sete	dl
	and	al, bl
	mov	byte ptr [rsp + 0x51], al
	and	r12b, bl
	mov	byte ptr [rsp + 0xb7], r12b
	or	dl, r15b
	mov	byte ptr [rsp + 0xa7], dl
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x52], r13b
	xor	r15d, r15d
	jmp	.label_294
	nop	word ptr cs:[rax + rax]
.label_346:
	inc	r15
.label_294:
	cmp	r10, -1
	je	.label_342
	cmp	r15, r10
	jne	.label_343
	jmp	.label_344
	nop	word ptr cs:[rax + rax]
.label_342:
	mov	rcx, -1
	cmp	byte ptr [r11 + r15], 0
	je	.label_333
.label_343:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_354
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [r15 + rax]
	mov	qword ptr [rsp + 0xd8], r15
	cmp	rax, 2
	jb	.label_359
	cmp	r10, -1
	jne	.label_359
	mov	dword ptr [rsp + 0xb8], edi
	mov	rdi, r11
	mov	r12b, r8b
	mov	r13, r9
	mov	r15, r14
	mov	r14, r11
	call	strlen
	mov	r11, r14
	mov	r14, r15
	mov	edi, dword ptr [rsp + 0xb8]
	mov	r9, r13
	mov	r8b, r12b
	mov	r10, rax
.label_359:
	cmp	rbx, r10
	jbe	.label_378
	mov	dword ptr [rsp + 0xe8], 0
	mov	r15, qword ptr [rsp + 0xd8]
	jmp	.label_381
	nop	word ptr [rax + rax]
.label_354:
	mov	dword ptr [rsp + 0xe8], 0
	jmp	.label_381
.label_378:
	mov	qword ptr [rsp + 0xb8], r14
	mov	r15d, edi
	mov	r13, r9
	mov	r12b, r8b
	mov	rbx, r10
	mov	rax, qword ptr [rsp + 0xd8]
	lea	rdi, [r11 + rax]
	mov	r14, r11
	mov	rsi, qword ptr [rsp + 0xa8]
	mov	rdx, qword ptr [rsp + 0xc8]
	call	memcmp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xe8], eax
	jne	.label_403
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r12b
	mov	r9, r13
	mov	edi, r15d
	mov	r11, r14
	mov	r14, qword ptr [rsp + 0xb8]
	mov	r15, qword ptr [rsp + 0xd8]
	je	.label_381
	jmp	.label_306
.label_403:
	mov	r10, rbx
	mov	r8b, r12b
	mov	r9, r13
	mov	edi, r15d
	mov	r11, r14
	mov	r14, qword ptr [rsp + 0xb8]
	mov	r15, qword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_381:
	movzx	r12d, byte ptr [r11 + r15]
	cmp	r12, 0x7e
	ja	.label_295
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_299]]
.label_2666:
	test	r15, r15
	jne	.label_296
	jmp	.label_309
.label_2670:
	xor	eax, eax
	cmp	r10, -1
	je	.label_310
	test	r15, r15
	jne	.label_394
	cmp	r10, 1
	je	.label_309
	xor	r13d, r13d
	jmp	.label_341
.label_2659:
	cmp	byte ptr [rsp + 0x97], 0
	je	.label_321
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_306
	cmp	r9d, 2
	jne	.label_327
	mov	al, dil
	and	al, 1
	jne	.label_327
	cmp	r14, rbp
	jae	.label_332
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + r14], 0x27
.label_332:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_336
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_336:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_303
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_303:
	add	r14, 3
	mov	dil, 1
.label_327:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_349
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_349:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r12b, 0x30
	cmp	r9d, 2
	je	.label_356
	lea	rdx, [r15 + 1]
	cmp	rdx, r10
	jae	.label_361
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_362
	cmp	r14, rbp
	jae	.label_313
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + r14], 0x30
.label_313:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_416
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_416:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_341
.label_2660:
	mov	bl, 0x62
	jmp	.label_388
.label_2661:
	mov	cl, 0x74
	jmp	.label_350
.label_2662:
	mov	bl, 0x76
	jmp	.label_388
.label_2663:
	mov	bl, 0x66
	jmp	.label_388
.label_2664:
	mov	cl, 0x72
	jmp	.label_350
.label_2667:
	mov	al, 1
	mov	qword ptr [rsp + 0x58], rax
	cmp	r9d, 2
	jne	.label_391
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_395
	test	rbp, rbp
	sete	al
	mov	rcx, qword ptr [rsp + 0x88]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, rbp
	mov	qword ptr [rsp + 0x88], rdx
	mov	eax, 0
	cmove	rbp, rax
	cmp	r14, rbp
	jae	.label_397
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + r14], 0x27
.label_397:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_412
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_412:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_414
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_414:
	add	r14, 3
	xor	edi, edi
.label_391:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_341
.label_2668:
	cmp	r9d, 5
	je	.label_413
	cmp	r9d, 2
	jne	.label_296
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_296
	jmp	.label_411
.label_2669:
	cmp	r9d, 2
	jne	.label_304
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_307
	jmp	.label_386
.label_295:
	mov	dword ptr [rsp + 0xb8], edi
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x50], r8b
	mov	qword ptr [rsp + 0x38], rbp
	cmp	qword ptr [rsp + 0x48], 1
	jne	.label_312
	mov	rbx, r10
	mov	rbp, r11
	call	__ctype_b_loc
	mov	r11, rbp
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r12*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	edx, 1
	jmp	.label_360
.label_310:
	test	r15, r15
	jne	.label_334
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_334
.label_309:
	mov	dl, 1
.label_2665:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_340
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_341
.label_321:
	cmp	dword ptr [rsp + 0x44], 0
	jne	.label_346
	jmp	.label_296
.label_304:
	cmp	byte ptr [rsp + 0x52], 0
	mov	cl, r12b
	je	.label_350
.label_307:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_301
.label_350:
	cmp	byte ptr [rsp + 0xa7], 0
	mov	bl, cl
	je	.label_357
.label_388:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x97], 0
	mov	r13d, 0
	je	.label_341
	jmp	.label_352
.label_312:
	mov	qword ptr [rsp + 0xf0], 0
	cmp	r10, -1
	lea	rbp, [rsp + 0xf0]
	jne	.label_365
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	r11, rbx
	mov	r10, rax
.label_365:
	mov	qword ptr [rsp + 0x60], r10
	mov	r13b, 1
	cmp	byte ptr [rsp + 0x51], 0
	mov	edx, 0
	je	.label_379
	lea	rax, [r11 + r15]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	edx, edx
.label_316:
	mov	qword ptr [rsp + 0xd8], rdx
	lea	rax, [rdx + r15]
	lea	rsi, [r11 + rax]
	mov	rdx, r10
	sub	rdx, rax
	lea	rdi, [rsp + 0xec]
	mov	rcx, rbp
	call	rpl_mbrtowc
	mov	rbx, rax
	cmp	rbx, -2
	je	.label_331
	cmp	rbx, -1
	movabs	rsi, 0x20000002b
	je	.label_329
	test	rbx, rbx
	mov	r10, qword ptr [rsp + 0x60]
	je	.label_407
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0x38]
	jb	.label_408
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax + rax]
.label_418:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_318
	bt	rsi, rdx
	jb	.label_326
.label_318:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_418
.label_408:
	mov	edi, dword ptr [rsp + 0xec]
	call	iswprint
	test	eax, eax
	jne	.label_422
	xor	r13d, r13d
.label_422:
	lea	rbp, [rsp + 0xf0]
	mov	rax, qword ptr [rsp + 0xd8]
	add	rax, rbx
	mov	rdi, rbp
	mov	rbx, rax
	call	mbsinit
	mov	rdx, rbx
	test	eax, eax
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10, qword ptr [rsp + 0x60]
	je	.label_316
	jmp	.label_335
	nop	dword ptr [rax]
.label_379:
	mov	qword ptr [rsp + 0xd8], rdx
	lea	rax, [rdx + r15]
	lea	rsi, [r11 + rax]
	mov	rdx, r10
	sub	rdx, rax
	lea	rdi, [rsp + 0xec]
	mov	rcx, rbp
	mov	rbx, rbp
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_325
	cmp	rbp, -1
	je	.label_329
	cmp	rbp, -2
	je	.label_331
	mov	edi, dword ptr [rsp + 0xec]
	call	iswprint
	test	eax, eax
	jne	.label_337
	xor	r13d, r13d
.label_337:
	mov	rax, qword ptr [rsp + 0xd8]
	add	rax, rbp
	mov	rbp, rbx
	mov	rdi, rbp
	mov	rbx, rax
	call	mbsinit
	mov	rdx, rbx
	test	eax, eax
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10, qword ptr [rsp + 0x60]
	je	.label_379
	jmp	.label_335
.label_334:
	mov	r10, -1
	xor	r13d, r13d
	jmp	.label_341
.label_413:
	cmp	dword ptr [rsp + 0x40], 0
	je	.label_296
	lea	rcx, [r15 + 2]
	cmp	rcx, r10
	jae	.label_296
	movzx	eax, byte ptr [r15 + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_296
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_367
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_371
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_368
	cmp	r14, rbp
	jae	.label_390
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + r14], 0x3f
.label_390:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_387
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_387:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_323
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_323:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_396
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_396:
	add	r14, 4
	xor	eax, eax
	mov	r15, rcx
	mov	r12b, dl
	xor	r13d, r13d
	jmp	.label_341
.label_296:
	xor	eax, eax
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_341:
	cmp	byte ptr [rsp + 0xd6], 0
	je	.label_305
	cmp	qword ptr [rsp + 0x130], 0
	jne	.label_409
	jmp	.label_370
	nop	word ptr [rax + rax]
.label_305:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_370
.label_409:
	mov	cl, r12b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r12b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xe8]
	test	cl, cl
	jne	.label_417
	mov	rcx, qword ptr [rsp + 0x130]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_421
	nop	word ptr cs:[rax + rax]
.label_370:
	mov	ecx, dword ptr [rsp + 0xe8]
	test	cl, cl
.label_421:
	mov	bl, r12b
	je	.label_301
	jmp	.label_352
.label_417:
	mov	bl, r12b
.label_352:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_306
	cmp	r9d, 2
	jne	.label_311
	mov	al, dil
	and	al, 1
	jne	.label_311
	cmp	r14, rbp
	jae	.label_314
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + r14], 0x27
.label_314:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_320
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_320:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_366
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_366:
	add	r14, 3
	mov	dil, 1
.label_311:
	cmp	r14, rbp
	jae	.label_373
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + r14], 0x5c
.label_373:
	inc	r14
	jmp	.label_338
.label_394:
	xor	r13d, r13d
	jmp	.label_341
.label_356:
	xor	r13d, r13d
	jmp	.label_341
.label_361:
	xor	r13d, r13d
	jmp	.label_341
.label_362:
	xor	r13d, r13d
	jmp	.label_341
.label_329:
	xor	r13d, r13d
.label_325:
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10, qword ptr [rsp + 0x60]
	mov	rdx, qword ptr [rsp + 0xd8]
	jmp	.label_335
.label_331:
	mov	rdx, qword ptr [rsp + 0xd8]
	lea	rax, [rdx + r15]
	mov	r10, qword ptr [rsp + 0x60]
	cmp	rax, r10
	mov	r11, qword ptr [rsp + 0x98]
	jae	.label_308
	lea	rax, [r11 + r15]
.label_324:
	cmp	byte ptr [rax + rdx], 0
	je	.label_363
	lea	rcx, [r15 + rdx + 1]
	inc	rdx
	cmp	rcx, r10
	jb	.label_324
	xor	r13d, r13d
	jmp	.label_335
.label_308:
	xor	r13d, r13d
	jmp	.label_335
.label_363:
	xor	r13d, r13d
	jmp	.label_335
.label_407:
	mov	r11, qword ptr [rsp + 0x98]
	mov	rdx, qword ptr [rsp + 0xd8]
.label_335:
	mov	rbx, r10
.label_360:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x53]
	cmp	rdx, 1
	mov	rbp, qword ptr [rsp + 0x38]
	mov	r8b, byte ptr [rsp + 0x50]
	mov	r9, qword ptr [rsp + 0x30]
	mov	edi, dword ptr [rsp + 0xb8]
	ja	.label_374
	test	cl, cl
	je	.label_374
	xor	eax, eax
	mov	r10, rbx
	jmp	.label_341
.label_374:
	add	rdx, r15
	mov	qword ptr [rsp + 0xd8], rdx
	xor	eax, eax
	jmp	.label_392
	nop	word ptr cs:[rax + rax]
.label_355:
	inc	r14
	mov	r12b, byte ptr [r11 + r15 + 1]
	mov	r15, rdx
.label_392:
	test	cl, cl
	je	.label_400
	mov	edx, dword ptr [rsp + 0xe8]
	test	dl, 1
	je	.label_401
	cmp	r14, rbp
	jae	.label_405
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + r14], 0x5c
.label_405:
	inc	r14
	mov	dword ptr [rsp + 0xe8], 0
.label_401:
	mov	r10, rbx
	jmp	.label_410
	nop	word ptr cs:[rax + rax]
.label_400:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_375
	cmp	r9d, 2
	mov	r10, rbx
	jne	.label_382
	mov	al, dil
	and	al, 1
	jne	.label_382
	cmp	r14, rbp
	jae	.label_402
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + r14], 0x27
.label_402:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_351
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_351:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_300
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_300:
	add	r14, 3
	mov	dil, 1
.label_382:
	cmp	r14, rbp
	jae	.label_377
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + r14], 0x5c
.label_377:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_315
	mov	dl, r12b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_315:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_322
	mov	dl, r12b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_322:
	add	r14, 3
	and	r12b, 7
	or	r12b, 0x30
	mov	al, 1
.label_410:
	lea	rdx, [r15 + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_301
	test	dil, 1
	je	.label_339
	mov	bl, al
	and	bl, 1
	jne	.label_339
	cmp	r14, rbp
	jae	.label_420
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + r14], 0x27
.label_420:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_347
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
.label_347:
	add	r14, 2
	xor	edi, edi
.label_339:
	mov	rbx, r10
	cmp	r14, rbp
	jae	.label_355
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + r14], r12b
	jmp	.label_355
	nop	word ptr cs:[rax + rax]
.label_301:
	test	dil, 1
	je	.label_353
	and	al, 1
	jne	.label_353
	cmp	r14, rbp
	jae	.label_369
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + r14], 0x27
.label_369:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_372
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_372:
	add	r14, 2
	xor	edi, edi
.label_353:
	mov	bl, r12b
.label_338:
	cmp	r14, rbp
	jae	.label_383
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + r14], bl
.label_383:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_346
.label_367:
	xor	r13d, r13d
	jmp	.label_341
.label_371:
	xor	r13d, r13d
	jmp	.label_341
	nop	word ptr cs:[rax + rax]
.label_344:
	mov	rcx, r15
.label_333:
	cmp	r9d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_398
	or	al, dl
	je	.label_404
.label_398:
	mov	qword ptr [rsp + 0x98], r11
	cmp	r9d, 2
	setne	al
	cmp	byte ptr [rsp + 0xc7], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0x58]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x77]
	mov	rsi, qword ptr [rsp + 0x68]
	je	.label_406
	or	al, dl
	jne	.label_406
	test	r8b, 1
	jne	.label_415
	cmp	qword ptr [rsp + 0x88], 0
	je	.label_406
	test	rbp, rbp
	mov	r12d, r9d
	mov	al, bl
	mov	r15, rcx
	mov	dl, sil
	mov	r13, qword ptr [rsp + 0x88]
	je	.label_419
.label_406:
	mov	rdx, qword ptr [rsp + 0xa8]
	test	rdx, rdx
	je	.label_297
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_297
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_297
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_399:
	cmp	r14, rbp
	jae	.label_330
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + r14], al
.label_330:
	inc	r14
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_399
.label_297:
	cmp	r14, rbp
	jae	.label_317
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + r14], 0
	jmp	.label_317
.label_340:
	mov	r9d, 2
	jmp	.label_306
.label_326:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0x98]
	jmp	.label_306
.label_375:
	mov	r10, rbx
	jmp	.label_306
.label_404:
	mov	r10, rcx
	jmp	.label_306
.label_357:
	mov	r9d, 2
.label_306:
	cmp	byte ptr [rsp + 0x97], 0
	mov	r8d, 4
	cmove	r8d, r9d
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x54]
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x78]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x80]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, rbp
	mov	rdx, r11
	mov	rcx, r10
.label_364:
	call	quotearg_buffer_restyled
	mov	r14, rax
.label_317:
	mov	rax, r14
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_415:
	mov	rax, qword ptr [rsp + 0x78]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x80]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x130]
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0x88]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	r9d, dword ptr [rsp + 0x54]
	jmp	.label_364
.label_395:
	mov	r9d, 2
	jmp	.label_306
.label_386:
	mov	r9d, 2
	jmp	.label_306
.label_411:
	mov	r9d, 2
	jmp	.label_306
.label_368:
	mov	r9d, 5
	jmp	.label_306
.label_298:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405b80
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
	#Procedure 0x405c50
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
	je	.label_423
	mov	qword ptr [rax], rbx
.label_423:
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
	#Procedure 0x405d50
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_424
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_427:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_427
.label_424:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_426
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_428]], OFFSET FLAT:slot0
.label_426:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_425
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_425:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405df0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x405e00

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
	js	.label_429
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_432
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_435
.label_432:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_431
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
	jne	.label_430
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_430:
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
.label_435:
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
	ja	.label_433
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_434
	mov	rdi, rbx
	call	free
.label_434:
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
.label_433:
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
.label_429:
	call	abort
.label_431:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405fd0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405fe0
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
	#Procedure 0x406000
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
	#Procedure 0x406020

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
	je	.label_436
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
.label_436:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x406090
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
	je	.label_437
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
.label_437:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406100
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
	je	.label_438
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
.label_438:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406170
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
	je	.label_439
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
.label_439:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4061e0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_440]]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_441]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_442]]
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
	#Procedure 0x406250
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx,  qword ptr [word ptr [rip + label_440]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_441]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_442]]
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
	#Procedure 0x4062c0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_440]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_441]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_442]]
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
	#Procedure 0x406320
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_440]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_441]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_442]]
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
	#Procedure 0x406380
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
	je	.label_443
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
.label_443:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x406430
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_440]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_441]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_442]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_444
	test	rdx, rdx
	je	.label_444
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_444:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x4064a0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_440]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_441]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_442]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_445
	test	rdx, rdx
	je	.label_445
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_445:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406510
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_440]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_441]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_442]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_446
	test	rsi, rsi
	je	.label_446
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_446:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406580
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_440]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_441]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_442]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_447
	test	rsi, rsi
	je	.label_447
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
.label_447:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4065f0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406600
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
	#Procedure 0x406620
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406640
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
	#Procedure 0x406660

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
	jne	.label_448
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_450
	cmp	ecx, 0x55
	jne	.label_449
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_449
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_449
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_449
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_449
	cmp	byte ptr [rax + 5], 0
	jne	.label_449
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_448
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_448
.label_450:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_449
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_449
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_449
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_449
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_449
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_449
	cmp	byte ptr [rax + 7], 0
	je	.label_451
.label_449:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_448:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_451:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_448
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_448
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406750

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
	#Procedure 0x406790

	.globl strintcmp
	.type strintcmp, @function
strintcmp:
	mov	rbp, rbp
	movzx	ecx, byte ptr [rdi]
	mov	dl, byte ptr [rsi]
	cmp	ecx, 0x2d
	nop	
	jne	.label_455
	nop	word ptr cs:[rax + rax]
.label_458:
	nop	
	movzx	ecx, byte ptr [rdi + 1]
	mov	rbp, rbp
	inc	rdi
	cmp	ecx, 0x30
	je	.label_458
	movzx	r8d, dl
	cmp	r8d, 0x2d
	jne	.label_452
	nop	
.label_477:
	movzx	eax, byte ptr [rsi + 1]
	lea	rsi, [rsi]
	inc	rsi
	cmp	eax, 0x30
	lea	rdi, [rdi]
	je	.label_477
	nop	
	lea	edx, [rcx - 0x30]
	lea	rsi, [rsi]
	cmp	edx, 9
	ja	.label_478
	movzx	r8d, cl
	movzx	edx, al
	mov	rbp, rbp
	cmp	edx, r8d
	lea	rsi, [rsi]
	jne	.label_463
	nop	dword ptr [rax + rax]
.label_480:
	mov	r9b, byte ptr [rdi + 1]
	inc	rdi
	mov	rbp, rbp
	movzx	eax, byte ptr [rsi + 1]
	inc	rsi
	mov	rsp, rsp
	movzx	ecx, r9b
	cmp	eax, ecx
	jne	.label_459
	lea	edx, [rcx - 0x30]
	mov	rbp, rbp
	cmp	edx, 0xa
	jb	.label_480
	jmp	.label_459
.label_455:
	movzx	r8d, dl
	cmp	r8d, 0x2d
	lea	rsi, [rsi]
	jne	.label_470
	nop	
	inc	rsi
	nop	word ptr cs:[rax + rax]
.label_476:
	movzx	edx, byte ptr [rsi]
	mov	rsp, rsp
	inc	rsi
	cmp	edx, 0x30
	mov	rsp, rsp
	je	.label_476
	add	edx, -0x30
	nop	
	mov	eax, 1
	cmp	edx, 0xa
	lea	rdi, [rdi]
	jb	.label_460
	movzx	eax, cl
	nop	
	cmp	eax, 0x30
	mov	rsp, rsp
	jne	.label_453
	nop	
	inc	rdi
	nop	word ptr cs:[rax + rax]
.label_457:
	mov	rbp, rbp
	movzx	ecx, byte ptr [rdi]
	inc	rdi
	cmp	ecx, 0x30
	nop	
	je	.label_457
.label_453:
	movzx	eax, cl
	add	eax, -0x30
	cmp	eax, 0xa
	nop	
	sbb	eax, eax
	and	eax, 1
	ret	
.label_452:
	nop	
	add	ecx, -0x30
	mov	rbp, rbp
	mov	eax, 0xffffffff
	nop	
	cmp	ecx, 0xa
	mov	rsp, rsp
	jb	.label_460
	cmp	r8d, 0x30
	jne	.label_474
	lea	rsi, [rsi]
	inc	rsi
	nop	word ptr cs:[rax + rax]
.label_482:
	movzx	edx, byte ptr [rsi]
	lea	rdi, [rdi]
	inc	rsi
	lea	rdi, [rdi]
	cmp	edx, 0x30
	mov	rbp, rbp
	je	.label_482
.label_474:
	mov	rsp, rsp
	movzx	eax, dl
	lea	rdi, [rdi]
	add	eax, -0x30
	mov	rsp, rsp
	cmp	eax, 0xa
	sbb	eax, eax
	lea	rsi, [rsi]
	ret	
.label_470:
	movzx	eax, cl
	mov	rbp, rbp
	cmp	eax, 0x30
	mov	rbp, rbp
	jne	.label_456
	nop	word ptr [rax + rax]
.label_464:
	movzx	ecx, byte ptr [rdi + 1]
	mov	rsp, rsp
	inc	rdi
	cmp	ecx, 0x30
	nop	
	je	.label_464
.label_456:
	cmp	r8d, 0x30
	jne	.label_461
	nop	word ptr cs:[rax + rax]
.label_472:
	mov	rsp, rsp
	movzx	edx, byte ptr [rsi + 1]
	inc	rsi
	cmp	edx, 0x30
	je	.label_472
.label_461:
	lea	rsi, [rsi]
	movzx	r8d, cl
	lea	eax, [r8 - 0x30]
	lea	rsi, [rsi]
	cmp	eax, 9
	ja	.label_466
	lea	rsi, [rsi]
	movzx	r9d, dl
	movzx	eax, cl
	cmp	eax, r9d
	jne	.label_466
	nop	word ptr cs:[rax + rax]
.label_462:
	mov	cl, byte ptr [rdi + 1]
	inc	rdi
	movzx	edx, byte ptr [rsi + 1]
	mov	rsp, rsp
	inc	rsi
	movzx	r8d, cl
	cmp	r8d, edx
	mov	rbp, rbp
	jne	.label_466
	lea	eax, [r8 - 0x30]
	cmp	eax, 0xa
	lea	rdi, [rdi]
	jb	.label_462
.label_466:
	nop	
	movzx	eax, dl
	lea	rsi, [rsi]
	movzx	edx, cl
	lea	rsi, [rsi]
	add	edx, -0x30
	xor	ecx, ecx
	cmp	edx, 9
	ja	.label_468
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_471:
	movzx	edx, byte ptr [rdi + rcx + 1]
	lea	rdi, [rdi]
	inc	rcx
	lea	rdi, [rdi]
	add	edx, -0x30
	lea	rsi, [rsi]
	cmp	edx, 0xa
	mov	rbp, rbp
	jb	.label_471
.label_468:
	mov	rsp, rsp
	lea	edi, [rax - 0x30]
	xor	edx, edx
	mov	rbp, rbp
	cmp	edi, 9
	ja	.label_483
	xor	edx, edx
	nop	
.label_467:
	mov	rsp, rsp
	movzx	edi, byte ptr [rsi + rdx + 1]
	lea	rdi, [rdi]
	inc	rdx
	add	edi, -0x30
	mov	rsp, rsp
	cmp	edi, 0xa
	mov	rsp, rsp
	jb	.label_467
.label_483:
	cmp	rcx, rdx
	jne	.label_454
	mov	rsp, rsp
	sub	r8d, eax
	nop	
	xor	eax, eax
	test	rcx, rcx
	nop	
	jmp	.label_465
.label_454:
	mov	ecx, 0xffffffff
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rsp, rsp
	cmovb	eax, ecx
	lea	rdi, [rdi]
	ret	
.label_478:
	lea	rsi, [rsi]
	mov	r9b, cl
	nop	
	jmp	.label_459
.label_463:
	lea	rdi, [rdi]
	mov	r9b, cl
.label_459:
	movzx	r8d, al
	movzx	eax, r9b
	lea	rsi, [rsi]
	add	eax, -0x30
	nop	
	xor	edx, edx
	mov	rsp, rsp
	cmp	eax, 9
	mov	rbp, rbp
	ja	.label_481
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_469:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rdi + rdx + 1]
	inc	rdx
	add	eax, -0x30
	cmp	eax, 0xa
	lea	rsi, [rsi]
	jb	.label_469
.label_481:
	lea	rsi, [rsi]
	lea	edi, [r8 - 0x30]
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	edi, 9
	lea	rdi, [rdi]
	ja	.label_479
	xor	eax, eax
	nop	dword ptr [rax]
.label_475:
	lea	rdi, [rdi]
	movzx	edi, byte ptr [rsi + rax + 1]
	inc	rax
	mov	rsp, rsp
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_475
.label_479:
	mov	rbp, rbp
	cmp	rdx, rax
	lea	rsi, [rsi]
	jne	.label_473
	sub	r8d, ecx
	nop	
	xor	eax, eax
	mov	rbp, rbp
	test	rdx, rdx
.label_465:
	cmovne	eax, r8d
.label_460:
	ret	
.label_473:
	lea	rdi, [rdi]
	mov	ecx, 1
	mov	rsp, rsp
	mov	eax, 0xffffffff
	cmovb	eax, ecx
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406b10

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
	je	.label_487
	mov	edx, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_486
.label_487:
	mov	edx, OFFSET FLAT:.str.1_3
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_486:
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
	ja	.label_491
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_493]]
.label_2569:
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
.label_491:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	jmp	.label_490
.label_2570:
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
.label_2571:
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
.label_2572:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_484
.label_2573:
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
	jmp	.label_489
.label_2574:
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
	jmp	.label_485
.label_2575:
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
.label_485:
	mov	qword ptr [rsp + 0x10], rdi
.label_489:
	mov	qword ptr [rsp + 8], rsi
.label_484:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_492
.label_2577:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_490:
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
	jmp	.label_488
.label_2576:
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
.label_488:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_492:
	call	__fprintf_chk
.label_2568:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406e00
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_494:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_494
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406e30

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_497:
	cmp	r10d, 0x28
	ja	.label_495
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_496
	nop	word ptr cs:[rax + rax]
.label_495:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_496:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_498
	inc	r9
	cmp	r9, 0xa
	jb	.label_497
.label_498:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406e90
	.globl version_etc
	.type version_etc, @function
version_etc:

	sub	rsp, 0x128
	test	al, al
	je	.label_499
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_499:
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
.label_503:
	cmp	r8d, 0x28
	ja	.label_500
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_502
	nop	
.label_500:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_502:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_501
	inc	r9
	cmp	r9, 0xa
	jb	.label_503
.label_501:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f90
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
	#Procedure 0x407010
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_504
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_505
	test	rax, rax
	je	.label_504
.label_505:
	pop	rbx
	ret	
.label_504:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407050

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_506
	test	rax, rax
	je	.label_507
.label_506:
	pop	rbx
	ret	
.label_507:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407070
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_508
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_509
	test	rbx, rbx
	jne	.label_509
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_509:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_510
	test	rax, rax
	je	.label_508
.label_510:
	pop	rbx
	ret	
.label_508:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4070c0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_511
	test	rbx, rbx
	jne	.label_511
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_511:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_513
	test	rax, rax
	je	.label_512
.label_513:
	pop	rbx
	ret	
.label_512:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4070f0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_518
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_519
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_514
.label_518:
	test	rcx, rcx
	jne	.label_520
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_520:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_516
.label_514:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_515
	test	rbx, rbx
	jne	.label_515
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_515:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_517
	test	rax, rax
	je	.label_519
.label_517:
	pop	rbx
	ret	
.label_519:
	call	xalloc_die
.label_516:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407190
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_521
	test	rax, rax
	je	.label_522
.label_521:
	pop	rbx
	ret	
.label_522:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4071b0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_525
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_527
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_524
	call	free
	xor	eax, eax
	jmp	.label_526
.label_525:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_523
	mov	qword ptr [rsi], rbx
.label_524:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_526
	test	rax, rax
	je	.label_523
.label_526:
	pop	rbx
	ret	
.label_523:
	call	xalloc_die
.label_527:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407220
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
	je	.label_529
	test	r14, r14
	je	.label_528
.label_529:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_528:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407260
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_530
	call	rpl_calloc
	test	rax, rax
	je	.label_530
	pop	rcx
	ret	
.label_530:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407290

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
	je	.label_531
	test	r15, r15
	je	.label_532
.label_531:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_532:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4072d0

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
	je	.label_534
	test	r15, r15
	je	.label_533
.label_534:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_533:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407320

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
	#Procedure 0x407350

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_535
	test	rsi, rsi
	mov	ecx, 1
	je	.label_536
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_536
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_535:
	mov	ecx, 1
.label_536:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4073a0

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
	je	.label_537
	cmp	r15, -2
	jb	.label_537
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_537
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_537:
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
	#Procedure 0x407400

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
	je	.label_538
	cdqe	
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	xor	edi, edi
	mov	edx, 5
	pop	rax
	jmp	dcgettext
.label_538:
	xor	eax, eax
	pop	rcx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407460

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
	mov	r14, rdx
	mov	r13, rsi
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
	jbe	.label_558
.label_698:
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
	cmp	r14, rax
	ja	.label_563
	lea	rdi, [r14 + 1]
	mov	qword ptr [rsp + 0x20], rdi
	mov	qword ptr [r12 + 8], rdi
	shl	rdi, 4
	call	malloc
	mov	qword ptr [r12], rax
	mov	eax, 1
	nop	word ptr cs:[rax + rax]
.label_606:
	mov	rbx, rax
	lea	rax, [rbx + rbx]
	cmp	rbx, r14
	jbe	.label_606
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
	jne	.label_618
	mov	cl, byte ptr [rax + 1]
	or	cl, 0x20
	movzx	ecx, cl
	cmp	ecx, 0x74
	jne	.label_618
	mov	cl, byte ptr [rax + 2]
	or	cl, 0x20
	movzx	ecx, cl
	cmp	ecx, 0x66
	jne	.label_618
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	sete	cl
	movzx	ecx, cl
	movzx	edx, byte ptr [rax + rcx + 3]
	cmp	edx, 0x38
	jne	.label_618
	cmp	byte ptr [rax + rcx + 4], 0
	jne	.label_618
	or	byte ptr [r12 + 0xb0], 4
.label_618:
	mov	rax, qword ptr [r12 + 0xb0]
	mov	cl, al
	and	cl, 0xf7
	mov	byte ptr [r12 + 0xb0], cl
	mov	rcx, rax
	shr	rcx, 0x20
	cmp	ecx, 2
	jl	.label_628
	test	al, 4
	jne	.label_634
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [r12 + 0x78], rax
	xor	ebx, ebx
	test	rax, rax
	je	.label_563
	xor	ebp, ebp
	nop	
.label_567:
	mov	edi, ebx
	call	btowc
	cmp	eax, -1
	je	.label_643
	mov	edx, 1
	mov	cl, bl
	shl	rdx, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx], rdx
.label_643:
	cmp	ebx, 0x7f
	ja	.label_647
	cmp	ebx, eax
	je	.label_647
	or	byte ptr [r12 + 0xb0], 8
.label_647:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_567
	mov	qword ptr [rsp + 0x28], r15
	xor	ebx, ebx
.label_663:
	lea	r15, [rbp + 0x40]
	mov	edi, r15d
	call	btowc
	cmp	eax, -1
	je	.label_616
	mov	edx, 1
	mov	cl, bpl
	shl	rdx, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 8], rdx
.label_616:
	cmp	r15d, eax
	je	.label_659
	or	byte ptr [r12 + 0xb0], 8
.label_659:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_663
	xor	ebp, ebp
	mov	r15, qword ptr [rsp + 0x28]
	nop	word ptr cs:[rax + rax]
.label_658:
	lea	edi, [rbx + 0x80]
	call	btowc
	cmp	eax, -1
	je	.label_672
	mov	eax, 1
	mov	cl, bl
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x10], rax
.label_672:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_658
	nop	dword ptr [rax]
.label_683:
	lea	edi, [rbp + 0xc0]
	call	btowc
	cmp	eax, -1
	je	.label_679
	mov	eax, 1
	mov	cl, bpl
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x18], rax
.label_679:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_683
	jmp	.label_628
.label_634:
	mov	qword ptr [word ptr [r12 + 120]], OFFSET FLAT:utf8_sb_map
.label_628:
	cmp	qword ptr [r12], 0
	je	.label_563
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_563
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
	mov	qword ptr [rsp + 0x30], r13
	mov	qword ptr [rsp + 0x88], r14
	mov	qword ptr [rsp + 0x80], r14
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
	mov	qword ptr [rsp + 0x98], r14
	mov	qword ptr [rsp + 0x90], r14
	xor	eax, eax
	test	r14, r14
	jle	.label_695
	cmp	edx, 2
	jl	.label_566
	mov	qword ptr [rsp + 0x28], r15
	mov	r15d, 0xc
	mov	rax, qword ptr [rsp + 0x20]
	movabs	rcx, 0x1fffffffffffffff
	cmp	rax, rcx
	ja	.label_568
	lea	rsi, [rax*4]
	xor	edi, edi
	call	realloc
	test	rax, rax
	je	.label_568
	mov	qword ptr [rsp + 0x40], rax
	mov	r15, qword ptr [rsp + 0x28]
.label_566:
	xor	eax, eax
	test	bpl, bpl
	mov	edx, 0
	je	.label_578
	mov	qword ptr [rsp + 0x28], r15
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x20]
	call	realloc
	mov	r15d, 0xc
	test	rax, rax
	je	.label_568
	mov	qword ptr [rsp + 0x38], rax
	mov	dl, bpl
	mov	r15, qword ptr [rsp + 0x28]
.label_578:
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x70], rcx
	mov	ecx, dword ptr [r12 + 0xb4]
	mov	bpl, dl
	jmp	.label_693
.label_563:
	mov	dword ptr [rsp + 0xcc], 0xc
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
	mov	eax, 0xc
	jmp	.label_549
.label_695:
	shr	rcx, 0x20
	xor	edx, edx
	mov	qword ptr [rsp + 0x20], rdx
.label_693:
	test	bpl, bpl
	cmove	rax, r13
	mov	qword ptr [rsp + 0x38], rax
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_593
	cmp	ecx, 2
	jl	.label_596
	mov	qword ptr [rsp + 0x28], r15
	lea	rdi, [rsp + 0x30]
	call	build_wcs_upper_buffer
	mov	r15d, eax
	test	r15d, r15d
	jne	.label_568
	lea	r13, [rsp + 0x30]
.label_636:
	cmp	qword ptr [rsp + 0x68], r14
	jge	.label_605
	mov	rbp, qword ptr [rsp + 0x70]
	movsxd	rax, dword ptr [r12 + 0xb4]
	add	rax, qword ptr [rsp + 0x60]
	cmp	rbp, rax
	jg	.label_605
	lea	rbx, [rbp + rbp]
	cmp	dword ptr [rsp + 0xc0], 2
	jl	.label_613
	mov	r15d, 0xc
	movabs	rax, 0x1fffffffffffffff
	cmp	rbx, rax
	ja	.label_568
	mov	rdi, qword ptr [rsp + 0x40]
	lea	rsi, [rbp*8]
	call	realloc
	test	rax, rax
	je	.label_568
	mov	qword ptr [rsp + 0x40], rax
	mov	rdi, qword ptr [rsp + 0x48]
	test	rdi, rdi
	je	.label_613
	shl	rbp, 4
	mov	rsi, rbp
	call	realloc
	test	rax, rax
	je	.label_568
	mov	qword ptr [rsp + 0x48], rax
.label_613:
	cmp	byte ptr [rsp + 0xbb], 0
	je	.label_626
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, rbx
	call	realloc
	mov	r15d, 0xc
	test	rax, rax
	je	.label_568
	mov	qword ptr [rsp + 0x38], rax
.label_626:
	mov	qword ptr [rsp + 0x70], rbx
	mov	rdi, r13
	call	build_wcs_upper_buffer
	mov	r15d, eax
	test	r15d, r15d
	je	.label_636
.label_568:
	mov	dword ptr [rsp + 0xcc], r15d
	jmp	.label_552
.label_593:
	cmp	ecx, 2
	jl	.label_641
	mov	qword ptr [rsp + 0x28], r15
	lea	rdi, [rsp + 0x30]
	call	build_wcs_buffer
	jmp	.label_605
.label_596:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	rax, r14
	cmovg	rax, r14
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	jle	.label_646
	xor	eax, eax
	mov	ebp, 1
	jmp	.label_604
.label_661:
	mov	r13, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbx, qword ptr [rsp + 0xa8]
	inc	rbp
.label_604:
	add	r13, rax
	mov	al, byte ptr [rbp + r13 - 1]
	movzx	ecx, al
	test	rbx, rbx
	jne	.label_653
.label_666:
	movzx	ebx, al
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	ja	.label_657
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_657:
	mov	rax, qword ptr [rsp + 0x38]
	mov	byte ptr [rax + rbp - 1], bl
	cmp	rbp, r14
	jl	.label_661
	jmp	.label_665
.label_653:
	mov	al, byte ptr [rbx + rcx]
	jmp	.label_666
.label_641:
	test	rbx, rbx
	je	.label_668
	mov	rcx, qword ptr [rsp + 0x20]
	cmp	rcx, r14
	cmovg	rcx, r14
	mov	rdi, rcx
	xor	ecx, ecx
	test	rdi, rdi
	jle	.label_671
	movzx	ecx, byte ptr [r13]
	mov	cl, byte ptr [rbx + rcx]
	mov	byte ptr [rax], cl
	mov	ecx, 1
	cmp	rdi, 2
	jl	.label_671
	nop	dword ptr [rax]
.label_674:
	mov	rax, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x38]
	add	rax, qword ptr [rsp + 0x58]
	movzx	eax, byte ptr [rcx + rax]
	mov	rsi, qword ptr [rsp + 0xa8]
	mov	al, byte ptr [rsi + rax]
	mov	byte ptr [rdx + rcx], al
	inc	rcx
	cmp	rcx, rdi
	jl	.label_674
	mov	rcx, rdi
.label_671:
	mov	qword ptr [rsp + 0x28], r15
	mov	qword ptr [rsp + 0x60], rcx
	mov	qword ptr [rsp + 0x68], rcx
	jmp	.label_605
.label_558:
	mov	esi, 0xe8
	mov	rdi, r12
	call	realloc
	mov	r12, rax
	mov	eax, 0xc
	test	r12, r12
	je	.label_549
	mov	qword ptr [r15 + 8], 0xe8
	mov	qword ptr [r15], r12
	jmp	.label_698
.label_665:
	mov	rax, r14
.label_646:
	mov	qword ptr [rsp + 0x28], r15
	jmp	.label_700
.label_668:
	mov	qword ptr [rsp + 0x28], r15
	mov	rax, qword ptr [rsp + 0x20]
.label_700:
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x68], rax
.label_605:
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
	jne	.label_546
	mov	eax, dword ptr [rsp + 0xcc]
	test	eax, eax
	jne	.label_551
.label_546:
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	je	.label_554
	mov	rax, qword ptr [rbx + 0x70]
.label_678:
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
.label_677:
	test	r14, r14
	mov	rcx, rbp
	je	.label_684
	mov	ecx, dword ptr [rbx + 0x80]
	cmp	ecx, 0xf
	je	.label_570
	mov	rax, qword ptr [rbx + 0x70]
.label_702:
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
	je	.label_584
	mov	qword ptr [rbp], rcx
.label_684:
	test	rbp, rbp
	je	.label_584
	test	rcx, rcx
	je	.label_584
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
	je	.label_594
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_599
	test	rax, rax
	je	.label_602
	mov	rax, qword ptr [r15 + 0x28]
	test	rax, rax
	je	.label_586
	mov	rax, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rax + 0x30]
	lea	rdi, [rbx*8]
	call	malloc
	mov	qword ptr [r15 + 0xe0], rax
	test	rax, rax
	je	.label_611
	test	rbx, rbx
	je	.label_686
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	cmp	rcx, 1
	mov	edx, 1
	cmova	rdx, rcx
	xor	edi, edi
	cmp	rdx, 4
	jb	.label_542
	xor	edi, edi
	mov	rsi, rdx
	and	rsi, 0xfffffffffffffffc
	je	.label_542
	cmp	rcx, 1
	mov	ebp, 1
	cmova	rbp, rcx
	add	rbp, -4
	mov	rbx, rbp
	shr	rbx, 2
	xor	edi, edi
	bt	rbp, 2
	jb	.label_621
	mov	edi, 1
	movq	xmm0, rdi
	pslldq	xmm0, 8
	movdqu	xmmword ptr [rax], xmm0
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_625]]
	movdqu	xmmword ptr [rax + 0x10], xmm0
	mov	edi, 4
.label_621:
	test	rbx, rbx
	je	.label_633
	mov	ebp, 1
	movq	xmm0, rbp
	pslldq	xmm0, 8
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_625]]
.label_639:
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
	jne	.label_639
.label_633:
	cmp	rdx, rsi
	mov	rdi, rsi
	je	.label_686
	nop	dword ptr [rax + rax]
.label_542:
	mov	qword ptr [rax + rdi*8], rdi
	inc	rdi
	cmp	rdi, rcx
	jb	.label_542
.label_686:
	mov	rdx, qword ptr [r15 + 0x68]
	movzx	ecx, byte ptr [rdx + 0x30]
	cmp	ecx, 0x11
	je	.label_655
	cmp	ecx, 4
	jne	.label_579
	movsxd	rcx, dword ptr [rdx + 0x28]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	qword ptr [rdx + 0x28], rcx
	mov	esi, 1
	shl	esi, cl
	movsxd	rcx, esi
	or	qword ptr [r15 + 0xa0], rcx
	jmp	.label_579
.label_594:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_552
.label_599:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_552
.label_611:
	lea	r14, [r15 + 0x68]
	jmp	.label_600
.label_554:
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_677
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_678
.label_655:
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	je	.label_579
	movzx	esi, byte ptr [rcx + 0x30]
	cmp	esi, 0x11
	jne	.label_579
	mov	rsi, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	qword ptr [rdx + 8], rsi
	test	rsi, rsi
	je	.label_688
	mov	qword ptr [rsi], rdx
.label_688:
	mov	rsi, qword ptr [rdx + 0x28]
	mov	rsi, qword ptr [rax + rsi*8]
	mov	qword ptr [rax + rcx*8], rsi
	cmp	rcx, 0x3f
	jg	.label_579
	mov	rsi, -2
	rol	rsi, cl
	and	qword ptr [r15 + 0xa0], rsi
.label_579:
	lea	r14, [r15 + 0x68]
	jmp	.label_550
.label_570:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_584
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	xor	ecx, ecx
	jmp	.label_702
.label_584:
	mov	dword ptr [rsp + 0xcc], 0xc
.label_551:
	mov	qword ptr [r12 + 0x68], 0
	jmp	.label_707
.label_602:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_552
.label_586:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_552
.label_589:
	mov	rsi, -2
	rol	rsi, cl
	and	qword ptr [r15 + 0xa0], rsi
.label_550:
	mov	rsi, rax
.label_564:
	test	rsi, rsi
	jne	.label_543
.label_561:
	mov	rsi, rdx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	mov	ecx, 0
	jne	.label_545
	nop	word ptr cs:[rax + rax]
.label_556:
	mov	rdi, rcx
	mov	rcx, rsi
	mov	rdx, qword ptr [rcx + 0x10]
	cmp	rdx, rdi
	je	.label_697
	test	rdx, rdx
	jne	.label_545
.label_697:
	mov	rsi, qword ptr [rcx]
	test	rsi, rsi
	jne	.label_556
	jmp	.label_557
.label_545:
	movzx	ecx, byte ptr [rdx + 0x30]
	cmp	ecx, 0x11
	je	.label_559
	cmp	ecx, 4
	mov	esi, 0
	jne	.label_561
	jmp	.label_564
.label_559:
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	je	.label_561
	movzx	esi, byte ptr [rcx + 0x30]
	cmp	esi, 0x11
	jne	.label_561
	lea	rsi, [rdx + 8]
	lea	rdi, [rdx + 0x28]
	jmp	.label_569
.label_583:
	movsxd	rcx, dword ptr [rdi]
	mov	rcx, qword ptr [rsi + rcx*8]
	mov	qword ptr [rdi], rcx
	mov	edi, 1
	shl	edi, cl
	movsxd	rcx, edi
	or	qword ptr [r15 + 0xa0], rcx
.label_543:
	mov	rdi, rdx
	mov	rdx, qword ptr [rdi + 8]
	test	rdx, rdx
	mov	ecx, 0
	jne	.label_573
	nop	
.label_580:
	mov	rbp, rcx
	mov	rcx, rdi
	mov	rdx, qword ptr [rcx + 0x10]
	cmp	rdx, rbp
	je	.label_577
	test	rdx, rdx
	jne	.label_573
.label_577:
	mov	rdi, qword ptr [rcx]
	test	rdi, rdi
	jne	.label_580
	jmp	.label_557
.label_573:
	lea	rdi, [rdx + 0x28]
	movzx	ecx, byte ptr [rdx + 0x30]
	cmp	ecx, 0x11
	je	.label_581
	cmp	ecx, 4
	jne	.label_543
	jmp	.label_583
.label_581:
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	je	.label_543
	movzx	ebp, byte ptr [rcx + 0x30]
	cmp	ebp, 0x11
	jne	.label_543
	lea	rsi, [rdx + 8]
.label_569:
	mov	rbp, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	qword ptr [rsi], rbp
	test	rbp, rbp
	je	.label_587
	mov	qword ptr [rbp], rdx
.label_587:
	mov	rsi, qword ptr [rdi]
	mov	rsi, qword ptr [rax + rsi*8]
	mov	qword ptr [rax + rcx*8], rsi
	cmp	rcx, 0x3f
	mov	rsi, rax
	jg	.label_564
	jmp	.label_589
.label_557:
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	xor	edx, edx
	test	rcx, rcx
	je	.label_590
	mov	rax, qword ptr [r15 + 0xe0]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_598:
	cmp	rdx, qword ptr [rax + rdx*8]
	jne	.label_590
	inc	rdx
	cmp	rdx, rcx
	jb	.label_598
.label_590:
	cmp	rdx, rcx
	jne	.label_600
	mov	rdi, rax
	call	free
	mov	qword ptr [r15 + 0xe0], 0
.label_600:
	mov	rax, qword ptr [r14]
	lea	rbx, [rsp + 0xd0]
	nop	word ptr cs:[rax + rax]
.label_610:
	mov	rbp, rax
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	jne	.label_610
	mov	rax, qword ptr [rbp + 0x10]
	test	rax, rax
	mov	ecx, 0
	jne	.label_610
	jmp	.label_615
	nop	dword ptr [rax]
.label_640:
	mov	rcx, qword ptr [rdx + 8]
	mov	rbp, rdx
.label_615:
	mov	dword ptr [rsp + 0xd0], 0
	test	rcx, rcx
	je	.label_617
	movzx	eax, byte ptr [rcx + 0x30]
	cmp	eax, 0x11
	jne	.label_617
	mov	rax, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rax]
	mov	edx, dword ptr [rax + 0x38]
	mov	rdi, rbx
	call	lower_subexp
	mov	qword ptr [rbp + 8], rax
	test	rax, rax
	je	.label_617
	mov	qword ptr [rax], rbp
	nop	
.label_617:
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	je	.label_553
	movzx	eax, byte ptr [rcx + 0x30]
	cmp	eax, 0x11
	jne	.label_553
	mov	rax, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rax]
	mov	edx, dword ptr [rax + 0x38]
	mov	rdi, rbx
	call	lower_subexp
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_553
	mov	qword ptr [rax], rbp
	nop	word ptr cs:[rax + rax]
.label_553:
	mov	eax, dword ptr [rsp + 0xd0]
	test	eax, eax
	jne	.label_544
	mov	rdx, qword ptr [rbp]
	test	rdx, rdx
	je	.label_638
	mov	rax, qword ptr [rdx + 0x10]
	cmp	rax, rbp
	je	.label_640
	test	rax, rax
	je	.label_640
	jmp	.label_610
.label_638:
	mov	rax, qword ptr [r14]
	mov	ebx, 0xfffc00ff
.label_645:
	mov	rbp, rax
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	jne	.label_645
	mov	rax, qword ptr [rbp + 0x10]
	test	rax, rax
	jne	.label_645
.label_670:
	movzx	eax, byte ptr [rbp + 0x30]
	cmp	eax, 0x10
	jne	.label_649
	mov	rax, qword ptr [rbp + 8]
	mov	rcx, qword ptr [rax + 0x18]
	mov	qword ptr [rbp + 0x18], rcx
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp + 0x38], rax
	jmp	.label_651
.label_649:
	mov	qword ptr [rbp + 0x18], rbp
	mov	rsi, qword ptr [rbp + 0x28]
	mov	rdx, qword ptr [rbp + 0x30]
	mov	rdi, r15
	call	re_dfa_add_node
	mov	qword ptr [rbp + 0x38], rax
	cmp	rax, -1
	je	.label_656
	movzx	ecx, byte ptr [rbp + 0x30]
	cmp	ecx, 0xc
	jne	.label_651
	mov	ecx, dword ptr [rbp + 0x28]
	mov	rdx, qword ptr [r15]
	shl	rax, 4
	shl	ecx, 8
	and	ecx, 0x3ff00
	mov	esi, dword ptr [rdx + rax + 8]
	and	esi, ebx
	or	esi, ecx
	mov	dword ptr [rdx + rax + 8], esi
.label_651:
	mov	rcx, qword ptr [rbp]
	test	rcx, rcx
	je	.label_667
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbp
	mov	rbp, rcx
	je	.label_670
	test	rax, rax
	mov	rbp, rcx
	je	.label_670
	jmp	.label_645
.label_667:
	mov	rbx, qword ptr [r14]
	movzx	eax, byte ptr [rbx + 0x30]
	cmp	eax, 0x10
	je	.label_673
	cmp	eax, 0xb
	jne	.label_675
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rax + 0x20], rbx
	jmp	.label_676
.label_656:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_552
.label_673:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rcx + 0x18]
	mov	qword ptr [rax + 0x20], rdx
	jmp	.label_681
.label_675:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	je	.label_687
	mov	rcx, qword ptr [rbx + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_687:
	mov	rcx, qword ptr [rbx + 0x10]
	test	rcx, rcx
	je	.label_676
.label_681:
	mov	rdx, qword ptr [rbx + 0x20]
	mov	qword ptr [rcx + 0x20], rdx
.label_676:
	mov	rdx, rbx
	jmp	.label_540
.label_706:
	mov	rax, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rsi, qword ptr [rdx + 0x18]
	mov	qword ptr [rax + 0x20], rsi
	mov	rsi, qword ptr [rcx + 0x20]
	mov	qword ptr [rdx + 0x20], rsi
	mov	rdx, rcx
.label_540:
	xor	esi, esi
	test	rax, rax
	mov	rcx, rax
	jne	.label_699
	nop	word ptr cs:[rax + rax]
.label_703:
	mov	rax, rsi
	mov	rsi, rdx
	mov	rcx, qword ptr [rsi + 0x10]
	cmp	rcx, rax
	je	.label_629
	test	rcx, rcx
	jne	.label_699
.label_629:
	mov	rdx, qword ptr [rsi]
	test	rdx, rdx
	jne	.label_703
	jmp	.label_705
.label_699:
	movzx	eax, byte ptr [rcx + 0x30]
	cmp	eax, 0x10
	je	.label_706
	cmp	eax, 0xb
	jne	.label_685
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rax + 0x20], rcx
	mov	rdx, rcx
	jmp	.label_540
.label_685:
	mov	rax, qword ptr [rcx + 8]
	test	rax, rax
	je	.label_708
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rax + 0x20], rdx
.label_708:
	mov	rsi, qword ptr [rcx + 0x10]
	test	rsi, rsi
	mov	rdx, rcx
	je	.label_540
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rdx, rcx
	jmp	.label_540
.label_705:
	mov	rdi, r15
	mov	rsi, rbx
	call	link_nfa_nodes
	test	eax, eax
	jne	.label_544
.label_560:
	mov	rbp, qword ptr [rbx + 8]
	test	rbp, rbp
	mov	eax, 0
	jne	.label_547
	nop	word ptr cs:[rax + rax]
.label_623:
	mov	rcx, rax
	mov	rax, rbx
	mov	rbp, qword ptr [rax + 0x10]
	cmp	rbp, rcx
	je	.label_555
	test	rbp, rbp
	jne	.label_547
.label_555:
	mov	rbx, qword ptr [rax]
	test	rbx, rbx
	jne	.label_623
	jmp	.label_630
.label_547:
	mov	rdi, r15
	mov	rsi, rbp
	call	link_nfa_nodes
	test	eax, eax
	mov	rbx, rbp
	je	.label_560
	jmp	.label_544
.label_630:
	xor	eax, eax
	lea	r14, [rsp + 0xd0]
	xor	r13d, r13d
	jmp	.label_565
	nop	word ptr cs:[rax + rax]
.label_574:
	inc	rbp
	mov	rax, rbp
.label_565:
	cmp	rax, qword ptr [r15 + 0x10]
	jne	.label_696
	xor	ebp, ebp
	test	r13b, 1
	mov	r13d, 0
	jne	.label_571
	jmp	.label_572
.label_696:
	mov	rbp, rax
.label_571:
	mov	rax, qword ptr [r15 + 0x30]
	lea	rbx, [rbp + rbp*2]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	jne	.label_574
	mov	ecx, 1
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbp
	call	calc_eclosure_iter
	test	eax, eax
	jne	.label_544
	mov	rax, qword ptr [r15 + 0x30]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	jne	.label_574
	mov	rdi, qword ptr [rsp + 0xe0]
	call	free
	mov	r13b, 1
	jmp	.label_574
.label_544:
	mov	dword ptr [rsp + 0xcc], eax
.label_552:
	mov	r15, qword ptr [rsp + 0x28]
.label_707:
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_585
.label_650:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_650
.label_585:
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
	je	.label_595
	mov	rdi, qword ptr [rsp + 0x38]
	call	free
.label_595:
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
.label_691:
	mov	eax, dword ptr [rsp + 0xcc]
.label_549:
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_572:
	mov	rcx, qword ptr [rsp + 0x28]
	test	byte ptr [rcx + 0x38], 0x10
	jne	.label_609
	mov	rcx, qword ptr [rsp + 0x28]
	cmp	qword ptr [rcx + 0x30], 0
	je	.label_609
	test	byte ptr [r15 + 0xb0], 1
	jne	.label_614
.label_609:
	cmp	qword ptr [r15 + 0x98], 0
	je	.label_592
.label_614:
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [r15 + 0x38], rax
	test	rax, rax
	je	.label_620
	cmp	qword ptr [r15 + 0x10], 0
	je	.label_592
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [r15 + 0x10]
	mov	ecx, 1
	mov	edx, 0x18
	cmp	rax, 1
	jbe	.label_622
.label_627:
	mov	rax, qword ptr [r15 + 0x38]
	movdqu	xmmword ptr [rax + rdx], xmm0
	mov	qword ptr [rax + rdx + 0x10], 0
	inc	rcx
	mov	rax, qword ptr [r15 + 0x10]
	add	rdx, 0x18
	cmp	rcx, rax
	jb	.label_627
.label_622:
	test	rax, rax
	je	.label_592
	mov	r8, qword ptr [r15 + 0x30]
	xor	r10d, r10d
.label_669:
	mov	qword ptr [rsp + 0x18], r10
	lea	r9, [r10 + r10*2]
	mov	qword ptr [rsp + 0x20], r9
	cmp	qword ptr [r8 + r9*8 + 8], 0
	jle	.label_612
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	mov	qword ptr [rsp + 8], rdi
	xor	ebx, ebx
.label_660:
	mov	r13, qword ptr [r15 + 0x38]
	mov	rax, qword ptr [rdi + rbx*8]
	lea	rbp, [rax + rax*2]
	mov	rax, qword ptr [r13 + rbp*8]
	lea	r14, [r13 + rbp*8 + 8]
	mov	rdx, qword ptr [r13 + rbp*8 + 8]
	cmp	rax, rdx
	jne	.label_642
	lea	rcx, [r13 + rbp*8]
	lea	rdx, [rax + rax + 2]
	lea	rax, [rax + rax]
	mov	qword ptr [rcx], rdx
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_648
	lea	rcx, [r13 + rbp*8 + 0x10]
	mov	qword ptr [rcx], rax
	mov	rdx, qword ptr [r14]
	mov	r8, qword ptr [r15 + 0x30]
	mov	r10, qword ptr [rsp + 0x18]
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_654
.label_642:
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_654:
	lea	rsi, [rdx + 1]
	mov	qword ptr [r14], rsi
	mov	qword ptr [rax + rdx*8], r10
	inc	rbx
	cmp	rbx, qword ptr [r8 + r9*8 + 8]
	jl	.label_660
	mov	rax, qword ptr [r15 + 0x10]
.label_612:
	inc	r10
	cmp	r10, rax
	jb	.label_669
.label_592:
	mov	dword ptr [rsp + 0xcc], 0
	cmp	qword ptr [rsp + 0x10], 0
	jne	.label_664
	mov	al, byte ptr [r12 + 0xb0]
	mov	cl, al
	and	cl, 4
	je	.label_664
	mov	rcx, qword ptr [rsp + 0x28]
	cmp	qword ptr [rcx + 0x28], 0
	jne	.label_664
	mov	rdx, qword ptr [r12 + 0x10]
	test	rdx, rdx
	je	.label_680
	mov	rbx, qword ptr [r12]
	xor	r9d, r9d
	movabs	r8, 0x1000000010001
	mov	rcx, rbx
	xor	r10d, r10d
	xor	ebp, ebp
.label_704:
	movzx	esi, byte ptr [rcx + 8]
	dec	esi
	cmp	esi, 0xb
	ja	.label_690
	jmp	qword ptr [word ptr [+ (rsi * 8) + label_692]]
.label_2638:
	mov	sil, 1
	cmp	byte ptr [rcx], 0
	js	.label_694
	mov	sil, r10b
.label_694:
	mov	r10b, sil
	jmp	.label_637
.label_2639:
	mov	rsi, qword ptr [rcx]
	cmp	qword ptr [rsi + 0x10], 0
	jne	.label_664
	cmp	qword ptr [rsi + 0x18], 0
	je	.label_637
	jmp	.label_664
.label_2640:
	mov	r9b, 1
	jmp	.label_637
.label_2641:
	mov	esi, dword ptr [rcx]
	lea	edi, [rsi - 0x10]
	cmp	edi, 0x30
	ja	.label_701
	bt	r8, rdi
	jb	.label_637
.label_701:
	cmp	esi, 0x80
	jne	.label_664
.label_637:
	inc	rbp
	add	rcx, 0x10
	cmp	rbp, rdx
	jb	.label_704
	mov	cl, r9b
	and	cl, 1
	or	r10b, r9b
	xor	edx, edx
	mov	esi, 8
	test	r10b, 1
	je	.label_548
	jmp	.label_709
.label_575:
	add	rsi, 0x10
	mov	rbx, qword ptr [r12]
.label_709:
	mov	eax, dword ptr [rbx + rsi]
	movzx	edi, al
	cmp	edi, 5
	je	.label_710
	cmp	edi, 1
	jne	.label_539
	cmp	byte ptr [rbx + rsi - 8], 0
	jns	.label_539
	and	eax, 0xffdfffff
	jmp	.label_541
.label_710:
	and	eax, 0xffffff00
	or	eax, 7
.label_541:
	mov	dword ptr [rbx + rsi], eax
.label_539:
	inc	rdx
	cmp	rdx, qword ptr [r12 + 0x10]
	jb	.label_575
	mov	al, byte ptr [r12 + 0xb0]
	jmp	.label_548
.label_648:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_552
.label_680:
	xor	ecx, ecx
.label_548:
	mov	dword ptr [r12 + 0xb4], 1
	cmp	qword ptr [r12 + 0x98], 0
	setg	dl
	or	dl, cl
	add	dl, dl
	and	al, 0xf9
	or	al, dl
	mov	byte ptr [r12 + 0xb0], al
.label_664:
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
	jle	.label_562
	mov	qword ptr [rsp + 0xd0], r15
	lea	rdi, [r15*8]
	call	malloc
	mov	rbp, rax
	mov	qword ptr [rsp + 0xe0], rbp
	test	rbp, rbp
	je	.label_576
	mov	rsi, qword ptr [rbx + r13*8 + 0x10]
	shl	r14, 3
	mov	rdi, rbp
	mov	rdx, r14
	call	memcpy
	mov	dword ptr [rsp + 0xf4], 0
	test	r15, r15
	jle	.label_582
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	jle	.label_582
	xor	eax, eax
	lea	r14, [rsp + 0xd0]
	jmp	.label_631
.label_689:
	mov	rbp, qword ptr [rsp + 0xe0]
.label_631:
	mov	r8, qword ptr [rbp + rax*8]
	mov	rdx, qword ptr [r12]
	mov	rsi, r8
	shl	rsi, 4
	movzx	ecx, byte ptr [rdx + rsi + 8]
	cmp	ecx, 4
	jne	.label_608
	test	r15, r15
	mov	edi, 0
	jle	.label_591
	add	rsi, rdx
	xor	edi, edi
.label_597:
	mov	rcx, qword ptr [rbp + rdi*8]
	shl	rcx, 4
	movzx	ebx, byte ptr [rdx + rcx + 8]
	cmp	ebx, 9
	jne	.label_644
	mov	rcx, qword ptr [rdx + rcx]
	cmp	rcx, qword ptr [rsi]
	je	.label_591
.label_644:
	inc	rdi
	cmp	rdi, r15
	jl	.label_597
.label_591:
	cmp	rdi, r15
	je	.label_608
	mov	rcx, qword ptr [r12 + 0x28]
	lea	rdx, [r8 + r8*2]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	mov	rcx, qword ptr [rcx]
	test	r15, r15
	jle	.label_601
	mov	rsi, r15
	dec	rsi
	mov	edx, 0
	je	.label_588
.label_607:
	lea	rdi, [rdx + rsi]
	shr	rdi, 1
	cmp	qword ptr [rbp + rdi*8], rcx
	lea	rbx, [rdi + 1]
	cmovl	rdx, rbx
	cmovge	rsi, rdi
	cmp	rdx, rsi
	jb	.label_607
.label_588:
	cmp	rdx, -1
	je	.label_601
	cmp	qword ptr [rbp + rdx*8], rcx
	je	.label_608
.label_601:
	mov	rax, qword ptr [r12 + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r14
	call	re_node_set_merge
	test	eax, eax
	jne	.label_619
	mov	r15, qword ptr [rsp + 0xd8]
	xor	eax, eax
.label_608:
	inc	rax
	cmp	rax, r15
	jl	.label_689
	jmp	.label_582
.label_562:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0xd0], xmm0
	mov	qword ptr [rsp + 0xe0], 0
	mov	dword ptr [rsp + 0xf4], 0
.label_582:
	lea	rdi, [rsp + 0xf4]
	lea	rdx, [rsp + 0xd0]
	xor	ecx, ecx
	mov	rsi, r12
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x48], rax
	test	rax, rax
	je	.label_632
	cmp	byte ptr [rax + 0x68], 0
	js	.label_603
	mov	qword ptr [r12 + 0x60], rax
	mov	qword ptr [r12 + 0x58], rax
	mov	qword ptr [r12 + 0x50], rax
	jmp	.label_635
.label_603:
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
	je	.label_652
	test	rax, rax
	je	.label_652
	mov	rax, qword ptr [r12 + 0x58]
	test	rax, rax
	je	.label_652
.label_635:
	mov	rdi, qword ptr [rsp + 0xe0]
	call	free
	xor	eax, eax
.label_619:
	mov	dword ptr [rsp + 0xcc], eax
	mov	r14, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [r14]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_662
.label_624:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_624
.label_662:
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
	je	.label_682
	mov	rdi, qword ptr [rsp + 0x38]
	call	free
.label_682:
	xor	eax, eax
	cmp	dword ptr [rsp + 0xcc], 0
	je	.label_549
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	jmp	.label_691
.label_652:
	mov	eax, dword ptr [rsp + 0xf4]
	jmp	.label_619
.label_620:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_552
.label_632:
	mov	eax, dword ptr [rsp + 0xf4]
	jmp	.label_619
.label_576:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0xd0], xmm0
	mov	dword ptr [rsp + 0xf4], 0xc
	mov	eax, 0xc
	jmp	.label_619
.label_690:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408be0
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	mov	rax,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	qword ptr [word ptr [rip + rpl_re_syntax_options]],  rdi
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x408bf0
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
	je	.label_712
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
.label_712:
	mov	rsi, qword ptr [r15 + 0x58]
	cmp	rax, rsi
	je	.label_711
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
.label_711:
	mov	rsi, qword ptr [r15 + 0x60]
	cmp	rax, rsi
	je	.label_713
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_713:
	or	byte ptr [r14 + 0x38], 8
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408cc0

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
	mov	qword ptr [rsp + 8], r13
	mov	rax, qword ptr [r13]
	cmp	dword ptr [rax + 0xb4], 1
	jne	.label_764
	mov	qword ptr [rsp + 0x28], rax
	mov	al, byte ptr [r13 + 0x1a]
	and	al, 0x40
	shr	al, 6
	mov	dword ptr [rsp + 0x14], eax
	jmp	.label_765
.label_764:
	mov	qword ptr [rsp + 0x28], rax
	mov	dword ptr [rsp + 0x14], 0
.label_765:
	cmp	qword ptr [rsi + 0x10], 0
	jle	.label_715
	xor	edx, edx
	lea	r14, [rsp + 0x30]
	nop	word ptr cs:[rax + rax]
.label_746:
	mov	rax, qword ptr [rsi + 0x18]
	mov	rbp, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	r12, rbp
	shl	r12, 4
	lea	rcx, [rax + r12]
	movzx	ebx, byte ptr [rax + r12 + 8]
	cmp	ebx, 1
	je	.label_742
	mov	qword ptr [rsp + 0x20], rdx
	cmp	ebx, 6
	je	.label_735
	cmp	ebx, 3
	jne	.label_738
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax]
	mov	eax, dword ptr [rsp + 0x14]
	test	al, al
	mov	ebx, 0
	mov	eax, 0
	je	.label_725
	nop	
.label_759:
	bt	rbp, rbx
	jae	.label_749
	mov	byte ptr [r15 + rbx], 1
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x180
	jae	.label_751
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4]
	jmp	.label_758
	nop	word ptr cs:[rax + rax]
.label_751:
	mov	eax, ebx
.label_758:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_749:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_759
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbx, qword ptr [rax + 8]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_728:
	bt	rbx, rbp
	jae	.label_753
	mov	byte ptr [r15 + rbp + 0x40], 1
	lea	eax, [rbp + 0xc0]
	cmp	eax, 0x180
	jae	.label_766
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbp*4 + 0x100]
	jmp	.label_719
	nop	word ptr [rax + rax]
.label_766:
	lea	rax, [rbp + 0x40]
.label_719:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_753:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_728
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbx, qword ptr [rax + 0x10]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_726:
	bt	rbx, rbp
	jae	.label_733
	mov	byte ptr [r15 + rbp + 0x80], 1
	lea	eax, [rbp + 0x100]
	cmp	eax, 0x180
	jae	.label_734
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbp*4 + 0x200]
	jmp	.label_757
	nop	dword ptr [rax]
.label_734:
	lea	rax, [rbp + 0x80]
.label_757:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_733:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_726
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbx, qword ptr [rax + 0x18]
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_743:
	bt	rbx, rbp
	jae	.label_754
	mov	byte ptr [r15 + rbp + 0xc0], 1
	lea	eax, [rbp + 0x140]
	cmp	eax, 0x180
	jae	.label_756
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbp*4 + 0x300]
	jmp	.label_760
	nop	dword ptr [rax]
.label_756:
	lea	rax, [rbp + 0xc0]
.label_760:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_754:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_743
	jmp	.label_752
	nop	dword ptr [rax]
.label_725:
	bt	rbp, rax
	jae	.label_744
	mov	byte ptr [r15 + rax], 1
.label_744:
	lea	rcx, [rax + 1]
	bt	rbp, rcx
	jae	.label_718
	mov	byte ptr [r15 + rax + 1], 1
.label_718:
	inc	rcx
	cmp	rcx, 0x40
	mov	rax, rcx
	jne	.label_725
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rax, qword ptr [rax + 8]
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_736:
	bt	rax, rcx
	jae	.label_714
	mov	byte ptr [r15 + rcx + 0x40], 1
.label_714:
	lea	edx, [rcx + 1]
	bt	rax, rdx
	jae	.label_732
	mov	byte ptr [r15 + rcx + 0x41], 1
.label_732:
	add	rcx, 2
	cmp	rcx, 0x40
	jne	.label_736
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rax, qword ptr [rax + 0x10]
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_755:
	bt	rax, rcx
	jae	.label_747
	mov	byte ptr [r15 + rcx + 0x80], 1
.label_747:
	lea	edx, [rcx + 1]
	bt	rax, rdx
	jae	.label_748
	mov	byte ptr [r15 + rcx + 0x81], 1
.label_748:
	add	rcx, 2
	cmp	rcx, 0x40
	jne	.label_755
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rax, qword ptr [rax + 0x18]
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_763:
	bt	rax, rcx
	jae	.label_716
	mov	byte ptr [r15 + rcx + 0xc0], 1
.label_716:
	lea	edx, [rcx + 1]
	bt	rax, rdx
	jae	.label_762
	mov	byte ptr [r15 + rcx + 0xc1], 1
.label_762:
	add	rcx, 2
	cmp	rcx, 0x40
	jne	.label_763
	jmp	.label_752
.label_735:
	mov	r12, qword ptr [rcx]
	mov	rax, qword ptr [rsp + 0x28]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_723
	cmp	qword ptr [r12 + 0x48], 0
	jne	.label_717
	test	byte ptr [r12 + 0x20], 1
	jne	.label_717
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_723
.label_717:
	mov	byte ptr [rsp + 0x138], 0
	lea	rbp, [rsp + 0x138]
	nop	word ptr cs:[rax + rax]
.label_741:
	mov	qword ptr [rsp + 0x30], 0
	xor	edi, edi
	mov	edx, 1
	mov	rsi, rbp
	mov	rcx, r14
	call	rpl_mbrtowc
	movzx	ecx, byte ptr [rsp + 0x138]
	cmp	rax, -2
	jne	.label_727
	mov	byte ptr [r15 + rcx], 1
.label_727:
	inc	cl
	mov	byte ptr [rsp + 0x138], cl
	jne	.label_741
	jmp	.label_752
	nop	
.label_742:
	mov	qword ptr [rsp + 0x20], rdx
	movzx	ebx, byte ptr [rcx]
	mov	byte ptr [r15 + rbx], 1
	mov	eax, dword ptr [rsp + 0x14]
	test	al, al
	je	.label_745
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	ja	.label_750
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_750:
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
.label_745:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_752
	mov	rax, qword ptr [rsp + 0x28]
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_752
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rcx]
	mov	al, byte ptr [rax + r12]
	mov	byte ptr [rsp + 0x30], al
	mov	rdx, rcx
	inc	rbp
	cmp	rbp, qword ptr [rdx + 0x10]
	lea	r13, [rsp + 0x31]
	mov	esi, 0x2000ff
	jae	.label_720
	add	r12, 0x18
	lea	r13, [rsp + 0x31]
	nop	word ptr cs:[rax + rax]
.label_740:
	mov	rax, qword ptr [rdx]
	mov	ecx, dword ptr [rax + r12]
	and	ecx, esi
	cmp	ecx, 0x200001
	jne	.label_720
	mov	al, byte ptr [rax + r12 - 8]
	mov	byte ptr [r13], al
	inc	r13
	inc	rbp
	add	r12, 0x10
	cmp	rbp, qword ptr [rdx + 0x10]
	jb	.label_740
.label_720:
	mov	qword ptr [rsp + 0x28], rdx
	mov	qword ptr [rsp + 0x138], 0
	sub	r13, r14
	lea	rdi, [rsp + 0x144]
	mov	rsi, r14
	mov	rdx, r13
	lea	rbx, [rsp + 0x138]
	mov	rcx, rbx
	call	rpl_mbrtowc
	cmp	rax, r13
	jne	.label_739
	mov	edi, dword ptr [rsp + 0x144]
	call	towlower
	mov	rdi, r14
	mov	esi, eax
	mov	rdx, rbx
	call	wcrtomb
	cmp	rax, -1
	je	.label_739
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
.label_739:
	mov	r13, qword ptr [rsp + 8]
	jmp	.label_752
	nop	word ptr cs:[rax + rax]
.label_738:
	cmp	ebx, 2
	je	.label_729
	mov	eax, ebx
	or	eax, 2
	cmp	eax, 7
	jne	.label_752
	jmp	.label_729
.label_723:
	cmp	qword ptr [r12 + 0x28], 0
	jle	.label_752
	mov	eax, dword ptr [rsp + 0x14]
	test	al, al
	mov	ebp, 0
	mov	ebx, 0
	je	.label_730
	nop	
.label_737:
	mov	qword ptr [rsp + 0x138], 0
	mov	rax, qword ptr [r12]
	mov	esi, dword ptr [rax + rbp*4]
	mov	rdi, r14
	lea	rdx, [rsp + 0x138]
	call	wcrtomb
	cmp	rax, -1
	je	.label_721
	movzx	ebx, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rbx], 1
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	ja	.label_724
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_724:
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
.label_721:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_731
	mov	rax, qword ptr [rsp + 0x28]
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_731
	mov	rax, qword ptr [r12]
	mov	edi, dword ptr [rax + rbp*4]
	call	towlower
	mov	rdi, r14
	mov	esi, eax
	lea	rdx, [rsp + 0x138]
	call	wcrtomb
	cmp	rax, -1
	je	.label_731
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
	nop	word ptr cs:[rax + rax]
.label_731:
	inc	rbp
	cmp	rbp, qword ptr [r12 + 0x28]
	jl	.label_737
	jmp	.label_752
	nop	word ptr cs:[rax + rax]
.label_730:
	mov	qword ptr [rsp + 0x138], 0
	mov	rax, qword ptr [r12]
	mov	esi, dword ptr [rax + rbx*4]
	mov	rdi, r14
	lea	rbp, [rsp + 0x138]
	mov	rdx, rbp
	call	wcrtomb
	cmp	rax, -1
	je	.label_761
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
.label_761:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_722
	mov	rax, qword ptr [rsp + 0x28]
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_722
	mov	rax, qword ptr [r12]
	mov	edi, dword ptr [rax + rbx*4]
	call	towlower
	mov	rdi, r14
	mov	esi, eax
	mov	rdx, rbp
	call	wcrtomb
	cmp	rax, -1
	je	.label_722
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
	nop	word ptr cs:[rax + rax]
.label_722:
	inc	rbx
	cmp	rbx, qword ptr [r12 + 0x28]
	jl	.label_730
	nop	
.label_752:
	mov	rdx, qword ptr [rsp + 0x20]
	inc	rdx
	mov	rsi, qword ptr [rsp + 0x18]
	cmp	rdx, qword ptr [rsi + 0x10]
	jl	.label_746
.label_715:
	add	rsp, 0x148
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_729:
	mov	esi, 1
	mov	edx, 0x100
	mov	rdi, r15
	call	memset
	cmp	ebx, 2
	jne	.label_715
	or	byte ptr [r13 + 0x38], 1
	jmp	.label_715
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409390
	.globl rpl_regcomp
	.type rpl_regcomp, @function
rpl_regcomp:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
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
	je	.label_772
	test	bpl, 1
	mov	eax, 0x3b2fc
	mov	ecx, 0x10102c6
	cmovne	rcx, rax
	mov	ebx, ebp
	and	ebx, 2
	shl	rbx, 0x15
	or	rbx, rcx
	test	bpl, 4
	jne	.label_771
	lea	r12, [r15 + 0x38]
	mov	al, byte ptr [r15 + 0x38]
	and	al, 0x7f
	jmp	.label_773
.label_771:
	and	ebx, 0x143b2be
	or	rbx, 0x100
	lea	r12, [r15 + 0x38]
	mov	al, byte ptr [r15 + 0x38]
	or	al, 0x80
.label_773:
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
	jne	.label_768
	mov	rbx, qword ptr [r15]
	mov	rbp, qword ptr [r15 + 0x20]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp + 0xf0], xmm0
	movups	xmmword ptr [rbp + 0xe0], xmm0
	movups	xmmword ptr [rbp + 0xd0], xmm0
	movups	xmmword ptr [rbp + 0xc0], xmm0
	movups	xmmword ptr [rbp + 0xb0], xmm0
	movups	xmmword ptr [rbp + 0xa0], xmm0
	movups	xmmword ptr [rbp + 0x90], xmm0
	movups	xmmword ptr [rbp + 0x80], xmm0
	movups	xmmword ptr [rbp + 0x70], xmm0
	movups	xmmword ptr [rbp + 0x60], xmm0
	movups	xmmword ptr [rbp + 0x50], xmm0
	movups	xmmword ptr [rbp + 0x40], xmm0
	movups	xmmword ptr [rbp + 0x30], xmm0
	movups	xmmword ptr [rbp + 0x20], xmm0
	movups	xmmword ptr [rbp + 0x10], xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	rsi, qword ptr [rbx + 0x48]
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
	mov	rsi, qword ptr [rbx + 0x50]
	cmp	rax, rsi
	je	.label_770
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
.label_770:
	mov	rsi, qword ptr [rbx + 0x58]
	cmp	rax, rsi
	je	.label_767
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
.label_767:
	mov	rsi, qword ptr [rbx + 0x60]
	cmp	rax, rsi
	je	.label_769
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
.label_769:
	or	byte ptr [r12], 8
	xor	ebx, ebx
.label_772:
	mov	eax, ebx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_768:
	mov	rdi, qword ptr [r15 + 0x20]
	call	free
	mov	qword ptr [r15 + 0x20], 0
	jmp	.label_772
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409540
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
	jae	.label_774
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
	je	.label_776
	cmp	rbx, r15
	mov	rdx, rbx
	ja	.label_777
.label_775:
	mov	rdi, r14
	mov	rsi, r12
	call	memcpy
.label_776:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_777:
	mov	byte ptr [r14 + r15 - 1], 0
	dec	r15
	mov	rdx, r15
	jmp	.label_775
.label_774:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4095c0

	.globl rpl_regfree
	.type rpl_regfree, @function
rpl_regfree:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_778
	call	free_dfa_content
.label_778:
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
	#Procedure 0x409600

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
	je	.label_779
	xor	ebx, ebx
	mov	r12d, 8
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_779
	mov	ebp, 0x400ff
	jmp	.label_783
	nop	dword ptr [rax]
.label_781:
	add	r12, 0x10
	mov	rax, qword ptr [r14]
.label_783:
	mov	ecx, dword ptr [rax + r12]
	and	ecx, ebp
	cmp	ecx, 3
	je	.label_785
	cmp	ecx, 6
	jne	.label_788
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
	jmp	.label_793
	nop	word ptr cs:[rax + rax]
.label_785:
	mov	rdi, qword ptr [rax + r12 - 8]
.label_793:
	call	free
.label_788:
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	jb	.label_781
.label_779:
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_782
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
	lea	r13, [r14 + 0x28]
	xor	ebp, ebp
	mov	ebx, 0x10
	nop	word ptr cs:[rax + rax]
.label_795:
	mov	rax, qword ptr [r12]
	test	rax, rax
	je	.label_787
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_787:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_790
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_790:
	mov	rax, qword ptr [r13]
	test	rax, rax
	je	.label_791
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_791:
	inc	rbp
	add	rbx, 0x18
	cmp	rbp, qword ptr [r14 + 0x10]
	jb	.label_795
	jmp	.label_780
.label_782:
	lea	r13, [r14 + 0x28]
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
.label_780:
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
	je	.label_784
	xor	r15d, r15d
	jmp	.label_786
.label_796:
	mov	rdi, qword ptr [r14 + 0x40]
.label_786:
	lea	rax, [r15 + r15*2]
	lea	r12, [rdi + rax*8 + 0x10]
	cmp	qword ptr [rdi + rax*8], 0
	jle	.label_789
	lea	rbx, [rdi + rax*8]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_792:
	mov	rax, qword ptr [r12]
	mov	rdi, qword ptr [rax + rbp*8]
	call	free_state
	inc	rbp
	cmp	rbp, qword ptr [rbx]
	jl	.label_792
.label_789:
	mov	rdi, qword ptr [r12]
	call	free
	inc	r15
	cmp	r15, qword ptr [r14 + 0x88]
	jbe	.label_796
	mov	rdi, qword ptr [r14 + 0x40]
.label_784:
	call	free
	mov	rdi, qword ptr [r14 + 0x78]
	mov	eax, OFFSET FLAT:utf8_sb_map
	cmp	rdi, rax
	je	.label_794
	call	free
.label_794:
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
	#Procedure 0x4097d0
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
	ja	.label_797
	test	bpl, 4
	jne	.label_799
	mov	rdi, r14
	call	strlen
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.label_798
.label_799:
	mov	rcx, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
.label_798:
	test	byte ptr [rbx + 0x38], 0x10
	jne	.label_800
	mov	dword ptr [rsp + 0x10], ebp
	mov	qword ptr [rsp + 8], r12
	mov	qword ptr [rsp], r15
	jmp	.label_801
.label_800:
	mov	dword ptr [rsp + 0x10], ebp
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [rsp], 0
.label_801:
	mov	rdi, rbx
	mov	rsi, r14
	mov	r8, rdx
	mov	r9, rdx
	call	re_search_internal
	test	eax, eax
	setne	al
	movzx	eax, al
.label_797:
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
	#Procedure 0x409870

	.globl re_search_internal
	.type re_search_internal, @function
re_search_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x268
	mov	r15, rcx
	mov	r13, qword ptr [rsp + 0x2a0]
	mov	r11, qword ptr [rdi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x1f0], xmm0
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
	mov	qword ptr [rsp + 0x198], r11
	mov	rax, qword ptr [rdi + 0x20]
	xor	ebp, ebp
	test	rax, rax
	je	.label_825
	mov	cl, byte ptr [rdi + 0x38]
	and	cl, 9
	movzx	ecx, cl
	xor	ebx, ebx
	cmp	ecx, 8
	cmovne	rax, rbx
	cmp	r15, r8
	cmove	rax, rbx
	mov	rbp, rax
.label_825:
	mov	rax, qword ptr [rdi + 0x30]
	lea	r14, [r13 - 1]
	mov	rcx, r14
	sub	rcx, rax
	xor	ebx, ebx
	cmp	rax, r13
	cmovb	rbx, rcx
	mov	r12d, 1
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_827
	mov	rax, qword ptr [r11 + 0x48]
	test	rax, rax
	je	.label_827
	mov	rcx, qword ptr [r11 + 0x50]
	test	rcx, rcx
	je	.label_827
	mov	qword ptr [rsp + 0xc8], rbp
	mov	r10, qword ptr [r11 + 0x58]
	test	r10, r10
	je	.label_827
	cmp	qword ptr [r11 + 0x60], 0
	je	.label_827
	mov	rbp, qword ptr [rdi + 0x28]
	mov	qword ptr [rsp + 0xd0], rbp
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_891
	cmp	qword ptr [rcx + 0x10], 0
	jne	.label_891
	cmp	qword ptr [r10 + 0x10], 0
	je	.label_925
	cmp	byte ptr [rdi + 0x38], 0
	js	.label_891
.label_925:
	xor	eax, eax
	mov	qword ptr [rsp + 0xb0], rax
	test	r15, r15
	mov	r10, rsi
	je	.label_899
	test	r8, r8
	mov	r15d, 0
	jne	.label_827
	jmp	.label_813
.label_891:
	mov	qword ptr [rsp + 0xb0], r8
	mov	r10, rsi
.label_813:
	mov	qword ptr [rsp + 0xe8], r9
	mov	qword ptr [rsp + 0x70], r14
	mov	byte ptr [rsp + 0xc6], 1
	cmp	rbx, r13
	mov	qword ptr [rsp + 0xa8], rbx
	jne	.label_906
	cmp	qword ptr [r11 + 0x98], 0
	setne	byte ptr [rsp + 0xc6]
.label_906:
	mov	r13, qword ptr [r11 + 0x10]
	inc	r13
	mov	rcx, qword ptr [rdi + 0x18]
	movsxd	rax, dword ptr [r11 + 0xb4]
	cmp	rax, r13
	cmovge	r13, rax
	lea	rsi, [rdx + 1]
	cmp	rsi, r13
	cmovle	r13, rsi
	mov	qword ptr [rsp + 0x100], r10
	mov	qword ptr [rsp + 0x158], rdx
	mov	qword ptr [rsp + 0x150], rdx
	mov	qword ptr [rsp + 0xd0], rbp
	mov	qword ptr [rsp + 0x178], rbp
	shr	rcx, 0x16
	and	cl, 1
	mov	byte ptr [rsp + 0x188], cl
	test	rbp, rbp
	setne	bl
	or	bl, cl
	mov	byte ptr [rsp + 0x18b], bl
	mov	dword ptr [rsp + 0x190], eax
	mov	cl, byte ptr [r11 + 0xb0]
	shr	cl, 2
	and	cl, 1
	mov	byte ptr [rsp + 0x189], cl
	mov	cl, byte ptr [r11 + 0xb0]
	shr	cl, 3
	and	cl, 1
	cmp	rax, 2
	mov	byte ptr [rsp + 0x18a], cl
	mov	qword ptr [rsp + 0x168], rdx
	mov	qword ptr [rsp + 0x160], rdx
	jl	.label_915
	mov	qword ptr [rsp + 0xf8], r11
	movabs	rax, 0x1ffffffffffffffe
	inc	rax
	mov	r12d, 0xc
	cmp	r13, rax
	ja	.label_816
	mov	qword ptr [rsp + 0xd8], r10
	mov	qword ptr [rsp + 0xf0], rdx
	mov	r14, rdi
	lea	rsi, [r13*4]
	xor	edi, edi
	call	realloc
	test	rax, rax
	je	.label_816
	mov	qword ptr [rsp + 0x110], rax
	mov	r11, qword ptr [rsp + 0xf8]
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	r10, qword ptr [rsp + 0xd8]
.label_915:
	mov	qword ptr [rsp + 0xf0], rdx
	mov	al, 1
	test	bl, bl
	je	.label_976
	mov	r14, r10
	mov	rbx, rdi
	mov	qword ptr [rsp + 0xf8], r11
	xor	edi, edi
	mov	rsi, r13
	call	realloc
	mov	r12d, 0xc
	test	rax, rax
	je	.label_816
	mov	qword ptr [rsp + 0x108], rax
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0xf8]
	mov	rdi, rbx
	mov	r10, r14
.label_976:
	mov	qword ptr [rsp + 0x140], r13
	lea	rcx, [r11 + 0xb8]
	mov	qword ptr [rsp + 0x180], rcx
	mov	rcx, qword ptr [r11 + 0xb0]
	mov	dl, cl
	shr	dl, 4
	and	dl, 1
	mov	byte ptr [rsp + 0x18e], dl
	xor	edx, edx
	test	al, al
	je	.label_889
	shr	rcx, 0x20
	mov	qword ptr [rsp + 0x108], r10
	xor	edx, edx
	cmp	ecx, 1
	cmovle	rdx, qword ptr [rsp + 0xf0]
.label_889:
	mov	qword ptr [rsp + 0xd8], r10
	mov	qword ptr [rsp + 0x130], rdx
	mov	qword ptr [rsp + 0x138], rdx
	mov	rax, qword ptr [rsp + 0xe8]
	mov	qword ptr [rsp + 0x168], rax
	mov	qword ptr [rsp + 0x160], rax
	mov	al, byte ptr [rdi + 0x38]
	mov	qword ptr [rsp + 0x80], rdi
	shr	al, 7
	mov	byte ptr [rsp + 0x18d], al
	mov	rbx, qword ptr [r11 + 0x98]
	mov	qword ptr [rsp + 0xf8], r11
	lea	r14, [rbx + rbx]
	mov	eax, dword ptr [rsp + 0x2b0]
	mov	dword ptr [rsp + 0x1a0], eax
	mov	qword ptr [rsp + 0x1a8], -1
	test	rbx, rbx
	jle	.label_999
	mov	r12d, 0xc
	movabs	rax, 0x666666666666666
	cmp	r14, rax
	ja	.label_816
	shl	rbx, 4
	lea	rdi, [rbx + rbx*4]
	call	malloc
	mov	rbp, rax
	mov	qword ptr [rsp + 0x1d8], rbp
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [rsp + 0x1f8], rax
	test	rbp, rbp
	je	.label_816
	test	rax, rax
	je	.label_816
.label_999:
	mov	rax, qword ptr [rsp + 0x2a0]
	sub	rax, qword ptr [rsp + 0xa8]
	mov	qword ptr [rsp + 0x78], rax
	mov	qword ptr [rsp + 0x1d0], r14
	mov	dword ptr [rsp + 0x1e0], 1
	mov	qword ptr [rsp + 0x1f0], r14
	cmp	rax, 1
	mov	rax, qword ptr [rsp + 0xf8]
	ja	.label_838
	mov	rbx, qword ptr [rax + 0xb0]
	test	bl, 2
	jne	.label_838
	shr	rbx, 0x20
	mov	qword ptr [rsp + 0x1b8], 0
	jmp	.label_857
.label_838:
	mov	r12d, 0xc
	movabs	rax, 0x1ffffffffffffffe
	cmp	r13, rax
	ja	.label_816
	lea	rdi, [r13*8 + 8]
	call	malloc
	mov	qword ptr [rsp + 0x1b8], rax
	test	rax, rax
	je	.label_816
	mov	rax, qword ptr [rsp + 0xf8]
	mov	ebx, dword ptr [rax + 0xb4]
.label_857:
	mov	qword ptr [rsp + 0xe0], rbx
	mov	qword ptr [rsp + 0xf8], rax
	mov	qword ptr [rsp + 0x208], r15
	mov	eax, dword ptr [rsp + 0x2b0]
	lea	eax, [rax + rax]
	and	eax, 2
	xor	eax, 6
	mov	dword ptr [rsp + 0x170], eax
	mov	rsi, qword ptr [rsp + 0xb0]
	cmp	rsi, r15
	mov	r13, r15
	cmovle	r13, rsi
	mov	rbp, rsi
	cmovl	rbp, r15
	mov	qword ptr [rsp + 0xb8], rbp
	mov	ecx, 8
	mov	r14, qword ptr [rsp + 0xc8]
	test	r14, r14
	mov	rdi, qword ptr [rsp + 0xd0]
	je	.label_873
	cmp	ebx, 1
	je	.label_893
	mov	ecx, 0x400000
	xor	r8d, r8d
	test	rdi, rdi
	jne	.label_894
	mov	rdx, qword ptr [rsp + 0x80]
	and	rcx, qword ptr [rdx + 0x18]
	jne	.label_894
.label_893:
	mov	r8d, 4
.label_894:
	test	rdi, rdi
	setne	cl
	cmp	r15, rsi
	setle	dl
	movzx	ecx, cl
	movzx	edx, dl
	lea	ecx, [rcx + rdx*2]
	or	ecx, r8d
.label_873:
	mov	qword ptr [rsp + 0xe0], rbx
	mov	rbx, rdi
	xor	eax, eax
	cmp	r15, rsi
	setle	byte ptr [rsp + 0xc7]
	lea	rdx, [rsp + 0x208]
	cmovg	rdx, rax
	mov	qword ptr [rsp + 0x90], rdx
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	cmp	rsi, r15
	mov	eax, 1
	mov	rdx, -1
	cmovge	rdx, rax
	mov	qword ptr [rsp + 0xe8], rdx
	add	ecx, -4
	mov	qword ptr [rsp + 0xa0], rcx
	jmp	.label_870
.label_981:
	mov	rax, qword ptr [rsp + 0xe0]
	cmp	eax, 1
	je	.label_922
	mov	rax, qword ptr [rsp + 0x130]
	test	rax, rax
	je	.label_922
	mov	rax, qword ptr [rsp + 0x110]
	cmp	dword ptr [rax], -1
	je	.label_926
.label_922:
	mov	dword ptr [rsp + 0x1e0], 0
	lea	rax, [rsp + 0x1c0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	r12, qword ptr [rsp + 0x198]
	mov	rdi, qword ptr [rsp + 0x148]
	mov	dword ptr [rsp + 0x264], 0
	mov	r15, qword ptr [r12 + 0x48]
	cmp	byte ptr [r15 + 0x68], 0
	js	.label_931
	mov	rbx, qword ptr [rsp + 0xe0]
	jmp	.label_810
.label_931:
	test	rdi, rdi
	jle	.label_948
	lea	rax, [rdi - 1]
	cmp	qword ptr [rsp + 0x158], rax
	je	.label_951
	cmp	dword ptr [rsp + 0x190], 2
	jl	.label_957
	mov	rax, qword ptr [rsp + 0x110]
	mov	rcx, rdi
	nop	word ptr cs:[rax + rax]
.label_966:
	mov	ebx, dword ptr [rax + rcx*4 - 4]
	cmp	ebx, -1
	jne	.label_963
	dec	rcx
	jg	.label_966
	mov	ecx, dword ptr [rsp + 0x170]
	jmp	.label_968
.label_957:
	mov	rcx, qword ptr [rsp + 0x108]
	mov	rdx, qword ptr [rsp + 0x180]
	movzx	eax, byte ptr [rcx + rax]
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	mov	rcx, qword ptr [rdx + rcx*8]
	bt	rcx, rax
	jb	.label_815
	movzx	eax, al
	cmp	eax, 0xa
	je	.label_978
	mov	rbx, qword ptr [rsp + 0xe0]
	jmp	.label_810
.label_963:
	cmp	byte ptr [rsp + 0x18e], 0
	jne	.label_839
.label_817:
	cmp	ebx, 0xa
	jne	.label_848
.label_978:
	mov	ecx, 2
	cmp	byte ptr [rsp + 0x18d], 0
	jne	.label_968
	xor	ecx, ecx
	jmp	.label_968
.label_848:
	mov	rbx, qword ptr [rsp + 0xe0]
	jmp	.label_810
.label_948:
	mov	ecx, dword ptr [rsp + 0x170]
	jmp	.label_968
.label_951:
	mov	ecx, dword ptr [rsp + 0x1a0]
	and	ecx, 2
	xor	ecx, 0xa
.label_968:
	test	cl, 1
	jne	.label_815
	test	ecx, ecx
	mov	rbx, qword ptr [rsp + 0xe0]
	je	.label_810
	mov	rsi, rbx
	mov	eax, ecx
	and	eax, 4
	sete	bl
	mov	edx, ecx
	and	edx, 2
	je	.label_997
	test	bl, bl
	jne	.label_997
	mov	r15, qword ptr [r12 + 0x60]
	mov	rbx, rsi
	jmp	.label_810
.label_997:
	test	edx, edx
	jne	.label_1001
	mov	qword ptr [rsp + 0xc8], rdi
	mov	r15, qword ptr [r12 + 0x48]
	test	eax, eax
	mov	rbx, rsi
	je	.label_1002
	mov	rdx, qword ptr [r15 + 0x50]
	lea	rdi, [rsp + 0x264]
	mov	rsi, r12
	call	re_acquire_state_context
	mov	r15, rax
.label_1002:
	mov	rdi, qword ptr [rsp + 0xc8]
	jmp	.label_810
.label_1001:
	mov	r15, qword ptr [r12 + 0x58]
	mov	rbx, rsi
	jmp	.label_810
.label_839:
	mov	qword ptr [rsp + 0xc8], rdi
	mov	edi, ebx
	call	iswalnum
	mov	rdi, qword ptr [rsp + 0xc8]
	cmp	ebx, 0x5f
	je	.label_815
	test	eax, eax
	je	.label_817
.label_815:
	mov	r15, qword ptr [r12 + 0x50]
	mov	rbx, qword ptr [rsp + 0xe0]
.label_810:
	test	r15, r15
	je	.label_919
	mov	rax, qword ptr [rsp + 0x1b8]
	test	rax, rax
	mov	cl, byte ptr [rsp + 0xc7]
	mov	dl, cl
	mov	dword ptr [rsp + 0x98], edx
	je	.label_808
	mov	qword ptr [rax + rdi*8], r15
	cmp	qword ptr [r12 + 0x98], 0
	mov	al, cl
	mov	dword ptr [rsp + 0x98], eax
	jne	.label_969
.label_808:
	mov	byte ptr [rsp + 0xc7], cl
	mov	al, byte ptr [r15 + 0x68]
	mov	rbx, -1
	test	al, 0x10
	mov	ecx, 0
	jne	.label_834
.label_876:
	mov	rax, qword ptr [rsp + 0x148]
	mov	rdx, qword ptr [rsp + 0x90]
.label_975:
	mov	qword ptr [rsp + 0x68], rdx
	cmp	qword ptr [rsp + 0x168], rax
	jle	.label_811
	test	rcx, rcx
	sete	cl
	or	cl, byte ptr [rsp + 0xc6]
	mov	byte ptr [rsp + 0x67], cl
	jmp	.label_853
.label_980:
	mov	qword ptr [rsp + 0x48], rbx
	mov	qword ptr [rsp + 0x50], r13
	cmp	qword ptr [r15 + 0x10], 0
	jle	.label_901
	mov	rdi, qword ptr [rsp + 0x198]
	xor	r12d, r12d
	jmp	.label_861
.label_991:
	mov	rax, qword ptr [rsp + 0x148]
	test	rax, rax
	jle	.label_865
	mov	qword ptr [rsp + 0xb0], r15
	lea	rdx, [rax - 1]
	mov	ecx, 0xa
	cmp	qword ptr [rsp + 0x158], rdx
	je	.label_868
	cmp	dword ptr [rsp + 0x190], 2
	jl	.label_872
	mov	rcx, qword ptr [rsp + 0x110]
.label_880:
	mov	ebx, dword ptr [rcx + rax*4 - 4]
	cmp	ebx, -1
	jne	.label_878
	dec	rax
	jg	.label_880
	mov	ecx, dword ptr [rsp + 0x170]
	jmp	.label_868
.label_850:
	cmp	qword ptr [rsp + 0xb0], r15
	mov	rdi, qword ptr [rsp + 0xc8]
	je	.label_884
	mov	dword ptr [rsp + 0x98], 0
.label_884:
	cmove	rdi, r12
	jmp	.label_887
.label_872:
	mov	rax, qword ptr [rsp + 0x108]
	mov	rcx, qword ptr [rsp + 0x180]
	movzx	eax, byte ptr [rax + rdx]
	mov	dl, al
	shr	dl, 6
	movzx	edx, dl
	mov	rdx, qword ptr [rcx + rdx*8]
	mov	ecx, 1
	bt	rdx, rax
	jb	.label_868
	xor	ecx, ecx
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_868
	jmp	.label_900
.label_878:
	cmp	byte ptr [rsp + 0x18e], 0
	jne	.label_962
.label_959:
	xor	ecx, ecx
	cmp	ebx, 0xa
	jne	.label_868
.label_900:
	mov	ecx, 2
	cmp	byte ptr [rsp + 0x18d], 0
	jne	.label_868
	xor	ecx, ecx
	jmp	.label_868
.label_865:
	mov	qword ptr [rsp + 0xb0], r15
	mov	ecx, dword ptr [rsp + 0x170]
.label_868:
	and	ecx, 1
	shl	rcx, 8
	or	rcx, rbp
	mov	r15, qword ptr [r12 + rcx*8]
	mov	rbx, qword ptr [rsp + 0x48]
	jmp	.label_833
.label_898:
	mov	r15, rdi
	mov	edi, ebx
	call	iswalnum
	cmp	ebx, 0x5f
	mov	ecx, 1
	je	.label_916
	test	eax, eax
	mov	rdi, r15
	mov	r15, qword ptr [rsp + 0xb0]
	je	.label_918
	jmp	.label_888
.label_916:
	mov	rdi, r15
	mov	r15, qword ptr [rsp + 0xb0]
	jmp	.label_888
.label_861:
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rdi]
	mov	rbp, rsi
	shl	rbp, 4
	mov	r13d, dword ptr [rax + rbp + 8]
	test	r13d, 0x100000
	je	.label_803
	shr	r13d, 8
	test	r13w, 0x3ff
	je	.label_932
	mov	rax, qword ptr [rsp + 0x148]
	test	rax, rax
	js	.label_936
	cmp	qword ptr [rsp + 0x158], rax
	je	.label_939
	cmp	dword ptr [rsp + 0x190], 2
	jl	.label_941
	mov	rcx, qword ptr [rsp + 0x110]
	inc	rax
.label_949:
	mov	ebx, dword ptr [rcx + rax*4 - 4]
	cmp	ebx, -1
	jne	.label_945
	dec	rax
	test	rax, rax
	jg	.label_949
	mov	ecx, dword ptr [rsp + 0x170]
	jmp	.label_952
.label_941:
	mov	rcx, qword ptr [rsp + 0x108]
	mov	rdx, qword ptr [rsp + 0x180]
	movzx	eax, byte ptr [rcx + rax]
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	mov	rdx, qword ptr [rdx + rcx*8]
	xor	ecx, ecx
	bt	rdx, rax
	jae	.label_955
	mov	ecx, 1
	xor	edx, edx
	jmp	.label_892
.label_945:
	cmp	byte ptr [rsp + 0x18e], 0
	jne	.label_965
.label_987:
	xor	ecx, ecx
	cmp	ebx, 0xa
	je	.label_946
	jmp	.label_952
.label_955:
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_952
.label_946:
	mov	ecx, 2
	cmp	byte ptr [rsp + 0x18d], 0
	jne	.label_952
	xor	ecx, ecx
	jmp	.label_952
.label_936:
	mov	ecx, dword ptr [rsp + 0x170]
	jmp	.label_952
.label_939:
	mov	ecx, dword ptr [rsp + 0x1a0]
	and	ecx, 2
	xor	ecx, 0xa
.label_952:
	mov	eax, ecx
	and	eax, 1
	sete	dl
	test	r13b, 4
	je	.label_892
	test	eax, eax
	je	.label_803
	jmp	.label_892
.label_965:
	mov	qword ptr [rsp + 0x40], rsi
	mov	qword ptr [rsp + 0x38], rdi
	mov	edi, ebx
	call	iswalnum
	xor	edx, edx
	cmp	ebx, 0x5f
	mov	ecx, 1
	je	.label_984
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rsp + 0x40]
	je	.label_987
	jmp	.label_892
.label_984:
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rsp + 0x40]
.label_892:
	mov	rax, qword ptr [rdi]
	mov	eax, dword ptr [rax + rbp + 8]
	test	dl, dl
	jne	.label_993
	mov	edx, eax
	and	edx, 0x800
	jne	.label_803
.label_993:
	test	cl, 2
	jne	.label_996
	mov	edx, eax
	and	edx, 0x2000
	jne	.label_803
.label_996:
	test	cl, 8
	jne	.label_932
	shr	eax, 8
	test	al, al
	js	.label_803
.label_932:
	mov	rcx, qword ptr [rsp + 0x148]
	mov	rbx, rdi
	lea	rdx, [rsp + 0x100]
	mov	rbp, rsi
	call	check_node_accept_bytes
	mov	rcx, rbp
	mov	rdi, rbx
	test	eax, eax
	je	.label_803
	mov	qword ptr [rsp + 0x40], rcx
	mov	rbp, rdi
	movsxd	rsi, eax
	add	rsi, qword ptr [rsp + 0x148]
	mov	ecx, dword ptr [rsp + 0x1e0]
	cmp	ecx, eax
	cmovl	ecx, eax
	mov	dword ptr [rsp + 0x1e0], ecx
	mov	rbx, qword ptr [rsp + 0x1c0]
	mov	rcx, qword ptr [rsp + 0x140]
	mov	rax, qword ptr [rsp + 0x158]
	cmp	rcx, rsi
	jg	.label_806
	cmp	rcx, rax
	jl	.label_820
.label_806:
	mov	rcx, qword ptr [rsp + 0x130]
	cmp	rcx, rsi
	jg	.label_822
	cmp	rcx, rax
	jge	.label_822
.label_820:
	mov	r13, rsi
	lea	esi, [r13 + 1]
	lea	rdi, [rsp + 0x100]
	call	extend_buffers
	mov	rsi, r13
	test	eax, eax
	jne	.label_828
.label_822:
	mov	rdx, rsi
	sub	rdx, rbx
	jle	.label_974
	mov	rax, qword ptr [rsp + 0x1b8]
	lea	rdi, [rax + rbx*8 + 8]
	shl	rdx, 3
	mov	rbx, rsi
	xor	esi, esi
	call	memset
	mov	rsi, rbx
	mov	qword ptr [rsp + 0x1c0], rsi
.label_974:
	mov	dword ptr [rsp + 0x248], 0
	mov	r13, rbp
	mov	rax, qword ptr [r13 + 0x18]
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rax, qword ptr [rax + rdx*8]
	lea	rdx, [rax + rax*2]
	shl	rdx, 3
	add	rdx, qword ptr [r13 + 0x30]
	mov	rax, qword ptr [rsp + 0x1b8]
	mov	rbp, qword ptr [rax + rsi*8]
	test	rbp, rbp
	je	.label_841
	mov	rbx, rsi
	mov	rsi, qword ptr [rbp + 0x50]
	lea	rdi, [rsp + 0x210]
	call	re_node_set_init_union
	mov	rsi, rbx
	mov	dword ptr [rsp + 0x248], eax
	test	eax, eax
	je	.label_859
	jmp	.label_862
.label_841:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x220], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x210], xmm0
.label_859:
	test	rsi, rsi
	jle	.label_867
	lea	rax, [rsi - 1]
	cmp	qword ptr [rsp + 0x158], rax
	lea	rdi, [rsp + 0x248]
	je	.label_869
	cmp	dword ptr [rsp + 0x190], 2
	mov	r15, qword ptr [rsp + 0xb0]
	jl	.label_831
	mov	rax, qword ptr [rsp + 0x110]
	mov	rcx, rsi
.label_846:
	mov	ebx, dword ptr [rax + rcx*4 - 4]
	cmp	ebx, -1
	jne	.label_881
	dec	rcx
	jg	.label_846
	mov	qword ptr [rsp + 0x40], rsi
	mov	ecx, dword ptr [rsp + 0x170]
	jmp	.label_888
.label_831:
	mov	qword ptr [rsp + 0x40], rsi
	mov	rcx, qword ptr [rsp + 0x108]
	mov	rdx, qword ptr [rsp + 0x180]
	movzx	eax, byte ptr [rcx + rax]
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	mov	rdx, qword ptr [rdx + rcx*8]
	mov	ecx, 1
	bt	rdx, rax
	jb	.label_888
	xor	ecx, ecx
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_888
	jmp	.label_897
.label_881:
	mov	qword ptr [rsp + 0x40], rsi
	cmp	byte ptr [rsp + 0x18e], 0
	jne	.label_898
.label_918:
	xor	ecx, ecx
	cmp	ebx, 0xa
	jne	.label_888
.label_897:
	mov	ecx, 2
	cmp	byte ptr [rsp + 0x18d], 0
	jne	.label_888
	xor	ecx, ecx
	jmp	.label_888
.label_867:
	mov	qword ptr [rsp + 0x40], rsi
	mov	ecx, dword ptr [rsp + 0x170]
	lea	rdi, [rsp + 0x248]
	mov	r15, qword ptr [rsp + 0xb0]
	jmp	.label_888
.label_869:
	mov	qword ptr [rsp + 0x40], rsi
	mov	ecx, dword ptr [rsp + 0x1a0]
	and	ecx, 2
	xor	ecx, 0xa
	mov	r15, qword ptr [rsp + 0xb0]
.label_888:
	mov	rsi, r13
	lea	rdx, [rsp + 0x210]
	call	re_acquire_state_context
	test	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x1b8]
	mov	rdx, qword ptr [rsp + 0x40]
	mov	qword ptr [rcx + rdx*8], rax
	je	.label_821
	mov	rdi, qword ptr [rsp + 0x220]
	mov	rbx, rdx
	call	free
	mov	rdx, rbx
.label_821:
	mov	rax, qword ptr [rsp + 0x1b8]
	cmp	qword ptr [rax + rdx*8], 0
	mov	rdi, r13
	jne	.label_803
	mov	eax, dword ptr [rsp + 0x248]
	test	eax, eax
	jne	.label_928
.label_803:
	inc	r12
	cmp	r12, qword ptr [r15 + 0x10]
	jl	.label_861
.label_901:
	mov	dword ptr [rsp + 0x264], 0
	mov	r13, qword ptr [rsp + 0x50]
	mov	rbx, qword ptr [rsp + 0x48]
	jmp	.label_935
.label_928:
	mov	qword ptr [rsp + 0xb0], r15
	jmp	.label_862
.label_828:
	mov	qword ptr [rsp + 0xb0], r15
	mov	dword ptr [rsp + 0x248], eax
.label_862:
	mov	dword ptr [rsp + 0x264], eax
	xor	r15d, r15d
	mov	r13, qword ptr [rsp + 0x50]
	mov	rbx, qword ptr [rsp + 0x48]
	jmp	.label_833
.label_962:
	mov	edi, ebx
	call	iswalnum
	cmp	ebx, 0x5f
	mov	ecx, 1
	je	.label_868
	test	eax, eax
	je	.label_959
	jmp	.label_868
.label_853:
	mov	qword ptr [rsp + 0xb0], r15
	mov	qword ptr [rsp + 0xc8], rdi
	lea	rbp, [rax + 1]
	mov	rdx, qword ptr [rsp + 0x140]
	mov	rcx, qword ptr [rsp + 0x158]
	cmp	rbp, rdx
	jl	.label_960
	cmp	rdx, rcx
	jl	.label_971
.label_960:
	mov	rdx, qword ptr [rsp + 0x130]
	cmp	rbp, rdx
	jl	.label_972
	cmp	rdx, rcx
	jge	.label_972
.label_971:
	add	eax, 2
	lea	rdi, [rsp + 0x100]
	mov	esi, eax
	call	extend_buffers
	mov	dword ptr [rsp + 0x264], eax
	test	eax, eax
	jne	.label_977
.label_972:
	mov	qword ptr [rsp + 0x88], rbp
	test	byte ptr [r15 + 0x68], 0x20
	jne	.label_980
.label_935:
	mov	rax, qword ptr [rsp + 0x148]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x148], rcx
	mov	rcx, qword ptr [rsp + 0x108]
	movzx	ebp, byte ptr [rcx + rax]
.label_995:
	mov	rax, qword ptr [r15 + 0x58]
	test	rax, rax
	jne	.label_988
	mov	qword ptr [rsp + 0x48], rbx
	mov	r12, qword ptr [r15 + 0x60]
	test	r12, r12
	jne	.label_991
	mov	rdi, qword ptr [rsp + 0x198]
	mov	rsi, r15
	call	build_trtable
	test	al, al
	mov	rbx, qword ptr [rsp + 0x48]
	jne	.label_995
	mov	qword ptr [rsp + 0xb0], r15
	mov	dword ptr [rsp + 0x264], 0xc
	xor	r15d, r15d
	jmp	.label_833
.label_988:
	mov	qword ptr [rsp + 0xb0], r15
	mov	r15, qword ptr [rax + rbp*8]
.label_833:
	cmp	qword ptr [rsp + 0x1b8], 0
	mov	r12, qword ptr [rsp + 0x88]
	je	.label_1000
	lea	rdi, [rsp + 0x264]
	lea	rsi, [rsp + 0x100]
	mov	rdx, r15
	call	merge_state_with_log
	mov	r15, rax
.label_1000:
	mov	rdi, qword ptr [rsp + 0xb8]
	test	r15, r15
	jne	.label_809
	cmp	dword ptr [rsp + 0x264], 0
	jne	.label_807
	mov	rax, qword ptr [rsp + 0x1b8]
	test	rax, rax
	setne	cl
	and	cl, byte ptr [rsp + 0x67]
	movzx	ecx, cl
	cmp	ecx, 1
	je	.label_812
	jmp	.label_819
.label_844:
	mov	rax, qword ptr [rsp + 0x1b8]
	mov	rdi, rbp
.label_812:
	mov	rdx, qword ptr [rsp + 0x148]
	mov	rcx, qword ptr [rsp + 0x1c0]
	nop	word ptr cs:[rax + rax]
.label_875:
	cmp	rdx, rcx
	jge	.label_829
	lea	rsi, [rdx + 1]
	mov	qword ptr [rsp + 0x148], rsi
	cmp	qword ptr [rax + rdx*8 + 8], 0
	mov	rdx, rsi
	je	.label_875
	mov	rbp, rdi
	xor	edx, edx
	lea	rdi, [rsp + 0x264]
	lea	rsi, [rsp + 0x100]
	call	merge_state_with_log
	mov	r15, rax
	test	r15, r15
	jne	.label_842
	mov	eax, dword ptr [rsp + 0x264]
	test	eax, eax
	je	.label_844
.label_842:
	test	r15, r15
	je	.label_849
.label_809:
	mov	eax, dword ptr [rsp + 0x98]
	test	al, 1
	jne	.label_850
	mov	rdi, qword ptr [rsp + 0xc8]
.label_887:
	mov	al, byte ptr [r15 + 0x68]
	test	al, 0x10
	je	.label_854
	test	al, al
	jns	.label_856
	mov	rdx, qword ptr [rsp + 0x148]
	mov	rbp, rdi
	lea	rdi, [rsp + 0x100]
	mov	rsi, r15
	call	check_halt_state_context
	mov	rdi, rbp
	test	rax, rax
	jne	.label_856
.label_854:
	mov	rax, qword ptr [rsp + 0x148]
	cmp	qword ptr [rsp + 0x168], rax
	jg	.label_853
	jmp	.label_811
.label_856:
	mov	rax, qword ptr [rsp + 0x148]
	cmp	byte ptr [rsp + 0xc6], 0
	mov	rbx, rax
	mov	ecx, 1
	mov	edx, 0
	mov	rbp, qword ptr [rsp + 0xb8]
	jne	.label_975
	jmp	.label_877
.label_829:
	mov	rdi, qword ptr [rsp + 0xc8]
.label_811:
	mov	rax, qword ptr [rsp + 0x68]
	test	rax, rax
	je	.label_992
	add	qword ptr [rax], rdi
	mov	rax, rbx
	jmp	.label_855
.label_992:
	mov	rax, rbx
.label_855:
	mov	rbp, qword ptr [rsp + 0xb8]
.label_877:
	cmp	rax, -1
	mov	rbx, qword ptr [rsp + 0xd0]
	je	.label_836
	mov	r12d, 0xc
	cmp	rax, -2
	je	.label_816
.label_814:
	mov	qword ptr [rsp + 0xb8], rbp
	mov	qword ptr [rsp + 0x50], r13
	mov	qword ptr [rsp + 0xd0], rbx
	mov	qword ptr [rsp + 0x1a8], rax
	mov	rbx, qword ptr [rsp + 0x80]
	mov	cl, byte ptr [rbx + 0x38]
	cmp	qword ptr [rsp + 0x78], 2
	mov	rbp, qword ptr [rsp + 0xf8]
	jb	.label_890
	mov	dl, cl
	and	dl, 0x10
	je	.label_904
.label_890:
	cmp	qword ptr [rbp + 0x98], 0
	je	.label_905
.label_904:
	mov	rcx, qword ptr [rsp + 0x1b8]
	mov	rsi, qword ptr [rcx + rax*8]
	lea	rdi, [rsp + 0x100]
	mov	rdx, rax
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x1b0], rax
	mov	cl, byte ptr [rbx + 0x38]
.label_905:
	cmp	qword ptr [rsp + 0x78], 2
	mov	r9, qword ptr [rsp + 0xa8]
	jb	.label_911
	and	cl, 0x10
	jne	.label_911
	test	byte ptr [rbp + 0xb0], 1
	jne	.label_914
.label_911:
	cmp	qword ptr [rbp + 0x98], 0
	je	.label_835
.label_914:
	mov	rbp, qword ptr [rsp + 0x1a8]
	movabs	rax, 0x1ffffffffffffffe
	cmp	rbp, rax
	ja	.label_807
	mov	qword ptr [rsp + 0x80], rbx
	mov	r13, qword ptr [rsp + 0x198]
	mov	rax, qword ptr [rsp + 0x1b0]
	mov	qword ptr [rsp + 0xb0], rax
	lea	rbx, [rbp*8 + 8]
	mov	rdi, rbx
	call	malloc
	mov	r12, rax
	test	r12, r12
	mov	r15d, 0
	je	.label_934
	cmp	qword ptr [r13 + 0x98], 0
	je	.label_938
	mov	qword ptr [rsp + 0x98], r13
	mov	rdi, rbx
	call	malloc
	mov	r15, rax
	test	r15, r15
	je	.label_944
	xor	esi, esi
	mov	rdi, r15
	mov	rdx, rbx
	call	memset
	mov	qword ptr [rsp + 0x210], r12
	mov	qword ptr [rsp + 0x218], r15
	mov	rax, qword ptr [rsp + 0xb0]
	mov	qword ptr [rsp + 0x220], rax
	mov	qword ptr [rsp + 0x228], rbp
	lea	rax, [rsp + 0x230]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0x100]
	lea	rsi, [rsp + 0x210]
	call	sift_states_backward
	mov	rbx, r12
	mov	qword ptr [rsp + 0xc8], rbx
	mov	r12d, eax
	test	r12d, r12d
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	r13, qword ptr [rsp + 0x50]
	jne	.label_823
.label_885:
	mov	rsi, qword ptr [rbx]
	test	rsi, rsi
	mov	rax, rbx
	jne	.label_979
	cmp	qword ptr [r15], 0
	mov	esi, 0
	jne	.label_979
	test	rbp, rbp
	jle	.label_982
	mov	rax, qword ptr [rsp + 0x1b8]
	dec	rbp
	nop	word ptr cs:[rax + rax]
.label_908:
	mov	rsi, qword ptr [rax + rbp*8]
	test	rsi, rsi
	je	.label_986
	test	byte ptr [rsi + 0x68], 0x10
	jne	.label_990
.label_986:
	lea	rcx, [rbp - 1]
	inc	rbp
	cmp	rbp, 2
	mov	rbp, rcx
	jge	.label_908
	jmp	.label_982
.label_990:
	lea	r12, [rsp + 0x100]
	mov	rdi, r12
	mov	rdx, rbp
	call	check_halt_state_context
	mov	qword ptr [rsp + 0xb0], rax
	lea	rdx, [rbp*8 + 8]
	xor	esi, esi
	mov	rdi, r15
	call	memset
	mov	rbx, qword ptr [rsp + 0xc8]
	mov	qword ptr [rsp + 0x210], rbx
	mov	qword ptr [rsp + 0x218], r15
	mov	rax, qword ptr [rsp + 0xb0]
	mov	qword ptr [rsp + 0x220], rax
	mov	qword ptr [rsp + 0x228], rbp
	lea	rax, [rsp + 0x230]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rdi, r12
	lea	rsi, [rsp + 0x210]
	call	sift_states_backward
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	r12d, eax
	test	r12d, r12d
	je	.label_885
	jmp	.label_823
.label_938:
	mov	qword ptr [rsp + 0x210], r12
	mov	qword ptr [rsp + 0xc8], r12
	mov	qword ptr [rsp + 0x218], 0
	mov	rax, qword ptr [rsp + 0xb0]
	mov	qword ptr [rsp + 0x220], rax
	mov	qword ptr [rsp + 0x228], rbp
	lea	rax, [rsp + 0x230]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0x100]
	lea	rsi, [rsp + 0x210]
	call	sift_states_backward
	mov	r12d, eax
	test	r12d, r12d
	mov	r15d, 0
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	r13, qword ptr [rsp + 0x50]
	jne	.label_823
	mov	rax, qword ptr [rsp + 0xc8]
	cmp	qword ptr [rax], 0
	mov	r15d, 0
	jne	.label_824
.label_982:
	mov	qword ptr [rsp + 0xe0], rdx
	mov	rdi, qword ptr [rsp + 0xc8]
	call	free
	mov	rdi, r15
	call	free
	mov	rbx, qword ptr [rsp + 0xd0]
	mov	rbp, qword ptr [rsp + 0xb8]
.label_836:
	lea	rdi, [rsp + 0x100]
	call	match_ctx_clean
.label_926:
	mov	r15, qword ptr [rsp + 0x208]
	add	r15, qword ptr [rsp + 0xe8]
	mov	qword ptr [rsp + 0x208], r15
	cmp	r15, r13
	mov	r12d, 1
	jl	.label_816
	cmp	rbp, r15
	jge	.label_870
	jmp	.label_816
.label_834:
	test	al, al
	js	.label_874
	cmp	byte ptr [rsp + 0xc6], 0
	mov	rbx, rdi
	mov	ecx, 1
	jne	.label_876
	mov	rax, rdi
	jmp	.label_877
.label_969:
	mov	qword ptr [rsp + 0xb8], rbp
	mov	qword ptr [rsp + 0xe0], rbx
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	jle	.label_882
	mov	rbp, qword ptr [rsp + 0x198]
	xor	ebx, ebx
	jmp	.label_886
.label_874:
	mov	r12, rdi
	lea	rdi, [rsp + 0x100]
	mov	rsi, r15
	mov	rdx, r12
	call	check_halt_state_context
	cmp	rax, 1
	sbb	rdx, rdx
	test	rax, rax
	sete	al
	setne	cl
	movzx	ecx, cl
	or	al, byte ptr [rsp + 0xc6]
	je	.label_921
	or	rdx, r12
	mov	rdi, r12
	mov	rbx, rdx
	jmp	.label_876
.label_921:
	mov	rax, r12
	jmp	.label_877
.label_819:
	mov	qword ptr [rsp + 0xb8], rdi
	mov	rdi, qword ptr [rsp + 0xc8]
	jmp	.label_811
.label_979:
	test	rbp, rbp
	js	.label_802
	xor	ebx, ebx
	jmp	.label_909
.label_940:
	mov	rax, qword ptr [rsp + 0xc8]
	mov	rsi, qword ptr [rax + rbx*8 + 8]
	inc	rbx
.label_909:
	mov	rdx, qword ptr [r15 + rbx*8]
	test	rsi, rsi
	je	.label_912
	mov	qword ptr [rsp + 0xc8], rax
	test	rdx, rdx
	je	.label_913
	add	rsi, 8
	add	rdx, 8
	lea	r13, [rsp + 0x248]
	mov	rdi, r13
	call	re_node_set_init_union
	mov	r12d, eax
	mov	dword ptr [rsp + 0x264], r12d
	test	r12d, r12d
	jne	.label_895
	lea	rdi, [rsp + 0x264]
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rdx, r13
	call	re_acquire_state
	mov	rcx, qword ptr [rsp + 0xc8]
	mov	qword ptr [rcx + rbx*8], rax
	mov	rdi, qword ptr [rsp + 0x258]
	call	free
	mov	r12d, dword ptr [rsp + 0x264]
	test	r12d, r12d
	je	.label_913
	jmp	.label_895
.label_912:
	mov	qword ptr [rax + rbx*8], rdx
	mov	qword ptr [rsp + 0xc8], rax
.label_913:
	cmp	rbx, rbp
	jl	.label_940
	jmp	.label_942
.label_973:
	mov	rdi, qword ptr [rsp + 0x1f8]
	mov	rsi, r13
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_852
	add	r13, r13
	mov	qword ptr [rsp + 0x1f8], rax
	mov	qword ptr [rsp + 0x1f0], r13
	jmp	.label_950
.label_886:
	mov	rcx, qword ptr [r15 + 0x18]
	mov	r12, qword ptr [rcx + rbx*8]
	mov	rcx, qword ptr [rbp]
	mov	rdx, r12
	shl	rdx, 4
	movzx	esi, byte ptr [rcx + rdx + 8]
	cmp	esi, 8
	jne	.label_958
	mov	rcx, qword ptr [rcx + rdx]
	cmp	rcx, 0x3f
	jg	.label_958
	mov	rdx, qword ptr [rbp + 0xa0]
	bt	rdx, rcx
	jae	.label_958
	mov	qword ptr [rsp + 0xc8], rdi
	mov	qword ptr [rsp + 0x50], r13
	mov	r13, qword ptr [rsp + 0x1e8]
	cmp	r13, qword ptr [rsp + 0x1f0]
	je	.label_973
.label_950:
	mov	edi, 1
	mov	esi, 0x30
	call	rpl_calloc
	mov	rcx, qword ptr [rsp + 0x1e8]
	mov	rdx, qword ptr [rsp + 0x1f8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rsp + 0x1f8]
	mov	rax, qword ptr [rax + rcx*8]
	test	rax, rax
	je	.label_852
	mov	qword ptr [rax + 8], r12
	inc	rcx
	mov	qword ptr [rsp + 0x1e8], rcx
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [r15 + 0x10]
	mov	r13, qword ptr [rsp + 0x50]
	mov	rdi, qword ptr [rsp + 0xc8]
.label_958:
	inc	rbx
	cmp	rbx, rax
	jl	.label_886
.label_882:
	mov	rbp, r13
	mov	dword ptr [rsp + 0x264], 0
	test	byte ptr [r15 + 0x68], 0x40
	jne	.label_994
	mov	dword ptr [rsp + 0x98], 0
	mov	r13, rbp
	mov	rbp, qword ptr [rsp + 0xb8]
	mov	cl, byte ptr [rsp + 0xc7]
	jmp	.label_808
.label_994:
	mov	r12, rdi
	lea	rsi, [r15 + 8]
	lea	rdi, [rsp + 0x100]
	call	transit_state_bkref
	mov	dword ptr [rsp + 0x264], eax
	test	eax, eax
	jne	.label_804
	mov	dword ptr [rsp + 0x98], 0
	mov	r13, rbp
	mov	rbp, qword ptr [rsp + 0xb8]
	mov	cl, byte ptr [rsp + 0xc7]
	mov	rdi, r12
	jmp	.label_808
.label_852:
	mov	eax, 0xc
	mov	rbx, qword ptr [rsp + 0xd0]
	mov	r13, qword ptr [rsp + 0x50]
	mov	rbp, qword ptr [rsp + 0xb8]
	jmp	.label_814
.label_802:
	mov	qword ptr [rsp + 0xc8], rax
.label_942:
	xor	r12d, r12d
.label_895:
	mov	rdi, r15
	call	free
	test	r12d, r12d
	mov	r15d, 0
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	r13, qword ptr [rsp + 0x50]
	je	.label_824
.label_823:
	mov	qword ptr [rsp + 0x50], r13
	mov	r13, rdx
	mov	rdi, qword ptr [rsp + 0xc8]
	call	free
	mov	rdi, r15
	call	free
	test	r12d, r12d
	mov	rbp, qword ptr [rsp + 0xf8]
	mov	r9, qword ptr [rsp + 0xa8]
	mov	rbx, qword ptr [rsp + 0x80]
	je	.label_835
	cmp	r12d, 1
	mov	rbx, qword ptr [rsp + 0xd0]
	mov	qword ptr [rsp + 0xe0], r13
	mov	r13, qword ptr [rsp + 0x50]
	mov	rbp, qword ptr [rsp + 0xb8]
	je	.label_836
	jmp	.label_816
.label_804:
	cdqe	
	mov	r13, rbp
	jmp	.label_855
.label_849:
	mov	rdi, qword ptr [rsp + 0xc8]
	jmp	.label_811
.label_870:
	mov	rax, qword ptr [rsp + 0xa0]
	cmp	eax, 4
	ja	.label_860
	jmp	qword ptr [word ptr [+ (rax * 8) + label_864]]
.label_2706:
	cmp	r15, r13
	jge	.label_964
	mov	rax, r15
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rdx, qword ptr [rsp + 0xd8]
	jmp	.label_866
.label_2708:
	cmp	r15, rbp
	mov	rcx, qword ptr [rsp + 0xd8]
	jge	.label_851
.label_879:
	movzx	eax, byte ptr [rcx + r15]
	movzx	eax, byte ptr [rbx + rax]
	cmp	byte ptr [r14 + rax], 0
	jne	.label_851
	inc	r15
	mov	qword ptr [rsp + 0x208], r15
	cmp	r15, rbp
	jl	.label_879
	jmp	.label_851
.label_860:
	mov	rax, qword ptr [rsp + 0x128]
	jmp	.label_883
	nop	word ptr cs:[rax + rax]
.label_863:
	add	r15, qword ptr [rsp + 0xe8]
	mov	qword ptr [rsp + 0x208], r15
	cmp	r15, r13
	mov	r12d, 1
	jl	.label_816
	cmp	r15, rbp
	jle	.label_883
	jmp	.label_816
.label_907:
	lea	rdi, [rsp + 0x100]
	mov	rsi, r15
	mov	edx, dword ptr [rsp + 0x2b0]
	call	re_string_reconstruct
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_816
	mov	r15, qword ptr [rsp + 0x208]
	mov	rax, qword ptr [rsp + 0x128]
	mov	rcx, r15
	sub	rcx, rax
	jmp	.label_903
	nop	word ptr cs:[rax + rax]
.label_883:
	mov	rcx, r15
	sub	rcx, rax
	cmp	rcx, qword ptr [rsp + 0x138]
	jae	.label_907
.label_903:
	mov	rdx, qword ptr [rsp + 0xf0]
	cmp	r15, rdx
	mov	edx, 0
	jge	.label_910
	mov	rdx, qword ptr [rsp + 0x108]
	movzx	edx, byte ptr [rdx + rcx]
.label_910:
	cmp	byte ptr [r14 + rdx], 0
	je	.label_863
	jmp	.label_917
.label_2707:
	cmp	r15, rbp
	mov	rcx, qword ptr [rsp + 0xd8]
	jge	.label_851
	nop	dword ptr [rax + rax]
.label_924:
	movzx	eax, byte ptr [rcx + r15]
	cmp	byte ptr [r14 + rax], 0
	jne	.label_851
	inc	r15
	mov	qword ptr [rsp + 0x208], r15
	cmp	r15, rbp
	jl	.label_924
.label_851:
	mov	qword ptr [rsp + 0xd8], rcx
	cmp	r15, rbp
	jne	.label_917
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0xf0]
	cmp	rbp, rcx
	mov	rcx, qword ptr [rsp + 0xd8]
	jge	.label_929
	movzx	eax, byte ptr [rcx + rbp]
.label_929:
	test	rbx, rbx
	je	.label_937
	movzx	eax, byte ptr [rbx + rax]
.label_937:
	mov	r12d, 1
	cmp	byte ptr [r14 + rax], 0
	mov	r15, rbp
	jne	.label_917
	jmp	.label_816
.label_964:
	test	rbx, rbx
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rdx, qword ptr [rsp + 0xd8]
	je	.label_943
	nop	
.label_956:
	cmp	r15, rcx
	mov	eax, 0
	jge	.label_947
	movzx	eax, byte ptr [rdx + r15]
.label_947:
	movzx	eax, byte ptr [rbx + rax]
	cmp	byte ptr [r14 + rax], 0
	jne	.label_953
	lea	rax, [r15 - 1]
	mov	qword ptr [rsp + 0x208], rax
	cmp	r15, r13
	mov	r15, rax
	jg	.label_956
	jmp	.label_866
.label_943:
	cmp	r15, rcx
	mov	eax, 0
	jge	.label_961
	movzx	eax, byte ptr [rdx + r15]
.label_961:
	cmp	byte ptr [r14 + rax], 0
	jne	.label_923
	lea	rax, [r15 - 1]
	mov	qword ptr [rsp + 0x208], rax
	cmp	r15, r13
	mov	r15, rax
	jg	.label_943
	jmp	.label_866
.label_953:
	mov	rax, r15
	jmp	.label_866
.label_923:
	mov	rax, r15
.label_866:
	mov	qword ptr [rsp + 0xd8], rdx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	r12d, 1
	cmp	rax, r13
	mov	r15, rax
	jl	.label_816
.label_917:
	lea	rdi, [rsp + 0x100]
	mov	rsi, r15
	mov	edx, dword ptr [rsp + 0x2b0]
	call	re_string_reconstruct
	mov	r12d, eax
	test	r12d, r12d
	je	.label_981
	jmp	.label_816
.label_977:
	cmp	eax, 0xc
	jne	.label_983
.label_807:
	mov	r12d, 0xc
.label_816:
	mov	rdi, qword ptr [rsp + 0x1b8]
	call	free
	mov	rax, qword ptr [rsp + 0xf8]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_989
	lea	rdi, [rsp + 0x100]
	call	match_ctx_clean
	mov	rdi, qword ptr [rsp + 0x1f8]
	call	free
	mov	rdi, qword ptr [rsp + 0x1d8]
	call	free
.label_989:
	mov	rdi, qword ptr [rsp + 0x110]
	call	free
	mov	rdi, qword ptr [rsp + 0x118]
	call	free
	cmp	byte ptr [rsp + 0x18b], 0
	je	.label_827
	mov	rdi, qword ptr [rsp + 0x108]
	call	free
.label_827:
	mov	eax, r12d
	add	rsp, 0x268
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_919:
	cmp	dword ptr [rsp + 0x264], 0xc
	je	.label_807
	mov	edi, OFFSET FLAT:.str.25
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x435
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	call	__assert_fail
.label_899:
	xor	r15d, r15d
	jmp	.label_813
.label_824:
	mov	rdi, qword ptr [rsp + 0x1b8]
	call	free
	mov	rax, qword ptr [rsp + 0xc8]
	mov	qword ptr [rsp + 0x1b8], rax
	mov	rax, qword ptr [rsp + 0xb0]
	mov	qword ptr [rsp + 0x1b0], rax
	mov	qword ptr [rsp + 0x1a8], rbp
	mov	rbp, qword ptr [rsp + 0xf8]
	mov	r9, qword ptr [rsp + 0xa8]
	mov	rbx, qword ptr [rsp + 0x80]
.label_835:
	cmp	r9, qword ptr [rsp + 0x2a0]
	lea	r13, [rsp + 0x138]
	jne	.label_830
	mov	qword ptr [rsp + 0xf8], rbp
	xor	r12d, r12d
	jmp	.label_816
.label_830:
	mov	r8, rbx
	mov	qword ptr [rsp + 0xf8], rbp
	cmp	qword ptr [rsp + 0x78], 2
	jb	.label_837
	mov	rsi, qword ptr [rsp + 0x2a0]
	lea	edx, [rsi + 7]
	sub	edx, r9d
	lea	rax, [rsi - 2]
	sub	rax, r9
	mov	ecx, 1
	test	dl, 7
	je	.label_847
	mov	rcx, qword ptr [rsp + 0x2a8]
	lea	rdx, [rcx + 0x10]
	lea	esi, [rsi + 7]
	sub	esi, r9d
	and	esi, 7
	xor	edi, edi
.label_858:
	mov	rcx, rdi
	mov	qword ptr [rdx + 8], -1
	mov	qword ptr [rdx], -1
	lea	rdi, [rcx + 1]
	add	rdx, 0x10
	cmp	rsi, rdi
	jne	.label_858
	add	rcx, 2
.label_847:
	cmp	rax, 7
	jb	.label_837
	mov	rax, qword ptr [rsp + 0x2a0]
	sub	rax, r9
	sub	rax, rcx
	shl	rcx, 4
	mov	rdx, qword ptr [rsp + 0x2a8]
	lea	rcx, [rcx + rdx + 0x70]
.label_871:
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
	jne	.label_871
.label_837:
	mov	rbp, r9
	mov	rax, qword ptr [rsp + 0x2a8]
	mov	rcx, rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [rsp + 0x1a8]
	mov	qword ptr [rcx + 8], rax
	mov	r14, rcx
	cmp	qword ptr [rsp + 0x78], 2
	jb	.label_902
	mov	al, byte ptr [r8 + 0x38]
	and	al, 0x10
	jne	.label_902
	mov	rax, qword ptr [rsp + 0xf8]
	test	byte ptr [rax + 0xb0], 1
	jne	.label_818
	xor	eax, eax
	jmp	.label_840
.label_944:
	mov	rax, r12
	mov	qword ptr [rsp + 0x58], rax
.label_934:
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	rdi, r15
	call	free
	jmp	.label_807
.label_818:
	cmp	qword ptr [rax + 0x98], 0
	setg	al
.label_840:
	mov	rdi, qword ptr [r8]
	movzx	r8d, al
	lea	rsi, [rsp + 0x100]
	mov	rdx, qword ptr [rsp + 0x78]
	mov	rcx, r14
	call	set_regs
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_816
.label_902:
	cmp	byte ptr [rsp + 0x18c], 0
	jne	.label_927
	mov	rax, qword ptr [rsp + 0x208]
	mov	rcx, qword ptr [rsp + 0x2a0]
	mov	rbx, rbp
	sub	ecx, ebx
	xor	edx, edx
	test	cl, 1
	mov	r8, qword ptr [rsp + 0xf8]
	je	.label_930
	mov	rcx, qword ptr [r14]
	mov	edx, 1
	cmp	rcx, -1
	je	.label_930
	add	rcx, rax
	mov	qword ptr [r14], rcx
	add	qword ptr [r14 + 8], rax
	mov	edx, 1
.label_930:
	cmp	qword ptr [rsp + 0x70], rbx
	je	.label_845
	mov	rcx, qword ptr [rsp + 0x2a0]
	sub	rcx, rbx
	sub	rcx, rdx
	shl	rdx, 4
	lea	rdx, [rdx + r14 + 0x18]
.label_920:
	mov	rsi, qword ptr [rdx - 0x18]
	cmp	rsi, -1
	je	.label_954
	add	rsi, rax
	mov	qword ptr [rdx - 0x18], rsi
	add	qword ptr [rdx - 0x10], rax
.label_954:
	mov	rsi, qword ptr [rdx - 8]
	cmp	rsi, -1
	je	.label_896
	add	rsi, rax
	mov	qword ptr [rdx - 8], rsi
	add	qword ptr [rdx], rax
.label_896:
	add	rdx, 0x20
	add	rcx, -2
	jne	.label_920
.label_845:
	test	rbx, rbx
	jle	.label_933
	lea	rcx, [rbx - 1]
	xor	eax, eax
	test	bl, 3
	je	.label_970
	mov	rdx, qword ptr [rsp + 0x2a0]
	sub	rdx, rbx
	shl	rdx, 4
	add	rdx, r14
	mov	esi, ebx
	and	esi, 3
	xor	eax, eax
.label_985:
	inc	rax
	mov	qword ptr [rdx + 8], -1
	mov	qword ptr [rdx], -1
	add	rdx, 0x10
	cmp	rsi, rax
	jne	.label_985
.label_970:
	cmp	rcx, 3
	jb	.label_933
	mov	rcx, rbx
	sub	rcx, rax
	mov	rdx, qword ptr [rsp + 0x2a0]
	sub	rdx, rbx
	shl	rdx, 4
	add	rdx, r14
	shl	rax, 4
	add	rax, rdx
	xor	edx, edx
.label_967:
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
	jne	.label_967
.label_933:
	mov	rax, qword ptr [r8 + 0xe0]
	mov	qword ptr [rsp + 0xf8], r8
	test	rax, rax
	je	.label_998
	cmp	qword ptr [rsp + 0x78], 2
	mov	r12d, 0
	jb	.label_816
	sub	qword ptr [rsp + 0x70], rbx
	lea	rcx, [r14 + 0x18]
	xor	edx, edx
	xor	r12d, r12d
.label_832:
	mov	rsi, qword ptr [rax + rdx*8]
	cmp	rdx, rsi
	je	.label_805
	shl	rsi, 4
	mov	rsi, qword ptr [rsi + r14 + 0x10]
	mov	qword ptr [rcx - 8], rsi
	mov	rsi, qword ptr [rsp + 0xf8]
	mov	rsi, qword ptr [rsi + 0xe0]
	mov	rsi, qword ptr [rsi + rdx*8]
	shl	rsi, 4
	mov	rsi, qword ptr [rsi + r14 + 0x18]
	mov	qword ptr [rcx], rsi
.label_805:
	inc	rdx
	add	rcx, 0x10
	cmp	qword ptr [rsp + 0x70], rdx
	jne	.label_832
	jmp	.label_816
.label_998:
	xor	r12d, r12d
	jmp	.label_816
.label_927:
	mov	rax, qword ptr [rsp + 0x118]
	lea	rcx, [r14 + 8]
	mov	rdx, qword ptr [rsp + 0x78]
	mov	r8, qword ptr [rsp + 0xf8]
	mov	rbx, rbp
.label_843:
	mov	rsi, qword ptr [rcx - 8]
	cmp	rsi, -1
	je	.label_826
	mov	rdi, qword ptr [rsp + 0x130]
	cmp	rsi, rdi
	lea	rsi, [rax + rsi*8]
	cmove	rsi, r13
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rcx - 8], rsi
	mov	rbp, qword ptr [rcx]
	cmp	rbp, rdi
	lea	rdi, [rax + rbp*8]
	cmove	rdi, r13
	mov	rbp, qword ptr [rsp + 0x208]
	add	rsi, rbp
	add	rbp, qword ptr [rdi]
	mov	qword ptr [rcx - 8], rsi
	mov	qword ptr [rcx], rbp
.label_826:
	add	rcx, 0x10
	dec	rdx
	jne	.label_843
	jmp	.label_845
.label_983:
	mov	edi, OFFSET FLAT:.str.25
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x46c
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b8f0

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
	#Procedure 0x40b910

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
	mov	r15, rcx
	mov	rbx, rdi
	test	r15, r15
	mov	rbp, -1
	js	.label_1010
	mov	qword ptr [rsp + 0x30], rsi
	mov	qword ptr [rsp + 0x38], r9
	cmp	r15, rdx
	jg	.label_1010
	mov	rsi, qword ptr [rsp + 0x80]
	xor	r12d, r12d
	add	r8, r15
	cmovns	r12, r8
	cmp	r8, rdx
	cmovg	r12, rdx
	mov	qword ptr [rsp + 0x40], rdx
	movzx	r13d, byte ptr [rbx + 0x38]
	cmp	r12, r15
	mov	al, r13b
	jle	.label_1006
	test	r13b, 8
	mov	al, r13b
	jne	.label_1006
	mov	rbp, qword ptr [rbx + 0x20]
	test	rbp, rbp
	mov	al, r13b
	je	.label_1006
	mov	r14, qword ptr [rbx]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp + 0xf0], xmm0
	movups	xmmword ptr [rbp + 0xe0], xmm0
	movups	xmmword ptr [rbp + 0xd0], xmm0
	movups	xmmword ptr [rbp + 0xc0], xmm0
	movups	xmmword ptr [rbp + 0xb0], xmm0
	movups	xmmword ptr [rbp + 0xa0], xmm0
	movups	xmmword ptr [rbp + 0x90], xmm0
	movups	xmmword ptr [rbp + 0x80], xmm0
	movups	xmmword ptr [rbp + 0x70], xmm0
	movups	xmmword ptr [rbp + 0x60], xmm0
	movups	xmmword ptr [rbp + 0x50], xmm0
	movups	xmmword ptr [rbp + 0x40], xmm0
	movups	xmmword ptr [rbp + 0x30], xmm0
	movups	xmmword ptr [rbp + 0x20], xmm0
	movups	xmmword ptr [rbp + 0x10], xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	rsi, qword ptr [r14 + 0x48]
	mov	rdi, rbx
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r14 + 0x48]
	mov	rsi, qword ptr [r14 + 0x50]
	cmp	rax, rsi
	je	.label_1003
	mov	rdi, rbx
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r14 + 0x48]
.label_1003:
	mov	rsi, qword ptr [r14 + 0x58]
	cmp	rax, rsi
	je	.label_1013
	mov	rdi, rbx
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r14 + 0x48]
.label_1013:
	mov	rsi, qword ptr [r14 + 0x60]
	cmp	rax, rsi
	je	.label_1018
	mov	rdi, rbx
	mov	rdx, rbp
	call	re_compile_fastmap_iter
.label_1018:
	mov	al, byte ptr [rbx + 0x38]
	or	al, 8
	mov	byte ptr [rbx + 0x38], al
	mov	rsi, qword ptr [rsp + 0x80]
.label_1006:
	xor	edx, edx
	test	rsi, rsi
	mov	r14d, 1
	je	.label_1011
	mov	cl, al
	and	cl, 0x10
	jne	.label_1011
	and	al, 6
	movzx	eax, al
	cmp	eax, 4
	jne	.label_1028
	mov	rax, qword ptr [rsi]
	mov	r14, qword ptr [rbx + 0x30]
	cmp	rax, r14
	ja	.label_1022
	xor	ecx, ecx
	test	rax, rax
	cmovle	rsi, rcx
	mov	r14d, 1
	cmovg	r14, rax
	jmp	.label_1005
.label_1028:
	mov	r14, qword ptr [rbx + 0x30]
.label_1022:
	inc	r14
.label_1005:
	mov	rdx, rsi
.label_1011:
	mov	qword ptr [rsp + 0x28], rdx
	mov	rdi, r14
	shl	rdi, 4
	call	malloc
	mov	rdi, rbx
	mov	rbp, -2
	test	rax, rax
	mov	rdx, qword ptr [rsp + 0x40]
	je	.label_1010
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
	mov	qword ptr [rsp], r14
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rcx, r15
	mov	r8, r12
	mov	rbp, rdi
	mov	r9, qword ptr [rsp + 0x38]
	call	re_search_internal
	test	eax, eax
	je	.label_1008
	cmp	eax, 1
	sete	al
	movzx	ebp, al
	or	rbp, 0xfffffffffffffffe
	jmp	.label_1009
.label_1008:
	mov	qword ptr [rsp + 0x40], r15
	mov	rbx, qword ptr [rsp + 0x28]
	test	rbx, rbx
	je	.label_1014
	mov	r8, rbp
	mov	al, byte ptr [r8 + 0x38]
	shr	al, 1
	and	al, 3
	movzx	eax, al
	cmp	eax, 2
	je	.label_1017
	lea	r15, [r14 + 1]
	cmp	eax, 1
	je	.label_1021
	mov	qword ptr [rsp + 0x30], r13
	mov	qword ptr [rsp + 0x38], r8
	test	eax, eax
	jne	.label_1023
	lea	r13, [r15*8]
	mov	rdi, r13
	call	malloc
	mov	r12, rax
	mov	qword ptr [rbx + 8], r12
	xor	ebp, ebp
	test	r12, r12
	je	.label_1031
	mov	rdi, r13
	call	malloc
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_1025
	mov	qword ptr [rbx], r15
	mov	r12d, 1
	mov	r8, qword ptr [rsp + 0x38]
	mov	r13, qword ptr [rsp + 0x30]
	jmp	.label_1016
.label_1017:
	mov	r15, qword ptr [rbx]
	mov	r12d, 2
	cmp	r15, r14
	jae	.label_1016
	mov	edi, OFFSET FLAT:.str.24
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1fb
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
.label_1021:
	mov	rax, qword ptr [rbx]
	mov	r12d, 1
	cmp	r15, rax
	ja	.label_1024
	mov	r15, rax
.label_1016:
	test	r14, r14
	jle	.label_1029
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x10]
	xor	esi, esi
	test	r14b, 1
	je	.label_1020
	mov	rax, qword ptr [r13]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [r13 + 8]
	mov	qword ptr [rcx], rax
	mov	esi, 1
.label_1020:
	cmp	r14, 1
	je	.label_1012
	mov	rax, r14
	sub	rax, rsi
	lea	rcx, [rcx + rsi*8 + 8]
	lea	rdx, [rdx + rsi*8 + 8]
	shl	rsi, 4
	lea	rsi, [rsi + r13 + 0x18]
	nop	dword ptr [rax + rax]
.label_1019:
	mov	rbp, qword ptr [rsi - 0x18]
	mov	qword ptr [rdx - 8], rbp
	mov	rbp, qword ptr [rsi - 0x10]
	mov	qword ptr [rcx - 8], rbp
	mov	rbp, qword ptr [rsi - 8]
	mov	qword ptr [rdx], rbp
	mov	rbp, qword ptr [rsi]
	mov	qword ptr [rcx], rbp
	add	rcx, 0x10
	add	rsi, 0x20
	add	rdx, 0x10
	add	rax, -2
	jne	.label_1019
.label_1012:
	mov	r15, qword ptr [rbx]
	jmp	.label_1030
.label_1029:
	xor	r14d, r14d
.label_1030:
	cmp	r14, r15
	jae	.label_1032
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1027:
	mov	qword ptr [rcx + r14*8], -1
	mov	qword ptr [rax + r14*8], -1
	inc	r14
	cmp	r14, qword ptr [rbx]
	jb	.label_1027
.label_1032:
	mov	ebp, r12d
.label_1007:
	mov	al, byte ptr [r8 + 0x38]
	add	bpl, bpl
	and	al, 0xf9
	mov	cl, bpl
	and	cl, 6
	or	cl, al
	and	bpl, 6
	mov	byte ptr [r8 + 0x38], cl
	mov	rbp, -2
	je	.label_1009
.label_1014:
	mov	al, byte ptr [rsp + 0x88]
	mov	rbp, qword ptr [r13]
	test	al, al
	je	.label_1009
	mov	rax, qword ptr [rsp + 0x40]
	cmp	rbp, rax
	jne	.label_1026
	mov	rbp, qword ptr [r13 + 8]
	sub	rbp, rax
.label_1009:
	mov	rdi, r13
	call	free
.label_1010:
	mov	rax, rbp
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1024:
	mov	qword ptr [rsp + 0x38], r8
	mov	rdi, qword ptr [rbx + 8]
	lea	rsi, [r15*8]
	mov	qword ptr [rsp + 0x30], rsi
	call	realloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_1015
	mov	qword ptr [rsp + 0x20], rax
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rsp + 0x30]
	call	realloc
	test	rax, rax
	je	.label_1004
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx], r15
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_1016
.label_1025:
	mov	rdi, r12
	call	free
.label_1031:
	mov	r8, qword ptr [rsp + 0x38]
	mov	r13, qword ptr [rsp + 0x30]
	jmp	.label_1007
.label_1015:
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_1007
.label_1004:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_1007
.label_1023:
	mov	edi, OFFSET FLAT:.str.23_0
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1f9
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
.label_1026:
	mov	edi, OFFSET FLAT:.str.21
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1be
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_search_stub
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bdd0
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
	#Procedure 0x40bdf0
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
	js	.label_1035
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_1038
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_1035
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_1034
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [rsp + 0x20], r9
	xor	r12d, r12d
	test	r14, r14
	jle	.label_1036
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], rdx
	call	malloc
	mov	r12, rax
	test	r12, r12
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_1035
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
	jmp	.label_1034
.label_1038:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_1037
.label_1035:
	mov	rax, -2
	jmp	.label_1033
.label_1037:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_1034
.label_1036:
	mov	r13, r15
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x18]
.label_1034:
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
.label_1033:
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
	#Procedure 0x40bf20
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
	js	.label_1039
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_1042
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_1039
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_1041
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [rsp + 0x20], r9
	xor	r12d, r12d
	test	r14, r14
	jle	.label_1044
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], rdx
	call	malloc
	mov	r12, rax
	test	r12, r12
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_1039
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
	jmp	.label_1041
.label_1042:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_1040
.label_1039:
	mov	rax, -2
	jmp	.label_1043
.label_1040:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_1041
.label_1044:
	mov	r13, r15
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x18]
.label_1041:
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
.label_1043:
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
	#Procedure 0x40c060
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	mov	al, byte ptr [rdi + 0x38]
	and	al, 0xf9
	mov	r9b, al
	or	r9b, 2
	test	rdx, rdx
	je	.label_1045
	mov	al, r9b
.label_1045:
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
	#Procedure 0x40c090

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
	je	.label_1046
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x50]
	call	free
.label_1046:
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
	#Procedure 0x40c0f0

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
	jne	.label_1060
	cmp	qword ptr [r12 + 0x78], 0
	jne	.label_1060
	cmp	byte ptr [r12 + 0x8c], 0
	je	.label_1061
.label_1060:
	mov	rbx, qword ptr [r12 + 0x38]
	jmp	.label_1063
.label_1061:
	cmp	r13, r15
	jle	.label_1067
	lea	rax, [r12 + 0x78]
	mov	qword ptr [rsp + 0x10], rax
	lea	r14, [r12 + 0x20]
	jmp	.label_1049
.label_1074:
	lea	rax, [rbp + 1]
	cmp	rax, 2
	jb	.label_1080
	cmp	rbp, -2
	jne	.label_1076
	mov	rax, qword ptr [r12 + 0x40]
	cmp	rax, qword ptr [r12 + 0x58]
	jl	.label_1076
.label_1080:
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
	je	.label_1079
.label_1093:
	mov	rax, r15
	jmp	.label_1086
.label_1079:
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [r14], rax
	jmp	.label_1093
	nop	word ptr [rax + rax]
.label_1049:
	mov	qword ptr [rsp + 0x20], r13
	mov	rbp, qword ptr [r12]
	mov	rbx, qword ptr [r12 + 0x28]
	lea	rax, [rbx + r15]
	movzx	r13d, byte ptr [rbp + rax]
	test	r13b, r13b
	js	.label_1098
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_1098
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
	jmp	.label_1086
	nop	word ptr cs:[rax + rax]
.label_1098:
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
	ja	.label_1074
	mov	edi, dword ptr [rsp + 0x2c]
	call	towupper
	mov	ebx, eax
	cmp	ebx, dword ptr [rsp + 0x2c]
	jne	.label_1078
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	mov	rsi, qword ptr [r12]
	add	rsi, qword ptr [r12 + 0x28]
	add	rsi, r15
	mov	rdx, rbp
	call	memcpy
	jmp	.label_1087
.label_1078:
	mov	esi, ebx
	mov	dword ptr [rsp + 0x18], esi
	mov	rbx, rbp
	lea	rbp, [rsp + 0x30]
	mov	rdi, rbp
	lea	rdx, [rsp + 0x70]
	call	wcrtomb
	cmp	rbx, rax
	jne	.label_1095
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	mov	rsi, rbp
	mov	rdx, rbx
	call	memcpy
	mov	rbp, rbx
	mov	ebx, dword ptr [rsp + 0x18]
.label_1087:
	mov	rax, qword ptr [r12 + 0x10]
	mov	dword ptr [rax + r15*4], ebx
	lea	rbx, [rbp + r15]
	lea	rax, [r15 + 1]
	cmp	rax, rbx
	jge	.label_1086
	mov	rax, qword ptr [r12 + 0x10]
	lea	rdi, [rax + r15*4 + 4]
	lea	rdx, [rbp*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rax, rbx
.label_1086:
	cmp	r13, rax
	mov	r15, rax
	jg	.label_1049
	jmp	.label_1056
.label_1095:
	mov	rbx, r15
	mov	rcx, qword ptr [rsp + 0x10]
	jmp	.label_1057
.label_1076:
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [r14], rax
.label_1067:
	mov	rax, r15
.label_1056:
	mov	qword ptr [r12 + 0x30], rax
	mov	qword ptr [r12 + 0x38], rax
	jmp	.label_1062
.label_1063:
	cmp	r15, r13
	jge	.label_1065
	lea	r14, [r12 + 0x20]
	lea	rcx, [r12 + 0x78]
.label_1057:
	mov	rdx, r13
	sub	rdx, r15
	mov	rax, qword ptr [r14]
	mov	qword ptr [rsp + 0x70], rax
	mov	rax, qword ptr [rcx]
	test	rax, rax
	jne	.label_1072
	mov	rbp, qword ptr [r12]
	add	rbp, qword ptr [r12 + 0x28]
	add	rbp, rbx
.label_1064:
	lea	rdi, [rsp + 0x28]
	mov	rsi, rbp
	mov	rcx, r14
	mov	qword ptr [rsp + 0x18], r14
	call	rpl_mbrtowc
	mov	r14, rax
	lea	rax, [r14 - 1]
	cmp	rax, -4
	ja	.label_1084
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x20], r13
	mov	edi, dword ptr [rsp + 0x28]
	call	towupper
	mov	r13d, eax
	cmp	r13d, dword ptr [rsp + 0x28]
	je	.label_1092
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 0x70]
	mov	esi, r13d
	call	wcrtomb
	mov	r8, rax
	mov	rcx, r8
	sub	rcx, r14
	jne	.label_1101
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	jmp	.label_1104
.label_1072:
	lea	rbp, [rsp + 0x30]
	movsxd	rcx, dword ptr [r12 + 0x90]
	test	rcx, rcx
	jle	.label_1064
	mov	r8, rbx
	xor	esi, esi
	nop	dword ptr [rax]
.label_1058:
	cmp	rsi, rdx
	jge	.label_1053
	mov	rdi, qword ptr [r12]
	add	rdi, qword ptr [r12 + 0x28]
	add	rdi, r8
	movzx	edi, byte ptr [rsi + rdi]
	mov	bl, byte ptr [rax + rdi]
	mov	byte ptr [rsp + rsi + 0x30], bl
	inc	rsi
	cmp	rsi, rcx
	jl	.label_1058
	mov	rbx, r8
	jmp	.label_1064
.label_1084:
	lea	rax, [r14 + 1]
	cmp	rax, 2
	jb	.label_1068
	cmp	r14, -2
	jne	.label_1071
	mov	rax, qword ptr [r12 + 0x40]
	cmp	rax, qword ptr [r12 + 0x58]
	jl	.label_1071
.label_1068:
	mov	rax, qword ptr [r12 + 0x28]
	add	rax, rbx
	mov	rdx, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 0x78]
	mov	al, byte ptr [rdx + rax]
	movzx	edx, al
	test	rcx, rcx
	jne	.label_1075
.label_1103:
	movzx	eax, al
	mov	rcx, qword ptr [r12 + 8]
	mov	byte ptr [rcx + r15], al
	cmp	byte ptr [r12 + 0x8c], 0
	jne	.label_1081
.label_1105:
	inc	rbx
	mov	rcx, qword ptr [r12 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	r14, -1
	je	.label_1088
.label_1089:
	mov	rbp, r15
	jmp	.label_1063
.label_1101:
	cmp	r8, -1
	je	.label_1092
	lea	rbp, [r8 + r15]
	mov	rdi, qword ptr [r12 + 0x40]
	cmp	rbp, rdi
	jbe	.label_1100
.label_1071:
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [rcx], rax
.label_1065:
	mov	qword ptr [r12 + 0x30], r15
	mov	qword ptr [r12 + 0x38], rbx
.label_1062:
	xor	eax, eax
.label_1047:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1092:
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	mov	rsi, rbp
.label_1104:
	mov	rdx, r14
	call	memcpy
	cmp	byte ptr [r12 + 0x8c], 0
	je	.label_1052
	mov	rax, qword ptr [r12 + 0x18]
	xor	esi, esi
	cmp	r14, 4
	jb	.label_1059
	xor	esi, esi
	mov	rcx, r14
	and	rcx, 0xfffffffffffffffc
	je	.label_1059
	movq	xmm0, rbx
	pshufd	xmm0, xmm0, 0x44
	lea	rdi, [r14 - 4]
	mov	rsi, rdi
	shr	rsi, 2
	xor	edx, edx
	bt	rdi, 2
	jb	.label_1066
	mov	edx, 1
	movq	xmm1, rdx
	pslldq	xmm1, 8
	paddq	xmm1, xmm0
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_625]]
	paddq	xmm2, xmm0
	movdqu	xmmword ptr [rax + r15*8], xmm1
	movdqu	xmmword ptr [rax + r15*8 + 0x10], xmm2
	mov	edx, 4
.label_1066:
	test	rsi, rsi
	je	.label_1085
	lea	rsi, [rax + r15*8 + 0x30]
	mov	edi, 1
	movq	xmm1, rdi
	pslldq	xmm1, 8
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_625]]
	nop	word ptr cs:[rax + rax]
.label_1096:
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
	jne	.label_1096
.label_1085:
	cmp	r14, rcx
	mov	rsi, rcx
	je	.label_1052
.label_1059:
	mov	rcx, r14
	sub	rcx, rsi
	lea	rdx, [rsi + rbx]
	add	rsi, r15
	lea	rax, [rax + rsi*8]
	nop	word ptr cs:[rax + rax]
.label_1082:
	mov	qword ptr [rax], rdx
	inc	rdx
	add	rax, 8
	dec	rcx
	jne	.label_1082
.label_1052:
	add	rbx, r14
	mov	rax, qword ptr [r12 + 0x10]
	mov	dword ptr [rax + r15*4], r13d
	lea	rbp, [r14 + r15]
	inc	r15
	cmp	r15, rbp
	jge	.label_1073
	mov	rax, qword ptr [r12 + 0x10]
	lea	rdi, [rax + r15*4]
	lea	rdx, [r14*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	r13, qword ptr [rsp + 0x20]
	mov	r15, rbp
	jmp	.label_1063
.label_1073:
	mov	rbp, r15
	mov	r13, qword ptr [rsp + 0x20]
	jmp	.label_1063
.label_1053:
	mov	rbx, r8
	jmp	.label_1064
.label_1100:
	mov	rax, qword ptr [r12 + 0x18]
	test	rax, rax
	jne	.label_1090
	shl	rdi, 3
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 0x20], r8
	call	malloc
	mov	r8, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [r12 + 0x18], rax
	test	rax, rax
	je	.label_1099
.label_1090:
	mov	qword ptr [rsp + 8], rcx
	cmp	byte ptr [r12 + 0x8c], 0
	jne	.label_1102
	test	r15, r15
	je	.label_1048
	xor	edx, edx
	cmp	r15, 4
	jb	.label_1051
	xor	edx, edx
	mov	rcx, r15
	and	rcx, 0xfffffffffffffffc
	je	.label_1051
	lea	rdi, [r15 - 4]
	mov	rsi, rdi
	shr	rsi, 2
	xor	edx, edx
	bt	rdi, 2
	jb	.label_1054
	mov	edx, 1
	movq	xmm0, rdx
	pslldq	xmm0, 8
	movdqu	xmmword ptr [rax], xmm0
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_625]]
	movdqu	xmmword ptr [rax + 0x10], xmm0
	mov	edx, 4
.label_1054:
	test	rsi, rsi
	je	.label_1097
	mov	esi, 1
	movq	xmm0, rsi
	pslldq	xmm0, 8
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_625]]
.label_1077:
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
	jne	.label_1077
.label_1097:
	cmp	r15, rcx
	mov	rdx, rcx
	je	.label_1048
.label_1051:
	mov	qword ptr [rax + rdx*8], rdx
	inc	rdx
	cmp	r15, rdx
	jne	.label_1051
.label_1048:
	mov	byte ptr [r12 + 0x8c], 1
.label_1102:
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
	jb	.label_1050
	mov	r9, qword ptr [r12 + 0x10]
	mov	r8, qword ptr [r12 + 0x18]
	lea	r10, [rdi - 1]
	mov	eax, 1
	cmp	r10, 4
	jb	.label_1055
	mov	rcx, r10
	and	rcx, 0xfffffffffffffffc
	mov	r13, r10
	and	r13, 0xfffffffffffffffc
	mov	eax, 1
	je	.label_1055
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
	movdqa	xmm8,  xmmword ptr [word ptr [rip + label_625]]
	movdqa	xmm9,  xmmword ptr [word ptr [rip + label_1069]]
	pxor	xmm3, xmm9
	pshufd	xmm6,  xmmword ptr [word ptr [rip + label_1070]],  0xe8
.label_1094:
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
	jne	.label_1094
	cmp	r10, r13
	mov	rbx, r11
	mov	r11, rdi
	mov	rdi, qword ptr [rsp + 0x20]
	je	.label_1050
.label_1055:
	lea	rcx, [r9 + r15*4]
	lea	rdx, [r8 + r15*8]
.label_1083:
	cmp	rax, r14
	mov	rsi, r11
	cmovb	rsi, rax
	add	rsi, rbx
	mov	qword ptr [rdx + rax*8], rsi
	mov	dword ptr [rcx + rax*4], 0xffffffff
	inc	rax
	cmp	rdi, rax
	jne	.label_1083
.label_1050:
	mov	rax, qword ptr [r12 + 0x58]
	mov	rcx, qword ptr [rsp + 8]
	add	rax, rcx
	mov	qword ptr [r12 + 0x58], rax
	cmp	qword ptr [r12 + 0x60], rbx
	jle	.label_1091
	add	qword ptr [r12 + 0x68], rcx
.label_1091:
	mov	r13, qword ptr [r12 + 0x40]
	cmp	r13, rax
	cmovg	r13, rax
	add	rbx, r14
	mov	r15, rbp
	jmp	.label_1063
.label_1075:
	mov	al, byte ptr [rcx + rdx]
	jmp	.label_1103
.label_1081:
	mov	rcx, qword ptr [r12 + 0x18]
	mov	qword ptr [rcx + r15*8], rbx
	jmp	.label_1105
.label_1088:
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [rcx], rax
	jmp	.label_1089
.label_1099:
	mov	eax, 0xc
	jmp	.label_1047
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ca10

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
	jle	.label_1110
	lea	r14, [rbx + 0x20]
	lea	r15, [rsp + 0xc]
	jmp	.label_1111
	nop	dword ptr [rax + rax]
.label_1108:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r13
	mov	rcx, qword ptr [rbx]
	movzx	ecx, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], ecx
	mov	rax, qword ptr [rbx + 0x78]
	test	rax, rax
	jne	.label_1114
.label_1112:
	mov	qword ptr [r14], rbp
	mov	eax, 1
	jmp	.label_1116
.label_1117:
	mov	ecx, dword ptr [rsp + 0xc]
	nop	dword ptr [rax]
.label_1116:
	mov	rdx, qword ptr [rbx + 0x10]
	mov	dword ptr [rdx + r13*4], ecx
	lea	rbp, [rax + r13]
	lea	rcx, [r13 + 1]
	cmp	rcx, rbp
	jge	.label_1107
	mov	rcx, qword ptr [rbx + 0x10]
	lea	rdi, [rcx + r13*4 + 4]
	lea	rdx, [rax*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rcx, rbp
.label_1107:
	cmp	r12, rcx
	mov	r13, rcx
	jg	.label_1111
	jmp	.label_1118
.label_1106:
	cmp	dword ptr [rbx + 0x90], 0
	mov	eax, 0
	lea	rsi, [rsp + 0x10]
	jle	.label_1109
	nop	dword ptr [rax + rax]
.label_1115:
	cmp	rax, rdx
	jge	.label_1113
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
	jl	.label_1115
	lea	rsi, [rsp + 0x10]
	jmp	.label_1109
.label_1114:
	movzx	ecx, byte ptr [rax + rcx]
	mov	dword ptr [rsp + 0xc], ecx
	jmp	.label_1112
.label_1113:
	lea	rsi, [rsp + 0x10]
	jmp	.label_1109
	nop	word ptr cs:[rax + rax]
.label_1111:
	mov	rdx, r12
	sub	rdx, r13
	mov	rbp, qword ptr [rbx + 0x20]
	cmp	qword ptr [rbx + 0x78], 0
	jne	.label_1106
	mov	rsi, qword ptr [rbx]
	add	rsi, qword ptr [rbx + 0x28]
	add	rsi, r13
.label_1109:
	mov	rdi, r15
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_1108
	cmp	rax, -2
	jne	.label_1117
	mov	rax, qword ptr [rbx + 0x40]
	cmp	rax, qword ptr [rbx + 0x58]
	jge	.label_1108
	mov	qword ptr [r14], rbp
.label_1110:
	mov	rcx, r13
.label_1118:
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
	#Procedure 0x40cbb0

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
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 8], r8
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12, rdx
	mov	qword ptr [rsp + 0x18], rsi
	mov	r14, rdi
	mov	r15, qword ptr [rsi]
	mov	rax, qword ptr [r15 + 0xa8]
	mov	qword ptr [rsp + 0x10], rax
	call	parse_branch
	mov	rbx, rax
	xor	r13d, r13d
	test	rbx, rbx
	jne	.label_1141
	mov	rax, qword ptr [rsp + 0x28]
	mov	eax, dword ptr [rax]
	test	eax, eax
	jne	.label_1130
.label_1141:
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 0xa
	jne	.label_1122
	mov	rax, qword ptr [rsp + 0x20]
	or	rax, 0x800000
	mov	qword ptr [rsp + 0x30], rax
	cmp	qword ptr [rsp + 8], 0
	jne	.label_1139
	jmp	.label_1127
.label_1122:
	mov	r13, rbx
	jmp	.label_1130
.label_1142:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1120
	mov	rcx, qword ptr [r15 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r15 + 0x70], rax
	mov	dword ptr [r15 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1136
	nop	word ptr cs:[rax + rax]
.label_1139:
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x30]
	call	peek_token
	cdqe	
	add	qword ptr [r14 + 0x48], rax
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 0xa
	ja	.label_1119
	mov	ecx, 0x604
	bt	ecx, eax
	mov	ebp, 0
	jb	.label_1125
.label_1119:
	mov	rax, qword ptr [r15 + 0xa8]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [r15 + 0xa8], rax
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 8]
	mov	r13, qword ptr [rsp + 0x28]
	mov	r9, r13
	call	parse_branch
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1138
	mov	eax, dword ptr [r13]
	test	eax, eax
	jne	.label_1128
.label_1138:
	mov	rax, qword ptr [rsp]
	or	qword ptr [r15 + 0xa8], rax
.label_1125:
	mov	ecx, dword ptr [r15 + 0x80]
	cmp	ecx, 0xf
	je	.label_1142
	mov	rax, qword ptr [r15 + 0x70]
.label_1136:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0xa
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbx, rbx
	je	.label_1124
	mov	qword ptr [rbx], r13
.label_1124:
	test	rbp, rbp
	je	.label_1137
	mov	qword ptr [rbp], r13
.label_1137:
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 0xa
	mov	rbx, r13
	je	.label_1139
	jmp	.label_1130
.label_1131:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1120
	mov	rcx, qword ptr [r15 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r15 + 0x70], rax
	mov	dword ptr [r15 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1123
	nop	word ptr cs:[rax + rax]
.label_1127:
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x30]
	call	peek_token
	cdqe	
	add	qword ptr [r14 + 0x48], rax
	mov	eax, dword ptr [r12 + 8]
	or	eax, 8
	movzx	eax, al
	cmp	eax, 0xa
	mov	ebp, 0
	je	.label_1133
	mov	rax, qword ptr [r15 + 0xa8]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [r15 + 0xa8], rax
	xor	r8d, r8d
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r13, qword ptr [rsp + 0x28]
	mov	r9, r13
	call	parse_branch
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1126
	mov	eax, dword ptr [r13]
	test	eax, eax
	jne	.label_1128
.label_1126:
	mov	rax, qword ptr [rsp + 8]
	or	qword ptr [r15 + 0xa8], rax
.label_1133:
	mov	ecx, dword ptr [r15 + 0x80]
	cmp	ecx, 0xf
	je	.label_1131
	mov	rax, qword ptr [r15 + 0x70]
.label_1123:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0xa
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbx, rbx
	je	.label_1135
	mov	qword ptr [rbx], r13
.label_1135:
	test	rbp, rbp
	je	.label_1132
	mov	qword ptr [rbp], r13
.label_1132:
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 0xa
	mov	rbx, r13
	je	.label_1127
	jmp	.label_1130
.label_1128:
	xor	r13d, r13d
	test	rbx, rbx
	je	.label_1130
	mov	r14d, 0x400ff
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_1121:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_1121
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_1121
	nop	word ptr cs:[rax + rax]
.label_1134:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1129
	cmp	eax, 6
	jne	.label_1143
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
	jmp	.label_1140
	nop	dword ptr [rax]
.label_1129:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1140:
	call	free
.label_1143:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1130
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rbp
	mov	rbp, rax
	je	.label_1134
	test	rbx, rbx
	mov	rbp, rax
	je	.label_1134
	jmp	.label_1121
.label_1120:
	mov	rax, qword ptr [rsp + 0x28]
	mov	dword ptr [rax], 0xc
	xor	r13d, r13d
.label_1130:
	mov	rax, r13
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
	#Procedure 0x40cf80

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
	jle	.label_1164
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
	jl	.label_1169
	mov	rax, qword ptr [rbp + 0x48]
	cmp	rax, qword ptr [rbp + 0x30]
	je	.label_1169
	mov	rcx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_1175
.label_1169:
	cmp	r12d, 0x5c
	jne	.label_1177
	mov	rcx, qword ptr [rbp + 0x48]
	lea	rax, [rcx + 1]
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_1166
	cmp	byte ptr [rbp + 0x8b], 0
	jne	.label_1182
.label_1145:
	mov	rcx, qword ptr [rbp + 8]
	mov	r14b, byte ptr [rcx + rax]
.label_1146:
	mov	byte ptr [r15], r14b
	and	ebx, 0xff9fff00
	or	ebx, 1
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1148
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
	jmp	.label_1153
.label_1164:
	mov	byte ptr [r15 + 8], 2
	xor	r14d, r14d
	jmp	.label_1144
.label_1177:
	and	ebx, 0xff9fff00
	or	ebx, 1
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1162
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
	jmp	.label_1168
.label_1166:
	and	ebx, 0xff9fff00
	or	ebx, 0x24
	jmp	.label_1173
.label_1162:
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
.label_1168:
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 1
	cmp	r12d, 0x3e
	jg	.label_1161
	lea	ecx, [r12 - 0x24]
	cmp	ecx, 0xa
	ja	.label_1181
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1155]]
.label_2695:
	mov	rdx, r13
	test	dl, 8
	jne	.label_1147
	mov	rcx, qword ptr [rbp + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rbp + 0x58]
	je	.label_1147
	mov	qword ptr [rbp + 0x48], rcx
	lea	rdi, [rsp + 8]
	mov	rsi, rbp
	call	peek_token
	dec	qword ptr [rbp + 0x48]
	movzx	eax, byte ptr [rsp + 0x10]
	add	eax, -9
	cmp	eax, 1
	ja	.label_1144
	mov	eax, dword ptr [r15 + 8]
.label_1147:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x20
	jmp	.label_1144
.label_1161:
	cmp	r12d, 0x7a
	jg	.label_1159
	cmp	r12d, 0x3f
	je	.label_1172
	cmp	r12d, 0x5b
	mov	rdx, r13
	je	.label_1179
	cmp	r12d, 0x5e
	jne	.label_1144
	test	edx, 0x800008
	jne	.label_1167
	mov	rcx, qword ptr [rbp + 0x48]
	test	rcx, rcx
	je	.label_1167
	test	dh, 8
	je	.label_1144
	mov	rdx, qword ptr [rbp + 8]
	movzx	ecx, byte ptr [rcx + rdx - 1]
	cmp	ecx, 0xa
	jne	.label_1144
.label_1167:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x10
	jmp	.label_1144
.label_1148:
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
.label_1153:
	mov	dword ptr [r15 + 8], eax
	movzx	ecx, r14b
	mov	r14d, 2
	cmp	ecx, 0x5f
	jg	.label_1180
	lea	edx, [rcx - 0x27]
	cmp	edx, 0x2c
	ja	.label_1165
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1150]]
.label_2681:
	mov	rdx, r13
	test	dh, 0x40
	jne	.label_1144
	and	eax, 0xffffff00
	or	eax, 4
	mov	dword ptr [r15 + 8], eax
	add	ecx, -0x31
	movsxd	rax, ecx
	mov	qword ptr [r15], rax
	jmp	.label_1144
.label_1159:
	cmp	r12d, 0x7b
	je	.label_1154
	cmp	r12d, 0x7c
	mov	rcx, r13
	je	.label_1157
	cmp	r12d, 0x7d
	jne	.label_1144
	and	ecx, 0x1200
	cmp	rcx, 0x1200
	je	.label_1158
	jmp	.label_1144
.label_1175:
	and	ebx, 0xff9fff00
	or	ebx, 0x200001
.label_1173:
	mov	dword ptr [r15 + 8], ebx
	mov	r14d, 1
.label_1144:
	mov	eax, r14d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1180:
	lea	edx, [rcx - 0x73]
	cmp	edx, 0xa
	ja	.label_1174
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1170]]
.label_2596:
	test	r13d, 0x80000
	jne	.label_1144
	and	eax, 0xffffff00
	or	eax, 0x22
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1144
.label_1181:
	cmp	r12d, 0xa
	jne	.label_1144
	mov	rcx, r13
	test	ch, 8
	jne	.label_1160
	jmp	.label_1144
.label_2696:
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_1176
	jmp	.label_1144
.label_2697:
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_1178
	jmp	.label_1144
.label_2698:
	and	eax, 0xffffff00
	or	eax, 0xb
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1144
.label_2699:
	test	r13w, 0x402
	jne	.label_1144
	jmp	.label_1149
.label_2700:
	and	eax, 0xffffff00
	or	eax, 5
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1144
.label_1172:
	test	r13w, 0x402
	jne	.label_1144
	jmp	.label_1152
.label_1179:
	and	eax, 0xffffff00
	or	eax, 0x14
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1144
.label_1154:
	and	r13d, 0x1200
	cmp	r13, 0x1200
	je	.label_1156
	jmp	.label_1144
.label_1157:
	test	ch, 4
	jne	.label_1144
	test	cx, cx
	js	.label_1160
	jmp	.label_1144
.label_1174:
	cmp	ecx, 0x60
	je	.label_1163
	cmp	ecx, 0x62
	jne	.label_1144
	test	r13d, 0x80000
	jne	.label_1144
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x100
	jmp	.label_1144
.label_1182:
	cmp	edx, 2
	jl	.label_1171
	mov	rdx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rdx + rcx*4 + 4], -1
	je	.label_1145
	lea	rsi, [rcx + 2]
	cmp	qword ptr [rbp + 0x30], rsi
	je	.label_1171
	cmp	dword ptr [rdx + rcx*4 + 8], -1
	je	.label_1145
.label_1171:
	mov	dl, byte ptr [rbp + 0x8c]
	test	dl, dl
	mov	rsi, rax
	je	.label_1151
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rsi, qword ptr [rsi + rcx*8 + 8]
.label_1151:
	add	rsi, qword ptr [rbp + 0x28]
	test	dl, dl
	mov	rcx, qword ptr [rbp]
	mov	r14b, byte ptr [rcx + rsi]
	je	.label_1146
	test	r14b, r14b
	js	.label_1145
	jmp	.label_1146
.label_1165:
	cmp	ecx, 0x57
	jne	.label_1144
	test	r13d, 0x80000
	jne	.label_1144
	and	eax, 0xffffff00
	or	eax, 0x21
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1144
.label_2597:
	test	r13d, 0x80000
	jne	.label_1144
	and	eax, 0xffffff00
	or	eax, 0x20
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1144
.label_2598:
	and	r13d, 0x1200
	cmp	r13, 0x200
	jne	.label_1144
.label_1156:
	and	eax, 0xffffff00
	or	eax, 0x17
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1144
.label_2599:
	mov	rcx, r13
	test	ch, 4
	jne	.label_1144
	test	cx, cx
	js	.label_1144
.label_1160:
	and	eax, 0xffffff00
	or	eax, 0xa
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1144
.label_2600:
	and	r13d, 0x1200
	cmp	r13, 0x200
	jne	.label_1144
.label_1158:
	and	eax, 0xffffff00
	or	eax, 0x18
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1144
.label_1163:
	test	r13d, 0x80000
	jne	.label_1144
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x40
	jmp	.label_1144
.label_2677:
	test	r13d, 0x80000
	jne	.label_1144
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x80
	jmp	.label_1144
.label_2678:
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_1144
.label_1176:
	and	eax, 0xffffff00
	or	eax, 8
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1144
.label_2679:
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_1144
.label_1178:
	and	eax, 0xffffff00
	or	eax, 9
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1144
.label_2680:
	and	r13d, 0x402
	cmp	r13, 2
	jne	.label_1144
.label_1149:
	and	eax, 0xffffff00
	or	eax, 0x12
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1144
.label_2682:
	test	r13d, 0x80000
	jne	.label_1144
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 6
	jmp	.label_1144
.label_2683:
	test	r13d, 0x80000
	jne	.label_1144
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 9
	jmp	.label_1144
.label_2684:
	and	r13d, 0x402
	cmp	r13, 2
	jne	.label_1144
.label_1152:
	and	eax, 0xffffff00
	or	eax, 0x13
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1144
.label_2685:
	test	r13d, 0x80000
	jne	.label_1144
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x200
	jmp	.label_1144
.label_2686:
	test	r13d, 0x80000
	jne	.label_1144
	and	eax, 0xffffff00
	or	eax, 0x23
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1144
	.section	.text
	.align	16
	#Procedure 0x40d620

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
	mov	r14, r9
	mov	r15, r8
	mov	qword ptr [rsp + 0x10], rcx
	mov	r12, rdx
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], rdi
	mov	rbp, qword ptr [rsi]
	call	parse_expression
	mov	rbx, rax
	xor	r13d, r13d
	test	rbx, rbx
	jne	.label_1191
	mov	eax, dword ptr [r14]
	test	eax, eax
	jne	.label_1184
.label_1191:
	mov	r13, r14
	test	r15, r15
	jne	.label_1190
	jmp	.label_1196
.label_1211:
	test	rbx, rbx
	cmove	rbx, r14
.label_1190:
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 0xa
	ja	.label_1198
	mov	ecx, 0x604
	bt	ecx, eax
	jb	.label_1200
.label_1198:
	mov	rdi, qword ptr [rsp]
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, r15
	mov	r9, r13
	call	parse_expression
	mov	r14, rax
	test	rbx, rbx
	setne	al
	test	r14, r14
	jne	.label_1207
	mov	ecx, dword ptr [r13]
	test	ecx, ecx
	jne	.label_1205
.label_1207:
	test	rbx, rbx
	je	.label_1211
	test	r14, r14
	je	.label_1211
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1212
	mov	rax, qword ptr [rbp + 0x70]
.label_1201:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r14
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r14], rdx
	mov	rbx, rdx
	jmp	.label_1190
.label_1212:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1187
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1201
	nop	word ptr [rax + rax]
.label_1208:
	test	rbx, rbx
	cmove	rbx, r14
.label_1196:
	mov	eax, dword ptr [r12 + 8]
	or	eax, 8
	movzx	eax, al
	cmp	eax, 0xa
	je	.label_1195
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp]
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r9, r13
	call	parse_expression
	mov	r14, rax
	test	rbx, rbx
	setne	al
	test	r14, r14
	jne	.label_1203
	mov	ecx, dword ptr [r13]
	test	ecx, ecx
	jne	.label_1205
.label_1203:
	test	rbx, rbx
	je	.label_1208
	test	r14, r14
	je	.label_1208
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1210
	mov	rax, qword ptr [rbp + 0x70]
.label_1189:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r14
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r14], rdx
	mov	rbx, rdx
	jmp	.label_1196
.label_1210:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1187
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1189
.label_1205:
	xor	r13d, r13d
	test	al, al
	je	.label_1184
	mov	r15d, 0x400ff
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_1193:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_1193
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_1193
	nop	word ptr cs:[rax + rax]
.label_1213:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r15d
	cmp	eax, 3
	je	.label_1199
	cmp	eax, 6
	jne	.label_1202
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
	jmp	.label_1209
	nop	dword ptr [rax]
.label_1199:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1209:
	call	free
.label_1202:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1184
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rbp
	mov	rbp, rax
	je	.label_1213
	test	rbx, rbx
	mov	rbp, rax
	je	.label_1213
	jmp	.label_1193
.label_1200:
	mov	r13, rbx
	jmp	.label_1184
.label_1195:
	mov	r13, rbx
.label_1184:
	mov	rax, r13
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1187:
	mov	r15d, 0x400ff
.label_1185:
	mov	rbp, r14
	mov	r14, qword ptr [rbp + 8]
	test	r14, r14
	jne	.label_1185
	mov	r14, qword ptr [rbp + 0x10]
	test	r14, r14
	jne	.label_1185
.label_1197:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r15d
	cmp	eax, 3
	je	.label_1186
	cmp	eax, 6
	jne	.label_1188
	mov	r14, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, qword ptr [r14 + 8]
	call	free
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	mov	rdi, r14
	jmp	.label_1192
.label_1186:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1192:
	call	free
.label_1188:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1194
	mov	r14, qword ptr [rax + 0x10]
	cmp	r14, rbp
	mov	rbp, rax
	je	.label_1197
	test	r14, r14
	mov	rbp, rax
	je	.label_1197
	jmp	.label_1185
.label_1194:
	mov	r14d, 0x400ff
.label_1183:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_1183
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_1183
	nop	
.label_1216:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1204
	cmp	eax, 6
	jne	.label_1206
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
	jmp	.label_1214
.label_1204:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1214:
	call	free
.label_1206:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1215
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rbp
	mov	rbp, rax
	je	.label_1216
	test	rbx, rbx
	mov	rbp, rax
	je	.label_1216
	jmp	.label_1183
.label_1215:
	mov	dword ptr [r13], 0xc
	xor	r13d, r13d
	jmp	.label_1184
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40da20

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
	ja	.label_1280
	mov	r9, qword ptr [rbx]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1359]]
.label_2616:
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
	je	.label_1443
	mov	r9, rbx
	jmp	.label_1236
.label_2617:
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
	jne	.label_1391
.label_1443:
	mov	eax, dword ptr [r12]
	test	eax, eax
	mov	r9, rbx
	je	.label_1236
	jmp	.label_1280
.label_2607:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1400
	mov	rax, qword ptr [r9 + 0x70]
.label_1245:
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
	jl	.label_1408
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rcx + 0x48]
	cmp	qword ptr [rcx + 0x68], rax
	jg	.label_1256
	mov	rbp, r15
	jmp	.label_1236
.label_1332:
	mov	rbp, r9
	mov	rcx, qword ptr [rbx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1437
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x48]
	call	peek_token
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	mov	r9, rbp
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1447
	mov	rax, qword ptr [r9 + 0x70]
.label_1271:
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
.label_1266:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1226
	mov	rax, qword ptr [r9 + 0x70]
.label_1282:
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
	je	.label_1242
	mov	qword ptr [rbp], rdx
	mov	rax, qword ptr [rbx + 0x48]
	cmp	qword ptr [rbx + 0x68], rax
	mov	r15, rdx
	mov	rbp, rdx
	jg	.label_1256
	jmp	.label_1236
.label_1447:
	mov	edi, 0x3c8
	mov	rbp, r9
	call	malloc
	mov	r9, rbp
	test	rax, rax
	mov	ebp, 0
	je	.label_1266
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1271
.label_1226:
	mov	edi, 0x3c8
	mov	r13, r9
	call	malloc
	mov	r9, r13
	test	rax, rax
	je	.label_1242
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1282
.label_1256:
	mov	rbx, qword ptr [rsp + 0x38]
	cmp	rax, qword ptr [rbx + 0x30]
	jne	.label_1332
	mov	rbp, r15
	jmp	.label_1236
.label_2608:
	mov	rbx, qword ptr [rsp + 0x40]
	mov	cl, byte ptr [rbx]
	mov	eax, 1
	shl	eax, cl
	cdqe	
	test	qword ptr [r9 + 0xa8], rax
	je	.label_1290
	or	qword ptr [r9 + 0xa0], rax
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1297
	mov	rax, qword ptr [r9 + 0x70]
.label_1284:
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
	jmp	.label_1236
.label_2609:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1321
	mov	rax, qword ptr [r9 + 0x70]
	mov	rsi, qword ptr [rsp + 0x40]
.label_1268:
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
	jle	.label_1236
	or	byte ptr [r9 + 0xb0], 2
	jmp	.label_1236
.label_2610:
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
	je	.label_1342
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
	jne	.label_1280
	movzx	eax, byte ptr [r14 + 8]
	cmp	eax, 9
	jne	.label_1373
	mov	r15, rbp
.label_1342:
	cmp	r15, 8
	mov	r9, qword ptr [rsp + 0x20]
	mov	rbx, r15
	ja	.label_1376
	mov	eax, 1
	mov	cl, bl
	shl	eax, cl
	cdqe	
	or	qword ptr [r9 + 0xa8], rax
.label_1376:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1387
	mov	rax, qword ptr [r9 + 0x70]
.label_1294:
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
	je	.label_1395
	mov	qword ptr [rsi], rbp
.label_1395:
	mov	qword ptr [rax + rcx + 0x30], rbx
	jmp	.label_1236
.label_2611:
	mov	rcx, qword ptr [rsp + 0x48]
	test	ecx, 0x20000
	jne	.label_1419
	mov	dword ptr [r12], 0x10
	jmp	.label_1258
.label_2613:
	mov	r15, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [r15]
	test	ax, 0x30f
	je	.label_1427
	mov	al, byte ptr [r9 + 0xb0]
	test	al, 0x10
	jne	.label_1351
	mov	cl, al
	or	cl, 0x10
	mov	byte ptr [r9 + 0xb0], cl
	xor	ebx, ebx
	test	al, 8
	mov	ebp, 0
	jne	.label_1434
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_1444]]
	movdqu	xmmword ptr [r9 + 0xb8], xmm0
	mov	ebp, 2
	mov	ebx, 0x80
	test	al, 4
	je	.label_1434
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r9 + 0xc8], xmm0
.label_1351:
	mov	eax, dword ptr [r15]
.label_1427:
	cmp	eax, 0x200
	je	.label_1453
	cmp	eax, 0x100
	jne	.label_1455
	mov	dword ptr [r15], 6
	mov	r13, r15
	lea	r15, [r9 + 0x80]
	mov	ebp, dword ptr [r9 + 0x80]
	cmp	ebp, 0xf
	je	.label_1458
	mov	rax, qword ptr [r9 + 0x70]
.label_1415:
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
	jmp	.label_1217
.label_2615:
	mov	rcx, qword ptr [rsp + 0x48]
	test	ecx, 0x1000000
	jne	.label_1235
.label_2612:
	mov	rcx, qword ptr [rsp + 0x48]
	test	cl, 0x20
	jne	.label_1235
	test	cl, 0x10
	jne	.label_1254
.label_1419:
	and	eax, 0xffffff00
	or	eax, 1
	mov	rbx, qword ptr [rsp + 0x40]
	mov	dword ptr [rbx + 8], eax
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1259
	mov	rax, qword ptr [r9 + 0x70]
.label_1459:
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
.label_1461:
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	jmp	.label_1236
.label_2618:
	mov	dword ptr [r12], 5
	jmp	.label_1258
.label_2614:
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
	je	.label_1295
	test	rbx, rbx
	je	.label_1295
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
	je	.label_1306
	cmp	edx, 2
	je	.label_1247
	mov	dword ptr [rsp + 0x50], 0
	jmp	.label_1311
.label_1391:
	mov	r9, rbx
	jmp	.label_1236
.label_1254:
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
.label_1408:
	mov	rbp, r15
	jmp	.label_1236
.label_1306:
	mov	rcx, qword ptr [rsp + 0x58]
	or	byte ptr [rcx + 0x20], 1
	test	bh, 1
	je	.label_1348
	or	byte ptr [r13 + 1], 4
.label_1348:
	cdqe	
	mov	rsi, qword ptr [rsp + 0x38]
	add	qword ptr [rsi + 0x48], rax
	mov	rdi, rbp
	mov	rdx, rbx
	call	peek_token_bracket
	mov	ecx, dword ptr [rbp + 8]
	movzx	edx, cl
	cmp	edx, 2
	je	.label_1247
	mov	dl, 1
	mov	dword ptr [rsp + 0x50], edx
.label_1311:
	mov	qword ptr [rsp + 0x60], r13
	movzx	edx, cl
	cmp	edx, 0x15
	jne	.label_1345
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rbp + 8], ecx
.label_1345:
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
	jne	.label_1399
	mov	eax, ebx
	and	eax, 0x10000
	mov	qword ptr [rsp + 0x30], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_1361
.label_1439:
	cmp	eax, 2
	je	.label_1369
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
	je	.label_1361
	jmp	.label_1399
.label_2647:
	mov	cl, byte ptr [rsp + 0xd8]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	r13, qword ptr [rsp + 0x60]
	or	qword ptr [r13 + rcx*8], rax
	jmp	.label_1401
.label_2648:
	mov	r15, qword ptr [rsp + 0x58]
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rbp, qword ptr [rsp + 0x28]
	cmp	rbp, rcx
	je	.label_1411
	mov	rax, qword ptr [r15]
.label_1275:
	mov	r9, qword ptr [rsp + 0x20]
	mov	r13, qword ptr [rsp + 0x60]
	mov	edx, dword ptr [rsp + 0xd8]
	lea	rsi, [rcx + 1]
	mov	qword ptr [r15 + 0x28], rsi
	mov	dword ptr [rax + rcx*4], edx
	jmp	.label_1265
.label_1314:
	mov	rax, qword ptr [rsp + 0xd8]
	mov	al, byte ptr [rax]
	jmp	.label_1405
.label_1402:
	xor	eax, eax
.label_1405:
	cmp	ebx, 3
	je	.label_1430
	test	ebx, ebx
	jne	.label_1431
	mov	bpl, byte ptr [rsp + 0xc8]
	jmp	.label_1333
.label_1430:
	mov	rcx, qword ptr [rsp + 0xc8]
	mov	bpl, byte ptr [rcx]
	jmp	.label_1333
.label_1431:
	xor	ebp, ebp
.label_1333:
	cmp	r15d, 3
	je	.label_1302
	test	r15d, r15d
	jne	.label_1442
.label_1302:
	test	r12, r12
	movzx	edx, al
	je	.label_1445
	mov	edi, edx
	call	btowc
	mov	edx, eax
	jmp	.label_1445
.label_1442:
	mov	edx, dword ptr [rsp + 0xd8]
.label_1445:
	cmp	ebx, 3
	je	.label_1381
	test	ebx, ebx
	jne	.label_1449
.label_1381:
	test	r12, r12
	movzx	ebp, bpl
	je	.label_1451
	mov	edi, ebp
	mov	ebx, edx
	call	btowc
	mov	edx, ebx
	mov	ebp, eax
	jmp	.label_1451
.label_1449:
	mov	ebp, dword ptr [rsp + 0xc8]
.label_1451:
	cmp	edx, -1
	mov	ecx, 3
	je	.label_1344
	cmp	ebp, -1
	je	.label_1344
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_1288
	cmp	edx, ebp
	mov	ecx, 0xb
	ja	.label_1344
.label_1288:
	test	r12, r12
	je	.label_1219
	mov	rax, qword ptr [r12 + 0x40]
	cmp	qword ptr [rsp + 0x10], rax
	je	.label_1222
	mov	rdi, qword ptr [r12 + 8]
	mov	r14, qword ptr [r12 + 0x10]
	mov	r9, r13
	mov	r15, qword ptr [rsp + 0x58]
	mov	ebx, dword ptr [rsp + 0xc]
.label_1252:
	mov	dword ptr [rdi + rax*4], edx
	lea	rcx, [rax + 1]
	mov	qword ptr [r12 + 0x40], rcx
	mov	dword ptr [r14 + rax*4], ebp
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_1416
.label_1219:
	mov	r12, qword ptr [rsp + 0x18]
	mov	r9, r13
	mov	r15, qword ptr [rsp + 0x58]
	mov	ebx, dword ptr [rsp + 0xc]
.label_1416:
	mov	eax, ebp
	mov	edx, edx
	xor	ecx, ecx
	mov	r13, qword ptr [rsp + 0x60]
.label_1424:
	cmp	rdx, rcx
	ja	.label_1354
	cmp	rcx, rax
	ja	.label_1354
	mov	esi, 1
	shl	rsi, cl
	mov	rdi, rcx
	sar	rdi, 0x3f
	shr	rdi, 0x3a
	add	rdi, rcx
	sar	rdi, 6
	or	qword ptr [r13 + rdi*8], rsi
.label_1354:
	inc	rcx
	cmp	rcx, 0x100
	jne	.label_1424
	mov	dword ptr [r12], 0
	jmp	.label_1265
.label_1411:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [r15]
	lea	rsi, [rax*4 + 4]
	call	realloc
	test	rax, rax
	je	.label_1244
	lea	rbp, [rbp + rbp + 1]
	mov	qword ptr [rsp + 0x28], rbp
	mov	qword ptr [r15], rax
	mov	rcx, qword ptr [r15 + 0x28]
	jmp	.label_1275
.label_1222:
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
	je	.label_1293
	test	r14, r14
	je	.label_1293
	mov	rax, qword ptr [rsp + 0x10]
	lea	rax, [rax + rax + 1]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [r12 + 8], rdi
	mov	qword ptr [r12 + 0x10], r14
	mov	rax, qword ptr [r12 + 0x40]
	mov	r9, r13
	mov	ebx, dword ptr [rsp + 0xc]
	mov	edx, dword ptr [rsp + 8]
	jmp	.label_1252
.label_1361:
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	ebx, eax
	mov	r15d, dword ptr [rsp + 0xd0]
	cmp	r15d, 2
	je	.label_1309
	cmp	r15d, 4
	jne	.label_1316
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
	je	.label_1265
	jmp	.label_1324
.label_1316:
	movzx	eax, byte ptr [rbp + 8]
	cmp	eax, 0x16
	mov	r9, qword ptr [rsp + 0x20]
	je	.label_1380
	cmp	eax, 2
	jne	.label_1326
	jmp	.label_1328
.label_1380:
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
	je	.label_1338
	cmp	ecx, 2
	je	.label_1343
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
	jne	.label_1357
	mov	qword ptr [rsp + 0x18], r12
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, rbp
	mov	rdx, rbx
	call	peek_token_bracket
	cmp	dword ptr [r13 + 0xb4], 1
	mov	r12, qword ptr [rsp + 0x58]
	jg	.label_1363
	xor	r12d, r12d
.label_1363:
	mov	ecx, 0xb
	mov	ebx, dword ptr [rsp + 0xc0]
	cmp	ebx, 2
	je	.label_1344
	mov	dword ptr [rsp + 0xc], eax
	cmp	ebx, 4
	je	.label_1344
	cmp	r15d, 3
	jne	.label_1378
	mov	rdi, qword ptr [rsp + 0xd8]
	call	strlen
	mov	ecx, 3
	cmp	rax, 1
	ja	.label_1344
.label_1378:
	cmp	ebx, 3
	jne	.label_1463
	mov	rdi, qword ptr [rsp + 0xc8]
	call	strlen
	mov	ecx, 3
	cmp	rax, 1
	ja	.label_1344
.label_1463:
	cmp	r15d, 3
	je	.label_1314
	test	r15d, r15d
	jne	.label_1402
	mov	al, byte ptr [rsp + 0xd8]
	jmp	.label_1405
.label_1338:
	mov	eax, ebx
	neg	eax
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	mov	rax, qword ptr [rsp + 0x40]
	mov	byte ptr [rax + 8], 1
	mov	r9, r13
.label_1326:
	mov	qword ptr [rsp + 0x20], r9
	mov	eax, r15d
	cmp	r15d, 3
	ja	.label_1414
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1417]]
.label_1309:
	mov	rbp, qword ptr [rsp + 0xd8]
	mov	rdi, rbp
	call	strlen
	cmp	rax, 1
	jne	.label_1422
	mov	cl, byte ptr [rbp]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	r13, qword ptr [rsp + 0x60]
	or	qword ptr [r13 + rcx*8], rax
	mov	dword ptr [r12], 0
.label_1401:
	mov	r9, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 0x58]
.label_1265:
	mov	rax, qword ptr [rsp + 0x40]
	movzx	eax, byte ptr [rax + 8]
	cmp	eax, 0x15
	jne	.label_1439
	movsxd	rax, ebx
	mov	rcx, qword ptr [rsp + 0x38]
	add	qword ptr [rcx + 0x48], rax
	mov	eax, dword ptr [rsp + 0x50]
	test	al, al
	je	.label_1446
	movdqu	xmm0, xmmword ptr [r13]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r13], xmm0
	movdqu	xmm0, xmmword ptr [r13 + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r13 + 0x10], xmm0
.label_1446:
	mov	eax, dword ptr [r9 + 0xb4]
	cmp	eax, 2
	jl	.label_1456
	mov	rcx, qword ptr [r9 + 0x78]
	mov	rdx, qword ptr [rcx]
	and	qword ptr [r13], rdx
	mov	rdx, qword ptr [rcx + 8]
	and	qword ptr [r13 + 8], rdx
	mov	rdx, qword ptr [rcx + 0x10]
	and	qword ptr [r13 + 0x10], rdx
	mov	rcx, qword ptr [rcx + 0x18]
	and	qword ptr [r13 + 0x18], rcx
.label_1456:
	cmp	qword ptr [r15 + 0x28], 0
	jne	.label_1225
	cmp	qword ptr [r15 + 0x30], 0
	jne	.label_1225
	cmp	qword ptr [r15 + 0x38], 0
	jne	.label_1225
	cmp	qword ptr [r15 + 0x40], 0
	jne	.label_1225
	cmp	eax, 2
	jl	.label_1291
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_1225
	test	byte ptr [r15 + 0x20], 1
	jne	.label_1225
.label_1291:
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
	je	.label_1386
	mov	rax, qword ptr [r9 + 0x70]
.label_1273:
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
	jmp	.label_1461
.label_1225:
	or	byte ptr [r9 + 0xb0], 2
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1277
	mov	rax, qword ptr [r9 + 0x70]
.label_1346:
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
	jne	.label_1283
	cmp	qword ptr [r13 + 8], 0
	jne	.label_1283
	cmp	qword ptr [r13 + 0x10], 0
	jne	.label_1283
	cmp	qword ptr [r13 + 0x18], 0
	je	.label_1435
.label_1283:
	mov	qword ptr [rsp + 0x60], r13
	mov	eax, dword ptr [r9 + 0x80]
	cmp	eax, 0xf
	je	.label_1301
	mov	rbp, qword ptr [r9 + 0x70]
.label_1370:
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
	je	.label_1308
	mov	rax, qword ptr [r9 + 0x70]
.label_1432:
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
	jmp	.label_1236
.label_1453:
	mov	dword ptr [r15], 5
	mov	r13, r15
	lea	r15, [r9 + 0x80]
	mov	ebp, dword ptr [r9 + 0x80]
	cmp	ebp, 0xf
	je	.label_1341
	mov	rax, qword ptr [r9 + 0x70]
.label_1433:
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
.label_1217:
	mov	dword ptr [r13], ecx
	mov	ebx, dword ptr [r15]
	cmp	ebx, 0xf
	je	.label_1364
	mov	rax, qword ptr [r9 + 0x70]
.label_1237:
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
.label_1305:
	mov	ecx, dword ptr [r15]
	cmp	ecx, 0xf
	je	.label_1392
	mov	rax, qword ptr [r9 + 0x70]
.label_1318:
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
	je	.label_1396
	mov	qword ptr [rbp], r15
.label_1396:
	test	rbx, rbx
	mov	rdx, qword ptr [rsp + 0x48]
	je	.label_1242
	mov	qword ptr [rbx], r15
	test	rbp, rbp
	jne	.label_1418
	jmp	.label_1242
.label_1455:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1421
	mov	r13, r15
	mov	rax, qword ptr [r9 + 0x70]
.label_1448:
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
.label_1418:
	mov	rdi, r13
	mov	rbx, qword ptr [rsp + 0x38]
	mov	rsi, rbx
	call	peek_token
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	jmp	.label_1280
.label_1259:
	mov	rbp, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1242
	mov	r9, rbp
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1459
.label_1399:
	mov	qword ptr [rsp + 0x48], rbx
	mov	dword ptr [r12], eax
	mov	r9, qword ptr [rsp + 0x20]
	jmp	.label_1218
.label_1247:
	mov	dword ptr [r12], 2
	jmp	.label_1227
.label_1369:
	mov	dword ptr [r12], 7
.label_1324:
	mov	qword ptr [rsp + 0x20], r9
	jmp	.label_1234
.label_1437:
	mov	r9, rbp
	mov	rbp, r15
	jmp	.label_1236
.label_1400:
	mov	rbx, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1242
	mov	r9, rbx
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1245
.label_1290:
	mov	dword ptr [r12], 6
	jmp	.label_1258
.label_1321:
	mov	rbx, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	rsi, qword ptr [rsp + 0x40]
	je	.label_1242
	mov	r9, rbx
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1268
.label_1295:
	mov	rdi, r13
	call	free
	mov	rdi, rbx
	call	free
	jmp	.label_1242
.label_1297:
	mov	rbp, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1242
	mov	r9, rbp
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1284
.label_1387:
	mov	r15, rsi
	mov	rbp, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1242
	mov	r9, rbp
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rsi, r15
	jmp	.label_1294
.label_1364:
	mov	edi, 0x3c8
	mov	rbx, r9
	call	malloc
	mov	r9, rbx
	xor	ebx, ebx
	test	rax, rax
	je	.label_1305
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r15], 0
	jmp	.label_1237
.label_1392:
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1242
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rdx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdx + 0x70], rax
	mov	dword ptr [r15], 0
	xor	ecx, ecx
	jmp	.label_1318
.label_1422:
	mov	dword ptr [r12], 3
	mov	r9, qword ptr [rsp + 0x20]
	jmp	.label_1218
.label_1434:
	mov	r13, r9
	call	__ctype_b_loc
	mov	r9, r13
	mov	rdx, qword ptr [rax]
	inc	rbx
.label_1349:
	mov	rsi, rbx
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1347:
	test	byte ptr [rdx + rsi*2 - 2], 8
	je	.label_1329
	mov	edi, 1
	mov	cl, al
	shl	rdi, cl
	or	qword ptr [r9 + rbp*8 + 0xb8], rdi
.label_1329:
	cmp	esi, 0x5f
	je	.label_1335
	movzx	ecx, word ptr [rdx + rsi*2]
	and	ecx, 8
	test	cx, cx
	je	.label_1337
.label_1335:
	lea	ecx, [rax + 1]
	mov	edi, 1
	shl	rdi, cl
	or	qword ptr [r9 + rbp*8 + 0xb8], rdi
.label_1337:
	add	rax, 2
	add	rsi, 2
	cmp	rax, 0x40
	jne	.label_1347
	inc	rbp
	add	rbx, 0x40
	cmp	ebp, 4
	jne	.label_1349
	jmp	.label_1351
.label_1277:
	mov	qword ptr [rsp + 0x60], r13
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1244
	mov	r9, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	r13, qword ptr [rsp + 0x60]
	mov	r15, qword ptr [rsp + 0x58]
	jmp	.label_1346
.label_1301:
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1244
	mov	r9, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [r9 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r9 + 0x70], rbp
	mov	dword ptr [r9 + 0x80], 0
	xor	eax, eax
	mov	rdi, rbx
	jmp	.label_1370
.label_1308:
	mov	r15, rdi
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1244
	mov	r9, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rdi, r15
	jmp	.label_1432
.label_1328:
	mov	dword ptr [r12], 7
	jmp	.label_1218
.label_1458:
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	mov	ecx, 9
	xor	ebp, ebp
	test	rax, rax
	je	.label_1413
	mov	r9, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	jmp	.label_1415
.label_1341:
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	mov	ecx, 0xa
	xor	ebp, ebp
	test	rax, rax
	je	.label_1428
	mov	r9, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	jmp	.label_1433
.label_1421:
	mov	rbx, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1242
	mov	r13, r15
	mov	r9, rbx
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1448
.label_1242:
	mov	dword ptr [r12], 0xc
	jmp	.label_1258
.label_1343:
	mov	dword ptr [r12], 7
	jmp	.label_1269
.label_1435:
	mov	rbp, rdi
	mov	rdi, r13
	mov	rbx, r9
	call	free
	mov	r9, rbx
	jmp	.label_1236
.label_1373:
	test	rsi, rsi
	je	.label_1246
	mov	r14d, 0x400ff
.label_1220:
	mov	rbp, rsi
	mov	rsi, qword ptr [rbp + 8]
	test	rsi, rsi
	jne	.label_1220
	mov	rsi, qword ptr [rbp + 0x10]
	test	rsi, rsi
	jne	.label_1220
.label_1251:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1229
	cmp	eax, 6
	jne	.label_1231
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
	jmp	.label_1243
.label_1229:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1243:
	call	free
.label_1231:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1246
	mov	rsi, qword ptr [rax + 0x10]
	cmp	rsi, rbp
	mov	rbp, rax
	je	.label_1251
	test	rsi, rsi
	mov	rbp, rax
	je	.label_1251
	jmp	.label_1220
.label_1246:
	mov	dword ptr [r12], 8
	jmp	.label_1258
.label_1413:
	mov	r9, qword ptr [rsp + 0x20]
	jmp	.label_1217
.label_1428:
	mov	r9, qword ptr [rsp + 0x20]
	jmp	.label_1217
.label_1357:
	mov	dword ptr [r12], eax
	jmp	.label_1269
.label_1386:
	mov	qword ptr [rsp + 0x60], r13
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1244
	mov	r9, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	r13, qword ptr [rsp + 0x60]
	jmp	.label_1273
.label_1244:
	mov	dword ptr [r12], 0xc
	mov	r13, qword ptr [rsp + 0x60]
.label_1227:
	mov	r15, qword ptr [rsp + 0x58]
	jmp	.label_1234
.label_1293:
	call	free
	mov	rdi, r14
	call	free
	mov	ecx, 0xc
.label_1344:
	mov	r12, qword ptr [rsp + 0x18]
	mov	dword ptr [r12], ecx
.label_1269:
	mov	r9, r13
.label_1218:
	mov	r13, qword ptr [rsp + 0x60]
	mov	r15, qword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 0x20], r9
.label_1234:
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
	jne	.label_1280
.label_1236:
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
.label_1221:
	movzx	eax, byte ptr [rbx + 8]
	cmp	eax, 0x17
	ja	.label_1365
	mov	ecx, 0x8c0800
	bt	ecx, eax
	jae	.label_1325
	mov	r14, qword ptr [r13 + 0x48]
	movdqu	xmm0, xmmword ptr [rbx]
	movdqa	xmmword ptr [rsp + 0xa0], xmm0
	mov	rdx, -1
	cmp	eax, 0x17
	je	.label_1278
	mov	r14, rbp
	cmp	eax, 0x12
	sete	cl
	movzx	r15d, cl
	cmp	eax, 0x13
	mov	rcx, -1
	mov	eax, 1
	cmove	rcx, rax
	jmp	.label_1334
.label_1371:
	lea	rax, [r15 + r15*4]
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, 0x8000
	mov	edx, 0x8000
	cmovle	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_1278:
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
	je	.label_1355
	cmp	eax, 2
	je	.label_1360
	mov	dl, 0x2c
	cmp	ecx, 0x2c
	je	.label_1303
	cmp	ecx, 0x30
	mov	rdx, -2
	jb	.label_1278
	cmp	eax, 1
	jne	.label_1278
	cmp	r15, -2
	je	.label_1278
	cmp	ecx, 0x39
	ja	.label_1278
	cmp	r15, -1
	jne	.label_1371
	lea	rdx, [rcx - 0x30]
	jmp	.label_1278
.label_1303:
	mov	esi, eax
	nop	word ptr [rax + rax]
.label_1355:
	cmp	r15, -1
	jne	.label_1377
	movzx	eax, dl
	cmp	eax, 0x2c
	jne	.label_1379
	cmp	esi, 1
	mov	r15d, 0
	je	.label_1382
.label_1379:
	mov	qword ptr [rsp + 0x50], rbp
	jmp	.label_1385
	nop	word ptr cs:[rax + rax]
.label_1377:
	cmp	r15, -2
	je	.label_1360
	cmp	esi, 0x18
	je	.label_1397
	cmp	esi, 1
	jne	.label_1360
	movzx	ecx, dl
	cmp	ecx, 0x2c
	jne	.label_1360
.label_1382:
	mov	qword ptr [rsp + 0x60], r14
	mov	r14, rbp
	mov	rbp, r12
	mov	rdx, -1
	jmp	.label_1287
.label_1397:
	mov	r14, rbp
	mov	rcx, r15
	jmp	.label_1410
.label_1310:
	lea	rax, [r12 + r12*4]
	lea	rdx, [rcx + rax*2 - 0x30]
	cmp	rdx, 0x8000
	mov	eax, 0x8000
	cmovg	rdx, rax
	nop	dword ptr [rax]
.label_1287:
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
	je	.label_1423
	cmp	eax, 2
	je	.label_1429
	cmp	ecx, 0x2c
	je	.label_1423
	cmp	ecx, 0x30
	mov	rdx, -2
	jb	.label_1287
	cmp	eax, 1
	jne	.label_1287
	cmp	r12, -2
	je	.label_1287
	movzx	eax, cl
	cmp	eax, 0x39
	ja	.label_1287
	cmp	r12, -1
	jne	.label_1310
	add	rcx, -0x30
	mov	rdx, rcx
	jmp	.label_1287
.label_1423:
	mov	rcx, r12
	cmp	rcx, -2
	je	.label_1429
	cmp	rcx, -1
	mov	r12, rbp
	je	.label_1410
	cmp	r15, rcx
	jg	.label_1450
.label_1410:
	cmp	eax, 0x18
	jne	.label_1450
	cmp	rcx, -1
	mov	rax, rcx
	cmove	rax, r15
	cmp	rax, 0x8000
	jge	.label_1454
.label_1334:
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
	je	.label_1281
	mov	r9, rbp
	mov	qword ptr [rsp + 0x58], r9
	mov	rax, r9
	or	rax, r15
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, rdi
	je	.label_1224
	test	r15, r15
	mov	eax, 0
	mov	qword ptr [rsp + 0x28], rax
	mov	r12, rdi
	mov	r8, qword ptr [rsp + 0x20]
	pxor	xmm1, xmm1
	jg	.label_1233
.label_1426:
	movzx	eax, byte ptr [r12 + 0x30]
	cmp	eax, 0x11
	jne	.label_1241
	mov	rax, qword ptr [r12 + 0x28]
	mov	rdx, r12
	nop	word ptr [rax + rax]
.label_1248:
	mov	rcx, rdx
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_1248
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_1248
	nop	word ptr cs:[rax + rax]
.label_1270:
	mov	edx, dword ptr [rcx + 0x30]
	movzx	esi, dl
	cmp	esi, 0x11
	jne	.label_1262
	cmp	qword ptr [rcx + 0x28], rax
	jne	.label_1262
	or	edx, 0x80000
	mov	dword ptr [rcx + 0x30], edx
.label_1262:
	mov	rsi, qword ptr [rcx]
	test	rsi, rsi
	je	.label_1241
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	rdx, rcx
	mov	rcx, rsi
	je	.label_1270
	test	rdx, rdx
	mov	rcx, rsi
	je	.label_1270
	jmp	.label_1248
	nop	dword ptr [rax + rax]
.label_1241:
	mov	qword ptr [rsp + 0x50], rdi
	cmp	r9, -1
	sete	bl
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1274
	mov	rax, qword ptr [r8 + 0x70]
.label_1350:
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
	je	.label_1299
	mov	qword ptr [r12], r13
.label_1299:
	add	r15, 2
	cmp	r15, r9
	jg	.label_1296
	jmp	.label_1298
	nop	word ptr cs:[rax + rax]
.label_1224:
	mov	rbx, rax
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jne	.label_1224
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_1224
	nop	word ptr cs:[rax + rax]
.label_1327:
	mov	eax, dword ptr [rbx + 0x30]
	mov	ecx, 0x400ff
	and	eax, ecx
	cmp	eax, 3
	je	.label_1313
	cmp	eax, 6
	jne	.label_1317
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
	jmp	.label_1339
	nop	word ptr cs:[rax + rax]
.label_1313:
	mov	rdi, qword ptr [rbx + 0x28]
.label_1339:
	call	free
.label_1317:
	mov	rdx, qword ptr [rbx]
	test	rdx, rdx
	mov	ecx, 0
	je	.label_1281
	mov	rax, qword ptr [rdx + 0x10]
	cmp	rax, rbx
	mov	rbx, rdx
	je	.label_1327
	test	rax, rax
	mov	rbx, rdx
	je	.label_1327
	jmp	.label_1224
.label_1320:
	mov	qword ptr [rsp + 0x58], r9
	mov	qword ptr [rsp + 0x60], r15
	mov	r15, r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1238
	mov	r8, r15
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 0x58]
	jmp	.label_1340
.label_1403:
	mov	qword ptr [rsp + 0x60], r15
	mov	r15, r8
	mov	r12, rbx
	jmp	.label_1353
.label_1279:
	mov	edi, 0x3c8
	mov	rbp, r8
	mov	r14, r9
	call	malloc
	mov	r9, r14
	pxor	xmm1, xmm1
	mov	r8, rbp
	test	rax, rax
	je	.label_1272
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1261
.label_1238:
	mov	qword ptr [rsp + 0x80], 0
	jmp	.label_1367
.label_1312:
	mov	qword ptr [r14], 0
.label_1367:
	xor	r12d, r12d
.label_1353:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	r8, r15
	pxor	xmm1, xmm1
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 0x58]
	je	.label_1272
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1384
	nop	word ptr cs:[rax + rax]
.label_1298:
	mov	rbp, qword ptr [r12]
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1320
	mov	rax, qword ptr [r8 + 0x70]
.label_1340:
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
	jmp	.label_1406
	nop	word ptr cs:[rax + rax]
.label_1240:
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
.label_1406:
	mov	qword ptr [rcx], rbp
	mov	rax, qword ptr [r14]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rbp, qword ptr [r14]
	mov	rax, qword ptr [r12 + 8]
	test	rax, rax
	je	.label_1452
	lea	r14, [rbp + 8]
	mov	r12, rax
	jmp	.label_1457
	nop	
.label_1452:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1315:
	mov	rcx, rax
	mov	rax, r12
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rcx
	je	.label_1322
	test	r12, r12
	jne	.label_1464
.label_1322:
	mov	r12, qword ptr [rax]
	mov	rbp, qword ptr [rbp]
	test	r12, r12
	jne	.label_1315
	jmp	.label_1249
.label_1464:
	lea	r14, [rbp + 0x10]
.label_1457:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1228
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_1240
.label_1228:
	mov	qword ptr [rsp + 0x60], r15
	mov	r15, r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1312
	mov	r8, r15
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 0x58]
	jmp	.label_1240
	nop	word ptr cs:[rax + rax]
.label_1249:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1403
	mov	rax, qword ptr [r8 + 0x70]
	mov	r12, rbx
.label_1384:
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
	je	.label_1272
	mov	qword ptr [r12], rbx
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1279
	mov	rax, qword ptr [r8 + 0x70]
.label_1261:
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
	jl	.label_1298
.label_1296:
	mov	rax, qword ptr [rsp + 0x28]
	test	rax, rax
	je	.label_1304
	mov	rbx, rax
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	mov	r12, qword ptr [rsp + 0x18]
	je	.label_1230
	mov	rax, qword ptr [r8 + 0x70]
.label_1319:
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
	jmp	.label_1362
.label_1304:
	mov	r12, qword ptr [rsp + 0x18]
.label_1362:
	xor	eax, eax
	mov	rcx, r13
	jmp	.label_1336
.label_1450:
	mov	qword ptr [rsp + 0x50], r14
.label_1385:
	mov	dword ptr [r12], 0xa
	xor	ecx, ecx
	jmp	.label_1281
.label_1233:
	cmp	r15, 2
	mov	r13, rdi
	mov	rbp, rdi
	jl	.label_1331
	mov	rax, qword ptr [rsp + 0x50]
	mov	rbp, qword ptr [rax]
	mov	r13, rax
	mov	ebx, 2
	mov	rdi, rax
	jmp	.label_1300
.label_1274:
	mov	edi, 0x3c8
	mov	rbp, r8
	mov	r14, r9
	call	malloc
	mov	r9, r14
	pxor	xmm1, xmm1
	mov	r8, rbp
	test	rax, rax
	je	.label_1272
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1350
.label_1429:
	mov	r12, rbp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x60]
.label_1360:
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_1356
	mov	qword ptr [r13 + 0x48], r14
	movdqa	xmm0, xmmword ptr [rsp + 0xa0]
	movdqu	xmmword ptr [rbx], xmm0
	mov	byte ptr [rbx + 8], 1
	mov	rcx, rbp
	mov	qword ptr [rsp + 0x50], rbp
	jmp	.label_1281
.label_1436:
	mov	qword ptr [rsp + 0x60], rdi
	mov	qword ptr [rsp + 0x58], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1372
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
	jmp	.label_1374
.label_1412:
	mov	qword ptr [rsp + 0x60], rdi
	mov	r13, rbp
	jmp	.label_1388
.label_1372:
	mov	qword ptr [rsp + 0x80], 0
	jmp	.label_1393
.label_1267:
	mov	qword ptr [r12], 0
.label_1393:
	xor	r13d, r13d
.label_1388:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	r8, qword ptr [rsp + 0x20]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x58]
	je	.label_1272
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	mov	rdi, qword ptr [rsp + 0x60]
	jmp	.label_1366
	nop	dword ptr [rax + rax]
.label_1300:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1436
	mov	r14, rbp
	mov	rax, qword ptr [r8 + 0x70]
.label_1374:
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
	jmp	.label_1425
	nop	word ptr cs:[rax + rax]
.label_1263:
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
.label_1425:
	mov	qword ptr [rcx], r14
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rdx, qword ptr [r12]
	mov	rax, qword ptr [r13 + 8]
	test	rax, rax
	je	.label_1223
	mov	r14, rdx
	lea	r12, [r14 + 8]
	mov	r13, rax
	jmp	.label_1232
	nop	word ptr cs:[rax + rax]
.label_1223:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1250:
	mov	rcx, rax
	mov	rax, r13
	mov	r13, qword ptr [rax + 0x10]
	cmp	r13, rcx
	je	.label_1330
	test	r13, r13
	jne	.label_1352
.label_1330:
	mov	r13, qword ptr [rax]
	mov	rdx, qword ptr [rdx]
	test	r13, r13
	jne	.label_1250
	jmp	.label_1255
.label_1352:
	mov	r14, rdx
	lea	r12, [r14 + 0x10]
.label_1232:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1260
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_1263
.label_1260:
	mov	qword ptr [rsp + 0x60], rdi
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1267
	mov	r8, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rsp + 0x60]
	jmp	.label_1263
	nop	word ptr cs:[rax + rax]
.label_1255:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1412
	mov	rax, qword ptr [r8 + 0x70]
	mov	r13, rbp
.label_1366:
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
	je	.label_1286
	mov	qword ptr [rdi], rdx
.label_1286:
	test	r13, r13
	je	.label_1272
	mov	rbp, rdx
	mov	qword ptr [r13], rbp
	cmp	rbx, r15
	lea	rbx, [rbx + 1]
	mov	rdi, rbp
	jl	.label_1300
.label_1331:
	cmp	r15, r9
	jne	.label_1307
	mov	qword ptr [rsp + 0x20], r8
	mov	rcx, rbp
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_1281
.label_1230:
	mov	qword ptr [rsp + 0x20], r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	ecx, 0
	je	.label_1281
	mov	r8, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	jmp	.label_1319
.label_1307:
	mov	rbx, qword ptr [r13]
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1323
	mov	qword ptr [rsp + 0x28], rbp
	mov	rax, qword ptr [r8 + 0x70]
.label_1440:
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
	jmp	.label_1404
	nop	word ptr cs:[rax + rax]
.label_1257:
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
.label_1404:
	mov	qword ptr [rcx], rbx
	mov	rax, qword ptr [rbp]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rbx, qword ptr [rbp]
	mov	rax, qword ptr [r13 + 8]
	test	rax, rax
	je	.label_1368
	lea	rbp, [rbx + 8]
	mov	r13, rax
	jmp	.label_1375
.label_1368:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1390:
	mov	rcx, rax
	mov	rax, r13
	mov	r13, qword ptr [rax + 0x10]
	cmp	r13, rcx
	je	.label_1383
	test	r13, r13
	jne	.label_1409
.label_1383:
	mov	r13, qword ptr [rax]
	mov	rbx, qword ptr [rbx]
	test	r13, r13
	jne	.label_1390
	jmp	.label_1394
.label_1409:
	lea	rbp, [rbx + 0x10]
.label_1375:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1389
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_1257
.label_1389:
	mov	qword ptr [rsp + 0x58], r9
	mov	r14, r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1407
	mov	r8, r14
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x58]
	jmp	.label_1257
.label_1356:
	mov	qword ptr [rsp + 0x50], rbp
	cmp	eax, 2
	setne	al
	movzx	eax, al
	add	eax, 9
	mov	dword ptr [r12], eax
	xor	ecx, ecx
	jmp	.label_1281
.label_1394:
	mov	rdi, qword ptr [rsp + 0x50]
	jmp	.label_1426
.label_1454:
	mov	qword ptr [rsp + 0x50], r14
	mov	dword ptr [r12], 0xf
	xor	ecx, ecx
	jmp	.label_1281
.label_1323:
	mov	r14, r9
	mov	r12, r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1438
	mov	qword ptr [rsp + 0x28], rbp
	mov	r8, r12
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r9, r14
	jmp	.label_1440
.label_1438:
	mov	qword ptr [rsp + 0x80], 0
	jmp	.label_1272
.label_1407:
	mov	qword ptr [rbp], 0
.label_1272:
	mov	r12, qword ptr [rsp + 0x18]
	mov	dword ptr [r12], 0xc
	xor	ecx, ecx
.label_1281:
	test	rcx, rcx
	sete	al
	jne	.label_1336
	mov	edx, dword ptr [r12]
	test	edx, edx
	mov	rbx, qword ptr [rsp + 0x40]
	je	.label_1460
	jmp	.label_1462
	nop	word ptr cs:[rax + rax]
.label_1336:
	mov	rbx, qword ptr [rsp + 0x40]
.label_1460:
	cmp	qword ptr [rsp + 0x30], 0
	mov	rbp, rcx
	mov	r13, qword ptr [rsp + 0x38]
	je	.label_1221
	movzx	edx, byte ptr [rbx + 8]
	cmp	edx, 0x17
	je	.label_1398
	cmp	edx, 0xb
	mov	rbp, rcx
	jne	.label_1221
.label_1398:
	test	al, al
	jne	.label_1235
	mov	r14d, 0x400ff
	nop	dword ptr [rax]
.label_1239:
	mov	rbp, rcx
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	jne	.label_1239
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	jne	.label_1239
	nop	word ptr cs:[rax + rax]
.label_1276:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1420
	cmp	eax, 6
	jne	.label_1253
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
	jmp	.label_1441
	nop	dword ptr [rax]
.label_1420:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1441:
	call	free
.label_1253:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1235
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_1276
	test	rcx, rcx
	mov	rbp, rax
	je	.label_1276
	jmp	.label_1239
.label_1462:
	xor	r15d, r15d
	mov	rcx, qword ptr [rsp + 0x50]
	test	rcx, rcx
	je	.label_1280
	mov	r14d, 0x400ff
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1285:
	mov	rbp, rcx
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	jne	.label_1285
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	jne	.label_1285
	nop	word ptr cs:[rax + rax]
.label_1264:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1289
	cmp	eax, 6
	jne	.label_1292
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
	jmp	.label_1358
	nop	dword ptr [rax]
.label_1289:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1358:
	call	free
.label_1292:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1280
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_1264
	test	rcx, rcx
	mov	rbp, rax
	je	.label_1264
	jmp	.label_1285
.label_1235:
	mov	dword ptr [r12], 0xd
.label_1258:
	xor	r15d, r15d
	jmp	.label_1280
.label_1365:
	mov	r15, rbp
	jmp	.label_1280
.label_1325:
	mov	r15, rbp
.label_1280:
	mov	rax, r15
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1414:
	mov	edi, OFFSET FLAT:.str.5_1
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0xced
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.parse_bracket_exp
	call	__assert_fail
	nop	
	.section	.text
	.align	16
	#Procedure 0x4101c0

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
	je	.label_1478
	mov	qword ptr [rsp], r15
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	test	r15, r15
	je	.label_1465
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
	jne	.label_1474
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_1477
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_1480:
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
	jne	.label_1480
.label_1477:
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_1466
	movdqu	xmm0, xmmword ptr [rbx]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx], xmm0
	movdqu	xmm0, xmmword ptr [rbx + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx + 0x10], xmm0
.label_1466:
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_1473
	mov	rax, qword ptr [r12 + 0x78]
	mov	rcx, qword ptr [rax]
	and	qword ptr [rbx], rcx
	mov	rcx, qword ptr [rax + 8]
	and	qword ptr [rbx + 8], rcx
	mov	rcx, qword ptr [rax + 0x10]
	and	qword ptr [rbx + 0x10], rcx
	mov	rax, qword ptr [rax + 0x18]
	and	qword ptr [rbx + 0x18], rax
.label_1473:
	mov	ecx, dword ptr [r12 + 0x80]
	cmp	ecx, 0xf
	je	.label_1468
	mov	rax, qword ptr [r12 + 0x70]
.label_1472:
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
	jl	.label_1470
	or	byte ptr [r12 + 0xb0], 2
	mov	eax, dword ptr [r12 + 0x80]
	cmp	eax, 0xf
	je	.label_1469
	mov	rbp, qword ptr [r12 + 0x70]
.label_1481:
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
	je	.label_1482
	mov	rcx, qword ptr [r12 + 0x70]
.label_1476:
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
	jmp	.label_1475
.label_1470:
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
	jmp	.label_1475
.label_1478:
	mov	dword ptr [r15], 0xc
	jmp	.label_1467
.label_1465:
	mov	rdi, rbx
	jmp	.label_1479
.label_1474:
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
	jmp	.label_1467
.label_1468:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1471
	mov	rcx, qword ptr [r12 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r12 + 0x70], rax
	mov	dword ptr [r12 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1472
.label_1469:
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1471
	mov	rax, qword ptr [r12 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r12 + 0x70], rbp
	mov	dword ptr [r12 + 0x80], 0
	xor	eax, eax
	jmp	.label_1481
.label_1471:
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
.label_1479:
	call	free
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
.label_1467:
	xor	eax, eax
.label_1475:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1482:
	mov	edi, 0x3c8
	call	malloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_1475
	mov	rdx, qword ptr [r12 + 0x70]
	mov	qword ptr [rcx], rdx
	mov	qword ptr [r12 + 0x70], rcx
	mov	dword ptr [r12 + 0x80], 0
	jmp	.label_1476
	nop	
	.section	.text
	.align	16
	#Procedure 0x410590

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	mov	rax, qword ptr [rsi + 0x48]
	cmp	qword ptr [rsi + 0x68], rax
	jle	.label_1488
	mov	rcx, qword ptr [rsi + 8]
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	dword ptr [rsi + 0x90], 2
	jl	.label_1491
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, qword ptr [rsi + 0x30]
	je	.label_1491
	mov	rcx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rcx + r8*4], -1
	je	.label_1486
.label_1491:
	test	dl, 1
	je	.label_1484
	movzx	ecx, al
	cmp	ecx, 0x5c
	jne	.label_1484
	mov	rcx, qword ptr [rsi + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rsi + 0x58]
	jge	.label_1484
	mov	qword ptr [rsi + 0x48], rcx
	mov	rax, qword ptr [rsi + 8]
	mov	al, byte ptr [rax + rcx]
	mov	byte ptr [rdi], al
	jmp	.label_1486
.label_1488:
	mov	byte ptr [rdi + 8], 2
	xor	eax, eax
	ret	
.label_1484:
	cmp	eax, 0x5b
	jne	.label_1493
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	cmp	rax, qword ptr [rsi + 0x58]
	jge	.label_1494
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	jmp	.label_1485
.label_1493:
	cmp	eax, 0x5e
	je	.label_1487
	cmp	eax, 0x5d
	je	.label_1489
	cmp	eax, 0x2d
	jne	.label_1486
	mov	byte ptr [rdi + 8], 0x16
	mov	eax, 1
	ret	
.label_1486:
	mov	byte ptr [rdi + 8], 1
	mov	eax, 1
	ret	
.label_1494:
	xor	eax, eax
.label_1485:
	mov	byte ptr [rdi], al
	movzx	eax, al
	cmp	eax, 0x3d
	je	.label_1490
	cmp	eax, 0x3a
	je	.label_1495
	cmp	eax, 0x2e
	jne	.label_1483
	mov	byte ptr [rdi + 8], 0x1a
	mov	eax, 2
	ret	
.label_1489:
	mov	byte ptr [rdi + 8], 0x15
	mov	eax, 1
	ret	
.label_1495:
	test	dl, 4
	jne	.label_1492
.label_1483:
	mov	byte ptr [rdi + 8], 1
	mov	byte ptr [rdi], 0x5b
	mov	eax, 1
	ret	
.label_1487:
	mov	byte ptr [rdi + 8], 0x19
	mov	eax, 1
	ret	
.label_1490:
	mov	byte ptr [rdi + 8], 0x1c
	mov	eax, 2
	ret	
.label_1492:
	mov	byte ptr [rdi + 8], 0x1e
	mov	eax, 2
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410690

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
	je	.label_1500
	lea	rax, [rdx + 1]
	mov	rbx, qword ptr [rsi + 0x30]
	cmp	rax, rbx
	jge	.label_1500
	mov	r10, qword ptr [rsi + 0x10]
	lea	r11, [r10 + rdx*4]
	mov	edi, 1
	nop	dword ptr [rax + rax]
.label_1514:
	cmp	dword ptr [r11 + rdi*4], -1
	jne	.label_1512
	lea	rax, [rdx + rdi + 1]
	inc	rdi
	cmp	rax, rbx
	jl	.label_1514
.label_1512:
	cmp	edi, 2
	jl	.label_1500
	mov	dword ptr [r14], 1
	mov	eax, dword ptr [r10 + rdx*4]
	mov	dword ptr [r14 + 8], eax
	movsxd	rax, edi
	add	rax, rdx
	mov	qword ptr [rsi + 0x48], rax
	jmp	.label_1515
.label_1500:
	movsxd	rax, ecx
	add	rdx, rax
	mov	qword ptr [rsi + 0x48], rdx
	movzx	edi, byte ptr [r15 + 8]
	lea	eax, [rdi - 0x16]
	cmp	eax, 8
	ja	.label_1501
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1503]]
.label_2643:
	mov	eax, 7
	cmp	qword ptr [rsi + 0x68], rdx
	jle	.label_1496
	mov	r11b, byte ptr [r15]
	xor	r12d, r12d
	jmp	.label_1506
.label_1517:
	inc	r12
	movzx	edi, byte ptr [r15 + 8]
.label_1506:
	movzx	edi, dil
	cmp	edi, 0x1e
	jne	.label_1510
	cmp	byte ptr [rsi + 0x8b], 0
	jne	.label_1513
	mov	rbx, qword ptr [rsi + 0x48]
	lea	rdi, [rbx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + rbx]
	jmp	.label_1505
	nop	
.label_1510:
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbx, qword ptr [rsi + 8]
.label_1508:
	mov	bl, byte ptr [rbx + rdx]
.label_1505:
	cmp	qword ptr [rsi + 0x68], rdi
	jle	.label_1496
	movzx	edx, r11b
	movzx	ecx, bl
	cmp	ecx, edx
	jne	.label_1499
	mov	rcx, qword ptr [rsi + 8]
	movzx	ecx, byte ptr [rcx + rdi]
	cmp	ecx, 0x5d
	je	.label_1502
.label_1499:
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + r12], bl
	cmp	r12, 0x1e
	jle	.label_1517
	jmp	.label_1496
.label_1513:
	cmp	byte ptr [rsi + 0x8c], 0
	je	.label_1507
	mov	r9, qword ptr [rsi + 0x30]
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, r9
	je	.label_1509
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rdx + r8*4], -1
	je	.label_1504
.label_1509:
	mov	rdx, qword ptr [rsi]
	mov	rdi, qword ptr [rsi + 0x18]
	mov	rbx, qword ptr [rsi + 0x28]
	add	rbx, qword ptr [rdi + r8*8]
	mov	bl, byte ptr [rdx + rbx]
	test	bl, bl
	js	.label_1504
	mov	edi, 1
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_1497
	lea	rdx, [r8 + 1]
	cmp	rdx, r9
	jge	.label_1497
	lea	r10, [r8*4]
	add	r10, qword ptr [rsi + 0x10]
	mov	edi, 1
.label_1511:
	cmp	dword ptr [r10 + rdi*4], -1
	jne	.label_1497
	lea	rdx, [r8 + rdi + 1]
	inc	rdi
	cmp	rdx, r9
	jl	.label_1511
.label_1497:
	movsxd	rdi, edi
	add	rdi, r8
	mov	qword ptr [rsi + 0x48], rdi
	jmp	.label_1505
.label_1507:
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	add	rdx, qword ptr [rsi + 0x28]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbx, qword ptr [rsi]
	jmp	.label_1508
.label_1504:
	lea	rdi, [r8 + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + r8]
	jmp	.label_1505
.label_1502:
	inc	rdi
	mov	qword ptr [rsi + 0x48], rdi
	movsxd	rax, r12d
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rax], 0
	movzx	ecx, byte ptr [r15 + 8]
	xor	eax, eax
	cmp	ecx, 0x1e
	je	.label_1516
	cmp	ecx, 0x1c
	je	.label_1498
	cmp	ecx, 0x1a
	jne	.label_1496
	mov	dword ptr [r14], 3
	jmp	.label_1496
.label_1516:
	mov	dword ptr [r14], 4
	jmp	.label_1496
.label_1498:
	mov	dword ptr [r14], 2
	jmp	.label_1496
.label_2642:
	test	r9b, r9b
	jne	.label_1501
	lea	rdi, [rsp + 8]
	mov	rdx, r8
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x10]
	mov	eax, 0xb
	cmp	ecx, 0x15
	jne	.label_1496
.label_1501:
	mov	dword ptr [r14], 0
	mov	al, byte ptr [r15]
	mov	byte ptr [r14 + 8], al
.label_1515:
	xor	eax, eax
.label_1496:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4108f0

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
	je	.label_1534
	mov	esi, OFFSET FLAT:.str.7_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1529
	mov	esi, OFFSET FLAT:.str.8_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	jne	.label_1534
.label_1529:
	mov	r12d, OFFSET FLAT:.str.9_1
.label_1534:
	mov	rbp, qword ptr [r13]
	cmp	rbp, qword ptr [rbx + 0x48]
	je	.label_1536
.label_1574:
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
	je	.label_1552
	mov	esi, OFFSET FLAT:.str.10_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1556
	mov	esi, OFFSET FLAT:.str.8_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1559
	mov	esi, OFFSET FLAT:.str.3_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1562
	mov	esi, OFFSET FLAT:.str.9_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1569
	mov	esi, OFFSET FLAT:.str.11_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1573
	mov	esi, OFFSET FLAT:.str.12_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1578
	mov	esi, OFFSET FLAT:.str.7_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1528
	mov	esi, OFFSET FLAT:.str.13_0
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1525
	mov	esi, OFFSET FLAT:.str.14_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1526
	mov	esi, OFFSET FLAT:.str.15_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1572
	mov	esi, OFFSET FLAT:.str.16_0
	mov	rdi, r12
	call	strcmp
	mov	ecx, eax
	mov	eax, 4
	test	ecx, ecx
	jne	.label_1518
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1520
.label_1560:
	test	byte ptr [rsi + rdx*2 + 1], 0x10
	je	.label_1567
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1567:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1560
	jmp	.label_1518
.label_1552:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1532
	nop	word ptr cs:[rax + rax]
.label_1568:
	test	byte ptr [rsi + rdx*2], 8
	je	.label_1571
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1571:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1568
	jmp	.label_1518
	nop	dword ptr [rax]
.label_1532:
	test	byte ptr [rsi + rdx*2], 8
	je	.label_1524
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1524:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1532
	jmp	.label_1518
.label_1556:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1539
	nop	
.label_1553:
	test	byte ptr [rsi + rdx*2], 2
	je	.label_1565
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1565:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1553
	jmp	.label_1518
	nop	dword ptr [rax]
.label_1539:
	test	byte ptr [rsi + rdx*2], 2
	je	.label_1558
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1558:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1539
	jmp	.label_1518
.label_1559:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1533
	nop	
.label_1580:
	test	byte ptr [rsi + rdx*2 + 1], 2
	je	.label_1579
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1579:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1580
	jmp	.label_1518
	nop	word ptr [rax + rax]
.label_1533:
	test	byte ptr [rsi + rdx*2 + 1], 2
	je	.label_1548
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1548:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1533
	jmp	.label_1518
.label_1562:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1540
	nop	
.label_1554:
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	je	.label_1544
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1544:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1554
	jmp	.label_1518
.label_1540:
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	je	.label_1557
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1557:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1540
	jmp	.label_1518
.label_1536:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1518
	lea	rax, [rbp + rbp + 1]
	mov	qword ptr [rbx + 0x18], rcx
	mov	qword ptr [r13], rax
	jmp	.label_1574
.label_1569:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1549
	nop	word ptr cs:[rax + rax]
.label_1535:
	test	byte ptr [rsi + rdx*2 + 1], 4
	je	.label_1519
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1519:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1535
	jmp	.label_1518
.label_1549:
	test	byte ptr [rsi + rdx*2 + 1], 4
	je	.label_1542
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1542:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1549
	jmp	.label_1518
.label_1573:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1550
	nop	dword ptr [rax]
.label_1563:
	test	byte ptr [rsi + rdx*2 + 1], 8
	je	.label_1545
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1545:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1563
	jmp	.label_1518
.label_1550:
	test	byte ptr [rsi + rdx*2 + 1], 8
	je	.label_1570
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1570:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1550
	jmp	.label_1518
.label_1578:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1581
	nop	dword ptr [rax]
.label_1543:
	test	byte ptr [rsi + rdx*2 + 1], 0x40
	je	.label_1538
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1538:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1543
	jmp	.label_1518
.label_1581:
	test	byte ptr [rsi + rdx*2 + 1], 0x40
	je	.label_1564
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1564:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1581
	jmp	.label_1518
.label_1528:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1523
	nop	dword ptr [rax]
.label_1576:
	test	byte ptr [rsi + rdx*2 + 1], 1
	je	.label_1546
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1546:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1576
	jmp	.label_1518
.label_1523:
	test	byte ptr [rsi + rdx*2 + 1], 1
	je	.label_1521
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1521:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1523
	jmp	.label_1518
.label_1525:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1547
	nop	dword ptr [rax]
.label_1537:
	test	byte ptr [rsi + rdx*2], 1
	je	.label_1527
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1527:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1537
	jmp	.label_1518
.label_1547:
	test	byte ptr [rsi + rdx*2], 1
	je	.label_1522
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1522:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1547
	jmp	.label_1518
.label_1526:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1555
.label_1561:
	cmp	word ptr [rsi + rdx*2], 0
	jns	.label_1531
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1531:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1561
	jmp	.label_1518
.label_1555:
	cmp	word ptr [rsi + rdx*2], 0
	jns	.label_1566
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1566:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1555
	jmp	.label_1518
.label_1520:
	test	byte ptr [rsi + rdx*2 + 1], 0x10
	je	.label_1577
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1577:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1520
	jmp	.label_1518
.label_1572:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1541
.label_1575:
	test	byte ptr [rsi + rdx*2], 4
	je	.label_1530
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1530:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1575
.label_1518:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1541:
	test	byte ptr [rsi + rdx*2], 4
	je	.label_1551
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1551:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1541
	jmp	.label_1518
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4110a0

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
	ja	.label_1589
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rbx * 8) + label_1594]]
.label_2604:
	mov	r14, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	rax, qword ptr [rsi + 0x20]
	mov	r15, qword ptr [rax + 0x38]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1584]]
	movups	xmmword ptr [r14 + rbx*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + rbx*8 + 0x10], rax
	test	rax, rax
	je	.label_1592
	mov	qword ptr [rax], r15
	jmp	.label_1582
.label_2605:
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
	js	.label_1583
	mov	rax, qword ptr [rax]
	mov	r15, qword ptr [rax + 0x38]
	test	r15, r15
	js	.label_1588
	mov	r12, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	qword ptr [r12 + rbx*8], 2
	mov	edi, 0x10
	call	malloc
	mov	rcx, rax
	mov	qword ptr [r12 + rbx*8 + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1586
	lea	rax, [r12 + rbx*8 + 8]
	cmp	r14, r15
	jne	.label_1587
	mov	qword ptr [rax], 1
	mov	qword ptr [rcx], r14
	jmp	.label_1582
.label_2602:
	cmp	qword ptr [rsi + 0x20], 0
	mov	eax, 0
	je	.label_1586
	mov	edi, OFFSET FLAT:.str.17_2
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x59f
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_2603:
	mov	rax, qword ptr [rsi + 0x20]
	mov	rbx, qword ptr [rax + 0x38]
	mov	rax, qword ptr [rdi + 0x18]
	mov	qword ptr [rax + rcx*8], rbx
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 4
	jne	.label_1582
	mov	r14, qword ptr [rdi + 0x28]
	lea	r15, [rcx + rcx*2]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1584]]
	movups	xmmword ptr [r14 + r15*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + r15*8 + 0x10], rax
	test	rax, rax
	je	.label_1593
	mov	qword ptr [rax], rbx
	jmp	.label_1582
.label_1589:
	test	dl, 8
	jne	.label_1585
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_1582
.label_1587:
	mov	qword ptr [rax], 2
	jge	.label_1590
	mov	qword ptr [rcx], r14
	mov	qword ptr [rcx + 8], r15
	jmp	.label_1582
.label_1590:
	mov	qword ptr [rcx], r15
	mov	qword ptr [rcx + 8], r14
.label_1582:
	xor	eax, eax
.label_1586:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1592:
	lea	rax, [r14 + rbx*8]
.label_1591:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	eax, 0xc
	jmp	.label_1586
.label_1593:
	lea	rax, [r14 + r15*8]
	jmp	.label_1591
.label_1583:
	mov	edi, OFFSET FLAT:.str.18_2
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5af
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_1588:
	mov	edi, OFFSET FLAT:.str.19_1
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5b0
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_1585:
	mov	edi, OFFSET FLAT:.str.20_0
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4112b0

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
	mov	r14, rcx
	mov	rbx, rsi
	mov	r12, qword ptr [r14 + 8]
	test	dl, 0x10
	je	.label_1600
	test	r12, r12
	je	.label_1600
	mov	rax, qword ptr [r14 + 0x28]
	cmp	rax, 0x3f
	jg	.label_1601
	mov	rcx, qword ptr [rbx + 0xa0]
	bt	rcx, rax
	jae	.label_1601
.label_1600:
	mov	r13d, dword ptr [rbx + 0x80]
	cmp	r13d, 0xf
	je	.label_1604
	mov	qword ptr [rsp], rdi
	mov	rax, qword ptr [rbx + 0x70]
.label_1608:
	lea	ecx, [r13 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r13d
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 8
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	r15d, dword ptr [rbx + 0x80]
	cmp	r15d, 0xf
	je	.label_1598
	mov	rax, qword ptr [rbx + 0x70]
.label_1603:
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
.label_1599:
	test	r12, r12
	mov	rbp, r15
	je	.label_1605
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	je	.label_1606
	mov	rax, qword ptr [rbx + 0x70]
.label_1597:
	lea	ecx, [rbp + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r12], rbp
	test	r15, r15
	je	.label_1605
	mov	qword ptr [r15], rbp
.label_1605:
	mov	r12d, dword ptr [rbx + 0x80]
	cmp	r12d, 0xf
	je	.label_1609
	mov	rax, qword ptr [rbx + 0x70]
.label_1596:
	lea	ecx, [r12 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r12d
	shl	rcx, 6
	lea	r12, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r13
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	r13, r13
	je	.label_1602
	mov	qword ptr [r13], r12
.label_1602:
	test	rbp, rbp
	je	.label_1607
	mov	qword ptr [rbp], r12
.label_1607:
	test	r15, r15
	je	.label_1595
	test	r13, r13
	je	.label_1595
	test	rbp, rbp
	je	.label_1595
	test	r12, r12
	je	.label_1595
	mov	rax, qword ptr [r14 + 0x28]
	mov	qword ptr [r15 + 0x28], rax
	mov	qword ptr [r13 + 0x28], rax
	mov	eax, 0x80000
	and	eax, dword ptr [r14 + 0x30]
	mov	ecx, 0xfff7ffff
	mov	edx, dword ptr [r15 + 0x30]
	and	edx, ecx
	or	edx, eax
	mov	dword ptr [r15 + 0x30], edx
	and	ecx, dword ptr [r13 + 0x30]
	or	ecx, eax
	mov	dword ptr [r13 + 0x30], ecx
.label_1601:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1604:
	mov	qword ptr [rsp], rdi
	mov	edi, 0x3c8
	call	malloc
	xor	r13d, r13d
	test	rax, rax
	je	.label_1598
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1608
.label_1598:
	mov	edi, 0x3c8
	call	malloc
	xor	r15d, r15d
	test	rax, rax
	je	.label_1599
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1603
.label_1609:
	mov	edi, 0x3c8
	call	malloc
	xor	r12d, r12d
	test	rax, rax
	je	.label_1607
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1596
.label_1595:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	xor	r12d, r12d
	jmp	.label_1601
.label_1606:
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_1605
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1597
	nop	
	.section	.text
	.align	16
	#Procedure 0x4115a0

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
	jae	.label_1612
.label_1613:
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
	jne	.label_1614
	mov	cl, 1
	cmp	dword ptr [rbx + 0xb4], 1
	jg	.label_1615
.label_1614:
	cmp	eax, 6
	sete	cl
.label_1615:
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
.label_1611:
	mov	rax, r15
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1612:
	lea	rbp, [r13 + r13]
	mov	r15, -1
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rbp, rax
	ja	.label_1611
	mov	rdi, qword ptr [rbx]
	mov	rsi, r13
	shl	rsi, 5
	call	realloc
	test	rax, rax
	je	.label_1611
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
	je	.label_1610
	test	rax, rax
	je	.label_1610
	test	r13, r13
	je	.label_1610
	test	rbp, rbp
	je	.label_1610
	mov	qword ptr [rbx + 0x18], rdi
	mov	qword ptr [rbx + 0x20], rax
	mov	qword ptr [rbx + 0x28], r13
	mov	qword ptr [rbx + 0x30], rbp
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	jmp	.label_1613
.label_1610:
	mov	rbx, rax
	call	free
	mov	rdi, rbx
	call	free
	mov	rdi, r13
	call	free
	mov	rdi, rbp
	call	free
	jmp	.label_1611
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411770

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
	je	.label_1620
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
	je	.label_1618
	lea	rdx, [r15 + r14*8 + 8]
	cmp	qword ptr [rdx], 0
	je	.label_1618
	mov	rdx, qword ptr [r15 + r14*8 + 0x10]
	mov	rdx, qword ptr [rdx]
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 0xa], 4
	jne	.label_1618
	mov	rdi, rbp
	mov	rsi, r12
	mov	rdx, r12
	mov	rcx, r12
	call	duplicate_node_closure
	test	eax, eax
	jne	.label_1620
	mov	rax, qword ptr [rbp]
	mov	eax, dword ptr [rax + rbx + 8]
.label_1618:
	mov	rbx, r12
	test	al, 8
	jne	.label_1627
	xor	r15d, r15d
	jmp	.label_1617
.label_1627:
	mov	rax, qword ptr [rbp + 0x28]
	cmp	qword ptr [rax + r14*8 + 8], 0
	jle	.label_1619
	xor	r15d, r15d
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_1626:
	mov	rax, qword ptr [rax + r14*8 + 0x10]
	mov	rdx, qword ptr [rax + r13*8]
	mov	rax, qword ptr [rbp + 0x30]
	lea	r12, [rdx + rdx*2]
	mov	rcx, qword ptr [rax + r12*8 + 8]
	cmp	rcx, -1
	je	.label_1623
	test	rcx, rcx
	jne	.label_1624
	xor	ecx, ecx
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbp
	call	calc_eclosure_iter
	test	eax, eax
	je	.label_1622
	jmp	.label_1620
	nop	dword ptr [rax]
.label_1624:
	mov	rcx, qword ptr [rax + r12*8 + 0x10]
	mov	qword ptr [rsp + 0x20], rcx
	movups	xmm0, xmmword ptr [rax + r12*8]
	movaps	xmmword ptr [rsp + 0x10], xmm0
.label_1622:
	lea	rdi, [rsp + 0x30]
	lea	rsi, [rsp + 0x10]
	call	re_node_set_merge
	test	eax, eax
	jne	.label_1620
	mov	rax, qword ptr [rbp + 0x30]
	cmp	qword ptr [rax + r12*8 + 8], 0
	jne	.label_1621
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
.label_1623:
	mov	r15b, 1
.label_1621:
	inc	r13
	mov	rax, qword ptr [rbp + 0x28]
	cmp	r13, qword ptr [rax + r14*8 + 8]
	jl	.label_1626
	jmp	.label_1617
.label_1619:
	xor	r15d, r15d
.label_1617:
	lea	rdi, [rsp + 0x30]
	mov	rsi, rbx
	call	re_node_set_insert
	test	al, al
	mov	eax, 0xc
	je	.label_1620
	test	r15b, 1
	mov	rax, qword ptr [rbp + 0x30]
	je	.label_1616
	mov	ecx, dword ptr [rsp + 4]
	test	cl, cl
	jne	.label_1616
	mov	qword ptr [rax + r14*8 + 8], 0
	jmp	.label_1625
.label_1616:
	mov	rcx, qword ptr [rsp + 0x40]
	mov	qword ptr [rax + r14*8 + 0x10], rcx
	movups	xmm0, xmmword ptr [rsp + 0x30]
	movups	xmmword ptr [rax + r14*8], xmm0
.label_1625:
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [rcx + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x30]
	movups	xmmword ptr [rcx], xmm0
	xor	eax, eax
.label_1620:
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
	#Procedure 0x411980

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
.label_1644:
	mov	dword ptr [rsp + 0x14], r13d
	mov	eax, r13d
	shl	eax, 8
	and	eax, 0x3ff00
	mov	dword ptr [rsp + 0x20], eax
	mov	r15, r12
	nop	word ptr cs:[rax + rax]
.label_1630:
	mov	rax, qword ptr [r14]
	mov	rdx, r15
	shl	rdx, 4
	movzx	ecx, byte ptr [rax + rdx + 8]
	cmp	ecx, 4
	jne	.label_1639
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
	je	.label_1632
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
	jne	.label_1630
	jmp	.label_1628
	nop	dword ptr [rax + rax]
.label_1639:
	mov	rcx, qword ptr [r14 + 0x28]
	lea	rbp, [r15 + r15*2]
	mov	rsi, qword ptr [rcx + rbp*8 + 8]
	test	rsi, rsi
	je	.label_1634
	mov	rdi, qword ptr [rcx + rbp*8 + 0x10]
	mov	r12, qword ptr [rdi]
	lea	rdi, [rbx + rbx*2]
	mov	qword ptr [rcx + rdi*8 + 8], 0
	cmp	rsi, 1
	je	.label_1637
	mov	qword ptr [rsp + 0x18], rbp
	mov	r15, rdi
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi - 1]
	test	rsi, rsi
	jle	.label_1635
	mov	rdx, rsi
	shl	rdx, 4
	mov	ebp, dword ptr [rax + rdx + 8]
	mov	edx, ebp
	and	edx, 0x40000
	je	.label_1635
	mov	rdx, qword ptr [r14 + 0x20]
	shl	rdi, 4
	lea	rdi, [rax + rdi - 0x18]
.label_1636:
	cmp	qword ptr [rdx + rsi*8], r12
	jne	.label_1633
	shr	ebp, 8
	and	ebp, 0x3ff
	cmp	ebp, r13d
	je	.label_1629
.label_1633:
	dec	rsi
	test	rsi, rsi
	jle	.label_1635
	mov	ebp, dword ptr [rdi]
	mov	ebx, ebp
	and	ebx, 0x40000
	add	rdi, -0x10
	test	ebx, ebx
	jne	.label_1636
	jmp	.label_1635
.label_1629:
	cmp	rsi, -1
	je	.label_1635
	mov	rbp, r15
	lea	rdi, [rcx + rbp*8]
	call	re_node_set_insert
	mov	dword ptr [rsp + 0x24], 0xc
	test	al, al
	jne	.label_1642
	jmp	.label_1628
	nop	word ptr [rax + rax]
.label_1635:
	mov	rbp, r12
	shl	rbp, 4
	mov	rsi, qword ptr [rax + rbp]
	mov	rdx, qword ptr [rax + rbp + 8]
	mov	rdi, r14
	call	re_dfa_add_node
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_1631
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
	je	.label_1628
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 8]
	mov	r8d, r13d
	call	duplicate_node_closure
	mov	dword ptr [rsp + 0x24], eax
	test	eax, eax
	jne	.label_1628
.label_1642:
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
	je	.label_1641
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
	jne	.label_1630
	jmp	.label_1628
.label_1637:
	cmp	r15, qword ptr [rsp + 8]
	jne	.label_1638
	cmp	rbx, r15
	jne	.label_1640
.label_1638:
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
	je	.label_1628
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
	jne	.label_1644
	jmp	.label_1628
.label_1632:
	mov	dword ptr [rsp + 0x24], 0xc
	jmp	.label_1628
.label_1631:
	mov	dword ptr [rsp + 0x24], 0xc
	jmp	.label_1628
.label_1641:
	mov	dword ptr [rsp + 0x24], 0xc
	jmp	.label_1628
.label_1634:
	mov	rax, qword ptr [r14 + 0x18]
	mov	rcx, qword ptr [rax + r15*8]
	mov	qword ptr [rax + rbx*8], rcx
.label_1643:
	mov	dword ptr [rsp + 0x24], 0
.label_1628:
	mov	eax, dword ptr [rsp + 0x24]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1640:
	lea	rdi, [rcx + rdi*8]
	mov	rsi, r12
	call	re_node_set_insert
	mov	dword ptr [rsp + 0x24], 0xc
	test	al, al
	je	.label_1628
	jmp	.label_1643
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411de0

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	test	r15, r15
	je	.label_1648
	mov	rax, qword ptr [r15 + 8]
	test	rax, rax
	je	.label_1648
	mov	rbx, qword ptr [r14]
	mov	rcx, qword ptr [r14 + 8]
	lea	rdx, [rcx + rax*2]
	cmp	rbx, rdx
	jge	.label_1646
	add	rbx, rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, rbx
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1654
	add	rbx, rbx
	mov	qword ptr [r14 + 0x10], rcx
	mov	qword ptr [r14], rbx
	mov	rcx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 8]
.label_1646:
	test	rcx, rcx
	je	.label_1647
	lea	rbx, [rcx + rax*2]
	dec	rax
	dec	rcx
	mov	rdx, rax
	or	rdx, rcx
	js	.label_1651
	mov	rdx, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	jmp	.label_1650
.label_1645:
	dec	rax
.label_1649:
	dec	rcx
	jmp	.label_1655
	nop	word ptr cs:[rax + rax]
.label_1650:
	mov	rdi, qword ptr [rsi + rax*8]
	cmp	qword ptr [rdx + rcx*8], rdi
	je	.label_1645
	jge	.label_1649
	dec	rax
	mov	qword ptr [rdx + rbx*8 - 8], rdi
	dec	rbx
.label_1655:
	mov	rdi, rax
	or	rdi, rcx
	jns	.label_1650
.label_1651:
	test	rax, rax
	js	.label_1653
	lea	rcx, [rax + 1]
	sub	rbx, rcx
	lea	rdi, [rbx*8]
	add	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	lea	rdx, [rax*8 + 8]
	call	memcpy
.label_1653:
	mov	r10, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 8]
	lea	rcx, [r10 + rax*2 - 1]
	mov	rdx, rcx
	sub	rdx, rbx
	inc	rdx
	je	.label_1648
	lea	rax, [rdx + r10]
	mov	qword ptr [r14 + 8], rax
	lea	r9, [r10 - 1]
.label_1658:
	lea	r8, [r10 - 1]
	mov	rdi, qword ptr [r14 + 0x10]
	lea	r11, [rdi + r9*8]
	nop	dword ptr [rax + rax]
.label_1652:
	mov	rax, qword ptr [rdi + rcx*8]
	mov	rsi, qword ptr [rdi + r10*8 - 8]
	cmp	rax, rsi
	jle	.label_1656
	dec	rcx
	mov	qword ptr [r11 + rdx*8], rax
	dec	rdx
	jne	.label_1652
	jmp	.label_1648
	nop	dword ptr [rax]
.label_1656:
	lea	rax, [rdx + r8]
	mov	qword ptr [rdi + rax*8], rsi
	dec	r9
	cmp	r10, 1
	mov	r10, r8
	jg	.label_1658
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi + rbx*8]
	jmp	.label_1657
.label_1647:
	mov	qword ptr [r14 + 8], rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [r15 + 8]
	mov	rsi, qword ptr [r15 + 0x10]
.label_1657:
	shl	rdx, 3
	call	memcpy
.label_1648:
	xor	eax, eax
.label_1654:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x411f60

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
	je	.label_1668
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	je	.label_1670
	cmp	rsi, rcx
	jne	.label_1671
	lea	rax, [rsi + rsi]
	mov	qword ptr [r14], rax
	mov	rdi, qword ptr [r14 + 0x10]
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_1664
	mov	qword ptr [r14 + 0x10], rax
	mov	rcx, qword ptr [r14 + 8]
	jmp	.label_1666
.label_1668:
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1584]]
	movups	xmmword ptr [r14], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1672
	mov	qword ptr [rax], rbx
	jmp	.label_1661
.label_1670:
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax], rbx
	jmp	.label_1662
.label_1671:
	mov	rax, qword ptr [r14 + 0x10]
.label_1666:
	cmp	qword ptr [rax], rbx
	jle	.label_1665
	test	rcx, rcx
	jle	.label_1660
	nop	word ptr cs:[rax + rax]
.label_1669:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	mov	qword ptr [rax + rcx*8], rdx
	cmp	rcx, 1
	lea	rcx, [rcx - 1]
	jg	.label_1669
	jmp	.label_1660
.label_1665:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	jmp	.label_1667
	nop	dword ptr [rax]
.label_1663:
	mov	qword ptr [rax + rcx*8], rdx
	mov	rdx, qword ptr [rax + rcx*8 - 0x10]
	dec	rcx
.label_1667:
	cmp	rdx, rbx
	jg	.label_1663
.label_1660:
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax + rcx*8], rbx
.label_1662:
	inc	qword ptr [r14 + 8]
.label_1661:
	mov	al, 1
.label_1659:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1672:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	xor	eax, eax
	jmp	.label_1659
.label_1664:
	xor	eax, eax
	jmp	.label_1659
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412050

	.globl re_acquire_state_context
	.type re_acquire_state_context, @function
re_acquire_state_context:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13d, ecx
	mov	r14, rsi
	mov	r8, qword ptr [rdx + 8]
	test	r8, r8
	je	.label_1689
	mov	r15d, r13d
	add	r15, r8
	test	r8, r8
	jle	.label_1693
	mov	rcx, qword ptr [rdx + 0x10]
	xor	ebx, ebx
	cmp	r8, 4
	jae	.label_1695
	mov	qword ptr [rsp], rdi
	jmp	.label_1696
.label_1689:
	mov	dword ptr [rdi], 0
	jmp	.label_1697
.label_1693:
	mov	qword ptr [rsp], rdi
	jmp	.label_1702
.label_1695:
	mov	qword ptr [rsp], rdi
	mov	rbx, r8
	and	rbx, 0xfffffffffffffffc
	je	.label_1744
	movq	xmm0, r15
	lea	rsi, [r8 - 4]
	mov	eax, esi
	shr	eax, 2
	inc	eax
	xor	edi, edi
	test	al, 3
	je	.label_1709
	lea	ebp, [r8 - 4]
	shr	ebp, 2
	inc	ebp
	and	ebp, 3
	neg	rbp
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	dword ptr [rax]
.label_1714:
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	add	rdi, 4
	inc	rbp
	jne	.label_1714
	jmp	.label_1718
.label_1744:
	xor	ebx, ebx
	jmp	.label_1696
.label_1709:
	pxor	xmm1, xmm1
.label_1718:
	cmp	rsi, 0xc
	jb	.label_1720
	mov	rsi, r8
	and	rsi, 0xfffffffffffffffc
	sub	rsi, rdi
	lea	rdi, [rcx + rdi*8 + 0x70]
	nop	
.label_1723:
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
	add	rsi, -0x10
	jne	.label_1723
.label_1720:
	paddq	xmm1, xmm0
	pshufd	xmm0, xmm1, 0x4e
	paddq	xmm0, xmm1
	movq	r15, xmm0
	cmp	r8, rbx
	je	.label_1702
.label_1696:
	mov	rsi, r8
	sub	rsi, rbx
	lea	rcx, [rcx + rbx*8]
	nop	word ptr cs:[rax + rax]
.label_1739:
	add	r15, qword ptr [rcx]
	add	rcx, 8
	dec	rsi
	jne	.label_1739
.label_1702:
	mov	rsi, qword ptr [r14 + 0x40]
	mov	rax, qword ptr [r14 + 0x88]
	and	rax, r15
	lea	rax, [rax + rax*2]
	mov	r9, qword ptr [rsi + rax*8]
	test	r9, r9
	jle	.label_1687
	xor	ebx, ebx
	test	rdx, rdx
	je	.label_1746
	mov	r10, qword ptr [rsi + rax*8 + 0x10]
	nop	word ptr [rax + rax]
.label_1686:
	mov	rsi, qword ptr [r10 + rbx*8]
	cmp	qword ptr [rsi], r15
	jne	.label_1749
	movzx	eax, byte ptr [rsi + 0x68]
	and	eax, 0xf
	cmp	eax, r13d
	jne	.label_1749
	mov	rdi, qword ptr [rsi + 0x50]
	test	rdi, rdi
	je	.label_1749
	cmp	qword ptr [rdi + 8], r8
	jne	.label_1749
	mov	rax, r8
	nop	word ptr [rax + rax]
.label_1681:
	test	rax, rax
	jle	.label_1677
	mov	rbp, qword ptr [rdi + 0x10]
	mov	rbp, qword ptr [rbp + rax*8 - 8]
	mov	rcx, qword ptr [rdx + 0x10]
	cmp	rbp, qword ptr [rcx + rax*8 - 8]
	lea	rax, [rax - 1]
	je	.label_1681
	nop	word ptr cs:[rax + rax]
.label_1749:
	inc	rbx
	cmp	rbx, r9
	jl	.label_1686
	jmp	.label_1687
.label_1746:
	xor	ecx, ecx
	cmp	r9, 0x10
	jb	.label_1688
	xor	ecx, ecx
	mov	rax, r9
	and	rax, 0xfffffffffffffff0
	je	.label_1688
	lea	rcx, [r9 - 0x10]
	mov	edi, ecx
	shr	edi, 4
	inc	edi
	xor	esi, esi
	test	dil, 7
	je	.label_1691
	lea	edi, [r9 - 0x10]
	shr	edi, 4
	inc	edi
	and	edi, 7
	neg	rdi
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_1699:
	add	rsi, 0x10
	inc	rdi
	jne	.label_1699
.label_1691:
	cmp	rcx, 0x70
	jb	.label_1703
	mov	rcx, r9
	and	rcx, 0xfffffffffffffff0
	sub	rcx, rsi
	nop	dword ptr [rax]
.label_1710:
	add	rcx, -0x80
	jne	.label_1710
.label_1703:
	cmp	r9, rax
	mov	rcx, rax
	je	.label_1687
	nop	
.label_1688:
	inc	rcx
	cmp	rcx, r9
	jl	.label_1688
.label_1687:
	mov	r12, rdx
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r11, rax
	test	r11, r11
	je	.label_1706
	mov	rbx, r14
	mov	rax, r11
	add	rax, 8
	mov	r10, r12
	mov	rdi, qword ptr [r10 + 8]
	mov	qword ptr [r11 + 0x10], rdi
	mov	r14, qword ptr [r10 + 8]
	test	r14, r14
	jle	.label_1716
	mov	qword ptr [rsp + 0x20], rax
	mov	r12, r10
	mov	qword ptr [r11 + 8], rdi
	shl	rdi, 3
	mov	rbp, r11
	call	malloc
	mov	rcx, rbp
	mov	qword ptr [rcx + 0x18], rax
	test	rax, rax
	je	.label_1722
	mov	rsi, qword ptr [r12 + 0x10]
	shl	r14, 3
	mov	rdi, rax
	mov	rdx, r14
	mov	rbp, rcx
	call	memcpy
	mov	r11, rbp
	mov	r10, r12
	mov	rdi, rbx
	mov	r9d, r13d
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_1730
.label_1716:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rdi, rbx
	mov	r9d, r13d
	mov	r14, rax
.label_1730:
	mov	al, byte ptr [r11 + 0x68]
	mov	cl, r9b
	and	cl, 0xf
	and	al, 0xf0
	or	al, cl
	mov	byte ptr [r11 + 0x68], al
	mov	qword ptr [r11 + 0x50], r14
	cmp	qword ptr [r10 + 8], 0
	jle	.label_1713
	mov	cl, r9b
	mov	eax, r9d
	and	eax, 2
	and	r9d, 4
	test	cl, 1
	jne	.label_1738
	xor	ebp, ebp
	xor	r8d, r8d
	test	eax, eax
	jne	.label_1719
	nop	word ptr cs:[rax + rax]
.label_1733:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [r10 + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	shl	rcx, 4
	mov	esi, dword ptr [rax + rcx + 8]
	movzx	edx, sil
	mov	r12d, esi
	shr	r12d, 8
	mov	ecx, r12d
	and	ecx, 0x3ff
	cmp	edx, 1
	jne	.label_1742
	test	ecx, ecx
	je	.label_1684
.label_1742:
	shr	esi, 0x14
	mov	bl, byte ptr [r11 + 0x68]
	mov	al, bl
	shr	al, 5
	movzx	eax, al
	or	eax, esi
	shl	al, 5
	and	al, 0x20
	and	bl, 0xdf
	or	bl, al
	mov	byte ptr [r11 + 0x68], bl
	cmp	edx, 2
	je	.label_1753
	cmp	edx, 4
	jne	.label_1680
	or	bl, 0x40
	jmp	.label_1683
.label_1753:
	or	bl, 0x10
.label_1683:
	mov	byte ptr [r11 + 0x68], bl
.label_1680:
	test	ecx, ecx
	je	.label_1684
	mov	r13, r10
	cmp	qword ptr [r11 + 0x50], r14
	jne	.label_1685
	mov	qword ptr [rsp + 0x20], r14
	mov	dword ptr [rsp + 0x1c], r9d
	mov	qword ptr [rsp + 0x10], rdi
	mov	edi, 0x18
	mov	rbx, r11
	call	malloc
	mov	r11, rbx
	mov	r14, rax
	mov	qword ptr [r11 + 0x50], r14
	test	r14, r14
	je	.label_1674
	mov	rbx, qword ptr [r13 + 8]
	mov	qword ptr [r14 + 8], rbx
	test	rbx, rbx
	jle	.label_1698
	mov	qword ptr [rsp + 8], r11
	mov	qword ptr [r14], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1678
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0x1c]
	mov	r11, qword ptr [rsp + 8]
	jmp	.label_1708
.label_1698:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0x1c]
.label_1708:
	mov	r14, qword ptr [rsp + 0x20]
	or	byte ptr [r11 + 0x68], 0x80
	xor	r8d, r8d
.label_1685:
	test	r12b, 0x11
	mov	r10, r13
	jne	.label_1715
	test	r9d, r9d
	jne	.label_1684
	and	r12d, 0x40
	je	.label_1684
.label_1715:
	mov	rax, rbp
	sub	rax, r8
	js	.label_1717
	mov	rcx, qword ptr [r11 + 0x10]
	cmp	rcx, rax
	jle	.label_1717
	dec	rcx
	mov	qword ptr [r11 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_1717
	lea	rax, [rbp*8]
	add	rax, qword ptr [r11 + 0x18]
	mov	rcx, r8
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_1724:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [rbp + rcx + 1]
	inc	rcx
	cmp	rdx, qword ptr [r11 + 0x10]
	jl	.label_1724
	nop	word ptr [rax + rax]
.label_1717:
	inc	r8
.label_1684:
	inc	rbp
	cmp	rbp, qword ptr [r10 + 8]
	jl	.label_1733
	jmp	.label_1713
	nop	word ptr cs:[rax + rax]
.label_1719:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [r10 + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	shl	rcx, 4
	mov	esi, dword ptr [rax + rcx + 8]
	movzx	edx, sil
	mov	r12d, esi
	shr	r12d, 8
	mov	ecx, r12d
	and	ecx, 0x3ff
	cmp	edx, 1
	jne	.label_1735
	test	ecx, ecx
	je	.label_1704
.label_1735:
	shr	esi, 0x14
	mov	bl, byte ptr [r11 + 0x68]
	mov	al, bl
	shr	al, 5
	movzx	eax, al
	or	eax, esi
	shl	al, 5
	and	al, 0x20
	and	bl, 0xdf
	or	bl, al
	mov	byte ptr [r11 + 0x68], bl
	cmp	edx, 2
	je	.label_1741
	cmp	edx, 4
	jne	.label_1745
	or	bl, 0x40
	jmp	.label_1747
.label_1741:
	or	bl, 0x10
.label_1747:
	mov	byte ptr [r11 + 0x68], bl
.label_1745:
	test	ecx, ecx
	je	.label_1704
	mov	r13, r10
	cmp	qword ptr [r11 + 0x50], r14
	jne	.label_1750
	mov	qword ptr [rsp + 0x20], r14
	mov	dword ptr [rsp + 0x1c], r9d
	mov	qword ptr [rsp + 0x10], rdi
	mov	edi, 0x18
	mov	rbx, r11
	call	malloc
	mov	r11, rbx
	mov	r14, rax
	mov	qword ptr [r11 + 0x50], r14
	test	r14, r14
	je	.label_1674
	mov	rbx, qword ptr [r13 + 8]
	mov	qword ptr [r14 + 8], rbx
	test	rbx, rbx
	jle	.label_1726
	mov	qword ptr [rsp + 8], r11
	mov	qword ptr [r14], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1678
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0x1c]
	mov	r11, qword ptr [rsp + 8]
	jmp	.label_1743
.label_1726:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0x1c]
.label_1743:
	mov	r14, qword ptr [rsp + 0x20]
	or	byte ptr [r11 + 0x68], 0x80
	xor	r8d, r8d
.label_1750:
	test	r12b, 1
	mov	r10, r13
	jne	.label_1700
	test	r9d, r9d
	jne	.label_1704
	and	r12d, 0x40
	je	.label_1704
.label_1700:
	mov	rax, rbp
	sub	rax, r8
	js	.label_1707
	mov	rcx, qword ptr [r11 + 0x10]
	cmp	rcx, rax
	jle	.label_1707
	dec	rcx
	mov	qword ptr [r11 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_1707
	lea	rax, [rbp*8]
	add	rax, qword ptr [r11 + 0x18]
	mov	rcx, r8
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_1729:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [rbp + rcx + 1]
	inc	rcx
	cmp	rdx, qword ptr [r11 + 0x10]
	jl	.label_1729
	nop	word ptr [rax + rax]
.label_1707:
	inc	r8
.label_1704:
	inc	rbp
	cmp	rbp, qword ptr [r10 + 8]
	jl	.label_1719
	jmp	.label_1713
.label_1738:
	xor	r12d, r12d
	xor	esi, esi
	test	eax, eax
	jne	.label_1694
	nop	word ptr cs:[rax + rax]
.label_1712:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [r10 + 0x10]
	mov	rcx, qword ptr [rcx + r12*8]
	shl	rcx, 4
	mov	ebp, dword ptr [rax + rcx + 8]
	movzx	edx, bpl
	mov	r13d, ebp
	shr	r13d, 8
	mov	ecx, r13d
	and	ecx, 0x3ff
	cmp	edx, 1
	jne	.label_1725
	test	ecx, ecx
	je	.label_1690
.label_1725:
	shr	ebp, 0x14
	mov	bl, byte ptr [r11 + 0x68]
	mov	al, bl
	shr	al, 5
	movzx	eax, al
	or	eax, ebp
	shl	al, 5
	and	al, 0x20
	and	bl, 0xdf
	or	bl, al
	mov	byte ptr [r11 + 0x68], bl
	cmp	edx, 2
	je	.label_1734
	cmp	edx, 4
	jne	.label_1736
	or	bl, 0x40
	jmp	.label_1737
.label_1734:
	or	bl, 0x10
.label_1737:
	mov	byte ptr [r11 + 0x68], bl
.label_1736:
	test	ecx, ecx
	je	.label_1690
	mov	rbp, r10
	cmp	qword ptr [r11 + 0x50], r14
	jne	.label_1740
	mov	qword ptr [rsp + 0x20], r14
	mov	dword ptr [rsp + 0x1c], r9d
	mov	qword ptr [rsp + 0x10], rdi
	mov	edi, 0x18
	mov	rbx, r11
	call	malloc
	mov	r11, rbx
	mov	r14, rax
	mov	qword ptr [r11 + 0x50], r14
	test	r14, r14
	je	.label_1674
	mov	rbx, qword ptr [rbp + 8]
	mov	qword ptr [r14 + 8], rbx
	test	rbx, rbx
	jle	.label_1748
	mov	qword ptr [rsp + 8], r11
	mov	qword ptr [r14], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1678
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0x1c]
	mov	r11, qword ptr [rsp + 8]
	jmp	.label_1682
.label_1748:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0x1c]
.label_1682:
	mov	r14, qword ptr [rsp + 0x20]
	or	byte ptr [r11 + 0x68], 0x80
	xor	esi, esi
.label_1740:
	test	r13b, 0x12
	mov	r10, rbp
	jne	.label_1752
	test	r9d, r9d
	jne	.label_1690
	and	r13d, 0x40
	je	.label_1690
.label_1752:
	mov	rax, r12
	sub	rax, rsi
	js	.label_1692
	mov	rcx, qword ptr [r11 + 0x10]
	cmp	rcx, rax
	jle	.label_1692
	dec	rcx
	mov	qword ptr [r11 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_1692
	lea	rax, [r12*8]
	add	rax, qword ptr [r11 + 0x18]
	mov	rcx, rsi
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_1705:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [r12 + rcx + 1]
	inc	rcx
	cmp	rdx, qword ptr [r11 + 0x10]
	jl	.label_1705
	nop	word ptr [rax + rax]
.label_1692:
	inc	rsi
.label_1690:
	inc	r12
	cmp	r12, qword ptr [r10 + 8]
	jl	.label_1712
	jmp	.label_1713
	nop	word ptr cs:[rax + rax]
.label_1694:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [r10 + 0x10]
	mov	rcx, qword ptr [rcx + r12*8]
	shl	rcx, 4
	mov	ebp, dword ptr [rax + rcx + 8]
	movzx	edx, bpl
	mov	r13d, ebp
	shr	r13d, 8
	mov	ecx, r13d
	and	ecx, 0x3ff
	cmp	edx, 1
	jne	.label_1676
	test	ecx, ecx
	je	.label_1675
.label_1676:
	shr	ebp, 0x14
	mov	bl, byte ptr [r11 + 0x68]
	mov	al, bl
	shr	al, 5
	movzx	eax, al
	or	eax, ebp
	shl	al, 5
	and	al, 0x20
	and	bl, 0xdf
	or	bl, al
	mov	byte ptr [r11 + 0x68], bl
	cmp	edx, 4
	je	.label_1721
	cmp	edx, 2
	jne	.label_1727
	or	bl, 0x10
	jmp	.label_1728
.label_1721:
	or	bl, 0x40
.label_1728:
	mov	byte ptr [r11 + 0x68], bl
.label_1727:
	test	ecx, ecx
	je	.label_1675
	mov	rbp, r10
	cmp	qword ptr [r11 + 0x50], r14
	jne	.label_1732
	mov	qword ptr [rsp + 0x20], r14
	mov	dword ptr [rsp + 0x1c], r9d
	mov	qword ptr [rsp + 0x10], rdi
	mov	edi, 0x18
	mov	rbx, r11
	call	malloc
	mov	r11, rbx
	mov	r14, rax
	mov	qword ptr [r11 + 0x50], r14
	test	r14, r14
	je	.label_1674
	mov	rbx, qword ptr [rbp + 8]
	mov	qword ptr [r14 + 8], rbx
	test	rbx, rbx
	jle	.label_1731
	mov	qword ptr [rsp + 8], r11
	mov	qword ptr [r14], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1678
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0x1c]
	mov	r11, qword ptr [rsp + 8]
	jmp	.label_1711
.label_1731:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0x1c]
.label_1711:
	mov	r14, qword ptr [rsp + 0x20]
	or	byte ptr [r11 + 0x68], 0x80
	xor	esi, esi
.label_1732:
	test	r13b, 2
	mov	r10, rbp
	jne	.label_1673
	test	r9d, r9d
	jne	.label_1675
	and	r13d, 0x40
	je	.label_1675
.label_1673:
	mov	rax, r12
	sub	rax, rsi
	js	.label_1679
	mov	rcx, qword ptr [r11 + 0x10]
	cmp	rcx, rax
	jle	.label_1679
	dec	rcx
	mov	qword ptr [r11 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_1679
	lea	rax, [r12*8]
	add	rax, qword ptr [r11 + 0x18]
	mov	rcx, rsi
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_1751:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [r12 + rcx + 1]
	inc	rcx
	cmp	rdx, qword ptr [r11 + 0x10]
	jl	.label_1751
	nop	word ptr [rax + rax]
.label_1679:
	inc	rsi
.label_1675:
	inc	r12
	cmp	r12, qword ptr [r10 + 8]
	jl	.label_1694
.label_1713:
	mov	rsi, r11
	mov	rdx, r15
	mov	rbx, r11
	call	register_state
	mov	rsi, rbx
	test	eax, eax
	je	.label_1677
	mov	rdi, rsi
	jmp	.label_1701
.label_1674:
	mov	rdi, r11
.label_1701:
	call	free_state
	jmp	.label_1706
.label_1678:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	jmp	.label_1706
.label_1722:
	mov	rdi, rcx
	call	free
.label_1706:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
.label_1697:
	xor	esi, esi
.label_1677:
	mov	rax, rsi
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
	#Procedure 0x412ae0

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
	je	.label_1754
	test	r13, r13
	jle	.label_1755
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1759:
	mov	rcx, qword ptr [rbx + 0x18]
	mov	r14, qword ptr [rcx + rbp*8]
	mov	rcx, qword ptr [r12]
	mov	rdx, r14
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 8], 8
	jne	.label_1758
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rcx, qword ptr [rbx + 0x28]
	cmp	rdx, rcx
	jne	.label_1757
	lea	rcx, [rdx + rdx + 2]
	lea	rdx, [rdx + rdx]
	mov	qword ptr [rbx + 0x20], rcx
	lea	rsi, [rdx*8 + 0x10]
	mov	rdi, rax
	call	realloc
	test	rax, rax
	je	.label_1756
	mov	qword ptr [rbx + 0x30], rax
	mov	rcx, qword ptr [rbx + 0x28]
.label_1757:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x28], rdx
	mov	qword ptr [rax + rcx*8], r14
	mov	r13, qword ptr [rbx + 0x10]
.label_1758:
	inc	rbp
	cmp	rbp, r13
	jl	.label_1759
.label_1755:
	mov	r13, qword ptr [r12 + 0x40]
	and	r15, qword ptr [r12 + 0x88]
	lea	rbp, [r15 + r15*2]
	lea	r14, [r13 + rbp*8]
	mov	r15, qword ptr [r13 + rbp*8]
	cmp	qword ptr [r13 + rbp*8 + 8], r15
	jle	.label_1760
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_1761:
	lea	rcx, [r15 + 1]
	mov	qword ptr [r14], rcx
	mov	qword ptr [rax + r15*8], rbx
	xor	ecx, ecx
	jmp	.label_1754
.label_1756:
	mov	ecx, 0xc
.label_1754:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1760:
	lea	rax, [r15 + r15]
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	mov	ecx, 0xc
	je	.label_1754
	lea	rcx, [r13 + rbp*8 + 8]
	lea	rdx, [r15 + r15 + 2]
	lea	rsi, [r13 + rbp*8 + 0x10]
	mov	qword ptr [rsi], rax
	mov	qword ptr [rcx], rdx
	mov	r15, qword ptr [r14]
	jmp	.label_1761
	nop	
	.section	.text
	.align	16
	#Procedure 0x412c20

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
	mov	r10, rsi
	mov	rbx, rdi
	lea	r13, [rbx + 0x28]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, r10
	jle	.label_1769
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1779
	mov	qword ptr [rbx + 0x20], 0
.label_1779:
	mov	rax, qword ptr [rbx + 0x50]
	mov	qword ptr [rbx + 0x58], rax
	mov	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	lea	eax, [r15 + r15]
	and	eax, 2
	xor	eax, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r13], xmm0
	mov	qword ptr [r13 + 0x10], 0
	mov	dword ptr [rbx + 0x70], eax
	xor	eax, eax
	cmp	byte ptr [rbx + 0x8b], 0
	mov	r14, r10
	jne	.label_1781
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbx + 8], rax
	xor	eax, eax
	mov	r14, r10
.label_1781:
	test	r14, r14
	je	.label_1825
	mov	r12, qword ptr [rbx + 0x38]
	cmp	r14, r12
	jge	.label_1798
	mov	ecx, dword ptr [rbx + 0x8c]
	mov	r9d, ecx
	shr	r9d, 0x10
	test	cl, cl
	jne	.label_1799
	test	r14, r14
	jle	.label_1804
	lea	rcx, [r14 - 1]
	cmp	qword ptr [rbx + 0x58], rcx
	je	.label_1807
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1814
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rdx, r14
	nop	dword ptr [rax + rax]
.label_1819:
	mov	ebp, dword ptr [rcx + rdx*4 - 4]
	cmp	ebp, -1
	jne	.label_1818
	dec	rdx
	jg	.label_1819
	mov	r15d, dword ptr [rbx + 0x70]
	jmp	.label_1820
.label_1814:
	mov	rax, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x80]
	movzx	eax, byte ptr [rax + rcx]
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	r15d, 1
	bt	rcx, rax
	jb	.label_1820
	xor	r15d, r15d
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_1820
	movzx	eax, word ptr [rbx + 0x8c]
	movzx	eax, ax
	mov	r15d, 2
	cmp	eax, 0xff
	ja	.label_1820
	jmp	.label_1833
.label_1818:
	test	r9b, r9b
	jne	.label_1835
.label_1842:
	xor	r15d, r15d
	cmp	ebp, 0xa
	jne	.label_1820
	mov	r15d, 2
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_1820
.label_1833:
	xor	r15d, r15d
	jmp	.label_1820
.label_1769:
	mov	r14, r10
	sub	r14, rax
	jmp	.label_1781
.label_1798:
	mov	r11, qword ptr [rbx + 0x30]
	mov	cx, word ptr [rbx + 0x8c]
	test	cl, cl
	jne	.label_1843
.label_1770:
	mov	qword ptr [rbx + 0x30], 0
	movsxd	rsi, dword ptr [rbx + 0x90]
	cmp	rsi, 2
	jl	.label_1844
	cmp	byte ptr [rbx + 0x89], 0
	je	.label_1764
	mov	rdi, qword ptr [rbx]
	lea	r8, [rdi + rax]
	mov	rdx, r14
	sub	rdx, rsi
	add	rdx, r8
	cmp	rdx, rdi
	cmovb	rdx, rdi
	lea	r9, [r8 + r14]
	lea	rsi, [r14 + rax]
	lea	rsi, [rdi + rsi - 1]
	nop	word ptr cs:[rax + rax]
.label_1767:
	mov	rbp, rsi
	cmp	rbp, rdx
	jb	.label_1764
	mov	cl, byte ptr [rbp]
	and	cl, 0xc0
	movzx	ecx, cl
	lea	rsi, [rbp - 1]
	cmp	ecx, 0x80
	je	.label_1767
	mov	qword ptr [rsp + 0x10], r9
	add	r8, qword ptr [rbx + 0x58]
	mov	rdx, r8
	sub	rdx, rbp
	mov	r9, qword ptr [rbx + 0x78]
	test	r9, r9
	jne	.label_1774
	mov	r12, r11
	mov	qword ptr [rsp + 0x18], r10
	mov	rsi, rbp
.label_1791:
	mov	qword ptr [rsp + 0x30], 0
	lea	rdi, [rsp + 0x2c]
	lea	rcx, [rsp + 0x30]
	call	rpl_mbrtowc
	mov	rdx, qword ptr [rsp + 0x10]
	sub	rdx, rbp
	mov	esi, 0xffffffff
	mov	rcx, rax
	sub	rcx, rdx
	jb	.label_1793
	cmp	rax, -3
	mov	r10, qword ptr [rsp + 0x18]
	mov	r11, r12
	ja	.label_1789
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], rcx
	mov	esi, dword ptr [rsp + 0x2c]
	jmp	.label_1789
.label_1799:
	mov	r8, qword ptr [rbx + 0x18]
	mov	rax, qword ptr [rbx + 0x30]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1811:
	lea	rsi, [rbp + rax]
	mov	rdx, rsi
	shr	rdx, 0x3f
	add	rdx, rsi
	sar	rdx, 1
	mov	rsi, qword ptr [r8 + rdx*8]
	cmp	rsi, r14
	mov	rdi, rdx
	jg	.label_1800
	jge	.label_1808
	lea	rbp, [rdx + 1]
	mov	rdi, rax
.label_1800:
	cmp	rbp, rdi
	mov	rax, rdi
	jl	.label_1811
.label_1808:
	cmp	rsi, r14
	setl	al
	movzx	eax, al
	lea	r12, [rax + rdx]
	test	r12, r12
	jle	.label_1815
	lea	rdi, [rax + rdx - 1]
	cmp	qword ptr [rbx + 0x58], rdi
	je	.label_1768
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1821
	cmp	rsi, r14
	setl	al
	mov	rcx, qword ptr [rbx + 0x10]
	movzx	eax, al
	add	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_1829:
	mov	ebp, dword ptr [rcx + rdx*4 - 4]
	cmp	ebp, -1
	jne	.label_1836
	dec	rdx
	jg	.label_1829
	mov	r15d, dword ptr [rbx + 0x70]
	jmp	.label_1776
.label_1804:
	mov	r15d, dword ptr [rbx + 0x70]
	jmp	.label_1820
.label_1807:
	and	r15d, 2
	xor	r15d, 0xa
.label_1820:
	mov	dword ptr [rbx + 0x70], r15d
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1785
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x30]
	lea	rsi, [rdi + r14*4]
	sub	rdx, r14
	shl	rdx, 2
	mov	rbp, r10
	call	memmove
	mov	r10, rbp
.label_1785:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1841
.label_1772:
	sub	qword ptr [rbx + 0x30], r14
	sub	qword ptr [rbx + 0x38], r14
.label_1787:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1825
	add	qword ptr [rbx + 8], r14
.label_1825:
	mov	qword ptr [rbx + 0x28], r10
	mov	rdx, qword ptr [rbx + 0x58]
	sub	rdx, r14
	mov	qword ptr [rbx + 0x58], rdx
	sub	qword ptr [rbx + 0x68], r14
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1773
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1849
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_1852
	jmp	.label_1763
.label_1773:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1853
	mov	qword ptr [rbx + 0x30], rdx
	jmp	.label_1763
.label_1849:
	mov	rdi, rbx
	call	build_wcs_buffer
.label_1763:
	mov	qword ptr [rbx + 0x48], 0
	xor	eax, eax
.label_1852:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1841:
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r14
	lea	rsi, [rdi + r14]
	mov	rbp, r10
	call	memmove
	mov	r10, rbp
	jmp	.label_1772
.label_1853:
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1775
	mov	r15, qword ptr [rbx + 0x30]
	mov	r14, qword ptr [rbx + 0x40]
	cmp	r14, rdx
	cmovg	r14, rdx
	cmp	r15, r14
	jge	.label_1778
	jmp	.label_1766
	nop	dword ptr [rax + rax]
.label_1838:
	mov	r10, qword ptr [r13]
.label_1766:
	inc	r15
	add	r10, qword ptr [rbx]
	mov	al, byte ptr [r15 + r10 - 1]
	movzx	ecx, al
	mov	rdx, qword ptr [rbx + 0x78]
	test	rdx, rdx
	jne	.label_1783
.label_1796:
	movzx	ebp, al
	lea	eax, [rbp + 0x80]
	cmp	eax, 0x17f
	ja	.label_1810
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebp, dword ptr [rax + rbp*4]
.label_1810:
	mov	rax, qword ptr [rbx + 8]
	mov	byte ptr [rax + r15 - 1], bpl
	cmp	r15, r14
	jl	.label_1838
	jmp	.label_1795
.label_1783:
	mov	al, byte ptr [rdx + rcx]
	jmp	.label_1796
.label_1844:
	add	rax, r14
	mov	rdx, qword ptr [rbx]
	mov	al, byte ptr [rdx + rax - 1]
	movzx	edx, al
	mov	qword ptr [rbx + 0x38], 0
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_1797
	mov	al, byte ptr [rsi + rdx]
.label_1797:
	mov	rsi, qword ptr [rbx + 0x80]
	movzx	edx, al
	shr	al, 6
	movzx	eax, al
	mov	rsi, qword ptr [rsi + rax*8]
	mov	eax, 1
	bt	rsi, rdx
	jb	.label_1802
	xor	eax, eax
	cmp	edx, 0xa
	jne	.label_1802
	movzx	eax, cx
	cmp	eax, 0xff
	seta	al
	movzx	eax, al
	add	eax, eax
.label_1802:
	mov	dword ptr [rbx + 0x70], eax
	jmp	.label_1787
.label_1821:
	mov	rax, qword ptr [rbx + 8]
	mov	rsi, qword ptr [rbx + 0x80]
	movzx	eax, byte ptr [rax + rdi]
	mov	dl, al
	shr	dl, 6
	movzx	edx, dl
	mov	rdx, qword ptr [rsi + rdx*8]
	mov	r15d, 1
	bt	rdx, rax
	jb	.label_1776
	xor	r15d, r15d
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_1776
	test	ch, 0xff
	setne	al
	movzx	r15d, al
	add	r15d, r15d
	jmp	.label_1776
.label_1836:
	test	r9b, r9b
	jne	.label_1831
.label_1771:
	xor	r15d, r15d
	cmp	ebp, 0xa
	jne	.label_1776
	mov	r15d, 2
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_1776
	xor	r15d, r15d
	jmp	.label_1776
.label_1835:
	mov	r12, r10
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	r15d, 1
	je	.label_1840
	test	eax, eax
	mov	r10, r12
	je	.label_1842
	jmp	.label_1820
.label_1775:
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_1763
	mov	rax, qword ptr [rbx + 0x30]
	mov	rcx, qword ptr [rbx + 0x40]
	cmp	rcx, rdx
	cmovg	rcx, rdx
	cmp	rax, rcx
	jge	.label_1845
	add	r10, rax
	mov	rdx, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	movzx	edx, byte ptr [rdx + r10]
	mov	dl, byte ptr [rsi + rdx]
	jmp	.label_1850
.label_1856:
	mov	rdx, qword ptr [rbx + 0x78]
	mov	rsi, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	add	rsi, qword ptr [rbx + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	mov	dl, byte ptr [rdx + rsi]
.label_1850:
	mov	byte ptr [rdi + rax], dl
	inc	rax
	cmp	rax, rcx
	jl	.label_1856
	mov	rax, rcx
.label_1845:
	mov	qword ptr [rbx + 0x30], rax
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1763
.label_1795:
	mov	r15, r14
.label_1778:
	mov	qword ptr [rbx + 0x30], r15
	mov	qword ptr [rbx + 0x38], r15
	jmp	.label_1763
.label_1843:
	mov	rdx, r14
	sub	rdx, r10
	mov	rsi, qword ptr [rbx + 0x50]
	add	rsi, rdx
	mov	qword ptr [rbx + 0x58], rsi
	add	rdx, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rdx
	mov	byte ptr [rbx + 0x8c], 0
	jmp	.label_1770
.label_1815:
	mov	r15d, dword ptr [rbx + 0x70]
	jmp	.label_1776
.label_1768:
	and	r15d, 2
	xor	r15d, 0xa
.label_1776:
	mov	dword ptr [rbx + 0x70], r15d
	mov	rax, qword ptr [rbx + 0x30]
	cmp	r12, r14
	jne	.label_1782
	mov	rdx, rax
	sub	rdx, r14
	jle	.label_1782
	mov	rcx, qword ptr [rbx + 0x18]
	cmp	qword ptr [rcx + r14*8], r14
	jne	.label_1782
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rdi + r14*4]
	shl	rdx, 2
	mov	rbp, r10
	call	memmove
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r14
	lea	rsi, [rdi + r14]
	call	memmove
	mov	r10, rbp
	movdqu	xmm0, xmmword ptr [rbx + 0x30]
	movq	xmm1, r14
	pshufd	xmm1, xmm1, 0x44
	psubq	xmm0, xmm1
	movdqu	xmmword ptr [rbx + 0x30], xmm0
	movq	rax, xmm0
	test	rax, rax
	jle	.label_1787
	mov	rax, qword ptr [rbx + 0x18]
	lea	rcx, [rax + r14*8]
	xor	edx, edx
	nop	dword ptr [rax]
.label_1827:
	mov	rsi, qword ptr [rcx + rdx*8]
	sub	rsi, r14
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	cmp	rdx, qword ptr [rbx + 0x30]
	jl	.label_1827
	jmp	.label_1787
.label_1782:
	mov	rcx, r14
	sub	rcx, r10
	mov	rdx, qword ptr [rbx + 0x50]
	add	rdx, rcx
	mov	qword ptr [rbx + 0x58], rdx
	add	rcx, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rcx
	mov	byte ptr [rbx + 0x8c], 0
	nop	dword ptr [rax]
.label_1823:
	mov	rcx, r12
	test	rcx, rcx
	jle	.label_1822
	lea	r12, [rcx - 1]
	mov	rdx, qword ptr [rbx + 0x18]
	cmp	qword ptr [rdx + rcx*8 - 8], r14
	je	.label_1823
.label_1822:
	cmp	rcx, rax
	jge	.label_1824
	mov	rdx, qword ptr [rbx + 0x10]
.label_1828:
	cmp	dword ptr [rdx + rcx*4], -1
	jne	.label_1824
	inc	rcx
	cmp	rcx, rax
	jl	.label_1828
.label_1824:
	cmp	rcx, rax
	jne	.label_1830
	mov	qword ptr [rbx + 0x30], 0
	xor	ebp, ebp
	mov	qword ptr [rbx + 0x38], rbp
	jmp	.label_1787
.label_1830:
	mov	rax, qword ptr [rbx + 0x18]
	mov	rbp, qword ptr [rax + rcx*8]
	sub	rbp, r14
	mov	qword ptr [rbx + 0x30], rbp
	je	.label_1832
	mov	r15, r10
	test	rbp, rbp
	jle	.label_1801
	mov	rdi, qword ptr [rbx + 0x10]
	mov	edx, 1
	cmovg	rdx, rbp
	shl	rdx, 2
	mov	esi, 0xff
	call	memset
.label_1801:
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, rbp
	call	memset
	mov	rbp, qword ptr [rbx + 0x30]
	mov	r10, r15
.label_1832:
	mov	qword ptr [rbx + 0x38], rbp
	jmp	.label_1787
.label_1840:
	mov	r10, r12
	jmp	.label_1820
.label_1793:
	mov	r10, qword ptr [rsp + 0x18]
	mov	r11, r12
.label_1789:
	cmp	esi, -1
	jne	.label_1848
	mov	rax, qword ptr [rbx + 0x28]
	mov	r12, qword ptr [rbx + 0x38]
.label_1764:
	add	r12, rax
	mov	rax, r12
	sub	rax, r10
	jge	.label_1851
	mov	qword ptr [rsp], r11
	mov	qword ptr [rsp + 8], r13
	lea	rax, [rbx + 0x20]
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_1788
.label_1784:
	xor	esi, esi
	cmp	r13, r12
	je	.label_1857
	test	rax, rax
	mov	r10, rbp
	mov	rcx, qword ptr [rsp + 0x10]
	je	.label_1765
	mov	rax, qword ptr [rbx]
	movzx	esi, byte ptr [rax + r12]
	jmp	.label_1765
.label_1857:
	mov	r10, rbp
	mov	rcx, qword ptr [rsp + 0x10]
.label_1765:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rcx
	mov	eax, 1
	jmp	.label_1809
	nop	word ptr cs:[rax + rax]
.label_1788:
	mov	rbp, r10
	mov	rax, qword ptr [rbx + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	mov	r13, qword ptr [rbx + 0x50]
	mov	rdx, r13
	sub	rdx, r12
	mov	rsi, qword ptr [rbx]
	add	rsi, r12
	lea	rdi, [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x18]
	call	rpl_mbrtowc
	test	rax, rax
	je	.label_1784
	mov	rcx, rax
	or	rcx, 1
	cmp	rcx, -1
	je	.label_1784
	mov	esi, dword ptr [rsp + 0x30]
	mov	r10, rbp
.label_1809:
	add	r12, rax
	mov	rax, r12
	sub	rax, r10
	jl	.label_1788
	mov	qword ptr [rbx + 0x30], rax
	cmp	esi, -1
	mov	r13, qword ptr [rsp + 8]
	mov	r11, qword ptr [rsp]
	je	.label_1790
.label_1848:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1847
.label_1855:
	xor	ecx, ecx
	cmp	esi, 0xa
	jne	.label_1762
	mov	ecx, 2
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_1762
	xor	ecx, ecx
.label_1762:
	mov	dword ptr [rbx + 0x70], ecx
	jmp	.label_1792
.label_1851:
	mov	qword ptr [rbx + 0x30], rax
.label_1790:
	test	r11, r11
	jle	.label_1803
	lea	rax, [r11 - 1]
	cmp	qword ptr [rbx + 0x58], rax
	je	.label_1806
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1812
	mov	rax, qword ptr [rbx + 0x10]
.label_1817:
	mov	ebp, dword ptr [rax + r11*4 - 4]
	cmp	ebp, -1
	jne	.label_1816
	dec	r11
	jg	.label_1817
	mov	r15d, dword ptr [rbx + 0x70]
	mov	dword ptr [rbx + 0x70], r15d
	jmp	.label_1792
.label_1812:
	mov	rcx, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x80]
	movzx	eax, byte ptr [rcx + rax]
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	r15d, 1
	bt	rcx, rax
	jb	.label_1780
	xor	r15d, r15d
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_1780
	jmp	.label_1826
.label_1816:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1839
.label_1813:
	xor	r15d, r15d
	cmp	ebp, 0xa
	jne	.label_1780
.label_1826:
	mov	r15d, 2
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_1780
	xor	r15d, r15d
.label_1780:
	mov	dword ptr [rbx + 0x70], r15d
.label_1792:
	mov	rbp, qword ptr [rbx + 0x30]
	test	rbp, rbp
	jne	.label_1834
.label_1846:
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1787
.label_1834:
	jle	.label_1837
	mov	rdi, qword ptr [rbx + 0x10]
	test	rbp, rbp
	mov	edx, 1
	cmovg	rdx, rbp
	shl	rdx, 2
	mov	esi, 0xff
	mov	r15, r10
	call	memset
	mov	r10, r15
.label_1837:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_1846
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, rbp
	mov	rbp, r10
	call	memset
	mov	r10, rbp
	jmp	.label_1846
.label_1803:
	mov	r15d, dword ptr [rbx + 0x70]
	mov	dword ptr [rbx + 0x70], r15d
	jmp	.label_1792
.label_1806:
	and	r15d, 2
	xor	r15d, 0xa
	mov	dword ptr [rbx + 0x70], r15d
	jmp	.label_1792
.label_1847:
	mov	r15, r10
	mov	ebp, esi
	mov	edi, ebp
	call	iswalnum
	mov	esi, ebp
	cmp	esi, 0x5f
	mov	ecx, 1
	je	.label_1854
	test	eax, eax
	mov	r10, r15
	je	.label_1855
	jmp	.label_1762
.label_1831:
	mov	qword ptr [rsp + 0x18], r10
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	r15d, 1
	je	.label_1794
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x18]
	je	.label_1771
	jmp	.label_1776
.label_1774:
	lea	rsi, [rsp + 0x26]
	cmp	rdx, 6
	mov	ecx, 6
	cmovl	ecx, edx
	test	ecx, ecx
	jle	.label_1777
	mov	qword ptr [rsp + 0x18], r10
	lea	rdi, [rbp - 1]
	sub	rdi, r8
	cmp	rdi, -8
	mov	rcx, -7
	cmovg	rcx, rdi
	xor	rcx, 0xffffffffffffffff
	shl	rcx, 0x20
	sar	rcx, 0x20
	inc	rcx
.label_1786:
	movzx	edi, byte ptr [rbp + rcx - 2]
	mov	al, byte ptr [r9 + rdi]
	mov	byte ptr [rsp + rcx + 0x24], al
	dec	rcx
	cmp	rcx, 1
	jg	.label_1786
	mov	r12, r11
	jmp	.label_1791
.label_1839:
	mov	r12, r10
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	r15d, 1
	je	.label_1805
	test	eax, eax
	mov	r10, r12
	je	.label_1813
	jmp	.label_1780
.label_1777:
	mov	r12, r11
	mov	qword ptr [rsp + 0x18], r10
	jmp	.label_1791
.label_1854:
	mov	r10, r15
	jmp	.label_1762
.label_1794:
	mov	r10, qword ptr [rsp + 0x18]
	jmp	.label_1776
.label_1805:
	mov	r10, r12
	mov	dword ptr [rbx + 0x70], r15d
	jmp	.label_1792
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4136f0

	.globl check_halt_state_context
	.type check_halt_state_context, @function
check_halt_state_context:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	test	rdx, rdx
	js	.label_1875
	cmp	qword ptr [rbx + 0x58], rdx
	je	.label_1858
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1862
	mov	rax, qword ptr [rbx + 0x10]
	inc	rdx
	nop	dword ptr [rax]
.label_1866:
	mov	ebp, dword ptr [rax + rdx*4 - 4]
	cmp	ebp, -1
	jne	.label_1876
	dec	rdx
	test	rdx, rdx
	jg	.label_1866
	mov	edi, dword ptr [rbx + 0x70]
	jmp	.label_1861
.label_1862:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x80]
	movzx	eax, byte ptr [rax + rdx]
	mov	dl, al
	shr	dl, 6
	movzx	edx, dl
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	edi, 1
	bt	rcx, rax
	jb	.label_1861
	xor	edi, edi
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_1861
	jmp	.label_1873
.label_1876:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1874
.label_1870:
	xor	edi, edi
	cmp	ebp, 0xa
	jne	.label_1861
.label_1873:
	mov	edi, 2
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_1861
	xor	edi, edi
	jmp	.label_1861
.label_1875:
	mov	edi, dword ptr [rbx + 0x70]
	jmp	.label_1861
.label_1858:
	mov	edi, dword ptr [rbx + 0xa0]
	and	edi, 2
	xor	edi, 0xa
.label_1861:
	mov	rcx, qword ptr [r14 + 0x10]
	xor	eax, eax
	test	rcx, rcx
	jle	.label_1860
	mov	rax, qword ptr [rbx + 0x98]
	mov	rdx, qword ptr [r14 + 0x18]
	mov	rsi, qword ptr [rax]
	mov	eax, edi
	and	eax, 2
	mov	r8d, edi
	and	r8d, 8
	xor	ebp, ebp
	test	dil, 1
	jne	.label_1867
	test	eax, eax
	jne	.label_1872
	nop	dword ptr [rax + rax]
.label_1869:
	mov	rax, qword ptr [rdx + rbp*8]
	mov	rdi, rax
	shl	rdi, 4
	mov	edi, dword ptr [rsi + rdi + 8]
	movzx	ebx, dil
	cmp	ebx, 2
	jne	.label_1859
	shr	edi, 8
	test	di, 0x3ff
	je	.label_1860
	test	dil, 0x24
	jne	.label_1859
	test	r8d, r8d
	jne	.label_1860
	test	dil, dil
	jns	.label_1860
	nop	
.label_1859:
	inc	rbp
	cmp	rbp, rcx
	mov	eax, 0
	jl	.label_1869
	jmp	.label_1860
	nop	word ptr cs:[rax + rax]
.label_1872:
	mov	rax, qword ptr [rdx + rbp*8]
	mov	rdi, rax
	shl	rdi, 4
	mov	edi, dword ptr [rsi + rdi + 8]
	movzx	ebx, dil
	cmp	ebx, 2
	jne	.label_1868
	shr	edi, 8
	test	di, 0x3ff
	je	.label_1860
	test	dil, 4
	jne	.label_1868
	test	r8d, r8d
	jne	.label_1860
	test	dil, dil
	jns	.label_1860
.label_1868:
	inc	rbp
	cmp	rbp, rcx
	mov	eax, 0
	jl	.label_1872
	jmp	.label_1860
.label_1867:
	test	eax, eax
	jne	.label_1863
	nop	word ptr cs:[rax + rax]
.label_1871:
	mov	rax, qword ptr [rdx + rbp*8]
	mov	rdi, rax
	shl	rdi, 4
	mov	edi, dword ptr [rsi + rdi + 8]
	movzx	ebx, dil
	cmp	ebx, 2
	jne	.label_1865
	shr	edi, 8
	test	di, 0x3ff
	je	.label_1860
	test	dil, 0x28
	jne	.label_1865
	test	r8d, r8d
	jne	.label_1860
	test	dil, dil
	jns	.label_1860
	nop	word ptr cs:[rax + rax]
.label_1865:
	inc	rbp
	cmp	rbp, rcx
	mov	eax, 0
	jl	.label_1871
	jmp	.label_1860
	nop	
.label_1863:
	mov	rax, qword ptr [rdx + rbp*8]
	mov	rdi, rax
	shl	rdi, 4
	mov	edi, dword ptr [rsi + rdi + 8]
	movzx	ebx, dil
	cmp	ebx, 2
	jne	.label_1864
	shr	edi, 8
	test	di, 0x3ff
	je	.label_1860
	test	dil, 8
	jne	.label_1864
	test	r8d, r8d
	jne	.label_1860
	test	dil, dil
	jns	.label_1860
.label_1864:
	inc	rbp
	cmp	rbp, rcx
	mov	eax, 0
	jl	.label_1863
.label_1860:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1874:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	edi, 1
	je	.label_1861
	test	eax, eax
	jne	.label_1861
	jmp	.label_1870
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413960

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
	jle	.label_1877
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_1880:
	mov	rax, qword ptr [r14 + 0xf8]
	mov	r15, qword ptr [rax + r12*8]
	cmp	qword ptr [r15 + 0x20], 0
	mov	ebx, 0
	jle	.label_1878
	nop	word ptr [rax + rax]
.label_1881:
	mov	rax, qword ptr [r15 + 0x28]
	mov	r13, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
	mov	rdi, r13
	call	free
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x20]
	jl	.label_1881
.label_1878:
	mov	rdi, qword ptr [r15 + 0x28]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	je	.label_1879
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
.label_1879:
	mov	rdi, r15
	call	free
	inc	r12
	cmp	r12, qword ptr [r14 + 0xe8]
	jl	.label_1880
.label_1877:
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
	#Procedure 0x413a20

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
	mov	r14, rcx
	mov	qword ptr [rbp - 0x90], r14
	mov	rbx, rdx
	mov	qword ptr [rbp - 0x98], rbx
	mov	r13, rsi
	mov	qword ptr [rbp - 0x78], r13
	mov	rax,  qword ptr [word ptr [rip + label_1890]]
	mov	qword ptr [rbp - 0x50], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1891]]
	movaps	xmmword ptr [rbp - 0x60], xmm0
	xor	r12d, r12d
	test	r8b, r8b
	je	.label_1892
	mov	qword ptr [rbp - 0x80], rdi
	mov	r15, r14
	mov	edi, 0x60
	call	malloc
	mov	qword ptr [rbp - 0x50], rax
	mov	r14d, 0xc
	test	rax, rax
	je	.label_1908
	lea	r12, [rbp - 0x60]
	mov	r14, r15
	mov	rdi, qword ptr [rbp - 0x80]
.label_1892:
	mov	qword ptr [rbp - 0x80], rdi
	mov	r15, qword ptr [rdi + 0x90]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 0x40], xmm0
	mov	qword ptr [rbp - 0x30], 0
	mov	rdx, rbx
	shl	rdx, 4
	cmp	rdx, 0xfbf
	ja	.label_1912
	mov	rax, rsp
	lea	rcx, [rdx + 0xf]
	and	rcx, 0xfffffffffffffff0
	sub	rax, rcx
	mov	rsp, rax
	mov	dword ptr [rbp - 0xa4], 0
	jmp	.label_1916
.label_1912:
	mov	rdi, rdx
	mov	qword ptr [rbp - 0x88], rdx
	call	malloc
	test	rax, rax
	je	.label_1921
	mov	cl, 1
	mov	dword ptr [rbp - 0xa4], ecx
	mov	rdx, qword ptr [rbp - 0x88]
.label_1916:
	mov	qword ptr [rbp - 0x88], rdx
	mov	qword ptr [rbp - 0xa0], rax
	mov	rdi, rax
	mov	rsi, r14
	call	memcpy
	mov	rsi, qword ptr [r14]
	xor	edi, edi
	cmp	rsi, qword ptr [r14 + 8]
	jg	.label_1927
	mov	qword ptr [rbp - 0x68], r12
	lea	rax, [r14 + 8]
	mov	qword ptr [rbp - 0xb0], rax
	nop	word ptr cs:[rax + rax]
.label_1901:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rax]
	mov	rdx, r15
	shl	rdx, 4
	lea	rax, [rcx + rdx]
	mov	ecx, dword ptr [rcx + rdx + 8]
	movzx	edx, cl
	cmp	edx, 9
	je	.label_1910
	cmp	edx, 8
	mov	r12, qword ptr [rbp - 0x68]
	jne	.label_1931
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, rbx
	jge	.label_1931
	shl	rax, 4
	mov	qword ptr [r14 + rax], rsi
	mov	qword ptr [r14 + rax + 8], -1
	jmp	.label_1931
	nop	dword ptr [rax]
.label_1910:
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, rbx
	mov	r12, qword ptr [rbp - 0x68]
	jge	.label_1931
	shl	rax, 4
	cmp	qword ptr [r14 + rax], rsi
	jge	.label_1888
	mov	qword ptr [r14 + rax + 8], rsi
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x70], rsi
	mov	rsi, r14
	jmp	.label_1941
.label_1888:
	test	ecx, 0x80000
	je	.label_1922
	mov	rcx, qword ptr [rbp - 0xa0]
	cmp	qword ptr [rcx + rax], -1
	je	.label_1922
	mov	rdi, r14
	mov	qword ptr [rbp - 0x70], rsi
	mov	rsi, qword ptr [rbp - 0xa0]
.label_1941:
	mov	rdx, qword ptr [rbp - 0x88]
	call	memcpy
	mov	rsi, qword ptr [rbp - 0x70]
	jmp	.label_1931
.label_1922:
	mov	qword ptr [r14 + rax + 8], rsi
	nop	dword ptr [rax]
.label_1931:
	mov	qword ptr [rbp - 0x70], rsi
	cmp	rsi, qword ptr [r14 + 8]
	jne	.label_1887
	cmp	r15, qword ptr [r13 + 0xb0]
	jne	.label_1887
	test	r12, r12
	je	.label_1895
	test	rbx, rbx
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	eax, 0
	mov	rdx, qword ptr [rbp - 0x88]
	je	.label_1897
	nop	dword ptr [rax]
.label_1902:
	cmp	qword ptr [rcx - 8], 0
	js	.label_1900
	cmp	qword ptr [rcx], -1
	je	.label_1897
.label_1900:
	inc	rax
	add	rcx, 0x10
	cmp	rax, rbx
	jb	.label_1902
.label_1897:
	cmp	rax, rbx
	je	.label_1904
	mov	rcx, qword ptr [r12]
	lea	rax, [rcx - 1]
	mov	qword ptr [r12], rax
	test	rcx, rcx
	jle	.label_1906
	mov	rcx, qword ptr [r12 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	rax, qword ptr [rcx + rbx]
	mov	qword ptr [rbp - 0x70], rax
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	mov	rdi, r14
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
.label_1887:
	mov	rbx, qword ptr [r13 + 0x98]
	mov	rsi, qword ptr [rbx]
	mov	r14, r15
	shl	r14, 4
	mov	eax, dword ptr [rsi + r14 + 8]
	test	al, 8
	jne	.label_1918
	mov	qword ptr [rbp - 0x68], r12
	test	eax, 0x100000
	jne	.label_1937
	movzx	eax, al
	cmp	eax, 4
	jne	.label_1899
	mov	rax, qword ptr [rsi + r14]
	shl	rax, 4
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rax + rcx + 0x10]
	mov	r13, qword ptr [rax + rcx + 0x18]
	mov	r12, r13
	sub	r12, rdx
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_1924
	cmp	r13, -1
	je	.label_1930
	cmp	rdx, -1
	je	.label_1930
	cmp	r13, rdx
	je	.label_1924
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, qword ptr [rbp - 0x70]
	cmp	rax, r12
	jl	.label_1930
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rax + 8]
	lea	rdi, [rsi + rdx]
	add	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0xb8], rdx
	mov	rdx, r12
	call	memcmp
	mov	rdx, qword ptr [rbp - 0xb8]
	test	eax, eax
	jne	.label_1930
.label_1924:
	cmp	r13, rdx
	jne	.label_1889
	lea	rdi, [rbp - 0x40]
	mov	rsi, r15
	call	re_node_set_insert
	test	al, al
	je	.label_1903
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_1889
	mov	rdx, qword ptr [rbx + 0x28]
	lea	rsi, [r15 + r15*2]
	mov	rdx, qword ptr [rdx + rsi*8 + 0x10]
	mov	r13, qword ptr [rdx]
	dec	rax
	mov	rcx, qword ptr [rcx + 0x18]
	mov	edx, 0
	je	.label_1944
	nop	word ptr cs:[rax + rax]
.label_1948:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], r13
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_1948
.label_1944:
	cmp	rdx, -1
	je	.label_1889
	cmp	qword ptr [rcx + rdx*8], r13
	je	.label_1894
	jmp	.label_1889
	nop	word ptr cs:[rax + rax]
.label_1918:
	mov	qword ptr [rbp - 0x68], r12
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	r14, qword ptr [rax + rcx*8]
	mov	rbx, qword ptr [rbx + 0x28]
	lea	rdi, [rbp - 0x40]
	mov	rsi, r15
	call	re_node_set_insert
	test	al, al
	je	.label_1903
	lea	rax, [r15 + r15*2]
	mov	r10, qword ptr [rbx + rax*8 + 8]
	test	r10, r10
	jle	.label_1905
	mov	r9, qword ptr [r14 + 0x10]
	test	r9, r9
	jle	.label_1905
	mov	r8, qword ptr [rbx + rax*8 + 0x10]
	dec	r9
	mov	rsi, qword ptr [r14 + 0x18]
	mov	r11, -1
	mov	r14d, 0
	je	.label_1909
	nop	dword ptr [rax]
.label_1947:
	mov	rbx, qword ptr [r8 + r14*8]
	mov	rdx, r9
	xor	eax, eax
	nop	dword ptr [rax]
.label_1915:
	mov	rdi, rax
	lea	rcx, [rdi + rdx]
	shr	rcx, 1
	cmp	qword ptr [rsi + rcx*8], rbx
	lea	rax, [rcx + 1]
	cmovge	rax, rdi
	cmovge	rdx, rcx
	cmp	rax, rdx
	jb	.label_1915
	cmp	rax, -1
	je	.label_1919
	cmp	qword ptr [rsi + rax*8], rbx
	jne	.label_1919
	cmp	r11, -1
	mov	r13, r11
	mov	r11, rbx
	jne	.label_1886
.label_1919:
	inc	r14
	cmp	r14, r10
	jl	.label_1947
	mov	r12, qword ptr [rbp - 0x70]
	mov	r13, r11
	jmp	.label_1911
	nop	
.label_1937:
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r13
	mov	rcx, qword ptr [rbp - 0x70]
	call	check_node_accept_bytes
	movsxd	r12, eax
.label_1889:
	test	r12, r12
	jne	.label_1928
	mov	rsi, qword ptr [rbx]
	mov	r13, qword ptr [rbp - 0x78]
.label_1899:
	add	rsi, r14
	mov	rdi, r13
	mov	rdx, qword ptr [rbp - 0x70]
	call	check_node_accept
	test	al, al
	mov	r12d, 1
	je	.label_1905
.label_1928:
	add	r12, qword ptr [rbp - 0x70]
	cmp	qword ptr [rbp - 0x68], 0
	mov	rax, qword ptr [rbx + 0x18]
	mov	r13, qword ptr [rax + r15*8]
	je	.label_1932
	mov	rax, qword ptr [rbp - 0x78]
	cmp	r12, qword ptr [rax + 0xa8]
	jg	.label_1930
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rax + r12*8]
	test	rcx, rcx
	je	.label_1930
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_1930
	dec	rax
	mov	rcx, qword ptr [rcx + 0x18]
	mov	edx, 0
	je	.label_1938
	nop	word ptr cs:[rax + rax]
.label_1940:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], r13
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_1940
.label_1938:
	cmp	rdx, -1
	je	.label_1905
	cmp	qword ptr [rcx + rdx*8], r13
	jne	.label_1905
.label_1932:
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_1911
.label_1909:
	mov	rbx, qword ptr [rsi]
	mov	r13, -1
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_1893:
	cmp	rbx, qword ptr [r8 + rcx*8]
	jne	.label_1882
	cmp	r13, -1
	mov	rax, rbx
	je	.label_1885
	jmp	.label_1886
	nop	word ptr cs:[rax + rax]
.label_1882:
	mov	rax, r13
.label_1885:
	inc	rcx
	cmp	rcx, r10
	mov	r13, rax
	jl	.label_1893
	jmp	.label_1896
.label_1886:
	mov	r14, qword ptr [rbp - 0x38]
	test	r14, r14
	jle	.label_1926
	mov	rcx, r14
	dec	rcx
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, 0
	je	.label_1898
	nop	word ptr [rax + rax]
.label_1946:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r13
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_1946
.label_1898:
	cmp	rdx, -1
	setne	cl
	cmp	qword ptr [rax + rdx*8], r13
	sete	dl
	and	dl, cl
	mov	rax, r13
	cmovne	rax, rbx
	test	dl, dl
	jne	.label_1896
	mov	rcx, qword ptr [rbp - 0x68]
	test	rcx, rcx
	mov	rdx, qword ptr [rbp - 0x70]
	jne	.label_1939
	mov	r12, rdx
	mov	r13, rax
	jmp	.label_1911
.label_1896:
	mov	r12, qword ptr [rbp - 0x70]
	mov	r13, rax
	jmp	.label_1911
.label_1926:
	mov	rcx, qword ptr [rbp - 0x68]
	test	rcx, rcx
	mov	rdx, qword ptr [rbp - 0x70]
	je	.label_1884
.label_1939:
	mov	r12, qword ptr [rcx]
	lea	rax, [r12 + 1]
	mov	qword ptr [rcx], rax
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_1914
	mov	rdi, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x68], rcx
	shl	rax, 5
	lea	rsi, [rax + rax*2]
	call	realloc
	mov	r15, rax
	test	r15, r15
	je	.label_1903
	mov	rax, qword ptr [rbp - 0x68]
	shl	qword ptr [rax + 8], 1
	mov	qword ptr [rax + 0x10], r15
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x70]
	jmp	.label_1920
.label_1914:
	mov	r15, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x68], rcx
	mov	rdi, qword ptr [rbp - 0x88]
.label_1920:
	mov	qword ptr [rbp - 0x88], rdi
	lea	r12, [r12 + r12*2]
	shl	r12, 4
	mov	qword ptr [r15 + r12], rdx
	mov	qword ptr [r15 + r12 + 8], rbx
	call	malloc
	mov	qword ptr [r15 + r12 + 0x10], rax
	test	rax, rax
	je	.label_1903
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0x88]
	call	memcpy
	lea	rbx, [r15 + r12 + 0x18]
	mov	qword ptr [r15 + r12 + 0x20], r14
	test	r14, r14
	jle	.label_1933
	mov	qword ptr [rbx], r14
	shl	r14, 3
	mov	rdi, r14
	call	malloc
	mov	qword ptr [r15 + r12 + 0x28], rax
	test	rax, rax
	je	.label_1936
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, rax
	mov	rdx, r14
	call	memcpy
	jmp	.label_1894
.label_1933:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
.label_1894:
	mov	r12, qword ptr [rbp - 0x70]
	jmp	.label_1911
.label_1884:
	mov	r12, rdx
	nop	dword ptr [rax + rax]
.label_1911:
	test	r13, r13
	mov	r14, qword ptr [rbp - 0x90]
	jns	.label_1913
	cmp	r13, -2
	je	.label_1903
	nop	word ptr [rax + rax]
.label_1905:
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_1943
.label_1930:
	mov	rbx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbx]
	lea	rax, [rcx - 1]
	mov	qword ptr [rbx], rax
	test	rcx, rcx
	jle	.label_1906
	mov	rcx, qword ptr [rbx + 0x10]
	shl	rax, 4
	lea	r14, [rax + rax*2]
	mov	r12, qword ptr [rcx + r14]
	mov	rsi, qword ptr [rcx + r14 + 0x10]
	mov	r15, qword ptr [rbp - 0x90]
	mov	rdi, r15
	mov	rdx, qword ptr [rbp - 0x88]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rax + r14 + 0x10]
	call	free
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rax + r14 + 0x28]
	mov	qword ptr [rbp - 0x30], rcx
	movups	xmm0, xmmword ptr [rax + r14 + 0x18]
	movaps	xmmword ptr [rbp - 0x40], xmm0
	mov	r13, qword ptr [rax + r14 + 8]
	mov	r14, r15
.label_1913:
	cmp	r12, qword ptr [r14 + 8]
	mov	r15, r13
	mov	rsi, r12
	mov	rbx, qword ptr [rbp - 0x98]
	mov	r13, qword ptr [rbp - 0x78]
	jle	.label_1901
	mov	rdi, qword ptr [rbp - 0x30]
	mov	r12, qword ptr [rbp - 0x68]
.label_1927:
	call	free
	mov	eax, dword ptr [rbp - 0xa4]
	test	al, al
	je	.label_1907
	mov	rdi, qword ptr [rbp - 0xa0]
	call	free
.label_1907:
	xor	r14d, r14d
	test	r12, r12
	je	.label_1908
	xor	r14d, r14d
	cmp	qword ptr [r12], 0
	jle	.label_1883
	xor	ebx, ebx
	xor	r15d, r15d
.label_1917:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	jl	.label_1917
	jmp	.label_1883
.label_1921:
	mov	r14d, 0xc
	test	r12, r12
	je	.label_1908
	xor	ebx, ebx
	cmp	qword ptr [r12], 0
	jle	.label_1883
	xor	r15d, r15d
	nop	
.label_1925:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	jl	.label_1925
	jmp	.label_1883
.label_1943:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	r14d, 1
	jmp	.label_1929
.label_1895:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	xor	r14d, r14d
.label_1929:
	mov	eax, dword ptr [rbp - 0xa4]
	test	al, al
	je	.label_1908
	mov	rdi, qword ptr [rbp - 0xa0]
	jmp	.label_1934
.label_1904:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	eax, dword ptr [rbp - 0xa4]
	test	al, al
	je	.label_1935
	mov	rdi, qword ptr [rbp - 0xa0]
	call	free
.label_1935:
	xor	r14d, r14d
	cmp	qword ptr [r12], 0
	jle	.label_1883
	xor	ebx, ebx
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1942:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	jl	.label_1942
	jmp	.label_1883
.label_1936:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
.label_1903:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	eax, dword ptr [rbp - 0xa4]
	test	al, al
	je	.label_1945
	mov	rdi, qword ptr [rbp - 0xa0]
	call	free
.label_1945:
	mov	r14d, 0xc
	mov	r12, qword ptr [rbp - 0x68]
	test	r12, r12
	je	.label_1908
	xor	ebx, ebx
	cmp	qword ptr [r12], 0
	jle	.label_1883
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1923:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	jl	.label_1923
.label_1883:
	mov	rdi, qword ptr [r12 + 0x10]
.label_1934:
	call	free
.label_1908:
	mov	eax, r14d
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1906:
	mov	edi, OFFSET FLAT:.str.26
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x555
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.pop_fail_stack
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x414470

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
	jle	.label_1951
	mov	r13, qword ptr [r15 + 0x98]
	xor	ebx, ebx
	jmp	.label_1952
.label_1953:
	mov	rdi, qword ptr [r15 + 0xf8]
	mov	rsi, r14
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1951
	add	r14, r14
	mov	qword ptr [r15 + 0xf8], rcx
	mov	qword ptr [r15 + 0xf0], r14
	jmp	.label_1950
	nop	word ptr [rax + rax]
.label_1952:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rbp, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r13]
	mov	rdx, rbp
	shl	rdx, 4
	movzx	esi, byte ptr [rax + rdx + 8]
	cmp	esi, 8
	jne	.label_1949
	mov	rax, qword ptr [rax + rdx]
	cmp	rax, 0x3f
	jg	.label_1949
	mov	rdx, qword ptr [r13 + 0xa0]
	bt	rdx, rax
	jae	.label_1949
	mov	r14, qword ptr [r15 + 0xe8]
	cmp	r14, qword ptr [r15 + 0xf0]
	je	.label_1953
.label_1950:
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
	je	.label_1951
	mov	qword ptr [rdx + 8], rbp
	inc	rcx
	mov	qword ptr [r15 + 0xe8], rcx
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rdx], rax
	mov	rcx, qword ptr [r12 + 8]
	nop	dword ptr [rax]
.label_1949:
	inc	rbx
	xor	eax, eax
	cmp	rbx, rcx
	jl	.label_1952
.label_1951:
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
	#Procedure 0x4145a0

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
	mov	r10, rsi
	mov	qword ptr [rsp + 0x30], r10
	mov	r9, rdi
	mov	qword ptr [rsp + 0x20], r9
	cmp	qword ptr [r10 + 8], 0
	jle	.label_2000
	mov	rax, qword ptr [r9 + 0x98]
	mov	qword ptr [rsp + 0x48], rax
	mov	r8, qword ptr [r9 + 0x48]
	mov	qword ptr [rsp + 0x58], r8
	lea	rax, [r8 + 1]
	mov	qword ptr [rsp + 0x18], rax
	xor	r11d, r11d
	nop	dword ptr [rax]
.label_2026:
	mov	qword ptr [rsp + 0x50], r11
	mov	rax, qword ptr [r10 + 0x10]
	mov	r15, qword ptr [rax + r11*8]
	mov	qword ptr [rsp + 0x80], r15
	mov	rax, qword ptr [rsp + 0x48]
	mov	r14, qword ptr [rax]
	shl	r15, 4
	mov	ebp, dword ptr [r14 + r15 + 8]
	movzx	eax, bpl
	cmp	eax, 4
	jne	.label_2001
	shr	ebp, 8
	test	bp, 0x3ff
	je	.label_1960
	test	r8, r8
	js	.label_1962
	cmp	qword ptr [r9 + 0x58], r8
	je	.label_1964
	cmp	dword ptr [r9 + 0x90], 2
	jl	.label_1967
	mov	rax, qword ptr [r9 + 0x10]
	mov	rcx, qword ptr [rsp + 0x18]
	nop	word ptr [rax + rax]
.label_1974:
	mov	ebx, dword ptr [rax + rcx*4 - 4]
	cmp	ebx, -1
	jne	.label_1972
	dec	rcx
	test	rcx, rcx
	jg	.label_1974
	mov	ecx, dword ptr [r9 + 0x70]
	jmp	.label_1976
.label_1967:
	mov	rax, qword ptr [r9 + 8]
	mov	rcx, qword ptr [r9 + 0x80]
	movzx	eax, byte ptr [rax + r8]
	mov	dl, al
	shr	dl, 6
	movzx	edx, dl
	mov	rdx, qword ptr [rcx + rdx*8]
	xor	ecx, ecx
	bt	rdx, rax
	jae	.label_1979
	mov	ecx, 1
	xor	edx, edx
	jmp	.label_1983
.label_1972:
	cmp	byte ptr [r9 + 0x8e], 0
	jne	.label_1986
.label_2011:
	xor	ecx, ecx
	cmp	ebx, 0xa
	je	.label_1990
	jmp	.label_1976
.label_1979:
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_1976
.label_1990:
	mov	ecx, 2
	cmp	byte ptr [r9 + 0x8d], 0
	jne	.label_1976
	xor	ecx, ecx
	jmp	.label_1976
.label_1962:
	mov	ecx, dword ptr [r9 + 0x70]
	jmp	.label_1976
.label_1964:
	mov	ecx, dword ptr [r9 + 0xa0]
	and	ecx, 2
	xor	ecx, 0xa
	nop	dword ptr [rax + rax]
.label_1976:
	mov	eax, ecx
	and	eax, 1
	sete	dl
	test	bpl, 4
	je	.label_1983
	test	eax, eax
	je	.label_2001
	jmp	.label_1983
.label_1986:
	mov	qword ptr [rsp + 0x50], r11
	mov	qword ptr [rsp + 0x58], r8
	mov	r13, r9
	mov	r12, r10
	mov	edi, ebx
	call	iswalnum
	xor	edx, edx
	cmp	ebx, 0x5f
	mov	ecx, 1
	je	.label_2009
	test	eax, eax
	mov	r10, r12
	mov	r9, r13
	mov	r8, qword ptr [rsp + 0x58]
	mov	r11, qword ptr [rsp + 0x50]
	je	.label_2011
	jmp	.label_1983
.label_2009:
	mov	r10, r12
	mov	r9, r13
	mov	r8, qword ptr [rsp + 0x58]
	mov	r11, qword ptr [rsp + 0x50]
	nop	word ptr cs:[rax + rax]
.label_1983:
	lea	rax, [r14 + r15 + 8]
	mov	eax, dword ptr [rax]
	test	dl, dl
	jne	.label_1966
	mov	edx, eax
	and	edx, 0x800
	jne	.label_2001
.label_1966:
	test	cl, 2
	jne	.label_2017
	mov	edx, eax
	and	edx, 0x2000
	jne	.label_2001
.label_2017:
	test	cl, 8
	jne	.label_1960
	shr	eax, 8
	test	al, al
	js	.label_2001
	nop	dword ptr [rax]
.label_1960:
	mov	rbp, qword ptr [r9 + 0xc8]
	mov	qword ptr [rsp + 0x10], rbp
	mov	rax, qword ptr [r9 + 8]
	mov	qword ptr [rsp + 0x70], rax
	mov	rax, qword ptr [r9 + 0x98]
	mov	qword ptr [rsp + 0x40], rax
	test	rbp, rbp
	mov	eax, 0
	jle	.label_2015
	mov	rcx, qword ptr [r9 + 0xd8]
	xor	eax, eax
	mov	rdx, rbp
	nop	word ptr [rax + rax]
.label_2028:
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
	jl	.label_2028
.label_2015:
	cmp	rax, rbp
	jge	.label_1954
	cmp	rax, -1
	je	.label_1954
	mov	rcx, qword ptr [r9 + 0xd8]
	lea	rax, [rax + rax*4]
	cmp	qword ptr [rcx + rax*8 + 8], r8
	jne	.label_1954
	lea	rax, [rcx + rax*8]
	nop	dword ptr [rax]
.label_2019:
	mov	rcx, qword ptr [rsp + 0x80]
	cmp	qword ptr [rax], rcx
	je	.label_2010
	cmp	byte ptr [rax + 0x20], 0
	lea	rax, [rax + 0x28]
	jne	.label_2019
.label_1954:
	cmp	qword ptr [r9 + 0xe8], 0
	mov	rax, rbp
	jle	.label_1970
	mov	rax, qword ptr [rsp + 0x40]
	mov	rax, qword ptr [rax]
	mov	r15, qword ptr [rax + r15]
	mov	qword ptr [rsp + 0x28], r15
	xor	edx, edx
	jmp	.label_1971
	nop	word ptr cs:[rax + rax]
.label_2021:
	mov	rax, qword ptr [rsp + 0x40]
	mov	rax, qword ptr [rax]
.label_1971:
	mov	rcx, qword ptr [r9 + 0xf8]
	mov	r13, qword ptr [rcx + rdx*8]
	mov	qword ptr [rsp + 0x60], r13
	mov	rcx, qword ptr [r13 + 8]
	shl	rcx, 4
	cmp	qword ptr [rax + rcx], r15
	jne	.label_1981
	mov	r15, qword ptr [r13]
	mov	rax, qword ptr [r13 + 0x20]
	test	rax, rax
	jle	.label_1985
	mov	qword ptr [rsp + 0x38], rdx
	mov	r12, r8
	xor	r14d, r14d
	jmp	.label_1963
	nop	word ptr cs:[rax + rax]
.label_1981:
	mov	qword ptr [rsp + 0x38], rdx
	jmp	.label_1977
.label_1985:
	mov	qword ptr [rsp + 0x38], rdx
	mov	rdx, r8
	mov	rsi, r15
	xor	r14d, r14d
	jmp	.label_1973
.label_2022:
	mov	rdx, qword ptr [r9 + 0x58]
	cmp	rsi, rdx
	jg	.label_1999
	mov	rax, qword ptr [r9 + 0x40]
	mov	rdi, qword ptr [r9 + 0xc0]
	cmp	rax, rsi
	mov	qword ptr [rsp + 0x68], rsi
	mov	rsi, r13
	jg	.label_2002
	cmp	rax, rdx
	jl	.label_2004
.label_2002:
	cmp	rcx, qword ptr [rsp + 0x68]
	jg	.label_2008
	cmp	rcx, rdx
	jge	.label_2008
.label_2004:
	mov	rax, qword ptr [rsp + 0x68]
	mov	qword ptr [rsp + 0x60], rsi
	lea	esi, [rax + 1]
	mov	qword ptr [rsp + 0x70], rdi
	mov	rdi, r9
	mov	r13, r9
	call	extend_buffers
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rdi, qword ptr [rsp + 0x70]
	mov	r9, r13
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_1959
.label_2008:
	mov	qword ptr [rsp + 0x60], rsi
	mov	rdx, qword ptr [rsp + 0x68]
	sub	rdx, rdi
	jle	.label_2013
	mov	rax, qword ptr [r9 + 0xb8]
	lea	rdi, [rax + rdi*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	mov	r13, r9
	call	memset
	mov	r9, r13
	mov	rax, qword ptr [rsp + 0x68]
	mov	qword ptr [r9 + 0xc0], rax
.label_2013:
	mov	rax, qword ptr [r9 + 8]
	mov	qword ptr [rsp + 0x70], rax
	jmp	.label_2016
	nop	dword ptr [rax]
.label_1963:
	mov	rcx, qword ptr [r13 + 0x28]
	mov	rbx, qword ptr [rcx + r14*8]
	mov	rcx, qword ptr [rbx + 8]
	mov	qword ptr [rsp + 0x78], rcx
	mov	rsi, rcx
	sub	rsi, r15
	add	rsi, r12
	mov	rbp, rcx
	sub	rbp, r15
	jle	.label_2020
	mov	rcx, qword ptr [r9 + 0x30]
	cmp	rsi, rcx
	jg	.label_2022
	mov	qword ptr [rsp + 0x68], rsi
.label_2016:
	mov	r13, r9
	mov	rax, qword ptr [rsp + 0x70]
	lea	rdi, [rax + r12]
	lea	rsi, [rax + r15]
	mov	rdx, rbp
	call	memcmp
	test	eax, eax
	mov	r9, r13
	mov	r8, qword ptr [rsp + 0x58]
	mov	r13, qword ptr [rsp + 0x60]
	mov	rsi, qword ptr [rsp + 0x68]
	jne	.label_2030
.label_2020:
	mov	rbp, rsi
	mov	rdi, r9
	mov	rsi, r13
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 0x80]
	mov	rbx, r8
	mov	r15, r9
	call	get_subexp_sub
	mov	r9, r15
	mov	rcx, r13
	mov	r13d, eax
	cmp	r13d, 1
	ja	.label_1959
	mov	rax, qword ptr [r9 + 8]
	mov	qword ptr [rsp + 0x70], rax
	inc	r14
	mov	rax, qword ptr [rcx + 0x20]
	cmp	r14, rax
	mov	rdx, rbp
	mov	r12, rdx
	mov	rsi, qword ptr [rsp + 0x78]
	mov	r15, rsi
	mov	r8, rbx
	mov	r13, rcx
	jl	.label_1963
	jmp	.label_1973
.label_2030:
	mov	rax, qword ptr [r13 + 0x20]
.label_1999:
	mov	rdx, r12
	mov	rsi, r15
.label_1973:
	cmp	r14, rax
	jge	.label_1975
	mov	r10, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x50]
	mov	r15, qword ptr [rsp + 0x28]
	jmp	.label_1977
.label_1975:
	test	r14, r14
	setg	al
	movzx	ebp, al
	add	rbp, rsi
	cmp	rbp, r8
	mov	r10, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x50]
	mov	r15, qword ptr [rsp + 0x28]
	jg	.label_1977
	jmp	.label_1988
.label_2006:
	cmp	r14, -1
	je	.label_1989
	mov	qword ptr [rsp + 0x50], r11
	mov	qword ptr [rsp + 0x58], r8
	mov	r15, r10
	mov	rax, qword ptr [r13 + 0x10]
	test	rax, rax
	mov	rbx, r13
	jne	.label_1992
	lea	rsi, [rbp + 1]
	sub	rsi, qword ptr [rbx]
	mov	edi, 0x18
	mov	r12, r9
	call	rpl_calloc
	mov	r9, r12
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	mov	r13d, 0xc
	je	.label_1959
.label_1992:
	mov	rcx, qword ptr [rbx]
	mov	rdx, qword ptr [rbx + 8]
	mov	r12, rbx
	mov	dword ptr [rsp], 9
	mov	rdi, r9
	mov	rbx, r9
	mov	rsi, rax
	mov	r8, r14
	mov	r9, rbp
	call	check_arrival
	mov	r13d, eax
	cmp	r13d, 1
	mov	r10, r15
	mov	r8, qword ptr [rsp + 0x58]
	mov	r11, qword ptr [rsp + 0x50]
	mov	r15, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x68]
	je	.label_1994
	mov	r15, r8
	mov	qword ptr [rsp + 0x30], r10
	test	r13d, r13d
	mov	rax, r12
	jne	.label_1959
	mov	qword ptr [rsp + 0x20], rbx
	mov	r12, qword ptr [rax + 0x20]
	cmp	r12, qword ptr [rax + 0x18]
	mov	rbx, rax
	je	.label_1956
.label_1980:
	mov	edi, 1
	mov	esi, 0x28
	call	rpl_calloc
	mov	r12, rbx
	mov	r13d, 0xc
	test	rax, rax
	mov	rdi, qword ptr [rsp + 0x20]
	je	.label_1959
	mov	rcx, qword ptr [r12 + 0x20]
	mov	rdx, qword ptr [r12 + 0x28]
	mov	qword ptr [rdx + rcx*8], rax
	mov	qword ptr [rax], r14
	mov	qword ptr [rax + 8], rbp
	inc	rcx
	mov	qword ptr [r12 + 0x20], rcx
	mov	rsi, r12
	mov	rdx, rax
	mov	rcx, qword ptr [rsp + 0x80]
	mov	r8, r15
	mov	rbx, rdi
	call	get_subexp_sub
	mov	rcx, rbx
	mov	r13d, eax
	cmp	r13d, 1
	ja	.label_1959
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rsp + 0x70], rax
	mov	rbx, rcx
	mov	r10, qword ptr [rsp + 0x30]
	mov	r8, r15
	mov	r11, qword ptr [rsp + 0x50]
	mov	r15, qword ptr [rsp + 0x28]
	jmp	.label_2027
.label_2029:
	cmp	rdx, qword ptr [r9 + 0x58]
	jge	.label_1977
	mov	qword ptr [rsp + 0x28], r15
	mov	qword ptr [rsp + 0x50], r11
	mov	qword ptr [rsp + 0x58], r8
	mov	r15, r10
	lea	rbx, [rdx + 1]
	mov	r14, rdx
	mov	rdi, r9
	mov	esi, ebx
	mov	r12, r13
	mov	r13, r9
	call	extend_buffers
	mov	r9, r13
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_1959
	mov	rax, qword ptr [r9 + 8]
	mov	qword ptr [rsp + 0x70], rax
	mov	r10, r15
	mov	r8, qword ptr [rsp + 0x58]
	mov	r11, qword ptr [rsp + 0x50]
	mov	r15, qword ptr [rsp + 0x28]
	mov	r13, r12
	mov	rdx, r14
	jmp	.label_1965
.label_1956:
	lea	rax, [r12 + r12]
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	r13d, 0xc
	test	rax, rax
	je	.label_1959
	lea	rcx, [r12 + r12 + 1]
	mov	qword ptr [rbx + 0x28], rax
	mov	qword ptr [rbx + 0x18], rcx
	jmp	.label_1980
	nop	dword ptr [rax]
.label_1988:
	cmp	rbp, qword ptr [r13]
	jle	.label_1984
	cmp	rdx, qword ptr [r9 + 0x30]
	jge	.label_2029
	lea	rbx, [rdx + 1]
.label_1965:
	mov	rcx, qword ptr [rsp + 0x70]
	movzx	eax, byte ptr [rbp + rcx - 1]
	movzx	ecx, byte ptr [rcx + rdx]
	cmp	ecx, eax
	mov	rdx, rbx
	jne	.label_1977
.label_1984:
	mov	rax, qword ptr [r9 + 0xb8]
	mov	rcx, qword ptr [rax + rbp*8]
	test	rcx, rcx
	je	.label_1995
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_1995
	mov	qword ptr [rsp + 0x68], rdx
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rdx]
	xor	esi, esi
	nop	dword ptr [rax]
.label_1993:
	mov	r14, qword ptr [rcx + rsi*8]
	mov	rdi, r14
	shl	rdi, 4
	movzx	ebx, byte ptr [rdx + rdi + 8]
	cmp	ebx, 9
	jne	.label_2003
	cmp	qword ptr [rdx + rdi], r15
	je	.label_2006
.label_2003:
	inc	rsi
	cmp	rsi, rax
	jl	.label_1993
.label_1989:
	mov	r12, r13
	mov	rbx, r9
.label_2027:
	mov	rdx, qword ptr [rsp + 0x68]
	jmp	.label_1994
	nop	word ptr cs:[rax + rax]
.label_1995:
	mov	r12, r13
	mov	rbx, r9
.label_1994:
	cmp	rbp, r8
	lea	rbp, [rbp + 1]
	mov	r9, rbx
	mov	r13, r12
	jl	.label_1988
	nop	dword ptr [rax]
.label_1977:
	mov	rdx, qword ptr [rsp + 0x38]
	inc	rdx
	cmp	rdx, qword ptr [r9 + 0xe8]
	jl	.label_2021
	mov	rax, qword ptr [r9 + 0xc8]
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_1970
.label_2010:
	mov	rax, rbp
.label_1970:
	mov	dword ptr [rsp + 0xa4], 0
	cmp	rbp, rax
	jge	.label_2001
	jmp	.label_2012
.label_2007:
	mov	qword ptr [rsp + 0x78], rsi
	mov	qword ptr [rsp + 0x60], r14
	mov	r14, r12
	mov	r12, rbp
	mov	rbp, r11
	mov	qword ptr [rsp + 0x58], r8
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, ebx
	call	iswalnum
	cmp	ebx, 0x5f
	mov	edx, 1
	je	.label_2023
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x58]
	mov	r11, rbp
	mov	rbp, r12
	mov	r12, r14
	mov	r14, qword ptr [rsp + 0x60]
	mov	rsi, qword ptr [rsp + 0x78]
	je	.label_2025
	jmp	.label_1998
.label_2023:
	mov	r9, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x58]
	mov	r11, rbp
	mov	rbp, r12
	mov	r12, r14
	mov	r14, qword ptr [rsp + 0x60]
	mov	rsi, qword ptr [rsp + 0x78]
	jmp	.label_1998
	nop	dword ptr [rax]
.label_2012:
	mov	rax, qword ptr [r9 + 0xd8]
	lea	rcx, [rbp + rbp*4]
	mov	rdx, qword ptr [rsp + 0x80]
	cmp	qword ptr [rax + rcx*8], rdx
	jne	.label_1958
	cmp	qword ptr [rax + rcx*8 + 8], r8
	jne	.label_1958
	mov	r12, qword ptr [rax + rcx*8 + 0x18]
	mov	r14, qword ptr [rax + rcx*8 + 0x10]
	mov	rax, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rax + 0x30]
	cmp	r12, r14
	jne	.label_1969
	mov	rax, qword ptr [rsp + 0x48]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rsp + 0x80]
	lea	rcx, [rcx + rcx*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	jmp	.label_1968
.label_1969:
	mov	rax, qword ptr [rsp + 0x80]
	lea	rax, [rax*8]
	mov	rcx, qword ptr [rsp + 0x48]
	add	rax, qword ptr [rcx + 0x18]
.label_1968:
	mov	r13, qword ptr [rax]
	lea	r15, [r12 + r8]
	sub	r15, r14
	test	r15, r15
	jle	.label_1982
	lea	rax, [r15 - 1]
	cmp	qword ptr [r9 + 0x58], rax
	je	.label_1987
	cmp	dword ptr [r9 + 0x90], 2
	jl	.label_1991
	mov	rax, qword ptr [r9 + 0x10]
	mov	rcx, r15
	nop	dword ptr [rax + rax]
.label_1996:
	mov	ebx, dword ptr [rax + rcx*4 - 4]
	cmp	ebx, -1
	jne	.label_1997
	dec	rcx
	jg	.label_1996
	mov	edx, dword ptr [r9 + 0x70]
	jmp	.label_1998
.label_1991:
	mov	rcx, qword ptr [r9 + 8]
	mov	rdx, qword ptr [r9 + 0x80]
	movzx	eax, byte ptr [rcx + rax]
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	edx, 1
	bt	rcx, rax
	jb	.label_1998
	xor	edx, edx
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_1998
	jmp	.label_2005
.label_1997:
	cmp	byte ptr [r9 + 0x8e], 0
	jne	.label_2007
.label_2025:
	xor	edx, edx
	cmp	ebx, 0xa
	jne	.label_1998
.label_2005:
	mov	edx, 2
	cmp	byte ptr [r9 + 0x8d], 0
	jne	.label_1998
	xor	edx, edx
	jmp	.label_1998
.label_1982:
	mov	edx, dword ptr [r9 + 0x70]
	jmp	.label_1998
.label_1987:
	mov	edx, dword ptr [r9 + 0xa0]
	and	edx, 2
	xor	edx, 0xa
	nop	word ptr cs:[rax + rax]
.label_1998:
	mov	dword ptr [rsp + 0x78], edx
	lea	rcx, [r13 + r13*2]
	mov	rdx, qword ptr [r9 + 0xb8]
	mov	rax, qword ptr [rdx + r15*8]
	mov	rdx, qword ptr [rdx + r8*8]
	test	rdx, rdx
	mov	ebx, 0
	je	.label_2014
	mov	rbx, qword ptr [rdx + 0x10]
.label_2014:
	mov	qword ptr [rsp + 0x50], r11
	lea	rdx, [rsi + rcx*8]
	test	rax, rax
	lea	rdi, [rsp + 0x88]
	je	.label_2018
	mov	qword ptr [rsp + 0x70], rbx
	mov	qword ptr [rsp + 0x60], r14
	mov	r14, r12
	mov	r12, rbp
	mov	rbp, r8
	mov	rsi, qword ptr [rax + 0x50]
	mov	qword ptr [rsp + 0x68], rdx
	mov	rbx, rdi
	call	re_node_set_init_union
	mov	r13d, eax
	mov	dword ptr [rsp + 0xa4], r13d
	test	r13d, r13d
	jne	.label_2024
	lea	rdi, [rsp + 0xa4]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, rbx
	mov	ecx, dword ptr [rsp + 0x78]
	call	re_acquire_state_context
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + r15*8], rax
	mov	rdi, qword ptr [rsp + 0x98]
	call	free
	mov	r9, rbx
	mov	rax, qword ptr [r9 + 0xb8]
	cmp	qword ptr [rax + r15*8], 0
	jne	.label_1955
	mov	r13d, dword ptr [rsp + 0xa4]
	test	r13d, r13d
	jne	.label_1957
.label_1955:
	mov	r10, qword ptr [rsp + 0x30]
	mov	r8, rbp
	mov	r11, qword ptr [rsp + 0x50]
	mov	rbp, r12
	mov	r12, r14
	mov	r14, qword ptr [rsp + 0x60]
	jmp	.label_1961
.label_2018:
	mov	qword ptr [rsp + 0x70], rbx
	mov	rbx, rbp
	mov	rbp, r8
	lea	rdi, [rsp + 0xa4]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	qword ptr [rsp + 0x68], rdx
	mov	ecx, dword ptr [rsp + 0x78]
	call	re_acquire_state_context
	mov	r9, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r9 + 0xb8]
	mov	qword ptr [rcx + r15*8], rax
	mov	rax, qword ptr [r9 + 0xb8]
	cmp	qword ptr [rax + r15*8], 0
	jne	.label_1978
	mov	r13d, dword ptr [rsp + 0xa4]
	test	r13d, r13d
	mov	r10, qword ptr [rsp + 0x30]
	mov	r8, rbp
	mov	r11, qword ptr [rsp + 0x50]
	mov	rbp, rbx
	je	.label_1961
	jmp	.label_1957
.label_1978:
	mov	r10, qword ptr [rsp + 0x30]
	mov	r8, rbp
	mov	r11, qword ptr [rsp + 0x50]
	mov	rbp, rbx
	nop	word ptr cs:[rax + rax]
.label_1961:
	cmp	r12, r14
	jne	.label_1958
	mov	rax, qword ptr [rax + r8*8]
	mov	rcx, qword ptr [rsp + 0x70]
	cmp	qword ptr [rax + 0x10], rcx
	jle	.label_1958
	mov	rdi, r9
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rdx, r8
	mov	r15, r10
	mov	r12, rbp
	mov	rbp, r9
	mov	r14, r8
	mov	rbx, r11
	call	check_subexp_matching_top
	mov	rdx, r14
	mov	rdi, rbp
	mov	rbp, r12
	mov	r13d, eax
	mov	dword ptr [rsp + 0xa4], r13d
	test	r13d, r13d
	jne	.label_1957
	mov	rsi, qword ptr [rsp + 0x68]
	mov	r12, rbp
	mov	rbp, rdi
	mov	r14, rdx
	call	transit_state_bkref
	mov	r11, rbx
	mov	r8, r14
	mov	r9, rbp
	mov	rbp, r12
	mov	r10, r15
	mov	r13d, eax
	mov	dword ptr [rsp + 0xa4], r13d
	test	r13d, r13d
	jne	.label_1957
	nop	
.label_1958:
	inc	rbp
	cmp	rbp, qword ptr [r9 + 0xc8]
	jl	.label_2012
.label_2001:
	inc	r11
	cmp	r11, qword ptr [r10 + 8]
	jl	.label_2026
.label_2000:
	mov	dword ptr [rsp + 0xa4], 0
	xor	r13d, r13d
	jmp	.label_1957
.label_1959:
	mov	dword ptr [rsp + 0xa4], r13d
.label_1957:
	mov	eax, r13d
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2024:
	mov	rdi, qword ptr [rsp + 0x98]
	call	free
	jmp	.label_1957
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4151b0

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdi
	mov	rbp, qword ptr [r15 + 0x40]
	mov	r14d, 0xc
	movabs	rax, 0xffffffffffffffe
	cmp	rbp, rax
	ja	.label_2032
	movsxd	rax, esi
	mov	rcx, qword ptr [r15 + 0x58]
	add	rbp, rbp
	cmp	rcx, rbp
	cmovle	rbp, rcx
	cmp	rax, rbp
	cmovge	rbp, rax
	cmp	dword ptr [r15 + 0x90], 2
	jl	.label_2034
	mov	rax, rbp
	shr	rax, 0x3d
	jne	.label_2032
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rsi, [rbp*4]
	call	realloc
	test	rax, rax
	je	.label_2032
	mov	qword ptr [r15 + 0x10], rax
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	je	.label_2034
	lea	rsi, [rbp*8]
	call	realloc
	test	rax, rax
	je	.label_2032
	mov	qword ptr [r15 + 0x18], rax
.label_2034:
	cmp	byte ptr [r15 + 0x8b], 0
	je	.label_2040
	mov	rdi, qword ptr [r15 + 8]
	mov	rsi, rbp
	call	realloc
	test	rax, rax
	je	.label_2032
	mov	qword ptr [r15 + 8], rax
.label_2040:
	mov	qword ptr [r15 + 0x40], rbp
	mov	rdi, qword ptr [r15 + 0xb8]
	test	rdi, rdi
	je	.label_2044
	lea	rsi, [rbp*8 + 8]
	call	realloc
	test	rax, rax
	je	.label_2032
	mov	qword ptr [r15 + 0xb8], rax
.label_2044:
	cmp	byte ptr [r15 + 0x88], 0
	mov	eax, dword ptr [r15 + 0x90]
	je	.label_2033
	cmp	eax, 2
	jl	.label_2035
	mov	rdi, r15
	call	build_wcs_upper_buffer
	mov	r14d, eax
	test	r14d, r14d
	je	.label_2038
	jmp	.label_2032
.label_2033:
	cmp	eax, 2
	jl	.label_2039
	mov	rdi, r15
	call	build_wcs_buffer
	jmp	.label_2038
.label_2035:
	mov	rbp, qword ptr [r15 + 0x30]
	mov	r14, qword ptr [r15 + 0x40]
	mov	rax, qword ptr [r15 + 0x58]
	cmp	r14, rax
	cmovg	r14, rax
	cmp	rbp, r14
	jge	.label_2043
	jmp	.label_2037
.label_2031:
	mov	cl, byte ptr [rax + rdx]
	jmp	.label_2046
	nop	dword ptr [rax + rax]
.label_2037:
	mov	rcx, qword ptr [r15]
	mov	rax, qword ptr [r15 + 0x78]
	add	rcx, qword ptr [r15 + 0x28]
	mov	cl, byte ptr [rbp + rcx]
	movzx	edx, cl
	test	rax, rax
	jne	.label_2031
.label_2046:
	movzx	ebx, cl
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	ja	.label_2041
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_2041:
	mov	rax, qword ptr [r15 + 8]
	mov	byte ptr [rax + rbp], bl
	inc	rbp
	cmp	rbp, r14
	jl	.label_2037
	mov	rbp, r14
.label_2043:
	mov	qword ptr [r15 + 0x30], rbp
	mov	qword ptr [r15 + 0x38], rbp
	jmp	.label_2038
.label_2039:
	mov	rdx, qword ptr [r15 + 0x78]
	test	rdx, rdx
	je	.label_2038
	mov	rax, qword ptr [r15 + 0x30]
	mov	rcx, qword ptr [r15 + 0x40]
	mov	rsi, qword ptr [r15 + 0x58]
	cmp	rcx, rsi
	cmovg	rcx, rsi
	cmp	rax, rcx
	jge	.label_2042
	mov	rsi, qword ptr [r15 + 0x28]
	add	rsi, rax
	mov	rdi, qword ptr [r15]
	mov	rbp, qword ptr [r15 + 8]
	movzx	esi, byte ptr [rdi + rsi]
	mov	dl, byte ptr [rdx + rsi]
	mov	byte ptr [rbp + rax], dl
	jmp	.label_2045
	nop	word ptr [rax + rax]
.label_2036:
	mov	rdx, qword ptr [r15 + 0x78]
	mov	rsi, qword ptr [r15]
	mov	rdi, qword ptr [r15 + 8]
	add	rsi, qword ptr [r15 + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	mov	dl, byte ptr [rdx + rsi]
	mov	byte ptr [rdi + rax], dl
.label_2045:
	inc	rax
	cmp	rax, rcx
	jl	.label_2036
	mov	rax, rcx
.label_2042:
	mov	qword ptr [r15 + 0x30], rax
	mov	qword ptr [r15 + 0x38], rax
.label_2038:
	xor	r14d, r14d
.label_2032:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4153d0

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
	mov	rbp, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	r14, qword ptr [rbx + 0x48]
	mov	r12, qword ptr [rbx + 0x98]
	mov	rax, qword ptr [rbx + 0xb8]
	cmp	r14, qword ptr [rbx + 0xc0]
	jle	.label_2058
	mov	qword ptr [rax + r14*8], rbp
	mov	qword ptr [rbx + 0xc0], r14
	jmp	.label_2047
.label_2058:
	mov	rcx, qword ptr [rax + r14*8]
	test	rcx, rcx
	je	.label_2050
	mov	rdx, qword ptr [rcx + 0x50]
	test	rbp, rbp
	je	.label_2062
	mov	r13, qword ptr [rbp + 0x50]
	lea	rdi, [rsp]
	mov	rsi, r13
	call	re_node_set_init_union
	mov	dword ptr [r15], eax
	test	eax, eax
	jne	.label_2053
	mov	rax, qword ptr [rbx + 0x48]
	jmp	.label_2056
.label_2050:
	mov	qword ptr [rax + r14*8], rbp
	jmp	.label_2047
.label_2062:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp], xmm0
	xor	r13d, r13d
	mov	rax, r14
.label_2056:
	test	rax, rax
	jle	.label_2061
	lea	rcx, [rax - 1]
	cmp	qword ptr [rbx + 0x58], rcx
	je	.label_2063
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2060
	mov	rcx, qword ptr [rbx + 0x10]
	nop	dword ptr [rax + rax]
.label_2052:
	mov	ebp, dword ptr [rcx + rax*4 - 4]
	cmp	ebp, -1
	jne	.label_2049
	dec	rax
	jg	.label_2052
	mov	ecx, dword ptr [rbx + 0x70]
	jmp	.label_2051
.label_2060:
	mov	rax, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x80]
	movzx	eax, byte ptr [rax + rcx]
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	mov	rdx, qword ptr [rdx + rcx*8]
	mov	ecx, 1
	bt	rdx, rax
	jb	.label_2051
	xor	ecx, ecx
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_2051
	jmp	.label_2064
.label_2049:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_2059
.label_2057:
	xor	ecx, ecx
	cmp	ebp, 0xa
	jne	.label_2051
.label_2064:
	mov	ecx, 2
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_2051
	xor	ecx, ecx
	jmp	.label_2051
.label_2061:
	mov	ecx, dword ptr [rbx + 0x70]
	jmp	.label_2051
.label_2063:
	mov	ecx, dword ptr [rbx + 0xa0]
	and	ecx, 2
	xor	ecx, 0xa
.label_2051:
	lea	rdx, [rsp]
	mov	rdi, r15
	mov	rsi, r12
	call	re_acquire_state_context
	mov	rbp, rax
	mov	rax, qword ptr [rbx + 0xb8]
	mov	qword ptr [rax + r14*8], rbp
	test	r13, r13
	je	.label_2047
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_2047:
	test	rbp, rbp
	je	.label_2054
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	je	.label_2055
	lea	r12, [rbp + 8]
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r14
	call	check_subexp_matching_top
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_2048
	test	byte ptr [rbp + 0x68], 0x40
	mov	rax, rbp
	je	.label_2048
	mov	rdi, rbx
	mov	rsi, r12
	call	transit_state_bkref
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_2048
	mov	rax, qword ptr [rbx + 0xb8]
	mov	rax, qword ptr [rax + r14*8]
	jmp	.label_2048
.label_2054:
	mov	rax, rbp
	jmp	.label_2048
.label_2055:
	mov	rax, rbp
.label_2048:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2053:
	xor	eax, eax
	jmp	.label_2048
.label_2059:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	ecx, 1
	je	.label_2051
	test	eax, eax
	jne	.label_2051
	jmp	.label_2057
	.section	.text
	.align	16
	#Procedure 0x4155d0

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
	je	.label_2070
	mov	r13, qword ptr [r12 + 8]
	test	r15, r15
	je	.label_2075
	test	r13, r13
	jle	.label_2075
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_2075
	add	rdi, r13
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	mov	ecx, 0xc
	je	.label_2071
	mov	qword ptr [rsp], rbp
	xor	r14d, r14d
	xor	ebx, ebx
	xor	ebp, ebp
	mov	rcx, rbx
	jmp	.label_2068
.label_2075:
	test	r13, r13
	jle	.label_2070
	mov	qword ptr [rbp + 8], r13
	mov	r15, qword ptr [r12 + 8]
	test	r15, r15
	jle	.label_2067
	mov	qword ptr [rbp], r13
	shl	r13, 3
	mov	rdi, r13
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_2073
	mov	rsi, qword ptr [r12 + 0x10]
	shl	r15, 3
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	jmp	.label_2065
.label_2070:
	test	r15, r15
	je	.label_2067
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_2067
	mov	qword ptr [rbp + 8], rdi
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	jle	.label_2067
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_2073
	mov	rsi, qword ptr [r15 + 0x10]
	shl	rbx, 3
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_2065
.label_2067:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], 0
	jmp	.label_2065
.label_2069:
	mov	rcx, rbx
	nop	dword ptr [rax + rax]
.label_2068:
	cmp	rcx, qword ptr [r15 + 8]
	jge	.label_2072
	mov	rdx, qword ptr [r12 + 0x10]
	mov	rdx, qword ptr [rdx + rbp*8]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [rsi + rcx*8]
	cmp	rdx, rsi
	jle	.label_2077
	inc	rcx
	mov	qword ptr [rax + r14*8], rsi
	inc	r14
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	jl	.label_2068
	jmp	.label_2072
.label_2077:
	sete	bl
	movzx	ebx, bl
	add	rbx, rcx
	inc	rbp
	mov	qword ptr [rax + r14*8], rdx
	inc	r14
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	jl	.label_2069
	jmp	.label_2076
.label_2072:
	mov	rbx, rcx
.label_2076:
	sub	r13, rbp
	jle	.label_2066
	lea	rdi, [rax + r14*8]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rax + rbp*8]
	shl	r13, 3
	mov	rdx, r13
	call	memcpy
	sub	r14, rbp
	add	r14, qword ptr [r12 + 8]
	jmp	.label_2074
.label_2066:
	mov	rdx, qword ptr [r15 + 8]
	sub	rdx, rbx
	jle	.label_2074
	lea	rdi, [rax + r14*8]
	mov	rax, qword ptr [r15 + 0x10]
	lea	rsi, [rax + rbx*8]
	shl	rdx, 3
	call	memcpy
	sub	r14, rbx
	add	r14, qword ptr [r15 + 8]
.label_2074:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + 8], r14
.label_2065:
	xor	ecx, ecx
.label_2071:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2073:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	ecx, 0xc
	jmp	.label_2071
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4157c0

	.globl search_cur_bkref_entry
	.type search_cur_bkref_entry, @function
search_cur_bkref_entry:
	mov	r8, qword ptr [rdi + 0xc8]
	xor	eax, eax
	test	r8, r8
	jle	.label_2078
	mov	r9, qword ptr [rdi + 0xd8]
	xor	eax, eax
	mov	r11, r8
	nop	word ptr [rax + rax]
.label_2080:
	lea	r10, [rax + r11]
	mov	rdx, r10
	shr	rdx, 0x3f
	add	rdx, r10
	sar	rdx, 1
	lea	rcx, [rdx + rdx*4]
	cmp	qword ptr [r9 + rcx*8 + 8], rsi
	cmovge	r11, rdx
	lea	rcx, [rdx + 1]
	cmovl	rax, rcx
	cmp	rax, r11
	jl	.label_2080
.label_2078:
	cmp	rax, r8
	jge	.label_2081
	mov	rcx, qword ptr [rdi + 0xd8]
	lea	rdx, [rax + rax*4]
	cmp	qword ptr [rcx + rdx*8 + 8], rsi
	je	.label_2079
.label_2081:
	mov	rax, -1
.label_2079:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415830

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
	jne	.label_2082
	mov	rsi, qword ptr [r15]
	mov	qword ptr [rsp + 0x20], r15
	mov	rdi, qword ptr [r12 + 8]
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rax, qword ptr [r13 + 0xd0]
	cmp	r15, rax
	jl	.label_2090
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 0x18], rdi
	mov	rdi, qword ptr [r13 + 0xd8]
	shl	rax, 4
	lea	rsi, [rax + rax*4]
	call	realloc
	test	rax, rax
	je	.label_2088
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
.label_2090:
	test	r15, r15
	jle	.label_2083
	lea	rcx, [r15 - 1]
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rcx, [rcx + rcx*4]
	cmp	qword ptr [rax + rcx*8 + 8], r14
	jne	.label_2084
	mov	byte ptr [rax + rcx*8 + 0x20], 1
	jmp	.label_2084
.label_2083:
	mov	rax, qword ptr [r13 + 0xd8]
.label_2084:
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
	jge	.label_2087
	mov	dword ptr [r13 + 0xe0], edi
.label_2087:
	add	r14, qword ptr [r12 + 8]
	mov	rax, qword ptr [rsp + 0x20]
	sub	r14, qword ptr [rax]
	mov	rax, qword ptr [r13 + 0x40]
	mov	r15, qword ptr [r13 + 0xc0]
	cmp	rax, r14
	jg	.label_2089
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_2085
.label_2089:
	mov	rax, qword ptr [r13 + 0x30]
	cmp	rax, r14
	jg	.label_2086
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_2086
.label_2085:
	lea	esi, [r14 + 1]
	mov	rdi, r13
	call	extend_buffers
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2082
.label_2086:
	xor	ebp, ebp
	mov	rdx, r14
	sub	rdx, r15
	jle	.label_2082
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rax + r15*8 + 8]
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
	mov	qword ptr [r13 + 0xc0], r14
.label_2082:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2088:
	mov	rdi, qword ptr [r13 + 0xd8]
	call	free
	mov	ebp, 0xc
	jmp	.label_2082
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415a10

	.globl check_arrival
	.type check_arrival, @function
check_arrival:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	qword ptr [rsp + 0x68], r9
	mov	r13, rcx
	mov	r15, rdx
	mov	r12, qword ptr [rdi + 0x98]
	mov	dword ptr [rsp + 0x9c], 0
	mov	rax, qword ptr [r12]
	mov	rcx, r15
	shl	rcx, 4
	mov	rax, qword ptr [rax + rcx]
	mov	qword ptr [rsp + 0x60], rax
	mov	rbp, qword ptr [rsi + 8]
	movsxd	rax, dword ptr [rdi + 0xe0]
	lea	rcx, [rax + r9]
	cmp	rbp, rcx
	jle	.label_2095
	mov	qword ptr [rsp + 0x20], r8
	mov	rbx, qword ptr [rsi + 0x10]
.label_2140:
	mov	rax, qword ptr [rsi]
	test	rax, rax
	cmove	rax, r13
	mov	rcx, qword ptr [rdi + 0x48]
	mov	rdx, qword ptr [rdi + 0xb8]
	mov	qword ptr [rdi + 0xb8], rbx
	mov	rbx, rax
	mov	qword ptr [rdi + 0x48], rbx
	test	rbx, rbx
	jle	.label_2115
	lea	rax, [rbx - 1]
	cmp	qword ptr [rdi + 0x58], rax
	je	.label_2121
	mov	qword ptr [rsp + 0x40], rdx
	mov	qword ptr [rsp + 0x48], rcx
	cmp	dword ptr [rdi + 0x90], 2
	jl	.label_2124
	mov	rax, qword ptr [rdi + 0x10]
	mov	rcx, rbx
	nop	word ptr [rax + rax]
.label_2137:
	mov	ebp, dword ptr [rax + rcx*4 - 4]
	cmp	ebp, -1
	jne	.label_2139
	dec	rcx
	jg	.label_2137
	jmp	.label_2138
.label_2124:
	mov	rcx, qword ptr [rdi + 8]
	mov	rdx, qword ptr [rdi + 0x80]
	mov	r14, rdi
	movzx	eax, byte ptr [rcx + rax]
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	edx, 1
	bt	rcx, rax
	jb	.label_2091
	xor	edx, edx
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_2091
	jmp	.label_2097
.label_2139:
	cmp	byte ptr [rdi + 0x8e], 0
	mov	r14, rdi
	jne	.label_2099
.label_2135:
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_2091
.label_2097:
	mov	edx, 2
	cmp	byte ptr [r14 + 0x8d], 0
	jne	.label_2091
	xor	edx, edx
	jmp	.label_2091
.label_2095:
	mov	qword ptr [rsp + 0x58], r12
	movabs	rdx, 0x7fffffffffffffff
	sub	rdx, rbp
	mov	r12d, 0xc
	cmp	rdx, rcx
	jle	.label_2106
	mov	qword ptr [rsp + 0x38], rdi
	mov	qword ptr [rsp + 0x20], r8
	mov	rcx, qword ptr [rsp + 0x68]
	lea	r14, [rax + rcx + 1]
	lea	rcx, [r14 + rbp]
	mov	rax, rcx
	shr	rax, 0x3d
	jne	.label_2106
	mov	rdi, qword ptr [rsi + 0x10]
	mov	qword ptr [rsp + 0x50], rsi
	lea	rsi, [rcx*8]
	mov	qword ptr [rsp + 0x78], rcx
	call	realloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_2106
	mov	r12, qword ptr [rsp + 0x50]
	mov	qword ptr [r12 + 0x10], rbx
	mov	rax, qword ptr [rsp + 0x78]
	mov	qword ptr [r12 + 8], rax
	lea	rdi, [rbx + rbp*8]
	shl	r14, 3
	xor	esi, esi
	mov	rdx, r14
	call	memset
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, r12
	mov	r12, qword ptr [rsp + 0x58]
	jmp	.label_2140
.label_2115:
	mov	qword ptr [rsp + 0x40], rdx
	mov	qword ptr [rsp + 0x48], rcx
.label_2138:
	mov	r14, rdi
	mov	edx, dword ptr [r14 + 0x70]
	jmp	.label_2091
.label_2121:
	mov	qword ptr [rsp + 0x40], rdx
	mov	qword ptr [rsp + 0x48], rcx
	mov	r14, rdi
	mov	edx, dword ptr [r14 + 0xa0]
	and	edx, 2
	xor	edx, 0xa
.label_2091:
	cmp	rbx, r13
	jne	.label_2100
	mov	dword ptr [rsp + 0x70], edx
	mov	qword ptr [rsp + 0x50], rsi
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1584]]
	movaps	xmmword ptr [rsp + 0x80], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x90], rax
	test	rax, rax
	je	.label_2108
	mov	r13, rbx
	mov	qword ptr [rax], r15
	mov	dword ptr [rsp + 0x9c], 0
	lea	rsi, [rsp + 0x80]
	mov	rdi, r12
	mov	r15, r12
	mov	rdx, qword ptr [rsp + 0x60]
	mov	ebp, dword ptr [rsp + 0x100]
	mov	ecx, ebp
	call	check_arrival_expand_ecl
	mov	r12d, eax
	mov	dword ptr [rsp + 0x9c], r12d
	test	r12d, r12d
	jne	.label_2119
	mov	rbx, qword ptr [rsp + 0x88]
	jmp	.label_2123
.label_2100:
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rax + rbx*8]
	mov	r13, rbx
	test	rcx, rcx
	je	.label_2105
	test	byte ptr [rcx + 0x68], 0x40
	jne	.label_2134
	mov	dword ptr [rsp + 0x70], edx
	mov	r15, r12
	mov	qword ptr [rsp + 0x50], rsi
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	mov	qword ptr [rsp + 0x90], 0
	xor	ebx, ebx
	jmp	.label_2117
.label_2105:
	mov	r15, r12
	mov	qword ptr [rsp + 0x50], rsi
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	mov	qword ptr [rsp + 0x90], 0
	xor	ecx, ecx
	jmp	.label_2131
.label_2134:
	mov	rbx, qword ptr [rcx + 0x10]
	mov	qword ptr [rsp + 0x88], rbx
	mov	rbp, qword ptr [rcx + 0x10]
	test	rbp, rbp
	jle	.label_2098
	mov	dword ptr [rsp + 0x70], edx
	mov	qword ptr [rsp + 0x78], rcx
	mov	qword ptr [rsp + 0x50], rsi
	mov	qword ptr [rsp + 0x80], rbx
	lea	rdi, [rbx*8]
	call	malloc
	mov	qword ptr [rsp + 0x90], rax
	test	rax, rax
	je	.label_2108
	mov	r15, r12
	mov	r12, qword ptr [rsp + 0x78]
	mov	rsi, qword ptr [r12 + 0x18]
	shl	rbp, 3
	mov	rdi, rax
	mov	rdx, rbp
	call	memcpy
	mov	rcx, r12
	mov	dword ptr [rsp + 0x9c], 0
	jmp	.label_2117
.label_2098:
	mov	dword ptr [rsp + 0x70], edx
	mov	r15, r12
	mov	qword ptr [rsp + 0x50], rsi
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	mov	qword ptr [rsp + 0x90], 0
	xor	ebx, ebx
	mov	dword ptr [rsp + 0x9c], 0
.label_2117:
	mov	ebp, dword ptr [rsp + 0x100]
	test	byte ptr [rcx + 0x68], 0x40
	je	.label_2131
.label_2123:
	test	rbx, rbx
	je	.label_2136
	lea	rsi, [rsp + 0x80]
	mov	rdi, r14
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x60]
	mov	r8d, ebp
	call	expand_bkref_cache
	mov	r12d, eax
	mov	dword ptr [rsp + 0x9c], r12d
	test	r12d, r12d
	jne	.label_2119
.label_2136:
	lea	rdi, [rsp + 0x9c]
	lea	rdx, [rsp + 0x80]
	mov	rsi, r15
	mov	ecx, dword ptr [rsp + 0x70]
	call	re_acquire_state_context
	mov	rcx, rax
	test	rcx, rcx
	jne	.label_2133
	mov	eax, dword ptr [rsp + 0x9c]
	test	eax, eax
	jne	.label_2096
.label_2133:
	mov	rax, qword ptr [r14 + 0xb8]
	mov	qword ptr [rax + r13*8], rcx
.label_2131:
	cmp	r13, qword ptr [rsp + 0x68]
	jge	.label_2104
	lea	rax, [r13 + 1]
	mov	qword ptr [rsp + 0x30], rax
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x38], r14
	mov	qword ptr [rsp + 0x58], r15
	mov	r12, qword ptr [rsp + 0x60]
	jmp	.label_2107
	nop	word ptr [rax + rax]
.label_2110:
	inc	rbp
	test	rcx, rcx
	mov	rax, qword ptr [r14 + 0xb8]
	mov	qword ptr [rax + r13*8 + 8], rcx
	mov	eax, 0
	cmovne	rbp, rax
	inc	qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x78]
	cmp	rbx, qword ptr [rsp + 0x68]
	mov	r13, rbx
	jl	.label_2107
	jmp	.label_2125
.label_2143:
	mov	edi, ebx
	call	iswalnum
	cmp	ebx, 0x5f
	mov	ecx, 1
	je	.label_2094
	test	eax, eax
	je	.label_2128
	jmp	.label_2094
	nop	word ptr cs:[rax + rax]
.label_2107:
	movsxd	rax, dword ptr [r14 + 0xe0]
	cmp	rbp, rax
	jg	.label_2112
	mov	r15, rcx
	mov	qword ptr [rsp + 0x88], 0
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rsi, qword ptr [rax + r13*8 + 8]
	test	rsi, rsi
	je	.label_2103
	add	rsi, 8
	lea	rdi, [rsp + 0x80]
	call	re_node_set_merge
	mov	dword ptr [rsp + 0x9c], eax
	test	eax, eax
	jne	.label_2096
.label_2103:
	mov	rax, r15
	mov	qword ptr [rsp + 0x78], rax
	test	rax, rax
	je	.label_2130
	mov	r15, qword ptr [r14 + 0x98]
	mov	dword ptr [rsp + 0xc4], 0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	mov	qword ptr [rsp + 0xb0], 0
	cmp	qword ptr [rax + 0x28], 0
	mov	edi, 0
	jle	.label_2101
	mov	qword ptr [rsp + 0x28], rbp
	mov	qword ptr [rsp + 0x70], r13
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_2126:
	mov	rax, qword ptr [rax + 0x30]
	mov	r13, qword ptr [rax + r12*8]
	mov	rsi, qword ptr [r15]
	mov	rbx, r13
	shl	rbx, 4
	test	byte ptr [rsi + rbx + 0xa], 0x10
	je	.label_2116
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, r14
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rcx, rbp
	call	check_node_accept_bytes
	cmp	eax, 2
	jl	.label_2127
	mov	rcx, qword ptr [r15 + 0x18]
	mov	rdx, qword ptr [rcx + r13*8]
	mov	rcx, r14
	movsxd	r14, eax
	add	r14, rbp
	mov	rax, qword ptr [rcx + 0xb8]
	mov	rsi, qword ptr [rax + r14*8]
	mov	qword ptr [rsp + 0xa8], 0
	test	rsi, rsi
	lea	rbx, [rsp + 0xa0]
	je	.label_2129
	add	rsi, 8
	mov	rdi, rbx
	mov	rbp, rdx
	call	re_node_set_merge
	mov	rdx, rbp
	mov	ebp, eax
	mov	dword ptr [rsp + 0xc4], ebp
	test	ebp, ebp
	jne	.label_2092
.label_2129:
	mov	rdi, rbx
	mov	rsi, rdx
	call	re_node_set_insert
	test	al, al
	je	.label_2122
	lea	rdi, [rsp + 0xc4]
	mov	rsi, r15
	mov	rdx, rbx
	call	re_acquire_state
	mov	rbx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rax, qword ptr [rbx + 0xb8]
	cmp	qword ptr [rax + r14*8], 0
	mov	r14, rbx
	jne	.label_2102
	mov	ebp, dword ptr [rsp + 0xc4]
	test	ebp, ebp
	je	.label_2102
	jmp	.label_2092
	nop	dword ptr [rax + rax]
.label_2127:
	test	eax, eax
	jne	.label_2102
	mov	rsi, qword ptr [r15]
	nop	word ptr [rax + rax]
.label_2116:
	add	rsi, rbx
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x70]
	call	check_node_accept
	test	al, al
	je	.label_2118
.label_2102:
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [rax + r13*8]
	lea	rdi, [rsp + 0x80]
	call	re_node_set_insert
	test	al, al
	je	.label_2122
.label_2118:
	inc	r12
	mov	rax, qword ptr [rsp + 0x78]
	cmp	r12, qword ptr [rax + 0x28]
	jl	.label_2126
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	r12, qword ptr [rsp + 0x60]
	mov	r13, qword ptr [rsp + 0x70]
	mov	rbp, qword ptr [rsp + 0x28]
.label_2101:
	call	free
	mov	dword ptr [rsp + 0x9c], 0
.label_2130:
	mov	r15, r12
	lea	rbx, [r13 + 1]
	cmp	qword ptr [rsp + 0x88], 0
	je	.label_2142
	mov	qword ptr [rsp + 0x28], rbp
	mov	rdi, qword ptr [rsp + 0x58]
	lea	r12, [rsp + 0x80]
	mov	rsi, r12
	mov	rdx, r15
	mov	ebp, dword ptr [rsp + 0x100]
	mov	ecx, ebp
	call	check_arrival_expand_ecl
	mov	dword ptr [rsp + 0x9c], eax
	test	eax, eax
	jne	.label_2096
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, rbx
	mov	rcx, r15
	mov	r8d, ebp
	call	expand_bkref_cache
	mov	dword ptr [rsp + 0x9c], eax
	test	eax, eax
	mov	rbp, qword ptr [rsp + 0x28]
	jne	.label_2096
.label_2142:
	test	r13, r13
	js	.label_2109
	cmp	qword ptr [r14 + 0x58], r13
	je	.label_2113
	cmp	dword ptr [r14 + 0x90], 2
	jl	.label_2114
	mov	qword ptr [rsp + 0x78], rbx
	mov	rax, qword ptr [r14 + 0x10]
	mov	rcx, qword ptr [rsp + 0x30]
	mov	r12, r15
	nop	word ptr [rax + rax]
.label_2120:
	mov	ebx, dword ptr [rax + rcx*4 - 4]
	cmp	ebx, -1
	jne	.label_2145
	dec	rcx
	test	rcx, rcx
	jg	.label_2120
	mov	ecx, dword ptr [r14 + 0x70]
	jmp	.label_2094
	nop	word ptr [rax + rax]
.label_2114:
	mov	qword ptr [rsp + 0x78], rbx
	mov	rax, qword ptr [r14 + 8]
	mov	rcx, qword ptr [r14 + 0x80]
	movzx	eax, byte ptr [rax + r13]
	mov	dl, al
	shr	dl, 6
	movzx	edx, dl
	mov	rdx, qword ptr [rcx + rdx*8]
	mov	ecx, 1
	bt	rdx, rax
	mov	r12, r15
	jb	.label_2094
	xor	ecx, ecx
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_2094
	jmp	.label_2141
.label_2145:
	cmp	byte ptr [r14 + 0x8e], 0
	jne	.label_2143
.label_2128:
	xor	ecx, ecx
	cmp	ebx, 0xa
	jne	.label_2094
.label_2141:
	mov	ecx, 2
	cmp	byte ptr [r14 + 0x8d], 0
	jne	.label_2094
	xor	ecx, ecx
	jmp	.label_2094
.label_2109:
	mov	qword ptr [rsp + 0x78], rbx
	mov	ecx, dword ptr [r14 + 0x70]
	mov	r12, r15
	jmp	.label_2094
.label_2113:
	mov	qword ptr [rsp + 0x78], rbx
	mov	ecx, dword ptr [r14 + 0xa0]
	and	ecx, 2
	xor	ecx, 0xa
	mov	r12, r15
	nop	word ptr cs:[rax + rax]
.label_2094:
	lea	rdi, [rsp + 0x9c]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rdx, [rsp + 0x80]
	call	re_acquire_state_context
	mov	rcx, rax
	test	rcx, rcx
	jne	.label_2110
	mov	eax, dword ptr [rsp + 0x9c]
	test	eax, eax
	je	.label_2110
	jmp	.label_2096
.label_2104:
	mov	rbx, r13
.label_2125:
	mov	rdi, qword ptr [rsp + 0x90]
	call	free
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rcx, qword ptr [rax + rcx*8]
	lea	rax, [rcx + 8]
	test	rcx, rcx
	cmove	rax, rcx
	mov	rcx, qword ptr [rsp + 0x50]
	mov	qword ptr [rcx], rbx
	mov	rcx, qword ptr [rsp + 0x40]
	mov	qword ptr [r14 + 0xb8], rcx
	mov	rcx, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rcx
	je	.label_2111
	mov	rcx, qword ptr [rax + 8]
	test	rcx, rcx
	jle	.label_2111
	xor	r12d, r12d
	dec	rcx
	mov	rax, qword ptr [rax + 0x10]
	je	.label_2146
	xor	edx, edx
	mov	rbp, qword ptr [rsp + 0x20]
	nop	dword ptr [rax + rax]
.label_2144:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], rbp
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_2144
	jmp	.label_2093
.label_2122:
	mov	rdi, qword ptr [rsp + 0xb0]
	call	free
	mov	ebp, 0xc
	mov	dword ptr [rsp + 0x9c], ebp
	jmp	.label_2096
.label_2092:
	mov	rdi, qword ptr [rsp + 0xb0]
	call	free
	mov	dword ptr [rsp + 0x9c], ebp
.label_2096:
	mov	rdi, qword ptr [rsp + 0x90]
	call	free
	mov	r12d, dword ptr [rsp + 0x9c]
	jmp	.label_2106
.label_2146:
	xor	edx, edx
	mov	rbp, qword ptr [rsp + 0x20]
.label_2093:
	cmp	rdx, -1
	je	.label_2111
	cmp	qword ptr [rax + rdx*8], rbp
	je	.label_2106
.label_2111:
	mov	r12d, 1
.label_2106:
	mov	eax, r12d
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2119:
	mov	rdi, qword ptr [rsp + 0x90]
	call	free
	jmp	.label_2106
.label_2108:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	mov	dword ptr [rsp + 0x9c], 0xc
	mov	r12d, 0xc
	jmp	.label_2106
.label_2112:
	mov	rbx, r13
	jmp	.label_2125
.label_2099:
	mov	qword ptr [rsp + 0x70], rbx
	mov	rbx, rsi
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	edx, 1
	je	.label_2132
	test	eax, eax
	mov	rsi, rbx
	mov	rbx, qword ptr [rsp + 0x70]
	je	.label_2135
	jmp	.label_2091
.label_2132:
	mov	rsi, rbx
	mov	rbx, qword ptr [rsp + 0x70]
	jmp	.label_2091
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416400

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
	je	.label_2147
	test	r12, r12
	jle	.label_2152
	xor	r12d, r12d
	jmp	.label_2149
	nop	dword ptr [rax]
.label_2153:
	inc	r12
	cmp	r12, qword ptr [r14 + 8]
	jl	.label_2149
	jmp	.label_2152
	nop	
.label_2154:
	cmp	rbp, -1
	je	.label_2148
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsp + 0x10]
	mov	rcx, r13
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	jmp	.label_2150
	nop	dword ptr [rax]
.label_2149:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rsp + 8]
	mov	r8, qword ptr [rax + 0x30]
	lea	r9, [rdx + rdx*2]
	mov	r10, qword ptr [r8 + r9*8 + 8]
	test	r10, r10
	jle	.label_2148
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	mov	rax, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rax]
	xor	eax, eax
	nop	
.label_2155:
	mov	rbp, qword ptr [rdi + rax*8]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	esi, byte ptr [rbx + rcx + 8]
	cmp	esi, r15d
	jne	.label_2151
	cmp	qword ptr [rbx + rcx], r13
	je	.label_2154
.label_2151:
	inc	rax
	cmp	rax, r10
	jl	.label_2155
.label_2148:
	lea	rsi, [r8 + r9*8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_merge
.label_2150:
	mov	ebx, eax
	test	ebx, ebx
	je	.label_2153
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_2147
.label_2152:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [r14 + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14], xmm0
	xor	ebx, ebx
.label_2147:
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
	#Procedure 0x416540

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
	jle	.label_2174
	mov	rsi, qword ptr [r10 + 0xd8]
	xor	edx, edx
	mov	rdi, r9
	nop	dword ptr [rax]
.label_2183:
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
	jl	.label_2183
.label_2174:
	cmp	rdx, r9
	jge	.label_2162
	cmp	rdx, -1
	je	.label_2162
	mov	qword ptr [rsp + 0x10], rcx
	mov	dword ptr [rsp + 0x1c], r8d
	mov	rcx, qword ptr [r10 + 0xd8]
	lea	rdx, [rdx + rdx*4]
	mov	qword ptr [rsp + 8], rdx
	cmp	qword ptr [rcx + rdx*8 + 8], r15
	jne	.label_2162
	mov	dword ptr [rsp + 0x24], eax
	jmp	.label_2187
.label_2168:
	mov	rcx, qword ptr [r10 + 0xd8]
.label_2187:
	mov	rax, qword ptr [rsp + 8]
	lea	r13, [rcx + rax*8]
	nop	dword ptr [rax]
.label_2156:
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	jle	.label_2161
	mov	rdx, qword ptr [r13]
	dec	rcx
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdi, rcx
	mov	esi, 0
	je	.label_2165
	nop	word ptr cs:[rax + rax]
.label_2170:
	lea	rbp, [rsi + rdi]
	shr	rbp, 1
	cmp	qword ptr [rax + rbp*8], rdx
	lea	rbx, [rbp + 1]
	cmovl	rsi, rbx
	cmovge	rdi, rbp
	cmp	rsi, rdi
	jb	.label_2170
.label_2165:
	cmp	rsi, -1
	je	.label_2161
	cmp	qword ptr [rax + rsi*8], rdx
	jne	.label_2161
	mov	r12, qword ptr [r13 + 0x18]
	add	r12, r15
	sub	r12, qword ptr [r13 + 0x10]
	cmp	r12, r15
	jne	.label_2185
	test	rcx, rcx
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	lea	rdx, [rdx + rdx*2]
	mov	rdx, qword ptr [rsi + rdx*8 + 0x10]
	mov	rbx, qword ptr [rdx]
	mov	edx, 0
	je	.label_2171
	nop	
.label_2166:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], rbx
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_2166
.label_2171:
	cmp	rdx, -1
	je	.label_2177
	mov	ecx, 4
	cmp	qword ptr [rax + rdx*8], rbx
	jne	.label_2177
	mov	rbp, r14
	jmp	.label_2159
.label_2185:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rax + 0x18]
	mov	r14, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [r10 + 0xb8]
	mov	rbx, qword ptr [rax + r12*8]
	test	rbx, rbx
	je	.label_2182
	mov	rdi, qword ptr [rbx + 0x10]
	test	rdi, rdi
	jle	.label_2172
	mov	rcx, rdi
	dec	rcx
	mov	rax, qword ptr [rbx + 0x18]
	mov	edx, 0
	je	.label_2158
	nop	dword ptr [rax + rax]
.label_2175:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r14
	lea	rbp, [rsi + 1]
	cmovl	rdx, rbp
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_2175
.label_2158:
	cmp	rdx, -1
	je	.label_2172
	mov	ecx, 4
	cmp	qword ptr [rax + rdx*8], r14
	je	.label_2176
.label_2172:
	mov	qword ptr [rsp + 0x48], rdi
	mov	rbp, qword ptr [rbx + 0x10]
	test	rbp, rbp
	jle	.label_2179
	mov	qword ptr [rsp + 0x40], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rsp + 0x50], rax
	test	rax, rax
	je	.label_2186
	mov	rsi, qword ptr [rbx + 0x18]
	shl	rbp, 3
	mov	rdi, rax
	mov	rdx, rbp
	call	memcpy
	jmp	.label_2163
.label_2177:
	mov	qword ptr [rsp + 0x30], r10
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1584]]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x50], rax
	test	rax, rax
	je	.label_2169
	mov	qword ptr [rax], rbx
	xor	eax, eax
.label_2164:
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
	jne	.label_2167
.label_2181:
	mov	r14, rbp
	jmp	.label_2159
.label_2182:
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1584]]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x50], rax
	test	rax, rax
	je	.label_2173
	mov	qword ptr [rax], r14
	mov	dword ptr [rsp + 0x64], 0
	jmp	.label_2178
.label_2179:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	qword ptr [rsp + 0x50], 0
.label_2163:
	xor	ebx, ebx
.label_2160:
	mov	dword ptr [rsp + 0x64], ebx
	lea	rdi, [rsp + 0x40]
	mov	rsi, r14
	call	re_node_set_insert
	test	ebx, ebx
	jne	.label_2157
	xor	al, 1
	jne	.label_2157
.label_2178:
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
.label_2176:
	mov	r14, qword ptr [rsp + 0x28]
.label_2159:
	test	ecx, ecx
	je	.label_2161
	cmp	ecx, 4
	jne	.label_2184
	nop	dword ptr [rax + rax]
.label_2161:
	xor	eax, eax
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	jne	.label_2156
	jmp	.label_2162
.label_2169:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	eax, 0xc
	jmp	.label_2164
.label_2167:
	test	ebx, ebx
	cmovne	r14d, ebx
	test	edx, edx
	cmovne	r14d, edx
	mov	dword ptr [rsp + 0x64], r14d
	mov	ecx, 1
	mov	dword ptr [rsp + 0x24], r14d
	jmp	.label_2181
.label_2157:
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	test	ebx, ebx
	mov	eax, 0xc
	cmove	ebx, eax
	mov	dword ptr [rsp + 0x64], ebx
	mov	ecx, 1
	mov	dword ptr [rsp + 0x24], ebx
	jmp	.label_2180
.label_2173:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x64], 0xc
	mov	dword ptr [rsp + 0x24], 0xc
	mov	ecx, 1
.label_2180:
	mov	r14, qword ptr [rsp + 0x28]
	mov	r10, qword ptr [rsp + 0x30]
	jmp	.label_2159
.label_2186:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	ebx, 0xc
	jmp	.label_2160
.label_2184:
	cmp	ecx, 2
	je	.label_2168
	mov	eax, dword ptr [rsp + 0x24]
.label_2162:
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
	#Procedure 0x4169d0

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
	jmp	.label_2192
	nop	dword ptr [rax]
.label_2189:
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rbp, qword ptr [rax]
.label_2192:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jle	.label_2195
	dec	rax
	mov	rcx, qword ptr [rbx + 0x10]
	mov	edx, 0
	je	.label_2188
	nop	
.label_2194:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], rbp
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_2194
.label_2188:
	cmp	rdx, -1
	je	.label_2195
	cmp	qword ptr [rcx + rdx*8], rbp
	je	.label_2191
.label_2195:
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, r15d
	jne	.label_2197
	cmp	qword ptr [rax + rcx], r14
	je	.label_2193
.label_2197:
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	je	.label_2190
	mov	rax, qword ptr [r12 + 0x28]
	lea	rbp, [rbp + rbp*2]
	mov	rcx, qword ptr [rax + rbp*8 + 8]
	cmp	rcx, 2
	je	.label_2196
	test	rcx, rcx
	jne	.label_2189
	jmp	.label_2191
	nop	dword ptr [rax]
.label_2196:
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rdx, qword ptr [rax + 8]
	mov	rdi, r12
	mov	rsi, rbx
	mov	rcx, r14
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	test	eax, eax
	jne	.label_2190
	mov	rax, qword ptr [r12 + 0x28]
	jmp	.label_2189
.label_2193:
	cmp	r15d, 9
	jne	.label_2191
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	je	.label_2190
.label_2191:
	xor	eax, eax
.label_2190:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x416ae0

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
	je	.label_2225
	mov	r15, r8
	jle	.label_2200
	mov	rcx, qword ptr [r12 + 0x10]
	xor	eax, eax
	cmp	r8, 4
	mov	r15, r8
	jb	.label_2203
	xor	eax, eax
	mov	rdx, r8
	and	rdx, 0xfffffffffffffffc
	mov	r15, r8
	je	.label_2203
	movq	xmm0, r8
	lea	rbx, [r8 - 4]
	mov	eax, ebx
	shr	eax, 2
	inc	eax
	xor	edi, edi
	test	al, 3
	je	.label_2216
	lea	ebp, [r8 - 4]
	shr	ebp, 2
	inc	ebp
	and	ebp, 3
	neg	rbp
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	dword ptr [rax]
.label_2219:
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	add	rdi, 4
	inc	rbp
	jne	.label_2219
	jmp	.label_2229
.label_2216:
	pxor	xmm1, xmm1
.label_2229:
	cmp	rbx, 0xc
	jb	.label_2204
	mov	rax, r8
	and	rax, 0xfffffffffffffffc
	sub	rax, rdi
	lea	rdi, [rcx + rdi*8 + 0x70]
	nop	word ptr [rax + rax]
.label_2210:
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
	jne	.label_2210
.label_2204:
	paddq	xmm1, xmm0
	pshufd	xmm0, xmm1, 0x4e
	paddq	xmm0, xmm1
	movq	r15, xmm0
	cmp	r8, rdx
	mov	rax, rdx
	je	.label_2200
.label_2203:
	mov	rdx, r8
	sub	rdx, rax
	lea	rcx, [rcx + rax*8]
	nop	dword ptr [rax + rax]
.label_2208:
	add	r15, qword ptr [rcx]
	add	rcx, 8
	dec	rdx
	jne	.label_2208
.label_2200:
	mov	rax, qword ptr [rsi + 0x40]
	mov	rcx, qword ptr [rsi + 0x88]
	and	rcx, r15
	lea	rdi, [rcx + rcx*2]
	mov	rcx, qword ptr [rax + rdi*8]
	test	rcx, rcx
	jle	.label_2206
	xor	edx, edx
	test	r12, r12
	je	.label_2221
	mov	rax, qword ptr [rax + rdi*8 + 0x10]
	nop	word ptr [rax + rax]
.label_2215:
	mov	r13, qword ptr [rax + rdx*8]
	cmp	r15, qword ptr [r13]
	jne	.label_2212
	cmp	qword ptr [r13 + 0x10], r8
	jne	.label_2212
	mov	rdi, r8
	nop	word ptr cs:[rax + rax]
.label_2202:
	test	rdi, rdi
	jle	.label_2198
	mov	rbp, qword ptr [r13 + 0x18]
	mov	rbp, qword ptr [rbp + rdi*8 - 8]
	mov	rbx, qword ptr [r12 + 0x10]
	cmp	rbp, qword ptr [rbx + rdi*8 - 8]
	lea	rdi, [rdi - 1]
	je	.label_2202
	nop	word ptr cs:[rax + rax]
.label_2212:
	inc	rdx
	cmp	rdx, rcx
	jl	.label_2215
	jmp	.label_2206
.label_2221:
	xor	edx, edx
	cmp	rcx, 0x10
	jb	.label_2214
	xor	edx, edx
	mov	rax, rcx
	and	rax, 0xfffffffffffffff0
	je	.label_2214
	lea	rdx, [rcx - 0x10]
	mov	edi, edx
	shr	edi, 4
	inc	edi
	xor	ebp, ebp
	test	dil, 7
	je	.label_2222
	lea	edi, [rcx - 0x10]
	shr	edi, 4
	inc	edi
	and	edi, 7
	neg	rdi
	xor	ebp, ebp
.label_2209:
	add	rbp, 0x10
	inc	rdi
	jne	.label_2209
.label_2222:
	cmp	rdx, 0x70
	jb	.label_2228
	mov	rdx, rcx
	and	rdx, 0xfffffffffffffff0
	sub	rdx, rbp
	nop	dword ptr [rax]
.label_2205:
	add	rdx, -0x80
	jne	.label_2205
.label_2228:
	cmp	rcx, rax
	mov	rdx, rax
	je	.label_2206
	nop	
.label_2214:
	inc	rdx
	cmp	rdx, rcx
	jl	.label_2214
.label_2206:
	mov	qword ptr [rsp + 0x10], rsi
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	test	r13, r13
	je	.label_2218
	mov	rbx, r13
	add	rbx, 8
	mov	rdi, qword ptr [r12 + 8]
	mov	qword ptr [r13 + 0x10], rdi
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	jle	.label_2220
	mov	qword ptr [r13 + 8], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_2226
	mov	qword ptr [rsp + 8], r14
	lea	r14, [r12 + 0x10]
	mov	rsi, qword ptr [r12 + 0x10]
	shl	rbp, 3
	mov	rdi, rax
	mov	rdx, rbp
	call	memcpy
	mov	qword ptr [r13 + 0x50], rbx
	mov	rdi, qword ptr [rsp + 0x10]
	jmp	.label_2207
.label_2220:
	mov	qword ptr [rsp + 8], r14
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
	cmp	qword ptr [r12 + 8], 0
	mov	qword ptr [r13 + 0x50], rbx
	mov	rdi, qword ptr [rsp + 0x10]
	jle	.label_2211
	lea	r14, [r12 + 0x10]
.label_2207:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2223:
	mov	r8, qword ptr [rdi]
	mov	rdx, qword ptr [r14]
	mov	rdx, qword ptr [rdx + rax*8]
	shl	rdx, 4
	mov	ebp, dword ptr [r8 + rdx + 8]
	mov	esi, ebp
	and	esi, 0x3ffff
	cmp	esi, 1
	je	.label_2217
	movzx	esi, bpl
	shr	ebp, 0x14
	mov	cl, byte ptr [r13 + 0x68]
	mov	bl, cl
	shr	bl, 5
	movzx	ebx, bl
	or	ebx, ebp
	shl	bl, 5
	and	bl, 0x20
	and	cl, 0xdf
	or	cl, bl
	mov	byte ptr [r13 + 0x68], cl
	cmp	esi, 0xc
	je	.label_2199
	cmp	esi, 4
	je	.label_2227
	cmp	esi, 2
	jne	.label_2213
	or	cl, 0x10
	jmp	.label_2201
.label_2227:
	or	cl, 0x40
	jmp	.label_2201
.label_2213:
	lea	rdx, [r8 + rdx + 8]
	test	dword ptr [rdx], 0x3ff00
	je	.label_2217
.label_2199:
	or	cl, 0x80
.label_2201:
	mov	byte ptr [r13 + 0x68], cl
.label_2217:
	inc	rax
	cmp	rax, qword ptr [r12 + 8]
	jl	.label_2223
.label_2211:
	mov	rsi, r13
	mov	rdx, r15
	call	register_state
	test	eax, eax
	je	.label_2198
	mov	rdi, r13
	call	free_state
	mov	r14, qword ptr [rsp + 8]
	jmp	.label_2218
.label_2225:
	mov	dword ptr [r14], 0
	jmp	.label_2224
.label_2226:
	mov	rdi, r13
	call	free
.label_2218:
	mov	dword ptr [r14], 0xc
.label_2224:
	xor	r13d, r13d
.label_2198:
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
	#Procedure 0x416eb0

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
	je	.label_2240
	mov	r8d, dword ptr [rdx + 0x90]
	mov	ebx, 1
	cmp	r8d, 1
	je	.label_2230
	lea	rax, [rcx + 1]
	mov	r11, qword ptr [rdx + 0x30]
	cmp	rax, r11
	jge	.label_2230
	lea	rax, [rcx*4]
	add	rax, qword ptr [rdx + 0x10]
	mov	ebx, 1
	nop	
.label_2232:
	cmp	dword ptr [rax + rbx*4], -1
	jne	.label_2230
	lea	rbp, [rcx + rbx + 1]
	inc	rbx
	cmp	rbp, r11
	jl	.label_2232
.label_2230:
	cmp	r10d, 5
	jne	.label_2236
	xor	r14d, r14d
	cmp	ebx, 2
	jl	.label_2237
	mov	rax, qword ptr [rdi + 0xd8]
	test	al, 0x40
	jne	.label_2252
	mov	rsi, qword ptr [rdx + 8]
	movzx	esi, byte ptr [rsi + rcx]
	cmp	esi, 0xa
	je	.label_2237
.label_2252:
	test	al, al
	js	.label_2247
	mov	r14d, ebx
	jmp	.label_2237
.label_2236:
	cmp	ebx, 1
	setg	al
	xor	r14d, r14d
	cmp	r10d, 6
	jne	.label_2237
	test	al, al
	je	.label_2237
	mov	r15, qword ptr [r9 + rsi]
	mov	rsi, qword ptr [r15 + 0x40]
	test	rsi, rsi
	jne	.label_2254
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_2254
	xor	r12d, r12d
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_2231
.label_2254:
	cmp	r8d, 1
	jne	.label_2234
	mov	rax, qword ptr [rdx + 8]
	movzx	r12d, byte ptr [rax + rcx]
	jmp	.label_2231
.label_2234:
	mov	rax, qword ptr [rdx + 0x10]
	mov	r12d, dword ptr [rax + rcx*4]
.label_2231:
	mov	rax, qword ptr [r15 + 0x28]
	test	rax, rax
	jle	.label_2249
	mov	rcx, qword ptr [r15]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_2244:
	cmp	r12d, dword ptr [rcx + rdx*4]
	je	.label_2246
	inc	rdx
	cmp	rdx, rax
	jl	.label_2244
.label_2249:
	cmp	qword ptr [r15 + 0x48], 0
	jle	.label_2248
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_2245:
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	edi, r12d
	call	iswctype
	test	eax, eax
	jne	.label_2246
	inc	rbp
	cmp	rbp, qword ptr [r15 + 0x48]
	jl	.label_2245
	mov	rsi, qword ptr [r15 + 0x40]
.label_2248:
	xor	ecx, ecx
	test	rsi, rsi
	jle	.label_2241
	mov	rax, qword ptr [r15 + 8]
	xor	edx, edx
	nop	
.label_2239:
	cmp	dword ptr [rax + rdx*4], r12d
	jg	.label_2253
	mov	rcx, qword ptr [r15 + 0x10]
	cmp	r12d, dword ptr [rcx + rdx*4]
	jle	.label_2238
.label_2253:
	inc	rdx
	xor	ecx, ecx
	cmp	rdx, rsi
	jl	.label_2239
	jmp	.label_2241
.label_2246:
	mov	ecx, ebx
.label_2241:
	test	byte ptr [r15 + 0x20], 1
	jne	.label_2242
	mov	r14d, ecx
	jmp	.label_2237
.label_2242:
	test	ecx, ecx
	jg	.label_2237
	test	ebx, ebx
	mov	r14d, 1
	cmovg	r14d, ebx
	jmp	.label_2237
.label_2247:
	mov	rax, qword ptr [rdx + 8]
	cmp	byte ptr [rax + rcx], 0
	je	.label_2237
	mov	r14d, ebx
	jmp	.label_2237
.label_2240:
	mov	rax, qword ptr [rdx + 8]
	movzx	esi, byte ptr [rax + rcx]
	xor	r14d, r14d
	cmp	esi, 0xc2
	jae	.label_2251
.label_2237:
	mov	eax, r14d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2238:
	mov	ecx, ebx
	jmp	.label_2241
.label_2251:
	lea	rdi, [rcx + 2]
	mov	rdx, qword ptr [rdx + 0x58]
	cmp	rdi, rdx
	jg	.label_2237
	mov	bl, byte ptr [rcx + rax + 1]
	movzx	edi, sil
	cmp	edi, 0xdf
	ja	.label_2235
	movzx	eax, bl
	cmp	eax, 0xc0
	sbb	eax, eax
	and	eax, 2
	xor	r14d, r14d
	test	bl, bl
	cmovs	r14d, eax
	jmp	.label_2237
.label_2235:
	cmp	edi, 0xef
	ja	.label_2243
	mov	esi, 3
	cmp	edi, 0xe0
	jne	.label_2233
	movzx	edi, bl
	cmp	edi, 0xa0
	jb	.label_2237
	jmp	.label_2233
.label_2243:
	cmp	edi, 0xf7
	ja	.label_2250
	mov	esi, 4
	cmp	edi, 0xf0
	jne	.label_2233
	movzx	edi, bl
	cmp	edi, 0x90
	jb	.label_2237
	jmp	.label_2233
.label_2250:
	cmp	edi, 0xfb
	ja	.label_2256
	mov	esi, 5
	cmp	edi, 0xf8
	jne	.label_2233
	movzx	edi, bl
	cmp	edi, 0x88
	jb	.label_2237
	jmp	.label_2233
.label_2256:
	cmp	edi, 0xfd
	ja	.label_2237
	mov	esi, 6
	cmp	edi, 0xfc
	jne	.label_2233
	movzx	edi, bl
	cmp	edi, 0x84
	jb	.label_2237
.label_2233:
	mov	edi, esi
	lea	rbp, [rdi + rcx]
	cmp	rbp, rdx
	jg	.label_2237
	add	rax, rcx
	mov	ecx, 1
.label_2255:
	mov	dl, byte ptr [rax + rcx]
	test	dl, dl
	jns	.label_2237
	movzx	edx, dl
	cmp	edx, 0xbf
	ja	.label_2237
	inc	rcx
	cmp	rcx, rdi
	jl	.label_2255
	mov	r14d, esi
	jmp	.label_2237
	nop	
	.section	.text
	.align	16
	#Procedure 0x417190

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 8]
	movzx	ecx, byte ptr [rax + rdx]
	mov	r15d, dword ptr [r14 + 8]
	movzx	esi, r15b
	xor	eax, eax
	dec	esi
	cmp	esi, 6
	ja	.label_2260
	jmp	qword ptr [word ptr [+ (rsi * 8) + label_2267]]
.label_2564:
	movzx	eax, byte ptr [r14]
	cmp	eax, ecx
	je	.label_2257
	xor	eax, eax
	jmp	.label_2260
.label_2565:
	mov	rsi, qword ptr [r14]
	mov	al, cl
	shr	al, 6
	movzx	eax, al
	mov	rax, qword ptr [rsi + rax*8]
	bt	rax, rcx
	jb	.label_2257
	xor	eax, eax
	jmp	.label_2260
.label_2567:
	test	cl, cl
	js	.label_2273
.label_2566:
	test	cl, cl
	je	.label_2274
	movzx	eax, cl
	cmp	eax, 0xa
	jne	.label_2257
	mov	rax, qword ptr [rbx + 0x98]
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_2257
	xor	eax, eax
	jmp	.label_2260
.label_2274:
	mov	rax, qword ptr [rbx + 0x98]
	cmp	byte ptr [rax + 0xd8], 0
	js	.label_2262
.label_2257:
	shr	r15d, 8
	mov	al, 1
	test	r15w, 0x3ff
	je	.label_2260
	test	rdx, rdx
	js	.label_2268
	cmp	qword ptr [rbx + 0x58], rdx
	je	.label_2269
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2271
	mov	rax, qword ptr [rbx + 0x10]
	inc	rdx
.label_2272:
	mov	ebp, dword ptr [rax + rdx*4 - 4]
	cmp	ebp, -1
	jne	.label_2270
	dec	rdx
	test	rdx, rdx
	jg	.label_2272
	mov	eax, dword ptr [rbx + 0x70]
	jmp	.label_2266
.label_2271:
	mov	rax, qword ptr [rbx + 0x80]
	mov	dl, cl
	shr	dl, 6
	movzx	edx, dl
	mov	rdx, qword ptr [rax + rdx*8]
	xor	eax, eax
	bt	rdx, rcx
	jae	.label_2275
	mov	eax, 1
	xor	edx, edx
	jmp	.label_2261
.label_2273:
	xor	eax, eax
	jmp	.label_2260
.label_2270:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_2263
.label_2258:
	xor	eax, eax
	cmp	ebp, 0xa
	je	.label_2265
	jmp	.label_2266
.label_2275:
	cmp	ecx, 0xa
	jne	.label_2266
.label_2265:
	mov	eax, 2
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_2266
	xor	eax, eax
	jmp	.label_2266
.label_2262:
	xor	eax, eax
	jmp	.label_2260
.label_2268:
	mov	eax, dword ptr [rbx + 0x70]
	jmp	.label_2266
.label_2269:
	mov	eax, dword ptr [rbx + 0xa0]
	and	eax, 2
	xor	eax, 0xa
.label_2266:
	mov	ecx, eax
	and	ecx, 1
	sete	dl
	test	r15b, 4
	je	.label_2261
	test	ecx, ecx
	jne	.label_2261
	xor	eax, eax
	jmp	.label_2260
.label_2263:
	mov	edi, ebp
	call	iswalnum
	mov	ecx, eax
	xor	edx, edx
	cmp	ebp, 0x5f
	mov	eax, 1
	je	.label_2261
	test	ecx, ecx
	je	.label_2258
.label_2261:
	mov	ecx, dword ptr [r14 + 8]
	test	dl, dl
	jne	.label_2259
	mov	edx, ecx
	and	edx, 0x800
	je	.label_2259
	xor	eax, eax
	jmp	.label_2260
.label_2259:
	test	al, 2
	jne	.label_2264
	mov	edx, ecx
	and	edx, 0x2000
	je	.label_2264
	xor	eax, eax
	jmp	.label_2260
.label_2264:
	shr	ecx, 8
	and	eax, 8
	test	cl, cl
	setns	cl
	shr	eax, 3
	or	al, cl
.label_2260:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417360

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
	mov	qword ptr [rbp - 0x90], r13
	mov	rbx, rdi
	mov	edi, 0x3800
	call	malloc
	mov	r12, rax
	mov	qword ptr [rbp - 0x98], r12
	test	r12, r12
	je	.label_2364
	lea	rax, [r13 + 0x58]
	mov	qword ptr [rbp - 0xe8], rax
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r13 + 0x58], xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	xor	r15d, r15d
	cmp	qword ptr [r13 + 0x10], 0
	jle	.label_2296
	lea	rax, [r12 + 0x1800]
	mov	qword ptr [rbp - 0xc0], rax
	lea	rax, [r12 + 0x1818]
	mov	qword ptr [rbp - 0xf0], rax
	xor	edi, edi
	xor	r11d, r11d
	mov	r15, rbx
	mov	qword ptr [rbp - 0xe0], r15
	nop	dword ptr [rax + rax]
.label_2360:
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + rdi*8]
	mov	rax, qword ptr [r15]
	shl	rsi, 4
	lea	r8, [rax + rsi]
	mov	qword ptr [rbp - 0xa0], r8
	mov	edx, dword ptr [rax + rsi + 8]
	movzx	r9d, dl
	cmp	r9d, 1
	jne	.label_2276
	mov	cl, byte ptr [r8]
	mov	ebx, 1
	shl	rbx, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [rbp + rcx*8 - 0x50], rbx
	jmp	.label_2288
	nop	word ptr cs:[rax + rax]
.label_2276:
	cmp	r9d, 7
	je	.label_2298
	cmp	r9d, 5
	je	.label_2299
	cmp	r9d, 3
	jne	.label_2300
	mov	rcx, qword ptr [r8]
	mov	rbx, qword ptr [rcx]
	or	qword ptr [rbp - 0x50], rbx
	mov	rbx, qword ptr [rcx + 8]
	or	qword ptr [rbp - 0x48], rbx
	mov	rbx, qword ptr [rcx + 0x10]
	or	qword ptr [rbp - 0x40], rbx
	mov	rcx, qword ptr [rcx + 0x18]
	or	qword ptr [rbp - 0x38], rcx
	jmp	.label_2288
.label_2298:
	mov	qword ptr [rbp - 0x48], -1
	mov	qword ptr [rbp - 0x50], -1
	mov	rcx, qword ptr [r15 + 0xd8]
	mov	rbx, -2
	test	cl, 0x40
	jne	.label_2313
	mov	qword ptr [rbp - 0x50], -0x401
	mov	rbx, -0x402
.label_2313:
	test	cl, cl
	jns	.label_2288
	mov	qword ptr [rbp - 0x50], rbx
	jmp	.label_2288
.label_2299:
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_2329
	mov	r14, r8
	mov	r8, qword ptr [r15 + 0x78]
	mov	rcx, qword ptr [rbp - 0x50]
	or	rcx, qword ptr [r8]
	mov	qword ptr [rbp - 0x50], rcx
	mov	rbx, qword ptr [r8 + 8]
	or	qword ptr [rbp - 0x48], rbx
	mov	rbx, qword ptr [r8 + 0x10]
	or	qword ptr [rbp - 0x40], rbx
	mov	rbx, qword ptr [r8 + 0x18]
	mov	r8, r14
	or	qword ptr [rbp - 0x38], rbx
	jmp	.label_2328
.label_2329:
	mov	qword ptr [rbp - 0x38], -1
	mov	qword ptr [rbp - 0x40], -1
	mov	qword ptr [rbp - 0x48], -1
	mov	qword ptr [rbp - 0x50], -1
	mov	rcx, -1
.label_2328:
	mov	rbx, qword ptr [r15 + 0xd8]
	test	bl, 0x40
	jne	.label_2343
	and	rcx, 0xfffffffffffffbff
	mov	qword ptr [rbp - 0x50], rcx
.label_2343:
	test	bl, bl
	jns	.label_2288
	and	rcx, 0xfffffffffffffffe
	mov	qword ptr [rbp - 0x50], rcx
	nop	word ptr cs:[rax + rax]
.label_2288:
	shr	edx, 8
	mov	ecx, edx
	and	ecx, 0x3ff
	je	.label_2334
	test	dl, 0x20
	je	.label_2358
	mov	rcx, qword ptr [rbp - 0x50]
	test	ch, 4
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	je	.label_2300
	mov	qword ptr [rbp - 0x50], 0x400
.label_2358:
	test	dl, dl
	js	.label_2314
	lea	rcx, [rax + rsi + 8]
	test	dl, 4
	je	.label_2368
	cmp	r9d, 1
	jne	.label_2372
	test	byte ptr [rcx + 2], 0x40
	je	.label_2314
.label_2372:
	cmp	dword ptr [r15 + 0xb4], 1
	jle	.label_2374
	mov	rsi, qword ptr [r15 + 0x78]
	mov	rax, qword ptr [rsi]
	not	rax
	or	rax, qword ptr [r15 + 0xb8]
	and	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbx, qword ptr [rsi + 8]
	not	rbx
	or	rbx, qword ptr [r15 + 0xc0]
	and	rbx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rbx
	or	rbx, rax
	mov	rax, qword ptr [rsi + 0x10]
	not	rax
	or	rax, qword ptr [r15 + 0xc8]
	and	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsi, qword ptr [rsi + 0x18]
	not	rsi
	or	rsi, qword ptr [r15 + 0xd0]
	and	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rsi
	or	rsi, rax
	jmp	.label_2377
.label_2374:
	movdqu	xmm0, xmmword ptr [r15 + 0xb8]
	pand	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movq	rsi, xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rax, xmm0
	movdqu	xmm0, xmmword ptr [r15 + 0xc8]
	pand	xmm0, xmmword ptr [rbp - 0x40]
	movq	rbx, xmm0
	or	rbx, rsi
	or	rbx, rax
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rsi, xmm0
.label_2377:
	or	rsi, rbx
	test	rsi, rsi
	je	.label_2300
.label_2368:
	test	dl, 8
	je	.label_2334
	cmp	r9d, 1
	jne	.label_2312
	test	byte ptr [rcx + 2], 0x40
	jne	.label_2314
.label_2312:
	cmp	dword ptr [r15 + 0xb4], 1
	jle	.label_2315
	mov	rcx, qword ptr [r15 + 0x78]
	mov	rdx, qword ptr [rcx]
	and	rdx, qword ptr [r15 + 0xb8]
	not	rdx
	and	rdx, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x50], rdx
	mov	rsi, qword ptr [rcx + 8]
	and	rsi, qword ptr [r15 + 0xc0]
	not	rsi
	and	rsi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rsi
	or	rsi, rdx
	mov	rdx, qword ptr [rcx + 0x10]
	and	rdx, qword ptr [r15 + 0xc8]
	not	rdx
	and	rdx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rdx
	mov	rcx, qword ptr [rcx + 0x18]
	and	rcx, qword ptr [r15 + 0xd0]
	not	rcx
	and	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rcx
	or	rcx, rdx
	jmp	.label_2318
	nop	dword ptr [rax + rax]
.label_2314:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	jmp	.label_2300
.label_2315:
	movdqu	xmm0, xmmword ptr [r15 + 0xb8]
	pandn	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movq	rcx, xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rdx, xmm0
	movdqu	xmm0, xmmword ptr [r15 + 0xc8]
	pandn	xmm0, xmmword ptr [rbp - 0x40]
	movq	rsi, xmm0
	or	rsi, rcx
	or	rsi, rdx
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
.label_2318:
	or	rcx, rsi
	test	rcx, rcx
	je	.label_2300
	nop	dword ptr [rax]
.label_2334:
	mov	qword ptr [rbp - 0x80], rdi
	test	r11, r11
	jle	.label_2336
	cmp	r9d, 1
	jne	.label_2365
	mov	r15, qword ptr [rbp - 0xc0]
	mov	rbx, r12
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_2287:
	movzx	eax, byte ptr [r8]
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	mov	rcx, qword ptr [r15 + rcx*8]
	bt	rcx, rax
	jae	.label_2366
	mov	qword ptr [rbp - 0x88], rbx
	mov	r9, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0xb0], rax
	mov	r8, qword ptr [r15]
	mov	r13, qword ptr [r15 + 8]
	mov	rsi, r8
	and	rsi, r9
	mov	rdi, r13
	and	rdi, rax
	mov	rdx, rdi
	or	rdx, rsi
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0xa8], rax
	mov	r12, qword ptr [r15 + 0x10]
	mov	rcx, r12
	and	rcx, rax
	or	rdx, rcx
	mov	r10, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [r15 + 0x18]
	mov	rax, rbx
	and	rax, r10
	or	rdx, rax
	je	.label_2378
	mov	qword ptr [rbp - 0xd8], rax
	mov	qword ptr [rbp - 0xd0], rcx
	mov	qword ptr [rbp - 0xc8], rsi
	mov	qword ptr [rbp - 0x78], r11
	mov	rsi, r10
	mov	r10, rbx
	mov	r11, r9
	not	r11
	and	r11, r8
	not	r8
	and	r8, r9
	mov	qword ptr [rbp - 0x50], r8
	mov	rax, qword ptr [rbp - 0xb0]
	mov	r9, rax
	not	r9
	and	r9, r13
	mov	rcx, r9
	or	rcx, r11
	not	r13
	and	r13, rax
	mov	qword ptr [rbp - 0x48], r13
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rax, rdx
	not	rax
	and	rax, r12
	or	rcx, rax
	not	r12
	and	r12, rdx
	mov	qword ptr [rbp - 0x40], r12
	mov	rdx, rsi
	not	rdx
	and	rdx, r10
	not	r10
	and	r10, rsi
	mov	qword ptr [rbp - 0xa8], r10
	mov	qword ptr [rbp - 0x38], r10
	or	rcx, rdx
	je	.label_2333
	mov	qword ptr [rbp - 0xb8], r13
	mov	qword ptr [rbp - 0xb0], r8
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rcx, rsi
	shl	rcx, 5
	mov	r10, qword ptr [rbp - 0xc0]
	mov	qword ptr [r10 + rcx], r11
	mov	qword ptr [r10 + rcx + 8], r9
	mov	r9, rsi
	mov	qword ptr [r10 + rcx + 0x10], rax
	mov	qword ptr [r10 + rcx + 0x18], rdx
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [r15], rax
	mov	qword ptr [r15 + 8], rdi
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [r15 + 0x10], rax
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [r15 + 0x18], rax
	lea	rcx, [r9 + r9*2]
	mov	rdx, qword ptr [rbp - 0x98]
	lea	rax, [rdx + rcx*8]
	mov	rbx, qword ptr [rbp - 0x88]
	mov	rdi, qword ptr [rbx + 8]
	mov	qword ptr [rdx + rcx*8 + 8], rdi
	mov	r13, qword ptr [rbx + 8]
	test	r13, r13
	jle	.label_2323
	mov	qword ptr [rax], rdi
	shl	rdi, 3
	mov	qword ptr [rbp - 0xd0], rax
	mov	qword ptr [rbp - 0xc8], rcx
	call	malloc
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rdx, qword ptr [rbp - 0x98]
	mov	qword ptr [rdx + rcx*8 + 0x10], rax
	test	rax, rax
	je	.label_2352
	mov	rsi, qword ptr [rbx + 0x10]
	shl	r13, 3
	mov	rdi, rax
	mov	rdx, r13
	call	memcpy
	mov	r9, qword ptr [rbp - 0x78]
	jmp	.label_2362
	nop	
.label_2378:
	mov	r8, qword ptr [rbp - 0xa0]
	mov	rbx, qword ptr [rbp - 0x88]
	jmp	.label_2366
.label_2333:
	mov	qword ptr [rbp - 0xb8], r13
	mov	qword ptr [rbp - 0xb0], r8
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rbx, qword ptr [rbp - 0x88]
	jmp	.label_2369
.label_2323:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
.label_2362:
	inc	r9
	mov	qword ptr [rbp - 0x78], r9
	mov	rcx, qword ptr [rbp - 0x80]
.label_2369:
	mov	qword ptr [rbp - 0x80], rcx
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax + 0x18]
	mov	rsi, qword ptr [rax + rcx*8]
	mov	rdi, rbx
	call	re_node_set_insert
	test	al, al
	je	.label_2307
	mov	rax, qword ptr [rbp - 0xb8]
	or	rax, qword ptr [rbp - 0xb0]
	or	r12, qword ptr [rbp - 0xa8]
	or	r12, rax
	mov	r11, qword ptr [rbp - 0x78]
	mov	r8, qword ptr [rbp - 0xa0]
	je	.label_2291
.label_2366:
	inc	r14
	add	rbx, 0x18
	add	r15, 0x20
	cmp	r14, r11
	jl	.label_2287
	jmp	.label_2291
.label_2336:
	xor	r14d, r14d
	jmp	.label_2291
.label_2365:
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	r10, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	r15, qword ptr [rbp - 0xf0]
	mov	rbx, r12
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_2381:
	mov	qword ptr [rbp - 0x78], r11
	mov	r12, qword ptr [r15 - 0x18]
	mov	r13, qword ptr [r15 - 0x10]
	mov	rdi, r12
	and	rdi, rsi
	mov	qword ptr [rbp - 0x88], rdi
	mov	rax, r13
	and	rax, rdx
	mov	qword ptr [rbp - 0xa0], rax
	or	rax, rdi
	mov	r11, qword ptr [r15 - 8]
	mov	rdi, r11
	and	rdi, r10
	or	rax, rdi
	mov	r9, qword ptr [r15]
	mov	r8, r9
	and	r8, rcx
	or	rax, r8
	je	.label_2317
	mov	qword ptr [rbp - 0xc8], rdi
	mov	qword ptr [rbp - 0xa8], rbx
	mov	rax, rsi
	not	rax
	and	rax, r12
	not	r12
	and	r12, rsi
	mov	qword ptr [rbp - 0x50], r12
	mov	rbx, rdx
	not	rbx
	and	rbx, r13
	mov	rsi, rbx
	or	rsi, rax
	not	r13
	and	r13, rdx
	mov	qword ptr [rbp - 0xb0], r13
	mov	qword ptr [rbp - 0x48], r13
	mov	rdx, r10
	not	rdx
	and	rdx, r11
	or	rsi, rdx
	not	r11
	and	r11, r10
	mov	qword ptr [rbp - 0x40], r11
	mov	rdi, rcx
	not	rcx
	and	rcx, r9
	not	r9
	and	r9, rdi
	mov	qword ptr [rbp - 0xb8], r9
	mov	qword ptr [rbp - 0x38], r9
	or	rsi, rcx
	mov	r13, r11
	je	.label_2322
	mov	qword ptr [rbp - 0xd0], r12
	mov	r10, qword ptr [rbp - 0x78]
	mov	rsi, r10
	shl	rsi, 5
	mov	r12, qword ptr [rbp - 0xc0]
	mov	qword ptr [r12 + rsi], rax
	mov	qword ptr [r12 + rsi + 8], rbx
	mov	qword ptr [r12 + rsi + 0x10], rdx
	mov	qword ptr [r12 + rsi + 0x18], rcx
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [r15 - 0x18], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [r15 - 0x10], rax
	mov	rax, r10
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	qword ptr [r15 - 8], rcx
	mov	qword ptr [r15], r8
	lea	rsi, [rax + rax*2]
	mov	r12, qword ptr [rbp - 0x98]
	lea	rcx, [r12 + rsi*8]
	mov	rbx, qword ptr [rbp - 0xa8]
	mov	rdi, qword ptr [rbx + 8]
	mov	qword ptr [r12 + rsi*8 + 8], rdi
	mov	rdx, qword ptr [rbx + 8]
	test	rdx, rdx
	jle	.label_2346
	mov	qword ptr [rbp - 0xc8], rdx
	mov	qword ptr [rbp - 0xa0], r13
	mov	qword ptr [rcx], rdi
	shl	rdi, 3
	mov	r13, rcx
	mov	qword ptr [rbp - 0x88], rsi
	call	malloc
	mov	rcx, qword ptr [rbp - 0x88]
	mov	qword ptr [r12 + rcx*8 + 0x10], rax
	test	rax, rax
	je	.label_2379
	mov	rsi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbp - 0xc8]
	shl	rdx, 3
	mov	rdi, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x78]
	mov	r12, qword ptr [rbp - 0xd0]
	mov	r13, qword ptr [rbp - 0xa0]
	jmp	.label_2278
	nop	dword ptr [rax + rax]
.label_2317:
	mov	rdi, rcx
	mov	r13, r10
	mov	r12, rsi
	mov	r11, qword ptr [rbp - 0x78]
	jmp	.label_2286
	nop	
.label_2322:
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rbx, qword ptr [rbp - 0xa8]
	jmp	.label_2289
.label_2346:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rcx], xmm0
	mov	qword ptr [rcx + 0x10], 0
	mov	r12, qword ptr [rbp - 0xd0]
.label_2278:
	inc	rax
	mov	qword ptr [rbp - 0x78], rax
	mov	rcx, qword ptr [rbp - 0x80]
.label_2289:
	mov	qword ptr [rbp - 0x80], rcx
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax + 0x18]
	mov	rsi, qword ptr [rax + rcx*8]
	mov	rdi, rbx
	call	re_node_set_insert
	test	al, al
	je	.label_2307
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rax, rdx
	or	rax, r12
	mov	rcx, r13
	mov	rdi, qword ptr [rbp - 0xb8]
	or	rcx, rdi
	or	rcx, rax
	mov	r11, qword ptr [rbp - 0x78]
	je	.label_2291
.label_2286:
	inc	r14
	add	rbx, 0x18
	add	r15, 0x20
	cmp	r14, r11
	mov	rcx, rdi
	mov	r10, r13
	mov	rsi, r12
	jl	.label_2381
	nop	word ptr cs:[rax + rax]
.label_2291:
	cmp	r14, r11
	mov	r12, qword ptr [rbp - 0x98]
	mov	r15, qword ptr [rbp - 0xe0]
	mov	r13, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rbp - 0x80]
	jne	.label_2300
	mov	rax, r14
	shl	rax, 5
	movaps	xmm0, xmmword ptr [rbp - 0x50]
	movaps	xmm1, xmmword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0xc0]
	movups	xmmword ptr [rdx + rax + 0x10], xmm1
	movups	xmmword ptr [rdx + rax], xmm0
	lea	rbx, [r14 + r14*2]
	mov	rax, qword ptr [r13 + 0x18]
	mov	r15, qword ptr [rax + rdi*8]
	mov	r13, r12
	mov	r12, rdi
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_1584]]
	movdqu	xmmword ptr [r13 + rbx*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r13 + rbx*8 + 0x10], rax
	mov	rcx, r13
	test	rax, rax
	je	.label_2357
	mov	qword ptr [rax], r15
	inc	r14
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	mov	r11, r14
	mov	r15, qword ptr [rbp - 0xe0]
	mov	r13, qword ptr [rbp - 0x90]
	mov	rdi, r12
	mov	r12, rcx
	nop	dword ptr [rax + rax]
.label_2300:
	inc	rdi
	cmp	rdi, qword ptr [r13 + 0x10]
	jl	.label_2360
	test	r11, r11
	jle	.label_2349
	lea	rax, [r11 + 1]
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x68], 0
	lea	rdi, [r11*8 + 8]
	mov	rbx, r11
	mov	qword ptr [rbp - 0x78], rbx
	call	malloc
	mov	qword ptr [rbp - 0x60], rax
	xor	ecx, ecx
	test	rax, rax
	mov	edx, 0xc
	cmovne	edx, ecx
	mov	dword ptr [rbp - 0x54], edx
	movabs	rcx, 0xaaaaaaaaaaaa855
	cmp	rbx, rcx
	ja	.label_2321
	test	rax, rax
	je	.label_2321
	lea	rax, [rbx*8]
	lea	rdi, [rax + rax*2]
	lea	rax, [rax + rax*2 + 0x3800]
	cmp	rax, 0xfbf
	ja	.label_2383
	mov	qword ptr [rbp - 0x90], r13
	mov	rax, rsp
	add	rdi, 0xf
	and	rdi, 0xfffffffffffffff0
	sub	rax, rdi
	mov	rsp, rax
	mov	dword ptr [rbp - 0xd0], 0
	jmp	.label_2279
.label_2352:
	mov	r13, qword ptr [rbp - 0xd0]
.label_2379:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r13], xmm0
.label_2307:
	mov	r14, qword ptr [rbp - 0x78]
	mov	r12, qword ptr [rbp - 0x98]
.label_2339:
	mov	r15, -1
	test	r14, r14
	jle	.label_2296
	mov	rbx, r12
	add	rbx, 0x10
.label_2302:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r14
	jne	.label_2302
.label_2296:
	mov	rdi, r12
	call	free
	test	r15, r15
	je	.label_2306
	xor	eax, eax
	jmp	.label_2309
.label_2306:
	mov	edi, 8
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xe8]
	mov	qword ptr [rcx], rax
	test	rax, rax
	setne	al
	jmp	.label_2309
.label_2364:
	xor	eax, eax
	jmp	.label_2309
.label_2383:
	call	malloc
	test	rax, rax
	je	.label_2321
	mov	qword ptr [rbp - 0x90], r13
	mov	cl, 1
	mov	dword ptr [rbp - 0xd0], ecx
.label_2279:
	mov	qword ptr [rbp - 0x80], rax
	lea	rax, [rax + rbx*8]
	mov	qword ptr [rbp - 0xb8], rax
	lea	rax, [rax + rbx*8]
	mov	qword ptr [rbp - 0xc8], rax
	xor	edx, edx
	xor	eax, eax
	mov	qword ptr [rbp - 0xa0], rax
	xor	eax, eax
	mov	qword ptr [rbp - 0xa8], rax
	xor	eax, eax
	mov	qword ptr [rbp - 0x88], rax
	xor	ebx, ebx
	xor	eax, eax
	mov	qword ptr [rbp - 0xd8], rax
.label_2303:
	mov	qword ptr [rbp - 0xb0], rdx
	mov	qword ptr [rbp - 0x98], r12
	mov	qword ptr [rbp - 0x68], 0
	lea	rcx, [rbx + rbx*2]
	mov	rax, qword ptr [r12 + rcx*8 + 8]
	test	rax, rax
	jle	.label_2338
	mov	rdx, qword ptr [rbp - 0x98]
	lea	r13, [rdx + rcx*8 + 8]
	lea	r12, [rdx + rcx*8 + 0x10]
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_2363:
	mov	rcx, qword ptr [r12]
	mov	rcx, qword ptr [rcx + r14*8]
	mov	rdx, qword ptr [r15 + 0x18]
	mov	rcx, qword ptr [rdx + rcx*8]
	cmp	rcx, -1
	je	.label_2350
	mov	rax, qword ptr [r15 + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	lea	rdi, [rbp - 0x70]
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x54], eax
	test	eax, eax
	jne	.label_2292
	mov	rax, qword ptr [r13]
.label_2350:
	inc	r14
	cmp	r14, rax
	jl	.label_2363
.label_2338:
	xor	ecx, ecx
	lea	rdi, [rbp - 0x54]
	mov	rsi, r15
	lea	rdx, [rbp - 0x70]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rcx + rbx*8], rax
	test	rax, rax
	jne	.label_2370
	mov	ecx, dword ptr [rbp - 0x54]
	test	ecx, ecx
	jne	.label_2292
.label_2370:
	cmp	byte ptr [rax + 0x68], 0
	js	.label_2373
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	qword ptr [rcx + rbx*8], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + rbx*8]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rcx + rbx*8], rax
	jmp	.label_2297
.label_2373:
	mov	ecx, 1
	lea	rdi, [rbp - 0x54]
	mov	rsi, r15
	lea	rdx, [rbp - 0x70]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	qword ptr [rcx + rbx*8], rax
	test	rax, rax
	jne	.label_2385
	mov	ecx, dword ptr [rbp - 0x54]
	test	ecx, ecx
	jne	.label_2292
.label_2385:
	mov	rcx, qword ptr [rbp - 0x80]
	cmp	qword ptr [rcx + rbx*8], rax
	je	.label_2282
	mov	al, 1
	cmp	dword ptr [r15 + 0xb4], 1
	jg	.label_2324
	mov	rax, qword ptr [rbp - 0xd8]
.label_2324:
	mov	qword ptr [rbp - 0xd8], rax
.label_2282:
	mov	ecx, 2
	lea	rdi, [rbp - 0x54]
	mov	rsi, r15
	lea	rdx, [rbp - 0x70]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rcx + rbx*8], rax
	test	rax, rax
	jne	.label_2297
	mov	eax, dword ptr [rbp - 0x54]
	test	eax, eax
	jne	.label_2292
.label_2297:
	mov	rax, rbx
	shl	rax, 5
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x88]
	or	rdx, qword ptr [rcx + rax]
	mov	qword ptr [rbp - 0x88], rdx
	mov	rdx, qword ptr [rbp - 0xa8]
	or	rdx, qword ptr [rcx + rax + 8]
	mov	qword ptr [rbp - 0xa8], rdx
	mov	rdx, qword ptr [rbp - 0xa0]
	or	rdx, qword ptr [rcx + rax + 0x10]
	mov	qword ptr [rbp - 0xa0], rdx
	mov	rdx, qword ptr [rbp - 0xb0]
	or	rdx, qword ptr [rcx + rax + 0x18]
	inc	rbx
	mov	rax, qword ptr [rbp - 0x78]
	cmp	rbx, rax
	mov	r12, qword ptr [rbp - 0x98]
	jl	.label_2303
	mov	r13, rdx
	mov	rax, qword ptr [rbp - 0xd8]
	and	al, 1
	jne	.label_2326
	mov	qword ptr [rbp - 0xd8], rax
	mov	edi, 8
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xe8]
	mov	qword ptr [rcx], rax
	test	rax, rax
	je	.label_2292
	mov	rcx, qword ptr [rbp - 0x88]
	test	rcx, rcx
	mov	r14, qword ptr [rbp - 0x98]
	mov	r10, r15
	mov	r11, qword ptr [rbp - 0x80]
	mov	r12, qword ptr [rbp - 0xa8]
	je	.label_2337
	lea	r8, [r14 + 0x1800]
	mov	edx, 1
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x88]
	jmp	.label_2341
.label_2347:
	mov	rsi, rbx
	lea	rbx, [rsi + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_2347
	test	qword ptr [r10 + 0xb8], rdx
	je	.label_2351
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rcx + rsi*8 + 8]
	jmp	.label_2354
.label_2351:
	mov	rcx, qword ptr [r11 + rsi*8 + 8]
.label_2354:
	mov	qword ptr [rax + r9*8], rcx
	jmp	.label_2359
.label_2341:
	mov	rbx, -1
	test	dil, 1
	mov	rcx, r8
	jne	.label_2347
.label_2359:
	add	rdx, rdx
	shr	rdi, 1
	inc	r9
	test	rdi, rdi
	jne	.label_2341
.label_2337:
	test	r12, r12
	je	.label_2361
	lea	r8, [r14 + 0x1808]
	mov	edx, 1
	mov	esi, 0x40
	jmp	.label_2367
.label_2371:
	mov	rbx, rdi
	lea	rdi, [rbx + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_2371
	test	qword ptr [r10 + 0xc0], rdx
	je	.label_2305
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	jmp	.label_2376
.label_2305:
	mov	rcx, qword ptr [r11 + rbx*8 + 8]
.label_2376:
	mov	qword ptr [rax + rsi*8], rcx
	jmp	.label_2380
.label_2367:
	mov	rdi, -1
	test	r12b, 1
	mov	rcx, r8
	jne	.label_2371
.label_2380:
	add	rdx, rdx
	shr	r12, 1
	inc	rsi
	test	r12, r12
	jne	.label_2367
.label_2361:
	mov	r12, r11
	mov	r11, qword ptr [rbp - 0xa0]
	test	r11, r11
	mov	r9, qword ptr [rbp - 0x78]
	mov	r15d, dword ptr [rbp - 0xd0]
	je	.label_2386
	lea	r8, [r14 + 0x1810]
	mov	edx, 1
	mov	esi, 0x80
	jmp	.label_2283
.label_2301:
	mov	rbx, rdi
	lea	rdi, [rbx + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_2301
	test	qword ptr [r10 + 0xc8], rdx
	je	.label_2356
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	jmp	.label_2293
.label_2356:
	mov	rcx, qword ptr [r12 + rbx*8 + 8]
.label_2293:
	mov	qword ptr [rax + rsi*8], rcx
	jmp	.label_2294
.label_2283:
	mov	rdi, -1
	test	r11b, 1
	mov	rcx, r8
	jne	.label_2301
.label_2294:
	add	rdx, rdx
	shr	r11, 1
	inc	rsi
	test	r11, r11
	jne	.label_2283
.label_2386:
	test	r13, r13
	mov	r11, r12
	mov	r12d, r15d
	je	.label_2308
	lea	r8, [r14 + 0x1818]
	mov	edx, 1
	mov	esi, 0xc0
	jmp	.label_2311
.label_2316:
	mov	rbx, rdi
	lea	rdi, [rbx + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_2316
	test	qword ptr [r10 + 0xd0], rdx
	je	.label_2384
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	jmp	.label_2320
.label_2384:
	mov	rcx, qword ptr [r11 + rbx*8 + 8]
.label_2320:
	mov	qword ptr [rax + rsi*8], rcx
	jmp	.label_2345
.label_2311:
	mov	rdi, -1
	test	r13b, 1
	mov	rcx, r8
	jne	.label_2316
.label_2345:
	add	rdx, rdx
	shr	r13, 1
	inc	rsi
	test	r13, r13
	jne	.label_2311
.label_2308:
	mov	rcx, qword ptr [rbp - 0x88]
	test	ch, 4
	je	.label_2290
	lea	rdx, [r14 + 0x1800]
	xor	ecx, ecx
.label_2284:
	test	byte ptr [rdx + 1], 4
	jne	.label_2335
	inc	rcx
	add	rdx, 0x20
	cmp	rcx, r9
	jl	.label_2284
	jmp	.label_2290
.label_2357:
	mov	r12, rcx
	lea	rax, [r12 + rbx*8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	jmp	.label_2339
.label_2321:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	rax, rbx
	jmp	.label_2342
.label_2349:
	mov	r15, r11
	jmp	.label_2296
.label_2335:
	mov	rdx, qword ptr [rbp - 0xd8]
	test	dl, dl
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rax + 0x50], rcx
	je	.label_2290
	mov	qword ptr [rax + 0x850], rcx
.label_2290:
	mov	r15, r9
	test	r12b, r12b
	je	.label_2355
	mov	rdi, r11
	call	free
.label_2355:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	rbx, r14
	add	rbx, 0x10
.label_2344:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_2344
	mov	rdi, r14
	call	free
	mov	al, 1
	jmp	.label_2309
.label_2326:
	mov	qword ptr [rbp - 0xd8], rax
	mov	edi, 8
	mov	esi, 0x200
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0x90]
	mov	qword ptr [rcx + 0x60], rax
	test	rax, rax
	je	.label_2292
	mov	rcx, qword ptr [rbp - 0x88]
	test	rcx, rcx
	mov	r14, qword ptr [rbp - 0x98]
	mov	r11, qword ptr [rbp - 0x80]
	mov	r10, qword ptr [rbp - 0xa8]
	je	.label_2375
	lea	r8, [r14 + 0x1800]
	mov	edx, 1
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x88]
	jmp	.label_2319
.label_2292:
	mov	eax, dword ptr [rbp - 0xd0]
	test	al, al
	je	.label_2277
	mov	rdi, qword ptr [rbp - 0x80]
	call	free
.label_2277:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	rax, qword ptr [rbp - 0x78]
	test	rax, rax
	mov	r12, qword ptr [rbp - 0x98]
	jle	.label_2285
.label_2342:
	mov	rbx, r12
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_2295:
	mov	rdi, qword ptr [rbx]
	mov	r14, rax
	call	free
	mov	rax, r14
	add	rbx, 0x18
	dec	rax
	jne	.label_2295
.label_2285:
	mov	rdi, r12
	call	free
	xor	eax, eax
.label_2309:
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2304:
	mov	rsi, rbx
	lea	rbx, [rsi + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_2304
	mov	rcx, qword ptr [r11 + rsi*8 + 8]
	mov	qword ptr [rax + r9*8], rcx
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rcx + rsi*8 + 8]
	mov	qword ptr [rax + r9*8 + 0x800], rcx
	jmp	.label_2310
.label_2319:
	mov	rbx, -1
	test	dil, 1
	mov	rcx, r8
	jne	.label_2304
.label_2310:
	add	rdx, rdx
	shr	rdi, 1
	inc	r9
	test	rdi, rdi
	jne	.label_2319
.label_2375:
	test	r10, r10
	je	.label_2325
	lea	r8, [r14 + 0x1808]
	mov	edx, 1
	mov	esi, 0x40
	jmp	.label_2332
.label_2327:
	mov	rcx, rbx
	lea	rbx, [rcx + 1]
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi + 0x20]
	je	.label_2327
	mov	rdi, qword ptr [r11 + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8], rdi
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	jmp	.label_2331
.label_2332:
	mov	rbx, -1
	test	r10b, 1
	mov	rdi, r8
	jne	.label_2327
.label_2331:
	add	rdx, rdx
	shr	r10, 1
	inc	rsi
	test	r10, r10
	jne	.label_2332
.label_2325:
	mov	rcx, qword ptr [rbp - 0xa0]
	test	rcx, rcx
	mov	r9, qword ptr [rbp - 0x78]
	mov	r12d, dword ptr [rbp - 0xd0]
	je	.label_2340
	lea	r8, [r14 + 0x1810]
	mov	edx, 1
	mov	esi, 0x80
	jmp	.label_2281
.label_2330:
	mov	rcx, rbx
	lea	rbx, [rcx + 1]
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi + 0x20]
	je	.label_2330
	mov	rdi, qword ptr [r11 + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8], rdi
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	jmp	.label_2353
.label_2281:
	mov	rbx, -1
	test	cl, 1
	mov	r10, rcx
	mov	rdi, r8
	jne	.label_2330
.label_2353:
	add	rdx, rdx
	mov	rcx, r10
	shr	rcx, 1
	inc	rsi
	test	rcx, rcx
	jne	.label_2281
.label_2340:
	test	r13, r13
	je	.label_2308
	lea	r8, [r14 + 0x1818]
	mov	edx, 1
	mov	esi, 0xc0
	jmp	.label_2280
.label_2382:
	mov	rcx, rbx
	lea	rbx, [rcx + 1]
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi + 0x20]
	je	.label_2382
	mov	rdi, qword ptr [r11 + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8], rdi
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	jmp	.label_2348
.label_2280:
	mov	rbx, -1
	test	r13b, 1
	mov	rdi, r8
	jne	.label_2382
.label_2348:
	add	rdx, rdx
	shr	r13, 1
	inc	rsi
	test	r13, r13
	je	.label_2308
	jmp	.label_2280
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x418610

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
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1584]]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x50], rax
	test	rax, rax
	je	.label_2398
	mov	qword ptr [rax], rbx
	lea	rcx, [rsp + 0x40]
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r13
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2391
	lea	rax, [r15 + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 0xc], 0
	nop	word ptr cs:[rax + rax]
.label_2395:
	mov	rdx, r13
	test	rdx, rdx
	jle	.label_2404
	mov	rdi, qword ptr [r15]
	cmp	qword ptr [rdi + rdx*8], 0
	je	.label_2390
	xor	eax, eax
	jmp	.label_2394
	nop	word ptr [rax + rax]
.label_2390:
	mov	eax, dword ptr [rsp + 0xc]
	inc	eax
.label_2394:
	cmp	eax, dword ptr [r14 + 0xe0]
	jg	.label_2396
	mov	dword ptr [rsp + 0xc], eax
	mov	qword ptr [rsp + 0x48], 0
	lea	r13, [rdx - 1]
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rax, qword ptr [rax + rdx*8 - 8]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x18], rdx
	test	rax, rax
	je	.label_2399
	cmp	qword ptr [rax + 0x28], 0
	jle	.label_2399
	mov	rcx, qword ptr [r14 + 0x98]
	mov	qword ptr [rsp + 0x30], rcx
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_2406:
	mov	rax, qword ptr [rax + 0x30]
	mov	r12, qword ptr [rax + rbx*8]
	mov	qword ptr [rsp + 0x38], r12
	mov	rax, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	shl	r12, 4
	test	byte ptr [rax + r12 + 0xa], 0x10
	je	.label_2387
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
	jle	.label_2402
	movsxd	rcx, eax
	add	rcx, r15
	cmp	rcx, qword ptr [rsp + 0x20]
	jle	.label_2405
	mov	rcx, r14
	mov	r14, r13
	mov	r13, r15
	mov	r15, rcx
	jmp	.label_2388
.label_2402:
	mov	rcx, r14
	mov	r14, r13
	mov	r13, r15
	mov	r15, rcx
	jne	.label_2388
	jmp	.label_2387
.label_2405:
	mov	rsi, r14
	mov	rdx, qword ptr [rsi]
	mov	rdx, qword ptr [rdx + rcx*8]
	test	rdx, rdx
	mov	r14, r13
	mov	r13, r15
	mov	r15, rsi
	je	.label_2387
	mov	rsi, qword ptr [rdx + 0x10]
	test	rsi, rsi
	jle	.label_2387
	mov	rcx, qword ptr [rbp + 0x18]
	mov	rdi, qword ptr [rsp + 0x38]
	mov	r8, qword ptr [rcx + rdi*8]
	dec	rsi
	mov	rdx, qword ptr [rdx + 0x18]
	mov	edi, 0
	je	.label_2397
	nop	word ptr cs:[rax + rax]
.label_2403:
	lea	rbp, [rdi + rsi]
	shr	rbp, 1
	cmp	qword ptr [rdx + rbp*8], r8
	lea	rcx, [rbp + 1]
	cmovl	rdi, rcx
	cmovge	rsi, rbp
	cmp	rdi, rsi
	jb	.label_2403
.label_2397:
	test	eax, eax
	je	.label_2387
	cmp	rdi, -1
	je	.label_2387
	cmp	qword ptr [rdx + rdi*8], r8
	je	.label_2388
.label_2387:
	mov	rax, qword ptr [rsp + 0x30]
	add	r12, qword ptr [rax]
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, r13
	call	check_node_accept
	test	al, al
	je	.label_2389
	mov	rax, qword ptr [r15]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rax + rcx*8]
	test	rdx, rdx
	je	.label_2389
	mov	rax, qword ptr [rdx + 0x10]
	test	rax, rax
	jle	.label_2389
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rcx + rsi*8]
	dec	rax
	mov	rdx, qword ptr [rdx + 0x18]
	mov	esi, 0
	je	.label_2401
.label_2393:
	lea	rdi, [rsi + rax]
	shr	rdi, 1
	cmp	qword ptr [rdx + rdi*8], rcx
	lea	rbp, [rdi + 1]
	cmovl	rsi, rbp
	cmovge	rax, rdi
	cmp	rsi, rax
	jb	.label_2393
.label_2401:
	cmp	rsi, -1
	je	.label_2389
	mov	eax, 1
	cmp	qword ptr [rdx + rsi*8], rcx
	jne	.label_2389
	nop	dword ptr [rax]
.label_2388:
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_2392
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
	jne	.label_2389
.label_2392:
	lea	rdi, [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x38]
	call	re_node_set_insert
	mov	ebp, 0xc
	test	al, al
	je	.label_2391
.label_2389:
	inc	rbx
	mov	rax, qword ptr [rsp + 0x28]
	cmp	rbx, qword ptr [rax + 0x28]
	jl	.label_2406
.label_2399:
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r13
	lea	rcx, [rsp + 0x40]
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	je	.label_2395
	jmp	.label_2391
.label_2404:
	xor	ebp, ebp
	jmp	.label_2391
.label_2396:
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
.label_2391:
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
.label_2400:
	mov	eax, ebp
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2398:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	ebp, 0xc
	jmp	.label_2400
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x418960

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
	je	.label_2438
	mov	qword ptr [rsp + 0x50], rdx
	test	rbx, rbx
	je	.label_2457
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
	jne	.label_2463
	mov	r15, r14
	add	r15, 0x38
	cmp	qword ptr [r14 + 0x38], 0
	jne	.label_2440
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
	je	.label_2463
	cmp	qword ptr [rbx + 8], 0
	jle	.label_2440
	mov	r14, rbp
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_2464:
	mov	rax, qword ptr [rsp + 0x48]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r15
	call	re_node_set_merge
	test	eax, eax
	jne	.label_2443
	inc	rbp
	cmp	rbp, qword ptr [rbx + 8]
	jl	.label_2464
	mov	dword ptr [rsp + 0x70], 0
	mov	rbp, r14
.label_2440:
	mov	rdi, rbx
	mov	r14, rbx
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rdx, r15
	call	re_node_set_add_intersect
	mov	r12d, eax
	mov	dword ptr [rsp + 0x6c], r12d
	test	r12d, r12d
	mov	rbx, qword ptr [rsp + 0x38]
	jne	.label_2419
	mov	rax, qword ptr [rbp + 0x28]
	test	rax, rax
	mov	r11, r14
	mov	r12, qword ptr [rsp + 0x48]
	je	.label_2457
	mov	qword ptr [rsp + 0x30], r13
	mov	r10, qword ptr [rsp + 0x50]
	jle	.label_2462
	mov	rax, qword ptr [rsp + 0x30]
	mov	r13, qword ptr [rax + 0xd8]
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_2449:
	mov	rax, qword ptr [rbp + 0x30]
	mov	rax, qword ptr [rax + r15*8]
	lea	rax, [rax + rax*4]
	cmp	qword ptr [r13 + rax*8 + 0x10], r10
	jge	.label_2410
	cmp	qword ptr [r13 + rax*8 + 8], r10
	jl	.label_2410
	mov	rdx, qword ptr [r13 + rax*8]
	mov	rcx, qword ptr [r12]
	shl	rdx, 4
	mov	r8, qword ptr [rcx + rdx]
	mov	qword ptr [rsp + 0x40], r8
	cmp	qword ptr [r13 + rax*8 + 0x18], r10
	mov	rax, qword ptr [r11 + 8]
	jne	.label_2415
	test	rax, rax
	jle	.label_2410
	mov	qword ptr [rsp + 0x48], r12
	mov	rdx, qword ptr [r11 + 0x10]
	mov	r14, -1
	mov	rsi, -1
	nop	word ptr [rax + rax]
.label_2451:
	mov	rbp, qword ptr [rdx]
	mov	rdi, rbp
	shl	rdi, 4
	movzx	ebx, byte ptr [rcx + rdi + 8]
	cmp	ebx, 9
	je	.label_2452
	cmp	ebx, 8
	jne	.label_2412
	cmp	r8, qword ptr [rcx + rdi]
	je	.label_2446
	mov	rbp, rsi
.label_2446:
	mov	rsi, rbp
	jmp	.label_2412
	nop	word ptr [rax + rax]
.label_2452:
	cmp	r8, qword ptr [rcx + rdi]
	je	.label_2439
	mov	rbp, r14
.label_2439:
	mov	r14, rbp
.label_2412:
	add	rdx, 8
	dec	rax
	jne	.label_2451
	test	rsi, rsi
	mov	rbp, r11
	js	.label_2454
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rbx, r10
	call	sub_epsilon_src_nodes
	mov	r10, rbx
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2422
.label_2454:
	test	r14, r14
	mov	r11, rbp
	mov	r12, qword ptr [rsp + 0x48]
	js	.label_2410
	mov	r8, qword ptr [r11 + 8]
	test	r8, r8
	mov	ebp, 0
	jle	.label_2410
	nop	word ptr cs:[rax + rax]
.label_2468:
	mov	rax, qword ptr [r11 + 0x10]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [r12 + 0x38]
	lea	r9, [rsi + rsi*2]
	mov	rdx, qword ptr [rax + r9*8 + 8]
	test	rdx, rdx
	jle	.label_2407
	dec	rdx
	mov	rdi, qword ptr [rax + r9*8 + 0x10]
	mov	eax, 0
	je	.label_2420
	nop	word ptr [rax + rax]
.label_2425:
	lea	rbx, [rax + rdx]
	shr	rbx, 1
	cmp	qword ptr [rdi + rbx*8], r14
	lea	rcx, [rbx + 1]
	cmovl	rax, rcx
	cmovge	rdx, rbx
	cmp	rax, rdx
	jb	.label_2425
.label_2420:
	cmp	rax, -1
	je	.label_2407
	cmp	qword ptr [rdi + rax*8], r14
	je	.label_2435
.label_2407:
	mov	rax, qword ptr [r12 + 0x30]
	mov	rdx, qword ptr [rax + r9*8 + 8]
	test	rdx, rdx
	jle	.label_2436
	dec	rdx
	mov	rcx, qword ptr [rax + r9*8 + 0x10]
	mov	eax, 0
	je	.label_2448
	nop	word ptr [rax + rax]
.label_2447:
	lea	rdi, [rax + rdx]
	shr	rdi, 1
	cmp	qword ptr [rcx + rdi*8], r14
	lea	rbx, [rdi + 1]
	cmovl	rax, rbx
	cmovge	rdx, rdi
	cmp	rax, rdx
	jb	.label_2447
.label_2448:
	cmp	rax, -1
	je	.label_2436
	cmp	qword ptr [rcx + rax*8], r14
	je	.label_2435
.label_2436:
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
	jne	.label_2422
	dec	rbp
	mov	r8, qword ptr [rbx + 8]
	mov	r11, rbx
	mov	r12, r13
	mov	r13, r15
	mov	r15, qword ptr [rsp + 0x48]
.label_2435:
	inc	rbp
	cmp	rbp, r8
	jl	.label_2468
	jmp	.label_2410
.label_2415:
	test	rax, rax
	mov	ebp, 0
	jg	.label_2472
	jmp	.label_2410
	nop	dword ptr [rax]
.label_2470:
	mov	rcx, qword ptr [r12]
.label_2472:
	mov	rdx, qword ptr [r11 + 0x10]
	mov	rsi, qword ptr [rdx + rbp*8]
	mov	rdx, rsi
	shl	rdx, 4
	mov	edi, dword ptr [rcx + rdx + 8]
	mov	ebx, 0xfe
	and	edi, ebx
	or	edi, 1
	cmp	edi, 9
	jne	.label_2416
	cmp	r8, qword ptr [rcx + rdx]
	jne	.label_2416
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
	jne	.label_2422
	mov	rax, qword ptr [rbx + 8]
	mov	r11, rbx
	mov	r12, r13
	mov	r13, r15
	mov	r15, r14
	mov	r8, qword ptr [rsp + 0x40]
.label_2416:
	inc	rbp
	cmp	rbp, rax
	jl	.label_2470
	nop	word ptr [rax + rax]
.label_2410:
	inc	r15
	mov	rbp, qword ptr [rsp + 0x58]
	cmp	r15, qword ptr [rbp + 0x28]
	jl	.label_2449
.label_2462:
	mov	qword ptr [rsp + 0x50], r10
	mov	dword ptr [rsp + 0x6c], 0
	mov	r13, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x38]
.label_2457:
	lea	rdi, [rsp + 0x6c]
	mov	rsi, r12
	mov	rdx, r11
	call	re_acquire_state
	mov	rcx, qword ptr [rbp]
	mov	rdx, qword ptr [rsp + 0x50]
	mov	qword ptr [rcx + rdx*8], rax
	mov	r12d, dword ptr [rsp + 0x6c]
	test	r12d, r12d
	je	.label_2461
	jmp	.label_2419
.label_2438:
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rax + rdx*8], 0
.label_2461:
	test	rbx, rbx
	je	.label_2424
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + rdx*8]
	test	byte ptr [rax + 0x68], 0x40
	je	.label_2424
	mov	rbx, rbp
	mov	r11, qword ptr [r13 + 0x98]
	mov	rbp, qword ptr [r13 + 0xc8]
	xor	r15d, r15d
	test	rbp, rbp
	jle	.label_2413
	mov	rcx, qword ptr [r13 + 0xd8]
	xor	r15d, r15d
	mov	rax, rbp
	nop	word ptr cs:[rax + rax]
.label_2469:
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
	jl	.label_2469
.label_2413:
	cmp	r15, rbp
	jge	.label_2414
	cmp	r15, -1
	je	.label_2414
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rcx, [r15 + r15*4]
	mov	qword ptr [rsp + 0x20], rcx
	cmp	qword ptr [rax + rcx*8 + 8], rdx
	jne	.label_2414
	mov	qword ptr [rsp + 0x70], 0
	mov	rax, qword ptr [rsp + 0x60]
	cmp	qword ptr [rax + 8], 0
	jle	.label_2450
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
.label_2459:
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
	jne	.label_2466
	cmp	eax, 4
	mov	rcx, rdx
	jne	.label_2411
	cmp	qword ptr [r10 + 0x18], rcx
	jne	.label_2417
	jmp	.label_2411
.label_2466:
	cmp	eax, 4
	mov	rcx, rdx
	jne	.label_2411
.label_2417:
	mov	rbx, qword ptr [rdi + 0xd8]
	add	rbx, qword ptr [rsp + 0x20]
	mov	r14, r15
	nop	
.label_2455:
	cmp	qword ptr [rbx], rbp
	jne	.label_2430
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x18]
	mov	r9, rdx
	sub	r9, rax
	add	r9, rcx
	cmp	rdx, rax
	jne	.label_2432
	mov	rax, qword ptr [r11 + 0x28]
	lea	rdx, [rbp + rbp*2]
	mov	rsi, qword ptr [rax + rdx*8 + 0x10]
	jmp	.label_2437
	nop	
.label_2432:
	lea	rsi, [rbp*8]
	add	rsi, qword ptr [r11 + 0x18]
.label_2437:
	cmp	r9, qword ptr [r10 + 0x18]
	jg	.label_2430
	mov	rax, qword ptr [r10]
	mov	rdx, qword ptr [rax + r9*8]
	test	rdx, rdx
	je	.label_2430
	mov	rax, qword ptr [rdx + 0x10]
	test	rax, rax
	jle	.label_2430
	mov	r12, r10
	mov	r8, qword ptr [rsi]
	dec	rax
	mov	r10, qword ptr [rdx + 0x18]
	mov	edx, 0
	je	.label_2453
	nop	word ptr [rax + rax]
.label_2458:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [r10 + rsi*8], r8
	lea	rbp, [rsi + 1]
	cmovl	rdx, rbp
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_2458
.label_2453:
	cmp	rdx, -1
	je	.label_2408
	cmp	qword ptr [r10 + rdx*8], r8
	jne	.label_2408
	mov	qword ptr [rsp + 0x40], r11
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x48]
	call	check_dst_limits
	test	al, al
	mov	r10, r12
	je	.label_2471
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x40]
	jmp	.label_2409
.label_2408:
	mov	r10, r12
	jmp	.label_2409
.label_2471:
	cmp	qword ptr [rsp + 0x38], 0
	jne	.label_2421
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
	jle	.label_2423
	mov	rbp, r10
	mov	qword ptr [rsp + 0x90], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [rsp + 0xa0], rax
	test	rax, rax
	je	.label_2460
	mov	rsi, qword ptr [rbp + 0x30]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	mov	r10, rbp
	jmp	.label_2421
.label_2423:
	lea	rax, [rsp + 0x90]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
.label_2421:
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
	je	.label_2429
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
	jne	.label_2429
	mov	rdi, qword ptr [r10 + 8]
	test	rdi, rdi
	mov	rcx, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x38], rbx
	je	.label_2426
	mov	r13, -1
	test	rcx, rcx
	lea	rbp, [rsp + 0xa8]
	js	.label_2434
	nop	dword ptr [rax]
.label_2467:
	mov	rsi, qword ptr [rdi + r13*8 + 8]
	mov	rdx, qword ptr [rbx + r13*8 + 8]
	test	rsi, rsi
	je	.label_2456
	test	rdx, rdx
	je	.label_2444
	mov	rbx, rdi
	add	rsi, 8
	add	rdx, 8
	mov	rdi, rbp
	call	re_node_set_init_union
	mov	r12d, eax
	mov	dword ptr [rsp + 0xc4], r12d
	test	r12d, r12d
	jne	.label_2429
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
	je	.label_2444
	jmp	.label_2429
.label_2456:
	mov	qword ptr [rdi + r13*8 + 8], rdx
.label_2444:
	inc	r13
	cmp	r13, rcx
	jl	.label_2467
.label_2434:
	mov	r11, qword ptr [rsp + 0x40]
	mov	r13, qword ptr [rsp + 0x28]
.label_2426:
	mov	qword ptr [rsp + 0x38], rbx
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + rcx*8], rdx
	mov	r12, qword ptr [rsp + 0x98]
	test	r12, r12
	jle	.label_2428
	mov	rbp, r12
	dec	rbp
	mov	rax, qword ptr [rsp + 0xa0]
	mov	rdi, rbp
	mov	edx, 0
	je	.label_2445
	nop	dword ptr [rax + rax]
.label_2427:
	lea	rbx, [rdx + rdi]
	shr	rbx, 1
	cmp	qword ptr [rax + rbx*8], r14
	lea	rsi, [rbx + 1]
	cmovl	rdx, rsi
	cmovge	rdi, rbx
	cmp	rdx, rdi
	jb	.label_2427
.label_2445:
	cmp	qword ptr [rax + rdx*8], r14
	mov	rdi, rdx
	je	.label_2441
	mov	rdi, -1
.label_2441:
	test	rdi, rdi
	js	.label_2428
	cmp	r12, rdi
	jle	.label_2428
	mov	qword ptr [rsp + 0x98], rbp
	cmp	rbp, rdi
	jle	.label_2428
	dec	r12
	lea	rdi, [rdx + 1]
	cmp	r12, rdi
	mov	rbx, rdi
	cmovge	rbx, r12
	sub	rbx, rdx
	cmp	rbx, 4
	jb	.label_2442
	mov	r8, rbx
	and	r8, 0xfffffffffffffffc
	mov	r9, rbx
	and	r9, 0xfffffffffffffffc
	je	.label_2442
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
	jb	.label_2431
	movups	xmm0, xmmword ptr [rax + rdx*8 + 8]
	movups	xmm1, xmmword ptr [rax + rdx*8 + 0x18]
	movups	xmmword ptr [rax + rdx*8], xmm0
	movups	xmmword ptr [rax + rdx*8 + 0x10], xmm1
	mov	r10d, 4
.label_2431:
	test	r11, r11
	je	.label_2418
	cmp	r12, rdi
	cmovge	rdi, r12
	sub	rdi, rdx
	and	rdi, 0xfffffffffffffffc
	sub	rdi, r10
	add	r10, rdx
	lea	rsi, [rax + r10*8 + 0x38]
.label_2433:
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
	jne	.label_2433
.label_2418:
	cmp	rbx, r9
	mov	r11, qword ptr [rsp + 0x40]
	mov	r10, qword ptr [rsp + 0x58]
	je	.label_2428
	add	rdx, r8
	nop	word ptr cs:[rax + rax]
.label_2442:
	mov	rsi, qword ptr [rax + rdx*8 + 8]
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	cmp	rdx, rbp
	jl	.label_2442
.label_2428:
	lea	rbx, [r14 + r14*4]
	shl	rbx, 3
	mov	rdi, qword ptr [rsp + 0x30]
	add	rbx, qword ptr [rdi + 0xd8]
.label_2409:
	mov	rbp, qword ptr [rsp + 0x48]
	nop	word ptr [rax + rax]
.label_2430:
	inc	r14
	cmp	byte ptr [rbx + 0x20], 0
	lea	rbx, [rbx + 0x28]
	jne	.label_2455
.label_2411:
	mov	rdx, rcx
	inc	r13
	xor	r12d, r12d
	mov	rax, qword ptr [rsp + 0x60]
	cmp	r13, qword ptr [rax + 8]
	jl	.label_2459
.label_2429:
	cmp	qword ptr [rsp + 0x70], 0
	je	.label_2465
	mov	rdi, qword ptr [rsp + 0xa0]
	call	free
.label_2465:
	mov	dword ptr [rsp + 0x6c], r12d
	test	r12d, r12d
	je	.label_2424
	jmp	.label_2419
.label_2414:
	mov	dword ptr [rsp + 0x6c], 0
.label_2424:
	xor	r12d, r12d
.label_2419:
	mov	eax, r12d
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2422:
	mov	dword ptr [rsp + 0x6c], r12d
	jmp	.label_2419
.label_2443:
	mov	dword ptr [rsp + 0x70], eax
.label_2463:
	mov	dword ptr [rsp + 0x6c], r12d
	jmp	.label_2419
.label_2450:
	mov	dword ptr [rsp + 0x6c], 0
	jmp	.label_2424
.label_2460:
	xorps	xmm0, xmm0
	lea	rax, [rsp + 0x90]
	movups	xmmword ptr [rax], xmm0
	mov	r12d, 0xc
	jmp	.label_2429
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x419450

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
	je	.label_2478
	mov	r10, qword ptr [r14 + 8]
	test	r10, r10
	je	.label_2478
	lea	rax, [r10 + rdx]
	mov	rbx, qword ptr [r12]
	mov	rsi, qword ptr [r12 + 8]
	lea	rcx, [rsi + rax]
	cmp	rcx, rbx
	jle	.label_2491
	add	rbx, rax
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [rbx*8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2478
	lea	r8, [r12 + 0x10]
	mov	qword ptr [r12 + 0x10], rcx
	mov	qword ptr [r12], rbx
	mov	rsi, qword ptr [r12 + 8]
	mov	rdx, qword ptr [r15 + 8]
	mov	r10, qword ptr [r14 + 8]
	jmp	.label_2489
.label_2491:
	lea	r8, [r12 + 0x10]
.label_2489:
	lea	r9, [rdx + rsi]
	add	r9, r10
	dec	rsi
.label_2487:
	dec	rdx
	mov	rbx, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r14 + 0x10]
	mov	rdi, r10
.label_2486:
	lea	r10, [rdi - 1]
	mov	rax, qword ptr [rcx + rdi*8 - 8]
	nop	dword ptr [rax]
.label_2475:
	cmp	qword ptr [rbx + rdx*8], rax
	je	.label_2473
	jl	.label_2474
	test	rdx, rdx
	lea	rdx, [rdx - 1]
	jg	.label_2475
	jmp	.label_2479
	nop	word ptr cs:[rax + rax]
.label_2474:
	cmp	rdi, 2
	mov	rdi, r10
	jge	.label_2486
	jmp	.label_2479
	nop	dword ptr [rax + rax]
.label_2473:
	mov	rbx, qword ptr [r8]
	test	rsi, rsi
	js	.label_2480
	nop	dword ptr [rax + rax]
.label_2476:
	mov	rcx, qword ptr [rbx + rsi*8]
	cmp	rcx, rax
	jle	.label_2481
	test	rsi, rsi
	lea	rsi, [rsi - 1]
	jg	.label_2476
	jmp	.label_2480
.label_2481:
	test	rsi, rsi
	js	.label_2480
	cmp	rcx, rax
	je	.label_2482
	nop	
.label_2480:
	mov	qword ptr [rbx + r9*8 - 8], rax
	dec	r9
.label_2482:
	test	rdx, rdx
	jle	.label_2479
	cmp	rdi, 2
	jge	.label_2487
.label_2479:
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
	jle	.label_2485
	test	rax, rax
	js	.label_2485
	add	r11, rdx
	add	r11, rcx
	dec	rcx
	sub	r11, r9
	xor	edx, edx
.label_2490:
	mov	rdi, qword ptr [r8]
	lea	rax, [rdi + r11*8]
	nop	
.label_2477:
	mov	rsi, qword ptr [rdi + r14*8]
	mov	rbx, qword ptr [rdi + rcx*8]
	cmp	rsi, rbx
	jg	.label_2484
	mov	qword ptr [rax + rcx*8], rbx
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_2477
	jmp	.label_2483
.label_2484:
	dec	r14
	dec	r11
	lea	rax, [r10 + rcx]
	dec	r10
	mov	qword ptr [rdi + rax*8], rsi
	jne	.label_2490
	jmp	.label_2488
.label_2485:
	mov	rdi, qword ptr [r8]
.label_2483:
	mov	rdx, r10
.label_2488:
	lea	rsi, [rdi + r9*8]
	shl	rdx, 3
	call	memcpy
	xor	eax, eax
.label_2478:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x419620

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
	jle	.label_2500
	lea	rax, [rcx + rdx*8 + 8]
	mov	qword ptr [rsp + 0x18], rax
	lea	r14, [rcx + rdx*8 + 0x10]
	mov	qword ptr [rsp], rdx
	mov	qword ptr [rsp + 8], rcx
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_2501:
	mov	r11, qword ptr [r14]
	mov	rcx, qword ptr [r11 + r13*8]
	cmp	rcx, r15
	je	.label_2492
	mov	rdx, qword ptr [rdi]
	mov	rax, rcx
	shl	rax, 4
	test	byte ptr [rdx + rax + 8], 8
	je	.label_2492
	mov	rbp, qword ptr [rdi + 0x28]
	lea	r8, [rcx + rcx*2]
	mov	rcx, qword ptr [rbp + r8*8 + 0x10]
	mov	rsi, qword ptr [rcx]
	mov	r10, -1
	cmp	qword ptr [rbp + r8*8 + 8], 2
	jl	.label_2502
	mov	r10, qword ptr [rcx + 8]
.label_2502:
	test	r9, r9
	jle	.label_2509
	mov	rcx, r9
	dec	rcx
	mov	ebp, 0
	je	.label_2510
	nop	word ptr [rax + rax]
.label_2519:
	lea	rbx, [rbp + rcx]
	shr	rbx, 1
	cmp	qword ptr [r11 + rbx*8], rsi
	lea	rax, [rbx + 1]
	cmovl	rbp, rax
	cmovge	rcx, rbx
	cmp	rbp, rcx
	jb	.label_2519
.label_2510:
	cmp	rbp, -1
	je	.label_2509
	cmp	qword ptr [r11 + rbp*8], rsi
	je	.label_2494
.label_2509:
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	jle	.label_2494
	dec	rbp
	mov	rbx, qword ptr [r12 + 0x10]
	mov	ecx, 0
	je	.label_2497
	nop	word ptr cs:[rax + rax]
.label_2503:
	lea	rax, [rcx + rbp]
	shr	rax, 1
	cmp	qword ptr [rbx + rax*8], rsi
	lea	rdx, [rax + 1]
	cmovl	rcx, rdx
	cmovge	rbp, rax
	cmp	rcx, rbp
	jb	.label_2503
.label_2497:
	cmp	rcx, -1
	je	.label_2494
	cmp	qword ptr [rbx + rcx*8], rsi
	je	.label_2513
.label_2494:
	test	r10, r10
	jle	.label_2492
	test	r9, r9
	jle	.label_2499
	mov	rbp, r9
	dec	rbp
	mov	ecx, 0
	je	.label_2515
	nop	word ptr [rax + rax]
.label_2493:
	lea	rax, [rcx + rbp]
	shr	rax, 1
	cmp	qword ptr [r11 + rax*8], r10
	lea	rdx, [rax + 1]
	cmovl	rcx, rdx
	cmovge	rbp, rax
	cmp	rcx, rbp
	jb	.label_2493
.label_2515:
	cmp	rcx, -1
	je	.label_2499
	cmp	qword ptr [r11 + rcx*8], r10
	je	.label_2492
.label_2499:
	mov	rsi, qword ptr [r12 + 8]
	test	rsi, rsi
	jle	.label_2492
	dec	rsi
	mov	rbp, qword ptr [r12 + 0x10]
	mov	ecx, 0
	je	.label_2504
	nop	word ptr cs:[rax + rax]
.label_2511:
	lea	rax, [rcx + rsi]
	shr	rax, 1
	cmp	qword ptr [rbp + rax*8], r10
	lea	rdx, [rax + 1]
	cmovl	rcx, rdx
	cmovge	rsi, rax
	cmp	rcx, rsi
	jb	.label_2511
.label_2504:
	cmp	rcx, -1
	je	.label_2492
	cmp	qword ptr [rbp + rcx*8], r10
	jne	.label_2492
.label_2513:
	mov	rax, qword ptr [rdi + 0x38]
	mov	rbx, rdi
	lea	rdx, [rax + r8*8]
	lea	rdi, [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x10]
	call	re_node_set_add_intersect
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2498
	mov	rax, qword ptr [rsp + 0x18]
	mov	r9, qword ptr [rax]
	mov	rdi, rbx
	nop	dword ptr [rax]
.label_2492:
	inc	r13
	cmp	r13, r9
	jl	.label_2501
	test	r9, r9
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	jle	.label_2500
	lea	r8, [rsp + 0x30]
	mov	r9, qword ptr [rax + rcx*8 + 0x10]
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x30]
	lea	r11, [r10 - 1]
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_2506:
	test	r10, r10
	mov	rax, qword ptr [r9 + r13*8]
	jle	.label_2516
	test	r11, r11
	mov	rdx, r11
	mov	ecx, 0
	je	.label_2517
	nop	word ptr cs:[rax + rax]
.label_2514:
	lea	rdi, [rcx + rdx]
	shr	rdi, 1
	cmp	qword ptr [rsi + rdi*8], rax
	lea	rbx, [rdi + 1]
	cmovl	rcx, rbx
	cmovge	rdx, rdi
	cmp	rcx, rdx
	jb	.label_2514
.label_2517:
	cmp	rcx, -1
	je	.label_2516
	cmp	qword ptr [rsi + rcx*8], rax
	je	.label_2495
.label_2516:
	mov	r14, qword ptr [r12 + 8]
	test	r14, r14
	jle	.label_2495
	mov	r15, r14
	dec	r15
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rdi, r15
	mov	edx, 0
	je	.label_2508
	nop	dword ptr [rax + rax]
.label_2507:
	lea	rbx, [rdx + rdi]
	shr	rbx, 1
	cmp	qword ptr [rcx + rbx*8], rax
	lea	rbp, [rbx + 1]
	cmovl	rdx, rbp
	cmovge	rdi, rbx
	cmp	rdx, rdi
	jb	.label_2507
.label_2508:
	cmp	qword ptr [rcx + rdx*8], rax
	mov	rax, rdx
	je	.label_2518
	mov	rax, -1
.label_2518:
	test	rax, rax
	js	.label_2495
	cmp	r14, rax
	jle	.label_2495
	mov	qword ptr [r12 + 8], r15
	cmp	r15, rax
	jle	.label_2495
.label_2496:
	mov	rax, qword ptr [rcx + rdx*8 + 8]
	mov	qword ptr [rcx + rdx*8], rax
	inc	rdx
	cmp	rdx, qword ptr [r12 + 8]
	jl	.label_2496
	nop	word ptr cs:[rax + rax]
.label_2495:
	inc	r13
	mov	rax, qword ptr [rsp + 0x18]
	cmp	r13, qword ptr [rax]
	jl	.label_2506
	jmp	.label_2512
.label_2500:
	lea	r8, [rsp + 0x30]
.label_2512:
	mov	rdi, qword ptr [r8]
	call	free
	xor	ebp, ebp
.label_2505:
	mov	eax, ebp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2498:
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	jmp	.label_2505
	nop	
	.section	.text
	.align	16
	#Procedure 0x419980

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
	mov	r14, r9
	mov	qword ptr [rsp + 0x30], r14
	mov	qword ptr [rsp + 0x28], r8
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x18], rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rsi, rcx
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, rbp
	mov	rsi, r14
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 8], rax
	cmp	qword ptr [rbx + 8], 0
	jle	.label_2522
	mov	r14, qword ptr [rbp + 0x98]
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_2521:
	mov	rax, qword ptr [rbp + 0xd8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rcx + r12*8]
	lea	rcx, [rsi + rsi*4]
	mov	rax, qword ptr [rax + rcx*8]
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	mov	r15, qword ptr [rcx + rax]
	mov	rdi, rbp
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 0x10]
	call	check_dst_limits_calc_pos
	mov	r13d, eax
	mov	rax, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rax + r12*8]
	mov	rdi, rbp
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r8, qword ptr [rsp + 0x30]
	mov	r9, qword ptr [rsp + 8]
	call	check_dst_limits_calc_pos
	cmp	eax, r13d
	mov	al, 1
	jne	.label_2520
	inc	r12
	cmp	r12, qword ptr [rbx + 8]
	jl	.label_2521
	xor	eax, eax
	jmp	.label_2520
.label_2522:
	xor	eax, eax
.label_2520:
	add	rsp, 0x38
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
	#Procedure 0x419a70

	.globl check_dst_limits_calc_pos
	.type check_dst_limits_calc_pos, @function
check_dst_limits_calc_pos:
	mov	r10, qword ptr [rdi + 0xd8]
	lea	rsi, [rsi + rsi*4]
	mov	r11, qword ptr [r10 + rsi*8 + 0x10]
	mov	eax, 0xffffffff
	cmp	r11, r8
	jg	.label_2523
	mov	r10, qword ptr [r10 + rsi*8 + 0x18]
	mov	eax, 1
	cmp	r10, r8
	jl	.label_2523
	cmp	r11, r8
	sete	al
	movzx	r11d, al
	cmp	r10, r8
	sete	al
	movzx	esi, al
	add	esi, esi
	xor	eax, eax
	or	esi, r11d
	je	.label_2523
	mov	r8, r9
	jmp	check_dst_limits_calc_pos_1
.label_2523:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x419ac0

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
	mov	r12, rdx
	mov	ebx, esi
	mov	qword ptr [rsp + 0x38], rdi
	mov	rbp, qword ptr [rdi + 0x98]
	mov	rax, qword ptr [rbp + 0x30]
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	jle	.label_2537
	lea	rdx, [rax + rcx*8 + 8]
	mov	qword ptr [rsp + 0x20], rdx
	lea	rax, [rax + rcx*8 + 0x10]
	mov	qword ptr [rsp + 0x28], rax
	mov	eax, 1
	mov	cl, r12b
	shl	rax, cl
	mov	qword ptr [rsp + 0x18], rax
	xor	rax, 0xffff
	mov	qword ptr [rsp + 8], rax
	mov	eax, ebx
	and	eax, 2
	mov	dword ptr [rsp + 0x14], eax
	shr	eax, 1
	cmp	r12, 0x3f
	setg	cl
	or	cl, al
	mov	byte ptr [rsp + 7], cl
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp], eax
	xor	r15d, r15d
	jmp	.label_2542
.label_2532:
	cmp	byte ptr [rsp + 7], 0
	je	.label_2535
	nop	dword ptr [rax + rax]
.label_2536:
	cmp	qword ptr [r14], r13
	jne	.label_2533
	mov	rax, qword ptr [rbp + 0x28]
	lea	rcx, [r13 + r13*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	cmp	rcx, qword ptr [rsp + 0x30]
	je	.label_2539
	mov	rdi, qword ptr [rsp + 0x38]
	mov	esi, ebx
	mov	rdx, r12
	mov	r8, qword ptr [rsp + 0x40]
	call	check_dst_limits_calc_pos_1
	mov	ecx, eax
	test	ecx, ecx
	je	.label_2531
	mov	eax, 0xffffffff
	cmp	ecx, -1
	jne	.label_2533
	jmp	.label_2534
	nop	word ptr [rax + rax]
.label_2531:
	xor	eax, eax
	cmp	dword ptr [rsp + 0x14], 0
	jne	.label_2534
.label_2533:
	cmp	byte ptr [r14 + 0x20], 0
	lea	r14, [r14 + 0x28]
	jne	.label_2536
	jmp	.label_2525
	nop	dword ptr [rax]
.label_2535:
	cmp	qword ptr [r14], r13
	jne	.label_2528
	mov	rax, qword ptr [rbp + 0x28]
	lea	rcx, [r13 + r13*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	cmp	rcx, qword ptr [rsp + 0x30]
	je	.label_2539
	mov	rdi, qword ptr [rsp + 0x38]
	mov	esi, ebx
	mov	rdx, r12
	mov	r8, qword ptr [rsp + 0x40]
	call	check_dst_limits_calc_pos_1
	mov	ecx, eax
	test	ecx, ecx
	je	.label_2526
	mov	eax, 0xffffffff
	cmp	ecx, -1
	jne	.label_2528
	jmp	.label_2534
	nop	word ptr [rax + rax]
.label_2526:
	movzx	eax, word ptr [r14 + 0x22]
	mov	rcx, qword ptr [rsp + 8]
	and	ecx, eax
	mov	word ptr [r14 + 0x22], cx
.label_2528:
	cmp	byte ptr [r14 + 0x20], 0
	lea	r14, [r14 + 0x28]
	jne	.label_2535
	jmp	.label_2525
	nop	word ptr cs:[rax + rax]
.label_2542:
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	r13, qword ptr [rax + r15*8]
	mov	rax, qword ptr [rbp]
	mov	rdx, r13
	shl	rdx, 4
	lea	rcx, [rax + rdx]
	movzx	eax, byte ptr [rax + rdx + 8]
	cmp	eax, 9
	je	.label_2540
	cmp	eax, 8
	je	.label_2543
	cmp	eax, 4
	jne	.label_2525
	cmp	qword ptr [rsp + 0x40], -1
	je	.label_2525
	mov	rax, qword ptr [rsp + 0x40]
	lea	r14, [rax + rax*4]
	shl	r14, 3
	mov	rax, qword ptr [rsp + 0x38]
	add	r14, qword ptr [rax + 0xd8]
	cmp	r12, 0x3f
	jg	.label_2532
	nop	word ptr [rax + rax]
.label_2538:
	cmp	qword ptr [r14], r13
	jne	.label_2524
	movzx	eax, word ptr [r14 + 0x22]
	test	qword ptr [rsp + 0x18], rax
	je	.label_2524
	mov	rax, qword ptr [rbp + 0x28]
	lea	rcx, [r13 + r13*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	cmp	rcx, qword ptr [rsp + 0x30]
	je	.label_2539
	mov	rdi, qword ptr [rsp + 0x38]
	mov	esi, ebx
	mov	rdx, r12
	mov	r8, qword ptr [rsp + 0x40]
	call	check_dst_limits_calc_pos_1
	mov	ecx, eax
	test	ecx, ecx
	je	.label_2529
	mov	eax, 0xffffffff
	cmp	ecx, -1
	jne	.label_2527
	jmp	.label_2534
.label_2529:
	cmp	byte ptr [rsp + 7], 0
	je	.label_2527
	xor	eax, eax
	cmp	dword ptr [rsp + 0x14], 0
	je	.label_2524
	jmp	.label_2534
	nop	dword ptr [rax + rax]
.label_2527:
	movzx	eax, word ptr [r14 + 0x22]
	mov	rcx, qword ptr [rsp + 8]
	and	ecx, eax
	mov	word ptr [r14 + 0x22], cx
.label_2524:
	cmp	byte ptr [r14 + 0x20], 0
	lea	r14, [r14 + 0x28]
	jne	.label_2538
	jmp	.label_2525
	nop	word ptr cs:[rax + rax]
.label_2540:
	cmp	dword ptr [rsp + 0x14], 0
	je	.label_2525
	xor	eax, eax
	jmp	.label_2541
	nop	dword ptr [rax + rax]
.label_2543:
	cmp	dword ptr [rsp], 0
	je	.label_2525
	mov	eax, 0xffffffff
.label_2541:
	cmp	qword ptr [rcx], r12
	je	.label_2534
.label_2525:
	inc	r15
	mov	rax, qword ptr [rsp + 0x20]
	cmp	r15, qword ptr [rax]
	jl	.label_2542
.label_2537:
	shr	ebx, 1
	and	ebx, 1
	jmp	.label_2530
.label_2539:
	shl	ebx, 0x1f
	sar	ebx, 0x1f
.label_2530:
	mov	eax, ebx
.label_2534:
	add	rsp, 0x48
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
	#Procedure 0x419db0

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
	jne	.label_2545
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_2544
	test	cl, cl
	jne	.label_2544
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_2544
.label_2545:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_2544
	call	__errno_location
	mov	dword ptr [rax], 0
.label_2544:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419e10

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_2547
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_2548
	cmp	byte ptr [rax + 1], 0
	je	.label_2546
.label_2548:
	mov	esi, OFFSET FLAT:.str.1_6
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_2547
.label_2546:
	xor	ebx, ebx
.label_2547:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x419e50

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
	je	.label_2549
	mov	rax, rcx
.label_2549:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x419e80
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	push	rbx
	mov	ebx, edi
	call	wcwidth
	test	eax, eax
	jns	.label_2550
	mov	edi, ebx
	call	iswcntrl
	test	eax, eax
	sete	al
	movzx	eax, al
.label_2550:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x419ea0
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
	jne	.label_2551
	lea	r15, [r14 + 0x18]
	mov	rdx, qword ptr [rbx + 8]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_2551:
	mov	qword ptr [r14], rsi
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [r14 + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	test	al, al
	mov	byte ptr [r14 + 0x10], al
	je	.label_2552
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x14], eax
.label_2552:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x419ef0
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
	#Procedure 0x419f10

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_2553
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_2555
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_2553
.label_2555:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_2553
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_2554
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_2554:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_2553:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x419f90

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_2556
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_2556
	test	byte ptr [rbx + 1], 1
	je	.label_2556
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_2556:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x419fd0

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
	jne	.label_2557
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_2557
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_2558
.label_2557:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_2558:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_2559
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_2559:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	16
	#Procedure 0x41a040

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