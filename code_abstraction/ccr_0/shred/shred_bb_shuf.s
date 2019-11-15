	.section	.text
	.align	16
	#Procedure 0x401d59
	.globl sub_401d59
	.type sub_401d59, @function
sub_401d59:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x401d5a
	.globl sub_401d5a
	.type sub_401d5a, @function
sub_401d5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d92
	.globl sub_401d92
	.type sub_401d92, @function
sub_401d92:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401dda
	.globl sub_401dda
	.type sub_401dda, @function
sub_401dda:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401dfc
	.globl sub_401dfc
	.type sub_401dfc, @function
sub_401dfc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401e0d
	.globl sub_401e0d
	.type sub_401e0d, @function
sub_401e0d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401e26
	.globl sub_401e26
	.type sub_401e26, @function
sub_401e26:

	nop	word ptr cs:[rax + rax]
.label_10:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e3a
	.globl sub_401e3a
	.type sub_401e3a, @function
sub_401e3a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e46

	.globl randint_genmax
	.type randint_genmax, @function
randint_genmax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, 1
	mov	qword ptr [rbp - 0x38], rsi
.label_12:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_11
	mov	qword ptr [rbp - 0x40], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x48], rax
.label_13:
	mov	rdi, qword ptr [rbp - 0x48]
	call	shift_left
	add	rax, 0xff
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x18]
	jb	.label_13
	lea	rsi, [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x40]
	call	randread
	mov	qword ptr [rbp - 0x40], 0
.label_14:
	mov	rdi, qword ptr [rbp - 0x28]
	call	shift_left
	mov	rdi, qword ptr [rbp - 0x40]
	movzx	ecx, byte ptr [rbp + rdi - 0x50]
	mov	edi, ecx
	add	rax, rdi
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x30]
	call	shift_left
	add	rax, 0xff
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jb	.label_14
	jmp	.label_11
.label_11:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_15
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_10
.label_9:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x60]
	sub	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_12
.label_15:
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x60], rdx
	mov	rdx, qword ptr [rbp - 0x30]
	sub	rdx, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x68], rdx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rdx
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x68]
	ja	.label_9
	mov	rax, qword ptr [rbp - 0x28]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 8], rax
	mov	rax, qword ptr [rbp - 0x58]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_10
	.section	.text
	.align	16
	#Procedure 0x402000
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_alloc_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40203a
	.globl sub_40203a
	.type sub_40203a, @function
sub_40203a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402040

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x48]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40207e
	.globl sub_40207e
	.type sub_40207e, @function
sub_40207e:

	nop	
.label_17:
	mov	byte ptr [rbp - 1], 0
.label_18:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40208e
	.globl sub_40208e
	.type sub_40208e, @function
sub_40208e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40209c
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_17
	jmp	.label_16
.label_16:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_18
	.section	.text
	.align	16
	#Procedure 0x4020c0

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	call	xmalloc
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x18], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4020f7
	.globl sub_4020f7
	.type sub_4020f7, @function
sub_4020f7:

	nop	word ptr [rax + rax]
.label_1175:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_59
.label_1063:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_77
	movabs	rdi, OFFSET FLAT:label_79
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_43
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_77:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_33
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_42:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_89
	jmp	.label_94
.label_94:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_96
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_96:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_78
.label_78:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_42
.label_53:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_112
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_31
.label_20:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_121
	test	byte ptr [rbp - 0x79], 1
	je	.label_121
	mov	dword ptr [rbp - 0x34], 4
.label_121:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rbp - 0x34]
	mov	r9d, dword ptr [rbp - 0x38]
	and	r9d, 0xfffffffd
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x148], rcx
	mov	rcx, r8
	mov	r8d, eax
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x10], rax
.label_50:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402236
	.globl sub_402236
	.type sub_402236, @function
sub_402236:

	nop	dword ptr [rax + rax]
.label_83:
	call	abort
.label_158:
	jmp	.label_72
.label_26:
	jmp	.label_24
	.section	.text
	.align	16
	#Procedure 0x40224a

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x158
	mov	rax, qword ptr [rbp + 0x20]
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], r8d
	mov	dword ptr [rbp - 0x38], r9d
	mov	qword ptr [rbp - 0x40], r11
	mov	qword ptr [rbp - 0x48], r10
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x70], 0
	mov	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0x79], 0
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	sete	bl
	and	bl, 1
	mov	byte ptr [rbp - 0x7a], bl
	mov	r8d, dword ptr [rbp - 0x38]
	and	r8d, 2
	cmp	r8d, 0
	setne	bl
	and	bl, 1
	mov	byte ptr [rbp - 0x7b], bl
	mov	byte ptr [rbp - 0x7c], 0
	mov	byte ptr [rbp - 0x7d], 0
	mov	byte ptr [rbp - 0x7e], 1
.label_146:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_83
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_175]]
	jmp	rcx
.label_111:
	jmp	.label_99
.label_99:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_179
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_179:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_50
.label_110:
	jmp	.label_59
.label_59:
	test	byte ptr [rbp - 0x79], 1
	je	.label_189
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_105
.label_189:
	jmp	.label_41
.label_115:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_145:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_198
	jmp	.label_203
.label_198:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_144
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_144
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_144
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_215
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_215
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_220
.label_219:
	jmp	.label_19
.label_19:
	jmp	.label_21
.label_21:
	jmp	.label_24
.label_166:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_26
	jmp	.label_20
.label_185:
	jmp	.label_31
.label_89:
	jmp	.label_33
.label_33:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_39
.label_1182:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_41
.label_22:
	jmp	.label_44
.label_44:
	jmp	.label_41
.label_108:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_47
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_47
	jmp	.label_52
.label_52:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_54
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_54:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_61
.label_61:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_62
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_62:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_68
.label_68:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_69
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_69:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_47:
	jmp	.label_130
.label_130:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_136
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_136:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_161
.label_161:
	jmp	.label_72
.label_72:
	jmp	.label_85
.label_85:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_86
	test	byte ptr [rbp - 0x82], 1
	jne	.label_86
	jmp	.label_90
.label_90:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_91
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_91:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_98
.label_98:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_102
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_102:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_86:
	jmp	.label_113
.label_113:
	jmp	.label_116
.label_116:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_119
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_119:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_170
	mov	byte ptr [rbp - 0x7e], 0
.label_170:
	jmp	.label_29
.label_29:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_125
.label_1173:
	test	byte ptr [rbp - 0x79], 1
	je	.label_129
	jmp	.label_131
.label_131:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_132
	jmp	.label_20
.label_1056:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_39
.label_203:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_139
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_139
	test	byte ptr [rbp - 0x7b], 1
	je	.label_139
	jmp	.label_20
.label_35:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_142
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_142
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_146
.label_151:
	mov	byte ptr [rbp - 0x81], 1
.label_144:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x7f], dl
	movzx	esi, byte ptr [rbp - 0x7f]
	mov	eax, esi
	mov	rcx, rax
	sub	rcx, 0x7e
	mov	qword ptr [rbp - 0xf0], rax
	mov	qword ptr [rbp - 0xf8], rcx
	ja	.label_149
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_157]]
	jmp	rcx
.label_100:
	jmp	.label_72
.label_1186:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_163
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_164
	jmp	.label_168
.label_36:
	jmp	.label_169
.label_169:
	jmp	.label_104
.label_104:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_172
.label_183:
	jmp	.label_177
.label_177:
	mov	byte ptr [rbp - 0x83], 1
.label_1181:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_118
	test	byte ptr [rbp - 0x7b], 1
	je	.label_118
	jmp	.label_20
.label_174:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_21
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_21
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_21
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_196
	jmp	.label_204
.label_204:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_196
	jmp	.label_209
.label_209:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_196
	jmp	.label_214
.label_214:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_196
	jmp	.label_218
.label_218:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_219
	jmp	.label_196
.label_196:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_221
	jmp	.label_20
.label_129:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_22
	jmp	.label_29
.label_132:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_34
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_34
	jmp	.label_37
.label_37:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_38
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_38:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_45
.label_45:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_48
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_48:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_182
.label_182:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_58
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_58:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_34:
	jmp	.label_65
.label_65:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_67
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_67:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_71
.label_71:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_74
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_74
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_74
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_74
	jmp	.label_195
.label_195:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_87
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_87:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_92
.label_92:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_97
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_97:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_74
.label_74:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_44
.label_1176:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_51
.label_39:
	mov	qword ptr [rbp - 0x58], 0
.label_125:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_115
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_145
.label_197:
	jmp	.label_117
.label_117:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_124
	mov	byte ptr [rbp - 0x91], 0
.label_124:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_128
.label_128:
	jmp	.label_134
.label_134:
	jmp	.label_135
.label_135:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_103
.label_31:
	jmp	.label_137
.label_137:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_141
	test	byte ptr [rbp - 0x79], 1
	je	.label_147
	test	byte ptr [rbp - 0x91], 1
	jne	.label_147
.label_141:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_216:
	test	byte ptr [rbp - 0x79], 1
	je	.label_150
	test	byte ptr [rbp - 0x91], 1
	jne	.label_150
	jmp	.label_154
.label_154:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_156
	jmp	.label_20
.label_112:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_160
	mov	byte ptr [rbp - 0x91], 0
.label_186:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_165
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_165:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_180
	jmp	.label_185
.label_180:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_186
.label_1180:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_51
.label_1179:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_59
.label_160:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_117
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_117
	mov	qword ptr [rbp - 0xb8], 1
.label_172:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_197
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0xb8]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	add	esi, -0x5b
	sub	esi, 2
	mov	dword ptr [rbp - 0x130], edx
	mov	dword ptr [rbp - 0x134], esi
	jb	.label_40
	jmp	.label_213
.label_213:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_40
	jmp	.label_217
.label_217:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_40
	jmp	.label_210
.label_210:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_36
	jmp	.label_40
.label_40:
	jmp	.label_20
.label_139:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_27
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_27
	test	byte ptr [rbp - 0x7d], 1
	je	.label_27
	test	byte ptr [rbp - 0x7e], 1
	je	.label_35
	mov	r8d, 5
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x40]
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_50
.label_147:
	jmp	.label_41
.label_41:
	test	byte ptr [rbp - 0x79], 1
	je	.label_55
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_56
.label_55:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_60
.label_56:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_60
	movzx	eax, byte ptr [rbp - 0x7f]
	mov	ecx, eax
	shr	rcx, 5
	mov	rdx, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rdx + rcx*4]
	movzx	esi, byte ptr [rbp - 0x7f]
	mov	ecx, esi
	and	rcx, 0x1f
	mov	esi, ecx
	mov	ecx, esi
	shr	eax, cl
	and	eax, 1
	cmp	eax, 0
	jne	.label_63
.label_60:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_63
	jmp	.label_72
.label_1061:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_1060:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_81
	jmp	.label_75
.label_75:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_76
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_76:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_81
.label_81:
	movabs	rax, OFFSET FLAT:label_84
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_39
.label_1183:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_88
	test	byte ptr [rbp - 0x7b], 1
	je	.label_46
	jmp	.label_20
.label_148:
	jmp	.label_51
.label_51:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_110
	test	byte ptr [rbp - 0x7b], 1
	je	.label_110
	jmp	.label_20
.label_63:
	jmp	.label_105
.label_105:
	jmp	.label_107
.label_107:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_108
	jmp	.label_20
.label_1062:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_39
.label_221:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_120
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_120:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_123
.label_123:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_126
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_126:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_133
.label_133:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_138
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_138:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_106
.label_106:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_143
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_143:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_19
.label_155:
	test	byte ptr [rbp - 0x79], 1
	je	.label_148
	test	byte ptr [rbp - 0x7b], 1
	je	.label_148
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_148
	jmp	.label_72
.label_156:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_153
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_153
	jmp	.label_159
.label_159:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_162
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_162:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_167
.label_167:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_171
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_171:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_176
.label_176:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_152
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_152:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_153:
	jmp	.label_190
.label_190:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_192
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_192:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_194
.label_194:
	jmp	.label_199
.label_199:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_202
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_202:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_206
.label_206:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_212
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_212:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_93
.label_1058:
	mov	byte ptr [rbp - 0x79], 1
.label_1057:
	mov	byte ptr [rbp - 0x7b], 1
.label_1059:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_222
	mov	byte ptr [rbp - 0x79], 1
.label_222:
	jmp	.label_23
.label_23:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_25
	jmp	.label_30
.label_30:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_32
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_32:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_25
.label_25:
	movabs	rax, OFFSET FLAT:label_43
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_39
.label_46:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_49
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_49
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_49:
	jmp	.label_57
.label_57:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_205
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_205:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_64
.label_64:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_66
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_66:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_70
.label_70:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_73
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_73:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_88:
	jmp	.label_41
.label_150:
	test	byte ptr [rbp - 0x81], 1
	je	.label_80
	jmp	.label_82
.label_82:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_184
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_184:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_80:
	jmp	.label_93
.label_93:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_95
	jmp	.label_100
.label_142:
	jmp	.label_101
.label_101:
	jmp	.label_27
.label_27:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_99
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_99
	jmp	.label_109
.label_109:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_111
	jmp	.label_114
.label_114:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_140
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_140:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_122
.label_122:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_109
.label_178:
	jmp	.label_24
.label_24:
	jmp	.label_41
.label_149:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_127
	mov	qword ptr [rbp - 0x90], 1
	movzx	eax, byte ptr [rbp - 0x7f]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x128], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x128]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	cmp	edx, 0
	setne	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x91], sil
	jmp	.label_137
.label_215:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_220:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_144
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_144
	test	byte ptr [rbp - 0x7b], 1
	je	.label_151
	jmp	.label_20
.label_1174:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_59
.label_1185:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_155
	test	byte ptr [rbp - 0x7b], 1
	je	.label_158
	jmp	.label_20
.label_163:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_164
.label_168:
	jmp	.label_41
.label_1184:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_166
	jmp	.label_173
.label_173:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_174
	jmp	.label_178
.label_164:
	jmp	.label_181
.label_181:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_183
	jmp	.label_41
.label_95:
	jmp	.label_187
.label_187:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_188
	test	byte ptr [rbp - 0x82], 1
	jne	.label_188
	jmp	.label_191
.label_191:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_193
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_193:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_201
.label_201:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_200
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_200:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_188:
	jmp	.label_207
.label_207:
	jmp	.label_208
.label_208:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_211
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_211:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 1]
	mov	byte ptr [rbp - 0x7f], dl
	jmp	.label_216
.label_118:
	jmp	.label_41
.label_1177:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_51
.label_127:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_28
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_28:
	jmp	.label_103
.label_103:
	lea	rdi, [rbp - 0xa4]
	lea	rcx, [rbp - 0xa0]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x58]
	add	rsi, qword ptr [rbp - 0x90]
	sub	rdx, rsi
	mov	rsi, rax
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0xb0], rax
	cmp	qword ptr [rbp - 0xb0], 0
	jne	.label_53
	jmp	.label_31
.label_1178:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_59
.label_224:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_223:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4034bb
	.globl sub_4034bb
	.type sub_4034bb, @function
sub_4034bb:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4034bf

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	movsxd	rdi, dword ptr [rbp - 0x14]
	xor	esi, esi
	mov	edx, esi
	div	rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdi]
	jae	.label_224
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_223
	.section	.text
	.align	16
	#Procedure 0x403500
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_225
	call	gettext
	movabs	rsi, OFFSET FLAT:label_227
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_226
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_229
	movabs	rdx, OFFSET FLAT:label_230
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_228
	mov	dword ptr [rbp - 8], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403586
	.globl sub_403586
	.type sub_403586, @function
sub_403586:

	nop	
	nop	dword ptr [rax + rax]
.label_233:
	jmp	.label_237
.label_271:
	movabs	rdi, OFFSET FLAT:label_274
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xb8], rax
	call	gettext
	xor	esi, esi
	xor	ecx, ecx
	mov	edx, ecx
	movabs	rcx, 0x7fffffffffffffff
	movabs	r8, OFFSET FLAT:label_248
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	r9, rax
	mov	dword ptr [rsp], 0
	call	xnumtoumax
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_233
.label_269:
	movabs	rdi, OFFSET FLAT:label_268
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xb0], rax
	call	gettext
	xor	ecx, ecx
	mov	esi, ecx
	movabs	rdx, 0x3fffffffffffffff
	movabs	rcx, OFFSET FLAT:label_235
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_233
.label_241:
	mov	byte ptr [rbp - 0x1b], 1
	jmp	.label_233
.label_252:
	movabs	rsi, OFFSET FLAT:label_255
	movabs	rdx, OFFSET FLAT:label_229
	movabs	r8, OFFSET FLAT:label_256
	xor	eax, eax
	mov	r9d, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_270:
	mov	byte ptr [rbp - 0x1a], 1
	jmp	.label_233
.label_251:
	lea	rcx, [rbp - 0x38]
	movsxd	rax, dword ptr [rbp - 0x4c]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rdx + rax*8]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdx,  qword ptr [word ptr [randint_source]]
	call	wipefile
	and	al, 1
	movzx	r8d, al
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	r9d, al
	and	r9d, r8d
	cmp	r9d, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
.label_258:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	eax, dword ptr [rbp - 0x4c]
	add	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_264
.label_245:
	movabs	rdi, OFFSET FLAT:clear_random_data
	call	atexit
	mov	dword ptr [rbp - 0x4c], 0
	mov	dword ptr [rbp - 0xc0], eax
.label_264:
	mov	eax, dword ptr [rbp - 0x4c]
	cmp	eax, dword ptr [rbp - 0x44]
	jge	.label_232
	xor	edi, edi
	mov	esi, 3
	movsxd	rax, dword ptr [rbp - 0x4c]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx + rax*8]
	call	quotearg_n_style_colon
	mov	rdi, rax
	call	xstrdup
	mov	qword ptr [rbp - 0x60], rax
	movsxd	rax, dword ptr [rbp - 0x4c]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	esi, OFFSET FLAT:label_249
	call	strcmp
	cmp	eax, 0
	jne	.label_251
	mov	edi, 1
	lea	rcx, [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdx,  qword ptr [word ptr [randint_source]]
	call	wipefd
	and	al, 1
	movzx	edi, al
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	r8d, al
	and	r8d, edi
	cmp	r8d, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	jmp	.label_258
.label_232:
	mov	eax, 1
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x11]
	test	dl, 1
	cmovne	eax, ecx
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4037a6
	.globl sub_4037a6
	.type sub_4037a6, @function
sub_4037a6:

	nop	dword ptr [rax + rax]
.label_254:
	mov	byte ptr [rbp - 0x1c], 1
	jmp	.label_233
.label_260:
	xor	edi, edi
	call	usage
.label_244:
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx,  dword ptr [dword ptr [optind]]
	shl	rcx, 3
	add	rax, rcx
	mov	qword ptr [rbp - 0x40], rax
	mov	edx, dword ptr [rbp - 8]
	sub	edx,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 0x44], edx
	cmp	dword ptr [rbp - 0x44], 0
	jne	.label_253
	movabs	rdi, OFFSET FLAT:label_234
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_253:
	mov	rsi, -1
	mov	rdi, qword ptr [rbp - 0x58]
	call	randint_all_new
	mov	qword ptr [word ptr [randint_source]],  rax
	cmp	qword ptr [word ptr [randint_source]],  0
	jne	.label_245
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	dword ptr [rbp - 0xbc], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_265
	mov	esi, dword ptr [rbp - 0xbc]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_250:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_240
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi,  qword ptr [word ptr [optarg]]
	call	strcmp
	cmp	eax, 0
	je	.label_240
	movabs	rdi, OFFSET FLAT:label_243
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_267:
	mov	byte ptr [rbp - 0x38], 1
	jmp	.label_233
.label_247:
	cmp	qword ptr [word ptr [optarg]],  0
	jne	.label_259
	mov	dword ptr [rbp - 0x20], 3
	jmp	.label_263
.label_242:
	mov	edi, 1
	call	usage
.label_240:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_233
.label_259:
	movabs	rdi, OFFSET FLAT:label_272
	movabs	rdx, OFFSET FLAT:remove_args
	movabs	rax, OFFSET FLAT:remove_methods
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + remove_methods]]
	mov	dword ptr [rbp - 0x20], r10d
.label_263:
	jmp	.label_233
	.section	.text
	.align	16
	#Procedure 0x40394b

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	xor	eax, eax
	mov	ecx, 0x20
	mov	edx, ecx
	lea	r8, [rbp - 0x38]
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x11], 1
	mov	rdi, r8
	mov	esi, eax
	call	memset
	mov	qword ptr [rbp - 0x58], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_235
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_275
	movabs	rsi, OFFSET FLAT:label_276
	mov	qword ptr [rbp - 0x68], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_275
	mov	qword ptr [rbp - 0x70], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x78], rax
	call	atexit
	mov	qword ptr [rbp - 0x30], 3
	mov	qword ptr [rbp - 0x28], -1
	mov	dword ptr [rbp - 0x7c], eax
.label_237:
	movabs	rdx, OFFSET FLAT:label_273
	movabs	rcx, OFFSET FLAT:long_opts
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x48], eax
	cmp	eax, -1
	je	.label_244
	mov	eax, dword ptr [rbp - 0x48]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x80], eax
	mov	dword ptr [rbp - 0x84], ecx
	je	.label_252
	jmp	.label_257
.label_257:
	mov	eax, dword ptr [rbp - 0x80]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x88], eax
	je	.label_260
	jmp	.label_266
.label_266:
	mov	eax, dword ptr [rbp - 0x80]
	sub	eax, 0x66
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_267
	jmp	.label_261
.label_261:
	mov	eax, dword ptr [rbp - 0x80]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x90], eax
	je	.label_269
	jmp	.label_236
.label_236:
	mov	eax, dword ptr [rbp - 0x80]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x94], eax
	je	.label_271
	jmp	.label_246
.label_246:
	mov	eax, dword ptr [rbp - 0x80]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x98], eax
	je	.label_247
	jmp	.label_231
.label_231:
	mov	eax, dword ptr [rbp - 0x80]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_254
	jmp	.label_262
.label_262:
	mov	eax, dword ptr [rbp - 0x80]
	sub	eax, 0x78
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_241
	jmp	.label_239
.label_239:
	mov	eax, dword ptr [rbp - 0x80]
	sub	eax, 0x7a
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_270
	jmp	.label_238
.label_238:
	mov	eax, dword ptr [rbp - 0x80]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0xa8], eax
	je	.label_250
	jmp	.label_242
	.section	.text
	.align	16
	#Procedure 0x403b20

	.globl lstatat
	.type lstatat, @function
lstatat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	ecx, 0x100
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	fstatat
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b4e
	.globl sub_403b4e
	.type sub_403b4e, @function
sub_403b4e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403b50

	.globl xstrdup
	.type xstrdup, @function
xstrdup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rax
	call	strlen
	add	rax, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	call	xmemdup
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b86
	.globl sub_403b86
	.type sub_403b86, @function
sub_403b86:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b90
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x10], rsi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403baa
	.globl sub_403baa
	.type sub_403baa, @function
sub_403baa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403bb0

	.globl fillpattern
	.type fillpattern, @function
fillpattern:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	and	edi, 0xfff
	mov	dword ptr [rbp - 0x24], edi
	mov	edi, dword ptr [rbp - 0x24]
	shl	edi, 0xc
	or	edi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x24], edi
	mov	edi, dword ptr [rbp - 0x24]
	shr	edi, 4
	and	edi, 0xff
	mov	al, dil
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx], al
	mov	edi, dword ptr [rbp - 0x24]
	shr	edi, 8
	and	edi, 0xff
	mov	al, dil
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 1], al
	mov	edi, dword ptr [rbp - 0x24]
	and	edi, 0xff
	mov	al, dil
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 2], al
	mov	qword ptr [rbp - 0x20], 3
.label_280:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	shr	rcx, 1
	cmp	rax, rcx
	ja	.label_277
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_280
.label_278:
	jmp	.label_282
.label_282:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403c6a
	.globl sub_403c6a
	.type sub_403c6a, @function
sub_403c6a:

	nop	word ptr [rax + rax]
.label_277:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_279
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, qword ptr [rbp - 0x20]
	mov	rdi, rax
	mov	rdx, rcx
	call	memcpy
.label_279:
	mov	eax, dword ptr [rbp - 4]
	and	eax, 0x1000
	cmp	eax, 0
	je	.label_282
	mov	qword ptr [rbp - 0x20], 0
.label_281:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_278
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	xor	edx, 0x80
	mov	sil, dl
	mov	byte ptr [rcx + rax], sil
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x200
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_281
	.section	.text
	.align	16
	#Procedure 0x403cf0

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	__fpending
	cmp	rax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x11], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	ferror_unlocked
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x12], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x13], cl
	test	byte ptr [rbp - 0x12], 1
	jne	.label_283
	test	byte ptr [rbp - 0x13], 1
	je	.label_284
	test	byte ptr [rbp - 0x11], 1
	jne	.label_283
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_284
.label_283:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_285
	call	__errno_location
	mov	dword ptr [rax], 0
.label_285:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_286
.label_284:
	mov	dword ptr [rbp - 4], 0
.label_286:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d99
	.globl sub_403d99
	.type sub_403d99, @function
sub_403d99:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403da0

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x50]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rcx, [rbp - 0x50]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ddf
	.globl sub_403ddf
	.type sub_403ddf, @function
sub_403ddf:

	nop	
.label_292:
	xor	eax, eax
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 8]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x2f
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x1c], eax
.label_291:
	mov	eax, dword ptr [rbp - 0x1c]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 8]
	call	last_component
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x18], rax
.label_289:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_287
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	je	.label_290
	jmp	.label_287
.label_290:
	jmp	.label_288
.label_288:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_289
.label_287:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e65
	.globl sub_403e65
	.type sub_403e65, @function
sub_403e65:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403e67

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 0
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_292
	xor	eax, eax
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_291
	.section	.text
	.align	16
	#Procedure 0x403e90
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_296:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_295
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_296
.label_295:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_297
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_294]],  rax
.label_297:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_293
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_293:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f64
	.globl sub_403f64
	.type sub_403f64, @function
sub_403f64:

	nop	word ptr cs:[rax + rax]
.label_305:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_301
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_298
	call	xalloc_die
.label_298:
	test	byte ptr [rbp - 0x31], 1
	je	.label_300
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_303
.label_300:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_303:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	movsxd	rdx, ecx
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rdx
	call	xrealloc
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [word ptr [slotvec]],  rax
	test	byte ptr [rbp - 0x31], 1
	je	.label_304
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_294]]
	mov	qword ptr [rax + 8], rcx
.label_304:
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x30]
	movsxd	rcx,  dword ptr [dword ptr [nslots]]
	shl	rcx, 4
	add	rax, rcx
	mov	edx, dword ptr [rbp - 4]
	add	edx, 1
	sub	edx,  dword ptr [dword ptr [nslots]]
	movsxd	rcx, edx
	shl	rcx, 4
	mov	rdi, rax
	mov	rdx, rcx
	call	memset
	mov	esi, dword ptr [rbp - 4]
	add	esi, 1
	mov	dword ptr [dword ptr [nslots]],  esi
.label_301:
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	or	ecx, 1
	mov	dword ptr [rbp - 0x4c], ecx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x58]
	ja	.label_302
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_299
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_299:
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	movsxd	rdi, dword ptr [rbp - 4]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rdi + 8], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x68], rax
.label_302:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x6c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4041a4
	.globl sub_4041a4
	.type sub_4041a4, @function
sub_4041a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041b1

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], edi
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 0x30], rax
	cmp	dword ptr [rbp - 4], 0
	jge	.label_305
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4041f0

	.globl quote_n
	.type quote_n, @function
quote_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdx, -1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quote_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404218
	.globl sub_404218
	.type sub_404218, @function
sub_404218:

	nop	dword ptr [rax + rax]
.label_310:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_306:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40425a
	.globl sub_40425a
	.type sub_40425a, @function
sub_40425a:

	nop	word ptr [rax + rax]
.label_309:
	jmp	.label_306
	.section	.text
	.align	16
	#Procedure 0x404268

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_308
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_307
	mov	eax, 0x80
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	setne	sil
	xor	sil, 0xff
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_307:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_309
	call	xalloc_die
.label_308:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_310
	call	xalloc_die
.label_314:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xe0], rax
.label_322:
	mov	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0x78], rax
	call	getuid
	lea	rcx, [rbp - 0x6c]
	mov	dword ptr [rbp - 0x6c], eax
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0xe8], rsi
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0xe8]
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x78]
	add	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rcx
.label_321:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_319
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_325
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0xf0], rcx
	jmp	.label_320
.label_316:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xc0], rax
.label_324:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x58], rax
	call	getpid
	lea	rcx, [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0xc8], rsi
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0xc8]
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rcx
.label_313:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_326
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_311
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0xd0], rcx
	jmp	.label_317
.label_311:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xd0], rax
.label_317:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x68], rax
	call	getppid
	lea	rcx, [rbp - 0x5c]
	mov	dword ptr [rbp - 0x5c], eax
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0xd8], rsi
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0xd8]
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x68]
	add	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rcx
.label_326:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_321
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_314
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0xe0], rcx
	jmp	.label_322
.label_315:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xb0], rax
.label_323:
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rdi, [rbp - 0x40]
	xor	ecx, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x48], rax
	call	gettimeofday
	lea	rsi, [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x20]
	add	rdi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	dword ptr [rbp - 0xb4], eax
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x48]
	add	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rdx
.label_312:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_313
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_316
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0xc0], rcx
	jmp	.label_324
.label_325:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xf0], rax
.label_320:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0x88], rax
	call	getgid
	lea	rcx, [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0xf8], rsi
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0xf8]
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x88]
	add	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rcx
.label_319:
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4045b0
	.globl sub_4045b0
	.type sub_4045b0, @function
sub_4045b0:

	nop	word ptr cs:[rax + rax]
.label_330:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
.label_329:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	edi, dword ptr [rbp - 0x8c]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdx, rax
	call	read
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jge	.label_318
	mov	qword ptr [rbp - 0x28], 0
.label_318:
	mov	edi, dword ptr [rbp - 0x2c]
	call	close
	mov	dword ptr [rbp - 0xa4], eax
.label_327:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_312
	mov	eax, 0x10
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_315
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0xb0], rcx
	jmp	.label_323
	.section	.text
	.align	16
	#Procedure 0x404641

	.globl get_nonce
	.type get_nonce, @function
get_nonce:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	movabs	rax, OFFSET FLAT:label_328
	xor	ecx, ecx
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, rax
	mov	esi, ecx
	mov	al, 0
	call	open
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x2c], eax
	cmp	ecx, dword ptr [rbp - 0x2c]
	jg	.label_327
	mov	edi, dword ptr [rbp - 0x2c]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x8c], edi
	mov	qword ptr [rbp - 0x98], rsi
	jae	.label_330
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_329
	.section	.text
	.align	16
	#Procedure 0x4046c0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:quote_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4046f3
	.globl sub_4046f3
	.type sub_4046f3, @function
sub_4046f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404700

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	esi, eax
	call	memset
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404727
	.globl sub_404727
	.type sub_404727, @function
sub_404727:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404730

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_331
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_331
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_331
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_333
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_332
.label_333:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_332
.label_331:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_332:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4047f2
	.globl sub_4047f2
	.type sub_4047f2, @function
sub_4047f2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404800
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], ecx
	cmp	qword ptr [rbp - 8], 0
	je	.label_334
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_335
.label_334:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_335
.label_335:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, 0x38
	mov	esi, ecx
	mov	rdi, rax
	call	xmemdup
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x24], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404872
	.globl sub_404872
	.type sub_404872, @function
sub_404872:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404880
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_336
	jmp	.label_338
.label_338:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_337
.label_336:
	mov	byte ptr [rbp - 1], 0
.label_337:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4048b2
	.globl sub_4048b2
	.type sub_4048b2, @function
sub_4048b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048c0
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_339
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_340
.label_339:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_340
.label_340:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x40], rax
	mov	r8d, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x4c], r8d
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x4c]
	mov	dword ptr [rax], r8d
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404985
	.globl sub_404985
	.type sub_404985, @function
sub_404985:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404990
	.globl quotearg
	.type quotearg, @function
quotearg:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quotearg_n
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4049af
	.globl sub_4049af
	.type sub_4049af, @function
sub_4049af:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4049b0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4049d7
	.globl sub_4049d7
	.type sub_4049d7, @function
sub_4049d7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049e0

	.globl quote
	.type quote, @function
quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quote_n
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4049ff
	.globl sub_4049ff
	.type sub_4049ff, @function
sub_4049ff:

	nop	
.label_343:
	mov	byte ptr [rbp - 1], 0
.label_341:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404a0e
	.globl sub_404a0e
	.type sub_404a0e, @function
sub_404a0e:

	nop	word ptr cs:[rax + rax]
.label_1116:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_341
	.section	.text
	.align	16
	#Procedure 0x404a26
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	mov	eax, edi
	sub	edi, 0x5d
	mov	qword ptr [rbp - 0x10], rax
	mov	dword ptr [rbp - 0x14], edi
	ja	.label_343
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_342]]
	jmp	rcx
.label_349:
	jmp	.label_347
.label_347:
	xor	eax, eax
	mov	cl, al
	mov	eax, 0x30
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	eax, esi
	mov	byte ptr [rbp - 0x35], cl
	jg	.label_350
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x39
	setle	dl
	mov	byte ptr [rbp - 0x35], dl
.label_350:
	mov	al, byte ptr [rbp - 0x35]
	xor	al, 0xff
	test	al, 1
	jne	.label_344
	jmp	.label_346
.label_344:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_348
	mov	eax, dword ptr [rbp - 0x28]
	or	eax, 0x80
	mov	dword ptr [rbp - 0x28], eax
	mov	rcx, qword ptr [rbp - 0x30]
	movsx	eax, byte ptr [rcx - 1]
	cmp	eax, 0x42
	jne	.label_354
	mov	eax, dword ptr [rbp - 0x28]
	or	eax, 0x100
	mov	dword ptr [rbp - 0x28], eax
.label_354:
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x42
	jne	.label_345
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax - 2]
	cmp	ecx, 0x69
	jne	.label_351
.label_345:
	mov	eax, dword ptr [rbp - 0x28]
	or	eax, 0x20
	mov	dword ptr [rbp - 0x28], eax
.label_351:
	jmp	.label_346
.label_356:
	lea	rsi, [rbp - 0x30]
	xor	edx, edx
	movabs	r8, OFFSET FLAT:label_358
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	call	xstrtoumax
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	je	.label_349
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], 0
	mov	ecx, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_355
.label_346:
	jmp	.label_357
.label_357:
	jmp	.label_359
.label_359:
	mov	eax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	dword ptr [rcx], eax
	mov	dword ptr [rbp - 4], 0
.label_355:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404b59
	.globl sub_404b59
	.type sub_404b59, @function
sub_404b59:

	nop	
.label_360:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x27
	jne	.label_353
	mov	eax, dword ptr [rbp - 0x28]
	or	eax, 4
	mov	dword ptr [rbp - 0x28], eax
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
.label_353:
	movabs	rsi, OFFSET FLAT:block_size_args
	movabs	rax, OFFSET FLAT:block_size_opts
	mov	ecx, 4
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, rax
	call	argmatch
	xor	r8d, r8d
	mov	r9d, eax
	mov	dword ptr [rbp - 0x24], r9d
	cmp	r8d, r9d
	jg	.label_356
	movsxd	rax, dword ptr [rbp - 0x24]
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + block_size_opts]]
	or	ecx, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x28], ecx
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], 1
	jmp	.label_357
.label_348:
	jmp	.label_352
.label_352:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_347
	.section	.text
	.align	16
	#Procedure 0x404bef

	.globl humblock
	.type humblock, @function
humblock:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	dword ptr [rbp - 0x28], 0
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_360
	movabs	rdi, OFFSET FLAT:label_362
	call	getenv
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	jne	.label_360
	movabs	rdi, OFFSET FLAT:label_361
	call	getenv
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	jne	.label_360
	call	default_block_size
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	jmp	.label_359
.label_370:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_368
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_368:
	movabs	rdi, OFFSET FLAT:label_374
	call	gettext
	movabs	rsi, OFFSET FLAT:label_229
	movabs	rdx, OFFSET FLAT:label_230
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	edi, 5
	xor	ecx, ecx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x28], eax
	call	setlocale
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_369
	movabs	rsi, OFFSET FLAT:label_364
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_369
	movabs	rdi, OFFSET FLAT:label_371
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_369:
	movabs	rdi, OFFSET FLAT:label_365
	call	gettext
	movabs	rsi, OFFSET FLAT:label_230
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_373
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_235
	movabs	rsi, OFFSET FLAT:label_363
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 8]
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x38]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x3c], eax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d85
	.globl sub_404d85
	.type sub_404d85, @function
sub_404d85:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404d8c

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rax
.label_366:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_372
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_372:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_367
	jmp	.label_370
.label_367:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_366
	.section	.text
	.align	16
	#Procedure 0x404e00

	.globl last_component
	.type last_component, @function
last_component:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	byte ptr [rbp - 0x19], 0
.label_376:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_378
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_376
.label_378:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_379:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_381
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_377
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_380
.label_377:
	test	byte ptr [rbp - 0x19], 1
	je	.label_375
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
	mov	byte ptr [rbp - 0x19], 0
.label_375:
	jmp	.label_380
.label_380:
	jmp	.label_382
.label_382:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_379
.label_381:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404e9a
	.globl sub_404e9a
	.type sub_404e9a, @function
sub_404e9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ea0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	push	rbp
	mov	rbp, rsp
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	byte ptr [byte ptr [ignore_EPIPE]],  al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404eba
	.globl sub_404eba
	.type sub_404eba, @function
sub_404eba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ec0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	edi, eax
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ef7
	.globl sub_404ef7
	.type sub_404ef7, @function
sub_404ef7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f00

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_383
	movabs	rdi, OFFSET FLAT:label_389
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_383:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_384
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_387
.label_384:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_387:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_385
	movabs	rsi, OFFSET FLAT:label_386
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_385
	movabs	rsi, OFFSET FLAT:label_390
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_388
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_388:
	jmp	.label_385
.label_385:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405019
	.globl sub_405019
	.type sub_405019, @function
sub_405019:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405020

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	add	edi, 0xffffd828
	sub	edi, 0xb
	mov	dword ptr [rbp - 8], edi
	ja	.label_391
	jmp	.label_393
.label_393:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_392
.label_391:
	jmp	.label_392
.label_392:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40506a
	.globl sub_40506a
	.type sub_40506a, @function
sub_40506a:

	nop	word ptr [rax + rax]
.label_433:
	mov	rax, qword ptr [rbp - 0xa8]
	cmp	rax, qword ptr [rbp - 0xb8]
	setb	cl
	and	cl, 1
	movzx	edx, cl
	add	edx, 2
	mov	dword ptr [rbp - 0x14c], edx
.label_437:
	mov	eax, dword ptr [rbp - 0x14c]
	mov	dword ptr [rbp - 0x64], eax
	jmp	.label_402
	.section	.text
	.align	16
	#Procedure 0x40509e

	.globl human_readable
	.type human_readable, @function
human_readable:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1f0
	movabs	rax, OFFSET FLAT:label_235
	movabs	r9, OFFSET FLAT:label_438
	mov	r10d, 0x3e8
	mov	r11d, 0x400
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	edx, dword ptr [rbp - 0x14]
	and	edx, 3
	mov	dword ptr [rbp - 0x2c], edx
	mov	edx, dword ptr [rbp - 0x14]
	and	edx, 0x20
	cmp	edx, 0
	cmovne	r10d, r11d
	mov	dword ptr [rbp - 0x30], r10d
	mov	dword ptr [rbp - 0x40], 0xffffffff
	mov	dword ptr [rbp - 0x44], 8
	mov	qword ptr [rbp - 0x70], r9
	mov	qword ptr [rbp - 0x78], 1
	mov	qword ptr [rbp - 0x80], rax
	mov	qword ptr [rbp - 0x88], rax
	call	localeconv
	xor	edx, edx
	mov	ecx, edx
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rax]
	mov	qword ptr [rbp - 0x148], rcx
	call	strlen
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x148]
	cmp	rax, qword ptr [rbp - 0x98]
	jae	.label_429
	cmp	qword ptr [rbp - 0x98], 0x10
	ja	.label_429
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x78], rax
.label_429:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rax + 8]
	call	strlen
	cmp	rax, 0x10
	ja	.label_440
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x88], rax
.label_440:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x28b
	add	rax, -1
	add	rax, -3
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_448
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x28]
	cmp	rdx, 0
	jne	.label_442
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 8]
	jne	.label_428
	mov	dword ptr [rbp - 0x3c], 0
	mov	dword ptr [rbp - 0x64], 0
	jmp	.label_402
.label_395:
	cmp	dword ptr [rbp - 0x2c], 0
	jne	.label_413
	xor	eax, eax
	mov	ecx, dword ptr [rbp - 0x3c]
	add	ecx, dword ptr [rbp - 0x64]
	cmp	eax, ecx
	jge	.label_413
.label_400:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	ecx, dword ptr [rbp - 0x14]
	and	ecx, 0x10
	cmp	ecx, 0
	je	.label_404
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rbp - 0x30]
	mov	edx, ecx
	cmp	rax, rdx
	jne	.label_404
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x44]
	jge	.label_404
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, 1
	mov	dword ptr [rbp - 0x40], eax
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 8
	cmp	eax, 0
	jne	.label_407
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [rbp - 0x50], rsi
	mov	byte ptr [rdx - 1], 0x30
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x50]
	sub	rcx, rdx
	add	rsi, rcx
	mov	qword ptr [rbp - 0x50], rsi
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	call	memcpy
.label_407:
	mov	qword ptr [rbp - 0x38], 1
.label_404:
	jmp	.label_413
.label_413:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x60], rax
.label_397:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x38]
	xor	edx, edx
	div	rcx
	mov	esi, edx
	mov	dword ptr [rbp - 0x10c], esi
	mov	esi, dword ptr [rbp - 0x10c]
	add	esi, 0x30
	mov	dil, sil
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x50], rdx
	mov	byte ptr [rcx - 1], dil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x38]
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 0x38], rax
	cmp	rax, 0
	jne	.label_397
	jmp	.label_424
.label_424:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 4
	cmp	eax, 0
	je	.label_425
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x50]
	sub	rax, rcx
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rsi, rax
	call	group_number
	mov	qword ptr [rbp - 0x50], rax
.label_425:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x80
	cmp	eax, 0
	je	.label_398
	cmp	dword ptr [rbp - 0x40], 0
	jge	.label_409
	mov	dword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x118], 1
.label_422:
	mov	rax, qword ptr [rbp - 0x118]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_415
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, 1
	mov	dword ptr [rbp - 0x40], eax
	cmp	eax, dword ptr [rbp - 0x44]
	jne	.label_421
	jmp	.label_415
.label_448:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_435
	mov	rax, qword ptr [rbp - 0x28]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	cmp	rdx, 0
	jne	.label_435
	mov	rax, qword ptr [rbp - 0x28]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rax, qword ptr [rbp - 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0xa8]
	imul	rdx, rdx, 0xa
	mov	qword ptr [rbp - 0xb0], rdx
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0xa8]
	shl	rdx, 1
	mov	qword ptr [rbp - 0xb8], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0xb0]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0xa8]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x3c], ecx
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xa8]
	jae	.label_433
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xb8]
	setb	dl
	and	dl, 1
	movzx	eax, dl
	mov	dword ptr [rbp - 0x14c], eax
	jmp	.label_437
.label_410:
	cmp	dword ptr [rbp - 0x2c], 0
	jne	.label_405
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x64]
	jge	.label_405
.label_411:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	mov	dword ptr [rbp - 0x64], 0
	cmp	dword ptr [rbp - 0x3c], 0xa
	jne	.label_418
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	dword ptr [rbp - 0x3c], 0
.label_418:
	jmp	.label_405
.label_405:
	cmp	qword ptr [rbp - 0x38], 0xa
	jae	.label_394
	cmp	dword ptr [rbp - 0x3c], 0
	jne	.label_399
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 8
	cmp	eax, 0
	jne	.label_394
.label_399:
	xor	eax, eax
	mov	ecx, eax
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 0x30
	mov	dl, al
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdi, rsi
	add	rdi, -1
	mov	qword ptr [rbp - 0x50], rdi
	mov	byte ptr [rsi - 1], dl
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdi, qword ptr [rbp - 0x50]
	sub	rcx, rsi
	add	rdi, rcx
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	call	memcpy
	mov	dword ptr [rbp - 0x64], 0
	mov	dword ptr [rbp - 0x3c], 0
.label_394:
	jmp	.label_406
.label_406:
	jmp	.label_420
.label_420:
	jmp	.label_414
.label_414:
	cmp	dword ptr [rbp - 0x2c], 1
	jne	.label_395
	mov	eax, 5
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, dword ptr [rbp - 0x3c]
	movsxd	rsi, dword ptr [rbp - 0x64]
	mov	rdi, qword ptr [rbp - 0x38]
	and	rdi, 1
	add	rsi, rdi
	cmp	rdx, rsi
	setb	r8b
	and	r8b, 1
	movzx	r9d, r8b
	add	ecx, r9d
	cmp	eax, ecx
	jl	.label_400
	jmp	.label_413
.label_415:
	jmp	.label_409
.label_409:
	mov	eax, dword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rbp - 0x14]
	and	ecx, 0x100
	or	eax, ecx
	cmp	eax, 0
	je	.label_417
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x40
	cmp	eax, 0
	je	.label_417
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	byte ptr [rax], 0x20
.label_417:
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_396
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x20
	cmp	eax, 0
	jne	.label_401
	cmp	dword ptr [rbp - 0x40], 1
	jne	.label_401
	mov	eax, 0x6b
	mov	dword ptr [rbp - 0x1dc], eax
	jmp	.label_408
.label_435:
	jmp	.label_444
.label_444:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x130], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	mov	eax, edx
	fld	dword ptr [dword ptr [+ (rax * 4) + label_446]]
	fild	qword ptr [rbp - 0x130]
	faddp	st(1)
	fld	st(0)
	fstp	xword ptr [rbp - 0xd0]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x120], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	mov	eax, edx
	fld	dword ptr [dword ptr [+ (rax * 4) + label_446]]
	fild	qword ptr [rbp - 0x120]
	faddp	st(1)
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x128], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	mov	eax, edx
	fld	dword ptr [dword ptr [+ (rax * 4) + label_446]]
	fild	qword ptr [rbp - 0x128]
	faddp	st(1)
	fdivrp	st(2)
	fmulp	st(1)
	fstp	xword ptr [rbp - 0xe0]
	mov	edx, dword ptr [rbp - 0x14]
	and	edx, 0x10
	cmp	edx, 0
	jne	.label_447
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0x2c]
	fld	xword ptr [rbp - 0xe0]
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	mov	qword ptr [rbp - 0x158], rdi
	mov	edi, eax
	call	adjust_value
	movabs	rcx, OFFSET FLAT:label_434
	mov	rdx, rsp
	fstp	xword ptr [rdx]
	mov	eax, OFFSET FLAT:label_434
	mov	esi, eax
	xor	eax, eax
	mov	r8b, al
	mov	rdi, qword ptr [rbp - 0x158]
	mov	al, r8b
	mov	qword ptr [rbp - 0x160], rcx
	call	sprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x164], eax
	call	strlen
	mov	qword ptr [rbp - 0xe8], rax
	mov	qword ptr [rbp - 0xf0], 0
	jmp	.label_430
.label_402:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x10
	cmp	eax, 0
	je	.label_414
	mov	dword ptr [rbp - 0x40], 0
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x38]
	ja	.label_420
	jmp	.label_403
.label_403:
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rbp - 0x30]
	mov	edx, ecx
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x1d0], rdx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x1d0]
	div	rsi
	imul	rdx, rdx, 0xa
	movsxd	rdi, dword ptr [rbp - 0x3c]
	add	rdx, rdi
	mov	ecx, edx
	mov	dword ptr [rbp - 0x104], ecx
	mov	ecx, dword ptr [rbp - 0x104]
	mov	eax, ecx
	xor	edx, edx
	div	dword ptr [rbp - 0x30]
	shl	edx, 1
	mov	ecx, dword ptr [rbp - 0x64]
	sar	ecx, 1
	add	edx, ecx
	mov	dword ptr [rbp - 0x108], edx
	mov	ecx, dword ptr [rbp - 0x30]
	mov	edi, ecx
	mov	r8, qword ptr [rbp - 0x38]
	mov	rax, r8
	xor	ecx, ecx
	mov	edx, ecx
	div	rdi
	mov	qword ptr [rbp - 0x38], rax
	mov	eax, dword ptr [rbp - 0x104]
	xor	ecx, ecx
	mov	edx, ecx
	div	dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x3c], eax
	mov	eax, dword ptr [rbp - 0x108]
	cmp	eax, dword ptr [rbp - 0x30]
	jae	.label_426
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, dword ptr [rbp - 0x64]
	cmp	eax, 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	mov	dword ptr [rbp - 0x1d4], eax
	jmp	.label_427
.label_401:
	movsxd	rax, dword ptr [rbp - 0x40]
	movsx	ecx,  byte ptr [byte ptr [+ (rax * 1) + power_letter]]
	mov	dword ptr [rbp - 0x1dc], ecx
.label_408:
	mov	eax, dword ptr [rbp - 0x1dc]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x58], rsi
	mov	byte ptr [rdx], cl
.label_396:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x100
	cmp	eax, 0
	je	.label_412
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x20
	cmp	eax, 0
	je	.label_416
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_416
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	byte ptr [rax], 0x69
.label_416:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	byte ptr [rax], 0x42
.label_412:
	jmp	.label_398
.label_398:
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x50]
	add	rsp, 0x1f0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4058a5
	.globl sub_4058a5
	.type sub_4058a5, @function
sub_4058a5:

	nop	word ptr [rax + rax]
.label_428:
	jmp	.label_442
.label_442:
	jmp	.label_444
.label_447:
	fld1	
	fstp	xword ptr [rbp - 0x100]
	mov	dword ptr [rbp - 0x40], 0
.label_439:
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x138], rcx
	fild	qword ptr [rbp - 0x138]
	fld	xword ptr [rbp - 0x100]
	fmulp	st(1)
	fstp	xword ptr [rbp - 0x100]
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, 1
	mov	dword ptr [rbp - 0x40], eax
	fld	xword ptr [rbp - 0x100]
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x140], rcx
	fild	qword ptr [rbp - 0x140]
	fmulp	st(1)
	fld	xword ptr [rbp - 0xe0]
	xor	eax, eax
	mov	dl, al
	fucomip	st(1)
	fstp	st(0)
	mov	byte ptr [rbp - 0x165], dl
	jb	.label_431
	jmp	.label_441
.label_441:
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x44]
	setl	cl
	mov	byte ptr [rbp - 0x165], cl
.label_431:
	mov	al, byte ptr [rbp - 0x165]
	test	al, 1
	jne	.label_439
	fld	xword ptr [rbp - 0x100]
	fld	xword ptr [rbp - 0xe0]
	fdivrp	st(1)
	fld	st(0)
	fstp	xword ptr [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	mov	qword ptr [rbp - 0x170], rdi
	mov	edi, eax
	call	adjust_value
	movabs	rcx, OFFSET FLAT:label_445
	mov	rdx, rsp
	fstp	xword ptr [rdx]
	mov	eax, OFFSET FLAT:label_445
	mov	esi, eax
	xor	eax, eax
	mov	r8b, al
	mov	rdi, qword ptr [rbp - 0x170]
	mov	al, r8b
	mov	qword ptr [rbp - 0x178], rcx
	call	sprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x17c], eax
	call	strlen
	mov	qword ptr [rbp - 0xe8], rax
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0xf0], rax
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, 1
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 0x20
	cmp	r9d, 0
	setne	r8b
	xor	r8b, 0xff
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rcx, r9d
	add	rax, rcx
	cmp	rax, qword ptr [rbp - 0xe8]
	jb	.label_436
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 8
	cmp	eax, 0
	je	.label_432
	mov	rax, qword ptr [rbp - 0xe8]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x30
	jne	.label_432
.label_436:
	movabs	rax, OFFSET FLAT:label_434
	mov	ecx, 0xa
	mov	edx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x2c]
	fld	xword ptr [rbp - 0xe0]
	fld	dword ptr [dword ptr [rip + label_443]]
	fmul	st(1), st(0)
	mov	rsi, rsp
	fxch	st(1)
	fstp	xword ptr [rsi]
	mov	qword ptr [rbp - 0x188], rdi
	mov	edi, ecx
	mov	qword ptr [rbp - 0x190], rax
	mov	qword ptr [rbp - 0x198], rdx
	fstp	xword ptr [rbp - 0x1a4]
	call	adjust_value
	fld	st(0)
	fld	xword ptr [rbp - 0x1a4]
	fdivp	st(2)
	mov	rax, rsp
	fxch	st(1)
	fstp	xword ptr [rax]
	mov	ecx, OFFSET FLAT:label_434
	mov	esi, ecx
	xor	ecx, ecx
	mov	r8b, cl
	mov	rdi, qword ptr [rbp - 0x188]
	mov	al, r8b
	fstp	xword ptr [rbp - 0x1b0]
	call	sprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x1b4], eax
	call	strlen
	mov	qword ptr [rbp - 0xe8], rax
	mov	qword ptr [rbp - 0xf0], 0
.label_432:
	jmp	.label_430
.label_430:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsi, rcx
	sub	rsi, qword ptr [rbp - 0xe8]
	add	rdx, rsi
	mov	qword ptr [rbp - 0x50], rdx
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0x1c0], rcx
	call	memmove
	mov	rcx, qword ptr [rbp - 0x50]
	add	rcx, qword ptr [rbp - 0xe8]
	mov	rdx, qword ptr [rbp - 0x1c0]
	sub	rdx, qword ptr [rbp - 0xf0]
	add	rcx, rdx
	mov	qword ptr [rbp - 0x60], rcx
	mov	qword ptr [rbp - 0x1c8], rax
	jmp	.label_424
.label_426:
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rbp - 0x108]
	add	ecx, dword ptr [rbp - 0x64]
	cmp	eax, ecx
	setb	dl
	and	dl, 1
	movzx	eax, dl
	add	eax, 2
	mov	dword ptr [rbp - 0x1d4], eax
.label_427:
	mov	eax, dword ptr [rbp - 0x1d4]
	mov	dword ptr [rbp - 0x64], eax
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, 1
	mov	dword ptr [rbp - 0x40], eax
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x30]
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x38]
	mov	byte ptr [rbp - 0x1d5], cl
	ja	.label_423
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x44]
	setl	cl
	mov	byte ptr [rbp - 0x1d5], cl
.label_423:
	mov	al, byte ptr [rbp - 0x1d5]
	test	al, 1
	jne	.label_403
	cmp	qword ptr [rbp - 0x38], 0xa
	jae	.label_406
	cmp	dword ptr [rbp - 0x2c], 1
	jne	.label_410
	mov	eax, 2
	mov	ecx, dword ptr [rbp - 0x64]
	mov	edx, dword ptr [rbp - 0x3c]
	and	edx, 1
	add	ecx, edx
	cmp	eax, ecx
	jl	.label_411
	jmp	.label_405
.label_421:
	jmp	.label_419
.label_419:
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, eax
	imul	rcx, qword ptr [rbp - 0x118]
	mov	qword ptr [rbp - 0x118], rcx
	jmp	.label_422
.label_450:
	xor	eax, eax
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_449
.label_449:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405c03
	.globl sub_405c03
	.type sub_405c03, @function
sub_405c03:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c11

	.globl randread_free
	.type randread_free, @function
randread_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 0x1038
	mov	esi, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	explicit_bzero
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rsi
	call	free
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_450
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_449
	.section	.text
	.align	16
	#Procedure 0x405c60

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_451
	jmp	.label_453
.label_453:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_452
.label_451:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_452:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405c97
	.globl sub_405c97
	.type sub_405c97, @function
sub_405c97:

	nop	word ptr [rax + rax]
.label_463:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_457
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_460
	movabs	rax, OFFSET FLAT:label_461
	movabs	rcx, OFFSET FLAT:label_462
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_456
	.section	.text
	.align	16
	#Procedure 0x405cf0

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	call	gettext
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_463
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_456
.label_460:
	movabs	rsi, OFFSET FLAT:label_458
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_459
	movabs	rax, OFFSET FLAT:label_454
	movabs	rcx, OFFSET FLAT:label_455
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_456
.label_459:
	movabs	rax, OFFSET FLAT:label_43
	movabs	rcx, OFFSET FLAT:label_84
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_456:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405d98
	.globl sub_405d98
	.type sub_405d98, @function
sub_405d98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405da0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_464
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_465
.label_464:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_465
.label_465:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405ddb
	.globl sub_405ddb
	.type sub_405ddb, @function
sub_405ddb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405de0

	.globl randint_choose
	.type randint_choose, @function
randint_choose:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	sub	rsi, 1
	call	randint_genmax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405e07
	.globl sub_405e07
	.type sub_405e07, @function
sub_405e07:

	nop	word ptr [rax + rax]
.label_467:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_466
.label_466:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405e2e
	.globl sub_405e2e
	.type sub_405e2e, @function
sub_405e2e:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e37
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	esi, dword ptr [rbp - 0xc]
	cmp	qword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0x10], esi
	je	.label_467
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_466
	.section	.text
	.align	16
	#Procedure 0x405e60
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quote_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405e87
	.globl sub_405e87
	.type sub_405e87, @function
sub_405e87:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e90

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rax, [rbp - 0x80]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rax, [rbp - 0x48]
	mov	esi, 0x3a
	mov	edx, 1
	mov	ecx, 0x38
	mov	edi, ecx
	lea	r8, [rbp - 0x80]
	mov	r9, rax
	mov	qword ptr [rbp - 0x88], rdi
	mov	rdi, r9
	mov	dword ptr [rbp - 0x8c], esi
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x90], edx
	mov	rdx, r8
	mov	qword ptr [rbp - 0x98], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x98]
	mov	esi, dword ptr [rbp - 0x8c]
	mov	edx, dword ptr [rbp - 0x90]
	call	set_char_quoting
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x9c], eax
	call	quotearg_n_options
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405f3d
	.globl sub_405f3d
	.type sub_405f3d, @function
sub_405f3d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405f40

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdx, -1
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405f72
	.globl sub_405f72
	.type sub_405f72, @function
sub_405f72:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f80

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0x14
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi], 0
	cmp	qword ptr [rbp - 8], 0
	jae	.label_468
	jmp	.label_471
.label_471:
	mov	eax, 0x30
	mov	ecx, eax
	mov	eax, 0xa
	mov	edx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	esi, esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	edx, esi
	mov	rdi, qword ptr [rbp - 0x20]
	div	rdi
	sub	rcx, rdx
	mov	r8b, cl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], r8b
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_471
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_470
.label_468:
	jmp	.label_469
.label_469:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	add	rdx, 0x30
	mov	sil, dl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_469
	jmp	.label_470
.label_470:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406077
	.globl sub_406077
	.type sub_406077, @function
sub_406077:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406080
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edx, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4060a8
	.globl sub_4060a8
	.type sub_4060a8, @function
sub_4060a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060b0

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	esi, eax
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0xc], eax
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4060db
	.globl sub_4060db
	.type sub_4060db, @function
sub_4060db:

	nop	dword ptr [rax + rax]
.label_472:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4060ea
	.globl sub_4060ea
	.type sub_4060ea, @function
sub_4060ea:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060f6

	.globl base_len
	.type base_len, @function
base_len:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	mov	qword ptr [rbp - 0x10], rax
.label_475:
	xor	eax, eax
	mov	cl, al
	mov	eax, 1
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x19], cl
	jae	.label_473
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	mov	byte ptr [rbp - 0x19], sil
.label_473:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_474
	jmp	.label_472
.label_474:
	jmp	.label_476
.label_476:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_475
	.section	.text
	.align	16
	#Procedure 0x406170

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x58
	mov	eax, dword ptr [rbp + 0x10]
	xor	r10d, r10d
	mov	r11d, r10d
	lea	rbx, [rbp - 0x48]
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	dword ptr [rbp - 0x3c], eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	r8, qword ptr [rbp - 0x30]
	mov	rsi, r11
	mov	rcx, rbx
	call	xstrtoumax
	mov	dword ptr [rbp - 0x40], eax
	cmp	dword ptr [rbp - 0x40], 0
	jne	.label_490
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_478
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x48]
	jae	.label_487
.label_478:
	mov	dword ptr [rbp - 0x40], 1
	cmp	qword ptr [rbp - 0x48], 0x3fffffff
	jbe	.label_485
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_491
.label_477:
	cmp	dword ptr [rbp - 0x40], 3
	jne	.label_479
	call	__errno_location
	mov	dword ptr [rax], 0
.label_479:
	jmp	.label_482
.label_482:
	jmp	.label_484
.label_484:
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_486
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_481
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_480
.label_481:
	mov	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_480
.label_480:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x50], eax
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_483
	xor	eax, eax
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_489
.label_485:
	call	__errno_location
	mov	dword ptr [rax], 0x22
.label_491:
	jmp	.label_487
.label_487:
	jmp	.label_484
.label_490:
	cmp	dword ptr [rbp - 0x40], 1
	jne	.label_477
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_482
.label_483:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], ecx
.label_489:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x60], rcx
	call	quote
	movabs	rdx, OFFSET FLAT:label_488
	mov	edi, dword ptr [rbp - 0x50]
	mov	esi, dword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	r8, rax
	mov	al, 0
	call	error
.label_486:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x58
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4062e6
	.globl sub_4062e6
	.type sub_4062e6, @function
sub_4062e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4062f0

	.globl simple_new
	.type simple_new, @function
simple_new:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 0x1038
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, rcx
	call	xmalloc
	movabs	rcx, OFFSET FLAT:randread_error
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 8], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406346
	.globl sub_406346
	.type sub_406346, @function
sub_406346:

	nop	word ptr cs:[rax + rax]
.label_492:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40635a
	.globl sub_40635a
	.type sub_40635a, @function
sub_40635a:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40635c

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_492
	cmp	qword ptr [rbp - 8], 0
	je	.label_492
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406390

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_493
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4063c0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	esi, esi
	mov	edx, 3
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	mov	al, 0
	call	rpl_fcntl
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4063e2
	.globl sub_4063e2
	.type sub_4063e2, @function
sub_4063e2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4063f0

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x800]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x808]
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x810]
	add	rax, 1
	mov	qword ptr [rdi + 0x810], rax
	add	rsi, rax
	mov	qword ptr [rbp - 0x20], rsi
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_495:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 0x15
	xor	rax, rcx
	xor	rax, 0xffffffffffffffff
	xor	rax, 0
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx + 0x400]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x38]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x40]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xb8], rax
	call	just
	shr	rax, 5
	mov	rcx, qword ptr [rbp - 0xb8]
	xor	rcx, rax
	xor	rcx, 0
	mov	rax, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rax + 0x408]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x50], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x50]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 0xc
	xor	rax, rcx
	xor	rax, 0
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx + 0x410]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x58]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x60], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x10], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x60]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc0], rax
	call	just
	shr	rax, 0x21
	mov	rcx, qword ptr [rbp - 0xc0]
	xor	rcx, rax
	xor	rcx, 0
	mov	rax, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rax + 0x418]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x68]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x70], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x18], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x70]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x68]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x20
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x20
	mov	qword ptr [rbp - 0x28], rax
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x400
	cmp	rax, rcx
	jb	.label_495
	jmp	.label_494
.label_494:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 0x15
	xor	rax, rcx
	xor	rax, 0xffffffffffffffff
	xor	rax, 0
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx - 0x400]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x78], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x78]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x80], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x80]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc8], rax
	call	just
	shr	rax, 5
	mov	rcx, qword ptr [rbp - 0xc8]
	xor	rcx, rax
	xor	rcx, 0
	mov	rax, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rax - 0x3f8]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x88], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x88]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x90], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x90]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 0xc
	xor	rax, rcx
	xor	rax, 0
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx - 0x3f0]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x98], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x98]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x10], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0xa0]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x98]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xd0], rax
	call	just
	shr	rax, 0x21
	mov	rcx, qword ptr [rbp - 0xd0]
	xor	rcx, rax
	xor	rcx, 0
	mov	rax, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rax - 0x3e8]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0xa8]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x18], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0xb0]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0xa8]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x20
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x20
	mov	qword ptr [rbp - 0x28], rax
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x800
	cmp	rax, rcx
	jb	.label_494
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x800], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x808], rax
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406921
	.globl sub_406921
	.type sub_406921, @function
sub_406921:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406930
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 8], rsi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40694a
	.globl sub_40694a
	.type sub_40694a, @function
sub_40694a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406950

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi]
	and	eax, 0x100
	cmp	eax, 0
	je	.label_496
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_496:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40698b
	.globl sub_40698b
	.type sub_40698b, @function
sub_40698b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406990

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	al, dl
	lea	rcx, [rbp - 0x50]
	mov	edx, 1
	movabs	r8, OFFSET FLAT:default_quoting_options
	mov	r9d, 0x38
	mov	r10d, r9d
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x11], al
	mov	rsi, rcx
	mov	rdi, rsi
	mov	rsi, r8
	mov	dword ptr [rbp - 0x54], edx
	mov	rdx, r10
	mov	qword ptr [rbp - 0x60], rcx
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	movsx	esi, byte ptr [rbp - 0x11]
	mov	edx, dword ptr [rbp - 0x54]
	call	set_char_quoting
	xor	edi, edi
	lea	rcx, [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x64], eax
	call	quotearg_n_options
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406a05
	.globl sub_406a05
	.type sub_406a05, @function
sub_406a05:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a10

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	call	argmatch
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jl	.label_498
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_497
.label_498:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	call	argmatch_invalid
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	call	argmatch_valid
	call	qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], -1
.label_497:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406a98
	.globl sub_406a98
	.type sub_406a98, @function
sub_406a98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406aa0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x240
	test	al, al
	movaps	xmmword ptr [rbp - 0x100], xmm7
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	dword ptr [rbp - 0x174], edi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	dword ptr [rbp - 0x19c], esi
	je	.label_507
	movaps	xmm0, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm7
.label_507:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0xd8], rdx
	mov	rsi, qword ptr [rbp - 0x198]
	mov	qword ptr [rbp - 0xe0], rsi
	mov	edi, dword ptr [rbp - 0x19c]
	mov	r8d, dword ptr [rbp - 0x174]
	mov	dword ptr [rbp - 4], r8d
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 0x24], 0xffffffff
	lea	r9, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x10], r9
	lea	r9, [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], r9
	mov	dword ptr [rbp - 0x1c], 0x30
	mov	dword ptr [rbp - 0x20], 0x10
	mov	edi, dword ptr [rbp - 8]
	test	edi, edi
	mov	dword ptr [rbp - 0x1a0], edi
	je	.label_525
	jmp	.label_522
.label_522:
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_499
	jmp	.label_504
.label_504:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	mov	dword ptr [rbp - 0x1dc], eax
	je	.label_500
	jmp	.label_508
.label_508:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	mov	dword ptr [rbp - 0x1e0], eax
	je	.label_501
	jmp	.label_514
.label_514:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_500
	jmp	.label_520
.label_520:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	mov	dword ptr [rbp - 0x1e8], eax
	je	.label_501
	jmp	.label_527
.label_527:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	mov	dword ptr [rbp - 0x1ec], eax
	je	.label_500
	jmp	.label_503
.label_503:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	je	.label_500
	jmp	.label_509
.label_509:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_501
	jmp	.label_515
.label_515:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_500
	jmp	.label_521
.label_521:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xb
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_501
	jmp	.label_529
.label_529:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	dword ptr [rbp - 0x200], eax
	je	.label_500
	jmp	.label_526
.label_526:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_501
	jmp	.label_511
.label_511:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x402
	mov	dword ptr [rbp - 0x208], eax
	je	.label_500
	jmp	.label_517
.label_517:
	mov	eax, dword ptr [rbp - 0x1dc]
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_500
	jmp	.label_523
.label_523:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	jne	.label_524
	jmp	.label_501
.label_501:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_506
.label_502:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x240], rdx
.label_516:
	mov	rax, qword ptr [rbp - 0x240]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
.label_506:
	jmp	.label_510
.label_510:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x240
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406df7
	.globl sub_406df7
	.type sub_406df7, @function
sub_406df7:

	nop	dword ptr [rax + rax]
.label_512:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_518:
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x2c]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_510
.label_499:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1c8], rax
	mov	dword ptr [rbp - 0x1cc], ecx
	ja	.label_512
	mov	eax, dword ptr [rbp - 0x1cc]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1d8], rcx
	jmp	.label_518
.label_500:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	dword ptr [rbp - 0x21c], ecx
	ja	.label_528
	mov	eax, dword ptr [rbp - 0x21c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x218]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x228], rcx
	jmp	.label_505
.label_513:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_519:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_510
.label_524:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x230], rax
	mov	dword ptr [rbp - 0x234], ecx
	ja	.label_502
	mov	eax, dword ptr [rbp - 0x234]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x230]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x240], rcx
	jmp	.label_516
.label_525:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_513
	mov	eax, dword ptr [rbp - 0x1b4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1c0], rcx
	jmp	.label_519
.label_528:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x228], rdx
.label_505:
	mov	rax, qword ptr [rbp - 0x228]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x30]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_506
	.section	.text
	.align	16
	#Procedure 0x406fc0
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], 0
.label_532:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_530
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x30]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_534
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_533
.label_534:
	jmp	.label_531
.label_531:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_532
.label_530:
	mov	qword ptr [rbp - 8], 0
.label_533:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407059
	.globl sub_407059
	.type sub_407059, @function
sub_407059:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407060
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_535
	jmp	.label_537
.label_537:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_536
.label_535:
	mov	byte ptr [rbp - 1], 0
.label_536:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407092
	.globl sub_407092
	.type sub_407092, @function
sub_407092:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4070a0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_style_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4070cd
	.globl sub_4070cd
	.type sub_4070cd, @function
sub_4070cd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4070d0

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, 0x98f5704f6c44c0ab
	movabs	rcx, 0xae985bf2cbfc89ed
	movabs	rdx, 0x48fe4a0fa5a09315
	movabs	rsi, 0x82f053db8355e0ce
	movabs	r8, 0xb29b2e824a595524
	movabs	r9, 0x8c0ea5053d4712a0
	movabs	r10, 0xb9f8b322c73ac862
	movabs	r11, 0x647c4677a2884b7c
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], r11
	mov	qword ptr [rbp - 0x18], r10
	mov	qword ptr [rbp - 0x20], r9
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x38], rdx
	mov	qword ptr [rbp - 0x40], rcx
	mov	qword ptr [rbp - 0x48], rax
	mov	dword ptr [rbp - 0x4c], 0
.label_540:
	cmp	dword ptr [rbp - 0x4c], 0x100
	jge	.label_541
	movsxd	rax, dword ptr [rbp - 0x4c]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 1
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 2
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 3
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 4
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 5
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 6
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 7
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 0x48]
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 9
	xor	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	just
	shr	rax, 0x17
	xor	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x28], rcx
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 0xf
	xor	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x30], rcx
	mov	rdi, qword ptr [rbp - 0x28]
	call	just
	shr	rax, 0xe
	xor	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x38], rcx
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 0x14
	xor	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x40], rcx
	mov	rdi, qword ptr [rbp - 0x38]
	call	just
	shr	rax, 0x11
	xor	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x48], rcx
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 0xe
	xor	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 0x4c]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 1
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 2
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 3
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 4
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 5
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 6
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 7
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	eax, dword ptr [rbp - 0x4c]
	add	eax, 8
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_540
.label_538:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x810], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x808], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x800], 0
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407473
	.globl sub_407473
	.type sub_407473, @function
sub_407473:

	nop	word ptr [rax + rax]
.label_541:
	mov	dword ptr [rbp - 0x50], 0
.label_539:
	cmp	dword ptr [rbp - 0x50], 0x100
	jge	.label_538
	movsxd	rax, dword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 1
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 2
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 3
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 4
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 5
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 6
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 0x48]
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 9
	xor	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	just
	shr	rax, 0x17
	xor	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x28], rcx
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 0xf
	xor	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x30], rcx
	mov	rdi, qword ptr [rbp - 0x28]
	call	just
	shr	rax, 0xe
	xor	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x38], rcx
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 0x14
	xor	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x40], rcx
	mov	rdi, qword ptr [rbp - 0x38]
	call	just
	shr	rax, 0x11
	xor	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x48], rcx
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 0xe
	xor	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 1
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 2
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 3
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 4
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 5
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 6
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	eax, dword ptr [rbp - 0x50]
	add	eax, 8
	mov	dword ptr [rbp - 0x50], eax
	jmp	.label_539
.label_551:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_548:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407782
	.globl sub_407782
	.type sub_407782, @function
sub_407782:

	nop	word ptr cs:[rax + rax]
.label_546:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_544
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_547
.label_544:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_550
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x40]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	imul	rdx, qword ptr [rbp - 0x30]
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdi, rax
	mov	rsi, rcx
	call	memcmp
	cmp	eax, 0
	je	.label_549
.label_550:
	mov	byte ptr [rbp - 0x41], 1
.label_549:
	jmp	.label_547
.label_547:
	jmp	.label_553
.label_553:
	jmp	.label_545
.label_545:
	jmp	.label_552
.label_552:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_543
	.section	.text
	.align	16
	#Procedure 0x407813

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x40], -1
	mov	byte ptr [rbp - 0x41], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x30], 0
.label_543:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_542
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	call	strncmp
	cmp	eax, 0
	jne	.label_545
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_546
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_548
.label_542:
	test	byte ptr [rbp - 0x41], 1
	je	.label_551
	mov	qword ptr [rbp - 8], -2
	jmp	.label_548
.label_554:
	mov	byte ptr [rbp - 1], 0
.label_562:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4078d2
	.globl sub_4078d2
	.type sub_4078d2, @function
sub_4078d2:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4078e0

	.globl incname
	.type incname, @function
incname:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
.label_557:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	cmp	rax, 0
	je	.label_554
	movabs	rdi, OFFSET FLAT:nameset
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rcx + rax]
	call	strchr
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_555
	jmp	.label_561
.label_555:
	movabs	rdi, OFFSET FLAT:label_558
	movabs	rsi, OFFSET FLAT:label_559
	mov	edx, 0x40c
	movabs	rcx, OFFSET FLAT:label_560
	call	__assert_fail
.label_561:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax + 1], 0
	je	.label_556
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax + 1]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + rax], cl
	mov	byte ptr [rbp - 1], 1
	jmp	.label_562
.label_556:
	mov	al,  byte ptr [byte ptr [nameset]]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + rcx], al
	jmp	.label_557
	.section	.text
	.align	16
	#Procedure 0x4079a0

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_563
	call	xalloc_die
.label_563:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4079e8
	.globl sub_4079e8
	.type sub_4079e8, @function
sub_4079e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4079f0

	.globl randint_free
	.type randint_free, @function
randint_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0x18
	mov	esi, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	explicit_bzero
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rsi
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407a1e
	.globl sub_407a1e
	.type sub_407a1e, @function
sub_407a1e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x407a20

	.globl known
	.type known, @function
known:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	cmp	rcx, qword ptr [rbp - 8]
	setle	dl
	and	dl, 1
	movzx	eax, dl
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407a3b
	.globl sub_407a3b
	.type sub_407a3b, @function
sub_407a3b:

	nop	dword ptr [rax + rax]
.label_579:
	movabs	rdi, OFFSET FLAT:label_564
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_571
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_565
	mov	dword ptr [rbp - 0x1c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x20], eax
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:label_573
	call	gettext
	mov	esi, 3
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_566
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_567
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_570
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_574
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_568
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_575
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_569
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_576
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_572
	mov	dword ptr [rbp - 0x44], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_255
	mov	dword ptr [rbp - 0x48], eax
	call	emit_ancillary_info
.label_577:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x407c17
	.globl sub_407c17
	.type sub_407c17, @function
sub_407c17:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c1d

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_579
	jmp	.label_578
.label_578:
	movabs	rdi, OFFSET FLAT:label_580
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_577
	.section	.text
	.align	16
	#Procedure 0x407c70

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	esi, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	quotearg_char
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407c90
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 1
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	x2nrealloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407cba
	.globl sub_407cba
	.type sub_407cba, @function
sub_407cba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407cc0

	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407cd1
	.globl sub_407cd1
	.type sub_407cd1, @function
sub_407cd1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ce0

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_581
	cmp	dword ptr [rbp - 4], 2
	jg	.label_581
	mov	edi, dword ptr [rbp - 4]
	call	dup_safer
	mov	dword ptr [rbp - 8], eax
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], edi
	mov	edi, dword ptr [rbp - 4]
	call	close
	mov	edi, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	mov	dword ptr [rbp - 0x14], edi
	call	__errno_location
	mov	edi, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], edi
	mov	edi, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], edi
.label_581:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407d3f
	.globl sub_407d3f
	.type sub_407d3f, @function
sub_407d3f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x407d40
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_582
	jmp	.label_584
.label_584:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_583
.label_582:
	mov	byte ptr [rbp - 1], 0
.label_583:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407d72
	.globl sub_407d72
	.type sub_407d72, @function
sub_407d72:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d80

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rbp - 0x28]
	jne	.label_585
	mov	dword ptr [rbp - 4], 0
	jmp	.label_589
.label_587:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_586
.label_588:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_589:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407df8
	.globl sub_407df8
	.type sub_407df8, @function
sub_407df8:

	nop	word ptr cs:[rax + rax]
.label_585:
	jmp	.label_586
.label_586:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	edi, byte ptr [rax]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	mov	rdx, qword ptr [rbp - 0x28]
	movzx	edi, byte ptr [rdx]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x2a], cl
	movzx	eax, byte ptr [rbp - 0x29]
	cmp	eax, 0
	jne	.label_587
	jmp	.label_588
	.section	.text
	.align	16
	#Procedure 0x407e40

	.globl shift_left
	.type shift_left, @function
shift_left:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	shl	rdi, 8
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407e55
	.globl sub_407e55
	.type sub_407e55, @function
sub_407e55:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407e60
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x10], rax
	call	memset
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407e91
	.globl sub_407e91
	.type sub_407e91, @function
sub_407e91:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ea0

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_590
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_590:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_591
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_591
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_591
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_592
.label_591:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_592:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407f41
	.globl sub_407f41
	.type sub_407f41, @function
sub_407f41:

	nop	word ptr cs:[rax + rax]
.label_594:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407f5a
	.globl sub_407f5a
	.type sub_407f5a, @function
sub_407f5a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407f64
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jb	.label_593
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_594
.label_593:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x407fb0
	.globl human_options
	.type human_options, @function
human_options:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	call	humblock
	mov	dword ptr [rbp - 0x1c], eax
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	jne	.label_595
	call	default_block_size
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 0x1c], 4
.label_595:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408002
	.globl sub_408002
	.type sub_408002, @function
sub_408002:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408010

	.globl ptr_align
	.type ptr_align, @function
ptr_align:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, qword ptr [rbp - 0x10]
	add	rsi, -1
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x20]
	xor	edx, edx
	div	qword ptr [rbp - 0x10]
	sub	rcx, rdx
	add	rsi, rcx
	mov	rax, rsi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408051
	.globl sub_408051
	.type sub_408051, @function
sub_408051:

	nop	word ptr cs:[rax + rax]
.label_597:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_600
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
.label_601:
	jmp	.label_603
.label_603:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_596
.label_602:
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x50], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4080cc

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:label_604
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, rax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	qword ptr [rbp - 0x20], 0
	mov	dword ptr [rbp - 0x2c], eax
.label_596:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_602
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_598
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rcx, qword ptr [rbp - 0x20]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	je	.label_597
.label_598:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_599
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	imul	rdx, qword ptr [rbp - 0x20]
	add	rcx, rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_601
	.section	.text
	.align	16
	#Procedure 0x4081b0

	.globl ind
	.type ind, @function
ind:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x10]
	and	rdi, 0x7f8
	add	rsi, rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4081f3
	.globl sub_4081f3
	.type sub_4081f3, @function
sub_4081f3:

	nop	word ptr cs:[rax + rax]
.label_605:
	mov	byte ptr [rbp - 1], 0
.label_608:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40820e
	.globl sub_40820e
	.type sub_40820e, @function
sub_40820e:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408213
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -9
	sub	eax, 5
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_606
	jmp	.label_607
.label_607:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_605
	jmp	.label_606
.label_606:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_608
	.section	.text
	.align	16
	#Procedure 0x408250

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	randread_new
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_610
	mov	rdi, qword ptr [rbp - 0x18]
	call	randint_new
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_609
.label_610:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_609
.label_609:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4082a5
	.globl sub_4082a5
	.type sub_4082a5, @function
sub_4082a5:

	nop	word ptr cs:[rax + rax]
.label_613:
	movabs	rdi, OFFSET FLAT:label_611
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_614:
	mov	rax, qword ptr [rbp - 0x28]
	xor	edi, edi
	mov	esi, 8
	mov	qword ptr [rbp - 0x20], rax
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, rax
	call	quotearg_n_style
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
	call	quote_n
	xor	edi, edi
	mov	dword ptr [rbp - 0x3c], edi
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	r8, rax
	mov	al, 0
	call	error
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408318
	.globl sub_408318
	.type sub_408318, @function
sub_408318:

	nop	
	.section	.text
	.align	16
	#Procedure 0x408319

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x18], -1
	jne	.label_613
	movabs	rdi, OFFSET FLAT:label_612
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_614
.label_619:
	movabs	rdi, OFFSET FLAT:label_615
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
.label_617:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	call	quote
	mov	edi, dword ptr [rbp - 0xc]
	mov	esi, dword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_618:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40838d
	.globl sub_40838d
	.type sub_40838d, @function
sub_40838d:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40838f

	.globl randread_error
	.type randread_error, @function
randread_error:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_618
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 0xc], edi
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], esi
	call	__errno_location
	cmp	dword ptr [rax], 0
	jne	.label_619
	movabs	rdi, OFFSET FLAT:label_616
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_617
.label_625:
	jmp	.label_620
.label_620:
	jmp	.label_623
.label_623:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_621:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4083fc
	.globl sub_4083fc
	.type sub_4083fc, @function
sub_4083fc:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4083fd

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fopen
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_623
	mov	rdi, qword ptr [rbp - 0x20]
	call	fileno
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x24], eax
	cmp	ecx, dword ptr [rbp - 0x24]
	jg	.label_620
	cmp	dword ptr [rbp - 0x24], 2
	jg	.label_620
	mov	edi, dword ptr [rbp - 0x24]
	call	dup_safer
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	jge	.label_622
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	rdi, qword ptr [rbp - 0x20]
	call	rpl_fclose
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x34], eax
	mov	dword ptr [rbp - 0x38], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x38]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_621
.label_622:
	mov	rdi, qword ptr [rbp - 0x20]
	call	rpl_fclose
	cmp	eax, 0
	jne	.label_624
	mov	edi, dword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fdopen
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jne	.label_625
.label_624:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 0x28]
	call	close
	mov	ecx, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x3c], eax
	mov	dword ptr [rbp - 0x40], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x40]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_621
.label_628:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_626
.label_626:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, 1
	xor	esi, esi
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], edi
	mov	rax, qword ptr [rbp - 0x30]
	mov	edi, dword ptr [rax + 4]
	cmp	qword ptr [rbp - 0x20], 0
	cmovne	ecx, esi
	or	edi, ecx
	mov	dword ptr [rbp - 0x38], edi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [r8]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	r10, qword ptr [rbp - 0x30]
	add	r10, 8
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x28]
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rbx, qword ptr [rbx + 0x30]
	mov	rdi, rdx
	mov	rsi, rdx
	mov	rdx, rax
	mov	qword ptr [rsp], r10
	mov	qword ptr [rsp + 8], r11
	mov	qword ptr [rsp + 0x10], rbx
	call	quotearg_buffer_restyled
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	r8d, dword ptr [rbp - 0x34]
	mov	qword ptr [rbp - 0x58], rax
	mov	dword ptr [rbp - 0x5c], r8d
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x5c]
	mov	dword ptr [rax], r8d
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_627
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_627:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408613
	.globl sub_408613
	.type sub_408613, @function
sub_408613:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40861f

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_628
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_626
.label_632:
	jmp	.label_629
.label_629:
	xor	eax, eax
	mov	esi, eax
	xor	edx, edx
	mov	edi, dword ptr [rbp - 8]
	call	lseek
	xor	edx, edx
	mov	esi, edx
	mov	qword ptr [rbp - 0x20], rax
	cmp	rsi, qword ptr [rbp - 0x20]
	jge	.label_630
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_630:
	cmp	qword ptr [rbp - 0x20], 0
	sete	al
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_631:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40869b
	.globl sub_40869b
	.type sub_40869b, @function
sub_40869b:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4086a4

	.globl dorewind
	.type dorewind, @function
dorewind:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rsi + 0x18]
	and	edi, 0xf000
	cmp	edi, 0x2000
	jne	.label_629
	mov	eax, 0x40086d01
	mov	esi, eax
	lea	rdx, [rbp - 0x18]
	mov	word ptr [rbp - 0x18], 6
	mov	dword ptr [rbp - 0x14], 1
	mov	edi, dword ptr [rbp - 8]
	mov	al, 0
	call	ioctl
	cmp	eax, 0
	jne	.label_632
	mov	byte ptr [rbp - 1], 1
	jmp	.label_631
.label_637:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_635
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x408722

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_637
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_633
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_637
.label_633:
	movabs	rdi, OFFSET FLAT:label_638
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_634
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_488
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_636
.label_634:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_265
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_636:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_635:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4087e7
	.globl sub_4087e7
	.type sub_4087e7, @function
sub_4087e7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4087f0
	.globl statat
	.type statat, @function
statat:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	ecx, ecx
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	fstatat
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40881b
	.globl sub_40881b
	.type sub_40881b, @function
sub_40881b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408820

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40883b
	.globl sub_40883b
	.type sub_40883b, @function
sub_40883b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408840

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rax, [rbp - 0x60]
	movabs	r9, OFFSET FLAT:default_quoting_options
	mov	r10d, 0x38
	mov	r11d, r10d
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, rax
	mov	rdi, rcx
	mov	rsi, r9
	mov	rdx, r11
	mov	qword ptr [rbp - 0x68], rax
	call	memcpy
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x68]
	call	set_custom_quoting
	lea	rcx, [rbp - 0x60]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	quotearg_n_options
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4088b2
	.globl sub_4088b2
	.type sub_4088b2, @function
sub_4088b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4088c0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_639
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_639:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0x10], ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 4], ecx
	mov	eax, dword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4088fd
	.globl sub_4088fd
	.type sub_4088fd, @function
sub_4088fd:

	nop	dword ptr [rax]
.label_640:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40890a
	.globl sub_40890a
	.type sub_40890a, @function
sub_40890a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408917

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	mdir_name
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_640
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x408940

	.globl randread
	.type randread, @function
randread:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	cmp	qword ptr [rdx], 0
	je	.label_641
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	readsource
	jmp	.label_642
.label_641:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	readisaac
.label_642:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408996
	.globl sub_408996
	.type sub_408996, @function
sub_408996:

	nop	word ptr cs:[rax + rax]
.label_643:
	mov	byte ptr [rbp - 1], 0
.label_646:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4089ae
	.globl sub_4089ae
	.type sub_4089ae, @function
sub_4089ae:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4089b9
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_644
	jmp	.label_645
.label_645:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_644
	jmp	.label_647
.label_647:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_643
	jmp	.label_644
.label_644:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_646
.label_650:
	mov	byte ptr [rbp - 1], 0
.label_649:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408a1e
	.globl sub_408a1e
	.type sub_408a1e, @function
sub_408a1e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x408a1f
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_650
	jmp	.label_648
.label_648:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_649
.label_676:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoumax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_669
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_673
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_673
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_673
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_679
.label_656:
	movabs	rdi, OFFSET FLAT:label_682
	movabs	rsi, OFFSET FLAT:label_683
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_684
	call	__assert_fail
.label_1067:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_651
.label_1066:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_651
.label_665:
	mov	dword ptr [rbp - 0x4c], 1
.label_663:
	jmp	.label_652
.label_652:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_654
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_658
.label_669:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_663
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_665
	mov	dword ptr [rbp - 4], 4
	jmp	.label_658
.label_679:
	jmp	.label_652
.label_670:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_659
	jmp	.label_674
.label_674:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_659
	jmp	.label_677
.label_677:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_659
	jmp	.label_681
.label_681:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_659
	jmp	.label_688
.label_688:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_659
	jmp	.label_672
.label_672:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_659
	jmp	.label_692
.label_692:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_659
	jmp	.label_661
.label_661:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_659
	jmp	.label_685
.label_685:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_659
	jmp	.label_662
.label_662:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_659
	jmp	.label_666
.label_666:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_690
	jmp	.label_659
.label_659:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_653
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_675
	jmp	.label_680
.label_680:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_675
	jmp	.label_687
.label_687:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_689
	jmp	.label_693
.label_693:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_691
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_691:
	jmp	.label_689
.label_675:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_689:
	jmp	.label_653
.label_653:
	jmp	.label_690
.label_690:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xc0], rax
	mov	dword ptr [rbp - 0xc4], ecx
	ja	.label_657
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_664]]
	jmp	rcx
.label_668:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_667
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_671
.label_1068:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_651
.label_667:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_671
.label_671:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_655:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_686
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_655
.label_1075:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_651
.label_1076:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_651
	.section	.text
	.align	16
	#Procedure 0x408e14

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_656
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_656
	jmp	.label_668
.label_1070:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_651
.label_1072:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_651
.label_686:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_676
	mov	dword ptr [rbp - 4], 4
	jmp	.label_658
.label_651:
	mov	eax, dword ptr [rbp - 0x68]
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx]
	cmp	byte ptr [rcx], 0
	je	.label_678
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_678:
	jmp	.label_660
.label_660:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_658:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408ef5
	.globl sub_408ef5
	.type sub_408ef5, @function
sub_408ef5:

	nop	dword ptr [rax + rax]
.label_673:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_658
.label_1073:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_651
.label_654:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_660
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_670
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_658
.label_1077:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_651
.label_657:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_658
.label_1071:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_651
.label_1074:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_651
.label_1069:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_651
	.section	.text
	.align	16
	#Procedure 0x408ff0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_694
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_694:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40901a
	.globl sub_40901a
	.type sub_40901a, @function
sub_40901a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409020

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edi, 0xe
	call	rpl_nl_langinfo
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_695
	movabs	rax, OFFSET FLAT:label_235
	mov	qword ptr [rbp - 8], rax
.label_695:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_696
	movabs	rax, OFFSET FLAT:label_697
	mov	qword ptr [rbp - 8], rax
.label_696:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409077
	.globl sub_409077
	.type sub_409077, @function
sub_409077:

	nop	word ptr [rax + rax]
.label_700:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_698
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_698
	call	xalloc_die
.label_698:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_699:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4090be
	.globl sub_4090be
	.type sub_4090be, @function
sub_4090be:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4090c4

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_700
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_700
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_699
	.section	.text
	.align	16
	#Procedure 0x409100
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_style
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409125
	.globl sub_409125
	.type sub_409125, @function
sub_409125:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409130

	.globl adjust_value
	.type adjust_value, @function
adjust_value:
	push	rbp
	mov	rbp, rsp
	fld	xword ptr [rbp + 0x10]
	mov	dword ptr [rbp - 4], edi
	fstp	xword ptr [rbp - 0x20]
	cmp	dword ptr [rbp - 4], 1
	je	.label_701
	fld	xword ptr [rbp - 0x20]
	fld	xword ptr [word ptr [rip + label_702]]
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_701
	jmp	.label_703
.label_703:
	xor	eax, eax
	mov	cl, al
	fld	xword ptr [rbp - 0x20]
	fld	dword ptr [dword ptr [rip + label_704]]
	fld	st(1)
	fsub	st(1)
	fnstcw	word ptr [rbp - 0x4a]
	mov	dx, word ptr [rbp - 0x4a]
	mov	word ptr [rbp - 0x4a], 0xc7f
	fldcw	word ptr [rbp - 0x4a]
	mov	word ptr [rbp - 0x4a], dx
	fistp	qword ptr [rbp - 0x30]
	fldcw	word ptr [rbp - 0x4a]
	fnstcw	word ptr [rbp - 0x4c]
	mov	dx, word ptr [rbp - 0x4c]
	mov	word ptr [rbp - 0x4c], 0xc7f
	fldcw	word ptr [rbp - 0x4c]
	mov	word ptr [rbp - 0x4c], dx
	fld	st(1)
	fistp	qword ptr [rbp - 0x38]
	fldcw	word ptr [rbp - 0x4c]
	mov	rsi, qword ptr [rbp - 0x30]
	movabs	rdi, 0x8000000000000000
	xor	rsi, rdi
	mov	rdi, qword ptr [rbp - 0x38]
	fucomip	st(1)
	fstp	st(0)
	cmova	rsi, rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	cmp	dword ptr [rbp - 4], 0
	mov	qword ptr [rbp - 0x58], rsi
	mov	byte ptr [rbp - 0x59], cl
	jne	.label_705
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x40], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	mov	eax, edx
	fld	dword ptr [dword ptr [+ (rax * 4) + label_446]]
	fild	qword ptr [rbp - 0x40]
	faddp	st(1)
	fld	xword ptr [rbp - 0x20]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	setp	cl
	setne	sil
	or	sil, cl
	mov	byte ptr [rbp - 0x59], sil
.label_705:
	mov	al, byte ptr [rbp - 0x59]
	and	al, 1
	movzx	ecx, al
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x58]
	add	rsi, rdx
	mov	qword ptr [rbp - 0x48], rsi
	setns	al
	movzx	ecx, al
	mov	edx, ecx
	fld	dword ptr [dword ptr [+ (rdx * 4) + label_446]]
	fild	qword ptr [rbp - 0x48]
	faddp	st(1)
	fstp	xword ptr [rbp - 0x20]
.label_701:
	fld	xword ptr [rbp - 0x20]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409243
	.globl sub_409243
	.type sub_409243, @function
sub_409243:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409250
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_custom
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40927f
	.globl sub_40927f
	.type sub_40927f, @function
sub_40927f:

	nop	
.label_707:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_711:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_710:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_712
	jmp	.label_706
.label_712:
	jmp	.label_708
.label_708:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_709
.label_706:
	lea	r8, [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40930c
	.globl sub_40930c
	.type sub_40930c, @function
sub_40930c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409313

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_709:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_710
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_707
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_711
	.section	.text
	.align	16
	#Procedure 0x409390

	.globl group_number
	.type group_number, @function
group_number:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	lea	rax, [rbp - 0x70]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x30], -1
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x80], rax
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0x80]
	call	memcpy
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_717:
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x71], cl
	cmp	byte ptr [rbp - 0x71], 0
	je	.label_716
	movzx	eax, byte ptr [rbp - 0x71]
	cmp	eax, 0x7f
	jge	.label_713
	movzx	eax, byte ptr [rbp - 0x71]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_715
.label_713:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x88], rax
.label_715:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_716:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_714
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x30], rax
.label_714:
	lea	rax, [rbp - 0x70]
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x28]
	sub	rdx, rsi
	add	rdi, rdx
	mov	qword ptr [rbp - 0x28], rdi
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x40]
	sub	rsi, rdx
	mov	qword ptr [rbp - 0x40], rsi
	mov	rdi, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, rax
	call	memcpy
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_718
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x90
	pop	rbp
	ret	
.label_718:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	sub	rcx, rdx
	add	rsi, rcx
	mov	qword ptr [rbp - 0x28], rsi
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x38]
	call	memcpy
	jmp	.label_717
	.section	.text
	.align	16
	#Procedure 0x4094d8
	.globl sub_4094d8
	.type sub_4094d8, @function
sub_4094d8:

	nop	dword ptr [rax + rax]
.label_725:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x10], rax
.label_720:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x820
	mov	rdi, rax
	mov	rsi, rcx
	call	isaac_refill
	mov	qword ptr [rbp - 0x20], 0x800
	jmp	.label_721
.label_719:
	jmp	.label_723
.label_724:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	add	rdx, 0x820
	add	rdx, 0x800
	sub	rcx, qword ptr [rbp - 0x20]
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsi, rdx
	mov	rdx, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x18], rdx
	mov	rcx, qword ptr [rbp - 0x10]
	and	rcx, 7
	cmp	rcx, 0
	jne	.label_720
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_723:
	mov	eax, 0x800
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x18]
	ja	.label_725
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	isaac_refill
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x800
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x800
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_719
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], 0
	jmp	.label_722
	.section	.text
	.align	16
	#Procedure 0x4095d9

	.globl readisaac
	.type readisaac, @function
readisaac:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x20], rdx
.label_721:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_724
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	add	rdx, 0x820
	add	rdx, 0x800
	sub	rcx, qword ptr [rbp - 0x20]
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, rdx
	mov	rdx, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx], rcx
	jmp	.label_722
.label_722:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409658
	.globl sub_409658
	.type sub_409658, @function
sub_409658:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409660

	.globl errno_fail
	.type errno_fail, @function
errno_fail:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 8], edi
	call	__errno_location
	mov	edi, 0xffffffff
	mov	ecx, dword ptr [rbp - 8]
	mov	dword ptr [rax], ecx
	mov	eax, edi
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409688
	.globl sub_409688
	.type sub_409688, @function
sub_409688:

	nop	dword ptr [rax + rax]
.label_726:
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x40], eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x50]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4096ba
	.globl sub_4096ba
	.type sub_4096ba, @function
sub_4096ba:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4096c6

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rax, rdi
	xor	ecx, ecx
	mov	edx, 0x38
	lea	r8, [rbp - 0x40]
	mov	dword ptr [rbp - 4], esi
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, r8
	mov	esi, ecx
	mov	qword ptr [rbp - 0x50], rax
	call	memset
	cmp	dword ptr [rbp - 4], 0xa
	jne	.label_726
	call	abort
	.section	.text
	.align	16
	#Procedure 0x409700

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	dir_len
	mov	cl, 1
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0x29], cl
	je	.label_727
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	jmp	.label_727
.label_727:
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	edx, al
	mov	esi, edx
	add	rcx, rsi
	add	rcx, 1
	mov	rdi, rcx
	call	malloc
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_729
	mov	qword ptr [rbp - 8], 0
	jmp	.label_728
.label_729:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcpy
	test	byte ptr [rbp - 0x19], 1
	je	.label_730
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0x2e
.label_730:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_728:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4097c6
	.globl sub_4097c6
	.type sub_4097c6, @function
sub_4097c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4097d0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [file_name]],  rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4097e6
	.globl sub_4097e6
	.type sub_4097e6, @function
sub_4097e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4097f0

	.globl readsource
	.type readsource, @function
readsource:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_732:
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	call	fread_unlocked
	mov	qword ptr [rbp - 0x20], rax
	call	__errno_location
	mov	r8d, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], r8d
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x18], rcx
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_733
	jmp	.label_734
.label_735:
	xor	eax, eax
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_731
.label_731:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x2c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx + 0x10]
	call	rax
	jmp	.label_732
.label_733:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_735
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_731
.label_734:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4098b1
	.globl sub_4098b1
	.type sub_4098b1, @function
sub_4098b1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4098c0

	.globl default_block_size
	.type default_block_size, @function
default_block_size:
	push	rbp
	mov	rbp, rsp
	movabs	rdi, OFFSET FLAT:label_736
	call	getenv
	mov	ecx, 0x400
	mov	edx, 0x200
	cmp	rax, 0
	cmovne	ecx, edx
	movsxd	rax, ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4098e9
	.globl sub_4098e9
	.type sub_4098e9, @function
sub_4098e9:

	nop	dword ptr [rax]
.label_743:
	mov	edi, dword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	do_wipefd
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	mov	edi, dword ptr [rbp - 0x30]
	call	close
	cmp	eax, 0
	je	.label_738
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_739
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x38], esi
	call	gettext
	xor	edi, edi
	mov	rcx, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x38]
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x29], 0
.label_738:
	test	byte ptr [rbp - 0x29], 1
	je	.label_737
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 0x18], 0
	je	.label_737
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	call	wipename
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
.label_737:
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_741:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40998e
	.globl sub_40998e
	.type sub_40998e, @function
sub_40998e:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409995

	.globl wipefile
	.type wipefile, @function
wipefile:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	eax, 0x101
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, eax
	mov	al, 0
	call	open_safer
	mov	dword ptr [rbp - 0x30], eax
	cmp	dword ptr [rbp - 0x30], 0
	jge	.label_742
	call	__errno_location
	cmp	dword ptr [rax], 0xd
	jne	.label_742
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax], 1
	je	.label_742
	mov	esi, 0x80
	mov	rdi, qword ptr [rbp - 0x10]
	call	chmod
	cmp	eax, 0
	jne	.label_742
	mov	esi, 0x101
	mov	rdi, qword ptr [rbp - 0x10]
	mov	al, 0
	call	open_safer
	mov	dword ptr [rbp - 0x30], eax
.label_742:
	cmp	dword ptr [rbp - 0x30], 0
	jge	.label_743
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_740
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], esi
	call	gettext
	xor	edi, edi
	mov	rcx, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x34]
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_741
	.section	.text
	.align	16
	#Procedure 0x409a50

	.globl just
	.type just, @function
just:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], -1
	mov	rdi, qword ptr [rbp - 8]
	and	rdi, qword ptr [rbp - 0x10]
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409a6d
	.globl sub_409a6d
	.type sub_409a6d, @function
sub_409a6d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409a70

	.globl periodic_pattern
	.type periodic_pattern, @function
periodic_pattern:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	cmp	dword ptr [rbp - 8], 0
	jg	.label_744
	mov	byte ptr [rbp - 1], 0
	jmp	.label_745
.label_744:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 8]
	and	ecx, 0xfff
	mov	dword ptr [rbp - 0x10], ecx
	mov	ecx, dword ptr [rbp - 0x10]
	shl	ecx, 0xc
	or	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x10], ecx
	mov	ecx, dword ptr [rbp - 0x10]
	shr	ecx, 4
	and	ecx, 0xff
	mov	dl, cl
	mov	byte ptr [rbp - 0xb], dl
	mov	ecx, dword ptr [rbp - 0x10]
	shr	ecx, 8
	and	ecx, 0xff
	mov	dl, cl
	mov	byte ptr [rbp - 0xa], dl
	mov	ecx, dword ptr [rbp - 0x10]
	and	ecx, 0xff
	mov	dl, cl
	mov	byte ptr [rbp - 9], dl
	movzx	ecx, byte ptr [rbp - 0xb]
	movzx	esi, byte ptr [rbp - 0xa]
	cmp	ecx, esi
	mov	byte ptr [rbp - 0x11], al
	jne	.label_746
	movzx	eax, byte ptr [rbp - 0xb]
	movzx	ecx, byte ptr [rbp - 9]
	cmp	eax, ecx
	setne	dl
	mov	byte ptr [rbp - 0x11], dl
.label_746:
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_745:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409b09
	.globl sub_409b09
	.type sub_409b09, @function
sub_409b09:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409b10

	.globl randint_new
	.type randint_new, @function
randint_new:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0x18
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rcx
	call	xmalloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409b5c
	.globl sub_409b5c
	.type sub_409b5c, @function
sub_409b5c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409b60

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	push	rbp
	mov	rbp, rsp
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x409b6e
	.globl sub_409b6e
	.type sub_409b6e, @function
sub_409b6e:

	pop	rbp
	ret	
.label_750:
	mov	eax, dword ptr [rbp - 0x24]
	and	eax, 0x400
	cmp	eax, 0
	je	.label_751
	movabs	rdi, OFFSET FLAT:label_748
	call	gettext
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rdi
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_749
.label_751:
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	do_wipefd
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_749:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409bdc
	.globl sub_409bdc
	.type sub_409bdc, @function
sub_409bdc:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409be6

	.globl wipefd
	.type wipefd, @function
wipefd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	eax, 3
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	edi, dword ptr [rbp - 8]
	mov	esi, eax
	mov	al, 0
	call	rpl_fcntl
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	jge	.label_750
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_747
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], esi
	call	gettext
	xor	edi, edi
	mov	rcx, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x28]
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_749
	.section	.text
	.align	16
	#Procedure 0x409c50
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_752
	jmp	.label_754
.label_754:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_753
.label_752:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_753:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409c87
	.globl sub_409c87
	.type sub_409c87, @function
sub_409c87:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409c90

	.globl clear_random_data
	.type clear_random_data, @function
clear_random_data:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [randint_source]]
	call	randint_all_free
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409cae
	.globl sub_409cae
	.type sub_409cae, @function
sub_409cae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x409cb0

	.globl ignorable_sync_errno
	.type ignorable_sync_errno, @function
ignorable_sync_errno:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x16
	mov	byte ptr [rbp - 5], al
	je	.label_755
	mov	al, 1
	cmp	dword ptr [rbp - 4], 9
	mov	byte ptr [rbp - 5], al
	je	.label_755
	cmp	dword ptr [rbp - 4], 0x15
	sete	al
	mov	byte ptr [rbp - 5], al
.label_755:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409ce9
	.globl sub_409ce9
	.type sub_409ce9, @function
sub_409ce9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409cf0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	esi, eax
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], 1
	mov	edi, dword ptr [rbp - 4]
	call	setlocale
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_756
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_759
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_760
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_757
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_758
.label_760:
	mov	byte ptr [rbp - 5], 0
.label_758:
	jmp	.label_756
.label_756:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409d63
	.globl sub_409d63
	.type sub_409d63, @function
sub_409d63:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d70

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409da3
	.globl sub_409da3
	.type sub_409da3, @function
sub_409da3:

	nop	word ptr cs:[rax + rax]
.label_762:
	mov	byte ptr [rbp - 1], 0
.label_764:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409dbe
	.globl sub_409dbe
	.type sub_409dbe, @function
sub_409dbe:

	nop	
	.section	.text
	.align	16
	#Procedure 0x409dc0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_761
	jmp	.label_763
.label_763:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_762
	jmp	.label_761
.label_761:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_764
	.section	.text
	.align	16
	#Procedure 0x409e00

	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	eax, 0xa
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	dword ptr [rbp - 0x2c], r9d
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x28]
	mov	r10d, dword ptr [rbp - 0x2c]
	mov	esi, eax
	mov	dword ptr [rsp], r10d
	call	xnumtoumax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409e4e
	.globl sub_409e4e
	.type sub_409e4e, @function
sub_409e4e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x409e50
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_765
	jmp	.label_768
.label_768:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_765
	jmp	.label_766
.label_766:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_767
	jmp	.label_765
.label_765:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_769
.label_767:
	mov	byte ptr [rbp - 1], 0
.label_769:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409eb5
	.globl sub_409eb5
	.type sub_409eb5, @function
sub_409eb5:

	nop	word ptr cs:[rax + rax]
.label_770:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409edb
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_770
	call	xalloc_die
.label_1099:
	movabs	rdi, OFFSET FLAT:label_776
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xe8], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xf0], rdi
	mov	rdi, r11
	mov	qword ptr [rbp - 0xf8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xfc], eax
	jmp	.label_772
.label_1098:
	movabs	rdi, OFFSET FLAT:label_782
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc8], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xd0], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0xd8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rsp + 8], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_772
.label_1092:
	jmp	.label_772
.label_1095:
	movabs	rdi, OFFSET FLAT:label_787
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x90], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_772
.label_1100:
	movabs	rdi, OFFSET FLAT:label_774
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x108], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x110], rdi
	mov	rdi, rbx
	mov	qword ptr [rbp - 0x118], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x11c], eax
	jmp	.label_772
.label_1097:
	movabs	rdi, OFFSET FLAT:label_783
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xb0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rdi
	mov	rdi, rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rsp], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_772
.label_775:
	movabs	rsi, OFFSET FLAT:label_781
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_786:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_771
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, rcx
	call	gettext
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	esi, edx
	xor	edx, edx
	mov	r8b, dl
	mov	ecx, 0x7e3
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rdx, rax
	mov	al, r8b
	call	fprintf
	mov	ecx, OFFSET FLAT:label_778
	mov	edi, ecx
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsi, rdx
	sub	rsi, 9
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x60], rdx
	mov	qword ptr [rbp - 0x68], rsi
	ja	.label_777
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_780]]
	jmp	rcx
.label_1094:
	movabs	rdi, OFFSET FLAT:label_789
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x80], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_772
.label_1093:
	movabs	rdi, OFFSET FLAT:label_788
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_772
.label_1096:
	movabs	rdi, OFFSET FLAT:label_784
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_772
.label_777:
	movabs	rdi, OFFSET FLAT:label_773
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x148], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	r14, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x150], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x158], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x15c], eax
.label_772:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a3c1
	.globl sub_40a3c1
	.type sub_40a3c1, @function
sub_40a3c1:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40a3c2

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	rbp
	mov	rbp, rsp
	push	r14
	push	rbx
	sub	rsp, 0x180
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], r9
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_775
	movabs	rsi, OFFSET FLAT:label_785
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_786
.label_1101:
	movabs	rdi, OFFSET FLAT:label_779
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x128], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	r14, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x130], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x138], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x13c], eax
	jmp	.label_772
	.section	.text
	.align	16
	#Procedure 0x40a4d0

	.globl direct_mode
	.type direct_mode, @function
direct_mode:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, sil
	mov	esi, 3
	mov	dword ptr [rbp - 4], edi
	and	al, 1
	mov	byte ptr [rbp - 5], al
	mov	edi, dword ptr [rbp - 4]
	mov	al, 0
	call	rpl_fcntl
	xor	esi, esi
	mov	dword ptr [rbp - 0xc], eax
	cmp	esi, dword ptr [rbp - 0xc]
	jge	.label_790
	test	byte ptr [rbp - 5], 1
	je	.label_793
	mov	eax, dword ptr [rbp - 0xc]
	or	eax, 0x4000
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_792
.label_793:
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 0xffffbfff
	mov	dword ptr [rbp - 0x14], eax
.label_792:
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x10], eax
	mov	eax, dword ptr [rbp - 0x10]
	cmp	eax, dword ptr [rbp - 0xc]
	je	.label_791
	mov	esi, 4
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 0x10]
	mov	al, 0
	call	rpl_fcntl
	mov	dword ptr [rbp - 0x18], eax
.label_791:
	jmp	.label_790
.label_790:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a557
	.globl sub_40a557
	.type sub_40a557, @function
sub_40a557:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a560

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	cmp	eax,  dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]]
	jg	.label_799
	mov	esi, 0x406
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	xor	edx, edx
	mov	dword ptr [rbp - 0xc], eax
	cmp	edx, dword ptr [rbp - 0xc]
	jle	.label_798
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_800
.label_798:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_794
.label_799:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
.label_796:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_795
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_795
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x10], eax
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_802
	mov	esi, 2
	mov	edi, dword ptr [rbp - 0xc]
	mov	eax, dword ptr [rbp - 0x10]
	or	eax, 1
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_797
.label_802:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
	mov	edi, dword ptr [rbp - 0xc]
	call	close
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x18], eax
	mov	dword ptr [rbp - 0x1c], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0xc], 0xffffffff
.label_797:
	jmp	.label_795
.label_795:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a658
	.globl sub_40a658
	.type sub_40a658, @function
sub_40a658:

	nop	word ptr cs:[rax + rax]
.label_800:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	jl	.label_801
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_801:
	jmp	.label_794
.label_794:
	jmp	.label_796
	.section	.text
	.align	16
	#Procedure 0x40a690

	.globl randint_all_free
	.type randint_all_free, @function
randint_all_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	call	randread_free
	mov	dword ptr [rbp - 0xc], eax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], ecx
	mov	rdi, qword ptr [rbp - 8]
	call	randint_free
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x14], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a6d7
	.globl sub_40a6d7
	.type sub_40a6d7, @function
sub_40a6d7:

	nop	word ptr [rax + rax]
.label_805:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x70], rax
.label_817:
	mov	rax, qword ptr [rbp - 0x70]
	movabs	rdi, OFFSET FLAT:label_822
	mov	qword ptr [rbp - 0x58], rax
	call	gettext
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x58]
	mov	r8, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x78], rdi
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x78]
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x39], 0
.label_803:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rcx, rdx
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x48]
	add	rcx, 1
	mov	rdi, rax
	mov	rdx, rcx
	call	memcpy
.label_807:
	jmp	.label_813
.label_813:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, -1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_814
.label_816:
	mov	rax, qword ptr [rbp - 0x18]
	test	byte ptr [rax + 0x1c], 1
	je	.label_819
	movabs	rdi, OFFSET FLAT:label_824
	call	gettext
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x88], rdi
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x88]
	mov	al, 0
	call	error
.label_819:
	jmp	.label_804
.label_804:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x40]
	jg	.label_809
	mov	edi, dword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x38]
	call	dosync
	cmp	eax, 0
	je	.label_810
	mov	byte ptr [rbp - 0x3a], 0
.label_810:
	mov	edi, dword ptr [rbp - 0x40]
	call	close
	cmp	eax, 0
	je	.label_815
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_739
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x8c], esi
	call	gettext
	xor	edi, edi
	mov	rcx, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0x8c]
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x3a], 0
.label_815:
	jmp	.label_809
.label_809:
	mov	rdi, qword ptr [rbp - 0x20]
	call	free
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	mov	al, byte ptr [rbp - 0x3a]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a842
	.globl sub_40a842
	.type sub_40a842, @function
sub_40a842:

	nop	dword ptr [rax + rax]
.label_811:
	jmp	.label_812
.label_812:
	mov	rdi, qword ptr [rbp - 8]
	call	unlink
	cmp	eax, 0
	je	.label_816
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_820
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x7c], esi
	call	gettext
	xor	edi, edi
	mov	rcx, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x7c]
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x3a], 0
	jmp	.label_804
.label_821:
	test	byte ptr [rbp - 0x49], 1
	je	.label_807
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x40]
	jg	.label_808
	mov	edi, dword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x38]
	call	dosync
	cmp	eax, 0
	je	.label_808
	mov	byte ptr [rbp - 0x3a], 0
.label_808:
	mov	rax, qword ptr [rbp - 0x18]
	test	byte ptr [rax + 0x1c], 1
	je	.label_803
	test	byte ptr [rbp - 0x39], 1
	je	.label_805
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_817
	.section	.text
	.align	16
	#Procedure 0x40a8e6

	.globl wipename
	.type wipename, @function
wipename:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	call	xstrdup
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x20]
	call	last_component
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x20]
	call	dir_name
	xor	edi, edi
	mov	esi, 3
	mov	qword ptr [rbp - 0x30], rax
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style_colon
	mov	rdi, rax
	call	xstrdup
	mov	qword ptr [rbp - 0x38], rax
	mov	byte ptr [rbp - 0x39], 1
	mov	byte ptr [rbp - 0x3a], 1
	mov	dword ptr [rbp - 0x40], 0xffffffff
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x18], 3
	jne	.label_826
	mov	esi, 0x10900
	mov	rdi, qword ptr [rbp - 0x30]
	mov	al, 0
	call	open_safer
	mov	dword ptr [rbp - 0x40], eax
.label_826:
	mov	rax, qword ptr [rbp - 0x18]
	test	byte ptr [rax + 0x1c], 1
	je	.label_825
	movabs	rdi, OFFSET FLAT:label_827
	call	gettext
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x60], rdi
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x60]
	mov	al, 0
	call	error
.label_825:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x18], 1
	je	.label_812
	mov	rdi, qword ptr [rbp - 0x28]
	call	base_len
	mov	qword ptr [rbp - 0x48], rax
.label_814:
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_811
	mov	rdi, qword ptr [rbp - 0x28]
	movsx	eax,  byte ptr [byte ptr [nameset]]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x48]
	movzx	esi, cl
	call	memset
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	byte ptr [rdi + rdx], 0
.label_823:
	mov	eax, 0xffffff9c
	mov	r8d, 1
	mov	rsi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	edi, eax
	mov	edx, eax
	call	renameatu
	xor	edx, edx
	mov	r9b, dl
	cmp	eax, 0
	sete	r10b
	mov	r11b, r10b
	and	r11b, 1
	mov	byte ptr [rbp - 0x49], r11b
	test	r10b, 1
	mov	byte ptr [rbp - 0x61], r9b
	jne	.label_806
	call	__errno_location
	xor	ecx, ecx
	mov	dl, cl
	cmp	dword ptr [rax], 0x11
	mov	byte ptr [rbp - 0x61], dl
	jne	.label_806
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x48]
	call	incname
	mov	byte ptr [rbp - 0x61], al
.label_806:
	mov	al, byte ptr [rbp - 0x61]
	test	al, 1
	jne	.label_818
	jmp	.label_821
.label_818:
	jmp	.label_823
	.section	.text
	.align	16
	#Procedure 0x40aa70
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_828
	jmp	.label_830
.label_830:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_829
.label_828:
	mov	byte ptr [rbp - 1], 0
.label_829:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aaa2
	.globl sub_40aaa2
	.type sub_40aaa2, @function
sub_40aaa2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aab0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_831
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_265
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40aaef
	.globl sub_40aaef
	.type sub_40aaef, @function
sub_40aaef:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40aaf0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, sil
	mov	rsi, -1
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rbp - 9]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ab1c
	.globl sub_40ab1c
	.type sub_40ab1c, @function
sub_40ab1c:

	nop	dword ptr [rax]
.label_836:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_832
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_833
.label_832:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_833
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_833:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_834
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_834:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_835:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40abad
	.globl sub_40abad
	.type sub_40abad, @function
sub_40abad:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40abaf

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], 0
	mov	dword ptr [rbp - 0x1c], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	dword ptr [rbp - 0x18], eax
	cmp	dword ptr [rbp - 0x18], 0
	jge	.label_836
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_835
.label_852:
	lea	rdx, [rbp - 0x178]
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x20]
	call	lstatat
	cmp	eax, 0
	je	.label_837
	call	__errno_location
	cmp	dword ptr [rax], 0x4b
	jne	.label_857
.label_837:
	mov	edi, 0x11
	call	errno_fail
	mov	dword ptr [rbp - 4], eax
	jmp	.label_843
.label_853:
	jmp	.label_848
	.section	.text
	.align	16
	#Procedure 0x40ac31

	.globl renameatu
	.type renameatu, @function
renameatu:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x180
	mov	eax, 0x13c
	mov	r9d, eax
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], 0xffffffff
	mov	dword ptr [rbp - 0x2c], 0x16
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	r8, qword ptr [rbp - 0x20]
	mov	eax, dword ptr [rbp - 0x24]
	mov	rdi, r9
	mov	r9d, eax
	mov	al, 0
	call	syscall
	mov	ecx, eax
	mov	dword ptr [rbp - 0x28], ecx
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	cmp	dword ptr [rbp - 0x28], 0
	jge	.label_841
	cmp	dword ptr [rbp - 0x2c], 0x16
	je	.label_844
	cmp	dword ptr [rbp - 0x2c], 0x26
	je	.label_844
	cmp	dword ptr [rbp - 0x2c], 0x5f
	je	.label_844
.label_841:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_843
.label_842:
	test	byte ptr [rbp - 0x179], 1
	je	.label_849
	mov	eax, dword ptr [rbp - 0xd0]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_853
	mov	edi, 2
	call	errno_fail
	mov	dword ptr [rbp - 4], eax
	jmp	.label_843
.label_850:
	mov	eax, dword ptr [rbp - 0x160]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_860
	mov	edi, 0x14
	call	errno_fail
	mov	dword ptr [rbp - 4], eax
	jmp	.label_843
.label_860:
	mov	eax, dword ptr [rbp - 0xd0]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_845
	mov	edi, 0x15
	call	errno_fail
	mov	dword ptr [rbp - 4], eax
	jmp	.label_843
.label_857:
	call	__errno_location
	cmp	dword ptr [rax], 2
	je	.label_851
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_843
.label_838:
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x51], sil
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x52], sil
	test	byte ptr [rbp - 0x51], 1
	jne	.label_847
	test	byte ptr [rbp - 0x52], 1
	jne	.label_847
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	call	renameat
	mov	dword ptr [rbp - 4], eax
	jmp	.label_843
.label_856:
	jmp	.label_840
.label_851:
	mov	byte ptr [rbp - 0x179], 1
	jmp	.label_846
.label_846:
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strlen
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_859
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_838
.label_859:
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	call	renameat
	mov	dword ptr [rbp - 4], eax
	jmp	.label_843
.label_845:
	jmp	.label_839
.label_839:
	jmp	.label_840
.label_840:
	jmp	.label_848
.label_848:
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x50]
	call	renameat
	mov	dword ptr [rbp - 0x28], eax
	call	__errno_location
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x58], edx
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_855
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_855:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x20]
	je	.label_858
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
.label_858:
	mov	eax, dword ptr [rbp - 0x58]
	mov	dword ptr [rbp - 0x180], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x180]
	mov	dword ptr [rax], ecx
	mov	ecx, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], ecx
.label_843:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x180
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aeb1
	.globl sub_40aeb1
	.type sub_40aeb1, @function
sub_40aeb1:

	nop	
.label_849:
	lea	rdx, [rbp - 0x178]
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x20]
	call	lstatat
	cmp	eax, 0
	je	.label_850
	call	__errno_location
	cmp	dword ptr [rax], 2
	jne	.label_854
	mov	eax, dword ptr [rbp - 0xd0]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_856
.label_854:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_843
.label_847:
	lea	rdx, [rbp - 0xe8]
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	lstatat
	cmp	eax, 0
	je	.label_842
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_843
.label_844:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x50], rax
	mov	dword ptr [rbp - 0x58], 0x14
	mov	byte ptr [rbp - 0x179], 0
	cmp	dword ptr [rbp - 0x24], 0
	je	.label_846
	mov	eax, dword ptr [rbp - 0x24]
	and	eax, 0xfffffffe
	cmp	eax, 0
	je	.label_852
	mov	edi, 0x5f
	call	errno_fail
	mov	dword ptr [rbp - 4], eax
	jmp	.label_843
.label_861:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40af8e

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_863
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_863:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_862
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_861
.label_862:
	call	abort
.label_865:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_866:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40affe
	.globl sub_40affe
	.type sub_40affe, @function
sub_40affe:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b006

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_864
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_865
.label_864:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_866
.label_867:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0x178], rcx
	jmp	.label_882
.label_882:
	mov	rax, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x180], rax
	jmp	.label_886
.label_904:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	dword ptr [rax + 0x18], 0
	je	.label_890
	xor	eax, eax
	mov	esi, eax
	mov	edi, dword ptr [rbp - 8]
	call	ftruncate
	cmp	eax, 0
	je	.label_890
	mov	eax, dword ptr [rbp - 0xa0]
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_896
	mov	eax, dword ptr [rbp - 0xa0]
	sub	eax, dword ptr [rbp - 0xa0]
	cmp	eax, 0
	je	.label_890
.label_896:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_888
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x188], esi
	call	gettext
	xor	edi, edi
	mov	rcx, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x188]
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0xd9], 0
	jmp	.label_874
.label_898:
	xor	eax, eax
	mov	esi, eax
	mov	edx, 2
	mov	edi, dword ptr [rbp - 8]
	call	lseek
	mov	qword ptr [rbp - 0xc0], rax
	cmp	qword ptr [rbp - 0xc0], 0
	jg	.label_868
	mov	qword ptr [rbp - 0xc0], -1
.label_868:
	jmp	.label_879
.label_879:
	jmp	.label_880
.label_913:
	xor	eax, eax
	mov	dword ptr [rbp - 0x184], eax
	jmp	.label_873
.label_873:
	mov	eax, dword ptr [rbp - 0x184]
	lea	rsi, [rbp - 0xb8]
	lea	rcx, [rbp - 0x100]
	mov	dword ptr [rbp - 0x110], eax
	mov	edi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	r8d, dword ptr [rbp - 0x110]
	mov	r9, qword ptr [rbp - 0xe8]
	mov	r10, qword ptr [rbp - 0x28]
	add	r10, 1
	mov	r11, qword ptr [rbp - 0x108]
	mov	qword ptr [rsp], r10
	mov	qword ptr [rsp + 8], r11
	call	dopass
	mov	dword ptr [rbp - 0x10c], eax
	cmp	dword ptr [rbp - 0x10c], 0
	je	.label_895
	mov	byte ptr [rbp - 0xd9], 0
	cmp	dword ptr [rbp - 0x10c], 0
	jge	.label_901
	jmp	.label_874
.label_878:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0x170], rcx
	jmp	.label_902
.label_902:
	mov	rax, qword ptr [rbp - 0x170]
	cmp	rax, qword ptr [rbp - 0xc0]
	jge	.label_907
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x80]
	jge	.label_867
	movabs	rax, 0x2000000000000000
	cmp	qword ptr [rbp - 0x80], rax
	ja	.label_867
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x178], rax
	jmp	.label_882
.label_899:
	mov	eax, dword ptr [rbp - 0xa0]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_872
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x88]
	cmp	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x168], rdx
	jge	.label_878
	movabs	rax, 0x2000000000000000
	cmp	qword ptr [rbp - 0x80], rax
	ja	.label_878
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x170], rax
	jmp	.label_902
.label_894:
	cmp	qword ptr [rbp - 0xc0], 0
	je	.label_889
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x100], rax
	mov	qword ptr [rbp - 0xc0], 0
	jmp	.label_892
.label_906:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0x138], rcx
	jmp	.label_897
.label_897:
	mov	rax, qword ptr [rbp - 0x138]
	mov	rcx, qword ptr [rbp - 0x130]
	mov	qword ptr [rbp - 0x140], rax
	mov	rax, rcx
	cqo	
	mov	rsi, qword ptr [rbp - 0x140]
	idiv	rsi
	mov	qword ptr [rbp - 0xf0], rdx
	cmp	qword ptr [rbp - 0xc0], 0
	je	.label_885
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0xc0]
	cmp	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x148], rdx
	jge	.label_910
	movabs	rax, 0x2000000000000000
	cmp	qword ptr [rbp - 0x80], rax
	ja	.label_910
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x150], rax
	jmp	.label_871
.label_908:
	jmp	.label_876
.label_875:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x160], rax
.label_884:
	mov	rax, qword ptr [rbp - 0x160]
	add	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0xc0], rax
.label_893:
	jmp	.label_883
.label_883:
	jmp	.label_879
.label_870:
	jmp	.label_887
.label_887:
	mov	eax, 4
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 8]
	call	xnmalloc
	mov	qword ptr [rbp - 0xd8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0xc0], rax
	cmp	qword ptr [rbp - 0xc0], -1
	jne	.label_899
	mov	eax, dword ptr [rbp - 0xa0]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_898
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0xc0], rax
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x1d], 1
	jne	.label_883
	xor	eax, eax
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0xc0]
	cmp	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x130], rax
	jge	.label_906
	movabs	rax, 0x2000000000000000
	cmp	qword ptr [rbp - 0x80], rax
	ja	.label_906
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x138], rax
	jmp	.label_897
.label_891:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0x158], rcx
	jmp	.label_869
.label_869:
	mov	rax, qword ptr [rbp - 0x158]
	movabs	rcx, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0xf8], rax
	mov	rax, qword ptr [rbp - 0xf8]
	sub	rcx, qword ptr [rbp - 0xc0]
	cmp	rax, rcx
	jge	.label_875
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rbp - 0x160], rax
	jmp	.label_884
.label_907:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x180], rax
.label_886:
	mov	rax, qword ptr [rbp - 0x180]
	mov	rcx, qword ptr [rbp - 0x168]
	cmp	rcx, rax
	jge	.label_872
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0xc8], rax
.label_872:
	jmp	.label_880
.label_880:
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax + 8]
	mov	rdx, qword ptr [rbp - 0x18]
	call	genpattern
	mov	rdi, qword ptr [rbp - 0x18]
	call	randint_get_source
	mov	qword ptr [rbp - 0xe8], rax
.label_876:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x108], rax
	cmp	qword ptr [rbp - 0xc8], 0
	je	.label_894
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0x100], rax
	mov	qword ptr [rbp - 0xc8], 0
	mov	qword ptr [rbp - 0x108], 0
	jmp	.label_905
.label_909:
	mov	eax, dword ptr [rbp - 0xa0]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_870
	cmp	qword ptr [rbp - 0x88], 0
	jge	.label_870
	movabs	rdi, OFFSET FLAT:label_881
	call	gettext
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x128], rdi
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x128]
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_877
.label_890:
	jmp	.label_874
.label_874:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rdi, rax
	call	free
	mov	cl, byte ptr [rbp - 0xd9]
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
.label_877:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x1a0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b594
	.globl sub_40b594
	.type sub_40b594, @function
sub_40b594:

	nop	
.label_917:
	mov	eax, dword ptr [rbp - 0xa0]
	and	eax, 0xf000
	cmp	eax, 0x2000
	jne	.label_900
	mov	edi, dword ptr [rbp - 8]
	call	isatty
	cmp	eax, 0
	jne	.label_903
.label_900:
	mov	eax, dword ptr [rbp - 0xa0]
	and	eax, 0xf000
	cmp	eax, 0x1000
	je	.label_903
	mov	eax, dword ptr [rbp - 0xa0]
	and	eax, 0xf000
	cmp	eax, 0xc000
	jne	.label_909
.label_903:
	movabs	rdi, OFFSET FLAT:label_911
	call	gettext
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x120], rdi
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x120]
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_877
.label_901:
	jmp	.label_895
.label_895:
	jmp	.label_912
.label_912:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_914
.label_910:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0x150], rcx
	jmp	.label_871
.label_871:
	mov	rax, qword ptr [rbp - 0x150]
	mov	rcx, qword ptr [rbp - 0x148]
	cmp	rcx, rax
	jge	.label_885
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0xc8], rax
.label_885:
	cmp	qword ptr [rbp - 0xf0], 0
	je	.label_893
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x80]
	jge	.label_891
	movabs	rax, 0x2000000000000000
	cmp	qword ptr [rbp - 0x80], rax
	ja	.label_891
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x158], rax
	jmp	.label_869
.label_889:
	jmp	.label_904
.label_892:
	jmp	.label_905
.label_905:
	mov	qword ptr [rbp - 0x28], 0
.label_914:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	sil, byte ptr [rdx + 0x1e]
	and	sil, 1
	movzx	edi, sil
	mov	edx, edi
	add	rcx, rdx
	cmp	rax, rcx
	jae	.label_908
	mov	dword ptr [rbp - 0x10c], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_913
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	edx, dword ptr [rcx + rax*4]
	mov	dword ptr [rbp - 0x184], edx
	jmp	.label_873
	.section	.text
	.align	16
	#Procedure 0x40b727

	.globl do_wipefd
	.type do_wipefd, @function
do_wipefd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1a0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0xc8], 0
	mov	byte ptr [rbp - 0xd9], 1
	mov	qword ptr [rbp - 0xd0], 0
	mov	rcx, qword ptr [rbp - 0x20]
	test	byte ptr [rcx + 0x1c], 1
	je	.label_915
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	dl, byte ptr [rcx + 0x1e]
	and	dl, 1
	movzx	esi, dl
	mov	ecx, esi
	add	rax, rcx
	mov	qword ptr [rbp - 0xd0], rax
.label_915:
	lea	rsi, [rbp - 0xb8]
	mov	edi, dword ptr [rbp - 8]
	call	fstat
	cmp	eax, 0
	je	.label_917
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_916
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x114], esi
	call	gettext
	xor	edi, edi
	mov	rcx, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x114]
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_877
.label_920:
	mov	edi, dword ptr [rbp - 8]
	call	fsync
	cmp	eax, 0
	jne	.label_922
	mov	dword ptr [rbp - 4], 0
	jmp	.label_918
	.section	.text
	.align	16
	#Procedure 0x40b7fd

	.globl dosync
	.type dosync, @function
dosync:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 8]
	call	fdatasync
	cmp	eax, 0
	jne	.label_919
	mov	dword ptr [rbp - 4], 0
	jmp	.label_918
.label_923:
	call	sync
	mov	dword ptr [rbp - 4], 0
.label_918:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b83e
	.globl sub_40b83e
	.type sub_40b83e, @function
sub_40b83e:

	nop	word ptr [rax + rax]
.label_919:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
	mov	edi, dword ptr [rbp - 0x14]
	call	ignorable_sync_errno
	test	al, 1
	jne	.label_920
	movabs	rdi, OFFSET FLAT:label_921
	mov	esi, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x18], esi
	call	gettext
	xor	edi, edi
	mov	rcx, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x18]
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	esi, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x1c], esi
	call	__errno_location
	mov	esi, dword ptr [rbp - 0x1c]
	mov	dword ptr [rax], esi
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_918
.label_922:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
	mov	edi, dword ptr [rbp - 0x14]
	call	ignorable_sync_errno
	test	al, 1
	jne	.label_923
	movabs	rdi, OFFSET FLAT:label_924
	mov	esi, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], esi
	call	gettext
	xor	edi, edi
	mov	rcx, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x20]
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	esi, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x24], esi
	call	__errno_location
	mov	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rax], esi
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_918
	.section	.text
	.align	16
	#Procedure 0x40b900

	.globl version_etc
	.type version_etc, @function
version_etc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1a0
	test	al, al
	movaps	xmmword ptr [rbp - 0x100], xmm7
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	qword ptr [rbp - 0x178], rdi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	qword ptr [rbp - 0x1a0], rsi
	je	.label_925
	movaps	xmm0, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm7
.label_925:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rsi, qword ptr [rbp - 0x198]
	mov	rdi, qword ptr [rbp - 0x1a0]
	mov	r8, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 8], r8
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdx, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rbp - 0x38], rdx
	mov	dword ptr [rbp - 0x3c], 0x30
	mov	dword ptr [rbp - 0x40], 0x20
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	r8, [rbp - 0x40]
	call	version_etc_va
	add	rsp, 0x1a0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ba64
	.globl sub_40ba64
	.type sub_40ba64, @function
sub_40ba64:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ba70

	.globl open_safer
	.type open_safer, @function
open_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1b0
	test	al, al
	movaps	xmmword ptr [rbp - 0xf0], xmm7
	movaps	xmmword ptr [rbp - 0x100], xmm6
	movaps	xmmword ptr [rbp - 0x110], xmm5
	movaps	xmmword ptr [rbp - 0x120], xmm4
	movaps	xmmword ptr [rbp - 0x130], xmm3
	movaps	xmmword ptr [rbp - 0x140], xmm2
	movaps	xmmword ptr [rbp - 0x150], xmm1
	movaps	xmmword ptr [rbp - 0x160], xmm0
	mov	qword ptr [rbp - 0x168], rdi
	mov	qword ptr [rbp - 0x170], r9
	mov	qword ptr [rbp - 0x178], r8
	mov	qword ptr [rbp - 0x180], rcx
	mov	qword ptr [rbp - 0x188], rdx
	mov	dword ptr [rbp - 0x18c], esi
	je	.label_926
	movaps	xmm0, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0xf0]
	movaps	xmmword ptr [rbp - 0x40], xmm7
.label_926:
	mov	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rdx, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rsi, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rsi
	mov	edi, dword ptr [rbp - 0x18c]
	mov	r8, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 8], r8
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], 0
	mov	edi, dword ptr [rbp - 0xc]
	and	edi, 0x40
	cmp	edi, 0
	je	.label_927
	lea	rax, [rbp - 0x30]
	mov	rcx, rax
	lea	rdx, [rbp - 0xe0]
	mov	qword ptr [rcx + 0x10], rdx
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rcx + 8], rdx
	mov	dword ptr [rcx + 4], 0x30
	mov	dword ptr [rcx], 0x10
	mov	esi, dword ptr [rbp - 0x30]
	cmp	esi, 0x28
	mov	qword ptr [rbp - 0x198], rax
	mov	dword ptr [rbp - 0x19c], esi
	ja	.label_928
	mov	eax, dword ptr [rbp - 0x19c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x198]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1a8], rcx
	jmp	.label_929
.label_928:
	mov	rax, qword ptr [rbp - 0x198]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1a8], rdx
.label_929:
	mov	rax, qword ptr [rbp - 0x1a8]
	lea	rcx, [rbp - 0x30]
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_927:
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	edx, dword ptr [rbp - 0x10]
	xor	eax, eax
	mov	cl, al
	mov	al, cl
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0x1b0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bc65
	.globl sub_40bc65
	.type sub_40bc65, @function
sub_40bc65:

	nop	word ptr cs:[rax + rax]
.label_930:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bc79
	.globl sub_40bc79
	.type sub_40bc79, @function
sub_40bc79:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40bc7c

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	dword ptr [rbp - 0x14], 0
.label_931:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_930
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_931
.label_932:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx,  dword ptr [dword ptr [label_933]]
	mov	dword ptr [rax], ecx
	mov	dx,  word ptr [word ptr [label_934]]
	mov	word ptr [rax + 4], dx
	mov	sil,  byte ptr [byte ptr [label_935]]
	mov	byte ptr [rax + 6], sil
.label_937:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bceb
	.globl sub_40bceb
	.type sub_40bceb, @function
sub_40bceb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bcf0

	.globl passname
	.type passname, @function
passname:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	cmp	qword ptr [rbp - 8], 0
	je	.label_932
	movabs	rsi, OFFSET FLAT:label_936
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 8]
	movzx	edx, byte ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	movzx	ecx, byte ptr [rax + 1]
	mov	rax, qword ptr [rbp - 8]
	movzx	r8d, byte ptr [rax + 2]
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_937
	.section	.text
	.align	16
	#Procedure 0x40bd40
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	sub	edi, 0x20
	mov	dword ptr [rbp - 0xc], eax
	mov	dword ptr [rbp - 0x10], edi
	jb	.label_938
	jmp	.label_940
.label_940:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_941
	jmp	.label_938
.label_938:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_939
.label_941:
	mov	byte ptr [rbp - 1], 0
.label_939:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bd88
	.globl sub_40bd88
	.type sub_40bd88, @function
sub_40bd88:

	nop	dword ptr [rax + rax]
.label_949:
	jmp	.label_943
.label_943:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	call	simple_new
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_942
	mov	eax, 0x1000
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	add	rdx, 0x18
	cmp	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rdx
	mov	qword ptr [rbp - 0x38], rdi
	jae	.label_944
	mov	eax, 0x1000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x40], rcx
	jmp	.label_945
.label_942:
	mov	eax, 0x800
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x18], 0
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 0x18
	add	rcx, 8
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rcx
	call	get_nonce
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 0x18
	add	rcx, 8
	mov	rdi, rcx
	call	isaac_seed
.label_946:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_948:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40be37
	.globl sub_40be37
	.type sub_40be37, @function
sub_40be37:

	nop	word ptr cs:[rax + rax]
.label_950:
	mov	qword ptr [rbp - 0x20], 0
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_943
	movabs	rsi, OFFSET FLAT:label_947
	mov	rdi, qword ptr [rbp - 0x10]
	call	fopen_safer
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jne	.label_949
	mov	qword ptr [rbp - 8], 0
	jmp	.label_948
	.section	.text
	.align	16
	#Procedure 0x40be87

	.globl randread_new
	.type randread_new, @function
randread_new:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_950
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, rcx
	mov	rsi, rcx
	call	simple_new
	mov	qword ptr [rbp - 8], rax
	jmp	.label_948
.label_944:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
.label_945:
	mov	rax, qword ptr [rbp - 0x40]
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rcx, rax
	call	setvbuf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_946
.label_1000:
	mov	eax, 3
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rdx, 2
	mov	rax, rdx
	xor	esi, esi
	mov	edx, esi
	div	rcx
	imul	rax, rax, 3
	mov	qword ptr [rbp - 0x8e8], rax
.label_1002:
	mov	rax, qword ptr [rbp - 0x8e8]
	mov	qword ptr [rbp - 0x70], rax
	mov	edi, dword ptr [rbp - 0x2c]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x70]
	call	fillpattern
	lea	rsi, [rbp - 0xa7]
	mov	rdi, qword ptr [rbp - 0xa0]
	call	passname
	jmp	.label_1004
.label_990:
	mov	al, byte ptr [rbp - 0xa8]
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0x99c], ecx
.label_989:
	mov	eax, dword ptr [rbp - 0x99c]
	add	rsp, 0x9b8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bf5e
	.globl sub_40bf5e
	.type sub_40bf5e, @function
sub_40bf5e:

	nop	
.label_965:
	jmp	.label_967
.label_955:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x78]
	jae	.label_969
	movabs	rdi, OFFSET FLAT:label_973
	call	gettext
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x920], rdi
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x920]
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0xa9], 1
	jmp	.label_970
.label_971:
	mov	byte ptr [rbp - 0xa8], 1
.label_977:
	jmp	.label_970
.label_970:
	mov	rdi, qword ptr [rbp - 0x98]
	call	free
	test	byte ptr [rbp - 0xa9], 1
	je	.label_990
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x99c], eax
	jmp	.label_989
.label_954:
	jmp	.label_976
.label_976:
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_993
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x70]
	call	randread
.label_993:
	mov	qword ptr [rbp - 0x78], 0
.label_959:
	mov	rax, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rbp - 0x70]
	jae	.label_955
	mov	edi, dword ptr [rbp - 0xc]
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x70]
	sub	rcx, qword ptr [rbp - 0x78]
	mov	rsi, rax
	mov	rdx, rcx
	call	write
	xor	edi, edi
	mov	ecx, edi
	mov	qword ptr [rbp - 0x80], rax
	cmp	rcx, qword ptr [rbp - 0x80]
	jge	.label_963
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x70]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	ja	.label_965
	jmp	.label_965
.label_996:
	cmp	dword ptr [rbp - 0x2c], 0
	jl	.label_1003
	mov	rdi, qword ptr [rbp - 0x50]
	call	known
	test	al, 1
	jne	.label_997
	jmp	.label_1000
.label_997:
	mov	eax, 3
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x90]
	add	rsi, 2
	mov	rax, rsi
	xor	edi, edi
	mov	qword ptr [rbp - 0x8e0], rdx
	mov	edx, edi
	div	rcx
	imul	rax, rax, 3
	mov	rcx, qword ptr [rbp - 0x8e0]
	cmp	rcx, rax
	jae	.label_1000
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x8e8], rax
	jmp	.label_1002
.label_979:
	mov	byte ptr [rbp - 0xa8], 1
.label_982:
	jmp	.label_972
.label_972:
	jmp	.label_951
.label_951:
	jmp	.label_957
	.section	.text
	.align	16
	#Procedure 0x40c0f5

	.globl dopass
	.type dopass, @function
dopass:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x9b8
	mov	rax, qword ptr [rbp + 0x18]
	mov	r10, qword ptr [rbp + 0x10]
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x2c], r8d
	mov	qword ptr [rbp - 0x38], r9
	mov	qword ptr [rbp - 0x40], r10
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x68], 0
	call	getpagesize
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x88], rcx
	mov	edi, dword ptr [rbp - 0x2c]
	call	periodic_pattern
	mov	edi, 3
	mov	ecx, edi
	mov	edi, 0x10000
	mov	r8d, 0xf000
	test	al, 1
	cmovne	edi, r8d
	movsxd	rdx, edi
	mov	qword ptr [rbp - 0x90], rdx
	mov	rdx, qword ptr [rbp - 0x88]
	sub	rdx, 1
	mov	rsi, qword ptr [rbp - 0x90]
	add	rsi, 2
	mov	rax, rsi
	xor	edi, edi
	mov	qword ptr [rbp - 0x8d0], rdx
	mov	edx, edi
	div	rcx
	imul	rax, rax, 3
	mov	rcx, qword ptr [rbp - 0x8d0]
	add	rcx, rax
	mov	rdi, rcx
	call	xmalloc
	mov	qword ptr [rbp - 0x98], rax
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0x88]
	call	ptr_align
	xor	r8d, r8d
	mov	r11b, r8b
	xor	r8d, r8d
	mov	ecx, r8d
	mov	qword ptr [rbp - 0xa0], rax
	mov	byte ptr [rbp - 0xa8], 0
	mov	byte ptr [rbp - 0xa9], 0
	cmp	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rbp - 0x8d1], r11b
	jge	.label_999
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x90]
	setb	cl
	mov	byte ptr [rbp - 0x8d1], cl
.label_999:
	mov	al, byte ptr [rbp - 0x8d1]
	and	al, 1
	mov	byte ptr [rbp - 0x349], al
	test	byte ptr [rbp - 0x349], 1
	jne	.label_1001
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	call	direct_mode
.label_1001:
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x18]
	call	dorewind
	test	al, 1
	jne	.label_996
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_1005
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x8d8], esi
	call	gettext
	xor	edi, edi
	mov	rcx, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x8d8]
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0xa9], 1
	jmp	.label_970
.label_958:
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x20]
	call	dosync
	cmp	eax, 0
	je	.label_977
	call	__errno_location
	cmp	dword ptr [rax], 5
	je	.label_971
	mov	byte ptr [rbp - 0xa9], 1
	jmp	.label_970
.label_992:
	movabs	rax, 0x28f5c28f5c28f5c
	cmp	qword ptr [rbp - 0x8b8], rax
	ja	.label_966
	imul	rax, qword ptr [rbp - 0x8b8], 0x64
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x958], rax
	jmp	.label_984
.label_1003:
	xor	eax, eax
	mov	edi, eax
	lea	rsi, [rbp - 0xa7]
	call	passname
.label_1004:
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1006
	movabs	rdi, OFFSET FLAT:label_998
	call	gettext
	xor	ecx, ecx
	lea	rdi, [rbp - 0xa7]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x40]
	mov	r9, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x8f0], rdi
	mov	edi, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x8f8], rdx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x8f8]
	mov	rax, qword ptr [rbp - 0x8f0]
	mov	qword ptr [rsp], rax
	mov	al, 0
	call	error
	xor	esi, esi
	mov	edi, esi
	call	time
	movabs	rcx, OFFSET FLAT:label_235
	add	rax, 5
	mov	qword ptr [rbp - 0x60], rax
	mov	qword ptr [rbp - 0x348], rcx
.label_1006:
	mov	qword ptr [rbp - 0x58], 0
.label_957:
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x50]
	call	known
	test	al, 1
	jne	.label_978
	jmp	.label_976
.label_978:
	mov	rax, qword ptr [rbp - 0x50]
	sub	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x90]
	jae	.label_976
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x58]
	jge	.label_981
	jmp	.label_958
.label_963:
	mov	rdi, qword ptr [rbp - 0x50]
	call	known
	test	al, 1
	jne	.label_953
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_960
	call	__errno_location
	cmp	dword ptr [rax], 0x1c
	jne	.label_953
.label_960:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x78]
	sub	rax, qword ptr [rbp - 0x58]
	cmp	rcx, rax
	ja	.label_994
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x50], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
.label_994:
	jmp	.label_955
.label_967:
	jmp	.label_956
.label_956:
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_959
.label_966:
	mov	eax, 0x64
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x8b8]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x960], rax
	mov	rax, rdx
	cqo	
	idiv	rcx
	mov	rcx, qword ptr [rbp - 0x960]
	mov	qword ptr [rbp - 0x968], rax
	mov	rax, rcx
	xor	esi, esi
	mov	edx, esi
	mov	rdi, qword ptr [rbp - 0x968]
	div	rdi
	mov	qword ptr [rbp - 0x958], rax
.label_984:
	mov	rax, qword ptr [rbp - 0x958]
	mov	qword ptr [rbp - 0x950], rax
.label_952:
	mov	rax, qword ptr [rbp - 0x950]
	mov	ecx, 1
	mov	edx, ecx
	lea	rsi, [rbp - 0x8a0]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x8bc], ecx
	mov	rdi, qword ptr [rbp - 0x50]
	mov	ecx, dword ptr [rbp - 0x8a4]
	or	ecx, 0
	mov	qword ptr [rbp - 0x970], rdx
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x970]
	mov	r8, qword ptr [rbp - 0x970]
	call	human_readable
	mov	qword ptr [rbp - 0x8c8], rax
	test	byte ptr [rbp - 0x379], 1
	je	.label_988
	mov	rax, qword ptr [rbp - 0x8c8]
	mov	qword ptr [rbp - 0x8b0], rax
.label_988:
	movabs	rdi, OFFSET FLAT:label_986
	call	gettext
	xor	ecx, ecx
	lea	rdi, [rbp - 0xa7]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x40]
	mov	r9, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x8b0]
	mov	r10, qword ptr [rbp - 0x8c8]
	mov	r11d, dword ptr [rbp - 0x8bc]
	mov	qword ptr [rbp - 0x978], rdi
	mov	edi, ecx
	mov	qword ptr [rbp - 0x980], rsi
	mov	esi, ecx
	mov	qword ptr [rbp - 0x988], rdx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x988]
	mov	rax, qword ptr [rbp - 0x978]
	mov	qword ptr [rsp], rax
	mov	rbx, qword ptr [rbp - 0x980]
	mov	qword ptr [rsp + 8], rbx
	mov	qword ptr [rsp + 0x10], r10
	mov	dword ptr [rsp + 0x18], r11d
	mov	al, 0
	call	error
.label_995:
	lea	rax, [rbp - 0x340]
	mov	rsi, qword ptr [rbp - 0x8b0]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x990], rax
	call	strcpy
	mov	rsi, qword ptr [rbp - 0x990]
	mov	qword ptr [rbp - 0x348], rsi
	mov	rdi, qword ptr [rbp - 0x68]
	add	rdi, 5
	mov	qword ptr [rbp - 0x60], rdi
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x998], rax
	call	dosync
	cmp	eax, 0
	je	.label_982
	call	__errno_location
	cmp	dword ptr [rax], 5
	je	.label_979
	mov	byte ptr [rbp - 0xa9], 1
	jmp	.label_970
.label_974:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x8b8], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_992
	mov	eax, 0x64
	mov	ecx, eax
	mov	qword ptr [rbp - 0x950], rcx
	jmp	.label_952
.label_981:
	mov	rax, qword ptr [rbp - 0x50]
	sub	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x70], rax
	cmp	qword ptr [rbp - 0x70], 0
	jne	.label_954
	jmp	.label_958
.label_961:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_962
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x914], esi
	call	gettext
	xor	edi, edi
	mov	rcx, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x914]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_985:
	mov	byte ptr [rbp - 0xa9], 1
	jmp	.label_970
.label_968:
	movabs	rdi, OFFSET FLAT:label_980
	mov	esi, dword ptr [rbp - 0x350]
	mov	dword ptr [rbp - 0x8fc], esi
	call	gettext
	lea	rsi, [rbp - 0x370]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x58]
	add	rdi, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x908], rax
	mov	qword ptr [rbp - 0x910], rcx
	call	umaxtostr
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x8fc]
	mov	rdx, qword ptr [rbp - 0x908]
	mov	rcx, qword ptr [rbp - 0x910]
	mov	r8, rax
	mov	al, 0
	call	error
	cmp	dword ptr [rbp - 0x350], 5
	jne	.label_985
	mov	rdi, qword ptr [rbp - 0x50]
	call	known
	test	al, 1
	jne	.label_991
	jmp	.label_985
.label_991:
	mov	rax, qword ptr [rbp - 0x78]
	or	rax, 0x1ff
	cmp	rax, qword ptr [rbp - 0x70]
	jae	.label_985
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x78]
	or	rax, 0x1ff
	add	rax, 1
	mov	qword ptr [rbp - 0x378], rax
	mov	edi, dword ptr [rbp - 0xc]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x378]
	mov	rsi, rax
	call	lseek
	cmp	rax, -1
	je	.label_961
	mov	rax, qword ptr [rbp - 0x378]
	sub	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x80], rax
	mov	byte ptr [rbp - 0xa8], 1
	jmp	.label_956
.label_953:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x350], ecx
	test	byte ptr [rbp - 0x349], 1
	jne	.label_968
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_968
	xor	esi, esi
	mov	edi, dword ptr [rbp - 0xc]
	call	direct_mode
	mov	qword ptr [rbp - 0x80], 0
	mov	byte ptr [rbp - 0x349], 1
	jmp	.label_956
.label_969:
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x50]
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x379], cl
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_951
	test	byte ptr [rbp - 0x379], 1
	je	.label_983
	mov	rax, qword ptr [rbp - 0x348]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_987
.label_983:
	xor	eax, eax
	mov	edi, eax
	mov	rcx, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x928], rcx
	call	time
	mov	qword ptr [rbp - 0x68], rax
	mov	rcx, qword ptr [rbp - 0x928]
	cmp	rcx, rax
	jg	.label_951
.label_987:
	mov	eax, 1
	mov	ecx, eax
	lea	rsi, [rbp - 0x610]
	mov	dword ptr [rbp - 0x8a4], 0x1b0
	mov	rdi, qword ptr [rbp - 0x58]
	mov	eax, dword ptr [rbp - 0x8a4]
	or	eax, 2
	mov	edx, eax
	mov	qword ptr [rbp - 0x930], rcx
	mov	r8, qword ptr [rbp - 0x930]
	call	human_readable
	mov	qword ptr [rbp - 0x8b0], rax
	test	byte ptr [rbp - 0x379], 1
	jne	.label_964
	mov	rdi, qword ptr [rbp - 0x348]
	mov	rsi, qword ptr [rbp - 0x8b0]
	call	strcmp
	cmp	eax, 0
	je	.label_972
.label_964:
	mov	rdi, qword ptr [rbp - 0x50]
	call	known
	test	al, 1
	jne	.label_974
	movabs	rdi, OFFSET FLAT:label_975
	call	gettext
	xor	ecx, ecx
	lea	rdi, [rbp - 0xa7]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x40]
	mov	r9, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x8b0]
	mov	qword ptr [rbp - 0x938], rdi
	mov	edi, ecx
	mov	qword ptr [rbp - 0x940], rsi
	mov	esi, ecx
	mov	qword ptr [rbp - 0x948], rdx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x948]
	mov	rax, qword ptr [rbp - 0x938]
	mov	qword ptr [rsp], rax
	mov	r10, qword ptr [rbp - 0x940]
	mov	qword ptr [rsp + 8], r10
	mov	al, 0
	call	error
	jmp	.label_995
.label_1007:
	movabs	rax, OFFSET FLAT:patterns
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x20], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
.label_1010:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 4
	mov	qword ptr [rbp - 0x28], rcx
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], edx
	cmp	dword ptr [rbp - 0x54], 0
	jne	.label_1021
	movabs	rax, OFFSET FLAT:patterns
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1008
.label_1016:
	jmp	.label_1015
.label_1015:
	jmp	.label_1008
.label_1008:
	jmp	.label_1010
.label_1012:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rcx, qword ptr [rbp - 0x38]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x60], rax
	call	randint_choose
	mov	rcx, qword ptr [rbp - 0x60]
	add	rcx, rax
	mov	qword ptr [rbp - 0x50], rcx
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + rax*4]
	mov	dword ptr [rbp - 0x54], edx
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + rax*4]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + rax*4], edx
	mov	edx, dword ptr [rbp - 0x54]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + rax*4], edx
.label_1014:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x40], rcx
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1023
.label_1021:
	cmp	dword ptr [rbp - 0x54], 0
	jge	.label_1024
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	movsxd	rcx, dword ptr [rbp - 0x54]
	cmp	rcx, qword ptr [rbp - 0x38]
	jb	.label_1022
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1018
.label_1018:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x38], 0
.label_1023:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1020
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_1012
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + rax*4]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x48], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + rax*4], edx
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	jmp	.label_1014
.label_1024:
	movsxd	rax, dword ptr [rbp - 0x54]
	cmp	rax, qword ptr [rbp - 0x38]
	ja	.label_1017
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	movsxd	rdx, dword ptr [rbp - 0x54]
	shl	rdx, 2
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	mov	r8d, dword ptr [rbp - 0x54]
	mov	rax, qword ptr [rbp - 0x28]
	movsxd	rcx, r8d
	shl	rcx, 2
	add	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
	mov	r8d, dword ptr [rbp - 0x54]
	mov	rax, qword ptr [rbp - 0x30]
	movsxd	rcx, r8d
	shl	rcx, 2
	add	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
	movsxd	rax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x38], rcx
	jmp	.label_1016
	.section	.text
	.align	16
	#Procedure 0x40cb02

	.globl genpattern
	.type genpattern, @function
genpattern:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1007
	jmp	.label_1020
.label_1022:
	movsxd	rax, dword ptr [rbp - 0x54]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	movsxd	rax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x38], rcx
	jmp	.label_1015
.label_1013:
	jmp	.label_1009
.label_1009:
	mov	rax, qword ptr [rbp - 0x38]
	movsxd	rcx, dword ptr [rbp - 0x54]
	cmp	rax, rcx
	je	.label_1011
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x54]
	call	randint_choose
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_1025
.label_1011:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, rax
	add	rdx, 4
	mov	qword ptr [rbp - 0x30], rdx
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
.label_1025:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 4
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx, dword ptr [rbp - 0x54]
	add	ecx, -1
	mov	dword ptr [rbp - 0x54], ecx
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1009
	jmp	.label_1018
.label_1020:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cbc1
	.globl sub_40cbc1
	.type sub_40cbc1, @function
sub_40cbc1:

	nop	
.label_1017:
	cmp	qword ptr [rbp - 0x38], 2
	jb	.label_1019
	imul	rax, qword ptr [rbp - 0x38], 3
	movsxd	rcx, dword ptr [rbp - 0x54]
	cmp	rax, rcx
	jae	.label_1013
.label_1019:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1018
	.section	.text
	.align	16
	#Procedure 0x40cbf0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	r8, -1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cc28
	.globl sub_40cc28
	.type sub_40cc28, @function
sub_40cc28:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cc30

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	push	rbp
	mov	rbp, rsp
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	dword ptr [rbp - 0x10], edx
	mov	al, byte ptr [rbp - 9]
	mov	byte ptr [rbp - 0x11], al
	cmp	qword ptr [rbp - 8], 0
	je	.label_1026
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1027
.label_1026:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1027
.label_1027:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	edx, ecx
	shr	rdx, 5
	shl	rdx, 2
	add	rax, rdx
	mov	qword ptr [rbp - 0x20], rax
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	eax, ecx
	and	rax, 0x1f
	mov	ecx, eax
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x34], ecx
	mov	ecx, esi
	mov	esi, dword ptr [rbp - 0x34]
	shr	esi, cl
	and	esi, 1
	mov	dword ptr [rbp - 0x28], esi
	mov	esi, dword ptr [rbp - 0x10]
	and	esi, 1
	xor	esi, dword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rbp - 0x24]
	shl	esi, cl
	mov	rax, qword ptr [rbp - 0x20]
	xor	esi, dword ptr [rax]
	mov	dword ptr [rax], esi
	mov	eax, dword ptr [rbp - 0x28]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ccd2
	.globl sub_40ccd2
	.type sub_40ccd2, @function
sub_40ccd2:

	nop	word ptr cs:[rax + rax]
.label_1030:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cd03
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_1028:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1030
	jmp	.label_1029
.label_1029:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1028
	.section	.text
	.align	16
	#Procedure 0x40cdb5
	.globl sub_40cdb5
	.type sub_40cdb5, @function
sub_40cdb5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cdc2
	.globl sub_40cdc2
	.type sub_40cdc2, @function
sub_40cdc2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cde6
	.globl sub_40cde6
	.type sub_40cde6, @function
sub_40cde6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cdf9
	.globl sub_40cdf9
	.type sub_40cdf9, @function
sub_40cdf9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ce00

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	.section	.text
	.align	16
	#Procedure 0x40ce0f
	.globl sub_40ce0f
	.type sub_40ce0f, @function
sub_40ce0f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40ce10

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
